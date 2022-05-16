; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $067", ROMX[$4000], BANK[$67]

    ld h, a                                       ; $4000: $67
    adc c                                         ; $4001: $89
    inc [hl]                                      ; $4002: $34
    db $fc                                        ; $4003: $fc
    xor b                                         ; $4004: $a8
    sub e                                         ; $4005: $93
    push af                                       ; $4006: $f5
    db $dd                                        ; $4007: $dd
    and d                                         ; $4008: $a2
    ld d, e                                       ; $4009: $53
    sbc a                                         ; $400a: $9f
    sub [hl]                                      ; $400b: $96
    ld e, a                                       ; $400c: $5f
    sbc b                                         ; $400d: $98
    cp e                                          ; $400e: $bb
    db $db                                        ; $400f: $db
    ld e, [hl]                                    ; $4010: $5e
    ld c, h                                       ; $4011: $4c
    xor a                                         ; $4012: $af
    sub e                                         ; $4013: $93
    ld e, l                                       ; $4014: $5d
    dec c                                         ; $4015: $0d
    adc e                                         ; $4016: $8b
    sbc b                                         ; $4017: $98
    ld [hl], d                                    ; $4018: $72
    adc h                                         ; $4019: $8c
    ld a, c                                       ; $401a: $79
    ld a, [bc]                                    ; $401b: $0a
    rst $10                                       ; $401c: $d7
    dec b                                         ; $401d: $05
    dec hl                                        ; $401e: $2b
    ld e, d                                       ; $401f: $5a
    and c                                         ; $4020: $a1
    add hl, de                                    ; $4021: $19
    dec [hl]                                      ; $4022: $35
    ld a, [$f5dc]                                 ; $4023: $fa $dc $f5
    ld h, d                                       ; $4026: $62
    ld [hl], d                                    ; $4027: $72
    cp d                                          ; $4028: $ba
    ld a, a                                       ; $4029: $7f
    cp c                                          ; $402a: $b9
    or b                                          ; $402b: $b0
    ret                                           ; $402c: $c9


    ld d, c                                       ; $402d: $51
    rst $38                                       ; $402e: $ff
    ld h, l                                       ; $402f: $65
    ld l, $b4                                     ; $4030: $2e $b4
    ei                                            ; $4032: $fb
    inc bc                                        ; $4033: $03
    ld e, e                                       ; $4034: $5b
    ret c                                         ; $4035: $d8

    inc h                                         ; $4036: $24
    sbc e                                         ; $4037: $9b
    db $e4                                        ; $4038: $e4
    add [hl]                                      ; $4039: $86
    sbc [hl]                                      ; $403a: $9e
    adc e                                         ; $403b: $8b
    push de                                       ; $403c: $d5
    and e                                         ; $403d: $a3
    ld l, h                                       ; $403e: $6c
    add [hl]                                      ; $403f: $86
    ld [hl], l                                    ; $4040: $75
    push af                                       ; $4041: $f5
    inc [hl]                                      ; $4042: $34
    ld c, a                                       ; $4043: $4f
    reti                                          ; $4044: $d9


    sbc a                                         ; $4045: $9f
    add $06                                       ; $4046: $c6 $06
    inc l                                         ; $4048: $2c
    db $10                                        ; $4049: $10
    ld [hl], l                                    ; $404a: $75
    ld a, [$07a4]                                 ; $404b: $fa $a4 $07
    rst $38                                       ; $404e: $ff
    ld e, e                                       ; $404f: $5b
    ld [hl], $7c                                  ; $4050: $36 $7c
    sbc e                                         ; $4052: $9b
    cp c                                          ; $4053: $b9
    ld [hl], b                                    ; $4054: $70
    ld h, e                                       ; $4055: $63
    add [hl]                                      ; $4056: $86
    xor b                                         ; $4057: $a8

jr_067_4058:
    ld e, e                                       ; $4058: $5b
    cp c                                          ; $4059: $b9
    ld a, b                                       ; $405a: $78
    ld h, a                                       ; $405b: $67
    rst $20                                       ; $405c: $e7
    add [hl]                                      ; $405d: $86
    rrca                                          ; $405e: $0f
    sub a                                         ; $405f: $97
    jr c, jr_067_40d6                             ; $4060: $38 $74

    ld e, l                                       ; $4062: $5d
    sbc a                                         ; $4063: $9f
    and $d9                                       ; $4064: $e6 $d9
    db $f4                                        ; $4066: $f4
    ld bc, $9467                                  ; $4067: $01 $67 $94
    add hl, hl                                    ; $406a: $29
    add a                                         ; $406b: $87
    add l                                         ; $406c: $85
    push af                                       ; $406d: $f5
    ld l, c                                       ; $406e: $69
    xor e                                         ; $406f: $ab
    reti                                          ; $4070: $d9


    db $ed                                        ; $4071: $ed
    ld b, a                                       ; $4072: $47
    ld d, e                                       ; $4073: $53
    ld c, $65                                     ; $4074: $0e $65
    cp c                                          ; $4076: $b9
    jp c, Jump_067_61bd                           ; $4077: $da $bd $61

    ld a, d                                       ; $407a: $7a
    pop af                                        ; $407b: $f1
    call nz, $67b4                                ; $407c: $c4 $b4 $67
    ld [hl], d                                    ; $407f: $72
    ld e, $d9                                     ; $4080: $1e $d9
    dec h                                         ; $4082: $25
    adc c                                         ; $4083: $89
    ld c, d                                       ; $4084: $4a
    add $30                                       ; $4085: $c6 $30
    xor $fe                                       ; $4087: $ee $fe
    nop                                           ; $4089: $00
    ld h, a                                       ; $408a: $67
    ld [hl], h                                    ; $408b: $74
    ld a, d                                       ; $408c: $7a
    ld sp, $c7a4                                  ; $408d: $31 $a4 $c7
    jr jr_067_4058                                ; $4090: $18 $c6

    ld a, [de]                                    ; $4092: $1a
    and [hl]                                      ; $4093: $a6
    db $db                                        ; $4094: $db
    or b                                          ; $4095: $b0
    ld a, d                                       ; $4096: $7a
    res 0, d                                      ; $4097: $cb $82
    dec c                                         ; $4099: $0d
    dec a                                         ; $409a: $3d
    ld [hl], a                                    ; $409b: $77
    ld l, l                                       ; $409c: $6d
    and e                                         ; $409d: $a3
    sbc h                                         ; $409e: $9c
    ld a, [bc]                                    ; $409f: $0a
    ld e, b                                       ; $40a0: $58
    db $db                                        ; $40a1: $db
    ldh a, [rSB]                                  ; $40a2: $f0 $01
    ld d, a                                       ; $40a4: $57
    ld b, b                                       ; $40a5: $40
    sub $e3                                       ; $40a6: $d6 $e3
    db $f4                                        ; $40a8: $f4
    ld e, a                                       ; $40a9: $5f
    db $db                                        ; $40aa: $db
    cp b                                          ; $40ab: $b8
    adc h                                         ; $40ac: $8c
    xor b                                         ; $40ad: $a8
    adc c                                         ; $40ae: $89
    sub e                                         ; $40af: $93
    inc sp                                        ; $40b0: $33
    ld l, h                                       ; $40b1: $6c
    jp $e707                                      ; $40b2: $c3 $07 $e7


    ld b, b                                       ; $40b5: $40
    sub $33                                       ; $40b6: $d6 $33
    ld d, d                                       ; $40b8: $52
    call nc, $342d                                ; $40b9: $d4 $2d $34
    db $db                                        ; $40bc: $db
    cp c                                          ; $40bd: $b9
    pop hl                                        ; $40be: $e1
    inc bc                                        ; $40bf: $03
    ld e, e                                       ; $40c0: $5b
    ld l, b                                       ; $40c1: $68
    or [hl]                                       ; $40c2: $b6
    ld d, e                                       ; $40c3: $53
    ld d, h                                       ; $40c4: $54
    ld a, a                                       ; $40c5: $7f
    jp nz, Jump_000_36a3                          ; $40c6: $c2 $a3 $36

    jp $c636                                      ; $40c9: $c3 $36 $c6


    pop de                                        ; $40cc: $d1
    ld c, d                                       ; $40cd: $4a
    db $e4                                        ; $40ce: $e4
    rla                                           ; $40cf: $17
    and [hl]                                      ; $40d0: $a6
    ld l, h                                       ; $40d1: $6c
    sbc [hl]                                      ; $40d2: $9e
    jr nc, jr_067_412f                            ; $40d3: $30 $5a

    ret z                                         ; $40d5: $c8

jr_067_40d6:
    ld a, [hl+]                                   ; $40d6: $2a

jr_067_40d7:
    db $ed                                        ; $40d7: $ed
    dec l                                         ; $40d8: $2d
    ret                                           ; $40d9: $c9


    pop de                                        ; $40da: $d1
    dec c                                         ; $40db: $0d
    rra                                           ; $40dc: $1f
    db $db                                        ; $40dd: $db
    or b                                          ; $40de: $b0
    ld a, d                                       ; $40df: $7a
    res 0, d                                      ; $40e0: $cb $82
    dec c                                         ; $40e2: $0d
    db $dd                                        ; $40e3: $dd
    inc a                                         ; $40e4: $3c
    ld [hl], d                                    ; $40e5: $72
    ld a, [bc]                                    ; $40e6: $0a
    call $ba6b                                    ; $40e7: $cd $6b $ba
    jp hl                                         ; $40ea: $e9


    inc bc                                        ; $40eb: $03
    ld [c], a                                     ; $40ec: $e2
    db $dd                                        ; $40ed: $dd
    jp z, $8940                                   ; $40ee: $ca $40 $89

    ld h, $8e                                     ; $40f1: $26 $8e
    db $f4                                        ; $40f3: $f4
    ld a, [de]                                    ; $40f4: $1a
    halt                                          ; $40f5: $76
    ld [hl], $b2                                  ; $40f6: $36 $b2
    ld e, h                                       ; $40f8: $5c
    ret c                                         ; $40f9: $d8

    db $e4                                        ; $40fa: $e4
    xor b                                         ; $40fb: $a8
    rst $38                                       ; $40fc: $ff
    ld [hl-], a                                   ; $40fd: $32
    rla                                           ; $40fe: $17
    ld e, d                                       ; $40ff: $5a
    or e                                          ; $4100: $b3
    ld sp, $db8f                                  ; $4101: $31 $8f $db
    jr z, jr_067_40d7                             ; $4104: $28 $d1

    add sp, $64                                   ; $4106: $e8 $64
    ld e, a                                       ; $4108: $5f
    call nc, $98cc                                ; $4109: $d4 $cc $98
    ld [hl], c                                    ; $410c: $71
    ld a, a                                       ; $410d: $7f
    db $db                                        ; $410e: $db
    dec a                                         ; $410f: $3d
    ld a, [bc]                                    ; $4110: $0a
    ld e, e                                       ; $4111: $5b
    pop hl                                        ; $4112: $e1
    sub l                                         ; $4113: $95
    call $f58e                                    ; $4114: $cd $8e $f5
    sub c                                         ; $4117: $91
    ld [hl], d                                    ; $4118: $72
    adc b                                         ; $4119: $88
    inc l                                         ; $411a: $2c
    ld d, a                                       ; $411b: $57
    adc b                                         ; $411c: $88
    reti                                          ; $411d: $d9


    add hl, de                                    ; $411e: $19
    ld b, l                                       ; $411f: $45
    db $dd                                        ; $4120: $dd
    ld b, d                                       ; $4121: $42
    or e                                          ; $4122: $b3
    sbc l                                         ; $4123: $9d
    ld c, l                                       ; $4124: $4d
    sbc h                                         ; $4125: $9c
    sbc h                                         ; $4126: $9c
    ld h, c                                       ; $4127: $61
    rst $30                                       ; $4128: $f7
    rlca                                          ; $4129: $07
    adc c                                         ; $412a: $89
    di                                            ; $412b: $f3
    db $f4                                        ; $412c: $f4
    cp [hl]                                       ; $412d: $be
    rst $28                                       ; $412e: $ef

jr_067_412f:
    sub d                                         ; $412f: $92
    cp h                                          ; $4130: $bc
    rst $28                                       ; $4131: $ef
    cp e                                          ; $4132: $bb
    add hl, hl                                    ; $4133: $29
    rlca                                          ; $4134: $07
    ld l, e                                       ; $4135: $6b
    ld a, b                                       ; $4136: $78
    cp e                                          ; $4137: $bb
    ld h, b                                       ; $4138: $60
    rst $30                                       ; $4139: $f7
    ld a, l                                       ; $413a: $7d
    ld a, a                                       ; $413b: $7f
    db $db                                        ; $413c: $db
    add h                                         ; $413d: $84
    db $d3                                        ; $413e: $d3
    push de                                       ; $413f: $d5
    inc l                                         ; $4140: $2c
    add hl, de                                    ; $4141: $19
    ld e, d                                       ; $4142: $5a
    sub $cb                                       ; $4143: $d6 $cb
    ld e, l                                       ; $4145: $5d
    or b                                          ; $4146: $b0
    ld a, $d5                                     ; $4147: $3e $d5
    cp c                                          ; $4149: $b9
    ld a, e                                       ; $414a: $7b
    ld e, $17                                     ; $414b: $1e $17
    jp z, Jump_067_4ad1                           ; $414d: $ca $d1 $4a

    ld a, $6d                                     ; $4150: $3e $6d
    and [hl]                                      ; $4152: $a6
    dec b                                         ; $4153: $05
    call c, $ff15                                 ; $4154: $dc $15 $ff
    jp hl                                         ; $4157: $e9


    add hl, de                                    ; $4158: $19
    ld d, a                                       ; $4159: $57
    sub [hl]                                      ; $415a: $96
    ld l, [hl]                                    ; $415b: $6e
    pop hl                                        ; $415c: $e1
    db $fd                                        ; $415d: $fd
    ld bc, $97db                                  ; $415e: $01 $db $97
    dec [hl]                                      ; $4161: $35
    ld d, c                                       ; $4162: $51
    cpl                                           ; $4163: $2f
    sbc l                                         ; $4164: $9d
    ld a, b                                       ; $4165: $78
    ld a, a                                       ; $4166: $7f
    adc c                                         ; $4167: $89
    xor d                                         ; $4168: $aa
    ld sp, hl                                     ; $4169: $f9
    cp [hl]                                       ; $416a: $be
    rst $28                                       ; $416b: $ef
    ld l, [hl]                                    ; $416c: $6e
    inc de                                        ; $416d: $13

Jump_067_416e:
    ld c, [hl]                                    ; $416e: $4e
    inc sp                                        ; $416f: $33
    xor d                                         ; $4170: $aa
    adc b                                         ; $4171: $88
    add hl, de                                    ; $4172: $19
    ld e, d                                       ; $4173: $5a
    ld c, [hl]                                    ; $4174: $4e
    db $fd                                        ; $4175: $fd
    ld [hl], l                                    ; $4176: $75
    dec c                                         ; $4177: $0d
    db $ec                                        ; $4178: $ec
    ld d, $98                                     ; $4179: $16 $98
    ld a, h                                       ; $417b: $7c
    inc de                                        ; $417c: $13
    ld hl, $342a                                  ; $417d: $21 $2a $34
    xor a                                         ; $4180: $af
    sub l                                         ; $4181: $95
    and l                                         ; $4182: $a5
    ld c, c                                       ; $4183: $49
    jp c, Jump_067_4546                           ; $4184: $da $46 $45

    ld hl, $f4ab                                  ; $4187: $21 $ab $f4
    cp h                                          ; $418a: $bc
    ccf                                           ; $418b: $3f
    add hl, sp                                    ; $418c: $39
    sub c                                         ; $418d: $91
    rst $30                                       ; $418e: $f7
    rlca                                          ; $418f: $07
    db $db                                        ; $4190: $db
    sbc e                                         ; $4191: $9b
    ld [hl], d                                    ; $4192: $72
    rlca                                          ; $4193: $07
    adc d                                         ; $4194: $8a
    ld a, [hl-]                                   ; $4195: $3a
    ld l, $1b                                     ; $4196: $2e $1b
    cp e                                          ; $4198: $bb
    jp nz, $4dae                                  ; $4199: $c2 $ae $4d

    rra                                           ; $419c: $1f
    ld e, e                                       ; $419d: $5b
    ld l, b                                       ; $419e: $68
    or [hl]                                       ; $419f: $b6
    ld d, e                                       ; $41a0: $53
    ld d, h                                       ; $41a1: $54
    ld b, l                                       ; $41a2: $45
    call z, $98dc                                 ; $41a3: $cc $dc $98
    ld d, c                                       ; $41a6: $51
    ld c, [hl]                                    ; $41a7: $4e
    db $fd                                        ; $41a8: $fd
    ld [hl], l                                    ; $41a9: $75
    dec c                                         ; $41aa: $0d
    xor b                                         ; $41ab: $a8
    ld a, h                                       ; $41ac: $7c
    ld a, [c]                                     ; $41ad: $f2
    xor $0e                                       ; $41ae: $ee $0e
    cp h                                          ; $41b0: $bc
    ld h, [hl]                                    ; $41b1: $66
    rla                                           ; $41b2: $17
    and [hl]                                      ; $41b3: $a6
    ld a, [hl-]                                   ; $41b4: $3a
    ld e, $43                                     ; $41b5: $1e $43
    or a                                          ; $41b7: $b7
    ret nz                                        ; $41b8: $c0

    inc a                                         ; $41b9: $3c
    or e                                          ; $41ba: $b3
    ld c, h                                       ; $41bb: $4c
    ld a, [$fef1]                                 ; $41bc: $fa $f1 $fe
    nop                                           ; $41bf: $00
    dec sp                                        ; $41c0: $3b
    db $10                                        ; $41c1: $10
    inc sp                                        ; $41c2: $33
    db $e4                                        ; $41c3: $e4
    ld b, [hl]                                    ; $41c4: $46
    add l                                         ; $41c5: $85
    xor b                                         ; $41c6: $a8
    ld e, h                                       ; $41c7: $5c
    ld e, h                                       ; $41c8: $5c
    inc e                                         ; $41c9: $1c
    cp l                                          ; $41ca: $bd
    ccf                                           ; $41cb: $3f
    sub a                                         ; $41cc: $97
    db $d3                                        ; $41cd: $d3
    adc c                                         ; $41ce: $89
    ld a, [bc]                                    ; $41cf: $0a
    call Call_067_77ac                            ; $41d0: $cd $ac $77
    ld e, [hl]                                    ; $41d3: $5e
    db $fd                                        ; $41d4: $fd
    or c                                          ; $41d5: $b1
    ld a, [hl-]                                   ; $41d6: $3a

jr_067_41d7:
    reti                                          ; $41d7: $d9


    ld l, h                                       ; $41d8: $6c
    ld l, a                                       ; $41d9: $6f
    rst $10                                       ; $41da: $d7
    db $fd                                        ; $41db: $fd
    ld bc, $f5e2                                  ; $41dc: $01 $e2 $f5
    db $ed                                        ; $41df: $ed
    ld c, c                                       ; $41e0: $49
    inc a                                         ; $41e1: $3c
    ld h, e                                       ; $41e2: $63
    sub a                                         ; $41e3: $97
    or a                                          ; $41e4: $b7
    ld e, [hl]                                    ; $41e5: $5e
    jr c, jr_067_41f5                             ; $41e6: $38 $0d

    add sp, $16                                   ; $41e8: $e8 $16
    sbc b                                         ; $41ea: $98
    ld h, a                                       ; $41eb: $67
    sub [hl]                                      ; $41ec: $96
    ld c, c                                       ; $41ed: $49
    ccf                                           ; $41ee: $3f
    halt                                          ; $41ef: $76
    ld e, l                                       ; $41f0: $5d
    reti                                          ; $41f1: $d9


    rla                                           ; $41f2: $17
    db $10                                        ; $41f3: $10
    di                                            ; $41f4: $f3

jr_067_41f5:
    di                                            ; $41f5: $f3
    cp [hl]                                       ; $41f6: $be
    sbc a                                         ; $41f7: $9f
    db $eb                                        ; $41f8: $eb
    add l                                         ; $41f9: $85
    db $d3                                        ; $41fa: $d3
    jr nc, jr_067_41d7                            ; $41fb: $30 $da

    rla                                           ; $41fd: $17
    db $d3                                        ; $41fe: $d3
    add [hl]                                      ; $41ff: $86
    ldh a, [rNR10]                                ; $4200: $f0 $10
    inc sp                                        ; $4202: $33
    db $f4                                        ; $4203: $f4
    xor [hl]                                      ; $4204: $ae
    cp b                                          ; $4205: $b8
    sub $5f                                       ; $4206: $d6 $5f
    jr jr_067_423d                                ; $4208: $18 $33

    or l                                          ; $420a: $b5
    ld a, [hl+]                                   ; $420b: $2a
    sbc h                                         ; $420c: $9c
    cp [hl]                                       ; $420d: $be
    sbc b                                         ; $420e: $98
    ld [hl], $84                                  ; $420f: $36 $84
    add a                                         ; $4211: $87
    sbc b                                         ; $4212: $98
    and c                                         ; $4213: $a1
    ld a, l                                       ; $4214: $7d
    jp nc, $cb1f                                  ; $4215: $d2 $1f $cb

    adc h                                         ; $4218: $8c
    add hl, de                                    ; $4219: $19
    ld e, d                                       ; $421a: $5a
    ret z                                         ; $421b: $c8

    add [hl]                                      ; $421c: $86
    or a                                          ; $421d: $b7
    add d                                         ; $421e: $82
    add hl, hl                                    ; $421f: $29
    or l                                          ; $4220: $b5
    sbc $dd                                       ; $4221: $de $dd
    ld c, l                                       ; $4223: $4d
    cp d                                          ; $4224: $ba
    add l                                         ; $4225: $85
    ld e, d                                       ; $4226: $5a
    sbc a                                         ; $4227: $9f
    add $fa                                       ; $4228: $c6 $fa
    or e                                          ; $422a: $b3
    cp $60                                        ; $422b: $fe $60
    xor b                                         ; $422d: $a8
    xor b                                         ; $422e: $a8
    ld a, $96                                     ; $422f: $3e $96
    ld l, c                                       ; $4231: $69
    jp z, $eba1                                   ; $4232: $ca $a1 $eb

    ld a, [$3fa4]                                 ; $4235: $fa $a4 $3f
    sub [hl]                                      ; $4238: $96
    add hl, de                                    ; $4239: $19
    inc sp                                        ; $423a: $33
    xor d                                         ; $423b: $aa
    db $f4                                        ; $423c: $f4

jr_067_423d:
    ret nz                                        ; $423d: $c0

    ld a, [de]                                    ; $423e: $1a
    sbc [hl]                                      ; $423f: $9e
    and $17                                       ; $4240: $e6 $17
    db $d3                                        ; $4242: $d3
    xor $6d                                       ; $4243: $ee $6d
    ld e, h                                       ; $4245: $5c
    xor b                                         ; $4246: $a8
    rst $30                                       ; $4247: $f7
    rlca                                          ; $4248: $07
    add hl, bc                                    ; $4249: $09
    xor [hl]                                      ; $424a: $ae
    ld [bc], a                                    ; $424b: $02
    sub $aa                                       ; $424c: $d6 $aa
    ld a, b                                       ; $424e: $78
    dec de                                        ; $424f: $1b
    ld a, $97                                     ; $4250: $3e $97
    ld c, [hl]                                    ; $4252: $4e
    db $fc                                        ; $4253: $fc
    rst $28                                       ; $4254: $ef
    rrca                                          ; $4255: $0f
    ld h, a                                       ; $4256: $67
    ld d, h                                       ; $4257: $54
    ld b, d                                       ; $4258: $42
    push hl                                       ; $4259: $e5
    inc [hl]                                      ; $425a: $34
    ld h, b                                       ; $425b: $60
    pop hl                                        ; $425c: $e1
    db $fd                                        ; $425d: $fd
    ld bc, $9a09                                  ; $425e: $01 $09 $9a
    rst $00                                       ; $4261: $c7
    sub l                                         ; $4262: $95
    dec c                                         ; $4263: $0d
    or h                                          ; $4264: $b4
    or d                                          ; $4265: $b2
    ccf                                           ; $4266: $3f
    inc bc                                        ; $4267: $03
    db $eb                                        ; $4268: $eb
    ld h, h                                       ; $4269: $64
    sbc l                                         ; $426a: $9d
    ld h, h                                       ; $426b: $64
    inc de                                        ; $426c: $13
    ld [c], a                                     ; $426d: $e2

jr_067_426e:
    rst $38                                       ; $426e: $ff
    cp $65                                        ; $426f: $fe $65
    db $fc                                        ; $4271: $fc
    ld [hl], l                                    ; $4272: $75
    pop hl                                        ; $4273: $e1
    or c                                          ; $4274: $b1
    ld bc, $20bd                                  ; $4275: $01 $bd $20
    and [hl]                                      ; $4278: $a6
    dec c                                         ; $4279: $0d
    pop hl                                        ; $427a: $e1
    ld hl, $e866                                  ; $427b: $21 $66 $e8
    db $dd                                        ; $427e: $dd
    call nz, Call_000_3009                        ; $427f: $c4 $09 $30
    pop hl                                        ; $4282: $e1
    call nc, $ad29                                ; $4283: $d4 $29 $ad
    call nc, $a3aa                                ; $4286: $d4 $aa $a3
    or $2d                                        ; $4289: $f6 $2d
    ld c, [hl]                                    ; $428b: $4e
    or e                                          ; $428c: $b3
    ld [hl], c                                    ; $428d: $71
    db $fd                                        ; $428e: $fd
    pop bc                                        ; $428f: $c1
    ret nc                                        ; $4290: $d0

    ld a, [$f634]                                 ; $4291: $fa $34 $f6
    dec b                                         ; $4294: $05
    call nz, $bcfc                                ; $4295: $c4 $fc $bc
    rst $28                                       ; $4298: $ef
    and a                                         ; $4299: $a7
    dec [hl]                                      ; $429a: $35
    ld c, a                                       ; $429b: $4f
    and b                                         ; $429c: $a0
    sub [hl]                                      ; $429d: $96
    ld e, d                                       ; $429e: $5a
    ld a, a                                       ; $429f: $7f
    ld h, c                                       ; $42a0: $61
    call z, $fbd4                                 ; $42a1: $cc $d4 $fb
    inc bc                                        ; $42a4: $03
    sub a                                         ; $42a5: $97
    jr c, jr_067_426e                             ; $42a6: $38 $c6

    jr nc, jr_067_42ef                            ; $42a8: $30 $45

    db $fc                                        ; $42aa: $fc
    daa                                           ; $42ab: $27
    ld h, [hl]                                    ; $42ac: $66
    and e                                         ; $42ad: $a3
    ld b, c                                       ; $42ae: $41
    sub $49                                       ; $42af: $d6 $49
    sub $5f                                       ; $42b1: $d6 $5f
    jr jr_067_42e8                                ; $42b3: $18 $33

    dec sp                                        ; $42b5: $3b
    xor [hl]                                      ; $42b6: $ae
    db $e3                                        ; $42b7: $e3
    or d                                          ; $42b8: $b2
    ld c, l                                       ; $42b9: $4d
    ld e, a                                       ; $42ba: $5f
    ld c, h                                       ; $42bb: $4c
    dec de                                        ; $42bc: $1b

Jump_067_42bd:
    jp nz, $cc43                                  ; $42bd: $c2 $43 $cc

    ld l, b                                       ; $42c0: $68
    jp z, Jump_067_51a1                           ; $42c1: $ca $a1 $51

jr_067_42c4:
    jr c, jr_067_42fb                             ; $42c4: $38 $35

    db $fc                                        ; $42c6: $fc
    inc de                                        ; $42c7: $13
    sub e                                         ; $42c8: $93
    ld e, b                                       ; $42c9: $58
    ld c, a                                       ; $42ca: $4f
    add hl, hl                                    ; $42cb: $29
    xor d                                         ; $42cc: $aa
    nop                                           ; $42cd: $00
    rla                                           ; $42ce: $17
    inc sp                                        ; $42cf: $33
    db $e4                                        ; $42d0: $e4
    add $c8                                       ; $42d1: $c6 $c8
    xor $df                                       ; $42d3: $ee $df
    add h                                         ; $42d5: $84
    ld hl, sp-$41                                 ; $42d6: $f8 $bf
    ld a, a                                       ; $42d8: $7f
    add hl, de                                    ; $42d9: $19
    ld a, a                                       ; $42da: $7f
    ld e, l                                       ; $42db: $5d
    ld a, b                                       ; $42dc: $78
    cp h                                          ; $42dd: $bc
    cp e                                          ; $42de: $bb
    inc bc                                        ; $42df: $03
    or [hl]                                       ; $42e0: $b6
    sub $17                                       ; $42e1: $d6 $17
    db $10                                        ; $42e3: $10
    di                                            ; $42e4: $f3
    di                                            ; $42e5: $f3
    cp [hl]                                       ; $42e6: $be
    sbc a                                         ; $42e7: $9f

jr_067_42e8:
    add c                                         ; $42e8: $81
    ld b, l                                       ; $42e9: $45
    rst $00                                       ; $42ea: $c7
    ld [bc], a                                    ; $42eb: $02
    ld [hl+], a                                   ; $42ec: $22
    inc bc                                        ; $42ed: $03
    db $eb                                        ; $42ee: $eb

jr_067_42ef:
    adc a                                         ; $42ef: $8f
    ld d, l                                       ; $42f0: $55
    ld [hl-], a                                   ; $42f1: $32
    db $fd                                        ; $42f2: $fd
    ld a, b                                       ; $42f3: $78
    rst $30                                       ; $42f4: $f7
    ld h, d                                       ; $42f5: $62
    xor h                                         ; $42f6: $ac
    jr nz, jr_067_42c4                            ; $42f7: $20 $cb

    ld h, $c4                                     ; $42f9: $26 $c4

jr_067_42fb:
    rst $38                                       ; $42fb: $ff
    db $fd                                        ; $42fc: $fd
    set 7, b                                      ; $42fd: $cb $f8
    db $eb                                        ; $42ff: $eb
    jp nz, $d163                                  ; $4300: $c2 $63 $d1

    sub l                                         ; $4303: $95
    ld [hl], b                                    ; $4304: $70
    ld [$fcdb], a                                 ; $4305: $ea $db $fc
    adc $68                                       ; $4308: $ce $68
    push af                                       ; $430a: $f5
    rla                                           ; $430b: $17
    add $4c                                       ; $430c: $c6 $4c
    ld l, l                                       ; $430e: $6d
    inc e                                         ; $430f: $1c
    ld l, l                                       ; $4310: $6d
    add [hl]                                      ; $4311: $86
    add hl, de                                    ; $4312: $19
    ld [c], a                                     ; $4313: $e2
    ld l, b                                       ; $4314: $68
    inc bc                                        ; $4315: $03
    dec bc                                        ; $4316: $0b
    db $fd                                        ; $4317: $fd
    ld h, a                                       ; $4318: $67
    pop hl                                        ; $4319: $e1
    db $dd                                        ; $431a: $dd
    ld l, l                                       ; $431b: $6d
    jp nz, $6229                                  ; $431c: $c2 $29 $62

    ld [hl], $c8                                  ; $431f: $36 $c8
    ld b, [hl]                                    ; $4321: $46
    or $bc                                        ; $4322: $f6 $bc
    ld h, l                                       ; $4324: $65
    inc c                                         ; $4325: $0c
    sbc d                                         ; $4326: $9a
    reti                                          ; $4327: $d9


    ld b, h                                       ; $4328: $44
    sbc e                                         ; $4329: $9b
    rst $20                                       ; $432a: $e7
    ld a, c                                       ; $432b: $79
    add c                                         ; $432c: $81
    ld [hl], a                                    ; $432d: $77
    inc de                                        ; $432e: $13
    ld a, [de]                                    ; $432f: $1a
    add l                                         ; $4330: $85
    db $d3                                        ; $4331: $d3
    push de                                       ; $4332: $d5
    inc l                                         ; $4333: $2c
    add hl, de                                    ; $4334: $19
    or d                                          ; $4335: $b2
    call z, $9aeb                                 ; $4336: $cc $eb $9a
    ld h, c                                       ; $4339: $61
    sub b                                         ; $433a: $90
    and l                                         ; $433b: $a5
    ld d, [hl]                                    ; $433c: $56
    pop af                                        ; $433d: $f1
    or h                                          ; $433e: $b4
    cp $c2                                        ; $433f: $fe $c2
    sbc b                                         ; $4341: $98
    xor c                                         ; $4342: $a9
    dec c                                         ; $4343: $0d
    db $ec                                        ; $4344: $ec
    ld a, [c]                                     ; $4345: $f2
    inc [hl]                                      ; $4346: $34
    or e                                          ; $4347: $b3
    add hl, hl                                    ; $4348: $29
    add a                                         ; $4349: $87
    xor [hl]                                      ; $434a: $ae
    ld b, [hl]                                    ; $434b: $46
    dec de                                        ; $434c: $1b
    ldh a, [$ee]                                  ; $434d: $f0 $ee
    rrca                                          ; $434f: $0f
    dec sp                                        ; $4350: $3b
    ret nc                                        ; $4351: $d0

    sub h                                         ; $4352: $94
    ld a, e                                       ; $4353: $7b
    ld a, [bc]                                    ; $4354: $0a
    add e                                         ; $4355: $83
    xor h                                         ; $4356: $ac
    ccf                                           ; $4357: $3f
    ld bc, $abb2                                  ; $4358: $01 $b2 $ab
    ld h, a                                       ; $435b: $67
    ld h, l                                       ; $435c: $65
    or [hl]                                       ; $435d: $b6
    dec [hl]                                      ; $435e: $35
    ld l, l                                       ; $435f: $6d
    ld b, b                                       ; $4360: $40
    push hl                                       ; $4361: $e5
    sub e                                         ; $4362: $93
    ld [hl], a                                    ; $4363: $77
    cpl                                           ; $4364: $2f
    ld e, h                                       ; $4365: $5c
    xor e                                         ; $4366: $ab
    ld [c], a                                     ; $4367: $e2
    push de                                       ; $4368: $d5
    ldh a, [rVBK]                                 ; $4369: $f0 $4f
    ld c, h                                       ; $436b: $4c
    ld [c], a                                     ; $436c: $e2
    add a                                         ; $436d: $87
    sub l                                         ; $436e: $95
    sub l                                         ; $436f: $95
    ld a, h                                       ; $4370: $7c
    ld h, e                                       ; $4371: $63
    push af                                       ; $4372: $f5
    ld l, c                                       ; $4373: $69
    add hl, de                                    ; $4374: $19
    dec c                                         ; $4375: $0d
    call nc, Call_000_0bfa                        ; $4376: $d4 $fa $0b
    ld h, e                                       ; $4379: $63
    and [hl]                                      ; $437a: $a6
    sbc $1f                                       ; $437b: $de $1f
    db $db                                        ; $437d: $db
    add h                                         ; $437e: $84
    inc hl                                        ; $437f: $23
    xor d                                         ; $4380: $aa
    and d                                         ; $4381: $a2
    ccf                                           ; $4382: $3f
    sub a                                         ; $4383: $97
    inc h                                         ; $4384: $24
    xor l                                         ; $4385: $ad
    ld bc, $c7ab                                  ; $4386: $01 $ab $c7
    jp nc, $c437                                  ; $4389: $d2 $37 $c4

    nop                                           ; $438c: $00
    db $eb                                        ; $438d: $eb
    db $d3                                        ; $438e: $d3
    inc a                                         ; $438f: $3c
    push de                                       ; $4390: $d5
    reti                                          ; $4391: $d9


    push af                                       ; $4392: $f5
    ld h, d                                       ; $4393: $62
    ld [hl], d                                    ; $4394: $72
    xor $0f                                       ; $4395: $ee $0f
    db $db                                        ; $4397: $db
    add h                                         ; $4398: $84
    db $d3                                        ; $4399: $d3
    adc h                                         ; $439a: $8c
    ld a, [$e52f]                                 ; $439b: $fa $2f $e5
    and b                                         ; $439e: $a0
    adc l                                         ; $439f: $8d
    and e                                         ; $43a0: $a3
    add l                                         ; $43a1: $85
    ld a, [$262f]                                 ; $43a2: $fa $2f $26
    ld b, a                                       ; $43a5: $47
    scf                                           ; $43a6: $37
    ld a, h                                       ; $43a7: $7c
    ld d, a                                       ; $43a8: $57
    call z, $a07f                                 ; $43a9: $cc $7f $a0
    halt                                          ; $43ac: $76
    ld e, l                                       ; $43ad: $5d
    ld d, e                                       ; $43ae: $53
    ld c, $55                                     ; $43af: $0e $55
    ld a, d                                       ; $43b1: $7a
    jr nz, @-$0f                                  ; $43b2: $20 $ef

    rrca                                          ; $43b4: $0f
    ld [c], a                                     ; $43b5: $e2
    ld a, c                                       ; $43b6: $79
    ld e, l                                       ; $43b7: $5d
    sub a                                         ; $43b8: $97
    ld c, c                                       ; $43b9: $49
    adc a                                         ; $43ba: $8f
    xor b                                         ; $43bb: $a8
    ld e, e                                       ; $43bc: $5b
    ld l, b                                       ; $43bd: $68
    or [hl]                                       ; $43be: $b6
    di                                            ; $43bf: $f3
    cp $00                                        ; $43c0: $fe $00
    rst $20                                       ; $43c2: $e7
    ld h, d                                       ; $43c3: $62
    push af                                       ; $43c4: $f5
    xor b                                         ; $43c5: $a8
    push af                                       ; $43c6: $f5
    ld l, l                                       ; $43c7: $6d
    ld a, [hl]                                    ; $43c8: $7e
    ld h, a                                       ; $43c9: $67
    or h                                          ; $43ca: $b4
    ld l, $6b                                     ; $43cb: $2e $6b
    push af                                       ; $43cd: $f5
    adc [hl]                                      ; $43ce: $8e
    ld d, c                                       ; $43cf: $51
    call nc, $342d                                ; $43d0: $d4 $2d $34
    db $db                                        ; $43d3: $db
    ld a, c                                       ; $43d4: $79
    ld a, a                                       ; $43d5: $7f
    ld [c], a                                     ; $43d6: $e2
    add hl, hl                                    ; $43d7: $29
    rst $30                                       ; $43d8: $f7
    ld a, [de]                                    ; $43d9: $1a
    add l                                         ; $43da: $85
    db $d3                                        ; $43db: $d3
    db $e4                                        ; $43dc: $e4
    ld e, d                                       ; $43dd: $5a
    db $fd                                        ; $43de: $fd
    add l                                         ; $43df: $85
    ld sp, $4553                                  ; $43e0: $31 $53 $45
    db $dd                                        ; $43e3: $dd
    ld b, d                                       ; $43e4: $42
    or e                                          ; $43e5: $b3
    sbc l                                         ; $43e6: $9d
    rst $30                                       ; $43e7: $f7
    rlca                                          ; $43e8: $07
    add hl, bc                                    ; $43e9: $09
    sbc d                                         ; $43ea: $9a
    pop de                                        ; $43eb: $d1
    ld l, h                                       ; $43ec: $6c
    db $f4                                        ; $43ed: $f4
    ld [hl], b                                    ; $43ee: $70
    ld c, c                                       ; $43ef: $49
    ld c, [hl]                                    ; $43f0: $4e
    rst $10                                       ; $43f1: $d7
    ld d, l                                       ; $43f2: $55
    sbc l                                         ; $43f3: $9d
    ccf                                           ; $43f4: $3f
    sbc d                                         ; $43f5: $9a
    and a                                         ; $43f6: $a7
    ld a, [bc]                                    ; $43f7: $0a
    xor e                                         ; $43f8: $ab
    rla                                           ; $43f9: $17
    cpl                                           ; $43fa: $2f
    ld c, a                                       ; $43fb: $4f
    db $e3                                        ; $43fc: $e3
    inc d                                         ; $43fd: $14
    add d                                         ; $43fe: $82
    inc sp                                        ; $43ff: $33
    db $ec                                        ; $4400: $ec
    adc l                                         ; $4401: $8d
    adc c                                         ; $4402: $89
    cp d                                          ; $4403: $ba
    add l                                         ; $4404: $85
    ld h, [hl]                                    ; $4405: $66
    dec sp                                        ; $4406: $3b
    rst $28                                       ; $4407: $ef
    rrca                                          ; $4408: $0f
    dec sp                                        ; $4409: $3b
    add sp, -$7f                                  ; $440a: $e8 $81
    ld l, h                                       ; $440c: $6c
    ld b, b                                       ; $440d: $40
    cp c                                          ; $440e: $b9
    and h                                         ; $440f: $a4
    sbc l                                         ; $4410: $9d
    db $ec                                        ; $4411: $ec
    ld [c], a                                     ; $4412: $e2
    jp nc, Jump_067_4eb4                          ; $4413: $d2 $b4 $4e

    inc c                                         ; $4416: $0c
    jr z, jr_067_4475                             ; $4417: $28 $5c

    db $fd                                        ; $4419: $fd
    ld d, c                                       ; $441a: $51
    ld h, l                                       ; $441b: $65
    ld de, $89ff                                  ; $441c: $11 $ff $89
    reti                                          ; $441f: $d9


    ld l, b                                       ; $4420: $68
    push af                                       ; $4421: $f5
    rla                                           ; $4422: $17
    add $4c                                       ; $4423: $c6 $4c
    ld l, l                                       ; $4425: $6d

jr_067_4426:
    inc e                                         ; $4426: $1c
    ld l, l                                       ; $4427: $6d
    add [hl]                                      ; $4428: $86
    add hl, de                                    ; $4429: $19
    ld [c], a                                     ; $442a: $e2
    ld l, b                                       ; $442b: $68
    inc bc                                        ; $442c: $03
    dec bc                                        ; $442d: $0b
    db $fd                                        ; $442e: $fd
    ld h, a                                       ; $442f: $67
    pop hl                                        ; $4430: $e1
    and [hl]                                      ; $4431: $a6
    rrca                                          ; $4432: $0f
    adc c                                         ; $4433: $89
    ld [hl], $bf                                  ; $4434: $36 $bf
    inc sp                                        ; $4436: $33
    ret z                                         ; $4437: $c8

    ld a, d                                       ; $4438: $7a
    jr nz, jr_067_4426                            ; $4439: $20 $eb

    adc a                                         ; $443b: $8f
    dec [hl]                                      ; $443c: $35
    dec sp                                        ; $443d: $3b
    rst $28                                       ; $443e: $ef
    ld l, b                                       ; $443f: $68
    inc bc                                        ; $4440: $03
    ld l, d                                       ; $4441: $6a
    ld e, b                                       ; $4442: $58
    ld d, [hl]                                    ; $4443: $56
    inc l                                         ; $4444: $2c
    inc [hl]                                      ; $4445: $34
    dec de                                        ; $4446: $1b
    ld h, e                                       ; $4447: $63
    ld [hl], d                                    ; $4448: $72
    db $f4                                        ; $4449: $f4

jr_067_444a:
    ld l, [hl]                                    ; $444a: $6e
    jp nz, $2d02                                  ; $444b: $c2 $02 $2d

    or e                                          ; $444e: $b3
    ld de, $d4b2                                  ; $444f: $11 $b2 $d4
    ld a, [$630b]                                 ; $4452: $fa $0b $63
    and [hl]                                      ; $4455: $a6
    ld d, $1d                                     ; $4456: $16 $1d
    sub a                                         ; $4458: $97
    ld l, l                                       ; $4459: $6d
    or h                                          ; $445a: $b4
    cpl                                           ; $445b: $2f
    and [hl]                                      ; $445c: $a6
    dec c                                         ; $445d: $0d
    pop hl                                        ; $445e: $e1
    ld hl, $6866                                  ; $445f: $21 $66 $68
    ld a, l                                       ; $4462: $7d
    ld a, [de]                                    ; $4463: $1a
    db $eb                                        ; $4464: $eb
    rst $08                                       ; $4465: $cf
    ld a, [$a183]                                 ; $4466: $fa $83 $a1
    rst $30                                       ; $4469: $f7
    rlca                                          ; $446a: $07
    ld e, e                                       ; $446b: $5b
    xor c                                         ; $446c: $a9
    adc l                                         ; $446d: $8d
    jp nz, Jump_067_4669                          ; $446e: $c2 $69 $46

    and c                                         ; $4471: $a1
    add hl, hl                                    ; $4472: $29
    add a                                         ; $4473: $87
    push af                                       ; $4474: $f5

jr_067_4475:
    call nc, $f406                                ; $4475: $d4 $06 $f4
    rst $20                                       ; $4478: $e7
    or d                                          ; $4479: $b2
    sbc [hl]                                      ; $447a: $9e
    ld d, [hl]                                    ; $447b: $56
    ld l, d                                       ; $447c: $6a
    rla                                           ; $447d: $17
    or a                                          ; $447e: $b7
    and d                                         ; $447f: $a2
    ld [hl], $a0                                  ; $4480: $36 $a0
    ld a, $16                                     ; $4482: $3e $16
    inc [hl]                                      ; $4484: $34
    and b                                         ; $4485: $a0
    pop bc                                        ; $4486: $c1
    sbc b                                         ; $4487: $98
    ld d, $4e                                     ; $4488: $16 $4e
    ld d, e                                       ; $448a: $53
    adc [hl]                                      ; $448b: $8e
    ld sp, $a94c                                  ; $448c: $31 $4c $a9
    and l                                         ; $448f: $a5
    rst $08                                       ; $4490: $cf
    sbc b                                         ; $4491: $98
    and h                                         ; $4492: $a4
    ld b, c                                       ; $4493: $41
    rst $28                                       ; $4494: $ef
    ld l, [hl]                                    ; $4495: $6e
    ld e, c                                       ; $4496: $59
    xor e                                         ; $4497: $ab
    cp a                                          ; $4498: $bf
    jr nc, jr_067_4501                            ; $4499: $30 $66

    ld l, d                                       ; $449b: $6a
    ld d, e                                       ; $449c: $53
    ld c, $cd                                     ; $449d: $0e $cd
    xor b                                         ; $449f: $a8
    ccf                                           ; $44a0: $3f
    ld bc, $92b2                                  ; $44a1: $01 $b2 $92
    jp hl                                         ; $44a4: $e9


    and c                                         ; $44a5: $a1
    db $dd                                        ; $44a6: $dd
    rra                                           ; $44a7: $1f
    ld e, e                                       ; $44a8: $5b

Jump_067_44a9:
    sbc b                                         ; $44a9: $98
    or [hl]                                       ; $44aa: $b6
    rla                                           ; $44ab: $17
    ld b, h                                       ; $44ac: $44

jr_067_44ad:
    ld d, l                                       ; $44ad: $55
    ld a, d                                       ; $44ae: $7a
    and b                                         ; $44af: $a0
    dec c                                         ; $44b0: $0d
    jr z, jr_067_444a                             ; $44b1: $28 $97

    or h                                          ; $44b3: $b4
    sub e                                         ; $44b4: $93
    push de                                       ; $44b5: $d5
    db $dd                                        ; $44b6: $dd
    ld a, [c]                                     ; $44b7: $f2
    sbc e                                         ; $44b8: $9b
    add $d1                                       ; $44b9: $c6 $d1
    ld h, [hl]                                    ; $44bb: $66
    sbc b                                         ; $44bc: $98
    ld hl, $368e                                  ; $44bd: $21 $8e $36
    or b                                          ; $44c0: $b0
    ret nc                                        ; $44c1: $d0

    ld a, a                                       ; $44c2: $7f
    ld d, $36                                     ; $44c3: $16 $36
    push hl                                       ; $44c5: $e5
    ld d, b                                       ; $44c6: $50
    add l                                         ; $44c7: $85
    nop                                           ; $44c8: $00
    sub $33                                       ; $44c9: $d6 $33
    or d                                          ; $44cb: $b2
    ld a, $8d                                     ; $44cc: $3e $8d
    ld b, l                                       ; $44ce: $45
    db $fc                                        ; $44cf: $fc
    daa                                           ; $44d0: $27
    ld h, [hl]                                    ; $44d1: $66
    and e                                         ; $44d2: $a3
    push de                                       ; $44d3: $d5
    ld e, a                                       ; $44d4: $5f
    jr jr_067_450a                                ; $44d5: $18 $33

    ld [hl], l                                    ; $44d7: $75
    db $d3                                        ; $44d8: $d3
    rlca                                          ; $44d9: $07
    ld [c], a                                     ; $44da: $e2
    ld sp, $cb50                                  ; $44db: $31 $50 $cb
    xor [hl]                                      ; $44de: $ae
    ld h, b                                       ; $44df: $60
    push de                                       ; $44e0: $d5
    jp $ff11                                      ; $44e1: $c3 $11 $ff


    inc h                                         ; $44e4: $24
    or h                                          ; $44e5: $b4
    ld l, h                                       ; $44e6: $6c
    ld b, d                                       ; $44e7: $42
    db $fc                                        ; $44e8: $fc
    rst $18                                       ; $44e9: $df
    cp a                                          ; $44ea: $bf
    adc h                                         ; $44eb: $8c
    cp a                                          ; $44ec: $bf
    ld l, $3c                                     ; $44ed: $2e $3c
    ld l, [hl]                                    ; $44ef: $6e
    ld l, d                                       ; $44f0: $6a
    and d                                         ; $44f1: $a2
    call $8cef                                    ; $44f2: $cd $ef $8c
    adc l                                         ; $44f5: $8d
    and e                                         ; $44f6: $a3
    call $3bce                                    ; $44f7: $cd $ce $3b
    ld e, d                                       ; $44fa: $5a
    ld l, b                                       ; $44fb: $68
    ld [hl], $c6                                  ; $44fc: $36 $c6
    db $e4                                        ; $44fe: $e4
    ld l, b                                       ; $44ff: $68
    inc bc                                        ; $4500: $03

jr_067_4501:
    ld l, d                                       ; $4501: $6a
    ld e, b                                       ; $4502: $58
    ld d, [hl]                                    ; $4503: $56
    ld l, h                                       ; $4504: $6c
    jp z, $87a1                                   ; $4505: $ca $a1 $87

    ld h, a                                       ; $4508: $67
    pop hl                                        ; $4509: $e1

jr_067_450a:
    call nc, Call_067_6b1f                        ; $450a: $d4 $1f $6b
    sbc [hl]                                      ; $450d: $9e
    jr nc, jr_067_44ad                            ; $450e: $30 $9d

    ld l, $0c                                     ; $4510: $2e $0c
    ld [hl], e                                    ; $4512: $73
    rst $30                                       ; $4513: $f7
    adc d                                         ; $4514: $8a
    rst $10                                       ; $4515: $d7
    or b                                          ; $4516: $b0
    db $db                                        ; $4517: $db
    sbc a                                         ; $4518: $9f
    add hl, hl                                    ; $4519: $29
    and a                                         ; $451a: $a7
    cp $58                                        ; $451b: $fe $58
    sbc c                                         ; $451d: $99
    ld [hl], d                                    ; $451e: $72
    ld c, a                                       ; $451f: $4f
    ld d, h                                       ; $4520: $54
    ld c, c                                       ; $4521: $49
    ld l, l                                       ; $4522: $6d
    ld e, b                                       ; $4523: $58
    dec hl                                        ; $4524: $2b
    call nc, Call_067_667f                        ; $4525: $d4 $7f $66
    and e                                         ; $4528: $a3
    push hl                                       ; $4529: $e5
    ld l, b                                       ; $452a: $68
    add e                                         ; $452b: $83
    ld sp, $307d                                  ; $452c: $31 $7d $30
    ld d, h                                       ; $452f: $54
    ld d, h                                       ; $4530: $54
    ld a, a                                       ; $4531: $7f
    xor h                                         ; $4532: $ac
    ld c, a                                       ; $4533: $4f
    push af                                       ; $4534: $f5
    ld [hl], b                                    ; $4535: $70
    sbc d                                         ; $4536: $9a
    ld sp, $1ca6                                  ; $4537: $31 $a6 $1c
    sbc $c6                                       ; $453a: $de $c6
    cp c                                          ; $453c: $b9
    ccf                                           ; $453d: $3f
    rst $20                                       ; $453e: $e7
    ld a, [de]                                    ; $453f: $1a
    db $d3                                        ; $4540: $d3
    rlca                                          ; $4541: $07
    ld b, e                                       ; $4542: $43
    scf                                           ; $4543: $37
    ld a, l                                       ; $4544: $7d
    ld [c], a                                     ; $4545: $e2

Jump_067_4546:
    ld a, [c]                                     ; $4546: $f2
    cp [hl]                                       ; $4547: $be
    rst $28                                       ; $4548: $ef
    ld h, $b8                                     ; $4549: $26 $b8
    add [hl]                                      ; $454b: $86
    and a                                         ; $454c: $a7
    adc d                                         ; $454d: $8a
    ld b, $63                                     ; $454e: $06 $63
    ld a, [$e860]                                 ; $4550: $fa $60 $e8
    and [hl]                                      ; $4553: $a6
    ld e, [hl]                                    ; $4554: $5e
    ld [c], a                                     ; $4555: $e2
    ld c, $b7                                     ; $4556: $0e $b7
    rst $00                                       ; $4558: $c7
    add [hl]                                      ; $4559: $86
    or a                                          ; $455a: $b7
    dec bc                                        ; $455b: $0b
    sub $a9                                       ; $455c: $d6 $a9
    add h                                         ; $455e: $84
    db $eb                                        ; $455f: $eb
    cpl                                           ; $4560: $2f
    inc e                                         ; $4561: $1c
    ld d, c                                       ; $4562: $51
    and a                                         ; $4563: $a7
    rst $20                                       ; $4564: $e7
    ld sp, $efa6                                  ; $4565: $31 $a6 $ef
    ei                                            ; $4568: $fb
    or $72                                        ; $4569: $f6 $72
    ld d, a                                       ; $456b: $57
    and a                                         ; $456c: $a7
    rst $20                                       ; $456d: $e7
    ld sp, $0ba6                                  ; $456e: $31 $a6 $0b
    push af                                       ; $4571: $f5
    sbc a                                         ; $4572: $9f
    add hl, de                                    ; $4573: $19
    db $ed                                        ; $4574: $ed
    xor $e1                                       ; $4575: $ee $e1
    sub a                                         ; $4577: $97
    xor l                                         ; $4578: $ad
    db $eb                                        ; $4579: $eb
    ld [hl-], a                                   ; $457a: $32
    jp hl                                         ; $457b: $e9


    ld de, $0b75                                  ; $457c: $11 $75 $0b
    call $de76                                    ; $457f: $cd $76 $de
    rra                                           ; $4582: $1f
    db $db                                        ; $4583: $db
    sub a                                         ; $4584: $97
    dec [hl]                                      ; $4585: $35
    ld d, c                                       ; $4586: $51
    or a                                          ; $4587: $b7
    ret nc                                        ; $4588: $d0

    ld l, h                                       ; $4589: $6c
    and a                                         ; $458a: $a7
    xor b                                         ; $458b: $a8
    db $d3                                        ; $458c: $d3
    sub h                                         ; $458d: $94
    ld b, e                                       ; $458e: $43
    rla                                           ; $458f: $17
    xor h                                         ; $4590: $ac
    xor b                                         ; $4591: $a8
    push hl                                       ; $4592: $e5
    ld l, [hl]                                    ; $4593: $6e
    sbc e                                         ; $4594: $9b
    ld a, $e2                                     ; $4595: $3e $e2
    sub l                                         ; $4597: $95
    cpl                                           ; $4598: $2f
    ld h, $d9                                     ; $4599: $26 $d9
    add h                                         ; $459b: $84
    ld hl, sp-$41                                 ; $459c: $f8 $bf
    ld a, a                                       ; $459e: $7f
    add hl, de                                    ; $459f: $19
    ld a, a                                       ; $45a0: $7f
    ld e, l                                       ; $45a1: $5d
    ld a, b                                       ; $45a2: $78
    ld l, h                                       ; $45a3: $6c
    ld b, b                                       ; $45a4: $40
    cpl                                           ; $45a5: $2f
    adc b                                         ; $45a6: $88
    ld l, c                                       ; $45a7: $69
    ld b, e                                       ; $45a8: $43
    ld a, b                                       ; $45a9: $78
    adc b                                         ; $45aa: $88
    add hl, de                                    ; $45ab: $19
    ld a, [hl+]                                   ; $45ac: $2a
    xor d                                         ; $45ad: $aa
    ld c, a                                       ; $45ae: $4f
    ld h, e                                       ; $45af: $63
    ld e, c                                       ; $45b0: $59
    cp d                                          ; $45b1: $ba
    add l                                         ; $45b2: $85

jr_067_45b3:
    dec c                                         ; $45b3: $0d
    add sp, $16                                   ; $45b4: $e8 $16
    sbc b                                         ; $45b6: $98
    ld h, a                                       ; $45b7: $67
    sub [hl]                                      ; $45b8: $96
    ld c, c                                       ; $45b9: $49
    ccf                                           ; $45ba: $3f
    sbc $1f                                       ; $45bb: $de $1f
    ld [c], a                                     ; $45bd: $e2
    ld c, c                                       ; $45be: $49
    ld d, c                                       ; $45bf: $51
    add hl, de                                    ; $45c0: $19
    inc bc                                        ; $45c1: $03
    or l                                          ; $45c2: $b5
    ei                                            ; $45c3: $fb
    rst $10                                       ; $45c4: $d7
    or a                                          ; $45c5: $b7
    ld sp, hl                                     ; $45c6: $f9
    sbc l                                         ; $45c7: $9d
    or c                                          ; $45c8: $b1
    ld bc, $ad85                                  ; $45c9: $01 $85 $ad
    xor b                                         ; $45cc: $a8
    ld [hl], a                                    ; $45cd: $77
    dec hl                                        ; $45ce: $2b
    ld e, [hl]                                    ; $45cf: $5e
    adc c                                         ; $45d0: $89
    dec h                                         ; $45d1: $25
    add hl, sp                                    ; $45d2: $39
    ld d, [hl]                                    ; $45d3: $56
    ret                                           ; $45d4: $c9


    adc b                                         ; $45d5: $88
    ld h, a                                       ; $45d6: $67
    ld l, h                                       ; $45d7: $6c
    ld b, b                                       ; $45d8: $40
    and a                                         ; $45d9: $a7
    ld e, [hl]                                    ; $45da: $5e
    xor $82                                       ; $45db: $ee $82
    ld [hl], l                                    ; $45dd: $75
    ld e, l                                       ; $45de: $5d
    db $e3                                        ; $45df: $e3
    inc d                                         ; $45e0: $14
    add d                                         ; $45e1: $82
    inc sp                                        ; $45e2: $33
    db $ec                                        ; $45e3: $ec
    adc l                                         ; $45e4: $8d
    db $dd                                        ; $45e5: $dd
    rra                                           ; $45e6: $1f
    ld [c], a                                     ; $45e7: $e2
    cp $68                                        ; $45e8: $fe $68
    sbc [hl]                                      ; $45ea: $9e
    and [hl]                                      ; $45eb: $a6
    inc e                                         ; $45ec: $1c
    ld a, [bc]                                    ; $45ed: $0a
    call $baec                                    ; $45ee: $cd $ec $ba
    ld a, [hl-]                                   ; $45f1: $3a
    ret                                           ; $45f2: $c9


    ld b, $6a                                     ; $45f3: $06 $6a
    db $fd                                        ; $45f5: $fd
    add l                                         ; $45f6: $85
    ld sp, $ef53                                  ; $45f7: $31 $53 $ef
    rrca                                          ; $45fa: $0f
    add hl, bc                                    ; $45fb: $09
    call Call_000_262f                            ; $45fc: $cd $2f $26
    ld e, c                                       ; $45ff: $59
    db $e3                                        ; $4600: $e3
    ld l, $e1                                     ; $4601: $2e $e1
    call c, $ddf7                                 ; $4603: $dc $f7 $dd
    ld [hl], l                                    ; $4606: $75
    push hl                                       ; $4607: $e5
    cp a                                          ; $4608: $bf
    ld a, e                                       ; $4609: $7b
    ld a, h                                       ; $460a: $7c
    ld a, c                                       ; $460b: $79
    xor $0f                                       ; $460c: $ee $0f
    db $db                                        ; $460e: $db
    sbc e                                         ; $460f: $9b
    ld [hl], d                                    ; $4610: $72
    xor b                                         ; $4611: $a8
    jp nz, $9ad6                                  ; $4612: $c2 $d6 $9a

    ld [hl], d                                    ; $4615: $72
    jr z, jr_067_45b3                             ; $4616: $28 $9b

    db $10                                        ; $4618: $10
    rst $38                                       ; $4619: $ff
    rst $30                                       ; $461a: $f7
    cpl                                           ; $461b: $2f
    db $e3                                        ; $461c: $e3
    xor a                                         ; $461d: $af
    dec bc                                        ; $461e: $0b
    adc a                                         ; $461f: $8f
    dec c                                         ; $4620: $0d
    ld l, a                                       ; $4621: $6f
    ld d, a                                       ; $4622: $57
    ld [hl], l                                    ; $4623: $75
    inc a                                         ; $4624: $3c
    add [hl]                                      ; $4625: $86
    ld h, d                                       ; $4626: $62
    pop hl                                        ; $4627: $e1
    and [hl]                                      ; $4628: $a6
    rrca                                          ; $4629: $0f
    ld [c], a                                     ; $462a: $e2
    ld l, a                                       ; $462b: $6f
    ld b, e                                       ; $462c: $43
    cpl                                           ; $462d: $2f
    ld [hl], c                                    ; $462e: $71
    ld a, b                                       ; $462f: $78
    ld [hl], d                                    ; $4630: $72
    call c, $8946                                 ; $4631: $dc $46 $89
    dec c                                         ; $4634: $0d
    rra                                           ; $4635: $1f
    add hl, bc                                    ; $4636: $09
    ld sp, $a70b                                  ; $4637: $31 $0b $a7
    ld c, a                                       ; $463a: $4f
    di                                            ; $463b: $f3
    ld [hl], h                                    ; $463c: $74
    ld e, l                                       ; $463d: $5d
    ld d, e                                       ; $463e: $53
    ld c, $5d                                     ; $463f: $0e $5d
    rst $10                                       ; $4641: $d7
    or b                                          ; $4642: $b0
    db $db                                        ; $4643: $db
    sbc a                                         ; $4644: $9f
    add hl, hl                                    ; $4645: $29
    rst $20                                       ; $4646: $e7
    cp $00                                        ; $4647: $fe $00
    ld [c], a                                     ; $4649: $e2
    ld a, a                                       ; $464a: $7f
    ld [hl], d                                    ; $464b: $72
    sbc d                                         ; $464c: $9a
    ld [hl], d                                    ; $464d: $72
    jr z, @+$36                                   ; $464e: $28 $34

    adc a                                         ; $4650: $8f
    dec hl                                        ; $4651: $2b
    ld l, e                                       ; $4652: $6b
    ld hl, sp+$27                                 ; $4653: $f8 $27
    ld h, $f1                                     ; $4655: $26 $f1
    jp $cd0a                                      ; $4657: $c3 $0a $cd


    cp h                                          ; $465a: $bc
    ccf                                           ; $465b: $3f
    ld [c], a                                     ; $465c: $e2
    ld c, a                                       ; $465d: $4f
    ld d, h                                       ; $465e: $54
    rst $38                                       ; $465f: $ff
    db $fd                                        ; $4660: $fd
    cp h                                          ; $4661: $bc
    ccf                                           ; $4662: $3f
    rla                                           ; $4663: $17
    ld c, a                                       ; $4664: $4f
    ld a, d                                       ; $4665: $7a
    cp d                                          ; $4666: $ba
    ld a, d                                       ; $4667: $7a
    rst $30                                       ; $4668: $f7

Jump_067_4669:
    ld a, l                                       ; $4669: $7d
    rst $10                                       ; $466a: $d7
    ld e, c                                       ; $466b: $59
    ld a, [hl]                                    ; $466c: $7e
    ld l, c                                       ; $466d: $69
    ld [$eddd], a                                 ; $466e: $ea $dd $ed
    dec d                                         ; $4671: $15
    ld b, b                                       ; $4672: $40
    dec bc                                        ; $4673: $0b
    ld c, a                                       ; $4674: $4f
    ld [hl], $8c                                  ; $4675: $36 $8c
    or $5c                                        ; $4677: $f6 $5c
    ld h, a                                       ; $4679: $67
    cp d                                          ; $467a: $ba
    ld h, b                                       ; $467b: $60
    and a                                         ; $467c: $a7
    ld d, $9a                                     ; $467d: $16 $9a
    cp c                                          ; $467f: $b9
    ld h, d                                       ; $4680: $62
    rst $38                                       ; $4681: $ff
    inc h                                         ; $4682: $24
    sbc $34                                       ; $4683: $de $34
    ld h, b                                       ; $4685: $60
    and c                                         ; $4686: $a1
    sbc $1f                                       ; $4687: $de $1f
    add hl, bc                                    ; $4689: $09
    sbc d                                         ; $468a: $9a
    reti                                          ; $468b: $d9


    inc c                                         ; $468c: $0c
    ld e, c                                       ; $468d: $59
    daa                                           ; $468e: $27
    ld c, e                                       ; $468f: $4b
    push af                                       ; $4690: $f5
    pop af                                        ; $4691: $f1
    rst $20                                       ; $4692: $e7
    add hl, hl                                    ; $4693: $29
    inc [hl]                                      ; $4694: $34
    dec de                                        ; $4695: $1b
    ld h, e                                       ; $4696: $63
    ld [hl], d                                    ; $4697: $72
    xor $6e                                       ; $4698: $ee $6e
    ld l, a                                       ; $469a: $6f
    jp z, $0aa1                                   ; $469b: $ca $a1 $0a

    ld e, e                                       ; $469e: $5b
    db $db                                        ; $469f: $db
    db $f4                                        ; $46a0: $f4
    ld bc, $bbdb                                  ; $46a1: $01 $db $bb
    cp h                                          ; $46a4: $bc
    sub l                                         ; $46a5: $95
    ld c, l                                       ; $46a6: $4d
    jp $d5db                                      ; $46a7: $c3 $db $d5


    sub h                                         ; $46aa: $94
    ld b, e                                       ; $46ab: $43
    rst $10                                       ; $46ac: $d7
    push de                                       ; $46ad: $d5
    ld hl, sp+$76                                 ; $46ae: $f8 $76
    dec [hl]                                      ; $46b0: $35
    and b                                         ; $46b1: $a0
    sub d                                         ; $46b2: $92
    ld sp, $5ad8                                  ; $46b3: $31 $d8 $5a
    ld a, d                                       ; $46b6: $7a
    adc h                                         ; $46b7: $8c
    rst $30                                       ; $46b8: $f7
    rlca                                          ; $46b9: $07
    ld e, e                                       ; $46ba: $5b
    daa                                           ; $46bb: $27
    ld a, [bc]                                    ; $46bc: $0a
    call nc, Call_067_4ce4                        ; $46bd: $d4 $e4 $4c
    cp b                                          ; $46c0: $b8
    ld a, e                                       ; $46c1: $7b
    ld e, $97                                     ; $46c2: $1e $97
    call z, $c44a                                 ; $46c4: $cc $4a $c4
    pop de                                        ; $46c7: $d1
    ld a, [hl-]                                   ; $46c8: $3a
    ret                                           ; $46c9: $c9


    ei                                            ; $46ca: $fb
    inc bc                                        ; $46cb: $03
    ld [c], a                                     ; $46cc: $e2
    ld e, $7d                                     ; $46cd: $1e $7d
    ld sp, $ddcf                                  ; $46cf: $31 $cf $dd
    ld c, e                                       ; $46d2: $4b
    inc e                                         ; $46d3: $1c
    ld a, [de]                                    ; $46d4: $1a

jr_067_46d5:
    ld b, a                                       ; $46d5: $47
    and d                                         ; $46d6: $a2
    ret nc                                        ; $46d7: $d0

    ld l, h                                       ; $46d8: $6c
    adc h                                         ; $46d9: $8c
    ret                                           ; $46da: $c9


    cp c                                          ; $46db: $b9
    ccf                                           ; $46dc: $3f
    add hl, bc                                    ; $46dd: $09
    sbc d                                         ; $46de: $9a
    ld e, c                                       ; $46df: $59
    db $dd                                        ; $46e0: $dd
    cp l                                          ; $46e1: $bd
    cp $04                                        ; $46e2: $fe $04
    ld d, h                                       ; $46e4: $54
    ld h, c                                       ; $46e5: $61
    ld [hl], l                                    ; $46e6: $75
    sub d                                         ; $46e7: $92
    dec c                                         ; $46e8: $0d
    call nc, Call_000_0bfa                        ; $46e9: $d4 $fa $0b
    ld h, e                                       ; $46ec: $63
    and [hl]                                      ; $46ed: $a6
    sbc $1f                                       ; $46ee: $de $1f
    add hl, bc                                    ; $46f0: $09
    ld sp, $a70b                                  ; $46f1: $31 $0b $a7
    ld c, h                                       ; $46f4: $4c
    adc a                                         ; $46f5: $8f
    or c                                          ; $46f6: $b1
    add hl, de                                    ; $46f7: $19
    ld sp, $3539                                  ; $46f8: $31 $39 $35
    cp [hl]                                       ; $46fb: $be
    ld e, l                                       ; $46fc: $5d
    dec c                                         ; $46fd: $0d
    jr z, jr_067_46d5                             ; $46fe: $28 $d5

    cp e                                          ; $4700: $bb
    ld a, e                                       ; $4701: $7b
    ret nz                                        ; $4702: $c0

    ld [hl-], a                                   ; $4703: $32
    rst $30                                       ; $4704: $f7
    ld a, l                                       ; $4705: $7d
    ld a, a                                       ; $4706: $7f
    db $db                                        ; $4707: $db
    add h                                         ; $4708: $84
    ld d, e                                       ; $4709: $53
    ld l, b                                       ; $470a: $68
    ld e, [hl]                                    ; $470b: $5e
    db $d3                                        ; $470c: $d3
    ld b, [hl]                                    ; $470d: $46
    ret z                                         ; $470e: $c8

    ld a, [$3cb0]                                 ; $470f: $fa $b0 $3c
    dec c                                         ; $4712: $0d
    ld d, e                                       ; $4713: $53
    rst $28                                       ; $4714: $ef
    sub e                                         ; $4715: $93
    and d                                         ; $4716: $a2
    ld l, [hl]                                    ; $4717: $6e
    and c                                         ; $4718: $a1
    reti                                          ; $4719: $d9


    adc $bb                                       ; $471a: $ce $bb
    ld e, e                                       ; $471c: $5b
    pop af                                        ; $471d: $f1
    ret c                                         ; $471e: $d8

    push de                                       ; $471f: $d5
    inc l                                         ; $4720: $2c
    sbc c                                         ; $4721: $99
    and a                                         ; $4722: $a7
    scf                                           ; $4723: $37
    rst $08                                       ; $4724: $cf
    rst $08                                       ; $4725: $cf
    or d                                          ; $4726: $b2
    jp z, $f767                                   ; $4727: $ca $67 $f7

    rlca                                          ; $472a: $07
    ld e, e                                       ; $472b: $5b
    db $dd                                        ; $472c: $dd
    bit 2, e                                      ; $472d: $cb $53
    ret                                           ; $472f: $c9


    and l                                         ; $4730: $a5
    ld e, [hl]                                    ; $4731: $5e
    cp h                                          ; $4732: $bc
    inc a                                         ; $4733: $3c
    and d                                         ; $4734: $a2
    ld h, $4e                                     ; $4735: $26 $4e
    adc $b0                                       ; $4737: $ce $b0
    cp e                                          ; $4739: $bb
    sub a                                         ; $473a: $97
    ld hl, $7666                                  ; $473b: $21 $66 $76
    ld e, h                                       ; $473e: $5c
    ld [hl], $76                                  ; $473f: $36 $76
    add l                                         ; $4741: $85
    ld e, l                                       ; $4742: $5d
    rst $30                                       ; $4743: $f7
    rlca                                          ; $4744: $07
    ld h, a                                       ; $4745: $67

Jump_067_4746:
    sub h                                         ; $4746: $94
    call $1fb0                                    ; $4747: $cd $b0 $1f
    rst $08                                       ; $474a: $cf
    ret c                                         ; $474b: $d8

    dec d                                         ; $474c: $15
    halt                                          ; $474d: $76
    dec [hl]                                      ; $474e: $35
    push hl                                       ; $474f: $e5
    ld d, b                                       ; $4750: $50
    adc c                                         ; $4751: $89
    ld h, [hl]                                    ; $4752: $66
    db $e3                                        ; $4753: $e3
    ld l, $68                                     ; $4754: $2e $68
    or e                                          ; $4756: $b3
    pop de                                        ; $4757: $d1
    jp Jump_000_3925                              ; $4758: $c3 $25 $39


    push af                                       ; $475b: $f5
    rst $00                                       ; $475c: $c7
    jp z, $1e9f                                   ; $475d: $ca $9f $1e

    jp c, Jump_000_2bdd                           ; $4760: $da $dd $2b

    add $f5                                       ; $4763: $c6 $f5
    sbc a                                         ; $4765: $9f
    sbc b                                         ; $4766: $98
    ld e, a                                       ; $4767: $5f
    ld [hl], h                                    ; $4768: $74
    or h                                          ; $4769: $b4
    or d                                          ; $476a: $b2
    ld sp, hl                                     ; $476b: $f9
    add hl, de                                    ; $476c: $19
    xor l                                         ; $476d: $ad
    rst $00                                       ; $476e: $c7
    ld [hl], $71                                  ; $476f: $36 $71
    ld h, d                                       ; $4771: $62
    sbc [hl]                                      ; $4772: $9e
    ld b, $d4                                     ; $4773: $06 $d4
    ld b, a                                       ; $4775: $47
    db $e4                                        ; $4776: $e4
    ld a, [c]                                     ; $4777: $f2
    halt                                          ; $4778: $76
    ld [hl], c                                    ; $4779: $71
    cp l                                          ; $477a: $bd
    ld [hl], b                                    ; $477b: $70
    ld a, [$b033]                                 ; $477c: $fa $33 $b0
    dec hl                                        ; $477f: $2b
    db $ec                                        ; $4780: $ec
    ld l, d                                       ; $4781: $6a
    jp z, $aba1                                   ; $4782: $ca $a1 $ab

    ld e, c                                       ; $4785: $59
    ld [hl-], a                                   ; $4786: $32
    dec c                                         ; $4787: $0d
    ld e, d                                       ; $4788: $5a
    add l                                         ; $4789: $85
    db $ec                                        ; $478a: $ec
    ccf                                           ; $478b: $3f
    jp nc, $905f                                  ; $478c: $d2 $5f $90

    ld l, c                                       ; $478f: $69
    ret nc                                        ; $4790: $d0

    or d                                          ; $4791: $b2
    reti                                          ; $4792: $d9


    or c                                          ; $4793: $b1
    sbc c                                         ; $4794: $99
    ld b, $2f                                     ; $4795: $06 $2f
    rst $28                                       ; $4797: $ef
    rrca                                          ; $4798: $0f
    add hl, bc                                    ; $4799: $09
    add d                                         ; $479a: $82
    ld a, a                                       ; $479b: $7f
    inc l                                         ; $479c: $2c
    adc b                                         ; $479d: $88

Call_067_479e:
    add hl, de                                    ; $479e: $19
    call Call_000_0f46                            ; $479f: $cd $46 $0f
    sub a                                         ; $47a2: $97
    db $e4                                        ; $47a3: $e4
    adc b                                         ; $47a4: $88
    cp d                                          ; $47a5: $ba
    add l                                         ; $47a6: $85
    ld h, [hl]                                    ; $47a7: $66
    dec sp                                        ; $47a8: $3b
    rst $28                                       ; $47a9: $ef
    sbc [hl]                                      ; $47aa: $9e
    and c                                         ; $47ab: $a1
    sbc l                                         ; $47ac: $9d
    ld a, [$24f6]                                 ; $47ad: $fa $f6 $24
    sbc [hl]                                      ; $47b0: $9e
    ld c, l                                       ; $47b1: $4d
    ld e, c                                       ; $47b2: $59
    ld b, e                                       ; $47b3: $43
    jp c, Jump_067_4aa0                           ; $47b4: $da $a0 $4a

    db $eb                                        ; $47b7: $eb
    ccf                                           ; $47b8: $3f
    or d                                          ; $47b9: $b2
    ld l, h                                       ; $47ba: $6c
    and [hl]                                      ; $47bb: $a6
    pop bc                                        ; $47bc: $c1
    set 7, [hl]                                   ; $47bd: $cb $fe
    ld c, [hl]                                    ; $47bf: $4e
    ld a, [$02f6]                                 ; $47c0: $fa $f6 $02
    rst $28                                       ; $47c3: $ef
    ld l, [hl]                                    ; $47c4: $6e
    ld e, $39                                     ; $47c5: $1e $39
    dec [hl]                                      ; $47c7: $35
    db $fc                                        ; $47c8: $fc
    inc hl                                        ; $47c9: $23
    ld a, l                                       ; $47ca: $7d
    ld b, h                                       ; $47cb: $44
    ld h, l                                       ; $47cc: $65
    dec c                                         ; $47cd: $0d
    ccf                                           ; $47ce: $3f
    inc a                                         ; $47cf: $3c
    ret nc                                        ; $47d0: $d0

    ld b, $47                                     ; $47d1: $06 $47
    xor l                                         ; $47d3: $ad
    ld [hl], a                                    ; $47d4: $77

Jump_067_47d5:
    ld [hl], a                                    ; $47d5: $77
    sub e                                         ; $47d6: $93
    ld l, [hl]                                    ; $47d7: $6e
    and c                                         ; $47d8: $a1
    ld [hl], $a0                                  ; $47d9: $36 $a0
    cp $ac                                        ; $47db: $fe $ac
    ccf                                           ; $47dd: $3f
    jr @+$7c                                      ; $47de: $18 $7a

    rst $30                                       ; $47e0: $f7
    ld a, [bc]                                    ; $47e1: $0a
    cp [hl]                                       ; $47e2: $be
    ld h, [hl]                                    ; $47e3: $66
    ld e, b                                       ; $47e4: $58
    rst $38                                       ; $47e5: $ff
    sub c                                         ; $47e6: $91
    sbc l                                         ; $47e7: $9d
    ld h, $da                                     ; $47e8: $26 $da
    ld a, b                                       ; $47ea: $78
    and c                                         ; $47eb: $a1
    ld a, [hl-]                                   ; $47ec: $3a
    sub $1d                                       ; $47ed: $d6 $1d
    sub c                                         ; $47ef: $91
    ld a, $8a                                     ; $47f0: $3e $8a
    add [hl]                                      ; $47f2: $86
    or a                                          ; $47f3: $b7
    xor e                                         ; $47f4: $ab
    add hl, hl                                    ; $47f5: $29
    add a                                         ; $47f6: $87
    ld a, d                                       ; $47f7: $7a
    db $dd                                        ; $47f8: $dd
    dec hl                                        ; $47f9: $2b
    ld e, h                                       ; $47fa: $5c
    ld d, e                                       ; $47fb: $53
    ld c, $b2                                     ; $47fc: $0e $b2
    add hl, de                                    ; $47fe: $19
    sub l                                         ; $47ff: $95
    adc h                                         ; $4800: $8c
    ld h, c                                       ; $4801: $61
    call c, Call_000_01fd                         ; $4802: $dc $fd $01
    sbc e                                         ; $4805: $9b
    ld b, a                                       ; $4806: $47
    halt                                          ; $4807: $76
    ld [$78db], a                                 ; $4808: $ea $db $78
    and c                                         ; $480b: $a1
    ld a, [hl-]                                   ; $480c: $3a
    sub $1d                                       ; $480d: $d6 $1d
    sub c                                         ; $480f: $91
    ld a, $36                                     ; $4810: $3e $36
    ld l, l                                       ; $4812: $6d
    ld hl, sp+$00                                 ; $4813: $f8 $00
    adc c                                         ; $4815: $89
    di                                            ; $4816: $f3
    or h                                          ; $4817: $b4
    rst $38                                       ; $4818: $ff
    ld b, d                                       ; $4819: $42
    dec de                                        ; $481a: $1b
    ld d, c                                       ; $481b: $51
    rst $38                                       ; $481c: $ff
    sub c                                         ; $481d: $91
    ld c, l                                       ; $481e: $4d
    add hl, sp                                    ; $481f: $39
    ret z                                         ; $4820: $c8

    xor [hl]                                      ; $4821: $ae
    ld l, e                                       ; $4822: $6b
    jp z, Jump_067_49a1                           ; $4823: $ca $a1 $49

    xor [hl]                                      ; $4826: $ae
    ld e, $b5                                     ; $4827: $1e $b5
    ld bc, $6fa5                                  ; $4829: $01 $a5 $6f
    adc b                                         ; $482c: $88
    ld bc, $c356                                  ; $482d: $01 $56 $c3
    adc a                                         ; $4830: $8f
    sub a                                         ; $4831: $97
    xor c                                         ; $4832: $a9
    dec c                                         ; $4833: $0d
    xor b                                         ; $4834: $a8
    ccf                                           ; $4835: $3f
    db $eb                                        ; $4836: $eb
    rrca                                          ; $4837: $0f
    add [hl]                                      ; $4838: $86
    ld l, [hl]                                    ; $4839: $6e
    xor d                                         ; $483a: $aa
    ld a, b                                       ; $483b: $78
    and c                                         ; $483c: $a1
    sbc c                                         ; $483d: $99
    ld c, l                                       ; $483e: $4d
    adc [hl]                                      ; $483f: $8e
    or c                                          ; $4840: $b1
    ld bc, $142b                                  ; $4841: $01 $2b $14
    sbc d                                         ; $4844: $9a
    ld l, c                                       ; $4845: $69
    adc l                                         ; $4846: $8d
    ld d, e                                       ; $4847: $53
    add sp, $6f                                   ; $4848: $e8 $6f
    cpl                                           ; $484a: $2f
    rst $28                                       ; $484b: $ef
    ld l, [hl]                                    ; $484c: $6e
    ld l, a                                       ; $484d: $6f
    xor $5e                                       ; $484e: $ee $5e
    pop bc                                        ; $4850: $c1
    rst $10                                       ; $4851: $d7
    ld h, l                                       ; $4852: $65
    db $ed                                        ; $4853: $ed
    cp $00                                        ; $4854: $fe $00
    db $db                                        ; $4856: $db
    sbc e                                         ; $4857: $9b
    ld [hl], d                                    ; $4858: $72
    add sp, -$46                                  ; $4859: $e8 $ba
    and [hl]                                      ; $485b: $a6
    inc e                                         ; $485c: $1c
    sbc d                                         ; $485d: $9a
    ld [hl], d                                    ; $485e: $72
    jr nc, @-$56                                  ; $485f: $30 $a8

    xor b                                         ; $4861: $a8
    adc c                                         ; $4862: $89
    sub e                                         ; $4863: $93
    inc sp                                        ; $4864: $33
    ld l, h                                       ; $4865: $6c
    db $d3                                        ; $4866: $d3
    rlca                                          ; $4867: $07
    rst $20                                       ; $4868: $e7
    cp c                                          ; $4869: $b9
    rst $10                                       ; $486a: $d7
    xor c                                         ; $486b: $a9
    ld l, a                                       ; $486c: $6f
    ld c, a                                       ; $486d: $4f
    ld [c], a                                     ; $486e: $e2
    reti                                          ; $486f: $d9


    sub h                                         ; $4870: $94
    push hl                                       ; $4871: $e5
    ld c, a                                       ; $4872: $4f
    rrca                                          ; $4873: $0f
    xor l                                         ; $4874: $ad
    ld l, h                                       ; $4875: $6c
    and [hl]                                      ; $4876: $a6
    pop bc                                        ; $4877: $c1
    rlc [hl]                                      ; $4878: $cb $06
    ld [hl], h                                    ; $487a: $74
    dec bc                                        ; $487b: $0b
    call z, $cb33                                 ; $487c: $cc $33 $cb
    and h                                         ; $487f: $a4
    rra                                           ; $4880: $1f
    adc e                                         ; $4881: $8b
    or d                                          ; $4882: $b2
    cp [hl]                                       ; $4883: $be
    adc l                                         ; $4884: $8d
    rla                                           ; $4885: $17
    xor d                                         ; $4886: $aa
    ld h, e                                       ; $4887: $63
    db $ec                                        ; $4888: $ec
    ld c, $df                                     ; $4889: $0e $df
    add $e5                                       ; $488b: $c6 $e5
    ld c, d                                       ; $488d: $4a
    add $30                                       ; $488e: $c6 $30
    ld l, [hl]                                    ; $4890: $6e
    and e                                         ; $4891: $a3
    ld b, h                                       ; $4892: $44
    ld d, a                                       ; $4893: $57
    rst $08                                       ; $4894: $cf
    jp z, $7b94                                   ; $4895: $ca $94 $7b

    dec [hl]                                      ; $4898: $35
    db $fc                                        ; $4899: $fc
    ldh a, [$c0]                                  ; $489a: $f0 $c0
    ld a, [de]                                    ; $489c: $1a
    inc e                                         ; $489d: $1c
    or l                                          ; $489e: $b5
    add [hl]                                      ; $489f: $86
    rra                                           ; $48a0: $1f
    cpl                                           ; $48a1: $2f
    ld d, e                                       ; $48a2: $53
    dec de                                        ; $48a3: $1b
    ld d, b                                       ; $48a4: $50
    ld a, a                                       ; $48a5: $7f
    sub $1f                                       ; $48a6: $d6 $1f
    inc c                                         ; $48a8: $0c
    db $ed                                        ; $48a9: $ed
    ccf                                           ; $48aa: $3f
    ld [hl], d                                    ; $48ab: $72
    ld l, d                                       ; $48ac: $6a
    ld hl, sp+$47                                 ; $48ad: $f8 $47
    ld a, [$ca88]                                 ; $48af: $fa $88 $ca
    ei                                            ; $48b2: $fb
    inc bc                                        ; $48b3: $03
    add hl, bc                                    ; $48b4: $09
    dec bc                                        ; $48b5: $0b
    xor e                                         ; $48b6: $ab
    sub b                                         ; $48b7: $90
    cp [hl]                                       ; $48b8: $be
    and c                                         ; $48b9: $a1
    sbc $79                                       ; $48ba: $de $79
    dec c                                         ; $48bc: $0d
    sub b                                         ; $48bd: $90
    call nc, $30c7                                ; $48be: $d4 $c7 $30
    ld c, l                                       ; $48c1: $4d
    inc hl                                        ; $48c2: $23
    jp nz, Jump_067_7946                          ; $48c3: $c2 $46 $79

    scf                                           ; $48c6: $37
    ld b, c                                       ; $48c7: $41
    inc sp                                        ; $48c8: $33
    ld h, d                                       ; $48c9: $62
    ret nz                                        ; $48ca: $c0

    ld b, [hl]                                    ; $48cb: $46
    adc c                                         ; $48cc: $89
    or d                                          ; $48cd: $b2
    add hl, bc                                    ; $48ce: $09
    pop af                                        ; $48cf: $f1
    ld a, a                                       ; $48d0: $7f
    rst $38                                       ; $48d1: $ff
    ld [hl-], a                                   ; $48d2: $32
    cp $ba                                        ; $48d3: $fe $ba
    ldh a, [$28]                                  ; $48d5: $f0 $28
    ld l, d                                       ; $48d7: $6a
    ld [c], a                                     ; $48d8: $e2
    db $e4                                        ; $48d9: $e4
    inc c                                         ; $48da: $0c
    cp e                                          ; $48db: $bb
    ccf                                           ; $48dc: $3f
    ld [c], a                                     ; $48dd: $e2
    add hl, hl                                    ; $48de: $29
    rst $30                                       ; $48df: $f7
    sbc d                                         ; $48e0: $9a
    ld de, $d4b5                                  ; $48e1: $11 $b5 $d4
    ld a, d                                       ; $48e4: $7a
    ld [hl], a                                    ; $48e5: $77
    scf                                           ; $48e6: $37
    jp hl                                         ; $48e7: $e9


    ld d, $aa                                     ; $48e8: $16 $aa
    xor b                                         ; $48ea: $a8
    adc c                                         ; $48eb: $89
    sub e                                         ; $48ec: $93
    inc sp                                        ; $48ed: $33
    db $ec                                        ; $48ee: $ec
    ld l, [hl]                                    ; $48ef: $6e
    push bc                                       ; $48f0: $c5
    db $d3                                        ; $48f1: $d3
    ld h, e                                       ; $48f2: $63
    xor h                                         ; $48f3: $ac
    ld a, [c]                                     ; $48f4: $f2
    dec [hl]                                      ; $48f5: $35
    ld c, h                                       ; $48f6: $4c
    dec h                                         ; $48f7: $25
    ld e, h                                       ; $48f8: $5c
    and c                                         ; $48f9: $a1
    cp a                                          ; $48fa: $bf
    cp l                                          ; $48fb: $bd
    cp h                                          ; $48fc: $bc
    cp e                                          ; $48fd: $bb
    cp l                                          ; $48fe: $bd
    cp c                                          ; $48ff: $b9
    ccf                                           ; $4900: $3f
    ld [c], a                                     ; $4901: $e2
    ld a, $63                                     ; $4902: $3e $63
    ld [de], a                                    ; $4904: $12
    xor a                                         ; $4905: $af
    ld a, c                                       ; $4906: $79
    ld [bc], a                                    ; $4907: $02
    ld [hl], l                                    ; $4908: $75
    ld b, e                                       ; $4909: $43
    ld [hl], a                                    ; $490a: $77
    adc h                                         ; $490b: $8c
    cp e                                          ; $490c: $bb
    rst $28                                       ; $490d: $ef
    cp e                                          ; $490e: $bb
    sub e                                         ; $490f: $93
    inc d                                         ; $4910: $14
    ld [hl], l                                    ; $4911: $75
    dec bc                                        ; $4912: $0b
    call $de76                                    ; $4913: $cd $76 $de
    ld c, l                                       ; $4916: $4d
    ld b, h                                       ; $4917: $44
    ld d, h                                       ; $4918: $54
    cp h                                          ; $4919: $bc
    and [hl]                                      ; $491a: $a6
    inc e                                         ; $491b: $1c
    ld a, [$8558]                                 ; $491c: $fa $58 $85
    sub l                                         ; $491f: $95
    push af                                       ; $4920: $f5
    db $ed                                        ; $4921: $ed
    ld c, c                                       ; $4922: $49
    inc a                                         ; $4923: $3c
    db $e3                                        ; $4924: $e3
    db $fd                                        ; $4925: $fd
    ld bc, $84db                                  ; $4926: $01 $db $84
    inc hl                                        ; $4929: $23
    ld [$0b74], a                                 ; $492a: $ea $74 $0b
    call $d676                                    ; $492d: $cd $76 $d6
    dec sp                                        ; $4930: $3b

jr_067_4931:
    xor a                                         ; $4931: $af
    ld d, e                                       ; $4932: $53
    rst $18                                       ; $4933: $df
    sbc [hl]                                      ; $4934: $9e
    call nz, Call_000_29b3                        ; $4935: $c4 $b3 $29
    sbc d                                         ; $4938: $9a
    ld h, [hl]                                    ; $4939: $66

Jump_067_493a:
    ld c, h                                       ; $493a: $4c
    adc [hl]                                      ; $493b: $8e
    xor e                                         ; $493c: $ab
    sub e                                         ; $493d: $93
    xor h                                         ; $493e: $ac

Jump_067_493f:
    pop hl                                        ; $493f: $e1
    rra                                           ; $4940: $1f
    jp hl                                         ; $4941: $e9


    inc hl                                        ; $4942: $23
    ld a, [hl+]                                   ; $4943: $2a
    dec bc                                        ; $4944: $0b
    push af                                       ; $4945: $f5
    pop af                                        ; $4946: $f1
    ccf                                           ; $4947: $3f
    ld l, $f7                                     ; $4948: $2e $f7
    rlca                                          ; $494a: $07
    add hl, bc                                    ; $494b: $09
    add l                                         ; $494c: $85
    xor e                                         ; $494d: $ab
    pop hl                                        ; $494e: $e1
    add a                                         ; $494f: $87
    ld h, a                                       ; $4950: $67
    jp z, $ed25                                   ; $4951: $ca $25 $ed

    inc h                                         ; $4954: $24
    ei                                            ; $4955: $fb
    rst $08                                       ; $4956: $cf
    ld d, e                                       ; $4957: $53
    sub $1f                                       ; $4958: $d6 $1f
    xor e                                         ; $495a: $ab
    jp nz, Jump_000_2aca                          ; $495b: $c2 $ca $2a

    jp nc, Jump_000_062e                          ; $495e: $d2 $2e $06

    ld l, [hl]                                    ; $4961: $6e
    ld a, [$e700]                                 ; $4962: $fa $00 $e7
    ld b, b                                       ; $4965: $40
    adc d                                         ; $4966: $8a
    cp d                                          ; $4967: $ba
    ld a, d                                       ; $4968: $7a
    sbc d                                         ; $4969: $9a
    and a                                         ; $496a: $a7
    add hl, hl                                    ; $496b: $29
    add a                                         ; $496c: $87
    ld a, [hl+]                                   ; $496d: $2a
    dec a                                         ; $496e: $3d
    ret nc                                        ; $496f: $d0

    ld h, [hl]                                    ; $4970: $66

Jump_067_4971:
    add $3c                                       ; $4971: $c6 $3c
    push de                                       ; $4973: $d5
    pop af                                        ; $4974: $f1
    jr jr_067_4931                                ; $4975: $18 $ba

    dec b                                         ; $4977: $05
    and $99                                       ; $4978: $e6 $99
    ld h, l                                       ; $497a: $65
    jp nc, $a28f                                  ; $497b: $d2 $8f $a2

    ld b, $ac                                     ; $497e: $06 $ac
    and b                                         ; $4980: $a0
    ld d, l                                       ; $4981: $55
    ld e, b                                       ; $4982: $58
    ld e, c                                       ; $4983: $59
    rra                                           ; $4984: $1f
    xor d                                         ; $4985: $aa

jr_067_4986:
    jp Jump_000_18be                              ; $4986: $c3 $be $18


    sbc $cf                                       ; $4989: $de $cf

Jump_067_498b:
    ret nz                                        ; $498b: $c0

    ld a, [$9634]                                 ; $498c: $fa $34 $96
    ld h, [hl]                                    ; $498f: $66
    adc h                                         ; $4990: $8c
    ccf                                           ; $4991: $3f
    xor l                                         ; $4992: $ad
    or b                                          ; $4993: $b0
    dec d                                         ; $4994: $15
    or l                                          ; $4995: $b5
    add c                                         ; $4996: $81
    pop af                                        ; $4997: $f1
    push bc                                       ; $4998: $c5
    inc h                                         ; $4999: $24
    or l                                          ; $499a: $b5
    ld h, c                                       ; $499b: $61
    ld a, [hl+]                                   ; $499c: $2a
    add b                                         ; $499d: $80
    ld d, $9e                                     ; $499e: $16 $9e
    cp h                                          ; $49a0: $bc

Jump_067_49a1:
    cp e                                          ; $49a1: $bb
    ld c, l                                       ; $49a2: $4d
    jr c, @+$5f                                   ; $49a3: $38 $5d

    rst $10                                       ; $49a5: $d7
    ldh a, [rRP]                                  ; $49a6: $f0 $56
    or b                                          ; $49a8: $b0
    db $fc                                        ; $49a9: $fc
    jp nz, $fa6c                                  ; $49aa: $c2 $6c $fa

    nop                                           ; $49ad: $00
    ld e, e                                       ; $49ae: $5b
    xor c                                         ; $49af: $a9
    rst $30                                       ; $49b0: $f7
    ld a, l                                       ; $49b1: $7d
    ld a, a                                       ; $49b2: $7f
    adc c                                         ; $49b3: $89
    inc [hl]                                      ; $49b4: $34
    ld a, d                                       ; $49b5: $7a
    sub $45                                       ; $49b6: $d6 $45
    dec d                                         ; $49b8: $15
    ld [hl], l                                    ; $49b9: $75
    dec bc                                        ; $49ba: $0b
    ld c, h                                       ; $49bb: $4c
    cp [hl]                                       ; $49bc: $be
    adc c                                         ; $49bd: $89
    cp b                                          ; $49be: $b8
    ccf                                           ; $49bf: $3f
    add hl, bc                                    ; $49c0: $09
    ld [$a6c3], a                                 ; $49c1: $ea $c3 $a6
    ld d, c                                       ; $49c4: $51
    jr c, jr_067_4a1c                             ; $49c5: $38 $55

    ld e, b                                       ; $49c7: $58
    cp c                                          ; $49c8: $b9
    xor h                                         ; $49c9: $ac
    or e                                          ; $49ca: $b3
    db $f4                                        ; $49cb: $f4
    ei                                            ; $49cc: $fb
    and a                                         ; $49cd: $a7
    ld l, h                                       ; $49ce: $6c
    ld b, h                                       ; $49cf: $44
    ld c, h                                       ; $49d0: $4c
    ld a, [hl-]                                   ; $49d1: $3a
    ret                                           ; $49d2: $c9


    ld b, $68                                     ; $49d3: $06 $68
    and [hl]                                      ; $49d5: $a6
    sub $5f                                       ; $49d6: $d6 $5f
    jr jr_067_4a0d                                ; $49d8: $18 $33

    push af                                       ; $49da: $f5
    cp $00                                        ; $49db: $fe $00
    sub a                                         ; $49dd: $97
    jr c, jr_067_4a14                             ; $49de: $38 $34

    dec sp                                        ; $49e0: $3b
    rst $28                                       ; $49e1: $ef
    ld l, b                                       ; $49e2: $68
    inc bc                                        ; $49e3: $03
    ld l, d                                       ; $49e4: $6a
    ld e, b                                       ; $49e5: $58
    ld d, [hl]                                    ; $49e6: $56
    db $ec                                        ; $49e7: $ec
    cp d                                          ; $49e8: $ba
    and [hl]                                      ; $49e9: $a6
    inc e                                         ; $49ea: $1c
    xor d                                         ; $49eb: $aa
    jp nz, Jump_067_68e9                          ; $49ec: $c2 $e9 $68

    and c                                         ; $49ef: $a1
    reti                                          ; $49f0: $d9


    jr jr_067_4986                                ; $49f1: $18 $93

    and e                                         ; $49f3: $a3
    sbc e                                         ; $49f4: $9b
    ld a, $e2                                     ; $49f5: $3e $e2
    sub l                                         ; $49f7: $95
    cpl                                           ; $49f8: $2f
    ld h, $59                                     ; $49f9: $26 $59
    xor [hl]                                      ; $49fb: $ae
    halt                                          ; $49fc: $76
    xor a                                         ; $49fd: $af

Jump_067_49fe:
    ld d, e                                       ; $49fe: $53
    xor [hl]                                      ; $49ff: $ae
    ld e, b                                       ; $4a00: $58
    ld l, $69                                     ; $4a01: $2e $69
    daa                                           ; $4a03: $27
    xor c                                         ; $4a04: $a9
    dec c                                         ; $4a05: $0d
    ret nc                                        ; $4a06: $d0

    ld c, h                                       ; $4a07: $4c
    xor l                                         ; $4a08: $ad
    cp a                                          ; $4a09: $bf
    jr nc, jr_067_4a72                            ; $4a0a: $30 $66

    ld l, d                                       ; $4a0c: $6a

jr_067_4a0d:
    ld a, l                                       ; $4a0d: $7d
    ld a, [de]                                    ; $4a0e: $1a
    db $eb                                        ; $4a0f: $eb
    push hl                                       ; $4a10: $e5
    ld l, $58                                     ; $4a11: $2e $58
    ld [hl], l                                    ; $4a13: $75

jr_067_4a14:
    ld a, h                                       ; $4a14: $7c
    sbc $1f                                       ; $4a15: $de $1f
    sbc e                                         ; $4a17: $9b
    dec c                                         ; $4a18: $0d
    ld l, a                                       ; $4a19: $6f
    sbc d                                         ; $4a1a: $9a
    ld [hl], d                                    ; $4a1b: $72

jr_067_4a1c:
    ld l, b                                       ; $4a1c: $68
    ld [hl], d                                    ; $4a1d: $72
    xor l                                         ; $4a1e: $ad
    add hl, hl                                    ; $4a1f: $29
    rst $00                                       ; $4a20: $c7
    ld l, h                                       ; $4a21: $6c
    db $d3                                        ; $4a22: $d3
    db $ec                                        ; $4a23: $ec
    cp h                                          ; $4a24: $bc
    and e                                         ; $4a25: $a3
    dec c                                         ; $4a26: $0d
    xor b                                         ; $4a27: $a8
    ld h, c                                       ; $4a28: $61
    ld e, c                                       ; $4a29: $59
    or c                                          ; $4a2a: $b1
    rst $38                                       ; $4a2b: $ff
    ret z                                         ; $4a2c: $c8

    cp [hl]                                       ; $4a2d: $be
    sbc b                                         ; $4a2e: $98
    ld [hl], $84                                  ; $4a2f: $36 $84
    add a                                         ; $4a31: $87
    sbc b                                         ; $4a32: $98
    and c                                         ; $4a33: $a1
    and d                                         ; $4a34: $a2
    ld c, d                                       ; $4a35: $4a
    ld l, d                                       ; $4a36: $6a
    and e                                         ; $4a37: $a3
    ld [hl], b                                    ; $4a38: $70
    xor d                                         ; $4a39: $aa
    ld a, b                                       ; $4a3a: $78
    ld c, l                                       ; $4a3b: $4d
    add hl, sp                                    ; $4a3c: $39
    ld a, $bd                                     ; $4a3d: $3e $bd
    ccf                                           ; $4a3f: $3f
    ld [c], a                                     ; $4a40: $e2
    cp $68                                        ; $4a41: $fe $68
    sbc [hl]                                      ; $4a43: $9e
    and [hl]                                      ; $4a44: $a6
    inc e                                         ; $4a45: $1c
    sbc d                                         ; $4a46: $9a
    ld e, h                                       ; $4a47: $5c
    xor e                                         ; $4a48: $ab
    cp a                                          ; $4a49: $bf
    jr nc, jr_067_4ab2                            ; $4a4a: $30 $66

    ld l, d                                       ; $4a4c: $6a
    db $e3                                        ; $4a4d: $e3
    ld d, h                                       ; $4a4e: $54
    nop                                           ; $4a4f: $00
    dec l                                         ; $4a50: $2d
    inc a                                         ; $4a51: $3c
    ld a, c                                       ; $4a52: $79
    ld a, a                                       ; $4a53: $7f
    db $db                                        ; $4a54: $db
    sub a                                         ; $4a55: $97
    dec [hl]                                      ; $4a56: $35
    ld d, c                                       ; $4a57: $51
    or a                                          ; $4a58: $b7
    ld h, c                                       ; $4a59: $61
    push af                                       ; $4a5a: $f5
    sub [hl]                                      ; $4a5b: $96
    dec b                                         ; $4a5c: $05
    rst $30                                       ; $4a5d: $f7
    rlca                                          ; $4a5e: $07
    dec sp                                        ; $4a5f: $3b
    sub d                                         ; $4a60: $92
    ret                                           ; $4a61: $c9


    dec c                                         ; $4a62: $0d
    ld c, l                                       ; $4a63: $4d
    ret nc                                        ; $4a64: $d0

    cp h                                          ; $4a65: $bc
    ld d, [hl]                                    ; $4a66: $56
    ld [hl], $8c                                  ; $4a67: $36 $8c
    ret                                           ; $4a69: $c9


    ld h, a                                       ; $4a6a: $67
    rst $30                                       ; $4a6b: $f7
    rlca                                          ; $4a6c: $07

jr_067_4a6d:
    db $db                                        ; $4a6d: $db
    add h                                         ; $4a6e: $84
    ld d, e                                       ; $4a6f: $53
    ld l, b                                       ; $4a70: $68
    ld e, [hl]                                    ; $4a71: $5e

jr_067_4a72:
    ld l, e                                       ; $4a72: $6b
    ld h, h                                       ; $4a73: $64
    and b                                         ; $4a74: $a0
    xor b                                         ; $4a75: $a8
    ret nc                                        ; $4a76: $d0

    cp h                                          ; $4a77: $bc
    ld d, [hl]                                    ; $4a78: $56
    ld l, $af                                     ; $4a79: $2e $af
    sub b                                         ; $4a7b: $90
    push af                                       ; $4a7c: $f5
    rst $10                                       ; $4a7d: $d7
    sub l                                         ; $4a7e: $95
    sbc l                                         ; $4a7f: $9d
    dec h                                         ; $4a80: $25
    ld c, c                                       ; $4a81: $49
    xor e                                         ; $4a82: $ab
    ld c, a                                       ; $4a83: $4f
    ld h, e                                       ; $4a84: $63
    push hl                                       ; $4a85: $e5
    sub e                                         ; $4a86: $93
    rst $30                                       ; $4a87: $f7
    rlca                                          ; $4a88: $07
    db $db                                        ; $4a89: $db
    add h                                         ; $4a8a: $84
    db $d3                                        ; $4a8b: $d3
    ld [hl], l                                    ; $4a8c: $75
    sbc l                                         ; $4a8d: $9d
    ld l, [hl]                                    ; $4a8e: $6e

Jump_067_4a8f:
    jp Jump_000_2dea                              ; $4a8f: $c3 $ea $2d


    dec bc                                        ; $4a92: $0b
    ld b, h                                       ; $4a93: $44
    ld e, l                                       ; $4a94: $5d
    rst $10                                       ; $4a95: $d7
    ld l, c                                       ; $4a96: $69
    and d                                         ; $4a97: $a2
    adc l                                         ; $4a98: $8d
    rla                                           ; $4a99: $17
    xor d                                         ; $4a9a: $aa
    ld h, e                                       ; $4a9b: $63
    dec a                                         ; $4a9c: $3d
    rst $20                                       ; $4a9d: $e7
    push bc                                       ; $4a9e: $c5
    xor b                                         ; $4a9f: $a8

Jump_067_4aa0:
    dec de                                        ; $4aa0: $1b
    ld a, $d7                                     ; $4aa1: $3e $d7
    db $ec                                        ; $4aa3: $ec
    jp c, Jump_067_6bb5                           ; $4aa4: $da $b5 $6b

    rst $10                                       ; $4aa7: $d7
    xor [hl]                                      ; $4aa8: $ae
    ld e, l                                       ; $4aa9: $5d
    cp e                                          ; $4aaa: $bb
    xor $fb                                       ; $4aab: $ee $fb
    cp [hl]                                       ; $4aad: $be
    rst $28                                       ; $4aae: $ef
    rrca                                          ; $4aaf: $0f
    db $db                                        ; $4ab0: $db
    add h                                         ; $4ab1: $84

jr_067_4ab2:
    db $d3                                        ; $4ab2: $d3
    ld l, c                                       ; $4ab3: $69

Call_067_4ab4:
    ret nz                                        ; $4ab4: $c0

    ld l, d                                       ; $4ab5: $6a
    scf                                           ; $4ab6: $37
    jp z, $f2d1                                   ; $4ab7: $ca $d1 $f2

    rra                                           ; $4aba: $1f
    dec bc                                        ; $4abb: $0b
    or h                                          ; $4abc: $b4
    ld c, l                                       ; $4abd: $4d
    rra                                           ; $4abe: $1f
    db $db                                        ; $4abf: $db
    jr nz, jr_067_4a6d                            ; $4ac0: $20 $ab

    ld c, b                                       ; $4ac2: $48
    add hl, sp                                    ; $4ac3: $39
    ld e, b                                       ; $4ac4: $58
    dec d                                         ; $4ac5: $15
    xor a                                         ; $4ac6: $af
    adc d                                         ; $4ac7: $8a
    xor [hl]                                      ; $4ac8: $ae
    ld l, e                                       ; $4ac9: $6b
    ld [c], a                                     ; $4aca: $e2
    or $1d                                        ; $4acb: $f6 $1d
    dec sp                                        ; $4acd: $3b
    adc $bc                                       ; $4ace: $ce $bc
    ld [hl+], a                                   ; $4ad0: $22

Jump_067_4ad1:
    pop hl                                        ; $4ad1: $e1
    ld [c], a                                     ; $4ad2: $e2
    ld a, [c]                                     ; $4ad3: $f2
    rra                                           ; $4ad4: $1f
    dec bc                                        ; $4ad5: $0b
    or h                                          ; $4ad6: $b4
    ld a, [hl-]                                   ; $4ad7: $3a
    ld e, c                                       ; $4ad8: $59
    cpl                                           ; $4ad9: $2f
    ld h, e                                       ; $4ada: $63
    and [hl]                                      ; $4adb: $a6
    ld c, d                                       ; $4adc: $4a

Call_067_4add:
    sbc $dd                                       ; $4add: $de $dd
    ld a, [bc]                                    ; $4adf: $0a
    sub l                                         ; $4ae0: $95
    db $d3                                        ; $4ae1: $d3
    sub h                                         ; $4ae2: $94
    ld b, e                                       ; $4ae3: $43
    and a                                         ; $4ae4: $a7
    add hl, de                                    ; $4ae5: $19
    ld sp, $a9af                                  ; $4ae6: $31 $af $a9
    ld b, d                                       ; $4ae9: $42
    adc [hl]                                      ; $4aea: $8e
    sub [hl]                                      ; $4aeb: $96
    ld e, $46                                     ; $4aec: $1e $46
    sbc d                                         ; $4aee: $9a
    xor b                                         ; $4aef: $a8
    call nc, Call_067_51c6                        ; $4af0: $d4 $c6 $51
    and l                                         ; $4af3: $a5
    ld d, [hl]                                    ; $4af4: $56
    ld a, [bc]                                    ; $4af5: $0a
    ld b, a                                       ; $4af6: $47
    bit 5, h                                      ; $4af7: $cb $6c
    ld e, h                                       ; $4af9: $5c
    ld b, c                                       ; $4afa: $41
    sub l                                         ; $4afb: $95
    dec hl                                        ; $4afc: $2b
    jp z, Jump_067_718d                           ; $4afd: $ca $8d $71

    xor $0f                                       ; $4b00: $ee $0f
    rst $10                                       ; $4b02: $d7
    db $ec                                        ; $4b03: $ec
    jp c, Jump_067_6bb5                           ; $4b04: $da $b5 $6b

    rst $10                                       ; $4b07: $d7
    xor [hl]                                      ; $4b08: $ae
    ei                                            ; $4b09: $fb
    cp [hl]                                       ; $4b0a: $be
    adc e                                         ; $4b0b: $8b
    add $a9                                       ; $4b0c: $c6 $a9
    rst $30                                       ; $4b0e: $f7
    ret                                           ; $4b0f: $c9


    add [hl]                                      ; $4b10: $86
    xor c                                         ; $4b11: $a9
    xor [hl]                                      ; $4b12: $ae
    ei                                            ; $4b13: $fb
    rst $28                                       ; $4b14: $ef
    ld e, [hl]                                    ; $4b15: $5e
    ld [hl], l                                    ; $4b16: $75
    push bc                                       ; $4b17: $c5
    dec b                                         ; $4b18: $05
    rla                                           ; $4b19: $17
    adc b                                         ; $4b1a: $88
    ld a, [de]                                    ; $4b1b: $1a
    ld hl, $471b                                  ; $4b1c: $21 $1b $47
    ei                                            ; $4b1f: $fb
    and h                                         ; $4b20: $a4
    ccf                                           ; $4b21: $3f
    sub [hl]                                      ; $4b22: $96
    rst $10                                       ; $4b23: $d7
    ld d, [hl]                                    ; $4b24: $56
    sub h                                         ; $4b25: $94
    and e                                         ; $4b26: $a3
    rst $30                                       ; $4b27: $f7
    ld a, l                                       ; $4b28: $7d
    ld [hl], a                                    ; $4b29: $77
    dec bc                                        ; $4b2a: $0b
    call $3676                                    ; $4b2b: $cd $76 $36
    ld [hl], c                                    ; $4b2e: $71
    ld [hl], d                                    ; $4b2f: $72
    add [hl]                                      ; $4b30: $86
    ld l, l                                       ; $4b31: $6d
    add sp, $25                                   ; $4b32: $e8 $25
    ld c, $f5                                     ; $4b34: $0e $f5
    adc h                                         ; $4b36: $8c
    ld l, h                                       ; $4b37: $6c
    add [hl]                                      ; $4b38: $86
    ld l, l                                       ; $4b39: $6d
    call z, $f7a8                                 ; $4b3a: $cc $a8 $f7
    ld b, l                                       ; $4b3d: $45
    ld l, $12                                     ; $4b3e: $2e $12
    ld sp, $91a3                                  ; $4b40: $31 $a3 $91
    sub l                                         ; $4b43: $95
    cpl                                           ; $4b44: $2f
    ld h, $59                                     ; $4b45: $26 $59
    cp d                                          ; $4b47: $ba
    add l                                         ; $4b48: $85
    ld [hl], a                                    ; $4b49: $77
    cpl                                           ; $4b4a: $2f
    add [hl]                                      ; $4b4b: $86
    db $f4                                        ; $4b4c: $f4
    ret c                                         ; $4b4d: $d8

    ld l, h                                       ; $4b4e: $6c
    sub h                                         ; $4b4f: $94
    xor b                                         ; $4b50: $a8
    rrca                                          ; $4b51: $0f
    di                                            ; $4b52: $f3
    ld [c], a                                     ; $4b53: $e2
    ld h, l                                       ; $4b54: $65
    ld c, d                                       ; $4b55: $4a
    call nz, $868c                                ; $4b56: $c4 $8c $86
    ld l, c                                       ; $4b59: $69
    add [hl]                                      ; $4b5a: $86
    xor e                                         ; $4b5b: $ab
    rst $08                                       ; $4b5c: $cf
    ld [hl], a                                    ; $4b5d: $77
    ld a, a                                       ; $4b5e: $7f
    db $db                                        ; $4b5f: $db
    dec a                                         ; $4b60: $3d
    or $d2                                        ; $4b61: $f6 $d2
    inc c                                         ; $4b63: $0c
    inc hl                                        ; $4b64: $23
    xor d                                         ; $4b65: $aa
    ld l, a                                       ; $4b66: $6f
    db $e3                                        ; $4b67: $e3
    add l                                         ; $4b68: $85
    ld [$cf58], a                                 ; $4b69: $ea $58 $cf
    ld a, c                                       ; $4b6c: $79
    ld sp, $fdea                                  ; $4b6d: $31 $ea $fd
    ld bc, $679b                                  ; $4b70: $01 $9b $67
    pop bc                                        ; $4b73: $c1
    rst $38                                       ; $4b74: $ff
    cp a                                          ; $4b75: $bf
    adc c                                         ; $4b76: $89
    call nc, $b66e                                ; $4b77: $d4 $6e $b6
    sub c                                         ; $4b7a: $91
    and e                                         ; $4b7b: $a3
    dec c                                         ; $4b7c: $0d
    add sp, $79                                   ; $4b7d: $e8 $79
    ld a, b                                       ; $4b7f: $78
    ld sp, hl                                     ; $4b80: $f9
    db $fd                                        ; $4b81: $fd
    ld a, b                                       ; $4b82: $78
    ld [hl], $5a                                  ; $4b83: $36 $5a
    db $f4                                        ; $4b85: $f4
    inc e                                         ; $4b86: $1c
    ld [hl], e                                    ; $4b87: $73
    add d                                         ; $4b88: $82
    xor c                                         ; $4b89: $a9
    dec a                                         ; $4b8a: $3d
    adc a                                         ; $4b8b: $8f
    ld [hl], d                                    ; $4b8c: $72
    ld [hl], h                                    ; $4b8d: $74
    ld d, h                                       ; $4b8e: $54
    call nc, $342d                                ; $4b8f: $d4 $2d $34
    db $db                                        ; $4b92: $db
    cp c                                          ; $4b93: $b9
    xor c                                         ; $4b94: $a9
    db $db                                        ; $4b95: $db
    sbc e                                         ; $4b96: $9b
    pop hl                                        ; $4b97: $e1
    ld [$f5f3], a                                 ; $4b98: $ea $f3 $f5
    sbc a                                         ; $4b9b: $9f
    dec b                                         ; $4b9c: $05
    rst $38                                       ; $4b9d: $ff
    rst $38                                       ; $4b9e: $ff
    ld h, $72                                     ; $4b9f: $26 $72
    push bc                                       ; $4ba1: $c5
    cp e                                          ; $4ba2: $bb
    sub a                                         ; $4ba3: $97
    ld c, e                                       ; $4ba4: $4b
    halt                                          ; $4ba5: $76
    add l                                         ; $4ba6: $85
    ld e, l                                       ; $4ba7: $5d
    dec c                                         ; $4ba8: $0d
    ld a, b                                       ; $4ba9: $78
    dec de                                        ; $4baa: $1b
    sub a                                         ; $4bab: $97
    inc h                                         ; $4bac: $24
    ld [$7f64], a                                 ; $4bad: $ea $64 $7f
    dec de                                        ; $4bb0: $1b
    add hl, sp                                    ; $4bb1: $39
    dec c                                         ; $4bb2: $0d
    db $ec                                        ; $4bb3: $ec
    and $67                                       ; $4bb4: $e6 $67
    ccf                                           ; $4bb6: $3f
    xor $26                                       ; $4bb7: $ee $26
    inc l                                         ; $4bb9: $2c
    ld l, b                                       ; $4bba: $68
    ld a, d                                       ; $4bbb: $7a
    inc [hl]                                      ; $4bbc: $34
    ld [hl], e                                    ; $4bbd: $73
    push bc                                       ; $4bbe: $c5
    ld c, d                                       ; $4bbf: $4a
    rst $30                                       ; $4bc0: $f7
    ld a, [c]                                     ; $4bc1: $f2
    inc [hl]                                      ; $4bc2: $34
    ld c, h                                       ; $4bc3: $4c
    ld a, a                                       ; $4bc4: $7f
    dec de                                        ; $4bc5: $1b
    add hl, sp                                    ; $4bc6: $39
    ld [hl], a                                    ; $4bc7: $77
    inc de                                        ; $4bc8: $13
    ld h, c                                       ; $4bc9: $61
    ld l, c                                       ; $4bca: $69
    rla                                           ; $4bcb: $17
    di                                            ; $4bcc: $f3
    ld l, h                                       ; $4bcd: $6c
    sub h                                         ; $4bce: $94
    add sp, $34                                   ; $4bcf: $e8 $34
    push hl                                       ; $4bd1: $e5
    ret nc                                        ; $4bd2: $d0

    dec h                                         ; $4bd3: $25
    adc c                                         ; $4bd4: $89
    ld h, [hl]                                    ; $4bd5: $66
    ret c                                         ; $4bd6: $d8

    ld e, d                                       ; $4bd7: $5a
    ld sp, hl                                     ; $4bd8: $f9
    ld c, a                                       ; $4bd9: $4f
    call z, Call_067_5ff8                         ; $4bda: $cc $f8 $5f
    sbc b                                         ; $4bdd: $98
    ei                                            ; $4bde: $fb
    cp [hl]                                       ; $4bdf: $be
    ccf                                           ; $4be0: $3f
    rla                                           ; $4be1: $17
    ld b, e                                       ; $4be2: $43
    ld a, d                                       ; $4be3: $7a
    ld l, h                                       ; $4be4: $6c
    ld [hl], $4a                                  ; $4be5: $36 $4a
    inc [hl]                                      ; $4be7: $34
    and b                                         ; $4be8: $a0
    ld c, [hl]                                    ; $4be9: $4e
    or d                                          ; $4bea: $b2
    ld a, $54                                     ; $4beb: $3e $54
    add a                                         ; $4bed: $87
    adc l                                         ; $4bee: $8d
    db $ec                                        ; $4bef: $ec
    cp c                                          ; $4bf0: $b9
    adc a                                         ; $4bf1: $8f
    jp hl                                         ; $4bf2: $e9


    adc c                                         ; $4bf3: $89
    dec de                                        ; $4bf4: $1b
    push bc                                       ; $4bf5: $c5
    sub a                                         ; $4bf6: $97
    and [hl]                                      ; $4bf7: $a6
    inc e                                         ; $4bf8: $1c
    ld a, [hl+]                                   ; $4bf9: $2a
    pop de                                        ; $4bfa: $d1
    adc h                                         ; $4bfb: $8c
    sbc b                                         ; $4bfc: $98
    rst $00                                       ; $4bfd: $c7
    ld [hl], l                                    ; $4bfe: $75
    add l                                         ; $4bff: $85
    jr jr_067_4c62                                ; $4c00: $18 $60

    add l                                         ; $4c02: $85
    ld a, [hl+]                                   ; $4c03: $2a
    ld a, [$c8db]                                 ; $4c04: $fa $db $c8
    cp c                                          ; $4c07: $b9
    ccf                                           ; $4c08: $3f
    db $db                                        ; $4c09: $db
    add h                                         ; $4c0a: $84
    ld d, e                                       ; $4c0b: $53
    adc c                                         ; $4c0c: $89
    add [hl]                                      ; $4c0d: $86
    sub a                                         ; $4c0e: $97
    and [hl]                                      ; $4c0f: $a6
    ld l, [hl]                                    ; $4c10: $6e
    ld l, b                                       ; $4c11: $68
    ld [hl], a                                    ; $4c12: $77
    and b                                         ; $4c13: $a0
    ccf                                           ; $4c14: $3f
    sub a                                         ; $4c15: $97
    inc h                                         ; $4c16: $24
    xor l                                         ; $4c17: $ad
    call z, Call_000_0aeb                         ; $4c18: $cc $eb $0a
    ld h, e                                       ; $4c1b: $63
    and a                                         ; $4c1c: $a7
    ld [de], a                                    ; $4c1d: $12
    ld a, [hl+]                                   ; $4c1e: $2a
    rst $20                                       ; $4c1f: $e7
    xor $0e                                       ; $4c20: $ee $0e
    ld [hl], h                                    ; $4c22: $74
    cp d                                          ; $4c23: $ba
    ld a, d                                       ; $4c24: $7a
    xor d                                         ; $4c25: $aa
    db $10                                        ; $4c26: $10
    dec [hl]                                      ; $4c27: $35
    jp $cb1e                                      ; $4c28: $c3 $1e $cb


    cp $b0                                        ; $4c2b: $fe $b0
    adc h                                         ; $4c2d: $8c
    ld e, l                                       ; $4c2e: $5d
    cp h                                          ; $4c2f: $bc
    ccf                                           ; $4c30: $3f
    rst $20                                       ; $4c31: $e7
    adc a                                         ; $4c32: $8f
    ld h, [hl]                                    ; $4c33: $66
    jp c, Jump_067_5363                           ; $4c34: $da $63 $53

    ld c, $9d                                     ; $4c37: $0e $9d
    jp nc, $518c                                  ; $4c39: $d2 $8c $51

    nop                                           ; $4c3c: $00
    ld d, l                                       ; $4c3d: $55
    or c                                          ; $4c3e: $b1
    jp hl                                         ; $4c3f: $e9


    inc bc                                        ; $4c40: $03
    add hl, bc                                    ; $4c41: $09
    add d                                         ; $4c42: $82
    ld a, a                                       ; $4c43: $7f
    inc l                                         ; $4c44: $2c
    adc b                                         ; $4c45: $88
    add hl, de                                    ; $4c46: $19
    ld a, l                                       ; $4c47: $7d
    ld bc, $778f                                  ; $4c48: $01 $8f $77
    or a                                          ; $4c4b: $b7
    adc h                                         ; $4c4c: $8c
    nop                                           ; $4c4d: $00
    db $f4                                        ; $4c4e: $f4
    rra                                           ; $4c4f: $1f
    adc c                                         ; $4c50: $89
    push af                                       ; $4c51: $f5
    db $ec                                        ; $4c52: $ec
    ld d, h                                       ; $4c53: $54
    ld [c], a                                     ; $4c54: $e2
    ld c, l                                       ; $4c55: $4d
    jp $87d4                                      ; $4c56: $c3 $d4 $87


    db $ed                                        ; $4c59: $ed
    ld [hl], $61                                  ; $4c5a: $36 $61
    ld b, h                                       ; $4c5c: $44
    push af                                       ; $4c5d: $f5
    rst $00                                       ; $4c5e: $c7
    ld a, [$a754]                                 ; $4c5f: $fa $54 $a7

jr_067_4c62:
    cp $04                                        ; $4c62: $fe $04
    ld l, b                                       ; $4c64: $68
    sbc a                                         ; $4c65: $9f
    ld [hl], l                                    ; $4c66: $75
    rst $38                                       ; $4c67: $ff
    sbc [hl]                                      ; $4c68: $9e
    ei                                            ; $4c69: $fb
    sbc b                                         ; $4c6a: $98
    sbc [hl]                                      ; $4c6b: $9e
    cp b                                          ; $4c6c: $b8
    ld d, c                                       ; $4c6d: $51
    ld a, h                                       ; $4c6e: $7c
    cp c                                          ; $4c6f: $b9
    ld a, e                                       ; $4c70: $7b
    ld sp, $2c56                                  ; $4c71: $31 $56 $2c
    inc [hl]                                      ; $4c74: $34
    and e                                         ; $4c75: $a3
    ld a, $55                                     ; $4c76: $3e $55
    ld d, c                                       ; $4c78: $51
    ld c, [hl]                                    ; $4c79: $4e
    or a                                          ; $4c7a: $b7
    jr nc, jr_067_4cea                            ; $4c7b: $30 $6d

    cpl                                           ; $4c7d: $2f
    call nc, $b1a7                                ; $4c7e: $d4 $a7 $b1
    ld e, b                                       ; $4c81: $58
    ret nc                                        ; $4c82: $d0

    adc h                                         ; $4c83: $8c
    ld l, $58                                     ; $4c84: $2e $58
    pop de                                        ; $4c86: $d1
    cp d                                          ; $4c87: $ba
    xor h                                         ; $4c88: $ac
    db $dd                                        ; $4c89: $dd
    db $dd                                        ; $4c8a: $dd
    inc a                                         ; $4c8b: $3c
    ld [hl], d                                    ; $4c8c: $72
    cp d                                          ; $4c8d: $ba
    xor [hl]                                      ; $4c8e: $ae
    add hl, hl                                    ; $4c8f: $29
    add a                                         ; $4c90: $87
    ld h, [hl]                                    ; $4c91: $66
    db $f4                                        ; $4c92: $f4
    ld c, a                                       ; $4c93: $4f
    ld d, d                                       ; $4c94: $52
    ld d, d                                       ; $4c95: $52
    ld b, l                                       ; $4c96: $45
    sub l                                         ; $4c97: $95
    ld d, b                                       ; $4c98: $50
    add hl, sp                                    ; $4c99: $39
    sbc e                                         ; $4c9a: $9b
    ld a, $5b                                     ; $4c9b: $3e $5b
    ld l, b                                       ; $4c9d: $68
    or [hl]                                       ; $4c9e: $b6
    or e                                          ; $4c9f: $b3
    adc c                                         ; $4ca0: $89
    sub e                                         ; $4ca1: $93
    inc sp                                        ; $4ca2: $33
    db $ec                                        ; $4ca3: $ec
    cp $00                                        ; $4ca4: $fe $00
    dec sp                                        ; $4ca6: $3b
    sbc [hl]                                      ; $4ca7: $9e
    inc d                                         ; $4ca8: $14
    ld [hl], l                                    ; $4ca9: $75
    dec bc                                        ; $4caa: $0b
    call $3676                                    ; $4cab: $cd $76 $36
    ld [hl], c                                    ; $4cae: $71
    ld [hl], d                                    ; $4caf: $72
    add [hl]                                      ; $4cb0: $86
    db $dd                                        ; $4cb1: $dd
    cp l                                          ; $4cb2: $bd
    sub h                                         ; $4cb3: $94
    ld a, $77                                     ; $4cb4: $3e $77
    cp l                                          ; $4cb6: $bd
    sbc b                                         ; $4cb7: $98
    sbc h                                         ; $4cb8: $9c
    ld [hl+], a                                   ; $4cb9: $22
    cp $8c                                        ; $4cba: $fe $8c
    sbc c                                         ; $4cbc: $99
    ld h, c                                       ; $4cbd: $61
    ld c, h                                       ; $4cbe: $4c
    ld d, h                                       ; $4cbf: $54
    cp [hl]                                       ; $4cc0: $be
    jr @+$5a                                      ; $4cc1: $18 $58

    and [hl]                                      ; $4cc3: $a6
    rst $00                                       ; $4cc4: $c7
    ld e, b                                       ; $4cc5: $58
    ld l, b                                       ; $4cc6: $68
    and $8a                                       ; $4cc7: $e6 $8a
    ld h, l                                       ; $4cc9: $65
    cp l                                          ; $4cca: $bd
    ld e, h                                       ; $4ccb: $5c
    ld l, b                                       ; $4ccc: $68
    db $fd                                        ; $4ccd: $fd
    ld b, a                                       ; $4cce: $47
    ld d, $0b                                     ; $4ccf: $16 $0b
    xor $0f                                       ; $4cd1: $ee $0f
    ld e, e                                       ; $4cd3: $5b
    sbc b                                         ; $4cd4: $98
    or [hl]                                       ; $4cd5: $b6
    rla                                           ; $4cd6: $17
    ld [hl], $f4                                  ; $4cd7: $36 $f4
    ld [bc], a                                    ; $4cd9: $02
    ld d, [hl]                                    ; $4cda: $56
    ld b, d                                       ; $4cdb: $42
    push hl                                       ; $4cdc: $e5
    ld [hl], h                                    ; $4cdd: $74
    rst $38                                       ; $4cde: $ff
    ld h, [hl]                                    ; $4cdf: $66
    rst $00                                       ; $4ce0: $c7
    ld a, [$bf36]                                 ; $4ce1: $fa $36 $bf

Call_067_4ce4:
    inc sp                                        ; $4ce4: $33
    sbc $1f                                       ; $4ce5: $de $1f
    db $db                                        ; $4ce7: $db
    sub a                                         ; $4ce8: $97
    dec [hl]                                      ; $4ce9: $35

jr_067_4cea:
    ld d, c                                       ; $4cea: $51
    or a                                          ; $4ceb: $b7
    ret nc                                        ; $4cec: $d0

    ld l, h                                       ; $4ced: $6c
    rst $20                                       ; $4cee: $e7
    db $dd                                        ; $4cef: $dd
    inc b                                         ; $4cf0: $04
    call $bae3                                    ; $4cf1: $cd $e3 $ba
    ld a, a                                       ; $4cf4: $7f
    ld a, l                                       ; $4cf5: $7d
    sbc e                                         ; $4cf6: $9b
    rst $18                                       ; $4cf7: $df
    add hl, de                                    ; $4cf8: $19
    dec de                                        ; $4cf9: $1b
    ret nc                                        ; $4cfa: $d0

    dec l                                         ; $4cfb: $2d
    ld h, e                                       ; $4cfc: $63
    ld [bc], a                                    ; $4cfd: $02
    rla                                           ; $4cfe: $17
    daa                                           ; $4cff: $27
    ld a, l                                       ; $4d00: $7d
    cp l                                          ; $4d01: $bd
    cp e                                          ; $4d02: $bb
    db $dd                                        ; $4d03: $dd
    xor l                                         ; $4d04: $ad
    ld e, [hl]                                    ; $4d05: $5e
    jp $05db                                      ; $4d06: $c3 $db $05


    ld l, e                                       ; $4d09: $6b
    jp z, $c9a1                                   ; $4d0a: $ca $a1 $c9

    or l                                          ; $4d0d: $b5
    ld a, [hl-]                                   ; $4d0e: $3a
    reti                                          ; $4d0f: $d9


    ld hl, sp+$62                                 ; $4d10: $f8 $62
    ld [hl], d                                    ; $4d12: $72
    ld a, [de]                                    ; $4d13: $1a
    or b                                          ; $4d14: $b0
    ld b, b                                       ; $4d15: $40
    sla l                                         ; $4d16: $cb $25
    db $ed                                        ; $4d18: $ed
    inc c                                         ; $4d19: $0c
    jp c, $4538                                   ; $4d1a: $da $38 $45

    ld a, b                                       ; $4d1d: $78
    sbc $dd                                       ; $4d1e: $de $dd
    cp $37                                        ; $4d20: $fe $37
    rst $30                                       ; $4d22: $f7
    rlca                                          ; $4d23: $07
    db $db                                        ; $4d24: $db
    db $eb                                        ; $4d25: $eb
    db $db                                        ; $4d26: $db
    ld a, b                                       ; $4d27: $78
    and c                                         ; $4d28: $a1
    ld a, [hl-]                                   ; $4d29: $3a
    sub $73                                       ; $4d2a: $d6 $73
    ld e, [hl]                                    ; $4d2c: $5e
    adc h                                         ; $4d2d: $8c
    jp c, $b700                                   ; $4d2e: $da $00 $b7

    ld d, c                                       ; $4d31: $51
    and d                                         ; $4d32: $a2
    ld c, [hl]                                    ; $4d33: $4e
    sub $a7                                       ; $4d34: $d6 $a7
    ld a, [hl+]                                   ; $4d36: $2a
    ld [$58d3], a                                 ; $4d37: $ea $d3 $58
    ld b, e                                       ; $4d3a: $43
    jp c, $b4a0                                   ; $4d3b: $da $a0 $b4

    xor $df                                       ; $4d3e: $ee $df
    ld [hl], e                                    ; $4d40: $73
    rra                                           ; $4d41: $1f
    db $d3                                        ; $4d42: $d3
    inc de                                        ; $4d43: $13
    scf                                           ; $4d44: $37
    adc d                                         ; $4d45: $8a
    cpl                                           ; $4d46: $2f
    ld b, l                                       ; $4d47: $45
    jp $c553                                      ; $4d48: $c3 $53 $c5


    ld b, [hl]                                    ; $4d4b: $46
    adc c                                         ; $4d4c: $89
    ld a, [$3634]                                 ; $4d4d: $fa $34 $36
    ld c, a                                       ; $4d50: $4f
    inc bc                                        ; $4d51: $03
    xor l                                         ; $4d52: $ad
    ld l, h                                       ; $4d53: $6c
    ld a, [hl]                                    ; $4d54: $7e
    ld [hl], a                                    ; $4d55: $77
    xor a                                         ; $4d56: $af
    jr @+$59                                      ; $4d57: $18 $57

    adc a                                         ; $4d59: $8f
    db $d3                                        ; $4d5a: $d3
    sbc a                                         ; $4d5b: $9f
    ld d, [hl]                                    ; $4d5c: $56
    daa                                           ; $4d5d: $27
    cp e                                          ; $4d5e: $bb
    reti                                          ; $4d5f: $d9


    ld b, [hl]                                    ; $4d60: $46
    ld c, [hl]                                    ; $4d61: $4e
    inc bc                                        ; $4d62: $03
    ld a, d                                       ; $4d63: $7a
    ld e, $5e                                     ; $4d64: $1e $5e
    ld a, [hl]                                    ; $4d66: $7e
    ccf                                           ; $4d67: $3f
    sbc [hl]                                      ; $4d68: $9e
    adc l                                         ; $4d69: $8d
    ld d, $3d                                     ; $4d6a: $16 $3d
    rst $00                                       ; $4d6c: $c7
    sbc h                                         ; $4d6d: $9c
    ld h, b                                       ; $4d6e: $60
    ld l, d                                       ; $4d6f: $6a
    rst $08                                       ; $4d70: $cf
    and e                                         ; $4d71: $a3
    inc e                                         ; $4d72: $1c
    dec e                                         ; $4d73: $1d
    ld l, l                                       ; $4d74: $6d
    jp z, $d3a1                                   ; $4d75: $ca $a1 $d3

    ld [hl], e                                    ; $4d78: $73
    ld e, [hl]                                    ; $4d79: $5e
    adc h                                         ; $4d7a: $8c
    ld e, d                                       ; $4d7b: $5a
    ld a, a                                       ; $4d7c: $7f
    ld [bc], a                                    ; $4d7d: $02
    sbc d                                         ; $4d7e: $9a
    ld h, c                                       ; $4d7f: $61
    dec c                                         ; $4d80: $0d
    inc c                                         ; $4d81: $0c
    ld d, e                                       ; $4d82: $53
    ld c, [hl]                                    ; $4d83: $4e
    dec h                                         ; $4d84: $25
    ld e, h                                       ; $4d85: $5c
    ld a, l                                       ; $4d86: $7d

Call_067_4d87:
    cp [hl]                                       ; $4d87: $be
    ei                                            ; $4d88: $fb
    inc bc                                        ; $4d89: $03
    adc c                                         ; $4d8a: $89
    ld [hl], $bf                                  ; $4d8b: $36 $bf
    or e                                          ; $4d8d: $b3
    jp hl                                         ; $4d8e: $e9


    ld l, b                                       ; $4d8f: $68
    or a                                          ; $4d90: $b7
    adc h                                         ; $4d91: $8c
    add hl, bc                                    ; $4d92: $09
    ld e, h                                       ; $4d93: $5c
    sbc h                                         ; $4d94: $9c
    db $f4                                        ; $4d95: $f4
    or l                                          ; $4d96: $b5
    ld bc, $3cfe                                  ; $4d97: $01 $fe $3c
    cp l                                          ; $4d9a: $bd
    db $db                                        ; $4d9b: $db
    dec hl                                        ; $4d9c: $2b
    jr z, jr_067_4de6                             ; $4d9d: $28 $47

    cp e                                          ; $4d9f: $bb
    xor h                                         ; $4da0: $ac
    adc c                                         ; $4da1: $89
    cp d                                          ; $4da2: $ba
    add l                                         ; $4da3: $85
    ld h, [hl]                                    ; $4da4: $66
    dec sp                                        ; $4da5: $3b
    scf                                           ; $4da6: $37
    ld a, h                                       ; $4da7: $7c
    add hl, bc                                    ; $4da8: $09
    xor [hl]                                      ; $4da9: $ae
    ld d, b                                       ; $4daa: $50
    rra                                           ; $4dab: $1f
    halt                                          ; $4dac: $76
    jr c, jr_067_4e02                             ; $4dad: $38 $53

    xor $89                                       ; $4daf: $ee $89
    cp d                                          ; $4db1: $ba
    add l                                         ; $4db2: $85
    ld h, [hl]                                    ; $4db3: $66
    dec sp                                        ; $4db4: $3b
    rst $28                                       ; $4db5: $ef
    ld l, [hl]                                    ; $4db6: $6e
    inc de                                        ; $4db7: $13
    sub $37                                       ; $4db8: $d6 $37
    db $fc                                        ; $4dba: $fc
    ld c, a                                       ; $4dbb: $4f
    xor c                                         ; $4dbc: $a9
    dec c                                         ; $4dbd: $0d
    xor b                                         ; $4dbe: $a8
    ld a, h                                       ; $4dbf: $7c
    or d                                          ; $4dc0: $b2
    ld a, $8d                                     ; $4dc1: $3e $8d
    ld [hl], l                                    ; $4dc3: $75
    sub d                                         ; $4dc4: $92
    call Call_000_3f36                            ; $4dc5: $cd $36 $3f
    xor e                                         ; $4dc8: $ab
    ld c, a                                       ; $4dc9: $4f
    ld a, [$b40b]                                 ; $4dca: $fa $0b $b4
    rst $38                                       ; $4dcd: $ff
    ret z                                         ; $4dce: $c8

    jp $99a1                                      ; $4dcf: $c3 $a1 $99


    rst $30                                       ; $4dd2: $f7
    rlca                                          ; $4dd3: $07
    ld d, a                                       ; $4dd4: $57
    inc a                                         ; $4dd5: $3c
    ld d, a                                       ; $4dd6: $57
    ld a, a                                       ; $4dd7: $7f
    xor h                                         ; $4dd8: $ac
    call c, $4ead                                 ; $4dd9: $dc $ad $4e
    ld [hl], $39                                  ; $4ddc: $36 $39
    ld [de], a                                    ; $4dde: $12
    or d                                          ; $4ddf: $b2
    db $ec                                        ; $4de0: $ec
    ld a, [bc]                                    ; $4de1: $0a
    ld sp, $bac0                                  ; $4de2: $31 $c0 $ba
    reti                                          ; $4de5: $d9


jr_067_4de6:
    ld b, [hl]                                    ; $4de6: $46
    adc [hl]                                      ; $4de7: $8e
    ld [hl], $a0                                  ; $4de8: $36 $a0
    rst $20                                       ; $4dea: $e7
    pop hl                                        ; $4deb: $e1
    push hl                                       ; $4dec: $e5
    rst $30                                       ; $4ded: $f7
    db $e3                                        ; $4dee: $e3
    reti                                          ; $4def: $d9


    ld l, b                                       ; $4df0: $68
    pop de                                        ; $4df1: $d1
    ld [hl], e                                    ; $4df2: $73
    call z, $a609                                 ; $4df3: $cc $09 $a6
    or $3c                                        ; $4df6: $f6 $3c
    jp z, $d1d1                                   ; $4df8: $ca $d1 $d1

    ld c, l                                       ; $4dfb: $4d
    rra                                           ; $4dfc: $1f
    ld [c], a                                     ; $4dfd: $e2
    ld a, a                                       ; $4dfe: $7f
    ld [hl], d                                    ; $4dff: $72
    sbc d                                         ; $4e00: $9a
    ld [hl], d                                    ; $4e01: $72

jr_067_4e02:
    jr z, jr_067_4e1a                             ; $4e02: $28 $16

    call nc, Call_000_2aa7                        ; $4e04: $d4 $a7 $2a
    dec sp                                        ; $4e07: $3b
    jp c, $a8f0                                   ; $4e08: $da $f0 $a8

    push af                                       ; $4e0b: $f5
    ld h, c                                       ; $4e0c: $61
    ld a, c                                       ; $4e0d: $79
    ld a, [de]                                    ; $4e0e: $1a
    ret nc                                        ; $4e0f: $d0

    di                                            ; $4e10: $f3
    db $ed                                        ; $4e11: $ed
    push bc                                       ; $4e12: $c5
    db $f4                                        ; $4e13: $f4
    db $e4                                        ; $4e14: $e4
    xor h                                         ; $4e15: $ac
    rst $30                                       ; $4e16: $f7
    rlca                                          ; $4e17: $07
    db $db                                        ; $4e18: $db
    add h                                         ; $4e19: $84

jr_067_4e1a:
    inc hl                                        ; $4e1a: $23
    ld l, d                                       ; $4e1b: $6a
    inc d                                         ; $4e1c: $14
    ld c, [hl]                                    ; $4e1d: $4e
    ld d, a                                       ; $4e1e: $57
    rst $28                                       ; $4e1f: $ef
    cp $00                                        ; $4e20: $fe $00
    db $db                                        ; $4e22: $db
    add h                                         ; $4e23: $84
    ld d, e                                       ; $4e24: $53
    push bc                                       ; $4e25: $c5
    ld l, e                                       ; $4e26: $6b
    ld h, h                                       ; $4e27: $64
    ld h, b                                       ; $4e28: $60
    jp $9d53                                      ; $4e29: $c3 $53 $9d


    ei                                            ; $4e2c: $fb
    inc bc                                        ; $4e2d: $03
    sbc e                                         ; $4e2e: $9b
    ld b, a                                       ; $4e2f: $47
    or e                                          ; $4e30: $b3
    sub e                                         ; $4e31: $93
    db $d3                                        ; $4e32: $d3
    dec d                                         ; $4e33: $15
    xor h                                         ; $4e34: $ac
    jp nc, $ccbd                                  ; $4e35: $d2 $bd $cc

    and [hl]                                      ; $4e38: $a6
    ld de, $ca33                                  ; $4e39: $11 $33 $ca
    xor [hl]                                      ; $4e3c: $ae
    db $10                                        ; $4e3d: $10
    inc bc                                        ; $4e3e: $03
    xor h                                         ; $4e3f: $ac
    sbc e                                         ; $4e40: $9b
    ld l, l                                       ; $4e41: $6d
    db $e4                                        ; $4e42: $e4
    ld l, b                                       ; $4e43: $68
    inc bc                                        ; $4e44: $03
    ld a, d                                       ; $4e45: $7a
    ld e, $5e                                     ; $4e46: $1e $5e
    ld a, [hl]                                    ; $4e48: $7e
    ccf                                           ; $4e49: $3f
    sbc [hl]                                      ; $4e4a: $9e
    adc l                                         ; $4e4b: $8d
    ld d, $3d                                     ; $4e4c: $16 $3d
    rst $00                                       ; $4e4e: $c7
    sbc h                                         ; $4e4f: $9c
    ld h, b                                       ; $4e50: $60
    ld l, d                                       ; $4e51: $6a
    rst $08                                       ; $4e52: $cf
    and e                                         ; $4e53: $a3
    inc e                                         ; $4e54: $1c
    dec e                                         ; $4e55: $1d
    cp l                                          ; $4e56: $bd
    ccf                                           ; $4e57: $3f
    db $db                                        ; $4e58: $db
    add h                                         ; $4e59: $84
    db $d3                                        ; $4e5a: $d3
    ld a, a                                       ; $4e5b: $7f
    inc [hl]                                      ; $4e5c: $34
    dec sp                                        ; $4e5d: $3b
    add hl, sp                                    ; $4e5e: $39
    push af                                       ; $4e5f: $f5
    dec c                                         ; $4e60: $0d
    sbc d                                         ; $4e61: $9a
    ld l, c                                       ; $4e62: $69
    ld h, l                                       ; $4e63: $65
    ld b, [hl]                                    ; $4e64: $46
    ld e, h                                       ; $4e65: $5c
    cpl                                           ; $4e66: $2f
    sbc h                                         ; $4e67: $9c
    or d                                          ; $4e68: $b2
    ld d, b                                       ; $4e69: $50
    and l                                         ; $4e6a: $a5
    or $9f                                        ; $4e6b: $f6 $9f
    and a                                         ; $4e6d: $a7
    call nc, $03fb                                ; $4e6e: $d4 $fb $03
    db $db                                        ; $4e71: $db
    add h                                         ; $4e72: $84
    inc hl                                        ; $4e73: $23
    xor d                                         ; $4e74: $aa
    and h                                         ; $4e75: $a4
    ld [hl], $73                                  ; $4e76: $36 $73
    ld e, c                                       ; $4e78: $59
    ld h, c                                       ; $4e79: $61
    ld d, a                                       ; $4e7a: $57
    pop hl                                        ; $4e7b: $e1
    ld a, [de]                                    ; $4e7c: $1a
    add l                                         ; $4e7d: $85
    db $d3                                        ; $4e7e: $d3
    adc h                                         ; $4e7f: $8c
    sbc b                                         ; $4e80: $98
    ld h, h                                       ; $4e81: $64
    ld a, l                                       ; $4e82: $7d
    add e                                         ; $4e83: $83
    ld h, [hl]                                    ; $4e84: $66
    add [hl]                                      ; $4e85: $86
    xor c                                         ; $4e86: $a9
    ld [hl], h                                    ; $4e87: $74
    cpl                                           ; $4e88: $2f
    or e                                          ; $4e89: $b3
    call z, $eb88                                 ; $4e8a: $cc $88 $eb
    add l                                         ; $4e8d: $85
    ld [hl], e                                    ; $4e8e: $73

Jump_067_4e8f:
    ld a, a                                       ; $4e8f: $7f
    ld [c], a                                     ; $4e90: $e2
    ld a, a                                       ; $4e91: $7f
    ld [hl], d                                    ; $4e92: $72
    sbc d                                         ; $4e93: $9a
    ld [hl], d                                    ; $4e94: $72
    add sp, -$16                                  ; $4e95: $e8 $ea
    push de                                       ; $4e97: $d5
    ld c, c                                       ; $4e98: $49
    sub $87                                       ; $4e99: $d6 $87
    ld [$ffb0], a                                 ; $4e9b: $ea $b0 $ff
    ret z                                         ; $4e9e: $c8

    ld b, d                                       ; $4e9f: $42
    dec d                                         ; $4ea0: $15
    and l                                         ; $4ea1: $a5
    ld a, [$f3f8]                                 ; $4ea2: $fa $f8 $f3

Call_067_4ea5:
    sub h                                         ; $4ea5: $94
    ld d, e                                       ; $4ea6: $53
    ld a, a                                       ; $4ea7: $7f
    ld e, l                                       ; $4ea8: $5d
    jp $c3d4                                      ; $4ea9: $c3 $d4 $c3


    ld hl, sp-$31                                 ; $4eac: $f8 $cf
    db $fd                                        ; $4eae: $fd
    ld bc, $ae09                                  ; $4eaf: $01 $09 $ae
    sub a                                         ; $4eb2: $97

Jump_067_4eb3:
    dec h                                         ; $4eb3: $25

Jump_067_4eb4:
    ld l, h                                       ; $4eb4: $6c
    db $db                                        ; $4eb5: $db
    or d                                          ; $4eb6: $b2
    cp l                                          ; $4eb7: $bd
    ld c, [hl]                                    ; $4eb8: $4e
    halt                                          ; $4eb9: $76
    or e                                          ; $4eba: $b3
    adc l                                         ; $4ebb: $8d
    sbc h                                         ; $4ebc: $9c
    ld b, $f4                                     ; $4ebd: $06 $f4
    inc a                                         ; $4ebf: $3c
    cp h                                          ; $4ec0: $bc
    db $fc                                        ; $4ec1: $fc
    ld a, [hl]                                    ; $4ec2: $7e
    inc a                                         ; $4ec3: $3c
    dec de                                        ; $4ec4: $1b
    dec l                                         ; $4ec5: $2d
    ld a, d                                       ; $4ec6: $7a
    adc [hl]                                      ; $4ec7: $8e
    add hl, sp                                    ; $4ec8: $39
    pop bc                                        ; $4ec9: $c1
    call nc, Call_067_479e                        ; $4eca: $d4 $9e $47
    add hl, sp                                    ; $4ecd: $39
    ld a, [hl-]                                   ; $4ece: $3a
    ld e, d                                       ; $4ecf: $5a
    sbc a                                         ; $4ed0: $9f
    add $ae                                       ; $4ed1: $c6 $ae
    db $10                                        ; $4ed3: $10
    inc bc                                        ; $4ed4: $03
    db $ec                                        ; $4ed5: $ec
    xor $56                                       ; $4ed6: $ee $56
    ld l, d                                       ; $4ed8: $6a
    and c                                         ; $4ed9: $a1
    ld a, c                                       ; $4eda: $79
    xor l                                         ; $4edb: $ad
    ld [hl], c                                    ; $4edc: $71
    ld a, [hl+]                                   ; $4edd: $2a
    pop hl                                        ; $4ede: $e1
    ld a, [$d78f]                                 ; $4edf: $fa $8f $d7
    ld d, b                                       ; $4ee2: $50
    ret z                                         ; $4ee3: $c8

    sbc [hl]                                      ; $4ee4: $9e
    ld l, a                                       ; $4ee5: $6f
    cpl                                           ; $4ee6: $2f
    and [hl]                                      ; $4ee7: $a6
    daa                                           ; $4ee8: $27
    ld h, a                                       ; $4ee9: $67
    cp l                                          ; $4eea: $bd
    cp e                                          ; $4eeb: $bb
    inc bc                                        ; $4eec: $03
    sbc l                                         ; $4eed: $9d
    ld a, d                                       ; $4eee: $7a
    rst $00                                       ; $4eef: $c7
    and b                                         ; $4ef0: $a0

jr_067_4ef1:
    push af                                       ; $4ef1: $f5
    jr c, jr_067_4ef1                             ; $4ef2: $38 $fd

    ld l, c                                       ; $4ef4: $69
    and d                                         ; $4ef5: $a2
    ld a, [de]                                    ; $4ef6: $1a
    add d                                         ; $4ef7: $82
    db $db                                        ; $4ef8: $db
    dec [hl]                                      ; $4ef9: $35
    sbc l                                         ; $4efa: $9d
    ld a, [$f586]                                 ; $4efb: $fa $86 $f5
    inc hl                                        ; $4efe: $23
    ld l, d                                       ; $4eff: $6a
    ld b, b                                       ; $4f00: $40
    sbc l                                         ; $4f01: $9d
    ld h, h                                       ; $4f02: $64
    inc de                                        ; $4f03: $13
    ld de, $3d8c                                  ; $4f04: $11 $8c $3d
    rlca                                          ; $4f07: $07
    cp e                                          ; $4f08: $bb
    add [hl]                                      ; $4f09: $86
    ld d, [hl]                                    ; $4f0a: $56
    sbc a                                         ; $4f0b: $9f
    add $1e                                       ; $4f0c: $c6 $1e
    ld a, e                                       ; $4f0e: $7b
    ld c, h                                       ; $4f0f: $4c
    cpl                                           ; $4f10: $2f
    add $c1                                       ; $4f11: $c6 $c1
    ret nc                                        ; $4f13: $d0

    ei                                            ; $4f14: $fb
    inc bc                                        ; $4f15: $03
    ld [c], a                                     ; $4f16: $e2
    add hl, hl                                    ; $4f17: $29
    rst $30                                       ; $4f18: $f7
    ld a, [bc]                                    ; $4f19: $0a
    call $f76b                                    ; $4f1a: $cd $6b $f7
    rlca                                          ; $4f1d: $07
    add hl, bc                                    ; $4f1e: $09
    add d                                         ; $4f1f: $82
    ld a, a                                       ; $4f20: $7f
    inc l                                         ; $4f21: $2c
    adc b                                         ; $4f22: $88
    add hl, de                                    ; $4f23: $19
    ld [hl], a                                    ; $4f24: $77
    xor a                                         ; $4f25: $af
    and b                                         ; $4f26: $a0
    inc e                                         ; $4f27: $1c
    xor l                                         ; $4f28: $ad
    ld c, a                                       ; $4f29: $4f
    ld h, e                                       ; $4f2a: $63
    rst $08                                       ; $4f2b: $cf
    or a                                          ; $4f2c: $b7
    rla                                           ; $4f2d: $17
    db $d3                                        ; $4f2e: $d3
    sub e                                         ; $4f2f: $93
    or e                                          ; $4f30: $b3
    sbc [hl]                                      ; $4f31: $9e
    ld e, [hl]                                    ; $4f32: $5e
    cp b                                          ; $4f33: $b8
    add [hl]                                      ; $4f34: $86
    ld [hl], c                                    ; $4f35: $71
    dec de                                        ; $4f36: $1b
    inc sp                                        ; $4f37: $33
    ld c, d                                       ; $4f38: $4a
    sub a                                         ; $4f39: $97
    rst $00                                       ; $4f3a: $c7
    sbc $2e                                       ; $4f3b: $de $2e
    xor [hl]                                      ; $4f3d: $ae
    rla                                           ; $4f3e: $17
    ld c, [hl]                                    ; $4f3f: $4e
    ld a, l                                       ; $4f40: $7d
    ld a, [de]                                    ; $4f41: $1a
    ei                                            ; $4f42: $fb
    inc c                                         ; $4f43: $0c
    ld e, d                                       ; $4f44: $5a
    ld c, [hl]                                    ; $4f45: $4e
    dec h                                         ; $4f46: $25
    ld e, h                                       ; $4f47: $5c
    rst $38                                       ; $4f48: $ff
    pop af                                        ; $4f49: $f1
    ld a, [de]                                    ; $4f4a: $1a
    xor $0f                                       ; $4f4b: $ee $0f
    ld e, e                                       ; $4f4d: $5b
    xor c                                         ; $4f4e: $a9
    add l                                         ; $4f4f: $85
    ld l, e                                       ; $4f50: $6b
    inc d                                         ; $4f51: $14
    ld c, [hl]                                    ; $4f52: $4e
    inc sp                                        ; $4f53: $33
    ld h, d                                       ; $4f54: $62
    ld [hl], d                                    ; $4f55: $72
    ld a, [bc]                                    ; $4f56: $0a
    ld d, l                                       ; $4f57: $55

jr_067_4f58:
    inc [hl]                                      ; $4f58: $34
    cp h                                          ; $4f59: $bc
    sbc b                                         ; $4f5a: $98
    call nz, Call_067_69b3                        ; $4f5b: $c4 $b3 $69
    sbc [hl]                                      ; $4f5e: $9e

jr_067_4f5f:
    jr nc, jr_067_4f58                            ; $4f5f: $30 $f7

    rlca                                          ; $4f61: $07
    db $db                                        ; $4f62: $db
    sub a                                         ; $4f63: $97
    inc h                                         ; $4f64: $24
    sbc e                                         ; $4f65: $9b
    ld [hl], d                                    ; $4f66: $72
    xor b                                         ; $4f67: $a8
    adc a                                         ; $4f68: $8f
    ret z                                         ; $4f69: $c8

    cp e                                          ; $4f6a: $bb
    ld d, a                                       ; $4f6b: $57
    call z, $d992                                 ; $4f6c: $cc $92 $d9
    sub h                                         ; $4f6f: $94
    ld h, e                                       ; $4f70: $63
    inc c                                         ; $4f71: $0c
    db $d3                                        ; $4f72: $d3
    db $fc                                        ; $4f73: $fc
    ld d, [hl]                                    ; $4f74: $56
    jr nc, jr_067_4f5f                            ; $4f75: $30 $e8

    db $dd                                        ; $4f77: $dd
    ld l, l                                       ; $4f78: $6d
    jp nz, $f2a9                                  ; $4f79: $c2 $a9 $f2

    ld c, l                                       ; $4f7c: $4d
    inc bc                                        ; $4f7d: $03
    ld d, e                                       ; $4f7e: $53
    xor $dd                                       ; $4f7f: $ee $dd
    rra                                           ; $4f81: $1f
    db $db                                        ; $4f82: $db
    ei                                            ; $4f83: $fb
    db $db                                        ; $4f84: $db
    ret z                                         ; $4f85: $c8

    jp hl                                         ; $4f86: $e9


    rst $28                                       ; $4f87: $ef
    inc [hl]                                      ; $4f88: $34
    or e                                          ; $4f89: $b3
    rst $00                                       ; $4f8a: $c7
    ld e, $d3                                     ; $4f8b: $1e $d3
    adc e                                         ; $4f8d: $8b
    ld [hl], c                                    ; $4f8e: $71
    jr nc, jr_067_4fe5                            ; $4f8f: $30 $54

    ld d, h                                       ; $4f91: $54
    ld c, c                                       ; $4f92: $49
    dec l                                         ; $4f93: $2d
    ld e, h                                       ; $4f94: $5c
    and e                                         ; $4f95: $a3
    ld [hl], b                                    ; $4f96: $70
    sbc d                                         ; $4f97: $9a
    ld de, $d393                                  ; $4f98: $11 $93 $d3
    call z, $a798                                 ; $4f9b: $cc $98 $a7
    pop hl                                        ; $4f9e: $e1
    push bc                                       ; $4f9f: $c5
    inc h                                         ; $4fa0: $24
    sbc [hl]                                      ; $4fa1: $9e
    call $26dd                                    ; $4fa2: $cd $dd $26
    ld c, [hl]                                    ; $4fa5: $4e
    add b                                         ; $4fa6: $80
    ld [hl], $d0                                  ; $4fa7: $36 $d0
    ld [hl], $4a                                  ; $4fa9: $36 $4a
    db $f4                                        ; $4fab: $f4
    ret c                                         ; $4fac: $d8

    ld h, e                                       ; $4fad: $63
    cp d                                          ; $4fae: $ba
    ldh [$60], a                                  ; $4faf: $e0 $60
    add sp, -$5a                                  ; $4fb1: $e8 $a6
    rrca                                          ; $4fb3: $0f
    dec sp                                        ; $4fb4: $3b
    sbc [hl]                                      ; $4fb5: $9e
    cp h                                          ; $4fb6: $bc
    ccf                                           ; $4fb7: $3f
    sbc e                                         ; $4fb8: $9b
    ld b, a                                       ; $4fb9: $47
    ld c, [hl]                                    ; $4fba: $4e
    db $fd                                        ; $4fbb: $fd
    ld d, c                                       ; $4fbc: $51
    sbc l                                         ; $4fbd: $9d
    ld a, [hl+]                                   ; $4fbe: $2a
    ld l, h                                       ; $4fbf: $6c
    push af                                       ; $4fc0: $f5

jr_067_4fc1:
    ld l, h                                       ; $4fc1: $6c
    db $e3                                        ; $4fc2: $e3
    ld l, d                                       ; $4fc3: $6a
    ld [hl], h                                    ; $4fc4: $74
    db $d3                                        ; $4fc5: $d3
    rlca                                          ; $4fc6: $07
    db $db                                        ; $4fc7: $db
    cp e                                          ; $4fc8: $bb
    jp Jump_000_26ee                              ; $4fc9: $c3 $ee $26


    ld c, [hl]                                    ; $4fcc: $4e
    adc $b0                                       ; $4fcd: $ce $b0
    ld h, [hl]                                    ; $4fcf: $66
    ret z                                         ; $4fd0: $c8

    jp nc, $b1e5                                  ; $4fd1: $d2 $e5 $b1

    or a                                          ; $4fd4: $b7
    adc e                                         ; $4fd5: $8b
    db $eb                                        ; $4fd6: $eb
    add l                                         ; $4fd7: $85
    ld d, e                                       ; $4fd8: $53
    sbc a                                         ; $4fd9: $9f
    add $3e                                       ; $4fda: $c6 $3e
    dec hl                                        ; $4fdc: $2b
    and a                                         ; $4fdd: $a7
    ld [de], a                                    ; $4fde: $12
    xor [hl]                                      ; $4fdf: $ae
    rst $38                                       ; $4fe0: $ff
    ld a, b                                       ; $4fe1: $78
    dec c                                         ; $4fe2: $0d
    and d                                         ; $4fe3: $a2
    ld c, [hl]                                    ; $4fe4: $4e

jr_067_4fe5:
    ld c, a                                       ; $4fe5: $4f
    dec a                                         ; $4fe6: $3d
    push af                                       ; $4fe7: $f5
    inc d                                         ; $4fe8: $14
    ld d, c                                       ; $4fe9: $51
    ld d, c                                       ; $4fea: $51
    ld b, e                                       ; $4feb: $43
    ld a, [hl]                                    ; $4fec: $7e
    ld b, [hl]                                    ; $4fed: $46
    ld l, e                                       ; $4fee: $6b
    ld b, b                                       ; $4fef: $40
    sub a                                         ; $4ff0: $97
    or l                                          ; $4ff1: $b5
    ld a, [hl-]                                   ; $4ff2: $3a
    reti                                          ; $4ff3: $d9


    call Call_067_7236                            ; $4ff4: $cd $36 $72
    ld a, [de]                                    ; $4ff7: $1a
    ret nc                                        ; $4ff8: $d0

    di                                            ; $4ff9: $f3
    ldh a, [$f2]                                  ; $4ffa: $f0 $f2
    ei                                            ; $4ffc: $fb
    pop af                                        ; $4ffd: $f1
    ld l, h                                       ; $4ffe: $6c
    or h                                          ; $4fff: $b4
    add sp, $39                                   ; $5000: $e8 $39
    and $04                                       ; $5002: $e6 $04
    ld d, e                                       ; $5004: $53
    ld a, e                                       ; $5005: $7b
    ld e, $e5                                     ; $5006: $1e $e5
    add sp, -$18                                  ; $5008: $e8 $e8
    db $fd                                        ; $500a: $fd
    ld bc, $a389                                  ; $500b: $01 $89 $a3
    ld a, [hl-]                                   ; $500e: $3a
    ld e, l                                       ; $500f: $5d
    pop bc                                        ; $5010: $c1
    jp z, Jump_067_49fe                           ; $5011: $ca $fe $49

    xor [hl]                                      ; $5014: $ae
    jr nz, jr_067_4fc1                            ; $5015: $20 $aa

    ld [hl+], a                                   ; $5017: $22
    ld h, $c7                                     ; $5018: $26 $c7
    ld [hl], $7d                                  ; $501a: $36 $7d
    ld [c], a                                     ; $501c: $e2
    add hl, hl                                    ; $501d: $29
    rst $30                                       ; $501e: $f7
    ld a, [bc]                                    ; $501f: $0a
    call $c56b                                    ; $5020: $cd $6b $c5
    jp nz, $dbbb                                  ; $5023: $c2 $bb $db

    cp e                                          ; $5026: $bb
    jp Jump_000_26ee                              ; $5027: $c3 $ee $26


    ld c, [hl]                                    ; $502a: $4e
    adc $b0                                       ; $502b: $ce $b0
    xor [hl]                                      ; $502d: $ae
    ld hl, sp-$76                                 ; $502e: $f8 $8a
    sbc b                                         ; $5030: $98
    adc l                                         ; $5031: $8d
    ld d, [hl]                                    ; $5032: $56
    sbc l                                         ; $5033: $9d
    ld e, l                                       ; $5034: $5d
    cpl                                           ; $5035: $2f
    ld h, $e7                                     ; $5036: $26 $e7
    xor [hl]                                      ; $5038: $ae
    ld a, b                                       ; $5039: $78
    ld e, [hl]                                    ; $503a: $5e
    rst $10                                       ; $503b: $d7
    ld h, l                                       ; $503c: $65
    jp nc, $ea23                                  ; $503d: $d2 $23 $ea

    ld d, $9a                                     ; $5040: $16 $9a
    db $ed                                        ; $5042: $ed
    cp h                                          ; $5043: $bc
    ccf                                           ; $5044: $3f
    ld e, e                                       ; $5045: $5b
    db $dd                                        ; $5046: $dd
    bit 2, e                                      ; $5047: $cb $53
    rrca                                          ; $5049: $0f
    db $e4                                        ; $504a: $e4
    db $dd                                        ; $504b: $dd
    dec hl                                        ; $504c: $2b
    jr z, jr_067_5096                             ; $504d: $28 $47

    adc e                                         ; $504f: $8b
    sbc b                                         ; $5050: $98
    add l                                         ; $5051: $85
    ld d, e                                       ; $5052: $53
    sbc a                                         ; $5053: $9f
    add $b2                                       ; $5054: $c6 $b2
    ld l, e                                       ; $5056: $6b
    ld b, $36                                     ; $5057: $06 $36
    adc h                                         ; $5059: $8c
    or $1f                                        ; $505a: $f6 $1f
    xor a                                         ; $505c: $af
    ld b, c                                       ; $505d: $41
    dec de                                        ; $505e: $1b
    ld h, a                                       ; $505f: $67
    dec [hl]                                      ; $5060: $35
    ld a, d                                       ; $5061: $7a
    rst $30                                       ; $5062: $f7
    inc a                                         ; $5063: $3c
    xor [hl]                                      ; $5064: $ae
    ld h, a                                       ; $5065: $67
    and a                                         ; $5066: $a7
    ld e, [hl]                                    ; $5067: $5e
    xor [hl]                                      ; $5068: $ae
    add $1a                                       ; $5069: $c6 $1a
    ld d, b                                       ; $506b: $50
    adc c                                         ; $506c: $89
    ld a, [hl+]                                   ; $506d: $2a
    jp nc, $d9ee                                  ; $506e: $d2 $ee $d9

    db $fd                                        ; $5071: $fd
    ld bc, $fbdb                                  ; $5072: $01 $db $fb
    adc a                                         ; $5075: $8f
    rst $10                                       ; $5076: $d7
    ret nc                                        ; $5077: $d0

    ld d, e                                       ; $5078: $53
    ld c, a                                       ; $5079: $4f
    dec a                                         ; $507a: $3d
    and l                                         ; $507b: $a5
    sbc $f7                                       ; $507c: $de $f7
    or e                                          ; $507e: $b3
    ld de, $d99a                                  ; $507f: $11 $9a $d9
    ldh a, [$0c]                                  ; $5082: $f0 $0c
    rst $38                                       ; $5084: $ff
    ld a, d                                       ; $5085: $7a
    pop hl                                        ; $5086: $e1
    call c, Call_067_62bd                         ; $5087: $dc $bd $62
    xor l                                         ; $508a: $ad
    db $f4                                        ; $508b: $f4
    ld de, $e5a9                                  ; $508c: $11 $a9 $e5
    db $f4                                        ; $508f: $f4
    rra                                           ; $5090: $1f
    xor a                                         ; $5091: $af
    and c                                         ; $5092: $a1
    ld [hl], h                                    ; $5093: $74
    ld a, c                                       ; $5094: $79
    db $ec                                        ; $5095: $ec

jr_067_5096:
    db $ed                                        ; $5096: $ed
    ld h, d                                       ; $5097: $62
    sbc b                                         ; $5098: $98
    cp e                                          ; $5099: $bb
    rst $20                                       ; $509a: $e7
    db $db                                        ; $509b: $db
    adc e                                         ; $509c: $8b
    jp hl                                         ; $509d: $e9


    ret                                           ; $509e: $c9


    ld e, c                                       ; $509f: $59
    dec de                                        ; $50a0: $1b
    add l                                         ; $50a1: $85
    ld d, e                                       ; $50a2: $53
    ld b, l                                       ; $50a3: $45
    dec c                                         ; $50a4: $0d
    ld [$544f], a                                 ; $50a5: $ea $4f $54
    ld a, d                                       ; $50a8: $7a
    sbc $f2                                       ; $50a9: $de $f2
    halt                                          ; $50ab: $76
    or c                                          ; $50ac: $b1
    cp $58                                        ; $50ad: $fe $58
    ld e, a                                       ; $50af: $5f
    ld b, [hl]                                    ; $50b0: $46
    call nc, $ab8e                                ; $50b1: $d4 $8e $ab
    ld c, a                                       ; $50b4: $4f
    set 2, b                                      ; $50b5: $cb $d0
    add [hl]                                      ; $50b7: $86
    jp hl                                         ; $50b8: $e9


    ccf                                           ; $50b9: $3f
    and $4f                                       ; $50ba: $e6 $4f
    ld a, l                                       ; $50bc: $7d
    ld e, b                                       ; $50bd: $58
    ld a, b                                       ; $50be: $78
    ld h, c                                       ; $50bf: $61
    db $f4                                        ; $50c0: $f4
    cp $00                                        ; $50c1: $fe $00
    rla                                           ; $50c3: $17
    ld d, e                                       ; $50c4: $53
    ld [hl+], a                                   ; $50c5: $22
    and $11                                       ; $50c6: $e6 $11
    ld d, l                                       ; $50c8: $55
    ld de, $6393                                  ; $50c9: $11 $93 $63
    and d                                         ; $50cc: $a2
    ld c, d                                       ; $50cd: $4a
    ld l, d                                       ; $50ce: $6a
    inc bc                                        ; $50cf: $03
    ld d, [hl]                                    ; $50d0: $56
    ld d, e                                       ; $50d1: $53
    ld b, e                                       ; $50d2: $43
    jp c, Jump_067_4aa0                           ; $50d3: $da $a0 $4a

    db $eb                                        ; $50d6: $eb
    cp $45                                        ; $50d7: $fe $45
    call z, $c0c6                                 ; $50d9: $cc $c6 $c0
    ei                                            ; $50dc: $fb
    inc bc                                        ; $50dd: $03
    add hl, bc                                    ; $50de: $09
    sbc d                                         ; $50df: $9a
    ld e, c                                       ; $50e0: $59
    ld bc, $588c                                  ; $50e1: $01 $8c $58
    ld e, b                                       ; $50e4: $58
    ld l, b                                       ; $50e5: $68
    ld e, [hl]                                    ; $50e6: $5e
    xor e                                         ; $50e7: $ab
    rla                                           ; $50e8: $17
    ld a, a                                       ; $50e9: $7f
    sub d                                         ; $50ea: $92
    add c                                         ; $50eb: $81
    rst $30                                       ; $50ec: $f7
    rlca                                          ; $50ed: $07
    ld d, a                                       ; $50ee: $57
    xor h                                         ; $50ef: $ac
    push de                                       ; $50f0: $d5
    and a                                         ; $50f1: $a7
    or c                                          ; $50f2: $b1
    ld d, e                                       ; $50f3: $53
    rrca                                          ; $50f4: $0f
    sub a                                         ; $50f5: $97
    ld e, a                                       ; $50f6: $5f
    jr c, jr_067_514e                             ; $50f7: $38 $55

    and h                                         ; $50f9: $a4
    db $dd                                        ; $50fa: $dd
    adc e                                         ; $50fb: $8b
    add hl, de                                    ; $50fc: $19
    rst $30                                       ; $50fd: $f7
    rlca                                          ; $50fe: $07
    ld d, a                                       ; $50ff: $57
    xor h                                         ; $5100: $ac
    push de                                       ; $5101: $d5
    and a                                         ; $5102: $a7
    or c                                          ; $5103: $b1
    ld d, e                                       ; $5104: $53
    rrca                                          ; $5105: $0f
    sub a                                         ; $5106: $97
    ld e, a                                       ; $5107: $5f
    jr c, jr_067_516f                             ; $5108: $38 $65

    call z, Call_000_37b0                         ; $510a: $cc $b0 $37
    halt                                          ; $510d: $76
    ld a, a                                       ; $510e: $7f
    rla                                           ; $510f: $17
    ld d, e                                       ; $5110: $53
    ld [hl+], a                                   ; $5111: $22
    and $11                                       ; $5112: $e6 $11
    sub l                                         ; $5114: $95
    sub l                                         ; $5115: $95
    cpl                                           ; $5116: $2f
    ld h, $d9                                     ; $5117: $26 $d9
    sbc a                                         ; $5119: $9f
    ld c, a                                       ; $511a: $4f
    jr nc, jr_067_5128                            ; $511b: $30 $0b

    call $e56b                                    ; $511d: $cd $6b $e5
    adc d                                         ; $5120: $8a
    or $18                                        ; $5121: $f6 $18
    ld a, b                                       ; $5123: $78
    ld a, a                                       ; $5124: $7f
    ld [c], a                                     ; $5125: $e2
    add hl, de                                    ; $5126: $19
    ld [hl], c                                    ; $5127: $71

jr_067_5128:
    cp l                                          ; $5128: $bd
    ld [hl], b                                    ; $5129: $70
    ld b, h                                       ; $512a: $44
    sbc l                                         ; $512b: $9d
    add $51                                       ; $512c: $c6 $51
    sbc l                                         ; $512e: $9d
    add $59                                       ; $512f: $c6 $59
    ld c, l                                       ; $5131: $4d
    rst $38                                       ; $5132: $ff
    and h                                         ; $5133: $a4
    ld [hl], b                                    ; $5134: $70
    jp z, $0317                                   ; $5135: $ca $17 $03

    dec bc                                        ; $5138: $0b
    call $856b                                    ; $5139: $cd $6b $85
    cp $63                                        ; $513c: $fe $63
    add [hl]                                      ; $513e: $86

jr_067_513f:
    inc [hl]                                      ; $513f: $34
    jp $fb9b                                      ; $5140: $c3 $9b $fb


    inc bc                                        ; $5143: $03
    sub a                                         ; $5144: $97
    ld hl, $a76a                                  ; $5145: $21 $6a $a7
    cp a                                          ; $5148: $bf
    adc l                                         ; $5149: $8d
    sbc h                                         ; $514a: $9c
    ld c, l                                       ; $514b: $4d
    rra                                           ; $514c: $1f
    db $db                                        ; $514d: $db

jr_067_514e:
    add h                                         ; $514e: $84
    ld [hl], e                                    ; $514f: $73

Call_067_5150:
    ld a, a                                       ; $5150: $7f
    add hl, bc                                    ; $5151: $09
    ld sp, $a70b                                  ; $5152: $31 $0b $a7
    xor e                                         ; $5155: $ab
    inc bc                                        ; $5156: $03
    xor e                                         ; $5157: $ab
    add sp, $74                                   ; $5158: $e8 $74
    push bc                                       ; $515a: $c5
    and a                                         ; $515b: $a7

jr_067_515c:
    push af                                       ; $515c: $f5
    jr c, jr_067_515c                             ; $515d: $38 $fd

    ld l, c                                       ; $515f: $69

jr_067_5160:
    dec c                                         ; $5160: $0d
    ldh a, [$0d]                                  ; $5161: $f0 $0d
    xor d                                         ; $5163: $aa
    cp h                                          ; $5164: $bc
    cp e                                          ; $5165: $bb
    ld c, l                                       ; $5166: $4d
    jr c, @-$09                                   ; $5167: $38 $f5

    ld b, a                                       ; $5169: $47
    ld [hl], l                                    ; $516a: $75
    ld a, [bc]                                    ; $516b: $0a
    push af                                       ; $516c: $f5
    ld h, c                                       ; $516d: $61
    or h                                          ; $516e: $b4

jr_067_516f:
    ld c, [hl]                                    ; $516f: $4e
    jp $f363                                      ; $5170: $c3 $63 $f3


    add h                                         ; $5173: $84
    cp c                                          ; $5174: $b9
    ccf                                           ; $5175: $3f
    sub a                                         ; $5176: $97
    jr c, jr_067_513f                             ; $5177: $38 $c6

    jr nc, jr_067_5160                            ; $5179: $30 $e5

    ld c, a                                       ; $517b: $4f
    rrca                                          ; $517c: $0f
    dec c                                         ; $517d: $0d
    ld a, [hl+]                                   ; $517e: $2a
    ld [$9a16], a                                 ; $517f: $ea $16 $9a
    db $ed                                        ; $5182: $ed
    inc d                                         ; $5183: $14
    push de                                       ; $5184: $d5
    sbc a                                         ; $5185: $9f
    nop                                           ; $5186: $00
    add e                                         ; $5187: $83
    inc e                                         ; $5188: $1c
    xor l                                         ; $5189: $ad
    ld hl, $506d                                  ; $518a: $21 $6d $50
    and l                                         ; $518d: $a5
    sub l                                         ; $518e: $95
    db $dd                                        ; $518f: $dd
    ld [hl-], a                                   ; $5190: $32
    ld l, c                                       ; $5191: $69
    ld b, c                                       ; $5192: $41
    or h                                          ; $5193: $b4
    xor h                                         ; $5194: $ac
    rst $30                                       ; $5195: $f7
    rlca                                          ; $5196: $07
    add hl, bc                                    ; $5197: $09
    sbc d                                         ; $5198: $9a
    rst $18                                       ; $5199: $df
    ld a, [bc]                                    ; $519a: $0a
    sbc d                                         ; $519b: $9a
    pop de                                        ; $519c: $d1
    or h                                          ; $519d: $b4
    ld [hl], c                                    ; $519e: $71
    dec b                                         ; $519f: $05
    adc c                                         ; $51a0: $89

Jump_067_51a1:
    sbc b                                         ; $51a1: $98
    ld d, c                                       ; $51a2: $51
    cpl                                           ; $51a3: $2f
    db $ec                                        ; $51a4: $ec
    add l                                         ; $51a5: $85
    xor c                                         ; $51a6: $a9
    and h                                         ; $51a7: $a4
    sub [hl]                                      ; $51a8: $96
    jp hl                                         ; $51a9: $e9


    ld sp, $da96                                  ; $51aa: $31 $96 $da
    db $ec                                        ; $51ad: $ec
    xor b                                         ; $51ae: $a8
    push af                                       ; $51af: $f5
    jp nz, $a05e                                  ; $51b0: $c2 $5e $a0

    ld d, $9a                                     ; $51b3: $16 $9a
    add l                                         ; $51b5: $85
    db $d3                                        ; $51b6: $d3
    rst $18                                       ; $51b7: $df
    add hl, de                                    ; $51b8: $19
    inc bc                                        ; $51b9: $03
    push af                                       ; $51ba: $f5
    cp $00                                        ; $51bb: $fe $00
    add hl, bc                                    ; $51bd: $09
    sbc d                                         ; $51be: $9a
    rst $00                                       ; $51bf: $c7
    sub l                                         ; $51c0: $95
    ld e, l                                       ; $51c1: $5d
    pop bc                                        ; $51c2: $c1
    sbc d                                         ; $51c3: $9a
    ld [hl], d                                    ; $51c4: $72
    xor b                                         ; $51c5: $a8

Call_067_51c6:
    ld [hl], a                                    ; $51c6: $77
    ld e, [hl]                                    ; $51c7: $5e
    add hl, sp                                    ; $51c8: $39
    db $fd                                        ; $51c9: $fd
    sbc l                                         ; $51ca: $9d
    ld sp, $3c06                                  ; $51cb: $31 $06 $3c
    sbc e                                         ; $51ce: $9b
    ei                                            ; $51cf: $fb
    inc bc                                        ; $51d0: $03
    sub a                                         ; $51d1: $97
    ld b, c                                       ; $51d2: $41
    ld d, [hl]                                    ; $51d3: $56
    cp d                                          ; $51d4: $ba
    sub a                                         ; $51d5: $97
    and a                                         ; $51d6: $a7
    ld [de], a                                    ; $51d7: $12
    ld c, e                                       ; $51d8: $4b
    ld [hl], d                                    ; $51d9: $72
    xor h                                         ; $51da: $ac
    ld d, h                                       ; $51db: $54
    rra                                           ; $51dc: $1f
    ld a, a                                       ; $51dd: $7f
    sbc [hl]                                      ; $51de: $9e
    and [hl]                                      ; $51df: $a6
    inc e                                         ; $51e0: $1c
    ld a, [de]                                    ; $51e1: $1a
    ret c                                         ; $51e2: $d8

    dec a                                         ; $51e3: $3d
    sub [hl]                                      ; $51e4: $96
    db $fc                                        ; $51e5: $fc
    inc h                                         ; $51e6: $24
    cp e                                          ; $51e7: $bb
    jp nz, $a6ae                                  ; $51e8: $c2 $ae $a6

    inc e                                         ; $51eb: $1c

jr_067_51ec:
    ld a, [hl-]                                   ; $51ec: $3a
    ld e, l                                       ; $51ed: $5d
    cp l                                          ; $51ee: $bd
    ei                                            ; $51ef: $fb
    inc bc                                        ; $51f0: $03
    add hl, bc                                    ; $51f1: $09
    ld [$a6c3], a                                 ; $51f2: $ea $c3 $a6
    add hl, hl                                    ; $51f5: $29
    add a                                         ; $51f6: $87
    or d                                          ; $51f7: $b2
    adc e                                         ; $51f8: $8b
    set 5, b                                      ; $51f9: $cb $e8
    ccf                                           ; $51fb: $3f
    ld h, [hl]                                    ; $51fc: $66
    xor h                                         ; $51fd: $ac
    call nz, $1c92                                ; $51fe: $c4 $92 $1c
    ld l, e                                       ; $5201: $6b
    add b                                         ; $5202: $80
    ld h, [hl]                                    ; $5203: $66
    halt                                          ; $5204: $76
    add l                                         ; $5205: $85
    ld e, l                                       ; $5206: $5d
    and d                                         ; $5207: $a2
    ld a, [hl+]                                   ; $5208: $2a
    ld h, d                                       ; $5209: $62
    ld [hl], d                                    ; $520a: $72
    db $ec                                        ; $520b: $ec
    cp $00                                        ; $520c: $fe $00
    dec sp                                        ; $520e: $3b
    ret nc                                        ; $520f: $d0

    ld a, a                                       ; $5210: $7f
    ld h, d                                       ; $5211: $62
    ld a, [hl]                                    ; $5212: $7e
    pop de                                        ; $5213: $d1
    pop de                                        ; $5214: $d1
    jp z, $b0fa                                   ; $5215: $ca $fa $b0

    nop                                           ; $5218: $00
    db $eb                                        ; $5219: $eb
    rst $28                                       ; $521a: $ef
    ld h, d                                       ; $521b: $62

jr_067_521c:
    sub d                                         ; $521c: $92
    ld [hl], d                                    ; $521d: $72
    or h                                          ; $521e: $b4
    ld c, [hl]                                    ; $521f: $4e
    or d                                          ; $5220: $b2
    ld [hl], d                                    ; $5221: $72
    db $10                                        ; $5222: $10
    ret c                                         ; $5223: $d8

    ld a, a                                       ; $5224: $7f
    inc h                                         ; $5225: $24
    db $e4                                        ; $5226: $e4
    jr jr_067_521c                                ; $5227: $18 $f3

    ld e, e                                       ; $5229: $5b
    or c                                          ; $522a: $b1
    sub b                                         ; $522b: $90
    ld d, l                                       ; $522c: $55
    rst $00                                       ; $522d: $c7
    ld h, $27                                     ; $522e: $26 $27
    ld a, [de]                                    ; $5230: $1a
    rst $28                                       ; $5231: $ef
    rrca                                          ; $5232: $0f
    ld e, e                                       ; $5233: $5b
    or c                                          ; $5234: $b1
    inc h                                         ; $5235: $24
    rst $00                                       ; $5236: $c7
    xor d                                         ; $5237: $aa
    ld h, e                                       ; $5238: $63
    add hl, de                                    ; $5239: $19
    dec c                                         ; $523a: $0d
    ret nc                                        ; $523b: $d0

    call z, $b0ae                                 ; $523c: $cc $ae $b0
    db $eb                                        ; $523f: $eb
    cp $00                                        ; $5240: $fe $00
    add hl, bc                                    ; $5242: $09
    ld [$a6c3], a                                 ; $5243: $ea $c3 $a6
    add hl, hl                                    ; $5246: $29
    add a                                         ; $5247: $87
    ld b, $68                                     ; $5248: $06 $68
    ld h, [hl]                                    ; $524a: $66
    ld d, a                                       ; $524b: $57
    ret c                                         ; $524c: $d8

    push de                                       ; $524d: $d5
    jr z, jr_067_51ec                             ; $524e: $28 $9c

    ld a, d                                       ; $5250: $7a
    ld e, a                                       ; $5251: $5f
    jp z, Jump_067_59a1                           ; $5252: $ca $a1 $59

    jr c, jr_067_52a4                             ; $5255: $38 $4d

    dec de                                        ; $5257: $1b
    ld d, a                                       ; $5258: $57
    sub b                                         ; $5259: $90
    adc b                                         ; $525a: $88
    add hl, de                                    ; $525b: $19
    push af                                       ; $525c: $f5
    jp nz, $185e                                  ; $525d: $c2 $5e $18

    ld d, c                                       ; $5260: $51
    dec d                                         ; $5261: $15
    ld sp, $7639                                  ; $5262: $31 $39 $76
    ld a, a                                       ; $5265: $7f
    db $db                                        ; $5266: $db
    xor e                                         ; $5267: $ab
    adc b                                         ; $5268: $88
    ret                                           ; $5269: $c9


    or c                                          ; $526a: $b1
    xor [hl]                                      ; $526b: $ae
    xor e                                         ; $526c: $ab
    ld [hl], h                                    ; $526d: $74
    cpl                                           ; $526e: $2f
    ld c, a                                       ; $526f: $4f
    rst $38                                       ; $5270: $ff
    ld sp, $180a                                  ; $5271: $31 $0a $18
    sbc l                                         ; $5274: $9d
    ei                                            ; $5275: $fb
    inc bc                                        ; $5276: $03
    rst $20                                       ; $5277: $e7
    jr jr_067_52d1                                ; $5278: $18 $57

    ld d, e                                       ; $527a: $53
    ld a, a                                       ; $527b: $7f
    xor h                                         ; $527c: $ac
    add [hl]                                      ; $527d: $86
    or h                                          ; $527e: $b4
    ld b, c                                       ; $527f: $41
    sub l                                         ; $5280: $95
    ld d, [hl]                                    ; $5281: $56
    sbc a                                         ; $5282: $9f
    add $8e                                       ; $5283: $c6 $8e
    set 0, [hl]                                   ; $5285: $cb $c6
    ld l, $2e                                     ; $5287: $2e $2e
    ld d, e                                       ; $5289: $53
    ld d, h                                       ; $528a: $54
    ld b, l                                       ; $528b: $45
    ld c, h                                       ; $528c: $4c
    adc [hl]                                      ; $528d: $8e
    ld a, l                                       ; $528e: $7d
    add hl, bc                                    ; $528f: $09
    sbc d                                         ; $5290: $9a
    rst $00                                       ; $5291: $c7
    sub l                                         ; $5292: $95
    ld e, l                                       ; $5293: $5d
    pop bc                                        ; $5294: $c1
    sbc d                                         ; $5295: $9a
    ld [hl], d                                    ; $5296: $72
    ld l, b                                       ; $5297: $68
    inc d                                         ; $5298: $14
    ld c, [hl]                                    ; $5299: $4e
    inc bc                                        ; $529a: $03
    db $f4                                        ; $529b: $f4
    ld l, c                                       ; $529c: $69
    add $fd                                       ; $529d: $c6 $fd
    ld bc, $fbdb                                  ; $529f: $01 $db $fb
    dec sp                                        ; $52a2: $3b
    ld h, e                                       ; $52a3: $63

jr_067_52a4:
    inc c                                         ; $52a4: $0c
    ld a, b                                       ; $52a5: $78
    ld [hl], $f5                                  ; $52a6: $36 $f5
    rst $00                                       ; $52a8: $c7
    ld a, [bc]                                    ; $52a9: $0a
    call $972c                                    ; $52aa: $cd $2c $97
    db $ec                                        ; $52ad: $ec
    adc h                                         ; $52ae: $8c
    dec d                                         ; $52af: $15
    or b                                          ; $52b0: $b0
    sub $69                                       ; $52b1: $d6 $69
    ret nz                                        ; $52b3: $c0

    ld a, [bc]                                    ; $52b4: $0a
    db $fd                                        ; $52b5: $fd
    daa                                           ; $52b6: $27
    ld h, $f1                                     ; $52b7: $26 $f1
    jp $81ea                                      ; $52b9: $c3 $ea $81


    cp h                                          ; $52bc: $bc
    ccf                                           ; $52bd: $3f
    add hl, bc                                    ; $52be: $09
    sbc d                                         ; $52bf: $9a
    rst $10                                       ; $52c0: $d7
    jp z, $b1e6                                   ; $52c1: $ca $e6 $b1

    ld c, b                                       ; $52c4: $48
    db $db                                        ; $52c5: $db
    xor b                                         ; $52c6: $a8
    add sp, $34                                   ; $52c7: $e8 $34
    adc [hl]                                      ; $52c9: $8e
    ld [$5ff4], a                                 ; $52ca: $ea $f4 $5f
    ld e, $62                                     ; $52cd: $1e $62
    ld b, [hl]                                    ; $52cf: $46
    cp l                                          ; $52d0: $bd

jr_067_52d1:
    ld e, h                                       ; $52d1: $5c
    adc l                                         ; $52d2: $8d
    cp l                                          ; $52d3: $bd
    inc a                                         ; $52d4: $3c
    and d                                         ; $52d5: $a2
    ld a, [hl+]                                   ; $52d6: $2a
    ld h, d                                       ; $52d7: $62
    ld [hl], d                                    ; $52d8: $72
    db $ec                                        ; $52d9: $ec
    cp $00                                        ; $52da: $fe $00
    add hl, bc                                    ; $52dc: $09
    pop af                                        ; $52dd: $f1
    sbc a                                         ; $52de: $9f
    sbc b                                         ; $52df: $98
    adc l                                         ; $52e0: $8d
    sbc d                                         ; $52e1: $9a
    pop de                                        ; $52e2: $d1
    jp hl                                         ; $52e3: $e9


    ld l, a                                       ; $52e4: $6f
    inc hl                                        ; $52e5: $23
    ld h, a                                       ; $52e6: $67
    db $d3                                        ; $52e7: $d3
    rlca                                          ; $52e8: $07
    add hl, bc                                    ; $52e9: $09
    pop af                                        ; $52ea: $f1
    sbc a                                         ; $52eb: $9f
    sbc b                                         ; $52ec: $98
    dec c                                         ; $52ed: $0d
    rst $28                                       ; $52ee: $ef
    xor [hl]                                      ; $52ef: $ae
    ld a, b                                       ; $52f0: $78
    jp z, Jump_067_42bd                           ; $52f1: $ca $bd $42

    di                                            ; $52f4: $f3
    ld e, d                                       ; $52f5: $5a
    reti                                          ; $52f6: $d9


    ccf                                           ; $52f7: $3f
    ret                                           ; $52f8: $c9


    dec d                                         ; $52f9: $15
    ld a, [de]                                    ; $52fa: $1a
    and [hl]                                      ; $52fb: $a6
    rst $38                                       ; $52fc: $ff
    ld a, b                                       ; $52fd: $78
    dec c                                         ; $52fe: $0d
    ld [hl], a                                    ; $52ff: $77
    ld [hl], a                                    ; $5300: $77
    ret nc                                        ; $5301: $d0

    di                                            ; $5302: $f3
    ret c                                         ; $5303: $d8

    sub h                                         ; $5304: $94
    ld b, e                                       ; $5305: $43
    di                                            ; $5306: $f3
    adc e                                         ; $5307: $8b
    ld c, c                                       ; $5308: $49
    halt                                          ; $5309: $76
    ld e, c                                       ; $530a: $59
    xor e                                         ; $530b: $ab
    sub e                                         ; $530c: $93
    sub l                                         ; $530d: $95
    inc de                                        ; $530e: $13
    dec [hl]                                      ; $530f: $35
    db $db                                        ; $5310: $db
    ld l, h                                       ; $5311: $6c
    ld a, [$db00]                                 ; $5312: $fa $00 $db
    adc l                                         ; $5315: $8d
    add l                                         ; $5316: $85
    ld a, [hl+]                                   ; $5317: $2a
    ld b, l                                       ; $5318: $45
    adc l                                         ; $5319: $8d
    jp nz, $9bb9                                  ; $531a: $c2 $b9 $9b

    and b                                         ; $531d: $a0
    ld a, $8c                                     ; $531e: $3e $8c
    dec hl                                        ; $5320: $2b
    ld [hl], $a0                                  ; $5321: $36 $a0
    rst $20                                       ; $5323: $e7
    db $db                                        ; $5324: $db
    adc e                                         ; $5325: $8b
    jp hl                                         ; $5326: $e9


    ret                                           ; $5327: $c9


    ld e, c                                       ; $5328: $59
    db $eb                                        ; $5329: $eb
    ld h, h                                       ; $532a: $64
    dec h                                         ; $532b: $25
    sub [hl]                                      ; $532c: $96
    db $e4                                        ; $532d: $e4
    ld e, b                                       ; $532e: $58
    rst $38                                       ; $532f: $ff
    adc c                                         ; $5330: $89
    reti                                          ; $5331: $d9


    ld h, [hl]                                    ; $5332: $66
    sbc c                                         ; $5333: $99
    ld b, $f4                                     ; $5334: $06 $f4
    ld b, l                                       ; $5336: $45
    cpl                                           ; $5337: $2f
    inc [hl]                                      ; $5338: $34
    ld [hl], e                                    ; $5339: $73
    db $fd                                        ; $533a: $fd
    pop bc                                        ; $533b: $c1
    ret nc                                        ; $533c: $d0

    cp e                                          ; $533d: $bb
    db $db                                        ; $533e: $db
    dec de                                        ; $533f: $1b
    sub c                                         ; $5340: $91
    sbc $fd                                       ; $5341: $de $fd
    ld a, a                                       ; $5343: $7f
    ld d, e                                       ; $5344: $53
    ld l, b                                       ; $5345: $68
    ld e, [hl]                                    ; $5346: $5e
    db $eb                                        ; $5347: $eb
    ccf                                           ; $5348: $3f
    pop af                                        ; $5349: $f1
    ld e, a                                       ; $534a: $5f
    call c, Call_067_616e                         ; $534b: $dc $6e $61
    xor $9e                                       ; $534e: $ee $9e
    inc sp                                        ; $5350: $33
    db $ec                                        ; $5351: $ec
    ld [$0d31], a                                 ; $5352: $ea $31 $0d
    reti                                          ; $5355: $d9


    add b                                         ; $5356: $80
    xor [hl]                                      ; $5357: $ae
    ld h, [hl]                                    ; $5358: $66
    ret                                           ; $5359: $c9


    inc l                                         ; $535a: $2c
    cp e                                          ; $535b: $bb
    ld h, l                                       ; $535c: $65
    jp nc, Jump_067_6882                          ; $535d: $d2 $82 $68

    ld e, c                                       ; $5360: $59
    rst $28                                       ; $5361: $ef
    rrca                                          ; $5362: $0f

Jump_067_5363:
    rla                                           ; $5363: $17
    xor [hl]                                      ; $5364: $ae
    push af                                       ; $5365: $f5
    ldh a, [$bc]                                  ; $5366: $f0 $bc
    sub $ec                                       ; $5368: $d6 $ec
    jp nz, $ba88                                  ; $536a: $c2 $88 $ba

    add l                                         ; $536d: $85
    ld h, [hl]                                    ; $536e: $66
    dec sp                                        ; $536f: $3b
    scf                                           ; $5370: $37
    ld a, l                                       ; $5371: $7d
    ld [c], a                                     ; $5372: $e2
    ld a, a                                       ; $5373: $7f
    ld [hl], d                                    ; $5374: $72
    sbc d                                         ; $5375: $9a
    ld [hl], d                                    ; $5376: $72
    xor b                                         ; $5377: $a8
    ld a, $79                                     ; $5378: $3e $79
    ld [hl], a                                    ; $537a: $77
    dec hl                                        ; $537b: $2b
    or l                                          ; $537c: $b5
    ld a, $0d                                     ; $537d: $3e $0d
    ccf                                           ; $537f: $3f
    sbc d                                         ; $5380: $9a
    ld e, l                                       ; $5381: $5d
    sbc b                                         ; $5382: $98
    ld h, [hl]                                    ; $5383: $66
    pop hl                                        ; $5384: $e1
    inc d                                         ; $5385: $14
    sbc d                                         ; $5386: $9a
    adc l                                         ; $5387: $8d
    ld sp, $f739                                  ; $5388: $31 $39 $f7
    ld a, l                                       ; $538b: $7d
    ld a, a                                       ; $538c: $7f
    ld [c], a                                     ; $538d: $e2
    sub l                                         ; $538e: $95
    cpl                                           ; $538f: $2f
    ld h, $59                                     ; $5390: $26 $59
    sbc d                                         ; $5392: $9a
    ld h, h                                       ; $5393: $64
    ld a, b                                       ; $5394: $78
    ld c, e                                       ; $5395: $4b
    sub d                                         ; $5396: $92
    push af                                       ; $5397: $f5
    ld [hl], d                                    ; $5398: $72
    ld c, c                                       ; $5399: $49
    adc [hl]                                      ; $539a: $8e
    cp e                                          ; $539b: $bb
    ld a, e                                       ; $539c: $7b
    add [hl]                                      ; $539d: $86
    ld d, [hl]                                    ; $539e: $56
    ld a, [c]                                     ; $539f: $f2
    ld l, c                                       ; $53a0: $69

Jump_067_53a1:
    cp l                                          ; $53a1: $bd
    ld h, e                                       ; $53a2: $63
    add hl, de                                    ; $53a3: $19
    dec c                                         ; $53a4: $0d
    db $d3                                        ; $53a5: $d3
    sub h                                         ; $53a6: $94
    ld b, e                                       ; $53a7: $43
    pop hl                                        ; $53a8: $e1
    ld [$2a23], a                                 ; $53a9: $ea $23 $2a
    ld d, a                                       ; $53ac: $57
    inc d                                         ; $53ad: $14
    ld [hl], l                                    ; $53ae: $75
    dec bc                                        ; $53af: $0b
    call $3676                                    ; $53b0: $cd $76 $36
    ld [hl], c                                    ; $53b3: $71
    ld [hl], d                                    ; $53b4: $72
    add [hl]                                      ; $53b5: $86
    db $dd                                        ; $53b6: $dd
    rra                                           ; $53b7: $1f
    rst $20                                       ; $53b8: $e7
    ld h, b                                       ; $53b9: $60
    sbc c                                         ; $53ba: $99
    add [hl]                                      ; $53bb: $86
    ld b, a                                       ; $53bc: $47
    ld d, c                                       ; $53bd: $51
    and e                                         ; $53be: $a3
    ld [hl], b                                    ; $53bf: $70
    cp d                                          ; $53c0: $ba
    ld l, [hl]                                    ; $53c1: $6e
    db $d3                                        ; $53c2: $d3
    rlca                                          ; $53c3: $07
    sub a                                         ; $53c4: $97
    ld [c], a                                     ; $53c5: $e2
    rra                                           ; $53c6: $1f
    dec bc                                        ; $53c7: $0b
    db $d3                                        ; $53c8: $d3
    pop de                                        ; $53c9: $d1
    ld c, d                                       ; $53ca: $4a
    jr c, jr_067_543a                             ; $53cb: $38 $6d

    add [hl]                                      ; $53cd: $86
    db $f4                                        ; $53ce: $f4
    ld b, a                                       ; $53cf: $47
    dec de                                        ; $53d0: $1b
    ld d, b                                       ; $53d1: $50
    ld l, b                                       ; $53d2: $68
    halt                                          ; $53d3: $76
    add c                                         ; $53d4: $81
    ld sp, $90a3                                  ; $53d5: $31 $a3 $90
    db $dd                                        ; $53d8: $dd
    ld [hl-], a                                   ; $53d9: $32
    ld l, c                                       ; $53da: $69
    ld b, c                                       ; $53db: $41
    or h                                          ; $53dc: $b4
    xor h                                         ; $53dd: $ac
    ld [hl], a                                    ; $53de: $77
    push bc                                       ; $53df: $c5
    db $eb                                        ; $53e0: $eb
    ld d, e                                       ; $53e1: $53
    sub l                                         ; $53e2: $95
    ld l, c                                       ; $53e3: $69
    ret z                                         ; $53e4: $c8

    ld a, [hl+]                                   ; $53e5: $2a
    ld a, [hl]                                    ; $53e6: $7e
    ld b, e                                       ; $53e7: $43
    ld h, [hl]                                    ; $53e8: $66
    add hl, hl                                    ; $53e9: $29
    ret nz                                        ; $53ea: $c0

    dec b                                         ; $53eb: $05
    xor [hl]                                      ; $53ec: $ae
    cp b                                          ; $53ed: $b8
    ld d, c                                       ; $53ee: $51
    and d                                         ; $53ef: $a2
    db $ec                                        ; $53f0: $ec
    sbc a                                         ; $53f1: $9f
    ld b, h                                       ; $53f2: $44
    sbc d                                         ; $53f3: $9a
    ld d, [hl]                                    ; $53f4: $56
    ret                                           ; $53f5: $c9


    and a                                         ; $53f6: $a7
    dec [hl]                                      ; $53f7: $35
    ld a, [$502f]                                 ; $53f8: $fa $2f $50
    ld [hl+], a                                   ; $53fb: $22
    ld h, [hl]                                    ; $53fc: $66
    ld [hl], h                                    ; $53fd: $74
    ld a, a                                       ; $53fe: $7f
    dec l                                         ; $53ff: $2d
    db $dd                                        ; $5400: $dd
    ld b, d                                       ; $5401: $42
    cp l                                          ; $5402: $bd
    ccf                                           ; $5403: $3f
    db $db                                        ; $5404: $db
    ld a, e                                       ; $5405: $7b
    adc c                                         ; $5406: $89
    ld a, e                                       ; $5407: $7b
    ld h, [hl]                                    ; $5408: $66
    ld e, b                                       ; $5409: $58
    sub [hl]                                      ; $540a: $96
    xor [hl]                                      ; $540b: $ae
    ld l, e                                       ; $540c: $6b
    add [hl]                                      ; $540d: $86
    xor e                                         ; $540e: $ab
    ld l, a                                       ; $540f: $6f
    db $e3                                        ; $5410: $e3
    add l                                         ; $5411: $85
    ld [$a6d8], a                                 ; $5412: $ea $d8 $a6
    sbc [hl]                                      ; $5415: $9e
    set 5, [hl]                                   ; $5416: $cb $ee
    or c                                          ; $5418: $b1
    db $e4                                        ; $5419: $e4
    daa                                           ; $541a: $27
    reti                                          ; $541b: $d9


    dec d                                         ; $541c: $15
    halt                                          ; $541d: $76
    dec [hl]                                      ; $541e: $35
    push hl                                       ; $541f: $e5
    ret nc                                        ; $5420: $d0

    jp hl                                         ; $5421: $e9


    ld [$4235], a                                 ; $5422: $ea $35 $42
    sub $a7                                       ; $5425: $d6 $a7
    pop hl                                        ; $5427: $e1
    ld a, a                                       ; $5428: $7f
    db $ec                                        ; $5429: $ec
    ld d, h                                       ; $542a: $54
    ld b, d                                       ; $542b: $42
    push hl                                       ; $542c: $e5
    call c, Call_067_571f                         ; $542d: $dc $1f $57
    cp h                                          ; $5430: $bc
    ld a, [hl-]                                   ; $5431: $3a
    ret                                           ; $5432: $c9


    ld a, d                                       ; $5433: $7a
    ld e, a                                       ; $5434: $5f
    jp c, $ab19                                   ; $5435: $da $19 $ab

    inc hl                                        ; $5438: $23
    dec a                                         ; $5439: $3d

jr_067_543a:
    or $58                                        ; $543a: $f6 $58
    sbc d                                         ; $543c: $9a
    ld d, c                                       ; $543d: $51
    inc sp                                        ; $543e: $33
    ld l, l                                       ; $543f: $6d
    and e                                         ; $5440: $a3
    and d                                         ; $5441: $a2
    cp $58                                        ; $5442: $fe $58
    sbc c                                         ; $5444: $99
    ld [hl], d                                    ; $5445: $72
    xor a                                         ; $5446: $af
    ld [hl], c                                    ; $5447: $71
    ld e, h                                       ; $5448: $5c
    or [hl]                                       ; $5449: $b6
    ld l, c                                       ; $544a: $69
    ld a, b                                       ; $544b: $78
    cp h                                          ; $544c: $bc
    cp e                                          ; $544d: $bb
    sub l                                         ; $544e: $95
    ld e, d                                       ; $544f: $5a
    ld b, l                                       ; $5450: $45
    ld a, a                                       ; $5451: $7f
    ld l, $49                                     ; $5452: $2e $49
    ld e, d                                       ; $5454: $5a
    and c                                         ; $5455: $a1
    ld a, c                                       ; $5456: $79
    ld e, h                                       ; $5457: $5c
    ld [hl], l                                    ; $5458: $75
    rst $30                                       ; $5459: $f7
    or d                                          ; $545a: $b2
    dec hl                                        ; $545b: $2b
    ld e, b                                       ; $545c: $58
    rst $38                                       ; $545d: $ff
    ld a, c                                       ; $545e: $79
    ld c, d                                       ; $545f: $4a
    cp l                                          ; $5460: $bd
    ccf                                           ; $5461: $3f
    db $db                                        ; $5462: $db
    add $65                                       ; $5463: $c6 $65
    sbc e                                         ; $5465: $9b
    add [hl]                                      ; $5466: $86
    rst $00                                       ; $5467: $c7
    ld b, d                                       ; $5468: $42
    di                                            ; $5469: $f3
    ld e, e                                       ; $546a: $5b
    and c                                         ; $546b: $a1
    ld l, h                                       ; $546c: $6c
    and b                                         ; $546d: $a0
    push de                                       ; $546e: $d5
    ld c, c                                       ; $546f: $49
    halt                                          ; $5470: $76
    sub [hl]                                      ; $5471: $96
    inc h                                         ; $5472: $24
    inc bc                                        ; $5473: $03
    ld d, $96                                     ; $5474: $16 $96
    ld d, e                                       ; $5476: $53
    add hl, bc                                    ; $5477: $09
    rst $10                                       ; $5478: $d7
    di                                            ; $5479: $f3
    ld h, [hl]                                    ; $547a: $66
    ld a, c                                       ; $547b: $79
    db $d3                                        ; $547c: $d3
    xor l                                         ; $547d: $ad
    ld c, h                                       ; $547e: $4c
    cp a                                          ; $547f: $bf
    cp e                                          ; $5480: $bb
    ld e, e                                       ; $5481: $5b
    xor c                                         ; $5482: $a9
    dec d                                         ; $5483: $15
    or b                                          ; $5484: $b0
    ld d, [hl]                                    ; $5485: $56
    adc c                                         ; $5486: $89
    ld b, d                                       ; $5487: $42
    ld d, e                                       ; $5488: $53
    ld c, $ff                                     ; $5489: $0e $ff
    ld l, e                                       ; $548b: $6b
    ld b, b                                       ; $548c: $40
    di                                            ; $548d: $f3
    inc b                                         ; $548e: $04
    ld l, d                                       ; $548f: $6a
    xor c                                         ; $5490: $a9
    db $fd                                        ; $5491: $fd
    ld b, a                                       ; $5492: $47
    ld a, d                                       ; $5493: $7a
    ld e, [hl]                                    ; $5494: $5e
    db $e4                                        ; $5495: $e4
    ld a, [$a183]                                 ; $5496: $fa $83 $a1
    sub l                                         ; $5499: $95
    ld l, e                                       ; $549a: $6b
    jp hl                                         ; $549b: $e9


    rst $30                                       ; $549c: $f7
    ld d, e                                       ; $549d: $53
    dec de                                        ; $549e: $1b
    ret nc                                        ; $549f: $d0

    rst $18                                       ; $54a0: $df
    ld b, [hl]                                    ; $54a1: $46
    adc [hl]                                      ; $54a2: $8e
    sbc $1f                                       ; $54a3: $de $1f
    rla                                           ; $54a5: $17
    xor [hl]                                      ; $54a6: $ae
    dec [hl]                                      ; $54a7: $35
    and b                                         ; $54a8: $a0
    xor e                                         ; $54a9: $ab
    ld e, c                                       ; $54aa: $59
    ld [hl-], a                                   ; $54ab: $32
    ld b, l                                       ; $54ac: $45
    db $dd                                        ; $54ad: $dd
    ld b, d                                       ; $54ae: $42
    or e                                          ; $54af: $b3
    sbc l                                         ; $54b0: $9d
    sbc e                                         ; $54b1: $9b
    ld a, d                                       ; $54b2: $7a
    ld b, [hl]                                    ; $54b3: $46
    dec d                                         ; $54b4: $15
    jp nc, $d437                                  ; $54b5: $d2 $37 $d4

    inc sp                                        ; $54b8: $33
    or d                                          ; $54b9: $b2
    dec hl                                        ; $54ba: $2b
    ld e, b                                       ; $54bb: $58
    sbc l                                         ; $54bc: $9d
    ld l, h                                       ; $54bd: $6c
    ld [c], a                                     ; $54be: $e2
    db $e4                                        ; $54bf: $e4
    inc c                                         ; $54c0: $0c
    ld l, e                                       ; $54c1: $6b
    ld h, h                                       ; $54c2: $64
    rst $08                                       ; $54c3: $cf
    ld a, l                                       ; $54c4: $7d
    ld c, h                                       ; $54c5: $4c
    ld c, a                                       ; $54c6: $4f
    call c, $be28                                 ; $54c7: $dc $28 $be
    call c, $e71f                                 ; $54ca: $dc $1f $e7
    xor [hl]                                      ; $54cd: $ae
    push af                                       ; $54ce: $f5
    ld [hl], a                                    ; $54cf: $77
    jp nc, Jump_000_27b7                          ; $54d0: $d2 $b7 $27

    ld de, $68f3                                  ; $54d3: $11 $f3 $68
    dec h                                         ; $54d6: $25
    sbc h                                         ; $54d7: $9c
    sub [hl]                                      ; $54d8: $96
    db $d3                                        ; $54d9: $d3
    ld [hl], e                                    ; $54da: $73
    sbc l                                         ; $54db: $9d
    db $f4                                        ; $54dc: $f4
    inc l                                         ; $54dd: $2c
    ld [$1063], sp                                ; $54de: $08 $63 $10
    ld [hl], l                                    ; $54e1: $75
    dec bc                                        ; $54e2: $0b
    call $de76                                    ; $54e3: $cd $76 $de
    rra                                           ; $54e6: $1f
    ld [c], a                                     ; $54e7: $e2
    cpl                                           ; $54e8: $2f
    ld b, $36                                     ; $54e9: $06 $36
    ld a, [bc]                                    ; $54eb: $0a
    ld b, a                                       ; $54ec: $47
    call nc, $988c                                ; $54ed: $d4 $8c $98
    sbc h                                         ; $54f0: $9c
    ld b, $34                                     ; $54f1: $06 $34
    ld h, b                                       ; $54f3: $60
    dec [hl]                                      ; $54f4: $35
    rrc d                                         ; $54f5: $cb $0a
    ld d, [hl]                                    ; $54f7: $56
    or $4f                                        ; $54f8: $f6 $4f
    ld [hl], d                                    ; $54fa: $72
    add l                                         ; $54fb: $85
    ei                                            ; $54fc: $fb
    inc bc                                        ; $54fd: $03
    adc c                                         ; $54fe: $89
    ld [hl], $5e                                  ; $54ff: $36 $5e
    xor b                                         ; $5501: $a8
    adc [hl]                                      ; $5502: $8e
    push af                                       ; $5503: $f5
    sbc h                                         ; $5504: $9c
    rla                                           ; $5505: $17
    and e                                         ; $5506: $a3
    ld l, [hl]                                    ; $5507: $6e
    ld a, [$d700]                                 ; $5508: $fa $00 $d7
    db $ec                                        ; $550b: $ec
    jp c, $ebb5                                   ; $550c: $da $b5 $eb

    cp [hl]                                       ; $550f: $be
    rst $28                                       ; $5510: $ef
    and d                                         ; $5511: $a2
    pop de                                        ; $5512: $d1
    push bc                                       ; $5513: $c5
    sbc a                                         ; $5514: $9f
    push af                                       ; $5515: $f5
    ld h, c                                       ; $5516: $61
    ccf                                           ; $5517: $3f
    inc a                                         ; $5518: $3c
    jr nc, @-$34                                  ; $5519: $30 $ca

    and [hl]                                      ; $551b: $a6
    inc e                                         ; $551c: $1c
    jp z, $d4fa                                   ; $551d: $ca $fa $d4

    db $fc                                        ; $5520: $fc
    sub [hl]                                      ; $5521: $96
    inc h                                         ; $5522: $24
    adc e                                         ; $5523: $8b
    ld h, l                                       ; $5524: $65
    ld c, l                                       ; $5525: $4d
    di                                            ; $5526: $f3
    ei                                            ; $5527: $fb
    add hl, hl                                    ; $5528: $29
    ld l, d                                       ; $5529: $6a
    ld h, h                                       ; $552a: $64
    ld d, a                                       ; $552b: $57
    or b                                          ; $552c: $b0
    ret nz                                        ; $552d: $c0

    nop                                           ; $552e: $00
    ld d, c                                       ; $552f: $51
    rst $10                                       ; $5530: $d7
    ld d, l                                       ; $5531: $55
    xor [hl]                                      ; $5532: $ae
    and l                                         ; $5533: $a5
    rst $18                                       ; $5534: $df
    rst $08                                       ; $5535: $cf
    ei                                            ; $5536: $fb
    cp [hl]                                       ; $5537: $be
    cp e                                          ; $5538: $bb
    dec a                                         ; $5539: $3d
    add hl, hl                                    ; $553a: $29
    ld [$6b2c], a                                 ; $553b: $ea $2c $6b
    and d                                         ; $553e: $a2
    ld l, [hl]                                    ; $553f: $6e
    and c                                         ; $5540: $a1
    reti                                          ; $5541: $d9


    adc $fb                                       ; $5542: $ce $fb
    inc bc                                        ; $5544: $03
    sub a                                         ; $5545: $97
    ld hl, $a726                                  ; $5546: $21 $26 $a7
    db $d3                                        ; $5549: $d3
    call Call_067_7236                            ; $554a: $cd $36 $72
    ld a, [de]                                    ; $554d: $1a
    ret nc                                        ; $554e: $d0

    di                                            ; $554f: $f3
    ldh a, [$f2]                                  ; $5550: $f0 $f2
    ei                                            ; $5552: $fb
    pop af                                        ; $5553: $f1
    ld l, h                                       ; $5554: $6c
    or h                                          ; $5555: $b4
    add sp, $39                                   ; $5556: $e8 $39
    and $04                                       ; $5558: $e6 $04
    ld d, e                                       ; $555a: $53
    ld a, e                                       ; $555b: $7b
    ld e, $e5                                     ; $555c: $1e $e5
    add sp, $68                                   ; $555e: $e8 $68
    rst $38                                       ; $5560: $ff
    sub c                                         ; $5561: $91

jr_067_5562:
    ld h, l                                       ; $5562: $65
    scf                                           ; $5563: $37
    ccf                                           ; $5564: $3f
    ei                                            ; $5565: $fb
    ld [hl], c                                    ; $5566: $71
    ld a, a                                       ; $5567: $7f
    dec sp                                        ; $5568: $3b
    sbc [hl]                                      ; $5569: $9e
    inc d                                         ; $556a: $14
    push de                                       ; $556b: $d5
    ld b, a                                       ; $556c: $47
    call nc, $ca69                                ; $556d: $d4 $69 $ca
    and c                                         ; $5570: $a1
    db $eb                                        ; $5571: $eb
    ld a, [hl-]                                   ; $5572: $3a
    sub l                                         ; $5573: $95
    ld d, b                                       ; $5574: $50
    add hl, sp                                    ; $5575: $39
    db $fd                                        ; $5576: $fd
    ld l, l                                       ; $5577: $6d
    db $e4                                        ; $5578: $e4
    call c, Call_067_4add                         ; $5579: $dc $dd $4a

jr_067_557c:
    dec l                                         ; $557c: $2d
    rst $38                                       ; $557d: $ff
    db $e4                                        ; $557e: $e4
    inc [hl]                                      ; $557f: $34
    push hl                                       ; $5580: $e5
    ret nc                                        ; $5581: $d0

    ld l, c                                       ; $5582: $69
    add [hl]                                      ; $5583: $86
    xor e                                         ; $5584: $ab
    rst $08                                       ; $5585: $cf
    rst $10                                       ; $5586: $d7
    inc h                                         ; $5587: $24
    ld d, a                                       ; $5588: $57
    adc a                                         ; $5589: $8f
    dec c                                         ; $558a: $0d
    ld l, b                                       ; $558b: $68
    jp z, Jump_067_60c1                           ; $558c: $ca $c1 $60

    ld c, l                                       ; $558f: $4d
    add hl, sp                                    ; $5590: $39
    call nc, $aa3b                                ; $5591: $d4 $3b $aa
    ret nc                                        ; $5594: $d0

    ld h, [hl]                                    ; $5595: $66
    ld d, a                                       ; $5596: $57
    sub $fb                                       ; $5597: $d6 $fb
    ld a, [hl]                                    ; $5599: $7e
    ld e, d                                       ; $559a: $5a
    rst $38                                       ; $559b: $ff
    sub c                                         ; $559c: $91
    push bc                                       ; $559d: $c5
    add d                                         ; $559e: $82
    ei                                            ; $559f: $fb
    inc bc                                        ; $55a0: $03
    db $db                                        ; $55a1: $db
    dec a                                         ; $55a2: $3d
    or $d2                                        ; $55a3: $f6 $d2
    inc c                                         ; $55a5: $0c
    inc hl                                        ; $55a6: $23
    xor d                                         ; $55a7: $aa
    ld l, a                                       ; $55a8: $6f
    db $e3                                        ; $55a9: $e3
    add l                                         ; $55aa: $85
    ld [$cf58], a                                 ; $55ab: $ea $58 $cf
    ld a, c                                       ; $55ae: $79
    ld sp, $86ea                                  ; $55af: $31 $ea $86
    rrca                                          ; $55b2: $0f
    adc c                                         ; $55b3: $89
    inc de                                        ; $55b4: $13
    jr nz, jr_067_5562                            ; $55b5: $20 $ab

    ld a, h                                       ; $55b7: $7c
    halt                                          ; $55b8: $76
    rst $18                                       ; $55b9: $df
    rst $30                                       ; $55ba: $f7
    db $dd                                        ; $55bb: $dd
    ld e, l                                       ; $55bc: $5d
    cp e                                          ; $55bd: $bb
    halt                                          ; $55be: $76
    db $ed                                        ; $55bf: $ed
    jp c, $ebb5                                   ; $55c0: $da $b5 $eb

    cp [hl]                                       ; $55c3: $be
    rst $28                                       ; $55c4: $ef
    ei                                            ; $55c5: $fb
    cp $00                                        ; $55c6: $fe $00
    rst $10                                       ; $55c8: $d7
    db $ec                                        ; $55c9: $ec
    jp c, $ebb5                                   ; $55ca: $da $b5 $eb

    cp [hl]                                       ; $55cd: $be
    rst $28                                       ; $55ce: $ef
    ei                                            ; $55cf: $fb
    inc bc                                        ; $55d0: $03
    rla                                           ; $55d1: $17
    ld l, b                                       ; $55d2: $68
    sbc [hl]                                      ; $55d3: $9e
    xor [hl]                                      ; $55d4: $ae
    xor e                                         ; $55d5: $ab
    sub e                                         ; $55d6: $93
    inc l                                         ; $55d7: $2c
    db $dd                                        ; $55d8: $dd
    jp nz, $2b8e                                  ; $55d9: $c2 $8e $2b

    sbc e                                         ; $55dc: $9b
    inc e                                         ; $55dd: $1c
    ld h, e                                       ; $55de: $63
    inc bc                                        ; $55df: $03
    xor e                                         ; $55e0: $ab
    ret nc                                        ; $55e1: $d0

    call z, Call_000_1f4d                         ; $55e2: $cc $4d $1f
    sub a                                         ; $55e5: $97
    jr c, jr_067_557c                             ; $55e6: $38 $94

    ld l, [hl]                                    ; $55e8: $6e
    ld h, c                                       ; $55e9: $61
    or e                                          ; $55ea: $b3
    ld [hl], b                                    ; $55eb: $70
    ld a, [$9927]                                 ; $55ec: $fa $27 $99
    ld a, c                                       ; $55ef: $79
    rst $30                                       ; $55f0: $f7
    ld e, h                                       ; $55f1: $5c
    xor h                                         ; $55f2: $ac
    ld e, $9b                                     ; $55f3: $1e $9b
    ld h, c                                       ; $55f5: $61
    call Call_067_5dc6                            ; $55f6: $cd $c6 $5d
    cpl                                           ; $55f9: $2f
    ld c, h                                       ; $55fa: $4c
    ld d, e                                       ; $55fb: $53
    adc [hl]                                      ; $55fc: $8e
    ld c, e                                       ; $55fd: $4b
    jp z, $fac1                                   ; $55fe: $ca $c1 $fa

    rst $08                                       ; $5601: $cf
    ld d, e                                       ; $5602: $53
    sub $a7                                       ; $5603: $d6 $a7
    or c                                          ; $5605: $b1
    dec bc                                        ; $5606: $0b
    db $ec                                        ; $5607: $ec
    cp $00                                        ; $5608: $fe $00
    db $db                                        ; $560a: $db
    sub a                                         ; $560b: $97
    dec [hl]                                      ; $560c: $35
    ld d, c                                       ; $560d: $51
    ld a, l                                       ; $560e: $7d
    dec de                                        ; $560f: $1b
    cpl                                           ; $5610: $2f
    ld d, h                                       ; $5611: $54
    rst $00                                       ; $5612: $c7
    ld a, d                                       ; $5613: $7a
    sbc $f2                                       ; $5614: $de $f2
    or d                                          ; $5616: $b2
    and b                                         ; $5617: $a0
    rst $30                                       ; $5618: $f7
    dec bc                                        ; $5619: $0b
    cp h                                          ; $561a: $bc
    ccf                                           ; $561b: $3f
    db $db                                        ; $561c: $db
    dec bc                                        ; $561d: $0b
    pop bc                                        ; $561e: $c1
    or b                                          ; $561f: $b0
    ld a, a                                       ; $5620: $7f
    or a                                          ; $5621: $b7
    rst $38                                       ; $5622: $ff
    ld c, l                                       ; $5623: $4d
    inc bc                                        ; $5624: $03
    sbc d                                         ; $5625: $9a
    inc e                                         ; $5626: $1c
    ld bc, $bae8                                  ; $5627: $01 $e8 $ba
    ld [hl+], a                                   ; $562a: $22
    cp $8c                                        ; $562b: $fe $8c
    sbc c                                         ; $562d: $99
    ld d, [hl]                                    ; $562e: $56
    daa                                           ; $562f: $27
    ld e, c                                       ; $5630: $59
    rra                                           ; $5631: $1f
    sub c                                         ; $5632: $91
    push af                                       ; $5633: $f5
    ld l, c                                       ; $5634: $69
    inc l                                         ; $5635: $2c
    ld d, $d6                                     ; $5636: $16 $d6
    cp e                                          ; $5638: $bb
    cp b                                          ; $5639: $b8
    db $ec                                        ; $563a: $ec
    ld l, b                                       ; $563b: $68
    ld [hl], a                                    ; $563c: $77
    ld a, e                                       ; $563d: $7b
    pop hl                                        ; $563e: $e1
    ld e, d                                       ; $563f: $5a
    ld d, e                                       ; $5640: $53
    ld c, $e5                                     ; $5641: $0e $e5
    ld l, [hl]                                    ; $5643: $6e
    add l                                         ; $5644: $85
    and $35                                       ; $5645: $e6 $35
    dec d                                         ; $5647: $15
    ld [hl], l                                    ; $5648: $75
    dec bc                                        ; $5649: $0b
    call $8a76                                    ; $564a: $cd $76 $8a
    ld [$804f], a                                 ; $564d: $ea $4f $80
    ld d, [hl]                                    ; $5650: $56
    ld h, c                                       ; $5651: $61
    call Call_067_6cae                            ; $5652: $cd $ae $6c
    add b                                         ; $5655: $80
    sbc h                                         ; $5656: $9c
    xor b                                         ; $5657: $a8
    reti                                          ; $5658: $d9


    ld l, b                                       ; $5659: $68
    rst $30                                       ; $565a: $f7
    rlca                                          ; $565b: $07
    rst $20                                       ; $565c: $e7
    ld h, d                                       ; $565d: $62
    push af                                       ; $565e: $f5
    ret c                                         ; $565f: $d8

    inc c                                         ; $5660: $0c
    db $db                                        ; $5661: $db
    jr z, jr_067_56b5                             ; $5662: $28 $51

    add sp, $3f                                   ; $5664: $e8 $3f
    ld c, e                                       ; $5666: $4b
    ld a, [c]                                     ; $5667: $f2
    add l                                         ; $5668: $85
    add hl, hl                                    ; $5669: $29
    dec hl                                        ; $566a: $2b
    sbc a                                         ; $566b: $9f
    cp h                                          ; $566c: $bc
    ld a, e                                       ; $566d: $7b
    adc c                                         ; $566e: $89
    and e                                         ; $566f: $a3
    and d                                         ; $5670: $a2
    ld [bc], a                                    ; $5671: $02
    sub $fa                                       ; $5672: $d6 $fa
    ld c, a                                       ; $5674: $4f
    call nc, $9e97                                ; $5675: $d4 $97 $9e
    ld a, [$5887]                                 ; $5678: $fa $87 $58
    ld a, l                                       ; $567b: $7d
    ld b, h                                       ; $567c: $44
    ld l, d                                       ; $567d: $6a
    ld e, c                                       ; $567e: $59
    rst $28                                       ; $567f: $ef
    ld [c], a                                     ; $5680: $e2
    or d                                          ; $5681: $b2
    and e                                         ; $5682: $a3
    db $dd                                        ; $5683: $dd
    rra                                           ; $5684: $1f
    db $db                                        ; $5685: $db
    sub e                                         ; $5686: $93
    and d                                         ; $5687: $a2
    ld [$a293], a                                 ; $5688: $ea $93 $a2
    and [hl]                                      ; $568b: $a6
    inc e                                         ; $568c: $1c
    sbc d                                         ; $568d: $9a
    ld [hl], $c6                                  ; $568e: $36 $c6
    add b                                         ; $5690: $80
    ld a, d                                       ; $5691: $7a
    pop af                                        ; $5692: $f1
    ld a, [c]                                     ; $5693: $f2
    ei                                            ; $5694: $fb
    pop af                                        ; $5695: $f1
    adc h                                         ; $5696: $8c
    ld c, l                                       ; $5697: $4d
    add hl, sp                                    ; $5698: $39
    inc [hl]                                      ; $5699: $34
    cp e                                          ; $569a: $bb
    xor [hl]                                      ; $569b: $ae
    db $d3                                        ; $569c: $d3
    cp e                                          ; $569d: $bb
    db $db                                        ; $569e: $db
    sub a                                         ; $569f: $97
    inc h                                         ; $56a0: $24
    ld b, l                                       ; $56a1: $45
    ld e, l                                       ; $56a2: $5d
    dec e                                         ; $56a3: $1d
    xor b                                         ; $56a4: $a8
    and d                                         ; $56a5: $a2
    ld [hl-], a                                   ; $56a6: $32
    xor a                                         ; $56a7: $af
    xor e                                         ; $56a8: $ab
    ld b, h                                       ; $56a9: $44
    cp l                                          ; $56aa: $bd
    call c, $ad05                                 ; $56ab: $dc $05 $ad
    call $eb42                                    ; $56ae: $cd $42 $eb
    ld l, b                                       ; $56b1: $68
    ld h, a                                       ; $56b2: $67
    ld c, c                                       ; $56b3: $49
    adc [hl]                                      ; $56b4: $8e

jr_067_56b5:
    ld l, [hl]                                    ; $56b5: $6e
    ld hl, sp+$00                                 ; $56b6: $f8 $00
    ld e, e                                       ; $56b8: $5b
    db $dd                                        ; $56b9: $dd
    bit 2, e                                      ; $56ba: $cb $53
    rrca                                          ; $56bc: $0f
    and h                                         ; $56bd: $a4
    xor b                                         ; $56be: $a8
    ld e, e                                       ; $56bf: $5b
    ld l, b                                       ; $56c0: $68
    or [hl]                                       ; $56c1: $b6
    di                                            ; $56c2: $f3
    xor $89                                       ; $56c3: $ee $89
    push af                                       ; $56c5: $f5
    daa                                           ; $56c6: $27
    and $d1                                       ; $56c7: $e6 $d1
    ld a, [$7563]                                 ; $56c9: $fa $63 $75
    or d                                          ; $56cc: $b2
    ld e, $2c                                     ; $56cd: $1e $2c
    db $d3                                        ; $56cf: $d3
    nop                                           ; $56d0: $00
    add l                                         ; $56d1: $85
    db $f4                                        ; $56d2: $f4
    ld de, $7393                                  ; $56d3: $11 $93 $73
    ld a, a                                       ; $56d6: $7f
    sbc e                                         ; $56d7: $9b
    ld e, a                                       ; $56d8: $5f
    db $fc                                        ; $56d9: $fc
    and a                                         ; $56da: $a7
    ret nc                                        ; $56db: $d0

    ld l, h                                       ; $56dc: $6c
    ld e, b                                       ; $56dd: $58
    xor b                                         ; $56de: $a8
    dec de                                        ; $56df: $1b
    ld a, d                                       ; $56e0: $7a
    add hl, de                                    ; $56e1: $19
    and d                                         ; $56e2: $a2
    sub [hl]                                      ; $56e3: $96
    db $fd                                        ; $56e4: $fd
    ld h, c                                       ; $56e5: $61
    add hl, de                                    ; $56e6: $19
    cp e                                          ; $56e7: $bb
    ret c                                         ; $56e8: $d8

    add b                                         ; $56e9: $80
    and [hl]                                      ; $56ea: $a6
    inc e                                         ; $56eb: $1c
    ld a, [de]                                    ; $56ec: $1a
    ld e, l                                       ; $56ed: $5d
    db $fc                                        ; $56ee: $fc
    reti                                          ; $56ef: $d9


    dec b                                         ; $56f0: $05
    xor e                                         ; $56f1: $ab
    sub a                                         ; $56f2: $97
    xor c                                         ; $56f3: $a9
    add hl, de                                    ; $56f4: $19
    push af                                       ; $56f5: $f5
    ld de, $9ba9                                  ; $56f6: $11 $a9 $9b
    ld a, d                                       ; $56f9: $7a
    db $ec                                        ; $56fa: $ec
    ld sp, $27f5                                  ; $56fb: $31 $f5 $27
    and $d1                                       ; $56fe: $e6 $d1
    ld a, [$7563]                                 ; $5700: $fa $63 $75
    or d                                          ; $5703: $b2
    reti                                          ; $5704: $d9


    add sp, -$1f                                  ; $5705: $e8 $e1

Jump_067_5707:
    sub d                                         ; $5707: $92
    sbc h                                         ; $5708: $9c
    ld a, d                                       ; $5709: $7a
    jr nz, @-$13                                  ; $570a: $20 $eb

    push bc                                       ; $570c: $c5
    res 6, e                                      ; $570d: $cb $b3
    pop hl                                        ; $570f: $e1
    inc bc                                        ; $5710: $03
    sbc e                                         ; $5711: $9b
    daa                                           ; $5712: $27
    cp $8b                                        ; $5713: $fe $8b
    db $db                                        ; $5715: $db
    ld c, l                                       ; $5716: $4d
    inc sp                                        ; $5717: $33
    ld a, [hl-]                                   ; $5718: $3a
    add l                                         ; $5719: $85
    ld h, b                                       ; $571a: $60
    ret c                                         ; $571b: $d8

    cp a                                          ; $571c: $bf
    db $db                                        ; $571d: $db
    rst $38                                       ; $571e: $ff

Call_067_571f:
    and [hl]                                      ; $571f: $a6
    sub c                                         ; $5720: $91
    push af                                       ; $5721: $f5
    ld h, c                                       ; $5722: $61
    ld e, [hl]                                    ; $5723: $5e
    cp h                                          ; $5724: $bc
    push af                                       ; $5725: $f5
    jp nz, Jump_067_7511                          ; $5726: $c2 $11 $75

    dec bc                                        ; $5729: $0b
    call Call_067_6e76                            ; $572a: $cd $76 $6e
    add sp, -$4f                                  ; $572d: $e8 $b1
    daa                                           ; $572f: $27
    sub $9f                                       ; $5730: $d6 $9f
    sbc b                                         ; $5732: $98
    ld b, a                                       ; $5733: $47
    db $eb                                        ; $5734: $eb
    ld h, e                                       ; $5735: $63
    ld h, c                                       ; $5736: $61
    ld hl, $c7f8                                  ; $5737: $21 $f8 $c7
    ld [hl], d                                    ; $573a: $72
    ld h, b                                       ; $573b: $60
    db $fc                                        ; $573c: $fc
    rra                                           ; $573d: $1f
    ei                                            ; $573e: $fb
    adc a                                         ; $573f: $8f
    ld l, h                                       ; $5740: $6c
    jp z, Jump_067_53a1                           ; $5741: $ca $a1 $53

    rst $28                                       ; $5744: $ef
    db $db                                        ; $5745: $db
    dec b                                         ; $5746: $05
    call $f0d8                                    ; $5747: $cd $d8 $f0
    ld bc, $84db                                  ; $574a: $01 $db $84
    db $d3                                        ; $574d: $d3
    sbc a                                         ; $574e: $9f
    ld a, [hl]                                    ; $574f: $7e
    and [hl]                                      ; $5750: $a6
    ld h, [hl]                                    ; $5751: $66
    call nc, $f1b7                                ; $5752: $d4 $b7 $f1
    db $ed                                        ; $5755: $ed
    ld d, c                                       ; $5756: $51
    ld [hl+], a                                   ; $5757: $22
    ld h, [hl]                                    ; $5758: $66
    sub h                                         ; $5759: $94
    ld h, l                                       ; $575a: $65
    ld b, [hl]                                    ; $575b: $46
    ld e, h                                       ; $575c: $5c
    cpl                                           ; $575d: $2f
    sbc h                                         ; $575e: $9c
    ld b, $d6                                     ; $575f: $06 $d6
    ld b, a                                       ; $5761: $47
    db $e4                                        ; $5762: $e4
    db $dd                                        ; $5763: $dd
    dec hl                                        ; $5764: $2b
    jr z, jr_067_57ae                             ; $5765: $28 $47

    sbc e                                         ; $5767: $9b
    ld de, $ad33                                  ; $5768: $11 $33 $ad
    ld [hl], c                                    ; $576b: $71
    ld d, [hl]                                    ; $576c: $56
    sub h                                         ; $576d: $94
    adc b                                         ; $576e: $88
    add hl, de                                    ; $576f: $19
    rst $30                                       ; $5770: $f7
    rlca                                          ; $5771: $07
    ld [c], a                                     ; $5772: $e2
    jp hl                                         ; $5773: $e9


    ld sp, $ba8a                                  ; $5774: $31 $8a $ba
    add l                                         ; $5777: $85
    ld h, [hl]                                    ; $5778: $66
    dec sp                                        ; $5779: $3b
    ld b, l                                       ; $577a: $45
    dec c                                         ; $577b: $0d
    adc $5f                                       ; $577c: $ce $5f
    sbc $cf                                       ; $577e: $de $cf
    ld b, d                                       ; $5780: $42
    jr nc, @+$01                                  ; $5781: $30 $ff

    ld c, h                                       ; $5783: $4c
    adc c                                         ; $5784: $89
    sbc b                                         ; $5785: $98
    pop de                                        ; $5786: $d1
    pop de                                        ; $5787: $d1
    ld c, d                                       ; $5788: $4a
    jr c, @-$51                                   ; $5789: $38 $ad

    sbc h                                         ; $578b: $9c
    push de                                       ; $578c: $d5
    sub e                                         ; $578d: $93
    adc b                                         ; $578e: $88
    ld a, c                                       ; $578f: $79
    db $f4                                        ; $5790: $f4
    xor $f6                                       ; $5791: $ee $f6
    ld a, [de]                                    ; $5793: $1a
    inc [hl]                                      ; $5794: $34
    ld c, a                                       ; $5795: $4f
    jp $b968                                      ; $5796: $c3 $68 $b9


    cp b                                          ; $5799: $b8
    jr c, @-$24                                   ; $579a: $38 $da

    add b                                         ; $579c: $80
    dec d                                         ; $579d: $15
    ld a, [hl-]                                   ; $579e: $3a
    ld c, e                                       ; $579f: $4b
    sub d                                         ; $57a0: $92
    sub $7f                                       ; $57a1: $d6 $7f
    ld h, h                                       ; $57a3: $64
    sbc c                                         ; $57a4: $99
    ld de, $0bd7                                  ; $57a5: $11 $d7 $0b
    rst $20                                       ; $57a8: $e7
    cp $00                                        ; $57a9: $fe $00
    rst $20                                       ; $57ab: $e7
    adc h                                         ; $57ac: $8c
    ld l, h                                       ; $57ad: $6c

jr_067_57ae:
    ld [hl], $7a                                  ; $57ae: $36 $7a
    cp b                                          ; $57b0: $b8
    inc h                                         ; $57b1: $24
    ld b, a                                       ; $57b2: $47
    call nc, $342d                                ; $57b3: $d4 $2d $34
    db $db                                        ; $57b6: $db
    cp c                                          ; $57b7: $b9
    and c                                         ; $57b8: $a1
    rst $20                                       ; $57b9: $e7
    db $db                                        ; $57ba: $db

Jump_067_57bb:
    ld c, [hl]                                    ; $57bb: $4e
    xor a                                         ; $57bc: $af
    rst $30                                       ; $57bd: $f7
    push bc                                       ; $57be: $c5
    jr nc, @-$28                                  ; $57bf: $30 $d6

    or c                                          ; $57c1: $b1
    or h                                          ; $57c2: $b4
    ld e, e                                       ; $57c3: $5b
    sub d                                         ; $57c4: $92
    call c, $68a8                                 ; $57c5: $dc $a8 $68
    ld b, b                                       ; $57c8: $40
    di                                            ; $57c9: $f3
    db $db                                        ; $57ca: $db
    ldh a, [rSB]                                  ; $57cb: $f0 $01
    dec sp                                        ; $57cd: $3b
    sbc [hl]                                      ; $57ce: $9e
    inc d                                         ; $57cf: $14
    ld [hl], l                                    ; $57d0: $75
    dec bc                                        ; $57d1: $0b
    call $8a76                                    ; $57d2: $cd $76 $8a
    jp z, $aebc                                   ; $57d5: $ca $bc $ae

    ld [hl], b                                    ; $57d8: $70
    adc l                                         ; $57d9: $8d
    jp nz, Jump_000_34e9                          ; $57da: $c2 $e9 $34

    jp $eb1e                                      ; $57dd: $c3 $1e $eb


    push bc                                       ; $57e0: $c5
    bit 2, e                                      ; $57e1: $cb $53
    adc c                                         ; $57e3: $89
    dec h                                         ; $57e4: $25
    add hl, sp                                    ; $57e5: $39
    halt                                          ; $57e6: $76
    ld a, a                                       ; $57e7: $7f
    ld [c], a                                     ; $57e8: $e2
    adc e                                         ; $57e9: $8b
    adc e                                         ; $57ea: $8b
    and e                                         ; $57eb: $a3
    and d                                         ; $57ec: $a2
    ld a, [$fcc6]                                 ; $57ed: $fa $c6 $fc
    ld d, d                                       ; $57f0: $52
    ld c, $b2                                     ; $57f1: $0e $b2
    and e                                         ; $57f3: $a3
    sub l                                         ; $57f4: $95
    or e                                          ; $57f5: $b3
    ld a, d                                       ; $57f6: $7a
    ld [de], a                                    ; $57f7: $12
    ld sp, $368f                                  ; $57f8: $31 $8f $36
    and b                                         ; $57fb: $a0
    dec hl                                        ; $57fc: $2b
    jp c, Jump_067_498b                           ; $57fd: $da $8b $49

    ld [hl], $e5                                  ; $5800: $36 $e5
    ld d, b                                       ; $5802: $50
    cp b                                          ; $5803: $b8
    and d                                         ; $5804: $a2
    db $d3                                        ; $5805: $d3
    dec l                                         ; $5806: $2d
    inc [hl]                                      ; $5807: $34
    db $db                                        ; $5808: $db
    reti                                          ; $5809: $d9


    push de                                       ; $580a: $d5
    ld l, b                                       ; $580b: $68
    inc bc                                        ; $580c: $03
    db $e4                                        ; $580d: $e4
    ld b, h                                       ; $580e: $44
    call Call_000_26b6                            ; $580f: $cd $b6 $26
    ld b, a                                       ; $5812: $47
    adc e                                         ; $5813: $8b
    ld a, [$9f06]                                 ; $5814: $fa $06 $9f
    ld b, $b9                                     ; $5817: $06 $b9
    ld d, c                                       ; $5819: $51
    ld d, c                                       ; $581a: $51
    sbc a                                         ; $581b: $9f
    add $2e                                       ; $581c: $c6 $2e
    ld e, b                                       ; $581e: $58
    cp l                                          ; $581f: $bd
    ld c, h                                       ; $5820: $4c
    xor e                                         ; $5821: $ab
    sub e                                         ; $5822: $93
    xor h                                         ; $5823: $ac
    adc a                                         ; $5824: $8f
    ret z                                         ; $5825: $c8

    ld b, [hl]                                    ; $5826: $46
    sub $b7                                       ; $5827: $d6 $b7
    db $dd                                        ; $5829: $dd
    dec b                                         ; $582a: $05
    ccf                                           ; $582b: $3f
    ret                                           ; $582c: $c9


    ld a, [hl+]                                   ; $582d: $2a
    ld d, h                                       ; $582e: $54
    add l                                         ; $582f: $85
    ld [hl], e                                    ; $5830: $73
    ld d, a                                       ; $5831: $57
    db $fc                                        ; $5832: $fc
    and a                                         ; $5833: $a7
    ld h, a                                       ; $5834: $67
    ld e, h                                       ; $5835: $5c
    ld e, c                                       ; $5836: $59
    cp d                                          ; $5837: $ba
    add l                                         ; $5838: $85
    rst $30                                       ; $5839: $f7
    rlca                                          ; $583a: $07
    rst $20                                       ; $583b: $e7
    ld b, d                                       ; $583c: $42
    ld a, l                                       ; $583d: $7d
    cp $49                                        ; $583e: $fe $49
    ld l, [hl]                                    ; $5840: $6e
    call z, Call_067_7510                         ; $5841: $cc $10 $75
    dec bc                                        ; $5844: $0b
    call $de76                                    ; $5845: $cd $76 $de
    db $dd                                        ; $5848: $dd
    add c                                         ; $5849: $81

jr_067_584a:
    ld h, [hl]                                    ; $584a: $66
    sub h                                         ; $584b: $94
    reti                                          ; $584c: $d9


    xor b                                         ; $584d: $a8
    inc [hl]                                      ; $584e: $34
    xor b                                         ; $584f: $a8
    xor b                                         ; $5850: $a8
    adc c                                         ; $5851: $89
    inc de                                        ; $5852: $13
    and b                                         ; $5853: $a0
    push af                                       ; $5854: $f5
    ld h, c                                       ; $5855: $61

jr_067_5856:
    ld bc, $d1d6                                  ; $5856: $01 $d6 $d1
    ld a, [$f313]                                 ; $5859: $fa $13 $f3
    ld l, b                                       ; $585c: $68
    ld d, e                                       ; $585d: $53
    ld c, $15                                     ; $585e: $0e $15
    or b                                          ; $5860: $b0
    sub $34                                       ; $5861: $d6 $34
    ld h, e                                       ; $5863: $63
    sub d                                         ; $5864: $92
    sbc d                                         ; $5865: $9a
    ld [hl], c                                    ; $5866: $71
    ld a, a                                       ; $5867: $7f
    ld [c], a                                     ; $5868: $e2
    ld l, [hl]                                    ; $5869: $6e
    ld h, c                                       ; $586a: $61
    dec d                                         ; $586b: $15
    ld l, c                                       ; $586c: $69

Call_067_586d:
    rst $30                                       ; $586d: $f7
    ld h, d                                       ; $586e: $62
    add [hl]                                      ; $586f: $86
    xor b                                         ; $5870: $a8
    ld e, e                                       ; $5871: $5b
    ld l, b                                       ; $5872: $68
    or [hl]                                       ; $5873: $b6
    di                                            ; $5874: $f3
    cp $00                                        ; $5875: $fe $00
    db $db                                        ; $5877: $db
    add h                                         ; $5878: $84
    db $d3                                        ; $5879: $d3
    db $e4                                        ; $587a: $e4
    ld e, d                                       ; $587b: $5a
    db $fd                                        ; $587c: $fd
    or c                                          ; $587d: $b1
    sub h                                         ; $587e: $94
    ld b, e                                       ; $587f: $43
    cp l                                          ; $5880: $bd
    rst $28                                       ; $5881: $ef
    and a                                         ; $5882: $a7
    dec [hl]                                      ; $5883: $35
    push hl                                       ; $5884: $e5
    jr jr_067_584a                                ; $5885: $18 $c3

    sub h                                         ; $5887: $94
    and l                                         ; $5888: $a5
    ld e, e                                       ; $5889: $5b
    ld e, b                                       ; $588a: $58
    ld bc, $e56b                                  ; $588b: $01 $6b $e5
    ld c, a                                       ; $588e: $4f
    rst $08                                       ; $588f: $cf
    cp b                                          ; $5890: $b8
    cp e                                          ; $5891: $bb
    ld e, e                                       ; $5892: $5b
    sub $2a                                       ; $5893: $d6 $2a
    db $dd                                        ; $5895: $dd
    bit 2, e                                      ; $5896: $cb $53
    ret                                           ; $5898: $c9


    and a                                         ; $5899: $a7
    push af                                       ; $589a: $f5
    ld l, c                                       ; $589b: $69
    inc l                                         ; $589c: $2c
    ld a, l                                       ; $589d: $7d
    ld b, e                                       ; $589e: $43
    inc c                                         ; $589f: $0c
    or b                                          ; $58a0: $b0
    add $71                                       ; $58a1: $c6 $71
    reti                                          ; $58a3: $d9


    ld b, [hl]                                    ; $58a4: $46
    xor e                                         ; $58a5: $ab
    cp e                                          ; $58a6: $bb
    push hl                                       ; $58a7: $e5
    scf                                           ; $58a8: $37
    ld a, d                                       ; $58a9: $7a
    ld a, a                                       ; $58aa: $7f
    adc c                                         ; $58ab: $89
    ld h, e                                       ; $58ac: $63
    add hl, hl                                    ; $58ad: $29
    add a                                         ; $58ae: $87
    xor [hl]                                      ; $58af: $ae
    ld l, e                                       ; $58b0: $6b
    jp z, Jump_067_53a1                           ; $58b1: $ca $a1 $53

    rst $18                                       ; $58b4: $df
    add $0b                                       ; $58b5: $c6 $0b
    push de                                       ; $58b7: $d5
    or c                                          ; $58b8: $b1
    ld e, [hl]                                    ; $58b9: $5e
    ld [c], a                                     ; $58ba: $e2
    sbc [hl]                                      ; $58bb: $9e
    add hl, de                                    ; $58bc: $19
    sub [hl]                                      ; $58bd: $96
    and l                                         ; $58be: $a5
    ld a, $0d                                     ; $58bf: $3e $0d
    ccf                                           ; $58c1: $3f
    xor d                                         ; $58c2: $aa
    sub b                                         ; $58c3: $90
    cp [hl]                                       ; $58c4: $be
    and c                                         ; $58c5: $a1
    ld e, c                                       ; $58c6: $59
    jr c, jr_067_5856                             ; $58c7: $38 $8d

    or b                                          ; $58c9: $b0
    push de                                       ; $58ca: $d5
    add sp, $6c                                   ; $58cb: $e8 $6c
    ld a, [$db00]                                 ; $58cd: $fa $00 $db
    ld a, e                                       ; $58d0: $7b
    adc c                                         ; $58d1: $89
    ld a, e                                       ; $58d2: $7b
    ld h, [hl]                                    ; $58d3: $66
    ld e, b                                       ; $58d4: $58
    sub [hl]                                      ; $58d5: $96
    ld a, [hl+]                                   ; $58d6: $2a
    dec a                                         ; $58d7: $3d
    xor b                                         ; $58d8: $a8
    ld b, d                                       ; $58d9: $42
    ld a, [$4e86]                                 ; $58da: $fa $86 $4e
    ld d, e                                       ; $58dd: $53
    ld c, $65                                     ; $58de: $0e $65
    inc c                                         ; $58e0: $0c

Call_067_58e1:
    sub h                                         ; $58e1: $94
    and e                                         ; $58e2: $a3
    ld h, l                                       ; $58e3: $65
    or e                                          ; $58e4: $b3
    ld d, c                                       ; $58e5: $51
    jp nc, $9eee                                  ; $58e6: $d2 $ee $9e

    pop de                                        ; $58e9: $d1
    ld a, a                                       ; $58ea: $7f
    db $e4                                        ; $58eb: $e4
    ld d, h                                       ; $58ec: $54
    pop de                                        ; $58ed: $d1
    db $fc                                        ; $58ee: $fc
    ld d, [hl]                                    ; $58ef: $56
    ld d, b                                       ; $58f0: $50
    ld b, l                                       ; $58f1: $45
    ld h, a                                       ; $58f2: $67
    ld c, c                                       ; $58f3: $49
    adc [hl]                                      ; $58f4: $8e
    ld [hl], $b2                                  ; $58f5: $36 $b2
    ld a, $2d                                     ; $58f7: $3e $2d
    and e                                         ; $58f9: $a3
    ld bc, $b6cd                                  ; $58fa: $01 $cd $b6
    and [hl]                                      ; $58fd: $a6
    dec c                                         ; $58fe: $0d

Jump_067_58ff:
    db $ec                                        ; $58ff: $ec
    ld c, a                                       ; $5900: $4f
    rrca                                          ; $5901: $0f
    sub $f3                                       ; $5902: $d6 $f3
    inc bc                                        ; $5904: $03
    dec sp                                        ; $5905: $3b
    ld h, b                                       ; $5906: $60
    ld l, e                                       ; $5907: $6b
    ld c, l                                       ; $5908: $4d
    add hl, sp                                    ; $5909: $39
    inc d                                         ; $590a: $14
    xor [hl]                                      ; $590b: $ae
    sbc $f7                                       ; $590c: $de $f7
    ld [hl], e                                    ; $590e: $73
    push bc                                       ; $590f: $c5
    ld a, d                                       ; $5910: $7a
    jr nz, jr_067_592e                            ; $5911: $20 $1b

    ret nc                                        ; $5913: $d0

    db $ec                                        ; $5914: $ec
    call z, $98c3                                 ; $5915: $cc $c3 $98
    or c                                          ; $5918: $b1
    jp hl                                         ; $5919: $e9


    inc bc                                        ; $591a: $03
    add hl, bc                                    ; $591b: $09
    sbc d                                         ; $591c: $9a
    ld e, c                                       ; $591d: $59
    push hl                                       ; $591e: $e5
    jp nz, $9406                                  ; $591f: $c2 $06 $94

    ld l, [hl]                                    ; $5922: $6e
    ld h, c                                       ; $5923: $61
    rst $10                                       ; $5924: $d7
    sub l                                         ; $5925: $95
    xor d                                         ; $5926: $aa
    ld c, [hl]                                    ; $5927: $4e
    inc sp                                        ; $5928: $33
    jp $ef18                                      ; $5929: $c3 $18 $ef


    rrca                                          ; $592c: $0f
    ld e, e                                       ; $592d: $5b

jr_067_592e:
    ld l, b                                       ; $592e: $68
    or [hl]                                       ; $592f: $b6
    or e                                          ; $5930: $b3
    adc c                                         ; $5931: $89
    sub e                                         ; $5932: $93
    inc sp                                        ; $5933: $33
    ld l, h                                       ; $5934: $6c
    ld b, e                                       ; $5935: $43
    rst $08                                       ; $5936: $cf
    scf                                           ; $5937: $37
    xor [hl]                                      ; $5938: $ae
    and a                                         ; $5939: $a7
    sub [hl]                                      ; $593a: $96
    dec a                                         ; $593b: $3d
    rla                                           ; $593c: $17
    ld c, [hl]                                    ; $593d: $4e
    sbc e                                         ; $593e: $9b
    ld [hl], d                                    ; $593f: $72
    jr z, jr_067_5995                             ; $5940: $28 $53

    xor $15                                       ; $5942: $ee $15
    sbc d                                         ; $5944: $9a
    rst $10                                       ; $5945: $d7
    ld [hl], h                                    ; $5946: $74
    jp $5b07                                      ; $5947: $c3 $07 $5b


    add $ad                                       ; $594a: $c6 $ad
    ld d, b                                       ; $594c: $50
    daa                                           ; $594d: $27
    set 7, a                                      ; $594e: $cb $ff
    dec b                                         ; $5950: $05
    call nz, $d38c                                ; $5951: $c4 $8c $d3
    sbc e                                         ; $5954: $9b
    adc l                                         ; $5955: $8d
    ld d, c                                       ; $5956: $51
    cp l                                          ; $5957: $bd
    ld h, e                                       ; $5958: $63
    ld [hl], d                                    ; $5959: $72
    ld c, l                                       ; $595a: $4d
    adc [hl]                                      ; $595b: $8e
    sub $49                                       ; $595c: $d6 $49
    halt                                          ; $595e: $76
    add l                                         ; $595f: $85
    add l                                         ; $5960: $85
    adc l                                         ; $5961: $8d
    ld c, [hl]                                    ; $5962: $4e
    or $1f                                        ; $5963: $f6 $1f
    inc l                                         ; $5965: $2c
    ret                                           ; $5966: $c9


    cp c                                          ; $5967: $b9
    ccf                                           ; $5968: $3f
    sub a                                         ; $5969: $97
    add d                                         ; $596a: $82
    adc e                                         ; $596b: $8b
    ld b, h                                       ; $596c: $44
    call z, $4fa8                                 ; $596d: $cc $a8 $4f
    jp Jump_067_4a8f                              ; $5970: $c3 $8f $4a


    xor b                                         ; $5973: $a8
    sbc h                                         ; $5974: $9c
    ld a, [hl-]                                   ; $5975: $3a
    ld e, c                                       ; $5976: $59
    cp $2f                                        ; $5977: $fe $2f
    jr nz, jr_067_59e1                            ; $5979: $20 $66

    call c, $e21f                                 ; $597b: $dc $1f $e2
    ld e, l                                       ; $597e: $5d
    ld h, c                                       ; $597f: $61
    ld h, c                                       ; $5980: $61
    and c                                         ; $5981: $a1
    sbc c                                         ; $5982: $99
    dec hl                                        ; $5983: $2b
    sub [hl]                                      ; $5984: $96
    ccf                                           ; $5985: $3f
    sub h                                         ; $5986: $94
    rst $30                                       ; $5987: $f7
    ld a, l                                       ; $5988: $7d
    and e                                         ; $5989: $a3
    ret nc                                        ; $598a: $d0

    sbc a                                         ; $598b: $9f
    cp $b8                                        ; $598c: $fe $b8
    dec c                                         ; $598e: $0d
    ld l, l                                       ; $598f: $6d
    cpl                                           ; $5990: $2f
    push bc                                       ; $5991: $c5
    adc a                                         ; $5992: $8f
    scf                                           ; $5993: $37
    ld c, l                                       ; $5994: $4d

jr_067_5995:
    add hl, sp                                    ; $5995: $39
    call nc, $da47                                ; $5996: $d4 $47 $da
    and c                                         ; $5999: $a1
    sbc $49                                       ; $599a: $de $49
    ld c, a                                       ; $599c: $4f
    reti                                          ; $599d: $d9


    sub h                                         ; $599e: $94
    db $e3                                        ; $599f: $e3
    sub d                                         ; $59a0: $92

Jump_067_59a1:
    ld [hl], d                                    ; $59a1: $72
    or b                                          ; $59a2: $b0
    cp $f3                                        ; $59a3: $fe $f3
    sub h                                         ; $59a5: $94
    ld [hl], a                                    ; $59a6: $77
    inc de                                        ; $59a7: $13
    dec c                                         ; $59a8: $0d
    rst $38                                       ; $59a9: $ff
    db $d3                                        ; $59aa: $d3
    ld l, c                                       ; $59ab: $69
    ld b, b                                       ; $59ac: $40
    cp c                                          ; $59ad: $b9
    and h                                         ; $59ae: $a4
    db $dd                                        ; $59af: $dd
    ld a, [hl-]                                   ; $59b0: $3a
    reti                                          ; $59b1: $d9


    sub h                                         ; $59b2: $94
    ld b, e                                       ; $59b3: $43
    ld e, c                                       ; $59b4: $59
    ld a, [$498c]                                 ; $59b5: $fa $8c $49
    call c, Call_067_773d                         ; $59b8: $dc $3d $77
    call c, $8cc6                                 ; $59bb: $dc $c6 $8c
    or d                                          ; $59be: $b2
    ld sp, hl                                     ; $59bf: $f9
    dec d                                         ; $59c0: $15
    sbc d                                         ; $59c1: $9a
    ld e, c                                       ; $59c2: $59
    ld sp, hl                                     ; $59c3: $f9
    ld d, h                                       ; $59c4: $54
    add l                                         ; $59c5: $85
    ld [hl], e                                    ; $59c6: $73
    ld a, a                                       ; $59c7: $7f
    add hl, bc                                    ; $59c8: $09
    db $fd                                        ; $59c9: $fd
    ld b, a                                       ; $59ca: $47
    ld c, [hl]                                    ; $59cb: $4e
    rst $10                                       ; $59cc: $d7
    dec [hl]                                      ; $59cd: $35
    push hl                                       ; $59ce: $e5
    ld d, b                                       ; $59cf: $50
    jp Jump_000_313f                              ; $59d0: $c3 $3f $31


    adc c                                         ; $59d3: $89
    push af                                       ; $59d4: $f5
    db $d3                                        ; $59d5: $d3
    jp hl                                         ; $59d6: $e9


    ccf                                           ; $59d7: $3f
    ld e, b                                       ; $59d8: $58
    sub d                                         ; $59d9: $92
    or e                                          ; $59da: $b3
    jp hl                                         ; $59db: $e9


    inc bc                                        ; $59dc: $03
    ld h, a                                       ; $59dd: $67
    call nc, $f046                                ; $59de: $d4 $46 $f0

jr_067_59e1:
    call c, $cf15                                 ; $59e1: $dc $15 $cf
    db $eb                                        ; $59e4: $eb
    ld a, [bc]                                    ; $59e5: $0a
    reti                                          ; $59e6: $d9


    dec l                                         ; $59e7: $2d
    sub e                                         ; $59e8: $93
    ld d, $44                                     ; $59e9: $16 $44
    set 3, d                                      ; $59eb: $cb $da
    and a                                         ; $59ed: $a7

Jump_067_59ee:
    ld a, [hl-]                                   ; $59ee: $3a
    ld e, l                                       ; $59ef: $5d
    ld d, a                                       ; $59f0: $57
    ld l, b                                       ; $59f1: $68
    ld [hl], $c6                                  ; $59f2: $36 $c6
    db $e4                                        ; $59f4: $e4
    call c, $81dd                                 ; $59f5: $dc $dd $81
    ld c, [hl]                                    ; $59f8: $4e
    jp hl                                         ; $59f9: $e9


    inc sp                                        ; $59fa: $33
    ld h, $69                                     ; $59fb: $26 $69
    ret nc                                        ; $59fd: $d0

    and d                                         ; $59fe: $a2
    db $d3                                        ; $59ff: $d3
    ld l, h                                       ; $5a00: $6c
    db $e3                                        ; $5a01: $e3
    inc b                                         ; $5a02: $04
    jp $a2a0                                      ; $5a03: $c3 $a0 $a2


    ld [hl+], a                                   ; $5a06: $22
    ld [$b38b], a                                 ; $5a07: $ea $8b $b3
    ld sp, $4ea3                                  ; $5a0a: $31 $a3 $4e
    sub $8b                                       ; $5a0d: $d6 $8b
    sub a                                         ; $5a0f: $97
    rst $18                                       ; $5a10: $df
    ld a, [$9c69]                                 ; $5a11: $fa $69 $9c
    push de                                       ; $5a14: $d5
    call c, $e21f                                 ; $5a15: $dc $1f $e2
    cp $68                                        ; $5a18: $fe $68
    sbc [hl]                                      ; $5a1a: $9e
    and [hl]                                      ; $5a1b: $a6
    inc e                                         ; $5a1c: $1c
    ld a, [de]                                    ; $5a1d: $1a
    or b                                          ; $5a1e: $b0
    ld b, d                                       ; $5a1f: $42
    inc sp                                        ; $5a20: $33
    ld h, d                                       ; $5a21: $62
    and [hl]                                      ; $5a22: $a6
    ld d, l                                       ; $5a23: $55
    ld sp, hl                                     ; $5a24: $f9
    xor h                                         ; $5a25: $ac
    ld h, c                                       ; $5a26: $61
    adc d                                         ; $5a27: $8a
    ldh a, [$bc]                                  ; $5a28: $f0 $bc
    cp e                                          ; $5a2a: $bb
    db $fd                                        ; $5a2b: $fd
    ld l, a                                       ; $5a2c: $6f
    xor $0f                                       ; $5a2d: $ee $0f
    rst $20                                       ; $5a2f: $e7

Jump_067_5a30:
    inc c                                         ; $5a30: $0c
    xor e                                         ; $5a31: $ab
    ld h, e                                       ; $5a32: $63
    add hl, de                                    ; $5a33: $19
    and d                                         ; $5a34: $a2
    ld l, [hl]                                    ; $5a35: $6e
    and c                                         ; $5a36: $a1
    reti                                          ; $5a37: $d9


    adc $bb                                       ; $5a38: $ce $bb
    sbc e                                         ; $5a3a: $9b
    db $dd                                        ; $5a3b: $dd

Call_067_5a3c:
    dec bc                                        ; $5a3c: $0b
    inc c                                         ; $5a3d: $0c
    ld d, e                                       ; $5a3e: $53
    sbc a                                         ; $5a3f: $9f
    add $46                                       ; $5a40: $c6 $46
    pop hl                                        ; $5a42: $e1
    inc [hl]                                      ; $5a43: $34
    and e                                         ; $5a44: $a3
    add hl, hl                                    ; $5a45: $29
    add a                                         ; $5a46: $87
    daa                                           ; $5a47: $27
    ld l, c                                       ; $5a48: $69
    ret nc                                        ; $5a49: $d0

    ei                                            ; $5a4a: $fb
    inc bc                                        ; $5a4b: $03
    db $db                                        ; $5a4c: $db
    ei                                            ; $5a4d: $fb
    rrca                                          ; $5a4e: $0f
    sub [hl]                                      ; $5a4f: $96
    db $e4                                        ; $5a50: $e4
    inc [hl]                                      ; $5a51: $34
    ld a, [bc]                                    ; $5a52: $0a
    and a                                         ; $5a53: $a7
    ret nc                                        ; $5a54: $d0

    cp h                                          ; $5a55: $bc
    ld d, [hl]                                    ; $5a56: $56
    and [hl]                                      ; $5a57: $a6
    call c, Call_067_7513                         ; $5a58: $dc $13 $75
    dec bc                                        ; $5a5b: $0b
    call Call_067_6e76                            ; $5a5c: $cd $76 $6e
    add sp, -$47                                  ; $5a5f: $e8 $b9
    ld d, b                                       ; $5a61: $50
    sbc a                                         ; $5a62: $9f
    ld a, a                                       ; $5a63: $7f
    sub d                                         ; $5a64: $92
    dec de                                        ; $5a65: $1b
    inc sp                                        ; $5a66: $33
    ld [hl], $7c                                  ; $5a67: $36 $7c
    ld d, a                                       ; $5a69: $57
    inc a                                         ; $5a6a: $3c

Call_067_5a6b:
    ld d, a                                       ; $5a6b: $57
    ld a, a                                       ; $5a6c: $7f
    xor h                                         ; $5a6d: $ac
    call c, $4ead                                 ; $5a6e: $dc $ad $4e
    or $1f                                        ; $5a71: $f6 $1f
    inc l                                         ; $5a73: $2c
    ret                                           ; $5a74: $c9


    xor c                                         ; $5a75: $a9
    adc l                                         ; $5a76: $8d
    ldh [$d9], a                                  ; $5a77: $e0 $d9
    db $f4                                        ; $5a79: $f4
    ld bc, $9e3b                                  ; $5a7a: $01 $3b $9e
    inc a                                         ; $5a7d: $3c
    cp l                                          ; $5a7e: $bd
    rst $38                                       ; $5a7f: $ff
    sbc b                                         ; $5a80: $98
    pop bc                                        ; $5a81: $c1
    push de                                       ; $5a82: $d5
    and a                                         ; $5a83: $a7
    or c                                          ; $5a84: $b1
    call nc, Call_067_7f42                        ; $5a85: $d4 $42 $7f
    ld b, $ea                                     ; $5a88: $06 $ea
    db $fd                                        ; $5a8a: $fd
    ld bc, $bc57                                  ; $5a8b: $01 $57 $bc
    ld a, [hl-]                                   ; $5a8e: $3a
    reti                                          ; $5a8f: $d9


    ld a, a                                       ; $5a90: $7f
    or b                                          ; $5a91: $b0
    inc h                                         ; $5a92: $24
    and a                                         ; $5a93: $a7
    sub c                                         ; $5a94: $91
    ld e, d                                       ; $5a95: $5a
    add sp, -$31                                  ; $5a96: $e8 $cf
    ld b, b                                       ; $5a98: $40
    ld l, l                                       ; $5a99: $6d
    jp z, Jump_000_2ba1                           ; $5a9a: $ca $a1 $2b

    pop hl                                        ; $5a9d: $e1
    inc [hl]                                      ; $5a9e: $34
    ret nc                                        ; $5a9f: $d0

    jp z, $ada9                                   ; $5aa0: $ca $a9 $ad

    db $d3                                        ; $5aa3: $d3
    adc l                                         ; $5aa4: $8d
    ld h, c                                       ; $5aa5: $61
    ld [hl], $fe                                  ; $5aa6: $36 $fe
    ld c, c                                       ; $5aa8: $49
    pop hl                                        ; $5aa9: $e1
    call c, Call_067_4add                         ; $5aaa: $dc $dd $4a
    ld l, l                                       ; $5aad: $6d
    inc d                                         ; $5aae: $14
    ld c, [hl]                                    ; $5aaf: $4e
    dec h                                         ; $5ab0: $25
    cp d                                          ; $5ab1: $ba
    ld b, b                                       ; $5ab2: $40
    ld a, d                                       ; $5ab3: $7a
    ld l, h                                       ; $5ab4: $6c
    ld a, [de]                                    ; $5ab5: $1a
    ret nc                                        ; $5ab6: $d0

    sub h                                         ; $5ab7: $94
    ld b, e                                       ; $5ab8: $43
    rst $38                                       ; $5ab9: $ff
    or c                                          ; $5aba: $b1
    jp nz, $7f78                                  ; $5abb: $c2 $78 $7f

    db $db                                        ; $5abe: $db
    add h                                         ; $5abf: $84
    ld d, e                                       ; $5ac0: $53
    sbc a                                         ; $5ac1: $9f
    add [hl]                                      ; $5ac2: $86
    rra                                           ; $5ac3: $1f
    ld e, d                                       ; $5ac4: $5a
    sbc a                                         ; $5ac5: $9f
    xor d                                         ; $5ac6: $aa
    or h                                          ; $5ac7: $b4
    ld c, d                                       ; $5ac8: $4a
    rst $30                                       ; $5ac9: $f7
    ld a, [c]                                     ; $5aca: $f2
    inc [hl]                                      ; $5acb: $34
    ld b, e                                       ; $5acc: $43
    ld a, [$48d3]                                 ; $5acd: $fa $d3 $48
    dec l                                         ; $5ad0: $2d
    db $dd                                        ; $5ad1: $dd
    ld b, d                                       ; $5ad2: $42
    dec d                                         ; $5ad3: $15
    ld [hl], l                                    ; $5ad4: $75
    dec bc                                        ; $5ad5: $0b
    call $de76                                    ; $5ad6: $cd $76 $de
    rra                                           ; $5ad9: $1f
    adc c                                         ; $5ada: $89
    or b                                          ; $5adb: $b0
    ld a, a                                       ; $5adc: $7f
    and a                                         ; $5add: $a7
    xor b                                         ; $5ade: $a8
    xor e                                         ; $5adf: $ab
    and a                                         ; $5ae0: $a7
    add hl, de                                    ; $5ae1: $19
    push af                                       ; $5ae2: $f5
    rst $00                                       ; $5ae3: $c7
    jp z, $7b94                                   ; $5ae4: $ca $94 $7b

    ld [hl], l                                    ; $5ae7: $75
    or d                                          ; $5ae8: $b2
    rst $38                                       ; $5ae9: $ff
    ld h, b                                       ; $5aea: $60
    ld c, c                                       ; $5aeb: $49
    ld c, [hl]                                    ; $5aec: $4e
    ld l, l                                       ; $5aed: $6d
    inc b                                         ; $5aee: $04
    rst $08                                       ; $5aef: $cf
    and [hl]                                      ; $5af0: $a6
    rrca                                          ; $5af1: $0f
    dec sp                                        ; $5af2: $3b
    sbc [hl]                                      ; $5af3: $9e
    inc d                                         ; $5af4: $14
    ld d, l                                       ; $5af5: $55
    cp c                                          ; $5af6: $b9
    db $e4                                        ; $5af7: $e4
    ld [hl], c                                    ; $5af8: $71
    push af                                       ; $5af9: $f5
    rst $00                                       ; $5afa: $c7
    ld [hl-], a                                   ; $5afb: $32
    db $eb                                        ; $5afc: $eb
    dec e                                         ; $5afd: $1d
    dec hl                                        ; $5afe: $2b
    db $eb                                        ; $5aff: $eb
    db $d3                                        ; $5b00: $d3
    ret c                                         ; $5b01: $d8

    pop de                                        ; $5b02: $d1
    ld h, [hl]                                    ; $5b03: $66
    sbc b                                         ; $5b04: $98
    ld hl, $de8e                                  ; $5b05: $21 $8e $de
    ld c, l                                       ; $5b08: $4d
    inc e                                         ; $5b09: $1c
    ld c, e                                       ; $5b0a: $4b
    add hl, sp                                    ; $5b0b: $39
    ld [hl], h                                    ; $5b0c: $74
    ld e, l                                       ; $5b0d: $5d
    ld d, e                                       ; $5b0e: $53
    ld c, $5d                                     ; $5b0f: $0e $5d
    ld d, a                                       ; $5b11: $57
    dec de                                        ; $5b12: $1b
    pop bc                                        ; $5b13: $c1
    or e                                          ; $5b14: $b3
    jp hl                                         ; $5b15: $e9


    inc bc                                        ; $5b16: $03
    ld h, a                                       ; $5b17: $67
    call nc, Call_067_7649                        ; $5b18: $d4 $49 $76
    add l                                         ; $5b1b: $85
    add l                                         ; $5b1c: $85
    push hl                                       ; $5b1d: $e5
    rrca                                          ; $5b1e: $0f

Call_067_5b1f:
    ld h, l                                       ; $5b1f: $65
    ld d, e                                       ; $5b20: $53
    ld c, $f5                                     ; $5b21: $0e $f5
    adc $2b                                       ; $5b23: $ce $2b
    rst $38                                       ; $5b25: $ff
    rla                                           ; $5b26: $17
    db $10                                        ; $5b27: $10
    inc sp                                        ; $5b28: $33
    rla                                           ; $5b29: $17
    adc c                                         ; $5b2a: $89
    sbc b                                         ; $5b2b: $98
    pop de                                        ; $5b2c: $d1
    ld l, h                                       ; $5b2d: $6c
    adc h                                         ; $5b2e: $8c
    ld [$697d], a                                 ; $5b2f: $ea $7d $69
    ld h, a                                       ; $5b32: $67
    inc c                                         ; $5b33: $0c
    ld l, h                                       ; $5b34: $6c
    ld [hl], h                                    ; $5b35: $74
    or d                                          ; $5b36: $b2
    rst $38                                       ; $5b37: $ff
    ld h, b                                       ; $5b38: $60
    ld c, c                                       ; $5b39: $49
    adc $fd                                       ; $5b3a: $ce $fd
    ld bc, $a817                                  ; $5b3c: $01 $17 $a8
    ld c, [hl]                                    ; $5b3f: $4e
    ld hl, $5fd8                                  ; $5b40: $21 $d8 $5f
    sbc $cf                                       ; $5b43: $de $cf
    or d                                          ; $5b45: $b2
    ccf                                           ; $5b46: $3f
    adc h                                         ; $5b47: $8c
    adc l                                         ; $5b48: $8d
    db $d3                                        ; $5b49: $d3
    ccf                                           ; $5b4a: $3f
    add hl, hl                                    ; $5b4b: $29
    sbc h                                         ; $5b4c: $9c
    ei                                            ; $5b4d: $fb
    inc bc                                        ; $5b4e: $03
    ld [c], a                                     ; $5b4f: $e2
    db $dd                                        ; $5b50: $dd
    ld a, [$3f9f]                                 ; $5b51: $fa $9f $3f
    sub c                                         ; $5b54: $91
    ld l, c                                       ; $5b55: $69
    ld l, $4b                                     ; $5b56: $2e $4b
    ld d, e                                       ; $5b58: $53
    ld c, $d6                                     ; $5b59: $0e $d6
    sub h                                         ; $5b5b: $94
    ld b, e                                       ; $5b5c: $43
    pop hl                                        ; $5b5d: $e1
    ld a, [hl-]                                   ; $5b5e: $3a
    and l                                         ; $5b5f: $a5
    rst $08                                       ; $5b60: $cf
    sbc b                                         ; $5b61: $98
    call nz, Call_000_01fd                        ; $5b62: $c4 $fd $01
    ld [c], a                                     ; $5b65: $e2
    ccf                                           ; $5b66: $3f
    dec a                                         ; $5b67: $3d
    ld a, b                                       ; $5b68: $78
    dec c                                         ; $5b69: $0d
    add sp, $0a                                   ; $5b6a: $e8 $0a
    ld d, [hl]                                    ; $5b6c: $56
    daa                                           ; $5b6d: $27
    dec de                                        ; $5b6e: $1b
    and a                                         ; $5b6f: $a7
    or [hl]                                       ; $5b70: $b6
    ld c, [hl]                                    ; $5b71: $4e
    scf                                           ; $5b72: $37
    add [hl]                                      ; $5b73: $86
    reti                                          ; $5b74: $d9


    ld hl, sp+$27                                 ; $5b75: $f8 $27
    add l                                         ; $5b77: $85
    ld [hl], e                                    ; $5b78: $73
    ld a, a                                       ; $5b79: $7f
    db $db                                        ; $5b7a: $db
    add h                                         ; $5b7b: $84
    ld [hl], e                                    ; $5b7c: $73
    rst $30                                       ; $5b7d: $f7
    ld [hl-], a                                   ; $5b7e: $32
    rst $10                                       ; $5b7f: $d7
    push de                                       ; $5b80: $d5
    db $d3                                        ; $5b81: $d3
    adc h                                         ; $5b82: $8c
    ld c, l                                       ; $5b83: $4d
    rra                                           ; $5b84: $1f
    db $db                                        ; $5b85: $db
    add h                                         ; $5b86: $84
    ld d, e                                       ; $5b87: $53
    push bc                                       ; $5b88: $c5
    ld l, e                                       ; $5b89: $6b
    ld h, h                                       ; $5b8a: $64
    ld h, b                                       ; $5b8b: $60
    jp $9d53                                      ; $5b8c: $c3 $53 $9d


    ei                                            ; $5b8f: $fb
    inc bc                                        ; $5b90: $03
    db $db                                        ; $5b91: $db
    add h                                         ; $5b92: $84
    inc hl                                        ; $5b93: $23
    xor d                                         ; $5b94: $aa
    ccf                                           ; $5b95: $3f
    sub [hl]                                      ; $5b96: $96
    ld [hl], d                                    ; $5b97: $72
    rlca                                          ; $5b98: $07
    adc d                                         ; $5b99: $8a
    ld a, [de]                                    ; $5b9a: $1a
    or b                                          ; $5b9b: $b0
    ld a, d                                       ; $5b9c: $7a
    ld l, h                                       ; $5b9d: $6c
    add [hl]                                      ; $5b9e: $86
    ld [hl], l                                    ; $5b9f: $75
    push af                                       ; $5ba0: $f5
    inc [hl]                                      ; $5ba1: $34
    rst $08                                       ; $5ba2: $cf
    and [hl]                                      ; $5ba3: $a6
    rrca                                          ; $5ba4: $0f
    db $db                                        ; $5ba5: $db
    add h                                         ; $5ba6: $84
    db $d3                                        ; $5ba7: $d3
    push de                                       ; $5ba8: $d5
    db $eb                                        ; $5ba9: $eb
    ccf                                           ; $5baa: $3f
    ld e, b                                       ; $5bab: $58
    sub d                                         ; $5bac: $92
    ld d, e                                       ; $5bad: $53
    ld a, d                                       ; $5bae: $7a
    ld [hl], h                                    ; $5baf: $74
    ld d, $97                                     ; $5bb0: $16 $97
    add hl, hl                                    ; $5bb2: $29
    ld de, $1a33                                  ; $5bb3: $11 $33 $1a
    ld de, $4e93                                  ; $5bb6: $11 $93 $4e
    sbc $1f                                       ; $5bb9: $de $1f
    add hl, bc                                    ; $5bbb: $09
    sbc d                                         ; $5bbc: $9a
    rst $10                                       ; $5bbd: $d7
    or h                                          ; $5bbe: $b4
    ld e, $48                                     ; $5bbf: $1e $48
    ld d, c                                       ; $5bc1: $51
    or a                                          ; $5bc2: $b7
    ret nc                                        ; $5bc3: $d0

    ld l, h                                       ; $5bc4: $6c
    rst $20                                       ; $5bc5: $e7
    and [hl]                                      ; $5bc6: $a6
    rrca                                          ; $5bc7: $0f
    ld d, a                                       ; $5bc8: $57
    ldh a, [$d5]                                  ; $5bc9: $f0 $d5
    bit 3, l                                      ; $5bcb: $cb $5d
    or b                                          ; $5bcd: $b0
    ld a, [$b4b0]                                 ; $5bce: $fa $b0 $b4
    adc e                                         ; $5bd1: $8b
    sbc c                                         ; $5bd2: $99
    jp c, $de17                                   ; $5bd3: $da $17 $de

    ld h, h                                       ; $5bd6: $64
    ld l, d                                       ; $5bd7: $6a
    reti                                          ; $5bd8: $d9


    ld [hl], c                                    ; $5bd9: $71
    reti                                          ; $5bda: $d9


    ld h, [hl]                                    ; $5bdb: $66
    jp Jump_000_3b07                              ; $5bdc: $c3 $07 $3b


    ld d, h                                       ; $5bdf: $54
    ld d, l                                       ; $5be0: $55
    push af                                       ; $5be1: $f5
    cp $00                                        ; $5be2: $fe $00
    db $db                                        ; $5be4: $db
    add h                                         ; $5be5: $84
    inc hl                                        ; $5be6: $23
    xor d                                         ; $5be7: $aa
    and h                                         ; $5be8: $a4
    sub [hl]                                      ; $5be9: $96
    ld h, c                                       ; $5bea: $61
    adc h                                         ; $5beb: $8c
    dec hl                                        ; $5bec: $2b
    halt                                          ; $5bed: $76
    dec b                                         ; $5bee: $05
    cp e                                          ; $5bef: $bb
    ccf                                           ; $5bf0: $3f
    db $db                                        ; $5bf1: $db
    add h                                         ; $5bf2: $84
    db $d3                                        ; $5bf3: $d3
    adc h                                         ; $5bf4: $8c
    sbc b                                         ; $5bf5: $98
    sbc h                                         ; $5bf6: $9c
    ld h, [hl]                                    ; $5bf7: $66
    ld c, b                                       ; $5bf8: $48
    ld a, a                                       ; $5bf9: $7f
    ld [$58d3], a                                 ; $5bfa: $ea $d3 $58
    add [hl]                                      ; $5bfd: $86
    or a                                          ; $5bfe: $b7
    ld a, d                                       ; $5bff: $7a
    ld sp, $1549                                  ; $5c00: $31 $49 $15
    dec [hl]                                      ; $5c03: $35
    ld [hl], c                                    ; $5c04: $71
    ld [hl], d                                    ; $5c05: $72
    add [hl]                                      ; $5c06: $86
    db $dd                                        ; $5c07: $dd
    rra                                           ; $5c08: $1f
    adc c                                         ; $5c09: $89
    or b                                          ; $5c0a: $b0
    or h                                          ; $5c0b: $b4
    adc e                                         ; $5c0c: $8b
    sbc c                                         ; $5c0d: $99
    push hl                                       ; $5c0e: $e5
    ld [hl], h                                    ; $5c0f: $74
    dec bc                                        ; $5c10: $0b
    db $d3                                        ; $5c11: $d3
    or $c2                                        ; $5c12: $f6 $c2
    db $dd                                        ; $5c14: $dd
    add h                                         ; $5c15: $84
    dec b                                         ; $5c16: $05
    ld d, l                                       ; $5c17: $55
    ld a, d                                       ; $5c18: $7a
    ld d, b                                       ; $5c19: $50
    add l                                         ; $5c1a: $85

jr_067_5c1b:
    db $f4                                        ; $5c1b: $f4
    dec c                                         ; $5c1c: $0d
    dec c                                         ; $5c1d: $0d
    ld d, e                                       ; $5c1e: $53
    sbc a                                         ; $5c1f: $9f
    add $80                                       ; $5c20: $c6 $80
    ld h, a                                       ; $5c22: $67
    db $d3                                        ; $5c23: $d3
    jr nc, @+$5c                                  ; $5c24: $30 $5a

    add $27                                       ; $5c26: $c6 $27
    ld sp, hl                                     ; $5c28: $f9
    or h                                          ; $5c29: $b4
    ld [hl], c                                    ; $5c2a: $71
    or h                                          ; $5c2b: $b4
    add hl, de                                    ; $5c2c: $19
    ld h, [hl]                                    ; $5c2d: $66
    adc b                                         ; $5c2e: $88
    and e                                         ; $5c2f: $a3
    dec c                                         ; $5c30: $0d
    inc l                                         ; $5c31: $2c
    db $f4                                        ; $5c32: $f4
    sbc a                                         ; $5c33: $9f
    add l                                         ; $5c34: $85
    rst $30                                       ; $5c35: $f7
    rlca                                          ; $5c36: $07
    sub a                                         ; $5c37: $97
    ld b, c                                       ; $5c38: $41
    sub $7f                                       ; $5c39: $d6 $7f
    inc c                                         ; $5c3b: $0c
    xor h                                         ; $5c3c: $ac
    rrca                                          ; $5c3d: $0f
    ld c, e                                       ; $5c3e: $4b
    cp e                                          ; $5c3f: $bb
    sbc b                                         ; $5c40: $98
    ld l, c                                       ; $5c41: $69
    ret nc                                        ; $5c42: $d0

    cp e                                          ; $5c43: $bb
    add a                                         ; $5c44: $87
    ld l, a                                       ; $5c45: $6f
    and [hl]                                      ; $5c46: $a6
    ld h, a                                       ; $5c47: $67
    ld e, h                                       ; $5c48: $5c
    inc bc                                        ; $5c49: $03
    ld [$9553], a                                 ; $5c4a: $ea $53 $95
    ld d, [hl]                                    ; $5c4d: $56
    daa                                           ; $5c4e: $27
    rst $28                                       ; $5c4f: $ef
    ld l, [hl]                                    ; $5c50: $6e
    rst $28                                       ; $5c51: $ef
    ld a, c                                       ; $5c52: $79
    adc h                                         ; $5c53: $8c
    jp hl                                         ; $5c54: $e9


    add $31                                       ; $5c55: $c6 $31
    ret                                           ; $5c57: $c9


    ld b, l                                       ; $5c58: $45
    ld [hl+], a                                   ; $5c59: $22
    ld h, [hl]                                    ; $5c5a: $66
    ld [hl], h                                    ; $5c5b: $74
    push bc                                       ; $5c5c: $c5
    ld d, a                                       ; $5c5d: $57
    ld h, [hl]                                    ; $5c5e: $66
    ld e, e                                       ; $5c5f: $5b
    db $d3                                        ; $5c60: $d3
    add [hl]                                      ; $5c61: $86
    pop de                                        ; $5c62: $d1
    cp $83                                        ; $5c63: $fe $83
    dec h                                         ; $5c65: $25
    add hl, sp                                    ; $5c66: $39
    ld a, [hl+]                                   ; $5c67: $2a
    xor d                                         ; $5c68: $aa
    and h                                         ; $5c69: $a4
    ld [hl], $0a                                  ; $5c6a: $36 $0a
    xor e                                         ; $5c6c: $ab
    add a                                         ; $5c6d: $87
    db $d3                                        ; $5c6e: $d3
    or a                                          ; $5c6f: $b7
    ld de, $e4fc                                  ; $5c70: $11 $fc $e4
    cp b                                          ; $5c73: $b8
    ld b, $68                                     ; $5c74: $06 $68
    add $fd                                       ; $5c76: $c6 $fd
    ld bc, $3467                                  ; $5c78: $01 $67 $34
    push hl                                       ; $5c7b: $e5
    ret nc                                        ; $5c7c: $d0

    jr z, jr_067_5c1b                             ; $5c7d: $28 $9c

    jp nz, Jump_000_2758                          ; $5c7f: $c2 $58 $27

    ei                                            ; $5c82: $fb
    rrca                                          ; $5c83: $0f
    sub [hl]                                      ; $5c84: $96
    db $e4                                        ; $5c85: $e4
    adc b                                         ; $5c86: $88
    ld a, [hl+]                                   ; $5c87: $2a
    xor c                                         ; $5c88: $a9
    push de                                       ; $5c89: $d5
    daa                                           ; $5c8a: $27
    db $eb                                        ; $5c8b: $eb
    inc h                                         ; $5c8c: $24
    cp e                                          ; $5c8d: $bb
    jp nz, $f2c2                                  ; $5c8e: $c2 $c2 $f2

    add a                                         ; $5c91: $87
    or d                                          ; $5c92: $b2
    reti                                          ; $5c93: $d9


    jr @-$29                                      ; $5c94: $18 $d5

    ei                                            ; $5c96: $fb
    jp nc, $18ce                                  ; $5c97: $d2 $ce $18

    cp b                                          ; $5c9a: $b8
    pop hl                                        ; $5c9b: $e1
    inc bc                                        ; $5c9c: $03
    rla                                           ; $5c9d: $17
    xor b                                         ; $5c9e: $a8
    ld e, $0e                                     ; $5c9f: $1e $0e

Jump_067_5ca1:
    pop bc                                        ; $5ca1: $c1
    cp $f2                                        ; $5ca2: $fe $f2
    ld a, [hl]                                    ; $5ca4: $7e
    halt                                          ; $5ca5: $76
    ld a, [$f127]                                 ; $5ca6: $fa $27 $f1
    ld l, h                                       ; $5ca9: $6c
    ld a, [de]                                    ; $5caa: $1a
    and [hl]                                      ; $5cab: $a6
    cp $81                                        ; $5cac: $fe $81
    res 2, h                                      ; $5cae: $cb $94
    and l                                         ; $5cb0: $a5
    dec b                                         ; $5cb1: $05
    ret c                                         ; $5cb2: $d8

    db $fd                                        ; $5cb3: $fd
    ld bc, $3489                                  ; $5cb4: $01 $89 $34
    halt                                          ; $5cb7: $76
    ld h, d                                       ; $5cb8: $62
    ld b, b                                       ; $5cb9: $40
    cp l                                          ; $5cba: $bd
    di                                            ; $5cbb: $f3
    ld [hl], $7d                                  ; $5cbc: $36 $7d
    adc c                                         ; $5cbe: $89
    add a                                         ; $5cbf: $87
    xor a                                         ; $5cc0: $af
    ld l, c                                       ; $5cc1: $69
    and c                                         ; $5cc2: $a1
    reti                                          ; $5cc3: $d9


    ld a, c                                       ; $5cc4: $79
    xor c                                         ; $5cc5: $a9
    ld [hl], a                                    ; $5cc6: $77
    scf                                           ; $5cc7: $37
    adc a                                         ; $5cc8: $8f
    db $ec                                        ; $5cc9: $ec
    rrca                                          ; $5cca: $0f
    set 3, b                                      ; $5ccb: $cb $d8
    ld [hl], l                                    ; $5ccd: $75
    ld hl, sp-$02                                 ; $5cce: $f8 $fe
    push af                                       ; $5cd0: $f5
    ld l, l                                       ; $5cd1: $6d
    ld a, [hl]                                    ; $5cd2: $7e
    ld h, a                                       ; $5cd3: $67
    ld l, h                                       ; $5cd4: $6c
    ld b, b                                       ; $5cd5: $40
    rla                                           ; $5cd6: $17
    and h                                         ; $5cd7: $a4
    sbc l                                         ; $5cd8: $9d
    add h                                         ; $5cd9: $84
    ld [hl], $a0                                  ; $5cda: $36 $a0
    ccf                                           ; $5cdc: $3f
    adc h                                         ; $5cdd: $8c
    rst $30                                       ; $5cde: $f7
    rlca                                          ; $5cdf: $07
    ld d, a                                       ; $5ce0: $57
    inc e                                         ; $5ce1: $1c
    ld e, b                                       ; $5ce2: $58
    dec a                                         ; $5ce3: $3d
    ld a, h                                       ; $5ce4: $7c
    adc d                                         ; $5ce5: $8a
    ld hl, sp+$4f                                 ; $5ce6: $f8 $4f
    call z, Call_067_6d46                         ; $5ce8: $cc $46 $6d
    add b                                         ; $5ceb: $80
    ld l, a                                       ; $5cec: $6f
    ld d, b                                       ; $5ced: $50
    and l                                         ; $5cee: $a5
    xor b                                         ; $5cef: $a8
    ld e, e                                       ; $5cf0: $5b
    ld l, b                                       ; $5cf1: $68
    or [hl]                                       ; $5cf2: $b6
    di                                            ; $5cf3: $f3
    ld l, [hl]                                    ; $5cf4: $6e
    or a                                          ; $5cf5: $b7
    add hl, bc                                    ; $5cf6: $09
    sbc e                                         ; $5cf7: $9b
    ld [hl], d                                    ; $5cf8: $72
    add a                                         ; $5cf9: $87
    dec de                                        ; $5cfa: $1b
    db $e4                                        ; $5cfb: $e4
    ld l, b                                       ; $5cfc: $68
    rst $38                                       ; $5cfd: $ff
    or l                                          ; $5cfe: $b5
    ld a, d                                       ; $5cff: $7a
    daa                                           ; $5d00: $27
    dec a                                         ; $5d01: $3d
    jp c, Jump_067_7ac8                           ; $5d02: $da $c8 $7a

    sub a                                         ; $5d05: $97
    ld sp, $e668                                  ; $5d06: $31 $68 $e6
    db $fd                                        ; $5d09: $fd
    ld bc, $9c5b                                  ; $5d0a: $01 $5b $9c
    sub h                                         ; $5d0d: $94
    and d                                         ; $5d0e: $a2
    ld h, [hl]                                    ; $5d0f: $66
    ld l, $2b                                     ; $5d10: $2e $2b
    db $ec                                        ; $5d12: $ec
    xor d                                         ; $5d13: $aa
    ld [hl], a                                    ; $5d14: $77
    ld d, h                                       ; $5d15: $54
    ld d, c                                       ; $5d16: $51

jr_067_5d17:
    and [hl]                                      ; $5d17: $a6
    inc e                                         ; $5d18: $1c
    ld d, $f6                                     ; $5d19: $16 $f6
    sbc a                                         ; $5d1b: $9f
    and a                                         ; $5d1c: $a7
    xor h                                         ; $5d1d: $ac
    adc l                                         ; $5d1e: $8d
    ld h, b                                       ; $5d1f: $60
    ld [hl], $e5                                  ; $5d20: $36 $e5
    ld d, b                                       ; $5d22: $50
    cp b                                          ; $5d23: $b8
    xor [hl]                                      ; $5d24: $ae
    ld e, [hl]                                    ; $5d25: $5e
    ld e, c                                       ; $5d26: $59
    push hl                                       ; $5d27: $e5
    or e                                          ; $5d28: $b3
    ld b, $a6                                     ; $5d29: $06 $a6
    call c, $9b2b                                 ; $5d2b: $dc $2b $9b

jr_067_5d2e:
    daa                                           ; $5d2e: $27
    or b                                          ; $5d2f: $b0
    db $ec                                        ; $5d30: $ec
    ld a, [bc]                                    ; $5d31: $0a
    set 7, h                                      ; $5d32: $cb $fc
    cpl                                           ; $5d34: $2f
    jr nc, jr_067_5d17                            ; $5d35: $30 $e0

    xor $19                                       ; $5d37: $ee $19
    call $9b70                                    ; $5d39: $cd $70 $9b
    ld a, $db                                     ; $5d3c: $3e $db
    add h                                         ; $5d3e: $84
    inc hl                                        ; $5d3f: $23
    ld [$3aba], a                                 ; $5d40: $ea $ba $3a
    ld e, c                                       ; $5d43: $59
    call nz, $e334                                ; $5d44: $c4 $34 $e3
    ld d, h                                       ; $5d47: $54
    xor [hl]                                      ; $5d48: $ae
    and l                                         ; $5d49: $a5
    rst $18                                       ; $5d4a: $df
    ccf                                           ; $5d4b: $3f
    ld c, l                                       ; $5d4c: $4d
    add hl, sp                                    ; $5d4d: $39
    sub h                                         ; $5d4e: $94
    ld c, l                                       ; $5d4f: $4d
    or h                                          ; $5d50: $b4
    pop af                                        ; $5d51: $f1
    ld b, d                                       ; $5d52: $42
    ld [hl], l                                    ; $5d53: $75
    adc h                                         ; $5d54: $8c
    db $dd                                        ; $5d55: $dd
    ld a, [$3f9f]                                 ; $5d56: $fa $9f $3f
    sub c                                         ; $5d59: $91
    ld l, c                                       ; $5d5a: $69
    ld l, $4b                                     ; $5d5b: $2e $4b
    dec h                                         ; $5d5d: $25
    ld [$3c23], a                                 ; $5d5e: $ea $23 $3c
    ld d, a                                       ; $5d61: $57
    sbc a                                         ; $5d62: $9f
    add $2a                                       ; $5d63: $c6 $2a
    jp nc, Jump_067_59ee                          ; $5d65: $d2 $ee $59

    ld d, c                                       ; $5d68: $51
    ld a, [$498c]                                 ; $5d69: $fa $8c $49
    jp c, Jump_000_01fd                           ; $5d6c: $da $fd $01

    rst $20                                       ; $5d6f: $e7
    ld b, b                                       ; $5d70: $40
    adc d                                         ; $5d71: $8a
    ld [$5619], a                                 ; $5d72: $ea $19 $56
    rst $00                                       ; $5d75: $c7
    ld [hl-], a                                   ; $5d76: $32
    xor $26                                       ; $5d77: $ee $26
    cp b                                          ; $5d79: $b8
    ld [hl-], a                                   ; $5d7a: $32
    xor a                                         ; $5d7b: $af
    ld l, e                                       ; $5d7c: $6b
    ld b, [hl]                                    ; $5d7d: $46
    add hl, hl                                    ; $5d7e: $29
    ret nz                                        ; $5d7f: $c0

    dec b                                         ; $5d80: $05
    xor [hl]                                      ; $5d81: $ae
    jr z, jr_067_5d2e                             ; $5d82: $28 $aa

    and h                                         ; $5d84: $a4
    ld [hl], $23                                  ; $5d85: $36 $23
    ld h, $a7                                     ; $5d87: $26 $a7
    ld bc, $230d                                  ; $5d89: $01 $0d $23
    and c                                         ; $5d8c: $a1
    ld sp, hl                                     ; $5d8d: $f9
    db $fd                                        ; $5d8e: $fd
    or h                                          ; $5d8f: $b4
    ld b, d                                       ; $5d90: $42
    inc sp                                        ; $5d91: $33
    ld c, d                                       ; $5d92: $4a
    or e                                          ; $5d93: $b3
    reti                                          ; $5d94: $d9


    ld d, l                                       ; $5d95: $55
    push bc                                       ; $5d96: $c5
    or d                                          ; $5d97: $b2
    ld h, d                                       ; $5d98: $62
    ld a, [de]                                    ; $5d99: $1a
    ld a, [c]                                     ; $5d9a: $f2
    cp $00                                        ; $5d9b: $fe $00
    rst $20                                       ; $5d9d: $e7
    ld h, d                                       ; $5d9e: $62
    add l                                         ; $5d9f: $85
    ld a, [hl+]                                   ; $5da0: $2a
    xor h                                         ; $5da1: $ac
    ld c, a                                       ; $5da2: $4f
    ld [hl], l                                    ; $5da3: $75
    ld [hl], $7c                                  ; $5da4: $36 $7c
    db $db                                        ; $5da6: $db
    adc l                                         ; $5da7: $8d
    push hl                                       ; $5da8: $e5
    ld l, [hl]                                    ; $5da9: $6e
    add l                                         ; $5daa: $85
    and $35                                       ; $5dab: $e6 $35
    ld d, c                                       ; $5dad: $51
    or a                                          ; $5dae: $b7
    ret nc                                        ; $5daf: $d0

    ld l, h                                       ; $5db0: $6c
    and a                                         ; $5db1: $a7
    xor b                                         ; $5db2: $a8
    ld a, c                                       ; $5db3: $79
    jp nz, $1b34                                  ; $5db4: $c2 $34 $1b

    inc sp                                        ; $5db7: $33
    jp $c98b                                      ; $5db8: $c3 $8b $c9


    cp c                                          ; $5dbb: $b9
    ccf                                           ; $5dbc: $3f
    rst $20                                       ; $5dbd: $e7
    call Call_000_342b                            ; $5dbe: $cd $2b $34
    and e                                         ; $5dc1: $a3
    db $d3                                        ; $5dc2: $d3
    dec a                                         ; $5dc3: $3d
    ld [c], a                                     ; $5dc4: $e2
    ei                                            ; $5dc5: $fb

Call_067_5dc6:
    and a                                         ; $5dc6: $a7
    rst $38                                       ; $5dc7: $ff
    ld h, b                                       ; $5dc8: $60
    ld c, c                                       ; $5dc9: $49
    ld c, [hl]                                    ; $5dca: $4e

Call_067_5dcb:
    ld l, l                                       ; $5dcb: $6d
    inc b                                         ; $5dcc: $04
    ld c, a                                       ; $5dcd: $4f
    ld d, e                                       ; $5dce: $53
    ld c, $45                                     ; $5dcf: $0e $45
    db $fc                                        ; $5dd1: $fc
    daa                                           ; $5dd2: $27
    ld h, [hl]                                    ; $5dd3: $66
    jp Jump_000_3fbb                              ; $5dd4: $c3 $bb $3f


    rst $20                                       ; $5dd7: $e7
    adc h                                         ; $5dd8: $8c
    ld l, h                                       ; $5dd9: $6c
    ld [hl], $7a                                  ; $5dda: $36 $7a
    cp b                                          ; $5ddc: $b8
    inc h                                         ; $5ddd: $24
    ld b, a                                       ; $5dde: $47
    call nc, $342d                                ; $5ddf: $d4 $2d $34
    db $db                                        ; $5de2: $db
    cp c                                          ; $5de3: $b9
    and c                                         ; $5de4: $a1
    rst $20                                       ; $5de5: $e7
    adc [hl]                                      ; $5de6: $8e
    db $eb                                        ; $5de7: $eb
    ld [hl], c                                    ; $5de8: $71
    daa                                           ; $5de9: $27
    sub $9f                                       ; $5dea: $d6 $9f
    sbc b                                         ; $5dec: $98
    ld b, a                                       ; $5ded: $47
    res 3, [hl]                                   ; $5dee: $cb $9e
    ld l, a                                       ; $5df0: $6f
    dec sp                                        ; $5df1: $3b
    cp l                                          ; $5df2: $bd
    sbc $17                                       ; $5df3: $de $17
    jp $d158                                      ; $5df5: $c3 $58 $d1


    db $ec                                        ; $5df8: $ec
    cp d                                          ; $5df9: $ba
    ld [c], a                                     ; $5dfa: $e2
    db $d3                                        ; $5dfb: $d3
    ld [hl+], a                                   ; $5dfc: $22
    cp $13                                        ; $5dfd: $fe $13
    or e                                          ; $5dff: $b3
    pop de                                        ; $5e00: $d1
    ld [$bd64], a                                 ; $5e01: $ea $64 $bd
    ld a, b                                       ; $5e04: $78
    ld sp, hl                                     ; $5e05: $f9
    xor l                                         ; $5e06: $ad
    sbc a                                         ; $5e07: $9f
    add $59                                       ; $5e08: $c6 $59
    ld c, l                                       ; $5e0a: $4d
    db $e3                                        ; $5e0b: $e3
    inc [hl]                                      ; $5e0c: $34
    jp Jump_067_7975                              ; $5e0d: $c3 $75 $79


    dec hl                                        ; $5e10: $2b
    sbc e                                         ; $5e11: $9b
    ld b, $d4                                     ; $5e12: $06 $d4
    adc e                                         ; $5e14: $8b
    sub a                                         ; $5e15: $97
    rst $18                                       ; $5e16: $df
    ld a, d                                       ; $5e17: $7a
    jp c, $fde3                                   ; $5e18: $da $e3 $fd

    ld bc, $2197                                  ; $5e1b: $01 $97 $21
    ld l, d                                       ; $5e1e: $6a
    and a                                         ; $5e1f: $a7
    rst $38                                       ; $5e20: $ff
    ld h, b                                       ; $5e21: $60
    ld c, c                                       ; $5e22: $49
    adc [hl]                                      ; $5e23: $8e
    xor b                                         ; $5e24: $a8
    ld e, e                                       ; $5e25: $5b
    ld l, b                                       ; $5e26: $68
    or [hl]                                       ; $5e27: $b6
    ld [hl], e                                    ; $5e28: $73
    db $d3                                        ; $5e29: $d3
    rlca                                          ; $5e2a: $07
    db $db                                        ; $5e2b: $db
    add h                                         ; $5e2c: $84
    inc hl                                        ; $5e2d: $23
    ld l, d                                       ; $5e2e: $6a
    inc d                                         ; $5e2f: $14
    ld c, [hl]                                    ; $5e30: $4e
    and a                                         ; $5e31: $a7
    adc b                                         ; $5e32: $88
    rst $38                                       ; $5e33: $ff
    call nz, $786c                                ; $5e34: $c4 $6c $78
    rst $30                                       ; $5e37: $f7
    rlca                                          ; $5e38: $07
    rst $20                                       ; $5e39: $e7
    adc h                                         ; $5e3a: $8c
    inc d                                         ; $5e3b: $14
    push af                                       ; $5e3c: $f5
    sbc a                                         ; $5e3d: $9f
    sbc b                                         ; $5e3e: $98
    ld e, a                                       ; $5e3f: $5f
    ld [hl], h                                    ; $5e40: $74
    inc l                                         ; $5e41: $2c
    sbc e                                         ; $5e42: $9b
    ld de, $ed33                                  ; $5e43: $11 $33 $ed
    xor $36                                       ; $5e46: $ee $36
    pop hl                                        ; $5e48: $e1
    inc [hl]                                      ; $5e49: $34
    push hl                                       ; $5e4a: $e5
    ld h, b                                       ; $5e4b: $60
    db $d3                                        ; $5e4c: $d3
    sub h                                         ; $5e4d: $94
    ld b, e                                       ; $5e4e: $43
    or c                                          ; $5e4f: $b1
    and b                                         ; $5e50: $a0
    rst $38                                       ; $5e51: $ff
    ld c, b                                       ; $5e52: $48
    db $fc                                        ; $5e53: $fc
    xor b                                         ; $5e54: $a8
    ld c, a                                       ; $5e55: $4f
    ld h, e                                       ; $5e56: $63
    cp c                                          ; $5e57: $b9
    ld e, e                                       ; $5e58: $5b
    ld e, c                                       ; $5e59: $59
    rra                                           ; $5e5a: $1f
    ld l, c                                       ; $5e5b: $69
    ld e, d                                       ; $5e5c: $5a
    cp l                                          ; $5e5d: $bd
    sub e                                         ; $5e5e: $93
    sbc [hl]                                      ; $5e5f: $9e
    xor $af                                       ; $5e60: $ee $af
    db $fd                                        ; $5e62: $fd
    rst $20                                       ; $5e63: $e7
    add hl, hl                                    ; $5e64: $29
    push af                                       ; $5e65: $f5
    cp $00                                        ; $5e66: $fe $00
    rst $20                                       ; $5e68: $e7
    ld b, d                                       ; $5e69: $42
    inc sp                                        ; $5e6a: $33
    cp e                                          ; $5e6b: $bb
    jp nz, $22ae                                  ; $5e6c: $c2 $ae $22

    cp $13                                        ; $5e6f: $fe $13
    or e                                          ; $5e71: $b3
    ld d, c                                       ; $5e72: $51
    inc sp                                        ; $5e73: $33
    ld a, [hl-]                                   ; $5e74: $3a
    db $fd                                        ; $5e75: $fd
    rlca                                          ; $5e76: $07
    ld c, e                                       ; $5e77: $4b
    ld [hl], d                                    ; $5e78: $72
    ld b, h                                       ; $5e79: $44
    db $dd                                        ; $5e7a: $dd
    ld b, d                                       ; $5e7b: $42
    or e                                          ; $5e7c: $b3
    sbc l                                         ; $5e7d: $9d
    sbc e                                         ; $5e7e: $9b
    ld a, $db                                     ; $5e7f: $3e $db
    add h                                         ; $5e81: $84
    inc hl                                        ; $5e82: $23
    ld a, [hl+]                                   ; $5e83: $2a
    ld e, a                                       ; $5e84: $5f
    inc c                                         ; $5e85: $0c
    inc l                                         ; $5e86: $2c
    ld h, e                                       ; $5e87: $63
    ld h, b                                       ; $5e88: $60
    db $fd                                        ; $5e89: $fd
    or c                                          ; $5e8a: $b1
    ld [hl], d                                    ; $5e8b: $72
    or a                                          ; $5e8c: $b7
    xor $5f                                       ; $5e8d: $ee $5f
    sbc l                                         ; $5e8f: $9d
    dec h                                         ; $5e90: $25

jr_067_5e91:
    di                                            ; $5e91: $f3
    cp $00                                        ; $5e92: $fe $00
    sub a                                         ; $5e94: $97
    ld hl, $036a                                  ; $5e95: $21 $6a $03
    ld a, [hl-]                                   ; $5e98: $3a
    ld b, l                                       ; $5e99: $45
    db $fc                                        ; $5e9a: $fc
    daa                                           ; $5e9b: $27
    ld h, [hl]                                    ; $5e9c: $66
    and e                                         ; $5e9d: $a3
    db $dd                                        ; $5e9e: $dd
    db $dd                                        ; $5e9f: $dd
    ld h, $9c                                     ; $5ea0: $26 $9c
    ld c, d                                       ; $5ea2: $4a
    ld [hl], h                                    ; $5ea3: $74
    dec [hl]                                      ; $5ea4: $35
    ld c, e                                       ; $5ea5: $4b
    add [hl]                                      ; $5ea6: $86
    sub [hl]                                      ; $5ea7: $96
    dec c                                         ; $5ea8: $0d
    ret nc                                        ; $5ea9: $d0

    or a                                          ; $5eaa: $b7
    cp b                                          ; $5eab: $b8
    ldh a, [$6c]                                  ; $5eac: $f0 $6c
    jp $db07                                      ; $5eae: $c3 $07 $db


    add h                                         ; $5eb1: $84
    db $d3                                        ; $5eb2: $d3
    ld a, a                                       ; $5eb3: $7f
    ld [c], a                                     ; $5eb4: $e2
    cp a                                          ; $5eb5: $bf
    cp b                                          ; $5eb6: $b8
    db $dd                                        ; $5eb7: $dd
    inc [hl]                                      ; $5eb8: $34
    and e                                         ; $5eb9: $a3
    ld l, h                                       ; $5eba: $6c
    halt                                          ; $5ebb: $76
    xor h                                         ; $5ebc: $ac
    ld a, h                                       ; $5ebd: $7c
    xor d                                         ; $5ebe: $aa
    jp nz, $7bb9                                  ; $5ebf: $c2 $b9 $7b

    push bc                                       ; $5ec2: $c5
    cp b                                          ; $5ec3: $b8
    ld a, [de]                                    ; $5ec4: $1a
    ld a, [c]                                     ; $5ec5: $f2
    inc sp                                        ; $5ec6: $33
    ld e, d                                       ; $5ec7: $5a
    sbc l                                         ; $5ec8: $9d
    xor h                                         ; $5ec9: $ac
    ccf                                           ; $5eca: $3f
    ld sp, $d94f                                  ; $5ecb: $31 $4f $d9
    di                                            ; $5ece: $f3
    ld l, l                                       ; $5ecf: $6d
    and a                                         ; $5ed0: $a7
    rst $10                                       ; $5ed1: $d7
    ei                                            ; $5ed2: $fb
    ld h, d                                       ; $5ed3: $62
    jr jr_067_5e91                                ; $5ed4: $18 $bb

    ccf                                           ; $5ed6: $3f
    rst $30                                       ; $5ed7: $f7
    ld a, l                                       ; $5ed8: $7d
    ld [hl], a                                    ; $5ed9: $77
    sbc d                                         ; $5eda: $9a
    ld [hl], $c6                                  ; $5edb: $36 $c6

Jump_067_5edd:
    add b                                         ; $5edd: $80
    xor d                                         ; $5ede: $aa
    or e                                          ; $5edf: $b3
    inc a                                         ; $5ee0: $3c
    push bc                                       ; $5ee1: $c5
    ccf                                           ; $5ee2: $3f
    ld [hl], c                                    ; $5ee3: $71
    ld [hl], a                                    ; $5ee4: $77
    ld sp, hl                                     ; $5ee5: $f9
    cp $69                                        ; $5ee6: $fe $69
    sbc b                                         ; $5ee8: $98
    ld [$ffba], a                                 ; $5ee9: $ea $ba $ff
    xor $55                                       ; $5eec: $ee $55
    rla                                           ; $5eee: $17
    ld e, h                                       ; $5eef: $5c
    ld d, c                                       ; $5ef0: $51
    add e                                         ; $5ef1: $83
    rlca                                          ; $5ef2: $07
    ld sp, $2b8f                                  ; $5ef3: $31 $8f $2b
    db $fd                                        ; $5ef6: $fd
    db $dd                                        ; $5ef7: $dd
    or l                                          ; $5ef8: $b5
    db $ec                                        ; $5ef9: $ec
    ld h, l                                       ; $5efa: $65
    sub b                                         ; $5efb: $90
    ld a, $34                                     ; $5efc: $3e $34
    inc sp                                        ; $5efe: $33
    and b                                         ; $5eff: $a0
    ld bc, $41dd                                  ; $5f00: $01 $dd $41
    adc a                                         ; $5f03: $8f
    ld [hl], b                                    ; $5f04: $70
    ld a, [de]                                    ; $5f05: $1a
    ret nc                                        ; $5f06: $d0

    ld h, e                                       ; $5f07: $63
    adc a                                         ; $5f08: $8f
    ccf                                           ; $5f09: $3f
    ld sp, hl                                     ; $5f0a: $f9
    sub h                                         ; $5f0b: $94
    ei                                            ; $5f0c: $fb
    cp [hl]                                       ; $5f0d: $be
    ccf                                           ; $5f0e: $3f
    ld e, e                                       ; $5f0f: $5b
    ld l, b                                       ; $5f10: $68
    or [hl]                                       ; $5f11: $b6
    ld d, e                                       ; $5f12: $53
    ld d, h                                       ; $5f13: $54
    xor d                                         ; $5f14: $aa
    ld a, [hl-]                                   ; $5f15: $3a
    call $8cd4                                    ; $5f16: $cd $d4 $8c
    adc l                                         ; $5f19: $8d
    ld [de], a                                    ; $5f1a: $12
    dec de                                        ; $5f1b: $1b
    cp d                                          ; $5f1c: $ba
    sub l                                         ; $5f1d: $95
    jp c, $9c28                                   ; $5f1e: $da $28 $9c

    xor [hl]                                      ; $5f21: $ae
    add $d5                                       ; $5f22: $c6 $d5
    sub b                                         ; $5f24: $90
    sbc a                                         ; $5f25: $9f
    pop de                                        ; $5f26: $d1
    jp z, $0317                                   ; $5f27: $ca $17 $03

    dec hl                                        ; $5f2a: $2b
    ld sp, hl                                     ; $5f2b: $f9
    or h                                          ; $5f2c: $b4
    cp $c4                                        ; $5f2d: $fe $c4
    inc a                                         ; $5f2f: $3c
    ld a, [hl+]                                   ; $5f30: $2a
    xor d                                         ; $5f31: $aa
    xor $de                                       ; $5f32: $ee $de
    pop de                                        ; $5f34: $d1
    sbc [hl]                                      ; $5f35: $9e

jr_067_5f36:
    ret c                                         ; $5f36: $d8

    jr nc, jr_067_5f36                            ; $5f37: $30 $fd

    ld b, a                                       ; $5f39: $47
    or e                                          ; $5f3a: $b3
    sub e                                         ; $5f3b: $93
    xor b                                         ; $5f3c: $a8
    ccf                                           ; $5f3d: $3f
    sub $17                                       ; $5f3e: $d6 $17
    inc sp                                        ; $5f40: $33
    call z, $fa46                                 ; $5f41: $cc $46 $fa
    jr nc, @-$16                                  ; $5f44: $30 $e8

    db $fd                                        ; $5f46: $fd
    ld bc, $5467                                  ; $5f47: $01 $67 $54
    ld hl, $437d                                  ; $5f4a: $21 $7d $43
    sbc l                                         ; $5f4d: $9d
    ld h, h                                       ; $5f4e: $64
    sub e                                         ; $5f4f: $93
    inc de                                        ; $5f50: $13
    adc l                                         ; $5f51: $8d
    push af                                       ; $5f52: $f5
    xor c                                         ; $5f53: $a9
    ld c, d                                       ; $5f54: $4a
    add e                                         ; $5f55: $83
    sub $c7                                       ; $5f56: $d6 $c7
    jp nz, $17ca                                  ; $5f58: $c2 $ca $17

    sub e                                         ; $5f5b: $93
    inc l                                         ; $5f5c: $2c
    db $dd                                        ; $5f5d: $dd
    jp nz, $e7bb                                  ; $5f5e: $c2 $bb $e7

    ld b, d                                       ; $5f61: $42
    ld a, a                                       ; $5f62: $7f
    or a                                          ; $5f63: $b7
    ld hl, sp+$2c                                 ; $5f64: $f8 $2c
    ld d, e                                       ; $5f66: $53
    xor $2d                                       ; $5f67: $ee $2d
    db $d3                                        ; $5f69: $d3
    ret nz                                        ; $5f6a: $c0

    ld a, [$5c88]                                 ; $5f6b: $fa $88 $5c
    sbc $2e                                       ; $5f6e: $de $2e
    xor [hl]                                      ; $5f70: $ae
    rla                                           ; $5f71: $17
    ld c, [hl]                                    ; $5f72: $4e
    inc bc                                        ; $5f73: $03
    ld a, d                                       ; $5f74: $7a
    ld h, d                                       ; $5f75: $62
    db $fd                                        ; $5f76: $fd
    adc c                                         ; $5f77: $89
    ld a, c                                       ; $5f78: $79
    or h                                          ; $5f79: $b4
    cp $58                                        ; $5f7a: $fe $58
    reti                                          ; $5f7c: $d9


    inc c                                         ; $5f7d: $0c
    add e                                         ; $5f7e: $83
    or $c5                                        ; $5f7f: $f6 $c5
    inc c                                         ; $5f81: $0c
    or e                                          ; $5f82: $b3
    sub c                                         ; $5f83: $91
    cp $0b                                        ; $5f84: $fe $0b
    ld [hl], e                                    ; $5f86: $73
    ld a, a                                       ; $5f87: $7f
    ld d, a                                       ; $5f88: $57
    cp h                                          ; $5f89: $bc
    ld a, [hl-]                                   ; $5f8a: $3a
    reti                                          ; $5f8b: $d9


    ld a, a                                       ; $5f8c: $7f
    or b                                          ; $5f8d: $b0
    inc h                                         ; $5f8e: $24
    and a                                         ; $5f8f: $a7
    xor h                                         ; $5f90: $ac
    ld a, [c]                                     ; $5f91: $f2
    ld e, c                                       ; $5f92: $59
    ld a, l                                       ; $5f93: $7d
    inc l                                         ; $5f94: $2c
    xor h                                         ; $5f95: $ac
    ccf                                           ; $5f96: $3f
    sub [hl]                                      ; $5f97: $96
    reti                                          ; $5f98: $d9


    ret nz                                        ; $5f99: $c0

    ld a, d                                       ; $5f9a: $7a
    dec c                                         ; $5f9b: $0d
    ld sp, $5443                                  ; $5f9c: $31 $43 $54
    ld c, c                                       ; $5f9f: $49
    dec l                                         ; $5fa0: $2d
    rst $38                                       ; $5fa1: $ff
    db $e4                                        ; $5fa2: $e4
    inc [hl]                                      ; $5fa3: $34
    push hl                                       ; $5fa4: $e5
    ld d, b                                       ; $5fa5: $50
    jr jr_067_5fd3                                ; $5fa6: $18 $2b

    ld sp, hl                                     ; $5fa8: $f9
    or h                                          ; $5fa9: $b4
    ld a, $8d                                     ; $5faa: $3e $8d
    sbc l                                         ; $5fac: $9d
    ld l, $6f                                     ; $5fad: $2e $6f
    ld e, c                                       ; $5faf: $59
    db $d3                                        ; $5fb0: $d3
    ei                                            ; $5fb1: $fb
    inc bc                                        ; $5fb2: $03
    db $db                                        ; $5fb3: $db
    add h                                         ; $5fb4: $84
    inc hl                                        ; $5fb5: $23
    xor d                                         ; $5fb6: $aa
    and h                                         ; $5fb7: $a4
    ld [hl], $0a                                  ; $5fb8: $36 $0a
    and a                                         ; $5fba: $a7
    adc h                                         ; $5fbb: $8c
    ld h, c                                       ; $5fbc: $61
    jp z, Jump_000_06fa                           ; $5fbd: $ca $fa $06

    call Call_067_4ab4                            ; $5fc0: $cd $b4 $4a
    rst $30                                       ; $5fc3: $f7
    ld [hl-], a                                   ; $5fc4: $32
    res 1, h                                      ; $5fc5: $cb $8c
    cp b                                          ; $5fc7: $b8
    ld e, [hl]                                    ; $5fc8: $5e
    jr c, @-$07                                   ; $5fc9: $38 $f7

    rlca                                          ; $5fcb: $07
    db $db                                        ; $5fcc: $db
    add h                                         ; $5fcd: $84
    ld [hl], e                                    ; $5fce: $73
    ld [hl], a                                    ; $5fcf: $77
    dec hl                                        ; $5fd0: $2b
    or l                                          ; $5fd1: $b5
    adc d                                         ; $5fd2: $8a

jr_067_5fd3:
    ld b, d                                       ; $5fd3: $42
    ldh a, [$d3]                                  ; $5fd4: $f0 $d3
    db $fc                                        ; $5fd6: $fc
    xor h                                         ; $5fd7: $ac
    ld e, h                                       ; $5fd8: $5c
    jp nc, Jump_000_364e                          ; $5fd9: $d2 $4e $36

    or d                                          ; $5fdc: $b2
    ret nc                                        ; $5fdd: $d0

    ld a, a                                       ; $5fde: $7f
    ld d, $8a                                     ; $5fdf: $16 $8a
    ld c, d                                       ; $5fe1: $4a
    ld a, a                                       ; $5fe2: $7f
    inc [hl]                                      ; $5fe3: $34
    ld c, a                                       ; $5fe4: $4f
    ld d, e                                       ; $5fe5: $53
    ld c, $85                                     ; $5fe6: $0e $85
    and $b5                                       ; $5fe8: $e6 $b5
    or d                                          ; $5fea: $b2
    add hl, de                                    ; $5feb: $19
    ld sp, $aad3                                  ; $5fec: $31 $d3 $aa
    ld a, h                                       ; $5fef: $7c
    halt                                          ; $5ff0: $76
    ld a, a                                       ; $5ff1: $7f
    db $db                                        ; $5ff2: $db
    ld e, h                                       ; $5ff3: $5c
    db $fc                                        ; $5ff4: $fc
    reti                                          ; $5ff5: $d9


    push de                                       ; $5ff6: $d5
    xor e                                         ; $5ff7: $ab

Call_067_5ff8:
    sub e                                         ; $5ff8: $93
    db $fd                                        ; $5ff9: $fd
    rlca                                          ; $5ffa: $07
    ld c, e                                       ; $5ffb: $4b
    ld [hl], d                                    ; $5ffc: $72
    ld l, d                                       ; $5ffd: $6a
    inc hl                                        ; $5ffe: $23
    ld a, b                                       ; $5fff: $78
    xor $26                                       ; $6000: $ee $26
    inc d                                         ; $6002: $14
    ld [$a6c3], a                                 ; $6003: $ea $c3 $a6
    ld e, $c8                                     ; $6006: $1e $c8
    ld b, [hl]                                    ; $6008: $46
    rla                                           ; $6009: $17
    ld a, a                                       ; $600a: $7f
    halt                                          ; $600b: $76
    dec b                                         ; $600c: $05
    cp e                                          ; $600d: $bb
    ccf                                           ; $600e: $3f
    ld d, a                                       ; $600f: $57
    cp h                                          ; $6010: $bc
    ld a, [hl-]                                   ; $6011: $3a
    ld e, c                                       ; $6012: $59
    daa                                           ; $6013: $27
    reti                                          ; $6014: $d9


    dec d                                         ; $6015: $15
    halt                                          ; $6016: $76
    dec d                                         ; $6017: $15
    or d                                          ; $6018: $b2
    ld a, [hl-]                                   ; $6019: $3a
    ld sp, $2a39                                  ; $601a: $31 $39 $2a
    ld l, d                                       ; $601d: $6a
    add b                                         ; $601e: $80
    ccf                                           ; $601f: $3f
    ld c, a                                       ; $6020: $4f
    dec de                                        ; $6021: $1b
    ret nc                                        ; $6022: $d0

    ld a, a                                       ; $6023: $7f
    inc h                                         ; $6024: $24
    xor h                                         ; $6025: $ac
    ld bc, $fa92                                  ; $6026: $01 $92 $fa
    jr @+$48                                      ; $6029: $18 $46

    db $eb                                        ; $602b: $eb
    ld d, e                                       ; $602c: $53
    di                                            ; $602d: $f3
    cp d                                          ; $602e: $ba
    and a                                         ; $602f: $a7
    dec c                                         ; $6030: $0d
    jr z, @+$3f                                   ; $6031: $28 $3d

    cp e                                          ; $6033: $bb
    ld a, e                                       ; $6034: $7b
    add $78                                       ; $6035: $c6 $78
    ld a, a                                       ; $6037: $7f
    db $db                                        ; $6038: $db
    add h                                         ; $6039: $84
    inc hl                                        ; $603a: $23
    xor d                                         ; $603b: $aa
    xor $5e                                       ; $603c: $ee $5e
    and l                                         ; $603e: $a5
    ccf                                           ; $603f: $3f
    ld e, d                                       ; $6040: $5a
    dec de                                        ; $6041: $1b
    pop bc                                        ; $6042: $c1
    and e                                         ; $6043: $a3
    rst $30                                       ; $6044: $f7
    rlca                                          ; $6045: $07
    db $db                                        ; $6046: $db
    add h                                         ; $6047: $84
    ld [hl], e                                    ; $6048: $73
    ld [hl], a                                    ; $6049: $77
    dec hl                                        ; $604a: $2b
    or l                                          ; $604b: $b5
    ld c, [hl]                                    ; $604c: $4e
    or d                                          ; $604d: $b2
    dec hl                                        ; $604e: $2b
    db $ec                                        ; $604f: $ec
    ld [$d5ea], a                                 ; $6050: $ea $ea $d5
    ld c, c                                       ; $6053: $49
    sub $5f                                       ; $6054: $d6 $5f
    jr jr_067_608b                                ; $6056: $18 $33

    sbc e                                         ; $6058: $9b
    ld [hl], d                                    ; $6059: $72
    xor b                                         ; $605a: $a8
    ld c, a                                       ; $605b: $4f
    jp Jump_067_58ff                              ; $605c: $c3 $ff $58


    daa                                           ; $605f: $27
    ei                                            ; $6060: $fb
    rrca                                          ; $6061: $0f
    sub [hl]                                      ; $6062: $96
    db $e4                                        ; $6063: $e4
    call c, $db1f                                 ; $6064: $dc $1f $db
    add h                                         ; $6067: $84
    ld d, e                                       ; $6068: $53
    push bc                                       ; $6069: $c5
    ld l, e                                       ; $606a: $6b
    sbc b                                         ; $606b: $98
    and [hl]                                      ; $606c: $a6
    inc e                                         ; $606d: $1c
    ld a, [bc]                                    ; $606e: $0a
    call Call_067_5a6b                            ; $606f: $cd $6b $5a
    sub $cb                                       ; $6072: $d6 $cb
    add l                                         ; $6074: $85
    halt                                          ; $6075: $76
    ld a, a                                       ; $6076: $7f
    ld d, a                                       ; $6077: $57
    inc a                                         ; $6078: $3c
    ld d, a                                       ; $6079: $57
    ld a, a                                       ; $607a: $7f
    xor h                                         ; $607b: $ac
    call c, $4ead                                 ; $607c: $dc $ad $4e
    or $1f                                        ; $607f: $f6 $1f
    inc l                                         ; $6081: $2c
    ret                                           ; $6082: $c9


    xor c                                         ; $6083: $a9
    adc l                                         ; $6084: $8d
    ldh [$d9], a                                  ; $6085: $e0 $d9
    db $f4                                        ; $6087: $f4
    ld bc, $84db                                  ; $6088: $01 $db $84

jr_067_608b:
    ld [hl], e                                    ; $608b: $73
    rst $30                                       ; $608c: $f7
    ld [hl-], a                                   ; $608d: $32
    ld l, $2b                                     ; $608e: $2e $2b
    db $ec                                        ; $6090: $ec
    ld [$9ff4], a                                 ; $6091: $ea $f4 $9f
    xor b                                         ; $6094: $a8
    cpl                                           ; $6095: $2f
    ld c, l                                       ; $6096: $4d
    dec l                                         ; $6097: $2d
    ld [c], a                                     ; $6098: $e2
    ccf                                           ; $6099: $3f
    ld sp, $ad1b                                  ; $609a: $31 $1b $ad
    rst $38                                       ; $609d: $ff
    ret z                                         ; $609e: $c8

    ld a, [hl-]                                   ; $609f: $3a
    ret                                           ; $60a0: $c9


    cp $88                                        ; $60a1: $fe $88
    db $e3                                        ; $60a3: $e3
    adc h                                         ; $60a4: $8c
    or l                                          ; $60a5: $b5
    ld de, $fbcc                                  ; $60a6: $11 $cc $fb
    inc bc                                        ; $60a9: $03
    sub a                                         ; $60aa: $97
    ld c, e                                       ; $60ab: $4b
    halt                                          ; $60ac: $76
    add l                                         ; $60ad: $85
    ld e, l                                       ; $60ae: $5d
    ld e, l                                       ; $60af: $5d
    cp l                                          ; $60b0: $bd
    ld a, [hl-]                                   ; $60b1: $3a
    reti                                          ; $60b2: $d9


    inc l                                         ; $60b3: $2c
    sbc h                                         ; $60b4: $9c
    xor $62                                       ; $60b5: $ee $62
    ld c, h                                       ; $60b7: $4c
    inc sp                                        ; $60b8: $33
    ld c, h                                       ; $60b9: $4c
    ld d, e                                       ; $60ba: $53
    ld c, $85                                     ; $60bb: $0e $85
    ld h, [hl]                                    ; $60bd: $66
    xor [hl]                                      ; $60be: $ae
    ret c                                         ; $60bf: $d8

    ld h, l                                       ; $60c0: $65

Jump_067_60c1:
    or a                                          ; $60c1: $b7
    push de                                       ; $60c2: $d5
    dec bc                                        ; $60c3: $0b
    inc hl                                        ; $60c4: $23
    xor d                                         ; $60c5: $aa
    and h                                         ; $60c6: $a4
    ld [hl], $0a                                  ; $60c7: $36 $0a
    and a                                         ; $60c9: $a7
    ret nc                                        ; $60ca: $d0

    call z, $eb15                                 ; $60cb: $cc $15 $eb
    db $db                                        ; $60ce: $db
    ld hl, sp-$0a                                 ; $60cf: $f8 $f6
    jr z, jr_067_60e4                             ; $60d1: $28 $11

    inc sp                                        ; $60d3: $33
    ld l, d                                       ; $60d4: $6a
    inc hl                                        ; $60d5: $23
    ld a, b                                       ; $60d6: $78
    xor $0f                                       ; $60d7: $ee $0f
    db $db                                        ; $60d9: $db
    add h                                         ; $60da: $84
    ld [hl], e                                    ; $60db: $73
    scf                                           ; $60dc: $37
    pop de                                        ; $60dd: $d1
    and $77                                       ; $60de: $e6 $77
    add $2e                                       ; $60e0: $c6 $2e
    ld l, e                                       ; $60e2: $6b
    push af                                       ; $60e3: $f5

jr_067_60e4:
    adc [hl]                                      ; $60e4: $8e
    pop af                                        ; $60e5: $f1
    xor $76                                       ; $60e6: $ee $76
    db $ed                                        ; $60e8: $ed
    ccf                                           ; $60e9: $3f
    ld e, b                                       ; $60ea: $58
    sub d                                         ; $60eb: $92
    and e                                         ; $60ec: $a3
    sbc l                                         ; $60ed: $9d
    add b                                         ; $60ee: $80
    ld b, a                                       ; $60ef: $47
    ld e, c                                       ; $60f0: $59
    ld [hl], l                                    ; $60f1: $75
    sbc [hl]                                      ; $60f2: $9e
    ld h, a                                       ; $60f3: $67
    add l                                         ; $60f4: $85
    cp $0c                                        ; $60f5: $fe $0c
    call nc, $03fb                                ; $60f7: $d4 $fb $03
    db $db                                        ; $60fa: $db
    add h                                         ; $60fb: $84
    inc hl                                        ; $60fc: $23
    xor d                                         ; $60fd: $aa
    ccf                                           ; $60fe: $3f
    sub [hl]                                      ; $60ff: $96
    ld [hl], d                                    ; $6100: $72
    rlca                                          ; $6101: $07
    adc d                                         ; $6102: $8a
    ld a, [de]                                    ; $6103: $1a
    or b                                          ; $6104: $b0
    ld a, d                                       ; $6105: $7a
    ld l, h                                       ; $6106: $6c
    add [hl]                                      ; $6107: $86
    ld [hl], l                                    ; $6108: $75
    push af                                       ; $6109: $f5
    inc [hl]                                      ; $610a: $34
    rst $08                                       ; $610b: $cf
    and [hl]                                      ; $610c: $a6
    rrca                                          ; $610d: $0f
    db $db                                        ; $610e: $db
    add h                                         ; $610f: $84
    inc hl                                        ; $6110: $23
    xor d                                         ; $6111: $aa
    and h                                         ; $6112: $a4
    ld d, [hl]                                    ; $6113: $56
    or c                                          ; $6114: $b1
    ld a, d                                       ; $6115: $7a
    sub $f0                                       ; $6116: $d6 $f0
    jp nc, $71b3                                  ; $6118: $d2 $b3 $71

    ld c, c                                       ; $611b: $49
    and d                                         ; $611c: $a2
    add hl, hl                                    ; $611d: $29
    add a                                         ; $611e: $87
    ld b, d                                       ; $611f: $42
    di                                            ; $6120: $f3
    sbc d                                         ; $6121: $9a
    halt                                          ; $6122: $76
    rst $38                                       ; $6123: $ff
    ld a, [$bf36]                                 ; $6124: $fa $36 $bf
    inc sp                                        ; $6127: $33
    ld [hl], $60                                  ; $6128: $36 $60
    pop bc                                        ; $612a: $c1
    db $fd                                        ; $612b: $fd
    ld bc, $f467                                  ; $612c: $01 $67 $f4
    ld e, a                                       ; $612f: $5f
    ld l, b                                       ; $6130: $68
    db $d3                                        ; $6131: $d3
    sub h                                         ; $6132: $94
    ld b, e                                       ; $6133: $43
    and e                                         ; $6134: $a3
    ld [hl], b                                    ; $6135: $70
    ld [hl], $7c                                  ; $6136: $36 $7c
    sub a                                         ; $6138: $97
    jr c, jr_067_616f                             ; $6139: $38 $34

    inc a                                         ; $613b: $3c
    ld a, d                                       ; $613c: $7a
    ld b, [hl]                                    ; $613d: $46
    db $eb                                        ; $613e: $eb
    and l                                         ; $613f: $a5
    dec a                                         ; $6140: $3d
    sub $c9                                       ; $6141: $d6 $c9
    cp $83                                        ; $6143: $fe $83
    dec h                                         ; $6145: $25
    add hl, sp                                    ; $6146: $39
    ld h, l                                       ; $6147: $65
    jp z, Jump_067_42bd                           ; $6148: $ca $bd $42

    or $7f                                        ; $614b: $f6 $7f
    sub d                                         ; $614d: $92
    sbc e                                         ; $614e: $9b
    ld a, $db                                     ; $614f: $3e $db
    add h                                         ; $6151: $84
    db $d3                                        ; $6152: $d3
    push de                                       ; $6153: $d5
    db $eb                                        ; $6154: $eb
    ccf                                           ; $6155: $3f
    ld e, b                                       ; $6156: $58
    sub d                                         ; $6157: $92
    ld d, e                                       ; $6158: $53
    ld a, d                                       ; $6159: $7a
    ld [hl], h                                    ; $615a: $74
    ld d, $97                                     ; $615b: $16 $97
    add hl, hl                                    ; $615d: $29
    ld de, $1a33                                  ; $615e: $11 $33 $1a
    ld de, $4e93                                  ; $6161: $11 $93 $4e
    sbc $1f                                       ; $6164: $de $1f
    db $db                                        ; $6166: $db
    add h                                         ; $6167: $84
    ld [hl], e                                    ; $6168: $73
    ld [hl], a                                    ; $6169: $77
    ld a, e                                       ; $616a: $7b
    cpl                                           ; $616b: $2f
    sbc l                                         ; $616c: $9d
    ret c                                         ; $616d: $d8

Call_067_616e:
    dec hl                                        ; $616e: $2b

jr_067_616f:
    ld b, c                                       ; $616f: $41
    ld e, l                                       ; $6170: $5d
    or b                                          ; $6171: $b0
    or e                                          ; $6172: $b3
    add hl, de                                    ; $6173: $19
    or d                                          ; $6174: $b2
    ld c, [hl]                                    ; $6175: $4e
    sub $98                                       ; $6176: $d6 $98
    and a                                         ; $6178: $a7
    sub h                                         ; $6179: $94
    inc [hl]                                      ; $617a: $34
    inc l                                         ; $617b: $2c
    inc c                                         ; $617c: $0c
    ld [hl], e                                    ; $617d: $73
    ld [hl], a                                    ; $617e: $77
    rlca                                          ; $617f: $07
    ld l, h                                       ; $6180: $6c
    add l                                         ; $6181: $85
    ld c, l                                       ; $6182: $4d
    rra                                           ; $6183: $1f
    adc c                                         ; $6184: $89
    ld [hl], $bf                                  ; $6185: $36 $bf
    inc sp                                        ; $6187: $33
    halt                                          ; $6188: $76
    ld e, c                                       ; $6189: $59
    xor e                                         ; $618a: $ab
    ld [hl], a                                    ; $618b: $77
    adc h                                         ; $618c: $8c
    ld [hl], a                                    ; $618d: $77
    inc de                                        ; $618e: $13
    dec c                                         ; $618f: $0d
    rst $38                                       ; $6190: $ff
    ld d, e                                       ; $6191: $53
    ld l, d                                       ; $6192: $6a
    inc bc                                        ; $6193: $03
    ld c, d                                       ; $6194: $4a
    sbc a                                         ; $6195: $9f
    ld sp, $2b49                                  ; $6196: $31 $49 $2b
    xor l                                         ; $6199: $ad
    ld e, [hl]                                    ; $619a: $5e
    add e                                         ; $619b: $83
    cp $73                                        ; $619c: $fe $73
    ld a, a                                       ; $619e: $7f
    add hl, bc                                    ; $619f: $09
    sbc d                                         ; $61a0: $9a
    rst $10                                       ; $61a1: $d7
    or h                                          ; $61a2: $b4
    ld e, $48                                     ; $61a3: $1e $48
    ld d, c                                       ; $61a5: $51
    or a                                          ; $61a6: $b7
    ret nc                                        ; $61a7: $d0

    ld l, h                                       ; $61a8: $6c
    rst $20                                       ; $61a9: $e7
    and [hl]                                      ; $61aa: $a6
    rrca                                          ; $61ab: $0f
    db $db                                        ; $61ac: $db
    sub a                                         ; $61ad: $97
    inc h                                         ; $61ae: $24
    ld e, [hl]                                    ; $61af: $5e
    sbc c                                         ; $61b0: $99
    ld e, $63                                     ; $61b1: $1e $63
    ld a, l                                       ; $61b3: $7d
    inc l                                         ; $61b4: $2c
    xor h                                         ; $61b5: $ac
    nop                                           ; $61b6: $00
    ld b, [hl]                                    ; $61b7: $46
    inc l                                         ; $61b8: $2c
    inc l                                         ; $61b9: $2c
    cp d                                          ; $61ba: $ba
    ld a, d                                       ; $61bb: $7a
    ld [hl], l                                    ; $61bc: $75

Jump_067_61bd:
    sub d                                         ; $61bd: $92
    db $fd                                        ; $61be: $fd
    rst $20                                       ; $61bf: $e7
    add hl, hl                                    ; $61c0: $29
    ld l, e                                       ; $61c1: $6b
    inc hl                                        ; $61c2: $23
    sbc b                                         ; $61c3: $98
    ld h, l                                       ; $61c4: $65
    rst $38                                       ; $61c5: $ff
    ld sp, $7583                                  ; $61c6: $31 $83 $75
    ld e, c                                       ; $61c9: $59
    xor e                                         ; $61ca: $ab
    ld [hl], a                                    ; $61cb: $77
    adc h                                         ; $61cc: $8c
    rst $30                                       ; $61cd: $f7
    rlca                                          ; $61ce: $07
    ld e, e                                       ; $61cf: $5b
    xor c                                         ; $61d0: $a9
    add l                                         ; $61d1: $85
    and $b5                                       ; $61d2: $e6 $b5
    cp $0b                                        ; $61d4: $fe $0b
    ld l, l                                       ; $61d6: $6d
    sbc d                                         ; $61d7: $9a
    ld [hl], d                                    ; $61d8: $72
    ld l, b                                       ; $61d9: $68
    inc d                                         ; $61da: $14
    adc $86                                       ; $61db: $ce $86
    rrca                                          ; $61dd: $0f
    sbc e                                         ; $61de: $9b
    sub e                                         ; $61df: $93
    rst $08                                       ; $61e0: $cf
    ld l, l                                       ; $61e1: $6d
    ld l, b                                       ; $61e2: $68
    add d                                         ; $61e3: $82
    and $71                                       ; $61e4: $e6 $71
    ld h, l                                       ; $61e6: $65
    inc sp                                        ; $61e7: $33
    ld h, d                                       ; $61e8: $62
    and [hl]                                      ; $61e9: $a6
    push de                                       ; $61ea: $d5
    scf                                           ; $61eb: $37
    ld l, b                                       ; $61ec: $68
    and [hl]                                      ; $61ed: $a6
    sub l                                         ; $61ee: $95
    add hl, de                                    ; $61ef: $19
    ld [hl], c                                    ; $61f0: $71
    cp l                                          ; $61f1: $bd
    ld [hl], b                                    ; $61f2: $70
    jp z, Jump_067_6fa9                           ; $61f3: $ca $a9 $6f

    db $e3                                        ; $61f6: $e3
    add l                                         ; $61f7: $85
    ld [$86d8], a                                 ; $61f8: $ea $d8 $86
    rrca                                          ; $61fb: $0f
    dec sp                                        ; $61fc: $3b
    ret nc                                        ; $61fd: $d0

    sub h                                         ; $61fe: $94
    ld a, e                                       ; $61ff: $7b
    ld a, [bc]                                    ; $6200: $0a
    add e                                         ; $6201: $83
    ld [hl], $3f                                  ; $6202: $36 $3f
    sbc e                                         ; $6204: $9b
    jp nc, $989f                                  ; $6205: $d2 $9f $98

    add hl, hl                                    ; $6208: $29
    ld de, $68f3                                  ; $6209: $11 $f3 $68
    pop de                                        ; $620c: $d1
    nop                                           ; $620d: $00
    ld a, a                                       ; $620e: $7f
    sbc [hl]                                      ; $620f: $9e
    ld d, $82                                     ; $6210: $16 $82
    db $fd                                        ; $6212: $fd
    push hl                                       ; $6213: $e5
    db $fd                                        ; $6214: $fd
    or e                                          ; $6215: $b3
    ld sp, $fee3                                  ; $6216: $31 $e3 $fe
    nop                                           ; $6219: $00
    dec sp                                        ; $621a: $3b
    ret nc                                        ; $621b: $d0

    sub h                                         ; $621c: $94
    add e                                         ; $621d: $83
    ld b, c                                       ; $621e: $41
    sbc e                                         ; $621f: $9b
    ld [hl], d                                    ; $6220: $72
    ld l, b                                       ; $6221: $68
    ld b, [hl]                                    ; $6222: $46
    ld hl, $5fd8                                  ; $6223: $21 $d8 $5f
    ld e, [hl]                                    ; $6226: $5e
    jp z, Jump_067_5ca1                           ; $6227: $ca $a1 $5c

    jp nc, $b24e                                  ; $622a: $d2 $4e $b2

    rst $38                                       ; $622d: $ff
    inc a                                         ; $622e: $3c
    and l                                         ; $622f: $a5
    xor b                                         ; $6230: $a8
    ld d, b                                       ; $6231: $50
    rra                                           ; $6232: $1f
    add $32                                       ; $6233: $c6 $32
    xor a                                         ; $6235: $af
    dec hl                                        ; $6236: $2b
    ld a, a                                       ; $6237: $7f
    ld a, d                                       ; $6238: $7a
    ld l, b                                       ; $6239: $68
    ld h, l                                       ; $623a: $65
    jp hl                                         ; $623b: $e9


    ld d, $6e                                     ; $623c: $16 $6e
    ld hl, sp+$00                                 ; $623e: $f8 $00
    sbc e                                         ; $6240: $9b
    sub e                                         ; $6241: $93
    rst $08                                       ; $6242: $cf
    ld l, l                                       ; $6243: $6d
    xor b                                         ; $6244: $a8
    ld a, b                                       ; $6245: $78
    ld a, l                                       ; $6246: $7d
    dec de                                        ; $6247: $1b
    cpl                                           ; $6248: $2f
    ld d, h                                       ; $6249: $54
    rst $00                                       ; $624a: $c7
    ld e, b                                       ; $624b: $58
    ld a, a                                       ; $624c: $7f
    ld [bc], a                                    ; $624d: $02
    ld a, [de]                                    ; $624e: $1a
    sbc $2e                                       ; $624f: $de $2e
    ld e, b                                       ; $6251: $58
    ld d, e                                       ; $6252: $53
    adc [hl]                                      ; $6253: $8e
    ld c, e                                       ; $6254: $4b
    jp z, $fac1                                   ; $6255: $ca $c1 $fa

    rst $08                                       ; $6258: $cf
    ld d, e                                       ; $6259: $53
    or $49                                        ; $625a: $f6 $49
    ld a, a                                       ; $625c: $7f
    inc l                                         ; $625d: $2c
    inc sp                                        ; $625e: $33
    ld h, [hl]                                    ; $625f: $66
    inc d                                         ; $6260: $14
    add l                                         ; $6261: $85
    ld l, e                                       ; $6262: $6b
    inc d                                         ; $6263: $14
    ld c, [hl]                                    ; $6264: $4e
    ld d, e                                       ; $6265: $53
    ld c, $36                                     ; $6266: $0e $36
    push af                                       ; $6268: $f5
    ld h, c                                       ; $6269: $61
    ld bc, $7f76                                  ; $626a: $01 $76 $7f
    sbc e                                         ; $626d: $9b
    sub e                                         ; $626e: $93
    rst $08                                       ; $626f: $cf
    ld l, l                                       ; $6270: $6d
    add sp, $36                                   ; $6271: $e8 $36
    ret z                                         ; $6273: $c8

    ld h, [hl]                                    ; $6274: $66
    sub h                                         ; $6275: $94
    reti                                          ; $6276: $d9


    or b                                          ; $6277: $b0
    and d                                         ; $6278: $a2
    sub [hl]                                      ; $6279: $96
    sub l                                         ; $627a: $95
    ret z                                         ; $627b: $c8

    or b                                          ; $627c: $b0
    adc l                                         ; $627d: $8d
    ld [de], a                                    ; $627e: $12
    add l                                         ; $627f: $85
    xor h                                         ; $6280: $ac
    jp nc, $92de                                  ; $6281: $d2 $de $92

    inc e                                         ; $6284: $1c
    db $dd                                        ; $6285: $dd
    ldh a, [rSB]                                  ; $6286: $f0 $01
    ld [c], a                                     ; $6288: $e2
    ld a, a                                       ; $6289: $7f
    ld [hl], d                                    ; $628a: $72
    sbc d                                         ; $628b: $9a
    ld [hl], d                                    ; $628c: $72
    ld l, b                                       ; $628d: $68
    inc d                                         ; $628e: $14
    ld c, [hl]                                    ; $628f: $4e
    inc bc                                        ; $6290: $03
    ld d, [hl]                                    ; $6291: $56
    adc a                                         ; $6292: $8f
    push af                                       ; $6293: $f5
    ld [hl], d                                    ; $6294: $72
    and c                                         ; $6295: $a1
    dec [hl]                                      ; $6296: $35
    jr c, @+$65                                   ; $6297: $38 $63

    call z, $b528                                 ; $6299: $cc $28 $b5
    ld [hl], h                                    ; $629c: $74
    dec bc                                        ; $629d: $0b
    push af                                       ; $629e: $f5
    cp $00                                        ; $629f: $fe $00
    ld h, a                                       ; $62a1: $67
    ld d, h                                       ; $62a2: $54
    ld h, d                                       ; $62a3: $62
    ld c, c                                       ; $62a4: $49
    adc [hl]                                      ; $62a5: $8e
    push af                                       ; $62a6: $f5
    add hl, de                                    ; $62a7: $19
    or h                                          ; $62a8: $b4
    adc h                                         ; $62a9: $8c
    add c                                         ; $62aa: $81
    ld sp, $7d4c                                  ; $62ab: $31 $4c $7d
    ld a, [de]                                    ; $62ae: $1a
    dec de                                        ; $62af: $1b
    add l                                         ; $62b0: $85
    db $d3                                        ; $62b1: $d3
    adc h                                         ; $62b2: $8c
    ld c, d                                       ; $62b3: $4a
    ld h, h                                       ; $62b4: $64
    jr @-$4a                                      ; $62b5: $18 $b4

    sub b                                         ; $62b7: $90
    ld d, l                                       ; $62b8: $55
    jp c, $925b                                   ; $62b9: $da $5b $92

    and e                                         ; $62bc: $a3

Call_067_62bd:
    rst $30                                       ; $62bd: $f7
    rlca                                          ; $62be: $07
    sbc e                                         ; $62bf: $9b
    sub e                                         ; $62c0: $93
    rst $08                                       ; $62c1: $cf
    ld l, l                                       ; $62c2: $6d
    xor b                                         ; $62c3: $a8
    ld hl, sp-$61                                 ; $62c4: $f8 $9f
    sbc h                                         ; $62c6: $9c
    and [hl]                                      ; $62c7: $a6
    inc e                                         ; $62c8: $1c
    jp z, Jump_000_36fa                           ; $62c9: $ca $fa $36

    ld e, [hl]                                    ; $62cc: $5e
    xor b                                         ; $62cd: $a8
    adc [hl]                                      ; $62ce: $8e
    or c                                          ; $62cf: $b1
    ret nc                                        ; $62d0: $d0

    cp h                                          ; $62d1: $bc
    ld d, [hl]                                    ; $62d2: $56
    halt                                          ; $62d3: $76
    sub [hl]                                      ; $62d4: $96
    inc h                                         ; $62d5: $24
    xor l                                         ; $62d6: $ad
    ld a, $8d                                     ; $62d7: $3e $8d
    adc l                                         ; $62d9: $8d
    cp e                                          ; $62da: $bb
    db $eb                                        ; $62db: $eb
    db $fd                                        ; $62dc: $fd
    ld bc, $5467                                  ; $62dd: $01 $67 $54
    ld h, d                                       ; $62e0: $62
    ld c, c                                       ; $62e1: $49
    adc [hl]                                      ; $62e2: $8e
    dec [hl]                                      ; $62e3: $35
    ld a, [bc]                                    ; $62e4: $0a
    and a                                         ; $62e5: $a7
    ld e, [hl]                                    ; $62e6: $5e
    ld l, $34                                     ; $62e7: $2e $34
    add hl, sp                                    ; $62e9: $39
    jp c, $8ce0                                   ; $62ea: $da $e0 $8c

    ld sp, $2ca3                                  ; $62ed: $31 $a3 $2c
    db $dd                                        ; $62f0: $dd
    ld b, d                                       ; $62f1: $42
    ld d, c                                       ; $62f2: $51
    dec d                                         ; $62f3: $15
    adc l                                         ; $62f4: $8d
    jp nz, $8ea9                                  ; $62f5: $c2 $a9 $8e

    inc e                                         ; $62f8: $1c
    db $ed                                        ; $62f9: $ed
    ld c, a                                       ; $62fa: $4f
    call $cd2f                                    ; $62fb: $cd $2f $cd
    jr nc, jr_067_637a                            ; $62fe: $30 $7a

    ld a, a                                       ; $6300: $7f
    ld d, a                                       ; $6301: $57
    ldh a, [$6d]                                  ; $6302: $f0 $6d
    call z, $a428                                 ; $6304: $cc $28 $a4
    ld h, a                                       ; $6307: $67
    adc h                                         ; $6308: $8c
    dec de                                        ; $6309: $1b
    cp d                                          ; $630a: $ba
    ld c, l                                       ; $630b: $4d
    jr c, jr_067_635b                             ; $630c: $38 $4d

    add hl, sp                                    ; $630e: $39
    ret c                                         ; $630f: $d8

    call nc, Call_067_5dcb                        ; $6310: $d4 $cb $5d
    or b                                          ; $6313: $b0
    xor $62                                       ; $6314: $ee $62
    ld c, h                                       ; $6316: $4c
    db $d3                                        ; $6317: $d3
    ld a, [hl-]                                   ; $6318: $3a
    push af                                       ; $6319: $f5
    ld l, l                                       ; $631a: $6d
    cp h                                          ; $631b: $bc
    ld d, b                                       ; $631c: $50
    dec e                                         ; $631d: $1d
    cp e                                          ; $631e: $bb
    ccf                                           ; $631f: $3f
    sub a                                         ; $6320: $97
    jr c, @-$36                                   ; $6321: $38 $c8

    ld c, d                                       ; $6323: $4a
    inc [hl]                                      ; $6324: $34
    ret nz                                        ; $6325: $c0

    ld e, b                                       ; $6326: $58
    ld a, a                                       ; $6327: $7f

Call_067_6328:
    ld [bc], a                                    ; $6328: $02
    xor h                                         ; $6329: $ac
    rst $08                                       ; $632a: $cf
    ld a, [$cc4f]                                 ; $632b: $fa $4f $cc
    cpl                                           ; $632e: $2f
    dec a                                         ; $632f: $3d
    push af                                       ; $6330: $f5
    ld l, c                                       ; $6331: $69
    ld l, h                                       ; $6332: $6c
    ld b, [hl]                                    ; $6333: $46
    add hl, hl                                    ; $6334: $29
    ret nz                                        ; $6335: $c0

    dec b                                         ; $6336: $05
    sbc d                                         ; $6337: $9a
    xor b                                         ; $6338: $a8
    sub d                                         ; $6339: $92
    jp c, $988c                                   ; $633a: $da $8c $98

    sbc h                                         ; $633d: $9c
    ld b, $d4                                     ; $633e: $06 $d4
    ei                                            ; $6340: $fb
    ld a, [hl]                                    ; $6341: $7e
    ld e, d                                       ; $6342: $5a
    sbc c                                         ; $6343: $99
    ld [hl], d                                    ; $6344: $72
    rst $28                                       ; $6345: $ef
    cp $00                                        ; $6346: $fe $00
    rst $20                                       ; $6348: $e7
    inc c                                         ; $6349: $0c
    xor e                                         ; $634a: $ab
    ld h, e                                       ; $634b: $63
    add hl, de                                    ; $634c: $19
    and d                                         ; $634d: $a2
    ld l, [hl]                                    ; $634e: $6e
    and c                                         ; $634f: $a1
    reti                                          ; $6350: $d9


    adc $bb                                       ; $6351: $ce $bb
    rst $20                                       ; $6353: $e7
    jp nz, $a79f                                  ; $6354: $c2 $9f $a7

    db $fd                                        ; $6357: $fd
    daa                                           ; $6358: $27
    ld h, [hl]                                    ; $6359: $66
    ld l, [hl]                                    ; $635a: $6e

jr_067_635b:
    sub h                                         ; $635b: $94
    add sp, $3f                                   ; $635c: $e8 $3f
    ld [hl], d                                    ; $635e: $72
    ld [$779d], a                                 ; $635f: $ea $9d $77
    ld a, a                                       ; $6362: $7f
    rst $20                                       ; $6363: $e7
    ld b, d                                       ; $6364: $42
    ld a, l                                       ; $6365: $7d
    cp $49                                        ; $6366: $fe $49
    ld l, [hl]                                    ; $6368: $6e
    call z, Call_067_6328                         ; $6369: $cc $28 $63
    add [hl]                                      ; $636c: $86
    ld [hl], $e5                                  ; $636d: $36 $e5
    ret nc                                        ; $636f: $d0

    xor c                                         ; $6370: $a9
    ld l, a                                       ; $6371: $6f
    db $e3                                        ; $6372: $e3
    add l                                         ; $6373: $85
    ld [$bd58], a                                 ; $6374: $ea $58 $bd
    cpl                                           ; $6377: $2f
    push hl                                       ; $6378: $e5
    ld d, b                                       ; $6379: $50

jr_067_637a:
    xor a                                         ; $637a: $af
    or e                                          ; $637b: $b3
    scf                                           ; $637c: $37
    ld a, [hl-]                                   ; $637d: $3a
    rst $30                                       ; $637e: $f7
    rlca                                          ; $637f: $07
    rst $20                                       ; $6380: $e7
    inc c                                         ; $6381: $0c
    xor e                                         ; $6382: $ab
    ld h, e                                       ; $6383: $63
    add hl, de                                    ; $6384: $19
    and d                                         ; $6385: $a2
    ld l, [hl]                                    ; $6386: $6e
    and c                                         ; $6387: $a1
    reti                                          ; $6388: $d9


    ld c, [hl]                                    ; $6389: $4e
    ld d, c                                       ; $638a: $51
    inc sp                                        ; $638b: $33
    ld h, d                                       ; $638c: $62
    ld [hl], d                                    ; $638d: $72
    jp z, $b0fe                                   ; $638e: $ca $fe $b0

    adc h                                         ; $6391: $8c
    ld e, l                                       ; $6392: $5d
    ld l, h                                       ; $6393: $6c
    ld b, b                                       ; $6394: $40
    ld d, e                                       ; $6395: $53
    ld c, $cd                                     ; $6396: $0e $cd

jr_067_6398:
    xor b                                         ; $6398: $a8
    jp nc, $bd4b                                  ; $6399: $d2 $4b $bd

    ccf                                           ; $639c: $3f
    rst $20                                       ; $639d: $e7
    ld b, d                                       ; $639e: $42
    ld a, l                                       ; $639f: $7d
    cp $49                                        ; $63a0: $fe $49
    ld l, [hl]                                    ; $63a2: $6e
    call z, Call_067_7510                         ; $63a3: $cc $10 $75
    ld [$78db], a                                 ; $63a6: $ea $db $78
    and c                                         ; $63a9: $a1
    ld a, [hl-]                                   ; $63aa: $3a
    ld d, [hl]                                    ; $63ab: $56
    ld l, b                                       ; $63ac: $68
    ld e, [hl]                                    ; $63ad: $5e
    dec hl                                        ; $63ae: $2b
    dec sp                                        ; $63af: $3b
    ld c, e                                       ; $63b0: $4b
    sub d                                         ; $63b1: $92
    ld d, [hl]                                    ; $63b2: $56
    sbc a                                         ; $63b3: $9f
    add $e6                                       ; $63b4: $c6 $e6
    ld [hl], a                                    ; $63b6: $77
    ld a, a                                       ; $63b7: $7f
    add hl, bc                                    ; $63b8: $09
    sbc d                                         ; $63b9: $9a
    sbc l                                         ; $63ba: $9d
    sub a                                         ; $63bb: $97
    ld a, d                                       ; $63bc: $7a
    ld e, d                                       ; $63bd: $5a
    cp e                                          ; $63be: $bb
    ld l, l                                       ; $63bf: $6d
    ld l, h                                       ; $63c0: $6c
    and b                                         ; $63c1: $a0
    add hl, de                                    ; $63c2: $19
    ld [hl], a                                    ; $63c3: $77
    cp e                                          ; $63c4: $bb
    sbc c                                         ; $63c5: $99
    ld e, $46                                     ; $63c6: $1e $46
    ld [hl], $4c                                  ; $63c8: $36 $4c
    or a                                          ; $63ca: $b7
    jr nc, jr_067_643a                            ; $63cb: $30 $6d

    cpl                                           ; $63cd: $2f
    sbc h                                         ; $63ce: $9c
    sub $ee                                       ; $63cf: $d6 $ee
    ld [hl], b                                    ; $63d1: $70
    ld h, c                                       ; $63d2: $61
    and b                                         ; $63d3: $a0
    add hl, de                                    ; $63d4: $19
    rst $30                                       ; $63d5: $f7
    rlca                                          ; $63d6: $07
    adc c                                         ; $63d7: $89
    ld h, e                                       ; $63d8: $63
    ld c, l                                       ; $63d9: $4d
    adc [hl]                                      ; $63da: $8e
    nop                                           ; $63db: $00
    sub h                                         ; $63dc: $94
    ccf                                           ; $63dd: $3f
    dec a                                         ; $63de: $3d
    inc [hl]                                      ; $63df: $34
    jp z, $8a8d                                   ; $63e0: $ca $8d $8a

    ld d, d                                       ; $63e3: $52
    ld c, e                                       ; $63e4: $4b
    or a                                          ; $63e5: $b7
    ld d, b                                       ; $63e6: $50
    rst $28                                       ; $63e7: $ef
    or $dc                                        ; $63e8: $f6 $dc

Jump_067_63ea:
    ld h, a                                       ; $63ea: $67
    ld c, a                                       ; $63eb: $4f
    nop                                           ; $63ec: $00
    push hl                                       ; $63ed: $e5
    ld b, [hl]                                    ; $63ee: $46
    ld b, l                                       ; $63ef: $45
    add hl, sp                                    ; $63f0: $39
    db $dd                                        ; $63f1: $dd
    pop bc                                        ; $63f2: $c1
    ld b, l                                       ; $63f3: $45
    jr c, jr_067_6398                             ; $63f4: $38 $a2

    ld c, [hl]                                    ; $63f6: $4e
    dec b                                         ; $63f7: $05
    jr nc, jr_067_6460                            ; $63f8: $30 $66

    ld e, d                                       ; $63fa: $5a
    ld d, a                                       ; $63fb: $57
    ld a, h                                       ; $63fc: $7c
    ld d, l                                       ; $63fd: $55
    ld e, b                                       ; $63fe: $58
    dec d                                         ; $63ff: $15
    or [hl]                                       ; $6400: $b6
    ld a, d                                       ; $6401: $7a
    ld h, c                                       ; $6402: $61
    xor $0f                                       ; $6403: $ee $0f
    db $db                                        ; $6405: $db
    add h                                         ; $6406: $84
    ld d, e                                       ; $6407: $53
    rra                                           ; $6408: $1f

jr_067_6409:
    ld d, c                                       ; $6409: $51
    and c                                         ; $640a: $a1
    ld c, l                                       ; $640b: $4d
    add hl, sp                                    ; $640c: $39
    inc [hl]                                      ; $640d: $34
    and e                                         ; $640e: $a3
    ld c, d                                       ; $640f: $4a
    cpl                                           ; $6410: $2f
    or l                                          ; $6411: $b5
    rst $38                                       ; $6412: $ff
    ret z                                         ; $6413: $c8

    ld c, [hl]                                    ; $6414: $4e
    ld d, e                                       ; $6415: $53
    ld c, $f5                                     ; $6416: $0e $f5
    cp [hl]                                       ; $6418: $be
    ld e, l                                       ; $6419: $5d
    ret nc                                        ; $641a: $d0

    adc h                                         ; $641b: $8c
    ld b, [hl]                                    ; $641c: $46
    sub [hl]                                      ; $641d: $96
    ld l, [hl]                                    ; $641e: $6e
    ld h, c                                       ; $641f: $61
    inc bc                                        ; $6420: $03
    cp d                                          ; $6421: $ba
    sbc d                                         ; $6422: $9a
    ld de, $7135                                  ; $6423: $11 $35 $71
    ld [hl], d                                    ; $6426: $72
    add [hl]                                      ; $6427: $86
    db $dd                                        ; $6428: $dd
    rra                                           ; $6429: $1f
    sub a                                         ; $642a: $97
    ld hl, $a56a                                  ; $642b: $21 $6a $a5
    ld a, e                                       ; $642e: $7b
    ld a, c                                       ; $642f: $79
    ld a, [hl+]                                   ; $6430: $2a
    ld sp, hl                                     ; $6431: $f9
    or h                                          ; $6432: $b4
    rst $38                                       ; $6433: $ff

Jump_067_6434:
    jr jr_067_6409                                ; $6434: $18 $d3

    sub b                                         ; $6436: $90
    db $fd                                        ; $6437: $fd
    ld b, a                                       ; $6438: $47
    halt                                          ; $6439: $76

jr_067_643a:
    or h                                          ; $643a: $b4
    cp $3a                                        ; $643b: $fe $3a
    dec l                                         ; $643d: $2d
    ld d, l                                       ; $643e: $55
    ld de, $b433                                  ; $643f: $11 $33 $b4
    ld [hl], c                                    ; $6442: $71
    ld a, [$8527]                                 ; $6443: $fa $27 $85
    ld d, e                                       ; $6446: $53
    ld [hl], h                                    ; $6447: $74
    or h                                          ; $6448: $b4
    add hl, de                                    ; $6449: $19
    ld c, [hl]                                    ; $644a: $4e
    ld c, e                                       ; $644b: $4b
    ld sp, hl                                     ; $644c: $f9
    jp nc, $c5ee                                  ; $644d: $d2 $ee $c5

    db $e4                                        ; $6450: $e4
    ld l, b                                       ; $6451: $68
    rst $30                                       ; $6452: $f7
    ld l, a                                       ; $6453: $6f
    halt                                          ; $6454: $76
    db $ec                                        ; $6455: $ec
    ld l, d                                       ; $6456: $6a
    sub [hl]                                      ; $6457: $96
    call z, $03fb                                 ; $6458: $cc $fb $03
    db $db                                        ; $645b: $db
    add h                                         ; $645c: $84
    db $d3                                        ; $645d: $d3
    adc h                                         ; $645e: $8c
    sbc b                                         ; $645f: $98

jr_067_6460:
    sbc h                                         ; $6460: $9c
    ld a, [$9e36]                                 ; $6461: $fa $36 $9e
    dec b                                         ; $6464: $05
    sub d                                         ; $6465: $92
    ld e, d                                       ; $6466: $5a
    ret z                                         ; $6467: $c8

    ld l, $2e                                     ; $6468: $2e $2e
    db $d3                                        ; $646a: $d3
    xor d                                         ; $646b: $aa
    or e                                          ; $646c: $b3
    db $eb                                        ; $646d: $eb
    push bc                                       ; $646e: $c5
    db $e4                                        ; $646f: $e4
    db $f4                                        ; $6470: $f4
    sbc a                                         ; $6471: $9f
    sbc b                                         ; $6472: $98
    ld e, a                                       ; $6473: $5f
    ld a, d                                       ; $6474: $7a
    xor $5e                                       ; $6475: $ee $5e
    ld [c], a                                     ; $6477: $e2
    ret nc                                        ; $6478: $d0

    call z, Call_067_4ea5                         ; $6479: $cc $a5 $4e
    or $5c                                        ; $647c: $f6 $5c
    add a                                         ; $647e: $87
    ld h, l                                       ; $647f: $65
    ld a, [de]                                    ; $6480: $1a
    ret nc                                        ; $6481: $d0

    di                                            ; $6482: $f3
    ldh a, [$f2]                                  ; $6483: $f0 $f2
    ei                                            ; $6485: $fb
    pop af                                        ; $6486: $f1
    ld l, h                                       ; $6487: $6c
    ld d, h                                       ; $6488: $54
    call nc, $2bfd                                ; $6489: $d4 $fd $2b
    pop af                                        ; $648c: $f1
    cp b                                          ; $648d: $b8
    ld sp, $cbce                                  ; $648e: $31 $ce $cb
    ret c                                         ; $6491: $d8

    call nc, $bb1d                                ; $6492: $d4 $1d $bb
    ld [hl], a                                    ; $6495: $77
    ld b, l                                       ; $6496: $45
    ld a, e                                       ; $6497: $7b
    ld sp, $bd49                                  ; $6498: $31 $49 $bd
    ccf                                           ; $649b: $3f
    sub a                                         ; $649c: $97
    res 4, [hl]                                   ; $649d: $cb $a6
    call c, $9b81                                 ; $649f: $dc $81 $9b
    ld a, $09                                     ; $64a2: $3e $09
    sbc d                                         ; $64a4: $9a
    rst $10                                       ; $64a5: $d7
    jp z, $2f1f                                   ; $64a6: $ca $1f $2f

    db $e3                                        ; $64a9: $e3
    ld l, [hl]                                    ; $64aa: $6e
    add d                                         ; $64ab: $82
    xor e                                         ; $64ac: $ab
    jp nz, Jump_000_3af0                          ; $64ad: $c2 $f0 $3a

    ld d, l                                       ; $64b0: $55
    and h                                         ; $64b1: $a4
    ld e, l                                       ; $64b2: $5d
    inc c                                         ; $64b3: $0c
    ld [hl], e                                    ; $64b4: $73
    ld a, a                                       ; $64b5: $7f
    db $db                                        ; $64b6: $db
    cp e                                          ; $64b7: $bb
    reti                                          ; $64b8: $d9


    add sp, -$0f                                  ; $64b9: $e8 $f1
    and b                                         ; $64bb: $a0
    db $eb                                        ; $64bc: $eb
    ld a, [hl-]                                   ; $64bd: $3a
    sub l                                         ; $64be: $95
    ld [hl], b                                    ; $64bf: $70
    ld d, l                                       ; $64c0: $55
    and h                                         ; $64c1: $a4
    ld e, l                                       ; $64c2: $5d
    inc c                                         ; $64c3: $0c
    ld [hl], e                                    ; $64c4: $73
    rst $30                                       ; $64c5: $f7
    ld a, [bc]                                    ; $64c6: $0a
    ret z                                         ; $64c7: $c8

    reti                                          ; $64c8: $d9


    jr @+$49                                      ; $64c9: $18 $47

    dec de                                        ; $64cb: $1b
    ld e, c                                       ; $64cc: $59
    push hl                                       ; $64cd: $e5
    jp nz, $d186                                  ; $64ce: $c2 $86 $d1

    ld h, [hl]                                    ; $64d1: $66
    dec de                                        ; $64d2: $1b
    rst $28                                       ; $64d3: $ef
    ld a, [hl-]                                   ; $64d4: $3a
    and a                                         ; $64d5: $a7
    and d                                         ; $64d6: $a2
    ld h, $47                                     ; $64d7: $26 $47
    nop                                           ; $64d9: $00
    cp d                                          ; $64da: $ba
    ld a, a                                       ; $64db: $7f
    db $e3                                        ; $64dc: $e3
    cp h                                          ; $64dd: $bc
    adc h                                         ; $64de: $8c
    ei                                            ; $64df: $fb
    inc bc                                        ; $64e0: $03
    add hl, bc                                    ; $64e1: $09
    ld c, l                                       ; $64e2: $4d
    add hl, sp                                    ; $64e3: $39
    inc [hl]                                      ; $64e4: $34
    inc a                                         ; $64e5: $3c
    ld a, d                                       ; $64e6: $7a
    ld b, [hl]                                    ; $64e7: $46
    cp e                                          ; $64e8: $bb
    xor [hl]                                      ; $64e9: $ae
    ld c, [hl]                                    ; $64ea: $4e
    or $5c                                        ; $64eb: $f6 $5c
    add a                                         ; $64ed: $87
    ld h, l                                       ; $64ee: $65
    ld a, [de]                                    ; $64ef: $1a
    ret nc                                        ; $64f0: $d0

    di                                            ; $64f1: $f3
    ldh a, [$f2]                                  ; $64f2: $f0 $f2
    ei                                            ; $64f4: $fb
    pop af                                        ; $64f5: $f1
    ld l, h                                       ; $64f6: $6c
    ld [hl], h                                    ; $64f7: $74
    db $d3                                        ; $64f8: $d3
    rlca                                          ; $64f9: $07
    sub a                                         ; $64fa: $97
    ld c, e                                       ; $64fb: $4b
    halt                                          ; $64fc: $76
    ld [hl], c                                    ; $64fd: $71
    sbc c                                         ; $64fe: $99
    add l                                         ; $64ff: $85
    ld l, h                                       ; $6500: $6c
    jp z, $baa1                                   ; $6501: $ca $a1 $ba

    ld a, e                                       ; $6504: $7b
    dec d                                         ; $6505: $15
    ld [hl], l                                    ; $6506: $75
    ld c, d                                       ; $6507: $4a
    ld e, c                                       ; $6508: $59
    cpl                                           ; $6509: $2f
    ld e, [hl]                                    ; $650a: $5e
    ld a, [hl]                                    ; $650b: $7e
    db $eb                                        ; $650c: $eb
    ld b, a                                       ; $650d: $47
    rst $28                                       ; $650e: $ef
    ld l, [hl]                                    ; $650f: $6e
    and l                                         ; $6510: $a5
    ld [hl], $22                                  ; $6511: $36 $22
    ld h, $9d                                     ; $6513: $26 $9d
    ld l, h                                       ; $6515: $6c
    ld b, b                                       ; $6516: $40
    ld d, a                                       ; $6517: $57
    di                                            ; $6518: $f3
    rra                                           ; $6519: $1f
    xor b                                         ; $651a: $a8
    ld d, l                                       ; $651b: $55
    ld a, d                                       ; $651c: $7a
    ld d, b                                       ; $651d: $50
    ret                                           ; $651e: $c9


    db $f4                                        ; $651f: $f4
    ld h, e                                       ; $6520: $63
    push de                                       ; $6521: $d5
    ld a, c                                       ; $6522: $79
    rst $18                                       ; $6523: $df
    rst $38                                       ; $6524: $ff
    db $10                                        ; $6525: $10
    inc sp                                        ; $6526: $33
    ld [$58d3], a                                 ; $6527: $ea $d3 $58
    ld b, l                                       ; $652a: $45
    dec h                                         ; $652b: $25
    db $d3                                        ; $652c: $d3
    ld b, e                                       ; $652d: $43
    add e                                         ; $652e: $83
    inc l                                         ; $652f: $2c
    xor e                                         ; $6530: $ab
    db $eb                                        ; $6531: $eb
    db $ec                                        ; $6532: $ec
    call $04dd                                    ; $6533: $cd $dd $04
    daa                                           ; $6536: $27
    ld [$723f], a                                 ; $6537: $ea $3f $72
    xor d                                         ; $653a: $aa
    ld c, b                                       ; $653b: $48
    cp e                                          ; $653c: $bb
    jr jr_067_6585                                ; $653d: $18 $46

    ld d, h                                       ; $653f: $54
    ld a, [$66f3]                                 ; $6540: $fa $f3 $66
    ld h, e                                       ; $6543: $63
    add $fd                                       ; $6544: $c6 $fd
    ld bc, $dddb                                  ; $6546: $01 $db $dd
    ld [$fd95], a                                 ; $6549: $ea $95 $fd
    daa                                           ; $654c: $27
    xor [hl]                                      ; $654d: $ae
    ld h, b                                       ; $654e: $60
    jp z, Jump_067_57bb                           ; $654f: $ca $bb $57

    call z, $a07f                                 ; $6552: $cc $7f $a0
    sub [hl]                                      ; $6555: $96
    cpl                                           ; $6556: $2f
    ld b, $56                                     ; $6557: $06 $56
    ld [hl+], a                                   ; $6559: $22
    ld b, e                                       ; $655a: $43
    sub [hl]                                      ; $655b: $96
    ld b, l                                       ; $655c: $45
    jp z, $9f3d                                   ; $655d: $ca $3d $9f

    add l                                         ; $6560: $85
    xor h                                         ; $6561: $ac
    jp nc, $92de                                  ; $6562: $d2 $de $92

    inc e                                         ; $6565: $1c
    cp l                                          ; $6566: $bd
    ccf                                           ; $6567: $3f
    db $db                                        ; $6568: $db
    add h                                         ; $6569: $84
    db $d3                                        ; $656a: $d3

Call_067_656b:
    adc h                                         ; $656b: $8c
    xor b                                         ; $656c: $a8
    adc l                                         ; $656d: $8d

jr_067_656e:
    inc c                                         ; $656e: $0c
    inc l                                         ; $656f: $2c
    cp e                                          ; $6570: $bb
    add d                                         ; $6571: $82
    push af                                       ; $6572: $f5
    rra                                           ; $6573: $1f
    reti                                          ; $6574: $d9


    and a                                         ; $6575: $a7
    ld a, [hl-]                                   ; $6576: $3a
    ld [hl], a                                    ; $6577: $77
    xor a                                         ; $6578: $af
    and b                                         ; $6579: $a0
    inc e                                         ; $657a: $1c
    xor l                                         ; $657b: $ad
    ld c, a                                       ; $657c: $4f
    ld h, e                                       ; $657d: $63
    rst $38                                       ; $657e: $ff
    daa                                           ; $657f: $27
    ld e, c                                       ; $6580: $59
    rst $18                                       ; $6581: $df
    ldh [$d3], a                                  ; $6582: $e0 $d3
    ld l, b                                       ; $6584: $68

jr_067_6585:
    dec de                                        ; $6585: $1b
    db $e3                                        ; $6586: $e3
    add sp, -$03                                  ; $6587: $e8 $fd
    ld bc, $e3db                                  ; $6589: $01 $db $e3
    ld l, $14                                     ; $658c: $2e $14
    sub l                                         ; $658e: $95
    ld a, b                                       ; $658f: $78
    cp h                                          ; $6590: $bc
    ld a, e                                       ; $6591: $7b
    add hl, de                                    ; $6592: $19
    db $e4                                        ; $6593: $e4
    ld l, b                                       ; $6594: $68
    inc bc                                        ; $6595: $03
    ld a, [de]                                    ; $6596: $1a
    ld b, a                                       ; $6597: $47
    dec de                                        ; $6598: $1b
    and b                                         ; $6599: $a0
    ld a, $ff                                     ; $659a: $3e $ff
    inc h                                         ; $659c: $24
    db $ed                                        ; $659d: $ed
    cp $00                                        ; $659e: $fe $00
    db $db                                        ; $65a0: $db
    jr nz, jr_067_656e                            ; $65a1: $20 $cb

    rst $18                                       ; $65a3: $df
    db $10                                        ; $65a4: $10
    ld e, [hl]                                    ; $65a5: $5e
    sbc [hl]                                      ; $65a6: $9e
    and [hl]                                      ; $65a7: $a6
    inc e                                         ; $65a8: $1c
    ld [$7ae5], a                                 ; $65a9: $ea $e5 $7a
    ld l, d                                       ; $65ac: $6a
    sbc a                                         ; $65ad: $9f
    and $11                                       ; $65ae: $e6 $11
    ld [hl], l                                    ; $65b0: $75
    dec bc                                        ; $65b1: $0b
    call $de76                                    ; $65b2: $cd $76 $de
    rra                                           ; $65b5: $1f
    sub a                                         ; $65b6: $97
    cp c                                          ; $65b7: $b9
    dec c                                         ; $65b8: $0d
    cp l                                          ; $65b9: $bd
    ld h, d                                       ; $65ba: $62
    sub [hl]                                      ; $65bb: $96

jr_067_65bc:
    call z, Call_000_34fa                         ; $65bc: $cc $fa $34

jr_067_65bf:
    sub [hl]                                      ; $65bf: $96
    db $fd                                        ; $65c0: $fd
    add hl, hl                                    ; $65c1: $29
    cp c                                          ; $65c2: $b9
    pop hl                                        ; $65c3: $e1
    inc bc                                        ; $65c4: $03
    ld d, a                                       ; $65c5: $57
    ldh a, [rBCPD]                                ; $65c6: $f0 $69
    ld a, l                                       ; $65c8: $7d
    ld e, b                                       ; $65c9: $58
    add b                                         ; $65ca: $80
    dec [hl]                                      ; $65cb: $35
    ld c, a                                       ; $65cc: $4f
    jr jr_067_65bc                                ; $65cd: $18 $ed

    ld l, b                                       ; $65cf: $68
    db $fd                                        ; $65d0: $fd
    adc c                                         ; $65d1: $89
    ld a, c                                       ; $65d2: $79
    or h                                          ; $65d3: $b4
    add hl, hl                                    ; $65d4: $29
    add a                                         ; $65d5: $87
    ld h, [hl]                                    ; $65d6: $66
    ret z                                         ; $65d7: $c8

    pop de                                        ; $65d8: $d1
    and [hl]                                      ; $65d9: $a6
    inc e                                         ; $65da: $1c
    ld h, e                                       ; $65db: $63
    sbc b                                         ; $65dc: $98
    ld a, d                                       ; $65dd: $7a
    rst $00                                       ; $65de: $c7
    and b                                         ; $65df: $a0
    and l                                         ; $65e0: $a5
    rst $08                                       ; $65e1: $cf
    sbc b                                         ; $65e2: $98
    ld h, h                                       ; $65e3: $64
    sbc b                                         ; $65e4: $98
    ei                                            ; $65e5: $fb
    inc bc                                        ; $65e6: $03
    ld d, a                                       ; $65e7: $57
    ldh a, [$6d]                                  ; $65e8: $f0 $6d
    call z, $a428                                 ; $65ea: $cc $28 $a4
    ld h, a                                       ; $65ed: $67
    adc h                                         ; $65ee: $8c
    dec de                                        ; $65ef: $1b
    ld a, $db                                     ; $65f0: $3e $db
    cpl                                           ; $65f2: $2f
    ld [de], a                                    ; $65f3: $12
    ld [hl], l                                    ; $65f4: $75
    inc b                                         ; $65f5: $04
    adc d                                         ; $65f6: $8a
    ld a, [hl+]                                   ; $65f7: $2a
    xor c                                         ; $65f8: $a9
    push af                                       ; $65f9: $f5
    cp [hl]                                       ; $65fa: $be
    sbc a                                         ; $65fb: $9f
    or d                                          ; $65fc: $b2
    ld e, h                                       ; $65fd: $5c
    dec a                                         ; $65fe: $3d
    ld h, l                                       ; $65ff: $65
    jr jr_067_65bf                                ; $6600: $18 $bd

    ccf                                           ; $6602: $3f
    ld [c], a                                     ; $6603: $e2
    dec a                                         ; $6604: $3d
    sub a                                         ; $6605: $97
    sub d                                         ; $6606: $92
    dec a                                         ; $6607: $3d
    ld a, a                                       ; $6608: $7f
    inc l                                         ; $6609: $2c
    ldh a, [$be]                                  ; $660a: $f0 $be
    rst $28                                       ; $660c: $ef
    ld b, [hl]                                    ; $660d: $46
    pop hl                                        ; $660e: $e1
    inc d                                         ; $660f: $14
    sbc d                                         ; $6610: $9a
    rst $10                                       ; $6611: $d7
    cp d                                          ; $6612: $ba
    xor h                                         ; $6613: $ac
    ld l, l                                       ; $6614: $6d
    add sp, -$7b                                  ; $6615: $e8 $85
    ld l, e                                       ; $6617: $6b
    dec e                                         ; $6618: $1d
    or a                                          ; $6619: $b7
    ld a, d                                       ; $661a: $7a
    dec c                                         ; $661b: $0d
    ld l, a                                       ; $661c: $6f
    rla                                           ; $661d: $17
    xor h                                         ; $661e: $ac
    add hl, hl                                    ; $661f: $29
    add a                                         ; $6620: $87
    xor [hl]                                      ; $6621: $ae
    ld h, [hl]                                    ; $6622: $66
    ret                                           ; $6623: $c9


    inc l                                         ; $6624: $2c
    ld a, [hl+]                                   ; $6625: $2a
    pop af                                        ; $6626: $f1
    ret c                                         ; $6627: $d8

    dec d                                         ; $6628: $15
    ld e, a                                       ; $6629: $5f
    ld a, l                                       ; $662a: $7d
    xor d                                         ; $662b: $aa
    add d                                         ; $662c: $82
    sub $fd                                       ; $662d: $d6 $fd
    dec de                                        ; $662f: $1b
    rst $20                                       ; $6630: $e7
    ld h, l                                       ; $6631: $65
    call c, $26dd                                 ; $6632: $dc $dd $26
    sbc h                                         ; $6635: $9c
    cp $13                                        ; $6636: $fe $13
    push af                                       ; $6638: $f5
    and l                                         ; $6639: $a5
    and a                                         ; $663a: $a7
    xor e                                         ; $663b: $ab
    ld e, c                                       ; $663c: $59
    ld [hl-], a                                   ; $663d: $32
    xor l                                         ; $663e: $ad
    inc l                                         ; $663f: $2c
    ld h, d                                       ; $6640: $62
    ld [hl], $da                                  ; $6641: $36 $da
    add [hl]                                      ; $6643: $86
    rrca                                          ; $6644: $0f
    db $db                                        ; $6645: $db
    db $eb                                        ; $6646: $eb
    db $db                                        ; $6647: $db
    ld a, b                                       ; $6648: $78
    ld d, $48                                     ; $6649: $16 $48
    halt                                          ; $664b: $76
    ld e, l                                       ; $664c: $5d
    cpl                                           ; $664d: $2f
    ld c, e                                       ; $664e: $4b
    cp b                                          ; $664f: $b8
    db $fc                                        ; $6650: $fc
    cp $00                                        ; $6651: $fe $00
    sbc e                                         ; $6653: $9b
    sub e                                         ; $6654: $93
    rst $08                                       ; $6655: $cf
    ld l, l                                       ; $6656: $6d
    add sp, $76                                   ; $6657: $e8 $76
    or a                                          ; $6659: $b7
    ld a, d                                       ; $665a: $7a
    ld c, l                                       ; $665b: $4d
    add hl, sp                                    ; $665c: $39
    ld l, $29                                     ; $665d: $2e $29
    rlca                                          ; $665f: $07
    db $eb                                        ; $6660: $eb
    ccf                                           ; $6661: $3f
    ld c, a                                       ; $6662: $4f
    ld a, c                                       ; $6663: $79
    ld a, a                                       ; $6664: $7f
    add hl, bc                                    ; $6665: $09
    sbc d                                         ; $6666: $9a
    rst $00                                       ; $6667: $c7
    sub l                                         ; $6668: $95
    add hl, hl                                    ; $6669: $29
    rst $30                                       ; $666a: $f7
    ld [$631d], a                                 ; $666b: $ea $1d $63
    sub e                                         ; $666e: $93
    ld l, e                                       ; $666f: $6b
    ld c, l                                       ; $6670: $4d
    adc [hl]                                      ; $6671: $8e
    ld d, c                                       ; $6672: $51
    rst $28                                       ; $6673: $ef
    ld l, [hl]                                    ; $6674: $6e
    inc de                                        ; $6675: $13
    ld c, [hl]                                    ; $6676: $4e
    dec h                                         ; $6677: $25
    ld a, [$544f]                                 ; $6678: $fa $4f $54
    and h                                         ; $667b: $a4
    db $dd                                        ; $667c: $dd
    ld h, e                                       ; $667d: $63
    rla                                           ; $667e: $17

Call_067_667f:
    ld c, b                                       ; $667f: $48

Jump_067_6680:
    adc a                                         ; $6680: $8f

jr_067_6681:
    pop de                                        ; $6681: $d1
    ld a, [de]                                    ; $6682: $1a
    ret c                                         ; $6683: $d8

    jr c, @+$2d                                   ; $6684: $38 $2b

    ld d, [hl]                                    ; $6686: $56
    ld de, $bc93                                  ; $6687: $11 $93 $bc
    ccf                                           ; $668a: $3f
    ld h, a                                       ; $668b: $67
    db $f4                                        ; $668c: $f4
    ld [hl], b                                    ; $668d: $70
    rst $28                                       ; $668e: $ef
    db $fc                                        ; $668f: $fc
    cpl                                           ; $6690: $2f
    ld h, $a7                                     ; $6691: $26 $a7
    ld bc, $c7f5                                  ; $6693: $01 $f5 $c7
    cp $39                                        ; $6696: $fe $39
    db $fc                                        ; $6698: $fc
    xor $65                                       ; $6699: $ee $65
    sub b                                         ; $669b: $90
    and e                                         ; $669c: $a3
    dec c                                         ; $669d: $0d
    add sp, -$4d                                  ; $669e: $e8 $b3
    ld a, d                                       ; $66a0: $7a
    cp c                                          ; $66a1: $b9
    dec bc                                        ; $66a2: $0b
    ld d, [hl]                                    ; $66a3: $56
    daa                                           ; $66a4: $27
    reti                                          ; $66a5: $d9


    ld a, a                                       ; $66a6: $7f
    sbc [hl]                                      ; $66a7: $9e
    ld d, d                                       ; $66a8: $52
    call nc, Call_067_586d                        ; $66a9: $d4 $6d $58
    cp l                                          ; $66ac: $bd
    ld h, l                                       ; $66ad: $65
    add c                                         ; $66ae: $81
    xor b                                         ; $66af: $a8
    call z, $baeb                                 ; $66b0: $cc $eb $ba
    ld c, h                                       ; $66b3: $4c
    ld a, d                                       ; $66b4: $7a
    xor $0f                                       ; $66b5: $ee $0f
    db $db                                        ; $66b7: $db
    add h                                         ; $66b8: $84
    ld d, e                                       ; $66b9: $53
    adc c                                         ; $66ba: $89
    ld b, $3c                                     ; $66bb: $06 $3c
    pop bc                                        ; $66bd: $c1
    sub b                                         ; $66be: $90
    ld h, l                                       ; $66bf: $65
    jp z, $0dbd                                   ; $66c0: $ca $bd $0d

    rra                                           ; $66c3: $1f
    db $db                                        ; $66c4: $db
    jr nz, @-$33                                  ; $66c5: $20 $cb

    jp z, $3727                                   ; $66c7: $ca $27 $37

    ld a, h                                       ; $66ca: $7c
    db $db                                        ; $66cb: $db
    dec b                                         ; $66cc: $05
    adc d                                         ; $66cd: $8a
    ld a, [hl-]                                   ; $66ce: $3a
    ld [bc], a                                    ; $66cf: $02
    ld b, l                                       ; $66d0: $45
    ld e, l                                       ; $66d1: $5d
    ld hl, $2926                                  ; $66d2: $21 $26 $29
    dec hl                                        ; $66d5: $2b
    xor c                                         ; $66d6: $a9
    push af                                       ; $66d7: $f5
    rst $00                                       ; $66d8: $c7
    db $fd                                        ; $66d9: $fd
    ld d, e                                       ; $66da: $53
    rrca                                          ; $66db: $0f
    call $c92d                                    ; $66dc: $cd $2d $c9
    cp c                                          ; $66df: $b9
    ccf                                           ; $66e0: $3f
    ld h, a                                       ; $66e1: $67
    sub h                                         ; $66e2: $94
    add hl, hl                                    ; $66e3: $29
    rst $30                                       ; $66e4: $f7
    xor $5e                                       ; $66e5: $ee $5e
    ld bc, $9401                                  ; $66e7: $01 $01 $94
    ld d, l                                       ; $66ea: $55
    ld [hl], h                                    ; $66eb: $74
    ld [hl], l                                    ; $66ec: $75
    jr nz, jr_067_6753                            ; $66ed: $20 $64

    and a                                         ; $66ef: $a7

jr_067_66f0:
    ld e, e                                       ; $66f0: $5b

jr_067_66f1:
    cp c                                          ; $66f1: $b9
    ld a, b                                       ; $66f2: $78
    ld h, a                                       ; $66f3: $67
    ld h, a                                       ; $66f4: $67
    pop de                                        ; $66f5: $d1
    jp hl                                         ; $66f6: $e9


    ld h, [hl]                                    ; $66f7: $66
    and e                                         ; $66f8: $a3
    rst $00                                       ; $66f9: $c7
    add e                                         ; $66fa: $83
    ei                                            ; $66fb: $fb
    inc bc                                        ; $66fc: $03
    rst $20                                       ; $66fd: $e7
    pop de                                        ; $66fe: $d1
    jr nz, jr_067_6681                            ; $66ff: $20 $80

    and d                                         ; $6701: $a2
    jp z, $9317                                   ; $6702: $ca $17 $93

    ld l, h                                       ; $6705: $6c
    jp z, $5ec1                                   ; $6706: $ca $c1 $5e

    and b                                         ; $6709: $a0
    xor b                                         ; $670a: $a8
    sbc $79                                       ; $670b: $de $79
    ld h, l                                       ; $670d: $65
    jp z, $a6bd                                   ; $670e: $ca $bd $a6

    inc e                                         ; $6711: $1c
    ld a, [hl-]                                   ; $6712: $3a
    dec d                                         ; $6713: $15
    jr nc, jr_067_6741                            ; $6714: $30 $2b

    ret z                                         ; $6716: $c8

    ld l, [hl]                                    ; $6717: $6e
    push hl                                       ; $6718: $e5
    ld [c], a                                     ; $6719: $e2
    sbc l                                         ; $671a: $9d
    sbc l                                         ; $671b: $9d
    dec c                                         ; $671c: $0d
    ld c, a                                       ; $671d: $4f
    dec d                                         ; $671e: $15
    ld c, l                                       ; $671f: $4d
    add hl, sp                                    ; $6720: $39
    inc d                                         ; $6721: $14
    dec bc                                        ; $6722: $0b
    or h                                          ; $6723: $b4
    ret nc                                        ; $6724: $d0

    call z, $e515                                 ; $6725: $cc $15 $e5
    db $fd                                        ; $6728: $fd
    ld bc, $4e97                                  ; $6729: $01 $97 $4e
    or h                                          ; $672c: $b4
    sub c                                         ; $672d: $91
    rst $30                                       ; $672e: $f7
    ld a, l                                       ; $672f: $7d
    rst $18                                       ; $6730: $df
    rra                                           ; $6731: $1f
    db $db                                        ; $6732: $db
    adc l                                         ; $6733: $8d
    push hl                                       ; $6734: $e5
    ld l, [hl]                                    ; $6735: $6e
    add l                                         ; $6736: $85
    ld h, [hl]                                    ; $6737: $66
    pop hl                                        ; $6738: $e1
    ld [hl], h                                    ; $6739: $74
    dec [hl]                                      ; $673a: $35
    rst $38                                       ; $673b: $ff
    add c                                         ; $673c: $81
    ld a, [hl+]                                   ; $673d: $2a
    ld l, d                                       ; $673e: $6a
    inc d                                         ; $673f: $14
    ld c, [hl]                                    ; $6740: $4e

jr_067_6741:
    and c                                         ; $6741: $a1
    ld a, $8c                                     ; $6742: $3e $8c
    or d                                          ; $6744: $b2
    ld a, $16                                     ; $6745: $3e $16
    ld [hl], $40                                  ; $6747: $36 $40
    adc [hl]                                      ; $6749: $8e
    ld [hl], c                                    ; $674a: $71
    jp $db07                                      ; $674b: $c3 $07 $db


    sbc e                                         ; $674e: $9b
    ld [hl], d                                    ; $674f: $72
    xor b                                         ; $6750: $a8
    sub a                                         ; $6751: $97
    cp e                                          ; $6752: $bb

jr_067_6753:
    jr nz, jr_067_66f0                            ; $6753: $20 $9b

    daa                                           ; $6755: $27
    adc h                                         ; $6756: $8c
    sub $3b                                       ; $6757: $d6 $3b
    add $86                                       ; $6759: $c6 $86
    ld l, c                                       ; $675b: $69
    jr jr_067_66f1                                ; $675c: $18 $93

    cpl                                           ; $675e: $2f
    rst $28                                       ; $675f: $ef
    ld l, [hl]                                    ; $6760: $6e
    ld l, a                                       ; $6761: $6f
    jp z, Jump_000_3342                           ; $6762: $ca $42 $33

    or l                                          ; $6765: $b5
    ret                                           ; $6766: $c9


    ld sp, $a6ea                                  ; $6767: $31 $ea $a6
    rrca                                          ; $676a: $0f
    rst $20                                       ; $676b: $e7
    ld b, b                                       ; $676c: $40
    adc d                                         ; $676d: $8a
    ld a, [bc]                                    ; $676e: $0a
    ld d, a                                       ; $676f: $57
    ld l, b                                       ; $6770: $68
    jp z, Jump_067_7fe1                           ; $6771: $ca $e1 $7f

    dec de                                        ; $6774: $1b
    dec h                                         ; $6775: $25
    ld a, [de]                                    ; $6776: $1a
    ld e, b                                       ; $6777: $58
    ld b, l                                       ; $6778: $45
    ld c, h                                       ; $6779: $4c
    ld a, [c]                                     ; $677a: $f2
    cp [hl]                                       ; $677b: $be
    rst $28                                       ; $677c: $ef
    rrca                                          ; $677d: $0f
    dec sp                                        ; $677e: $3b
    sbc $72                                       ; $677f: $de $72
    ld h, b                                       ; $6781: $60
    db $fc                                        ; $6782: $fc
    rst $18                                       ; $6783: $df
    ld l, h                                       ; $6784: $6c
    add sp, $65                                   ; $6785: $e8 $65
    add $cc                                       ; $6787: $c6 $cc
    adc l                                         ; $6789: $8d
    adc d                                         ; $678a: $8a
    ld b, $d4                                     ; $678b: $06 $d4
    ld c, c                                       ; $678d: $49
    or $45                                        ; $678e: $f6 $45
    xor a                                         ; $6790: $af
    pop af                                        ; $6791: $f1
    ld e, a                                       ; $6792: $5f
    cpl                                           ; $6793: $2f
    sbc h                                         ; $6794: $9c
    and [hl]                                      ; $6795: $a6
    adc l                                         ; $6796: $8d
    dec hl                                        ; $6797: $2b
    call c, $f63d                                 ; $6798: $dc $3d $f6
    sbc b                                         ; $679b: $98
    ld a, [$f313]                                 ; $679c: $fa $13 $f3
    ld l, b                                       ; $679f: $68
    dec c                                         ; $67a0: $0d
    ld sp, hl                                     ; $67a1: $f9
    add hl, de                                    ; $67a2: $19

Jump_067_67a3:
    jp $d968                                      ; $67a3: $c3 $68 $d9


    di                                            ; $67a6: $f3
    ld l, l                                       ; $67a7: $6d
    and a                                         ; $67a8: $a7
    rst $10                                       ; $67a9: $d7
    ei                                            ; $67aa: $fb
    ld h, d                                       ; $67ab: $62
    jr jr_067_67d9                                ; $67ac: $18 $2b

    ld [$3f7d], a                                 ; $67ae: $ea $7d $3f
    ld h, l                                       ; $67b1: $65
    inc bc                                        ; $67b2: $03
    ld a, [$f353]                                 ; $67b3: $fa $53 $f3
    ld c, e                                       ; $67b6: $4b
    rst $08                                       ; $67b7: $cf
    ld e, l                                       ; $67b8: $5d
    pop af                                        ; $67b9: $f1
    ld l, [hl]                                    ; $67ba: $6e
    ld h, l                                       ; $67bb: $65
    and b                                         ; $67bc: $a0
    ld b, h                                       ; $67bd: $44
    inc de                                        ; $67be: $13
    ld b, a                                       ; $67bf: $47
    ld a, d                                       ; $67c0: $7a
    dec c                                         ; $67c1: $0d
    dec sp                                        ; $67c2: $3b
    cp e                                          ; $67c3: $bb
    ld [c], a                                     ; $67c4: $e2
    ld l, e                                       ; $67c5: $6b
    ld a, d                                       ; $67c6: $7a
    inc [hl]                                      ; $67c7: $34
    db $d3                                        ; $67c8: $d3
    ld a, [de]                                    ; $67c9: $1a
    ret c                                         ; $67ca: $d8

    push de                                       ; $67cb: $d5
    xor b                                         ; $67cc: $a8
    or d                                          ; $67cd: $b2
    inc d                                         ; $67ce: $14
    ldh [rSC], a                                  ; $67cf: $e0 $02
    ld c, e                                       ; $67d1: $4b

jr_067_67d2:
    ret                                           ; $67d2: $c9


    sbc b                                         ; $67d3: $98
    inc d                                         ; $67d4: $14
    sbc $f7                                       ; $67d5: $de $f7
    ld e, l                                       ; $67d7: $5d
    halt                                          ; $67d8: $76

jr_067_67d9:
    ld a, c                                       ; $67d9: $79
    jp nc, Jump_067_75a7                          ; $67da: $d2 $a7 $75

    sbc d                                         ; $67dd: $9a
    ld [hl], d                                    ; $67de: $72
    or h                                          ; $67df: $b4
    inc a                                         ; $67e0: $3c
    dec c                                         ; $67e1: $0d
    call nc, $8cd2                                ; $67e2: $d4 $d2 $8c
    sbc d                                         ; $67e5: $9a
    add hl, de                                    ; $67e6: $19
    ldh a, [$8c]                                  ; $67e7: $f0 $8c
    ld a, d                                       ; $67e9: $7a
    ld a, a                                       ; $67ea: $7f
    db $db                                        ; $67eb: $db
    sbc e                                         ; $67ec: $9b
    ld [hl], d                                    ; $67ed: $72
    or h                                          ; $67ee: $b4
    inc a                                         ; $67ef: $3c
    dec c                                         ; $67f0: $0d
    call nc, $8cd2                                ; $67f1: $d4 $d2 $8c
    sbc d                                         ; $67f4: $9a
    add hl, de                                    ; $67f5: $19
    ldh a, [$8c]                                  ; $67f6: $f0 $8c
    cp d                                          ; $67f8: $ba
    pop hl                                        ; $67f9: $e1
    inc bc                                        ; $67fa: $03
    ld [c], a                                     ; $67fb: $e2
    sub [hl]                                      ; $67fc: $96
    ld c, [hl]                                    ; $67fd: $4e
    ld l, [hl]                                    ; $67fe: $6e
    ld hl, sp+$00                                 ; $67ff: $f8 $00
    rla                                           ; $6801: $17
    xor [hl]                                      ; $6802: $ae
    push de                                       ; $6803: $d5
    and a                                         ; $6804: $a7
    or c                                          ; $6805: $b1
    and e                                         ; $6806: $a3
    dec c                                         ; $6807: $0d
    ld h, e                                       ; $6808: $63
    ld a, [c]                                     ; $6809: $f2
    push hl                                       ; $680a: $e5
    db $dd                                        ; $680b: $dd
    db $ed                                        ; $680c: $ed
    adc l                                         ; $680d: $8d
    sbc $1f                                       ; $680e: $de $1f
    db $db                                        ; $6810: $db
    add h                                         ; $6811: $84
    db $d3                                        ; $6812: $d3
    sub h                                         ; $6813: $94
    add e                                         ; $6814: $83
    ld c, l                                       ; $6815: $4d
    sub l                                         ; $6816: $95
    ld e, $58                                     ; $6817: $1e $58
    inc bc                                        ; $6819: $03
    ld a, [hl+]                                   ; $681a: $2a
    ld sp, hl                                     ; $681b: $f9
    or h                                          ; $681c: $b4
    sub c                                         ; $681d: $91
    add c                                         ; $681e: $81
    dec de                                        ; $681f: $1b
    jp c, $8f63                                   ; $6820: $da $63 $8f

    xor c                                         ; $6823: $a9
    ccf                                           ; $6824: $3f
    ld sp, $d68f                                  ; $6825: $31 $8f $d6
    sub b                                         ; $6828: $90
    sbc a                                         ; $6829: $9f
    ld sp, $968c                                  ; $682a: $31 $8c $96
    dec a                                         ; $682d: $3d
    rst $18                                       ; $682e: $df
    halt                                          ; $682f: $76
    ld a, d                                       ; $6830: $7a
    cp l                                          ; $6831: $bd
    cpl                                           ; $6832: $2f
    add [hl]                                      ; $6833: $86
    or c                                          ; $6834: $b1
    cp e                                          ; $6835: $bb
    cp l                                          ; $6836: $bd
    ld [hl], b                                    ; $6837: $70
    xor l                                         ; $6838: $ad
    ld a, $8d                                     ; $6839: $3e $8d
    dec e                                         ; $683b: $1d
    ld l, l                                       ; $683c: $6d
    jr jr_067_67d2                                ; $683d: $18 $93

    cpl                                           ; $683f: $2f
    rst $28                                       ; $6840: $ef
    ld l, [hl]                                    ; $6841: $6e
    ld l, a                                       ; $6842: $6f
    db $f4                                        ; $6843: $f4
    cp $00                                        ; $6844: $fe $00
    rla                                           ; $6846: $17
    xor [hl]                                      ; $6847: $ae
    dec d                                         ; $6848: $15
    pop af                                        ; $6849: $f1
    sbc a                                         ; $684a: $9f
    sbc b                                         ; $684b: $98
    ld l, l                                       ; $684c: $6d
    ld e, h                                       ; $684d: $5c
    cp c                                          ; $684e: $b9
    and h                                         ; $684f: $a4
    sbc l                                         ; $6850: $9d
    ld h, h                                       ; $6851: $64
    cp l                                          ; $6852: $bd
    ld h, e                                       ; $6853: $63
    sub d                                         ; $6854: $92
    dec c                                         ; $6855: $0d
    add sp, -$61                                  ; $6856: $e8 $9f
    ld b, h                                       ; $6858: $44
    sbc d                                         ; $6859: $9a
    sub $fd                                       ; $685a: $d6 $fd
    sbc e                                         ; $685c: $9b
    adc b                                         ; $685d: $88
    ld h, b                                       ; $685e: $60
    db $ec                                        ; $685f: $ec
    ld a, c                                       ; $6860: $79
    ld l, a                                       ; $6861: $6f
    add hl, de                                    ; $6862: $19
    dec e                                         ; $6863: $1d
    cpl                                           ; $6864: $2f
    sub a                                         ; $6865: $97
    ld c, l                                       ; $6866: $4d
    rra                                           ; $6867: $1f
    db $db                                        ; $6868: $db
    add h                                         ; $6869: $84
    ld d, e                                       ; $686a: $53
    db $dd                                        ; $686b: $dd
    xor b                                         ; $686c: $a8
    dec de                                        ; $686d: $1b
    dec d                                         ; $686e: $15
    rst $28                                       ; $686f: $ef
    cp [hl]                                       ; $6870: $be
    rst $28                                       ; $6871: $ef
    ld b, [hl]                                    ; $6872: $46
    pop hl                                        ; $6873: $e1
    call nc, $e8df                                ; $6874: $d4 $df $e8
    ld l, a                                       ; $6877: $6f
    db $f4                                        ; $6878: $f4
    ld b, a                                       ; $6879: $47
    ld [hl], l                                    ; $687a: $75
    xor $fb                                       ; $687b: $ee $fb
    cp $00                                        ; $687d: $fe $00
    adc c                                         ; $687f: $89
    ld e, b                                       ; $6880: $58
    and [hl]                                      ; $6881: $a6

Jump_067_6882:
    ld [de], a                                    ; $6882: $12
    ld [hl], c                                    ; $6883: $71
    or h                                          ; $6884: $b4
    pop hl                                        ; $6885: $e1
    and l                                         ; $6886: $a5
    cp c                                          ; $6887: $b9
    ld d, c                                       ; $6888: $51
    and d                                         ; $6889: $a2
    rst $38                                       ; $688a: $ff
    ret z                                         ; $688b: $c8

    xor c                                         ; $688c: $a9
    ld c, a                                       ; $688d: $4f
    ld d, l                                       ; $688e: $55
    ld e, d                                       ; $688f: $5a
    ld a, l                                       ; $6890: $7d
    inc l                                         ; $6891: $2c
    and e                                         ; $6892: $a3
    ld d, l                                       ; $6893: $55
    jr c, jr_067_6903                             ; $6894: $38 $6d

    ld [hl], $97                                  ; $6896: $36 $97
    ld [hl], d                                    ; $6898: $72
    ret nc                                        ; $6899: $d0

    ei                                            ; $689a: $fb
    inc bc                                        ; $689b: $03
    ld e, e                                       ; $689c: $5b
    scf                                           ; $689d: $37
    jp z, $928d                                   ; $689e: $ca $8d $92

    ld e, d                                       ; $68a1: $5a
    add l                                         ; $68a2: $85
    dec a                                         ; $68a3: $3d
    ld [hl], $6f                                  ; $68a4: $36 $6f
    call z, $b31b                                 ; $68a6: $cc $1b $b3
    pop af                                        ; $68a9: $f1
    xor l                                         ; $68aa: $ad
    rla                                           ; $68ab: $17
    adc $7d                                       ; $68ac: $ce $7d
    rst $18                                       ; $68ae: $df
    rra                                           ; $68af: $1f
    ld d, a                                       ; $68b0: $57
    call z, $6992                                 ; $68b1: $cc $92 $69
    sub b                                         ; $68b4: $90
    and e                                         ; $68b5: $a3
    ld h, l                                       ; $68b6: $65
    cp l                                          ; $68b7: $bd
    ld e, h                                       ; $68b8: $5c
    ld l, b                                       ; $68b9: $68
    ld c, l                                       ; $68ba: $4d
    add hl, sp                                    ; $68bb: $39
    add $30                                       ; $68bc: $c6 $30
    dec c                                         ; $68be: $0d
    ld hl, sp+$5f                                 ; $68bf: $f8 $5f
    ld a, b                                       ; $68c1: $78
    sub $89                                       ; $68c2: $d6 $89
    ld bc, $e685                                  ; $68c4: $01 $85 $e6
    or l                                          ; $68c7: $b5
    or d                                          ; $68c8: $b2
    ld [$05d8], a                                 ; $68c9: $ea $d8 $05
    ld e, h                                       ; $68cc: $5c
    ld [bc], a                                    ; $68cd: $02
    inc bc                                        ; $68ce: $03
    xor $0f                                       ; $68cf: $ee $0f
    ld [c], a                                     ; $68d1: $e2
    cpl                                           ; $68d2: $2f
    ld b, $d6                                     ; $68d3: $06 $d6
    inc bc                                        ; $68d5: $03
    reti                                          ; $68d6: $d9


    sub h                                         ; $68d7: $94
    ld b, e                                       ; $68d8: $43
    and e                                         ; $68d9: $a3
    ld [hl], b                                    ; $68da: $70
    ld a, [de]                                    ; $68db: $1a
    ld b, a                                       ; $68dc: $47
    cp e                                          ; $68dd: $bb
    ld a, d                                       ; $68de: $7a
    ld b, [hl]                                    ; $68df: $46
    ld a, c                                       ; $68e0: $79
    ld a, a                                       ; $68e1: $7f
    sub a                                         ; $68e2: $97
    jr c, jr_067_6959                             ; $68e3: $38 $74

    ld e, l                                       ; $68e5: $5d
    reti                                          ; $68e6: $d9


    ld b, h                                       ; $68e7: $44
    inc b                                         ; $68e8: $04

Jump_067_68e9:
    ld h, e                                       ; $68e9: $63
    rst $08                                       ; $68ea: $cf
    ld a, e                                       ; $68eb: $7b
    set 5, b                                      ; $68ec: $cb $e8
    ld a, b                                       ; $68ee: $78
    cp c                                          ; $68ef: $b9
    ld l, h                                       ; $68f0: $6c
    ld a, [$db00]                                 ; $68f1: $fa $00 $db
    add h                                         ; $68f4: $84
    ld d, e                                       ; $68f5: $53
    push bc                                       ; $68f6: $c5
    inc de                                        ; $68f7: $13
    ld d, l                                       ; $68f8: $55
    ld d, d                                       ; $68f9: $52
    dec sp                                        ; $68fa: $3b
    db $dd                                        ; $68fb: $dd
    ld de, $a3e9                                  ; $68fc: $11 $e9 $a3
    add hl, hl                                    ; $68ff: $29
    rlca                                          ; $6900: $07
    xor e                                         ; $6901: $ab
    adc l                                         ; $6902: $8d

jr_067_6903:
    di                                            ; $6903: $f3
    xor h                                         ; $6904: $ac
    ld l, l                                       ; $6905: $6d
    ld e, h                                       ; $6906: $5c
    cp b                                          ; $6907: $b8
    pop hl                                        ; $6908: $e1
    inc bc                                        ; $6909: $03
    rst $20                                       ; $690a: $e7
    cp l                                          ; $690b: $bd
    push hl                                       ; $690c: $e5
    ld c, a                                       ; $690d: $4f
    ld l, [hl]                                    ; $690e: $6e
    add sp, $36                                   ; $690f: $e8 $36
    rla                                           ; $6911: $17
    ld a, a                                       ; $6912: $7f
    ld d, [hl]                                    ; $6913: $56
    ld a, [c]                                     ; $6914: $f2
    ld l, c                                       ; $6915: $69
    db $e3                                        ; $6916: $e3
    ld l, b                                       ; $6917: $68
    rla                                           ; $6918: $17
    ld c, b                                       ; $6919: $48
    adc a                                         ; $691a: $8f
    xor l                                         ; $691b: $ad
    ret                                           ; $691c: $c9


    pop de                                        ; $691d: $d1
    ld b, $2c                                     ; $691e: $06 $2c
    cp b                                          ; $6920: $b8
    ccf                                           ; $6921: $3f
    rst $20                                       ; $6922: $e7
    jp nz, $a837                                  ; $6923: $c2 $37 $a8

    ld a, [c]                                     ; $6926: $f2
    cp [hl]                                       ; $6927: $be
    rst $28                                       ; $6928: $ef
    ld b, d                                       ; $6929: $42
    rst $38                                       ; $692a: $ff
    adc c                                         ; $692b: $89
    add c                                         ; $692c: $81
    ld [hl], d                                    ; $692d: $72
    and e                                         ; $692e: $a3
    ld [c], a                                     ; $692f: $e2
    cp $00                                        ; $6930: $fe $00
    ld e, e                                       ; $6932: $5b
    ld [hl], $6e                                  ; $6933: $36 $6e
    reti                                          ; $6935: $d9


    cp b                                          ; $6936: $b8
    add l                                         ; $6937: $85
    ld h, [hl]                                    ; $6938: $66
    dec sp                                        ; $6939: $3b
    rst $28                                       ; $693a: $ef
    ei                                            ; $693b: $fb
    cp [hl]                                       ; $693c: $be
    dec sp                                        ; $693d: $3b
    dec de                                        ; $693e: $1b
    ld h, a                                       ; $693f: $67
    db $e3                                        ; $6940: $e3
    inc l                                         ; $6941: $2c
    ld c, c                                       ; $6942: $49
    ld l, [hl]                                    ; $6943: $6e
    ld hl, sp+$00                                 ; $6944: $f8 $00
    db $db                                        ; $6946: $db
    add h                                         ; $6947: $84
    db $d3                                        ; $6948: $d3
    add b                                         ; $6949: $80
    push de                                       ; $694a: $d5
    and e                                         ; $694b: $a3
    or $c9                                        ; $694c: $f6 $c9
    sub a                                         ; $694e: $97
    ld l, c                                       ; $694f: $69
    sbc l                                         ; $6950: $9d
    ld e, [hl]                                    ; $6951: $5e
    ld [c], a                                     ; $6952: $e2
    sbc [hl]                                      ; $6953: $9e
    add hl, de                                    ; $6954: $19
    sub [hl]                                      ; $6955: $96
    push hl                                       ; $6956: $e5
    cp $00                                        ; $6957: $fe $00

jr_067_6959:
    db $db                                        ; $6959: $db
    add h                                         ; $695a: $84
    or e                                          ; $695b: $b3
    and c                                         ; $695c: $a1
    db $db                                        ; $695d: $db
    sub a                                         ; $695e: $97
    inc h                                         ; $695f: $24
    db $e4                                        ; $6960: $e4
    add [hl]                                      ; $6961: $86
    rrca                                          ; $6962: $0f
    adc c                                         ; $6963: $89
    inc [hl]                                      ; $6964: $34
    sub $3b                                       ; $6965: $d6 $3b
    add $0d                                       ; $6967: $c6 $0d
    dec d                                         ; $6969: $15
    adc a                                         ; $696a: $8f
    add hl, de                                    ; $696b: $19
    ld e, d                                       ; $696c: $5a
    ld b, h                                       ; $696d: $44
    xor a                                         ; $696e: $af
    ld hl, $5a66                                  ; $696f: $21 $66 $5a
    and a                                         ; $6972: $a7
    rst $20                                       ; $6973: $e7
    cp l                                          ; $6974: $bd
    push hl                                       ; $6975: $e5
    ld c, a                                       ; $6976: $4f
    ld [hl], $e5                                  ; $6977: $36 $e5
    ld d, b                                       ; $6979: $50
    and [hl]                                      ; $697a: $a6
    inc e                                         ; $697b: $1c
    ld d, $f6                                     ; $697c: $16 $f6
    sbc a                                         ; $697e: $9f
    and a                                         ; $697f: $a7
    call c, Call_000_01f0                         ; $6980: $dc $f0 $01
    ld e, e                                       ; $6983: $5b
    xor c                                         ; $6984: $a9
    push af                                       ; $6985: $f5
    rst $00                                       ; $6986: $c7
    ld d, d                                       ; $6987: $52
    ld c, $5d                                     ; $6988: $0e $5d
    rst $10                                       ; $698a: $d7
    sub h                                         ; $698b: $94
    ld b, e                                       ; $698c: $43
    di                                            ; $698d: $f3
    add c                                         ; $698e: $81
    or d                                          ; $698f: $b2
    ret nc                                        ; $6990: $d0

    call z, $f3fe                                 ; $6991: $cc $fe $f3
    sub h                                         ; $6994: $94
    push af                                       ; $6995: $f5
    ld [c], a                                     ; $6996: $e2
    ld c, a                                       ; $6997: $4f
    ld [hl-], a                                   ; $6998: $32
    or b                                          ; $6999: $b0
    xor h                                         ; $699a: $ac
    ld [hl+], a                                   ; $699b: $22
    and e                                         ; $699c: $a3
    ld a, a                                       ; $699d: $7f
    sub d                                         ; $699e: $92
    dec hl                                        ; $699f: $2b
    ld l, b                                       ; $69a0: $68
    inc hl                                        ; $69a1: $23
    dec bc                                        ; $69a2: $0b
    db $fd                                        ; $69a3: $fd
    ld h, a                                       ; $69a4: $67
    pop hl                                        ; $69a5: $e1
    and [hl]                                      ; $69a6: $a6
    rrca                                          ; $69a7: $0f
    db $db                                        ; $69a8: $db
    add h                                         ; $69a9: $84
    db $d3                                        ; $69aa: $d3
    push de                                       ; $69ab: $d5
    inc sp                                        ; $69ac: $33
    jp z, $b94e                                   ; $69ad: $ca $4e $b9

    xor h                                         ; $69b0: $ac
    and a                                         ; $69b1: $a7
    cpl                                           ; $69b2: $2f

Call_067_69b3:
    sbc h                                         ; $69b3: $9c
    ld b, $78                                     ; $69b4: $06 $78
    ld hl, sp+$04                                 ; $69b6: $f8 $04
    ld c, a                                       ; $69b8: $4f
    inc bc                                        ; $69b9: $03
    ld d, $6c                                     ; $69ba: $16 $6c
    ld l, d                                       ; $69bc: $6a
    add d                                         ; $69bd: $82
    and $b5                                       ; $69be: $e6 $b5
    or d                                          ; $69c0: $b2
    ld l, c                                       ; $69c1: $69
    ld b, a                                       ; $69c2: $47

Jump_067_69c3:
    dec bc                                        ; $69c3: $0b
    or h                                          ; $69c4: $b4
    and [hl]                                      ; $69c5: $a6
    inc e                                         ; $69c6: $1c
    sub a                                         ; $69c7: $97
    sub h                                         ; $69c8: $94
    add e                                         ; $69c9: $83
    push af                                       ; $69ca: $f5
    sbc a                                         ; $69cb: $9f
    and a                                         ; $69cc: $a7
    cp h                                          ; $69cd: $bc
    ccf                                           ; $69ce: $3f
    ld [c], a                                     ; $69cf: $e2
    cp $68                                        ; $69d0: $fe $68
    sbc [hl]                                      ; $69d2: $9e
    and [hl]                                      ; $69d3: $a6
    inc e                                         ; $69d4: $1c
    ld a, [bc]                                    ; $69d5: $0a
    call Call_067_656b                            ; $69d6: $cd $6b $65
    db $d3                                        ; $69d9: $d3
    adc [hl]                                      ; $69da: $8e
    ld d, $68                                     ; $69db: $16 $68
    ld h, l                                       ; $69dd: $65
    inc de                                        ; $69de: $13
    ld de, $3d8c                                  ; $69df: $11 $8c $3d
    rst $28                                       ; $69e2: $ef
    dec l                                         ; $69e3: $2d
    and e                                         ; $69e4: $a3
    db $e3                                        ; $69e5: $e3
    push hl                                       ; $69e6: $e5
    or d                                          ; $69e7: $b2
    pop hl                                        ; $69e8: $e1
    inc bc                                        ; $69e9: $03
    rla                                           ; $69ea: $17
    ld l, b                                       ; $69eb: $68
    sbc [hl]                                      ; $69ec: $9e
    xor [hl]                                      ; $69ed: $ae
    xor e                                         ; $69ee: $ab
    ld [hl], h                                    ; $69ef: $74
    cpl                                           ; $69f0: $2f
    ld c, a                                       ; $69f1: $4f
    ld a, l                                       ; $69f2: $7d
    ret c                                         ; $69f3: $d8

    ld c, e                                       ; $69f4: $4b
    adc a                                         ; $69f5: $8f
    ld c, [hl]                                    ; $69f6: $4e
    ld d, c                                       ; $69f7: $51
    ld l, b                                       ; $69f8: $68
    ld e, [hl]                                    ; $69f9: $5e

Call_067_69fa:
    dec hl                                        ; $69fa: $2b
    db $eb                                        ; $69fb: $eb
    push hl                                       ; $69fc: $e5
    ld l, $d8                                     ; $69fd: $2e $d8
    ld b, [hl]                                    ; $69ff: $46

jr_067_6a00:
    ld b, l                                       ; $6a00: $45
    inc sp                                        ; $6a01: $33
    dec l                                         ; $6a02: $2d
    ldh [$ee], a                                  ; $6a03: $e0 $ee
    dec d                                         ; $6a05: $15

Jump_067_6a06:
    sub h                                         ; $6a06: $94
    and e                                         ; $6a07: $a3
    ld e, l                                       ; $6a08: $5d
    pop bc                                        ; $6a09: $c1
    xor d                                         ; $6a0a: $aa
    jr z, @+$7d                                   ; $6a0b: $28 $7b

    ld l, $25                                     ; $6a0d: $2e $25
    ld a, e                                       ; $6a0f: $7b
    cp $58                                        ; $6a10: $fe $58
    ld h, b                                       ; $6a12: $60
    jp $0af4                                      ; $6a13: $c3 $f4 $0a


    ld l, b                                       ; $6a16: $68

jr_067_6a17:
    ld a, [hl]                                    ; $6a17: $7e
    ld h, c                                       ; $6a18: $61
    cp d                                          ; $6a19: $ba
    ld a, c                                       ; $6a1a: $79
    ld l, h                                       ; $6a1b: $6c
    ld h, e                                       ; $6a1c: $63
    ret nz                                        ; $6a1d: $c0

    add $4b                                       ; $6a1e: $c6 $4b
    ld b, a                                       ; $6a20: $47
    ld e, c                                       ; $6a21: $59
    ld bc, $5d6b                                  ; $6a22: $01 $6b $5d
    call $c792                                    ; $6a25: $cd $92 $c7
    db $dd                                        ; $6a28: $dd
    rra                                           ; $6a29: $1f
    db $db                                        ; $6a2a: $db
    ld h, e                                       ; $6a2b: $63
    ld b, b                                       ; $6a2c: $40
    jp Jump_067_67a3                              ; $6a2d: $c3 $a3 $67


    or h                                          ; $6a30: $b4
    ret nc                                        ; $6a31: $d0

    db $fc                                        ; $6a32: $fc
    ld d, [hl]                                    ; $6a33: $56
    jr nc, jr_067_6a00                            ; $6a34: $30 $ca

    ld c, l                                       ; $6a36: $4d
    rra                                           ; $6a37: $1f
    db $db                                        ; $6a38: $db
    add h                                         ; $6a39: $84
    db $d3                                        ; $6a3a: $d3
    adc h                                         ; $6a3b: $8c
    cp [hl]                                       ; $6a3c: $be
    sbc b                                         ; $6a3d: $98
    ld h, c                                       ; $6a3e: $61
    ld d, b                                       ; $6a3f: $50
    push hl                                       ; $6a40: $e5
    add [hl]                                      ; $6a41: $86
    sbc [hl]                                      ; $6a42: $9e
    scf                                           ; $6a43: $37
    rst $38                                       ; $6a44: $ff
    adc e                                         ; $6a45: $8b
    ret                                           ; $6a46: $c9


    ld l, c                                       ; $6a47: $69
    ld b, b                                       ; $6a48: $40
    db $fd                                        ; $6a49: $fd
    or c                                          ; $6a4a: $b1
    ld a, a                                       ; $6a4b: $7f
    ld [hl], $7c                                  ; $6a4c: $36 $7c
    sub a                                         ; $6a4e: $97
    ld hl, $036a                                  ; $6a4f: $21 $6a $03
    ld a, [de]                                    ; $6a52: $1a
    ldh a, [rDIV]                                 ; $6a53: $f0 $04
    db $d3                                        ; $6a55: $d3
    ld a, [de]                                    ; $6a56: $1a
    ret nc                                        ; $6a57: $d0

    adc h                                         ; $6a58: $8c
    jp nc, $e9ec                                  ; $6a59: $d2 $ec $e9

    ld c, a                                       ; $6a5c: $4f
    dec hl                                        ; $6a5d: $2b
    ld d, l                                       ; $6a5e: $55
    sbc a                                         ; $6a5f: $9f
    xor h                                         ; $6a60: $ac
    rla                                           ; $6a61: $17
    cpl                                           ; $6a62: $2f
    ld c, a                                       ; $6a63: $4f
    ld a, l                                       ; $6a64: $7d
    jp c, $ee6a                                   ; $6a65: $da $6a $ee

    adc d                                         ; $6a68: $8a
    and a                                         ; $6a69: $a7
    rst $00                                       ; $6a6a: $c7
    jr z, jr_067_6a17                             ; $6a6b: $28 $aa

    and d                                         ; $6a6d: $a2
    ld d, c                                       ; $6a6e: $51
    jr c, jr_067_6ac6                             ; $6a6f: $38 $55

    db $f4                                        ; $6a71: $f4
    ld c, c                                       ; $6a72: $49
    ld a, a                                       ; $6a73: $7f
    inc l                                         ; $6a74: $2c
    ld d, e                                       ; $6a75: $53
    adc d                                         ; $6a76: $8a
    cp d                                          ; $6a77: $ba
    ld a, [de]                                    ; $6a78: $1a
    rst $10                                       ; $6a79: $d7
    jr nc, jr_067_6aa2                            ; $6a7a: $30 $26

    sbc a                                         ; $6a7c: $9f
    db $dd                                        ; $6a7d: $dd
    rra                                           ; $6a7e: $1f
    add hl, bc                                    ; $6a7f: $09
    xor [hl]                                      ; $6a80: $ae
    sbc c                                         ; $6a81: $99
    jp nc, Jump_067_4eb3                          ; $6a82: $d2 $b3 $4e

    sbc $dd                                       ; $6a85: $de $dd
    sbc $cb                                       ; $6a87: $de $cb
    inc c                                         ; $6a89: $0c
    xor e                                         ; $6a8a: $ab
    or c                                          ; $6a8b: $b1
    ld b, [hl]                                    ; $6a8c: $46
    pop hl                                        ; $6a8d: $e1
    inc [hl]                                      ; $6a8e: $34
    adc h                                         ; $6a8f: $8c
    ld c, c                                       ; $6a90: $49
    ld d, h                                       ; $6a91: $54
    ld hl, $9f2b                                  ; $6a92: $21 $2b $9f
    cp h                                          ; $6a95: $bc
    ccf                                           ; $6a96: $3f
    rst $20                                       ; $6a97: $e7
    ld h, d                                       ; $6a98: $62
    or l                                          ; $6a99: $b5
    dec de                                        ; $6a9a: $1b
    push hl                                       ; $6a9b: $e5
    ld l, b                                       ; $6a9c: $68
    rst $38                                       ; $6a9d: $ff
    adc c                                         ; $6a9e: $89
    sbc c                                         ; $6a9f: $99
    sub $fd                                       ; $6aa0: $d6 $fd

jr_067_6aa2:
    cp e                                          ; $6aa2: $bb
    push af                                       ; $6aa3: $f5
    ccf                                           ; $6aa4: $3f
    ld a, a                                       ; $6aa5: $7f
    ld [hl+], a                                   ; $6aa6: $22
    db $d3                                        ; $6aa7: $d3
    ld e, h                                       ; $6aa8: $5c
    sub [hl]                                      ; $6aa9: $96
    ld [$0c78], a                                 ; $6aaa: $ea $78 $0c
    sbc l                                         ; $6aad: $9d
    xor $88                                       ; $6aae: $ee $88
    db $f4                                        ; $6ab0: $f4
    ld [hl], c                                    ; $6ab1: $71
    ld a, a                                       ; $6ab2: $7f
    ld [c], a                                     ; $6ab3: $e2
    ld a, a                                       ; $6ab4: $7f
    ld [hl], d                                    ; $6ab5: $72
    sbc d                                         ; $6ab6: $9a
    ld [hl], d                                    ; $6ab7: $72
    jr z, jr_067_6ad0                             ; $6ab8: $28 $16

    ld [hl], $0a                                  ; $6aba: $36 $0a
    and a                                         ; $6abc: $a7
    adc a                                         ; $6abd: $8f
    push hl                                       ; $6abe: $e5
    ld l, a                                       ; $6abf: $6f
    ld [$d32f], sp                                ; $6ac0: $08 $2f $d3

jr_067_6ac3:
    ld a, [bc]                                    ; $6ac3: $0a
    reti                                          ; $6ac4: $d9


    cp b                                          ; $6ac5: $b8

jr_067_6ac6:
    cp e                                          ; $6ac6: $bb
    sbc $4d                                       ; $6ac7: $de $4d
    xor b                                         ; $6ac9: $a8
    add h                                         ; $6aca: $84
    jp z, $ca69                                   ; $6acb: $ca $69 $ca

    and c                                         ; $6ace: $a1
    db $fc                                        ; $6acf: $fc

jr_067_6ad0:
    dec c                                         ; $6ad0: $0d
    pop hl                                        ; $6ad1: $e1
    ld h, l                                       ; $6ad2: $65
    xor d                                         ; $6ad3: $aa
    ld b, d                                       ; $6ad4: $42
    ld d, h                                       ; $6ad5: $54
    jr jr_067_6ac3                                ; $6ad6: $18 $eb

    inc h                                         ; $6ad8: $24
    db $eb                                        ; $6ad9: $eb
    db $db                                        ; $6ada: $db
    xor h                                         ; $6adb: $ac
    ret c                                         ; $6adc: $d8

    add b                                         ; $6add: $80
    and [hl]                                      ; $6ade: $a6
    inc e                                         ; $6adf: $1c
    sbc d                                         ; $6ae0: $9a
    ld [hl], a                                    ; $6ae1: $77
    adc e                                         ; $6ae2: $8b
    ld c, c                                       ; $6ae3: $49
    jp z, Jump_000_32d1                           ; $6ae4: $ca $d1 $32

    ld b, $86                                     ; $6ae7: $06 $86
    xor c                                         ; $6ae9: $a9
    adc a                                         ; $6aea: $8f
    ld h, l                                       ; $6aeb: $65
    or h                                          ; $6aec: $b4
    rst $38                                       ; $6aed: $ff
    sbc b                                         ; $6aee: $98
    ld hl, $418c                                  ; $6aef: $21 $8c $41
    dec sp                                        ; $6af2: $3b
    ld sp, $7643                                  ; $6af3: $31 $43 $76
    rst $38                                       ; $6af6: $ff
    add $79                                       ; $6af7: $c6 $79
    add hl, de                                    ; $6af9: $19
    rst $30                                       ; $6afa: $f7
    rlca                                          ; $6afb: $07
    sub a                                         ; $6afc: $97
    ld [hl], c                                    ; $6afd: $71
    ld e, c                                       ; $6afe: $59
    ld h, c                                       ; $6aff: $61
    rst $10                                       ; $6b00: $d7
    db $dd                                        ; $6b01: $dd
    xor l                                         ; $6b02: $ad

Jump_067_6b03:
    call nc, $4972                                ; $6b03: $d4 $72 $49
    dec sp                                        ; $6b06: $3b
    ret                                           ; $6b07: $c9


    cp $f3                                        ; $6b08: $fe $f3
    sub h                                         ; $6b0a: $94
    call $a390                                    ; $6b0b: $cd $90 $a3
    dec c                                         ; $6b0e: $0d
    xor b                                         ; $6b0f: $a8
    sub a                                         ; $6b10: $97
    cp e                                          ; $6b11: $bb
    ld h, b                                       ; $6b12: $60
    dec de                                        ; $6b13: $1b
    ld a, $89                                     ; $6b14: $3e $89
    inc [hl]                                      ; $6b16: $34
    or $9f                                        ; $6b17: $f6 $9f
    cp b                                          ; $6b19: $b8
    ld b, d                                       ; $6b1a: $42
    db $fc                                        ; $6b1b: $fc
    ld h, c                                       ; $6b1c: $61
    ld h, l                                       ; $6b1d: $65
    or a                                          ; $6b1e: $b7

Call_067_6b1f:
    cp $e7                                        ; $6b1f: $fe $e7
    ld c, a                                       ; $6b21: $4f
    ld h, h                                       ; $6b22: $64
    sbc d                                         ; $6b23: $9a
    set 2, d                                      ; $6b24: $cb $d2
    inc c                                         ; $6b26: $0c
    add hl, sp                                    ; $6b27: $39
    jp c, Jump_067_6680                           ; $6b28: $da $80 $66

    ld e, b                                       ; $6b2b: $58
    dec h                                         ; $6b2c: $25
    sbc a                                         ; $6b2d: $9f
    sub $b7                                       ; $6b2e: $d6 $b7
    ld e, c                                       ; $6b30: $59
    ld d, c                                       ; $6b31: $51
    rst $28                                       ; $6b32: $ef
    ld e, [hl]                                    ; $6b33: $5e
    ld b, $39                                     ; $6b34: $06 $39
    jp c, Jump_000_0680                           ; $6b36: $da $80 $06

    add sp, $3f                                   ; $6b39: $e8 $3f
    ld e, $7b                                     ; $6b3b: $1e $7b
    sub $69                                       ; $6b3d: $d6 $69
    jp z, $eba1                                   ; $6b3f: $ca $a1 $eb

    jp z, $2226                                   ; $6b42: $ca $26 $22

    jr jr_067_6bc2                                ; $6b45: $18 $7b

    sbc $5b                                       ; $6b47: $de $5b
    ld b, [hl]                                    ; $6b49: $46
    rst $00                                       ; $6b4a: $c7
    set 4, l                                      ; $6b4b: $cb $e5
    cp $00                                        ; $6b4d: $fe $00
    rst $20                                       ; $6b4f: $e7
    inc c                                         ; $6b50: $0c
    ei                                            ; $6b51: $fb
    ld [bc], a                                    ; $6b52: $02
    ld e, $ef                                     ; $6b53: $1e $ef
    ld l, [hl]                                    ; $6b55: $6e
    and l                                         ; $6b56: $a5
    halt                                          ; $6b57: $76
    ld b, l                                       ; $6b58: $45
    add hl, sp                                    ; $6b59: $39
    jp c, $247f                                   ; $6b5a: $da $7f $24

    sub $d3                                       ; $6b5d: $d6 $d3
    ld c, d                                       ; $6b5f: $4a
    ret                                           ; $6b60: $c9


    sbc b                                         ; $6b61: $98
    inc d                                         ; $6b62: $14
    sbc $bd                                       ; $6b63: $de $bd
    ld [hl], b                                    ; $6b65: $70
    xor l                                         ; $6b66: $ad
    ld a, a                                       ; $6b67: $7f
    ld [de], a                                    ; $6b68: $12
    ld l, c                                       ; $6b69: $69
    ld [hl], $a0                                  ; $6b6a: $36 $a0
    ld e, h                                       ; $6b6c: $5c
    ld hl, $6766                                  ; $6b6d: $21 $66 $67
    call nc, Call_000_2746                        ; $6b70: $d4 $46 $27
    ld e, c                                       ; $6b73: $59
    db $dd                                        ; $6b74: $dd
    cp l                                          ; $6b75: $bd
    ld [hl], c                                    ; $6b76: $71
    ld e, [hl]                                    ; $6b77: $5e
    add $dd                                       ; $6b78: $c6 $dd
    ld [hl], e                                    ; $6b7a: $73
    add [hl]                                      ; $6b7b: $86
    adc l                                         ; $6b7c: $8d
    di                                            ; $6b7d: $f3
    ld [hl-], a                                   ; $6b7e: $32
    ld b, h                                       ; $6b7f: $44
    db $dd                                        ; $6b80: $dd
    ld b, d                                       ; $6b81: $42
    or e                                          ; $6b82: $b3
    sbc l                                         ; $6b83: $9d
    rst $30                                       ; $6b84: $f7
    rlca                                          ; $6b85: $07
    rst $20                                       ; $6b86: $e7
    inc c                                         ; $6b87: $0c
    dec de                                        ; $6b88: $1b
    rst $20                                       ; $6b89: $e7
    ld h, l                                       ; $6b8a: $65
    adc b                                         ; $6b8b: $88
    ld a, d                                       ; $6b8c: $7a
    jp hl                                         ; $6b8d: $e9


    call nz, $03fb                                ; $6b8e: $c4 $fb $03
    ld [c], a                                     ; $6b91: $e2
    ld sp, $cbb0                                  ; $6b92: $31 $b0 $cb
    jp c, Jump_067_5edd                           ; $6b95: $da $dd $5e

    ld b, $39                                     ; $6b98: $06 $39
    jp c, Jump_067_6680                           ; $6b9a: $da $80 $66

    call nz, Call_000_2b4c                        ; $6b9d: $c4 $4c $2b
    ld [c], a                                     ; $6ba0: $e2
    ccf                                           ; $6ba1: $3f
    ld sp, $ad1b                                  ; $6ba2: $31 $1b $ad
    db $d3                                        ; $6ba5: $d3
    xor l                                         ; $6ba6: $ad
    ld e, h                                       ; $6ba7: $5c
    cp h                                          ; $6ba8: $bc
    or e                                          ; $6ba9: $b3
    or e                                          ; $6baa: $b3
    db $e3                                        ; $6bab: $e3
    or d                                          ; $6bac: $b2
    or c                                          ; $6bad: $b1
    dec hl                                        ; $6bae: $2b
    db $ec                                        ; $6baf: $ec
    ld l, d                                       ; $6bb0: $6a
    ld h, h                                       ; $6bb1: $64
    ld [hl], a                                    ; $6bb2: $77
    ld [hl], b                                    ; $6bb3: $70
    ld h, c                                       ; $6bb4: $61

Jump_067_6bb5:
    jp Jump_000_2f68                              ; $6bb5: $c3 $68 $2f


    or e                                          ; $6bb8: $b3
    pop af                                        ; $6bb9: $f1
    xor [hl]                                      ; $6bba: $ae
    ld [hl], e                                    ; $6bbb: $73
    ld a, d                                       ; $6bbc: $7a
    ld a, a                                       ; $6bbd: $7f
    rst $20                                       ; $6bbe: $e7
    ld h, d                                       ; $6bbf: $62
    or l                                          ; $6bc0: $b5
    dec de                                        ; $6bc1: $1b

jr_067_6bc2:
    push hl                                       ; $6bc2: $e5
    ld l, b                                       ; $6bc3: $68
    cp l                                          ; $6bc4: $bd
    rst $28                                       ; $6bc5: $ef
    and a                                         ; $6bc6: $a7
    sub l                                         ; $6bc7: $95
    add hl, hl                                    ; $6bc8: $29
    rst $30                                       ; $6bc9: $f7
    ld a, [bc]                                    ; $6bca: $0a
    reti                                          ; $6bcb: $d9


    rst $38                                       ; $6bcc: $ff
    ld c, c                                       ; $6bcd: $49
    adc d                                         ; $6bce: $8a
    cp d                                          ; $6bcf: $ba
    add l                                         ; $6bd0: $85
    ld h, [hl]                                    ; $6bd1: $66
    dec sp                                        ; $6bd2: $3b
    rst $28                                       ; $6bd3: $ef
    ld d, [hl]                                    ; $6bd4: $56
    cp h                                          ; $6bd5: $bc
    dec sp                                        ; $6bd6: $3b
    cp b                                          ; $6bd7: $b8
    or b                                          ; $6bd8: $b0
    ld h, c                                       ; $6bd9: $61
    or h                                          ; $6bda: $b4
    sub a                                         ; $6bdb: $97
    reti                                          ; $6bdc: $d9


    ld a, b                                       ; $6bdd: $78
    rst $10                                       ; $6bde: $d7
    add hl, sp                                    ; $6bdf: $39
    ld l, l                                       ; $6be0: $6d
    sbc h                                         ; $6be1: $9c
    ld h, [hl]                                    ; $6be2: $66
    ret c                                         ; $6be3: $d8

    adc a                                         ; $6be4: $8f
    ld h, a                                       ; $6be5: $67
    ld d, e                                       ; $6be6: $53
    add $40                                       ; $6be7: $c6 $40
    cp e                                          ; $6be9: $bb
    ccf                                           ; $6bea: $3f
    ld [c], a                                     ; $6beb: $e2
    cp e                                          ; $6bec: $bb
    dec d                                         ; $6bed: $15
    sbc d                                         ; $6bee: $9a
    rst $10                                       ; $6bef: $d7
    or h                                          ; $6bf0: $b4
    reti                                          ; $6bf1: $d9


    adc c                                         ; $6bf2: $89
    cp d                                          ; $6bf3: $ba
    add l                                         ; $6bf4: $85
    ld h, [hl]                                    ; $6bf5: $66
    dec sp                                        ; $6bf6: $3b
    rst $28                                       ; $6bf7: $ef
    or $0a                                        ; $6bf8: $f6 $0a
    jp z, $fad1                                   ; $6bfa: $ca $d1 $fa

    inc [hl]                                      ; $6bfd: $34
    sub [hl]                                      ; $6bfe: $96
    adc l                                         ; $6bff: $8d
    and e                                         ; $6c00: $a3
    jp z, $284a                                   ; $6c01: $ca $4a $28

    rst $28                                       ; $6c04: $ef
    rrca                                          ; $6c05: $0f
    rst $20                                       ; $6c06: $e7
    call $62ff                                    ; $6c07: $cd $ff $62
    ld [hl], d                                    ; $6c0a: $72
    ld a, [de]                                    ; $6c0b: $1a
    ret nc                                        ; $6c0c: $d0

jr_067_6c0d:
    call nz, Call_067_7fb1                        ; $6c0d: $c4 $b1 $7f
    xor $0f                                       ; $6c10: $ee $0f
    ld h, a                                       ; $6c12: $67
    ld d, h                                       ; $6c13: $54
    ld h, d                                       ; $6c14: $62
    ld c, c                                       ; $6c15: $49
    adc [hl]                                      ; $6c16: $8e
    dec [hl]                                      ; $6c17: $35
    ld a, [bc]                                    ; $6c18: $0a
    and a                                         ; $6c19: $a7
    rst $08                                       ; $6c1a: $cf
    ld [$58d3], a                                 ; $6c1b: $ea $d3 $58
    ld l, $ef                                     ; $6c1e: $2e $ef
    ld l, [hl]                                    ; $6c20: $6e
    rst $08                                       ; $6c21: $cf
    xor b                                         ; $6c22: $a8
    ld l, a                                       ; $6c23: $6f
    di                                            ; $6c24: $f3
    inc a                                         ; $6c25: $3c
    cpl                                           ; $6c26: $2f
    call z, Call_000_01fd                         ; $6c27: $cc $fd $01
    rst $20                                       ; $6c2a: $e7
    ld h, c                                       ; $6c2b: $61
    ld a, c                                       ; $6c2c: $79
    cp e                                          ; $6c2d: $bb
    cp d                                          ; $6c2e: $ba
    adc l                                         ; $6c2f: $8d
    sbc c                                         ; $6c30: $99
    adc e                                         ; $6c31: $8b
    xor b                                         ; $6c32: $a8
    ld e, e                                       ; $6c33: $5b
    ld l, b                                       ; $6c34: $68
    or [hl]                                       ; $6c35: $b6
    ld [hl], e                                    ; $6c36: $73
    jp $e707                                      ; $6c37: $c3 $07 $e7


    ld h, c                                       ; $6c3a: $61
    ld a, c                                       ; $6c3b: $79
    cp e                                          ; $6c3c: $bb
    cp d                                          ; $6c3d: $ba
    adc l                                         ; $6c3e: $8d
    sbc c                                         ; $6c3f: $99
    adc e                                         ; $6c40: $8b
    xor b                                         ; $6c41: $a8
    sub a                                         ; $6c42: $97
    ld c, [hl]                                    ; $6c43: $4e
    call c, $edd0                                 ; $6c44: $dc $d0 $ed
    ld c, e                                       ; $6c47: $4b
    sub d                                         ; $6c48: $92

jr_067_6c49:
    and d                                         ; $6c49: $a2
    ld h, [hl]                                    ; $6c4a: $66
    ret z                                         ; $6c4b: $c8

    pop de                                        ; $6c4c: $d1
    ld a, [$4506]                                 ; $6c4d: $fa $06 $45
    call z, Call_000_06d0                         ; $6c50: $cc $d0 $06

jr_067_6c53:
    ld [hl], h                                    ; $6c53: $74
    dec de                                        ; $6c54: $1b
    inc sp                                        ; $6c55: $33
    sub a                                         ; $6c56: $97
    ei                                            ; $6c57: $fb
    inc bc                                        ; $6c58: $03
    ld e, e                                       ; $6c59: $5b
    and c                                         ; $6c5a: $a1
    ld [hl], d                                    ; $6c5b: $72
    sbc d                                         ; $6c5c: $9a
    ld [hl], d                                    ; $6c5d: $72
    jr z, jr_067_6c8b                             ; $6c5e: $28 $2b

    ld sp, hl                                     ; $6c60: $f9
    add $ea                                       ; $6c61: $c6 $ea
    db $d3                                        ; $6c63: $d3
    ld [hl-], a                                   ; $6c64: $32
    ld a, [de]                                    ; $6c65: $1a
    ld b, [hl]                                    ; $6c66: $46
    dec sp                                        ; $6c67: $3b
    ld l, $db                                     ; $6c68: $2e $db
    ld l, b                                       ; $6c6a: $68
    cp c                                          ; $6c6b: $b9
    cp b                                          ; $6c6c: $b8
    jr c, jr_067_6c49                             ; $6c6d: $38 $da

    jr z, jr_067_6c0d                             ; $6c6f: $28 $9c

    ld b, d                                       ; $6c71: $42
    inc sp                                        ; $6c72: $33
    inc b                                         ; $6c73: $04
    or b                                          ; $6c74: $b0
    rst $38                                       ; $6c75: $ff
    sbc d                                         ; $6c76: $9a
    xor b                                         ; $6c77: $a8
    ld a, h                                       ; $6c78: $7c
    ld sp, $71b0                                  ; $6c79: $31 $b0 $71
    or h                                          ; $6c7c: $b4
    cp $04                                        ; $6c7d: $fe $04
    ret z                                         ; $6c7f: $c8

    pop de                                        ; $6c80: $d1
    add [hl]                                      ; $6c81: $86
    or a                                          ; $6c82: $b7
    add d                                         ; $6c83: $82
    push hl                                       ; $6c84: $e5
    ld h, a                                       ; $6c85: $67
    dec de                                        ; $6c86: $1b
    ld a, $e7                                     ; $6c87: $3e $e7
    inc c                                         ; $6c89: $0c
    or l                                          ; $6c8a: $b5

jr_067_6c8b:
    rst $20                                       ; $6c8b: $e7
    ld b, c                                       ; $6c8c: $41
    inc sp                                        ; $6c8d: $33
    ld d, l                                       ; $6c8e: $55
    call nc, $2b38                                ; $6c8f: $d4 $38 $2b
    and $d9                                       ; $6c92: $e6 $d9
    push af                                       ; $6c94: $f5
    ld [c], a                                     ; $6c95: $e2
    inc h                                         ; $6c96: $24
    or l                                          ; $6c97: $b5
    ld a, [hl-]                                   ; $6c98: $3a
    set 1, e                                      ; $6c99: $cb $cb
    ld l, e                                       ; $6c9b: $6b
    or $46                                        ; $6c9c: $f6 $46
    rst $28                                       ; $6c9e: $ef
    rrca                                          ; $6c9f: $0f
    db $db                                        ; $6ca0: $db
    sbc e                                         ; $6ca1: $9b
    ld [hl], d                                    ; $6ca2: $72
    add sp, -$46                                  ; $6ca3: $e8 $ba
    and [hl]                                      ; $6ca5: $a6
    inc e                                         ; $6ca6: $1c
    sbc d                                         ; $6ca7: $9a
    ld [hl], d                                    ; $6ca8: $72
    jr nc, jr_067_6c53                            ; $6ca9: $30 $a8

    xor b                                         ; $6cab: $a8
    adc c                                         ; $6cac: $89
    ret nz                                        ; $6cad: $c0

Call_067_6cae:
    ld a, [bc]                                    ; $6cae: $0a
    cp d                                          ; $6caf: $ba
    jp hl                                         ; $6cb0: $e9


    inc bc                                        ; $6cb1: $03
    adc c                                         ; $6cb2: $89
    ld b, $45                                     ; $6cb3: $06 $45
    call z, Call_067_5150                         ; $6cb5: $cc $50 $51
    ld a, l                                       ; $6cb8: $7d
    add e                                         ; $6cb9: $83
    ld [hl+], a                                   ; $6cba: $22
    ld h, [hl]                                    ; $6cbb: $66
    xor b                                         ; $6cbc: $a8
    xor b                                         ; $6cbd: $a8
    cp [hl]                                       ; $6cbe: $be
    ld b, c                                       ; $6cbf: $41
    ld de, $7433                                  ; $6cc0: $11 $33 $74
    ld b, e                                       ; $6cc3: $43
    cpl                                           ; $6cc4: $2f
    ld [hl], c                                    ; $6cc5: $71
    ld l, b                                       ; $6cc6: $68
    ld a, [$e8d9]                                 ; $6cc7: $fa $d9 $e8
    db $fd                                        ; $6cca: $fd
    ld bc, $62e7                                  ; $6ccb: $01 $e7 $62
    dec [hl]                                      ; $6cce: $35
    rrc d                                         ; $6ccf: $cb $0a
    dec d                                         ; $6cd1: $15
    or b                                          ; $6cd2: $b0
    sub $a7                                       ; $6cd3: $d6 $a7
    ld a, [hl-]                                   ; $6cd5: $3a
    and d                                         ; $6cd6: $a2
    ld h, $02                                     ; $6cd7: $26 $02
    dec hl                                        ; $6cd9: $2b
    add sp, -$7a                                  ; $6cda: $e8 $86
    rrca                                          ; $6cdc: $0f
    ld h, a                                       ; $6cdd: $67
    ld [hl], h                                    ; $6cde: $74
    ld l, e                                       ; $6cdf: $6b
    jp nz, $ad8e                                  ; $6ce0: $c2 $8e $ad

    db $db                                        ; $6ce3: $db
    dec hl                                        ; $6ce4: $2b
    or c                                          ; $6ce5: $b1
    inc h                                         ; $6ce6: $24
    rst $00                                       ; $6ce7: $c7
    ld a, [de]                                    ; $6ce8: $1a
    ld l, b                                       ; $6ce9: $68
    ld c, l                                       ; $6cea: $4d
    add hl, sp                                    ; $6ceb: $39
    call nc, $c3f0                                ; $6cec: $d4 $f0 $c3
    inc bc                                        ; $6cef: $03
    cp e                                          ; $6cf0: $bb
    cp e                                          ; $6cf1: $bb
    sub l                                         ; $6cf2: $95
    jp c, $c4a9                                   ; $6cf3: $da $a9 $c4

    sub d                                         ; $6cf6: $92
    inc e                                         ; $6cf7: $1c
    ld l, e                                       ; $6cf8: $6b
    ld b, b                                       ; $6cf9: $40
    or e                                          ; $6cfa: $b3
    dec bc                                        ; $6cfb: $0b
    db $d3                                        ; $6cfc: $d3
    ld [hl], l                                    ; $6cfd: $75
    add l                                         ; $6cfe: $85
    cp $13                                        ; $6cff: $fe $13
    inc bc                                        ; $6d01: $03
    xor h                                         ; $6d02: $ac
    rst $38                                       ; $6d03: $ff
    inc a                                         ; $6d04: $3c
    and l                                         ; $6d05: $a5
    ld l, [hl]                                    ; $6d06: $6e
    ld l, b                                       ; $6d07: $68
    add d                                         ; $6d08: $82
    ld l, e                                       ; $6d09: $6b
    ret nz                                        ; $6d0a: $c0

    ld l, d                                       ; $6d0b: $6a
    sub [hl]                                      ; $6d0c: $96
    push de                                       ; $6d0d: $d5
    ld l, h                                       ; $6d0e: $6c
    and h                                         ; $6d0f: $a4
    sbc $f7                                       ; $6d10: $de $f7
    ld e, l                                       ; $6d12: $5d
    ld b, l                                       ; $6d13: $45
    xor c                                         ; $6d14: $a9
    ld b, l                                       ; $6d15: $45
    db $fc                                        ; $6d16: $fc
    daa                                           ; $6d17: $27
    ld h, [hl]                                    ; $6d18: $66
    and e                                         ; $6d19: $a3
    ld b, c                                       ; $6d1a: $41
    sbc $1f                                       ; $6d1b: $de $1f
    db $db                                        ; $6d1d: $db
    sbc e                                         ; $6d1e: $9b
    ld [$a0ac], sp                                ; $6d1f: $08 $ac $a0
    adc l                                         ; $6d22: $8d
    jp nz, Jump_067_44a9                          ; $6d23: $c2 $a9 $44

    sub e                                         ; $6d26: $93
    ld l, e                                       ; $6d27: $6b

jr_067_6d28:
    dec de                                        ; $6d28: $1b
    inc bc                                        ; $6d29: $03
    ld a, [bc]                                    ; $6d2a: $0a
    call Call_000_34c6                            ; $6d2b: $cd $c6 $34
    xor l                                         ; $6d2e: $ad
    db $d3                                        ; $6d2f: $d3
    ld l, l                                       ; $6d30: $6d
    call z, $ee5c                                 ; $6d31: $cc $5c $ee
    ld e, [hl]                                    ; $6d34: $5e
    ld sp, $88ae                                  ; $6d35: $31 $ae $88
    rst $38                                       ; $6d38: $ff
    call nz, $b46c                                ; $6d39: $c4 $6c $b4
    ld d, d                                       ; $6d3c: $52
    dec hl                                        ; $6d3d: $2b
    ld e, a                                       ; $6d3e: $5f
    ld c, h                                       ; $6d3f: $4c
    ld d, d                                       ; $6d40: $52
    db $eb                                        ; $6d41: $eb
    dec de                                        ; $6d42: $1b
    ld h, d                                       ; $6d43: $62
    and b                                         ; $6d44: $a0
    ld l, [hl]                                    ; $6d45: $6e

Call_067_6d46:
    ld hl, sp+$00                                 ; $6d46: $f8 $00
    sub a                                         ; $6d48: $97
    ld hl, $9d6a                                  ; $6d49: $21 $6a $9d
    ld h, h                                       ; $6d4c: $64
    and c                                         ; $6d4d: $a1
    rst $38                                       ; $6d4e: $ff
    inc l                                         ; $6d4f: $2c
    inc l                                         ; $6d50: $2c
    ld [c], a                                     ; $6d51: $e2
    sbc b                                         ; $6d52: $98
    ld b, h                                       ; $6d53: $44
    pop de                                        ; $6d54: $d1
    dec d                                         ; $6d55: $15
    ld [hl], a                                    ; $6d56: $77
    dec a                                         ; $6d57: $3d
    sub $a7                                       ; $6d58: $d6 $a7
    or c                                          ; $6d5a: $b1
    and e                                         ; $6d5b: $a3
    push af                                       ; $6d5c: $f5
    ld l, l                                       ; $6d5d: $6d
    ld a, [hl]                                    ; $6d5e: $7e
    ld h, a                                       ; $6d5f: $67
    or h                                          ; $6d60: $b4
    cp e                                          ; $6d61: $bb
    add hl, bc                                    ; $6d62: $09
    xor [hl]                                      ; $6d63: $ae
    sbc $f7                                       ; $6d64: $de $f7
    ld c, a                                       ; $6d66: $4f
    sbc c                                         ; $6d67: $99
    ld [hl], d                                    ; $6d68: $72
    xor a                                         ; $6d69: $af
    db $ec                                        ; $6d6a: $ec
    ld a, [bc]                                    ; $6d6b: $0a
    ld d, [hl]                                    ; $6d6c: $56
    ld b, l                                       ; $6d6d: $45
    or c                                          ; $6d6e: $b1
    and b                                         ; $6d6f: $a0
    ld d, c                                       ; $6d70: $51
    jr c, jr_067_6d28                             ; $6d71: $38 $b5

    ld [hl], c                                    ; $6d73: $71
    ld e, $56                                     ; $6d74: $1e $56
    ld a, [c]                                     ; $6d76: $f2
    ld l, c                                       ; $6d77: $69
    inc hl                                        ; $6d78: $23
    inc bc                                        ; $6d79: $03
    rst $28                                       ; $6d7a: $ef
    rrca                                          ; $6d7b: $0f
    ld e, e                                       ; $6d7c: $5b
    sbc h                                         ; $6d7d: $9c
    sub h                                         ; $6d7e: $94
    and d                                         ; $6d7f: $a2
    ld b, d                                       ; $6d80: $42
    di                                            ; $6d81: $f3
    ld e, d                                       ; $6d82: $5a
    sbc c                                         ; $6d83: $99
    ld [hl], d                                    ; $6d84: $72
    xor a                                         ; $6d85: $af
    ld c, [hl]                                    ; $6d86: $4e
    sub $f0                                       ; $6d87: $d6 $f0
    inc sp                                        ; $6d89: $33
    call z, Call_000_01fd                         ; $6d8a: $cc $fd $01
    adc c                                         ; $6d8d: $89
    rlca                                          ; $6d8e: $07
    and e                                         ; $6d8f: $a3
    db $ec                                        ; $6d90: $ec
    add d                                         ; $6d91: $82
    sub a                                         ; $6d92: $97
    sbc l                                         ; $6d93: $9d
    or c                                          ; $6d94: $b1
    sub b                                         ; $6d95: $90
    dec c                                         ; $6d96: $0d
    adc a                                         ; $6d97: $8f
    ld h, l                                       ; $6d98: $65
    call z, Call_000_06d0                         ; $6d99: $cc $d0 $06
    ld d, h                                       ; $6d9c: $54
    cp c                                          ; $6d9d: $b9
    sbc e                                         ; $6d9e: $9b
    ld b, c                                       ; $6d9f: $41
    rst $28                                       ; $6da0: $ef
    rrca                                          ; $6da1: $0f
    adc c                                         ; $6da2: $89
    or e                                          ; $6da3: $b3
    ld h, h                                       ; $6da4: $64
    ld e, b                                       ; $6da5: $58
    ld a, [de]                                    ; $6da6: $1a
    ld c, a                                       ; $6da7: $4f
    ld [hl], e                                    ; $6da8: $73
    rst $08                                       ; $6da9: $cf
    sbc c                                         ; $6daa: $99
    ld hl, sp-$4e                                 ; $6dab: $f8 $b2
    ld [hl], b                                    ; $6dad: $70
    ld a, d                                       ; $6dae: $7a
    xor $db                                       ; $6daf: $ee $db
    push de                                       ; $6db1: $d5
    ld c, e                                       ; $6db2: $4b
    inc e                                         ; $6db3: $1c
    ld a, [hl-]                                   ; $6db4: $3a
    db $dd                                        ; $6db5: $dd
    or [hl]                                       ; $6db6: $b6
    add a                                         ; $6db7: $87
    add h                                         ; $6db8: $84
    ld c, l                                       ; $6db9: $4d
    ld c, a                                       ; $6dba: $4f
    ld [$3aba], a                                 ; $6dbb: $ea $ba $3a
    reti                                          ; $6dbe: $d9


    ld l, l                                       ; $6dbf: $6d
    ld a, e                                       ; $6dc0: $7b
    ld c, b                                       ; $6dc1: $48
    ret c                                         ; $6dc2: $d8

    inc [hl]                                      ; $6dc3: $34
    and b                                         ; $6dc4: $a0
    dec sp                                        ; $6dc5: $3b
    add $32                                       ; $6dc6: $c6 $32
    xor $0f                                       ; $6dc8: $ee $0f
    adc c                                         ; $6dca: $89
    add [hl]                                      ; $6dcb: $86
    jr jr_067_6e2c                                ; $6dcc: $18 $5e

    ld c, h                                       ; $6dce: $4c
    ld d, d                                       ; $6dcf: $52
    dec de                                        ; $6dd0: $1b
    ret nc                                        ; $6dd1: $d0

    ld l, l                                       ; $6dd2: $6d
    call z, $9a5c                                 ; $6dd3: $cc $5c $9a
    or [hl]                                       ; $6dd6: $b6
    or l                                          ; $6dd7: $b5
    db $fc                                        ; $6dd8: $fc
    db $f4                                        ; $6dd9: $f4
    xor [hl]                                      ; $6dda: $ae
    ld hl, sp-$75                                 ; $6ddb: $f8 $8b
    add c                                         ; $6ddd: $81
    add l                                         ; $6dde: $85
    db $f4                                        ; $6ddf: $f4
    sbc b                                         ; $6de0: $98
    ld e, e                                       ; $6de1: $5b
    sub d                                         ; $6de2: $92
    inc c                                         ; $6de3: $0c
    call nc, $9bbb                                ; $6de4: $d4 $bb $9b
    daa                                           ; $6de7: $27
    ld h, [hl]                                    ; $6de8: $66
    cp $19                                        ; $6de9: $fe $19
    or d                                          ; $6deb: $b2
    db $d3                                        ; $6dec: $d3
    ld b, h                                       ; $6ded: $44
    ld h, b                                       ; $6dee: $60
    dec b                                         ; $6def: $05
    xor l                                         ; $6df0: $ad
    ld c, a                                       ; $6df1: $4f
    ld h, e                                       ; $6df2: $63
    sub l                                         ; $6df3: $95
    ld e, $58                                     ; $6df4: $1e $58
    dec h                                         ; $6df6: $25
    sbc a                                         ; $6df7: $9f
    sub $1f                                       ; $6df8: $d6 $1f
    sub e                                         ; $6dfa: $93
    adc b                                         ; $6dfb: $88
    ld h, e                                       ; $6dfc: $63
    ret nc                                        ; $6dfd: $d0

    ei                                            ; $6dfe: $fb
    inc bc                                        ; $6dff: $03
    ld [c], a                                     ; $6e00: $e2
    ld c, e                                       ; $6e01: $4b
    jp c, $93ad                                   ; $6e02: $da $ad $93

    ld e, l                                       ; $6e05: $5d
    dec a                                         ; $6e06: $3d
    rst $10                                       ; $6e07: $d7
    ld l, c                                       ; $6e08: $69
    ld [hl+], a                                   ; $6e09: $22
    or b                                          ; $6e0a: $b0
    add d                                         ; $6e0b: $82
    ld l, [hl]                                    ; $6e0c: $6e
    ld [$e3a5], a                                 ; $6e0d: $ea $a5 $e3
    inc a                                         ; $6e10: $3c
    db $e3                                        ; $6e11: $e3
    ld [hl], $4a                                  ; $6e12: $36 $4a
    sub h                                         ; $6e14: $94
    ld e, d                                       ; $6e15: $5a
    rst $18                                       ; $6e16: $df
    db $10                                        ; $6e17: $10
    inc bc                                        ; $6e18: $03
    or l                                          ; $6e19: $b5
    ld bc, $c6dd                                  ; $6e1a: $01 $dd $c6
    call z, $fee5                                 ; $6e1d: $cc $e5 $fe
    nop                                           ; $6e20: $00
    db $db                                        ; $6e21: $db
    add h                                         ; $6e22: $84
    db $d3                                        ; $6e23: $d3
    jp hl                                         ; $6e24: $e9


    ld [$dddd], a                                 ; $6e25: $ea $dd $dd
    ld c, d                                       ; $6e28: $4a
    xor l                                         ; $6e29: $ad
    ld [c], a                                     ; $6e2a: $e2
    dec [hl]                                      ; $6e2b: $35

jr_067_6e2c:
    push hl                                       ; $6e2c: $e5
    ld d, b                                       ; $6e2d: $50
    inc l                                         ; $6e2e: $2c
    ld l, b                                       ; $6e2f: $68
    ld a, d                                       ; $6e30: $7a
    inc [hl]                                      ; $6e31: $34
    or e                                          ; $6e32: $b3
    ld bc, $fe85                                  ; $6e33: $01 $85 $fe
    inc de                                        ; $6e36: $13
    inc bc                                        ; $6e37: $03
    xor h                                         ; $6e38: $ac
    rst $38                                       ; $6e39: $ff
    inc a                                         ; $6e3a: $3c
    and l                                         ; $6e3b: $a5
    sub $1f                                       ; $6e3c: $d6 $1f
    ld l, e                                       ; $6e3e: $6b
    ld b, b                                       ; $6e3f: $40
    or [hl]                                       ; $6e40: $b6
    dec [hl]                                      ; $6e41: $35
    ld l, l                                       ; $6e42: $6d
    ld b, b                                       ; $6e43: $40
    db $fd                                        ; $6e44: $fd
    or c                                          ; $6e45: $b1
    ld c, h                                       ; $6e46: $4c
    xor l                                         ; $6e47: $ad
    rla                                           ; $6e48: $17
    ld a, a                                       ; $6e49: $7f
    sub d                                         ; $6e4a: $92
    add c                                         ; $6e4b: $81
    ld a, d                                       ; $6e4c: $7a
    ld a, a                                       ; $6e4d: $7f
    db $db                                        ; $6e4e: $db
    add h                                         ; $6e4f: $84
    db $d3                                        ; $6e50: $d3
    jp hl                                         ; $6e51: $e9


    ld [$1fdd], a                                 ; $6e52: $ea $dd $1f
    db $db                                        ; $6e55: $db
    sbc e                                         ; $6e56: $9b
    ld [$a0ac], sp                                ; $6e57: $08 $ac $a0
    dec de                                        ; $6e5a: $1b
    cp d                                          ; $6e5b: $ba
    ld e, l                                       ; $6e5c: $5d
    dec de                                        ; $6e5d: $1b
    ret c                                         ; $6e5e: $d8

    add l                                         ; $6e5f: $85
    adc a                                         ; $6e60: $8f
    dec c                                         ; $6e61: $0d
    ld e, b                                       ; $6e62: $58
    ret nc                                        ; $6e63: $d0

    ld [hl], l                                    ; $6e64: $75
    ld c, l                                       ; $6e65: $4d
    add hl, sp                                    ; $6e66: $39
    inc [hl]                                      ; $6e67: $34
    ld [$72a7], sp                                ; $6e68: $08 $a7 $72
    xor l                                         ; $6e6b: $ad
    ld e, [hl]                                    ; $6e6c: $5e
    ld c, d                                       ; $6e6d: $4a
    halt                                          ; $6e6e: $76
    ld a, a                                       ; $6e6f: $7f
    dec l                                         ; $6e70: $2d
    ld d, l                                       ; $6e71: $55
    ld b, a                                       ; $6e72: $47
    ld a, d                                       ; $6e73: $7a
    adc h                                         ; $6e74: $8c
    db $eb                                        ; $6e75: $eb

Call_067_6e76:
    rrca                                          ; $6e76: $0f
    add [hl]                                      ; $6e77: $86
    sbc $dd                                       ; $6e78: $de $dd
    ld c, d                                       ; $6e7a: $4a
    xor l                                         ; $6e7b: $ad
    ld e, e                                       ; $6e7c: $5b
    ld a, [c]                                     ; $6e7d: $f2
    sub e                                         ; $6e7e: $93
    sub h                                         ; $6e7f: $94
    adc b                                         ; $6e80: $88
    add hl, de                                    ; $6e81: $19
    adc l                                         ; $6e82: $8d
    jp nz, Jump_000_34e9                          ; $6e83: $c2 $e9 $34

    inc hl                                        ; $6e86: $23
    ld h, $a7                                     ; $6e87: $26 $a7
    xor e                                         ; $6e89: $ab
    and a                                         ; $6e8a: $a7
    ld a, c                                       ; $6e8b: $79
    xor $0f                                       ; $6e8c: $ee $0f
    db $db                                        ; $6e8e: $db
    add h                                         ; $6e8f: $84
    db $d3                                        ; $6e90: $d3
    jp hl                                         ; $6e91: $e9


    ld [$1a89], a                                 ; $6e92: $ea $89 $1a
    ld hl, $058b                                  ; $6e95: $21 $8b $05
    adc l                                         ; $6e98: $8d
    sub b                                         ; $6e99: $90
    sbc l                                         ; $6e9a: $9d
    ld h, [hl]                                    ; $6e9b: $66
    cp b                                          ; $6e9c: $b8
    ld a, [$4506]                                 ; $6e9d: $fa $06 $45
    call z, $9bb8                                 ; $6ea0: $cc $b8 $9b
    and b                                         ; $6ea3: $a0
    ld a, $6c                                     ; $6ea4: $3e $6c
    sbc d                                         ; $6ea6: $9a
    ld [hl], d                                    ; $6ea7: $72
    ld l, b                                       ; $6ea8: $68
    inc d                                         ; $6ea9: $14
    ld c, [hl]                                    ; $6eaa: $4e
    sub e                                         ; $6eab: $93
    db $e3                                        ; $6eac: $e3
    ld d, [hl]                                    ; $6ead: $56
    ld d, b                                       ; $6eae: $50
    ld b, l                                       ; $6eaf: $45
    sub a                                         ; $6eb0: $97
    or l                                          ; $6eb1: $b5
    ld b, [hl]                                    ; $6eb2: $46
    ld b, $d6                                     ; $6eb3: $06 $d6
    inc sp                                        ; $6eb5: $33
    or d                                          ; $6eb6: $b2
    ld a, $8d                                     ; $6eb7: $3e $8d
    db $fd                                        ; $6eb9: $fd
    ld b, a                                       ; $6eba: $47
    jp nz, Jump_000_0fee                          ; $6ebb: $c2 $ee $0f

    rst $20                                       ; $6ebe: $e7
    ld b, b                                       ; $6ebf: $40
    ld d, [hl]                                    ; $6ec0: $56
    and d                                         ; $6ec1: $a2
    ld a, $2c                                     ; $6ec2: $3e $2c
    db $ed                                        ; $6ec4: $ed
    ld h, d                                       ; $6ec5: $62
    add $eb                                       ; $6ec6: $c6 $eb
    inc [hl]                                      ; $6ec8: $34

Call_067_6ec9:
    push hl                                       ; $6ec9: $e5
    ld d, b                                       ; $6eca: $50
    add l                                         ; $6ecb: $85
    dec a                                         ; $6ecc: $3d
    sub [hl]                                      ; $6ecd: $96
    add hl, hl                                    ; $6ece: $29
    add a                                         ; $6ecf: $87
    dec b                                         ; $6ed0: $05
    push af                                       ; $6ed1: $f5
    ld sp, hl                                     ; $6ed2: $f9
    ld c, a                                       ; $6ed3: $4f
    ld b, [hl]                                    ; $6ed4: $46
    ld d, e                                       ; $6ed5: $53

jr_067_6ed6:
    ld c, $c5                                     ; $6ed6: $0e $c5
    add d                                         ; $6ed8: $82
    ld l, $58                                     ; $6ed9: $2e $58
    ld [hl], c                                    ; $6edb: $71
    push bc                                       ; $6edc: $c5
    ei                                            ; $6edd: $fb
    inc bc                                        ; $6ede: $03
    ld d, a                                       ; $6edf: $57
    inc a                                         ; $6ee0: $3c
    add hl, sp                                    ; $6ee1: $39
    dec de                                        ; $6ee2: $1b
    sub a                                         ; $6ee3: $97
    add hl, hl                                    ; $6ee4: $29
    or e                                          ; $6ee5: $b3
    ld [hl], c                                    ; $6ee6: $71
    dec b                                         ; $6ee7: $05

jr_067_6ee8:
    ld d, l                                       ; $6ee8: $55
    ld e, d                                       ; $6ee9: $5a
    ld e, c                                       ; $6eea: $59
    ld a, a                                       ; $6eeb: $7f
    inc l                                         ; $6eec: $2c
    or e                                          ; $6eed: $b3
    reti                                          ; $6eee: $d9


    jr jr_067_6f70                                ; $6eef: $18 $7f

    ld b, $36                                     ; $6ef1: $06 $36
    or b                                          ; $6ef3: $b0
    jp z, Jump_000_0d85                           ; $6ef4: $ca $85 $0d

    jr z, jr_067_6ed6                             ; $6ef7: $28 $dd

    jp nz, Jump_067_6a06                          ; $6ef9: $c2 $06 $6a

    cpl                                           ; $6efc: $2f
    ld [hl], l                                    ; $6efd: $75
    sub c                                         ; $6efe: $91
    ld e, d                                       ; $6eff: $5a
    pop af                                        ; $6f00: $f1
    sbc b                                         ; $6f01: $98
    ld e, a                                       ; $6f02: $5f
    sbc d                                         ; $6f03: $9a
    ld a, d                                       ; $6f04: $7a
    ld a, a                                       ; $6f05: $7f
    ld d, a                                       ; $6f06: $57
    cp h                                          ; $6f07: $bc
    adc l                                         ; $6f08: $8d
    db $d3                                        ; $6f09: $d3
    nop                                           ; $6f0a: $00
    db $fd                                        ; $6f0b: $fd
    ld h, c                                       ; $6f0c: $61
    dec c                                         ; $6f0d: $0d
    ld d, e                                       ; $6f0e: $53
    add l                                         ; $6f0f: $85
    ldh [$3c], a                                  ; $6f10: $e0 $3c
    ld h, l                                       ; $6f12: $65
    inc c                                         ; $6f13: $0c
    inc [hl]                                      ; $6f14: $34
    ld d, c                                       ; $6f15: $51
    dec h                                         ; $6f16: $25
    or l                                          ; $6f17: $b5
    ld d, c                                       ; $6f18: $51
    jr c, jr_067_6ee8                             ; $6f19: $38 $cd

    add $5d                                       ; $6f1b: $c6 $5d
    adc a                                         ; $6f1d: $8f
    adc l                                         ; $6f1e: $8d
    inc c                                         ; $6f1f: $0c
    db $ec                                        ; $6f20: $ec
    ccf                                           ; $6f21: $3f
    or d                                          ; $6f22: $b2
    ld e, b                                       ; $6f23: $58
    ld [hl], b                                    ; $6f24: $70
    ld a, a                                       ; $6f25: $7f
    ld [c], a                                     ; $6f26: $e2
    ld a, $63                                     ; $6f27: $3e $63
    ld [de], a                                    ; $6f29: $12
    ld l, a                                       ; $6f2a: $6f
    ld h, e                                       ; $6f2b: $63
    add $86                                       ; $6f2c: $c6 $86
    sbc [hl]                                      ; $6f2e: $9e
    and c                                         ; $6f2f: $a1
    dec c                                         ; $6f30: $0d
    add sp, -$07                                  ; $6f31: $e8 $f9
    or [hl]                                       ; $6f33: $b6
    db $d3                                        ; $6f34: $d3
    db $eb                                        ; $6f35: $eb
    ld a, l                                       ; $6f36: $7d
    ld sp, $dd8c                                  ; $6f37: $31 $8c $dd
    rst $30                                       ; $6f3a: $f7
    db $dd                                        ; $6f3b: $dd
    dec d                                         ; $6f3c: $15
    push hl                                       ; $6f3d: $e5
    ld l, b                                       ; $6f3e: $68
    jp $bc33                                      ; $6f3f: $c3 $33 $bc


    inc a                                         ; $6f42: $3c
    jp c, $9bfd                                   ; $6f43: $da $fd $9b

    ld l, b                                       ; $6f46: $68
    db $e3                                        ; $6f47: $e3
    add l                                         ; $6f48: $85
    ld [$bb18], a                                 ; $6f49: $ea $18 $bb
    push af                                       ; $6f4c: $f5
    ccf                                           ; $6f4d: $3f
    ld a, a                                       ; $6f4e: $7f
    ld [hl+], a                                   ; $6f4f: $22
    db $d3                                        ; $6f50: $d3
    ld e, h                                       ; $6f51: $5c
    sub [hl]                                      ; $6f52: $96
    ei                                            ; $6f53: $fb
    inc bc                                        ; $6f54: $03
    add hl, bc                                    ; $6f55: $09
    ld sp, $ad1b                                  ; $6f56: $31 $1b $ad
    ld [hl], c                                    ; $6f59: $71
    ld [$19a1], a                                 ; $6f5a: $ea $a1 $19
    ld a, a                                       ; $6f5d: $7f
    pop hl                                        ; $6f5e: $e1
    inc [hl]                                      ; $6f5f: $34
    ld c, h                                       ; $6f60: $4c
    ld [hl], a                                    ; $6f61: $77
    ret c                                         ; $6f62: $d8

    db $dd                                        ; $6f63: $dd
    di                                            ; $6f64: $f3
    sbc $f2                                       ; $6f65: $de $f2
    daa                                           ; $6f67: $27
    cp e                                          ; $6f68: $bb
    xor [hl]                                      ; $6f69: $ae
    jp nc, Jump_000_3cbd                          ; $6f6a: $d2 $bd $3c

    ld c, l                                       ; $6f6d: $4d
    dec de                                        ; $6f6e: $1b
    ld d, a                                       ; $6f6f: $57

jr_067_6f70:
    db $10                                        ; $6f70: $10
    ld [hl], l                                    ; $6f71: $75

jr_067_6f72:
    dec bc                                        ; $6f72: $0b
    call $de76                                    ; $6f73: $cd $76 $de
    rra                                           ; $6f76: $1f
    ld e, e                                       ; $6f77: $5b
    xor c                                         ; $6f78: $a9
    ld c, l                                       ; $6f79: $4d
    or h                                          ; $6f7a: $b4
    pop af                                        ; $6f7b: $f1
    ld b, d                                       ; $6f7c: $42
    ld [hl], l                                    ; $6f7d: $75
    adc h                                         ; $6f7e: $8c
    db $dd                                        ; $6f7f: $dd
    ld a, [$3f9f]                                 ; $6f80: $fa $9f $3f
    sub c                                         ; $6f83: $91
    ld l, c                                       ; $6f84: $69
    ld l, $cb                                     ; $6f85: $2e $cb
    ld a, l                                       ; $6f87: $7d
    rst $18                                       ; $6f88: $df
    rra                                           ; $6f89: $1f
    db $db                                        ; $6f8a: $db
    add h                                         ; $6f8b: $84
    db $d3                                        ; $6f8c: $d3
    db $e4                                        ; $6f8d: $e4
    ld e, d                                       ; $6f8e: $5a
    inc bc                                        ; $6f8f: $03
    db $f4                                        ; $6f90: $f4
    ld [hl], a                                    ; $6f91: $77
    adc e                                         ; $6f92: $8b
    ld c, a                                       ; $6f93: $4f
    db $dd                                        ; $6f94: $dd
    ret nc                                        ; $6f95: $d0

    sla l                                         ; $6f96: $cb $25
    cp e                                          ; $6f98: $bb
    jp nz, $a6ae                                  ; $6f99: $c2 $ae $a6

    inc e                                         ; $6f9c: $1c
    cp d                                          ; $6f9d: $ba
    xor [hl]                                      ; $6f9e: $ae
    db $db                                        ; $6f9f: $db
    sbc b                                         ; $6fa0: $98
    cp c                                          ; $6fa1: $b9
    adc b                                         ; $6fa2: $88
    xor d                                         ; $6fa3: $aa
    cp e                                          ; $6fa4: $bb
    rst $10                                       ; $6fa5: $d7
    sub b                                         ; $6fa6: $90
    sbc a                                         ; $6fa7: $9f
    ld c, l                                       ; $6fa8: $4d

Jump_067_6fa9:
    adc a                                         ; $6fa9: $8f
    xor l                                         ; $6faa: $ad
    ccf                                           ; $6fab: $3f
    ld sp, $d94f                                  ; $6fac: $31 $4f $d9
    di                                            ; $6faf: $f3
    ld l, l                                       ; $6fb0: $6d
    and a                                         ; $6fb1: $a7
    rst $10                                       ; $6fb2: $d7
    ei                                            ; $6fb3: $fb
    ld h, d                                       ; $6fb4: $62
    jr jr_067_6f72                                ; $6fb5: $18 $bb

    dec hl                                        ; $6fb7: $2b
    sbc [hl]                                      ; $6fb8: $9e
    ld e, $63                                     ; $6fb9: $1e $63
    add hl, de                                    ; $6fbb: $19
    inc bc                                        ; $6fbc: $03
    ld b, l                                       ; $6fbd: $45
    ld e, l                                       ; $6fbe: $5d
    pop af                                        ; $6fbf: $f1
    ld l, l                                       ; $6fc0: $6d
    call z, $a428                                 ; $6fc1: $cc $28 $a4
    ld h, a                                       ; $6fc4: $67
    adc h                                         ; $6fc5: $8c
    dec de                                        ; $6fc6: $1b
    ld a, $09                                     ; $6fc7: $3e $09
    adc l                                         ; $6fc9: $8d
    jp nz, Jump_067_4669                          ; $6fca: $c2 $69 $46

    dec h                                         ; $6fcd: $25
    ld [hl-], a                                   ; $6fce: $32
    or l                                          ; $6fcf: $b5
    inc de                                        ; $6fd0: $13
    inc bc                                        ; $6fd1: $03
    ld a, [de]                                    ; $6fd2: $1a
    add l                                         ; $6fd3: $85
    db $d3                                        ; $6fd4: $d3
    ld [hl], l                                    ; $6fd5: $75
    jp c, Jump_067_493f                           ; $6fd6: $da $3f $49

    ret                                           ; $6fd9: $c9


    jr nc, jr_067_6ff7                            ; $6fda: $30 $1b

    ld a, $09                                     ; $6fdc: $3e $09
    pop af                                        ; $6fde: $f1
    sbc a                                         ; $6fdf: $9f
    sbc b                                         ; $6fe0: $98
    adc l                                         ; $6fe1: $8d
    sbc d                                         ; $6fe2: $9a
    ld d, c                                       ; $6fe3: $51
    ld l, d                                       ; $6fe4: $6a
    ld a, l                                       ; $6fe5: $7d
    ld b, e                                       ; $6fe6: $43
    inc c                                         ; $6fe7: $0c
    ld d, h                                       ; $6fe8: $54
    ld d, c                                       ; $6fe9: $51
    or a                                          ; $6fea: $b7
    ret nc                                        ; $6feb: $d0

    ld l, h                                       ; $6fec: $6c
    rst $20                                       ; $6fed: $e7
    and [hl]                                      ; $6fee: $a6
    rrca                                          ; $6fef: $0f
    db $db                                        ; $6ff0: $db
    add h                                         ; $6ff1: $84
    ld [hl], e                                    ; $6ff2: $73
    ld a, a                                       ; $6ff3: $7f
    rst $20                                       ; $6ff4: $e7
    ld b, b                                       ; $6ff5: $40
    adc d                                         ; $6ff6: $8a

jr_067_6ff7:
    sbc d                                         ; $6ff7: $9a
    ld de, $3b33                                  ; $6ff8: $11 $33 $3b
    ld l, $1b                                     ; $6ffb: $2e $1b
    cp e                                          ; $6ffd: $bb
    jp nz, $bbae                                  ; $6ffe: $c2 $ae $bb

    db $db                                        ; $7001: $db
    add h                                         ; $7002: $84
    ld d, e                                       ; $7003: $53
    ld a, d                                       ; $7004: $7a
    ld l, h                                       ; $7005: $6c
    ld c, d                                       ; $7006: $4a
    xor l                                         ; $7007: $ad
    ld a, h                                       ; $7008: $7c
    ld sp, $2d49                                  ; $7009: $31 $49 $2d
    ld h, d                                       ; $700c: $62
    jp z, $e631                                   ; $700d: $ca $31 $e6

    ld l, c                                       ; $7010: $69
    inc d                                         ; $7011: $14
    ld c, [hl]                                    ; $7012: $4e
    jp hl                                         ; $7013: $e9


    or c                                          ; $7014: $b1
    ld h, a                                       ; $7015: $67
    ret nc                                        ; $7016: $d0

    ld d, d                                       ; $7017: $52
    sbc e                                         ; $7018: $9b
    dec e                                         ; $7019: $1d
    push af                                       ; $701a: $f5
    cp $00                                        ; $701b: $fe $00
    sub a                                         ; $701d: $97
    ld c, [hl]                                    ; $701e: $4e
    call c, Call_000_0bd0                         ; $701f: $dc $d0 $0b
    rst $10                                       ; $7022: $d7
    sbc d                                         ; $7023: $9a
    ld de, $d393                                  ; $7024: $11 $93 $d3
    pop de                                        ; $7027: $d1
    ld c, d                                       ; $7028: $4a
    jr c, @-$51                                   ; $7029: $38 $ad

    ld l, a                                       ; $702b: $6f
    ld d, b                                       ; $702c: $50
    call nz, $dd0c                                ; $702d: $c4 $0c $dd
    ldh a, [rSB]                                  ; $7030: $f0 $01
    rst $20                                       ; $7032: $e7
    inc c                                         ; $7033: $0c
    scf                                           ; $7034: $37
    db $f4                                        ; $7035: $f4
    ld a, [bc]                                    ; $7036: $0a
    jp z, $d2d1                                   ; $7037: $ca $d1 $d2

    ld h, e                                       ; $703a: $63
    ld l, a                                       ; $703b: $6f
    db $e3                                        ; $703c: $e3
    ld [hl-], a                                   ; $703d: $32
    ld a, d                                       ; $703e: $7a
    ld a, a                                       ; $703f: $7f
    adc c                                         ; $7040: $89
    inc [hl]                                      ; $7041: $34
    halt                                          ; $7042: $76
    cp d                                          ; $7043: $ba
    add l                                         ; $7044: $85
    ld h, [hl]                                    ; $7045: $66
    dec sp                                        ; $7046: $3b
    ld b, l                                       ; $7047: $45
    dec c                                         ; $7048: $0d
    db $d3                                        ; $7049: $d3
    dec l                                         ; $704a: $2d
    ld c, h                                       ; $704b: $4c
    db $db                                        ; $704c: $db
    dec bc                                        ; $704d: $0b
    rst $30                                       ; $704e: $f7
    rlca                                          ; $704f: $07
    sub a                                         ; $7050: $97
    ld c, e                                       ; $7051: $4b
    sub $bb                                       ; $7052: $d6 $bb
    ret nc                                        ; $7054: $d0

    ld h, l                                       ; $7055: $65
    ld [hl], $a0                                  ; $7056: $36 $a0
    sub d                                         ; $7058: $92
    ld bc, $b8cf                                  ; $7059: $01 $cf $b8
    and c                                         ; $705c: $a1
    adc c                                         ; $705d: $89
    inc [hl]                                      ; $705e: $34
    db $fc                                        ; $705f: $fc
    ld l, b                                       ; $7060: $68
    jp z, $dea1                                   ; $7061: $ca $a1 $de

    ld a, c                                       ; $7064: $79
    push bc                                       ; $7065: $c5
    add d                                         ; $7066: $82
    and [hl]                                      ; $7067: $a6
    inc e                                         ; $7068: $1c
    ld h, h                                       ; $7069: $64
    ld e, c                                       ; $706a: $59
    cpl                                           ; $706b: $2f
    halt                                          ; $706c: $76
    db $dd                                        ; $706d: $dd
    rra                                           ; $706e: $1f
    adc c                                         ; $706f: $89
    inc [hl]                                      ; $7070: $34
    db $fc                                        ; $7071: $fc
    xor b                                         ; $7072: $a8
    sub e                                         ; $7073: $93
    db $ec                                        ; $7074: $ec
    ccf                                           ; $7075: $3f
    and $04                                       ; $7076: $e6 $04
    cp h                                          ; $7078: $bc
    sbc b                                         ; $7079: $98
    db $e4                                        ; $707a: $e4
    db $fd                                        ; $707b: $fd
    ld bc, $93db                                  ; $707c: $01 $db $93
    dec de                                        ; $707f: $1b
    daa                                           ; $7080: $27
    add hl, hl                                    ; $7081: $29
    ld [$6cb8], a                                 ; $7082: $ea $b8 $6c
    db $ec                                        ; $7085: $ec
    ld c, a                                       ; $7086: $4f
    ld sp, hl                                     ; $7087: $f9
    ld [hl], h                                    ; $7088: $74
    ld d, $f6                                     ; $7089: $16 $f6
    and a                                         ; $708b: $a7
    ld h, [hl]                                    ; $708c: $66
    add $e4                                       ; $708d: $c6 $e4
    ld l, h                                       ; $708f: $6c
    db $e4                                        ; $7090: $e4
    ld a, [bc]                                    ; $7091: $0a
    ld h, $b1                                     ; $7092: $26 $b1
    inc h                                         ; $7094: $24
    add hl, de                                    ; $7095: $19
    ld a, b                                       ; $7096: $78
    rst $30                                       ; $7097: $f7
    ld e, h                                       ; $7098: $5c
    ld h, h                                       ; $7099: $64
    ld l, b                                       ; $709a: $68
    sbc [hl]                                      ; $709b: $9e
    ld b, d                                       ; $709c: $42
    inc sp                                        ; $709d: $33
    ei                                            ; $709e: $fb
    adc a                                         ; $709f: $8f

jr_067_70a0:
    db $dd                                        ; $70a0: $dd
    rra                                           ; $70a1: $1f
    db $db                                        ; $70a2: $db
    sub a                                         ; $70a3: $97
    inc h                                         ; $70a4: $24
    db $eb                                        ; $70a5: $eb
    ld h, h                                       ; $70a6: $64
    ld a, a                                       ; $70a7: $7f
    ld e, d                                       ; $70a8: $5a
    ld d, $ce                                     ; $70a9: $16 $ce
    db $fd                                        ; $70ab: $fd
    ld bc, $4ee7                                  ; $70ac: $01 $e7 $4e
    cpl                                           ; $70af: $2f
    ld a, e                                       ; $70b0: $7b
    db $d3                                        ; $70b1: $d3
    dec hl                                        ; $70b2: $2b
    ld h, b                                       ; $70b3: $60
    ld [hl], c                                    ; $70b4: $71
    ld h, d                                       ; $70b5: $62
    pop de                                        ; $70b6: $d1
    ret nz                                        ; $70b7: $c0

    ld e, [hl]                                    ; $70b8: $5e
    or $d8                                        ; $70b9: $f6 $d8
    ld b, h                                       ; $70bb: $44
    ld h, h                                       ; $70bc: $64
    rla                                           ; $70bd: $17
    rra                                           ; $70be: $1f
    rst $28                                       ; $70bf: $ef
    rrca                                          ; $70c0: $0f
    sub a                                         ; $70c1: $97
    ld c, e                                       ; $70c2: $4b
    ld d, [hl]                                    ; $70c3: $56
    ld c, $02                                     ; $70c4: $0e $02
    dec de                                        ; $70c6: $1b
    ret nc                                        ; $70c7: $d0

    db $e3                                        ; $70c8: $e3
    adc [hl]                                      ; $70c9: $8e
    add hl, hl                                    ; $70ca: $29
    db $f4                                        ; $70cb: $f4
    ld [hl], a                                    ; $70cc: $77
    ld h, c                                       ; $70cd: $61
    db $f4                                        ; $70ce: $f4
    xor $39                                       ; $70cf: $ee $39
    sub b                                         ; $70d1: $90
    ld c, l                                       ; $70d2: $4d
    inc hl                                        ; $70d3: $23
    jp nz, Jump_067_4746                          ; $70d4: $c2 $46 $47

    ld d, h                                       ; $70d7: $54
    sbc a                                         ; $70d8: $9f
    add $62                                       ; $70d9: $c6 $62
    add c                                         ; $70db: $81
    sbc $1f                                       ; $70dc: $de $1f
    db $db                                        ; $70de: $db
    sub a                                         ; $70df: $97
    inc h                                         ; $70e0: $24
    ld b, l                                       ; $70e1: $45
    ld [hl], l                                    ; $70e2: $75
    or d                                          ; $70e3: $b2
    ld a, $ff                                     ; $70e4: $3e $ff
    ret                                           ; $70e6: $c9


    ld l, b                                       ; $70e7: $68
    jp c, $0318                                   ; $70e8: $da $18 $03

    ld a, [de]                                    ; $70eb: $1a
    ret nc                                        ; $70ec: $d0

    dec e                                         ; $70ed: $1d
    db $f4                                        ; $70ee: $f4
    ld b, a                                       ; $70ef: $47
    dec de                                        ; $70f0: $1b
    ret nc                                        ; $70f1: $d0

    call $f9c9                                    ; $70f2: $cd $c9 $f9
    ld h, a                                       ; $70f5: $67
    ld h, c                                       ; $70f6: $61
    add $5d                                       ; $70f7: $c6 $5d
    pop af                                        ; $70f9: $f1
    ld [hl+], a                                   ; $70fa: $22
    cp a                                          ; $70fb: $bf
    sub h                                         ; $70fc: $94
    ld b, e                                       ; $70fd: $43
    ld h, [hl]                                    ; $70fe: $66
    jp $d5db                                      ; $70ff: $c3 $db $d5


    sub h                                         ; $7102: $94
    ld b, e                                       ; $7103: $43
    rst $10                                       ; $7104: $d7
    dec [hl]                                      ; $7105: $35
    or b                                          ; $7106: $b0
    ld e, e                                       ; $7107: $5b
    ld h, b                                       ; $7108: $60
    ld a, [c]                                     ; $7109: $f2
    ld c, l                                       ; $710a: $4d
    call nz, $84dd                                ; $710b: $c4 $dd $84
    ld h, [hl]                                    ; $710e: $66
    ret z                                         ; $710f: $c8

    ld c, [hl]                                    ; $7110: $4e
    scf                                           ; $7111: $37
    db $db                                        ; $7112: $db
    ret z                                         ; $7113: $c8

    ld l, c                                       ; $7114: $69
    sbc b                                         ; $7115: $98
    sbc [hl]                                      ; $7116: $9e
    db $eb                                        ; $7117: $eb
    and h                                         ; $7118: $a4
    ld h, a                                       ; $7119: $67
    ld b, c                                       ; $711a: $41
    jr jr_067_70a0                                ; $711b: $18 $83

    xor b                                         ; $711d: $a8
    ld h, c                                       ; $711e: $61
    or h                                          ; $711f: $b4
    sbc e                                         ; $7120: $9b
    ld l, l                                       ; $7121: $6d
    db $e4                                        ; $7122: $e4
    ld l, b                                       ; $7123: $68
    inc bc                                        ; $7124: $03
    ld a, d                                       ; $7125: $7a
    ld e, $5e                                     ; $7126: $1e $5e
    ld a, [hl]                                    ; $7128: $7e
    ccf                                           ; $7129: $3f
    sbc [hl]                                      ; $712a: $9e
    adc l                                         ; $712b: $8d
    ld d, $3d                                     ; $712c: $16 $3d
    rst $00                                       ; $712e: $c7
    sbc h                                         ; $712f: $9c
    ld h, b                                       ; $7130: $60
    ld l, d                                       ; $7131: $6a
    rst $08                                       ; $7132: $cf
    and e                                         ; $7133: $a3
    inc e                                         ; $7134: $1c
    dec e                                         ; $7135: $1d
    db $dd                                        ; $7136: $dd
    ldh a, [rSB]                                  ; $7137: $f0 $01
    add hl, bc                                    ; $7139: $09
    xor d                                         ; $713a: $aa
    add sp, $4f                                   ; $713b: $e8 $4f
    set 0, d                                      ; $713d: $cb $c2
    jp hl                                         ; $713f: $e9


    cp d                                          ; $7140: $ba
    xor d                                         ; $7141: $aa
    di                                            ; $7142: $f3
    ld b, a                                       ; $7143: $47

jr_067_7144:
    di                                            ; $7144: $f3
    ld d, h                                       ; $7145: $54
    ld h, c                                       ; $7146: $61
    push af                                       ; $7147: $f5
    adc h                                         ; $7148: $8c
    cp h                                          ; $7149: $bc
    ccf                                           ; $714a: $3f
    sub a                                         ; $714b: $97
    ld c, [hl]                                    ; $714c: $4e
    inc d                                         ; $714d: $14
    ld [hl], l                                    ; $714e: $75
    call c, Call_067_7d0a                         ; $714f: $dc $0a $7d
    sbc d                                         ; $7152: $9a
    rst $20                                       ; $7153: $e7
    or h                                          ; $7154: $b4
    ld e, $7e                                     ; $7155: $1e $7e
    xor $33                                       ; $7157: $ee $33
    db $fc                                        ; $7159: $fc
    ld a, c                                       ; $715a: $79
    xor h                                         ; $715b: $ac
    ld bc, $32dd                                  ; $715c: $01 $dd $32
    ld l, c                                       ; $715f: $69
    ld b, c                                       ; $7160: $41
    or h                                          ; $7161: $b4
    xor h                                         ; $7162: $ac
    ld [hl], a                                    ; $7163: $77
    push bc                                       ; $7164: $c5
    push hl                                       ; $7165: $e5
    ld c, e                                       ; $7166: $4b
    ld c, a                                       ; $7167: $4f
    inc bc                                        ; $7168: $03
    cp d                                          ; $7169: $ba
    db $ed                                        ; $716a: $ed
    db $fd                                        ; $716b: $fd
    or e                                          ; $716c: $b3
    ld d, b                                       ; $716d: $50
    ld a, e                                       ; $716e: $7b
    sbc $42                                       ; $716f: $de $42
    adc c                                         ; $7171: $89
    ld b, l                                       ; $7172: $45
    call nc, Call_000_1edf                        ; $7173: $d4 $df $1e
    jp Jump_000_0358                              ; $7176: $c3 $58 $03


    sbc e                                         ; $7179: $9b
    adc b                                         ; $717a: $88
    ld h, b                                       ; $717b: $60
    db $ec                                        ; $717c: $ec
    ld a, c                                       ; $717d: $79
    ld l, a                                       ; $717e: $6f
    add hl, de                                    ; $717f: $19
    dec e                                         ; $7180: $1d
    cpl                                           ; $7181: $2f
    sub a                                         ; $7182: $97
    ei                                            ; $7183: $fb
    ldh a, [rNR52]                                ; $7184: $f0 $26
    call nz, $9c2c                                ; $7186: $c4 $2c $9c
    ld c, [hl]                                    ; $7189: $4e
    or a                                          ; $718a: $b7
    cp l                                          ; $718b: $bd
    ld a, a                                       ; $718c: $7f

Jump_067_718d:
    ld d, $6a                                     ; $718d: $16 $6a
    rst $08                                       ; $718f: $cf
    ld e, e                                       ; $7190: $5b
    jr z, jr_067_7144                             ; $7191: $28 $b1

    ld [hl], h                                    ; $7193: $74
    ld e, l                                       ; $7194: $5d
    and c                                         ; $7195: $a1
    adc d                                         ; $7196: $8a
    dec c                                         ; $7197: $0d
    rra                                           ; $7198: $1f
    add hl, bc                                    ; $7199: $09
    ld h, l                                       ; $719a: $65
    inc de                                        ; $719b: $13
    ld de, $3d8c                                  ; $719c: $11 $8c $3d
    rst $28                                       ; $719f: $ef
    dec l                                         ; $71a0: $2d
    and e                                         ; $71a1: $a3
    db $e3                                        ; $71a2: $e3
    push hl                                       ; $71a3: $e5
    ld [hl], d                                    ; $71a4: $72
    rst $18                                       ; $71a5: $df
    ld [hl], a                                    ; $71a6: $77
    inc sp                                        ; $71a7: $33
    sub a                                         ; $71a8: $97
    dec d                                         ; $71a9: $15
    halt                                          ; $71aa: $76
    ld [hl], l                                    ; $71ab: $75
    ld a, [$a70b]                                 ; $71ac: $fa $0b $a7
    ret nc                                        ; $71af: $d0

    inc c                                         ; $71b0: $0c
    ld bc, $9b2c                                  ; $71b1: $01 $2c $9b
    halt                                          ; $71b4: $76
    or h                                          ; $71b5: $b4
    or b                                          ; $71b6: $b0
    or [hl]                                       ; $71b7: $b6
    ld [hl], c                                    ; $71b8: $71
    pop hl                                        ; $71b9: $e1
    db $fd                                        ; $71ba: $fd
    ld bc, $62e7                                  ; $71bb: $01 $e7 $62
    or l                                          ; $71be: $b5
    dec de                                        ; $71bf: $1b
    push hl                                       ; $71c0: $e5
    ld l, b                                       ; $71c1: $68
    inc sp                                        ; $71c2: $33
    ld h, d                                       ; $71c3: $62
    and [hl]                                      ; $71c4: $a6
    dec [hl]                                      ; $71c5: $35
    ld b, b                                       ; $71c6: $40
    rst $38                                       ; $71c7: $ff
    pop af                                        ; $71c8: $f1
    ret c                                         ; $71c9: $d8

    or e                                          ; $71ca: $b3
    ld c, d                                       ; $71cb: $4a
    ld a, $bd                                     ; $71cc: $3e $bd
    rst $28                                       ; $71ce: $ef
    cp e                                          ; $71cf: $bb
    ld bc, $3cfe                                  ; $71d0: $01 $fe $3c
    ld l, l                                       ; $71d3: $6d
    ld b, b                                       ; $71d4: $40
    jp hl                                         ; $71d5: $e9


    or c                                          ; $71d6: $b1
    ld h, a                                       ; $71d7: $67
    ld [hl], d                                    ; $71d8: $72
    or h                                          ; $71d9: $b4
    and e                                         ; $71da: $a3
    push af                                       ; $71db: $f5
    dec c                                         ; $71dc: $0d
    adc d                                         ; $71dd: $8a
    sbc b                                         ; $71de: $98
    and c                                         ; $71df: $a1
    rst $30                                       ; $71e0: $f7
    rlca                                          ; $71e1: $07
    ld [c], a                                     ; $71e2: $e2
    ld e, $43                                     ; $71e3: $1e $43
    and c                                         ; $71e5: $a1
    adc d                                         ; $71e6: $8a
    ld [hl-], a                                   ; $71e7: $32
    dec a                                         ; $71e8: $3d
    add $fb                                       ; $71e9: $c6 $fb
    inc bc                                        ; $71eb: $03
    dec sp                                        ; $71ec: $3b
    ld d, b                                       ; $71ed: $50
    rst $28                                       ; $71ee: $ef
    ld e, b                                       ; $71ef: $58
    and a                                         ; $71f0: $a7
    add hl, hl                                    ; $71f1: $29
    add a                                         ; $71f2: $87
    jp nz, Jump_067_47d5                          ; $71f3: $c2 $d5 $47

    call nc, Call_067_7511                        ; $71f6: $d4 $11 $75
    ld e, l                                       ; $71f9: $5d
    and l                                         ; $71fa: $a5
    ld a, e                                       ; $71fb: $7b
    ld a, c                                       ; $71fc: $79
    ld l, d                                       ; $71fd: $6a
    or h                                          ; $71fe: $b4
    add hl, hl                                    ; $71ff: $29
    ld a, [hl+]                                   ; $7200: $2a
    db $dd                                        ; $7201: $dd
    set 2, e                                      ; $7202: $cb $d3
    dec d                                         ; $7204: $15
    sub a                                         ; $7205: $97
    scf                                           ; $7206: $37
    ld a, [hl-]                                   ; $7207: $3a
    rst $30                                       ; $7208: $f7
    rlca                                          ; $7209: $07
    db $db                                        ; $720a: $db
    sbc e                                         ; $720b: $9b
    ld [hl], d                                    ; $720c: $72
    add sp, -$46                                  ; $720d: $e8 $ba
    ld c, l                                       ; $720f: $4d
    rra                                           ; $7210: $1f
    ld h, a                                       ; $7211: $67
    call nc, Call_067_6ec9                        ; $7212: $d4 $c9 $6e
    ld h, l                                       ; $7215: $65
    call z, $80d3                                 ; $7216: $cc $d3 $80
    ld e, [hl]                                    ; $7219: $5e
    db $10                                        ; $721a: $10
    ld d, a                                       ; $721b: $57
    ld c, a                                       ; $721c: $4f
    sbc a                                         ; $721d: $9f
    rst $20                                       ; $721e: $e7
    dec l                                         ; $721f: $2d
    cpl                                           ; $7220: $2f
    jr nc, @-$1e                                  ; $7221: $30 $e0

    xor $65                                       ; $7223: $ee $65
    adc b                                         ; $7225: $88
    ret                                           ; $7226: $c9


    add hl, hl                                    ; $7227: $29
    ei                                            ; $7228: $fb
    jp Jump_067_7632                              ; $7229: $c3 $32 $76


    pop af                                        ; $722c: $f1
    db $f4                                        ; $722d: $f4
    ld b, d                                       ; $722e: $42
    or b                                          ; $722f: $b0
    rrca                                          ; $7230: $0f
    ld a, e                                       ; $7231: $7b
    ld [de], a                                    ; $7232: $12
    ld sp, $fef3                                  ; $7233: $31 $f3 $fe

Call_067_7236:
    nop                                           ; $7236: $00
    ld h, a                                       ; $7237: $67
    ld d, h                                       ; $7238: $54
    ld b, d                                       ; $7239: $42
    push hl                                       ; $723a: $e5
    ld l, h                                       ; $723b: $6c
    add sp, -$0a                                  ; $723c: $e8 $f6
    dec h                                         ; $723e: $25
    ret                                           ; $723f: $c9


    ld a, [$d634]                                 ; $7240: $fa $34 $d6
    jp Jump_067_7827                              ; $7243: $c3 $27 $78


    ld [hl], $7c                                  ; $7246: $36 $7c
    add hl, bc                                    ; $7248: $09
    sbc d                                         ; $7249: $9a
    rst $00                                       ; $724a: $c7
    push af                                       ; $724b: $f5
    push bc                                       ; $724c: $c5
    push de                                       ; $724d: $d5
    db $d3                                        ; $724e: $d3
    db $dd                                        ; $724f: $dd
    ld d, [hl]                                    ; $7250: $56
    ld e, b                                       ; $7251: $58
    ld [hl], $74                                  ; $7252: $36 $74
    ei                                            ; $7254: $fb
    sub d                                         ; $7255: $92
    and h                                         ; $7256: $a4
    xor b                                         ; $7257: $a8
    reti                                          ; $7258: $d9


    cp b                                          ; $7259: $b8

jr_067_725a:
    xor e                                         ; $725a: $ab
    ld c, [hl]                                    ; $725b: $4e
    or d                                          ; $725c: $b2
    ld [hl], c                                    ; $725d: $71
    ld [hl-], a                                   ; $725e: $32
    rst $28                                       ; $725f: $ef
    rrca                                          ; $7260: $0f
    db $db                                        ; $7261: $db
    sbc e                                         ; $7262: $9b
    pop hl                                        ; $7263: $e1
    ld [$35f3], a                                 ; $7264: $ea $f3 $35
    ldh [$09], a                                  ; $7267: $e0 $09
    ld e, $d7                                     ; $7269: $1e $d7
    and a                                         ; $726b: $a7
    ld a, c                                       ; $726c: $79
    ld a, [de]                                    ; $726d: $1a
    ld e, c                                       ; $726e: $59
    ld sp, hl                                     ; $726f: $f9
    ld h, d                                       ; $7270: $62
    sub d                                         ; $7271: $92
    push af                                       ; $7272: $f5
    ld b, a                                       ; $7273: $47
    dec d                                         ; $7274: $15
    ld h, l                                       ; $7275: $65
    call z, Call_000_06d0                         ; $7276: $cc $d0 $06
    ld d, h                                       ; $7279: $54
    adc [hl]                                      ; $727a: $8e
    add hl, de                                    ; $727b: $19
    db $ec                                        ; $727c: $ec
    xor $19                                       ; $727d: $ee $19
    push hl                                       ; $727f: $e5
    sub d                                         ; $7280: $92
    sbc l                                         ; $7281: $9d
    or c                                          ; $7282: $b1
    ld bc, $a8cd                                  ; $7283: $01 $cd $a8
    jp nz, $988a                                  ; $7286: $c2 $8a $98

    dec c                                         ; $7289: $0d
    ld l, c                                       ; $728a: $69
    add a                                         ; $728b: $87
    cp e                                          ; $728c: $bb
    sub a                                         ; $728d: $97
    dec hl                                        ; $728e: $2b
    scf                                           ; $728f: $37
    ld c, [hl]                                    ; $7290: $4e
    dec a                                         ; $7291: $3d
    sub b                                         ; $7292: $90
    ld [hl], a                                    ; $7293: $77
    cpl                                           ; $7294: $2f
    sub a                                         ; $7295: $97
    push af                                       ; $7296: $f5
    adc h                                         ; $7297: $8c
    db $ec                                        ; $7298: $ec
    ld [hl], $66                                  ; $7299: $36 $66
    ld l, $f7                                     ; $729b: $2e $f7
    rlca                                          ; $729d: $07
    rst $20                                       ; $729e: $e7
    ld [hl], d                                    ; $729f: $72
    push bc                                       ; $72a0: $c5
    ld h, [hl]                                    ; $72a1: $66
    rla                                           ; $72a2: $17
    and [hl]                                      ; $72a3: $a6
    ld a, $8d                                     ; $72a4: $3e $8d
    call $9e94                                    ; $72a6: $cd $94 $9e
    ld [hl], l                                    ; $72a9: $75
    or d                                          ; $72aa: $b2
    add hl, de                                    ; $72ab: $19
    ld d, [hl]                                    ; $72ac: $56
    daa                                           ; $72ad: $27
    scf                                           ; $72ae: $37
    ld a, h                                       ; $72af: $7c
    ld e, e                                       ; $72b0: $5b
    xor c                                         ; $72b1: $a9
    rst $30                                       ; $72b2: $f7

jr_067_72b3:
    ld a, l                                       ; $72b3: $7d
    scf                                           ; $72b4: $37
    push hl                                       ; $72b5: $e5
    jr nz, jr_067_72e3                            ; $72b6: $20 $2b

    and a                                         ; $72b8: $a7
    add hl, de                                    ; $72b9: $19
    or [hl]                                       ; $72ba: $b6
    sub $c0                                       ; $72bb: $d6 $c0
    jr nc, jr_067_725a                            ; $72bd: $30 $9b

    ld a, $57                                     ; $72bf: $3e $57
    adc h                                         ; $72c1: $8c
    dec hl                                        ; $72c2: $2b
    inc b                                         ; $72c3: $04
    ei                                            ; $72c4: $fb
    or b                                          ; $72c5: $b0
    daa                                           ; $72c6: $27
    ld de, $ad33                                  ; $72c7: $11 $33 $ad
    ld d, e                                       ; $72ca: $53
    ret                                           ; $72cb: $c9


    sbc b                                         ; $72cc: $98
    ld h, a                                       ; $72cd: $67
    jp $8907                                      ; $72ce: $c3 $07 $89


    and e                                         ; $72d1: $a3
    ld a, [hl-]                                   ; $72d2: $3a
    ld a, l                                       ; $72d3: $7d
    sub $fd                                       ; $72d4: $d6 $fd
    ld a, e                                       ; $72d6: $7b

jr_067_72d7:
    xor b                                         ; $72d7: $a8
    add c                                         ; $72d8: $81
    cp l                                          ; $72d9: $bd
    inc d                                         ; $72da: $14
    ld a, [bc]                                    ; $72db: $0a
    ld e, e                                       ; $72dc: $5b
    ld sp, $0ab0                                  ; $72dd: $31 $b0 $0a
    ld e, c                                       ; $72e0: $59
    add l                                         ; $72e1: $85
    ld [hl], l                                    ; $72e2: $75

jr_067_72e3:
    push af                                       ; $72e3: $f5
    inc [hl]                                      ; $72e4: $34
    rst $08                                       ; $72e5: $cf
    add [hl]                                      ; $72e6: $86
    rrca                                          ; $72e7: $0f
    sub a                                         ; $72e8: $97
    jr c, jr_067_72b3                             ; $72e9: $38 $c8

    ld b, d                                       ; $72eb: $42
    di                                            ; $72ec: $f3
    ld e, d                                       ; $72ed: $5a
    cp c                                          ; $72ee: $b9
    db $db                                        ; $72ef: $db
    and [hl]                                      ; $72f0: $a6
    rrca                                          ; $72f1: $0f
    ld [c], a                                     ; $72f2: $e2
    ld a, $63                                     ; $72f3: $3e $63
    ld [de], a                                    ; $72f5: $12
    ld l, a                                       ; $72f6: $6f
    ld h, e                                       ; $72f7: $63
    add $86                                       ; $72f8: $c6 $86
    rrca                                          ; $72fa: $0f
    ld e, e                                       ; $72fb: $5b
    ld l, b                                       ; $72fc: $68
    or [hl]                                       ; $72fd: $b6
    or e                                          ; $72fe: $b3
    adc c                                         ; $72ff: $89
    sub e                                         ; $7300: $93
    inc sp                                        ; $7301: $33
    ld l, h                                       ; $7302: $6c
    ld b, e                                       ; $7303: $43
    push bc                                       ; $7304: $c5
    db $eb                                        ; $7305: $eb
    ld d, e                                       ; $7306: $53
    dec d                                         ; $7307: $15
    or h                                          ; $7308: $b4
    xor $df                                       ; $7309: $ee $df
    jr c, jr_067_733c                             ; $730b: $38 $2f

    and e                                         ; $730d: $a3
    xor b                                         ; $730e: $a8
    ld hl, sp+$05                                 ; $730f: $f8 $05
    db $db                                        ; $7311: $db
    adc $15                                       ; $7312: $ce $15
    ld l, a                                       ; $7314: $6f
    ld [c], a                                     ; $7315: $e2
    or $4b                                        ; $7316: $f6 $4b
    cp e                                          ; $7318: $bb
    ld sp, hl                                     ; $7319: $f9
    add d                                         ; $731a: $82
    xor l                                         ; $731b: $ad
    ld [c], a                                     ; $731c: $e2
    adc l                                         ; $731d: $8d
    db $ec                                        ; $731e: $ec
    and c                                         ; $731f: $a1
    ld b, $f6                                     ; $7320: $06 $f6
    ld d, d                                       ; $7322: $52
    jr z, jr_067_7391                             ; $7323: $28 $6c

    push bc                                       ; $7325: $c5
    ret nz                                        ; $7326: $c0

    dec c                                         ; $7327: $0d
    ld c, l                                       ; $7328: $4d
    ld b, h                                       ; $7329: $44
    db $e4                                        ; $732a: $e4
    ld a, [c]                                     ; $732b: $f2
    halt                                          ; $732c: $76
    ld [hl], c                                    ; $732d: $71
    cp l                                          ; $732e: $bd
    ld [hl], b                                    ; $732f: $70
    ld a, [de]                                    ; $7330: $1a
    ret nc                                        ; $7331: $d0

    ld h, e                                       ; $7332: $63
    adc a                                         ; $7333: $8f
    xor c                                         ; $7334: $a9
    ccf                                           ; $7335: $3f
    ld sp, $de8f                                  ; $7336: $31 $8f $de
    cp l                                          ; $7339: $bd
    add d                                         ; $733a: $82
    xor a                                         ; $733b: $af

jr_067_733c:
    ld [bc], a                                    ; $733c: $02
    sub $ea                                       ; $733d: $d6 $ea
    db $d3                                        ; $733f: $d3
    ret c                                         ; $7340: $d8

    ld l, c                                       ; $7341: $69
    jr jr_067_72d7                                ; $7342: $18 $93

    cpl                                           ; $7344: $2f
    rst $28                                       ; $7345: $ef
    ld l, [hl]                                    ; $7346: $6e
    ld l, a                                       ; $7347: $6f
    xor $0f                                       ; $7348: $ee $0f
    rst $20                                       ; $734a: $e7
    ld b, d                                       ; $734b: $42
    inc sp                                        ; $734c: $33
    cp e                                          ; $734d: $bb
    jp nz, $aeae                                  ; $734e: $c2 $ae $ae

    add $35                                       ; $7351: $c6 $35
    jp $f92a                                      ; $7353: $c3 $2a $f9


    or h                                          ; $7356: $b4
    cp a                                          ; $7357: $bf
    ld a, e                                       ; $7358: $7b
    add c                                         ; $7359: $81
    ld h, c                                       ; $735a: $61
    xor $0f                                       ; $735b: $ee $0f
    sub a                                         ; $735d: $97
    jr c, jr_067_73b4                             ; $735e: $38 $54

    ld d, c                                       ; $7360: $51
    sbc a                                         ; $7361: $9f
    xor d                                         ; $7362: $aa
    call c, $01f4                                 ; $7363: $dc $f4 $01
    ld [c], a                                     ; $7366: $e2
    ld a, $63                                     ; $7367: $3e $63
    ld [de], a                                    ; $7369: $12
    ld l, a                                       ; $736a: $6f
    ld h, e                                       ; $736b: $63
    add $86                                       ; $736c: $c6 $86
    rrca                                          ; $736e: $0f
    rst $20                                       ; $736f: $e7
    ld b, b                                       ; $7370: $40
    adc d                                         ; $7371: $8a
    ld [$1481], a                                 ; $7372: $ea $81 $14
    ld [hl], l                                    ; $7375: $75
    dec bc                                        ; $7376: $0b
    call $3676                                    ; $7377: $cd $76 $36
    ld [hl], c                                    ; $737a: $71
    ld [hl], d                                    ; $737b: $72
    add [hl]                                      ; $737c: $86
    ld l, l                                       ; $737d: $6d
    xor b                                         ; $737e: $a8
    cp b                                          ; $737f: $b8
    rst $08                                       ; $7380: $cf
    sbc b                                         ; $7381: $98
    call nz, $38db                                ; $7382: $c4 $db $38
    and d                                         ; $7385: $a2
    ld l, [hl]                                    ; $7386: $6e
    ld h, l                                       ; $7387: $65
    and b                                         ; $7388: $a0
    ld b, h                                       ; $7389: $44
    inc de                                        ; $738a: $13
    ld e, a                                       ; $738b: $5f
    db $fc                                        ; $738c: $fc
    ld [hl], c                                    ; $738d: $71
    ld a, a                                       ; $738e: $7f
    ld [c], a                                     ; $738f: $e2
    push af                                       ; $7390: $f5

jr_067_7391:
    xor c                                         ; $7391: $a9
    ld a, [bc]                                    ; $7392: $0a
    ld e, d                                       ; $7393: $5a
    rst $30                                       ; $7394: $f7
    ld l, a                                       ; $7395: $6f
    sbc h                                         ; $7396: $9c
    sub a                                         ; $7397: $97
    ld d, c                                       ; $7398: $51
    ld d, h                                       ; $7399: $54
    db $fc                                        ; $739a: $fc
    add d                                         ; $739b: $82
    ld l, l                                       ; $739c: $6d
    rst $20                                       ; $739d: $e7
    adc d                                         ; $739e: $8a
    scf                                           ; $739f: $37
    ld [hl], c                                    ; $73a0: $71
    ei                                            ; $73a1: $fb
    and l                                         ; $73a2: $a5
    db $dd                                        ; $73a3: $dd
    ld a, h                                       ; $73a4: $7c
    pop bc                                        ; $73a5: $c1
    ld d, [hl]                                    ; $73a6: $56
    pop af                                        ; $73a7: $f1
    ld b, [hl]                                    ; $73a8: $46
    or $50                                        ; $73a9: $f6 $50
    inc bc                                        ; $73ab: $03
    ld a, e                                       ; $73ac: $7b
    add hl, hl                                    ; $73ad: $29
    inc d                                         ; $73ae: $14
    or [hl]                                       ; $73af: $b6
    ld h, d                                       ; $73b0: $62
    and b                                         ; $73b1: $a0
    xor b                                         ; $73b2: $a8
    adc d                                         ; $73b3: $8a

jr_067_73b4:
    ld b, [hl]                                    ; $73b4: $46
    pop hl                                        ; $73b5: $e1
    ld d, h                                       ; $73b6: $54
    and d                                         ; $73b7: $a2
    adc b                                         ; $73b8: $88
    ld l, c                                       ; $73b9: $69
    add $b9                                       ; $73ba: $c6 $b9
    sbc e                                         ; $73bc: $9b
    adc b                                         ; $73bd: $88
    ret z                                         ; $73be: $c8

    push hl                                       ; $73bf: $e5
    db $ed                                        ; $73c0: $ed
    ld [c], a                                     ; $73c1: $e2
    ld a, d                                       ; $73c2: $7a
    pop hl                                        ; $73c3: $e1
    inc [hl]                                      ; $73c4: $34
    and b                                         ; $73c5: $a0
    rst $00                                       ; $73c6: $c7
    ld e, $d3                                     ; $73c7: $1e $d3
    call nz, Call_067_7989                        ; $73c9: $c4 $89 $79
    db $f4                                        ; $73cc: $f4
    xor $15                                       ; $73cd: $ee $15
    ld a, h                                       ; $73cf: $7c
    dec d                                         ; $73d0: $15
    or b                                          ; $73d1: $b0
    ld d, [hl]                                    ; $73d2: $56
    sbc a                                         ; $73d3: $9f
    add $4e                                       ; $73d4: $c6 $4e
    jp Jump_067_7c98                              ; $73d6: $c3 $98 $7c


    ld a, c                                       ; $73d9: $79
    ld [hl], a                                    ; $73da: $77
    ld a, e                                       ; $73db: $7b
    ld [hl], e                                    ; $73dc: $73
    ld a, a                                       ; $73dd: $7f
    sub a                                         ; $73de: $97
    ld hl, $a726                                  ; $73df: $21 $26 $a7
    db $ec                                        ; $73e2: $ec
    rrca                                          ; $73e3: $0f
    set 3, b                                      ; $73e4: $cb $d8
    push bc                                       ; $73e6: $c5
    ld b, $34                                     ; $73e7: $06 $34
    push hl                                       ; $73e9: $e5
    ld d, b                                       ; $73ea: $50
    ld l, b                                       ; $73eb: $68
    ld e, [hl]                                    ; $73ec: $5e
    dec hl                                        ; $73ed: $2b
    ld d, e                                       ; $73ee: $53
    xor $95                                       ; $73ef: $ee $95
    ld c, e                                       ; $73f1: $4b
    jp c, $93ad                                   ; $73f2: $da $ad $93

    rst $30                                       ; $73f5: $f7
    ld a, l                                       ; $73f6: $7d
    ld [hl], a                                    ; $73f7: $77
    call c, Call_067_69fa                         ; $73f8: $dc $fa $69
    jp z, Jump_067_4971                           ; $73fb: $ca $71 $49

    add hl, sp                                    ; $73fe: $39
    ld e, b                                       ; $73ff: $58
    rst $38                                       ; $7400: $ff
    ld a, c                                       ; $7401: $79
    jp z, $03fb                                   ; $7402: $ca $fb $03

    ld [c], a                                     ; $7405: $e2
    ld a, $0d                                     ; $7406: $3e $0d
    ccf                                           ; $7408: $3f
    ld b, h                                       ; $7409: $44
    and l                                         ; $740a: $a5
    ld c, a                                       ; $740b: $4f
    jp Jump_067_4e8f                              ; $740c: $c3 $8f $4e


    inc c                                         ; $740f: $0c
    jr z, @+$36                                   ; $7410: $28 $34

    cp a                                          ; $7412: $bf
    dec d                                         ; $7413: $15
    inc c                                         ; $7414: $0c
    ld a, d                                       ; $7415: $7a
    ld a, a                                       ; $7416: $7f
    ld [c], a                                     ; $7417: $e2
    cp e                                          ; $7418: $bb
    dec d                                         ; $7419: $15
    sbc d                                         ; $741a: $9a
    rst $10                                       ; $741b: $d7
    or h                                          ; $741c: $b4
    reti                                          ; $741d: $d9


    ld l, l                                       ; $741e: $6d
    ld hl, sp+$00                                 ; $741f: $f8 $00
    ld [c], a                                     ; $7421: $e2
    push af                                       ; $7422: $f5
    xor c                                         ; $7423: $a9
    ld a, [bc]                                    ; $7424: $0a
    sbc d                                         ; $7425: $9a
    xor b                                         ; $7426: $a8
    ld c, c                                       ; $7427: $49
    cp h                                          ; $7428: $bc
    jr z, jr_067_7495                             ; $7429: $28 $6a

    ld [c], a                                     ; $742b: $e2
    db $e4                                        ; $742c: $e4
    inc c                                         ; $742d: $0c
    db $db                                        ; $742e: $db
    call nc, $f82b                                ; $742f: $d4 $2b $f8
    ld a, [$cd3b]                                 ; $7432: $fa $3b $cd
    or h                                          ; $7435: $b4
    adc l                                         ; $7436: $8d
    add hl, de                                    ; $7437: $19
    dec a                                         ; $7438: $3d
    or c                                          ; $7439: $b1
    cp $c4                                        ; $743a: $fe $c4
    inc a                                         ; $743c: $3c
    ld a, d                                       ; $743d: $7a
    rst $30                                       ; $743e: $f7
    adc d                                         ; $743f: $8a
    ld e, c                                       ; $7440: $59
    ld [hl-], a                                   ; $7441: $32
    dec hl                                        ; $7442: $2b
    ld h, b                                       ; $7443: $60
    xor l                                         ; $7444: $ad
    ld a, $8d                                     ; $7445: $3e $8d
    ld h, l                                       ; $7447: $65
    ld a, a                                       ; $7448: $7f
    ld c, d                                       ; $7449: $4a
    ld l, [hl]                                    ; $744a: $6e
    ld hl, sp+$00                                 ; $744b: $f8 $00
    ld [c], a                                     ; $744d: $e2
    cpl                                           ; $744e: $2f
    ld b, $16                                     ; $744f: $06 $16
    sbc d                                         ; $7451: $9a
    ld l, c                                       ; $7452: $69
    jp nz, $8469                                  ; $7453: $c2 $69 $84

    ld h, [hl]                                    ; $7456: $66
    sub h                                         ; $7457: $94
    ld sp, $36d0                                  ; $7458: $31 $d0 $36
    ld [hl], l                                    ; $745b: $75
    sbc e                                         ; $745c: $9b
    ld [hl], b                                    ; $745d: $70
    ld a, [hl-]                                   ; $745e: $3a
    jp c, Jump_000_0415                           ; $745f: $da $15 $04

    call z, Call_000_01fd                         ; $7462: $cc $fd $01
    db $db                                        ; $7465: $db
    add h                                         ; $7466: $84
    ld d, e                                       ; $7467: $53
    adc c                                         ; $7468: $89
    ld a, [$a013]                                 ; $7469: $fa $13 $a0
    push bc                                       ; $746c: $c5
    ld [$5a65], a                                 ; $746d: $ea $65 $5a
    ld a, l                                       ; $7470: $7d
    ld a, [de]                                    ; $7471: $1a
    xor e                                         ; $7472: $ab
    sub b                                         ; $7473: $90
    cp [hl]                                       ; $7474: $be
    pop hl                                        ; $7475: $e1
    cp $00                                        ; $7476: $fe $00
    ld [c], a                                     ; $7478: $e2
    cpl                                           ; $7479: $2f
    ld b, $36                                     ; $747a: $06 $36
    and e                                         ; $747c: $a3
    ld c, c                                       ; $747d: $49
    cp h                                          ; $747e: $bc
    adc l                                         ; $747f: $8d
    ld bc, $fc45                                  ; $7480: $01 $45 $fc
    daa                                           ; $7483: $27
    ld h, [hl]                                    ; $7484: $66
    and e                                         ; $7485: $a3
    ld l, l                                       ; $7486: $6d
    ld hl, sp+$00                                 ; $7487: $f8 $00
    dec sp                                        ; $7489: $3b
    ld h, b                                       ; $748a: $60
    ld l, e                                       ; $748b: $6b
    sub l                                         ; $748c: $95
    ld a, h                                       ; $748d: $7c
    ld e, d                                       ; $748e: $5a
    rst $28                                       ; $748f: $ef
    jp c, $96ff                                   ; $7490: $da $ff $96

    ld a, [hl+]                                   ; $7493: $2a
    ld a, [de]                                    ; $7494: $1a

jr_067_7495:
    and b                                         ; $7495: $a0
    ld c, a                                       ; $7496: $4f
    di                                            ; $7497: $f3
    inc sp                                        ; $7498: $33
    xor b                                         ; $7499: $a8
    xor b                                         ; $749a: $a8
    add hl, hl                                    ; $749b: $29
    rlca                                          ; $749c: $07
    reti                                          ; $749d: $d9


    sub h                                         ; $749e: $94
    add e                                         ; $749f: $83
    dec [hl]                                      ; $74a0: $35
    push hl                                       ; $74a1: $e5
    ld d, b                                       ; $74a2: $50
    add l                                         ; $74a3: $85
    nop                                           ; $74a4: $00
    ld [$01fd], a                                 ; $74a5: $ea $fd $01
    db $db                                        ; $74a8: $db
    add h                                         ; $74a9: $84
    db $d3                                        ; $74aa: $d3
    push de                                       ; $74ab: $d5
    ld l, e                                       ; $74ac: $6b
    ld a, h                                       ; $74ad: $7c
    ld sp, $d6ed                                  ; $74ae: $31 $ed $d6
    ld c, c                                       ; $74b1: $49
    ld d, c                                       ; $74b2: $51
    inc de                                        ; $74b3: $13
    ld l, l                                       ; $74b4: $6d
    cp h                                          ; $74b5: $bc
    ld d, b                                       ; $74b6: $50
    dec e                                         ; $74b7: $1d
    cp e                                          ; $74b8: $bb
    ccf                                           ; $74b9: $3f
    db $db                                        ; $74ba: $db
    jr nz, jr_067_74c8                            ; $74bb: $20 $0b

    ld [hl], a                                    ; $74bd: $77
    ld [hl], a                                    ; $74be: $77
    dec hl                                        ; $74bf: $2b
    or l                                          ; $74c0: $b5
    ret                                           ; $74c1: $c9


    or l                                          ; $74c2: $b5
    ld [hl], d                                    ; $74c3: $72
    ld c, c                                       ; $74c4: $49
    cp e                                          ; $74c5: $bb
    ld [hl], l                                    ; $74c6: $75
    or d                                          ; $74c7: $b2

jr_067_74c8:
    ld c, h                                       ; $74c8: $4c
    cp c                                          ; $74c9: $b9
    ld d, a                                       ; $74ca: $57
    add sp, $3f                                   ; $74cb: $e8 $3f
    ld sp, $30bc                                  ; $74cd: $31 $bc $30
    ld b, l                                       ; $74d0: $45
    pop hl                                        ; $74d1: $e1
    sbc d                                         ; $74d2: $9a
    ld [hl], d                                    ; $74d3: $72
    or b                                          ; $74d4: $b0
    xor c                                         ; $74d5: $a9
    jp nc, Jump_067_6b03                          ; $74d6: $d2 $03 $6b

    jp z, Jump_067_7641                           ; $74d9: $ca $41 $76

    db $dd                                        ; $74dc: $dd
    db $fd                                        ; $74dd: $fd
    ld bc, $1997                                  ; $74de: $01 $97 $19
    db $e3                                        ; $74e1: $e3
    ld c, a                                       ; $74e2: $4f
    and e                                         ; $74e3: $a3
    inc l                                         ; $74e4: $2c
    inc [hl]                                      ; $74e5: $34
    and e                                         ; $74e6: $a3
    rst $38                                       ; $74e7: $ff
    sbc b                                         ; $74e8: $98
    ld hl, $dd8c                                  ; $74e9: $21 $8c $dd
    rst $30                                       ; $74ec: $f7
    ld e, l                                       ; $74ed: $5d
    cp $c9                                        ; $74ee: $fe $c9
    ld l, c                                       ; $74f0: $69
    jp z, Jump_067_51a1                           ; $74f1: $ca $a1 $51

    jr c, @-$01                                   ; $74f4: $38 $fd

    daa                                           ; $74f6: $27
    ld [$4f4b], a                                 ; $74f7: $ea $4b $4f
    ld a, l                                       ; $74fa: $7d
    xor d                                         ; $74fb: $aa
    jp nc, $8fea                                  ; $74fc: $d2 $ea $8f

    dec d                                         ; $74ff: $15
    dec bc                                        ; $7500: $0b
    db $f4                                        ; $7501: $f4
    cp $00                                        ; $7502: $fe $00
    ld e, e                                       ; $7504: $5b
    ldh a, [$e2]                                  ; $7505: $f0 $e2
    and [hl]                                      ; $7507: $a6
    ld e, [hl]                                    ; $7508: $5e
    ld [c], a                                     ; $7509: $e2
    cp b                                          ; $750a: $b8
    and h                                         ; $750b: $a4
    inc e                                         ; $750c: $1c
    xor h                                         ; $750d: $ac
    rst $38                                       ; $750e: $ff
    inc a                                         ; $750f: $3c

Call_067_7510:
    ld h, l                                       ; $7510: $65

Call_067_7511:
Jump_067_7511:
    dec h                                         ; $7511: $25
    ld a, [de]                                    ; $7512: $1a

Call_067_7513:
    ldh [$ea], a                                  ; $7513: $e0 $ea
    ld h, h                                       ; $7515: $64
    ld de, $89ff                                  ; $7516: $11 $ff $89
    reti                                          ; $7519: $d9


    add h                                         ; $751a: $84
    ld [hl], e                                    ; $751b: $73

jr_067_751c:
    ld a, a                                       ; $751c: $7f
    sbc e                                         ; $751d: $9b
    ld b, a                                       ; $751e: $47
    ld [hl], $e5                                  ; $751f: $36 $e5
    ld d, b                                       ; $7521: $50
    call nz, Call_000_1c2c                        ; $7522: $c4 $2c $1c
    ld d, c                                       ; $7525: $51
    or a                                          ; $7526: $b7
    ret nc                                        ; $7527: $d0

    ld l, h                                       ; $7528: $6c
    ld h, a                                       ; $7529: $67
    inc de                                        ; $752a: $13
    daa                                           ; $752b: $27
    ld h, a                                       ; $752c: $67
    ret c                                         ; $752d: $d8

    db $dd                                        ; $752e: $dd
    ld [hl], e                                    ; $752f: $73
    pop af                                        ; $7530: $f1
    ld [hl-], a                                   ; $7531: $32
    dec [hl]                                      ; $7532: $35
    and e                                         ; $7533: $a3
    ld d, d                                       ; $7534: $52
    jr c, jr_067_751c                             ; $7535: $38 $e5

    ld d, h                                       ; $7537: $54
    ld [hl-], a                                   ; $7538: $32
    and $69                                       ; $7539: $e6 $69
    sbc b                                         ; $753b: $98
    ld h, [hl]                                    ; $753c: $66
    cp b                                          ; $753d: $b8
    ld a, [$457c]                                 ; $753e: $fa $7c $45
    and c                                         ; $7541: $a1
    ld a, c                                       ; $7542: $79
    ld c, l                                       ; $7543: $4d
    srl d                                         ; $7544: $cb $3a
    ld e, l                                       ; $7546: $5d
    db $db                                        ; $7547: $db
    cp b                                          ; $7548: $b8
    ld c, h                                       ; $7549: $4c
    inc sp                                        ; $754a: $33
    sub a                                         ; $754b: $97
    cp $23                                        ; $754c: $fe $23
    and a                                         ; $754e: $a7
    ld e, b                                       ; $754f: $58
    ld [hl], b                                    ; $7550: $70
    scf                                           ; $7551: $37
    ld de, $cb91                                  ; $7552: $11 $91 $cb
    db $db                                        ; $7555: $db
    push bc                                       ; $7556: $c5
    push af                                       ; $7557: $f5
    jp nz, $4069                                  ; $7558: $c2 $69 $40

    ld c, a                                       ; $755b: $4f
    ld l, h                                       ; $755c: $6c
    ld [c], a                                     ; $755d: $e2
    call nz, Call_067_5a3c                        ; $755e: $c4 $3c $5a
    ld a, a                                       ; $7561: $7f
    xor h                                         ; $7562: $ac
    jp z, $0cdd                                   ; $7563: $ca $dd $0c

    jp c, Jump_000_1bfd                           ; $7566: $da $fd $1b

    rst $20                                       ; $7569: $e7
    ld h, l                                       ; $756a: $65
    call c, $971f                                 ; $756b: $dc $1f $97
    bit 0, d                                      ; $756e: $cb $42
    ld a, l                                       ; $7570: $7d
    inc l                                         ; $7571: $2c
    ret                                           ; $7572: $c9


    jp hl                                         ; $7573: $e9


    ld a, [bc]                                    ; $7574: $0a
    ld c, e                                       ; $7575: $4b
    ld [hl], d                                    ; $7576: $72
    xor $26                                       ; $7577: $ee $26
    adc [hl]                                      ; $7579: $8e
    and l                                         ; $757a: $a5
    inc e                                         ; $757b: $1c
    ld a, [bc]                                    ; $757c: $0a
    call $b5b4                                    ; $757d: $cd $b4 $b5
    ld b, [hl]                                    ; $7580: $46
    ld l, b                                       ; $7581: $68
    ld h, [hl]                                    ; $7582: $66
    sub l                                         ; $7583: $95
    dec bc                                        ; $7584: $0b
    cp e                                          ; $7585: $bb

jr_067_7586:
    ld [c], a                                     ; $7586: $e2
    xor [hl]                                      ; $7587: $ae
    rst $00                                       ; $7588: $c7
    ld c, l                                       ; $7589: $4d
    rra                                           ; $758a: $1f
    db $db                                        ; $758b: $db
    or l                                          ; $758c: $b5
    or e                                          ; $758d: $b3
    inc h                                         ; $758e: $24
    ld b, a                                       ; $758f: $47

Call_067_7590:
    dec de                                        ; $7590: $1b
    or b                                          ; $7591: $b0
    or b                                          ; $7592: $b0
    ld a, [hl+]                                   ; $7593: $2a
    sbc h                                         ; $7594: $9c
    cp $23                                        ; $7595: $fe $23
    and a                                         ; $7597: $a7
    and e                                         ; $7598: $a3
    sub l                                         ; $7599: $95
    ld [hl], b                                    ; $759a: $70
    ld a, d                                       ; $759b: $7a
    rst $18                                       ; $759c: $df
    rst $30                                       ; $759d: $f7
    ld e, l                                       ; $759e: $5d
    ld [hl], h                                    ; $759f: $74
    ld a, [$83d3]                                 ; $75a0: $fa $d3 $83
    ld h, l                                       ; $75a3: $65
    ld a, [de]                                    ; $75a4: $1a
    or b                                          ; $75a5: $b0
    and b                                         ; $75a6: $a0

Jump_067_75a7:
    db $eb                                        ; $75a7: $eb
    ld a, [$8ed2]                                 ; $75a8: $fa $d2 $8e
    ld c, e                                       ; $75ab: $4b
    add hl, sp                                    ; $75ac: $39
    sub l                                         ; $75ad: $95
    ld [hl], b                                    ; $75ae: $70
    ld [hl], a                                    ; $75af: $77
    or a                                          ; $75b0: $b7
    ld a, [bc]                                    ; $75b1: $0a
    or c                                          ; $75b2: $b1
    xor c                                         ; $75b3: $a9
    adc c                                         ; $75b4: $89
    ld a, h                                       ; $75b5: $7c
    sbc e                                         ; $75b6: $9b
    ld a, $09                                     ; $75b7: $3e $09
    sbc d                                         ; $75b9: $9a
    rst $00                                       ; $75ba: $c7
    sub l                                         ; $75bb: $95
    ld e, l                                       ; $75bc: $5d
    pop bc                                        ; $75bd: $c1
    sbc d                                         ; $75be: $9a
    ld [hl], d                                    ; $75bf: $72
    ld l, b                                       ; $75c0: $68
    add b                                         ; $75c1: $80
    cp $e3                                        ; $75c2: $fe $e3
    or c                                          ; $75c4: $b1
    and a                                         ; $75c5: $a7
    add hl, de                                    ; $75c6: $19
    dec e                                         ; $75c7: $1d
    xor l                                         ; $75c8: $ad
    ccf                                           ; $75c9: $3f
    ld bc, $6d06                                  ; $75ca: $01 $06 $6d
    sbc b                                         ; $75cd: $98
    ld h, $a8                                     ; $75ce: $26 $a8
    adc a                                         ; $75d0: $8f
    dec h                                         ; $75d1: $25
    add hl, sp                                    ; $75d2: $39
    dec c                                         ; $75d3: $0d
    and e                                         ; $75d4: $a3
    cp l                                          ; $75d5: $bd
    jr nz, jr_067_7586                            ; $75d6: $20 $ae

    sbc [hl]                                      ; $75d8: $9e
    xor $b6                                       ; $75d9: $ee $b6
    jp nz, $fbd3                                  ; $75db: $c2 $d3 $fb

    inc bc                                        ; $75de: $03
    adc c                                         ; $75df: $89
    ld [hl], $5e                                  ; $75e0: $36 $5e
    xor b                                         ; $75e2: $a8
    adc [hl]                                      ; $75e3: $8e
    push af                                       ; $75e4: $f5
    ld e, h                                       ; $75e5: $5c
    daa                                           ; $75e6: $27
    dec a                                         ; $75e7: $3d
    dec bc                                        ; $75e8: $0b
    jp nz, $3618                                  ; $75e9: $c2 $18 $36

    db $f4                                        ; $75ec: $f4
    ld e, h                                       ; $75ed: $5c
    ld [hl], h                                    ; $75ee: $74
    ld h, d                                       ; $75ef: $62
    ld b, b                                       ; $75f0: $40
    sub l                                         ; $75f1: $95
    rst $08                                       ; $75f2: $cf
    ld l, l                                       ; $75f3: $6d
    ld a, [$db00]                                 ; $75f4: $fa $00 $db
    add h                                         ; $75f7: $84
    ld d, e                                       ; $75f8: $53
    rst $18                                       ; $75f9: $df
    ldh a, [$3f]                                  ; $75fa: $f0 $3f
    sbc l                                         ; $75fc: $9d
    ld b, $54                                     ; $75fd: $06 $54
    ld [hl-], a                                   ; $75ff: $32
    and $69                                       ; $7600: $e6 $69
    ld b, h                                       ; $7602: $44
    ld c, h                                       ; $7603: $4c
    ld a, [hl-]                                   ; $7604: $3a
    ld e, c                                       ; $7605: $59
    sbc a                                         ; $7606: $9f
    add $4a                                       ; $7607: $c6 $4a
    inc [hl]                                      ; $7609: $34
    adc a                                         ; $760a: $8f
    ld b, l                                       ; $760b: $45
    ld e, d                                       ; $760c: $5a
    ld e, a                                       ; $760d: $5f
    ld e, h                                       ; $760e: $5c
    dec a                                         ; $760f: $3d
    db $dd                                        ; $7610: $dd
    ld l, l                                       ; $7611: $6d
    add l                                         ; $7612: $85
    push hl                                       ; $7613: $e5
    ld l, [hl]                                    ; $7614: $6e
    ld b, d                                       ; $7615: $42
    db $cc, $88, $01                              ; $7616: $cc $88 $01
    jp c, $ca69                                   ; $7619: $da $69 $ca

    and c                                         ; $761c: $a1
    db $d3                                        ; $761d: $d3
    inc b                                         ; $761e: $04
    push af                                       ; $761f: $f5
    or c                                          ; $7620: $b1
    inc h                                         ; $7621: $24
    and a                                         ; $7622: $a7
    ld h, c                                       ; $7623: $61
    or h                                          ; $7624: $b4
    rla                                           ; $7625: $17
    call nz, $d3d5                                ; $7626: $c4 $d5 $d3
    db $dd                                        ; $7629: $dd
    ld d, [hl]                                    ; $762a: $56
    ld a, b                                       ; $762b: $78
    jp c, $ca8c                                   ; $762c: $da $8c $ca

    pop de                                        ; $762f: $d1
    ld l, h                                       ; $7630: $6c
    db $e3                                        ; $7631: $e3

Jump_067_7632:
    ld [hl], $7d                                  ; $7632: $36 $7d
    db $db                                        ; $7634: $db
    or l                                          ; $7635: $b5
    ld [de], a                                    ; $7636: $12
    ld c, [hl]                                    ; $7637: $4e
    db $eb                                        ; $7638: $eb
    di                                            ; $7639: $f3
    jp hl                                         ; $763a: $e9


    and [hl]                                      ; $763b: $a6
    rrca                                          ; $763c: $0f
    add hl, bc                                    ; $763d: $09
    dec bc                                        ; $763e: $0b
    ld a, [hl+]                                   ; $763f: $2a
    ld b, a                                       ; $7640: $47

Jump_067_7641:
    or e                                          ; $7641: $b3
    or c                                          ; $7642: $b1
    and e                                         ; $7643: $a3
    call $da70                                    ; $7644: $cd $70 $da
    nop                                           ; $7647: $00
    add l                                         ; $7648: $85

Call_067_7649:
    add b                                         ; $7649: $80
    pop de                                        ; $764a: $d1
    ld c, d                                       ; $764b: $4a
    ld a, $ad                                     ; $764c: $3e $ad
    ld l, a                                       ; $764e: $6f
    db $e3                                        ; $764f: $e3
    ld [hl], l                                    ; $7650: $75
    ld sp, $8a8c                                  ; $7651: $31 $8c $8a
    ld a, [hl+]                                   ; $7654: $2a
    xor c                                         ; $7655: $a9
    adc l                                         ; $7656: $8d
    jp nz, $bb29                                  ; $7657: $c2 $29 $bb

    add d                                         ; $765a: $82
    dec b                                         ; $765b: $05
    ld b, $dc                                     ; $765c: $06 $dc
    dec d                                         ; $765e: $15
    sub a                                         ; $765f: $97
    adc h                                         ; $7660: $8c
    ld c, c                                       ; $7661: $49
    ld h, c                                       ; $7662: $61
    ld d, a                                       ; $7663: $57
    ld a, h                                       ; $7664: $7c
    ld d, l                                       ; $7665: $55
    ld a, $6b                                     ; $7666: $3e $6b
    ld h, b                                       ; $7668: $60
    jp z, $513d                                   ; $7669: $ca $3d $51

    db $fd                                        ; $766c: $fd
    or c                                          ; $766d: $b1
    ld a, [de]                                    ; $766e: $1a
    ld [hl], a                                    ; $766f: $77
    dec e                                         ; $7670: $1d
    inc c                                         ; $7671: $0c
    ld l, l                                       ; $7672: $6d
    jp z, Jump_067_51a1                           ; $7673: $ca $a1 $51

    jr c, @-$31                                   ; $7676: $38 $cd

    xor b                                         ; $7678: $a8
    ccf                                           ; $7679: $3f
    xor d                                         ; $767a: $aa
    ld d, e                                       ; $767b: $53
    jp Jump_000_0b0a                              ; $767c: $c3 $0a $0b


    db $ed                                        ; $767f: $ed
    ld l, [hl]                                    ; $7680: $6e
    ld [c], a                                     ; $7681: $e2
    ld e, b                                       ; $7682: $58
    sbc c                                         ; $7683: $99
    ld e, $63                                     ; $7684: $1e $63
    inc bc                                        ; $7686: $03
    ld d, [hl]                                    ; $7687: $56
    ret nc                                        ; $7688: $d0

    xor [hl]                                      ; $7689: $ae
    ld h, [hl]                                    ; $768a: $66
    ret                                           ; $768b: $c9


    or h                                          ; $768c: $b4
    ld a, [$9634]                                 ; $768d: $fa $34 $96
    db $fd                                        ; $7690: $fd
    add hl, hl                                    ; $7691: $29
    ld a, c                                       ; $7692: $79
    scf                                           ; $7693: $37
    and c                                         ; $7694: $a1
    ld c, [hl]                                    ; $7695: $4e
    reti                                          ; $7696: $d9


    xor c                                         ; $7697: $a9
    ld h, h                                       ; $7698: $64
    call z, $3773                                 ; $7699: $cc $73 $37
    ld [hl], c                                    ; $769c: $71
    ld [bc], a                                    ; $769d: $02
    or h                                          ; $769e: $b4
    inc [hl]                                      ; $769f: $34
    ld h, e                                       ; $76a0: $63
    inc d                                         ; $76a1: $14
    ld b, b                                       ; $76a2: $40
    xor e                                         ; $76a3: $ab
    jp nc, $92de                                  ; $76a4: $d2 $de $92

    inc e                                         ; $76a7: $1c
    xor l                                         ; $76a8: $ad
    ccf                                           ; $76a9: $3f
    ld d, [hl]                                    ; $76aa: $56
    sbc a                                         ; $76ab: $9f
    xor d                                         ; $76ac: $aa
    and b                                         ; $76ad: $a0
    ld [hl], l                                    ; $76ae: $75
    rst $38                                       ; $76af: $ff
    add $79                                       ; $76b0: $c6 $79
    add hl, de                                    ; $76b2: $19
    rst $30                                       ; $76b3: $f7
    rlca                                          ; $76b4: $07
    ld e, e                                       ; $76b5: $5b
    xor c                                         ; $76b6: $a9
    sbc l                                         ; $76b7: $9d
    xor $88                                       ; $76b8: $ee $88
    db $f4                                        ; $76ba: $f4
    ld [hl], c                                    ; $76bb: $71
    rst $18                                       ; $76bc: $df
    rst $30                                       ; $76bd: $f7
    rlca                                          ; $76be: $07
    sub a                                         ; $76bf: $97
    ld d, c                                       ; $76c0: $51
    ld a, d                                       ; $76c1: $7a
    sub $c9                                       ; $76c2: $d6 $c9
    ld c, [hl]                                    ; $76c4: $4e
    dec h                                         ; $76c5: $25
    ld h, e                                       ; $76c6: $63
    ret nz                                        ; $76c7: $c0

    xor e                                         ; $76c8: $ab
    ld c, a                                       ; $76c9: $4f
    ld h, e                                       ; $76ca: $63
    reti                                          ; $76cb: $d9


    sbc a                                         ; $76cc: $9f
    sub d                                         ; $76cd: $92
    rst $30                                       ; $76ce: $f7
    rlca                                          ; $76cf: $07
    dec sp                                        ; $76d0: $3b
    add $63                                       ; $76d1: $c6 $63
    add sp, $34                                   ; $76d3: $e8 $34
    push hl                                       ; $76d5: $e5
    ld d, b                                       ; $76d6: $50
    add l                                         ; $76d7: $85
    xor l                                         ; $76d8: $ad
    dec d                                         ; $76d9: $15
    sbc d                                         ; $76da: $9a
    pop de                                        ; $76db: $d1
    push hl                                       ; $76dc: $e5
    xor l                                         ; $76dd: $ad
    ld l, h                                       ; $76de: $6c
    ld [hl], $7d                                  ; $76df: $36 $7d
    rst $20                                       ; $76e1: $e7
    adc h                                         ; $76e2: $8c
    ld l, h                                       ; $76e3: $6c
    ld [hl], $7a                                  ; $76e4: $36 $7a
    cp b                                          ; $76e6: $b8
    inc h                                         ; $76e7: $24
    ld b, a                                       ; $76e8: $47
    call nc, $a6ad                                ; $76e9: $d4 $ad $a6
    ld [hl], a                                    ; $76ec: $77
    or a                                          ; $76ed: $b7
    adc l                                         ; $76ee: $8d

jr_067_76ef:
    reti                                          ; $76ef: $d9


    db $d3                                        ; $76f0: $d3
    ei                                            ; $76f1: $fb
    inc bc                                        ; $76f2: $03
    ld [c], a                                     ; $76f3: $e2
    ld e, d                                       ; $76f4: $5a
    rst $28                                       ; $76f5: $ef
    ld a, [hl-]                                   ; $76f6: $3a
    ld a, e                                       ; $76f7: $7b
    call nc, $3606                                ; $76f8: $d4 $06 $36
    ld [hl], c                                    ; $76fb: $71
    ld c, l                                       ; $76fc: $4d
    rst $38                                       ; $76fd: $ff
    ld h, c                                       ; $76fe: $61
    and e                                         ; $76ff: $a3
    ld [hl], b                                    ; $7700: $70
    xor d                                         ; $7701: $aa
    jp nz, Jump_000_1669                          ; $7702: $c2 $69 $16

    ld c, [hl]                                    ; $7705: $4e
    jp $c15b                                      ; $7706: $c3 $5b $c1


    ld a, [c]                                     ; $7709: $f2
    dec bc                                        ; $770a: $0b
    call nc, $23fe                                ; $770b: $d4 $fe $23
    and a                                         ; $770e: $a7
    call nc, $e986                                ; $770f: $d4 $86 $e9
    ld [hl], $66                                  ; $7712: $36 $66
    ld l, $77                                     ; $7714: $2e $77
    ld [hl], a                                    ; $7716: $77
    db $ec                                        ; $7717: $ec
    ld e, [hl]                                    ; $7718: $5e
    ld l, b                                       ; $7719: $68
    halt                                          ; $771a: $76
    add c                                         ; $771b: $81
    ld [hl], d                                    ; $771c: $72
    ld [hl], h                                    ; $771d: $74
    jp Jump_067_5707                              ; $771e: $c3 $07 $57


    inc e                                         ; $7721: $1c
    jr z, jr_067_76ef                             ; $7722: $28 $cb

    db $dd                                        ; $7724: $dd
    ld a, [hl-]                                   ; $7725: $3a
    ld e, d                                       ; $7726: $5a
    ld [$84a6], sp                                ; $7727: $08 $a6 $84
    adc d                                         ; $772a: $8a
    ld [$f58f], a                                 ; $772b: $ea $8f $f5
    xor c                                         ; $772e: $a9
    ld c, [hl]                                    ; $772f: $4e
    inc sp                                        ; $7730: $33
    db $e4                                        ; $7731: $e4
    ld l, b                                       ; $7732: $68
    dec h                                         ; $7733: $25
    ld d, h                                       ; $7734: $54
    ld c, [hl]                                    ; $7735: $4e
    inc bc                                        ; $7736: $03
    ld a, [bc]                                    ; $7737: $0a
    call $d02e                                    ; $7738: $cd $2e $d0
    ld [hl], $f4                                  ; $773b: $36 $f4

Call_067_773d:
    ld [hl-], a                                   ; $773d: $32
    ret z                                         ; $773e: $c8

    pop de                                        ; $773f: $d1
    ld b, $d4                                     ; $7740: $06 $d4
    and a                                         ; $7742: $a7
    ld a, [hl+]                                   ; $7743: $2a
    xor l                                         ; $7744: $ad
    ld [hl], c                                    ; $7745: $71
    or h                                          ; $7746: $b4
    db $10                                        ; $7747: $10
    ld c, h                                       ; $7748: $4c
    add hl, bc                                    ; $7749: $09
    xor l                                         ; $774a: $ad
    ld c, a                                       ; $774b: $4f
    ld h, e                                       ; $774c: $63
    sbc a                                         ; $774d: $9f
    push de                                       ; $774e: $d5
    and a                                         ; $774f: $a7
    or c                                          ; $7750: $b1
    ld d, e                                       ; $7751: $53
    ld b, l                                       ; $7752: $45
    jp c, Jump_000_30c5                           ; $7753: $da $c5 $30

    ld h, l                                       ; $7756: $65
    sbc h                                         ; $7757: $9c
    ei                                            ; $7758: $fb
    inc bc                                        ; $7759: $03
    ld e, e                                       ; $775a: $5b
    sbc b                                         ; $775b: $98
    or [hl]                                       ; $775c: $b6
    rla                                           ; $775d: $17
    ld [hl], $f4                                  ; $775e: $36 $f4
    ld [de], a                                    ; $7760: $12
    add a                                         ; $7761: $87
    ld a, d                                       ; $7762: $7a
    cp c                                          ; $7763: $b9
    dec bc                                        ; $7764: $0b
    ld e, d                                       ; $7765: $5a
    and [hl]                                      ; $7766: $a6
    call c, $f4db                                 ; $7767: $dc $db $f4
    ld bc, $e4e2                                  ; $776a: $01 $e2 $e4
    ld a, l                                       ; $776d: $7d
    rst $18                                       ; $776e: $df
    ld c, [hl]                                    ; $776f: $4e
    sbc $f7                                       ; $7770: $de $f7
    db $dd                                        ; $7772: $dd
    jp $b8f3                                      ; $7773: $c3 $f3 $b8


    ld [$65ee], a                                 ; $7776: $ea $ee $65
    ld d, a                                       ; $7779: $57
    or b                                          ; $777a: $b0
    cp e                                          ; $777b: $bb
    db $db                                        ; $777c: $db
    add h                                         ; $777d: $84
    dec a                                         ; $777e: $3d
    inc a                                         ; $777f: $3c
    dec bc                                        ; $7780: $0b
    and a                                         ; $7781: $a7
    ld a, h                                       ; $7782: $7c
    ld sp, $ecb0                                  ; $7783: $31 $b0 $ec
    ld a, [bc]                                    ; $7786: $0a
    sub $30                                       ; $7787: $d6 $30
    db $dd                                        ; $7789: $dd
    or $fe                                        ; $778a: $f6 $fe
    ld e, c                                       ; $778c: $59
    xor b                                         ; $778d: $a8
    dec a                                         ; $778e: $3d
    ld l, a                                       ; $778f: $6f
    and c                                         ; $7790: $a1
    call nz, $aa22                                ; $7791: $c4 $22 $aa
    ccf                                           ; $7794: $3f
    ld c, a                                       ; $7795: $4f
    dec de                                        ; $7796: $1b
    add l                                         ; $7797: $85
    or e                                          ; $7798: $b3
    jp hl                                         ; $7799: $e9


    inc bc                                        ; $779a: $03

jr_067_779b:
    rst $20                                       ; $779b: $e7
    ld b, d                                       ; $779c: $42
    rst $38                                       ; $779d: $ff
    pop af                                        ; $779e: $f1
    ret c                                         ; $779f: $d8

    sub e                                         ; $77a0: $93
    and e                                         ; $77a1: $a3
    ld c, l                                       ; $77a2: $4d
    add hl, sp                                    ; $77a3: $39
    ret z                                         ; $77a4: $c8

    xor [hl]                                      ; $77a5: $ae
    inc de                                        ; $77a6: $13
    dec d                                         ; $77a7: $15

jr_067_77a8:
    ld d, l                                       ; $77a8: $55
    ld a, d                                       ; $77a9: $7a
    jr nz, jr_067_77f3                            ; $77aa: $20 $47

Call_067_77ac:
    sbc e                                         ; $77ac: $9b
    ld [hl], d                                    ; $77ad: $72
    add sp, -$0c                                  ; $77ae: $e8 $f4
    cp h                                          ; $77b0: $bc
    push bc                                       ; $77b1: $c5
    ld a, c                                       ; $77b2: $79
    cp l                                          ; $77b3: $bd
    dec sp                                        ; $77b4: $3b
    dec bc                                        ; $77b5: $0b
    call Call_067_656b                            ; $77b6: $cd $6b $65
    db $d3                                        ; $77b9: $d3
    adc [hl]                                      ; $77ba: $8e
    ld d, $68                                     ; $77bb: $16 $68
    ld h, l                                       ; $77bd: $65
    inc de                                        ; $77be: $13
    ld de, $3d8c                                  ; $77bf: $11 $8c $3d
    rst $28                                       ; $77c2: $ef
    dec l                                         ; $77c3: $2d
    and e                                         ; $77c4: $a3
    rst $30                                       ; $77c5: $f7
    ld a, l                                       ; $77c6: $7d
    ld a, a                                       ; $77c7: $7f
    sbc e                                         ; $77c8: $9b
    sub e                                         ; $77c9: $93
    rst $08                                       ; $77ca: $cf
    adc c                                         ; $77cb: $89
    ld a, [de]                                    ; $77cc: $1a
    add l                                         ; $77cd: $85
    dec c                                         ; $77ce: $0d
    cpl                                           ; $77cf: $2f
    ld c, l                                       ; $77d0: $4d
    reti                                          ; $77d1: $d9


    and a                                         ; $77d2: $a7
    ld a, d                                       ; $77d3: $7a
    jr c, jr_067_783a                             ; $77d4: $38 $64

    ld d, a                                       ; $77d6: $57
    or e                                          ; $77d7: $b3
    xor e                                         ; $77d8: $ab
    ld e, h                                       ; $77d9: $5c
    ld [hl-], a                                   ; $77da: $32
    scf                                           ; $77db: $37
    ld a, h                                       ; $77dc: $7c
    sub a                                         ; $77dd: $97
    jr c, jr_067_77a8                             ; $77de: $38 $c8

    xor [hl]                                      ; $77e0: $ae
    ld l, e                                       ; $77e1: $6b
    jp z, $d0a1                                   ; $77e2: $ca $a1 $d0

    cp h                                          ; $77e5: $bc
    ld d, [hl]                                    ; $77e6: $56
    ld [hl], $ed                                  ; $77e7: $36 $ed
    ld l, b                                       ; $77e9: $68
    add c                                         ; $77ea: $81
    ld d, [hl]                                    ; $77eb: $56
    ld [hl], $11                                  ; $77ec: $36 $11
    pop bc                                        ; $77ee: $c1
    jr z, jr_067_779b                             ; $77ef: $28 $aa

    ld c, a                                       ; $77f1: $4f
    ld h, e                                       ; $77f2: $63

jr_067_77f3:
    cp c                                          ; $77f3: $b9
    xor h                                         ; $77f4: $ac
    sub e                                         ; $77f5: $93
    dec c                                         ; $77f6: $0d
    db $d3                                        ; $77f7: $d3
    di                                            ; $77f8: $f3
    ld d, $e7                                     ; $77f9: $16 $e7
    push af                                       ; $77fb: $f5
    xor $dc                                       ; $77fc: $ee $dc
    db $f4                                        ; $77fe: $f4
    ld bc, $939b                                  ; $77ff: $01 $9b $93
    rst $08                                       ; $7802: $cf
    ld l, l                                       ; $7803: $6d
    add sp, $36                                   ; $7804: $e8 $36
    rla                                           ; $7806: $17
    ld a, a                                       ; $7807: $7f
    ld d, [hl]                                    ; $7808: $56
    ld d, c                                       ; $7809: $51
    and l                                         ; $780a: $a5
    rlca                                          ; $780b: $07
    ld c, l                                       ; $780c: $4d
    add hl, sp                                    ; $780d: $39
    ret z                                         ; $780e: $c8

    ld e, $9e                                     ; $780f: $1e $9e
    rst $10                                       ; $7811: $d7
    cp d                                          ; $7812: $ba
    ld a, a                                       ; $7813: $7f
    rrca                                          ; $7814: $0f
    rst $10                                       ; $7815: $d7
    rst $18                                       ; $7816: $df

jr_067_7817:
    ld h, l                                       ; $7817: $65
    sub $1f                                       ; $7818: $d6 $1f
    dec hl                                        ; $781a: $2b
    ld d, e                                       ; $781b: $53
    xor $dd                                       ; $781c: $ee $dd
    dec d                                         ; $781e: $15
    ld l, a                                       ; $781f: $6f
    ld a, [de]                                    ; $7820: $1a
    ld sp, $aba3                                  ; $7821: $31 $a3 $ab
    inc bc                                        ; $7824: $03
    scf                                           ; $7825: $37
    ld a, [hl+]                                   ; $7826: $2a

Jump_067_7827:
    ld a, [hl+]                                   ; $7827: $2a
    ld sp, hl                                     ; $7828: $f9
    or h                                          ; $7829: $b4
    sbc c                                         ; $782a: $99
    ld d, $70                                     ; $782b: $16 $70
    ld a, a                                       ; $782d: $7f
    adc c                                         ; $782e: $89
    ld h, e                                       ; $782f: $63
    add hl, hl                                    ; $7830: $29
    add a                                         ; $7831: $87
    xor [hl]                                      ; $7832: $ae
    ld l, e                                       ; $7833: $6b
    jp z, $fca1                                   ; $7834: $ca $a1 $fc

    sub e                                         ; $7837: $93
    sub h                                         ; $7838: $94
    ld c, l                                       ; $7839: $4d

jr_067_783a:
    add hl, sp                                    ; $783a: $39
    ld [hl], h                                    ; $783b: $74
    cp d                                          ; $783c: $ba
    add l                                         ; $783d: $85
    ld l, c                                       ; $783e: $69
    ld a, e                                       ; $783f: $7b
    and c                                         ; $7840: $a1
    ret nc                                        ; $7841: $d0

    call z, Call_000_1b15                         ; $7842: $cc $15 $1b
    ld e, c                                       ; $7845: $59
    push bc                                       ; $7846: $c5
    cp a                                          ; $7847: $bf
    ld e, [hl]                                    ; $7848: $5e
    jr c, jr_067_7858                             ; $7849: $38 $0d

    and e                                         ; $784b: $a3
    dec c                                         ; $784c: $0d
    add $f4                                       ; $784d: $c6 $f4
    pop bc                                        ; $784f: $c1
    ret nc                                        ; $7850: $d0

    ld b, [hl]                                    ; $7851: $46
    sub $f3                                       ; $7852: $d6 $f3
    inc a                                         ; $7854: $3c
    res 3, e                                      ; $7855: $cb $9b
    adc h                                         ; $7857: $8c

jr_067_7858:
    sbc a                                         ; $7858: $9f
    sbc e                                         ; $7859: $9b
    ld a, $09                                     ; $785a: $3e $09
    dec bc                                        ; $785c: $0b
    ld a, [hl+]                                   ; $785d: $2a
    ld h, b                                       ; $785e: $60
    xor l                                         ; $785f: $ad
    ld [de], a                                    ; $7860: $12
    dec c                                         ; $7861: $0d
    ld c, a                                       ; $7862: $4f
    dec d                                         ; $7863: $15
    ld c, l                                       ; $7864: $4d
    add hl, sp                                    ; $7865: $39
    ld d, h                                       ; $7866: $54
    ld hl, $437d                                  ; $7867: $21 $7d $43
    ld d, e                                       ; $786a: $53
    xor $69                                       ; $786b: $ee $69
    sbc l                                         ; $786d: $9d
    ld l, h                                       ; $786e: $6c
    jr nc, jr_067_7817                            ; $786f: $30 $a6

    add l                                         ; $7871: $85
    ld [hl], e                                    ; $7872: $73
    ld a, a                                       ; $7873: $7f
    sbc e                                         ; $7874: $9b
    sub e                                         ; $7875: $93
    rst $08                                       ; $7876: $cf
    ld l, l                                       ; $7877: $6d
    add sp, -$0a                                  ; $7878: $e8 $f6
    ld l, [hl]                                    ; $787a: $6e
    push hl                                       ; $787b: $e5
    ld [c], a                                     ; $787c: $e2
    sbc l                                         ; $787d: $9d
    sbc l                                         ; $787e: $9d
    add l                                         ; $787f: $85
    and $b5                                       ; $7880: $e6 $b5
    or d                                          ; $7882: $b2
    db $e3                                        ; $7883: $e3
    ld d, [hl]                                    ; $7884: $56
    rst $08                                       ; $7885: $cf
    ld [hl], $f4                                  ; $7886: $36 $f4
    ld a, [bc]                                    ; $7888: $0a
    jp z, $eed1                                   ; $7889: $ca $d1 $ee

    rst $18                                       ; $788c: $df
    sbc a                                         ; $788d: $9f
    ld e, $46                                     ; $788e: $1e $46
    ld [hl], $4c                                  ; $7890: $36 $4c
    or a                                          ; $7892: $b7
    jr nc, jr_067_7902                            ; $7893: $30 $6d

    cpl                                           ; $7895: $2f
    call c, Call_067_5b1f                         ; $7896: $dc $1f $5b
    sbc h                                         ; $7899: $9c
    sub h                                         ; $789a: $94
    rst $30                                       ; $789b: $f7
    ld a, l                                       ; $789c: $7d
    ld a, a                                       ; $789d: $7f
    add a                                         ; $789e: $87
    ld e, a                                       ; $789f: $5f
    or [hl]                                       ; $78a0: $b6
    ld d, [hl]                                    ; $78a1: $56
    rrca                                          ; $78a2: $0f
    and h                                         ; $78a3: $a4
    xor b                                         ; $78a4: $a8
    cp [hl]                                       ; $78a5: $be
    or c                                          ; $78a6: $b1
    ld b, $f5                                     ; $78a7: $06 $f5
    daa                                           ; $78a9: $27
    ld b, $58                                     ; $78aa: $06 $58
    rst $30                                       ; $78ac: $f7
    xor a                                         ; $78ad: $af
    rrca                                          ; $78ae: $0f
    ld c, e                                       ; $78af: $4b
    cp e                                          ; $78b0: $bb
    sbc b                                         ; $78b1: $98
    add hl, hl                                    ; $78b2: $29
    ld a, [hl+]                                   ; $78b3: $2a
    sub a                                         ; $78b4: $97
    or h                                          ; $78b5: $b4
    adc e                                         ; $78b6: $8b
    jp c, Jump_067_5a30                           ; $78b7: $da $30 $5a

    rst $18                                       ; $78ba: $df
    add $0b                                       ; $78bb: $c6 $0b
    push de                                       ; $78bd: $d5
    ld sp, $1768                                  ; $78be: $31 $68 $17
    add $f5                                       ; $78c1: $c6 $f5
    inc [hl]                                      ; $78c3: $34
    jp z, $f17a                                   ; $78c4: $ca $7a $f1

    ld a, [c]                                     ; $78c7: $f2
    ld e, e                                       ; $78c8: $5b
    ccf                                           ; $78c9: $3f
    ld e, d                                       ; $78ca: $5a
    rst $18                                       ; $78cb: $df
    ret c                                         ; $78cc: $d8

    or h                                          ; $78cd: $b4
    and e                                         ; $78ce: $a3
    dec b                                         ; $78cf: $05
    ld e, d                                       ; $78d0: $5a
    ld e, c                                       ; $78d1: $59
    rra                                           ; $78d2: $1f
    pop bc                                        ; $78d3: $c1
    ld a, b                                       ; $78d4: $78
    ld e, d                                       ; $78d5: $5a
    reti                                          ; $78d6: $d9


    xor l                                         ; $78d7: $ad
    rst $38                                       ; $78d8: $ff
    ld sp, hl                                     ; $78d9: $f9
    inc de                                        ; $78da: $13
    sbc c                                         ; $78db: $99
    and $b2                                       ; $78dc: $e6 $b2
    adc b                                         ; $78de: $88
    ld a, [hl-]                                   ; $78df: $3a
    dec a                                         ; $78e0: $3d
    ld l, a                                       ; $78e1: $6f
    ld a, c                                       ; $78e2: $79
    ld e, c                                       ; $78e3: $59
    ret nc                                        ; $78e4: $d0

    ei                                            ; $78e5: $fb
    dec b                                         ; $78e6: $05
    adc d                                         ; $78e7: $8a
    jp z, $f0ee                                   ; $78e8: $ca $ee $f0

    ld l, l                                       ; $78eb: $6d
    ld e, h                                       ; $78ec: $5c
    ld d, $75                                     ; $78ed: $16 $75
    ld a, d                                       ; $78ef: $7a
    adc c                                         ; $78f0: $89
    ld a, e                                       ; $78f1: $7b
    ld h, [hl]                                    ; $78f2: $66
    ld e, b                                       ; $78f3: $58
    sub [hl]                                      ; $78f4: $96
    and d                                         ; $78f5: $a2
    db $d3                                        ; $78f6: $d3
    dec e                                         ; $78f7: $1d
    sub c                                         ; $78f8: $91
    ld a, $ee                                     ; $78f9: $3e $ee
    rrca                                          ; $78fb: $0f
    dec sp                                        ; $78fc: $3b
    ld [hl+], a                                   ; $78fd: $22
    ld a, l                                       ; $78fe: $7d
    ld l, h                                       ; $78ff: $6c
    ld hl, sp+$00                                 ; $7900: $f8 $00

jr_067_7902:
    db $db                                        ; $7902: $db
    cp e                                          ; $7903: $bb
    inc hl                                        ; $7904: $23
    jp nc, $2947                                  ; $7905: $d2 $47 $29

    ret nz                                        ; $7908: $c0

    add l                                         ; $7909: $85
    ld [hl], c                                    ; $790a: $71
    ld h, l                                       ; $790b: $65
    ld a, l                                       ; $790c: $7d
    sbc e                                         ; $790d: $9b
    adc h                                         ; $790e: $8c
    inc [hl]                                      ; $790f: $34
    xor h                                         ; $7910: $ac
    xor h                                         ; $7911: $ac
    adc a                                         ; $7912: $8f
    ld h, b                                       ; $7913: $60
    inc d                                         ; $7914: $14
    ld d, l                                       ; $7915: $55
    ld b, d                                       ; $7916: $42
    push hl                                       ; $7917: $e5
    inc [hl]                                      ; $7918: $34
    push hl                                       ; $7919: $e5
    ld c, $af                                     ; $791a: $0e $af
    adc a                                         ; $791c: $8f
    xor b                                         ; $791d: $a8
    ret nc                                        ; $791e: $d0

    and [hl]                                      ; $791f: $a6
    call c, Call_067_58e1                         ; $7920: $dc $e1 $58
    ret nc                                        ; $7923: $d0

    dec d                                         ; $7924: $15
    ld e, a                                       ; $7925: $5f
    inc sp                                        ; $7926: $33
    ld h, d                                       ; $7927: $62
    and [hl]                                      ; $7928: $a6
    push de                                       ; $7929: $d5
    add $79                                       ; $792a: $c6 $79
    sub $36                                       ; $792c: $d6 $36
    ld l, $bc                                     ; $792e: $2e $bc
    ccf                                           ; $7930: $3f
    db $db                                        ; $7931: $db
    cp e                                          ; $7932: $bb
    inc hl                                        ; $7933: $23
    jp nc, $a347                                  ; $7934: $d2 $47 $a3

    ld [hl], b                                    ; $7937: $70
    sbc d                                         ; $7938: $9a
    ld de, $8b33                                  ; $7939: $11 $33 $8b
    sbc b                                         ; $793c: $98
    ld [hl], d                                    ; $793d: $72
    adc h                                         ; $793e: $8c
    ld a, c                                       ; $793f: $79
    ld a, [de]                                    ; $7940: $1a
    add l                                         ; $7941: $85
    ld d, e                                       ; $7942: $53
    ld a, [$1886]                                 ; $7943: $fa $86 $18

Jump_067_7946:
    ld h, b                                       ; $7946: $60
    ld h, l                                       ; $7947: $65
    ld a, l                                       ; $7948: $7d
    xor d                                         ; $7949: $aa
    jp nc, Jump_067_63ea                          ; $794a: $d2 $ea $63

    sbc c                                         ; $794d: $99
    sbc [hl]                                      ; $794e: $9e
    or a                                          ; $794f: $b7
    jr c, @-$4f                                   ; $7950: $38 $af

    ld [hl], a                                    ; $7952: $77
    rst $20                                       ; $7953: $e7
    db $fd                                        ; $7954: $fd
    ld bc, $6389                                  ; $7955: $01 $89 $63
    add hl, hl                                    ; $7958: $29
    add a                                         ; $7959: $87
    xor [hl]                                      ; $795a: $ae
    ld l, e                                       ; $795b: $6b
    jp z, $d0a1                                   ; $795c: $ca $a1 $d0

    cp h                                          ; $795f: $bc
    sub $cc                                       ; $7960: $d6 $cc
    sbc b                                         ; $7962: $98
    and a                                         ; $7963: $a7
    ccf                                           ; $7964: $3f
    sub a                                         ; $7965: $97
    or c                                          ; $7966: $b1
    ld [hl-], a                                   ; $7967: $32
    push hl                                       ; $7968: $e5
    sbc $a6                                       ; $7969: $de $a6
    rrca                                          ; $796b: $0f
    ld e, e                                       ; $796c: $5b
    sbc b                                         ; $796d: $98
    or [hl]                                       ; $796e: $b6
    rla                                           ; $796f: $17
    xor $fb                                       ; $7970: $ee $fb
    sbc [hl]                                      ; $7972: $9e
    and [hl]                                      ; $7973: $a6
    inc e                                         ; $7974: $1c

Jump_067_7975:
    cp d                                          ; $7975: $ba
    xor [hl]                                      ; $7976: $ae
    ld c, a                                       ; $7977: $4f
    di                                            ; $7978: $f3
    ld l, h                                       ; $7979: $6c
    ld a, [$1700]                                 ; $797a: $fa $00 $17
    xor b                                         ; $797d: $a8
    adc $a6                                       ; $797e: $ce $a6
    adc d                                         ; $7980: $8a
    sub e                                         ; $7981: $93
    and d                                         ; $7982: $a2
    ld c, d                                       ; $7983: $4a
    add hl, hl                                    ; $7984: $29
    rst $28                                       ; $7985: $ef
    ei                                            ; $7986: $fb
    cp $00                                        ; $7987: $fe $00

Call_067_7989:
    ld h, a                                       ; $7989: $67
    call nc, $cec9                                ; $798a: $d4 $c9 $ce
    ld l, d                                       ; $798d: $6a
    ld a, [de]                                    ; $798e: $1a
    ret nc                                        ; $798f: $d0

    ld h, b                                       ; $7990: $60
    ld c, h                                       ; $7991: $4c
    dec bc                                        ; $7992: $0b
    ld h, a                                       ; $7993: $67
    ld b, e                                       ; $7994: $43
    or a                                          ; $7995: $b7
    rst $00                                       ; $7996: $c7
    add b                                         ; $7997: $80
    ld c, [hl]                                    ; $7998: $4e
    ld l, c                                       ; $7999: $69
    add $28                                       ; $799a: $c6 $28
    add b                                         ; $799c: $80
    sbc d                                         ; $799d: $9a
    or c                                          ; $799e: $b1
    jp hl                                         ; $799f: $e9


    inc bc                                        ; $79a0: $03
    rst $20                                       ; $79a1: $e7
    inc sp                                        ; $79a2: $33
    ld h, $f1                                     ; $79a3: $26 $f1
    ld [hl], $4e                                  ; $79a5: $36 $4e
    ld e, c                                       ; $79a7: $59
    daa                                           ; $79a8: $27
    dec bc                                        ; $79a9: $0b
    call $98c6                                    ; $79aa: $cd $c6 $98
    sbc h                                         ; $79ad: $9c
    and [hl]                                      ; $79ae: $a6
    inc e                                         ; $79af: $1c
    ld [$f0d3], a                                 ; $79b0: $ea $d3 $f0
    jp $8bd5                                      ; $79b3: $c3 $d5 $8b


    push hl                                       ; $79b6: $e5
    db $ed                                        ; $79b7: $ed
    ld l, d                                       ; $79b8: $6a
    ld h, b                                       ; $79b9: $60
    ld d, a                                       ; $79ba: $57
    cpl                                           ; $79bb: $2f
    or b                                          ; $79bc: $b0
    cp $58                                        ; $79bd: $fe $58
    dec d                                         ; $79bf: $15
    ld e, l                                       ; $79c0: $5d
    sbc $ca                                       ; $79c1: $de $ca
    ld l, b                                       ; $79c3: $68
    dec c                                         ; $79c4: $0d
    ld e, b                                       ; $79c5: $58
    ld [hl], b                                    ; $79c6: $70
    rst $30                                       ; $79c7: $f7
    ld [hl-], a                                   ; $79c8: $32
    call nz, $e1e4                                ; $79c9: $c4 $e4 $e1
    adc h                                         ; $79cc: $8c
    add c                                         ; $79cd: $81
    pop hl                                        ; $79ce: $e1
    ld [hl], b                                    ; $79cf: $70
    halt                                          ; $79d0: $76
    add c                                         ; $79d1: $81
    push de                                       ; $79d2: $d5
    scf                                           ; $79d3: $37
    halt                                          ; $79d4: $76
    dec b                                         ; $79d5: $05
    xor e                                         ; $79d6: $ab
    ld e, $4e                                     ; $79d7: $1e $4e
    rst $18                                       ; $79d9: $df
    db $10                                        ; $79da: $10
    jp $cd94                                      ; $79db: $c3 $94 $cd


    inc hl                                        ; $79de: $23
    ld l, c                                       ; $79df: $69
    db $fd                                        ; $79e0: $fd
    daa                                           ; $79e1: $27
    ld h, [hl]                                    ; $79e2: $66
    ld [hl], $60                                  ; $79e3: $36 $60
    pop bc                                        ; $79e5: $c1
    db $dd                                        ; $79e6: $dd
    inc sp                                        ; $79e7: $33
    ld [$cf64], a                                 ; $79e8: $ea $64 $cf
    dec [hl]                                      ; $79eb: $35
    and [hl]                                      ; $79ec: $a6
    add l                                         ; $79ed: $85
    db $d3                                        ; $79ee: $d3
    ld l, l                                       ; $79ef: $6d
    ld c, b                                       ; $79f0: $48
    db $db                                        ; $79f1: $db
    ld [hl], h                                    ; $79f2: $74
    db $db                                        ; $79f3: $db
    sbc b                                         ; $79f4: $98
    ld b, e                                       ; $79f5: $43
    jp c, $a81d                                   ; $79f6: $da $1d $a8

    and d                                         ; $79f9: $a2
    ld c, d                                       ; $79fa: $4a
    rst $30                                       ; $79fb: $f7
    ld a, [c]                                     ; $79fc: $f2
    call nc, $7368                                ; $79fd: $d4 $68 $73
    ld a, a                                       ; $7a00: $7f
    db $db                                        ; $7a01: $db
    dec sp                                        ; $7a02: $3b
    xor e                                         ; $7a03: $ab
    add hl, hl                                    ; $7a04: $29
    inc [hl]                                      ; $7a05: $34
    xor a                                         ; $7a06: $af
    sub l                                         ; $7a07: $95
    db $fd                                        ; $7a08: $fd
    sub e                                         ; $7a09: $93
    di                                            ; $7a0a: $f3
    db $d3                                        ; $7a0b: $d3
    ld [hl], $7c                                  ; $7a0c: $36 $7c
    ld [c], a                                     ; $7a0e: $e2
    ld a, a                                       ; $7a0f: $7f
    ld [hl], d                                    ; $7a10: $72
    sbc d                                         ; $7a11: $9a
    ld [hl], d                                    ; $7a12: $72
    add sp, -$6e                                  ; $7a13: $e8 $92
    ld b, h                                       ; $7a15: $44
    ld d, a                                       ; $7a16: $57
    db $e3                                        ; $7a17: $e3
    ld a, [$2927]                                 ; $7a18: $fa $27 $29
    ld l, c                                       ; $7a1b: $69
    db $dd                                        ; $7a1c: $dd
    ld [hl], $e6                                  ; $7a1d: $36 $e6
    add c                                         ; $7a1f: $81
    push hl                                       ; $7a20: $e5
    ei                                            ; $7a21: $fb
    inc bc                                        ; $7a22: $03
    db $db                                        ; $7a23: $db
    add $3c                                       ; $7a24: $c6 $3c
    or b                                          ; $7a26: $b0
    cp h                                          ; $7a27: $bc
    jp hl                                         ; $7a28: $e9


    inc bc                                        ; $7a29: $03
    sub a                                         ; $7a2a: $97
    ld b, c                                       ; $7a2b: $41
    adc [hl]                                      ; $7a2c: $8e
    ld [hl], $a0                                  ; $7a2d: $36 $a0
    add hl, de                                    ; $7a2f: $19
    sub $df                                       ; $7a30: $d6 $df
    cp l                                          ; $7a32: $bd
    ret nz                                        ; $7a33: $c0

    jr nc, @-$5c                                  ; $7a34: $30 $a2

    ld l, [hl]                                    ; $7a36: $6e
    ld h, c                                       ; $7a37: $61
    jp c, $b85e                                   ; $7a38: $da $5e $b8

    dec hl                                        ; $7a3b: $2b
    cp $27                                        ; $7a3c: $fe $27
    and a                                         ; $7a3e: $a7
    add hl, hl                                    ; $7a3f: $29
    add a                                         ; $7a40: $87
    ld c, [hl]                                    ; $7a41: $4e
    or a                                          ; $7a42: $b7
    ld [hl], d                                    ; $7a43: $72
    pop af                                        ; $7a44: $f1
    adc $ce                                       ; $7a45: $ce $ce
    ld a, [$d013]                                 ; $7a47: $fa $13 $d0
    nop                                           ; $7a4a: $00
    db $fd                                        ; $7a4b: $fd
    rst $00                                       ; $7a4c: $c7
    ld h, e                                       ; $7a4d: $63
    rst $08                                       ; $7a4e: $cf
    ld a, [hl-]                                   ; $7a4f: $3a
    ld c, l                                       ; $7a50: $4d
    add hl, sp                                    ; $7a51: $39
    sub h                                         ; $7a52: $94
    ld sp, $cb50                                  ; $7a53: $31 $50 $cb
    ld a, d                                       ; $7a56: $7a
    cp c                                          ; $7a57: $b9
    dec bc                                        ; $7a58: $0b
    halt                                          ; $7a59: $76
    ld a, a                                       ; $7a5a: $7f
    sub a                                         ; $7a5b: $97
    jr c, jr_067_7a88                             ; $7a5c: $38 $2a

    sbc d                                         ; $7a5e: $9a
    ld [hl], d                                    ; $7a5f: $72
    xor b                                         ; $7a60: $a8
    ld b, h                                       ; $7a61: $44
    push hl                                       ; $7a62: $e5
    ld e, b                                       ; $7a63: $58
    add b                                         ; $7a64: $80
    xor e                                         ; $7a65: $ab
    ld a, a                                       ; $7a66: $7f
    ld hl, sp-$3e                                 ; $7a67: $f8 $c2
    ld a, d                                       ; $7a69: $7a
    ld h, $f3                                     ; $7a6a: $26 $f3
    xor $e1                                       ; $7a6c: $ee $e1
    sub a                                         ; $7a6e: $97
    ld sp, $98bc                                  ; $7a6f: $31 $bc $98
    inc e                                         ; $7a72: $1c
    ld d, c                                       ; $7a73: $51
    inc bc                                        ; $7a74: $03
    ld d, [hl]                                    ; $7a75: $56
    add sp, -$1f                                  ; $7a76: $e8 $e1
    sbc c                                         ; $7a78: $99
    sub $3f                                       ; $7a79: $d6 $3f
    adc c                                         ; $7a7b: $89
    scf                                           ; $7a7c: $37
    dec c                                         ; $7a7d: $0d
    xor b                                         ; $7a7e: $a8
    ld [hl], a                                    ; $7a7f: $77
    inc h                                         ; $7a80: $24
    xor $0f                                       ; $7a81: $ee $0f
    db $db                                        ; $7a83: $db
    sbc e                                         ; $7a84: $9b
    ld [hl], d                                    ; $7a85: $72
    add sp, -$46                                  ; $7a86: $e8 $ba

jr_067_7a88:
    and [hl]                                      ; $7a88: $a6
    inc e                                         ; $7a89: $1c
    adc d                                         ; $7a8a: $8a
    dec b                                         ; $7a8b: $05
    db $fd                                        ; $7a8c: $fd
    ld b, a                                       ; $7a8d: $47
    ld h, d                                       ; $7a8e: $62
    ld d, e                                       ; $7a8f: $53
    inc de                                        ; $7a90: $13
    call nc, Call_067_4d87                        ; $7a91: $d4 $87 $4d
    ld d, e                                       ; $7a94: $53
    ld c, $fd                                     ; $7a95: $0e $fd
    ld b, a                                       ; $7a97: $47
    or d                                          ; $7a98: $b2
    dec sp                                        ; $7a99: $3b
    sub [hl]                                      ; $7a9a: $96
    sbc l                                         ; $7a9b: $9d
    add hl, sp                                    ; $7a9c: $39
    add hl, bc                                    ; $7a9d: $09
    ld a, e                                       ; $7a9e: $7b
    ld d, c                                       ; $7a9f: $51
    rst $28                                       ; $7aa0: $ef
    rrca                                          ; $7aa1: $0f
    db $db                                        ; $7aa2: $db
    add h                                         ; $7aa3: $84
    and d                                         ; $7aa4: $a2
    ld b, d                                       ; $7aa5: $42
    dec d                                         ; $7aa6: $15
    ld e, d                                       ; $7aa7: $5a
    cp [hl]                                       ; $7aa8: $be
    jr @+$10                                      ; $7aa9: $18 $0e

    ccf                                           ; $7aab: $3f
    xor b                                         ; $7aac: $a8
    cp [hl]                                       ; $7aad: $be
    adc e                                         ; $7aae: $8b
    ld c, c                                       ; $7aaf: $49
    jp z, $4186                                   ; $7ab0: $ca $86 $41

    call z, $bbb8                                 ; $7ab3: $cc $b8 $bb
    ld l, l                                       ; $7ab6: $6d
    or h                                          ; $7ab7: $b4
    bit 3, e                                      ; $7ab8: $cb $5b
    reti                                          ; $7aba: $d9


    ld l, b                                       ; $7abb: $68
    jp $05db                                      ; $7abc: $c3 $db $05


    reti                                          ; $7abf: $d9


    sub h                                         ; $7ac0: $94
    ld b, e                                       ; $7ac1: $43
    db $d3                                        ; $7ac2: $d3
    and e                                         ; $7ac3: $a3
    sbc c                                         ; $7ac4: $99
    dec c                                         ; $7ac5: $0d
    ld l, b                                       ; $7ac6: $68
    sbc d                                         ; $7ac7: $9a

Jump_067_7ac8:
    res 1, e                                      ; $7ac8: $cb $8b
    ld c, c                                       ; $7aca: $49
    ld [$1ddd], a                                 ; $7acb: $ea $dd $1d
    or b                                          ; $7ace: $b0
    or l                                          ; $7acf: $b5
    and [hl]                                      ; $7ad0: $a6
    inc e                                         ; $7ad1: $1c
    cp d                                          ; $7ad2: $ba
    sbc d                                         ; $7ad3: $9a
    rst $38                                       ; $7ad4: $ff
    ld b, b                                       ; $7ad5: $40
    xor l                                         ; $7ad6: $ad
    ccf                                           ; $7ad7: $3f
    pop hl                                        ; $7ad8: $e1
    ld d, c                                       ; $7ad9: $51
    or $59                                        ; $7ada: $f6 $59
    sub a                                         ; $7adc: $97
    or l                                          ; $7add: $b5
    ld a, d                                       ; $7ade: $7a
    rst $00                                       ; $7adf: $c7
    ret c                                         ; $7ae0: $d8

    dec d                                         ; $7ae1: $15
    xor h                                         ; $7ae2: $ac
    adc d                                         ; $7ae3: $8a
    jp z, Jump_067_69c3                           ; $7ae4: $ca $c3 $69

    add $28                                       ; $7ae7: $c6 $28
    add b                                         ; $7ae9: $80
    dec hl                                        ; $7aea: $2b
    jp z, Jump_067_493a                           ; $7aeb: $ca $3a $49

    db $ed                                        ; $7aee: $ed
    adc c                                         ; $7aef: $89
    sbc e                                         ; $7af0: $9b
    cp d                                          ; $7af1: $ba
    or a                                          ; $7af2: $b7
    halt                                          ; $7af3: $76
    add l                                         ; $7af4: $85
    ld e, l                                       ; $7af5: $5d
    ret nc                                        ; $7af6: $d0

    ld h, $d7                                     ; $7af7: $26 $d7
    sbc d                                         ; $7af9: $9a
    and $f2                                       ; $7afa: $e6 $f2
    ld h, d                                       ; $7afc: $62
    sub d                                         ; $7afd: $92
    ld e, d                                       ; $7afe: $5a
    adc a                                         ; $7aff: $8f
    ld [hl], c                                    ; $7b00: $71
    ld b, l                                       ; $7b01: $45
    ld l, l                                       ; $7b02: $6d
    inc e                                         ; $7b03: $1c
    ld l, l                                       ; $7b04: $6d
    add [hl]                                      ; $7b05: $86
    add hl, de                                    ; $7b06: $19

jr_067_7b07:
    ld [c], a                                     ; $7b07: $e2
    add sp, -$03                                  ; $7b08: $e8 $fd
    ld bc, $179b                                  ; $7b0a: $01 $9b $17
    jp c, $dddc                                   ; $7b0d: $da $dc $dd

    ld h, $9c                                     ; $7b10: $26 $9c
    ld h, $d7                                     ; $7b12: $26 $d7
    ld [hl], $06                                  ; $7b14: $36 $06
    ld d, h                                       ; $7b16: $54
    ld h, c                                       ; $7b17: $61
    sub l                                         ; $7b18: $95
    xor $e5                                       ; $7b19: $ee $e5
    ld l, c                                       ; $7b1b: $69
    ld a, b                                       ; $7b1c: $78
    sbc $dd                                       ; $7b1d: $de $dd
    cp $b7                                        ; $7b1f: $fe $b7
    adc b                                         ; $7b21: $88
    ld [$d3cf], a                                 ; $7b22: $ea $cf $d3
    ld b, [hl]                                    ; $7b25: $46
    pop hl                                        ; $7b26: $e1
    ld l, h                                       ; $7b27: $6c
    ld a, [$e200]                                 ; $7b28: $fa $00 $e2
    add hl, hl                                    ; $7b2b: $29
    rst $30                                       ; $7b2c: $f7
    ld a, [bc]                                    ; $7b2d: $0a
    call $29c2                                    ; $7b2e: $cd $c2 $29
    or l                                          ; $7b31: $b5
    ld l, c                                       ; $7b32: $69
    ld l, $2f                                     ; $7b33: $2e $2f
    ld h, $a9                                     ; $7b35: $26 $a9
    and d                                         ; $7b37: $a2
    ld l, [hl]                                    ; $7b38: $6e
    ld h, c                                       ; $7b39: $61
    jp c, $b85e                                   ; $7b3a: $da $5e $b8

    ccf                                           ; $7b3d: $3f
    db $db                                        ; $7b3e: $db
    dec a                                         ; $7b3f: $3d
    or $d2                                        ; $7b40: $f6 $d2
    inc c                                         ; $7b42: $0c
    inc hl                                        ; $7b43: $23
    ld [$9a16], a                                 ; $7b44: $ea $16 $9a
    db $ed                                        ; $7b47: $ed
    cp h                                          ; $7b48: $bc
    cp e                                          ; $7b49: $bb
    cp l                                          ; $7b4a: $bd
    add a                                         ; $7b4b: $87
    ld h, a                                       ; $7b4c: $67
    add [hl]                                      ; $7b4d: $86
    rla                                           ; $7b4e: $17
    sub e                                         ; $7b4f: $93
    db $d3                                        ; $7b50: $d3
    jr nc, @-$21                                  ; $7b51: $30 $dd

    ld [hl], $e6                                  ; $7b53: $36 $e6
    add c                                         ; $7b55: $81
    push hl                                       ; $7b56: $e5
    ld e, $9e                                     ; $7b57: $1e $9e
    cp c                                          ; $7b59: $b9
    ld h, d                                       ; $7b5a: $62
    reti                                          ; $7b5b: $d9


    nop                                           ; $7b5c: $00
    rst $28                                       ; $7b5d: $ef
    adc e                                         ; $7b5e: $8b
    ld c, c                                       ; $7b5f: $49
    jp c, Jump_000_01fd                           ; $7b60: $da $fd $01

    ld e, e                                       ; $7b63: $5b
    sbc b                                         ; $7b64: $98
    or [hl]                                       ; $7b65: $b6
    rla                                           ; $7b66: $17
    ld b, h                                       ; $7b67: $44
    push bc                                       ; $7b68: $c5
    add d                                         ; $7b69: $82
    ld [hl-], a                                   ; $7b6a: $32
    xor a                                         ; $7b6b: $af
    db $eb                                        ; $7b6c: $eb
    ld l, a                                       ; $7b6d: $6f
    ret nc                                        ; $7b6e: $d0

    rra                                           ; $7b6f: $1f
    xor [hl]                                      ; $7b70: $ae
    ld de, $519a                                  ; $7b71: $11 $9a $51
    rst $08                                       ; $7b74: $cf
    db $fc                                        ; $7b75: $fc
    inc c                                         ; $7b76: $0c
    cpl                                           ; $7b77: $2f
    ld h, $a7                                     ; $7b78: $26 $a7
    sub b                                         ; $7b7a: $90
    ld c, l                                       ; $7b7b: $4d
    add hl, sp                                    ; $7b7c: $39
    inc d                                         ; $7b7d: $14
    xor [hl]                                      ; $7b7e: $ae
    ld d, c                                       ; $7b7f: $51
    jr c, jr_067_7b07                             ; $7b80: $38 $85

    and $b7                                       ; $7b82: $e6 $b7
    ld b, d                                       ; $7b84: $42
    sbc c                                         ; $7b85: $99
    ld [hl], d                                    ; $7b86: $72
    ld l, a                                       ; $7b87: $6f
    ld b, e                                       ; $7b88: $43
    rst $08                                       ; $7b89: $cf
    ld h, l                                       ; $7b8a: $65
    jp z, $b2bd                                   ; $7b8b: $ca $bd $b2

    ld c, [hl]                                    ; $7b8e: $4e
    or d                                          ; $7b8f: $b2
    ld a, [bc]                                    ; $7b90: $0a
    ret                                           ; $7b91: $c9


    ret z                                         ; $7b92: $c8

    ld h, $d7                                     ; $7b93: $26 $d7
    ld [hl], $06                                  ; $7b95: $36 $06
    inc d                                         ; $7b97: $14
    sbc d                                         ; $7b98: $9a
    ld l, c                                       ; $7b99: $69
    dec c                                         ; $7b9a: $0d
    db $d3                                        ; $7b9b: $d3
    ld c, h                                       ; $7b9c: $4c
    ret                                           ; $7b9d: $c9


    sbc b                                         ; $7b9e: $98
    sbc h                                         ; $7b9f: $9c
    ld b, $36                                     ; $7ba0: $06 $36
    dec sp                                        ; $7ba2: $3b
    or $a7                                        ; $7ba3: $f6 $a7
    add a                                         ; $7ba5: $87
    sub c                                         ; $7ba6: $91
    ld [hl], a                                    ; $7ba7: $77
    or a                                          ; $7ba8: $b7
    ld [hl], a                                    ; $7ba9: $77
    dec hl                                        ; $7baa: $2b
    rla                                           ; $7bab: $17
    rst $28                                       ; $7bac: $ef
    db $ec                                        ; $7bad: $ec
    xor h                                         ; $7bae: $ac
    ccf                                           ; $7baf: $3f
    ld bc, $880d                                  ; $7bb0: $01 $0d $88
    ld l, $fe                                     ; $7bb3: $2e $fe
    adc a                                         ; $7bb5: $8f
    or [hl]                                       ; $7bb6: $b6
    ld sp, $6ca3                                  ; $7bb7: $31 $a3 $6c
    jp z, Jump_067_4971                           ; $7bba: $ca $71 $49

    add hl, sp                                    ; $7bbd: $39
    ld e, b                                       ; $7bbe: $58
    push hl                                       ; $7bbf: $e5
    ld c, b                                       ; $7bc0: $48
    call nz, $f73c                                ; $7bc1: $c4 $3c $f7
    rlca                                          ; $7bc4: $07
    add hl, bc                                    ; $7bc5: $09
    xor [hl]                                      ; $7bc6: $ae
    adc d                                         ; $7bc7: $8a
    rst $10                                       ; $7bc8: $d7
    sub h                                         ; $7bc9: $94
    ld b, e                                       ; $7bca: $43
    and e                                         ; $7bcb: $a3
    or b                                          ; $7bcc: $b0
    ld d, e                                       ; $7bcd: $53
    ld a, a                                       ; $7bce: $7f
    ld d, h                                       ; $7bcf: $54
    and a                                         ; $7bd0: $a7
    add hl, de                                    ; $7bd1: $19
    ld d, [hl]                                    ; $7bd2: $56
    rst $18                                       ; $7bd3: $df
    ld e, b                                       ; $7bd4: $58
    add l                                         ; $7bd5: $85
    db $f4                                        ; $7bd6: $f4
    dec c                                         ; $7bd7: $0d
    ld [hl+], a                                   ; $7bd8: $22
    ld c, c                                       ; $7bd9: $49
    dec l                                         ; $7bda: $2d
    db $d3                                        ; $7bdb: $d3
    ld h, e                                       ; $7bdc: $63
    ld l, h                                       ; $7bdd: $6c
    and [hl]                                      ; $7bde: $a6
    db $f4                                        ; $7bdf: $f4
    xor h                                         ; $7be0: $ac
    sub e                                         ; $7be1: $93
    adc l                                         ; $7be2: $8d
    jp nz, $fd4e                                  ; $7be3: $c2 $4e $fd

    ld d, c                                       ; $7be6: $51
    sbc l                                         ; $7be7: $9d
    ld [$992c], a                                 ; $7be8: $ea $2c $99
    halt                                          ; $7beb: $76
    ld a, a                                       ; $7bec: $7f
    db $db                                        ; $7bed: $db
    dec hl                                        ; $7bee: $2b
    pop hl                                        ; $7bef: $e1
    ld a, [$0a4c]                                 ; $7bf0: $fa $4c $0a
    and a                                         ; $7bf3: $a7
    sbc e                                         ; $7bf4: $9b
    sub e                                         ; $7bf5: $93
    or h                                          ; $7bf6: $b4
    push hl                                       ; $7bf7: $e5
    and c                                         ; $7bf8: $a1
    ret nc                                        ; $7bf9: $d0

    cp h                                          ; $7bfa: $bc
    sub $c8                                       ; $7bfb: $d6 $c8
    ld e, [hl]                                    ; $7bfd: $5e
    ld a, [hl-]                                   ; $7bfe: $3a
    ld [hl], d                                    ; $7bff: $72
    ld e, l                                       ; $7c00: $5d
    ld a, h                                       ; $7c01: $7c
    inc l                                         ; $7c02: $2c
    ld c, e                                       ; $7c03: $4b
    rst $18                                       ; $7c04: $df
    db $10                                        ; $7c05: $10
    inc bc                                        ; $7c06: $03
    xor h                                         ; $7c07: $ac
    sub d                                         ; $7c08: $92
    ld c, a                                       ; $7c09: $4f
    xor e                                         ; $7c0a: $ab
    db $e3                                        ; $7c0b: $e3
    ld sp, $1834                                  ; $7c0c: $31 $34 $18
    db $d3                                        ; $7c0f: $d3
    rlca                                          ; $7c10: $07
    ld b, e                                       ; $7c11: $43
    rst $28                                       ; $7c12: $ef
    ld e, [hl]                                    ; $7c13: $5e
    add $65                                       ; $7c14: $c6 $65
    add l                                         ; $7c16: $85
    ld e, l                                       ; $7c17: $5d
    push bc                                       ; $7c18: $c5
    add d                                         ; $7c19: $82
    ld a, [$caa3]                                 ; $7c1a: $fa $a3 $ca
    ld [hl+], a                                   ; $7c1d: $22
    cp $13                                        ; $7c1e: $fe $13
    or e                                          ; $7c20: $b3
    pop de                                        ; $7c21: $d1
    ld [$1764], a                                 ; $7c22: $ea $64 $17
    sub a                                         ; $7c25: $97
    and [hl]                                      ; $7c26: $a6
    push de                                       ; $7c27: $d5
    and a                                         ; $7c28: $a7
    or c                                          ; $7c29: $b1
    db $d3                                        ; $7c2a: $d3
    ld l, l                                       ; $7c2b: $6d
    ld h, e                                       ; $7c2c: $63
    ld e, $58                                     ; $7c2d: $1e $58
    cp [hl]                                       ; $7c2f: $be
    ccf                                           ; $7c30: $3f
    ld d, a                                       ; $7c31: $57
    ld d, b                                       ; $7c32: $50
    adc [hl]                                      ; $7c33: $8e
    ld d, $71                                     ; $7c34: $16 $71
    push af                                       ; $7c36: $f5
    ld l, b                                       ; $7c37: $68
    dec de                                        ; $7c38: $1b
    sub a                                         ; $7c39: $97
    inc h                                         ; $7c3a: $24
    jp z, Jump_067_416e                           ; $7c3b: $ca $6e $41

    db $10                                        ; $7c3e: $10
    db $f4                                        ; $7c3f: $f4
    jp nc, $47fd                                  ; $7c40: $d2 $fd $47

    sub $49                                       ; $7c43: $d6 $49
    ld [hl], $4e                                  ; $7c45: $36 $4e
    and $dd                                       ; $7c47: $e6 $dd
    ld c, e                                       ; $7c49: $4b
    inc e                                         ; $7c4a: $1c
    sbc d                                         ; $7c4b: $9a
    cp c                                          ; $7c4c: $b9
    adc b                                         ; $7c4d: $88
    cp d                                          ; $7c4e: $ba
    add l                                         ; $7c4f: $85
    ld l, c                                       ; $7c50: $69
    ld a, e                                       ; $7c51: $7b
    ld h, c                                       ; $7c52: $61
    db $d3                                        ; $7c53: $d3
    rlca                                          ; $7c54: $07
    rst $20                                       ; $7c55: $e7
    ld b, b                                       ; $7c56: $40
    adc d                                         ; $7c57: $8a
    xor d                                         ; $7c58: $aa
    ld l, b                                       ; $7c59: $68
    add [hl]                                      ; $7c5a: $86
    xor h                                         ; $7c5b: $ac
    add h                                         ; $7c5c: $84
    jp z, $4069                                   ; $7c5d: $ca $69 $40

    dec d                                         ; $7c60: $15
    halt                                          ; $7c61: $76
    rst $18                                       ; $7c62: $df
    rst $30                                       ; $7c63: $f7
    rlca                                          ; $7c64: $07
    rla                                           ; $7c65: $17
    xor [hl]                                      ; $7c66: $ae
    dec d                                         ; $7c67: $15
    pop af                                        ; $7c68: $f1
    sbc a                                         ; $7c69: $9f
    sbc b                                         ; $7c6a: $98
    adc l                                         ; $7c6b: $8d
    sbc d                                         ; $7c6c: $9a
    ld d, c                                       ; $7c6d: $51
    ld l, d                                       ; $7c6e: $6a
    ld c, a                                       ; $7c6f: $4f
    ld l, h                                       ; $7c70: $6c
    sbc d                                         ; $7c71: $9a
    res 1, e                                      ; $7c72: $cb $8b
    ld c, c                                       ; $7c74: $49
    xor d                                         ; $7c75: $aa
    xor b                                         ; $7c76: $a8
    ld e, e                                       ; $7c77: $5b
    ld l, b                                       ; $7c78: $68
    or [hl]                                       ; $7c79: $b6
    ld [hl], e                                    ; $7c7a: $73
    db $d3                                        ; $7c7b: $d3
    rlca                                          ; $7c7c: $07
    ld [c], a                                     ; $7c7d: $e2
    cpl                                           ; $7c7e: $2f
    ld b, $36                                     ; $7c7f: $06 $36
    ld a, [bc]                                    ; $7c81: $0a
    rst $20                                       ; $7c82: $e7
    cp $00                                        ; $7c83: $fe $00
    add hl, bc                                    ; $7c85: $09
    ld sp, $a70b                                  ; $7c86: $31 $0b $a7
    ld bc, $f3ea                                  ; $7c89: $01 $ea $f3
    ld c, a                                       ; $7c8c: $4f
    ld [hl], d                                    ; $7c8d: $72
    ld h, e                                       ; $7c8e: $63
    add $86                                       ; $7c8f: $c6 $86
    ld [hl], $61                                  ; $7c91: $36 $61
    ld h, c                                       ; $7c93: $61
    ld sp, hl                                     ; $7c94: $f9
    ld h, d                                       ; $7c95: $62
    ld h, b                                       ; $7c96: $60
    inc sp                                        ; $7c97: $33

Jump_067_7c98:
    ld h, d                                       ; $7c98: $62
    ld h, [hl]                                    ; $7c99: $66
    rst $38                                       ; $7c9a: $ff
    sub c                                         ; $7c9b: $91
    or b                                          ; $7c9c: $b0
    ld c, [hl]                                    ; $7c9d: $4e
    cpl                                           ; $7c9e: $2f
    sbc l                                         ; $7c9f: $9d
    ld e, b                                       ; $7ca0: $58
    ld b, l                                       ; $7ca1: $45
    and e                                         ; $7ca2: $a3
    or b                                          ; $7ca3: $b0
    ld c, e                                       ; $7ca4: $4b
    ld [de], a                                    ; $7ca5: $12
    call $4e36                                    ; $7ca6: $cd $36 $4e
    jr nc, jr_067_7cb7                            ; $7ca9: $30 $0c

    jp c, $e47f                                   ; $7cab: $da $7f $e4

    dec bc                                        ; $7cae: $0b
    ld l, h                                       ; $7caf: $6c
    add b                                         ; $7cb0: $80
    ld l, a                                       ; $7cb1: $6f
    ld d, b                                       ; $7cb2: $50
    push hl                                       ; $7cb3: $e5
    add [hl]                                      ; $7cb4: $86
    rrca                                          ; $7cb5: $0f
    ld [c], a                                     ; $7cb6: $e2

jr_067_7cb7:
    cp e                                          ; $7cb7: $bb
    dec d                                         ; $7cb8: $15
    sbc d                                         ; $7cb9: $9a
    rst $10                                       ; $7cba: $d7
    or h                                          ; $7cbb: $b4
    reti                                          ; $7cbc: $d9


    adc c                                         ; $7cbd: $89
    cp d                                          ; $7cbe: $ba
    add l                                         ; $7cbf: $85
    ld h, [hl]                                    ; $7cc0: $66
    dec sp                                        ; $7cc1: $3b
    rst $28                                       ; $7cc2: $ef
    or $32                                        ; $7cc3: $f6 $32
    call nz, Call_000_14e4                        ; $7cc5: $c4 $e4 $14
    sbc d                                         ; $7cc8: $9a
    add hl, de                                    ; $7cc9: $19

jr_067_7cca:
    and [hl]                                      ; $7cca: $a6
    ei                                            ; $7ccb: $fb
    scf                                           ; $7ccc: $37
    dec sp                                        ; $7ccd: $3b
    ld d, $ea                                     ; $7cce: $16 $ea
    jp $7f78                                      ; $7cd0: $c3 $78 $7f


jr_067_7cd3:
    ld [c], a                                     ; $7cd3: $e2
    cp $68                                        ; $7cd4: $fe $68
    sbc [hl]                                      ; $7cd6: $9e
    and [hl]                                      ; $7cd7: $a6
    inc e                                         ; $7cd8: $1c

jr_067_7cd9:
    ld a, [hl-]                                   ; $7cd9: $3a
    db $dd                                        ; $7cda: $dd
    jp nz, $bdb4                                  ; $7cdb: $c2 $b4 $bd

    ret nc                                        ; $7cde: $d0

    inc c                                         ; $7cdf: $0c
    reti                                          ; $7ce0: $d9


    ld a, a                                       ; $7ce1: $7f
    sbc [hl]                                      ; $7ce2: $9e
    ld d, d                                       ; $7ce3: $52
    ei                                            ; $7ce4: $fb
    ld h, d                                       ; $7ce5: $62
    add [hl]                                      ; $7ce6: $86
    ld b, c                                       ; $7ce7: $41
    sub l                                         ; $7ce8: $95
    ld sp, $eb43                                  ; $7ce9: $31 $43 $eb
    db $d3                                        ; $7cec: $d3
    ret c                                         ; $7ced: $d8

    jr c, jr_067_7cca                             ; $7cee: $38 $da

    ldh a, [rPCM12]                               ; $7cf0: $f0 $76
    pop bc                                        ; $7cf2: $c1
    xor d                                         ; $7cf3: $aa
    db $e3                                        ; $7cf4: $e3
    ld sp, $4d94                                  ; $7cf5: $31 $94 $4d
    ld b, h                                       ; $7cf8: $44
    jr nc, jr_067_7cd9                            ; $7cf9: $30 $de

    rra                                           ; $7cfb: $1f
    sub a                                         ; $7cfc: $97
    jr c, jr_067_7cd3                             ; $7cfd: $38 $d4

    bit 3, l                                      ; $7cff: $cb $5d
    ret nc                                        ; $7d01: $d0

    ld [hl-], a                                   ; $7d02: $32
    push hl                                       ; $7d03: $e5
    sbc [hl]                                      ; $7d04: $9e
    xor b                                         ; $7d05: $a8
    ld e, e                                       ; $7d06: $5b
    cp c                                          ; $7d07: $b9
    ld a, b                                       ; $7d08: $78
    ld h, a                                       ; $7d09: $67

Call_067_7d0a:
    rst $20                                       ; $7d0a: $e7
    and [hl]                                      ; $7d0b: $a6
    rrca                                          ; $7d0c: $0f
    add hl, bc                                    ; $7d0d: $09
    sbc d                                         ; $7d0e: $9a
    rst $00                                       ; $7d0f: $c7
    sub l                                         ; $7d10: $95
    and l                                         ; $7d11: $a5
    rst $08                                       ; $7d12: $cf
    sbc b                                         ; $7d13: $98
    and h                                         ; $7d14: $a4
    push de                                       ; $7d15: $d5
    cp e                                          ; $7d16: $bb
    adc h                                         ; $7d17: $8c
    ld b, c                                       ; $7d18: $41
    db $eb                                        ; $7d19: $eb
    db $d3                                        ; $7d1a: $d3
    ld e, b                                       ; $7d1b: $58
    daa                                           ; $7d1c: $27
    set 0, l                                      ; $7d1d: $cb $c5
    push bc                                       ; $7d1f: $c5
    ld l, c                                       ; $7d20: $69
    jp z, $8aa1                                   ; $7d21: $ca $a1 $8a

    xor [hl]                                      ; $7d24: $ae
    ld hl, sp+$0a                                 ; $7d25: $f8 $0a
    jp hl                                         ; $7d27: $e9


    add hl, de                                    ; $7d28: $19
    ld h, e                                       ; $7d29: $63

jr_067_7d2a:
    ld d, c                                       ; $7d2a: $51
    sbc a                                         ; $7d2b: $9f
    add $8e                                       ; $7d2c: $c6 $8e
    sub [hl]                                      ; $7d2e: $96
    ld a, [c]                                     ; $7d2f: $f2
    and l                                         ; $7d30: $a5
    ld b, a                                       ; $7d31: $47
    dec de                                        ; $7d32: $1b
    or b                                          ; $7d33: $b0
    ldh [$fe], a                                  ; $7d34: $e0 $fe
    nop                                           ; $7d36: $00
    db $db                                        ; $7d37: $db
    sub a                                         ; $7d38: $97
    inc h                                         ; $7d39: $24
    and h                                         ; $7d3a: $a4
    xor b                                         ; $7d3b: $a8
    db $ec                                        ; $7d3c: $ec
    ld d, $04                                     ; $7d3d: $16 $04
    ld b, c                                       ; $7d3f: $41
    cpl                                           ; $7d40: $2f
    ld e, l                                       ; $7d41: $5d
    ld l, b                                       ; $7d42: $68
    ld e, [hl]                                    ; $7d43: $5e
    ld l, e                                       ; $7d44: $6b
    ld b, b                                       ; $7d45: $40
    ld d, a                                       ; $7d46: $57
    or e                                          ; $7d47: $b3
    ld h, h                                       ; $7d48: $64
    ld l, [hl]                                    ; $7d49: $6e
    ld hl, sp+$00                                 ; $7d4a: $f8 $00
    add hl, bc                                    ; $7d4c: $09
    call Call_067_7590                            ; $7d4d: $cd $90 $75
    sub d                                         ; $7d50: $92
    sub l                                         ; $7d51: $95
    adc b                                         ; $7d52: $88
    jp z, Jump_067_6434                           ; $7d53: $ca $34 $64

    jp $7374                                      ; $7d56: $c3 $74 $73


    sub d                                         ; $7d59: $92
    or [hl]                                       ; $7d5a: $b6
    inc a                                         ; $7d5b: $3c
    call c, $f8bd                                 ; $7d5c: $dc $bd $f8
    ld b, b                                       ; $7d5f: $40
    ld d, c                                       ; $7d60: $51
    cpl                                           ; $7d61: $2f
    sbc l                                         ; $7d62: $9d
    ld a, b                                       ; $7d63: $78
    ld a, a                                       ; $7d64: $7f
    add a                                         ; $7d65: $87
    ld e, a                                       ; $7d66: $5f
    ld [c], a                                     ; $7d67: $e2
    ld h, b                                       ; $7d68: $60
    cpl                                           ; $7d69: $2f
    ld c, h                                       ; $7d6a: $4c
    cpl                                           ; $7d6b: $2f
    sbc l                                         ; $7d6c: $9d
    jr z, jr_067_7da9                             ; $7d6d: $28 $3a

    db $fc                                        ; $7d6f: $fc
    inc bc                                        ; $7d70: $03
    db $db                                        ; $7d71: $db
    add h                                         ; $7d72: $84
    ld d, e                                       ; $7d73: $53
    adc c                                         ; $7d74: $89
    ld a, $e9                                     ; $7d75: $3e $e9
    adc a                                         ; $7d77: $8f
    push hl                                       ; $7d78: $e5
    ld l, c                                       ; $7d79: $69
    ld b, b                                       ; $7d7a: $40
    cp l                                          ; $7d7b: $bd
    rst $28                                       ; $7d7c: $ef
    and a                                         ; $7d7d: $a7
    push af                                       ; $7d7e: $f5
    rra                                           ; $7d7f: $1f
    reti                                          ; $7d80: $d9


    ld l, c                                       ; $7d81: $69
    jr nc, jr_067_7d2a                            ; $7d82: $30 $a6

    add l                                         ; $7d84: $85
    inc hl                                        ; $7d85: $23
    xor d                                         ; $7d86: $aa
    and h                                         ; $7d87: $a4
    ld [hl], $0a                                  ; $7d88: $36 $0a
    and a                                         ; $7d8a: $a7
    dec hl                                        ; $7d8b: $2b
    cp [hl]                                       ; $7d8c: $be
    ld a, [hl+]                                   ; $7d8d: $2a
    xor h                                         ; $7d8e: $ac
    sbc $b5                                       ; $7d8f: $de $b5
    rst $38                                       ; $7d91: $ff
    dec l                                         ; $7d92: $2d
    ld [hl], a                                    ; $7d93: $77
    or a                                          ; $7d94: $b7
    ld d, a                                       ; $7d95: $57
    ld h, d                                       ; $7d96: $62
    ld c, c                                       ; $7d97: $49
    adc [hl]                                      ; $7d98: $8e
    sub l                                         ; $7d99: $95
    push af                                       ; $7d9a: $f5
    ld [hl], d                                    ; $7d9b: $72
    rla                                           ; $7d9c: $17
    xor h                                         ; $7d9d: $ac
    db $eb                                        ; $7d9e: $eb
    adc d                                         ; $7d9f: $8a
    cp b                                          ; $7da0: $b8
    ld a, d                                       ; $7da1: $7a
    ld l, e                                       ; $7da2: $6b
    dec de                                        ; $7da3: $1b
    sub a                                         ; $7da4: $97
    xor c                                         ; $7da5: $a9
    ccf                                           ; $7da6: $3f
    ld d, [hl]                                    ; $7da7: $56
    rla                                           ; $7da8: $17

jr_067_7da9:
    or l                                          ; $7da9: $b5
    sub h                                         ; $7daa: $94
    cpl                                           ; $7dab: $2f
    dec a                                         ; $7dac: $3d
    ld e, d                                       ; $7dad: $5a
    add hl, bc                                    ; $7dae: $09
    and a                                         ; $7daf: $a7
    ld c, l                                       ; $7db0: $4d
    add hl, sp                                    ; $7db1: $39
    ld [hl], h                                    ; $7db2: $74
    ld [hl], l                                    ; $7db3: $75
    and b                                         ; $7db4: $a0
    db $ec                                        ; $7db5: $ec
    cp a                                          ; $7db6: $bf
    sub $c8                                       ; $7db7: $d6 $c8
    ld a, [hl+]                                   ; $7db9: $2a
    inc h                                         ; $7dba: $24
    inc hl                                        ; $7dbb: $23
    sbc e                                         ; $7dbc: $9b
    ld [hl], d                                    ; $7dbd: $72
    add sp, $0a                                   ; $7dbe: $e8 $0a
    ld a, [c]                                     ; $7dc0: $f2
    ld l, [hl]                                    ; $7dc1: $6e
    ld [c], a                                     ; $7dc2: $e2
    inc b                                         ; $7dc3: $04
    ld l, b                                       ; $7dc4: $68
    rla                                           ; $7dc5: $17

jr_067_7dc6:
    xor h                                         ; $7dc6: $ac
    ld l, b                                       ; $7dc7: $68
    sbc l                                         ; $7dc8: $9d
    sbc [hl]                                      ; $7dc9: $9e
    ld l, e                                       ; $7dca: $6b
    ld c, h                                       ; $7dcb: $4c
    dec bc                                        ; $7dcc: $0b
    and a                                         ; $7dcd: $a7
    db $db                                        ; $7dce: $db
    sub b                                         ; $7dcf: $90
    or [hl]                                       ; $7dd0: $b6
    jp hl                                         ; $7dd1: $e9


    or [hl]                                       ; $7dd2: $b6
    ld sp, $b487                                  ; $7dd3: $31 $87 $b4
    dec sp                                        ; $7dd6: $3b
    ld d, b                                       ; $7dd7: $50
    db $eb                                        ; $7dd8: $eb
    db $d3                                        ; $7dd9: $d3
    ld e, b                                       ; $7dda: $58
    ld [hl], $8f                                  ; $7ddb: $36 $8f
    add hl, de                                    ; $7ddd: $19
    ld a, [hl+]                                   ; $7dde: $2a
    ld sp, hl                                     ; $7ddf: $f9
    or h                                          ; $7de0: $b4
    ld e, h                                       ; $7de1: $5c
    ld [hl-], a                                   ; $7de2: $32
    cp e                                          ; $7de3: $bb
    ld a, a                                       ; $7de4: $7f
    dec h                                         ; $7de5: $25
    ld e, $37                                     ; $7de6: $1e $37
    add $79                                       ; $7de8: $c6 $79
    add hl, de                                    ; $7dea: $19
    dec c                                         ; $7deb: $0d
    add sp, -$72                                  ; $7dec: $e8 $8e
    dec [hl]                                      ; $7dee: $35
    rrca                                          ; $7def: $0f
    jp $6a6c                                      ; $7df0: $c3 $6c $6a


    jp nz, $ed02                                  ; $7df3: $c2 $02 $ed

    ld c, d                                       ; $7df6: $4a
    jr c, jr_067_7dc6                             ; $7df7: $38 $cd

    or b                                          ; $7df9: $b0
    cp $13                                        ; $7dfa: $fe $13
    di                                            ; $7dfc: $f3
    ld c, e                                       ; $7dfd: $4b
    ld c, a                                       ; $7dfe: $4f
    cp c                                          ; $7dff: $b9
    ld e, e                                       ; $7e00: $5b
    pop de                                        ; $7e01: $d1
    dec b                                         ; $7e02: $05
    dec hl                                        ; $7e03: $2b
    jp z, Jump_067_718d                           ; $7e04: $ca $8d $71

    adc d                                         ; $7e07: $8a
    sbc b                                         ; $7e08: $98
    ld [hl], d                                    ; $7e09: $72
    adc h                                         ; $7e0a: $8c
    ld a, c                                       ; $7e0b: $79
    jp z, $0317                                   ; $7e0c: $ca $17 $03

    db $eb                                        ; $7e0f: $eb
    push hl                                       ; $7e10: $e5
    xor [hl]                                      ; $7e11: $ae
    ld b, d                                       ; $7e12: $42
    ld a, a                                       ; $7e13: $7f
    ld h, a                                       ; $7e14: $67
    ld [hl], e                                    ; $7e15: $73
    rst $30                                       ; $7e16: $f7
    ld d, d                                       ; $7e17: $52
    xor b                                         ; $7e18: $a8
    ccf                                           ; $7e19: $3f
    ld sp, $a360                                  ; $7e1a: $31 $60 $a3
    ld b, h                                       ; $7e1d: $44
    and a                                         ; $7e1e: $a7
    sub d                                         ; $7e1f: $92
    ld c, a                                       ; $7e20: $4f
    ld l, e                                       ; $7e21: $6b
    db $f4                                        ; $7e22: $f4
    ld e, a                                       ; $7e23: $5f
    and b                                         ; $7e24: $a0
    ld b, h                                       ; $7e25: $44
    call z, Call_000_3fa8                         ; $7e26: $cc $a8 $3f
    xor d                                         ; $7e29: $aa
    cp e                                          ; $7e2a: $bb
    xor l                                         ; $7e2b: $ad
    or b                                          ; $7e2c: $b0
    call c, Call_067_7f87                         ; $7e2d: $dc $87 $7f
    add a                                         ; $7e30: $87
    sbc a                                         ; $7e31: $9f
    add e                                         ; $7e32: $83
    daa                                           ; $7e33: $27
    ldh [$c5], a                                  ; $7e34: $e0 $c5
    db $e4                                        ; $7e36: $e4
    xor b                                         ; $7e37: $a8
    xor b                                         ; $7e38: $a8
    sbc e                                         ; $7e39: $9b
    sub e                                         ; $7e3a: $93
    or h                                          ; $7e3b: $b4
    push hl                                       ; $7e3c: $e5
    pop hl                                        ; $7e3d: $e1
    ldh a, [$fb]                                  ; $7e3e: $f0 $fb
    inc bc                                        ; $7e40: $03
    adc c                                         ; $7e41: $89
    inc de                                        ; $7e42: $13
    jr nz, jr_067_7e8c                            ; $7e43: $20 $47

    db $eb                                        ; $7e45: $eb
    sub h                                         ; $7e46: $94
    sub $e9                                       ; $7e47: $d6 $e9
    ld d, [hl]                                    ; $7e49: $56
    add $3c                                       ; $7e4a: $c6 $3c
    dec c                                         ; $7e4c: $0d
    db $ec                                        ; $7e4d: $ec
    dec b                                         ; $7e4e: $05
    ld [hl], c                                    ; $7e4f: $71
    push af                                       ; $7e50: $f5
    db $f4                                        ; $7e51: $f4
    ld a, c                                       ; $7e52: $79
    sbc $f2                                       ; $7e53: $de $f2
    ld [bc], a                                    ; $7e55: $02
    inc bc                                        ; $7e56: $03
    ld [$d8d3], a                                 ; $7e57: $ea $d3 $d8
    jp hl                                         ; $7e5a: $e9


    add d                                         ; $7e5b: $82
    dec d                                         ; $7e5c: $15
    xor l                                         ; $7e5d: $ad
    ld a, $8d                                     ; $7e5e: $3e $8d
    ld h, l                                       ; $7e60: $65
    di                                            ; $7e61: $f3
    sbc b                                         ; $7e62: $98
    pop hl                                        ; $7e63: $e1
    xor [hl]                                      ; $7e64: $ae
    ld hl, sp-$61                                 ; $7e65: $f8 $9f
    sbc h                                         ; $7e67: $9c
    and [hl]                                      ; $7e68: $a6
    inc e                                         ; $7e69: $1c
    cp d                                          ; $7e6a: $ba
    xor [hl]                                      ; $7e6b: $ae
    ld [$efbc], a                                 ; $7e6c: $ea $bc $ef
    ld a, a                                       ; $7e6f: $7f
    adc b                                         ; $7e70: $88
    add hl, de                                    ; $7e71: $19
    ld [de], a                                    ; $7e72: $12
    ld sp, $69a3                                  ; $7e73: $31 $a3 $69
    ld h, e                                       ; $7e76: $63
    inc c                                         ; $7e77: $0c
    xor b                                         ; $7e78: $a8
    ld c, a                                       ; $7e79: $4f
    ld h, e                                       ; $7e7a: $63
    db $e3                                        ; $7e7b: $e3
    ld l, b                                       ; $7e7c: $68
    rst $38                                       ; $7e7d: $ff
    pop af                                        ; $7e7e: $f1
    ret c                                         ; $7e7f: $d8

    or e                                          ; $7e80: $b3
    ld [hl], d                                    ; $7e81: $72
    or h                                          ; $7e82: $b4
    ld h, c                                       ; $7e83: $61
    sbc [hl]                                      ; $7e84: $9e
    ld d, [hl]                                    ; $7e85: $56
    ld a, [c]                                     ; $7e86: $f2
    ld l, c                                       ; $7e87: $69
    add hl, sp                                    ; $7e88: $39
    db $dd                                        ; $7e89: $dd
    ld [hl], $e6                                  ; $7e8a: $36 $e6

jr_067_7e8c:
    add c                                         ; $7e8c: $81
    push hl                                       ; $7e8d: $e5
    cp e                                          ; $7e8e: $bb
    ld d, a                                       ; $7e8f: $57
    adc h                                         ; $7e90: $8c
    dec hl                                        ; $7e91: $2b
    ld [c], a                                     ; $7e92: $e2
    ld [$1ad1], a                                 ; $7e93: $ea $d1 $1a
    ld h, a                                       ; $7e96: $67
    ld b, l                                       ; $7e97: $45
    adc c                                         ; $7e98: $89
    sbc b                                         ; $7e99: $98
    ld d, c                                       ; $7e9a: $51
    halt                                          ; $7e9b: $76
    dec bc                                        ; $7e9c: $0b
    add d                                         ; $7e9d: $82
    and b                                         ; $7e9e: $a0
    sub a                                         ; $7e9f: $97
    xor $3f                                       ; $7ea0: $ee $3f
    or d                                          ; $7ea2: $b2
    ld c, [hl]                                    ; $7ea3: $4e
    or d                                          ; $7ea4: $b2
    ld b, $f5                                     ; $7ea5: $06 $f5
    ld b, a                                       ; $7ea7: $47
    inc sp                                        ; $7ea8: $33
    rst $28                                       ; $7ea9: $ef
    adc d                                         ; $7eaa: $8a
    and a                                         ; $7eab: $a7
    rst $00                                       ; $7eac: $c7
    ret c                                         ; $7ead: $d8

    dec d                                         ; $7eae: $15
    push hl                                       ; $7eaf: $e5
    ld l, b                                       ; $7eb0: $68
    jp $05db                                      ; $7eb1: $c3 $db $05


    dec hl                                        ; $7eb4: $2b
    and a                                         ; $7eb5: $a7
    ld e, e                                       ; $7eb6: $5b
    sbc b                                         ; $7eb7: $98
    or [hl]                                       ; $7eb8: $b6
    rla                                           ; $7eb9: $17
    xor $0f                                       ; $7eba: $ee $0f
    db $db                                        ; $7ebc: $db
    add $3c                                       ; $7ebd: $c6 $3c
    or b                                          ; $7ebf: $b0
    cp h                                          ; $7ec0: $bc
    and c                                         ; $7ec1: $a1
    rst $20                                       ; $7ec2: $e7
    cp c                                          ; $7ec3: $b9
    db $f4                                        ; $7ec4: $f4
    ld [hl], e                                    ; $7ec5: $73
    dec de                                        ; $7ec6: $1b
    ld a, d                                       ; $7ec7: $7a
    ld l, $d4                                     ; $7ec8: $2e $d4
    rst $20                                       ; $7eca: $e7
    sbc a                                         ; $7ecb: $9f
    db $e4                                        ; $7ecc: $e4
    add $0c                                       ; $7ecd: $c6 $0c
    ld d, c                                       ; $7ecf: $51
    or a                                          ; $7ed0: $b7
    ret nc                                        ; $7ed1: $d0

    ld l, h                                       ; $7ed2: $6c
    and a                                         ; $7ed3: $a7
    xor b                                         ; $7ed4: $a8
    db $f4                                        ; $7ed5: $f4
    add hl, de                                    ; $7ed6: $19
    sub e                                         ; $7ed7: $93
    call c, $1b38                                 ; $7ed8: $dc $38 $1b
    ld a, $e2                                     ; $7edb: $3e $e2
    add hl, hl                                    ; $7edd: $29
    rst $30                                       ; $7ede: $f7
    ld a, [bc]                                    ; $7edf: $0a
    call $c56b                                    ; $7ee0: $cd $6b $c5
    add d                                         ; $7ee3: $82
    cp e                                          ; $7ee4: $bb
    sub a                                         ; $7ee5: $97
    ld hl, $ff6a                                  ; $7ee6: $21 $6a $ff
    adc c                                         ; $7ee9: $89
    ld a, [$03bf]                                 ; $7eea: $fa $bf $03
    db $e3                                        ; $7eed: $e3
    rst $38                                       ; $7eee: $ff
    ret c                                         ; $7eef: $d8

    add b                                         ; $7ef0: $80
    and [hl]                                      ; $7ef1: $a6
    inc e                                         ; $7ef2: $1c
    ld a, [$4f34]                                 ; $7ef3: $fa $34 $4f
    ld d, a                                       ; $7ef6: $57
    ld a, h                                       ; $7ef7: $7c
    db $fd                                        ; $7ef8: $fd
    daa                                           ; $7ef9: $27
    and $17                                       ; $7efa: $e6 $17
    dec e                                         ; $7efc: $1d
    xor l                                         ; $7efd: $ad
    inc l                                         ; $7efe: $2c
    rst $38                                       ; $7eff: $ff
    adc c                                         ; $7f00: $89
    add hl, de                                    ; $7f01: $19
    ccf                                           ; $7f02: $3f
    ld c, h                                       ; $7f03: $4c
    call nc, $9c28                                ; $7f04: $d4 $28 $9c
    ld h, [hl]                                    ; $7f07: $66
    ld b, h                                       ; $7f08: $44
    db $dd                                        ; $7f09: $dd
    db $f4                                        ; $7f0a: $f4
    ld bc, $2197                                  ; $7f0b: $01 $97 $21
    ld h, $e7                                     ; $7f0e: $26 $e7
    xor $15                                       ; $7f10: $ee $15
    db $e3                                        ; $7f12: $e3
    sbc d                                         ; $7f13: $9a
    ld h, c                                       ; $7f14: $61
    dec c                                         ; $7f15: $0d
    add sp, $11                                   ; $7f16: $e8 $11
    ld e, [hl]                                    ; $7f18: $5e
    rla                                           ; $7f19: $17
    scf                                           ; $7f1a: $37
    ld a, d                                       ; $7f1b: $7a
    sbc l                                         ; $7f1c: $9d
    inc a                                         ; $7f1d: $3c
    or d                                          ; $7f1e: $b2
    sub d                                         ; $7f1f: $92
    ld sp, $0ad0                                  ; $7f20: $31 $d0 $0a
    jp hl                                         ; $7f23: $e9


    add hl, de                                    ; $7f24: $19
    ld h, e                                       ; $7f25: $63
    and a                                         ; $7f26: $a7
    ld a, $52                                     ; $7f27: $3e $52
    ld c, $71                                     ; $7f29: $0e $71
    cp d                                          ; $7f2b: $ba
    ld l, l                                       ; $7f2c: $6d
    call z, $cb03                                 ; $7f2d: $cc $03 $cb
    rst $30                                       ; $7f30: $f7
    rlca                                          ; $7f31: $07
    sub a                                         ; $7f32: $97
    ld [c], a                                     ; $7f33: $e2
    add a                                         ; $7f34: $87
    rlca                                          ; $7f35: $07
    ld [hl], d                                    ; $7f36: $72
    or h                                          ; $7f37: $b4
    ld c, [hl]                                    ; $7f38: $4e
    or d                                          ; $7f39: $b2
    ccf                                           ; $7f3a: $3f
    dec l                                         ; $7f3b: $2d
    or e                                          ; $7f3c: $b3
    ld h, c                                       ; $7f3d: $61
    cp d                                          ; $7f3e: $ba
    add hl, sp                                    ; $7f3f: $39
    ld c, c                                       ; $7f40: $49
    ld e, e                                       ; $7f41: $5b

Call_067_7f42:
    ld e, $7a                                     ; $7f42: $1e $7a
    dec h                                         ; $7f44: $25
    xor b                                         ; $7f45: $a8
    dec bc                                        ; $7f46: $0b
    halt                                          ; $7f47: $76
    sbc $4d                                       ; $7f48: $de $4d
    ld e, b                                       ; $7f4a: $58
    ret nc                                        ; $7f4b: $d0

    inc c                                         ; $7f4c: $0c
    ld e, c                                       ; $7f4d: $59
    jp z, Jump_000_1e97                           ; $7f4e: $ca $97 $1e

    ld l, l                                       ; $7f51: $6d
    jp z, $fea1                                   ; $7f52: $ca $a1 $fe

    inc b                                         ; $7f55: $04
    ret z                                         ; $7f56: $c8

    xor [hl]                                      ; $7f57: $ae
    sbc [hl]                                      ; $7f58: $9e
    push de                                       ; $7f59: $d5
    db $e3                                        ; $7f5a: $e3
    db $f4                                        ; $7f5b: $f4
    and a                                         ; $7f5c: $a7
    ld [hl], l                                    ; $7f5d: $75
    cp d                                          ; $7f5e: $ba
    ld l, l                                       ; $7f5f: $6d
    call z, $cb03                                 ; $7f60: $cc $03 $cb
    adc l                                         ; $7f63: $8d
    db $d3                                        ; $7f64: $d3
    dec e                                         ; $7f65: $1d
    ld l, e                                       ; $7f66: $6b
    ld e, $86                                     ; $7f67: $1e $86
    ld l, c                                       ; $7f69: $69
    jp z, Jump_000_2ba1                           ; $7f6a: $ca $a1 $2b

    ret z                                         ; $7f6d: $c8

    xor $5f                                       ; $7f6e: $ee $5f
    adc c                                         ; $7f70: $89
    rst $00                                       ; $7f71: $c7
    adc l                                         ; $7f72: $8d
    ld [hl], c                                    ; $7f73: $71
    ld e, [hl]                                    ; $7f74: $5e
    add $fd                                       ; $7f75: $c6 $fd
    ld bc, $5f87                                  ; $7f77: $01 $87 $5f
    or [hl]                                       ; $7f7a: $b6
    ld d, [hl]                                    ; $7f7b: $56
    rrca                                          ; $7f7c: $0f
    db $e4                                        ; $7f7d: $e4
    ld e, l                                       ; $7f7e: $5d
    pop af                                        ; $7f7f: $f1
    and [hl]                                      ; $7f80: $a6
    ld de, $ba33                                  ; $7f81: $11 $33 $ba
    ld a, [hl-]                                   ; $7f84: $3a
    ld [hl], b                                    ; $7f85: $70
    and e                                         ; $7f86: $a3

Call_067_7f87:
    and d                                         ; $7f87: $a2
    ld bc, $3cfe                                  ; $7f88: $01 $fe $3c
    cp l                                          ; $7f8b: $bd
    ccf                                           ; $7f8c: $3f
    ld [c], a                                     ; $7f8d: $e2
    ld a, $63                                     ; $7f8e: $3e $63
    sub d                                         ; $7f90: $92
    sbc d                                         ; $7f91: $9a
    or c                                          ; $7f92: $b1
    ld [hl], c                                    ; $7f93: $71
    ld [hl], $7d                                  ; $7f94: $36 $7d
    ld [c], a                                     ; $7f96: $e2
    cpl                                           ; $7f97: $2f
    ld b, $36                                     ; $7f98: $06 $36
    ld a, [bc]                                    ; $7f9a: $0a
    rst $20                                       ; $7f9b: $e7
    cp $00                                        ; $7f9c: $fe $00
    sub a                                         ; $7f9e: $97
    ld hl, $7666                                  ; $7f9f: $21 $66 $76
    ld e, h                                       ; $7fa2: $5c
    ld [hl], $76                                  ; $7fa3: $36 $76
    add l                                         ; $7fa5: $85
    ld e, l                                       ; $7fa6: $5d
    and d                                         ; $7fa7: $a2
    ld l, [hl]                                    ; $7fa8: $6e
    and c                                         ; $7fa9: $a1
    reti                                          ; $7faa: $d9


    adc $4d                                       ; $7fab: $ce $4d
    db $ed                                        ; $7fad: $ed
    ld h, l                                       ; $7fae: $65
    sub b                                         ; $7faf: $90
    and e                                         ; $7fb0: $a3

Call_067_7fb1:
    dec c                                         ; $7fb1: $0d
    add sp, -$2c                                  ; $7fb2: $e8 $d4
    ldh a, [$3b]                                  ; $7fb4: $f0 $3b
    rra                                           ; $7fb6: $1f
    ld b, [hl]                                    ; $7fb7: $46
    db $db                                        ; $7fb8: $db
    ldh a, [rSB]                                  ; $7fb9: $f0 $01
    sub a                                         ; $7fbb: $97
    ld b, c                                       ; $7fbc: $41
    adc [hl]                                      ; $7fbd: $8e
    ld [hl], $a0                                  ; $7fbe: $36 $a0
    ld [hl], c                                    ; $7fc0: $71
    or h                                          ; $7fc1: $b4
    ld bc, $f3ea                                  ; $7fc2: $01 $ea $f3
    ld c, a                                       ; $7fc5: $4f
    jp nc, Jump_000_0fee                          ; $7fc6: $d2 $ee $0f

    ld [c], a                                     ; $7fc9: $e2
    cpl                                           ; $7fca: $2f
    ld b, $96                                     ; $7fcb: $06 $96
    ld a, a                                       ; $7fcd: $7f
    ld [hl], d                                    ; $7fce: $72
    sbc d                                         ; $7fcf: $9a
    ld [hl], d                                    ; $7fd0: $72
    ld l, b                                       ; $7fd1: $68
    ret nz                                        ; $7fd2: $c0

    ld [$cfb1], a                                 ; $7fd3: $ea $b1 $cf
    ld a, [bc]                                    ; $7fd6: $0a
    ld d, a                                       ; $7fd7: $57
    inc [hl]                                      ; $7fd8: $34
    ld a, [bc]                                    ; $7fd9: $0a
    and a                                         ; $7fda: $a7
    reti                                          ; $7fdb: $d9


    adc c                                         ; $7fdc: $89
    cp d                                          ; $7fdd: $ba
    dec b                                         ; $7fde: $05
    ld h, $df                                     ; $7fdf: $26 $df

Jump_067_7fe1:
    ld b, h                                       ; $7fe1: $44
    call c, $ff1f                                 ; $7fe2: $dc $1f $ff
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
