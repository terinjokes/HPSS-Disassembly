; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $05e", ROMX[$4000], BANK[$5e]

    ld e, [hl]                                    ; $4000: $5e
    ld a, h                                       ; $4001: $7c
    ld d, c                                       ; $4002: $51
    and c                                         ; $4003: $a1
    add hl, sp                                    ; $4004: $39
    ld b, $24                                     ; $4005: $06 $24
    xor d                                         ; $4007: $aa
    inc hl                                        ; $4008: $23
    ld c, d                                       ; $4009: $4a
    inc sp                                        ; $400a: $33
    db $18, $c3                                   ; $400b: $18 $c3
    ld l, c                                       ; $400d: $69
    ld de, $f825                                  ; $400e: $11 $25 $f8
    dec [hl]                                      ; $4011: $35
    inc sp                                        ; $4012: $33
    rl h                                          ; $4013: $cb $14
    ld h, l                                       ; $4015: $65
    ld a, e                                       ; $4016: $7b
    rst $18                                       ; $4017: $df
    or h                                          ; $4018: $b4
    ld d, $a7                                     ; $4019: $16 $a7
    ld c, c                                       ; $401b: $49
    ld sp, hl                                     ; $401c: $f9
    ld e, e                                       ; $401d: $5b
    rst $38                                       ; $401e: $ff
    ld d, a                                       ; $401f: $57
    adc a                                         ; $4020: $8f
    inc de                                        ; $4021: $13
    ld sp, hl                                     ; $4022: $f9
    sbc a                                         ; $4023: $9f
    ld a, [hl]                                    ; $4024: $7e
    call $df71                                    ; $4025: $cd $71 $df
    db $db                                        ; $4028: $db
    ld h, e                                       ; $4029: $63
    ld e, d                                       ; $402a: $5a
    sbc h                                         ; $402b: $9c
    cp $0b                                        ; $402c: $fe $0b
    nop                                           ; $402e: $00
    ld a, h                                       ; $402f: $7c
    ld [hl], c                                    ; $4030: $71
    ld h, [hl]                                    ; $4031: $66
    ld l, h                                       ; $4032: $6c

jr_05e_4033:
    ret                                           ; $4033: $c9


    daa                                           ; $4034: $27
    ld l, d                                       ; $4035: $6a
    xor [hl]                                      ; $4036: $ae
    sub d                                         ; $4037: $92
    add e                                         ; $4038: $83
    ld c, l                                       ; $4039: $4d
    ld h, b                                       ; $403a: $60
    ld a, [bc]                                    ; $403b: $0a
    ld c, e                                       ; $403c: $4b
    ld a, b                                       ; $403d: $78
    adc $68                                       ; $403e: $ce $68
    ld a, c                                       ; $4040: $79
    adc d                                         ; $4041: $8a
    jp hl                                         ; $4042: $e9


    adc h                                         ; $4043: $8c
    or e                                          ; $4044: $b3
    inc de                                        ; $4045: $13
    call $f35e                                    ; $4046: $cd $5e $f3
    ld b, a                                       ; $4049: $47
    call c, $96f7                                 ; $404a: $dc $f7 $96
    and $d8                                       ; $404d: $e6 $d8
    jp nc, $f31c                                  ; $404f: $d2 $1c $f3

    cp a                                          ; $4052: $bf
    ld [hl], h                                    ; $4053: $74
    adc a                                         ; $4054: $8f
    ld [hl], c                                    ; $4055: $71
    adc c                                         ; $4056: $89
    add a                                         ; $4057: $87
    ld c, d                                       ; $4058: $4a
    ld sp, hl                                     ; $4059: $f9
    or e                                          ; $405a: $b3
    ei                                            ; $405b: $fb
    xor l                                         ; $405c: $ad
    ld d, a                                       ; $405d: $57
    cp l                                          ; $405e: $bd
    pop de                                        ; $405f: $d1
    ld b, h                                       ; $4060: $44
    rla                                           ; $4061: $17
    nop                                           ; $4062: $00
    ld a, h                                       ; $4063: $7c
    ld d, c                                       ; $4064: $51
    and c                                         ; $4065: $a1
    ld a, [hl]                                    ; $4066: $7e
    rst $38                                       ; $4067: $ff
    rst $38                                       ; $4068: $ff
    cp $2f                                        ; $4069: $fe $2f
    ld a, c                                       ; $406b: $79
    adc d                                         ; $406c: $8a
    jp hl                                         ; $406d: $e9


    adc h                                         ; $406e: $8c
    or e                                          ; $406f: $b3
    inc de                                        ; $4070: $13
    ld c, e                                       ; $4071: $4b

Call_05e_4072:
    inc de                                        ; $4072: $13
    ld a, e                                       ; $4073: $7b
    rst $20                                       ; $4074: $e7
    cp b                                          ; $4075: $b8
    rst $28                                       ; $4076: $ef
    db $ed                                        ; $4077: $ed
    ld h, c                                       ; $4078: $61
    db $fd                                        ; $4079: $fd
    ld c, c                                       ; $407a: $49
    ld c, l                                       ; $407b: $4d
    inc a                                         ; $407c: $3c
    ld [hl], a                                    ; $407d: $77
    ld l, b                                       ; $407e: $68
    ld b, $63                                     ; $407f: $06 $63
    ld l, b                                       ; $4081: $68
    db $fd                                        ; $4082: $fd
    jp z, $970e                                   ; $4083: $ca $0e $97

    ld sp, hl                                     ; $4086: $f9
    or h                                          ; $4087: $b4
    ld [hl], l                                    ; $4088: $75
    ld bc, $99bc                                  ; $4089: $01 $bc $99
    push bc                                       ; $408c: $c5
    add hl, bc                                    ; $408d: $09
    dec e                                         ; $408e: $1d
    ld c, d                                       ; $408f: $4a
    db $e3                                        ; $4090: $e3
    or $a9                                        ; $4091: $f6 $a9
    ld c, b                                       ; $4093: $48
    sbc [hl]                                      ; $4094: $9e
    ld h, d                                       ; $4095: $62
    ld a, [hl-]                                   ; $4096: $3a
    db $e3                                        ; $4097: $e3
    db $ec                                        ; $4098: $ec
    sbc h                                         ; $4099: $9c
    ld hl, sp-$69                                 ; $409a: $f8 $97
    jr c, jr_05e_40e1                             ; $409c: $38 $43

    db $fd                                        ; $409e: $fd
    ld l, e                                       ; $409f: $6b
    dec hl                                        ; $40a0: $2b
    inc a                                         ; $40a1: $3c
    rst $20                                       ; $40a2: $e7
    dec [hl]                                      ; $40a3: $35
    rst $00                                       ; $40a4: $c7
    add b                                         ; $40a5: $80
    ld b, h                                       ; $40a6: $44
    ld d, l                                       ; $40a7: $55
    sbc b                                         ; $40a8: $98
    cp l                                          ; $40a9: $bd
    ld h, [hl]                                    ; $40aa: $66
    jr nc, jr_05e_4033                            ; $40ab: $30 $86

    db $d3                                        ; $40ad: $d3
    jp nz, Jump_000_2fec                          ; $40ae: $c2 $ec $2f

    nop                                           ; $40b1: $00
    sbc h                                         ; $40b2: $9c
    ld e, e                                       ; $40b3: $5b
    and e                                         ; $40b4: $a3
    call nc, Call_05e_7594                        ; $40b5: $d4 $94 $75
    sub [hl]                                      ; $40b8: $96
    ld l, c                                       ; $40b9: $69
    ld h, [hl]                                    ; $40ba: $66
    sub [hl]                                      ; $40bb: $96
    sub c                                         ; $40bc: $91
    xor $38                                       ; $40bd: $ee $38
    inc sp                                        ; $40bf: $33
    or [hl]                                       ; $40c0: $b6
    db $e4                                        ; $40c1: $e4
    inc de                                        ; $40c2: $13
    ld [hl], l                                    ; $40c3: $75
    ld [hl], e                                    ; $40c4: $73
    db $dd                                        ; $40c5: $dd
    ld [hl], h                                    ; $40c6: $74
    sbc d                                         ; $40c7: $9a
    db $e4                                        ; $40c8: $e4
    ld h, b                                       ; $40c9: $60
    inc de                                        ; $40ca: $13
    sbc b                                         ; $40cb: $98
    ld a, e                                       ; $40cc: $7b
    sbc d                                         ; $40cd: $9a
    ld l, $71                                     ; $40ce: $2e $71
    add [hl]                                      ; $40d0: $86
    or b                                          ; $40d1: $b0
    sub h                                         ; $40d2: $94
    dec e                                         ; $40d3: $1d
    sbc d                                         ; $40d4: $9a
    pop bc                                        ; $40d5: $c1
    ret c                                         ; $40d6: $d8

    sbc e                                         ; $40d7: $9b
    db $fd                                        ; $40d8: $fd
    dec b                                         ; $40d9: $05
    nop                                           ; $40da: $00
    cp h                                          ; $40db: $bc
    sub h                                         ; $40dc: $94
    ld l, c                                       ; $40dd: $69
    ld h, [hl]                                    ; $40de: $66
    sub [hl]                                      ; $40df: $96
    db $dd                                        ; $40e0: $dd

jr_05e_40e1:
    ld h, h                                       ; $40e1: $64
    ld b, [hl]                                    ; $40e2: $46
    rst $10                                       ; $40e3: $d7
    ld [hl], l                                    ; $40e4: $75
    xor c                                         ; $40e5: $a9
    jr nc, jr_05e_4111                            ; $40e6: $30 $29

    db $db                                        ; $40e8: $db
    db $d3                                        ; $40e9: $d3
    and h                                         ; $40ea: $a4
    add hl, sp                                    ; $40eb: $39
    xor $7b                                       ; $40ec: $ee $7b
    ld a, e                                       ; $40ee: $7b
    ld c, h                                       ; $40ef: $4c
    adc e                                         ; $40f0: $8b
    db $d3                                        ; $40f1: $d3
    ld a, a                                       ; $40f2: $7f
    ld e, l                                       ; $40f3: $5d
    sub a                                         ; $40f4: $97
    ldh a, [$ec]                                  ; $40f5: $f0 $ec
    ld b, h                                       ; $40f7: $44
    ld e, c                                       ; $40f8: $59
    add sp, -$72                                  ; $40f9: $e8 $8e
    inc sp                                        ; $40fb: $33
    ld h, e                                       ; $40fc: $63
    ld c, e                                       ; $40fd: $4b
    cp $33                                        ; $40fe: $fe $33
    or $8d                                        ; $4100: $f6 $8d
    dec h                                         ; $4102: $25
    rlca                                          ; $4103: $07
    ld bc, $0281                                  ; $4104: $01 $81 $02
    ld a, h                                       ; $4107: $7c
    dec sp                                        ; $4108: $3b
    ld l, l                                       ; $4109: $6d
    push de                                       ; $410a: $d5
    ld b, h                                       ; $410b: $44
    and a                                         ; $410c: $a7
    ld c, c                                       ; $410d: $49
    pop de                                        ; $410e: $d1
    or [hl]                                       ; $410f: $b6
    dec c                                         ; $4110: $0d

jr_05e_4111:
    dec h                                         ; $4111: $25
    sbc $cc                                       ; $4112: $de $cc
    ld [hl-], a                                   ; $4114: $32
    add hl, sp                                    ; $4115: $39
    ret c                                         ; $4116: $d8

    inc b                                         ; $4117: $04
    and $9e                                       ; $4118: $e6 $9e
    ld h, $cd                                     ; $411a: $26 $cd
    ld sp, $5120                                  ; $411c: $31 $20 $51
    dec d                                         ; $411f: $15
    ld h, [hl]                                    ; $4120: $66
    xor a                                         ; $4121: $af
    add hl, de                                    ; $4122: $19

jr_05e_4123:
    adc h                                         ; $4123: $8c
    pop hl                                        ; $4124: $e1
    or h                                          ; $4125: $b4
    jr nc, jr_05e_4123                            ; $4126: $30 $fb

    dec bc                                        ; $4128: $0b
    nop                                           ; $4129: $00
    cp h                                          ; $412a: $bc
    sbc c                                         ; $412b: $99
    ld h, l                                       ; $412c: $65
    sbc d                                         ; $412d: $9a
    ret c                                         ; $412e: $d8

    dec sp                                        ; $412f: $3b
    rst $00                                       ; $4130: $c7
    ld a, l                                       ; $4131: $7d
    ld l, a                                       ; $4132: $6f
    adc a                                         ; $4133: $8f
    ld l, c                                       ; $4134: $69
    ld [hl], c                                    ; $4135: $71
    ld a, [$936d]                                 ; $4136: $fa $6d $93
    or d                                          ; $4139: $b2
    db $10                                        ; $413a: $10
    sub [hl]                                      ; $413b: $96
    db $fc                                        ; $413c: $fc
    sub c                                         ; $413d: $91
    add $d9                                       ; $413e: $c6 $d9
    or a                                          ; $4140: $b7
    ld a, [hl]                                    ; $4141: $7e
    add hl, de                                    ; $4142: $19
    or d                                          ; $4143: $b2
    xor $fd                                       ; $4144: $ee $fd
    ld c, e                                       ; $4146: $4b
    sbc h                                         ; $4147: $9c
    ld hl, $e52c                                  ; $4148: $21 $2c $e5
    rst $08                                       ; $414b: $cf
    xor $ff                                       ; $414c: $ee $ff
    jp nc, Jump_000_031c                          ; $414e: $d2 $1c $03

    ld [de], a                                    ; $4151: $12
    ld d, l                                       ; $4152: $55
    ld h, c                                       ; $4153: $61
    or $9a                                        ; $4154: $f6 $9a
    pop bc                                        ; $4156: $c1
    jr jr_05e_41a7                                ; $4157: $18 $4e

    dec bc                                        ; $4159: $0b
    or e                                          ; $415a: $b3
    cp a                                          ; $415b: $bf
    nop                                           ; $415c: $00
    sbc h                                         ; $415d: $9c
    set 4, h                                      ; $415e: $cb $e4
    ld h, b                                       ; $4160: $60
    inc de                                        ; $4161: $13
    ld c, b                                       ; $4162: $48
    pop af                                        ; $4163: $f1
    cp h                                          ; $4164: $bc
    add hl, bc                                    ; $4165: $09
    ld [de], a                                    ; $4166: $12

jr_05e_4167:
    ld [c], a                                     ; $4167: $e2
    db $db                                        ; $4168: $db
    db $db                                        ; $4169: $db
    ld [hl-], a                                   ; $416a: $32
    ld h, a                                       ; $416b: $67
    inc e                                         ; $416c: $1c
    ld [hl+], a                                   ; $416d: $22
    di                                            ; $416e: $f3
    or a                                          ; $416f: $b7
    ld [de], a                                    ; $4170: $12
    ld l, d                                       ; $4171: $6a
    inc l                                         ; $4172: $2c
    push af                                       ; $4173: $f5
    ld b, [hl]                                    ; $4174: $46
    inc de                                        ; $4175: $13
    ld e, l                                       ; $4176: $5d
    ld [c], a                                     ; $4177: $e2
    adc e                                         ; $4178: $8b
    ld a, [bc]                                    ; $4179: $0a
    ld b, l                                       ; $417a: $45

jr_05e_417b:
    db $db                                        ; $417b: $db
    sbc $44                                       ; $417c: $de $44
    and l                                         ; $417e: $a5
    add hl, sp                                    ; $417f: $39
    ld b, $24                                     ; $4180: $06 $24
    xor d                                         ; $4182: $aa
    jp nz, Jump_000_35fa                          ; $4183: $c2 $fa $35

    add e                                         ; $4186: $83
    ld sp, $169c                                  ; $4187: $31 $9c $16
    sub $7f                                       ; $418a: $d6 $7f
    ld bc, $6dd0                                  ; $418c: $01 $d0 $6d
    xor e                                         ; $418f: $ab
    add hl, sp                                    ; $4190: $39
    ld b, $24                                     ; $4191: $06 $24
    xor d                                         ; $4193: $aa
    jp nz, Jump_000_35fa                          ; $4194: $c2 $fa $35

    add e                                         ; $4197: $83
    ld sp, $169c                                  ; $4198: $31 $9c $16
    sub $af                                       ; $419b: $d6 $af
    add hl, sp                                    ; $419d: $39
    xor $7b                                       ; $419e: $ee $7b
    ld a, e                                       ; $41a0: $7b
    ld e, b                                       ; $41a1: $58
    ld d, d                                       ; $41a2: $52
    jr nc, jr_05e_417b                            ; $41a3: $30 $d6

    ld a, h                                       ; $41a5: $7c
    ld sp, hl                                     ; $41a6: $f9

jr_05e_41a7:
    ld b, h                                       ; $41a7: $44
    ld c, d                                       ; $41a8: $4a
    ld h, e                                       ; $41a9: $63
    rst $08                                       ; $41aa: $cf
    jr jr_05e_4167                                ; $41ab: $18 $ba

    or a                                          ; $41ad: $b7
    ld a, [hl+]                                   ; $41ae: $2a
    ld h, h                                       ; $41af: $64
    rst $18                                       ; $41b0: $df
    dec a                                         ; $41b1: $3d
    ld b, [hl]                                    ; $41b2: $46
    ld d, d                                       ; $41b3: $52
    ldh a, [rOCPD]                                ; $41b4: $f0 $6b
    ld h, [hl]                                    ; $41b6: $66
    sub [hl]                                      ; $41b7: $96
    ret                                           ; $41b8: $c9


    or $34                                        ; $41b9: $f6 $34
    ld e, l                                       ; $41bb: $5d
    nop                                           ; $41bc: $00
    cp h                                          ; $41bd: $bc
    cp e                                          ; $41be: $bb
    adc l                                         ; $41bf: $8d
    db $d3                                        ; $41c0: $d3
    or $93                                        ; $41c1: $f6 $93
    sbc d                                         ; $41c3: $9a
    and e                                         ; $41c4: $a3
    inc d                                         ; $41c5: $14
    or [hl]                                       ; $41c6: $b6
    cp l                                          ; $41c7: $bd
    dec l                                         ; $41c8: $2d
    adc e                                         ; $41c9: $8b
    jp nc, Jump_000_3819                          ; $41ca: $d2 $19 $38

    rst $38                                       ; $41cd: $ff
    sbc h                                         ; $41ce: $9c
    ld c, b                                       ; $41cf: $48
    adc d                                         ; $41d0: $8a
    rst $20                                       ; $41d1: $e7
    add hl, de                                    ; $41d2: $19
    sra [hl]                                      ; $41d3: $cb $2e
    pop af                                        ; $41d5: $f1
    sub e                                         ; $41d6: $93
    dec [hl]                                      ; $41d7: $35
    ret                                           ; $41d8: $c9


    cp $5b                                        ; $41d9: $fe $5b
    cp $9f                                        ; $41db: $fe $9f
    cp c                                          ; $41dd: $b9
    ld d, l                                       ; $41de: $55
    jr c, @+$6f                                   ; $41df: $38 $6d

    ld [hl], l                                    ; $41e1: $75
    ld [hl], b                                    ; $41e2: $70
    db $db                                        ; $41e3: $db
    ld b, [hl]                                    ; $41e4: $46
    ld e, l                                       ; $41e5: $5d
    nop                                           ; $41e6: $00
    ld e, $78                                     ; $41e7: $1e $78
    ld [$43a1], a                                 ; $41e9: $ea $a1 $43
    ld a, [hl]                                    ; $41ec: $7e
    ld c, $07                                     ; $41ed: $0e $07
    ld e, $f2                                     ; $41ef: $1e $f2
    ld b, e                                       ; $41f1: $43
    rlc e                                         ; $41f2: $cb $03
    or a                                          ; $41f4: $b7
    ld sp, hl                                     ; $41f5: $f9
    and b                                         ; $41f6: $a0
    add hl, sp                                    ; $41f7: $39
    ld bc, $9e02                                  ; $41f8: $01 $02 $9e
    cp a                                          ; $41fb: $bf
    push af                                       ; $41fc: $f5
    ld a, a                                       ; $41fd: $7f
    cp $ea                                        ; $41fe: $fe $ea
    add c                                         ; $4200: $81
    db $dd                                        ; $4201: $dd
    rrca                                          ; $4202: $0f
    ccf                                           ; $4203: $3f
    nop                                           ; $4204: $00
    sbc h                                         ; $4205: $9c
    dec e                                         ; $4206: $1d
    ld a, c                                       ; $4207: $79
    ld [$7bba], sp                                ; $4208: $08 $ba $7b
    dec hl                                        ; $420b: $2b
    and c                                         ; $420c: $a1
    ld h, b                                       ; $420d: $60
    nop                                           ; $420e: $00
    ld [bc], a                                    ; $420f: $02
    cp h                                          ; $4210: $bc
    sub c                                         ; $4211: $91
    ld l, [hl]                                    ; $4212: $6e
    ld h, a                                       ; $4213: $67
    sub $19                                       ; $4214: $d6 $19
    ld d, a                                       ; $4216: $57
    add hl, bc                                    ; $4217: $09
    add $b4                                       ; $4218: $c6 $b4
    ld de, $7c00                                  ; $421a: $11 $00 $7c
    sbc e                                         ; $421d: $9b
    ld b, b                                       ; $421e: $40
    ld a, [$e471]                                 ; $421f: $fa $71 $e4
    ld e, $b2                                     ; $4222: $1e $b2
    add h                                         ; $4224: $84
    cp [hl]                                       ; $4225: $be
    nop                                           ; $4226: $00
    ld [bc], a                                    ; $4227: $02
    ld e, $61                                     ; $4228: $1e $61
    jp c, $bf9f                                   ; $422a: $da $9f $bf

    ld a, [$63b7]                                 ; $422d: $fa $b7 $63
    rst $08                                       ; $4230: $cf
    jp nz, Jump_000_000f                          ; $4231: $c2 $0f $00

    ld a, h                                       ; $4234: $7c
    dec sp                                        ; $4235: $3b
    ld b, e                                       ; $4236: $43
    ld c, $cf                                     ; $4237: $0e $cf
    ld [hl], a                                    ; $4239: $77
    ld b, a                                       ; $423a: $47
    rlca                                          ; $423b: $07
    inc bc                                        ; $423c: $03
    ld [bc], a                                    ; $423d: $02
    cp h                                          ; $423e: $bc
    sub c                                         ; $423f: $91
    ld l, [hl]                                    ; $4240: $6e
    ld h, a                                       ; $4241: $67
    sub $19                                       ; $4242: $d6 $19
    rla                                           ; $4244: $17
    nop                                           ; $4245: $00
    ld e, $a1                                     ; $4246: $1e $a1
    and l                                         ; $4248: $a5
    db $e3                                        ; $4249: $e3
    push bc                                       ; $424a: $c5
    rla                                           ; $424b: $17
    ld bc, $0031                                  ; $424c: $01 $31 $00
    sbc h                                         ; $424f: $9c
    dec e                                         ; $4250: $1d
    ld a, c                                       ; $4251: $79
    ret z                                         ; $4252: $c8

    di                                            ; $4253: $f3
    ccf                                           ; $4254: $3f
    rst $00                                       ; $4255: $c7
    sub c                                         ; $4256: $91
    nop                                           ; $4257: $00
    xor $e1                                       ; $4258: $ee $e1
    ld c, b                                       ; $425a: $48
    ld c, b                                       ; $425b: $48
    sbc h                                         ; $425c: $9c
    add hl, bc                                    ; $425d: $09
    and h                                         ; $425e: $a4
    ld a, e                                       ; $425f: $7b
    adc $56                                       ; $4260: $ce $56
    ld b, d                                       ; $4262: $42
    nop                                           ; $4263: $00
    sbc h                                         ; $4264: $9c
    dec e                                         ; $4265: $1d
    ld a, c                                       ; $4266: $79
    ld [$7bba], sp                                ; $4267: $08 $ba $7b
    dec hl                                        ; $426a: $2b
    and c                                         ; $426b: $a1
    ld h, b                                       ; $426c: $60
    nop                                           ; $426d: $00
    ld [bc], a                                    ; $426e: $02
    db $fc                                        ; $426f: $fc
    cp a                                          ; $4270: $bf
    sub b                                         ; $4271: $90
    db $10                                        ; $4272: $10
    db $fc                                        ; $4273: $fc
    ld a, [$fbda]                                 ; $4274: $fa $da $fb
    cp a                                          ; $4277: $bf
    rla                                           ; $4278: $17
    ld bc, $6cd0                                  ; $4279: $01 $d0 $6c
    inc de                                        ; $427c: $13
    db $10                                        ; $427d: $10
    ld c, a                                       ; $427e: $4f
    ld l, h                                       ; $427f: $6c
    rst $18                                       ; $4280: $df
    ld e, a                                       ; $4281: $5f
    nop                                           ; $4282: $00
    sbc [hl]                                      ; $4283: $9e
    and d                                         ; $4284: $a2
    rst $30                                       ; $4285: $f7
    sbc $cb                                       ; $4286: $de $cb
    di                                            ; $4288: $f3
    or b                                          ; $4289: $b0
    ld b, $1e                                     ; $428a: $06 $1e
    dec b                                         ; $428c: $05
    ld h, e                                       ; $428d: $63
    sbc c                                         ; $428e: $99
    inc a                                         ; $428f: $3c
    ld b, a                                       ; $4290: $47
    sub [hl]                                      ; $4291: $96
    ld l, [hl]                                    ; $4292: $6e
    jr jr_05e_4295                                ; $4293: $18 $00

jr_05e_4295:
    ld [bc], a                                    ; $4295: $02
    cp h                                          ; $4296: $bc
    bit 4, b                                      ; $4297: $cb $60
    call c, $87ee                                 ; $4299: $dc $ee $87
    ld e, a                                       ; $429c: $5f
    adc $0a                                       ; $429d: $ce $0a
    add $b4                                       ; $429f: $c6 $b4
    ccf                                           ; $42a1: $3f
    ld a, a                                       ; $42a2: $7f
    reti                                          ; $42a3: $d9


    jr @+$57                                      ; $42a4: $18 $55

    db $db                                        ; $42a6: $db
    dec e                                         ; $42a7: $1d
    ld h, a                                       ; $42a8: $67
    pop hl                                        ; $42a9: $e1
    rlca                                          ; $42aa: $07
    ld a, h                                       ; $42ab: $7c
    sbc e                                         ; $42ac: $9b
    ld b, b                                       ; $42ad: $40
    ld a, [$c471]                                 ; $42ae: $fa $71 $c4
    inc sp                                        ; $42b1: $33
    xor $30                                       ; $42b2: $ee $30
    nop                                           ; $42b4: $00
    ld [bc], a                                    ; $42b5: $02
    ld l, [hl]                                    ; $42b6: $6e
    rst $20                                       ; $42b7: $e7
    jp $f3fa                                      ; $42b8: $c3 $fa $f3


    ld d, a                                       ; $42bb: $57
    rrca                                          ; $42bc: $0f
    db $ec                                        ; $42bd: $ec
    ld a, [hl]                                    ; $42be: $7e
    ld hl, sp+$01                                 ; $42bf: $f8 $01
    xor $3e                                       ; $42c1: $ee $3e
    ld a, e                                       ; $42c3: $7b
    cp c                                          ; $42c4: $b9
    or a                                          ; $42c5: $b7
    sub c                                         ; $42c6: $91
    sbc $00                                       ; $42c7: $de $00
    ld [bc], a                                    ; $42c9: $02
    ld a, h                                       ; $42ca: $7c
    jp $e776                                      ; $42cb: $c3 $76 $e7


    ld e, h                                       ; $42ce: $5c
    pop bc                                        ; $42cf: $c1
    cpl                                           ; $42d0: $2f
    and d                                         ; $42d1: $a2
    jp c, Jump_000_148e                           ; $42d2: $da $8e $14

    xor l                                         ; $42d5: $ad
    inc hl                                        ; $42d6: $23
    ld a, [de]                                    ; $42d7: $1a
    nop                                           ; $42d8: $00
    ld a, h                                       ; $42d9: $7c
    rst $08                                       ; $42da: $cf
    and [hl]                                      ; $42db: $a6
    cp h                                          ; $42dc: $bc
    adc d                                         ; $42dd: $8a
    jr z, jr_05e_42e8                             ; $42de: $28 $08

jr_05e_42e0:
    nop                                           ; $42e0: $00
    xor $b1                                       ; $42e1: $ee $b1
    ld c, b                                       ; $42e3: $48
    ld e, b                                       ; $42e4: $58
    xor $3e                                       ; $42e5: $ee $3e
    inc h                                         ; $42e7: $24

jr_05e_42e8:
    inc bc                                        ; $42e8: $03
    ld e, $7e                                     ; $42e9: $1e $7e
    ret                                           ; $42eb: $c9


    ld d, e                                       ; $42ec: $53
    add h                                         ; $42ed: $84
    db $ec                                        ; $42ee: $ec
    inc bc                                        ; $42ef: $03
    ld [bc], a                                    ; $42f0: $02
    db $fc                                        ; $42f1: $fc
    ld h, c                                       ; $42f2: $61
    db $fd                                        ; $42f3: $fd
    jp Jump_000_1e00                              ; $42f4: $c3 $00 $1e


    ld l, a                                       ; $42f7: $6f
    and d                                         ; $42f8: $a2
    adc c                                         ; $42f9: $89
    jp z, Jump_05e_71dd                           ; $42fa: $ca $dd $71

    rst $18                                       ; $42fd: $df
    ld e, e                                       ; $42fe: $5b
    ld b, $00                                     ; $42ff: $06 $00
    xor $b0                                       ; $4301: $ee $b0
    db $fd                                        ; $4303: $fd
    ld [de], a                                    ; $4304: $12
    rst $28                                       ; $4305: $ef
    or d                                          ; $4306: $b2
    ld e, c                                       ; $4307: $59
    ld h, c                                       ; $4308: $61
    ld b, $00                                     ; $4309: $06 $00
    xor $a6                                       ; $430b: $ee $a6
    pop bc                                        ; $430d: $c1
    or d                                          ; $430e: $b2
    inc hl                                        ; $430f: $23
    add a                                         ; $4310: $87
    ld d, c                                       ; $4311: $51
    sbc e                                         ; $4312: $9b
    ret nz                                        ; $4313: $c0

    inc b                                         ; $4314: $04
    ld l, [hl]                                    ; $4315: $6e
    rst $10                                       ; $4316: $d7
    ld e, $79                                     ; $4317: $1e $79
    add h                                         ; $4319: $84
    sub [hl]                                      ; $431a: $96
    ld l, $00                                     ; $431b: $2e $00
    ld [bc], a                                    ; $431d: $02
    ld [bc], a                                    ; $431e: $02
    ld l, [hl]                                    ; $431f: $6e
    di                                            ; $4320: $f3
    cp c                                          ; $4321: $b9
    db $ed                                        ; $4322: $ed
    dec [hl]                                      ; $4323: $35
    or h                                          ; $4324: $b4
    and b                                         ; $4325: $a0
    dec e                                         ; $4326: $1d
    ldh a, [rSCX]                                 ; $4327: $f0 $43
    ld a, e                                       ; $4329: $7b
    jp z, $b6ef                                   ; $432a: $ca $ef $b6

    add a                                         ; $432d: $87
    ld c, $f8                                     ; $432e: $0e $f8
    and b                                         ; $4330: $a0
    dec e                                         ; $4331: $1d
    ldh a, [$03]                                  ; $4332: $f0 $03
    ld [bc], a                                    ; $4334: $02
    sbc [hl]                                      ; $4335: $9e
    cp a                                          ; $4336: $bf
    push af                                       ; $4337: $f5
    ld a, a                                       ; $4338: $7f
    cp $ad                                        ; $4339: $fe $ad
    ld e, $d8                                     ; $433b: $1e $d8
    db $fd                                        ; $433d: $fd
    ldh a, [$37]                                  ; $433e: $f0 $37
    nop                                           ; $4340: $00
    xor $7d                                       ; $4341: $ee $7d
    add hl, bc                                    ; $4343: $09
    ld a, [$7944]                                 ; $4344: $fa $44 $79
    rst $38                                       ; $4347: $ff
    ld l, a                                       ; $4348: $6f
    nop                                           ; $4349: $00
    xor $7d                                       ; $434a: $ee $7d
    cp [hl]                                       ; $434c: $be
    db $10                                        ; $434d: $10
    pop af                                        ; $434e: $f1
    ld a, l                                       ; $434f: $7d
    dec d                                         ; $4350: $15
    nop                                           ; $4351: $00
    ld [bc], a                                    ; $4352: $02
    db $fc                                        ; $4353: $fc
    ld h, c                                       ; $4354: $61
    db $fd                                        ; $4355: $fd
    ld h, e                                       ; $4356: $63
    ld e, d                                       ; $4357: $5a
    sub h                                         ; $4358: $94
    jr nc, jr_05e_42e0                            ; $4359: $30 $85

jr_05e_435b:
    rst $38                                       ; $435b: $ff
    pop hl                                        ; $435c: $e1
    rlca                                          ; $435d: $07
    ld e, $7d                                     ; $435e: $1e $7d
    ld [bc], a                                    ; $4360: $02
    ld d, e                                       ; $4361: $53
    xor $b0                                       ; $4362: $ee $b0
    ld [hl], c                                    ; $4364: $71
    rst $18                                       ; $4365: $df
    pop de                                        ; $4366: $d1
    nop                                           ; $4367: $00
    ld [bc], a                                    ; $4368: $02
    sbc [hl]                                      ; $4369: $9e
    xor a                                         ; $436a: $af
    adc l                                         ; $436b: $8d
    rst $38                                       ; $436c: $ff
    or e                                          ; $436d: $b3
    dec d                                         ; $436e: $15
    dec h                                         ; $436f: $25
    dec de                                        ; $4370: $1b
    and e                                         ; $4371: $a3
    ld l, d                                       ; $4372: $6a
    cp e                                          ; $4373: $bb
    db $e3                                        ; $4374: $e3
    inc c                                         ; $4375: $0c
    nop                                           ; $4376: $00
    ld c, $d3                                     ; $4377: $0e $d3
    dec a                                         ; $4379: $3d
    ld [c], a                                     ; $437a: $e2
    ld h, a                                       ; $437b: $67
    db $e3                                        ; $437c: $e3
    or $1e                                        ; $437d: $f6 $1e
    ld bc, $d002                                  ; $437f: $01 $02 $d0
    sbc [hl]                                      ; $4382: $9e
    ld a, d                                       ; $4383: $7a
    ret z                                         ; $4384: $c8

    rst $28                                       ; $4385: $ef
    sub l                                         ; $4386: $95
    add a                                         ; $4387: $87
    sbc h                                         ; $4388: $9c
    cp h                                          ; $4389: $bc
    ld e, $7a                                     ; $438a: $1e $7a
    ret z                                         ; $438c: $c8

    rst $08                                       ; $438d: $cf
    pop bc                                        ; $438e: $c1
    rrc c                                         ; $438f: $cb $09
    call Call_000_000f                            ; $4391: $cd $0f $00
    sbc h                                         ; $4394: $9c
    dec e                                         ; $4395: $1d
    ld a, [hl]                                    ; $4396: $7e
    ld a, [$21b5]                                 ; $4397: $fa $b5 $21
    sbc [hl]                                      ; $439a: $9e
    ld h, b                                       ; $439b: $60
    db $fd                                        ; $439c: $fd
    add hl, bc                                    ; $439d: $09
    dec b                                         ; $439e: $05
    inc bc                                        ; $439f: $03
    sbc h                                         ; $43a0: $9c
    jp $e4be                                      ; $43a1: $c3 $be $e4


    ld e, [hl]                                    ; $43a4: $5e
    ldh a, [rTIMA]                                ; $43a5: $f0 $05
    db $db                                        ; $43a7: $db
    ld b, $7c                                     ; $43a8: $06 $7c
    dec sp                                        ; $43aa: $3b
    ld b, e                                       ; $43ab: $43
    xor $c5                                       ; $43ac: $ee $c5
    rla                                           ; $43ae: $17
    nop                                           ; $43af: $00
    ld l, [hl]                                    ; $43b0: $6e
    ccf                                           ; $43b1: $3f
    jp $a792                                      ; $43b2: $c3 $92 $a7


    sbc e                                         ; $43b5: $9b
    ld b, b                                       ; $43b6: $40
    nop                                           ; $43b7: $00
    cp h                                          ; $43b8: $bc
    sub c                                         ; $43b9: $91
    ld l, a                                       ; $43ba: $6f
    ret                                           ; $43bb: $c9


    sbc l                                         ; $43bc: $9d
    pop bc                                        ; $43bd: $c1
    jr nz, jr_05e_435b                            ; $43be: $20 $9b

    ret nz                                        ; $43c0: $c0

    inc b                                         ; $43c1: $04
    cp h                                          ; $43c2: $bc
    ld l, h                                       ; $43c3: $6c
    ld c, l                                       ; $43c4: $4d
    sbc h                                         ; $43c5: $9c
    db $e3                                        ; $43c6: $e3
    cp [hl]                                       ; $43c7: $be
    add e                                         ; $43c8: $83
    add hl, de                                    ; $43c9: $19
    nop                                           ; $43ca: $00
    ld [bc], a                                    ; $43cb: $02
    ld [bc], a                                    ; $43cc: $02
    ld [bc], a                                    ; $43cd: $02
    ret nc                                        ; $43ce: $d0

    ld e, $43                                     ; $43cf: $1e $43
    cp e                                          ; $43d1: $bb
    set 5, a                                      ; $43d2: $cb $ef
    add hl, hl                                    ; $43d4: $29
    add a                                         ; $43d5: $87
    inc bc                                        ; $43d6: $03
    rrca                                          ; $43d7: $0f
    db $dd                                        ; $43d8: $dd
    sub l                                         ; $43d9: $95
    db $db                                        ; $43da: $db
    sbc [hl]                                      ; $43db: $9e
    ld a, [c]                                     ; $43dc: $f2
    ld [hl], e                                    ; $43dd: $73
    ld [bc], a                                    ; $43de: $02
    ld [bc], a                                    ; $43df: $02
    db $fc                                        ; $43e0: $fc
    inc bc                                        ; $43e1: $03
    ei                                            ; $43e2: $fb
    xor e                                         ; $43e3: $ab
    ld de, $ee00                                  ; $43e4: $11 $00 $ee
    and [hl]                                      ; $43e7: $a6
    ld l, h                                       ; $43e8: $6c
    ld c, l                                       ; $43e9: $4d
    ld e, $b0                                     ; $43ea: $1e $b0
    rst $08                                       ; $43ec: $cf
    nop                                           ; $43ed: $00
    xor $e2                                       ; $43ee: $ee $e2
    reti                                          ; $43f0: $d9


    sub d                                         ; $43f1: $92
    and a                                         ; $43f2: $a7
    add sp, -$03                                  ; $43f3: $e8 $fd
    sub [hl]                                      ; $43f5: $96
    ld h, c                                       ; $43f6: $61
    ld bc, $451e                                  ; $43f7: $01 $1e $45
    add d                                         ; $43fa: $82
    add hl, bc                                    ; $43fb: $09
    jp z, $bf83                                   ; $43fc: $ca $83 $bf

    or c                                          ; $43ff: $b1
    nop                                           ; $4400: $00
    inc e                                         ; $4401: $1c
    add hl, bc                                    ; $4402: $09
    ld b, a                                       ; $4403: $47
    adc c                                         ; $4404: $89
    jp Jump_05e_7709                              ; $4405: $c3 $09 $77


    ret c                                         ; $4408: $d8

    ld b, [hl]                                    ; $4409: $46
    ld bc, $a29e                                  ; $440a: $01 $9e $a2
    rst $30                                       ; $440d: $f7
    ld [c], a                                     ; $440e: $e2
    ld [hl], b                                    ; $440f: $70
    jp nz, Jump_05e_67fd                          ; $4410: $c2 $fd $67

    inc l                                         ; $4413: $2c
    adc $01                                       ; $4414: $ce $01
    sbc h                                         ; $4416: $9c
    ld a, e                                       ; $4417: $7b
    ld h, e                                       ; $4418: $63
    adc c                                         ; $4419: $89
    rst $20                                       ; $441a: $e7
    add hl, de                                    ; $441b: $19
    ld e, e                                       ; $441c: $5b
    inc bc                                        ; $441d: $03
    ld e, [hl]                                    ; $441e: $5e
    ld a, h                                       ; $441f: $7c
    ld d, [hl]                                    ; $4420: $56
    ld hl, $19f7                                  ; $4421: $21 $f7 $19
    ld e, d                                       ; $4424: $5a
    inc bc                                        ; $4425: $03
    ld [bc], a                                    ; $4426: $02
    ld l, [hl]                                    ; $4427: $6e
    ei                                            ; $4428: $fb
    db $e3                                        ; $4429: $e3
    db $fc                                        ; $442a: $fc
    ld a, [de]                                    ; $442b: $1a
    and [hl]                                      ; $442c: $a6
    ld [hl], b                                    ; $442d: $70
    sbc h                                         ; $442e: $9c
    dec de                                        ; $442f: $1b
    rla                                           ; $4430: $17
    ld a, [hl]                                    ; $4431: $7e
    nop                                           ; $4432: $00
    xor $44                                       ; $4433: $ee $44
    ret                                           ; $4435: $c9


    cp l                                          ; $4436: $bd
    ld hl, sp+$0a                                 ; $4437: $f8 $0a
    nop                                           ; $4439: $00
    ld [bc], a                                    ; $443a: $02
    ld c, $e3                                     ; $443b: $0e $e3
    ld l, h                                       ; $443d: $6c
    xor c                                         ; $443e: $a9
    rst $18                                       ; $443f: $df
    sbc $ff                                       ; $4440: $de $ff
    dec l                                         ; $4442: $2d
    db $ec                                        ; $4443: $ec
    ld h, c                                       ; $4444: $61
    nop                                           ; $4445: $00
    xor $7d                                       ; $4446: $ee $7d
    ret                                           ; $4448: $c9


    db $d3                                        ; $4449: $d3
    dec a                                         ; $444a: $3d
    sub c                                         ; $444b: $91
    ld bc, $8e02                                  ; $444c: $01 $02 $8e
    ld d, c                                       ; $444f: $51
    ld b, l                                       ; $4450: $45
    inc bc                                        ; $4451: $03
    ld l, [hl]                                    ; $4452: $6e
    ld b, e                                       ; $4453: $43
    ld [c], a                                     ; $4454: $e2
    add h                                         ; $4455: $84
    ld a, b                                       ; $4456: $78
    db $e3                                        ; $4457: $e3
    sbc h                                         ; $4458: $9c
    add sp, $06                                   ; $4459: $e8 $06
    xor $ec                                       ; $445b: $ee $ec
    add hl, sp                                    ; $445d: $39
    ld a, [c]                                     ; $445e: $f2
    ld a, b                                       ; $445f: $78

Call_05e_4460:
    ld e, b                                       ; $4460: $58
    ld h, a                                       ; $4461: $67
    nop                                           ; $4462: $00
    ld e, $05                                     ; $4463: $1e $05
    adc e                                         ; $4465: $8b
    dec sp                                        ; $4466: $3b
    inc de                                        ; $4467: $13
    daa                                           ; $4468: $27
    adc [hl]                                      ; $4469: $8e
    inc de                                        ; $446a: $13
    nop                                           ; $446b: $00
    ld c, $36                                     ; $446c: $0e $36
    add c                                         ; $446e: $81
    add hl, hl                                    ; $446f: $29
    adc a                                         ; $4470: $8f
    ccf                                           ; $4471: $3f
    rst $18                                       ; $4472: $df
    ld h, b                                       ; $4473: $60
    ld b, $00                                     ; $4474: $06 $00
    ld [bc], a                                    ; $4476: $02
    ld e, $7b                                     ; $4477: $1e $7b
    xor $0c                                       ; $4479: $ee $0c
    jp c, $235b                                   ; $447b: $da $5b $23

    nop                                           ; $447e: $00
    ld l, [hl]                                    ; $447f: $6e
    rla                                           ; $4480: $17
    inc h                                         ; $4481: $24
    inc de                                        ; $4482: $13
    rst $18                                       ; $4483: $df
    sbc [hl]                                      ; $4484: $9e
    inc de                                        ; $4485: $13
    inc c                                         ; $4486: $0c
    nop                                           ; $4487: $00
    xor $3d                                       ; $4488: $ee $3d
    ld h, e                                       ; $448a: $63
    ld d, c                                       ; $448b: $51
    ld [c], a                                     ; $448c: $e2
    rra                                           ; $448d: $1f
    add hl, bc                                    ; $448e: $09
    call z, $00c8                                 ; $448f: $cc $c8 $00
    ld e, $61                                     ; $4492: $1e $61
    ret z                                         ; $4494: $c8

    pop bc                                        ; $4495: $c1
    xor b                                         ; $4496: $a8
    ld [bc], a                                    ; $4497: $02
    ld e, $47                                     ; $4498: $1e $47
    adc b                                         ; $449a: $88
    rst $28                                       ; $449b: $ef
    dec bc                                        ; $449c: $0b
    ld [de], a                                    ; $449d: $12
    ld sp, hl                                     ; $449e: $f9
    sbc [hl]                                      ; $449f: $9e
    inc de                                        ; $44a0: $13
    nop                                           ; $44a1: $00
    ld a, h                                       ; $44a2: $7c
    rst $18                                       ; $44a3: $df
    dec l                                         ; $44a4: $2d
    ld [hl], a                                    ; $44a5: $77
    and d                                         ; $44a6: $a2
    ld a, [hl+]                                   ; $44a7: $2a
    cp d                                          ; $44a8: $ba
    ld bc, $a30e                                  ; $44a9: $01 $0e $a3
    ld b, e                                       ; $44ac: $43
    sbc h                                         ; $44ad: $9c
    ld a, a                                       ; $44ae: $7f
    adc a                                         ; $44af: $8f
    jr c, jr_05e_44b8                             ; $44b0: $38 $06

    nop                                           ; $44b2: $00
    ld c, $37                                     ; $44b3: $0e $37
    sbc b                                         ; $44b5: $98
    ret                                           ; $44b6: $c9


    db $e3                                        ; $44b7: $e3

jr_05e_44b8:
    xor a                                         ; $44b8: $af
    add h                                         ; $44b9: $84
    ret c                                         ; $44ba: $d8

    ld b, d                                       ; $44bb: $42
    ld [de], a                                    ; $44bc: $12
    ld a, [bc]                                    ; $44bd: $0a
    nop                                           ; $44be: $00
    sbc [hl]                                      ; $44bf: $9e
    ld l, [hl]                                    ; $44c0: $6e
    ld [bc], a                                    ; $44c1: $02
    jp hl                                         ; $44c2: $e9


    inc sp                                        ; $44c3: $33
    adc b                                         ; $44c4: $88
    cp h                                          ; $44c5: $bc
    ret c                                         ; $44c6: $d8

    inc bc                                        ; $44c7: $03
    add hl, bc                                    ; $44c8: $09
    ld h, [hl]                                    ; $44c9: $66
    cp $16                                        ; $44ca: $fe $16
    nop                                           ; $44cc: $00
    sbc [hl]                                      ; $44cd: $9e
    and d                                         ; $44ce: $a2
    sbc c                                         ; $44cf: $99
    call c, $91c3                                 ; $44d0: $dc $c3 $91
    ret nc                                        ; $44d3: $d0

    ld a, c                                       ; $44d4: $79
    inc bc                                        ; $44d5: $03

Jump_05e_44d6:
    sbc h                                         ; $44d6: $9c
    dec a                                         ; $44d7: $3d
    db $e4                                        ; $44d8: $e4
    push bc                                       ; $44d9: $c5
    sbc [hl]                                      ; $44da: $9e
    or e                                          ; $44db: $b3
    ld a, a                                       ; $44dc: $7f
    dec de                                        ; $44dd: $1b
    nop                                           ; $44de: $00
    ld [bc], a                                    ; $44df: $02
    ld e, $7b                                     ; $44e0: $1e $7b
    xor $4c                                       ; $44e2: $ee $4c
    rst $00                                       ; $44e4: $c7
    xor h                                         ; $44e5: $ac
    xor l                                         ; $44e6: $ad
    jr z, jr_05e_44e9                             ; $44e7: $28 $00

jr_05e_44e9:
    ld e, $61                                     ; $44e9: $1e $61
    ret z                                         ; $44eb: $c8

    inc bc                                        ; $44ec: $03
    or $d5                                        ; $44ed: $f6 $d5
    nop                                           ; $44ef: $00
    ld a, h                                       ; $44f0: $7c
    rst $08                                       ; $44f1: $cf
    ld [de], a                                    ; $44f2: $12
    jr jr_05e_451b                                ; $44f3: $18 $26

    add a                                         ; $44f5: $87
    add e                                         ; $44f6: $83
    push hl                                       ; $44f7: $e5
    ld l, e                                       ; $44f8: $6b
    nop                                           ; $44f9: $00
    ld e, [hl]                                    ; $44fa: $5e
    ld a, h                                       ; $44fb: $7c
    ld d, [hl]                                    ; $44fc: $56
    ld hl, $3077                                  ; $44fd: $21 $77 $30
    ld c, e                                       ; $4500: $4b
    jr nz, jr_05e_4503                            ; $4501: $20 $00

jr_05e_4503:
    xor $61                                       ; $4503: $ee $61
    push de                                       ; $4505: $d5
    adc e                                         ; $4506: $8b
    ld h, a                                       ; $4507: $67
    inc de                                        ; $4508: $13
    sbc b                                         ; $4509: $98
    ld b, $00                                     ; $450a: $06 $00
    ld [bc], a                                    ; $450c: $02
    ret nc                                        ; $450d: $d0

    daa                                           ; $450e: $27
    ld [de], a                                    ; $450f: $12
    ld l, b                                       ; $4510: $68
    add [hl]                                      ; $4511: $86
    or l                                          ; $4512: $b5
    add hl, bc                                    ; $4513: $09
    ret z                                         ; $4514: $c8

    ld l, l                                       ; $4515: $6d
    sub $26                                       ; $4516: $d6 $26
    ld h, a                                       ; $4518: $67
    inc d                                         ; $4519: $14
    ld l, h                                       ; $451a: $6c

jr_05e_451b:
    dec sp                                        ; $451b: $3b
    ld e, e                                       ; $451c: $5b
    sbc e                                         ; $451d: $9b
    cp e                                          ; $451e: $bb
    adc l                                         ; $451f: $8d
    db $d3                                        ; $4520: $d3
    and d                                         ; $4521: $a2
    ld bc, $b0ee                                  ; $4522: $01 $ee $b0
    sub c                                         ; $4525: $91
    ld b, b                                       ; $4526: $40
    adc b                                         ; $4527: $88
    cpl                                           ; $4528: $2f
    ld bc, $3dbe                                  ; $4529: $01 $be $3d
    rst $20                                       ; $452c: $e7
    dec bc                                        ; $452d: $0b
    nop                                           ; $452e: $00
    xor $a6                                       ; $452f: $ee $a6
    inc hl                                        ; $4531: $23
    add c                                         ; $4532: $81
    add hl, hl                                    ; $4533: $29
    ld [hl], a                                    ; $4534: $77
    rst $08                                       ; $4535: $cf
    ld d, a                                       ; $4536: $57
    ld h, e                                       ; $4537: $63
    ld bc, $7dee                                  ; $4538: $01 $ee $7d
    ld d, l                                       ; $453b: $55
    ld h, $77                                     ; $453c: $26 $77
    or $18                                        ; $453e: $f6 $18
    ld d, $00                                     ; $4540: $16 $00
    xor $7d                                       ; $4542: $ee $7d
    cp [hl]                                       ; $4544: $be
    db $10                                        ; $4545: $10
    cp c                                          ; $4546: $b9
    sub e                                         ; $4547: $93

Call_05e_4548:
    or c                                          ; $4548: $b1
    ld a, [bc]                                    ; $4549: $0a
    nop                                           ; $454a: $00
    ld e, $8c                                     ; $454b: $1e $8c
    ld c, h                                       ; $454d: $4c
    ld a, h                                       ; $454e: $7c
    ld a, e                                       ; $454f: $7b
    ld c, [hl]                                    ; $4550: $4e
    jr nc, jr_05e_4553                            ; $4551: $30 $00

jr_05e_4553:
    ld e, $7e                                     ; $4553: $1e $7e
    adc c                                         ; $4555: $89
    inc sp                                        ; $4556: $33
    db $fd                                        ; $4557: $fd
    add h                                         ; $4558: $84
    ld bc, $611e                                  ; $4559: $01 $1e $61
    ld e, d                                       ; $455c: $5a
    ld a, [c]                                     ; $455d: $f2
    ld hl, sp+$13                                 ; $455e: $f8 $13
    ld h, [hl]                                    ; $4560: $66
    ld d, c                                       ; $4561: $51
    add hl, bc                                    ; $4562: $09
    inc b                                         ; $4563: $04
    nop                                           ; $4564: $00
    ld e, $af                                     ; $4565: $1e $af
    cp l                                          ; $4567: $bd
    jr c, jr_05e_4585                             ; $4568: $38 $1b

    ld h, a                                       ; $456a: $67
    jr jr_05e_456d                                ; $456b: $18 $00

jr_05e_456d:
    ld e, $af                                     ; $456d: $1e $af
    cp l                                          ; $456f: $bd
    cp h                                          ; $4570: $bc
    ld hl, sp+$6e                                 ; $4571: $f8 $6e
    nop                                           ; $4573: $00
    ld c, $7f                                     ; $4574: $0e $7f
    inc e                                         ; $4576: $1c
    cp c                                          ; $4577: $b9
    rla                                           ; $4578: $17
    ld a, h                                       ; $4579: $7c
    add c                                         ; $457a: $81
    nop                                           ; $457b: $00
    ld c, $7f                                     ; $457c: $0e $7f
    inc e                                         ; $457e: $1c
    pop af                                        ; $457f: $f1
    dec a                                         ; $4580: $3d
    inc sp                                        ; $4581: $33
    ld c, b                                       ; $4582: $48
    inc d                                         ; $4583: $14
    nop                                           ; $4584: $00

jr_05e_4585:
    sbc h                                         ; $4585: $9c
    ld a, e                                       ; $4586: $7b
    ld h, e                                       ; $4587: $63
    ret                                           ; $4588: $c9


    ld h, c                                       ; $4589: $61
    cp d                                          ; $458a: $ba
    cp [hl]                                       ; $458b: $be
    ld l, a                                       ; $458c: $6f
    nop                                           ; $458d: $00
    ld [bc], a                                    ; $458e: $02
    ld [bc], a                                    ; $458f: $02
    ld [bc], a                                    ; $4590: $02
    ld [bc], a                                    ; $4591: $02
    ld [bc], a                                    ; $4592: $02
    ld [bc], a                                    ; $4593: $02
    ld [bc], a                                    ; $4594: $02
    ld [bc], a                                    ; $4595: $02
    ld [bc], a                                    ; $4596: $02
    ld [bc], a                                    ; $4597: $02
    ld [bc], a                                    ; $4598: $02
    ld [bc], a                                    ; $4599: $02
    ld [bc], a                                    ; $459a: $02
    ld [bc], a                                    ; $459b: $02
    ld [bc], a                                    ; $459c: $02
    ld [bc], a                                    ; $459d: $02
    ld [bc], a                                    ; $459e: $02
    ld [bc], a                                    ; $459f: $02
    ld [bc], a                                    ; $45a0: $02
    ld [bc], a                                    ; $45a1: $02
    ld [bc], a                                    ; $45a2: $02
    ld [bc], a                                    ; $45a3: $02
    ld [bc], a                                    ; $45a4: $02
    ld [bc], a                                    ; $45a5: $02
    ld [bc], a                                    ; $45a6: $02
    ld [bc], a                                    ; $45a7: $02
    ld [bc], a                                    ; $45a8: $02
    ld [bc], a                                    ; $45a9: $02
    ld [bc], a                                    ; $45aa: $02
    ld [bc], a                                    ; $45ab: $02
    ld [bc], a                                    ; $45ac: $02
    ld [bc], a                                    ; $45ad: $02
    ld [bc], a                                    ; $45ae: $02
    ld [bc], a                                    ; $45af: $02
    inc a                                         ; $45b0: $3c
    or c                                          ; $45b1: $b1
    ld c, c                                       ; $45b2: $49
    ld b, l                                       ; $45b3: $45
    ld c, a                                       ; $45b4: $4f
    ld l, $93                                     ; $45b5: $2e $93
    ld l, l                                       ; $45b7: $6d
    sub c                                         ; $45b8: $91

Jump_05e_45b9:
    ldh a, [$c4]                                  ; $45b9: $f0 $c4
    ld [hl], l                                    ; $45bb: $75
    ld e, l                                       ; $45bc: $5d
    ld [c], a                                     ; $45bd: $e2
    ld a, c                                       ; $45be: $79
    add $32                                       ; $45bf: $c6 $32
    add hl, sp                                    ; $45c1: $39
    call nz, Call_05e_60ee                        ; $45c2: $c4 $ee $60
    ld d, b                                       ; $45c5: $50
    nop                                           ; $45c6: $00
    ld c, $f0                                     ; $45c7: $0e $f0
    cp d                                          ; $45c9: $ba
    ld l, $00                                     ; $45ca: $2e $00
    inc e                                         ; $45cc: $1c
    daa                                           ; $45cd: $27
    ld a, [hl-]                                   ; $45ce: $3a
    db $fd                                        ; $45cf: $fd
    sub d                                         ; $45d0: $92
    ld l, l                                       ; $45d1: $6d
    ld de, $3cb7                                  ; $45d2: $11 $b7 $3c
    ld a, d                                       ; $45d5: $7a
    pop bc                                        ; $45d6: $c1
    ld l, b                                       ; $45d7: $68
    jp nz, $ad13                                  ; $45d8: $c2 $13 $ad

    ld h, $3a                                     ; $45db: $26 $3a
    add a                                         ; $45dd: $87
    sub d                                         ; $45de: $92
    jp nz, $ad13                                  ; $45df: $c2 $13 $ad

    db $fc                                        ; $45e2: $fc
    reti                                          ; $45e3: $d9


    db $fd                                        ; $45e4: $fd
    sub $ab                                       ; $45e5: $d6 $ab
    dec sp                                        ; $45e7: $3b
    ld a, [bc]                                    ; $45e8: $0a
    call $fc5e                                    ; $45e9: $cd $5e $fc
    reti                                          ; $45ec: $d9


    ret                                           ; $45ed: $c9


    db $fc                                        ; $45ee: $fc
    ld c, a                                       ; $45ef: $4f
    rst $20                                       ; $45f0: $e7
    ld a, a                                       ; $45f1: $7f
    ld [hl], c                                    ; $45f2: $71
    inc bc                                        ; $45f3: $03
    db $fc                                        ; $45f4: $fc
    dec de                                        ; $45f5: $1b
    ld c, l                                       ; $45f6: $4d
    add hl, sp                                    ; $45f7: $39
    push af                                       ; $45f8: $f5
    db $e4                                        ; $45f9: $e4
    jp nc, $9dfc                                  ; $45fa: $d2 $fc $9d

    ld [hl], e                                    ; $45fd: $73
    ld [hl], l                                    ; $45fe: $75
    ld l, a                                       ; $45ff: $6f
    dec c                                         ; $4600: $0d
    db $eb                                        ; $4601: $eb
    add a                                         ; $4602: $87
    ld [bc], a                                    ; $4603: $02
    ld e, $e3                                     ; $4604: $1e $e3
    ld e, d                                       ; $4606: $5a
    ld a, a                                       ; $4607: $7f
    cp $82                                        ; $4608: $fe $82
    ld b, a                                       ; $460a: $47
    rst $30                                       ; $460b: $f7

Jump_05e_460c:
    ldh [rNR21], a                                ; $460c: $e0 $16
    rst $08                                       ; $460e: $cf
    inc sp                                        ; $460f: $33
    sub [hl]                                      ; $4610: $96
    ret                                           ; $4611: $c9


    ld hl, $0776                                  ; $4612: $21 $76 $07
    ld c, e                                       ; $4615: $4b
    ld a, [bc]                                    ; $4616: $0a
    ld a, [hl]                                    ; $4617: $7e
    pop af                                        ; $4618: $f1
    ld h, a                                       ; $4619: $67
    daa                                           ; $461a: $27
    di                                            ; $461b: $f3
    ccf                                           ; $461c: $3f
    sbc l                                         ; $461d: $9d
    ld l, a                                       ; $461e: $6f
    or $dc                                        ; $461f: $f6 $dc
    ld a, [c]                                     ; $4621: $f2
    inc e                                         ; $4622: $1c
    or a                                          ; $4623: $b7
    ld h, $aa                                     ; $4624: $26 $aa
    inc hl                                        ; $4626: $23
    add l                                         ; $4627: $85
    sub b                                         ; $4628: $90
    ld h, b                                       ; $4629: $60
    db $ec                                        ; $462a: $ec
    rst $18                                       ; $462b: $df
    sub d                                         ; $462c: $92
    ccf                                           ; $462d: $3f
    ldh a, [$84]                                  ; $462e: $f0 $84
    push af                                       ; $4630: $f5
    db $db                                        ; $4631: $db
    ld b, d                                       ; $4632: $42
    adc c                                         ; $4633: $89
    rst $38                                       ; $4634: $ff
    ld e, c                                       ; $4635: $59
    cp [hl]                                       ; $4636: $be
    ld l, l                                       ; $4637: $6d
    pop de                                        ; $4638: $d1
    inc de                                        ; $4639: $13
    push hl                                       ; $463a: $e5
    inc b                                         ; $463b: $04
    rst $28                                       ; $463c: $ef
    jr jr_05e_46a6                                ; $463d: $18 $67

    xor h                                         ; $463f: $ac
    db $ed                                        ; $4640: $ed
    xor e                                         ; $4641: $ab
    ld [hl], b                                    ; $4642: $70
    ld a, e                                       ; $4643: $7b
    ld e, a                                       ; $4644: $5f
    ldh a, [$2b]                                  ; $4645: $f0 $2b
    adc a                                         ; $4647: $8f
    sub e                                         ; $4648: $93
    ld [hl+], a                                   ; $4649: $22
    db $fc                                        ; $464a: $fc
    ld c, [hl]                                    ; $464b: $4e
    ret z                                         ; $464c: $c8

    sbc c                                         ; $464d: $99
    adc c                                         ; $464e: $89
    xor h                                         ; $464f: $ac
    dec sp                                        ; $4650: $3b
    ldh [$87], a                                  ; $4651: $e0 $87
    ld [bc], a                                    ; $4653: $02
    ret nc                                        ; $4654: $d0

    and l                                         ; $4655: $a5
    sbc $80                                       ; $4656: $de $80
    ret nc                                        ; $4658: $d0

    ld [hl], l                                    ; $4659: $75
    ld e, l                                       ; $465a: $5d
    cp d                                          ; $465b: $ba
    or a                                          ; $465c: $b7
    ld c, c                                       ; $465d: $49
    dec d                                         ; $465e: $15
    jp nz, Jump_000_1bfc                          ; $465f: $c2 $fc $1b

    ld a, [bc]                                    ; $4662: $0a
    nop                                           ; $4663: $00
    ld c, $42                                     ; $4664: $0e $42
    sbc b                                         ; $4666: $98
    ld a, a                                       ; $4667: $7f
    ld l, e                                       ; $4668: $6b
    db $d3                                        ; $4669: $d3
    cpl                                           ; $466a: $2f
    ld h, l                                       ; $466b: $65
    ld [hl], e                                    ; $466c: $73
    ld [hl], d                                    ; $466d: $72
    add hl, de                                    ; $466e: $19
    inc a                                         ; $466f: $3c
    cp d                                          ; $4670: $ba
    rlca                                          ; $4671: $07
    or a                                          ; $4672: $b7
    inc e                                         ; $4673: $1c
    add h                                         ; $4674: $84

jr_05e_4675:
    jr nc, @+$01                                  ; $4675: $30 $ff

    sub $44                                       ; $4677: $d6 $44
    sub $1d                                       ; $4679: $d6 $1d
    ldh a, [$27]                                  ; $467b: $f0 $27
    dec b                                         ; $467d: $05
    db $e3                                        ; $467e: $e3
    or $6b                                        ; $467f: $f6 $6b
    ld b, $a3                                     ; $4681: $06 $a3
    ld h, $2a                                     ; $4683: $26 $2a
    pop bc                                        ; $4685: $c1
    xor a                                         ; $4686: $af
    db $fc                                        ; $4687: $fc
    scf                                           ; $4688: $37
    add l                                         ; $4689: $85
    ld b, h                                       ; $468a: $44
    rst $38                                       ; $468b: $ff
    rst $10                                       ; $468c: $d7
    dec h                                         ; $468d: $25
    adc a                                         ; $468e: $8f
    ld e, [hl]                                    ; $468f: $5e
    or l                                          ; $4690: $b5
    ld l, e                                       ; $4691: $6b
    ld c, l                                       ; $4692: $4d
    jp z, $2171                                   ; $4693: $ca $71 $21

    rst $38                                       ; $4696: $ff
    and l                                         ; $4697: $a5
    adc [hl]                                      ; $4698: $8e
    inc d                                         ; $4699: $14
    ld b, d                                       ; $469a: $42
    sbc d                                         ; $469b: $9a
    ret z                                         ; $469c: $c8

    cp d                                          ; $469d: $ba
    scf                                           ; $469e: $37
    ld c, e                                       ; $469f: $4b
    ld hl, $1d6b                                  ; $46a0: $21 $6b $1d
    rst $20                                       ; $46a3: $e7
    ld e, [hl]                                    ; $46a4: $5e
    ld c, d                                       ; $46a5: $4a

jr_05e_46a6:
    ld a, [bc]                                    ; $46a6: $0a
    add $b5                                       ; $46a7: $c6 $b5
    ld a, [hl]                                    ; $46a9: $7e
    push af                                       ; $46aa: $f5
    jr c, @+$13                                   ; $46ab: $38 $11

Call_05e_46ad:
    ld [$89df], a                                 ; $46ad: $ea $df $89
    ldh a, [$73]                                  ; $46b0: $f0 $73
    inc bc                                        ; $46b2: $03
    cp h                                          ; $46b3: $bc
    ld h, e                                       ; $46b4: $63
    inc e                                         ; $46b5: $1c
    or h                                          ; $46b6: $b4
    cp $57                                        ; $46b7: $fe $57
    ld a, [$66c3]                                 ; $46b9: $fa $c3 $66
    call c, $9ff7                                 ; $46bc: $dc $f7 $9f
    ld a, [hl]                                    ; $46bf: $7e
    call Call_000_25b1                            ; $46c0: $cd $b1 $25
    rst $38                                       ; $46c3: $ff
    ld l, l                                       ; $46c4: $6d
    cp a                                          ; $46c5: $bf
    call z, $92f6                                 ; $46c6: $cc $f6 $92
    jp Jump_05e_6f38                              ; $46c9: $c3 $38 $6f


    ld e, e                                       ; $46cc: $5b
    or d                                          ; $46cd: $b2
    ld l, l                                       ; $46ce: $6d
    sub d                                         ; $46cf: $92
    rst $38                                       ; $46d0: $ff
    rlca                                          ; $46d1: $07
    add $ba                                       ; $46d2: $c6 $ba
    nop                                           ; $46d4: $00
    ld a, h                                       ; $46d5: $7c
    ld e, e                                       ; $46d6: $5b
    db $e3                                        ; $46d7: $e3
    sbc h                                         ; $46d8: $9c
    rla                                           ; $46d9: $17
    sub [hl]                                      ; $46da: $96
    db $fc                                        ; $46db: $fc
    ccf                                           ; $46dc: $3f
    jr nc, jr_05e_4675                            ; $46dd: $30 $96

    or d                                          ; $46df: $b2
    or e                                          ; $46e0: $b3
    scf                                           ; $46e1: $37
    ld de, $b5a3                                  ; $46e2: $11 $a3 $b5
    dec h                                         ; $46e5: $25
    ld c, l                                       ; $46e6: $4d
    ld h, h                                       ; $46e7: $64
    db $dd                                        ; $46e8: $dd
    ld bc, $25ff                                  ; $46e9: $01 $ff $25
    adc [hl]                                      ; $46ec: $8e
    or e                                          ; $46ed: $b3
    or [hl]                                       ; $46ee: $b6
    sbc d                                         ; $46ef: $9a
    and e                                         ; $46f0: $a3
    ld l, d                                       ; $46f1: $6a
    ccf                                           ; $46f2: $3f
    add hl, hl                                    ; $46f3: $29
    jr jr_05e_4743                                ; $46f4: $18 $4d

    or $6b                                        ; $46f6: $f6 $6b
    ld e, e                                       ; $46f8: $5b
    ld a, [$7fea]                                 ; $46f9: $fa $ea $7f
    reti                                          ; $46fc: $d9


    sub $38                                       ; $46fd: $d6 $38
    daa                                           ; $46ff: $27
    inc b                                         ; $4700: $04
    ld h, e                                       ; $4701: $63
    rst $38                                       ; $4702: $ff
    sub [hl]                                      ; $4703: $96
    ld l, d                                       ; $4704: $6a
    rst $10                                       ; $4705: $d7
    sbc d                                         ; $4706: $9a
    ld l, $79                                     ; $4707: $2e $79
    adc [hl]                                      ; $4709: $8e
    db $db                                        ; $470a: $db
    sbc d                                         ; $470b: $9a
    pop bc                                        ; $470c: $c1
    xor b                                         ; $470d: $a8
    ld c, c                                       ; $470e: $49
    dec d                                         ; $470f: $15
    rlca                                          ; $4710: $07
    ld h, $52                                     ; $4711: $26 $52
    or b                                          ; $4713: $b0
    dec a                                         ; $4714: $3d
    cp a                                          ; $4715: $bf
    sub $2f                                       ; $4716: $d6 $2f
    rst $38                                       ; $4718: $ff
    rst $20                                       ; $4719: $e7
    db $fc                                        ; $471a: $fc
    cp a                                          ; $471b: $bf
    db $e4                                        ; $471c: $e4
    ld sp, hl                                     ; $471d: $f9
    sbc a                                         ; $471e: $9f
    ld l, l                                       ; $471f: $6d
    dec bc                                        ; $4720: $0b
    ld e, c                                       ; $4721: $59
    sbc h                                         ; $4722: $9c
    di                                            ; $4723: $f3
    ld e, e                                       ; $4724: $5b
    ld d, c                                       ; $4725: $51
    ld c, c                                       ; $4726: $49
    db $dd                                        ; $4727: $dd
    ld l, e                                       ; $4728: $6b
    ld c, l                                       ; $4729: $4d
    ld c, d                                       ; $472a: $4a
    rst $38                                       ; $472b: $ff
    adc h                                         ; $472c: $8c
    ld l, a                                       ; $472d: $6f
    db $fd                                        ; $472e: $fd
    pop bc                                        ; $472f: $c1
    db $ed                                        ; $4730: $ed
    cp $bf                                        ; $4731: $fe $bf
    nop                                           ; $4733: $00
    db $fc                                        ; $4734: $fc
    ld [hl], h                                    ; $4735: $74
    sub e                                         ; $4736: $93
    db $fc                                        ; $4737: $fc
    sbc a                                         ; $4738: $9f
    di                                            ; $4739: $f3
    ld d, l                                       ; $473a: $55
    sub h                                         ; $473b: $94
    ld [hl], l                                    ; $473c: $75
    inc de                                        ; $473d: $13

jr_05e_473e:
    ld l, c                                       ; $473e: $69
    xor $56                                       ; $473f: $ee $56
    and c                                         ; $4741: $a1
    push af                                       ; $4742: $f5

jr_05e_4743:
    rst $20                                       ; $4743: $e7
    ld a, a                                       ; $4744: $7f
    ld a, [$002f]                                 ; $4745: $fa $2f $00
    db $fc                                        ; $4748: $fc
    rst $08                                       ; $4749: $cf
    ld a, [c]                                     ; $474a: $f2
    ld l, l                                       ; $474b: $6d
    adc e                                         ; $474c: $8b
    ld d, [hl]                                    ; $474d: $56
    cp [hl]                                       ; $474e: $be
    ld [hl], c                                    ; $474f: $71
    ld c, b                                       ; $4750: $48
    di                                            ; $4751: $f3
    and a                                         ; $4752: $a7
    xor l                                         ; $4753: $ad
    ld a, [$be59]                                 ; $4754: $fa $59 $be
    inc sp                                        ; $4757: $33
    cp d                                          ; $4758: $ba
    rst $38                                       ; $4759: $ff
    ld [de], a                                    ; $475a: $12
    ccf                                           ; $475b: $3f
    ld l, [hl]                                    ; $475c: $6e
    ld b, l                                       ; $475d: $45
    add hl, bc                                    ; $475e: $09
    ld c, e                                       ; $475f: $4b
    xor $e3                                       ; $4760: $ee $e3
    ld e, c                                       ; $4762: $59
    inc d                                         ; $4763: $14
    rst $18                                       ; $4764: $df
    daa                                           ; $4765: $27
    or h                                          ; $4766: $b4
    ld c, c                                       ; $4767: $49
    pop bc                                        ; $4768: $c1
    sbc b                                         ; $4769: $98
    ld h, d                                       ; $476a: $62
    ld l, c                                       ; $476b: $69
    ld b, $23                                     ; $476c: $06 $23
    ld l, d                                       ; $476e: $6a
    ld c, l                                       ; $476f: $4d
    ld h, h                                       ; $4770: $64
    db $dd                                        ; $4771: $dd
    dec sp                                        ; $4772: $3b
    ld [hl], c                                    ; $4773: $71
    ld h, d                                       ; $4774: $62
    sbc h                                         ; $4775: $9c
    ei                                            ; $4776: $fb
    ld l, l                                       ; $4777: $6d
    cpl                                           ; $4778: $2f
    nop                                           ; $4779: $00
    db $fc                                        ; $477a: $fc
    cp b                                          ; $477b: $b8
    dec d                                         ; $477c: $15
    and l                                         ; $477d: $a5
    sbc h                                         ; $477e: $9c
    ld c, [hl]                                    ; $477f: $4e
    scf                                           ; $4780: $37
    db $dd                                        ; $4781: $dd
    call nc, $a55c                                ; $4782: $d4 $5c $a5
    ld a, [hl]                                    ; $4785: $7e
    sub [hl]                                      ; $4786: $96
    rst $28                                       ; $4787: $ef
    inc c                                         ; $4788: $0c
    ld h, c                                       ; $4789: $61
    ret                                           ; $478a: $c9


    ld a, l                                       ; $478b: $7d
    inc a                                         ; $478c: $3c
    adc e                                         ; $478d: $8b
    ld [c], a                                     ; $478e: $e2
    ld h, a                                       ; $478f: $67
    db $eb                                        ; $4790: $eb
    sbc a                                         ; $4791: $9f
    ld c, l                                       ; $4792: $4d
    ld h, b                                       ; $4793: $60
    ld e, b                                       ; $4794: $58
    ld d, d                                       ; $4795: $52
    jr nc, jr_05e_473e                            ; $4796: $30 $a6

    ld e, b                                       ; $4798: $58
    sbc d                                         ; $4799: $9a
    pop bc                                        ; $479a: $c1
    adc b                                         ; $479b: $88
    ld e, d                                       ; $479c: $5a
    db $fd                                        ; $479d: $fd
    dec sp                                        ; $479e: $3b
    ld a, a                                       ; $479f: $7f
    ld [hl+], a                                   ; $47a0: $22
    db $eb                                        ; $47a1: $eb
    sbc $2c                                       ; $47a2: $de $2c
    add l                                         ; $47a4: $85
    xor h                                         ; $47a5: $ac
    ld [hl], l                                    ; $47a6: $75
    sbc h                                         ; $47a7: $9c
    sbc e                                         ; $47a8: $9b
    ld l, h                                       ; $47a9: $6c
    cpl                                           ; $47aa: $2f
    ld [hl], c                                    ; $47ab: $71
    cp $b7                                        ; $47ac: $fe $b7
    xor $ad                                       ; $47ae: $ee $ad
    ld [hl], c                                    ; $47b0: $71
    ld a, [$3fe5]                                 ; $47b1: $fa $e5 $3f
    ld e, e                                       ; $47b4: $5b
    ld h, l                                       ; $47b5: $65
    add hl, hl                                    ; $47b6: $29
    ld h, h                                       ; $47b7: $64
    xor l                                         ; $47b8: $ad
    db $e3                                        ; $47b9: $e3
    call c, Call_05e_4944                         ; $47ba: $dc $44 $49
    ld l, l                                       ; $47bd: $6d
    ld a, [$f3a5]                                 ; $47be: $fa $a5 $f3
    add hl, hl                                    ; $47c1: $29
    db $fc                                        ; $47c2: $fc
    db $d3                                        ; $47c3: $d3
    sub [hl]                                      ; $47c4: $96
    dec de                                        ; $47c5: $1b
    nop                                           ; $47c6: $00
    cp h                                          ; $47c7: $bc
    cp e                                          ; $47c8: $bb
    adc l                                         ; $47c9: $8d

jr_05e_47ca:
    sub [hl]                                      ; $47ca: $96
    ld d, h                                       ; $47cb: $54
    and e                                         ; $47cc: $a3
    xor l                                         ; $47cd: $ad
    ld [hl-], a                                   ; $47ce: $32
    ld l, e                                       ; $47cf: $6b
    jp z, $9ce9                                   ; $47d0: $ca $e9 $9c

    or l                                          ; $47d3: $b5
    and [hl]                                      ; $47d4: $a6
    dec bc                                        ; $47d5: $0b
    nop                                           ; $47d6: $00
    ld e, $1e                                     ; $47d7: $1e $1e
    inc d                                         ; $47d9: $14
    sub [hl]                                      ; $47da: $96
    xor $ad                                       ; $47db: $ee $ad
    ld d, c                                       ; $47dd: $51
    ld a, [c]                                     ; $47de: $f2
    rlca                                          ; $47df: $07
    sbc [hl]                                      ; $47e0: $9e
    jr c, jr_05e_47ca                             ; $47e1: $38 $e7

    ld l, e                                       ; $47e3: $6b
    cpl                                           ; $47e4: $2f
    pop af                                        ; $47e5: $f1
    ld a, [hl]                                    ; $47e6: $7e
    ld e, $6c                                     ; $47e7: $1e $6c
    ld e, e                                       ; $47e9: $5b
    or c                                          ; $47ea: $b1
    jp c, Jump_05e_45b9                           ; $47eb: $da $b9 $45

    ld a, [de]                                    ; $47ee: $1a
    ld [hl], $31                                  ; $47ef: $36 $31
    xor c                                         ; $47f1: $a9
    add sp, $26                                   ; $47f2: $e8 $26
    db $fd                                        ; $47f4: $fd
    ld l, b                                       ; $47f5: $68
    call c, Call_000_1cd2                         ; $47f6: $dc $d2 $1c
    db $e3                                        ; $47f9: $e3
    adc h                                         ; $47fa: $8c
    or l                                          ; $47fb: $b5
    ld a, a                                       ; $47fc: $7f
    pop af                                        ; $47fd: $f1
    inc a                                         ; $47fe: $3c
    ld h, e                                       ; $47ff: $63
    sbc c                                         ; $4800: $99
    inc e                                         ; $4801: $1c
    ld h, d                                       ; $4802: $62
    ld [hl], a                                    ; $4803: $77
    or b                                          ; $4804: $b0
    ld a, l                                       ; $4805: $7d
    ld l, [hl]                                    ; $4806: $6e
    nop                                           ; $4807: $00
    db $fc                                        ; $4808: $fc
    cp b                                          ; $4809: $b8
    add hl, sp                                    ; $480a: $39
    halt                                          ; $480b: $76
    ld a, a                                       ; $480c: $7f
    cp $d6                                        ; $480d: $fe $d6
    xor e                                         ; $480f: $ab
    adc $e6                                       ; $4810: $ce $e6
    inc h                                         ; $4812: $24
    ld l, d                                       ; $4813: $6a
    ld c, l                                       ; $4814: $4d
    ld h, h                                       ; $4815: $64
    dec e                                         ; $4816: $1d

jr_05e_4817:
    ld l, e                                       ; $4817: $6b
    db $fd                                        ; $4818: $fd
    call c, Call_05e_4072                         ; $4819: $dc $72 $40
    add hl, hl                                    ; $481c: $29
    add h                                         ; $481d: $84
    xor b                                         ; $481e: $a8
    call nz, $9d9f                                ; $481f: $c4 $9f $9d
    call z, Call_05e_74ff                         ; $4822: $cc $ff $74
    cp [hl]                                       ; $4825: $be
    reti                                          ; $4826: $d9


    ld [hl], e                                    ; $4827: $73
    inc bc                                        ; $4828: $03
    ld c, $9f                                     ; $4829: $0e $9f
    push bc                                       ; $482b: $c5
    db $ed                                        ; $482c: $ed
    xor a                                         ; $482d: $af
    ldh a, [$9c]                                  ; $482e: $f0 $9c
    rst $10                                       ; $4830: $d7
    dec e                                         ; $4831: $1d
    dec d                                         ; $4832: $15
    scf                                           ; $4833: $37
    ld [hl], l                                    ; $4834: $75
    sub e                                         ; $4835: $93
    ld l, h                                       ; $4836: $6c
    xor e                                         ; $4837: $ab
    ld [c], a                                     ; $4838: $e2
    ld [de], a                                    ; $4839: $12
    ld c, a                                       ; $483a: $4f
    or b                                          ; $483b: $b0
    ld a, e                                       ; $483c: $7b
    or c                                          ; $483d: $b1
    ld b, d                                       ; $483e: $42
    ld a, a                                       ; $483f: $7f
    and $bf                                       ; $4840: $e6 $bf
    and $d8                                       ; $4842: $e6 $d8
    adc [hl]                                      ; $4844: $8e
    sbc d                                         ; $4845: $9a
    ld e, e                                       ; $4846: $5b
    ld c, d                                       ; $4847: $4a
    rst $00                                       ; $4848: $c7
    add sp, -$01                                  ; $4849: $e8 $ff
    dec bc                                        ; $484b: $0b
    nop                                           ; $484c: $00
    ld c, [hl]                                    ; $484d: $4e
    ldh a, [$7f]                                  ; $484e: $f0 $7f
    cp $0c                                        ; $4850: $fe $0c

Jump_05e_4852:
    or a                                          ; $4852: $b7
    ld e, a                                       ; $4853: $5f
    ld [hl], a                                    ; $4854: $77
    sub [hl]                                      ; $4855: $96
    ld d, l                                       ; $4856: $55
    xor l                                         ; $4857: $ad
    add hl, de                                    ; $4858: $19
    ld l, c                                       ; $4859: $69
    ld h, d                                       ; $485a: $62
    jp c, $a463                                   ; $485b: $da $63 $a4

    ld e, e                                       ; $485e: $5b
    db $fd                                        ; $485f: $fd
    ld e, a                                       ; $4860: $5f
    sbc d                                         ; $4861: $9a
    ret z                                         ; $4862: $c8

    cp d                                          ; $4863: $ba
    ld [hl], a                                    ; $4864: $77
    ld b, $4b                                     ; $4865: $06 $4b
    pop de                                        ; $4867: $d1
    db $ec                                        ; $4868: $ec
    cpl                                           ; $4869: $2f
    ld [hl], c                                    ; $486a: $71
    cp $f7                                        ; $486b: $fe $f7
    rst $20                                       ; $486d: $e7
    ld a, e                                       ; $486e: $7b
    adc $8b                                       ; $486f: $ce $8b
    dec a                                         ; $4871: $3d
    adc h                                         ; $4872: $8c
    db $db                                        ; $4873: $db
    pop de                                        ; $4874: $d1
    dec a                                         ; $4875: $3d
    ld [hl], h                                    ; $4876: $74
    inc de                                        ; $4877: $13
    ld sp, $0a4a                                  ; $4878: $31 $4a $0a
    add $8e                                       ; $487b: $c6 $8e
    sub d                                         ; $487d: $92
    cp a                                          ; $487e: $bf
    ld c, l                                       ; $487f: $4d
    sub e                                         ; $4880: $93
    ld c, b                                       ; $4881: $48
    ld [hl], e                                    ; $4882: $73
    sub a                                         ; $4883: $97
    ld b, l                                       ; $4884: $45
    scf                                           ; $4885: $37
    ld e, l                                       ; $4886: $5d
    ld [hl], d                                    ; $4887: $72
    ei                                            ; $4888: $fb
    sbc h                                         ; $4889: $9c
    sbc b                                         ; $488a: $98
    bit 4, b                                      ; $488b: $cb $60
    call c, $961e                                 ; $488d: $dc $1e $96
    sub h                                         ; $4890: $94
    ei                                            ; $4891: $fb
    inc l                                         ; $4892: $2c
    jr nz, jr_05e_4817                            ; $4893: $20 $82

    ld e, a                                       ; $4895: $5f
    ld e, $04                                     ; $4896: $1e $04
    or d                                          ; $4898: $b2
    add h                                         ; $4899: $84
    jp nz, Jump_000_0009                          ; $489a: $c2 $09 $00

    sbc [hl]                                      ; $489d: $9e
    rst $38                                       ; $489e: $ff
    reti                                          ; $489f: $d9


    or [hl]                                       ; $48a0: $b6
    sub b                                         ; $48a1: $90
    rst $38                                       ; $48a2: $ff
    ld [hl], e                                    ; $48a3: $73
    cp [hl]                                       ; $48a4: $be
    db $ed                                        ; $48a5: $ed
    dec b                                         ; $48a6: $05
    nop                                           ; $48a7: $00
    ld c, [hl]                                    ; $48a8: $4e
    ld a, b                                       ; $48a9: $78
    inc [hl]                                      ; $48aa: $34
    xor h                                         ; $48ab: $ac
    add a                                         ; $48ac: $87
    ret                                           ; $48ad: $c9


    pop hl                                        ; $48ae: $e1
    sbc [hl]                                      ; $48af: $9e
    or e                                          ; $48b0: $b3
    add hl, bc                                    ; $48b1: $09
    ld l, a                                       ; $48b2: $6f
    ld [bc], a                                    ; $48b3: $02
    di                                            ; $48b4: $f3
    add h                                         ; $48b5: $84
    inc de                                        ; $48b6: $13
    ld [hl], d                                    ; $48b7: $72
    add $ff                                       ; $48b8: $c6 $ff
    add hl, sp                                    ; $48ba: $39
    rra                                           ; $48bb: $1f
    nop                                           ; $48bc: $00
    ld c, [hl]                                    ; $48bd: $4e
    ld a, b                                       ; $48be: $78
    jr nc, @-$30                                  ; $48bf: $30 $ce

    reti                                          ; $48c1: $d9


    inc a                                         ; $48c2: $3c
    sbc b                                         ; $48c3: $98
    inc e                                         ; $48c4: $1c
    ld [c], a                                     ; $48c5: $e2
    inc c                                         ; $48c6: $0c
    rst $28                                       ; $48c7: $ef
    inc sp                                        ; $48c8: $33
    daa                                           ; $48c9: $27
    db $e4                                        ; $48ca: $e4
    adc h                                         ; $48cb: $8c
    rst $38                                       ; $48cc: $ff
    ld [hl], e                                    ; $48cd: $73
    ld a, $00                                     ; $48ce: $3e $00
    ld c, [hl]                                    ; $48d0: $4e
    ld a, b                                       ; $48d1: $78
    ret nz                                        ; $48d2: $c0

    ld [hl+], a                                   ; $48d3: $22
    ld hl, $9964                                  ; $48d4: $21 $64 $99
    inc a                                         ; $48d7: $3c
    ld e, [hl]                                    ; $48d8: $5e
    ccf                                           ; $48d9: $3f
    ld [hl], d                                    ; $48da: $72
    ld [hl], d                                    ; $48db: $72
    ld b, d                                       ; $48dc: $42
    adc $f8                                       ; $48dd: $ce $f8
    ccf                                           ; $48df: $3f
    rst $20                                       ; $48e0: $e7
    inc bc                                        ; $48e1: $03
    ld c, [hl]                                    ; $48e2: $4e
    ldh a, [rTIMA]                                ; $48e3: $f0 $05
    ld c, e                                       ; $48e5: $4b
    jr c, jr_05e_4913                             ; $48e6: $38 $2b

    add hl, sp                                    ; $48e8: $39
    db $fc                                        ; $48e9: $fc
    db $f4                                        ; $48ea: $f4
    rlc [hl]                                      ; $48eb: $cb $06
    ld a, [$84ef]                                 ; $48ed: $fa $ef $84
    sbc h                                         ; $48f0: $9c
    pop af                                        ; $48f1: $f1
    ld a, a                                       ; $48f2: $7f
    adc $07                                       ; $48f3: $ce $07
    ret nc                                        ; $48f5: $d0

    push de                                       ; $48f6: $d5
    and h                                         ; $48f7: $a4
    ld c, c                                       ; $48f8: $49
    call nz, $88ee                                ; $48f9: $c4 $ee $88
    ld c, d                                       ; $48fc: $4a
    rst $38                                       ; $48fd: $ff
    or $ff                                        ; $48fe: $f6 $ff
    dec de                                        ; $4900: $1b
    ld c, d                                       ; $4901: $4a
    db $fc                                        ; $4902: $fc
    dec de                                        ; $4903: $1b
    db $10                                        ; $4904: $10
    ld [$a5c9], a                                 ; $4905: $ea $c9 $a5
    ld a, e                                       ; $4908: $7b
    sbc e                                         ; $4909: $9b
    xor b                                         ; $490a: $a8
    ld d, h                                       ; $490b: $54
    cp e                                          ; $490c: $bb
    sub $04                                       ; $490d: $d6 $04
    dec b                                         ; $490f: $05
    nop                                           ; $4910: $00
    ld c, $30                                     ; $4911: $0e $30

jr_05e_4913:
    add hl, hl                                    ; $4913: $29
    sbc a                                         ; $4914: $9f
    ld h, c                                       ; $4915: $61
    add d                                         ; $4916: $82
    ld h, c                                       ; $4917: $61
    add [hl]                                      ; $4918: $86
    ld l, h                                       ; $4919: $6c
    push hl                                       ; $491a: $e5
    ld a, c                                       ; $491b: $79
    jr nc, jr_05e_4961                            ; $491c: $30 $43

    and l                                         ; $491e: $a5
    call nc, Call_000_1d6b                        ; $491f: $d4 $6b $1d
    ld h, a                                       ; $4922: $67
    dec [hl]                                      ; $4923: $35
    adc c                                         ; $4924: $89
    ret c                                         ; $4925: $d8

    dec e                                         ; $4926: $1d
    db $db                                        ; $4927: $db
    inc h                                         ; $4928: $24
    jr @-$17                                      ; $4929: $18 $e7

    ret nc                                        ; $492b: $d0

    rst $28                                       ; $492c: $ef
    ld a, h                                       ; $492d: $7c
    reti                                          ; $492e: $d9


    halt                                          ; $492f: $76
    add a                                         ; $4930: $87
    and $5b                                       ; $4931: $e6 $5b
    cp [hl]                                       ; $4933: $be
    jp hl                                         ; $4934: $e9


    ret nz                                        ; $4935: $c0

jr_05e_4936:
    adc d                                         ; $4936: $8a
    jr c, jr_05e_4936                             ; $4937: $38 $fd

    sub a                                         ; $4939: $97
    and b                                         ; $493a: $a0
    db $d3                                        ; $493b: $d3
    ld c, c                                       ; $493c: $49
    xor d                                         ; $493d: $aa
    db $dd                                        ; $493e: $dd
    xor $28                                       ; $493f: $ee $28
    and l                                         ; $4941: $a5
    ld a, a                                       ; $4942: $7f
    ei                                            ; $4943: $fb

Call_05e_4944:
    cp a                                          ; $4944: $bf
    db $fd                                        ; $4945: $fd
    jp nz, Jump_05e_4c12                          ; $4946: $c2 $12 $4c

    ld d, h                                       ; $4949: $54
    sbc c                                         ; $494a: $99
    ld l, h                                       ; $494b: $6c
    xor e                                         ; $494c: $ab
    ld [c], a                                     ; $494d: $e2
    ld [bc], a                                    ; $494e: $02
    cp h                                          ; $494f: $bc
    cp e                                          ; $4950: $bb
    adc l                                         ; $4951: $8d
    sub [hl]                                      ; $4952: $96
    inc d                                         ; $4953: $14
    rst $08                                       ; $4954: $cf
    daa                                           ; $4955: $27
    call nz, Call_05e_7216                        ; $4956: $c4 $16 $72
    ld bc, $ebd0                                  ; $4959: $01 $d0 $eb
    sub e                                         ; $495c: $93
    ld h, [hl]                                    ; $495d: $66
    ld e, b                                       ; $495e: $58
    db $d3                                        ; $495f: $d3
    dec h                                         ; $4960: $25

jr_05e_4961:
    or a                                          ; $4961: $b7
    ld b, a                                       ; $4962: $47
    rst $30                                       ; $4963: $f7
    xor a                                         ; $4964: $af
    ld l, l                                       ; $4965: $6d
    ret                                           ; $4966: $c9


    add $2b                                       ; $4967: $c6 $2b
    cp d                                          ; $4969: $ba
    rst $30                                       ; $496a: $f7
    ld h, $aa                                     ; $496b: $26 $aa
    and h                                         ; $496d: $a4
    xor $d1                                       ; $496e: $ee $d1
    db $fd                                        ; $4970: $fd
    ld b, d                                       ; $4971: $42
    inc l                                         ; $4972: $2c
    db $dd                                        ; $4973: $dd
    add hl, de                                    ; $4974: $19
    sbc e                                         ; $4975: $9b
    ld e, c                                       ; $4976: $59
    scf                                           ; $4977: $37
    ld d, l                                       ; $4978: $55
    and [hl]                                      ; $4979: $a6
    adc c                                         ; $497a: $89
    cp [hl]                                       ; $497b: $be
    rst $38                                       ; $497c: $ff
    ld [hl], e                                    ; $497d: $73
    jr nz, @-$23                                  ; $497e: $20 $db

    ld e, a                                       ; $4980: $5f
    db $db                                        ; $4981: $db
    rst $10                                       ; $4982: $d7
    call nz, $f289                                ; $4983: $c4 $89 $f2
    ld l, c                                       ; $4986: $69
    ld [hl], e                                    ; $4987: $73
    ld a, [hl+]                                   ; $4988: $2a
    pop bc                                        ; $4989: $c1
    cpl                                           ; $498a: $2f
    call nz, Call_05e_6552                        ; $498b: $c4 $52 $65
    xor l                                         ; $498e: $ad
    jp nz, $d689                                  ; $498f: $c2 $89 $d6

    ld d, c                                       ; $4992: $51
    ld [$7e67], a                                 ; $4993: $ea $67 $7e
    add h                                         ; $4996: $84
    reti                                          ; $4997: $d9


    ld e, a                                       ; $4998: $5f
    nop                                           ; $4999: $00
    ld c, $69                                     ; $499a: $0e $69
    ld [hl], e                                    ; $499c: $73
    and d                                         ; $499d: $a2
    and h                                         ; $499e: $a4
    ld a, h                                       ; $499f: $7c
    add [hl]                                      ; $49a0: $86
    add hl, bc                                    ; $49a1: $09
    add [hl]                                      ; $49a2: $86
    add hl, de                                    ; $49a3: $19
    or d                                          ; $49a4: $b2
    sub l                                         ; $49a5: $95
    rst $20                                       ; $49a6: $e7
    pop bc                                        ; $49a7: $c1
    inc c                                         ; $49a8: $0c
    cpl                                           ; $49a9: $2f
    nop                                           ; $49aa: $00
    inc a                                         ; $49ab: $3c
    or c                                          ; $49ac: $b1
    ld c, c                                       ; $49ad: $49
    pop af                                        ; $49ae: $f1
    inc a                                         ; $49af: $3c
    ld h, e                                       ; $49b0: $63
    ld e, c                                       ; $49b1: $59
    ld d, d                                       ; $49b2: $52
    rst $30                                       ; $49b3: $f7
    ld c, [hl]                                    ; $49b4: $4e
    ld [hl-], a                                   ; $49b5: $32
    reti                                          ; $49b6: $d9


    sub $68                                       ; $49b7: $d6 $68
    dec [hl]                                      ; $49b9: $35
    ld d, l                                       ; $49ba: $55
    add l                                         ; $49bb: $85
    ld a, d                                       ; $49bc: $7a
    jr nz, jr_05e_49d3                            ; $49bd: $20 $14

    nop                                           ; $49bf: $00
    ld c, $19                                     ; $49c0: $0e $19
    ld h, $18                                     ; $49c2: $26 $18
    ld h, [hl]                                    ; $49c4: $66
    ret z                                         ; $49c5: $c8

    ld d, [hl]                                    ; $49c6: $56
    cp h                                          ; $49c7: $bc
    ld a, a                                       ; $49c8: $7f
    and $33                                       ; $49c9: $e6 $33
    inc [hl]                                      ; $49cb: $34
    dec e                                         ; $49cc: $1d
    ld c, d                                       ; $49cd: $4a
    and e                                         ; $49ce: $a3
    ld a, e                                       ; $49cf: $7b
    ld [hl], l                                    ; $49d0: $75
    ld l, a                                       ; $49d1: $6f
    adc l                                         ; $49d2: $8d

jr_05e_49d3:
    ld d, [hl]                                    ; $49d3: $56
    or h                                          ; $49d4: $b4
    db $ed                                        ; $49d5: $ed
    ld c, l                                       ; $49d6: $4d
    ld d, h                                       ; $49d7: $54
    sbc d                                         ; $49d8: $9a
    ld b, h                                       ; $49d9: $44
    db $ec                                        ; $49da: $ec
    adc [hl]                                      ; $49db: $8e
    xor b                                         ; $49dc: $a8
    db $f4                                        ; $49dd: $f4
    ld l, a                                       ; $49de: $6f
    rst $38                                       ; $49df: $ff
    or a                                          ; $49e0: $b7
    ccf                                           ; $49e1: $3f
    add hl, hl                                    ; $49e2: $29
    ld hl, sp-$3b                                 ; $49e3: $f8 $c5
    di                                            ; $49e5: $f3
    add hl, bc                                    ; $49e6: $09
    or c                                          ; $49e7: $b1
    add l                                         ; $49e8: $85
    ret z                                         ; $49e9: $c8

    cp [hl]                                       ; $49ea: $be
    ld [hl], b                                    ; $49eb: $70
    sub e                                         ; $49ec: $93
    adc d                                         ; $49ed: $8a
    ld l, [hl]                                    ; $49ee: $6e
    ld d, d                                       ; $49ef: $52
    inc de                                        ; $49f0: $13
    sbc l                                         ; $49f1: $9d
    ld h, $e5                                     ; $49f2: $26 $e5
    cp b                                          ; $49f4: $b8
    or [hl]                                       ; $49f5: $b6
    ld a, [hl-]                                   ; $49f6: $3a
    ld e, h                                       ; $49f7: $5c
    ld e, c                                       ; $49f8: $59
    ld h, a                                       ; $49f9: $67
    and h                                         ; $49fa: $a4
    jp c, $ba6d                                   ; $49fb: $da $6d $ba

    nop                                           ; $49fe: $00
    sbc [hl]                                      ; $49ff: $9e
    db $e3                                        ; $4a00: $e3
    jp c, $affa                                   ; $4a01: $da $fa $af

    inc [hl]                                      ; $4a04: $34
    res 6, a                                      ; $4a05: $cb $b7
    and $d6                                       ; $4a07: $e6 $d6
    ld [hl], l                                    ; $4a09: $75
    ld e, l                                       ; $4a0a: $5d
    or d                                          ; $4a0b: $b2
    rst $38                                       ; $4a0c: $ff
    xor $cf                                       ; $4a0d: $ee $cf
    cp a                                          ; $4a0f: $bf
    sub l                                         ; $4a10: $95
    rst $38                                       ; $4a11: $ff
    sub [hl]                                      ; $4a12: $96
    ldh a, [$9c]                                  ; $4a13: $f0 $9c
    ld d, a                                       ; $4a15: $57
    cp [hl]                                       ; $4a16: $be
    ld [hl], c                                    ; $4a17: $71
    ld c, b                                       ; $4a18: $48
    ld a, b                                       ; $4a19: $78
    xor a                                         ; $4a1a: $af
    push af                                       ; $4a1b: $f5
    jp Jump_05e_651b                              ; $4a1c: $c3 $1b $65


    cpl                                           ; $4a1f: $2f
    dec de                                        ; $4a20: $1b
    jp Jump_000_2fec                              ; $4a21: $c3 $ec $2f


    nop                                           ; $4a24: $00
    sbc [hl]                                      ; $4a25: $9e
    db $e3                                        ; $4a26: $e3
    jp c, Jump_05e_44d6                           ; $4a27: $da $d6 $44

    call $c36f                                    ; $4a2a: $cd $6f $c3
    ld c, a                                       ; $4a2d: $4f
    ld a, [bc]                                    ; $4a2e: $0a
    ld b, [hl]                                    ; $4a2f: $46
    db $d3                                        ; $4a30: $d3
    pop hl                                        ; $4a31: $e1
    jp z, $d69a                                   ; $4a32: $ca $9a $d6

    or [hl]                                       ; $4a35: $b6
    inc b                                         ; $4a36: $04
    ld h, e                                       ; $4a37: $63
    rst $38                                       ; $4a38: $ff
    call c, Call_000_0282                         ; $4a39: $dc $82 $02
    ld e, $a6                                     ; $4a3c: $1e $a6
    ld e, a                                       ; $4a3e: $5f
    jp z, $ffdf                                   ; $4a3f: $ca $df $ff

    or a                                          ; $4a42: $b7
    sbc $a4                                       ; $4a43: $de $a4
    xor $d1                                       ; $4a45: $ee $d1
    db $fd                                        ; $4a47: $fd
    jp nz, $ca13                                  ; $4a48: $c2 $13 $ca

    sbc a                                         ; $4a4b: $9f
    ld h, c                                       ; $4a4c: $61
    cp $5b                                        ; $4a4d: $fe $5b
    ld d, c                                       ; $4a4f: $51
    rla                                           ; $4a50: $17
    nop                                           ; $4a51: $00
    inc e                                         ; $4a52: $1c
    dec sp                                        ; $4a53: $3b
    ld h, e                                       ; $4a54: $63
    ld c, e                                       ; $4a55: $4b
    ld l, c                                       ; $4a56: $69
    sub [hl]                                      ; $4a57: $96
    inc de                                        ; $4a58: $13
    xor c                                         ; $4a59: $a9
    inc sp                                        ; $4a5a: $33
    xor [hl]                                      ; $4a5b: $ae
    and [hl]                                      ; $4a5c: $a6
    and h                                         ; $4a5d: $a4
    ld a, b                                       ; $4a5e: $78
    sbc [hl]                                      ; $4a5f: $9e
    or c                                          ; $4a60: $b1
    db $ec                                        ; $4a61: $ec
    sub d                                         ; $4a62: $92
    db $db                                        ; $4a63: $db
    ld d, l                                       ; $4a64: $55
    ld e, a                                       ; $4a65: $5f
    jp z, Jump_05e_4852                           ; $4a66: $ca $52 $48

    sub h                                         ; $4a69: $94
    ld a, d                                       ; $4a6a: $7a
    ld hl, sp-$11                                 ; $4a6b: $f8 $ef
    xor a                                         ; $4a6d: $af
    ld [hl], l                                    ; $4a6e: $75
    ld b, h                                       ; $4a6f: $44
    dec h                                         ; $4a70: $25
    dec [hl]                                      ; $4a71: $35
    pop de                                        ; $4a72: $d1
    and $eb                                       ; $4a73: $e6 $eb
    ld b, a                                       ; $4a75: $47
    db $e3                                        ; $4a76: $e3
    or [hl]                                       ; $4a77: $b6
    xor $ad                                       ; $4a78: $ee $ad
    pop af                                        ; $4a7a: $f1
    ld [$e291], a                                 ; $4a7b: $ea $91 $e2
    ld sp, hl                                     ; $4a7e: $f9
    or l                                          ; $4a7f: $b5
    adc [hl]                                      ; $4a80: $8e
    jp nc, Jump_000_32fc                          ; $4a81: $d2 $fc $32

    ei                                            ; $4a84: $fb
    dec bc                                        ; $4a85: $0b
    nop                                           ; $4a86: $00
    inc a                                         ; $4a87: $3c
    ld e, c                                       ; $4a88: $59
    ld c, [hl]                                    ; $4a89: $4e
    ld c, c                                       ; $4a8a: $49
    dec [hl]                                      ; $4a8b: $35
    sbc c                                         ; $4a8c: $99
    sub c                                         ; $4a8d: $91
    jr nc, @+$01                                  ; $4a8e: $30 $ff

    ld d, [hl]                                    ; $4a90: $56
    add l                                         ; $4a91: $85
    ld a, [$be59]                                 ; $4a92: $fa $59 $be
    ld l, l                                       ; $4a95: $6d
    ld [hl], c                                    ; $4a96: $71
    ld a, a                                       ; $4a97: $7f
    xor l                                         ; $4a98: $ad
    ld h, $11                                     ; $4a99: $26 $11
    cp e                                          ; $4a9b: $bb
    inc hl                                        ; $4a9c: $23
    ld a, [hl+]                                   ; $4a9d: $2a
    db $fd                                        ; $4a9e: $fd
    db $db                                        ; $4a9f: $db
    rst $38                                       ; $4aa0: $ff
    rst $28                                       ; $4aa1: $ef
    dec bc                                        ; $4aa2: $0b
    nop                                           ; $4aa3: $00
    db $fc                                        ; $4aa4: $fc
    ld [hl], h                                    ; $4aa5: $74
    sub e                                         ; $4aa6: $93
    or b                                          ; $4aa7: $b0
    ld h, h                                       ; $4aa8: $64
    cp e                                          ; $4aa9: $bb
    and [hl]                                      ; $4aaa: $a6
    sbc e                                         ; $4aab: $9b
    and $de                                       ; $4aac: $e6 $de
    or c                                          ; $4aae: $b1
    db $ec                                        ; $4aaf: $ec
    rst $28                                       ; $4ab0: $ef
    cp l                                          ; $4ab1: $bd
    nop                                           ; $4ab2: $00
    inc a                                         ; $4ab3: $3c
    ld e, c                                       ; $4ab4: $59
    ld c, [hl]                                    ; $4ab5: $4e
    ld c, c                                       ; $4ab6: $49
    sbc l                                         ; $4ab7: $9d
    dec [hl]                                      ; $4ab8: $35
    ld [hl+], a                                   ; $4ab9: $22
    db $dd                                        ; $4aba: $dd
    inc [hl]                                      ; $4abb: $34
    rst $30                                       ; $4abc: $f7
    adc [hl]                                      ; $4abd: $8e
    ld h, l                                       ; $4abe: $65
    ld a, a                                       ; $4abf: $7f
    rst $28                                       ; $4ac0: $ef
    ld e, a                                       ; $4ac1: $5f
    nop                                           ; $4ac2: $00
    ld a, h                                       ; $4ac3: $7c
    inc [hl]                                      ; $4ac4: $34
    rst $30                                       ; $4ac5: $f7
    adc [hl]                                      ; $4ac6: $8e
    ld h, l                                       ; $4ac7: $65
    ld a, a                                       ; $4ac8: $7f
    rst $28                                       ; $4ac9: $ef
    dec hl                                        ; $4aca: $2b
    ld d, [hl]                                    ; $4acb: $56
    inc de                                        ; $4acc: $13
    ld l, l                                       ; $4acd: $6d
    cp $97                                        ; $4ace: $fe $97
    ldh a, [$84]                                  ; $4ad0: $f0 $84
    adc $ee                                       ; $4ad2: $ce $ee
    db $fc                                        ; $4ad4: $fc
    cp a                                          ; $4ad5: $bf
    nop                                           ; $4ad6: $00
    ld a, h                                       ; $4ad7: $7c
    ld e, e                                       ; $4ad8: $5b
    db $e3                                        ; $4ad9: $e3
    sbc h                                         ; $4ada: $9c
    rla                                           ; $4adb: $17
    sub [hl]                                      ; $4adc: $96
    ld h, b                                       ; $4add: $60
    call nc, Call_05e_7cef                        ; $4ade: $d4 $ef $7c
    ld sp, hl                                     ; $4ae1: $f9
    ld a, a                                       ; $4ae2: $7f
    ld h, b                                       ; $4ae3: $60
    inc l                                         ; $4ae4: $2c
    db $dd                                        ; $4ae5: $dd
    inc [hl]                                      ; $4ae6: $34
    rst $30                                       ; $4ae7: $f7
    adc [hl]                                      ; $4ae8: $8e
    ld h, l                                       ; $4ae9: $65
    ld a, a                                       ; $4aea: $7f
    rst $28                                       ; $4aeb: $ef
    ld e, a                                       ; $4aec: $5f
    nop                                           ; $4aed: $00
    sbc h                                         ; $4aee: $9c
    ld hl, $fd2c                                  ; $4aef: $21 $2c $fd
    call nz, $39da                                ; $4af2: $c4 $da $39
    xor $0b                                       ; $4af5: $ee $0b
    nop                                           ; $4af7: $00
    cp h                                          ; $4af8: $bc
    ld l, a                                       ; $4af9: $6f
    ld c, c                                       ; $4afa: $49
    sbc l                                         ; $4afb: $9d
    dec [hl]                                      ; $4afc: $35
    ld [hl+], a                                   ; $4afd: $22
    db $fd                                        ; $4afe: $fd
    call nz, $39da                                ; $4aff: $c4 $da $39
    xor $fd                                       ; $4b02: $ee $fd
    dec bc                                        ; $4b04: $0b
    nop                                           ; $4b05: $00
    ld l, [hl]                                    ; $4b06: $6e
    ld c, a                                       ; $4b07: $4f
    xor h                                         ; $4b08: $ac
    sbc l                                         ; $4b09: $9d
    db $e3                                        ; $4b0a: $e3
    sbc $57                                       ; $4b0b: $de $57
    xor h                                         ; $4b0d: $ac
    ld [hl], d                                    ; $4b0e: $72
    ld e, h                                       ; $4b0f: $5c
    pop hl                                        ; $4b10: $e1
    add hl, sp                                    ; $4b11: $39
    xor a                                         ; $4b12: $af
    or e                                          ; $4b13: $b3
    dec sp                                        ; $4b14: $3b
    rst $38                                       ; $4b15: $ff
    cpl                                           ; $4b16: $2f
    nop                                           ; $4b17: $00
    ld a, h                                       ; $4b18: $7c
    ld e, e                                       ; $4b19: $5b
    db $e3                                        ; $4b1a: $e3
    sbc h                                         ; $4b1b: $9c
    rla                                           ; $4b1c: $17
    sub [hl]                                      ; $4b1d: $96
    ld h, b                                       ; $4b1e: $60
    sub h                                         ; $4b1f: $94
    rst $38                                       ; $4b20: $ff
    rlca                                          ; $4b21: $07
    add $d2                                       ; $4b22: $c6 $d2
    ld c, a                                       ; $4b24: $4f
    xor h                                         ; $4b25: $ac
    sbc l                                         ; $4b26: $9d
    db $e3                                        ; $4b27: $e3
    sbc $bf                                       ; $4b28: $de $bf
    nop                                           ; $4b2a: $00
    cp h                                          ; $4b2b: $bc
    ld l, a                                       ; $4b2c: $6f
    ld sp, hl                                     ; $4b2d: $f9
    ld a, $b3                                     ; $4b2e: $3e $b3
    xor b                                         ; $4b30: $a8
    sbc l                                         ; $4b31: $9d
    ld [hl], e                                    ; $4b32: $73
    ld e, a                                       ; $4b33: $5f
    or c                                          ; $4b34: $b1
    sbc d                                         ; $4b35: $9a
    ld l, b                                       ; $4b36: $68
    di                                            ; $4b37: $f3
    cp a                                          ; $4b38: $bf
    sub h                                         ; $4b39: $94
    db $e3                                        ; $4b3a: $e3
    ld a, [bc]                                    ; $4b3b: $0a
    rst $08                                       ; $4b3c: $cf
    ld a, c                                       ; $4b3d: $79
    sbc l                                         ; $4b3e: $9d
    db $dd                                        ; $4b3f: $dd
    ld sp, hl                                     ; $4b40: $f9
    ld a, a                                       ; $4b41: $7f
    ld bc, $593c                                  ; $4b42: $01 $3c $59
    ld c, [hl]                                    ; $4b45: $4e
    ld c, c                                       ; $4b46: $49
    sbc l                                         ; $4b47: $9d
    dec [hl]                                      ; $4b48: $35
    ld [hl+], a                                   ; $4b49: $22
    call Call_05e_7cb7                            ; $4b4a: $cd $b7 $7c
    sbc a                                         ; $4b4d: $9f
    ld e, c                                       ; $4b4e: $59
    call nc, $b9ce                                ; $4b4f: $d4 $ce $b9
    ld a, a                                       ; $4b52: $7f
    ld bc, $5b7c                                  ; $4b53: $01 $7c $5b
    db $e3                                        ; $4b56: $e3
    sbc h                                         ; $4b57: $9c
    rla                                           ; $4b58: $17
    sub [hl]                                      ; $4b59: $96
    ld a, [hl]                                    ; $4b5a: $7e
    rst $20                                       ; $4b5b: $e7
    set 7, a                                      ; $4b5c: $cb $ff
    inc bc                                        ; $4b5e: $03
    ld h, e                                       ; $4b5f: $63
    ld l, c                                       ; $4b60: $69
    cp [hl]                                       ; $4b61: $be
    push hl                                       ; $4b62: $e5
    ei                                            ; $4b63: $fb
    call z, Call_05e_76a2                         ; $4b64: $cc $a2 $76
    adc $fd                                       ; $4b67: $ce $fd
    dec bc                                        ; $4b69: $0b
    nop                                           ; $4b6a: $00
    ld c, $70                                     ; $4b6b: $0e $70
    ld c, [hl]                                    ; $4b6d: $4e
    or h                                          ; $4b6e: $b4
    db $fd                                        ; $4b6f: $fd
    ld c, e                                       ; $4b70: $4b
    ld c, $76                                     ; $4b71: $0e $76
    sbc e                                         ; $4b73: $9b
    inc [hl]                                      ; $4b74: $34
    rst $18                                       ; $4b75: $df
    ld [hl], d                                    ; $4b76: $72
    ld e, h                                       ; $4b77: $5c
    ld sp, hl                                     ; $4b78: $f9
    ld a, a                                       ; $4b79: $7f
    ld h, b                                       ; $4b7a: $60
    inc l                                         ; $4b7b: $2c
    cp c                                          ; $4b7c: $b9
    scf                                           ; $4b7d: $37
    sbc b                                         ; $4b7e: $98
    sbc l                                         ; $4b7f: $9d
    ret z                                         ; $4b80: $c8

    ld c, d                                       ; $4b81: $4a
    cp $18                                        ; $4b82: $fe $18
    db $fd                                        ; $4b84: $fd
    inc l                                         ; $4b85: $2c
    ld a, l                                       ; $4b86: $7d
    or e                                          ; $4b87: $b3
    cp a                                          ; $4b88: $bf
    nop                                           ; $4b89: $00
    inc a                                         ; $4b8a: $3c
    ld e, c                                       ; $4b8b: $59
    ld c, [hl]                                    ; $4b8c: $4e
    ld c, c                                       ; $4b8d: $49
    sbc l                                         ; $4b8e: $9d
    dec [hl]                                      ; $4b8f: $35
    ld [hl+], a                                   ; $4b90: $22
    dec d                                         ; $4b91: $15
    adc $89                                       ; $4b92: $ce $89
    or [hl]                                       ; $4b94: $b6
    ld a, a                                       ; $4b95: $7f
    ld bc, $cbbc                                  ; $4b96: $01 $bc $cb
    ldh [$2f], a                                  ; $4b99: $e0 $2f
    db $dd                                        ; $4b9b: $dd
    ld h, e                                       ; $4b9c: $63
    cp $97                                        ; $4b9d: $fe $97
    sbc d                                         ; $4b9f: $9a
    ld l, [hl]                                    ; $4ba0: $6e
    ld [de], a                                    ; $4ba1: $12
    sub [hl]                                      ; $4ba2: $96
    cp $b0                                        ; $4ba3: $fe $b0
    ld sp, $ffea                                  ; $4ba5: $31 $ea $ff
    ld [bc], a                                    ; $4ba8: $02
    inc a                                         ; $4ba9: $3c
    ld e, c                                       ; $4baa: $59
    ld c, [hl]                                    ; $4bab: $4e
    ld c, c                                       ; $4bac: $49
    sbc l                                         ; $4bad: $9d
    dec [hl]                                      ; $4bae: $35
    ld [hl+], a                                   ; $4baf: $22
    db $fd                                        ; $4bb0: $fd
    ld h, c                                       ; $4bb1: $61
    ld h, e                                       ; $4bb2: $63
    call nc, $05ff                                ; $4bb3: $d4 $ff $05
    nop                                           ; $4bb6: $00
    ld l, [hl]                                    ; $4bb7: $6e
    rra                                           ; $4bb8: $1f
    ld [hl], $46                                  ; $4bb9: $36 $46
    db $fd                                        ; $4bbb: $fd
    dec hl                                        ; $4bbc: $2b
    ld d, [hl]                                    ; $4bbd: $56
    inc de                                        ; $4bbe: $13
    ld l, l                                       ; $4bbf: $6d
    cp $97                                        ; $4bc0: $fe $97
    ld [hl], d                                    ; $4bc2: $72
    ld e, h                                       ; $4bc3: $5c
    pop hl                                        ; $4bc4: $e1
    add hl, sp                                    ; $4bc5: $39
    xor a                                         ; $4bc6: $af
    or e                                          ; $4bc7: $b3
    dec sp                                        ; $4bc8: $3b
    rst $38                                       ; $4bc9: $ff
    cpl                                           ; $4bca: $2f
    nop                                           ; $4bcb: $00
    ld a, h                                       ; $4bcc: $7c
    ld e, e                                       ; $4bcd: $5b
    db $e3                                        ; $4bce: $e3
    sbc h                                         ; $4bcf: $9c
    rla                                           ; $4bd0: $17
    sub [hl]                                      ; $4bd1: $96
    ld h, b                                       ; $4bd2: $60
    call nc, Call_05e_7cef                        ; $4bd3: $d4 $ef $7c
    ld sp, hl                                     ; $4bd6: $f9
    ld a, a                                       ; $4bd7: $7f
    ld h, b                                       ; $4bd8: $60
    inc l                                         ; $4bd9: $2c
    db $fd                                        ; $4bda: $fd
    ld h, c                                       ; $4bdb: $61
    ld h, e                                       ; $4bdc: $63
    call nc, $05ff                                ; $4bdd: $d4 $ff $05
    nop                                           ; $4be0: $00
    sbc [hl]                                      ; $4be1: $9e
    ld c, l                                       ; $4be2: $4d
    xor h                                         ; $4be3: $ac
    db $f4                                        ; $4be4: $f4
    cp e                                          ; $4be5: $bb
    rst $00                                       ; $4be6: $c7
    dec h                                         ; $4be7: $25

Call_05e_4be8:
    cp $7f                                        ; $4be8: $fe $7f
    ld d, e                                       ; $4bea: $53
    ld [hl], $6d                                  ; $4beb: $36 $6d
    ld [hl], l                                    ; $4bed: $75
    sub $88                                       ; $4bee: $d6 $88
    ld l, $00                                     ; $4bf0: $2e $00
    cp h                                          ; $4bf2: $bc
    cp b                                          ; $4bf3: $b8
    ld l, h                                       ; $4bf4: $6c
    ld h, b                                       ; $4bf5: $60
    adc d                                         ; $4bf6: $8a
    ld a, a                                       ; $4bf7: $7f
    adc c                                         ; $4bf8: $89
    rst $20                                       ; $4bf9: $e7
    call Call_05e_6a86                            ; $4bfa: $cd $86 $6a
    rst $28                                       ; $4bfd: $ef
    cp l                                          ; $4bfe: $bd
    nop                                           ; $4bff: $00
    inc a                                         ; $4c00: $3c
    ld e, c                                       ; $4c01: $59
    ld c, [hl]                                    ; $4c02: $4e
    ld c, c                                       ; $4c03: $49
    sbc l                                         ; $4c04: $9d
    dec [hl]                                      ; $4c05: $35
    ld [hl+], a                                   ; $4c06: $22
    ld c, l                                       ; $4c07: $4d
    ld e, h                                       ; $4c08: $5c
    ld [hl], $30                                  ; $4c09: $36 $30
    push bc                                       ; $4c0b: $c5
    cp a                                          ; $4c0c: $bf
    nop                                           ; $4c0d: $00
    cp h                                          ; $4c0e: $bc
    cp b                                          ; $4c0f: $b8
    ld l, h                                       ; $4c10: $6c
    ld h, b                                       ; $4c11: $60

Jump_05e_4c12:
    adc d                                         ; $4c12: $8a
    xor a                                         ; $4c13: $af
    ld e, b                                       ; $4c14: $58
    push hl                                       ; $4c15: $e5
    cp b                                          ; $4c16: $b8
    sbc d                                         ; $4c17: $9a
    ld l, b                                       ; $4c18: $68
    di                                            ; $4c19: $f3
    cp a                                          ; $4c1a: $bf
    add h                                         ; $4c1b: $84
    rst $20                                       ; $4c1c: $e7
    cp h                                          ; $4c1d: $bc
    adc $ee                                       ; $4c1e: $ce $ee
    db $fc                                        ; $4c20: $fc
    cp a                                          ; $4c21: $bf
    inc b                                         ; $4c22: $04
    ld a, l                                       ; $4c23: $7d
    ld c, [hl]                                    ; $4c24: $4e
    xor h                                         ; $4c25: $ac
    ld l, h                                       ; $4c26: $6c
    or a                                          ; $4c27: $b7
    ld c, b                                       ; $4c28: $48
    ld a, b                                       ; $4c29: $78
    ld b, d                                       ; $4c2a: $42
    cp b                                          ; $4c2b: $b8
    inc sp                                        ; $4c2c: $33
    or [hl]                                       ; $4c2d: $b6
    ld e, a                                       ; $4c2e: $5f
    inc de                                        ; $4c2f: $13
    or a                                          ; $4c30: $b7
    rst $38                                       ; $4c31: $ff
    ld [bc], a                                    ; $4c32: $02
    ld c, $b2                                     ; $4c33: $0e $b2
    sub $bd                                       ; $4c35: $d6 $bd
    dec [hl]                                      ; $4c37: $35
    adc $79                                       ; $4c38: $ce $79
    ld h, c                                       ; $4c3a: $61
    ret                                           ; $4c3b: $c9


    rst $38                                       ; $4c3c: $ff
    inc bc                                        ; $4c3d: $03
    ld h, e                                       ; $4c3e: $63
    ld l, c                                       ; $4c3f: $69
    ld [c], a                                     ; $4c40: $e2
    or d                                          ; $4c41: $b2
    add c                                         ; $4c42: $81
    add hl, hl                                    ; $4c43: $29
    cp $05                                        ; $4c44: $fe $05
    nop                                           ; $4c46: $00
    sbc h                                         ; $4c47: $9c
    ld hl, $d92c                                  ; $4c48: $21 $2c $d9
    ret nz                                        ; $4c4b: $c0

    or e                                          ; $4c4c: $b3
    rlca                                          ; $4c4d: $07
    cp $bf                                        ; $4c4e: $fe $bf
    nop                                           ; $4c50: $00
    ld e, $af                                     ; $4c51: $1e $af
    ld de, $06c9                                  ; $4c53: $11 $c9 $06
    sbc [hl]                                      ; $4c56: $9e
    dec a                                         ; $4c57: $3d
    ldh a, [$7f]                                  ; $4c58: $f0 $7f
    ld d, d                                       ; $4c5a: $52
    ld l, c                                       ; $4c5b: $69
    sub [hl]                                      ; $4c5c: $96
    db $d3                                        ; $4c5d: $d3
    dec b                                         ; $4c5e: $05
    nop                                           ; $4c5f: $00
    ld a, h                                       ; $4c60: $7c
    ld e, e                                       ; $4c61: $5b
    db $e3                                        ; $4c62: $e3
    sbc h                                         ; $4c63: $9c
    rla                                           ; $4c64: $17
    sub [hl]                                      ; $4c65: $96
    ld a, [hl]                                    ; $4c66: $7e
    rst $20                                       ; $4c67: $e7
    set 7, a                                      ; $4c68: $cb $ff
    inc bc                                        ; $4c6a: $03
    ld h, e                                       ; $4c6b: $63
    ret                                           ; $4c6c: $c9


    ld b, $9e                                     ; $4c6d: $06 $9e
    dec a                                         ; $4c6f: $3d
    ldh a, [rIE]                                  ; $4c70: $f0 $ff
    dec b                                         ; $4c72: $05
    nop                                           ; $4c73: $00
    inc a                                         ; $4c74: $3c
    ld e, c                                       ; $4c75: $59
    ld c, [hl]                                    ; $4c76: $4e
    adc d                                         ; $4c77: $8a
    ld l, [hl]                                    ; $4c78: $6e
    sub d                                         ; $4c79: $92
    db $fd                                        ; $4c7a: $fd
    sub [hl]                                      ; $4c7b: $96
    jp nc, $fdbf                                  ; $4c7c: $d2 $bf $fd

    rst $38                                       ; $4c7f: $ff
    ld c, [hl]                                    ; $4c80: $4e
    ld [$dd1e], a                                 ; $4c81: $ea $1e $dd
    xor a                                         ; $4c84: $af
    ld c, c                                       ; $4c85: $49
    call nz, $e8ee                                ; $4c86: $c4 $ee $e8
    ld h, $4d                                     ; $4c89: $26 $4d
    jp z, $4464                                   ; $4c8b: $ca $64 $44

    ld h, a                                       ; $4c8e: $67
    and a                                         ; $4c8f: $a7
    db $ed                                        ; $4c90: $ed
    dec b                                         ; $4c91: $05
    nop                                           ; $4c92: $00
    inc a                                         ; $4c93: $3c
    ld e, c                                       ; $4c94: $59
    ld c, [hl]                                    ; $4c95: $4e
    ld c, c                                       ; $4c96: $49
    sbc l                                         ; $4c97: $9d
    dec [hl]                                      ; $4c98: $35
    ld [hl+], a                                   ; $4c99: $22
    ld c, l                                       ; $4c9a: $4d
    ld [hl+], a                                   ; $4c9b: $22
    halt                                          ; $4c9c: $76
    ld b, a                                       ; $4c9d: $47
    ld d, h                                       ; $4c9e: $54
    ld a, [$ffb7]                                 ; $4c9f: $fa $b7 $ff
    db $db                                        ; $4ca2: $db
    ld a, a                                       ; $4ca3: $7f
    ld bc, $44bc                                  ; $4ca4: $01 $bc $44
    db $ec                                        ; $4ca7: $ec
    adc [hl]                                      ; $4ca8: $8e
    xor b                                         ; $4ca9: $a8
    db $f4                                        ; $4caa: $f4
    ld l, a                                       ; $4cab: $6f
    rst $38                                       ; $4cac: $ff
    or a                                          ; $4cad: $b7
    ld e, a                                       ; $4cae: $5f
    or c                                          ; $4caf: $b1
    jp z, $8571                                   ; $4cb0: $ca $71 $85

    rst $20                                       ; $4cb3: $e7
    cp h                                          ; $4cb4: $bc
    adc $ee                                       ; $4cb5: $ce $ee
    db $fc                                        ; $4cb7: $fc
    cp a                                          ; $4cb8: $bf
    xor [hl]                                      ; $4cb9: $ae
    ld c, e                                       ; $4cba: $4b
    ld [hl], c                                    ; $4cbb: $71
    ld c, [hl]                                    ; $4cbc: $4e
    ld l, h                                       ; $4cbd: $6c
    ld c, [hl]                                    ; $4cbe: $4e
    xor l                                         ; $4cbf: $ad
    ld a, [bc]                                    ; $4cc0: $0a
    pop hl                                        ; $4cc1: $e1
    add hl, bc                                    ; $4cc2: $09
    push hl                                       ; $4cc3: $e5
    dec de                                        ; $4cc4: $1b
    add a                                         ; $4cc5: $87
    inc [hl]                                      ; $4cc6: $34
    adc c                                         ; $4cc7: $89
    ret c                                         ; $4cc8: $d8

    dec e                                         ; $4cc9: $1d
    ld d, c                                       ; $4cca: $51
    or d                                          ; $4ccb: $b2
    ld sp, $fecc                                  ; $4ccc: $31 $cc $fe
    ld [bc], a                                    ; $4ccf: $02
    ld a, h                                       ; $4cd0: $7c
    ld e, e                                       ; $4cd1: $5b
    db $e3                                        ; $4cd2: $e3
    sbc h                                         ; $4cd3: $9c
    rla                                           ; $4cd4: $17
    sub [hl]                                      ; $4cd5: $96
    ld h, b                                       ; $4cd6: $60
    call nc, Call_05e_7cef                        ; $4cd7: $d4 $ef $7c
    ld sp, hl                                     ; $4cda: $f9
    ld a, a                                       ; $4cdb: $7f
    ld h, b                                       ; $4cdc: $60
    inc l                                         ; $4cdd: $2c
    ld c, l                                       ; $4cde: $4d
    ld [hl+], a                                   ; $4cdf: $22
    halt                                          ; $4ce0: $76
    ld b, a                                       ; $4ce1: $47
    ld d, h                                       ; $4ce2: $54
    ld a, [$ffb7]                                 ; $4ce3: $fa $b7 $ff
    db $db                                        ; $4ce6: $db
    ld a, a                                       ; $4ce7: $7f
    ld bc, $bb9c                                  ; $4ce8: $01 $9c $bb
    ld b, l                                       ; $4ceb: $45
    jp nz, $f792                                  ; $4cec: $c2 $92 $f7

    adc b                                         ; $4cef: $88
    or a                                          ; $4cf0: $b7
    sbc l                                         ; $4cf1: $9d
    xor a                                         ; $4cf2: $af
    add h                                         ; $4cf3: $84
    or [hl]                                       ; $4cf4: $b6
    ld d, h                                       ; $4cf5: $54
    sbc a                                         ; $4cf6: $9f
    adc $ff                                       ; $4cf7: $ce $ff
    dec bc                                        ; $4cf9: $0b
    nop                                           ; $4cfa: $00
    ld c, $77                                     ; $4cfb: $0e $77
    rst $20                                       ; $4cfd: $e7
    ld e, h                                       ; $4cfe: $5c
    db $db                                        ; $4cff: $db
    cpl                                           ; $4d00: $2f
    ld sp, hl                                     ; $4d01: $f9
    cp e                                          ; $4d02: $bb
    ld [hl], e                                    ; $4d03: $73
    ld b, $4c                                     ; $4d04: $06 $4c
    ld c, c                                       ; $4d06: $49
    dec [hl]                                      ; $4d07: $35
    ld h, l                                       ; $4d08: $65
    sbc l                                         ; $4d09: $9d
    ld h, l                                       ; $4d0a: $65
    jp nz, $5e73                                  ; $4d0b: $c2 $73 $5e

    ld sp, hl                                     ; $4d0e: $f9
    inc sp                                        ; $4d0f: $33
    call z, Call_000_2b7f                         ; $4d10: $cc $7f $2b
    ld c, d                                       ; $4d13: $4a
    ld b, l                                       ; $4d14: $45
    dec bc                                        ; $4d15: $0b
    adc c                                         ; $4d16: $89
    jp nc, Jump_000_32fc                          ; $4d17: $d2 $fc $32

    ei                                            ; $4d1a: $fb
    dec bc                                        ; $4d1b: $0b
    nop                                           ; $4d1c: $00
    ld a, h                                       ; $4d1d: $7c
    db $db                                        ; $4d1e: $db
    sub h                                         ; $4d1f: $94
    ld d, d                                       ; $4d20: $52
    xor c                                         ; $4d21: $a9
    jp hl                                         ; $4d22: $e9


    ld h, $dd                                     ; $4d23: $26 $dd
    jp $e63a                                      ; $4d25: $c3 $3a $e6


    sbc a                                         ; $4d28: $9f
    rst $30                                       ; $4d29: $f7
    rst $00                                       ; $4d2a: $c7
    ret                                           ; $4d2b: $c9


    add e                                         ; $4d2c: $83
    xor l                                         ; $4d2d: $ad
    sbc d                                         ; $4d2e: $9a
    add sp, $1c                                   ; $4d2f: $e8 $1c
    ld d, d                                       ; $4d31: $52
    rst $00                                       ; $4d32: $c7
    adc h                                         ; $4d33: $8c
    add b                                         ; $4d34: $80
    ld [bc], a                                    ; $4d35: $02
    cp h                                          ; $4d36: $bc
    add sp, -$05                                  ; $4d37: $e8 $fb
    ccf                                           ; $4d39: $3f
    rlca                                          ; $4d3a: $07
    or d                                          ; $4d3b: $b2
    db $fd                                        ; $4d3c: $fd
    or l                                          ; $4d3d: $b5
    jr z, @-$25                                   ; $4d3e: $28 $d9

    sbc [hl]                                      ; $4d40: $9e
    ld a, e                                       ; $4d41: $7b
    jp hl                                         ; $4d42: $e9


    cp d                                          ; $4d43: $ba
    ld l, $e1                                     ; $4d44: $2e $e1
    adc c                                         ; $4d46: $89
    ld d, d                                       ; $4d47: $52
    ld d, c                                       ; $4d48: $51
    ld e, d                                       ; $4d49: $5a
    ld e, c                                       ; $4d4a: $59
    xor e                                         ; $4d4b: $ab

jr_05e_4d4c:
    ld l, b                                       ; $4d4c: $68
    sbc e                                         ; $4d4d: $9b
    inc d                                         ; $4d4e: $14
    ld d, l                                       ; $4d4f: $55
    ld d, c                                       ; $4d50: $51
    ld [hl], e                                    ; $4d51: $73
    db $eb                                        ; $4d52: $eb
    ld [bc], a                                    ; $4d53: $02
    inc a                                         ; $4d54: $3c
    ld e, c                                       ; $4d55: $59
    ld c, [hl]                                    ; $4d56: $4e
    ld c, c                                       ; $4d57: $49
    sbc l                                         ; $4d58: $9d
    dec [hl]                                      ; $4d59: $35

Jump_05e_4d5a:
    ld [hl+], a                                   ; $4d5a: $22
    ld c, l                                       ; $4d5b: $4d
    db $f4                                        ; $4d5c: $f4
    db $fd                                        ; $4d5d: $fd
    sbc a                                         ; $4d5e: $9f
    inc bc                                        ; $4d5f: $03
    reti                                          ; $4d60: $d9


    cp $5a                                        ; $4d61: $fe $5a
    sub h                                         ; $4d63: $94

Call_05e_4d64:
    ld l, h                                       ; $4d64: $6c
    rst $08                                       ; $4d65: $cf
    cp l                                          ; $4d66: $bd
    ld [hl], h                                    ; $4d67: $74

Call_05e_4d68:
    ld bc, $e8bc                                  ; $4d68: $01 $bc $e8
    ei                                            ; $4d6b: $fb
    ccf                                           ; $4d6c: $3f
    rlca                                          ; $4d6d: $07
    or d                                          ; $4d6e: $b2
    db $fd                                        ; $4d6f: $fd
    or l                                          ; $4d70: $b5
    jr z, jr_05e_4d4c                             ; $4d71: $28 $d9

    sbc [hl]                                      ; $4d73: $9e
    ld a, e                                       ; $4d74: $7b
    ld c, c                                       ; $4d75: $49
    or c                                          ; $4d76: $b1
    jp z, Jump_000_3571                           ; $4d77: $ca $71 $35

    pop de                                        ; $4d7a: $d1
    and $7f                                       ; $4d7b: $e6 $7f
    add hl, bc                                    ; $4d7d: $09
    rst $08                                       ; $4d7e: $cf
    ld a, c                                       ; $4d7f: $79
    sbc l                                         ; $4d80: $9d
    db $dd                                        ; $4d81: $dd
    ld sp, hl                                     ; $4d82: $f9
    ld a, a                                       ; $4d83: $7f
    ld bc, $5b7c                                  ; $4d84: $01 $7c $5b
    db $e3                                        ; $4d87: $e3

jr_05e_4d88:
    sbc h                                         ; $4d88: $9c
    rla                                           ; $4d89: $17
    sub [hl]                                      ; $4d8a: $96
    ld h, b                                       ; $4d8b: $60
    sub h                                         ; $4d8c: $94
    rst $38                                       ; $4d8d: $ff
    rlca                                          ; $4d8e: $07
    add $d2                                       ; $4d8f: $c6 $d2
    ld b, h                                       ; $4d91: $44
    rst $18                                       ; $4d92: $df
    rst $38                                       ; $4d93: $ff
    add hl, sp                                    ; $4d94: $39
    sub b                                         ; $4d95: $90
    db $ed                                        ; $4d96: $ed
    xor a                                         ; $4d97: $af
    ld b, l                                       ; $4d98: $45
    ret                                           ; $4d99: $c9


    or $dc                                        ; $4d9a: $f6 $dc
    ld c, e                                       ; $4d9c: $4b
    rla                                           ; $4d9d: $17
    nop                                           ; $4d9e: $00
    ld c, $b2                                     ; $4d9f: $0e $b2
    sub $bd                                       ; $4da1: $d6 $bd
    dec [hl]                                      ; $4da3: $35
    adc $79                                       ; $4da4: $ce $79
    ld h, c                                       ; $4da6: $61
    ld l, c                                       ; $4da7: $69
    cp $b4                                        ; $4da8: $fe $b4
    or l                                          ; $4daa: $b5
    ld h, a                                       ; $4dab: $67
    ld sp, hl                                     ; $4dac: $f9
    ld e, d                                       ; $4dad: $5a
    sub h                                         ; $4dae: $94
    db $ec                                        ; $4daf: $ec
    ld e, c                                       ; $4db0: $59
    cp [hl]                                       ; $4db1: $be
    rla                                           ; $4db2: $17
    nop                                           ; $4db3: $00
    ld e, $af                                     ; $4db4: $1e $af
    ld de, $fe69                                  ; $4db6: $11 $69 $fe
    or h                                          ; $4db9: $b4
    or l                                          ; $4dba: $b5
    ld h, a                                       ; $4dbb: $67
    ld sp, hl                                     ; $4dbc: $f9

Call_05e_4dbd:
    ld e, d                                       ; $4dbd: $5a
    sub h                                         ; $4dbe: $94
    db $ec                                        ; $4dbf: $ec
    ld e, c                                       ; $4dc0: $59
    cp [hl]                                       ; $4dc1: $be
    sbc a                                         ; $4dc2: $9f
    ld d, h                                       ; $4dc3: $54
    sbc d                                         ; $4dc4: $9a
    push hl                                       ; $4dc5: $e5
    ld [hl], h                                    ; $4dc6: $74
    ld bc, $3fbc                                  ; $4dc7: $01 $bc $3f
    ld l, l                                       ; $4dca: $6d
    db $ed                                        ; $4dcb: $ed
    ld e, c                                       ; $4dcc: $59
    cp [hl]                                       ; $4dcd: $be
    ld d, $25                                     ; $4dce: $16 $25
    ld a, e                                       ; $4dd0: $7b
    sub [hl]                                      ; $4dd1: $96
    rst $28                                       ; $4dd2: $ef
    db $eb                                        ; $4dd3: $eb
    or a                                          ; $4dd4: $b7
    ld e, [hl]                                    ; $4dd5: $5e

jr_05e_4dd6:
    db $fd                                        ; $4dd6: $fd
    inc l                                         ; $4dd7: $2c
    rst $18                                       ; $4dd8: $df
    cp $af                                        ; $4dd9: $fe $af
    dec bc                                        ; $4ddb: $0b
    nop                                           ; $4ddc: $00
    ld c, $b2                                     ; $4ddd: $0e $b2
    sub $bd                                       ; $4ddf: $d6 $bd
    dec [hl]                                      ; $4de1: $35
    adc $79                                       ; $4de2: $ce $79
    db $fd                                        ; $4de4: $fd
    sbc c                                         ; $4de5: $99
    rst $38                                       ; $4de6: $ff
    jp nz, $5e73                                  ; $4de7: $c2 $73 $5e

    jr nc, jr_05e_4dd6                            ; $4dea: $30 $ea

    ld [hl], a                                    ; $4dec: $77
    cp [hl]                                       ; $4ded: $be
    db $fc                                        ; $4dee: $fc
    ccf                                           ; $4def: $3f
    jr nc, jr_05e_4d88                            ; $4df0: $30 $96

    and $4f                                       ; $4df2: $e6 $4f
    ld e, e                                       ; $4df4: $5b
    ld a, e                                       ; $4df5: $7b
    sub [hl]                                      ; $4df6: $96
    xor a                                         ; $4df7: $af
    ld b, l                                       ; $4df8: $45
    ret                                           ; $4df9: $c9


    sbc [hl]                                      ; $4dfa: $9e
    push hl                                       ; $4dfb: $e5
    ei                                            ; $4dfc: $fb
    rla                                           ; $4dfd: $17
    nop                                           ; $4dfe: $00
    xor $84                                       ; $4dff: $ee $84
    pop hl                                        ; $4e01: $e1
    ccf                                           ; $4e02: $3f
    db $db                                        ; $4e03: $db
    cp c                                          ; $4e04: $b9
    ld sp, hl                                     ; $4e05: $f9
    ld e, [hl]                                    ; $4e06: $5e
    rst $10                                       ; $4e07: $d7
    dec h                                         ; $4e08: $25
    sbc $3f                                       ; $4e09: $de $3f
    di                                            ; $4e0b: $f3
    add hl, de                                    ; $4e0c: $19
    sbc d                                         ; $4e0d: $9a
    db $ec                                        ; $4e0e: $ec
    dec bc                                        ; $4e0f: $0b
    scf                                           ; $4e10: $37
    xor c                                         ; $4e11: $a9
    add sp, $26                                   ; $4e12: $e8 $26
    reti                                          ; $4e14: $d9


    ld [hl], $69                                  ; $4e15: $36 $69
    ld d, d                                       ; $4e17: $52
    sub $d1                                       ; $4e18: $d6 $d1
    ld b, h                                       ; $4e1a: $44
    and l                                         ; $4e1b: $a5
    db $fc                                        ; $4e1c: $fc
    xor l                                         ; $4e1d: $ad
    rst $38                                       ; $4e1e: $ff
    db $10                                        ; $4e1f: $10
    call Call_05e_6b19                            ; $4e20: $cd $19 $6b
    ld b, [hl]                                    ; $4e23: $46
    rla                                           ; $4e24: $17
    nop                                           ; $4e25: $00
    inc a                                         ; $4e26: $3c
    ld e, c                                       ; $4e27: $59
    ld c, [hl]                                    ; $4e28: $4e
    ld c, c                                       ; $4e29: $49
    sbc l                                         ; $4e2a: $9d
    dec [hl]                                      ; $4e2b: $35
    ld [hl+], a                                   ; $4e2c: $22
    ld a, c                                       ; $4e2d: $79
    rra                                           ; $4e2e: $1f
    add [hl]                                      ; $4e2f: $86
    rst $38                                       ; $4e30: $ff
    ld l, h                                       ; $4e31: $6c
    rst $20                                       ; $4e32: $e7
    and $4b                                       ; $4e33: $e6 $4b
    rla                                           ; $4e35: $17
    nop                                           ; $4e36: $00
    xor $84                                       ; $4e37: $ee $84
    pop hl                                        ; $4e39: $e1
    ccf                                           ; $4e3a: $3f
    db $db                                        ; $4e3b: $db
    cp c                                          ; $4e3c: $b9
    ld a, c                                       ; $4e3d: $79
    or h                                          ; $4e3e: $b4
    ld a, d                                       ; $4e3f: $7a
    sbc h                                         ; $4e40: $9c
    ret z                                         ; $4e41: $c8

    cp a                                          ; $4e42: $bf
    push af                                       ; $4e43: $f5
    ld e, e                                       ; $4e44: $5b
    xor a                                         ; $4e45: $af
    ld a, [hl]                                    ; $4e46: $7e
    and $47                                       ; $4e47: $e6 $47
    ld e, b                                       ; $4e49: $58
    ld b, h                                       ; $4e4a: $44

jr_05e_4e4b:
    ld e, l                                       ; $4e4b: $5d
    nop                                           ; $4e4c: $00
    ld a, h                                       ; $4e4d: $7c
    ld e, e                                       ; $4e4e: $5b
    db $e3                                        ; $4e4f: $e3
    sbc h                                         ; $4e50: $9c
    rla                                           ; $4e51: $17
    sub [hl]                                      ; $4e52: $96
    ld h, b                                       ; $4e53: $60
    call nc, Call_05e_7cef                        ; $4e54: $d4 $ef $7c
    ld sp, hl                                     ; $4e57: $f9
    ld a, a                                       ; $4e58: $7f
    ld h, b                                       ; $4e59: $60
    inc l                                         ; $4e5a: $2c
    ld a, c                                       ; $4e5b: $79
    rra                                           ; $4e5c: $1f
    add [hl]                                      ; $4e5d: $86
    rst $38                                       ; $4e5e: $ff
    ld l, h                                       ; $4e5f: $6c
    rst $20                                       ; $4e60: $e7
    and $4b                                       ; $4e61: $e6 $4b
    rla                                           ; $4e63: $17
    nop                                           ; $4e64: $00
    inc a                                         ; $4e65: $3c
    add sp, -$39                                  ; $4e66: $e8 $c7
    ld d, [hl]                                    ; $4e68: $56
    sub h                                         ; $4e69: $94
    or d                                          ; $4e6a: $b2
    ld l, c                                       ; $4e6b: $69
    ld l, e                                       ; $4e6c: $6b
    rst $08                                       ; $4e6d: $cf
    ld a, [c]                                     ; $4e6e: $f2
    or l                                          ; $4e6f: $b5
    jr z, jr_05e_4e4b                             ; $4e70: $28 $d9

    or e                                          ; $4e72: $b3
    ld a, h                                       ; $4e73: $7c
    cp c                                          ; $4e74: $b9
    push bc                                       ; $4e75: $c5
    ld c, a                                       ; $4e76: $4f
    scf                                           ; $4e77: $37
    add hl, bc                                    ; $4e78: $09
    ld c, e                                       ; $4e79: $4b
    ld sp, hl                                     ; $4e7a: $f9
    or e                                          ; $4e7b: $b3
    ei                                            ; $4e7c: $fb
    xor l                                         ; $4e7d: $ad
    ld d, a                                       ; $4e7e: $57
    rst $08                                       ; $4e7f: $cf
    ld [hl], d                                    ; $4e80: $72
    sbc h                                         ; $4e81: $9c
    ld l, a                                       ; $4e82: $6f
    call c, Call_05e_7c00                         ; $4e83: $dc $00 $7c
    cp a                                          ; $4e86: $bf
    or l                                          ; $4e87: $b5
    ret c                                         ; $4e88: $d8

    sbc a                                         ; $4e89: $9f
    call nc, Call_000_2359                        ; $4e8a: $d4 $59 $23
    ld d, d                                       ; $4e8d: $52
    adc d                                         ; $4e8e: $8a
    ld a, [hl]                                    ; $4e8f: $7e
    xor h                                         ; $4e90: $ac
    db $ed                                        ; $4e91: $ed
    dec hl                                        ; $4e92: $2b
    sbc e                                         ; $4e93: $9b
    or [hl]                                       ; $4e94: $b6
    or $2c                                        ; $4e95: $f6 $2c
    ld e, a                                       ; $4e97: $5f
    adc e                                         ; $4e98: $8b
    sub d                                         ; $4e99: $92
    dec a                                         ; $4e9a: $3d
    set 6, a                                      ; $4e9b: $cb $f7
    cpl                                           ; $4e9d: $2f
    nop                                           ; $4e9e: $00
    inc a                                         ; $4e9f: $3c
    add sp, -$39                                  ; $4ea0: $e8 $c7
    jp c, $b2be                                   ; $4ea2: $da $be $b2

    ld l, c                                       ; $4ea5: $69
    ld l, e                                       ; $4ea6: $6b
    rst $08                                       ; $4ea7: $cf
    ld a, [c]                                     ; $4ea8: $f2
    or l                                          ; $4ea9: $b5
    jr z, @-$25                                   ; $4eaa: $28 $d9

    or e                                          ; $4eac: $b3
    ld a, h                                       ; $4ead: $7c
    ld e, a                                       ; $4eae: $5f
    or c                                          ; $4eaf: $b1
    jp z, $8571                                   ; $4eb0: $ca $71 $85

    rst $20                                       ; $4eb3: $e7
    cp h                                          ; $4eb4: $bc
    adc $ee                                       ; $4eb5: $ce $ee
    db $fc                                        ; $4eb7: $fc
    cp a                                          ; $4eb8: $bf
    nop                                           ; $4eb9: $00
    ld a, h                                       ; $4eba: $7c
    ld e, e                                       ; $4ebb: $5b
    db $e3                                        ; $4ebc: $e3
    sbc h                                         ; $4ebd: $9c
    rla                                           ; $4ebe: $17
    sub [hl]                                      ; $4ebf: $96
    ld h, b                                       ; $4ec0: $60
    sub h                                         ; $4ec1: $94
    rst $38                                       ; $4ec2: $ff
    rlca                                          ; $4ec3: $07
    add $52                                       ; $4ec4: $c6 $52
    adc d                                         ; $4ec6: $8a
    ld a, [hl]                                    ; $4ec7: $7e
    xor h                                         ; $4ec8: $ac
    db $ed                                        ; $4ec9: $ed
    dec hl                                        ; $4eca: $2b
    sbc e                                         ; $4ecb: $9b
    or [hl]                                       ; $4ecc: $b6
    or $2c                                        ; $4ecd: $f6 $2c
    ld e, a                                       ; $4ecf: $5f
    adc e                                         ; $4ed0: $8b
    sub d                                         ; $4ed1: $92
    dec a                                         ; $4ed2: $3d
    set 6, a                                      ; $4ed3: $cb $f7
    cpl                                           ; $4ed5: $2f
    nop                                           ; $4ed6: $00
    ld a, h                                       ; $4ed7: $7c
    ld d, c                                       ; $4ed8: $51
    sub c                                         ; $4ed9: $91
    ld d, d                                       ; $4eda: $52
    add hl, hl                                    ; $4edb: $29
    jp c, Jump_000_26f6                           ; $4edc: $da $f6 $26

    ld a, [hl+]                                   ; $4edf: $2a
    ld sp, hl                                     ; $4ee0: $f9
    ld e, h                                       ; $4ee1: $5c
    ld e, c                                       ; $4ee2: $59
    sub e                                         ; $4ee3: $93
    ld l, l                                       ; $4ee4: $6d
    ld d, d                                       ; $4ee5: $52
    inc a                                         ; $4ee6: $3c
    rst $08                                       ; $4ee7: $cf
    ld e, b                                       ; $4ee8: $58
    halt                                          ; $4ee9: $76
    ld bc, $271c                                  ; $4eea: $01 $1c $27
    ld e, d                                       ; $4eed: $5a
    cp $b3                                        ; $4eee: $fe $b3
    cp b                                          ; $4ef0: $b8
    db $fd                                        ; $4ef1: $fd
    push de                                       ; $4ef2: $d5
    inc e                                         ; $4ef3: $1c
    ld e, e                                       ; $4ef4: $5b
    cp d                                          ; $4ef5: $ba
    or a                                          ; $4ef6: $b7
    ld c, c                                       ; $4ef7: $49
    ld a, $d1                                     ; $4ef8: $3e $d1
    add hl, sp                                    ; $4efa: $39
    ld hl, $b69f                                  ; $4efb: $21 $9f $b6
    inc [hl]                                      ; $4efe: $34
    ld b, a                                       ; $4eff: $47
    cp [hl]                                       ; $4f00: $be
    db $dd                                        ; $4f01: $dd
    ld [hl], c                                    ; $4f02: $71
    sub $f6                                       ; $4f03: $d6 $f6
    ld [de], a                                    ; $4f05: $12
    rst $18                                       ; $4f06: $df
    ld d, $29                                     ; $4f07: $16 $29
    ld c, d                                       ; $4f09: $4a
    di                                            ; $4f0a: $f3
    xor e                                         ; $4f0b: $ab
    ld e, [hl]                                    ; $4f0c: $5e
    di                                            ; $4f0d: $f3
    ld b, a                                       ; $4f0e: $47
    db $fd                                        ; $4f0f: $fd
    dec bc                                        ; $4f10: $0b
    ld a, [hl]                                    ; $4f11: $7e
    and c                                         ; $4f12: $a1
    pop hl                                        ; $4f13: $e1
    or $98                                        ; $4f14: $f6 $98
    ld d, $d3                                     ; $4f16: $16 $d3
    ld d, [hl]                                    ; $4f18: $56
    or [hl]                                       ; $4f19: $b6
    db $db                                        ; $4f1a: $db
    and h                                         ; $4f1b: $a4
    xor a                                         ; $4f1c: $af
    ld a, [$6d92]                                 ; $4f1d: $fa $92 $6d
    adc l                                         ; $4f20: $8d
    ld [hl], e                                    ; $4f21: $73
    ld b, d                                       ; $4f22: $42
    ld e, c                                       ; $4f23: $59
    ld a, [bc]                                    ; $4f24: $0a
    adc c                                         ; $4f25: $89
    jp nc, $d644                                  ; $4f26: $d2 $44 $d6

    cp l                                          ; $4f29: $bd
    ld e, c                                       ; $4f2a: $59
    ld a, [bc]                                    ; $4f2b: $0a
    ld e, c                                       ; $4f2c: $59
    db $eb                                        ; $4f2d: $eb
    jr c, jr_05e_4f67                             ; $4f2e: $38 $37

    sub l                                         ; $4f30: $95
    call c, $b3c7                                 ; $4f31: $dc $c7 $b3
    jr z, jr_05e_4fb4                             ; $4f34: $28 $7e

    or [hl]                                       ; $4f36: $b6
    cp $d9                                        ; $4f37: $fe $d9
    inc b                                         ; $4f39: $04
    add $b4                                       ; $4f3a: $c6 $b4
    ld [$4bdb], sp                                ; $4f3c: $08 $db $4b
    cp h                                          ; $4f3f: $bc
    sub h                                         ; $4f40: $94
    dec [hl]                                      ; $4f41: $35
    ret                                           ; $4f42: $c9


    or [hl]                                       ; $4f43: $b6
    ld c, c                                       ; $4f44: $49
    ld [hl], $06                                  ; $4f45: $36 $06
    adc e                                         ; $4f47: $8b
    ld d, d                                       ; $4f48: $52
    cp $cf                                        ; $4f49: $fe $cf
    cp [hl]                                       ; $4f4b: $be
    inc [hl]                                      ; $4f4c: $34
    jp nc, Jump_000_30ef                          ; $4f4d: $d2 $ef $30

    ei                                            ; $4f50: $fb
    dec bc                                        ; $4f51: $0b
    nop                                           ; $4f52: $00
    ld e, $8f                                     ; $4f53: $1e $8f
    ld [hl], c                                    ; $4f55: $71
    or [hl]                                       ; $4f56: $b6
    sub d                                         ; $4f57: $92
    adc d                                         ; $4f58: $8a
    ld l, [hl]                                    ; $4f59: $6e
    ld [de], a                                    ; $4f5a: $12
    sbc [hl]                                      ; $4f5b: $9e
    or l                                          ; $4f5c: $b5
    ld l, l                                       ; $4f5d: $6d
    pop hl                                        ; $4f5e: $e1
    add hl, sp                                    ; $4f5f: $39
    and e                                         ; $4f60: $a3
    push hl                                       ; $4f61: $e5
    ccf                                           ; $4f62: $3f
    adc e                                         ; $4f63: $8b
    db $db                                        ; $4f64: $db
    ld e, a                                       ; $4f65: $5f
    dec e                                         ; $4f66: $1d

jr_05e_4f67:
    call c, $b1b6                                 ; $4f67: $dc $b6 $b1
    ld h, [hl]                                    ; $4f6a: $66
    ld l, a                                       ; $4f6b: $6f
    ld a, e                                       ; $4f6c: $7b
    adc c                                         ; $4f6d: $89
    db $e3                                        ; $4f6e: $e3
    ld b, h                                       ; $4f6f: $44
    res 1, b                                      ; $4f70: $cb $88
    adc $76                                       ; $4f72: $ce $76
    ld d, e                                       ; $4f74: $53
    ld c, [hl]                                    ; $4f75: $4e
    sub a                                         ; $4f76: $97
    ld hl, sp-$37                                 ; $4f77: $f8 $c9
    sbc d                                         ; $4f79: $9a
    ld h, h                                       ; $4f7a: $64
    rst $38                                       ; $4f7b: $ff
    xor l                                         ; $4f7c: $ad
    adc c                                         ; $4f7d: $89
    xor h                                         ; $4f7e: $ac
    ld a, e                                       ; $4f7f: $7b
    or e                                          ; $4f80: $b3
    inc d                                         ; $4f81: $14
    or d                                          ; $4f82: $b2
    sub $71                                       ; $4f83: $d6 $71
    ld l, [hl]                                    ; $4f85: $6e
    ld a, [hl+]                                   ; $4f86: $2a
    cp c                                          ; $4f87: $b9
    adc a                                         ; $4f88: $8f
    ld h, a                                       ; $4f89: $67
    ld d, c                                       ; $4f8a: $51
    db $fc                                        ; $4f8b: $fc
    ld l, h                                       ; $4f8c: $6c
    db $fd                                        ; $4f8d: $fd
    or e                                          ; $4f8e: $b3
    add hl, bc                                    ; $4f8f: $09
    adc h                                         ; $4f90: $8c
    ld l, c                                       ; $4f91: $69
    ld de, $97b6                                  ; $4f92: $11 $b6 $97
    ld a, b                                       ; $4f95: $78
    add hl, hl                                    ; $4f96: $29
    ld l, e                                       ; $4f97: $6b
    sub d                                         ; $4f98: $92
    ld l, l                                       ; $4f99: $6d
    sub e                                         ; $4f9a: $93
    ld l, h                                       ; $4f9b: $6c
    inc c                                         ; $4f9c: $0c
    ld d, $a5                                     ; $4f9d: $16 $a5
    db $fc                                        ; $4f9f: $fc
    sbc a                                         ; $4fa0: $9f
    ld a, l                                       ; $4fa1: $7d
    ld l, c                                       ; $4fa2: $69
    and h                                         ; $4fa3: $a4
    rst $18                                       ; $4fa4: $df
    ld h, c                                       ; $4fa5: $61
    or $17                                        ; $4fa6: $f6 $17
    nop                                           ; $4fa8: $00
    db $fc                                        ; $4fa9: $fc
    ld h, h                                       ; $4faa: $64
    ld b, [hl]                                    ; $4fab: $46
    jp nz, Jump_000_18d2                          ; $4fac: $c2 $d2 $18

    or [hl]                                       ; $4faf: $b6
    sbc d                                         ; $4fb0: $9a
    ret z                                         ; $4fb1: $c8

    cp d                                          ; $4fb2: $ba
    scf                                           ; $4fb3: $37

jr_05e_4fb4:
    ld c, e                                       ; $4fb4: $4b
    ld hl, $1d6b                                  ; $4fb5: $21 $6b $1d
    rst $20                                       ; $4fb8: $e7
    ld h, $db                                     ; $4fb9: $26 $db
    and h                                         ; $4fbb: $a4
    ld a, b                                       ; $4fbc: $78
    sbc [hl]                                      ; $4fbd: $9e
    or c                                          ; $4fbe: $b1
    db $ec                                        ; $4fbf: $ec
    ld [bc], a                                    ; $4fc0: $02
    db $fc                                        ; $4fc1: $fc
    ld h, h                                       ; $4fc2: $64
    ld b, [hl]                                    ; $4fc3: $46
    jp nz, Jump_000_18d2                          ; $4fc4: $c2 $d2 $18

    or [hl]                                       ; $4fc7: $b6
    sbc d                                         ; $4fc8: $9a
    ret z                                         ; $4fc9: $c8

    cp d                                          ; $4fca: $ba
    scf                                           ; $4fcb: $37
    ld c, e                                       ; $4fcc: $4b
    ld hl, $1d6b                                  ; $4fcd: $21 $6b $1d
    rst $20                                       ; $4fd0: $e7

jr_05e_4fd1:
    and [hl]                                      ; $4fd1: $a6
    and h                                         ; $4fd2: $a4
    ld l, h                                       ; $4fd3: $6c
    jr nz, jr_05e_4fd1                            ; $4fd4: $20 $fb

    cpl                                           ; $4fd6: $2f
    push hl                                       ; $4fd7: $e5
    cp e                                          ; $4fd8: $bb
    ld [hl], a                                    ; $4fd9: $77
    xor h                                         ; $4fda: $ac
    db $ed                                        ; $4fdb: $ed
    ld a, l                                       ; $4fdc: $7d
    db $d3                                        ; $4fdd: $d3
    ld l, c                                       ; $4fde: $69
    sub d                                         ; $4fdf: $92
    rst $08                                       ; $4fe0: $cf
    ld [hl], l                                    ; $4fe1: $75
    ld c, $d7                                     ; $4fe2: $0e $d7
    ld l, c                                       ; $4fe4: $69
    cp d                                          ; $4fe5: $ba
    nop                                           ; $4fe6: $00
    ld l, [hl]                                    ; $4fe7: $6e
    ld l, a                                       ; $4fe8: $6f
    cp $a5                                        ; $4fe9: $fe $a5
    ld sp, $356c                                  ; $4feb: $31 $6c $35
    sub c                                         ; $4fee: $91
    ld [hl], l                                    ; $4fef: $75
    ld l, a                                       ; $4ff0: $6f
    sub [hl]                                      ; $4ff1: $96
    ld b, d                                       ; $4ff2: $42
    sub $3a                                       ; $4ff3: $d6 $3a
    adc $4d                                       ; $4ff5: $ce $4d
    ld c, c                                       ; $4ff7: $49
    pop af                                        ; $4ff8: $f1
    inc a                                         ; $4ff9: $3c
    ld h, e                                       ; $4ffa: $63
    reti                                          ; $4ffb: $d9


    dec h                                         ; $4ffc: $25
    ld a, [hl]                                    ; $4ffd: $7e
    call c, $bb1c                                 ; $4ffe: $dc $1c $bb
    ccf                                           ; $5001: $3f
    ld a, a                                       ; $5002: $7f
    db $eb                                        ; $5003: $eb
    sub l                                         ; $5004: $95
    db $ed                                        ; $5005: $ed
    ld [hl], $09                                  ; $5006: $36 $09
    ld c, e                                       ; $5008: $4b
    ld l, c                                       ; $5009: $69
    add $d5                                       ; $500a: $c6 $d5
    add hl, de                                    ; $500c: $19
    ld e, l                                       ; $500d: $5d
    nop                                           ; $500e: $00
    db $fc                                        ; $500f: $fc
    db $e3                                        ; $5010: $e3
    ld l, h                                       ; $5011: $6c
    dec bc                                        ; $5012: $0b
    ld e, $83                                     ; $5013: $1e $83
    xor l                                         ; $5015: $ad
    ld e, $c6                                     ; $5016: $1e $c6
    dec [hl]                                      ; $5018: $35
    ld a, e                                       ; $5019: $7b
    and l                                         ; $501a: $a5
    ccf                                           ; $501b: $3f
    db $e3                                        ; $501c: $e3
    cp $2f                                        ; $501d: $fe $2f
    adc l                                         ; $501f: $8d
    pop de                                        ; $5020: $d1
    db $fd                                        ; $5021: $fd
    sbc d                                         ; $5022: $9a
    ret z                                         ; $5023: $c8

    cp d                                          ; $5024: $ba
    scf                                           ; $5025: $37
    ld c, e                                       ; $5026: $4b
    ld hl, $1d6b                                  ; $5027: $21 $6b $1d
    rst $20                                       ; $502a: $e7
    ld h, $ba                                     ; $502b: $26 $ba
    call nz, $9b8f                                ; $502d: $c4 $8f $9b
    ld h, e                                       ; $5030: $63
    rst $30                                       ; $5031: $f7
    rst $20                                       ; $5032: $e7
    ld l, a                                       ; $5033: $6f
    cp l                                          ; $5034: $bd
    ld l, d                                       ; $5035: $6a
    ld a, [hl-]                                   ; $5036: $3a
    daa                                           ; $5037: $27
    add h                                         ; $5038: $84
    and l                                         ; $5039: $a5
    ld c, c                                       ; $503a: $49
    ld e, c                                       ; $503b: $59
    scf                                           ; $503c: $37
    rla                                           ; $503d: $17
    ld e, l                                       ; $503e: $5d
    nop                                           ; $503f: $00
    db $fc                                        ; $5040: $fc
    ld h, h                                       ; $5041: $64
    ld b, [hl]                                    ; $5042: $46
    jp nz, $c592                                  ; $5043: $c2 $92 $c5

    ld h, b                                       ; $5046: $60
    rst $38                                       ; $5047: $ff
    ld sp, hl                                     ; $5048: $f9
    ld l, e                                       ; $5049: $6b
    ld [hl+], a                                   ; $504a: $22
    db $eb                                        ; $504b: $eb
    sbc $2c                                       ; $504c: $de $2c
    add l                                         ; $504e: $85
    xor h                                         ; $504f: $ac
    ld [hl], l                                    ; $5050: $75
    sbc h                                         ; $5051: $9c
    sbc e                                         ; $5052: $9b
    ld l, h                                       ; $5053: $6c
    sub e                                         ; $5054: $93
    ld [c], a                                     ; $5055: $e2
    ld a, c                                       ; $5056: $79
    add $b2                                       ; $5057: $c6 $b2
    ld c, e                                       ; $5059: $4b
    db $fc                                        ; $505a: $fc
    cp b                                          ; $505b: $b8
    add hl, sp                                    ; $505c: $39
    halt                                          ; $505d: $76
    ld a, a                                       ; $505e: $7f
    cp $d6                                        ; $505f: $fe $d6
    xor e                                         ; $5061: $ab
    ld l, b                                       ; $5062: $68
    reti                                          ; $5063: $d9


    cp a                                          ; $5064: $bf
    jp nc, $8581                                  ; $5065: $d2 $81 $85

    ldh a, [$5f]                                  ; $5068: $f0 $5f
    nop                                           ; $506a: $00
    db $fc                                        ; $506b: $fc
    dec de                                        ; $506c: $1b
    or [hl]                                       ; $506d: $b6
    sub l                                         ; $506e: $95
    ld d, h                                       ; $506f: $54
    ld [hl], h                                    ; $5070: $74
    sub e                                         ; $5071: $93
    ld a, d                                       ; $5072: $7a
    sbc h                                         ; $5073: $9c
    or l                                          ; $5074: $b5
    ld l, l                                       ; $5075: $6d
    and l                                         ; $5076: $a5
    ccf                                           ; $5077: $3f
    db $e3                                        ; $5078: $e3
    cp $2f                                        ; $5079: $fe $2f
    adc l                                         ; $507b: $8d
    pop de                                        ; $507c: $d1
    db $fd                                        ; $507d: $fd
    sbc d                                         ; $507e: $9a
    ret z                                         ; $507f: $c8

    cp d                                          ; $5080: $ba
    scf                                           ; $5081: $37
    ld c, e                                       ; $5082: $4b
    ld hl, $1d6b                                  ; $5083: $21 $6b $1d
    rst $20                                       ; $5086: $e7
    ld h, $ba                                     ; $5087: $26 $ba
    nop                                           ; $5089: $00
    db $fc                                        ; $508a: $fc
    db $e3                                        ; $508b: $e3
    call z, $a57f                                 ; $508c: $cc $7f $a5
    ccf                                           ; $508f: $3f
    db $e3                                        ; $5090: $e3
    cp $2f                                        ; $5091: $fe $2f
    adc l                                         ; $5093: $8d
    ld bc, $d689                                  ; $5094: $01 $89 $d6
    ld b, h                                       ; $5097: $44
    sub $bd                                       ; $5098: $d6 $bd
    ld e, c                                       ; $509a: $59
    ld a, [bc]                                    ; $509b: $0a
    ld e, c                                       ; $509c: $59
    db $eb                                        ; $509d: $eb
    jr c, jr_05e_50d7                             ; $509e: $38 $37

    ld d, l                                       ; $50a0: $55
    dec b                                         ; $50a1: $05
    or a                                          ; $50a2: $b7
    inc a                                         ; $50a3: $3c
    jp nz, Jump_05e_7af9                          ; $50a4: $c2 $f9 $7a

    and $bf                                       ; $50a7: $e6 $bf
    ld [hl], d                                    ; $50a9: $72
    call c, Call_05e_7fee                         ; $50aa: $dc $ee $7f
    ld l, [hl]                                    ; $50ad: $6e
    nop                                           ; $50ae: $00
    sbc [hl]                                      ; $50af: $9e
    dec c                                         ; $50b0: $0d
    db $db                                        ; $50b1: $db
    rst $10                                       ; $50b2: $d7

jr_05e_50b3:
    ld b, h                                       ; $50b3: $44
    sub $bd                                       ; $50b4: $d6 $bd
    ld e, c                                       ; $50b6: $59
    ld a, [bc]                                    ; $50b7: $0a
    ld e, c                                       ; $50b8: $59
    db $eb                                        ; $50b9: $eb
    jr c, jr_05e_50b3                             ; $50ba: $38 $f7

    ld [de], a                                    ; $50bc: $12
    or a                                          ; $50bd: $b7
    inc e                                         ; $50be: $1c
    dec sp                                        ; $50bf: $3b
    sub e                                         ; $50c0: $93
    ld c, b                                       ; $50c1: $48
    ld b, [hl]                                    ; $50c2: $46
    jp hl                                         ; $50c3: $e9


    and c                                         ; $50c4: $a1
    sbc [hl]                                      ; $50c5: $9e
    ld e, h                                       ; $50c6: $5c
    or d                                          ; $50c7: $b2
    sbc b                                         ; $50c8: $98
    cp b                                          ; $50c9: $b8
    db $dd                                        ; $50ca: $dd
    rra                                           ; $50cb: $1f
    ld h, [hl]                                    ; $50cc: $66
    rst $08                                       ; $50cd: $cf
    dec c                                         ; $50ce: $0d
    nop                                           ; $50cf: $00
    db $fc                                        ; $50d0: $fc
    cp b                                          ; $50d1: $b8
    add hl, sp                                    ; $50d2: $39
    halt                                          ; $50d3: $76
    ld a, a                                       ; $50d4: $7f
    cp $d6                                        ; $50d5: $fe $d6

jr_05e_50d7:
    xor e                                         ; $50d7: $ab
    and [hl]                                      ; $50d8: $a6
    sbc e                                         ; $50d9: $9b
    inc [hl]                                      ; $50da: $34
    add [hl]                                      ; $50db: $86
    xor l                                         ; $50dc: $ad
    or d                                          ; $50dd: $b2
    inc d                                         ; $50de: $14
    or d                                          ; $50df: $b2
    sub $71                                       ; $50e0: $d6 $71
    ld l, [hl]                                    ; $50e2: $6e
    sub d                                         ; $50e3: $92
    and c                                         ; $50e4: $a1
    cp a                                          ; $50e5: $bf
    dec hl                                        ; $50e6: $2b
    rst $38                                       ; $50e7: $ff
    rst $20                                       ; $50e8: $e7
    db $fc                                        ; $50e9: $fc
    or a                                          ; $50ea: $b7
    ld c, l                                       ; $50eb: $4d
    adc d                                         ; $50ec: $8a
    rst $20                                       ; $50ed: $e7
    add hl, de                                    ; $50ee: $19
    sra [hl]                                      ; $50ef: $cb $2e
    nop                                           ; $50f1: $00
    sbc [hl]                                      ; $50f2: $9e
    reti                                          ; $50f3: $d9


    db $fc                                        ; $50f4: $fc
    ld [hl], e                                    ; $50f5: $73
    cp [hl]                                       ; $50f6: $be

jr_05e_50f7:
    db $fc                                        ; $50f7: $fc
    ld d, a                                       ; $50f8: $57
    ld e, $3b                                     ; $50f9: $1e $3b
    cp a                                          ; $50fb: $bf
    ccf                                           ; $50fc: $3f
    xor c                                         ; $50fd: $a9
    add sp, $26                                   ; $50fe: $e8 $26
    dec [hl]                                      ; $5100: $35
    db $dd                                        ; $5101: $dd
    inc h                                         ; $5102: $24
    inc l                                         ; $5103: $2c
    db $fd                                        ; $5104: $fd
    adc $d7                                       ; $5105: $ce $d7
    call nz, $35fc                                ; $5107: $c4 $fc $35
    sub c                                         ; $510a: $91
    ld [hl], l                                    ; $510b: $75
    ld l, a                                       ; $510c: $6f
    sub [hl]                                      ; $510d: $96
    ld b, d                                       ; $510e: $42
    sub $3a                                       ; $510f: $d6 $3a
    adc $4d                                       ; $5111: $ce $4d
    rla                                           ; $5113: $17
    nop                                           ; $5114: $00
    cp h                                          ; $5115: $bc
    pop bc                                        ; $5116: $c1
    jr jr_05e_50f7                                ; $5117: $18 $de

    ld [hl], a                                    ; $5119: $77
    ret z                                         ; $511a: $c8

    or [hl]                                       ; $511b: $b6
    dec sp                                        ; $511c: $3b
    ld a, [hl+]                                   ; $511d: $2a
    xor c                                         ; $511e: $a9
    add hl, sp                                    ; $511f: $39
    ld c, d                                       ; $5120: $4a
    or $7f                                        ; $5121: $f6 $7f
    rst $18                                       ; $5123: $df
    and c                                         ; $5124: $a1

jr_05e_5125:
    ld sp, $5f6c                                  ; $5125: $31 $6c $5f
    ld e, c                                       ; $5128: $59
    ld a, [bc]                                    ; $5129: $0a
    ld e, c                                       ; $512a: $59
    db $eb                                        ; $512b: $eb
    jr c, jr_05e_5125                             ; $512c: $38 $f7

    jp nc, Jump_000_0005                          ; $512e: $d2 $05 $00

    ld a, h                                       ; $5131: $7c
    ld e, e                                       ; $5132: $5b
    db $e3                                        ; $5133: $e3
    sbc h                                         ; $5134: $9c
    ld d, a                                       ; $5135: $57
    xor h                                         ; $5136: $ac
    ld a, [hl+]                                   ; $5137: $2a
    ld l, e                                       ; $5138: $6b
    pop hl                                        ; $5139: $e1
    add hl, bc                                    ; $513a: $09
    db $dd                                        ; $513b: $dd
    ld h, e                                       ; $513c: $63
    db $f4                                        ; $513d: $f4
    daa                                           ; $513e: $27
    push bc                                       ; $513f: $c5
    di                                            ; $5140: $f3
    adc h                                         ; $5141: $8c

jr_05e_5142:
    ld h, l                                       ; $5142: $65
    rla                                           ; $5143: $17
    nop                                           ; $5144: $00
    ld e, [hl]                                    ; $5145: $5e
    and l                                         ; $5146: $a5
    sub b                                         ; $5147: $90
    or l                                          ; $5148: $b5
    adc [hl]                                      ; $5149: $8e
    ld [hl], e                                    ; $514a: $73
    ld d, e                                       ; $514b: $53
    db $eb                                        ; $514c: $eb
    and b                                         ; $514d: $a0
    rst $28                                       ; $514e: $ef
    adc a                                         ; $514f: $8f
    call Call_05e_55bf                            ; $5150: $cd $bf $55
    ld e, c                                       ; $5153: $59
    daa                                           ; $5154: $27
    push bc                                       ; $5155: $c5
    di                                            ; $5156: $f3
    adc h                                         ; $5157: $8c
    ld h, l                                       ; $5158: $65
    rla                                           ; $5159: $17
    nop                                           ; $515a: $00
    db $fc                                        ; $515b: $fc
    db $e3                                        ; $515c: $e3
    add h                                         ; $515d: $84
    xor $8c                                       ; $515e: $ee $8c
    dec hl                                        ; $5160: $2b
    adc l                                         ; $5161: $8d
    ei                                            ; $5162: $fb
    sbc $d2                                       ; $5163: $de $d2
    jr jr_05e_50f7                                ; $5165: $18 $90

    or b                                          ; $5167: $b0
    cp $af                                        ; $5168: $fe $af
    ld c, e                                       ; $516a: $4b
    sbc [hl]                                      ; $516b: $9e
    dec c                                         ; $516c: $0d
    db $db                                        ; $516d: $db
    rst $10                                       ; $516e: $d7

jr_05e_516f:
    ld b, h                                       ; $516f: $44
    sub $bd                                       ; $5170: $d6 $bd
    ld e, c                                       ; $5172: $59
    ld a, [bc]                                    ; $5173: $0a
    ld e, c                                       ; $5174: $59
    db $eb                                        ; $5175: $eb
    jr c, jr_05e_516f                             ; $5176: $38 $f7

    sub d                                         ; $5178: $92
    ld a, d                                       ; $5179: $7a
    sbc h                                         ; $517a: $9c
    ld [$dfcd], sp                                ; $517b: $08 $cd $df
    add hl, de                                    ; $517e: $19
    and l                                         ; $517f: $a5
    rst $18                                       ; $5180: $df
    ld sp, hl                                     ; $5181: $f9
    ld a, a                                       ; $5182: $7f
    ld bc, $6e3c                                  ; $5183: $01 $3c $6e
    ld a, e                                       ; $5186: $7b
    ld [$57a9], a                                 ; $5187: $ea $a9 $57
    ld [hl], d                                    ; $518a: $72
    ret z                                         ; $518b: $c8

    pop bc                                        ; $518c: $c1
    rst $08                                       ; $518d: $cf
    rrca                                          ; $518e: $0f
    db $ed                                        ; $518f: $ed
    ld l, c                                       ; $5190: $69
    ld d, d                                       ; $5191: $52
    add hl, bc                                    ; $5192: $09
    and h                                         ; $5193: $a4
    rst $08                                       ; $5194: $cf
    ld a, $81                                     ; $5195: $3e $81
    ld c, $66                                     ; $5197: $0e $66

jr_05e_5199:
    ld c, c                                       ; $5199: $49
    push de                                       ; $519a: $d5
    rst $18                                       ; $519b: $df
    ld h, c                                       ; $519c: $61
    ld a, [$8882]                                 ; $519d: $fa $82 $88
    push bc                                       ; $51a0: $c5
    ld sp, hl                                     ; $51a1: $f9
    ld c, $88                                     ; $51a2: $0e $88
    or [hl]                                       ; $51a4: $b6
    jr nz, jr_05e_5142                            ; $51a5: $20 $9b

    ret nz                                        ; $51a7: $c0

    cp [hl]                                       ; $51a8: $be
    sbc [hl]                                      ; $51a9: $9e
    add l                                         ; $51aa: $85
    sbc d                                         ; $51ab: $9a
    dec a                                         ; $51ac: $3d
    inc h                                         ; $51ad: $24
    xor $67                                       ; $51ae: $ee $67
    db $d3                                        ; $51b0: $d3
    add h                                         ; $51b1: $84
    add hl, bc                                    ; $51b2: $09
    ld [$a20b], a                                 ; $51b3: $ea $0b $a2
    call nz, $c5e4                                ; $51b6: $c4 $e4 $c5
    or e                                          ; $51b9: $b3
    ld a, [bc]                                    ; $51ba: $0a
    ld h, $77                                     ; $51bb: $26 $77
    jr jr_05e_5199                                ; $51bd: $18 $da

    dec h                                         ; $51bf: $25
    ld l, a                                       ; $51c0: $6f
    sbc l                                         ; $51c1: $9d
    inc [hl]                                      ; $51c2: $34

jr_05e_51c3:
    rst $20                                       ; $51c3: $e7
    sbc h                                         ; $51c4: $9c
    ld [hl], a                                    ; $51c5: $77
    ld a, [bc]                                    ; $51c6: $0a
    nop                                           ; $51c7: $00
    inc e                                         ; $51c8: $1c
    daa                                           ; $51c9: $27
    ld e, d                                       ; $51ca: $5a
    or $5f                                        ; $51cb: $f6 $5f
    and e                                         ; $51cd: $a3
    push de                                       ; $51ce: $d5
    cp a                                          ; $51cf: $bf
    di                                            ; $51d0: $f3
    db $ed                                        ; $51d1: $ed
    ld b, a                                       ; $51d2: $47
    cp $95                                        ; $51d3: $fe $95
    inc d                                         ; $51d5: $14
    adc h                                         ; $51d6: $8c
    di                                            ; $51d7: $f3
    add l                                         ; $51d8: $85
    dec h                                         ; $51d9: $25
    jr jr_05e_51c3                                ; $51da: $18 $e7

    xor a                                         ; $51dc: $af
    ld b, l                                       ; $51dd: $45
    xor c                                         ; $51de: $a9
    ld [hl], b                                    ; $51df: $70
    ld hl, $825f                                  ; $51e0: $21 $5f $82
    ld e, a                                       ; $51e3: $5f
    ld a, c                                       ; $51e4: $79
    sbc h                                         ; $51e5: $9c
    inc d                                         ; $51e6: $14
    ld c, e                                       ; $51e7: $4b
    ld c, l                                       ; $51e8: $4d
    ld l, h                                       ; $51e9: $6c
    add $96                                       ; $51ea: $c6 $96
    ld a, [hl-]                                   ; $51ec: $3a
    db $e3                                        ; $51ed: $e3
    sbc d                                         ; $51ee: $9a
    ld a, a                                       ; $51ef: $7f
    ld b, $b7                                     ; $51f0: $06 $b7
    inc e                                         ; $51f2: $1c
    ld h, h                                       ; $51f3: $64
    xor l                                         ; $51f4: $ad
    inc e                                         ; $51f5: $1c
    or a                                          ; $51f6: $b7
    push de                                       ; $51f7: $d5
    sub c                                         ; $51f8: $91
    ld b, d                                       ; $51f9: $42
    ld c, b                                       ; $51fa: $48
    ld d, c                                       ; $51fb: $51
    or [hl]                                       ; $51fc: $b6
    rst $30                                       ; $51fd: $f7
    ld c, l                                       ; $51fe: $4d
    ld l, e                                       ; $51ff: $6b
    ld d, c                                       ; $5200: $51
    cp d                                          ; $5201: $ba
    or c                                          ; $5202: $b1
    sub $fa                                       ; $5203: $d6 $fa
    ld [hl], l                                    ; $5205: $75
    ld [hl], b                                    ; $5206: $70
    db $db                                        ; $5207: $db
    add $5a                                       ; $5208: $c6 $5a
    ld a, a                                       ; $520a: $7f
    ld d, d                                       ; $520b: $52
    jr nc, jr_05e_527c                            ; $520c: $30 $6e

    cp a                                          ; $520e: $bf
    ld a, d                                       ; $520f: $7a
    sbc h                                         ; $5210: $9c
    ld l, b                                       ; $5211: $68
    and c                                         ; $5212: $a1
    rst $28                                       ; $5213: $ef
    rst $28                                       ; $5214: $ef
    db $fd                                        ; $5215: $fd
    ld e, a                                       ; $5216: $5f
    rla                                           ; $5217: $17
    nop                                           ; $5218: $00
    inc e                                         ; $5219: $1c
    daa                                           ; $521a: $27
    ld e, d                                       ; $521b: $5a
    ld sp, hl                                     ; $521c: $f9
    and [hl]                                      ; $521d: $a6
    db $10                                        ; $521e: $10
    call c, Call_05e_5b9a                         ; $521f: $dc $9a $5b
    or d                                          ; $5222: $b2
    ld sp, $ad87                                  ; $5223: $31 $87 $ad
    ld d, d                                       ; $5226: $52
    inc a                                         ; $5227: $3c
    ld sp, hl                                     ; $5228: $f9
    sbc d                                         ; $5229: $9a
    dec a                                         ; $522a: $3d
    or a                                          ; $522b: $b7
    inc a                                         ; $522c: $3c
    or e                                          ; $522d: $b3
    adc c                                         ; $522e: $89
    rst $30                                       ; $522f: $f7
    scf                                           ; $5230: $37
    ld d, [hl]                                    ; $5231: $56
    ld a, a                                       ; $5232: $7f
    ld d, d                                       ; $5233: $52
    pop de                                        ; $5234: $d1
    dec e                                         ; $5235: $1d
    xor l                                         ; $5236: $ad
    sbc $a8                                       ; $5237: $de $a8
    jp z, Jump_05e_4d5a                           ; $5239: $ca $5a $4d

    sub $a4                                       ; $523c: $d6 $a4
    rst $18                                       ; $523e: $df
    ld sp, hl                                     ; $523f: $f9
    ld l, e                                       ; $5240: $6b
    ld [hl], c                                    ; $5241: $71
    rst $18                                       ; $5242: $df
    ld e, e                                       ; $5243: $5b
    call c, Call_000_1c00                         ; $5244: $dc $00 $1c
    daa                                           ; $5247: $27
    ld e, d                                       ; $5248: $5a
    ld l, b                                       ; $5249: $68
    db $fd                                        ; $524a: $fd
    dec [hl]                                      ; $524b: $35
    ld e, d                                       ; $524c: $5a
    di                                            ; $524d: $f3
    ld [hl], a                                    ; $524e: $77
    adc $d5                                       ; $524f: $ce $d5
    add hl, de                                    ; $5251: $19
    pop de                                        ; $5252: $d1
    dec e                                         ; $5253: $1d
    rlca                                          ; $5254: $07
    ld c, e                                       ; $5255: $4b
    inc de                                        ; $5256: $13
    rst $00                                       ; $5257: $c7
    add hl, de                                    ; $5258: $19
    db $fd                                        ; $5259: $fd
    inc l                                         ; $525a: $2c
    rst $18                                       ; $525b: $df
    add hl, sp                                    ; $525c: $39
    inc hl                                        ; $525d: $23
    sbc d                                         ; $525e: $9a
    ld e, e                                       ; $525f: $5b
    ld c, $b2                                     ; $5260: $0e $b2
    ld d, $9e                                     ; $5262: $16 $9e
    ld l, b                                       ; $5264: $68
    push hl                                       ; $5265: $e5
    ld a, a                                       ; $5266: $7f
    xor $35                                       ; $5267: $ee $35
    dec e                                         ; $5269: $1d
    ld c, d                                       ; $526a: $4a
    dec sp                                        ; $526b: $3b
    ld l, [hl]                                    ; $526c: $6e
    and d                                         ; $526d: $a2
    ld [de], a                                    ; $526e: $12
    ld a, a                                       ; $526f: $7f
    halt                                          ; $5270: $76
    ld [hl-], a                                   ; $5271: $32
    rst $38                                       ; $5272: $ff
    db $d3                                        ; $5273: $d3
    ld sp, hl                                     ; $5274: $f9
    ld e, a                                       ; $5275: $5f
    call c, $9e00                                 ; $5276: $dc $00 $9e
    db $e3                                        ; $5279: $e3
    or $b6                                        ; $527a: $f6 $b6

jr_05e_527c:
    or $cc                                        ; $527c: $f6 $cc
    and b                                         ; $527e: $a0
    sub d                                         ; $527f: $92
    ld a, e                                       ; $5280: $7b
    db $ec                                        ; $5281: $ec
    inc de                                        ; $5282: $13
    ret nz                                        ; $5283: $c0

    jp nc, Jump_05e_6dc1                          ; $5284: $d2 $c1 $6d

    dec de                                        ; $5287: $1b
    ld [hl], b                                    ; $5288: $70
    ret c                                         ; $5289: $d8

    ld [$71f3], a                                 ; $528a: $ea $f3 $71
    adc $73                                       ; $528d: $ce $73
    adc e                                         ; $528f: $8b
    inc sp                                        ; $5290: $33
    add h                                         ; $5291: $84
    ld h, a                                       ; $5292: $67
    sub l                                         ; $5293: $95
    ld d, d                                       ; $5294: $52
    push bc                                       ; $5295: $c5
    add hl, sp                                    ; $5296: $39
    and c                                         ; $5297: $a1
    ld c, l                                       ; $5298: $4d
    cp a                                          ; $5299: $bf
    add h                                         ; $529a: $84
    dec sp                                        ; $529b: $3b
    ld h, e                                       ; $529c: $63
    dec hl                                        ; $529d: $2b
    xor c                                         ; $529e: $a9
    ld a, e                                       ; $529f: $7b
    sbc e                                         ; $52a0: $9b
    ld c, h                                       ; $52a1: $4c
    ld [hl], a                                    ; $52a2: $77
    call nc, $a46a                                ; $52a3: $d4 $6a $a4
    di                                            ; $52a6: $f3
    rst $30                                       ; $52a7: $f7
    call nz, Call_05e_5ffd                        ; $52a8: $c4 $fd $5f
    ld a, [de]                                    ; $52ab: $1a
    jp $95f6                                      ; $52ac: $c3 $f6 $95


    ld e, c                                       ; $52af: $59
    ld d, e                                       ; $52b0: $53
    cp [hl]                                       ; $52b1: $be
    ld h, h                                       ; $52b2: $64
    rrc l                                         ; $52b3: $cb $0d
    nop                                           ; $52b5: $00
    inc e                                         ; $52b6: $1c
    daa                                           ; $52b7: $27
    ld e, d                                       ; $52b8: $5a
    reti                                          ; $52b9: $d9


    reti                                          ; $52ba: $d9


    ld l, [hl]                                    ; $52bb: $6e
    xor d                                         ; $52bc: $aa
    xor h                                         ; $52bd: $ac
    dec b                                         ; $52be: $05
    inc de                                        ; $52bf: $13
    res 4, e                                      ; $52c0: $cb $a3
    inc b                                         ; $52c2: $04
    cp a                                          ; $52c3: $bf
    ld c, $57                                     ; $52c4: $0e $57
    sub $54                                       ; $52c6: $d6 $54
    ld e, c                                       ; $52c8: $59
    xor e                                         ; $52c9: $ab
    scf                                           ; $52ca: $37
    ld l, h                                       ; $52cb: $6c
    push de                                       ; $52cc: $d5
    add hl, de                                    ; $52cd: $19
    cp e                                          ; $52ce: $bb
    scf                                           ; $52cf: $37
    ld c, d                                       ; $52d0: $4a
    add a                                         ; $52d1: $87
    ld a, [c]                                     ; $52d2: $f2
    ld l, l                                       ; $52d3: $6d
    adc e                                         ; $52d4: $8b
    ld c, e                                       ; $52d5: $4b
    ld e, $bd                                     ; $52d6: $1e $bd
    ld a, [hl+]                                   ; $52d8: $2a
    ld l, e                                       ; $52d9: $6b
    pop hl                                        ; $52da: $e1
    adc c                                         ; $52db: $89
    ld d, [hl]                                    ; $52dc: $56
    cp [hl]                                       ; $52dd: $be
    ld a, e                                       ; $52de: $7b
    rst $00                                       ; $52df: $c7
    sub $dc                                       ; $52e0: $d6 $dc
    sub d                                         ; $52e2: $92
    rra                                           ; $52e3: $1f
    ld l, h                                       ; $52e4: $6c
    rst $08                                       ; $52e5: $cf
    and c                                         ; $52e6: $a1
    db $eb                                        ; $52e7: $eb
    cp d                                          ; $52e8: $ba
    call nz, $9d9f                                ; $52e9: $c4 $9f $9d
    call z, Call_05e_74ff                         ; $52ec: $cc $ff $74
    cp [hl]                                       ; $52ef: $be
    reti                                          ; $52f0: $d9


    ld [hl], e                                    ; $52f1: $73

jr_05e_52f2:
    inc bc                                        ; $52f2: $03
    inc e                                         ; $52f3: $1c
    daa                                           ; $52f4: $27
    ld e, d                                       ; $52f5: $5a
    ld sp, hl                                     ; $52f6: $f9
    or e                                          ; $52f7: $b3
    ei                                            ; $52f8: $fb
    sub e                                         ; $52f9: $93
    adc d                                         ; $52fa: $8a
    ld l, [hl]                                    ; $52fb: $6e
    sub d                                         ; $52fc: $92
    and a                                         ; $52fd: $a7
    sbc b                                         ; $52fe: $98
    adc $38                                       ; $52ff: $ce $38
    dec sp                                        ; $5301: $3b
    daa                                           ; $5302: $27

jr_05e_5303:
    ld a, [bc]                                    ; $5303: $0a
    ld c, e                                       ; $5304: $4b
    or [hl]                                       ; $5305: $b6
    dec [hl]                                      ; $5306: $35
    adc $09                                       ; $5307: $ce $09
    pop bc                                        ; $5309: $c1
    ld h, e                                       ; $530a: $63
    or b                                          ; $530b: $b0
    dec d                                         ; $530c: $15
    xor $8c                                       ; $530d: $ee $8c
    ld d, a                                       ; $530f: $57
    rrca                                          ; $5310: $0f
    rst $38                                       ; $5311: $ff
    cpl                                           ; $5312: $2f
    pop af                                        ; $5313: $f1
    adc [hl]                                      ; $5314: $8e
    ld [hl], c                                    ; $5315: $71
    and d                                         ; $5316: $a2
    sub l                                         ; $5317: $95
    adc [hl]                                      ; $5318: $8e
    ld [hl], h                                    ; $5319: $74
    ld d, h                                       ; $531a: $54
    ld d, d                                       ; $531b: $52
    pop de                                        ; $531c: $d1
    ld c, l                                       ; $531d: $4d
    jp z, $a4e3                                   ; $531e: $ca $e3 $a4

    jr c, @-$6d                                   ; $5321: $38 $91

    ld [hl], l                                    ; $5323: $75
    ld l, a                                       ; $5324: $6f
    sub h                                         ; $5325: $94
    ld h, [hl]                                    ; $5326: $66
    jr nc, jr_05e_5303                            ; $5327: $30 $da

    or e                                          ; $5329: $b3
    jr nc, jr_05e_5303                            ; $532a: $30 $d7

    ld b, d                                       ; $532c: $42
    and d                                         ; $532d: $a2
    inc [hl]                                      ; $532e: $34
    add e                                         ; $532f: $83
    and l                                         ; $5330: $a5
    ld l, b                                       ; $5331: $68
    or $c2                                        ; $5332: $f6 $c2
    ld d, d                                       ; $5334: $52
    ccf                                           ; $5335: $3f

jr_05e_5336:
    add e                                         ; $5336: $83
    pop af                                        ; $5337: $f1
    sbc h                                         ; $5338: $9c
    rst $10                                       ; $5339: $d7
    jr jr_05e_52f2                                ; $533a: $18 $b6

    sbc d                                         ; $533c: $9a
    ret z                                         ; $533d: $c8

    cp d                                          ; $533e: $ba
    scf                                           ; $533f: $37
    ld c, e                                       ; $5340: $4b
    ld hl, $1d6b                                  ; $5341: $21 $6b $1d
    rst $20                                       ; $5344: $e7
    and [hl]                                      ; $5345: $a6
    dec bc                                        ; $5346: $0b
    nop                                           ; $5347: $00
    inc e                                         ; $5348: $1c
    daa                                           ; $5349: $27
    ld e, d                                       ; $534a: $5a
    inc sp                                        ; $534b: $33
    jr jr_05e_53a3                                ; $534c: $18 $55

    ld h, l                                       ; $534e: $65
    dec l                                         ; $534f: $2d
    sbc $3f                                       ; $5350: $de $3f
    di                                            ; $5352: $f3
    add hl, de                                    ; $5353: $19
    ld c, [hl]                                    ; $5354: $4e
    adc e                                         ; $5355: $8b
    ld d, d                                       ; $5356: $52
    ld a, a                                       ; $5357: $7f
    jp c, Jump_05e_7f78                           ; $5358: $da $78 $7f

    db $eb                                        ; $535b: $eb
    or a                                          ; $535c: $b7
    ld h, d                                       ; $535d: $62
    ld e, d                                       ; $535e: $5a
    inc [hl]                                      ; $535f: $34
    or a                                          ; $5360: $b7
    ld a, b                                       ; $5361: $78
    rst $00                                       ; $5362: $c7
    jr c, jr_05e_5336                             ; $5363: $38 $d1

    add d                                         ; $5365: $82
    pop de                                        ; $5366: $d1
    ld a, [$92b7]                                 ; $5367: $fa $b7 $92
    adc d                                         ; $536a: $8a
    ld l, [hl]                                    ; $536b: $6e
    jp nc, Jump_05e_460c                          ; $536c: $d2 $0c $46

    ld a, e                                       ; $536f: $7b
    ld d, $e6                                     ; $5370: $16 $e6
    ld e, d                                       ; $5372: $5a
    ld c, b                                       ; $5373: $48
    sub h                                         ; $5374: $94
    ld h, [hl]                                    ; $5375: $66
    or b                                          ; $5376: $b0
    inc d                                         ; $5377: $14
    call $585e                                    ; $5378: $cd $5e $58
    add d                                         ; $537b: $82
    rra                                           ; $537c: $1f
    call Call_05e_635e                            ; $537d: $cd $5e $63
    ret c                                         ; $5380: $d8

    ld l, d                                       ; $5381: $6a
    ld [hl+], a                                   ; $5382: $22
    db $eb                                        ; $5383: $eb
    sbc $2c                                       ; $5384: $de $2c
    add l                                         ; $5386: $85
    xor h                                         ; $5387: $ac
    ld [hl], l                                    ; $5388: $75
    sbc h                                         ; $5389: $9c
    sbc e                                         ; $538a: $9b
    ld l, $00                                     ; $538b: $2e $00
    inc e                                         ; $538d: $1c
    daa                                           ; $538e: $27
    ld e, d                                       ; $538f: $5a
    ld a, [hl]                                    ; $5390: $7e
    sbc h                                         ; $5391: $9c
    or a                                          ; $5392: $b7
    cp $1a                                        ; $5393: $fe $1a
    dec l                                         ; $5395: $2d
    cp $ec                                        ; $5396: $fe $ec
    ld h, h                                       ; $5398: $64
    cp $a7                                        ; $5399: $fe $a7
    di                                            ; $539b: $f3
    ld c, e                                       ; $539c: $4b
    ld h, a                                       ; $539d: $67
    ld h, e                                       ; $539e: $63
    ld b, [hl]                                    ; $539f: $46
    jp c, $d39b                                   ; $53a0: $da $9b $d3

jr_05e_53a3:
    ld l, c                                       ; $53a3: $69
    ld d, d                                       ; $53a4: $52
    cp [hl]                                       ; $53a5: $be
    ld a, b                                       ; $53a6: $78
    and d                                         ; $53a7: $a2
    rst $30                                       ; $53a8: $f7
    db $f4                                        ; $53a9: $f4
    dec bc                                        ; $53aa: $0b
    and [hl]                                      ; $53ab: $a6
    jp c, Jump_05e_7169                           ; $53ac: $da $69 $71

    sbc d                                         ; $53af: $9a
    cp b                                          ; $53b0: $b8
    push hl                                       ; $53b1: $e5
    ld de, $97ce                                  ; $53b2: $11 $ce $97
    ccf                                           ; $53b5: $3f
    ldh a, [$c4]                                  ; $53b6: $f0 $c4
    add hl, sp                                    ; $53b8: $39
    cpl                                           ; $53b9: $2f

jr_05e_53ba:
    ld a, a                                       ; $53ba: $7f
    and h                                         ; $53bb: $a4
    and e                                         ; $53bc: $a3
    rst $38                                       ; $53bd: $ff
    dec hl                                        ; $53be: $2b
    xor c                                         ; $53bf: $a9
    add sp, $26                                   ; $53c0: $e8 $26
    push hl                                       ; $53c2: $e5
    ld [hl], c                                    ; $53c3: $71
    ld d, d                                       ; $53c4: $52
    sbc h                                         ; $53c5: $9c
    ret z                                         ; $53c6: $c8

    cp d                                          ; $53c7: $ba
    scf                                           ; $53c8: $37
    ld c, d                                       ; $53c9: $4a
    inc sp                                        ; $53ca: $33
    jr jr_05e_53ba                                ; $53cb: $18 $ed

    ld e, c                                       ; $53cd: $59
    sbc b                                         ; $53ce: $98
    ld l, e                                       ; $53cf: $6b
    ld hl, $9a51                                  ; $53d0: $21 $51 $9a
    pop bc                                        ; $53d3: $c1
    ld d, d                                       ; $53d4: $52
    inc [hl]                                      ; $53d5: $34
    ld a, e                                       ; $53d6: $7b
    ld h, c                                       ; $53d7: $61
    xor c                                         ; $53d8: $a9
    sbc a                                         ; $53d9: $9f
    pop bc                                        ; $53da: $c1
    ld a, b                                       ; $53db: $78
    adc $6b                                       ; $53dc: $ce $6b
    inc c                                         ; $53de: $0c
    ld e, e                                       ; $53df: $5b
    ld c, l                                       ; $53e0: $4d
    ld h, h                                       ; $53e1: $64
    db $dd                                        ; $53e2: $dd
    sbc e                                         ; $53e3: $9b
    and l                                         ; $53e4: $a5
    sub b                                         ; $53e5: $90
    or l                                          ; $53e6: $b5
    adc [hl]                                      ; $53e7: $8e
    ld [hl], e                                    ; $53e8: $73
    db $d3                                        ; $53e9: $d3
    dec b                                         ; $53ea: $05
    nop                                           ; $53eb: $00
    inc e                                         ; $53ec: $1c
    daa                                           ; $53ed: $27
    ld e, d                                       ; $53ee: $5a
    sbc l                                         ; $53ef: $9d
    ld h, l                                       ; $53f0: $65
    sbc l                                         ; $53f1: $9d
    push hl                                       ; $53f2: $e5
    or h                                          ; $53f3: $b4
    dec d                                         ; $53f4: $15
    and l                                         ; $53f5: $a5
    ld l, l                                       ; $53f6: $6d
    adc e                                         ; $53f7: $8b
    or b                                          ; $53f8: $b0
    sub l                                         ; $53f9: $95
    push bc                                       ; $53fa: $c5
    ret                                           ; $53fb: $c9


    scf                                           ; $53fc: $37
    add e                                         ; $53fd: $83
    ld h, h                                       ; $53fe: $64
    db $dd                                        ; $53ff: $dd
    add hl, de                                    ; $5400: $19
    reti                                          ; $5401: $d9


    ld a, [hl+]                                   ; $5402: $2a
    ld h, e                                       ; $5403: $63
    db $dd                                        ; $5404: $dd
    db $db                                        ; $5405: $db
    dec de                                        ; $5406: $1b
    db $10                                        ; $5407: $10
    inc l                                         ; $5408: $2c
    push af                                       ; $5409: $f5
    xor b                                         ; $540a: $a8
    ld e, d                                       ; $540b: $5a
    db $eb                                        ; $540c: $eb
    rst $10                                       ; $540d: $d7
    inc e                                         ; $540e: $1c
    ld d, l                                       ; $540f: $55
    ei                                            ; $5410: $fb
    rst $20                                       ; $5411: $e7
    cp h                                          ; $5412: $bc
    ldh [$97], a                                  ; $5413: $e0 $97
    db $fd                                        ; $5415: $fd
    rst $30                                       ; $5416: $f7
    ld a, b                                       ; $5417: $78
    ld e, e                                       ; $5418: $5b
    push af                                       ; $5419: $f5
    rst $28                                       ; $541a: $ef
    ld a, h                                       ; $541b: $7c
    ld a, b                                       ; $541c: $78
    ldh [$bd], a                                  ; $541d: $e0 $bd
    ld d, c                                       ; $541f: $51
    jp nz, $8e14                                  ; $5420: $c2 $14 $8e

    ld l, b                                       ; $5423: $68
    ld l, [hl]                                    ; $5424: $6e
    ld a, c                                       ; $5425: $79
    db $f4                                        ; $5426: $f4
    sbc d                                         ; $5427: $9a

jr_05e_5428:
    cp a                                          ; $5428: $bf
    inc sp                                        ; $5429: $33
    ld c, d                                       ; $542a: $4a
    jp hl                                         ; $542b: $e9


    ld e, b                                       ; $542c: $58
    ld a, a                                       ; $542d: $7f
    ld c, h                                       ; $542e: $4c
    ld e, e                                       ; $542f: $5b
    push hl                                       ; $5430: $e5
    ld [hl], c                                    ; $5431: $71
    ld d, d                                       ; $5432: $52
    sbc h                                         ; $5433: $9c
    ret z                                         ; $5434: $c8

    cp d                                          ; $5435: $ba
    scf                                           ; $5436: $37
    ld c, d                                       ; $5437: $4a
    inc sp                                        ; $5438: $33
    jr jr_05e_5428                                ; $5439: $18 $ed

    ld e, c                                       ; $543b: $59
    sbc b                                         ; $543c: $98
    ld l, e                                       ; $543d: $6b
    ld hl, $9a51                                  ; $543e: $21 $51 $9a
    pop bc                                        ; $5441: $c1
    ld d, d                                       ; $5442: $52
    inc [hl]                                      ; $5443: $34
    ld a, e                                       ; $5444: $7b
    ld h, c                                       ; $5445: $61
    xor c                                         ; $5446: $a9
    sbc a                                         ; $5447: $9f
    pop bc                                        ; $5448: $c1
    ld a, b                                       ; $5449: $78
    adc $6b                                       ; $544a: $ce $6b
    inc c                                         ; $544c: $0c
    ld e, e                                       ; $544d: $5b
    ld c, l                                       ; $544e: $4d
    ld h, h                                       ; $544f: $64
    db $dd                                        ; $5450: $dd
    sbc e                                         ; $5451: $9b
    and l                                         ; $5452: $a5
    sub b                                         ; $5453: $90
    or l                                          ; $5454: $b5
    adc [hl]                                      ; $5455: $8e
    ld [hl], e                                    ; $5456: $73
    db $d3                                        ; $5457: $d3
    dec b                                         ; $5458: $05
    nop                                           ; $5459: $00
    inc e                                         ; $545a: $1c
    daa                                           ; $545b: $27
    ld e, d                                       ; $545c: $5a
    dec e                                         ; $545d: $1d
    ld l, c                                       ; $545e: $69
    ld h, l                                       ; $545f: $65
    xor l                                         ; $5460: $ad
    adc $52                                       ; $5461: $ce $52
    sbc b                                         ; $5463: $98
    and [hl]                                      ; $5464: $a6
    xor l                                         ; $5465: $ad
    inc a                                         ; $5466: $3c
    db $dd                                        ; $5467: $dd
    or b                                          ; $5468: $b0
    ld d, c                                       ; $5469: $51
    or d                                          ; $546a: $b2
    ld sp, $b6aa                                  ; $546b: $31 $aa $b6
    db $e3                                        ; $546e: $e3
    call c, $82df                                 ; $546f: $dc $df $82
    ld e, a                                       ; $5472: $5f
    cp $9f                                        ; $5473: $fe $9f
    rra                                           ; $5475: $1f
    db $dd                                        ; $5476: $dd
    ld e, a                                       ; $5477: $5f
    and e                                         ; $5478: $a3
    sub l                                         ; $5479: $95
    ccf                                           ; $547a: $3f
    ld a, e                                       ; $547b: $7b
    db $eb                                        ; $547c: $eb
    add sp, $51                                   ; $547d: $e8 $51
    sbc d                                         ; $547f: $9a
    set 4, b                                      ; $5480: $cb $e0
    cpl                                           ; $5482: $2f
    call $f065                                    ; $5483: $cd $65 $f0
    ld e, e                                       ; $5486: $5b
    inc hl                                        ; $5487: $23
    ld d, $b7                                     ; $5488: $16 $b7
    ld a, b                                       ; $548a: $78
    ld [hl], a                                    ; $548b: $77
    xor e                                         ; $548c: $ab
    ret nc                                        ; $548d: $d0

    ld a, [$7ff3]                                 ; $548e: $fa $f3 $7f
    sbc l                                         ; $5491: $9d
    ld de, $9fdd                                  ; $5492: $11 $dd $9f
    rst $38                                       ; $5495: $ff
    dec bc                                        ; $5496: $0b
    ld c, e                                       ; $5497: $4b
    ld [hl], a                                    ; $5498: $77
    add $65                                       ; $5499: $c6 $65
    ld a, [de]                                    ; $549b: $1a
    and e                                         ; $549c: $a3
    or a                                          ; $549d: $b7
    and d                                         ; $549e: $a2
    inc [hl]                                      ; $549f: $34
    ld b, $24                                     ; $54a0: $06 $24
    xor h                                         ; $54a2: $ac
    ld e, a                                       ; $54a3: $5f
    inc de                                        ; $54a4: $13
    ld e, c                                       ; $54a5: $59
    rst $30                                       ; $54a6: $f7
    ld h, [hl]                                    ; $54a7: $66
    add hl, hl                                    ; $54a8: $29
    ld h, h                                       ; $54a9: $64
    xor l                                         ; $54aa: $ad
    db $e3                                        ; $54ab: $e3
    call c, Call_05e_4d64                         ; $54ac: $dc $64 $4d
    sbc d                                         ; $54af: $9a
    pop bc                                        ; $54b0: $c1
    ld l, b                                       ; $54b1: $68
    rst $08                                       ; $54b2: $cf
    jp nz, $0b5c                                  ; $54b3: $c2 $5c $0b

    adc c                                         ; $54b6: $89
    jp nc, $960c                                  ; $54b7: $d2 $0c $96

    and d                                         ; $54ba: $a2
    reti                                          ; $54bb: $d9


    ld e, a                                       ; $54bc: $5f
    nop                                           ; $54bd: $00
    sbc h                                         ; $54be: $9c
    cp a                                          ; $54bf: $bf
    dec l                                         ; $54c0: $2d
    rst $38                                       ; $54c1: $ff
    rrca                                          ; $54c2: $0f
    adc h                                         ; $54c3: $8c
    and l                                         ; $54c4: $a5
    ld sp, $5fba                                  ; $54c5: $31 $ba $5f
    ld a, $a6                                     ; $54c8: $3e $a6
    sub b                                         ; $54ca: $90
    db $ed                                        ; $54cb: $ed
    cp $fc                                        ; $54cc: $fe $fc
    ld e, a                                       ; $54ce: $5f
    ld [hl], $90                                  ; $54cf: $36 $90
    ld l, l                                       ; $54d1: $6d
    ld b, a                                       ; $54d2: $47
    rst $30                                       ; $54d3: $f7
    ld a, b                                       ; $54d4: $78
    ld e, e                                       ; $54d5: $5b
    ld sp, hl                                     ; $54d6: $f9
    inc c                                         ; $54d7: $0c
    inc de                                        ; $54d8: $13
    inc c                                         ; $54d9: $0c
    inc sp                                        ; $54da: $33
    ld h, h                                       ; $54db: $64
    dec hl                                        ; $54dc: $2b

jr_05e_54dd:
    ld [hl], a                                    ; $54dd: $77
    or [hl]                                       ; $54de: $b6
    jp z, $f4b6                                   ; $54df: $ca $b6 $f4

    push de                                       ; $54e2: $d5
    ld a, a                                       ; $54e3: $7f
    ld a, a                                       ; $54e4: $7f
    xor c                                         ; $54e5: $a9
    inc hl                                        ; $54e6: $23
    ld l, l                                       ; $54e7: $6d
    jp z, $b8a9                                   ; $54e8: $ca $a9 $b8

    push hl                                       ; $54eb: $e5
    reti                                          ; $54ec: $d9


    add sp, -$4b                                  ; $54ed: $e8 $b5
    ld l, b                                       ; $54ef: $68
    adc l                                         ; $54f0: $8d
    ld bc, $eb09                                  ; $54f1: $01 $09 $eb
    rst $10                                       ; $54f4: $d7
    ld b, h                                       ; $54f5: $44
    sub $bd                                       ; $54f6: $d6 $bd
    ld e, c                                       ; $54f8: $59
    ld a, [bc]                                    ; $54f9: $0a
    ld e, c                                       ; $54fa: $59
    db $eb                                        ; $54fb: $eb
    jr c, jr_05e_5535                             ; $54fc: $38 $37

    ld e, c                                       ; $54fe: $59
    sub e                                         ; $54ff: $93
    ld h, [hl]                                    ; $5500: $66
    jr nc, jr_05e_54dd                            ; $5501: $30 $da

    or e                                          ; $5503: $b3
    jr nc, jr_05e_54dd                            ; $5504: $30 $d7

    ld b, d                                       ; $5506: $42
    and d                                         ; $5507: $a2
    inc [hl]                                      ; $5508: $34
    add e                                         ; $5509: $83
    and l                                         ; $550a: $a5
    ld l, b                                       ; $550b: $68
    or $9a                                        ; $550c: $f6 $9a
    ld e, a                                       ; $550e: $5f
    db $fd                                        ; $550f: $fd
    and e                                         ; $5510: $a3
    ld b, a                                       ; $5511: $47
    cp $ad                                        ; $5512: $fe $ad
    adc c                                         ; $5514: $89

jr_05e_5515:
    inc l                                         ; $5515: $2c
    rst $18                                       ; $5516: $df
    or l                                          ; $5517: $b5
    cp l                                          ; $5518: $bd
    nop                                           ; $5519: $00
    inc e                                         ; $551a: $1c
    daa                                           ; $551b: $27
    ld e, d                                       ; $551c: $5a
    or $5f                                        ; $551d: $f6 $5f
    and e                                         ; $551f: $a3
    push hl                                       ; $5520: $e5
    jr nz, jr_05e_5515                            ; $5521: $20 $f2

    dec a                                         ; $5523: $3d
    daa                                           ; $5524: $27
    ld c, d                                       ; $5525: $4a
    rst $30                                       ; $5526: $f7
    ld e, b                                       ; $5527: $58
    db $eb                                        ; $5528: $eb
    push af                                       ; $5529: $f5
    rst $38                                       ; $552a: $ff
    inc e                                         ; $552b: $1c
    inc l                                         ; $552c: $2c
    push af                                       ; $552d: $f5
    rst $08                                       ; $552e: $cf
    ld e, a                                       ; $552f: $5f
    db $db                                        ; $5530: $db
    ld [c], a                                     ; $5531: $e2
    sub [hl]                                      ; $5532: $96
    ld h, a                                       ; $5533: $67
    and e                                         ; $5534: $a3

jr_05e_5535:
    rst $10                                       ; $5535: $d7
    and d                                         ; $5536: $a2
    dec [hl]                                      ; $5537: $35
    ld b, $24                                     ; $5538: $06 $24
    xor h                                         ; $553a: $ac
    ld e, a                                       ; $553b: $5f
    inc de                                        ; $553c: $13
    ld e, c                                       ; $553d: $59
    rst $30                                       ; $553e: $f7
    ld h, [hl]                                    ; $553f: $66
    add hl, hl                                    ; $5540: $29
    ld h, h                                       ; $5541: $64
    xor l                                         ; $5542: $ad
    db $e3                                        ; $5543: $e3
    call c, Call_05e_4d64                         ; $5544: $dc $64 $4d
    sbc d                                         ; $5547: $9a
    pop bc                                        ; $5548: $c1
    ld l, b                                       ; $5549: $68
    rst $08                                       ; $554a: $cf
    jp nz, $0b5c                                  ; $554b: $c2 $5c $0b

    adc c                                         ; $554e: $89
    jp nc, $960c                                  ; $554f: $d2 $0c $96

    and d                                         ; $5552: $a2
    reti                                          ; $5553: $d9


    db $eb                                        ; $5554: $eb
    ld b, h                                       ; $5555: $44
    cp [hl]                                       ; $5556: $be
    sub h                                         ; $5557: $94
    ld d, e                                       ; $5558: $53
    dec bc                                        ; $5559: $0b
    ld a, l                                       ; $555a: $7d
    ld a, a                                       ; $555b: $7f
    rst $08                                       ; $555c: $cf
    cpl                                           ; $555d: $2f
    inc h                                         ; $555e: $24
    ld c, d                                       ; $555f: $4a
    inc sp                                        ; $5560: $33
    ld l, h                                       ; $5561: $6c
    adc [hl]                                      ; $5562: $8e
    ld bc, $b309                                  ; $5563: $01 $09 $b3
    rst $10                                       ; $5566: $d7
    inc e                                         ; $5567: $1c
    rlca                                          ; $5568: $07
    di                                            ; $5569: $f3
    ccf                                           ; $556a: $3f
    inc sp                                        ; $556b: $33
    cp [hl]                                       ; $556c: $be
    ld [hl], h                                    ; $556d: $74
    ld a, [hl]                                    ; $556e: $7e
    rst $08                                       ; $556f: $cf
    ld sp, hl                                     ; $5570: $f9
    dec bc                                        ; $5571: $0b
    nop                                           ; $5572: $00
    sbc h                                         ; $5573: $9c
    ld [hl], c                                    ; $5574: $71
    ld a, [c]                                     ; $5575: $f2
    call $d920                                    ; $5576: $cd $20 $d9
    or [hl]                                       ; $5579: $b6
    ld c, $6e                                     ; $557a: $0e $6e
    db $db                                        ; $557c: $db
    add sp, $51                                   ; $557d: $e8 $51
    or l                                          ; $557f: $b5
    sub $af                                       ; $5580: $d6 $af
    add hl, sp                                    ; $5582: $39
    xor d                                         ; $5583: $aa
    or $cf                                        ; $5584: $f6 $cf
    ld sp, hl                                     ; $5586: $f9
    ld c, e                                       ; $5587: $4b
    ld e, $e1                                     ; $5588: $1e $e1
    ld a, h                                       ; $558a: $7c

jr_05e_558b:
    ld sp, hl                                     ; $558b: $f9
    inc bc                                        ; $558c: $03
    ld c, a                                       ; $558d: $4f
    sbc h                                         ; $558e: $9c
    di                                            ; $558f: $f3
    ld a, [c]                                     ; $5590: $f2
    ld b, a                                       ; $5591: $47
    ld a, [hl-]                                   ; $5592: $3a
    ld a, [$34bf]                                 ; $5593: $fa $bf $34
    ld b, $24                                     ; $5596: $06 $24
    xor h                                         ; $5598: $ac
    ld e, a                                       ; $5599: $5f
    inc de                                        ; $559a: $13
    ld e, c                                       ; $559b: $59
    rst $30                                       ; $559c: $f7
    ld h, [hl]                                    ; $559d: $66
    add hl, hl                                    ; $559e: $29
    ld h, h                                       ; $559f: $64
    xor l                                         ; $55a0: $ad
    db $e3                                        ; $55a1: $e3
    call c, Call_05e_4d64                         ; $55a2: $dc $64 $4d
    ld c, c                                       ; $55a5: $49
    pop bc                                        ; $55a6: $c1
    jr c, jr_05e_5608                             ; $55a7: $38 $5f

    ld e, b                                       ; $55a9: $58
    or d                                          ; $55aa: $b2
    rst $38                                       ; $55ab: $ff
    cp $7c                                        ; $55ac: $fe $7c
    rst $08                                       ; $55ae: $cf
    ld a, c                                       ; $55af: $79
    ld c, l                                       ; $55b0: $4d
    ld h, h                                       ; $55b1: $64
    db $dd                                        ; $55b2: $dd
    dec de                                        ; $55b3: $1b
    and l                                         ; $55b4: $a5
    add hl, de                                    ; $55b5: $19
    adc h                                         ; $55b6: $8c
    or $2c                                        ; $55b7: $f6 $2c
    call z, $90b5                                 ; $55b9: $cc $b5 $90
    jr z, jr_05e_558b                             ; $55bc: $28 $cd

    ld h, b                                       ; $55be: $60

Call_05e_55bf:
    add hl, hl                                    ; $55bf: $29
    ld e, d                                       ; $55c0: $5a
    rst $38                                       ; $55c1: $ff
    dec b                                         ; $55c2: $05
    nop                                           ; $55c3: $00
    inc e                                         ; $55c4: $1c
    ld d, l                                       ; $55c5: $55
    ld sp, $856d                                  ; $55c6: $31 $6d $85
    ld h, a                                       ; $55c9: $67
    ld [hl+], a                                   ; $55ca: $22
    ld d, [hl]                                    ; $55cb: $56
    ld d, d                                       ; $55cc: $52
    ld a, b                                       ; $55cd: $78
    and d                                         ; $55ce: $a2
    sub l                                         ; $55cf: $95
    db $e3                                        ; $55d0: $e3
    halt                                          ; $55d1: $76
    ld a, a                                       ; $55d2: $7f
    adc l                                         ; $55d3: $8d
    sub [hl]                                      ; $55d4: $96
    rst $08                                       ; $55d5: $cf
    ld [hl], l                                    ; $55d6: $75
    ld c, $17                                     ; $55d7: $0e $17
    db $fc                                        ; $55d9: $fc
    add hl, hl                                    ; $55da: $29
    ld h, h                                       ; $55db: $64
    adc e                                         ; $55dc: $8b
    ld e, e                                       ; $55dd: $5b
    ld c, $69                                     ; $55de: $0e $69
    ld [hl], e                                    ; $55e0: $73
    ld a, [hl+]                                   ; $55e1: $2a
    reti                                          ; $55e2: $d9


    jr jr_05e_5651                                ; $55e3: $18 $6c

    ld c, e                                       ; $55e5: $4b
    ld h, e                                       ; $55e6: $63
    db $f4                                        ; $55e7: $f4
    ld d, [hl]                                    ; $55e8: $56
    sub h                                         ; $55e9: $94
    or b                                          ; $55ea: $b0
    inc [hl]                                      ; $55eb: $34
    rst $00                                       ; $55ec: $c7
    halt                                          ; $55ed: $76
    call nc, $d2dc                                ; $55ee: $d4 $dc $d2
    inc c                                         ; $55f1: $0c
    ld b, [hl]                                    ; $55f2: $46
    ld a, e                                       ; $55f3: $7b
    ld d, $e6                                     ; $55f4: $16 $e6
    ld e, d                                       ; $55f6: $5a
    ld c, b                                       ; $55f7: $48
    sub h                                         ; $55f8: $94
    ld h, [hl]                                    ; $55f9: $66
    or b                                          ; $55fa: $b0
    inc d                                         ; $55fb: $14
    or c                                          ; $55fc: $b1
    ld h, h                                       ; $55fd: $64
    rst $38                                       ; $55fe: $ff
    cp $a8                                        ; $55ff: $fe $a8
    pop de                                        ; $5601: $d1
    ld a, [de]                                    ; $5602: $1a
    jp Jump_000_1356                              ; $5603: $c3 $56 $13


    ld e, c                                       ; $5606: $59
    rst $30                                       ; $5607: $f7

jr_05e_5608:
    ld h, [hl]                                    ; $5608: $66
    add hl, hl                                    ; $5609: $29
    ld h, h                                       ; $560a: $64
    xor l                                         ; $560b: $ad
    db $e3                                        ; $560c: $e3
    call c, $0174                                 ; $560d: $dc $74 $01
    sbc [hl]                                      ; $5610: $9e
    ld h, d                                       ; $5611: $62
    ld a, [hl-]                                   ; $5612: $3a
    db $e3                                        ; $5613: $e3
    db $ec                                        ; $5614: $ec
    ld b, h                                       ; $5615: $44
    or e                                          ; $5616: $b3
    rst $10                                       ; $5617: $d7
    cp l                                          ; $5618: $bd
    pop de                                        ; $5619: $d1
    db $db                                        ; $561a: $db
    ld a, [c]                                     ; $561b: $f2
    ret nc                                        ; $561c: $d0

    ld [hl+], a                                   ; $561d: $22
    ld a, [c]                                     ; $561e: $f2
    push bc                                       ; $561f: $c5
    halt                                          ; $5620: $76
    add $8f                                       ; $5621: $c6 $8f
    dec a                                         ; $5623: $3d
    ld l, e                                       ; $5624: $6b
    ld b, [hl]                                    ; $5625: $46
    ld a, [hl+]                                   ; $5626: $2a
    sbc d                                         ; $5627: $9a
    ld [hl], c                                    ; $5628: $71
    inc de                                        ; $5629: $13
    reti                                          ; $562a: $d9


    ld a, [bc]                                    ; $562b: $0a
    ld a, [hl]                                    ; $562c: $7e
    call $39df                                    ; $562d: $cd $df $39
    db $e3                                        ; $5630: $e3
    ld h, l                                       ; $5631: $65
    db $db                                        ; $5632: $db
    sub h                                         ; $5633: $94
    call nc, Call_05e_4dbd                        ; $5634: $d4 $bd $4d
    jp z, $ef77                                   ; $5637: $ca $77 $ef

    ret nc                                        ; $563a: $d0

    rst $28                                       ; $563b: $ef
    call nz, $17ad                                ; $563c: $c4 $ad $17
    sub [hl]                                      ; $563f: $96
    ld a, [$4ffd]                                 ; $5640: $fa $fd $4f
    ld a, e                                       ; $5643: $7b

jr_05e_5644:
    call nc, Call_05e_4be8                        ; $5644: $d4 $e8 $4b
    ld e, $bd                                     ; $5647: $1e $bd
    ldh a, [$ec]                                  ; $5649: $f0 $ec
    ld b, h                                       ; $564b: $44
    push hl                                       ; $564c: $e5
    ld [hl], c                                    ; $564d: $71
    ld d, d                                       ; $564e: $52
    sbc h                                         ; $564f: $9c
    ret z                                         ; $5650: $c8

jr_05e_5651:
    cp d                                          ; $5651: $ba
    scf                                           ; $5652: $37
    ld c, d                                       ; $5653: $4a
    inc sp                                        ; $5654: $33
    jr jr_05e_5644                                ; $5655: $18 $ed

    ld e, c                                       ; $5657: $59
    sbc b                                         ; $5658: $98
    ld l, e                                       ; $5659: $6b
    ld hl, $9a51                                  ; $565a: $21 $51 $9a
    pop bc                                        ; $565d: $c1
    ld d, d                                       ; $565e: $52
    inc [hl]                                      ; $565f: $34
    ld a, e                                       ; $5660: $7b
    adc l                                         ; $5661: $8d
    ld h, c                                       ; $5662: $61
    xor e                                         ; $5663: $ab
    inc l                                         ; $5664: $2c
    add l                                         ; $5665: $85
    xor h                                         ; $5666: $ac
    ld [hl], l                                    ; $5667: $75
    sbc h                                         ; $5668: $9c
    sbc e                                         ; $5669: $9b
    sub d                                         ; $566a: $92
    jp z, $857f                                   ; $566b: $ca $7f $85

    ld h, a                                       ; $566e: $67
    daa                                           ; $566f: $27
    jp z, $f942                                   ; $5670: $ca $42 $f9

    ld l, a                                       ; $5673: $6f
    ld l, c                                       ; $5674: $69
    ld d, h                                       ; $5675: $54
    ccf                                           ; $5676: $3f
    inc d                                         ; $5677: $14
    nop                                           ; $5678: $00
    inc e                                         ; $5679: $1c
    daa                                           ; $567a: $27
    ld e, d                                       ; $567b: $5a
    cp $9f                                        ; $567c: $fe $9f
    xor a                                         ; $567e: $af
    ld a, [de]                                    ; $567f: $1a
    dec l                                         ; $5680: $2d
    ld c, a                                       ; $5681: $4f
    ld sp, $719d                                  ; $5682: $31 $9d $71
    halt                                          ; $5685: $76
    ld c, [hl]                                    ; $5686: $4e
    call nz, $0cd2                                ; $5687: $c4 $d2 $0c
    sbc e                                         ; $568a: $9b
    sbc e                                         ; $568b: $9b
    ld [hl], c                                    ; $568c: $71
    sub l                                         ; $568d: $95
    and $4f                                       ; $568e: $e6 $4f
    db $db                                        ; $5690: $db
    ld [$eb5f], a                                 ; $5691: $ea $5f $eb
    jr c, jr_05e_56d9                             ; $5694: $38 $43

    adc $58                                       ; $5696: $ce $58
    db $ec                                        ; $5698: $ec
    sbc h                                         ; $5699: $9c
    cp a                                          ; $569a: $bf
    ld h, a                                       ; $569b: $67
    sub h                                         ; $569c: $94
    ld h, b                                       ; $569d: $60
    ld a, [hl-]                                   ; $569e: $3a
    inc sp                                        ; $569f: $33
    and d                                         ; $56a0: $a2
    ld l, $79                                     ; $56a1: $2e $79
    or e                                          ; $56a3: $b3
    ld d, $2d                                     ; $56a4: $16 $2d
    cp $ec                                        ; $56a6: $fe $ec
    ld h, h                                       ; $56a8: $64
    cp $a7                                        ; $56a9: $fe $a7
    di                                            ; $56ab: $f3
    ld c, e                                       ; $56ac: $4b
    sub e                                         ; $56ad: $93
    or d                                          ; $56ae: $b2
    and [hl]                                      ; $56af: $a6
    sbc h                                         ; $56b0: $9c
    ld e, d                                       ; $56b1: $5a
    or c                                          ; $56b2: $b1
    add hl, sp                                    ; $56b3: $39
    or l                                          ; $56b4: $b5
    and d                                         ; $56b5: $a2
    adc b                                         ; $56b6: $88
    call nc, Call_05e_6aa3                        ; $56b7: $d4 $a3 $6a
    jr z, jr_05e_5707                             ; $56ba: $28 $4b

    sbc e                                         ; $56bc: $9b
    db $e4                                        ; $56bd: $e4
    rst $00                                       ; $56be: $c7
    pop bc                                        ; $56bf: $c1
    xor $cf                                       ; $56c0: $ee $cf
    rst $30                                       ; $56c2: $f7
    db $f4                                        ; $56c3: $f4
    ld e, a                                       ; $56c4: $5f
    nop                                           ; $56c5: $00
    inc e                                         ; $56c6: $1c
    daa                                           ; $56c7: $27
    ld e, d                                       ; $56c8: $5a
    ld [hl], e                                    ; $56c9: $73
    call z, $feb5                                 ; $56ca: $cc $b5 $fe
    ld a, [de]                                    ; $56cd: $1a
    dec l                                         ; $56ce: $2d
    ccf                                           ; $56cf: $3f
    halt                                          ; $56d0: $76
    ld h, d                                       ; $56d1: $62
    add hl, bc                                    ; $56d2: $09
    ld a, [hl]                                    ; $56d3: $7e
    ld sp, hl                                     ; $56d4: $f9
    ld [hl], c                                    ; $56d5: $71
    sbc $fa                                       ; $56d6: $de $fa
    ld l, e                                       ; $56d8: $6b

jr_05e_56d9:
    or h                                          ; $56d9: $b4
    ld a, b                                       ; $56da: $78
    add d                                         ; $56db: $82
    db $dd                                        ; $56dc: $dd
    adc e                                         ; $56dd: $8b
    dec d                                         ; $56de: $15
    call c, Call_000_3cf2                         ; $56df: $dc $f2 $3c
    ld c, [hl]                                    ; $56e2: $4e
    adc d                                         ; $56e3: $8a
    inc de                                        ; $56e4: $13
    ld e, c                                       ; $56e5: $59
    rst $30                                       ; $56e6: $f7
    ld b, [hl]                                    ; $56e7: $46
    ld l, c                                       ; $56e8: $69
    ld b, $a3                                     ; $56e9: $06 $a3
    dec a                                         ; $56eb: $3d
    dec bc                                        ; $56ec: $0b
    ld [hl], e                                    ; $56ed: $73
    dec l                                         ; $56ee: $2d
    inc h                                         ; $56ef: $24
    ld c, d                                       ; $56f0: $4a
    inc sp                                        ; $56f1: $33
    ld e, b                                       ; $56f2: $58
    adc d                                         ; $56f3: $8a
    ld e, b                                       ; $56f4: $58
    or d                                          ; $56f5: $b2
    ld a, a                                       ; $56f6: $7f
    ld a, a                                       ; $56f7: $7f
    call nc, Call_05e_4d68                        ; $56f8: $d4 $68 $4d
    ld h, h                                       ; $56fb: $64
    db $dd                                        ; $56fc: $dd
    sbc e                                         ; $56fd: $9b
    and l                                         ; $56fe: $a5
    sub b                                         ; $56ff: $90
    or l                                          ; $5700: $b5
    adc [hl]                                      ; $5701: $8e
    ld [hl], e                                    ; $5702: $73
    sub e                                         ; $5703: $93
    or b                                          ; $5704: $b0
    sub h                                         ; $5705: $94
    ccf                                           ; $5706: $3f

jr_05e_5707:
    cp e                                          ; $5707: $bb
    rst $18                                       ; $5708: $df
    ld a, d                                       ; $5709: $7a
    ld h, l                                       ; $570a: $65
    add sp, $6f                                   ; $570b: $e8 $6f
    cp $f2                                        ; $570d: $fe $f2
    rst $38                                       ; $570f: $ff
    call z, Call_05e_46ad                         ; $5710: $cc $ad $46
    reti                                          ; $5713: $d9


    rst $10                                       ; $5714: $d7
    ld a, h                                       ; $5715: $7c
    or [hl]                                       ; $5716: $b6
    rst $20                                       ; $5717: $e7
    xor h                                         ; $5718: $ac
    add l                                         ; $5719: $85
    push af                                       ; $571a: $f5
    xor e                                         ; $571b: $ab
    inc bc                                        ; $571c: $03
    xor l                                         ; $571d: $ad
    rst $18                                       ; $571e: $df
    or $02                                        ; $571f: $f6 $02
    inc e                                         ; $5721: $1c
    daa                                           ; $5722: $27
    ld e, d                                       ; $5723: $5a
    or $5f                                        ; $5724: $f6 $5f
    and e                                         ; $5726: $a3
    dec b                                         ; $5727: $05
    db $e3                                        ; $5728: $e3
    jr c, @-$1b                                   ; $5729: $38 $e3

    ld a, h                                       ; $572b: $7c
    ld a, [bc]                                    ; $572c: $0a
    cp a                                          ; $572d: $bf
    xor l                                         ; $572e: $ad
    ld a, [$afe7]                                 ; $572f: $fa $e7 $af
    ld l, l                                       ; $5732: $6d
    ld [hl], c                                    ; $5733: $71
    sla e                                         ; $5734: $cb $23
    inc e                                         ; $5736: $1c
    ld h, a                                       ; $5737: $67

jr_05e_5738:
    db $f4                                        ; $5738: $f4
    xor b                                         ; $5739: $a8
    adc d                                         ; $573a: $8a
    ld [hl], e                                    ; $573b: $73
    xor a                                         ; $573c: $af
    reti                                          ; $573d: $d9


    dec bc                                        ; $573e: $0b
    ld c, e                                       ; $573f: $4b
    ld [hl], a                                    ; $5740: $77
    add $65                                       ; $5741: $c6 $65
    sbc d                                         ; $5743: $9a
    ret z                                         ; $5744: $c8

    cp d                                          ; $5745: $ba
    scf                                           ; $5746: $37
    ld c, d                                       ; $5747: $4a
    inc sp                                        ; $5748: $33
    jr jr_05e_5738                                ; $5749: $18 $ed

    ld e, c                                       ; $574b: $59
    sbc b                                         ; $574c: $98
    ld l, e                                       ; $574d: $6b
    ld hl, $9a51                                  ; $574e: $21 $51 $9a
    pop bc                                        ; $5751: $c1
    ld d, d                                       ; $5752: $52
    ld c, h                                       ; $5753: $4c
    ld a, [bc]                                    ; $5754: $0a
    add $aa                                       ; $5755: $c6 $aa
    db $10                                        ; $5757: $10
    sub [hl]                                      ; $5758: $96
    db $ec                                        ; $5759: $ec
    rst $18                                       ; $575a: $df
    rra                                           ; $575b: $1f
    dec [hl]                                      ; $575c: $35
    ld e, d                                       ; $575d: $5a
    ld h, e                                       ; $575e: $63
    ret c                                         ; $575f: $d8

    ld l, d                                       ; $5760: $6a
    ld [hl+], a                                   ; $5761: $22
    db $eb                                        ; $5762: $eb
    sbc $2c                                       ; $5763: $de $2c
    add l                                         ; $5765: $85
    xor h                                         ; $5766: $ac
    ld [hl], l                                    ; $5767: $75
    sbc h                                         ; $5768: $9c
    sbc e                                         ; $5769: $9b
    ld l, $00                                     ; $576a: $2e $00
    sbc h                                         ; $576c: $9c
    cp a                                          ; $576d: $bf
    xor l                                         ; $576e: $ad
    ld sp, hl                                     ; $576f: $f9
    push af                                       ; $5770: $f5
    dec l                                         ; $5771: $2d
    sbc [hl]                                      ; $5772: $9e
    ld c, a                                       ; $5773: $4f
    adc b                                         ; $5774: $88
    dec l                                         ; $5775: $2d
    ld h, h                                       ; $5776: $64
    ld c, e                                       ; $5777: $4b
    ld h, e                                       ; $5778: $63
    ld b, b                                       ; $5779: $40
    ld [c], a                                     ; $577a: $e2
    sbc h                                         ; $577b: $9c
    ld d, b                                       ; $577c: $50
    ld h, [hl]                                    ; $577d: $66
    ld c, l                                       ; $577e: $4d
    add hl, sp                                    ; $577f: $39
    sbc l                                         ; $5780: $9d
    inc de                                        ; $5781: $13
    ld [hl], d                                    ; $5782: $72
    add b                                         ; $5783: $80
    call z, Call_05e_60fb                         ; $5784: $cc $fb $60
    cp l                                          ; $5787: $bd
    rst $20                                       ; $5788: $e7
    inc b                                         ; $5789: $04
    or a                                          ; $578a: $b7
    ld hl, sp+$76                                 ; $578b: $f8 $76
    sub d                                         ; $578d: $92
    or d                                          ; $578e: $b2
    or h                                          ; $578f: $b4
    inc hl                                        ; $5790: $23
    jp z, Jump_05e_7bbe                           ; $5791: $ca $be $7b

    call c, Call_05e_672f                         ; $5794: $dc $2f $67
    inc b                                         ; $5797: $04
    adc a                                         ; $5798: $8f
    pop bc                                        ; $5799: $c1
    ld d, [hl]                                    ; $579a: $56
    ld [hl], e                                    ; $579b: $73
    sub h                                         ; $579c: $94
    add $b0                                       ; $579d: $c6 $b0
    push de                                       ; $579f: $d5
    ld b, h                                       ; $57a0: $44
    sub $bd                                       ; $57a1: $d6 $bd
    ld e, c                                       ; $57a3: $59
    ld a, [bc]                                    ; $57a4: $0a
    ld e, c                                       ; $57a5: $59
    db $eb                                        ; $57a6: $eb
    jr c, jr_05e_57e0                             ; $57a7: $38 $37

    add hl, bc                                    ; $57a9: $09
    ld c, e                                       ; $57aa: $4b
    or $ef                                        ; $57ab: $f6 $ef
    adc a                                         ; $57ad: $8f
    ld a, [de]                                    ; $57ae: $1a

Call_05e_57af:
    xor l                                         ; $57af: $ad
    add hl, de                                    ; $57b0: $19
    adc h                                         ; $57b1: $8c
    or $2c                                        ; $57b2: $f6 $2c
    call z, $90b5                                 ; $57b4: $cc $b5 $90
    jr z, @-$31                                   ; $57b7: $28 $cd

    ld h, b                                       ; $57b9: $60
    add hl, hl                                    ; $57ba: $29
    ld h, d                                       ; $57bb: $62
    ld e, l                                       ; $57bc: $5d
    nop                                           ; $57bd: $00
    sbc h                                         ; $57be: $9c
    cp a                                          ; $57bf: $bf
    dec l                                         ; $57c0: $2d
    rlca                                          ; $57c1: $07
    ret z                                         ; $57c2: $c8

    cp h                                          ; $57c3: $bc
    rrca                                          ; $57c4: $0f
    sub $5b                                       ; $57c5: $d6 $5b
    sbc d                                         ; $57c7: $9a
    cp e                                          ; $57c8: $bb
    ld d, l                                       ; $57c9: $55
    dec hl                                        ; $57ca: $2b
    ld hl, sp-$1b                                 ; $57cb: $f8 $e5
    rst $00                                       ; $57cd: $c7
    ld a, c                                       ; $57ce: $79
    db $eb                                        ; $57cf: $eb
    ld l, l                                       ; $57d0: $6d
    pop af                                        ; $57d1: $f1
    ld a, h                                       ; $57d2: $7c
    ld b, d                                       ; $57d3: $42
    ld l, h                                       ; $57d4: $6c
    ld hl, $f25b                                  ; $57d5: $21 $5b $f2
    rst $00                                       ; $57d8: $c7
    ld a, c                                       ; $57d9: $79
    db $eb                                        ; $57da: $eb
    cp a                                          ; $57db: $bf
    call nz, $e7b9                                ; $57dc: $c4 $b9 $e7
    sub b                                         ; $57df: $90

jr_05e_57e0:
    ld h, d                                       ; $57e0: $62
    push de                                       ; $57e1: $d5
    dec de                                        ; $57e2: $1b
    sbc l                                         ; $57e3: $9d
    ld e, c                                       ; $57e4: $59
    rst $28                                       ; $57e5: $ef
    inc h                                         ; $57e6: $24
    ld a, [hl+]                                   ; $57e7: $2a
    pop hl                                        ; $57e8: $e1
    add hl, bc                                    ; $57e9: $09
    db $dd                                        ; $57ea: $dd
    db $db                                        ; $57eb: $db
    ld b, h                                       ; $57ec: $44
    and l                                         ; $57ed: $a5
    adc [hl]                                      ; $57ee: $8e
    add hl, de                                    ; $57ef: $19
    rst $30                                       ; $57f0: $f7
    ld e, d                                       ; $57f1: $5a
    sub e                                         ; $57f2: $93
    inc l                                         ; $57f3: $2c
    ld c, d                                       ; $57f4: $4a
    di                                            ; $57f5: $f3
    set 5, h                                      ; $57f6: $cb $ec
    sub e                                         ; $57f8: $93
    adc d                                         ; $57f9: $8a
    ld l, [hl]                                    ; $57fa: $6e
    jp nc, $b618                                  ; $57fb: $d2 $18 $b6

    sbc d                                         ; $57fe: $9a
    ret z                                         ; $57ff: $c8

    cp d                                          ; $5800: $ba
    scf                                           ; $5801: $37
    ld c, e                                       ; $5802: $4b
    ld hl, $1d6b                                  ; $5803: $21 $6b $1d
    rst $20                                       ; $5806: $e7
    ld h, $61                                     ; $5807: $26 $61
    xor c                                         ; $5809: $a9
    rst $00                                       ; $580a: $c7
    add hl, sp                                    ; $580b: $39
    and e                                         ; $580c: $a3
    dec [hl]                                      ; $580d: $35
    add e                                         ; $580e: $83
    pop de                                        ; $580f: $d1
    sbc [hl]                                      ; $5810: $9e
    add l                                         ; $5811: $85
    cp c                                          ; $5812: $b9
    ld d, $12                                     ; $5813: $16 $12
    and l                                         ; $5815: $a5
    add hl, de                                    ; $5816: $19
    inc l                                         ; $5817: $2c
    ld b, l                                       ; $5818: $45
    xor h                                         ; $5819: $ac
    dec bc                                        ; $581a: $0b
    nop                                           ; $581b: $00
    ld c, $89                                     ; $581c: $0e $89
    ld l, h                                       ; $581e: $6c
    ld e, e                                       ; $581f: $5b
    adc l                                         ; $5820: $8d
    xor h                                         ; $5821: $ac
    or [hl]                                       ; $5822: $b6
    sub h                                         ; $5823: $94
    adc [hl]                                      ; $5824: $8e
    push af                                       ; $5825: $f5
    rst $00                                       ; $5826: $c7
    add hl, sp                                    ; $5827: $39
    ld hl, $c807                                  ; $5828: $21 $07 $c8
    cp h                                          ; $582b: $bc
    rrca                                          ; $582c: $0f
    sub $5b                                       ; $582d: $d6 $5b
    sbc d                                         ; $582f: $9a
    ld e, a                                       ; $5830: $5f
    ld h, [hl]                                    ; $5831: $66
    cpl                                           ; $5832: $2f
    ld hl, sp+$65                                 ; $5833: $f8 $65
    rst $38                                       ; $5835: $ff
    adc l                                         ; $5836: $8d
    db $db                                        ; $5837: $db
    ld a, [hl-]                                   ; $5838: $3a
    sbc b                                         ; $5839: $98
    xor $24                                       ; $583a: $ee $24
    ld h, d                                       ; $583c: $62
    ld [hl], a                                    ; $583d: $77
    ld b, h                                       ; $583e: $44
    jp hl                                         ; $583f: $e9


    cp $9e                                        ; $5840: $fe $9e
    rst $38                                       ; $5842: $ff
    push bc                                       ; $5843: $c5
    dec l                                         ; $5844: $2d
    sbc [hl]                                      ; $5845: $9e
    jr c, jr_05e_5886                             ; $5846: $38 $3e

    halt                                          ; $5848: $76
    adc a                                         ; $5849: $8f
    adc d                                         ; $584a: $8a
    xor b                                         ; $584b: $a8
    rst $10                                       ; $584c: $d7
    dec a                                         ; $584d: $3d
    sub $fa                                       ; $584e: $d6 $fa
    dec sp                                        ; $5850: $3b
    xor c                                         ; $5851: $a9
    add sp, $26                                   ; $5852: $e8 $26
    adc l                                         ; $5854: $8d
    ld h, c                                       ; $5855: $61
    xor e                                         ; $5856: $ab
    adc c                                         ; $5857: $89
    xor h                                         ; $5858: $ac
    ld a, e                                       ; $5859: $7b
    or e                                          ; $585a: $b3
    inc d                                         ; $585b: $14
    or d                                          ; $585c: $b2
    sub $71                                       ; $585d: $d6 $71
    ld l, [hl]                                    ; $585f: $6e
    ld d, d                                       ; $5860: $52
    adc a                                         ; $5861: $8f
    or e                                          ; $5862: $b3
    sbc d                                         ; $5863: $9a
    pop bc                                        ; $5864: $c1
    ld l, b                                       ; $5865: $68
    rst $08                                       ; $5866: $cf
    jp nz, $0b5c                                  ; $5867: $c2 $5c $0b

    adc c                                         ; $586a: $89
    jp nc, $960c                                  ; $586b: $d2 $0c $96

    ld [hl+], a                                   ; $586e: $22
    sub [hl]                                      ; $586f: $96
    cp $ef                                        ; $5870: $fe $ef
    ld [hl], c                                    ; $5872: $71
    adc $5f                                       ; $5873: $ce $5f
    nop                                           ; $5875: $00
    inc e                                         ; $5876: $1c
    daa                                           ; $5877: $27
    ld e, d                                       ; $5878: $5a
    ld d, $27                                     ; $5879: $16 $27
    rst $18                                       ; $587b: $df
    xor d                                         ; $587c: $aa
    xor h                                         ; $587d: $ac
    dec [hl]                                      ; $587e: $35
    scf                                           ; $587f: $37
    adc $89                                       ; $5880: $ce $89
    adc $ac                                       ; $5882: $ce $ac
    ld c, c                                       ; $5884: $49
    ld [hl], a                                    ; $5885: $77

jr_05e_5886:
    or h                                          ; $5886: $b4
    sub c                                         ; $5887: $91
    dec [hl]                                      ; $5888: $35
    add hl, bc                                    ; $5889: $09
    ld a, [hl]                                    ; $588a: $7e
    dec e                                         ; $588b: $1d
    xor [hl]                                      ; $588c: $ae
    xor h                                         ; $588d: $ac
    xor c                                         ; $588e: $a9
    or d                                          ; $588f: $b2
    ld d, [hl]                                    ; $5890: $56
    ld a, [$e39f]                                 ; $5891: $fa $9f $e3
    halt                                          ; $5894: $76
    adc a                                         ; $5895: $8f
    adc d                                         ; $5896: $8a
    jr z, @+$67                                   ; $5897: $28 $65

    db $d3                                        ; $5899: $d3
    sub $9e                                       ; $589a: $d6 $9e
    push hl                                       ; $589c: $e5
    ld l, e                                       ; $589d: $6b
    ld d, c                                       ; $589e: $51
    call c, $fde2                                 ; $589f: $dc $e2 $fd
    sbc l                                         ; $58a2: $9d
    ld d, c                                       ; $58a3: $51
    ld a, [hl-]                                   ; $58a4: $3a
    ld l, e                                       ; $58a5: $6b
    inc [hl]                                      ; $58a6: $34
    ld l, l                                       ; $58a7: $6d
    sub l                                         ; $58a8: $95
    rst $00                                       ; $58a9: $c7
    ld c, c                                       ; $58aa: $49
    ld [hl], c                                    ; $58ab: $71
    ld [hl+], a                                   ; $58ac: $22
    db $eb                                        ; $58ad: $eb
    sbc $28                                       ; $58ae: $de $28
    call $b460                                    ; $58b0: $cd $60 $b4
    ld h, a                                       ; $58b3: $67
    ld h, c                                       ; $58b4: $61
    xor [hl]                                      ; $58b5: $ae
    add l                                         ; $58b6: $85
    ld b, h                                       ; $58b7: $44
    ld l, c                                       ; $58b8: $69
    ld b, $4b                                     ; $58b9: $06 $4b
    ld d, c                                       ; $58bb: $51
    ld e, b                                       ; $58bc: $58
    add d                                         ; $58bd: $82
    rst $00                                       ; $58be: $c7
    sbc c                                         ; $58bf: $99
    ld l, e                                       ; $58c0: $6b
    db $fd                                        ; $58c1: $fd
    dec [hl]                                      ; $58c2: $35
    ld e, d                                       ; $58c3: $5a
    ld h, e                                       ; $58c4: $63
    ld b, b                                       ; $58c5: $40
    and d                                         ; $58c6: $a2
    inc [hl]                                      ; $58c7: $34
    sub c                                         ; $58c8: $91
    ld [hl], l                                    ; $58c9: $75
    ld l, a                                       ; $58ca: $6f
    sub [hl]                                      ; $58cb: $96
    ld b, d                                       ; $58cc: $42
    sub $3a                                       ; $58cd: $d6 $3a
    adc $4d                                       ; $58cf: $ce $4d
    ld [hl], l                                    ; $58d1: $75
    ld bc, $629e                                  ; $58d2: $01 $9e $62
    ld a, [hl-]                                   ; $58d5: $3a
    db $e3                                        ; $58d6: $e3
    db $ec                                        ; $58d7: $ec
    sbc h                                         ; $58d8: $9c
    jr z, jr_05e_5907                             ; $58d9: $28 $2c

    push hl                                       ; $58db: $e5
    cp b                                          ; $58dc: $b8
    db $dd                                        ; $58dd: $dd
    ld e, a                                       ; $58de: $5f
    and e                                         ; $58df: $a3
    push de                                       ; $58e0: $d5
    jp $1f7f                                      ; $58e1: $c3 $7f $1f


    rst $20                                       ; $58e4: $e7
    rst $38                                       ; $58e5: $ff
    reti                                          ; $58e6: $d9


    ld [c], a                                     ; $58e7: $e2
    sub [hl]                                      ; $58e8: $96
    rst $00                                       ; $58e9: $c7
    ld h, e                                       ; $58ea: $63
    db $d3                                        ; $58eb: $d3
    or c                                          ; $58ec: $b1
    sub $51                                       ; $58ed: $d6 $51
    jp z, $bb71                                   ; $58ef: $ca $71 $bb

    pop de                                        ; $58f2: $d1
    rra                                           ; $58f3: $1f
    dec a                                         ; $58f4: $3d
    ld d, a                                       ; $58f5: $57
    ld e, b                                       ; $58f6: $58
    sbc d                                         ; $58f7: $9a
    rst $18                                       ; $58f8: $df
    di                                            ; $58f9: $f3
    rst $10                                       ; $58fa: $d7
    ld a, d                                       ; $58fb: $7a
    ld [hl], b                                    ; $58fc: $70
    res 7, l                                      ; $58fd: $cb $bd
    ld [hl], c                                    ; $58ff: $71
    ld a, e                                       ; $5900: $7b
    ld a, a                                       ; $5901: $7f
    ld [bc], a                                    ; $5902: $02
    add d                                         ; $5903: $82
    inc l                                         ; $5904: $2c
    db $f4                                        ; $5905: $f4
    push de                                       ; $5906: $d5

jr_05e_5907:
    rst $38                                       ; $5907: $ff
    or d                                          ; $5908: $b2
    xor l                                         ; $5909: $ad
    ld [hl], c                                    ; $590a: $71
    ld c, [hl]                                    ; $590b: $4e
    ld l, b                                       ; $590c: $68
    cp $ce                                        ; $590d: $fe $ce
    or l                                          ; $590f: $b5
    ld a, [hl]                                    ; $5910: $7e
    ld sp, hl                                     ; $5911: $f9
    rst $08                                       ; $5912: $cf
    jp nc, $92ff                                  ; $5913: $d2 $ff $92

    inc de                                        ; $5916: $13
    cp h                                          ; $5917: $bc
    ld h, e                                       ; $5918: $63
    sbc h                                         ; $5919: $9c
    or c                                          ; $591a: $b1
    or [hl]                                       ; $591b: $b6
    xor a                                         ; $591c: $af
    jp nz, Jump_05e_7ded                          ; $591d: $c2 $ed $7d

    pop bc                                        ; $5920: $c1
    xor a                                         ; $5921: $af
    inc a                                         ; $5922: $3c
    ld c, [hl]                                    ; $5923: $4e
    adc d                                         ; $5924: $8a
    ldh a, [$3b]                                  ; $5925: $f0 $3b
    ld hl, $2667                                  ; $5927: $21 $67 $26
    or d                                          ; $592a: $b2
    sbc $4a                                       ; $592b: $de $4a
    ld a, [bc]                                    ; $592d: $0a
    ld b, [hl]                                    ; $592e: $46
    or e                                          ; $592f: $b3
    rla                                           ; $5930: $17
    sub $75                                       ; $5931: $d6 $75
    ld e, l                                       ; $5933: $5d
    ld [c], a                                     ; $5934: $e2
    ld a, c                                       ; $5935: $79
    add $32                                       ; $5936: $c6 $32
    add hl, sp                                    ; $5938: $39
    call nz, Call_05e_60ee                        ; $5939: $c4 $ee $60
    call c, Call_000_1c00                         ; $593c: $dc $00 $1c
    daa                                           ; $593f: $27
    ld e, d                                       ; $5940: $5a
    add a                                         ; $5941: $87
    dec hl                                        ; $5942: $2b
    ld l, e                                       ; $5943: $6b
    xor d                                         ; $5944: $aa
    xor h                                         ; $5945: $ac
    push de                                       ; $5946: $d5
    dec de                                        ; $5947: $1b
    or [hl]                                       ; $5948: $b6
    ld a, [c]                                     ; $5949: $f2
    inc d                                         ; $594a: $14
    db $d3                                        ; $594b: $d3
    add hl, de                                    ; $594c: $19

jr_05e_594d:
    ld h, a                                       ; $594d: $67
    rst $20                                       ; $594e: $e7
    ld b, h                                       ; $594f: $44
    xor h                                         ; $5950: $ac
    and h                                         ; $5951: $a4
    ldh a, [$fe]                                  ; $5952: $f0 $fe
    cpl                                           ; $5954: $2f
    push af                                       ; $5955: $f5
    ldh a, [rIE]                                  ; $5956: $f0 $ff
    ld l, l                                       ; $5958: $6d
    sub e                                         ; $5959: $93
    add d                                         ; $595a: $82
    pop de                                        ; $595b: $d1
    db $ec                                        ; $595c: $ec
    push de                                       ; $595d: $d5
    db $e3                                        ; $595e: $e3
    ld b, h                                       ; $595f: $44
    db $eb                                        ; $5960: $eb
    ld l, l                                       ; $5961: $6d
    call c, Call_000_25ff                         ; $5962: $dc $ff $25
    ld hl, sp-$7b                                 ; $5965: $f8 $85
    cp $da                                        ; $5967: $fe $da
    adc h                                         ; $5969: $8c
    inc de                                        ; $596a: $13
    rst $30                                       ; $596b: $f7
    ld a, a                                       ; $596c: $7f
    ld [hl], c                                    ; $596d: $71
    set 6, e                                      ; $596e: $cb $f3
    jr c, jr_05e_599b                             ; $5970: $38 $29

    ld c, [hl]                                    ; $5972: $4e
    ld h, h                                       ; $5973: $64
    db $dd                                        ; $5974: $dd
    dec de                                        ; $5975: $1b
    and l                                         ; $5976: $a5
    add hl, de                                    ; $5977: $19
    adc h                                         ; $5978: $8c
    or $2c                                        ; $5979: $f6 $2c
    call z, $90b5                                 ; $597b: $cc $b5 $90
    jr z, jr_05e_594d                             ; $597e: $28 $cd

    ld h, b                                       ; $5980: $60
    add hl, hl                                    ; $5981: $29
    ld a, [hl+]                                   ; $5982: $2a
    db $fd                                        ; $5983: $fd
    inc sp                                        ; $5984: $33
    cp $d5                                        ; $5985: $fe $d5
    cp b                                          ; $5987: $b8
    add hl, sp                                    ; $5988: $39
    halt                                          ; $5989: $76
    rst $38                                       ; $598a: $ff
    ld l, e                                       ; $598b: $6b
    cp $ce                                        ; $598c: $fe $ce
    cp c                                          ; $598e: $b9
    ld [$7960], a                                 ; $598f: $ea $60 $79
    db $f4                                        ; $5992: $f4
    jr c, jr_05e_59bc                             ; $5993: $38 $27

    ld h, d                                       ; $5995: $62
    jp c, $fe0a                                   ; $5996: $da $0a $fe

    ld sp, hl                                     ; $5999: $f9
    rst $30                                       ; $599a: $f7

jr_05e_599b:
    sbc a                                         ; $599b: $9f
    di                                            ; $599c: $f3
    ld a, [de]                                    ; $599d: $1a
    and e                                         ; $599e: $a3
    ei                                            ; $599f: $fb
    dec [hl]                                      ; $59a0: $35
    sub c                                         ; $59a1: $91
    ld [hl], l                                    ; $59a2: $75
    ld l, a                                       ; $59a3: $6f
    sub [hl]                                      ; $59a4: $96
    ld b, d                                       ; $59a5: $42
    sub $3a                                       ; $59a6: $d6 $3a
    adc $4d                                       ; $59a8: $ce $4d
    and h                                         ; $59aa: $a4
    add hl, de                                    ; $59ab: $19
    inc l                                         ; $59ac: $2c
    push bc                                       ; $59ad: $c5
    ld [hl], h                                    ; $59ae: $74
    ld h, b                                       ; $59af: $60
    ld b, l                                       ; $59b0: $45
    sbc b                                         ; $59b1: $98
    db $fd                                        ; $59b2: $fd
    dec b                                         ; $59b3: $05
    nop                                           ; $59b4: $00
    ld a, h                                       ; $59b5: $7c
    ld de, $9529                                  ; $59b6: $11 $29 $95
    ld a, [hl+]                                   ; $59b9: $2a
    ld l, e                                       ; $59ba: $6b
    pop af                                        ; $59bb: $f1

jr_05e_59bc:
    ld l, [hl]                                    ; $59bc: $6e
    dec h                                         ; $59bd: $25
    db $e4                                        ; $59be: $e4
    add h                                         ; $59bf: $84
    ret                                           ; $59c0: $c9


    ld e, l                                       ; $59c1: $5d
    add [hl]                                      ; $59c2: $86
    ld h, [hl]                                    ; $59c3: $66
    ld e, e                                       ; $59c4: $5b
    ld a, d                                       ; $59c5: $7a
    adc e                                         ; $59c6: $8b
    ei                                            ; $59c7: $fb
    rst $08                                       ; $59c8: $cf
    adc c                                         ; $59c9: $89
    and h                                         ; $59ca: $a4
    ld a, b                                       ; $59cb: $78
    sbc [hl]                                      ; $59cc: $9e
    or c                                          ; $59cd: $b1
    db $ec                                        ; $59ce: $ec
    ld [de], a                                    ; $59cf: $12
    ld [hl], h                                    ; $59d0: $74
    xor a                                         ; $59d1: $af
    ld l, h                                       ; $59d2: $6c
    db $e3                                        ; $59d3: $e3
    inc [hl]                                      ; $59d4: $34
    jp hl                                         ; $59d5: $e9


    db $fc                                        ; $59d6: $fc

jr_05e_59d7:
    or $60                                        ; $59d7: $f6 $60
    xor e                                         ; $59d9: $ab
    inc l                                         ; $59da: $2c
    adc l                                         ; $59db: $8d
    ld l, c                                       ; $59dc: $69
    ld d, h                                       ; $59dd: $54
    add d                                         ; $59de: $82
    ld e, a                                       ; $59df: $5f
    inc de                                        ; $59e0: $13
    rst $08                                       ; $59e1: $cf
    dec e                                         ; $59e2: $1d
    xor d                                         ; $59e3: $aa
    jr c, jr_05e_5a16                             ; $59e4: $38 $30

    ld d, l                                       ; $59e6: $55
    add l                                         ; $59e7: $85
    dec [hl]                                      ; $59e8: $35
    add hl, bc                                    ; $59e9: $09
    ld a, [hl]                                    ; $59ea: $7e
    db $dd                                        ; $59eb: $dd
    ld de, $cfe2                                  ; $59ec: $11 $e2 $cf
    ld c, [hl]                                    ; $59ef: $4e
    and $7f                                       ; $59f0: $e6 $7f
    ld a, [hl-]                                   ; $59f2: $3a
    cp a                                          ; $59f3: $bf
    db $e4                                        ; $59f4: $e4
    rst $28                                       ; $59f5: $ef
    ld a, h                                       ; $59f6: $7c
    ld a, b                                       ; $59f7: $78
    call nc, Call_05e_5d7f                        ; $59f8: $d4 $7f $5d
    nop                                           ; $59fb: $00
    db $fc                                        ; $59fc: $fc
    jp Jump_000_1e99                              ; $59fd: $c3 $99 $1e


    adc $f4                                       ; $5a00: $ce $f4
    xor b                                         ; $5a02: $a8
    ld e, [hl]                                    ; $5a03: $5e
    ld h, c                                       ; $5a04: $61
    ret                                           ; $5a05: $c9


    daa                                           ; $5a06: $27
    ld [$2ace], a                                 ; $5a07: $ea $ce $2a
    db $eb                                        ; $5a0a: $eb
    dec bc                                        ; $5a0b: $0b
    nop                                           ; $5a0c: $00
    ld c, [hl]                                    ; $5a0d: $4e
    cp e                                          ; $5a0e: $bb
    push hl                                       ; $5a0f: $e5
    cp h                                          ; $5a10: $bc
    nop                                           ; $5a11: $00
    adc $b8                                       ; $5a12: $ce $b8
    push hl                                       ; $5a14: $e5
    cp h                                          ; $5a15: $bc

jr_05e_5a16:
    nop                                           ; $5a16: $00
    ld a, h                                       ; $5a17: $7c
    ld d, c                                       ; $5a18: $51
    pop de                                        ; $5a19: $d1
    call nc, Call_000_006e                        ; $5a1a: $d4 $6e $00
    ld a, h                                       ; $5a1d: $7c
    ld d, c                                       ; $5a1e: $51
    pop de                                        ; $5a1f: $d1
    call nc, $cb72                                ; $5a20: $d4 $72 $cb
    ld a, c                                       ; $5a23: $79
    pop af                                        ; $5a24: $f1
    ld a, [hl-]                                   ; $5a25: $3a
    ld [hl], h                                    ; $5a26: $74
    and e                                         ; $5a27: $a3
    adc c                                         ; $5a28: $89
    dec de                                        ; $5a29: $1b
    nop                                           ; $5a2a: $00
    sbc h                                         ; $5a2b: $9c
    rst $38                                       ; $5a2c: $ff
    dec l                                         ; $5a2d: $2d
    or a                                          ; $5a2e: $b7
    sbc h                                         ; $5a2f: $9c
    rla                                           ; $5a30: $17
    xor a                                         ; $5a31: $af
    ld b, e                                       ; $5a32: $43
    scf                                           ; $5a33: $37
    sbc d                                         ; $5a34: $9a
    cp b                                          ; $5a35: $b8
    ld bc, $a11e                                  ; $5a36: $01 $1e $a1
    add hl, hl                                    ; $5a39: $29
    ld e, d                                       ; $5a3a: $5a
    ld sp, hl                                     ; $5a3b: $f9
    add $21                                       ; $5a3c: $c6 $21
    call Call_05e_4460                            ; $5a3e: $cd $60 $44
    jp z, $a4e3                                   ; $5a41: $ca $e3 $a4

    jr c, jr_05e_59d7                             ; $5a44: $38 $91

    ld [hl], l                                    ; $5a46: $75
    rlca                                          ; $5a47: $07
    db $fc                                        ; $5a48: $fc
    ld c, c                                       ; $5a49: $49
    ld d, l                                       ; $5a4a: $55
    sub $c2                                       ; $5a4b: $d6 $c2
    jp nc, Jump_000_3644                          ; $5a4d: $d2 $44 $36

    db $e3                                        ; $5a50: $e3
    push af                                       ; $5a51: $f5
    dec sp                                        ; $5a52: $3b
    ld e, a                                       ; $5a53: $5f
    ld a, a                                       ; $5a54: $7f
    ld [hl], b                                    ; $5a55: $70
    cp e                                          ; $5a56: $bb
    rst $38                                       ; $5a57: $ff
    cpl                                           ; $5a58: $2f
    nop                                           ; $5a59: $00
    ld e, $a1                                     ; $5a5a: $1e $a1
    jp hl                                         ; $5a5c: $e9


    ldh [$b6], a                                  ; $5a5d: $e0 $b6
    adc l                                         ; $5a5f: $8d
    sub $a4                                       ; $5a60: $d6 $a4
    inc l                                         ; $5a62: $2c
    and a                                         ; $5a63: $a7
    ld d, [hl]                                    ; $5a64: $56
    ld c, [hl]                                    ; $5a65: $4e
    jp hl                                         ; $5a66: $e9


    ld l, [hl]                                    ; $5a67: $6e
    dec h                                         ; $5a68: $25
    sub l                                         ; $5a69: $95
    rst $00                                       ; $5a6a: $c7
    ld c, c                                       ; $5a6b: $49
    ld [hl], c                                    ; $5a6c: $71
    ld [hl+], a                                   ; $5a6d: $22
    db $eb                                        ; $5a6e: $eb
    ld e, b                                       ; $5a6f: $58
    db $eb                                        ; $5a70: $eb
    ld d, a                                       ; $5a71: $57
    adc [hl]                                      ; $5a72: $8e
    dec hl                                        ; $5a73: $2b
    inc a                                         ; $5a74: $3c
    rst $20                                       ; $5a75: $e7
    push hl                                       ; $5a76: $e5
    rst $38                                       ; $5a77: $ff
    add c                                         ; $5a78: $81
    or c                                          ; $5a79: $b1
    db $f4                                        ; $5a7a: $f4
    cp $f8                                        ; $5a7b: $fe $f8
    dec bc                                        ; $5a7d: $0b
    nop                                           ; $5a7e: $00
    ld e, [hl]                                    ; $5a7f: $5e
    sbc l                                         ; $5a80: $9d
    ld e, b                                       ; $5a81: $58
    db $db                                        ; $5a82: $db
    db $db                                        ; $5a83: $db
    ld e, a                                       ; $5a84: $5f
    ld d, d                                       ; $5a85: $52
    ld e, $27                                     ; $5a86: $1e $27
    push bc                                       ; $5a88: $c5
    adc c                                         ; $5a89: $89
    xor h                                         ; $5a8a: $ac
    dec sp                                        ; $5a8b: $3b
    ldh [$d7], a                                  ; $5a8c: $e0 $d7
    db $fc                                        ; $5a8e: $fc
    xor d                                         ; $5a8f: $aa
    rst $28                                       ; $5a90: $ef
    cp $d7                                        ; $5a91: $fe $d7
    inc c                                         ; $5a93: $0c
    ld b, [hl]                                    ; $5a94: $46
    ld c, l                                       ; $5a95: $4d
    ld a, [c]                                     ; $5a96: $f2
    rst $38                                       ; $5a97: $ff
    ret nz                                        ; $5a98: $c0

    ld e, b                                       ; $5a99: $58
    ld c, c                                       ; $5a9a: $49
    reti                                          ; $5a9b: $d9


    sbc [hl]                                      ; $5a9c: $9e
    ld b, e                                       ; $5a9d: $43
    xor d                                         ; $5a9e: $aa
    sub b                                         ; $5a9f: $90
    rst $38                                       ; $5aa0: $ff
    rst $20                                       ; $5aa1: $e7
    di                                            ; $5aa2: $f3
    rst $28                                       ; $5aa3: $ef
    and h                                         ; $5aa4: $a4
    and $28                                       ; $5aa5: $e6 $28
    push de                                       ; $5aa7: $d5
    ld l, [hl]                                    ; $5aa8: $6e
    sub e                                         ; $5aa9: $93
    ld h, $65                                     ; $5aaa: $26 $65
    dec e                                         ; $5aac: $1d
    ld c, l                                       ; $5aad: $4d
    ld d, h                                       ; $5aae: $54
    jp nz, $b5aa                                  ; $5aaf: $c2 $aa $b5

    ld e, $15                                     ; $5ab2: $1e $15
    ld h, c                                       ; $5ab4: $61
    cp l                                          ; $5ab5: $bd
    sbc d                                         ; $5ab6: $9a
    ret z                                         ; $5ab7: $c8

    cp d                                          ; $5ab8: $ba
    scf                                           ; $5ab9: $37
    ld c, e                                       ; $5aba: $4b
    ld hl, $1d6b                                  ; $5abb: $21 $6b $1d
    rst $20                                       ; $5abe: $e7
    ld h, $33                                     ; $5abf: $26 $33
    cp d                                          ; $5ac1: $ba
    nop                                           ; $5ac2: $00
    ld e, [hl]                                    ; $5ac3: $5e
    call nz, $89db                                ; $5ac4: $c4 $db $89
    ld c, h                                       ; $5ac7: $4c
    di                                            ; $5ac8: $f3
    and a                                         ; $5ac9: $a7

Jump_05e_5aca:
    and c                                         ; $5aca: $a1
    ld b, l                                       ; $5acb: $45
    db $eb                                        ; $5acc: $eb
    adc $b2                                       ; $5acd: $ce $b2
    sbc h                                         ; $5acf: $9c
    ld e, d                                       ; $5ad0: $5a
    ld [hl], e                                    ; $5ad1: $73
    adc h                                         ; $5ad2: $8c
    inc de                                        ; $5ad3: $13
    rst $30                                       ; $5ad4: $f7
    db $fd                                        ; $5ad5: $fd
    or d                                          ; $5ad6: $b2
    ld sp, $bfcf                                  ; $5ad7: $31 $cf $bf
    db $fd                                        ; $5ada: $fd
    ld a, l                                       ; $5adb: $7d
    rst $38                                       ; $5adc: $ff
    call nz, $bfed                                ; $5add: $c4 $ed $bf
    db $e4                                        ; $5ae0: $e4
    ld h, b                                       ; $5ae1: $60
    rla                                           ; $5ae2: $17
    ld [de], a                                    ; $5ae3: $12
    and l                                         ; $5ae4: $a5
    ld a, e                                       ; $5ae5: $7b
    call z, Call_05e_57af                         ; $5ae6: $cc $af $57
    adc a                                         ; $5ae9: $8f
    inc de                                        ; $5aea: $13
    and c                                         ; $5aeb: $a1
    inc a                                         ; $5aec: $3c
    ld c, [hl]                                    ; $5aed: $4e
    adc d                                         ; $5aee: $8a
    inc de                                        ; $5aef: $13
    ld e, c                                       ; $5af0: $59
    ld [hl], a                                    ; $5af1: $77
    ret nz                                        ; $5af2: $c0

    ld a, a                                       ; $5af3: $7f
    ld bc, $e39e                                  ; $5af4: $01 $9e $e3
    sbc $3f                                       ; $5af7: $de $3f
    rst $20                                       ; $5af9: $e7
    rst $28                                       ; $5afa: $ef
    db $ed                                        ; $5afb: $ed
    rst $28                                       ; $5afc: $ef
    sub [hl]                                      ; $5afd: $96
    ld h, $b2                                     ; $5afe: $26 $b2
    xor $cd                                       ; $5b00: $ee $cd
    ld d, d                                       ; $5b02: $52
    ret z                                         ; $5b03: $c8

    ld e, d                                       ; $5b04: $5a
    rst $00                                       ; $5b05: $c7
    cp c                                          ; $5b06: $b9
    ld [hl], a                                    ; $5b07: $77
    ld c, e                                       ; $5b08: $4b
    db $fd                                        ; $5b09: $fd
    inc l                                         ; $5b0a: $2c
    rst $18                                       ; $5b0b: $df
    cp $2f                                        ; $5b0c: $fe $2f
    dec c                                         ; $5b0e: $0d
    adc e                                         ; $5b0f: $8b
    dec l                                         ; $5b10: $2d
    and l                                         ; $5b11: $a5
    rst $08                                       ; $5b12: $cf
    ld a, [c]                                     ; $5b13: $f2
    xor l                                         ; $5b14: $ad
    ld e, a                                       ; $5b15: $5f
    adc e                                         ; $5b16: $8b
    db $db                                        ; $5b17: $db
    rst $18                                       ; $5b18: $df
    rst $10                                       ; $5b19: $d7
    ld b, h                                       ; $5b1a: $44
    sub $1d                                       ; $5b1b: $d6 $1d
    ldh a, [$5f]                                  ; $5b1d: $f0 $5f
    nop                                           ; $5b1f: $00
    cp h                                          ; $5b20: $bc
    ld h, e                                       ; $5b21: $63
    sbc h                                         ; $5b22: $9c
    or c                                          ; $5b23: $b1
    or [hl]                                       ; $5b24: $b6
    xor a                                         ; $5b25: $af
    jp nz, Jump_05e_7ded                          ; $5b26: $c2 $ed $7d

    pop bc                                        ; $5b29: $c1
    xor a                                         ; $5b2a: $af
    inc a                                         ; $5b2b: $3c
    ld c, [hl]                                    ; $5b2c: $4e
    adc d                                         ; $5b2d: $8a
    ldh a, [$cb]                                  ; $5b2e: $f0 $cb
    sbc c                                         ; $5b30: $99
    adc c                                         ; $5b31: $89
    xor h                                         ; $5b32: $ac
    dec sp                                        ; $5b33: $3b
    ldh [rNR22], a                                ; $5b34: $e0 $17
    sub [hl]                                      ; $5b36: $96
    sbc h                                         ; $5b37: $9c
    ld [hl], a                                    ; $5b38: $77
    adc $79                                       ; $5b39: $ce $79
    dec b                                         ; $5b3b: $05
    db $db                                        ; $5b3c: $db
    di                                            ; $5b3d: $f3
    ld l, e                                       ; $5b3e: $6b
    db $fd                                        ; $5b3f: $fd
    ld c, c                                       ; $5b40: $49
    pop bc                                        ; $5b41: $c1
    xor a                                         ; $5b42: $af
    ld a, [bc]                                    ; $5b43: $0a
    ld h, c                                       ; $5b44: $61
    add hl, bc                                    ; $5b45: $09
    ld a, [hl]                                    ; $5b46: $7e
    db $ec                                        ; $5b47: $ec
    jr c, jr_05e_5b87                             ; $5b48: $38 $3d

    db $e4                                        ; $5b4a: $e4
    cp h                                          ; $5b4b: $bc
    di                                            ; $5b4c: $f3
    ld h, d                                       ; $5b4d: $62
    ld e, c                                       ; $5b4e: $59
    ld a, d                                       ; $5b4f: $7a
    inc de                                        ; $5b50: $13
    push de                                       ; $5b51: $d5
    dec b                                         ; $5b52: $05
    nop                                           ; $5b53: $00
    ret nc                                        ; $5b54: $d0

    ld l, h                                       ; $5b55: $6c
    rst $08                                       ; $5b56: $cf
    xor a                                         ; $5b57: $af
    db $ed                                        ; $5b58: $ed
    ld l, e                                       ; $5b59: $6b
    ld [hl+], a                                   ; $5b5a: $22
    db $eb                                        ; $5b5b: $eb
    sbc $2c                                       ; $5b5c: $de $2c
    add l                                         ; $5b5e: $85
    xor h                                         ; $5b5f: $ac
    ld [hl], l                                    ; $5b60: $75
    sbc h                                         ; $5b61: $9c
    ld a, e                                       ; $5b62: $7b
    ld c, c                                       ; $5b63: $49
    ld e, b                                       ; $5b64: $58
    ld [hl], d                                    ; $5b65: $72
    reti                                          ; $5b66: $d9


    cp c                                          ; $5b67: $b9
    ld c, e                                       ; $5b68: $4b
    sbc h                                         ; $5b69: $9c
    ld h, e                                       ; $5b6a: $63
    or b                                          ; $5b6b: $b0
    dec l                                         ; $5b6c: $2d
    and c                                         ; $5b6d: $a1
    cp l                                          ; $5b6e: $bd
    ld l, d                                       ; $5b6f: $6a
    rst $10                                       ; $5b70: $d7
    sbc d                                         ; $5b71: $9a
    add h                                         ; $5b72: $84
    and l                                         ; $5b73: $a5
    inc [hl]                                      ; $5b74: $34
    db $e3                                        ; $5b75: $e3
    add d                                         ; $5b76: $82
    ld h, h                                       ; $5b77: $64
    rst $20                                       ; $5b78: $e7
    xor h                                         ; $5b79: $ac
    dec l                                         ; $5b7a: $2d
    dec h                                         ; $5b7b: $25
    add l                                         ; $5b7c: $85
    or $4a                                        ; $5b7d: $f6 $4a
    ld b, a                                       ; $5b7f: $47
    cp [hl]                                       ; $5b80: $be
    db $dd                                        ; $5b81: $dd
    sbc a                                         ; $5b82: $9f
    rst $28                                       ; $5b83: $ef
    daa                                           ; $5b84: $27
    dec b                                         ; $5b85: $05
    cp a                                          ; $5b86: $bf

jr_05e_5b87:
    ret nc                                        ; $5b87: $d0

    ld e, [hl]                                    ; $5b88: $5e
    or $df                                        ; $5b89: $f6 $df
    db $fd                                        ; $5b8b: $fd

jr_05e_5b8c:
    cpl                                           ; $5b8c: $2f
    jr jr_05e_5b8c                                ; $5b8d: $18 $fd

    rla                                           ; $5b8f: $17
    sbc [hl]                                      ; $5b90: $9e
    di                                            ; $5b91: $f3
    ld c, d                                       ; $5b92: $4a
    ld a, a                                       ; $5b93: $7f
    ei                                            ; $5b94: $fb
    rst $08                                       ; $5b95: $cf
    ld e, c                                       ; $5b96: $59
    db $db                                        ; $5b97: $db
    cp a                                          ; $5b98: $bf
    nop                                           ; $5b99: $00

Call_05e_5b9a:
    db $fc                                        ; $5b9a: $fc
    reti                                          ; $5b9b: $d9


    ret                                           ; $5b9c: $c9


    db $fc                                        ; $5b9d: $fc
    ld c, a                                       ; $5b9e: $4f
    rst $20                                       ; $5b9f: $e7
    ld a, a                                       ; $5ba0: $7f
    add hl, bc                                    ; $5ba1: $09
    ld c, e                                       ; $5ba2: $4b
    sub e                                         ; $5ba3: $93
    ld a, d                                       ; $5ba4: $7a
    ld b, [hl]                                    ; $5ba5: $46
    ld [hl], a                                    ; $5ba6: $77
    ld h, $18                                     ; $5ba7: $26 $18
    ld l, e                                       ; $5ba9: $6b
    ld l, [hl]                                    ; $5baa: $6e
    add hl, hl                                    ; $5bab: $29
    rrca                                          ; $5bac: $0f
    add $be                                       ; $5bad: $c6 $be
    sub h                                         ; $5baf: $94
    rst $00                                       ; $5bb0: $c7
    ld c, c                                       ; $5bb1: $49
    ld [hl], c                                    ; $5bb2: $71
    ld [hl+], a                                   ; $5bb3: $22
    db $eb                                        ; $5bb4: $eb
    ld c, $f8                                     ; $5bb5: $0e $f8
    cpl                                           ; $5bb7: $2f
    pop af                                        ; $5bb8: $f1
    ld a, [hl]                                    ; $5bb9: $7e
    ld e, e                                       ; $5bba: $5b
    sbc h                                         ; $5bbb: $9c
    ld d, b                                       ; $5bbc: $50
    ccf                                           ; $5bbd: $3f
    sbc e                                         ; $5bbe: $9b
    ld l, a                                       ; $5bbf: $6f
    cp l                                          ; $5bc0: $bd
    jp z, $9f6e                                   ; $5bc1: $ca $6e $9f

    ret c                                         ; $5bc4: $d8

    sbc [hl]                                      ; $5bc5: $9e
    inc de                                        ; $5bc6: $13
    or [hl]                                       ; $5bc7: $b6
    ld c, c                                       ; $5bc8: $49
    push de                                       ; $5bc9: $d5
    ld l, [hl]                                    ; $5bca: $6e
    add hl, hl                                    ; $5bcb: $29
    rst $00                                       ; $5bcc: $c7
    ld l, l                                       ; $5bcd: $6d
    dec e                                         ; $5bce: $1d
    xor [hl]                                      ; $5bcf: $ae
    xor h                                         ; $5bd0: $ac
    adc c                                         ; $5bd1: $89
    ld d, h                                       ; $5bd2: $54
    cp e                                          ; $5bd3: $bb
    ld c, l                                       ; $5bd4: $4d
    rla                                           ; $5bd5: $17
    nop                                           ; $5bd6: $00
    ld c, $89                                     ; $5bd7: $0e $89
    inc l                                         ; $5bd9: $2c
    ld e, d                                       ; $5bda: $5a
    sub e                                         ; $5bdb: $93
    or d                                          ; $5bdc: $b2
    ld l, [hl]                                    ; $5bdd: $6e
    cp d                                          ; $5bde: $ba
    adc c                                         ; $5bdf: $89
    ld c, d                                       ; $5be0: $4a
    jp Jump_05e_6fe2                              ; $5be1: $c3 $e2 $6f


    ld a, a                                       ; $5be4: $7f
    ld e, a                                       ; $5be5: $5f
    ld e, c                                       ; $5be6: $59
    ld a, [bc]                                    ; $5be7: $0a
    ld e, c                                       ; $5be8: $59
    db $eb                                        ; $5be9: $eb
    jr c, @-$07                                   ; $5bea: $38 $f7

    sub d                                         ; $5bec: $92
    ld a, [c]                                     ; $5bed: $f2
    rst $18                                       ; $5bee: $df
    or h                                          ; $5bef: $b4
    db $e3                                        ; $5bf0: $e3
    call nz, $e7fd                                ; $5bf1: $c4 $fd $e7
    cp h                                          ; $5bf4: $bc

jr_05e_5bf5:
    ld a, [c]                                     ; $5bf5: $f2
    jr c, jr_05e_5c21                             ; $5bf6: $38 $29

    ld c, [hl]                                    ; $5bf8: $4e
    ld h, h                                       ; $5bf9: $64
    db $dd                                        ; $5bfa: $dd
    ld bc, $32bf                                  ; $5bfb: $01 $bf $32
    ld l, e                                       ; $5bfe: $6b
    jp z, Jump_05e_6c37                           ; $5bff: $ca $37 $6c

    dec [hl]                                      ; $5c02: $35
    cp a                                          ; $5c03: $bf
    call z, $02fe                                 ; $5c04: $cc $fe $02
    sbc [hl]                                      ; $5c07: $9e
    ld l, [hl]                                    ; $5c08: $6e
    push af                                       ; $5c09: $f5
    rst $08                                       ; $5c0a: $cf
    sub c                                         ; $5c0b: $91
    ld a, a                                       ; $5c0c: $7f
    cp l                                          ; $5c0d: $bd
    ldh a, [$a0]                                  ; $5c0e: $f0 $a0
    ld h, d                                       ; $5c10: $62
    add l                                         ; $5c11: $85
    daa                                           ; $5c12: $27
    sub h                                         ; $5c13: $94
    adc [hl]                                      ; $5c14: $8e
    ld [hl], e                                    ; $5c15: $73
    add $ed                                       ; $5c16: $c6 $ed
    rst $38                                       ; $5c18: $ff

jr_05e_5c19:
    ld e, a                                       ; $5c19: $5f
    ld [hl], d                                    ; $5c1a: $72
    ei                                            ; $5c1b: $fb
    ldh [$f6], a                                  ; $5c1c: $e0 $f6
    sub [hl]                                      ; $5c1e: $96
    ld b, $fb                                     ; $5c1f: $06 $fb

jr_05e_5c21:
    ld e, d                                       ; $5c21: $5a
    ld sp, hl                                     ; $5c22: $f9
    rst $28                                       ; $5c23: $ef
    rlca                                          ; $5c24: $07
    ld e, e                                       ; $5c25: $5b
    rst $38                                       ; $5c26: $ff
    or a                                          ; $5c27: $b7
    or b                                          ; $5c28: $b0
    cp $02                                        ; $5c29: $fe $02
    ld a, h                                       ; $5c2b: $7c
    inc bc                                        ; $5c2c: $03
    dec de                                        ; $5c2d: $1b
    rst $20                                       ; $5c2e: $e7
    ret z                                         ; $5c2f: $c8

    cp a                                          ; $5c30: $bf
    add l                                         ; $5c31: $85
    ld sp, hl                                     ; $5c32: $f9
    or a                                          ; $5c33: $b7
    db $fc                                        ; $5c34: $fc
    jr c, @-$26                                   ; $5c35: $38 $d8

    db $fd                                        ; $5c37: $fd
    ld sp, hl                                     ; $5c38: $f9
    cp $25                                        ; $5c39: $fe $25
    rlca                                          ; $5c3b: $07
    cp e                                          ; $5c3c: $bb
    sub b                                         ; $5c3d: $90
    jr z, jr_05e_5c19                             ; $5c3e: $28 $d9

    sbc [hl]                                      ; $5c40: $9e
    sbc e                                         ; $5c41: $9b
    ld e, d                                       ; $5c42: $5a
    dec a                                         ; $5c43: $3d
    xor d                                         ; $5c44: $aa
    ld b, a                                       ; $5c45: $47
    cp $2d                                        ; $5c46: $fe $2d
    adc e                                         ; $5c48: $8b
    pop bc                                        ; $5c49: $c1
    cp $f3                                        ; $5c4a: $fe $f3
    cpl                                           ; $5c4c: $2f
    ld h, l                                       ; $5c4d: $65
    or a                                          ; $5c4e: $b7
    ld c, a                                       ; $5c4f: $4f
    ld l, h                                       ; $5c50: $6c
    sub l                                         ; $5c51: $95
    ld c, $ac                                     ; $5c52: $0e $ac
    add sp, -$02                                  ; $5c54: $e8 $fe
    dec bc                                        ; $5c56: $0b
    nop                                           ; $5c57: $00
    adc [hl]                                      ; $5c58: $8e
    dec e                                         ; $5c59: $1d
    ld d, d                                       ; $5c5a: $52
    ld c, [hl]                                    ; $5c5b: $4e
    ld h, a                                       ; $5c5c: $67
    sbc e                                         ; $5c5d: $9b

jr_05e_5c5e:
    sub h                                         ; $5c5e: $94
    db $10                                        ; $5c5f: $10
    ei                                            ; $5c60: $fb
    jp c, Jump_05e_5eed                           ; $5c61: $da $ed $5e

    ld e, e                                       ; $5c64: $5b
    db $eb                                        ; $5c65: $eb
    rla                                           ; $5c66: $17
    db $db                                        ; $5c67: $db
    ld [$239f], a                                 ; $5c68: $ea $9f $23
    ld e, a                                       ; $5c6b: $5f
    db $eb                                        ; $5c6c: $eb
    cp a                                          ; $5c6d: $bf
    db $e4                                        ; $5c6e: $e4
    jr nz, jr_05e_5bf5                            ; $5c6f: $20 $84

    ld sp, hl                                     ; $5c71: $f9
    or a                                          ; $5c72: $b7
    ldh a, [rLY]                                  ; $5c73: $f0 $44
    cp [hl]                                       ; $5c75: $be
    push af                                       ; $5c76: $f5
    ld e, a                                       ; $5c77: $5f
    xor d                                         ; $5c78: $aa
    db $dd                                        ; $5c79: $dd
    jp nc, Jump_05e_7cc4                          ; $5c7a: $d2 $c4 $7c

    rst $38                                       ; $5c7d: $ff
    ld [bc], a                                    ; $5c7e: $02
    inc e                                         ; $5c7f: $1c
    ld h, a                                       ; $5c80: $67
    ld c, e                                       ; $5c81: $4b
    jr nc, jr_05e_5c5e                            ; $5c82: $30 $da

    inc e                                         ; $5c84: $1c
    and [hl]                                      ; $5c85: $a6
    and [hl]                                      ; $5c86: $a6
    call z, $def6                                 ; $5c87: $cc $f6 $de
    xor $df                                       ; $5c8a: $ee $df
    adc d                                         ; $5c8c: $8a
    sub d                                         ; $5c8d: $92
    rst $38                                       ; $5c8e: $ff
    ld l, l                                       ; $5c8f: $6d
    ld l, a                                       ; $5c90: $6f
    ld c, c                                       ; $5c91: $49
    db $dd                                        ; $5c92: $dd
    and e                                         ; $5c93: $a3
    ei                                            ; $5c94: $fb
    ld h, l                                       ; $5c95: $65
    db $db                                        ; $5c96: $db
    dec e                                         ; $5c97: $1d
    and l                                         ; $5c98: $a5
    ld a, e                                       ; $5c99: $7b
    ld l, e                                       ; $5c9a: $6b
    ld e, b                                       ; $5c9b: $58
    cp a                                          ; $5c9c: $bf
    ld a, [hl-]                                   ; $5c9d: $3a
    jp nc, Jump_000_2dde                          ; $5c9e: $d2 $de $2d

    dec [hl]                                      ; $5ca1: $35
    sbc l                                         ; $5ca2: $9d
    di                                            ; $5ca3: $f3
    ld e, e                                       ; $5ca4: $5b
    ld d, c                                       ; $5ca5: $51
    rla                                           ; $5ca6: $17
    nop                                           ; $5ca7: $00
    ld c, $06                                     ; $5ca8: $0e $06
    ld [$d81e], a                                 ; $5caa: $ea $1e $d8
    jr c, @+$49                                   ; $5cad: $38 $47

    cp $2d                                        ; $5caf: $fe $2d
    call z, $f5bf                                 ; $5cb1: $cc $bf $f5
    dec sp                                        ; $5cb4: $3b
    ld e, a                                       ; $5cb5: $5f
    inc de                                        ; $5cb6: $13
    ld a, l                                       ; $5cb7: $7d
    rst $38                                       ; $5cb8: $ff
    di                                            ; $5cb9: $f3
    db $fd                                        ; $5cba: $fd
    and h                                         ; $5cbb: $a4
    ld h, b                                       ; $5cbc: $60
    inc [hl]                                      ; $5cbd: $34
    db $dd                                        ; $5cbe: $dd
    ld e, e                                       ; $5cbf: $5b
    db $e3                                        ; $5cc0: $e3
    db $f4                                        ; $5cc1: $f4
    ld l, e                                       ; $5cc2: $6b
    ld h, [hl]                                    ; $5cc3: $66
    sub [hl]                                      ; $5cc4: $96
    dec [hl]                                      ; $5cc5: $35
    ld d, c                                       ; $5cc6: $51
    ld e, l                                       ; $5cc7: $5d
    nop                                           ; $5cc8: $00
    inc e                                         ; $5cc9: $1c
    daa                                           ; $5cca: $27
    ld c, d                                       ; $5ccb: $4a
    cp a                                          ; $5ccc: $bf
    push af                                       ; $5ccd: $f5
    cp d                                          ; $5cce: $ba
    scf                                           ; $5ccf: $37
    cp d                                          ; $5cd0: $ba
    or a                                          ; $5cd1: $b7
    or d                                          ; $5cd2: $b2
    ld c, [hl]                                    ; $5cd3: $4e
    ld [$d3de], a                                 ; $5cd4: $ea $de $d3
    and h                                         ; $5cd7: $a4
    ld e, $d5                                     ; $5cd8: $1e $d5
    ld h, e                                       ; $5cda: $63
    ld l, l                                       ; $5cdb: $6d
    add l                                         ; $5cdc: $85
    rst $30                                       ; $5cdd: $f7
    ld e, d                                       ; $5cde: $5a
    rst $38                                       ; $5cdf: $ff
    dec bc                                        ; $5ce0: $0b
    rst $08                                       ; $5ce1: $cf
    ld a, h                                       ; $5ce2: $7c
    sbc a                                         ; $5ce3: $9f
    xor b                                         ; $5ce4: $a8
    cpl                                           ; $5ce5: $2f
    nop                                           ; $5ce6: $00
    db $fc                                        ; $5ce7: $fc
    ld b, h                                       ; $5ce8: $44
    rst $20                                       ; $5ce9: $e7
    sub b                                         ; $5cea: $90
    or b                                          ; $5ceb: $b0
    sub h                                         ; $5cec: $94
    cp $b0                                        ; $5ced: $fe $b0
    ld sp, hl                                     ; $5cef: $f9
    xor a                                         ; $5cf0: $af
    db $fc                                        ; $5cf1: $fc
    or a                                          ; $5cf2: $b7
    ld h, h                                       ; $5cf3: $64
    ld a, e                                       ; $5cf4: $7b
    ld c, $6e                                     ; $5cf5: $0e $6e
    dec h                                         ; $5cf7: $25
    dec [hl]                                      ; $5cf8: $35
    ld b, a                                       ; $5cf9: $47
    jp hl                                         ; $5cfa: $e9


    adc [hl]                                      ; $5cfb: $8e
    ld l, l                                       ; $5cfc: $6d
    jp nc, Jump_000_3ddc                          ; $5cfd: $d2 $dc $3d

    rlca                                          ; $5d00: $07
    dec sp                                        ; $5d01: $3b
    ld a, [$2ebf]                                 ; $5d02: $fa $bf $2e
    cp c                                          ; $5d05: $b9
    cp l                                          ; $5d06: $bd
    di                                            ; $5d07: $f3
    ld h, l                                       ; $5d08: $65
    add e                                         ; $5d09: $83
    adc l                                         ; $5d0a: $8d
    ld [hl], e                                    ; $5d0b: $73
    sub $fa                                       ; $5d0c: $d6 $fa
    cpl                                           ; $5d0e: $2f
    nop                                           ; $5d0f: $00
    inc e                                         ; $5d10: $1c
    ld h, a                                       ; $5d11: $67
    ld l, l                                       ; $5d12: $6d
    db $fd                                        ; $5d13: $fd
    rst $10                                       ; $5d14: $d7
    cp l                                          ; $5d15: $bd
    dec [hl]                                      ; $5d16: $35
    ld c, d                                       ; $5d17: $4a
    ret c                                         ; $5d18: $d8

    or $66                                        ; $5d19: $f6 $66
    ld e, a                                       ; $5d1b: $5f
    xor e                                         ; $5d1c: $ab
    add hl, de                                    ; $5d1d: $19
    rst $20                                       ; $5d1e: $e7
    and b                                         ; $5d1f: $a0
    ld a, [$3057]                                 ; $5d20: $fa $57 $30
    or $6f                                        ; $5d23: $f6 $6f
    add hl, hl                                    ; $5d25: $29
    ld a, a                                       ; $5d26: $7f
    db $eb                                        ; $5d27: $eb
    rst $38                                       ; $5d28: $ff
    db $fc                                        ; $5d29: $fc
    rst $38                                       ; $5d2a: $ff
    ld [de], a                                    ; $5d2b: $12
    rst $38                                       ; $5d2c: $ff
    xor b                                         ; $5d2d: $a8
    ld e, [hl]                                    ; $5d2e: $5e
    db $db                                        ; $5d2f: $db
    ld [de], a                                    ; $5d30: $12
    ld e, $ac                                     ; $5d31: $1e $ac
    sub l                                         ; $5d33: $95
    rst $38                                       ; $5d34: $ff
    rlca                                          ; $5d35: $07
    add $52                                       ; $5d36: $c6 $52
    sbc d                                         ; $5d38: $9a
    ld [hl], c                                    ; $5d39: $71
    ld b, c                                       ; $5d3a: $41
    or d                                          ; $5d3b: $b2
    ld [hl], e                                    ; $5d3c: $73
    sub $e2                                       ; $5d3d: $d6 $e2
    cp [hl]                                       ; $5d3f: $be
    ld l, c                                       ; $5d40: $69
    jp c, $005e                                   ; $5d41: $da $5e $00

    cp h                                          ; $5d44: $bc
    db $eb                                        ; $5d45: $eb
    db $db                                        ; $5d46: $db
    sbc d                                         ; $5d47: $9a
    sub c                                         ; $5d48: $91
    ldh a, [$c4]                                  ; $5d49: $f0 $c4
    cp l                                          ; $5d4b: $bd
    dec d                                         ; $5d4c: $15
    and l                                         ; $5d4d: $a5
    ld e, b                                       ; $5d4e: $58
    pop hl                                        ; $5d4f: $e1
    add hl, bc                                    ; $5d50: $09
    push de                                       ; $5d51: $d5
    ld l, [hl]                                    ; $5d52: $6e
    ld l, c                                       ; $5d53: $69
    ld c, $06                                     ; $5d54: $0e $06
    rst $38                                       ; $5d56: $ff
    ld l, e                                       ; $5d57: $6b
    adc [hl]                                      ; $5d58: $8e
    dec l                                         ; $5d59: $2d
    push hl                                       ; $5d5a: $e5
    cp b                                          ; $5d5b: $b8
    or [hl]                                       ; $5d5c: $b6
    ld a, [hl-]                                   ; $5d5d: $3a
    ld h, e                                       ; $5d5e: $63
    sbc h                                         ; $5d5f: $9c
    di                                            ; $5d60: $f3
    rla                                           ; $5d61: $17
    nop                                           ; $5d62: $00
    inc e                                         ; $5d63: $1c
    daa                                           ; $5d64: $27
    ld c, d                                       ; $5d65: $4a
    ld e, c                                       ; $5d66: $59
    jp c, $36b1                                   ; $5d67: $da $b1 $36

    ld b, a                                       ; $5d6a: $47
    push de                                       ; $5d6b: $d5
    sub a                                         ; $5d6c: $97
    ld a, d                                       ; $5d6d: $7a
    call z, $b3f5                                 ; $5d6e: $cc $f5 $b3
    sub e                                         ; $5d71: $93
    sub e                                         ; $5d72: $93
    ld e, l                                       ; $5d73: $5d
    nop                                           ; $5d74: $00
    db $fc                                        ; $5d75: $fc
    and e                                         ; $5d76: $a3

jr_05e_5d77:
    ld a, [hl+]                                   ; $5d77: $2a
    ld c, d                                       ; $5d78: $4a
    db $db                                        ; $5d79: $db
    ld d, $b5                                     ; $5d7a: $16 $b5
    ld h, d                                       ; $5d7c: $62
    cp e                                          ; $5d7d: $bb
    cp [hl]                                       ; $5d7e: $be

Call_05e_5d7f:
    ccf                                           ; $5d7f: $3f
    ld a, [c]                                     ; $5d80: $f2
    ld e, a                                       ; $5d81: $5f
    adc e                                         ; $5d82: $8b
    ld l, c                                       ; $5d83: $69
    ld a, e                                       ; $5d84: $7b
    ld bc, $5b7c                                  ; $5d85: $01 $7c $5b
    and e                                         ; $5d88: $a3
    add l                                         ; $5d89: $85
    and l                                         ; $5d8a: $a5
    ei                                            ; $5d8b: $fb
    rst $38                                       ; $5d8c: $ff
    ld a, h                                       ; $5d8d: $7c
    rst $30                                       ; $5d8e: $f7
    ret nc                                        ; $5d8f: $d0

    db $fd                                        ; $5d90: $fd
    ld l, e                                       ; $5d91: $6b
    ld [hl], c                                    ; $5d92: $71
    ld a, a                                       ; $5d93: $7f
    ret                                           ; $5d94: $c9


    daa                                           ; $5d95: $27
    ld a, [hl-]                                   ; $5d96: $3a
    daa                                           ; $5d97: $27
    sub d                                         ; $5d98: $92
    add d                                         ; $5d99: $82
    ld e, a                                       ; $5d9a: $5f
    jr nc, jr_05e_5d77                            ; $5d9b: $30 $da

    inc e                                         ; $5d9d: $1c
    ld h, $0b                                     ; $5d9e: $26 $0b
    dec [hl]                                      ; $5da0: $35
    rst $10                                       ; $5da1: $d7
    sbc h                                         ; $5da2: $9c
    cp e                                          ; $5da3: $bb
    cp d                                          ; $5da4: $ba
    or a                                          ; $5da5: $b7
    add $cb                                       ; $5da6: $c6 $cb
    ld [c], a                                     ; $5da8: $e2
    ld c, h                                       ; $5da9: $4c
    and d                                         ; $5daa: $a2
    cp d                                          ; $5dab: $ba
    nop                                           ; $5dac: $00
    ld l, [hl]                                    ; $5dad: $6e
    rra                                           ; $5dae: $1f
    call c, $d2de                                 ; $5daf: $dc $de $d2
    ld h, b                                       ; $5db2: $60
    ld e, a                                       ; $5db3: $5f
    xor e                                         ; $5db4: $ab
    inc sp                                        ; $5db5: $33
    or b                                          ; $5db6: $b0
    ld a, [bc]                                    ; $5db7: $0a
    and a                                         ; $5db8: $a7
    ld b, l                                       ; $5db9: $45
    ld a, l                                       ; $5dba: $7d
    ld d, d                                       ; $5dbb: $52
    rst $30                                       ; $5dbc: $f7
    add sp, $7e                                   ; $5dbd: $e8 $7e
    ld [hl], l                                    ; $5dbf: $75
    ld l, h                                       ; $5dc0: $6c
    ld l, c                                       ; $5dc1: $69
    ld h, d                                       ; $5dc2: $62
    cp $d6                                        ; $5dc3: $fe $d6
    xor e                                         ; $5dc5: $ab
    and $da                                       ; $5dc6: $e6 $da
    ld h, $cd                                     ; $5dc8: $26 $cd
    ld c, b                                       ; $5dca: $48
    or a                                          ; $5dcb: $b7
    sbc e                                         ; $5dcc: $9b
    ld l, b                                       ; $5dcd: $68
    ld e, d                                       ; $5dce: $5a
    call nc, $db6a                                ; $5dcf: $d4 $6a $db
    add d                                         ; $5dd2: $82
    ld l, d                                       ; $5dd3: $6a
    cpl                                           ; $5dd4: $2f
    nop                                           ; $5dd5: $00
    cp h                                          ; $5dd6: $bc
    cp a                                          ; $5dd7: $bf
    ld [hl], e                                    ; $5dd8: $73
    xor [hl]                                      ; $5dd9: $ae
    xor $81                                       ; $5dda: $ee $81

jr_05e_5ddc:
    adc l                                         ; $5ddc: $8d
    ld [hl], e                                    ; $5ddd: $73
    db $e4                                        ; $5dde: $e4
    rst $18                                       ; $5ddf: $df
    adc d                                         ; $5de0: $8a
    call $e5a9                                    ; $5de1: $cd $a9 $e5
    inc de                                        ; $5de4: $13
    ld e, c                                       ; $5de5: $59
    ld c, h                                       ; $5de6: $4c
    and d                                         ; $5de7: $a2
    sub d                                         ; $5de8: $92
    sbc a                                         ; $5de9: $9f
    ld e, c                                       ; $5dea: $59
    sub [hl]                                      ; $5deb: $96
    sub e                                         ; $5dec: $93
    push af                                       ; $5ded: $f5

jr_05e_5dee:
    xor d                                         ; $5dee: $aa
    jr z, jr_05e_5ddc                             ; $5def: $28 $eb

    dec a                                         ; $5df1: $3d
    daa                                           ; $5df2: $27
    ld l, $00                                     ; $5df3: $2e $00
    sbc [hl]                                      ; $5df5: $9e
    cp $df                                        ; $5df6: $fe $df
    ld e, e                                       ; $5df8: $5b
    dec hl                                        ; $5df9: $2b
    inc l                                         ; $5dfa: $2c
    ld sp, hl                                     ; $5dfb: $f9
    rst $08                                       ; $5dfc: $cf
    sbc $e4                                       ; $5dfd: $de $e4
    rrca                                          ; $5dff: $0f
    inc a                                         ; $5e00: $3c
    ld d, c                                       ; $5e01: $51
    sbc e                                         ; $5e02: $9b
    ld d, h                                       ; $5e03: $54
    cp $ab                                        ; $5e04: $fe $ab
    ld a, e                                       ; $5e06: $7b
    sbc e                                         ; $5e07: $9b
    call nc, $9cd9                                ; $5e08: $d4 $d9 $9c
    ld b, h                                       ; $5e0b: $44
    dec c                                         ; $5e0c: $0d
    dec b                                         ; $5e0d: $05
    nop                                           ; $5e0e: $00
    ld e, $a1                                     ; $5e0f: $1e $a1
    call $9a61                                    ; $5e11: $cd $61 $9a
    cp a                                          ; $5e14: $bf
    cp $7f                                        ; $5e15: $fe $7f
    xor c                                         ; $5e17: $a9
    ld a, a                                       ; $5e18: $7f
    cp $da                                        ; $5e19: $fe $da
    sub [hl]                                      ; $5e1b: $96
    ld l, h                                       ; $5e1c: $6c
    scf                                           ; $5e1d: $37
    adc l                                         ; $5e1e: $8d
    ld d, d                                       ; $5e1f: $52
    ld [hl], $6d                                  ; $5e20: $36 $6d
    ld l, e                                       ; $5e22: $6b
    ld b, $eb                                     ; $5e23: $06 $eb
    ld e, a                                       ; $5e25: $5f
    adc e                                         ; $5e26: $8b
    jr z, jr_05e_5dee                             ; $5e27: $28 $c5

    and c                                         ; $5e29: $a1
    sbc e                                         ; $5e2a: $9b
    xor b                                         ; $5e2b: $a8
    sub d                                         ; $5e2c: $92
    sbc d                                         ; $5e2d: $9a
    and e                                         ; $5e2e: $a3
    add h                                         ; $5e2f: $84
    ld h, a                                       ; $5e30: $67
    ld c, e                                       ; $5e31: $4b
    ld a, [hl]                                    ; $5e32: $7e
    sbc h                                         ; $5e33: $9c
    add hl, sp                                    ; $5e34: $39
    ld c, c                                       ; $5e35: $49
    jp hl                                         ; $5e36: $e9


    xor $59                                       ; $5e37: $ee $59
    ld a, a                                       ; $5e39: $7f
    sub a                                         ; $5e3a: $97
    dec c                                         ; $5e3b: $0d
    db $eb                                        ; $5e3c: $eb
    ld h, c                                       ; $5e3d: $61
    rla                                           ; $5e3e: $17
    nop                                           ; $5e3f: $00
    ld e, [hl]                                    ; $5e40: $5e
    or c                                          ; $5e41: $b1
    ld l, l                                       ; $5e42: $6d
    ld a, [hl+]                                   ; $5e43: $2a
    ld sp, hl                                     ; $5e44: $f9
    ld b, h                                       ; $5e45: $44
    sub $a4                                       ; $5e46: $d6 $a4
    adc c                                         ; $5e48: $89
    ld [hl], $a3                                  ; $5e49: $36 $a3
    rst $00                                       ; $5e4b: $c7
    or h                                          ; $5e4c: $b4
    db $dd                                        ; $5e4d: $dd
    sub d                                         ; $5e4e: $92
    xor l                                         ; $5e4f: $ad
    pop de                                        ; $5e50: $d1
    ld e, d                                       ; $5e51: $5a
    sub h                                         ; $5e52: $94
    ld a, [c]                                     ; $5e53: $f2
    or b                                          ; $5e54: $b0
    call Call_05e_6d89                            ; $5e55: $cd $89 $6d
    xor l                                         ; $5e58: $ad
    and $97                                       ; $5e59: $e6 $97
    reti                                          ; $5e5b: $d9


    ld e, a                                       ; $5e5c: $5f
    nop                                           ; $5e5d: $00
    inc e                                         ; $5e5e: $1c
    daa                                           ; $5e5f: $27
    ld c, d                                       ; $5e60: $4a
    sub c                                         ; $5e61: $91
    ld c, [hl]                                    ; $5e62: $4e
    ld d, d                                       ; $5e63: $52
    cp $5b                                        ; $5e64: $fe $5b
    ld a, [c]                                     ; $5e66: $f2
    db $e3                                        ; $5e67: $e3
    call z, $ba49                                 ; $5e68: $cc $49 $ba
    rlca                                          ; $5e6b: $07
    ld [hl], $ce                                  ; $5e6c: $36 $ce
    sub c                                         ; $5e6e: $91
    ld a, a                                       ; $5e6f: $7f
    ld d, d                                       ; $5e70: $52
    rst $30                                       ; $5e71: $f7
    add sp, $7e                                   ; $5e72: $e8 $7e
    pop bc                                        ; $5e74: $c1
    ld l, b                                       ; $5e75: $68
    ld l, d                                       ; $5e76: $6a
    db $ec                                        ; $5e77: $ec

jr_05e_5e78:
    ld a, [hl]                                    ; $5e78: $7e
    ld sp, hl                                     ; $5e79: $f9
    inc hl                                        ; $5e7a: $23
    dec e                                         ; $5e7b: $1d
    db $fd                                        ; $5e7c: $fd
    ld e, a                                       ; $5e7d: $5f
    ld c, c                                       ; $5e7e: $49
    dec d                                         ; $5e7f: $15
    ld h, l                                       ; $5e80: $65
    ld c, l                                       ; $5e81: $4d
    dec h                                         ; $5e82: $25
    rst $38                                       ; $5e83: $ff
    ld e, c                                       ; $5e84: $59
    call c, $9ff7                                 ; $5e85: $dc $f7 $9f
    ld a, [hl]                                    ; $5e88: $7e
    call $a5b1                                    ; $5e89: $cd $b1 $a5
    sub h                                         ; $5e8c: $94
    ld a, [hl+]                                   ; $5e8d: $2a
    add hl, hl                                    ; $5e8e: $29
    jr jr_05e_5e78                                ; $5e8f: $18 $e7

    dec bc                                        ; $5e91: $0b
    rst $08                                       ; $5e92: $cf
    ld [$73fe], a                                 ; $5e93: $ea $fe $73
    or [hl]                                       ; $5e96: $b6
    cp [hl]                                       ; $5e97: $be
    or $02                                        ; $5e98: $f6 $02
    inc e                                         ; $5e9a: $1c

jr_05e_5e9b:
    ld h, a                                       ; $5e9b: $67
    ld c, e                                       ; $5e9c: $4b
    inc sp                                        ; $5e9d: $33
    jr jr_05e_5e9b                                ; $5e9e: $18 $fb

    jp nc, $e63d                                  ; $5ea0: $d2 $3d $e6

    rst $10                                       ; $5ea3: $d7
    ld l, e                                       ; $5ea4: $6b
    ld l, [hl]                                    ; $5ea5: $6e
    or b                                          ; $5ea6: $b0
    and [hl]                                      ; $5ea7: $a6
    sbc h                                         ; $5ea8: $9c
    call z, Call_05e_4548                         ; $5ea9: $cc $48 $45
    ld e, c                                       ; $5eac: $59
    ld [hl], a                                    ; $5ead: $77
    sbc h                                         ; $5eae: $9c
    call z, $2e8c                                 ; $5eaf: $cc $8c $2e
    add hl, sp                                    ; $5eb2: $39
    inc h                                         ; $5eb3: $24
    xor d                                         ; $5eb4: $aa
    dec d                                         ; $5eb5: $15
    sbc [hl]                                      ; $5eb6: $9e
    sub l                                         ; $5eb7: $95
    sbc a                                         ; $5eb8: $9f
    ld [hl], c                                    ; $5eb9: $71
    ld sp, $873a                                  ; $5eba: $31 $3a $87
    ld [hl], h                                    ; $5ebd: $74
    ld h, e                                       ; $5ebe: $63
    push af                                       ; $5ebf: $f5
    dec hl                                        ; $5ec0: $2b
    rst $18                                       ; $5ec1: $df
    sbc l                                         ; $5ec2: $9d
    inc de                                        ; $5ec3: $13
    rst $38                                       ; $5ec4: $ff
    ld [bc], a                                    ; $5ec5: $02
    cp h                                          ; $5ec6: $bc
    sbc e                                         ; $5ec7: $9b
    cp a                                          ; $5ec8: $bf
    adc d                                         ; $5ec9: $8a
    ld d, d                                       ; $5eca: $52
    ld [$b6c9], sp                                ; $5ecb: $08 $c9 $b6
    add $5f                                       ; $5ece: $c6 $5f
    ld [c], a                                     ; $5ed0: $e2
    daa                                           ; $5ed1: $27
    ld a, [hl-]                                   ; $5ed2: $3a
    add a                                         ; $5ed3: $87
    inc d                                         ; $5ed4: $14
    xor e                                         ; $5ed5: $ab
    ld c, c                                       ; $5ed6: $49
    sbc c                                         ; $5ed7: $99
    ld a, [c]                                     ; $5ed8: $f2
    dec c                                         ; $5ed9: $0d
    or $db                                        ; $5eda: $f6 $db
    xor a                                         ; $5edc: $af
    adc c                                         ; $5edd: $89
    ld sp, hl                                     ; $5ede: $f9
    sub $fc                                       ; $5edf: $d6 $fc
    cpl                                           ; $5ee1: $2f
    dec c                                         ; $5ee2: $0d
    adc e                                         ; $5ee3: $8b
    xor l                                         ; $5ee4: $ad
    dec bc                                        ; $5ee5: $0b
    nop                                           ; $5ee6: $00
    ld c, $28                                     ; $5ee7: $0e $28
    ld l, e                                       ; $5ee9: $6b
    xor d                                         ; $5eea: $aa
    ret                                           ; $5eeb: $c9


    and l                                         ; $5eec: $a5

Jump_05e_5eed:
    or e                                          ; $5eed: $b3
    jp hl                                         ; $5eee: $e9


    rst $20                                       ; $5eef: $e7
    ld a, a                                       ; $5ef0: $7f
    ld a, [$b455]                                 ; $5ef1: $fa $55 $b4
    ld h, [hl]                                    ; $5ef4: $66
    inc h                                         ; $5ef5: $24
    or $7f                                        ; $5ef6: $f6 $7f
    rst $00                                       ; $5ef8: $c7
    sbc d                                         ; $5ef9: $9a
    dec a                                         ; $5efa: $3d
    inc d                                         ; $5efb: $14
    nop                                           ; $5efc: $00
    ld e, $4e                                     ; $5efd: $1e $4e
    jp z, Jump_000_3349                           ; $5eff: $ca $49 $33

    dec sp                                        ; $5f02: $3b
    add a                                         ; $5f03: $87
    sub h                                         ; $5f04: $94
    ld d, d                                       ; $5f05: $52
    cp [hl]                                       ; $5f06: $be
    or [hl]                                       ; $5f07: $b6
    dec l                                         ; $5f08: $2d
    ccf                                           ; $5f09: $3f
    adc $d6                                       ; $5f0a: $ce $d6
    dec h                                         ; $5f0c: $25
    xor a                                         ; $5f0d: $af
    ret c                                         ; $5f0e: $d8

    ld [hl], $69                                  ; $5f0f: $36 $69
    inc c                                         ; $5f11: $0c
    ld c, b                                       ; $5f12: $48
    ld e, b                                       ; $5f13: $58
    rst $38                                       ; $5f14: $ff
    rst $10                                       ; $5f15: $d7
    dec b                                         ; $5f16: $05
    nop                                           ; $5f17: $00
    inc a                                         ; $5f18: $3c
    ld e, c                                       ; $5f19: $59
    ld c, [hl]                                    ; $5f1a: $4e
    jp z, Jump_05e_76d8                           ; $5f1b: $ca $d8 $76

    ld h, [hl]                                    ; $5f1e: $66
    sub a                                         ; $5f1f: $97
    ld a, b                                       ; $5f20: $78
    ld [hl], c                                    ; $5f21: $71
    add $9e                                       ; $5f22: $c6 $9e
    ld d, b                                       ; $5f24: $50
    db $e3                                        ; $5f25: $e3
    ld e, h                                       ; $5f26: $5c
    adc l                                         ; $5f27: $8d
    ld bc, $eb09                                  ; $5f28: $01 $09 $eb
    rst $38                                       ; $5f2b: $ff
    cp d                                          ; $5f2c: $ba
    nop                                           ; $5f2d: $00
    db $fc                                        ; $5f2e: $fc
    ld [hl], h                                    ; $5f2f: $74
    ld c, $69                                     ; $5f30: $0e $69
    ld b, $eb                                     ; $5f32: $06 $eb
    ld a, a                                       ; $5f34: $7f
    push bc                                       ; $5f35: $c5
    ld a, [bc]                                    ; $5f36: $0a
    xor e                                         ; $5f37: $ab
    sub $fa                                       ; $5f38: $d6 $fa
    ld l, e                                       ; $5f3a: $6b
    ld [hl], h                                    ; $5f3b: $74
    ld d, d                                       ; $5f3c: $52
    rst $30                                       ; $5f3d: $f7
    add sp, $7e                                   ; $5f3e: $e8 $7e
    pop de                                        ; $5f40: $d1
    ld hl, $819d                                  ; $5f41: $21 $9d $81
    ld sp, hl                                     ; $5f44: $f9
    add sp, -$41                                  ; $5f45: $e8 $bf
    nop                                           ; $5f47: $00
    sbc [hl]                                      ; $5f48: $9e
    ccf                                           ; $5f49: $3f
    or e                                          ; $5f4a: $b3
    dec l                                         ; $5f4b: $2d
    dec b                                         ; $5f4c: $05
    db $db                                        ; $5f4d: $db
    adc $d6                                       ; $5f4e: $ce $d6
    adc $7f                                       ; $5f50: $ce $7f
    adc a                                         ; $5f52: $8f
    or l                                          ; $5f53: $b5
    jr z, jr_05e_5f9b                             ; $5f54: $28 $45

    reti                                          ; $5f56: $d9


    sbc $37                                       ; $5f57: $de $37
    xor l                                         ; $5f59: $ad
    ld b, l                                       ; $5f5a: $45
    add hl, hl                                    ; $5f5b: $29
    rra                                           ; $5f5c: $1f
    ret c                                         ; $5f5d: $d8

    ld h, c                                       ; $5f5e: $61

jr_05e_5f5f:
    xor e                                         ; $5f5f: $ab
    add hl, sp                                    ; $5f60: $39
    xor d                                         ; $5f61: $aa
    or $a7                                        ; $5f62: $f6 $a7
    xor l                                         ; $5f64: $ad
    db $ec                                        ; $5f65: $ec
    cp a                                          ; $5f66: $bf
    ld [hl], l                                    ; $5f67: $75
    ld h, a                                       ; $5f68: $67
    ld e, h                                       ; $5f69: $5c
    and [hl]                                      ; $5f6a: $a6
    ld h, b                                       ; $5f6b: $60
    db $db                                        ; $5f6c: $db
    reti                                          ; $5f6d: $d9


    jp c, $eff9                                   ; $5f6e: $da $f9 $ef

    or c                                          ; $5f71: $b1
    ld d, $25                                     ; $5f72: $16 $25
    rst $38                                       ; $5f74: $ff
    rst $08                                       ; $5f75: $cf
    call c, Call_000_2c2a                         ; $5f76: $dc $2a $2c
    scf                                           ; $5f79: $37
    call nz, $c63b                                ; $5f7a: $c4 $3b $c6
    add hl, de                                    ; $5f7d: $19
    ld l, e                                       ; $5f7e: $6b
    ei                                            ; $5f7f: $fb
    ld a, [hl+]                                   ; $5f80: $2a
    call c, $17de                                 ; $5f81: $dc $de $17
    db $fc                                        ; $5f84: $fc
    jp z, $a4e3                                   ; $5f85: $ca $e3 $a4

    ld [$9cbf], sp                                ; $5f88: $08 $bf $9c
    sbc c                                         ; $5f8b: $99
    ret z                                         ; $5f8c: $c8

    ld a, d                                       ; $5f8d: $7a
    dec hl                                        ; $5f8e: $2b
    add hl, hl                                    ; $5f8f: $29
    jr jr_05e_5f5f                                ; $5f90: $18 $cd

    ld e, [hl]                                    ; $5f92: $5e
    ld e, b                                       ; $5f93: $58
    rst $10                                       ; $5f94: $d7
    ld [hl], l                                    ; $5f95: $75
    adc c                                         ; $5f96: $89
    rst $20                                       ; $5f97: $e7
    add hl, de                                    ; $5f98: $19
    set 4, h                                      ; $5f99: $cb $e4

jr_05e_5f9b:
    db $10                                        ; $5f9b: $10
    cp e                                          ; $5f9c: $bb
    add e                                         ; $5f9d: $83
    ld [hl], c                                    ; $5f9e: $71
    adc e                                         ; $5f9f: $8b
    and e                                         ; $5fa0: $a3
    ld a, [hl+]                                   ; $5fa1: $2a
    and [hl]                                      ; $5fa2: $a6
    xor l                                         ; $5fa3: $ad
    ldh a, [$4c]                                  ; $5fa4: $f0 $4c
    call nz, Call_000_06e2                        ; $5fa6: $c4 $e2 $06
    sbc h                                         ; $5fa9: $9c
    and c                                         ; $5faa: $a1
    cp c                                          ; $5fab: $b9
    inc c                                         ; $5fac: $0c
    ld a, [hl]                                    ; $5fad: $7e
    push bc                                       ; $5fae: $c5
    xor d                                         ; $5faf: $aa
    ld l, b                                       ; $5fb0: $68
    ld [hl], d                                    ; $5fb1: $72
    pop bc                                        ; $5fb2: $c1
    ld b, h                                       ; $5fb3: $44
    dec h                                         ; $5fb4: $25
    inc a                                         ; $5fb5: $3c
    and c                                         ; $5fb6: $a1
    ld a, e                                       ; $5fb7: $7b
    sbc e                                         ; $5fb8: $9b
    xor b                                         ; $5fb9: $a8
    inc [hl]                                      ; $5fba: $34
    inc hl                                        ; $5fbb: $23
    rst $08                                       ; $5fbc: $cf
    cp d                                          ; $5fbd: $ba
    ld c, c                                       ; $5fbe: $49
    ld h, a                                       ; $5fbf: $67
    call z, $d7b8                                 ; $5fc0: $cc $b8 $d7
    ld a, [$792f]                                 ; $5fc3: $fa $2f $79
    push bc                                       ; $5fc6: $c5
    or [hl]                                       ; $5fc7: $b6
    ld c, c                                       ; $5fc8: $49
    ld h, e                                       ; $5fc9: $63
    ld b, b                                       ; $5fca: $40
    jp nz, $bffa                                  ; $5fcb: $c2 $fa $bf

    sub d                                         ; $5fce: $92
    ld [c], a                                     ; $5fcf: $e2
    ld a, c                                       ; $5fd0: $79
    add $b2                                       ; $5fd1: $c6 $b2
    dec bc                                        ; $5fd3: $0b
    nop                                           ; $5fd4: $00
    db $fc                                        ; $5fd5: $fc
    inc bc                                        ; $5fd6: $03
    rst $08                                       ; $5fd7: $cf
    ld a, [hl+]                                   ; $5fd8: $2a
    ld d, [hl]                                    ; $5fd9: $56
    sub l                                         ; $5fda: $95
    or l                                          ; $5fdb: $b5
    ld a, [$c6d3]                                 ; $5fdc: $fa $d3 $c6
    ld a, [de]                                    ; $5fdf: $1a
    xor l                                         ; $5fe0: $ad
    adc c                                         ; $5fe1: $89
    add hl, hl                                    ; $5fe2: $29
    or $5f                                        ; $5fe3: $f6 $5f
    ld a, [c]                                     ; $5fe5: $f2
    adc d                                         ; $5fe6: $8a
    ld l, l                                       ; $5fe7: $6d
    sub e                                         ; $5fe8: $93
    add $80                                       ; $5fe9: $c6 $80
    add h                                         ; $5feb: $84
    push af                                       ; $5fec: $f5
    ld a, a                                       ; $5fed: $7f
    dec h                                         ; $5fee: $25
    push bc                                       ; $5fef: $c5
    di                                            ; $5ff0: $f3
    adc h                                         ; $5ff1: $8c
    ld h, l                                       ; $5ff2: $65
    rla                                           ; $5ff3: $17
    nop                                           ; $5ff4: $00
    sbc h                                         ; $5ff5: $9c
    inc bc                                        ; $5ff6: $03
    rst $08                                       ; $5ff7: $cf
    ld e, $f8                                     ; $5ff8: $1e $f8
    rra                                           ; $5ffa: $1f
    nop                                           ; $5ffb: $00
    cp h                                          ; $5ffc: $bc

Call_05e_5ffd:
    ld h, e                                       ; $5ffd: $63
    di                                            ; $5ffe: $f3
    rst $28                                       ; $5fff: $ef
    ld e, $f0                                     ; $6000: $1e $f0
    xor e                                         ; $6002: $ab
    ld [hl], b                                    ; $6003: $70
    ld c, [hl]                                    ; $6004: $4e
    or h                                          ; $6005: $b4
    ld a, l                                       ; $6006: $7d
    nop                                           ; $6007: $00
    ld a, h                                       ; $6008: $7c
    inc [hl]                                      ; $6009: $34
    rst $30                                       ; $600a: $f7
    adc [hl]                                      ; $600b: $8e
    ld h, l                                       ; $600c: $65
    ld a, a                                       ; $600d: $7f
    rst $28                                       ; $600e: $ef
    inc bc                                        ; $600f: $03
    cp h                                          ; $6010: $bc
    cp b                                          ; $6011: $b8
    ld l, h                                       ; $6012: $6c
    ld h, b                                       ; $6013: $60
    adc d                                         ; $6014: $8a
    rrca                                          ; $6015: $0f
    nop                                           ; $6016: $00
    ld l, [hl]                                    ; $6017: $6e
    rra                                           ; $6018: $1f
    ld [hl], $46                                  ; $6019: $36 $46
    db $fd                                        ; $601b: $fd
    inc bc                                        ; $601c: $03
    ld l, [hl]                                    ; $601d: $6e
    ld c, a                                       ; $601e: $4f
    xor h                                         ; $601f: $ac
    sbc l                                         ; $6020: $9d
    db $e3                                        ; $6021: $e3
    ld b, $3c                                     ; $6022: $06 $3c
    or c                                          ; $6024: $b1
    ld c, c                                       ; $6025: $49
    pop af                                        ; $6026: $f1
    inc a                                         ; $6027: $3c
    ld h, e                                       ; $6028: $63
    ld e, c                                       ; $6029: $59
    ld [de], a                                    ; $602a: $12
    nop                                           ; $602b: $00
    ld a, h                                       ; $602c: $7c
    db $db                                        ; $602d: $db
    and h                                         ; $602e: $a4
    add hl, sp                                    ; $602f: $39
    add $19                                       ; $6030: $c6 $19
    inc hl                                        ; $6032: $23
    add hl, hl                                    ; $6033: $29
    sbc [hl]                                      ; $6034: $9e
    ld h, a                                       ; $6035: $67
    inc l                                         ; $6036: $2c
    add e                                         ; $6037: $83
    ld [bc], a                                    ; $6038: $02
    cp h                                          ; $6039: $bc
    sbc e                                         ; $603a: $9b
    cp a                                          ; $603b: $bf
    adc d                                         ; $603c: $8a
    ld d, d                                       ; $603d: $52
    ld [$c525], sp                                ; $603e: $08 $25 $c5
    di                                            ; $6041: $f3
    adc h                                         ; $6042: $8c
    ld h, l                                       ; $6043: $65
    rla                                           ; $6044: $17
    nop                                           ; $6045: $00
    inc a                                         ; $6046: $3c
    or c                                          ; $6047: $b1
    add d                                         ; $6048: $82
    ld e, a                                       ; $6049: $5f
    scf                                           ; $604a: $37
    xor $05                                       ; $604b: $ee $05
    nop                                           ; $604d: $00
    db $fc                                        ; $604e: $fc
    pop bc                                        ; $604f: $c1
    ld a, [c]                                     ; $6050: $f2
    ld c, b                                       ; $6051: $48
    adc d                                         ; $6052: $8a
    rst $20                                       ; $6053: $e7
    add hl, de                                    ; $6054: $19
    sra [hl]                                      ; $6055: $cb $2e
    nop                                           ; $6057: $00
    db $fc                                        ; $6058: $fc
    pop bc                                        ; $6059: $c1
    ld a, [c]                                     ; $605a: $f2
    ld c, b                                       ; $605b: $48
    ld hl, $2599                                  ; $605c: $21 $99 $25
    push bc                                       ; $605f: $c5
    di                                            ; $6060: $f3
    adc h                                         ; $6061: $8c
    ld h, l                                       ; $6062: $65
    rla                                           ; $6063: $17
    nop                                           ; $6064: $00
    cp h                                          ; $6065: $bc
    ld h, e                                       ; $6066: $63
    ld l, e                                       ; $6067: $6b
    cp [hl]                                       ; $6068: $be
    ld l, c                                       ; $6069: $69
    adc [hl]                                      ; $606a: $8e
    inc sp                                        ; $606b: $33
    inc hl                                        ; $606c: $23
    sub d                                         ; $606d: $92
    ld [c], a                                     ; $606e: $e2
    ld a, c                                       ; $606f: $79
    add $32                                       ; $6070: $c6 $32
    jr z, jr_05e_6074                             ; $6072: $28 $00

jr_05e_6074:
    ld a, h                                       ; $6074: $7c
    ld h, e                                       ; $6075: $63
    ld a, [hl]                                    ; $6076: $7e
    cp $6a                                        ; $6077: $fe $6a
    ld l, $76                                     ; $6079: $2e $76
    ld d, e                                       ; $607b: $53
    ld d, e                                       ; $607c: $53
    ld d, d                                       ; $607d: $52
    inc a                                         ; $607e: $3c
    rst $08                                       ; $607f: $cf
    ld e, b                                       ; $6080: $58
    halt                                          ; $6081: $76
    ld bc, $44fc                                  ; $6082: $01 $fc $44
    rst $20                                       ; $6085: $e7
    sub b                                         ; $6086: $90
    or b                                          ; $6087: $b0
    inc [hl]                                      ; $6088: $34
    scf                                           ; $6089: $37
    ld a, a                                       ; $608a: $7f
    call $e071                                    ; $608b: $cd $71 $e0
    or b                                          ; $608e: $b0
    add hl, de                                    ; $608f: $19
    rst $20                                       ; $6090: $e7
    cp h                                          ; $6091: $bc
    or d                                          ; $6092: $b2
    db $db                                        ; $6093: $db
    daa                                           ; $6094: $27
    or [hl]                                       ; $6095: $b6
    ld e, e                                       ; $6096: $5b
    ld b, [hl]                                    ; $6097: $46
    ld c, c                                       ; $6098: $49
    push hl                                       ; $6099: $e5
    cp a                                          ; $609a: $bf
    cp d                                          ; $609b: $ba
    or a                                          ; $609c: $b7
    add hl, bc                                    ; $609d: $09
    ld a, [bc]                                    ; $609e: $0a
    nop                                           ; $609f: $00
    ld c, $28                                     ; $60a0: $0e $28
    ld c, d                                       ; $60a2: $4a
    di                                            ; $60a3: $f3
    ld [hl], a                                    ; $60a4: $77
    ld b, [hl]                                    ; $60a5: $46
    jp hl                                         ; $60a6: $e9


    ld [hl], a                                    ; $60a7: $77
    cp $6b                                        ; $60a8: $fe $6b
    ld d, h                                       ; $60aa: $54
    cp a                                          ; $60ab: $bf
    and $17                                       ; $60ac: $e6 $17
    xor [hl]                                      ; $60ae: $ae
    push af                                       ; $60af: $f5
    ld e, a                                       ; $60b0: $5f
    ld [c], a                                     ; $60b1: $e2
    db $db                                        ; $60b2: $db
    and [hl]                                      ; $60b3: $a6
    sub h                                         ; $60b4: $94
    ld c, d                                       ; $60b5: $4a
    ld d, $ba                                     ; $60b6: $16 $ba
    add e                                         ; $60b8: $83
    call $8b6d                                    ; $60b9: $cd $6d $8b
    add b                                         ; $60bc: $80
    ld [bc], a                                    ; $60bd: $02
    sbc [hl]                                      ; $60be: $9e

jr_05e_60bf:
    cp $48                                        ; $60bf: $fe $48
    rst $38                                       ; $60c1: $ff
    sbc h                                         ; $60c2: $9c
    xor l                                         ; $60c3: $ad
    jr z, jr_05e_60bf                             ; $60c4: $28 $f9

    or h                                          ; $60c6: $b4
    add hl, sp                                    ; $60c7: $39
    dec h                                         ; $60c8: $25
    sub l                                         ; $60c9: $95
    rst $38                                       ; $60ca: $ff
    ld [$26de], a                                 ; $60cb: $ea $de $26
    jr z, jr_05e_60d0                             ; $60ce: $28 $00

jr_05e_60d0:
    ld c, $89                                     ; $60d0: $0e $89
    ld l, h                                       ; $60d2: $6c
    ld l, l                                       ; $60d3: $6d
    ld a, l                                       ; $60d4: $7d
    ld d, d                                       ; $60d5: $52
    rst $38                                       ; $60d6: $ff
    db $fc                                        ; $60d7: $fc
    or l                                          ; $60d8: $b5
    dec l                                         ; $60d9: $2d
    push de                                       ; $60da: $d5
    sbc b                                         ; $60db: $98
    ld [hl], e                                    ; $60dc: $73
    call c, Call_05e_75ff                         ; $60dd: $dc $ff $75
    ld bc, $551c                                  ; $60e0: $01 $1c $55
    ld l, e                                       ; $60e3: $6b
    dec a                                         ; $60e4: $3d
    ld c, d                                       ; $60e5: $4a
    cp a                                          ; $60e6: $bf
    push af                                       ; $60e7: $f5
    adc d                                         ; $60e8: $8a
    ld l, c                                       ; $60e9: $69
    reti                                          ; $60ea: $d9


    ld c, l                                       ; $60eb: $4d
    ld d, h                                       ; $60ec: $54
    ld l, d                                       ; $60ed: $6a

Call_05e_60ee:
    and d                                         ; $60ee: $a2
    ld [hl], e                                    ; $60ef: $73
    add sp, $02                                   ; $60f0: $e8 $02
    ld a, h                                       ; $60f2: $7c
    ld l, e                                       ; $60f3: $6b
    ld b, [hl]                                    ; $60f4: $46
    add hl, hl                                    ; $60f5: $29
    sub l                                         ; $60f6: $95
    ld a, b                                       ; $60f7: $78
    ld a, $21                                     ; $60f8: $3e $21
    or [hl]                                       ; $60fa: $b6

Call_05e_60fb:
    db $10                                        ; $60fb: $10
    ld h, c                                       ; $60fc: $61
    add hl, bc                                    ; $60fd: $09
    rst $08                                       ; $60fe: $cf
    add hl, de                                    ; $60ff: $19
    dec c                                         ; $6100: $0d
    dec b                                         ; $6101: $05
    nop                                           ; $6102: $00
    inc e                                         ; $6103: $1c
    daa                                           ; $6104: $27
    ld a, d                                       ; $6105: $7a
    and d                                         ; $6106: $a2
    adc d                                         ; $6107: $8a
    jp nc, Jump_05e_5aca                          ; $6108: $d2 $ca $5a

    inc a                                         ; $610b: $3c
    sbc a                                         ; $610c: $9f
    db $10                                        ; $610d: $10
    ld e, e                                       ; $610e: $5b
    ret z                                         ; $610f: $c8

    ld a, $94                                     ; $6110: $3e $94
    ld a, b                                       ; $6112: $78
    xor b                                         ; $6113: $a8
    inc d                                         ; $6114: $14
    dec hl                                        ; $6115: $2b
    inc a                                         ; $6116: $3c
    and c                                         ; $6117: $a1
    ld e, $e7                                     ; $6118: $1e $e7
    adc h                                         ; $611a: $8c
    sub $cd                                       ; $611b: $d6 $cd
    dec [hl]                                      ; $611d: $35
    rst $10                                       ; $611e: $d7
    sbc d                                         ; $611f: $9a
    xor b                                         ; $6120: $a8
    sub h                                         ; $6121: $94
    ld d, e                                       ; $6122: $53
    ld c, d                                       ; $6123: $4a
    ld d, h                                       ; $6124: $54
    ld a, [$ff9d]                                 ; $6125: $fa $9d $ff
    ld [hl], l                                    ; $6128: $75
    ld bc, $351c                                  ; $6129: $01 $1c $35
    ld d, c                                       ; $612c: $51
    inc a                                         ; $612d: $3c
    sbc a                                         ; $612e: $9f
    db $10                                        ; $612f: $10
    ld e, e                                       ; $6130: $5b
    adc b                                         ; $6131: $88
    and $fa                                       ; $6132: $e6 $fa
    ld b, c                                       ; $6134: $41
    ld d, b                                       ; $6135: $50
    add d                                         ; $6136: $82
    ld l, $e1                                     ; $6137: $2e $e1
    add hl, bc                                    ; $6139: $09
    dec d                                         ; $613a: $15
    and l                                         ; $613b: $a5
    sub l                                         ; $613c: $95
    or l                                          ; $613d: $b5
    ld d, d                                       ; $613e: $52
    xor d                                         ; $613f: $aa
    ld h, $e5                                     ; $6140: $26 $e5
    sub h                                         ; $6142: $94
    ld [de], a                                    ; $6143: $12
    sub l                                         ; $6144: $95
    ld a, [hl]                                    ; $6145: $7e
    rst $20                                       ; $6146: $e7
    ld a, a                                       ; $6147: $7f
    ld e, l                                       ; $6148: $5d
    nop                                           ; $6149: $00
    inc a                                         ; $614a: $3c
    sbc a                                         ; $614b: $9f
    db $10                                        ; $614c: $10
    ld e, e                                       ; $614d: $5b
    adc b                                         ; $614e: $88
    ld h, d                                       ; $614f: $62
    push af                                       ; $6150: $f5
    ld e, e                                       ; $6151: $5b
    ccf                                           ; $6152: $3f
    rst $38                                       ; $6153: $ff
    ld c, e                                       ; $6154: $4b
    ld a, [hl]                                    ; $6155: $7e
    sbc h                                         ; $6156: $9c
    ld c, c                                       ; $6157: $49
    and h                                         ; $6158: $a4
    ld c, a                                       ; $6159: $4f
    ei                                            ; $615a: $fb
    or a                                          ; $615b: $b7
    ld e, a                                       ; $615c: $5f
    cp $ef                                        ; $615d: $fe $ef
    sbc h                                         ; $615f: $9c
    ld [$25ff], sp                                ; $6160: $08 $ff $25
    ld e, $2a                                     ; $6163: $1e $2a
    ld h, c                                       ; $6165: $61
    add hl, bc                                    ; $6166: $09
    rst $08                                       ; $6167: $cf
    add hl, de                                    ; $6168: $19
    xor l                                         ; $6169: $ad
    ld sp, hl                                     ; $616a: $f9
    dec sp                                        ; $616b: $3b
    and e                                         ; $616c: $a3
    db $f4                                        ; $616d: $f4
    dec sp                                        ; $616e: $3b
    rst $38                                       ; $616f: $ff
    ld [hl], l                                    ; $6170: $75
    ld [hl], e                                    ; $6171: $73
    call Call_000_2335                            ; $6172: $cd $35 $23
    xor d                                         ; $6175: $aa
    dec bc                                        ; $6176: $0b
    nop                                           ; $6177: $00
    inc e                                         ; $6178: $1c
    dec [hl]                                      ; $6179: $35
    ld d, c                                       ; $617a: $51
    inc a                                         ; $617b: $3c
    sbc a                                         ; $617c: $9f
    db $10                                        ; $617d: $10
    ld e, e                                       ; $617e: $5b
    adc b                                         ; $617f: $88
    ld l, [hl]                                    ; $6180: $6e
    ld [hl+], a                                   ; $6181: $22
    ld b, [hl]                                    ; $6182: $46
    db $dd                                        ; $6183: $dd
    sbc c                                         ; $6184: $99
    ld h, $f6                                     ; $6185: $26 $f6
    ld a, $0b                                     ; $6187: $3e $0b
    db $eb                                        ; $6189: $eb
    db $dd                                        ; $618a: $dd
    add d                                         ; $618b: $82
    ld [bc], a                                    ; $618c: $02
    xor [hl]                                      ; $618d: $ae
    cp e                                          ; $618e: $bb
    ld l, $7f                                     ; $618f: $2e $7f
    sbc h                                         ; $6191: $9c
    add e                                         ; $6192: $83
    xor a                                         ; $6193: $af
    inc [hl]                                      ; $6194: $34
    ld a, d                                       ; $6195: $7a
    db $fd                                        ; $6196: $fd
    ld b, [hl]                                    ; $6197: $46
    rst $18                                       ; $6198: $df
    add hl, de                                    ; $6199: $19
    ld a, b                                       ; $619a: $78
    ldh [$fd], a                                  ; $619b: $e0 $fd
    xor a                                         ; $619d: $af
    inc [hl]                                      ; $619e: $34
    dec sp                                        ; $619f: $3b
    daa                                           ; $61a0: $27
    inc sp                                        ; $61a1: $33
    and e                                         ; $61a2: $a3
    and h                                         ; $61a3: $a4
    ld e, h                                       ; $61a4: $5c
    ld [hl], a                                    ; $61a5: $77
    ld e, l                                       ; $61a6: $5d
    cp $38                                        ; $61a7: $fe $38
    rlca                                          ; $61a9: $07
    ld e, a                                       ; $61aa: $5f
    ld l, c                                       ; $61ab: $69
    db $f4                                        ; $61ac: $f4
    ld a, [$be8d]                                 ; $61ad: $fa $8d $be
    inc sp                                        ; $61b0: $33
    ldh a, [$c0]                                  ; $61b1: $f0 $c0
    ei                                            ; $61b3: $fb
    rst $38                                       ; $61b4: $ff
    cp d                                          ; $61b5: $ba
    ld l, $00                                     ; $61b6: $2e $00
    ld a, h                                       ; $61b8: $7c
    ld e, e                                       ; $61b9: $5b
    db $e3                                        ; $61ba: $e3
    sbc h                                         ; $61bb: $9c
    rla                                           ; $61bc: $17
    sub [hl]                                      ; $61bd: $96
    ld l, b                                       ; $61be: $68
    ld a, e                                       ; $61bf: $7b
    ld c, c                                       ; $61c0: $49
    dec sp                                        ; $61c1: $3b
    add hl, hl                                    ; $61c2: $29
    and a                                         ; $61c3: $a7
    dec bc                                        ; $61c4: $0b
    nop                                           ; $61c5: $00
    ld c, $b2                                     ; $61c6: $0e $b2
    sbc c                                         ; $61c8: $99
    ld l, l                                       ; $61c9: $6d
    ld b, l                                       ; $61ca: $45
    xor c                                         ; $61cb: $a9
    inc hl                                        ; $61cc: $23
    ld l, l                                       ; $61cd: $6d
    jp z, Jump_000_0009                           ; $61ce: $ca $09 $00

    inc e                                         ; $61d1: $1c
    cp $b6                                        ; $61d2: $fe $b6
    add $80                                       ; $61d4: $c6 $80
    ld b, h                                       ; $61d6: $44
    jp hl                                         ; $61d7: $e9


    ldh [$b6], a                                  ; $61d8: $e0 $b6
    adc l                                         ; $61da: $8d
    ld [c], a                                     ; $61db: $e2
    ld b, $fc                                     ; $61dc: $06 $fc
    ld a, a                                       ; $61de: $7f
    ld c, [hl]                                    ; $61df: $4e
    ld d, h                                       ; $61e0: $54
    ld b, l                                       ; $61e1: $45
    rst $38                                       ; $61e2: $ff
    sub a                                         ; $61e3: $97
    db $fc                                        ; $61e4: $fc
    jr c, jr_05e_6232                             ; $61e5: $38 $4b

    rst $10                                       ; $61e7: $d7
    ld [hl], l                                    ; $61e8: $75
    ld bc, $e30e                                  ; $61e9: $01 $0e $e3
    xor h                                         ; $61ec: $ac
    ld a, [$89cf]                                 ; $61ed: $fa $cf $89
    xor d                                         ; $61f0: $aa
    add sp, $1e                                   ; $61f1: $e8 $1e
    call c, $d000                                 ; $61f3: $dc $00 $d0
    dec l                                         ; $61f6: $2d
    inc a                                         ; $61f7: $3c
    and c                                         ; $61f8: $a1
    add hl, de                                    ; $61f9: $19
    adc h                                         ; $61fa: $8c
    xor d                                         ; $61fb: $aa
    or d                                          ; $61fc: $b2
    sub $fc                                       ; $61fd: $d6 $fc
    sbc l                                         ; $61ff: $9d
    ld [hl], e                                    ; $6200: $73
    ld e, a                                       ; $6201: $5f
    ld c, l                                       ; $6202: $4d
    add hl, hl                                    ; $6203: $29
    sub l                                         ; $6204: $95
    or d                                          ; $6205: $b2
    inc d                                         ; $6206: $14
    or d                                          ; $6207: $b2
    sub $71                                       ; $6208: $d6 $71
    ld l, [hl]                                    ; $620a: $6e
    and d                                         ; $620b: $a2
    ld d, d                                       ; $620c: $52
    ccf                                           ; $620d: $3f
    res 6, a                                      ; $620e: $cb $b7
    ei                                            ; $6210: $fb
    di                                            ; $6211: $f3
    ld a, l                                       ; $6212: $7d
    push hl                                       ; $6213: $e5
    ld [hl], c                                    ; $6214: $71
    ld d, d                                       ; $6215: $52
    sbc h                                         ; $6216: $9c
    ret z                                         ; $6217: $c8

    cp d                                          ; $6218: $ba
    inc bc                                        ; $6219: $03
    cp $0b                                        ; $621a: $fe $0b
    nop                                           ; $621c: $00
    ld e, $a1                                     ; $621d: $1e $a1
    add hl, hl                                    ; $621f: $29
    db $fd                                        ; $6220: $fd
    inc sp                                        ; $6221: $33
    cp [hl]                                       ; $6222: $be
    dec [hl]                                      ; $6223: $35
    add hl, hl                                    ; $6224: $29
    db $eb                                        ; $6225: $eb
    ld h, $d2                                     ; $6226: $26 $d2
    ld b, h                                       ; $6228: $44
    sub $bd                                       ; $6229: $d6 $bd
    ld e, c                                       ; $622b: $59
    ld a, [bc]                                    ; $622c: $0a
    ld e, c                                       ; $622d: $59
    db $eb                                        ; $622e: $eb
    jr c, jr_05e_6268                             ; $622f: $38 $37

    sub c                                         ; $6231: $91

jr_05e_6232:
    ld a, [$3ad7]                                 ; $6232: $fa $d7 $3a
    adc $30                                       ; $6235: $ce $30
    ei                                            ; $6237: $fb
    and h                                         ; $6238: $a4
    ld a, [c]                                     ; $6239: $f2
    ccf                                           ; $623a: $3f
    db $db                                        ; $623b: $db
    ld d, $72                                     ; $623c: $16 $72
    add d                                         ; $623e: $82
    rla                                           ; $623f: $17
    ld e, c                                       ; $6240: $59
    rst $30                                       ; $6241: $f7
    ld a, [hl-]                                   ; $6242: $3a
    ld [hl], c                                    ; $6243: $71
    ld bc, $2dd0                                  ; $6244: $01 $d0 $2d
    inc a                                         ; $6247: $3c
    and c                                         ; $6248: $a1
    add hl, de                                    ; $6249: $19
    adc h                                         ; $624a: $8c
    xor d                                         ; $624b: $aa
    or d                                          ; $624c: $b2
    sub $fc                                       ; $624d: $d6 $fc
    sbc l                                         ; $624f: $9d
    ld [hl], e                                    ; $6250: $73
    ld e, a                                       ; $6251: $5f
    ld c, l                                       ; $6252: $4d
    add hl, hl                                    ; $6253: $29
    sub l                                         ; $6254: $95
    or d                                          ; $6255: $b2
    inc d                                         ; $6256: $14
    or d                                          ; $6257: $b2
    sub $71                                       ; $6258: $d6 $71
    ld l, [hl]                                    ; $625a: $6e
    and d                                         ; $625b: $a2
    ld d, d                                       ; $625c: $52
    ccf                                           ; $625d: $3f
    res 6, a                                      ; $625e: $cb $b7
    ei                                            ; $6260: $fb
    di                                            ; $6261: $f3
    ld a, l                                       ; $6262: $7d
    push hl                                       ; $6263: $e5
    ld [hl], c                                    ; $6264: $71
    ld d, d                                       ; $6265: $52
    sbc h                                         ; $6266: $9c
    ret z                                         ; $6267: $c8

jr_05e_6268:
    cp d                                          ; $6268: $ba
    inc bc                                        ; $6269: $03
    cp $4b                                        ; $626a: $fe $4b
    ld e, $bd                                     ; $626c: $1e $bd
    ld h, b                                       ; $626e: $60
    inc [hl]                                      ; $626f: $34
    and l                                         ; $6270: $a5
    ld a, a                                       ; $6271: $7f
    add $b7                                       ; $6272: $c6 $b7
    ld h, $65                                     ; $6274: $26 $65
    db $dd                                        ; $6276: $dd
    ld b, h                                       ; $6277: $44
    sbc d                                         ; $6278: $9a
    ret z                                         ; $6279: $c8

    cp d                                          ; $627a: $ba
    scf                                           ; $627b: $37
    ld c, e                                       ; $627c: $4b
    ld hl, $1d6b                                  ; $627d: $21 $6b $1d
    rst $20                                       ; $6280: $e7
    ld h, $52                                     ; $6281: $26 $52
    rst $38                                       ; $6283: $ff
    ld e, d                                       ; $6284: $5a
    rst $00                                       ; $6285: $c7
    add hl, de                                    ; $6286: $19
    ld h, [hl]                                    ; $6287: $66
    sbc a                                         ; $6288: $9f
    sub h                                         ; $6289: $94
    ld l, l                                       ; $628a: $6d
    adc l                                         ; $628b: $8d
    ld [de], a                                    ; $628c: $12
    sub [hl]                                      ; $628d: $96
    ld a, [c]                                     ; $628e: $f2
    ccf                                           ; $628f: $3f
    db $db                                        ; $6290: $db
    db $fd                                        ; $6291: $fd
    ld sp, hl                                     ; $6292: $f9
    rrc c                                         ; $6293: $cb $09
    ld e, [hl]                                    ; $6295: $5e
    ld h, h                                       ; $6296: $64
    db $dd                                        ; $6297: $dd
    db $eb                                        ; $6298: $eb
    call nz, Call_000_0005                        ; $6299: $c4 $05 $00
    ld a, h                                       ; $629c: $7c
    ld d, c                                       ; $629d: $51
    sub c                                         ; $629e: $91
    ld d, d                                       ; $629f: $52
    xor c                                         ; $62a0: $a9
    or d                                          ; $62a1: $b2
    ld d, [hl]                                    ; $62a2: $56
    adc l                                         ; $62a3: $8d
    add hl, sp                                    ; $62a4: $39
    rst $00                                       ; $62a5: $c7
    db $fd                                        ; $62a6: $fd
    ld e, a                                       ; $62a7: $5f
    ld c, c                                       ; $62a8: $49
    pop af                                        ; $62a9: $f1
    inc a                                         ; $62aa: $3c
    ld h, e                                       ; $62ab: $63
    reti                                          ; $62ac: $d9


    dec b                                         ; $62ad: $05
    nop                                           ; $62ae: $00
    inc a                                         ; $62af: $3c
    ld e, c                                       ; $62b0: $59
    ld c, [hl]                                    ; $62b1: $4e
    ld c, d                                       ; $62b2: $4a
    add e                                         ; $62b3: $83
    or c                                          ; $62b4: $b1
    sub a                                         ; $62b5: $97
    ld b, e                                       ; $62b6: $43
    db $ec                                        ; $62b7: $ec
    ld c, $96                                     ; $62b8: $0e $96
    inc b                                         ; $62ba: $04
    sbc h                                         ; $62bb: $9c
    ld e, e                                       ; $62bc: $5b
    db $e3                                        ; $62bd: $e3
    sbc h                                         ; $62be: $9c
    db $10                                        ; $62bf: $10
    sub [hl]                                      ; $62c0: $96
    ld a, [c]                                     ; $62c1: $f2
    ld h, a                                       ; $62c2: $67
    rst $18                                       ; $62c3: $df
    dec a                                         ; $62c4: $3d
    db $e4                                        ; $62c5: $e4
    rst $38                                       ; $62c6: $ff
    adc $f9                                       ; $62c7: $ce $f9
    ld [c], a                                     ; $62c9: $e2
    rst $08                                       ; $62ca: $cf
    ld c, [hl]                                    ; $62cb: $4e
    and $7f                                       ; $62cc: $e6 $7f
    ld a, [hl-]                                   ; $62ce: $3a
    cp a                                          ; $62cf: $bf
    ld d, h                                       ; $62d0: $54
    cp b                                          ; $62d1: $b8
    cp l                                          ; $62d2: $bd
    ld d, c                                       ; $62d3: $51
    add d                                         ; $62d4: $82
    ld e, a                                       ; $62d5: $5f
    ld a, c                                       ; $62d6: $79
    sbc h                                         ; $62d7: $9c
    inc d                                         ; $62d8: $14
    pop hl                                        ; $62d9: $e1
    jr z, jr_05e_6329                             ; $62da: $28 $4d

    inc e                                         ; $62dc: $1c
    ld h, a                                       ; $62dd: $67
    sbc b                                         ; $62de: $98
    db $fd                                        ; $62df: $fd
    dec b                                         ; $62e0: $05
    nop                                           ; $62e1: $00
    ld c, $9f                                     ; $62e2: $0e $9f
    and l                                         ; $62e4: $a5
    cp a                                          ; $62e5: $bf
    and l                                         ; $62e6: $a5
    ld c, $96                                     ; $62e7: $0e $96
    rst $00                                       ; $62e9: $c7
    db $da, $56, $12                              ; $62ea: $da $56 $12

    nop                                           ; $62ed: $00
    ld l, [hl]                                    ; $62ee: $6e
    rra                                           ; $62ef: $1f
    rst $28                                       ; $62f0: $ef
    add a                                         ; $62f1: $87
    ret                                           ; $62f2: $c9


    cp l                                          ; $62f3: $bd
    ld [hl], c                                    ; $62f4: $71
    ld a, e                                       ; $62f5: $7b
    ld a, a                                       ; $62f6: $7f
    ld [bc], a                                    ; $62f7: $02
    add d                                         ; $62f8: $82
    inc l                                         ; $62f9: $2c
    nop                                           ; $62fa: $00
    sbc [hl]                                      ; $62fb: $9e
    ld b, [hl]                                    ; $62fc: $46
    jp c, $16c8                                   ; $62fd: $da $c8 $16

    nop                                           ; $6300: $00
    ret nc                                        ; $6301: $d0

    dec d                                         ; $6302: $15
    inc l                                         ; $6303: $2c
    and c                                         ; $6304: $a1
    ld a, l                                       ; $6305: $7d
    push hl                                       ; $6306: $e5
    set 7, d                                      ; $6307: $cb $fa
    ld e, a                                       ; $6309: $5f
    inc sp                                        ; $630a: $33
    ld d, d                                       ; $630b: $52
    ld b, h                                       ; $630c: $44
    db $db                                        ; $630d: $db
    dec bc                                        ; $630e: $0b
    nop                                           ; $630f: $00
    ld e, [hl]                                    ; $6310: $5e
    ld [hl], c                                    ; $6311: $71
    ld [hl], c                                    ; $6312: $71
    ld c, l                                       ; $6313: $4d
    ld l, [hl]                                    ; $6314: $6e
    add hl, sp                                    ; $6315: $39
    halt                                          ; $6316: $76
    ld c, $57                                     ; $6317: $0e $57
    scf                                           ; $6319: $37
    push hl                                       ; $631a: $e5
    ld b, h                                       ; $631b: $44
    ld a, [hl-]                                   ; $631c: $3a
    db $db                                        ; $631d: $db
    ld [hl], e                                    ; $631e: $73
    db $fc                                        ; $631f: $fc
    dec b                                         ; $6320: $05
    nop                                           ; $6321: $00
    ld e, $0d                                     ; $6322: $1e $0d
    cp h                                          ; $6324: $bc
    cp a                                          ; $6325: $bf
    call nz, $c2c2                                ; $6326: $c4 $c2 $c2

jr_05e_6329:
    rst $28                                       ; $6329: $ef
    dec b                                         ; $632a: $05
    cp h                                          ; $632b: $bc
    db $e3                                        ; $632c: $e3
    add $ed                                       ; $632d: $c6 $ed
    ld h, c                                       ; $632f: $61
    nop                                           ; $6330: $00
    sbc [hl]                                      ; $6331: $9e
    rlca                                          ; $6332: $07
    cp e                                          ; $6333: $bb
    rst $30                                       ; $6334: $f7
    sbc h                                         ; $6335: $9c
    push bc                                       ; $6336: $c5
    ld h, c                                       ; $6337: $61
    nop                                           ; $6338: $00
    sbc [hl]                                      ; $6339: $9e
    rlca                                          ; $633a: $07
    add e                                         ; $633b: $83
    db $ec                                        ; $633c: $ec
    cp l                                          ; $633d: $bd
    rst $20                                       ; $633e: $e7
    inc l                                         ; $633f: $2c
    ld c, $03                                     ; $6340: $0e $03
    sbc h                                         ; $6342: $9c
    ld e, c                                       ; $6343: $59
    ld h, a                                       ; $6344: $67
    jr nc, jr_05e_6349                            ; $6345: $30 $02

    ld [bc], a                                    ; $6347: $02
    ld [bc], a                                    ; $6348: $02

jr_05e_6349:
    ld [bc], a                                    ; $6349: $02
    ld [bc], a                                    ; $634a: $02
    ld [bc], a                                    ; $634b: $02
    ld [bc], a                                    ; $634c: $02
    ld [bc], a                                    ; $634d: $02
    ld [bc], a                                    ; $634e: $02
    ld [bc], a                                    ; $634f: $02
    ld [bc], a                                    ; $6350: $02
    ld [bc], a                                    ; $6351: $02
    ld [bc], a                                    ; $6352: $02
    ld [bc], a                                    ; $6353: $02
    ld [bc], a                                    ; $6354: $02
    ld [bc], a                                    ; $6355: $02
    ld [bc], a                                    ; $6356: $02
    ld [bc], a                                    ; $6357: $02
    ld [bc], a                                    ; $6358: $02
    ld [bc], a                                    ; $6359: $02
    ld [bc], a                                    ; $635a: $02
    ld [bc], a                                    ; $635b: $02
    ld [bc], a                                    ; $635c: $02
    ld [bc], a                                    ; $635d: $02

Call_05e_635e:
    ld [bc], a                                    ; $635e: $02
    ld [bc], a                                    ; $635f: $02
    ld [bc], a                                    ; $6360: $02
    ld [bc], a                                    ; $6361: $02
    ld [bc], a                                    ; $6362: $02
    ld [bc], a                                    ; $6363: $02
    ld [bc], a                                    ; $6364: $02
    ld [bc], a                                    ; $6365: $02
    ld [bc], a                                    ; $6366: $02
    ld [bc], a                                    ; $6367: $02
    ld [bc], a                                    ; $6368: $02
    ld [bc], a                                    ; $6369: $02
    ld [bc], a                                    ; $636a: $02
    ld [bc], a                                    ; $636b: $02
    ld [bc], a                                    ; $636c: $02
    ld [bc], a                                    ; $636d: $02
    ld [bc], a                                    ; $636e: $02
    ld [bc], a                                    ; $636f: $02
    ld [bc], a                                    ; $6370: $02
    sbc [hl]                                      ; $6371: $9e
    cp a                                          ; $6372: $bf
    push af                                       ; $6373: $f5
    rra                                           ; $6374: $1f
    and d                                         ; $6375: $a2
    add hl, de                                    ; $6376: $19
    nop                                           ; $6377: $00
    inc a                                         ; $6378: $3c
    pop de                                        ; $6379: $d1
    db $eb                                        ; $637a: $eb
    scf                                           ; $637b: $37
    ld a, [$c0ce]                                 ; $637c: $fa $ce $c0
    inc bc                                        ; $637f: $03
    rst $28                                       ; $6380: $ef
    rlca                                          ; $6381: $07
    inc a                                         ; $6382: $3c
    ld h, e                                       ; $6383: $63
    ld a, l                                       ; $6384: $7d
    ld a, a                                       ; $6385: $7f
    ld [hl], h                                    ; $6386: $74
    and h                                         ; $6387: $a4
    sub a                                         ; $6388: $97
    ld a, b                                       ; $6389: $78
    and d                                         ; $638a: $a2
    rst $10                                       ; $638b: $d7
    ld l, a                                       ; $638c: $6f
    db $f4                                        ; $638d: $f4
    cpl                                           ; $638e: $2f
    nop                                           ; $638f: $00
    sbc [hl]                                      ; $6390: $9e
    xor $9c                                       ; $6391: $ee $9c
    rst $08                                       ; $6393: $cf
    ld b, $a6                                     ; $6394: $06 $a6
    add sp, -$34                                  ; $6396: $e8 $cc
    sbc l                                         ; $6398: $9d
    or c                                          ; $6399: $b1
    add hl, sp                                    ; $639a: $39
    inc sp                                        ; $639b: $33
    ld hl, sp+$02                                 ; $639c: $f8 $02
    sbc [hl]                                      ; $639e: $9e
    ld l, a                                       ; $639f: $6f
    rst $38                                       ; $63a0: $ff
    cp l                                          ; $63a1: $bd
    dec [hl]                                      ; $63a2: $35
    call z, Call_05e_7819                         ; $63a3: $cc $19 $78
    ldh [$fd], a                                  ; $63a6: $e0 $fd
    nop                                           ; $63a8: $00
    ld c, $d7                                     ; $63a9: $0e $d7
    rst $30                                       ; $63ab: $f7
    rlca                                          ; $63ac: $07
    ld e, e                                       ; $63ad: $5b
    ld a, b                                       ; $63ae: $78
    ldh [$fd], a                                  ; $63af: $e0 $fd
    nop                                           ; $63b1: $00
    inc a                                         ; $63b2: $3c
    ld h, e                                       ; $63b3: $63
    ld a, l                                       ; $63b4: $7d
    ld a, a                                       ; $63b5: $7f
    ld [hl], h                                    ; $63b6: $74
    and h                                         ; $63b7: $a4
    sub a                                         ; $63b8: $97
    inc e                                         ; $63b9: $1c
    xor [hl]                                      ; $63ba: $ae
    rst $28                                       ; $63bb: $ef
    rrca                                          ; $63bc: $0f
    or [hl]                                       ; $63bd: $b6
    ldh a, [rTIMA]                                ; $63be: $f0 $05
    nop                                           ; $63c0: $00
    ld [bc], a                                    ; $63c1: $02
    ld [bc], a                                    ; $63c2: $02
    ld [bc], a                                    ; $63c3: $02
    ld [bc], a                                    ; $63c4: $02
    ld [bc], a                                    ; $63c5: $02
    ld [bc], a                                    ; $63c6: $02
    ld [bc], a                                    ; $63c7: $02
    ld [bc], a                                    ; $63c8: $02
    ld [bc], a                                    ; $63c9: $02
    ld [bc], a                                    ; $63ca: $02
    ld [bc], a                                    ; $63cb: $02
    cp h                                          ; $63cc: $bc
    bit 6, b                                      ; $63cd: $cb $70
    ret c                                         ; $63cf: $d8

    ld e, h                                       ; $63d0: $5c
    ld b, $3f                                     ; $63d1: $06 $3f
    nop                                           ; $63d3: $00
    ld [bc], a                                    ; $63d4: $02
    ld [bc], a                                    ; $63d5: $02
    ld [bc], a                                    ; $63d6: $02
    ld [bc], a                                    ; $63d7: $02
    ld [bc], a                                    ; $63d8: $02
    ld [bc], a                                    ; $63d9: $02
    ld [bc], a                                    ; $63da: $02
    ld [bc], a                                    ; $63db: $02
    ld [bc], a                                    ; $63dc: $02
    ld [bc], a                                    ; $63dd: $02
    ld [bc], a                                    ; $63de: $02
    ld [bc], a                                    ; $63df: $02
    ld [bc], a                                    ; $63e0: $02
    ld [bc], a                                    ; $63e1: $02
    ld [bc], a                                    ; $63e2: $02
    ld [bc], a                                    ; $63e3: $02
    ld [bc], a                                    ; $63e4: $02
    ld [bc], a                                    ; $63e5: $02
    ld [bc], a                                    ; $63e6: $02
    ld [bc], a                                    ; $63e7: $02
    ld [bc], a                                    ; $63e8: $02
    ld e, $e1                                     ; $63e9: $1e $e1
    ld a, h                                       ; $63eb: $7c
    db $dd                                        ; $63ec: $dd
    ccf                                           ; $63ed: $3f
    ld c, d                                       ; $63ee: $4a
    db $ec                                        ; $63ef: $ec
    ld h, a                                       ; $63f0: $67
    ld l, h                                       ; $63f1: $6c
    ccf                                           ; $63f2: $3f
    nop                                           ; $63f3: $00
    ld [bc], a                                    ; $63f4: $02
    ld c, $9f                                     ; $63f5: $0e $9f
    ld e, l                                       ; $63f7: $5d
    ld a, [c]                                     ; $63f8: $f2
    ld a, a                                       ; $63f9: $7f
    call z, $fc39                                 ; $63fa: $cc $39 $fc
    pop bc                                        ; $63fd: $c1
    and $fc                                       ; $63fe: $e6 $fc
    rlca                                          ; $6400: $07
    cp h                                          ; $6401: $bc
    add e                                         ; $6402: $83
    ld sp, hl                                     ; $6403: $f9
    db $db                                        ; $6404: $db
    or $27                                        ; $6405: $f6 $27
    ld [hl], $c7                                  ; $6407: $36 $c7
    ld l, c                                       ; $6409: $69
    ei                                            ; $640a: $fb
    nop                                           ; $640b: $00
    ld c, $70                                     ; $640c: $0e $70
    ld hl, $f35f                                  ; $640e: $21 $5f $f3
    cp e                                          ; $6411: $bb
    rst $30                                       ; $6412: $f7
    db $fc                                        ; $6413: $fc
    db $fc                                        ; $6414: $fc
    add hl, sp                                    ; $6415: $39
    rlca                                          ; $6416: $07
    db $fc                                        ; $6417: $fc
    nop                                           ; $6418: $00
    ld e, $ff                                     ; $6419: $1e $ff
    ld h, h                                       ; $641b: $64
    db $db                                        ; $641c: $db
    or [hl]                                       ; $641d: $b6
    or $23                                        ; $641e: $f6 $23
    ld b, a                                       ; $6420: $47
    ld hl, sp+$01                                 ; $6421: $f8 $01
    ld [bc], a                                    ; $6423: $02
    ld [bc], a                                    ; $6424: $02
    ld [bc], a                                    ; $6425: $02
    ld [bc], a                                    ; $6426: $02
    ld [bc], a                                    ; $6427: $02
    ld [bc], a                                    ; $6428: $02
    ld [bc], a                                    ; $6429: $02
    ld [bc], a                                    ; $642a: $02
    ld [bc], a                                    ; $642b: $02
    ld [bc], a                                    ; $642c: $02
    ld [bc], a                                    ; $642d: $02
    ld [bc], a                                    ; $642e: $02
    ld [bc], a                                    ; $642f: $02
    ld [bc], a                                    ; $6430: $02
    ld [bc], a                                    ; $6431: $02
    ld [bc], a                                    ; $6432: $02
    ld [bc], a                                    ; $6433: $02
    ld [bc], a                                    ; $6434: $02
    inc a                                         ; $6435: $3c
    ld h, e                                       ; $6436: $63
    rst $08                                       ; $6437: $cf
    nop                                           ; $6438: $00
    ld [bc], a                                    ; $6439: $02
    ld [bc], a                                    ; $643a: $02
    ld [bc], a                                    ; $643b: $02
    ld [bc], a                                    ; $643c: $02
    ld [bc], a                                    ; $643d: $02
    rst $38                                       ; $643e: $ff
    rst $38                                       ; $643f: $ff
    rst $38                                       ; $6440: $ff
    rst $38                                       ; $6441: $ff
    rst $38                                       ; $6442: $ff
    rst $38                                       ; $6443: $ff
    rst $38                                       ; $6444: $ff
    rst $38                                       ; $6445: $ff
    rst $38                                       ; $6446: $ff
    rst $38                                       ; $6447: $ff
    rst $38                                       ; $6448: $ff
    rst $38                                       ; $6449: $ff
    rst $38                                       ; $644a: $ff
    rst $38                                       ; $644b: $ff
    rst $38                                       ; $644c: $ff
    rst $38                                       ; $644d: $ff
    rst $38                                       ; $644e: $ff
    rst $38                                       ; $644f: $ff
    rst $38                                       ; $6450: $ff
    rst $38                                       ; $6451: $ff
    rst $38                                       ; $6452: $ff
    rst $38                                       ; $6453: $ff
    rst $38                                       ; $6454: $ff
    rst $38                                       ; $6455: $ff
    rst $38                                       ; $6456: $ff
    rst $38                                       ; $6457: $ff
    rst $38                                       ; $6458: $ff
    rst $38                                       ; $6459: $ff
    rst $38                                       ; $645a: $ff
    rst $38                                       ; $645b: $ff
    rst $38                                       ; $645c: $ff
    rst $38                                       ; $645d: $ff
    rst $38                                       ; $645e: $ff
    rst $38                                       ; $645f: $ff
    rst $38                                       ; $6460: $ff
    rst $38                                       ; $6461: $ff
    rst $38                                       ; $6462: $ff
    rst $38                                       ; $6463: $ff
    rst $38                                       ; $6464: $ff
    rst $38                                       ; $6465: $ff
    rst $38                                       ; $6466: $ff
    rst $38                                       ; $6467: $ff
    rst $38                                       ; $6468: $ff
    rst $38                                       ; $6469: $ff
    rst $38                                       ; $646a: $ff
    rst $38                                       ; $646b: $ff
    rst $38                                       ; $646c: $ff
    rst $38                                       ; $646d: $ff
    rst $38                                       ; $646e: $ff
    rst $38                                       ; $646f: $ff
    rst $38                                       ; $6470: $ff
    rst $38                                       ; $6471: $ff
    rst $38                                       ; $6472: $ff
    rst $38                                       ; $6473: $ff
    rst $38                                       ; $6474: $ff
    rst $38                                       ; $6475: $ff
    rst $38                                       ; $6476: $ff
    rst $38                                       ; $6477: $ff
    rst $38                                       ; $6478: $ff
    rst $38                                       ; $6479: $ff
    rst $38                                       ; $647a: $ff
    rst $38                                       ; $647b: $ff
    rst $38                                       ; $647c: $ff
    rst $38                                       ; $647d: $ff
    rst $38                                       ; $647e: $ff
    rst $38                                       ; $647f: $ff
    rst $38                                       ; $6480: $ff
    rst $38                                       ; $6481: $ff
    rst $38                                       ; $6482: $ff
    rst $38                                       ; $6483: $ff
    rst $38                                       ; $6484: $ff
    rst $38                                       ; $6485: $ff
    rst $38                                       ; $6486: $ff
    rst $38                                       ; $6487: $ff
    rst $38                                       ; $6488: $ff
    rst $38                                       ; $6489: $ff
    rst $38                                       ; $648a: $ff
    rst $38                                       ; $648b: $ff
    rst $38                                       ; $648c: $ff
    rst $38                                       ; $648d: $ff
    rst $38                                       ; $648e: $ff
    rst $38                                       ; $648f: $ff
    rst $38                                       ; $6490: $ff
    rst $38                                       ; $6491: $ff
    rst $38                                       ; $6492: $ff
    rst $38                                       ; $6493: $ff
    rst $38                                       ; $6494: $ff
    rst $38                                       ; $6495: $ff
    rst $38                                       ; $6496: $ff
    rst $38                                       ; $6497: $ff
    rst $38                                       ; $6498: $ff
    rst $38                                       ; $6499: $ff
    rst $38                                       ; $649a: $ff
    rst $38                                       ; $649b: $ff
    rst $38                                       ; $649c: $ff
    rst $38                                       ; $649d: $ff
    rst $38                                       ; $649e: $ff
    rst $38                                       ; $649f: $ff
    rst $38                                       ; $64a0: $ff
    rst $38                                       ; $64a1: $ff
    rst $38                                       ; $64a2: $ff
    rst $38                                       ; $64a3: $ff
    rst $38                                       ; $64a4: $ff
    rst $38                                       ; $64a5: $ff
    rst $38                                       ; $64a6: $ff
    rst $38                                       ; $64a7: $ff
    rst $38                                       ; $64a8: $ff
    rst $38                                       ; $64a9: $ff
    rst $38                                       ; $64aa: $ff
    rst $38                                       ; $64ab: $ff
    rst $38                                       ; $64ac: $ff
    rst $38                                       ; $64ad: $ff
    rst $38                                       ; $64ae: $ff
    rst $38                                       ; $64af: $ff
    rst $38                                       ; $64b0: $ff
    rst $38                                       ; $64b1: $ff
    rst $38                                       ; $64b2: $ff
    rst $38                                       ; $64b3: $ff
    rst $38                                       ; $64b4: $ff
    rst $38                                       ; $64b5: $ff
    rst $38                                       ; $64b6: $ff
    rst $38                                       ; $64b7: $ff
    rst $38                                       ; $64b8: $ff
    rst $38                                       ; $64b9: $ff
    rst $38                                       ; $64ba: $ff
    rst $38                                       ; $64bb: $ff
    rst $38                                       ; $64bc: $ff
    rst $38                                       ; $64bd: $ff
    rst $38                                       ; $64be: $ff
    rst $38                                       ; $64bf: $ff
    rst $38                                       ; $64c0: $ff
    rst $38                                       ; $64c1: $ff
    rst $38                                       ; $64c2: $ff
    rst $38                                       ; $64c3: $ff
    rst $38                                       ; $64c4: $ff
    rst $38                                       ; $64c5: $ff
    rst $38                                       ; $64c6: $ff
    rst $38                                       ; $64c7: $ff
    rst $38                                       ; $64c8: $ff
    rst $38                                       ; $64c9: $ff
    rst $38                                       ; $64ca: $ff
    rst $38                                       ; $64cb: $ff
    rst $38                                       ; $64cc: $ff
    rst $38                                       ; $64cd: $ff
    rst $38                                       ; $64ce: $ff
    rst $38                                       ; $64cf: $ff
    rst $38                                       ; $64d0: $ff
    rst $38                                       ; $64d1: $ff
    rst $38                                       ; $64d2: $ff
    rst $38                                       ; $64d3: $ff
    rst $38                                       ; $64d4: $ff
    rst $38                                       ; $64d5: $ff
    rst $38                                       ; $64d6: $ff
    rst $38                                       ; $64d7: $ff
    rst $38                                       ; $64d8: $ff
    rst $38                                       ; $64d9: $ff
    rst $38                                       ; $64da: $ff
    rst $38                                       ; $64db: $ff
    rst $38                                       ; $64dc: $ff
    rst $38                                       ; $64dd: $ff
    rst $38                                       ; $64de: $ff
    rst $38                                       ; $64df: $ff
    rst $38                                       ; $64e0: $ff
    rst $38                                       ; $64e1: $ff
    rst $38                                       ; $64e2: $ff
    rst $38                                       ; $64e3: $ff
    rst $38                                       ; $64e4: $ff
    rst $38                                       ; $64e5: $ff
    rst $38                                       ; $64e6: $ff
    rst $38                                       ; $64e7: $ff
    rst $38                                       ; $64e8: $ff
    rst $38                                       ; $64e9: $ff
    rst $38                                       ; $64ea: $ff
    rst $38                                       ; $64eb: $ff
    rst $38                                       ; $64ec: $ff
    rst $38                                       ; $64ed: $ff
    rst $38                                       ; $64ee: $ff
    rst $38                                       ; $64ef: $ff
    rst $38                                       ; $64f0: $ff
    rst $38                                       ; $64f1: $ff
    rst $38                                       ; $64f2: $ff
    rst $38                                       ; $64f3: $ff
    rst $38                                       ; $64f4: $ff
    rst $38                                       ; $64f5: $ff
    rst $38                                       ; $64f6: $ff
    rst $38                                       ; $64f7: $ff
    rst $38                                       ; $64f8: $ff
    rst $38                                       ; $64f9: $ff
    rst $38                                       ; $64fa: $ff
    rst $38                                       ; $64fb: $ff
    rst $38                                       ; $64fc: $ff
    rst $38                                       ; $64fd: $ff
    rst $38                                       ; $64fe: $ff
    rst $38                                       ; $64ff: $ff
    rst $38                                       ; $6500: $ff
    rst $38                                       ; $6501: $ff
    rst $38                                       ; $6502: $ff
    rst $38                                       ; $6503: $ff
    rst $38                                       ; $6504: $ff
    rst $38                                       ; $6505: $ff
    rst $38                                       ; $6506: $ff
    rst $38                                       ; $6507: $ff
    rst $38                                       ; $6508: $ff
    rst $38                                       ; $6509: $ff
    rst $38                                       ; $650a: $ff
    rst $38                                       ; $650b: $ff
    rst $38                                       ; $650c: $ff
    rst $38                                       ; $650d: $ff
    rst $38                                       ; $650e: $ff
    rst $38                                       ; $650f: $ff
    rst $38                                       ; $6510: $ff
    rst $38                                       ; $6511: $ff
    rst $38                                       ; $6512: $ff
    rst $38                                       ; $6513: $ff
    rst $38                                       ; $6514: $ff
    rst $38                                       ; $6515: $ff
    rst $38                                       ; $6516: $ff
    rst $38                                       ; $6517: $ff
    rst $38                                       ; $6518: $ff
    rst $38                                       ; $6519: $ff
    rst $38                                       ; $651a: $ff

Jump_05e_651b:
    rst $38                                       ; $651b: $ff
    rst $38                                       ; $651c: $ff
    rst $38                                       ; $651d: $ff
    rst $38                                       ; $651e: $ff
    rst $38                                       ; $651f: $ff
    rst $38                                       ; $6520: $ff
    rst $38                                       ; $6521: $ff
    rst $38                                       ; $6522: $ff
    rst $38                                       ; $6523: $ff
    rst $38                                       ; $6524: $ff
    rst $38                                       ; $6525: $ff
    rst $38                                       ; $6526: $ff
    rst $38                                       ; $6527: $ff
    rst $38                                       ; $6528: $ff
    rst $38                                       ; $6529: $ff
    rst $38                                       ; $652a: $ff
    rst $38                                       ; $652b: $ff
    rst $38                                       ; $652c: $ff
    rst $38                                       ; $652d: $ff
    rst $38                                       ; $652e: $ff
    rst $38                                       ; $652f: $ff
    rst $38                                       ; $6530: $ff
    rst $38                                       ; $6531: $ff
    rst $38                                       ; $6532: $ff
    rst $38                                       ; $6533: $ff
    rst $38                                       ; $6534: $ff
    rst $38                                       ; $6535: $ff
    rst $38                                       ; $6536: $ff
    rst $38                                       ; $6537: $ff
    rst $38                                       ; $6538: $ff
    rst $38                                       ; $6539: $ff
    rst $38                                       ; $653a: $ff
    rst $38                                       ; $653b: $ff
    rst $38                                       ; $653c: $ff
    rst $38                                       ; $653d: $ff
    rst $38                                       ; $653e: $ff
    rst $38                                       ; $653f: $ff
    rst $38                                       ; $6540: $ff
    rst $38                                       ; $6541: $ff
    rst $38                                       ; $6542: $ff
    rst $38                                       ; $6543: $ff
    rst $38                                       ; $6544: $ff
    rst $38                                       ; $6545: $ff
    rst $38                                       ; $6546: $ff
    rst $38                                       ; $6547: $ff
    rst $38                                       ; $6548: $ff
    rst $38                                       ; $6549: $ff
    rst $38                                       ; $654a: $ff
    rst $38                                       ; $654b: $ff
    rst $38                                       ; $654c: $ff
    rst $38                                       ; $654d: $ff
    rst $38                                       ; $654e: $ff
    rst $38                                       ; $654f: $ff
    rst $38                                       ; $6550: $ff
    rst $38                                       ; $6551: $ff

Call_05e_6552:
    rst $38                                       ; $6552: $ff
    rst $38                                       ; $6553: $ff
    rst $38                                       ; $6554: $ff
    rst $38                                       ; $6555: $ff
    rst $38                                       ; $6556: $ff
    rst $38                                       ; $6557: $ff
    rst $38                                       ; $6558: $ff
    rst $38                                       ; $6559: $ff
    rst $38                                       ; $655a: $ff
    rst $38                                       ; $655b: $ff
    rst $38                                       ; $655c: $ff
    rst $38                                       ; $655d: $ff
    rst $38                                       ; $655e: $ff
    rst $38                                       ; $655f: $ff
    rst $38                                       ; $6560: $ff
    rst $38                                       ; $6561: $ff
    rst $38                                       ; $6562: $ff
    rst $38                                       ; $6563: $ff
    rst $38                                       ; $6564: $ff
    rst $38                                       ; $6565: $ff
    rst $38                                       ; $6566: $ff
    rst $38                                       ; $6567: $ff
    rst $38                                       ; $6568: $ff
    rst $38                                       ; $6569: $ff
    rst $38                                       ; $656a: $ff
    rst $38                                       ; $656b: $ff
    rst $38                                       ; $656c: $ff
    rst $38                                       ; $656d: $ff
    rst $38                                       ; $656e: $ff
    rst $38                                       ; $656f: $ff
    rst $38                                       ; $6570: $ff
    rst $38                                       ; $6571: $ff
    rst $38                                       ; $6572: $ff
    rst $38                                       ; $6573: $ff
    rst $38                                       ; $6574: $ff
    rst $38                                       ; $6575: $ff
    rst $38                                       ; $6576: $ff
    rst $38                                       ; $6577: $ff
    rst $38                                       ; $6578: $ff
    rst $38                                       ; $6579: $ff
    rst $38                                       ; $657a: $ff
    rst $38                                       ; $657b: $ff
    rst $38                                       ; $657c: $ff
    rst $38                                       ; $657d: $ff
    rst $38                                       ; $657e: $ff
    rst $38                                       ; $657f: $ff
    rst $38                                       ; $6580: $ff
    rst $38                                       ; $6581: $ff
    rst $38                                       ; $6582: $ff
    rst $38                                       ; $6583: $ff
    rst $38                                       ; $6584: $ff
    rst $38                                       ; $6585: $ff
    rst $38                                       ; $6586: $ff
    rst $38                                       ; $6587: $ff
    rst $38                                       ; $6588: $ff
    rst $38                                       ; $6589: $ff
    rst $38                                       ; $658a: $ff
    rst $38                                       ; $658b: $ff
    rst $38                                       ; $658c: $ff
    rst $38                                       ; $658d: $ff
    rst $38                                       ; $658e: $ff
    rst $38                                       ; $658f: $ff
    rst $38                                       ; $6590: $ff
    rst $38                                       ; $6591: $ff
    rst $38                                       ; $6592: $ff
    rst $38                                       ; $6593: $ff
    rst $38                                       ; $6594: $ff
    rst $38                                       ; $6595: $ff
    rst $38                                       ; $6596: $ff
    rst $38                                       ; $6597: $ff
    rst $38                                       ; $6598: $ff
    rst $38                                       ; $6599: $ff
    rst $38                                       ; $659a: $ff
    rst $38                                       ; $659b: $ff
    rst $38                                       ; $659c: $ff
    rst $38                                       ; $659d: $ff
    rst $38                                       ; $659e: $ff
    rst $38                                       ; $659f: $ff
    rst $38                                       ; $65a0: $ff
    rst $38                                       ; $65a1: $ff
    rst $38                                       ; $65a2: $ff
    rst $38                                       ; $65a3: $ff
    rst $38                                       ; $65a4: $ff
    rst $38                                       ; $65a5: $ff
    rst $38                                       ; $65a6: $ff
    rst $38                                       ; $65a7: $ff
    rst $38                                       ; $65a8: $ff
    rst $38                                       ; $65a9: $ff
    rst $38                                       ; $65aa: $ff
    rst $38                                       ; $65ab: $ff
    rst $38                                       ; $65ac: $ff
    rst $38                                       ; $65ad: $ff
    rst $38                                       ; $65ae: $ff
    rst $38                                       ; $65af: $ff
    rst $38                                       ; $65b0: $ff
    rst $38                                       ; $65b1: $ff
    rst $38                                       ; $65b2: $ff
    rst $38                                       ; $65b3: $ff
    rst $38                                       ; $65b4: $ff
    rst $38                                       ; $65b5: $ff
    rst $38                                       ; $65b6: $ff
    rst $38                                       ; $65b7: $ff
    rst $38                                       ; $65b8: $ff
    rst $38                                       ; $65b9: $ff
    rst $38                                       ; $65ba: $ff
    rst $38                                       ; $65bb: $ff
    rst $38                                       ; $65bc: $ff
    rst $38                                       ; $65bd: $ff
    rst $38                                       ; $65be: $ff
    rst $38                                       ; $65bf: $ff
    rst $38                                       ; $65c0: $ff
    rst $38                                       ; $65c1: $ff
    rst $38                                       ; $65c2: $ff
    rst $38                                       ; $65c3: $ff
    rst $38                                       ; $65c4: $ff
    rst $38                                       ; $65c5: $ff
    rst $38                                       ; $65c6: $ff
    rst $38                                       ; $65c7: $ff
    rst $38                                       ; $65c8: $ff
    rst $38                                       ; $65c9: $ff
    rst $38                                       ; $65ca: $ff
    rst $38                                       ; $65cb: $ff
    rst $38                                       ; $65cc: $ff
    rst $38                                       ; $65cd: $ff
    rst $38                                       ; $65ce: $ff
    rst $38                                       ; $65cf: $ff
    rst $38                                       ; $65d0: $ff
    rst $38                                       ; $65d1: $ff
    rst $38                                       ; $65d2: $ff
    rst $38                                       ; $65d3: $ff
    rst $38                                       ; $65d4: $ff
    rst $38                                       ; $65d5: $ff
    rst $38                                       ; $65d6: $ff
    rst $38                                       ; $65d7: $ff
    rst $38                                       ; $65d8: $ff
    rst $38                                       ; $65d9: $ff
    rst $38                                       ; $65da: $ff
    rst $38                                       ; $65db: $ff
    rst $38                                       ; $65dc: $ff
    rst $38                                       ; $65dd: $ff
    rst $38                                       ; $65de: $ff
    rst $38                                       ; $65df: $ff
    rst $38                                       ; $65e0: $ff
    rst $38                                       ; $65e1: $ff
    rst $38                                       ; $65e2: $ff
    rst $38                                       ; $65e3: $ff
    rst $38                                       ; $65e4: $ff
    rst $38                                       ; $65e5: $ff
    rst $38                                       ; $65e6: $ff
    rst $38                                       ; $65e7: $ff
    rst $38                                       ; $65e8: $ff
    rst $38                                       ; $65e9: $ff
    rst $38                                       ; $65ea: $ff
    rst $38                                       ; $65eb: $ff
    rst $38                                       ; $65ec: $ff
    rst $38                                       ; $65ed: $ff
    rst $38                                       ; $65ee: $ff
    rst $38                                       ; $65ef: $ff
    rst $38                                       ; $65f0: $ff
    rst $38                                       ; $65f1: $ff
    rst $38                                       ; $65f2: $ff
    rst $38                                       ; $65f3: $ff
    rst $38                                       ; $65f4: $ff
    rst $38                                       ; $65f5: $ff
    rst $38                                       ; $65f6: $ff
    rst $38                                       ; $65f7: $ff
    rst $38                                       ; $65f8: $ff
    rst $38                                       ; $65f9: $ff
    rst $38                                       ; $65fa: $ff
    rst $38                                       ; $65fb: $ff
    rst $38                                       ; $65fc: $ff
    rst $38                                       ; $65fd: $ff
    rst $38                                       ; $65fe: $ff
    rst $38                                       ; $65ff: $ff
    rst $38                                       ; $6600: $ff
    rst $38                                       ; $6601: $ff
    rst $38                                       ; $6602: $ff
    rst $38                                       ; $6603: $ff
    rst $38                                       ; $6604: $ff
    rst $38                                       ; $6605: $ff
    rst $38                                       ; $6606: $ff
    rst $38                                       ; $6607: $ff
    rst $38                                       ; $6608: $ff
    rst $38                                       ; $6609: $ff
    rst $38                                       ; $660a: $ff
    rst $38                                       ; $660b: $ff
    rst $38                                       ; $660c: $ff
    rst $38                                       ; $660d: $ff
    rst $38                                       ; $660e: $ff
    rst $38                                       ; $660f: $ff
    rst $38                                       ; $6610: $ff
    rst $38                                       ; $6611: $ff
    rst $38                                       ; $6612: $ff
    rst $38                                       ; $6613: $ff
    rst $38                                       ; $6614: $ff
    rst $38                                       ; $6615: $ff
    rst $38                                       ; $6616: $ff
    rst $38                                       ; $6617: $ff
    rst $38                                       ; $6618: $ff
    rst $38                                       ; $6619: $ff
    rst $38                                       ; $661a: $ff
    rst $38                                       ; $661b: $ff
    rst $38                                       ; $661c: $ff
    rst $38                                       ; $661d: $ff
    rst $38                                       ; $661e: $ff
    rst $38                                       ; $661f: $ff
    rst $38                                       ; $6620: $ff
    rst $38                                       ; $6621: $ff
    rst $38                                       ; $6622: $ff
    rst $38                                       ; $6623: $ff
    rst $38                                       ; $6624: $ff
    rst $38                                       ; $6625: $ff
    rst $38                                       ; $6626: $ff
    rst $38                                       ; $6627: $ff
    rst $38                                       ; $6628: $ff
    rst $38                                       ; $6629: $ff
    rst $38                                       ; $662a: $ff
    rst $38                                       ; $662b: $ff
    rst $38                                       ; $662c: $ff
    rst $38                                       ; $662d: $ff
    rst $38                                       ; $662e: $ff
    rst $38                                       ; $662f: $ff
    rst $38                                       ; $6630: $ff
    rst $38                                       ; $6631: $ff
    rst $38                                       ; $6632: $ff
    rst $38                                       ; $6633: $ff
    rst $38                                       ; $6634: $ff
    rst $38                                       ; $6635: $ff
    rst $38                                       ; $6636: $ff
    rst $38                                       ; $6637: $ff
    rst $38                                       ; $6638: $ff
    rst $38                                       ; $6639: $ff
    rst $38                                       ; $663a: $ff
    rst $38                                       ; $663b: $ff
    rst $38                                       ; $663c: $ff
    rst $38                                       ; $663d: $ff
    rst $38                                       ; $663e: $ff
    rst $38                                       ; $663f: $ff
    rst $38                                       ; $6640: $ff
    rst $38                                       ; $6641: $ff
    rst $38                                       ; $6642: $ff
    rst $38                                       ; $6643: $ff
    rst $38                                       ; $6644: $ff
    rst $38                                       ; $6645: $ff
    rst $38                                       ; $6646: $ff
    rst $38                                       ; $6647: $ff
    rst $38                                       ; $6648: $ff
    rst $38                                       ; $6649: $ff
    rst $38                                       ; $664a: $ff
    rst $38                                       ; $664b: $ff
    rst $38                                       ; $664c: $ff
    rst $38                                       ; $664d: $ff
    rst $38                                       ; $664e: $ff
    rst $38                                       ; $664f: $ff
    rst $38                                       ; $6650: $ff
    rst $38                                       ; $6651: $ff
    rst $38                                       ; $6652: $ff
    rst $38                                       ; $6653: $ff
    rst $38                                       ; $6654: $ff
    rst $38                                       ; $6655: $ff
    rst $38                                       ; $6656: $ff
    rst $38                                       ; $6657: $ff
    rst $38                                       ; $6658: $ff
    rst $38                                       ; $6659: $ff
    rst $38                                       ; $665a: $ff
    rst $38                                       ; $665b: $ff
    rst $38                                       ; $665c: $ff
    rst $38                                       ; $665d: $ff
    rst $38                                       ; $665e: $ff
    rst $38                                       ; $665f: $ff
    rst $38                                       ; $6660: $ff
    rst $38                                       ; $6661: $ff
    rst $38                                       ; $6662: $ff
    rst $38                                       ; $6663: $ff
    rst $38                                       ; $6664: $ff
    rst $38                                       ; $6665: $ff
    rst $38                                       ; $6666: $ff
    rst $38                                       ; $6667: $ff
    rst $38                                       ; $6668: $ff
    rst $38                                       ; $6669: $ff
    rst $38                                       ; $666a: $ff
    rst $38                                       ; $666b: $ff
    rst $38                                       ; $666c: $ff
    rst $38                                       ; $666d: $ff
    rst $38                                       ; $666e: $ff
    rst $38                                       ; $666f: $ff
    rst $38                                       ; $6670: $ff
    rst $38                                       ; $6671: $ff
    rst $38                                       ; $6672: $ff
    rst $38                                       ; $6673: $ff
    rst $38                                       ; $6674: $ff
    rst $38                                       ; $6675: $ff
    rst $38                                       ; $6676: $ff
    rst $38                                       ; $6677: $ff
    rst $38                                       ; $6678: $ff
    rst $38                                       ; $6679: $ff
    rst $38                                       ; $667a: $ff
    rst $38                                       ; $667b: $ff
    rst $38                                       ; $667c: $ff
    rst $38                                       ; $667d: $ff
    rst $38                                       ; $667e: $ff
    rst $38                                       ; $667f: $ff
    rst $38                                       ; $6680: $ff
    rst $38                                       ; $6681: $ff
    rst $38                                       ; $6682: $ff
    rst $38                                       ; $6683: $ff
    rst $38                                       ; $6684: $ff
    rst $38                                       ; $6685: $ff
    rst $38                                       ; $6686: $ff
    rst $38                                       ; $6687: $ff
    rst $38                                       ; $6688: $ff
    rst $38                                       ; $6689: $ff
    rst $38                                       ; $668a: $ff
    rst $38                                       ; $668b: $ff
    rst $38                                       ; $668c: $ff
    rst $38                                       ; $668d: $ff
    rst $38                                       ; $668e: $ff
    rst $38                                       ; $668f: $ff
    rst $38                                       ; $6690: $ff
    rst $38                                       ; $6691: $ff
    rst $38                                       ; $6692: $ff
    rst $38                                       ; $6693: $ff
    rst $38                                       ; $6694: $ff
    rst $38                                       ; $6695: $ff
    rst $38                                       ; $6696: $ff
    rst $38                                       ; $6697: $ff
    rst $38                                       ; $6698: $ff
    rst $38                                       ; $6699: $ff
    rst $38                                       ; $669a: $ff
    rst $38                                       ; $669b: $ff
    rst $38                                       ; $669c: $ff
    rst $38                                       ; $669d: $ff
    rst $38                                       ; $669e: $ff
    rst $38                                       ; $669f: $ff
    rst $38                                       ; $66a0: $ff
    rst $38                                       ; $66a1: $ff
    rst $38                                       ; $66a2: $ff
    rst $38                                       ; $66a3: $ff
    rst $38                                       ; $66a4: $ff
    rst $38                                       ; $66a5: $ff
    rst $38                                       ; $66a6: $ff
    rst $38                                       ; $66a7: $ff
    rst $38                                       ; $66a8: $ff
    rst $38                                       ; $66a9: $ff
    rst $38                                       ; $66aa: $ff
    rst $38                                       ; $66ab: $ff
    rst $38                                       ; $66ac: $ff
    rst $38                                       ; $66ad: $ff
    rst $38                                       ; $66ae: $ff
    rst $38                                       ; $66af: $ff
    rst $38                                       ; $66b0: $ff
    rst $38                                       ; $66b1: $ff
    rst $38                                       ; $66b2: $ff
    rst $38                                       ; $66b3: $ff
    rst $38                                       ; $66b4: $ff
    rst $38                                       ; $66b5: $ff
    rst $38                                       ; $66b6: $ff
    rst $38                                       ; $66b7: $ff
    rst $38                                       ; $66b8: $ff
    rst $38                                       ; $66b9: $ff
    rst $38                                       ; $66ba: $ff
    rst $38                                       ; $66bb: $ff
    rst $38                                       ; $66bc: $ff
    rst $38                                       ; $66bd: $ff
    rst $38                                       ; $66be: $ff
    rst $38                                       ; $66bf: $ff
    rst $38                                       ; $66c0: $ff
    rst $38                                       ; $66c1: $ff
    rst $38                                       ; $66c2: $ff
    rst $38                                       ; $66c3: $ff
    rst $38                                       ; $66c4: $ff
    rst $38                                       ; $66c5: $ff
    rst $38                                       ; $66c6: $ff
    rst $38                                       ; $66c7: $ff
    rst $38                                       ; $66c8: $ff
    rst $38                                       ; $66c9: $ff
    rst $38                                       ; $66ca: $ff
    rst $38                                       ; $66cb: $ff
    rst $38                                       ; $66cc: $ff
    rst $38                                       ; $66cd: $ff
    rst $38                                       ; $66ce: $ff
    rst $38                                       ; $66cf: $ff
    rst $38                                       ; $66d0: $ff
    rst $38                                       ; $66d1: $ff
    rst $38                                       ; $66d2: $ff
    rst $38                                       ; $66d3: $ff
    rst $38                                       ; $66d4: $ff
    rst $38                                       ; $66d5: $ff
    rst $38                                       ; $66d6: $ff
    rst $38                                       ; $66d7: $ff
    rst $38                                       ; $66d8: $ff
    rst $38                                       ; $66d9: $ff
    rst $38                                       ; $66da: $ff
    rst $38                                       ; $66db: $ff
    rst $38                                       ; $66dc: $ff
    rst $38                                       ; $66dd: $ff
    rst $38                                       ; $66de: $ff
    rst $38                                       ; $66df: $ff
    rst $38                                       ; $66e0: $ff
    rst $38                                       ; $66e1: $ff
    rst $38                                       ; $66e2: $ff
    rst $38                                       ; $66e3: $ff
    rst $38                                       ; $66e4: $ff
    rst $38                                       ; $66e5: $ff
    rst $38                                       ; $66e6: $ff
    rst $38                                       ; $66e7: $ff
    rst $38                                       ; $66e8: $ff
    rst $38                                       ; $66e9: $ff
    rst $38                                       ; $66ea: $ff
    rst $38                                       ; $66eb: $ff
    rst $38                                       ; $66ec: $ff
    rst $38                                       ; $66ed: $ff
    rst $38                                       ; $66ee: $ff
    rst $38                                       ; $66ef: $ff
    rst $38                                       ; $66f0: $ff
    rst $38                                       ; $66f1: $ff
    rst $38                                       ; $66f2: $ff
    rst $38                                       ; $66f3: $ff
    rst $38                                       ; $66f4: $ff
    rst $38                                       ; $66f5: $ff
    rst $38                                       ; $66f6: $ff
    rst $38                                       ; $66f7: $ff
    rst $38                                       ; $66f8: $ff
    rst $38                                       ; $66f9: $ff
    rst $38                                       ; $66fa: $ff
    rst $38                                       ; $66fb: $ff
    rst $38                                       ; $66fc: $ff
    rst $38                                       ; $66fd: $ff
    rst $38                                       ; $66fe: $ff
    rst $38                                       ; $66ff: $ff
    rst $38                                       ; $6700: $ff
    rst $38                                       ; $6701: $ff
    rst $38                                       ; $6702: $ff
    rst $38                                       ; $6703: $ff
    rst $38                                       ; $6704: $ff
    rst $38                                       ; $6705: $ff
    rst $38                                       ; $6706: $ff
    rst $38                                       ; $6707: $ff
    rst $38                                       ; $6708: $ff
    rst $38                                       ; $6709: $ff
    rst $38                                       ; $670a: $ff
    rst $38                                       ; $670b: $ff
    rst $38                                       ; $670c: $ff
    rst $38                                       ; $670d: $ff
    rst $38                                       ; $670e: $ff
    rst $38                                       ; $670f: $ff
    rst $38                                       ; $6710: $ff
    rst $38                                       ; $6711: $ff
    rst $38                                       ; $6712: $ff
    rst $38                                       ; $6713: $ff
    rst $38                                       ; $6714: $ff
    rst $38                                       ; $6715: $ff
    rst $38                                       ; $6716: $ff
    rst $38                                       ; $6717: $ff
    rst $38                                       ; $6718: $ff
    rst $38                                       ; $6719: $ff
    rst $38                                       ; $671a: $ff
    rst $38                                       ; $671b: $ff
    rst $38                                       ; $671c: $ff
    rst $38                                       ; $671d: $ff
    rst $38                                       ; $671e: $ff
    rst $38                                       ; $671f: $ff
    rst $38                                       ; $6720: $ff
    rst $38                                       ; $6721: $ff
    rst $38                                       ; $6722: $ff
    rst $38                                       ; $6723: $ff
    rst $38                                       ; $6724: $ff
    rst $38                                       ; $6725: $ff
    rst $38                                       ; $6726: $ff
    rst $38                                       ; $6727: $ff
    rst $38                                       ; $6728: $ff
    rst $38                                       ; $6729: $ff
    rst $38                                       ; $672a: $ff
    rst $38                                       ; $672b: $ff
    rst $38                                       ; $672c: $ff
    rst $38                                       ; $672d: $ff
    rst $38                                       ; $672e: $ff

Call_05e_672f:
    rst $38                                       ; $672f: $ff
    rst $38                                       ; $6730: $ff
    rst $38                                       ; $6731: $ff
    rst $38                                       ; $6732: $ff
    rst $38                                       ; $6733: $ff
    rst $38                                       ; $6734: $ff
    rst $38                                       ; $6735: $ff
    rst $38                                       ; $6736: $ff
    rst $38                                       ; $6737: $ff
    rst $38                                       ; $6738: $ff
    rst $38                                       ; $6739: $ff
    rst $38                                       ; $673a: $ff
    rst $38                                       ; $673b: $ff
    rst $38                                       ; $673c: $ff
    rst $38                                       ; $673d: $ff
    rst $38                                       ; $673e: $ff
    rst $38                                       ; $673f: $ff
    rst $38                                       ; $6740: $ff
    rst $38                                       ; $6741: $ff
    rst $38                                       ; $6742: $ff
    rst $38                                       ; $6743: $ff
    rst $38                                       ; $6744: $ff
    rst $38                                       ; $6745: $ff
    rst $38                                       ; $6746: $ff
    rst $38                                       ; $6747: $ff
    rst $38                                       ; $6748: $ff
    rst $38                                       ; $6749: $ff
    rst $38                                       ; $674a: $ff
    rst $38                                       ; $674b: $ff
    rst $38                                       ; $674c: $ff
    rst $38                                       ; $674d: $ff
    rst $38                                       ; $674e: $ff
    rst $38                                       ; $674f: $ff
    rst $38                                       ; $6750: $ff
    rst $38                                       ; $6751: $ff
    rst $38                                       ; $6752: $ff
    rst $38                                       ; $6753: $ff
    rst $38                                       ; $6754: $ff
    rst $38                                       ; $6755: $ff
    rst $38                                       ; $6756: $ff
    rst $38                                       ; $6757: $ff
    rst $38                                       ; $6758: $ff
    rst $38                                       ; $6759: $ff
    rst $38                                       ; $675a: $ff
    rst $38                                       ; $675b: $ff
    rst $38                                       ; $675c: $ff
    rst $38                                       ; $675d: $ff
    rst $38                                       ; $675e: $ff
    rst $38                                       ; $675f: $ff
    rst $38                                       ; $6760: $ff
    rst $38                                       ; $6761: $ff
    rst $38                                       ; $6762: $ff
    rst $38                                       ; $6763: $ff
    rst $38                                       ; $6764: $ff
    rst $38                                       ; $6765: $ff
    rst $38                                       ; $6766: $ff
    rst $38                                       ; $6767: $ff
    rst $38                                       ; $6768: $ff
    rst $38                                       ; $6769: $ff
    rst $38                                       ; $676a: $ff
    rst $38                                       ; $676b: $ff
    rst $38                                       ; $676c: $ff
    rst $38                                       ; $676d: $ff
    rst $38                                       ; $676e: $ff
    rst $38                                       ; $676f: $ff
    rst $38                                       ; $6770: $ff
    rst $38                                       ; $6771: $ff
    rst $38                                       ; $6772: $ff
    rst $38                                       ; $6773: $ff
    rst $38                                       ; $6774: $ff
    rst $38                                       ; $6775: $ff
    rst $38                                       ; $6776: $ff
    rst $38                                       ; $6777: $ff
    rst $38                                       ; $6778: $ff
    rst $38                                       ; $6779: $ff
    rst $38                                       ; $677a: $ff
    rst $38                                       ; $677b: $ff
    rst $38                                       ; $677c: $ff
    rst $38                                       ; $677d: $ff
    rst $38                                       ; $677e: $ff
    rst $38                                       ; $677f: $ff
    rst $38                                       ; $6780: $ff
    rst $38                                       ; $6781: $ff
    rst $38                                       ; $6782: $ff
    rst $38                                       ; $6783: $ff
    rst $38                                       ; $6784: $ff
    rst $38                                       ; $6785: $ff
    rst $38                                       ; $6786: $ff
    rst $38                                       ; $6787: $ff
    rst $38                                       ; $6788: $ff
    rst $38                                       ; $6789: $ff
    rst $38                                       ; $678a: $ff
    rst $38                                       ; $678b: $ff
    rst $38                                       ; $678c: $ff
    rst $38                                       ; $678d: $ff
    rst $38                                       ; $678e: $ff
    rst $38                                       ; $678f: $ff
    rst $38                                       ; $6790: $ff
    rst $38                                       ; $6791: $ff
    rst $38                                       ; $6792: $ff
    rst $38                                       ; $6793: $ff
    rst $38                                       ; $6794: $ff
    rst $38                                       ; $6795: $ff
    rst $38                                       ; $6796: $ff
    rst $38                                       ; $6797: $ff
    rst $38                                       ; $6798: $ff
    rst $38                                       ; $6799: $ff
    rst $38                                       ; $679a: $ff
    rst $38                                       ; $679b: $ff
    rst $38                                       ; $679c: $ff
    rst $38                                       ; $679d: $ff
    rst $38                                       ; $679e: $ff
    rst $38                                       ; $679f: $ff
    rst $38                                       ; $67a0: $ff
    rst $38                                       ; $67a1: $ff
    rst $38                                       ; $67a2: $ff
    rst $38                                       ; $67a3: $ff
    rst $38                                       ; $67a4: $ff
    rst $38                                       ; $67a5: $ff
    rst $38                                       ; $67a6: $ff
    rst $38                                       ; $67a7: $ff
    rst $38                                       ; $67a8: $ff
    rst $38                                       ; $67a9: $ff
    rst $38                                       ; $67aa: $ff
    rst $38                                       ; $67ab: $ff
    rst $38                                       ; $67ac: $ff
    rst $38                                       ; $67ad: $ff
    rst $38                                       ; $67ae: $ff
    rst $38                                       ; $67af: $ff
    rst $38                                       ; $67b0: $ff
    rst $38                                       ; $67b1: $ff
    rst $38                                       ; $67b2: $ff
    rst $38                                       ; $67b3: $ff
    rst $38                                       ; $67b4: $ff
    rst $38                                       ; $67b5: $ff
    rst $38                                       ; $67b6: $ff
    rst $38                                       ; $67b7: $ff
    rst $38                                       ; $67b8: $ff
    rst $38                                       ; $67b9: $ff
    rst $38                                       ; $67ba: $ff
    rst $38                                       ; $67bb: $ff
    rst $38                                       ; $67bc: $ff
    rst $38                                       ; $67bd: $ff
    rst $38                                       ; $67be: $ff
    rst $38                                       ; $67bf: $ff
    rst $38                                       ; $67c0: $ff
    rst $38                                       ; $67c1: $ff
    rst $38                                       ; $67c2: $ff
    rst $38                                       ; $67c3: $ff
    rst $38                                       ; $67c4: $ff
    rst $38                                       ; $67c5: $ff
    rst $38                                       ; $67c6: $ff
    rst $38                                       ; $67c7: $ff
    rst $38                                       ; $67c8: $ff
    rst $38                                       ; $67c9: $ff
    rst $38                                       ; $67ca: $ff
    rst $38                                       ; $67cb: $ff
    rst $38                                       ; $67cc: $ff
    rst $38                                       ; $67cd: $ff
    rst $38                                       ; $67ce: $ff
    rst $38                                       ; $67cf: $ff
    rst $38                                       ; $67d0: $ff
    rst $38                                       ; $67d1: $ff
    rst $38                                       ; $67d2: $ff
    rst $38                                       ; $67d3: $ff
    rst $38                                       ; $67d4: $ff
    rst $38                                       ; $67d5: $ff
    rst $38                                       ; $67d6: $ff
    rst $38                                       ; $67d7: $ff
    rst $38                                       ; $67d8: $ff
    rst $38                                       ; $67d9: $ff
    rst $38                                       ; $67da: $ff
    rst $38                                       ; $67db: $ff
    rst $38                                       ; $67dc: $ff
    rst $38                                       ; $67dd: $ff
    rst $38                                       ; $67de: $ff
    rst $38                                       ; $67df: $ff
    rst $38                                       ; $67e0: $ff
    rst $38                                       ; $67e1: $ff
    rst $38                                       ; $67e2: $ff
    rst $38                                       ; $67e3: $ff
    rst $38                                       ; $67e4: $ff
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    rst $38                                       ; $67e7: $ff
    rst $38                                       ; $67e8: $ff
    rst $38                                       ; $67e9: $ff
    rst $38                                       ; $67ea: $ff
    rst $38                                       ; $67eb: $ff
    rst $38                                       ; $67ec: $ff
    rst $38                                       ; $67ed: $ff
    rst $38                                       ; $67ee: $ff
    rst $38                                       ; $67ef: $ff
    rst $38                                       ; $67f0: $ff
    rst $38                                       ; $67f1: $ff
    rst $38                                       ; $67f2: $ff
    rst $38                                       ; $67f3: $ff
    rst $38                                       ; $67f4: $ff
    rst $38                                       ; $67f5: $ff
    rst $38                                       ; $67f6: $ff
    rst $38                                       ; $67f7: $ff
    rst $38                                       ; $67f8: $ff
    rst $38                                       ; $67f9: $ff
    rst $38                                       ; $67fa: $ff
    rst $38                                       ; $67fb: $ff
    rst $38                                       ; $67fc: $ff

Jump_05e_67fd:
    rst $38                                       ; $67fd: $ff
    rst $38                                       ; $67fe: $ff
    rst $38                                       ; $67ff: $ff
    rst $38                                       ; $6800: $ff
    rst $38                                       ; $6801: $ff
    rst $38                                       ; $6802: $ff
    rst $38                                       ; $6803: $ff
    rst $38                                       ; $6804: $ff
    rst $38                                       ; $6805: $ff
    rst $38                                       ; $6806: $ff
    rst $38                                       ; $6807: $ff
    rst $38                                       ; $6808: $ff
    rst $38                                       ; $6809: $ff
    rst $38                                       ; $680a: $ff
    rst $38                                       ; $680b: $ff
    rst $38                                       ; $680c: $ff
    rst $38                                       ; $680d: $ff
    rst $38                                       ; $680e: $ff
    rst $38                                       ; $680f: $ff
    rst $38                                       ; $6810: $ff
    rst $38                                       ; $6811: $ff
    rst $38                                       ; $6812: $ff
    rst $38                                       ; $6813: $ff
    rst $38                                       ; $6814: $ff
    rst $38                                       ; $6815: $ff
    rst $38                                       ; $6816: $ff
    rst $38                                       ; $6817: $ff
    rst $38                                       ; $6818: $ff
    rst $38                                       ; $6819: $ff
    rst $38                                       ; $681a: $ff
    rst $38                                       ; $681b: $ff
    rst $38                                       ; $681c: $ff
    rst $38                                       ; $681d: $ff
    rst $38                                       ; $681e: $ff
    rst $38                                       ; $681f: $ff
    rst $38                                       ; $6820: $ff
    rst $38                                       ; $6821: $ff
    rst $38                                       ; $6822: $ff
    rst $38                                       ; $6823: $ff
    rst $38                                       ; $6824: $ff
    rst $38                                       ; $6825: $ff
    rst $38                                       ; $6826: $ff
    rst $38                                       ; $6827: $ff
    rst $38                                       ; $6828: $ff
    rst $38                                       ; $6829: $ff
    rst $38                                       ; $682a: $ff
    rst $38                                       ; $682b: $ff
    rst $38                                       ; $682c: $ff
    rst $38                                       ; $682d: $ff
    rst $38                                       ; $682e: $ff
    rst $38                                       ; $682f: $ff
    rst $38                                       ; $6830: $ff
    rst $38                                       ; $6831: $ff
    rst $38                                       ; $6832: $ff
    rst $38                                       ; $6833: $ff
    rst $38                                       ; $6834: $ff
    rst $38                                       ; $6835: $ff
    rst $38                                       ; $6836: $ff
    rst $38                                       ; $6837: $ff
    rst $38                                       ; $6838: $ff
    rst $38                                       ; $6839: $ff
    rst $38                                       ; $683a: $ff
    rst $38                                       ; $683b: $ff
    rst $38                                       ; $683c: $ff
    rst $38                                       ; $683d: $ff
    rst $38                                       ; $683e: $ff
    rst $38                                       ; $683f: $ff
    rst $38                                       ; $6840: $ff
    rst $38                                       ; $6841: $ff
    rst $38                                       ; $6842: $ff
    rst $38                                       ; $6843: $ff
    rst $38                                       ; $6844: $ff
    rst $38                                       ; $6845: $ff
    rst $38                                       ; $6846: $ff
    rst $38                                       ; $6847: $ff
    rst $38                                       ; $6848: $ff
    rst $38                                       ; $6849: $ff
    rst $38                                       ; $684a: $ff
    rst $38                                       ; $684b: $ff
    rst $38                                       ; $684c: $ff
    rst $38                                       ; $684d: $ff
    rst $38                                       ; $684e: $ff
    rst $38                                       ; $684f: $ff
    rst $38                                       ; $6850: $ff
    rst $38                                       ; $6851: $ff
    rst $38                                       ; $6852: $ff
    rst $38                                       ; $6853: $ff
    rst $38                                       ; $6854: $ff
    rst $38                                       ; $6855: $ff
    rst $38                                       ; $6856: $ff
    rst $38                                       ; $6857: $ff
    rst $38                                       ; $6858: $ff
    rst $38                                       ; $6859: $ff
    rst $38                                       ; $685a: $ff
    rst $38                                       ; $685b: $ff
    rst $38                                       ; $685c: $ff
    rst $38                                       ; $685d: $ff
    rst $38                                       ; $685e: $ff
    rst $38                                       ; $685f: $ff
    rst $38                                       ; $6860: $ff
    rst $38                                       ; $6861: $ff
    rst $38                                       ; $6862: $ff
    rst $38                                       ; $6863: $ff
    rst $38                                       ; $6864: $ff
    rst $38                                       ; $6865: $ff
    rst $38                                       ; $6866: $ff
    rst $38                                       ; $6867: $ff
    rst $38                                       ; $6868: $ff
    rst $38                                       ; $6869: $ff
    rst $38                                       ; $686a: $ff
    rst $38                                       ; $686b: $ff
    rst $38                                       ; $686c: $ff
    rst $38                                       ; $686d: $ff
    rst $38                                       ; $686e: $ff
    rst $38                                       ; $686f: $ff
    rst $38                                       ; $6870: $ff
    rst $38                                       ; $6871: $ff
    rst $38                                       ; $6872: $ff
    rst $38                                       ; $6873: $ff
    rst $38                                       ; $6874: $ff
    rst $38                                       ; $6875: $ff
    rst $38                                       ; $6876: $ff
    rst $38                                       ; $6877: $ff
    rst $38                                       ; $6878: $ff
    rst $38                                       ; $6879: $ff
    rst $38                                       ; $687a: $ff
    rst $38                                       ; $687b: $ff
    rst $38                                       ; $687c: $ff
    rst $38                                       ; $687d: $ff
    rst $38                                       ; $687e: $ff
    rst $38                                       ; $687f: $ff
    rst $38                                       ; $6880: $ff
    rst $38                                       ; $6881: $ff
    rst $38                                       ; $6882: $ff
    rst $38                                       ; $6883: $ff
    rst $38                                       ; $6884: $ff
    rst $38                                       ; $6885: $ff
    rst $38                                       ; $6886: $ff
    rst $38                                       ; $6887: $ff
    rst $38                                       ; $6888: $ff
    rst $38                                       ; $6889: $ff
    rst $38                                       ; $688a: $ff
    rst $38                                       ; $688b: $ff
    rst $38                                       ; $688c: $ff
    rst $38                                       ; $688d: $ff
    rst $38                                       ; $688e: $ff
    rst $38                                       ; $688f: $ff
    rst $38                                       ; $6890: $ff
    rst $38                                       ; $6891: $ff
    rst $38                                       ; $6892: $ff
    rst $38                                       ; $6893: $ff
    rst $38                                       ; $6894: $ff
    rst $38                                       ; $6895: $ff
    rst $38                                       ; $6896: $ff
    rst $38                                       ; $6897: $ff
    rst $38                                       ; $6898: $ff
    rst $38                                       ; $6899: $ff
    rst $38                                       ; $689a: $ff
    rst $38                                       ; $689b: $ff
    rst $38                                       ; $689c: $ff
    rst $38                                       ; $689d: $ff
    rst $38                                       ; $689e: $ff
    rst $38                                       ; $689f: $ff
    rst $38                                       ; $68a0: $ff
    rst $38                                       ; $68a1: $ff
    rst $38                                       ; $68a2: $ff
    rst $38                                       ; $68a3: $ff
    rst $38                                       ; $68a4: $ff
    rst $38                                       ; $68a5: $ff
    rst $38                                       ; $68a6: $ff
    rst $38                                       ; $68a7: $ff
    rst $38                                       ; $68a8: $ff
    rst $38                                       ; $68a9: $ff
    rst $38                                       ; $68aa: $ff
    rst $38                                       ; $68ab: $ff
    rst $38                                       ; $68ac: $ff
    rst $38                                       ; $68ad: $ff
    rst $38                                       ; $68ae: $ff
    rst $38                                       ; $68af: $ff
    rst $38                                       ; $68b0: $ff
    rst $38                                       ; $68b1: $ff
    rst $38                                       ; $68b2: $ff
    rst $38                                       ; $68b3: $ff
    rst $38                                       ; $68b4: $ff
    rst $38                                       ; $68b5: $ff
    rst $38                                       ; $68b6: $ff
    rst $38                                       ; $68b7: $ff
    rst $38                                       ; $68b8: $ff
    rst $38                                       ; $68b9: $ff
    rst $38                                       ; $68ba: $ff
    rst $38                                       ; $68bb: $ff
    rst $38                                       ; $68bc: $ff
    rst $38                                       ; $68bd: $ff
    rst $38                                       ; $68be: $ff
    rst $38                                       ; $68bf: $ff
    rst $38                                       ; $68c0: $ff
    rst $38                                       ; $68c1: $ff
    rst $38                                       ; $68c2: $ff
    rst $38                                       ; $68c3: $ff
    rst $38                                       ; $68c4: $ff
    rst $38                                       ; $68c5: $ff
    rst $38                                       ; $68c6: $ff
    rst $38                                       ; $68c7: $ff
    rst $38                                       ; $68c8: $ff
    rst $38                                       ; $68c9: $ff
    rst $38                                       ; $68ca: $ff
    rst $38                                       ; $68cb: $ff
    rst $38                                       ; $68cc: $ff
    rst $38                                       ; $68cd: $ff
    rst $38                                       ; $68ce: $ff
    rst $38                                       ; $68cf: $ff
    rst $38                                       ; $68d0: $ff
    rst $38                                       ; $68d1: $ff
    rst $38                                       ; $68d2: $ff
    rst $38                                       ; $68d3: $ff
    rst $38                                       ; $68d4: $ff
    rst $38                                       ; $68d5: $ff
    rst $38                                       ; $68d6: $ff
    rst $38                                       ; $68d7: $ff
    rst $38                                       ; $68d8: $ff
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    rst $38                                       ; $68dc: $ff
    rst $38                                       ; $68dd: $ff
    rst $38                                       ; $68de: $ff
    rst $38                                       ; $68df: $ff
    rst $38                                       ; $68e0: $ff
    rst $38                                       ; $68e1: $ff
    rst $38                                       ; $68e2: $ff
    rst $38                                       ; $68e3: $ff
    rst $38                                       ; $68e4: $ff
    rst $38                                       ; $68e5: $ff
    rst $38                                       ; $68e6: $ff
    rst $38                                       ; $68e7: $ff
    rst $38                                       ; $68e8: $ff
    rst $38                                       ; $68e9: $ff
    rst $38                                       ; $68ea: $ff
    rst $38                                       ; $68eb: $ff
    rst $38                                       ; $68ec: $ff
    rst $38                                       ; $68ed: $ff
    rst $38                                       ; $68ee: $ff
    rst $38                                       ; $68ef: $ff
    rst $38                                       ; $68f0: $ff
    rst $38                                       ; $68f1: $ff
    rst $38                                       ; $68f2: $ff
    rst $38                                       ; $68f3: $ff
    rst $38                                       ; $68f4: $ff
    rst $38                                       ; $68f5: $ff
    rst $38                                       ; $68f6: $ff
    rst $38                                       ; $68f7: $ff
    rst $38                                       ; $68f8: $ff
    rst $38                                       ; $68f9: $ff
    rst $38                                       ; $68fa: $ff
    rst $38                                       ; $68fb: $ff
    rst $38                                       ; $68fc: $ff
    rst $38                                       ; $68fd: $ff
    rst $38                                       ; $68fe: $ff
    rst $38                                       ; $68ff: $ff
    rst $38                                       ; $6900: $ff
    rst $38                                       ; $6901: $ff
    rst $38                                       ; $6902: $ff
    rst $38                                       ; $6903: $ff
    rst $38                                       ; $6904: $ff
    rst $38                                       ; $6905: $ff
    rst $38                                       ; $6906: $ff
    rst $38                                       ; $6907: $ff
    rst $38                                       ; $6908: $ff
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    rst $38                                       ; $690d: $ff
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    rst $38                                       ; $6910: $ff
    rst $38                                       ; $6911: $ff
    rst $38                                       ; $6912: $ff
    rst $38                                       ; $6913: $ff
    rst $38                                       ; $6914: $ff
    rst $38                                       ; $6915: $ff
    rst $38                                       ; $6916: $ff
    rst $38                                       ; $6917: $ff
    rst $38                                       ; $6918: $ff
    rst $38                                       ; $6919: $ff
    rst $38                                       ; $691a: $ff
    rst $38                                       ; $691b: $ff
    rst $38                                       ; $691c: $ff
    rst $38                                       ; $691d: $ff
    rst $38                                       ; $691e: $ff
    rst $38                                       ; $691f: $ff
    rst $38                                       ; $6920: $ff
    rst $38                                       ; $6921: $ff
    rst $38                                       ; $6922: $ff
    rst $38                                       ; $6923: $ff
    rst $38                                       ; $6924: $ff
    rst $38                                       ; $6925: $ff
    rst $38                                       ; $6926: $ff
    rst $38                                       ; $6927: $ff
    rst $38                                       ; $6928: $ff
    rst $38                                       ; $6929: $ff
    rst $38                                       ; $692a: $ff
    rst $38                                       ; $692b: $ff
    rst $38                                       ; $692c: $ff
    rst $38                                       ; $692d: $ff
    rst $38                                       ; $692e: $ff
    rst $38                                       ; $692f: $ff
    rst $38                                       ; $6930: $ff
    rst $38                                       ; $6931: $ff
    rst $38                                       ; $6932: $ff
    rst $38                                       ; $6933: $ff
    rst $38                                       ; $6934: $ff
    rst $38                                       ; $6935: $ff
    rst $38                                       ; $6936: $ff
    rst $38                                       ; $6937: $ff
    rst $38                                       ; $6938: $ff
    rst $38                                       ; $6939: $ff
    rst $38                                       ; $693a: $ff
    rst $38                                       ; $693b: $ff
    rst $38                                       ; $693c: $ff
    rst $38                                       ; $693d: $ff
    rst $38                                       ; $693e: $ff
    rst $38                                       ; $693f: $ff
    rst $38                                       ; $6940: $ff
    rst $38                                       ; $6941: $ff
    rst $38                                       ; $6942: $ff
    rst $38                                       ; $6943: $ff
    rst $38                                       ; $6944: $ff
    rst $38                                       ; $6945: $ff
    rst $38                                       ; $6946: $ff
    rst $38                                       ; $6947: $ff
    rst $38                                       ; $6948: $ff
    rst $38                                       ; $6949: $ff
    rst $38                                       ; $694a: $ff
    rst $38                                       ; $694b: $ff
    rst $38                                       ; $694c: $ff
    rst $38                                       ; $694d: $ff
    rst $38                                       ; $694e: $ff
    rst $38                                       ; $694f: $ff
    rst $38                                       ; $6950: $ff
    rst $38                                       ; $6951: $ff
    rst $38                                       ; $6952: $ff
    rst $38                                       ; $6953: $ff
    rst $38                                       ; $6954: $ff
    rst $38                                       ; $6955: $ff
    rst $38                                       ; $6956: $ff
    rst $38                                       ; $6957: $ff
    rst $38                                       ; $6958: $ff
    rst $38                                       ; $6959: $ff
    rst $38                                       ; $695a: $ff
    rst $38                                       ; $695b: $ff
    rst $38                                       ; $695c: $ff
    rst $38                                       ; $695d: $ff
    rst $38                                       ; $695e: $ff
    rst $38                                       ; $695f: $ff
    rst $38                                       ; $6960: $ff
    rst $38                                       ; $6961: $ff
    rst $38                                       ; $6962: $ff
    rst $38                                       ; $6963: $ff
    rst $38                                       ; $6964: $ff
    rst $38                                       ; $6965: $ff
    rst $38                                       ; $6966: $ff
    rst $38                                       ; $6967: $ff
    rst $38                                       ; $6968: $ff
    rst $38                                       ; $6969: $ff
    rst $38                                       ; $696a: $ff
    rst $38                                       ; $696b: $ff
    rst $38                                       ; $696c: $ff
    rst $38                                       ; $696d: $ff
    rst $38                                       ; $696e: $ff
    rst $38                                       ; $696f: $ff
    rst $38                                       ; $6970: $ff
    rst $38                                       ; $6971: $ff
    rst $38                                       ; $6972: $ff
    rst $38                                       ; $6973: $ff
    rst $38                                       ; $6974: $ff
    rst $38                                       ; $6975: $ff
    rst $38                                       ; $6976: $ff
    rst $38                                       ; $6977: $ff
    rst $38                                       ; $6978: $ff
    rst $38                                       ; $6979: $ff
    rst $38                                       ; $697a: $ff
    rst $38                                       ; $697b: $ff
    rst $38                                       ; $697c: $ff
    rst $38                                       ; $697d: $ff
    rst $38                                       ; $697e: $ff
    rst $38                                       ; $697f: $ff
    rst $38                                       ; $6980: $ff
    rst $38                                       ; $6981: $ff
    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    rst $38                                       ; $6984: $ff
    rst $38                                       ; $6985: $ff
    rst $38                                       ; $6986: $ff
    rst $38                                       ; $6987: $ff
    rst $38                                       ; $6988: $ff
    rst $38                                       ; $6989: $ff
    rst $38                                       ; $698a: $ff
    rst $38                                       ; $698b: $ff
    rst $38                                       ; $698c: $ff
    rst $38                                       ; $698d: $ff
    rst $38                                       ; $698e: $ff
    rst $38                                       ; $698f: $ff
    rst $38                                       ; $6990: $ff
    rst $38                                       ; $6991: $ff
    rst $38                                       ; $6992: $ff
    rst $38                                       ; $6993: $ff
    rst $38                                       ; $6994: $ff
    rst $38                                       ; $6995: $ff
    rst $38                                       ; $6996: $ff
    rst $38                                       ; $6997: $ff
    rst $38                                       ; $6998: $ff
    rst $38                                       ; $6999: $ff
    rst $38                                       ; $699a: $ff
    rst $38                                       ; $699b: $ff
    rst $38                                       ; $699c: $ff
    rst $38                                       ; $699d: $ff
    rst $38                                       ; $699e: $ff
    rst $38                                       ; $699f: $ff
    rst $38                                       ; $69a0: $ff
    rst $38                                       ; $69a1: $ff
    rst $38                                       ; $69a2: $ff
    rst $38                                       ; $69a3: $ff
    rst $38                                       ; $69a4: $ff
    rst $38                                       ; $69a5: $ff
    rst $38                                       ; $69a6: $ff
    rst $38                                       ; $69a7: $ff
    rst $38                                       ; $69a8: $ff
    rst $38                                       ; $69a9: $ff
    rst $38                                       ; $69aa: $ff
    rst $38                                       ; $69ab: $ff
    rst $38                                       ; $69ac: $ff
    rst $38                                       ; $69ad: $ff
    rst $38                                       ; $69ae: $ff
    rst $38                                       ; $69af: $ff
    rst $38                                       ; $69b0: $ff
    rst $38                                       ; $69b1: $ff
    rst $38                                       ; $69b2: $ff
    rst $38                                       ; $69b3: $ff
    rst $38                                       ; $69b4: $ff
    rst $38                                       ; $69b5: $ff
    rst $38                                       ; $69b6: $ff
    rst $38                                       ; $69b7: $ff
    rst $38                                       ; $69b8: $ff
    rst $38                                       ; $69b9: $ff
    rst $38                                       ; $69ba: $ff
    rst $38                                       ; $69bb: $ff
    rst $38                                       ; $69bc: $ff
    rst $38                                       ; $69bd: $ff
    rst $38                                       ; $69be: $ff
    rst $38                                       ; $69bf: $ff
    rst $38                                       ; $69c0: $ff
    rst $38                                       ; $69c1: $ff
    rst $38                                       ; $69c2: $ff
    rst $38                                       ; $69c3: $ff
    rst $38                                       ; $69c4: $ff
    rst $38                                       ; $69c5: $ff
    rst $38                                       ; $69c6: $ff
    rst $38                                       ; $69c7: $ff
    rst $38                                       ; $69c8: $ff
    rst $38                                       ; $69c9: $ff
    rst $38                                       ; $69ca: $ff
    rst $38                                       ; $69cb: $ff
    rst $38                                       ; $69cc: $ff
    rst $38                                       ; $69cd: $ff
    rst $38                                       ; $69ce: $ff
    rst $38                                       ; $69cf: $ff
    rst $38                                       ; $69d0: $ff
    rst $38                                       ; $69d1: $ff
    rst $38                                       ; $69d2: $ff
    rst $38                                       ; $69d3: $ff
    rst $38                                       ; $69d4: $ff
    rst $38                                       ; $69d5: $ff
    rst $38                                       ; $69d6: $ff
    rst $38                                       ; $69d7: $ff
    rst $38                                       ; $69d8: $ff
    rst $38                                       ; $69d9: $ff
    rst $38                                       ; $69da: $ff
    rst $38                                       ; $69db: $ff
    rst $38                                       ; $69dc: $ff
    rst $38                                       ; $69dd: $ff
    rst $38                                       ; $69de: $ff
    rst $38                                       ; $69df: $ff
    rst $38                                       ; $69e0: $ff
    rst $38                                       ; $69e1: $ff
    rst $38                                       ; $69e2: $ff
    rst $38                                       ; $69e3: $ff
    rst $38                                       ; $69e4: $ff
    rst $38                                       ; $69e5: $ff
    rst $38                                       ; $69e6: $ff
    rst $38                                       ; $69e7: $ff
    rst $38                                       ; $69e8: $ff
    rst $38                                       ; $69e9: $ff
    rst $38                                       ; $69ea: $ff
    rst $38                                       ; $69eb: $ff
    rst $38                                       ; $69ec: $ff
    rst $38                                       ; $69ed: $ff
    rst $38                                       ; $69ee: $ff
    rst $38                                       ; $69ef: $ff
    rst $38                                       ; $69f0: $ff
    rst $38                                       ; $69f1: $ff
    rst $38                                       ; $69f2: $ff
    rst $38                                       ; $69f3: $ff
    rst $38                                       ; $69f4: $ff
    rst $38                                       ; $69f5: $ff
    rst $38                                       ; $69f6: $ff
    rst $38                                       ; $69f7: $ff
    rst $38                                       ; $69f8: $ff
    rst $38                                       ; $69f9: $ff
    rst $38                                       ; $69fa: $ff
    rst $38                                       ; $69fb: $ff
    rst $38                                       ; $69fc: $ff
    rst $38                                       ; $69fd: $ff
    rst $38                                       ; $69fe: $ff
    rst $38                                       ; $69ff: $ff
    rst $38                                       ; $6a00: $ff
    rst $38                                       ; $6a01: $ff
    rst $38                                       ; $6a02: $ff
    rst $38                                       ; $6a03: $ff
    rst $38                                       ; $6a04: $ff
    rst $38                                       ; $6a05: $ff
    rst $38                                       ; $6a06: $ff
    rst $38                                       ; $6a07: $ff
    rst $38                                       ; $6a08: $ff
    rst $38                                       ; $6a09: $ff
    rst $38                                       ; $6a0a: $ff
    rst $38                                       ; $6a0b: $ff
    rst $38                                       ; $6a0c: $ff
    rst $38                                       ; $6a0d: $ff
    rst $38                                       ; $6a0e: $ff
    rst $38                                       ; $6a0f: $ff
    rst $38                                       ; $6a10: $ff
    rst $38                                       ; $6a11: $ff
    rst $38                                       ; $6a12: $ff
    rst $38                                       ; $6a13: $ff
    rst $38                                       ; $6a14: $ff
    rst $38                                       ; $6a15: $ff
    rst $38                                       ; $6a16: $ff
    rst $38                                       ; $6a17: $ff
    rst $38                                       ; $6a18: $ff
    rst $38                                       ; $6a19: $ff
    rst $38                                       ; $6a1a: $ff
    rst $38                                       ; $6a1b: $ff
    rst $38                                       ; $6a1c: $ff
    rst $38                                       ; $6a1d: $ff
    rst $38                                       ; $6a1e: $ff
    rst $38                                       ; $6a1f: $ff
    rst $38                                       ; $6a20: $ff
    rst $38                                       ; $6a21: $ff
    rst $38                                       ; $6a22: $ff
    rst $38                                       ; $6a23: $ff
    rst $38                                       ; $6a24: $ff
    rst $38                                       ; $6a25: $ff
    rst $38                                       ; $6a26: $ff
    rst $38                                       ; $6a27: $ff
    rst $38                                       ; $6a28: $ff
    rst $38                                       ; $6a29: $ff
    rst $38                                       ; $6a2a: $ff
    rst $38                                       ; $6a2b: $ff
    rst $38                                       ; $6a2c: $ff
    rst $38                                       ; $6a2d: $ff
    rst $38                                       ; $6a2e: $ff
    rst $38                                       ; $6a2f: $ff
    rst $38                                       ; $6a30: $ff
    rst $38                                       ; $6a31: $ff
    rst $38                                       ; $6a32: $ff
    rst $38                                       ; $6a33: $ff
    rst $38                                       ; $6a34: $ff
    rst $38                                       ; $6a35: $ff
    rst $38                                       ; $6a36: $ff
    rst $38                                       ; $6a37: $ff
    rst $38                                       ; $6a38: $ff
    rst $38                                       ; $6a39: $ff
    rst $38                                       ; $6a3a: $ff
    rst $38                                       ; $6a3b: $ff
    rst $38                                       ; $6a3c: $ff
    rst $38                                       ; $6a3d: $ff
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    rst $38                                       ; $6a40: $ff
    rst $38                                       ; $6a41: $ff
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
    rst $38                                       ; $6a44: $ff
    rst $38                                       ; $6a45: $ff
    rst $38                                       ; $6a46: $ff
    rst $38                                       ; $6a47: $ff
    rst $38                                       ; $6a48: $ff
    rst $38                                       ; $6a49: $ff
    rst $38                                       ; $6a4a: $ff
    rst $38                                       ; $6a4b: $ff
    rst $38                                       ; $6a4c: $ff
    rst $38                                       ; $6a4d: $ff
    rst $38                                       ; $6a4e: $ff
    rst $38                                       ; $6a4f: $ff
    rst $38                                       ; $6a50: $ff
    rst $38                                       ; $6a51: $ff
    rst $38                                       ; $6a52: $ff
    rst $38                                       ; $6a53: $ff
    rst $38                                       ; $6a54: $ff
    rst $38                                       ; $6a55: $ff
    rst $38                                       ; $6a56: $ff
    rst $38                                       ; $6a57: $ff
    rst $38                                       ; $6a58: $ff
    rst $38                                       ; $6a59: $ff
    rst $38                                       ; $6a5a: $ff
    rst $38                                       ; $6a5b: $ff
    rst $38                                       ; $6a5c: $ff
    rst $38                                       ; $6a5d: $ff
    rst $38                                       ; $6a5e: $ff
    rst $38                                       ; $6a5f: $ff
    rst $38                                       ; $6a60: $ff
    rst $38                                       ; $6a61: $ff
    rst $38                                       ; $6a62: $ff
    rst $38                                       ; $6a63: $ff
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
    rst $38                                       ; $6a66: $ff
    rst $38                                       ; $6a67: $ff
    rst $38                                       ; $6a68: $ff
    rst $38                                       ; $6a69: $ff
    rst $38                                       ; $6a6a: $ff
    rst $38                                       ; $6a6b: $ff
    rst $38                                       ; $6a6c: $ff
    rst $38                                       ; $6a6d: $ff
    rst $38                                       ; $6a6e: $ff
    rst $38                                       ; $6a6f: $ff
    rst $38                                       ; $6a70: $ff
    rst $38                                       ; $6a71: $ff
    rst $38                                       ; $6a72: $ff
    rst $38                                       ; $6a73: $ff
    rst $38                                       ; $6a74: $ff
    rst $38                                       ; $6a75: $ff
    rst $38                                       ; $6a76: $ff
    rst $38                                       ; $6a77: $ff
    rst $38                                       ; $6a78: $ff
    rst $38                                       ; $6a79: $ff
    rst $38                                       ; $6a7a: $ff
    rst $38                                       ; $6a7b: $ff
    rst $38                                       ; $6a7c: $ff
    rst $38                                       ; $6a7d: $ff
    rst $38                                       ; $6a7e: $ff
    rst $38                                       ; $6a7f: $ff
    rst $38                                       ; $6a80: $ff
    rst $38                                       ; $6a81: $ff
    rst $38                                       ; $6a82: $ff
    rst $38                                       ; $6a83: $ff
    rst $38                                       ; $6a84: $ff
    rst $38                                       ; $6a85: $ff

Call_05e_6a86:
    rst $38                                       ; $6a86: $ff
    rst $38                                       ; $6a87: $ff
    rst $38                                       ; $6a88: $ff
    rst $38                                       ; $6a89: $ff
    rst $38                                       ; $6a8a: $ff
    rst $38                                       ; $6a8b: $ff
    rst $38                                       ; $6a8c: $ff
    rst $38                                       ; $6a8d: $ff
    rst $38                                       ; $6a8e: $ff
    rst $38                                       ; $6a8f: $ff
    rst $38                                       ; $6a90: $ff
    rst $38                                       ; $6a91: $ff
    rst $38                                       ; $6a92: $ff
    rst $38                                       ; $6a93: $ff
    rst $38                                       ; $6a94: $ff
    rst $38                                       ; $6a95: $ff
    rst $38                                       ; $6a96: $ff
    rst $38                                       ; $6a97: $ff
    rst $38                                       ; $6a98: $ff
    rst $38                                       ; $6a99: $ff
    rst $38                                       ; $6a9a: $ff
    rst $38                                       ; $6a9b: $ff
    rst $38                                       ; $6a9c: $ff
    rst $38                                       ; $6a9d: $ff
    rst $38                                       ; $6a9e: $ff
    rst $38                                       ; $6a9f: $ff
    rst $38                                       ; $6aa0: $ff
    rst $38                                       ; $6aa1: $ff
    rst $38                                       ; $6aa2: $ff

Call_05e_6aa3:
    rst $38                                       ; $6aa3: $ff
    rst $38                                       ; $6aa4: $ff
    rst $38                                       ; $6aa5: $ff
    rst $38                                       ; $6aa6: $ff
    rst $38                                       ; $6aa7: $ff
    rst $38                                       ; $6aa8: $ff
    rst $38                                       ; $6aa9: $ff
    rst $38                                       ; $6aaa: $ff
    rst $38                                       ; $6aab: $ff
    rst $38                                       ; $6aac: $ff
    rst $38                                       ; $6aad: $ff
    rst $38                                       ; $6aae: $ff
    rst $38                                       ; $6aaf: $ff
    rst $38                                       ; $6ab0: $ff
    rst $38                                       ; $6ab1: $ff
    rst $38                                       ; $6ab2: $ff
    rst $38                                       ; $6ab3: $ff
    rst $38                                       ; $6ab4: $ff
    rst $38                                       ; $6ab5: $ff
    rst $38                                       ; $6ab6: $ff
    rst $38                                       ; $6ab7: $ff
    rst $38                                       ; $6ab8: $ff
    rst $38                                       ; $6ab9: $ff
    rst $38                                       ; $6aba: $ff
    rst $38                                       ; $6abb: $ff
    rst $38                                       ; $6abc: $ff
    rst $38                                       ; $6abd: $ff
    rst $38                                       ; $6abe: $ff
    rst $38                                       ; $6abf: $ff
    rst $38                                       ; $6ac0: $ff
    rst $38                                       ; $6ac1: $ff
    rst $38                                       ; $6ac2: $ff
    rst $38                                       ; $6ac3: $ff
    rst $38                                       ; $6ac4: $ff
    rst $38                                       ; $6ac5: $ff
    rst $38                                       ; $6ac6: $ff
    rst $38                                       ; $6ac7: $ff
    rst $38                                       ; $6ac8: $ff
    rst $38                                       ; $6ac9: $ff
    rst $38                                       ; $6aca: $ff
    rst $38                                       ; $6acb: $ff
    rst $38                                       ; $6acc: $ff
    rst $38                                       ; $6acd: $ff
    rst $38                                       ; $6ace: $ff
    rst $38                                       ; $6acf: $ff
    rst $38                                       ; $6ad0: $ff
    rst $38                                       ; $6ad1: $ff
    rst $38                                       ; $6ad2: $ff
    rst $38                                       ; $6ad3: $ff
    rst $38                                       ; $6ad4: $ff
    rst $38                                       ; $6ad5: $ff
    rst $38                                       ; $6ad6: $ff
    rst $38                                       ; $6ad7: $ff
    rst $38                                       ; $6ad8: $ff
    rst $38                                       ; $6ad9: $ff
    rst $38                                       ; $6ada: $ff
    rst $38                                       ; $6adb: $ff
    rst $38                                       ; $6adc: $ff
    rst $38                                       ; $6add: $ff
    rst $38                                       ; $6ade: $ff
    rst $38                                       ; $6adf: $ff
    rst $38                                       ; $6ae0: $ff
    rst $38                                       ; $6ae1: $ff
    rst $38                                       ; $6ae2: $ff
    rst $38                                       ; $6ae3: $ff
    rst $38                                       ; $6ae4: $ff
    rst $38                                       ; $6ae5: $ff
    rst $38                                       ; $6ae6: $ff
    rst $38                                       ; $6ae7: $ff
    rst $38                                       ; $6ae8: $ff
    rst $38                                       ; $6ae9: $ff
    rst $38                                       ; $6aea: $ff
    rst $38                                       ; $6aeb: $ff
    rst $38                                       ; $6aec: $ff
    rst $38                                       ; $6aed: $ff
    rst $38                                       ; $6aee: $ff
    rst $38                                       ; $6aef: $ff
    rst $38                                       ; $6af0: $ff
    rst $38                                       ; $6af1: $ff
    rst $38                                       ; $6af2: $ff
    rst $38                                       ; $6af3: $ff
    rst $38                                       ; $6af4: $ff
    rst $38                                       ; $6af5: $ff
    rst $38                                       ; $6af6: $ff
    rst $38                                       ; $6af7: $ff
    rst $38                                       ; $6af8: $ff
    rst $38                                       ; $6af9: $ff
    rst $38                                       ; $6afa: $ff
    rst $38                                       ; $6afb: $ff
    rst $38                                       ; $6afc: $ff
    rst $38                                       ; $6afd: $ff
    rst $38                                       ; $6afe: $ff
    rst $38                                       ; $6aff: $ff
    rst $38                                       ; $6b00: $ff
    rst $38                                       ; $6b01: $ff
    rst $38                                       ; $6b02: $ff
    rst $38                                       ; $6b03: $ff
    rst $38                                       ; $6b04: $ff
    rst $38                                       ; $6b05: $ff
    rst $38                                       ; $6b06: $ff
    rst $38                                       ; $6b07: $ff
    rst $38                                       ; $6b08: $ff
    rst $38                                       ; $6b09: $ff
    rst $38                                       ; $6b0a: $ff
    rst $38                                       ; $6b0b: $ff
    rst $38                                       ; $6b0c: $ff
    rst $38                                       ; $6b0d: $ff
    rst $38                                       ; $6b0e: $ff
    rst $38                                       ; $6b0f: $ff
    rst $38                                       ; $6b10: $ff
    rst $38                                       ; $6b11: $ff
    rst $38                                       ; $6b12: $ff
    rst $38                                       ; $6b13: $ff
    rst $38                                       ; $6b14: $ff
    rst $38                                       ; $6b15: $ff
    rst $38                                       ; $6b16: $ff
    rst $38                                       ; $6b17: $ff
    rst $38                                       ; $6b18: $ff

Call_05e_6b19:
    rst $38                                       ; $6b19: $ff
    rst $38                                       ; $6b1a: $ff
    rst $38                                       ; $6b1b: $ff
    rst $38                                       ; $6b1c: $ff
    rst $38                                       ; $6b1d: $ff
    rst $38                                       ; $6b1e: $ff
    rst $38                                       ; $6b1f: $ff
    rst $38                                       ; $6b20: $ff
    rst $38                                       ; $6b21: $ff
    rst $38                                       ; $6b22: $ff
    rst $38                                       ; $6b23: $ff
    rst $38                                       ; $6b24: $ff
    rst $38                                       ; $6b25: $ff
    rst $38                                       ; $6b26: $ff
    rst $38                                       ; $6b27: $ff
    rst $38                                       ; $6b28: $ff
    rst $38                                       ; $6b29: $ff
    rst $38                                       ; $6b2a: $ff
    rst $38                                       ; $6b2b: $ff
    rst $38                                       ; $6b2c: $ff
    rst $38                                       ; $6b2d: $ff
    rst $38                                       ; $6b2e: $ff
    rst $38                                       ; $6b2f: $ff
    rst $38                                       ; $6b30: $ff
    rst $38                                       ; $6b31: $ff
    rst $38                                       ; $6b32: $ff
    rst $38                                       ; $6b33: $ff
    rst $38                                       ; $6b34: $ff
    rst $38                                       ; $6b35: $ff
    rst $38                                       ; $6b36: $ff
    rst $38                                       ; $6b37: $ff
    rst $38                                       ; $6b38: $ff
    rst $38                                       ; $6b39: $ff
    rst $38                                       ; $6b3a: $ff
    rst $38                                       ; $6b3b: $ff
    rst $38                                       ; $6b3c: $ff
    rst $38                                       ; $6b3d: $ff
    rst $38                                       ; $6b3e: $ff
    rst $38                                       ; $6b3f: $ff
    rst $38                                       ; $6b40: $ff
    rst $38                                       ; $6b41: $ff
    rst $38                                       ; $6b42: $ff
    rst $38                                       ; $6b43: $ff
    rst $38                                       ; $6b44: $ff
    rst $38                                       ; $6b45: $ff
    rst $38                                       ; $6b46: $ff
    rst $38                                       ; $6b47: $ff
    rst $38                                       ; $6b48: $ff
    rst $38                                       ; $6b49: $ff
    rst $38                                       ; $6b4a: $ff
    rst $38                                       ; $6b4b: $ff
    rst $38                                       ; $6b4c: $ff
    rst $38                                       ; $6b4d: $ff
    rst $38                                       ; $6b4e: $ff
    rst $38                                       ; $6b4f: $ff
    rst $38                                       ; $6b50: $ff
    rst $38                                       ; $6b51: $ff
    rst $38                                       ; $6b52: $ff
    rst $38                                       ; $6b53: $ff
    rst $38                                       ; $6b54: $ff
    rst $38                                       ; $6b55: $ff
    rst $38                                       ; $6b56: $ff
    rst $38                                       ; $6b57: $ff
    rst $38                                       ; $6b58: $ff
    rst $38                                       ; $6b59: $ff
    rst $38                                       ; $6b5a: $ff
    rst $38                                       ; $6b5b: $ff
    rst $38                                       ; $6b5c: $ff
    rst $38                                       ; $6b5d: $ff
    rst $38                                       ; $6b5e: $ff
    rst $38                                       ; $6b5f: $ff
    rst $38                                       ; $6b60: $ff
    rst $38                                       ; $6b61: $ff
    rst $38                                       ; $6b62: $ff
    rst $38                                       ; $6b63: $ff
    rst $38                                       ; $6b64: $ff
    rst $38                                       ; $6b65: $ff
    rst $38                                       ; $6b66: $ff
    rst $38                                       ; $6b67: $ff
    rst $38                                       ; $6b68: $ff
    rst $38                                       ; $6b69: $ff
    rst $38                                       ; $6b6a: $ff
    rst $38                                       ; $6b6b: $ff
    rst $38                                       ; $6b6c: $ff
    rst $38                                       ; $6b6d: $ff
    rst $38                                       ; $6b6e: $ff
    rst $38                                       ; $6b6f: $ff
    rst $38                                       ; $6b70: $ff
    rst $38                                       ; $6b71: $ff
    rst $38                                       ; $6b72: $ff
    rst $38                                       ; $6b73: $ff
    rst $38                                       ; $6b74: $ff
    rst $38                                       ; $6b75: $ff
    rst $38                                       ; $6b76: $ff
    rst $38                                       ; $6b77: $ff
    rst $38                                       ; $6b78: $ff
    rst $38                                       ; $6b79: $ff
    rst $38                                       ; $6b7a: $ff
    rst $38                                       ; $6b7b: $ff
    rst $38                                       ; $6b7c: $ff
    rst $38                                       ; $6b7d: $ff
    rst $38                                       ; $6b7e: $ff
    rst $38                                       ; $6b7f: $ff
    rst $38                                       ; $6b80: $ff
    rst $38                                       ; $6b81: $ff
    rst $38                                       ; $6b82: $ff
    rst $38                                       ; $6b83: $ff
    rst $38                                       ; $6b84: $ff
    rst $38                                       ; $6b85: $ff
    rst $38                                       ; $6b86: $ff
    rst $38                                       ; $6b87: $ff
    rst $38                                       ; $6b88: $ff
    rst $38                                       ; $6b89: $ff
    rst $38                                       ; $6b8a: $ff
    rst $38                                       ; $6b8b: $ff
    rst $38                                       ; $6b8c: $ff
    rst $38                                       ; $6b8d: $ff
    rst $38                                       ; $6b8e: $ff
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    rst $38                                       ; $6b91: $ff
    rst $38                                       ; $6b92: $ff
    rst $38                                       ; $6b93: $ff
    rst $38                                       ; $6b94: $ff
    rst $38                                       ; $6b95: $ff
    rst $38                                       ; $6b96: $ff
    rst $38                                       ; $6b97: $ff
    rst $38                                       ; $6b98: $ff
    rst $38                                       ; $6b99: $ff
    rst $38                                       ; $6b9a: $ff
    rst $38                                       ; $6b9b: $ff
    rst $38                                       ; $6b9c: $ff
    rst $38                                       ; $6b9d: $ff
    rst $38                                       ; $6b9e: $ff
    rst $38                                       ; $6b9f: $ff
    rst $38                                       ; $6ba0: $ff
    rst $38                                       ; $6ba1: $ff
    rst $38                                       ; $6ba2: $ff
    rst $38                                       ; $6ba3: $ff
    rst $38                                       ; $6ba4: $ff
    rst $38                                       ; $6ba5: $ff
    rst $38                                       ; $6ba6: $ff
    rst $38                                       ; $6ba7: $ff
    rst $38                                       ; $6ba8: $ff
    rst $38                                       ; $6ba9: $ff
    rst $38                                       ; $6baa: $ff
    rst $38                                       ; $6bab: $ff
    rst $38                                       ; $6bac: $ff
    rst $38                                       ; $6bad: $ff
    rst $38                                       ; $6bae: $ff
    rst $38                                       ; $6baf: $ff
    rst $38                                       ; $6bb0: $ff
    rst $38                                       ; $6bb1: $ff
    rst $38                                       ; $6bb2: $ff
    rst $38                                       ; $6bb3: $ff
    rst $38                                       ; $6bb4: $ff
    rst $38                                       ; $6bb5: $ff
    rst $38                                       ; $6bb6: $ff
    rst $38                                       ; $6bb7: $ff
    rst $38                                       ; $6bb8: $ff
    rst $38                                       ; $6bb9: $ff
    rst $38                                       ; $6bba: $ff
    rst $38                                       ; $6bbb: $ff
    rst $38                                       ; $6bbc: $ff
    rst $38                                       ; $6bbd: $ff
    rst $38                                       ; $6bbe: $ff
    rst $38                                       ; $6bbf: $ff
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    rst $38                                       ; $6bc2: $ff
    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    rst $38                                       ; $6bc6: $ff
    rst $38                                       ; $6bc7: $ff
    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    rst $38                                       ; $6bcb: $ff
    rst $38                                       ; $6bcc: $ff
    rst $38                                       ; $6bcd: $ff
    rst $38                                       ; $6bce: $ff
    rst $38                                       ; $6bcf: $ff
    rst $38                                       ; $6bd0: $ff
    rst $38                                       ; $6bd1: $ff
    rst $38                                       ; $6bd2: $ff
    rst $38                                       ; $6bd3: $ff
    rst $38                                       ; $6bd4: $ff
    rst $38                                       ; $6bd5: $ff
    rst $38                                       ; $6bd6: $ff
    rst $38                                       ; $6bd7: $ff
    rst $38                                       ; $6bd8: $ff
    rst $38                                       ; $6bd9: $ff
    rst $38                                       ; $6bda: $ff
    rst $38                                       ; $6bdb: $ff
    rst $38                                       ; $6bdc: $ff
    rst $38                                       ; $6bdd: $ff
    rst $38                                       ; $6bde: $ff
    rst $38                                       ; $6bdf: $ff
    rst $38                                       ; $6be0: $ff
    rst $38                                       ; $6be1: $ff
    rst $38                                       ; $6be2: $ff
    rst $38                                       ; $6be3: $ff
    rst $38                                       ; $6be4: $ff
    rst $38                                       ; $6be5: $ff
    rst $38                                       ; $6be6: $ff
    rst $38                                       ; $6be7: $ff
    rst $38                                       ; $6be8: $ff
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    rst $38                                       ; $6beb: $ff
    rst $38                                       ; $6bec: $ff
    rst $38                                       ; $6bed: $ff
    rst $38                                       ; $6bee: $ff
    rst $38                                       ; $6bef: $ff
    rst $38                                       ; $6bf0: $ff
    rst $38                                       ; $6bf1: $ff
    rst $38                                       ; $6bf2: $ff
    rst $38                                       ; $6bf3: $ff
    rst $38                                       ; $6bf4: $ff
    rst $38                                       ; $6bf5: $ff
    rst $38                                       ; $6bf6: $ff
    rst $38                                       ; $6bf7: $ff
    rst $38                                       ; $6bf8: $ff
    rst $38                                       ; $6bf9: $ff
    rst $38                                       ; $6bfa: $ff
    rst $38                                       ; $6bfb: $ff
    rst $38                                       ; $6bfc: $ff
    rst $38                                       ; $6bfd: $ff
    rst $38                                       ; $6bfe: $ff
    rst $38                                       ; $6bff: $ff
    rst $38                                       ; $6c00: $ff
    rst $38                                       ; $6c01: $ff
    rst $38                                       ; $6c02: $ff
    rst $38                                       ; $6c03: $ff
    rst $38                                       ; $6c04: $ff
    rst $38                                       ; $6c05: $ff
    rst $38                                       ; $6c06: $ff
    rst $38                                       ; $6c07: $ff
    rst $38                                       ; $6c08: $ff
    rst $38                                       ; $6c09: $ff
    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    rst $38                                       ; $6c0c: $ff
    rst $38                                       ; $6c0d: $ff
    rst $38                                       ; $6c0e: $ff
    rst $38                                       ; $6c0f: $ff
    rst $38                                       ; $6c10: $ff
    rst $38                                       ; $6c11: $ff
    rst $38                                       ; $6c12: $ff
    rst $38                                       ; $6c13: $ff
    rst $38                                       ; $6c14: $ff
    rst $38                                       ; $6c15: $ff
    rst $38                                       ; $6c16: $ff
    rst $38                                       ; $6c17: $ff
    rst $38                                       ; $6c18: $ff
    rst $38                                       ; $6c19: $ff
    rst $38                                       ; $6c1a: $ff
    rst $38                                       ; $6c1b: $ff
    rst $38                                       ; $6c1c: $ff
    rst $38                                       ; $6c1d: $ff
    rst $38                                       ; $6c1e: $ff
    rst $38                                       ; $6c1f: $ff
    rst $38                                       ; $6c20: $ff
    rst $38                                       ; $6c21: $ff
    rst $38                                       ; $6c22: $ff
    rst $38                                       ; $6c23: $ff
    rst $38                                       ; $6c24: $ff
    rst $38                                       ; $6c25: $ff
    rst $38                                       ; $6c26: $ff
    rst $38                                       ; $6c27: $ff
    rst $38                                       ; $6c28: $ff
    rst $38                                       ; $6c29: $ff
    rst $38                                       ; $6c2a: $ff
    rst $38                                       ; $6c2b: $ff
    rst $38                                       ; $6c2c: $ff
    rst $38                                       ; $6c2d: $ff
    rst $38                                       ; $6c2e: $ff
    rst $38                                       ; $6c2f: $ff
    rst $38                                       ; $6c30: $ff
    rst $38                                       ; $6c31: $ff
    rst $38                                       ; $6c32: $ff
    rst $38                                       ; $6c33: $ff
    rst $38                                       ; $6c34: $ff
    rst $38                                       ; $6c35: $ff
    rst $38                                       ; $6c36: $ff

Jump_05e_6c37:
    rst $38                                       ; $6c37: $ff
    rst $38                                       ; $6c38: $ff
    rst $38                                       ; $6c39: $ff
    rst $38                                       ; $6c3a: $ff
    rst $38                                       ; $6c3b: $ff
    rst $38                                       ; $6c3c: $ff
    rst $38                                       ; $6c3d: $ff
    rst $38                                       ; $6c3e: $ff
    rst $38                                       ; $6c3f: $ff
    rst $38                                       ; $6c40: $ff
    rst $38                                       ; $6c41: $ff
    rst $38                                       ; $6c42: $ff
    rst $38                                       ; $6c43: $ff
    rst $38                                       ; $6c44: $ff
    rst $38                                       ; $6c45: $ff
    rst $38                                       ; $6c46: $ff
    rst $38                                       ; $6c47: $ff
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    rst $38                                       ; $6c4b: $ff
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    rst $38                                       ; $6c4f: $ff
    rst $38                                       ; $6c50: $ff
    rst $38                                       ; $6c51: $ff
    rst $38                                       ; $6c52: $ff
    rst $38                                       ; $6c53: $ff
    rst $38                                       ; $6c54: $ff
    rst $38                                       ; $6c55: $ff
    rst $38                                       ; $6c56: $ff
    rst $38                                       ; $6c57: $ff
    rst $38                                       ; $6c58: $ff
    rst $38                                       ; $6c59: $ff
    rst $38                                       ; $6c5a: $ff
    rst $38                                       ; $6c5b: $ff
    rst $38                                       ; $6c5c: $ff
    rst $38                                       ; $6c5d: $ff
    rst $38                                       ; $6c5e: $ff
    rst $38                                       ; $6c5f: $ff
    rst $38                                       ; $6c60: $ff
    rst $38                                       ; $6c61: $ff
    rst $38                                       ; $6c62: $ff
    rst $38                                       ; $6c63: $ff
    rst $38                                       ; $6c64: $ff
    rst $38                                       ; $6c65: $ff
    rst $38                                       ; $6c66: $ff
    rst $38                                       ; $6c67: $ff
    rst $38                                       ; $6c68: $ff
    rst $38                                       ; $6c69: $ff
    rst $38                                       ; $6c6a: $ff
    rst $38                                       ; $6c6b: $ff
    rst $38                                       ; $6c6c: $ff
    rst $38                                       ; $6c6d: $ff
    rst $38                                       ; $6c6e: $ff
    rst $38                                       ; $6c6f: $ff
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    rst $38                                       ; $6c72: $ff
    rst $38                                       ; $6c73: $ff
    rst $38                                       ; $6c74: $ff
    rst $38                                       ; $6c75: $ff
    rst $38                                       ; $6c76: $ff
    rst $38                                       ; $6c77: $ff
    rst $38                                       ; $6c78: $ff
    rst $38                                       ; $6c79: $ff
    rst $38                                       ; $6c7a: $ff
    rst $38                                       ; $6c7b: $ff
    rst $38                                       ; $6c7c: $ff
    rst $38                                       ; $6c7d: $ff
    rst $38                                       ; $6c7e: $ff
    rst $38                                       ; $6c7f: $ff
    rst $38                                       ; $6c80: $ff
    rst $38                                       ; $6c81: $ff
    rst $38                                       ; $6c82: $ff
    rst $38                                       ; $6c83: $ff
    rst $38                                       ; $6c84: $ff
    rst $38                                       ; $6c85: $ff
    rst $38                                       ; $6c86: $ff
    rst $38                                       ; $6c87: $ff
    rst $38                                       ; $6c88: $ff
    rst $38                                       ; $6c89: $ff
    rst $38                                       ; $6c8a: $ff
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    rst $38                                       ; $6c8e: $ff
    rst $38                                       ; $6c8f: $ff
    rst $38                                       ; $6c90: $ff
    rst $38                                       ; $6c91: $ff
    rst $38                                       ; $6c92: $ff
    rst $38                                       ; $6c93: $ff
    rst $38                                       ; $6c94: $ff
    rst $38                                       ; $6c95: $ff
    rst $38                                       ; $6c96: $ff
    rst $38                                       ; $6c97: $ff
    rst $38                                       ; $6c98: $ff
    rst $38                                       ; $6c99: $ff
    rst $38                                       ; $6c9a: $ff
    rst $38                                       ; $6c9b: $ff
    rst $38                                       ; $6c9c: $ff
    rst $38                                       ; $6c9d: $ff
    rst $38                                       ; $6c9e: $ff
    rst $38                                       ; $6c9f: $ff
    rst $38                                       ; $6ca0: $ff
    rst $38                                       ; $6ca1: $ff
    rst $38                                       ; $6ca2: $ff
    rst $38                                       ; $6ca3: $ff
    rst $38                                       ; $6ca4: $ff
    rst $38                                       ; $6ca5: $ff
    rst $38                                       ; $6ca6: $ff
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    rst $38                                       ; $6ca9: $ff
    rst $38                                       ; $6caa: $ff
    rst $38                                       ; $6cab: $ff
    rst $38                                       ; $6cac: $ff
    rst $38                                       ; $6cad: $ff
    rst $38                                       ; $6cae: $ff
    rst $38                                       ; $6caf: $ff
    rst $38                                       ; $6cb0: $ff
    rst $38                                       ; $6cb1: $ff
    rst $38                                       ; $6cb2: $ff
    rst $38                                       ; $6cb3: $ff
    rst $38                                       ; $6cb4: $ff
    rst $38                                       ; $6cb5: $ff
    rst $38                                       ; $6cb6: $ff
    rst $38                                       ; $6cb7: $ff
    rst $38                                       ; $6cb8: $ff
    rst $38                                       ; $6cb9: $ff
    rst $38                                       ; $6cba: $ff
    rst $38                                       ; $6cbb: $ff
    rst $38                                       ; $6cbc: $ff
    rst $38                                       ; $6cbd: $ff
    rst $38                                       ; $6cbe: $ff
    rst $38                                       ; $6cbf: $ff
    rst $38                                       ; $6cc0: $ff
    rst $38                                       ; $6cc1: $ff
    rst $38                                       ; $6cc2: $ff
    rst $38                                       ; $6cc3: $ff
    rst $38                                       ; $6cc4: $ff
    rst $38                                       ; $6cc5: $ff
    rst $38                                       ; $6cc6: $ff
    rst $38                                       ; $6cc7: $ff
    rst $38                                       ; $6cc8: $ff
    rst $38                                       ; $6cc9: $ff
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    rst $38                                       ; $6ccc: $ff
    rst $38                                       ; $6ccd: $ff
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    rst $38                                       ; $6cd0: $ff
    rst $38                                       ; $6cd1: $ff
    rst $38                                       ; $6cd2: $ff
    rst $38                                       ; $6cd3: $ff
    rst $38                                       ; $6cd4: $ff
    rst $38                                       ; $6cd5: $ff
    rst $38                                       ; $6cd6: $ff
    rst $38                                       ; $6cd7: $ff
    rst $38                                       ; $6cd8: $ff
    rst $38                                       ; $6cd9: $ff
    rst $38                                       ; $6cda: $ff
    rst $38                                       ; $6cdb: $ff
    rst $38                                       ; $6cdc: $ff
    rst $38                                       ; $6cdd: $ff
    rst $38                                       ; $6cde: $ff
    rst $38                                       ; $6cdf: $ff
    rst $38                                       ; $6ce0: $ff
    rst $38                                       ; $6ce1: $ff
    rst $38                                       ; $6ce2: $ff
    rst $38                                       ; $6ce3: $ff
    rst $38                                       ; $6ce4: $ff
    rst $38                                       ; $6ce5: $ff
    rst $38                                       ; $6ce6: $ff
    rst $38                                       ; $6ce7: $ff
    rst $38                                       ; $6ce8: $ff
    rst $38                                       ; $6ce9: $ff
    rst $38                                       ; $6cea: $ff
    rst $38                                       ; $6ceb: $ff
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
    rst $38                                       ; $6cf0: $ff
    rst $38                                       ; $6cf1: $ff
    rst $38                                       ; $6cf2: $ff
    rst $38                                       ; $6cf3: $ff
    rst $38                                       ; $6cf4: $ff
    rst $38                                       ; $6cf5: $ff
    rst $38                                       ; $6cf6: $ff
    rst $38                                       ; $6cf7: $ff
    rst $38                                       ; $6cf8: $ff
    rst $38                                       ; $6cf9: $ff
    rst $38                                       ; $6cfa: $ff
    rst $38                                       ; $6cfb: $ff
    rst $38                                       ; $6cfc: $ff
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    rst $38                                       ; $6d04: $ff
    rst $38                                       ; $6d05: $ff
    rst $38                                       ; $6d06: $ff
    rst $38                                       ; $6d07: $ff
    rst $38                                       ; $6d08: $ff
    rst $38                                       ; $6d09: $ff
    rst $38                                       ; $6d0a: $ff
    rst $38                                       ; $6d0b: $ff
    rst $38                                       ; $6d0c: $ff
    rst $38                                       ; $6d0d: $ff
    rst $38                                       ; $6d0e: $ff
    rst $38                                       ; $6d0f: $ff
    rst $38                                       ; $6d10: $ff
    rst $38                                       ; $6d11: $ff
    rst $38                                       ; $6d12: $ff
    rst $38                                       ; $6d13: $ff
    rst $38                                       ; $6d14: $ff
    rst $38                                       ; $6d15: $ff
    rst $38                                       ; $6d16: $ff
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $38                                       ; $6d19: $ff
    rst $38                                       ; $6d1a: $ff
    rst $38                                       ; $6d1b: $ff
    rst $38                                       ; $6d1c: $ff
    rst $38                                       ; $6d1d: $ff
    rst $38                                       ; $6d1e: $ff
    rst $38                                       ; $6d1f: $ff
    rst $38                                       ; $6d20: $ff
    rst $38                                       ; $6d21: $ff
    rst $38                                       ; $6d22: $ff
    rst $38                                       ; $6d23: $ff
    rst $38                                       ; $6d24: $ff
    rst $38                                       ; $6d25: $ff
    rst $38                                       ; $6d26: $ff
    rst $38                                       ; $6d27: $ff
    rst $38                                       ; $6d28: $ff
    rst $38                                       ; $6d29: $ff
    rst $38                                       ; $6d2a: $ff
    rst $38                                       ; $6d2b: $ff
    rst $38                                       ; $6d2c: $ff
    rst $38                                       ; $6d2d: $ff
    rst $38                                       ; $6d2e: $ff
    rst $38                                       ; $6d2f: $ff
    rst $38                                       ; $6d30: $ff
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff
    rst $38                                       ; $6d34: $ff
    rst $38                                       ; $6d35: $ff
    rst $38                                       ; $6d36: $ff
    rst $38                                       ; $6d37: $ff
    rst $38                                       ; $6d38: $ff
    rst $38                                       ; $6d39: $ff
    rst $38                                       ; $6d3a: $ff
    rst $38                                       ; $6d3b: $ff
    rst $38                                       ; $6d3c: $ff
    rst $38                                       ; $6d3d: $ff
    rst $38                                       ; $6d3e: $ff
    rst $38                                       ; $6d3f: $ff
    rst $38                                       ; $6d40: $ff
    rst $38                                       ; $6d41: $ff
    rst $38                                       ; $6d42: $ff
    rst $38                                       ; $6d43: $ff
    rst $38                                       ; $6d44: $ff
    rst $38                                       ; $6d45: $ff
    rst $38                                       ; $6d46: $ff
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    rst $38                                       ; $6d49: $ff
    rst $38                                       ; $6d4a: $ff
    rst $38                                       ; $6d4b: $ff
    rst $38                                       ; $6d4c: $ff
    rst $38                                       ; $6d4d: $ff
    rst $38                                       ; $6d4e: $ff
    rst $38                                       ; $6d4f: $ff
    rst $38                                       ; $6d50: $ff
    rst $38                                       ; $6d51: $ff
    rst $38                                       ; $6d52: $ff
    rst $38                                       ; $6d53: $ff
    rst $38                                       ; $6d54: $ff
    rst $38                                       ; $6d55: $ff
    rst $38                                       ; $6d56: $ff
    rst $38                                       ; $6d57: $ff
    rst $38                                       ; $6d58: $ff
    rst $38                                       ; $6d59: $ff
    rst $38                                       ; $6d5a: $ff
    rst $38                                       ; $6d5b: $ff
    rst $38                                       ; $6d5c: $ff
    rst $38                                       ; $6d5d: $ff
    rst $38                                       ; $6d5e: $ff
    rst $38                                       ; $6d5f: $ff
    rst $38                                       ; $6d60: $ff
    rst $38                                       ; $6d61: $ff
    rst $38                                       ; $6d62: $ff
    rst $38                                       ; $6d63: $ff
    rst $38                                       ; $6d64: $ff
    rst $38                                       ; $6d65: $ff
    rst $38                                       ; $6d66: $ff
    rst $38                                       ; $6d67: $ff
    rst $38                                       ; $6d68: $ff
    rst $38                                       ; $6d69: $ff
    rst $38                                       ; $6d6a: $ff
    rst $38                                       ; $6d6b: $ff
    rst $38                                       ; $6d6c: $ff
    rst $38                                       ; $6d6d: $ff
    rst $38                                       ; $6d6e: $ff
    rst $38                                       ; $6d6f: $ff
    rst $38                                       ; $6d70: $ff
    rst $38                                       ; $6d71: $ff
    rst $38                                       ; $6d72: $ff
    rst $38                                       ; $6d73: $ff
    rst $38                                       ; $6d74: $ff
    rst $38                                       ; $6d75: $ff
    rst $38                                       ; $6d76: $ff
    rst $38                                       ; $6d77: $ff
    rst $38                                       ; $6d78: $ff
    rst $38                                       ; $6d79: $ff
    rst $38                                       ; $6d7a: $ff
    rst $38                                       ; $6d7b: $ff
    rst $38                                       ; $6d7c: $ff
    rst $38                                       ; $6d7d: $ff
    rst $38                                       ; $6d7e: $ff
    rst $38                                       ; $6d7f: $ff
    rst $38                                       ; $6d80: $ff
    rst $38                                       ; $6d81: $ff
    rst $38                                       ; $6d82: $ff
    rst $38                                       ; $6d83: $ff
    rst $38                                       ; $6d84: $ff
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    rst $38                                       ; $6d87: $ff
    rst $38                                       ; $6d88: $ff

Call_05e_6d89:
    rst $38                                       ; $6d89: $ff
    rst $38                                       ; $6d8a: $ff
    rst $38                                       ; $6d8b: $ff
    rst $38                                       ; $6d8c: $ff
    rst $38                                       ; $6d8d: $ff
    rst $38                                       ; $6d8e: $ff
    rst $38                                       ; $6d8f: $ff
    rst $38                                       ; $6d90: $ff
    rst $38                                       ; $6d91: $ff
    rst $38                                       ; $6d92: $ff
    rst $38                                       ; $6d93: $ff
    rst $38                                       ; $6d94: $ff
    rst $38                                       ; $6d95: $ff
    rst $38                                       ; $6d96: $ff
    rst $38                                       ; $6d97: $ff
    rst $38                                       ; $6d98: $ff
    rst $38                                       ; $6d99: $ff
    rst $38                                       ; $6d9a: $ff
    rst $38                                       ; $6d9b: $ff
    rst $38                                       ; $6d9c: $ff
    rst $38                                       ; $6d9d: $ff
    rst $38                                       ; $6d9e: $ff
    rst $38                                       ; $6d9f: $ff
    rst $38                                       ; $6da0: $ff
    rst $38                                       ; $6da1: $ff
    rst $38                                       ; $6da2: $ff
    rst $38                                       ; $6da3: $ff
    rst $38                                       ; $6da4: $ff
    rst $38                                       ; $6da5: $ff
    rst $38                                       ; $6da6: $ff
    rst $38                                       ; $6da7: $ff
    rst $38                                       ; $6da8: $ff
    rst $38                                       ; $6da9: $ff
    rst $38                                       ; $6daa: $ff
    rst $38                                       ; $6dab: $ff
    rst $38                                       ; $6dac: $ff
    rst $38                                       ; $6dad: $ff
    rst $38                                       ; $6dae: $ff
    rst $38                                       ; $6daf: $ff
    rst $38                                       ; $6db0: $ff
    rst $38                                       ; $6db1: $ff
    rst $38                                       ; $6db2: $ff
    rst $38                                       ; $6db3: $ff
    rst $38                                       ; $6db4: $ff
    rst $38                                       ; $6db5: $ff
    rst $38                                       ; $6db6: $ff
    rst $38                                       ; $6db7: $ff
    rst $38                                       ; $6db8: $ff
    rst $38                                       ; $6db9: $ff
    rst $38                                       ; $6dba: $ff
    rst $38                                       ; $6dbb: $ff
    rst $38                                       ; $6dbc: $ff
    rst $38                                       ; $6dbd: $ff
    rst $38                                       ; $6dbe: $ff
    rst $38                                       ; $6dbf: $ff
    rst $38                                       ; $6dc0: $ff

Jump_05e_6dc1:
    rst $38                                       ; $6dc1: $ff
    rst $38                                       ; $6dc2: $ff
    rst $38                                       ; $6dc3: $ff
    rst $38                                       ; $6dc4: $ff
    rst $38                                       ; $6dc5: $ff
    rst $38                                       ; $6dc6: $ff
    rst $38                                       ; $6dc7: $ff
    rst $38                                       ; $6dc8: $ff
    rst $38                                       ; $6dc9: $ff
    rst $38                                       ; $6dca: $ff
    rst $38                                       ; $6dcb: $ff
    rst $38                                       ; $6dcc: $ff
    rst $38                                       ; $6dcd: $ff
    rst $38                                       ; $6dce: $ff
    rst $38                                       ; $6dcf: $ff
    rst $38                                       ; $6dd0: $ff
    rst $38                                       ; $6dd1: $ff
    rst $38                                       ; $6dd2: $ff
    rst $38                                       ; $6dd3: $ff
    rst $38                                       ; $6dd4: $ff
    rst $38                                       ; $6dd5: $ff
    rst $38                                       ; $6dd6: $ff
    rst $38                                       ; $6dd7: $ff
    rst $38                                       ; $6dd8: $ff
    rst $38                                       ; $6dd9: $ff
    rst $38                                       ; $6dda: $ff
    rst $38                                       ; $6ddb: $ff
    rst $38                                       ; $6ddc: $ff
    rst $38                                       ; $6ddd: $ff
    rst $38                                       ; $6dde: $ff
    rst $38                                       ; $6ddf: $ff
    rst $38                                       ; $6de0: $ff
    rst $38                                       ; $6de1: $ff
    rst $38                                       ; $6de2: $ff
    rst $38                                       ; $6de3: $ff
    rst $38                                       ; $6de4: $ff
    rst $38                                       ; $6de5: $ff
    rst $38                                       ; $6de6: $ff
    rst $38                                       ; $6de7: $ff
    rst $38                                       ; $6de8: $ff
    rst $38                                       ; $6de9: $ff
    rst $38                                       ; $6dea: $ff
    rst $38                                       ; $6deb: $ff
    rst $38                                       ; $6dec: $ff
    rst $38                                       ; $6ded: $ff
    rst $38                                       ; $6dee: $ff
    rst $38                                       ; $6def: $ff
    rst $38                                       ; $6df0: $ff
    rst $38                                       ; $6df1: $ff
    rst $38                                       ; $6df2: $ff
    rst $38                                       ; $6df3: $ff
    rst $38                                       ; $6df4: $ff
    rst $38                                       ; $6df5: $ff
    rst $38                                       ; $6df6: $ff
    rst $38                                       ; $6df7: $ff
    rst $38                                       ; $6df8: $ff
    rst $38                                       ; $6df9: $ff
    rst $38                                       ; $6dfa: $ff
    rst $38                                       ; $6dfb: $ff
    rst $38                                       ; $6dfc: $ff
    rst $38                                       ; $6dfd: $ff
    rst $38                                       ; $6dfe: $ff
    rst $38                                       ; $6dff: $ff
    rst $38                                       ; $6e00: $ff
    rst $38                                       ; $6e01: $ff
    rst $38                                       ; $6e02: $ff
    rst $38                                       ; $6e03: $ff
    rst $38                                       ; $6e04: $ff
    rst $38                                       ; $6e05: $ff
    rst $38                                       ; $6e06: $ff
    rst $38                                       ; $6e07: $ff
    rst $38                                       ; $6e08: $ff
    rst $38                                       ; $6e09: $ff
    rst $38                                       ; $6e0a: $ff
    rst $38                                       ; $6e0b: $ff
    rst $38                                       ; $6e0c: $ff
    rst $38                                       ; $6e0d: $ff
    rst $38                                       ; $6e0e: $ff
    rst $38                                       ; $6e0f: $ff
    rst $38                                       ; $6e10: $ff
    rst $38                                       ; $6e11: $ff
    rst $38                                       ; $6e12: $ff
    rst $38                                       ; $6e13: $ff
    rst $38                                       ; $6e14: $ff
    rst $38                                       ; $6e15: $ff
    rst $38                                       ; $6e16: $ff
    rst $38                                       ; $6e17: $ff
    rst $38                                       ; $6e18: $ff
    rst $38                                       ; $6e19: $ff
    rst $38                                       ; $6e1a: $ff
    rst $38                                       ; $6e1b: $ff
    rst $38                                       ; $6e1c: $ff
    rst $38                                       ; $6e1d: $ff
    rst $38                                       ; $6e1e: $ff
    rst $38                                       ; $6e1f: $ff
    rst $38                                       ; $6e20: $ff
    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    rst $38                                       ; $6e23: $ff
    rst $38                                       ; $6e24: $ff
    rst $38                                       ; $6e25: $ff
    rst $38                                       ; $6e26: $ff
    rst $38                                       ; $6e27: $ff
    rst $38                                       ; $6e28: $ff
    rst $38                                       ; $6e29: $ff
    rst $38                                       ; $6e2a: $ff
    rst $38                                       ; $6e2b: $ff
    rst $38                                       ; $6e2c: $ff
    rst $38                                       ; $6e2d: $ff
    rst $38                                       ; $6e2e: $ff
    rst $38                                       ; $6e2f: $ff
    rst $38                                       ; $6e30: $ff
    rst $38                                       ; $6e31: $ff
    rst $38                                       ; $6e32: $ff
    rst $38                                       ; $6e33: $ff
    rst $38                                       ; $6e34: $ff
    rst $38                                       ; $6e35: $ff
    rst $38                                       ; $6e36: $ff
    rst $38                                       ; $6e37: $ff
    rst $38                                       ; $6e38: $ff
    rst $38                                       ; $6e39: $ff
    rst $38                                       ; $6e3a: $ff
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    rst $38                                       ; $6e3d: $ff
    rst $38                                       ; $6e3e: $ff
    rst $38                                       ; $6e3f: $ff
    rst $38                                       ; $6e40: $ff
    rst $38                                       ; $6e41: $ff
    rst $38                                       ; $6e42: $ff
    rst $38                                       ; $6e43: $ff
    rst $38                                       ; $6e44: $ff
    rst $38                                       ; $6e45: $ff
    rst $38                                       ; $6e46: $ff
    rst $38                                       ; $6e47: $ff
    rst $38                                       ; $6e48: $ff
    rst $38                                       ; $6e49: $ff
    rst $38                                       ; $6e4a: $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    rst $38                                       ; $6e4d: $ff
    rst $38                                       ; $6e4e: $ff
    rst $38                                       ; $6e4f: $ff
    rst $38                                       ; $6e50: $ff
    rst $38                                       ; $6e51: $ff
    rst $38                                       ; $6e52: $ff
    rst $38                                       ; $6e53: $ff
    rst $38                                       ; $6e54: $ff
    rst $38                                       ; $6e55: $ff
    rst $38                                       ; $6e56: $ff
    rst $38                                       ; $6e57: $ff
    rst $38                                       ; $6e58: $ff
    rst $38                                       ; $6e59: $ff
    rst $38                                       ; $6e5a: $ff
    rst $38                                       ; $6e5b: $ff
    rst $38                                       ; $6e5c: $ff
    rst $38                                       ; $6e5d: $ff
    rst $38                                       ; $6e5e: $ff
    rst $38                                       ; $6e5f: $ff
    rst $38                                       ; $6e60: $ff
    rst $38                                       ; $6e61: $ff
    rst $38                                       ; $6e62: $ff
    rst $38                                       ; $6e63: $ff
    rst $38                                       ; $6e64: $ff
    rst $38                                       ; $6e65: $ff
    rst $38                                       ; $6e66: $ff
    rst $38                                       ; $6e67: $ff
    rst $38                                       ; $6e68: $ff
    rst $38                                       ; $6e69: $ff
    rst $38                                       ; $6e6a: $ff
    rst $38                                       ; $6e6b: $ff
    rst $38                                       ; $6e6c: $ff
    rst $38                                       ; $6e6d: $ff
    rst $38                                       ; $6e6e: $ff
    rst $38                                       ; $6e6f: $ff
    rst $38                                       ; $6e70: $ff
    rst $38                                       ; $6e71: $ff
    rst $38                                       ; $6e72: $ff
    rst $38                                       ; $6e73: $ff
    rst $38                                       ; $6e74: $ff
    rst $38                                       ; $6e75: $ff
    rst $38                                       ; $6e76: $ff
    rst $38                                       ; $6e77: $ff
    rst $38                                       ; $6e78: $ff
    rst $38                                       ; $6e79: $ff
    rst $38                                       ; $6e7a: $ff
    rst $38                                       ; $6e7b: $ff
    rst $38                                       ; $6e7c: $ff
    rst $38                                       ; $6e7d: $ff
    rst $38                                       ; $6e7e: $ff
    rst $38                                       ; $6e7f: $ff
    rst $38                                       ; $6e80: $ff
    rst $38                                       ; $6e81: $ff
    rst $38                                       ; $6e82: $ff
    rst $38                                       ; $6e83: $ff
    rst $38                                       ; $6e84: $ff
    rst $38                                       ; $6e85: $ff
    rst $38                                       ; $6e86: $ff
    rst $38                                       ; $6e87: $ff
    rst $38                                       ; $6e88: $ff
    rst $38                                       ; $6e89: $ff
    rst $38                                       ; $6e8a: $ff
    rst $38                                       ; $6e8b: $ff
    rst $38                                       ; $6e8c: $ff
    rst $38                                       ; $6e8d: $ff
    rst $38                                       ; $6e8e: $ff
    rst $38                                       ; $6e8f: $ff
    rst $38                                       ; $6e90: $ff
    rst $38                                       ; $6e91: $ff
    rst $38                                       ; $6e92: $ff
    rst $38                                       ; $6e93: $ff
    rst $38                                       ; $6e94: $ff
    rst $38                                       ; $6e95: $ff
    rst $38                                       ; $6e96: $ff
    rst $38                                       ; $6e97: $ff
    rst $38                                       ; $6e98: $ff
    rst $38                                       ; $6e99: $ff
    rst $38                                       ; $6e9a: $ff
    rst $38                                       ; $6e9b: $ff
    rst $38                                       ; $6e9c: $ff
    rst $38                                       ; $6e9d: $ff
    rst $38                                       ; $6e9e: $ff
    rst $38                                       ; $6e9f: $ff
    rst $38                                       ; $6ea0: $ff
    rst $38                                       ; $6ea1: $ff
    rst $38                                       ; $6ea2: $ff
    rst $38                                       ; $6ea3: $ff
    rst $38                                       ; $6ea4: $ff
    rst $38                                       ; $6ea5: $ff
    rst $38                                       ; $6ea6: $ff
    rst $38                                       ; $6ea7: $ff
    rst $38                                       ; $6ea8: $ff
    rst $38                                       ; $6ea9: $ff
    rst $38                                       ; $6eaa: $ff
    rst $38                                       ; $6eab: $ff
    rst $38                                       ; $6eac: $ff
    rst $38                                       ; $6ead: $ff
    rst $38                                       ; $6eae: $ff
    rst $38                                       ; $6eaf: $ff
    rst $38                                       ; $6eb0: $ff
    rst $38                                       ; $6eb1: $ff
    rst $38                                       ; $6eb2: $ff
    rst $38                                       ; $6eb3: $ff
    rst $38                                       ; $6eb4: $ff
    rst $38                                       ; $6eb5: $ff
    rst $38                                       ; $6eb6: $ff
    rst $38                                       ; $6eb7: $ff
    rst $38                                       ; $6eb8: $ff
    rst $38                                       ; $6eb9: $ff
    rst $38                                       ; $6eba: $ff
    rst $38                                       ; $6ebb: $ff
    rst $38                                       ; $6ebc: $ff
    rst $38                                       ; $6ebd: $ff
    rst $38                                       ; $6ebe: $ff
    rst $38                                       ; $6ebf: $ff
    rst $38                                       ; $6ec0: $ff
    rst $38                                       ; $6ec1: $ff
    rst $38                                       ; $6ec2: $ff
    rst $38                                       ; $6ec3: $ff
    rst $38                                       ; $6ec4: $ff
    rst $38                                       ; $6ec5: $ff
    rst $38                                       ; $6ec6: $ff
    rst $38                                       ; $6ec7: $ff
    rst $38                                       ; $6ec8: $ff
    rst $38                                       ; $6ec9: $ff
    rst $38                                       ; $6eca: $ff
    rst $38                                       ; $6ecb: $ff
    rst $38                                       ; $6ecc: $ff
    rst $38                                       ; $6ecd: $ff
    rst $38                                       ; $6ece: $ff
    rst $38                                       ; $6ecf: $ff
    rst $38                                       ; $6ed0: $ff
    rst $38                                       ; $6ed1: $ff
    rst $38                                       ; $6ed2: $ff
    rst $38                                       ; $6ed3: $ff
    rst $38                                       ; $6ed4: $ff
    rst $38                                       ; $6ed5: $ff
    rst $38                                       ; $6ed6: $ff
    rst $38                                       ; $6ed7: $ff
    rst $38                                       ; $6ed8: $ff
    rst $38                                       ; $6ed9: $ff
    rst $38                                       ; $6eda: $ff
    rst $38                                       ; $6edb: $ff
    rst $38                                       ; $6edc: $ff
    rst $38                                       ; $6edd: $ff
    rst $38                                       ; $6ede: $ff
    rst $38                                       ; $6edf: $ff
    rst $38                                       ; $6ee0: $ff
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    rst $38                                       ; $6ee3: $ff
    rst $38                                       ; $6ee4: $ff
    rst $38                                       ; $6ee5: $ff
    rst $38                                       ; $6ee6: $ff
    rst $38                                       ; $6ee7: $ff
    rst $38                                       ; $6ee8: $ff
    rst $38                                       ; $6ee9: $ff
    rst $38                                       ; $6eea: $ff
    rst $38                                       ; $6eeb: $ff
    rst $38                                       ; $6eec: $ff
    rst $38                                       ; $6eed: $ff
    rst $38                                       ; $6eee: $ff
    rst $38                                       ; $6eef: $ff
    rst $38                                       ; $6ef0: $ff
    rst $38                                       ; $6ef1: $ff
    rst $38                                       ; $6ef2: $ff
    rst $38                                       ; $6ef3: $ff
    rst $38                                       ; $6ef4: $ff
    rst $38                                       ; $6ef5: $ff
    rst $38                                       ; $6ef6: $ff
    rst $38                                       ; $6ef7: $ff
    rst $38                                       ; $6ef8: $ff
    rst $38                                       ; $6ef9: $ff
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    rst $38                                       ; $6efc: $ff
    rst $38                                       ; $6efd: $ff
    rst $38                                       ; $6efe: $ff
    rst $38                                       ; $6eff: $ff
    rst $38                                       ; $6f00: $ff
    rst $38                                       ; $6f01: $ff
    rst $38                                       ; $6f02: $ff
    rst $38                                       ; $6f03: $ff
    rst $38                                       ; $6f04: $ff
    rst $38                                       ; $6f05: $ff
    rst $38                                       ; $6f06: $ff
    rst $38                                       ; $6f07: $ff
    rst $38                                       ; $6f08: $ff
    rst $38                                       ; $6f09: $ff
    rst $38                                       ; $6f0a: $ff
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    rst $38                                       ; $6f0d: $ff
    rst $38                                       ; $6f0e: $ff
    rst $38                                       ; $6f0f: $ff
    rst $38                                       ; $6f10: $ff
    rst $38                                       ; $6f11: $ff
    rst $38                                       ; $6f12: $ff
    rst $38                                       ; $6f13: $ff
    rst $38                                       ; $6f14: $ff
    rst $38                                       ; $6f15: $ff
    rst $38                                       ; $6f16: $ff
    rst $38                                       ; $6f17: $ff
    rst $38                                       ; $6f18: $ff
    rst $38                                       ; $6f19: $ff
    rst $38                                       ; $6f1a: $ff
    rst $38                                       ; $6f1b: $ff
    rst $38                                       ; $6f1c: $ff
    rst $38                                       ; $6f1d: $ff
    rst $38                                       ; $6f1e: $ff
    rst $38                                       ; $6f1f: $ff
    rst $38                                       ; $6f20: $ff
    rst $38                                       ; $6f21: $ff
    rst $38                                       ; $6f22: $ff
    rst $38                                       ; $6f23: $ff
    rst $38                                       ; $6f24: $ff
    rst $38                                       ; $6f25: $ff
    rst $38                                       ; $6f26: $ff
    rst $38                                       ; $6f27: $ff
    rst $38                                       ; $6f28: $ff
    rst $38                                       ; $6f29: $ff
    rst $38                                       ; $6f2a: $ff
    rst $38                                       ; $6f2b: $ff
    rst $38                                       ; $6f2c: $ff
    rst $38                                       ; $6f2d: $ff
    rst $38                                       ; $6f2e: $ff
    rst $38                                       ; $6f2f: $ff
    rst $38                                       ; $6f30: $ff
    rst $38                                       ; $6f31: $ff
    rst $38                                       ; $6f32: $ff
    rst $38                                       ; $6f33: $ff
    rst $38                                       ; $6f34: $ff
    rst $38                                       ; $6f35: $ff
    rst $38                                       ; $6f36: $ff
    rst $38                                       ; $6f37: $ff

Jump_05e_6f38:
    rst $38                                       ; $6f38: $ff
    rst $38                                       ; $6f39: $ff
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    rst $38                                       ; $6f3c: $ff
    rst $38                                       ; $6f3d: $ff
    rst $38                                       ; $6f3e: $ff
    rst $38                                       ; $6f3f: $ff
    rst $38                                       ; $6f40: $ff
    rst $38                                       ; $6f41: $ff
    rst $38                                       ; $6f42: $ff
    rst $38                                       ; $6f43: $ff
    rst $38                                       ; $6f44: $ff
    rst $38                                       ; $6f45: $ff
    rst $38                                       ; $6f46: $ff
    rst $38                                       ; $6f47: $ff
    rst $38                                       ; $6f48: $ff
    rst $38                                       ; $6f49: $ff
    rst $38                                       ; $6f4a: $ff
    rst $38                                       ; $6f4b: $ff
    rst $38                                       ; $6f4c: $ff
    rst $38                                       ; $6f4d: $ff
    rst $38                                       ; $6f4e: $ff
    rst $38                                       ; $6f4f: $ff
    rst $38                                       ; $6f50: $ff
    rst $38                                       ; $6f51: $ff
    rst $38                                       ; $6f52: $ff
    rst $38                                       ; $6f53: $ff
    rst $38                                       ; $6f54: $ff
    rst $38                                       ; $6f55: $ff
    rst $38                                       ; $6f56: $ff
    rst $38                                       ; $6f57: $ff
    rst $38                                       ; $6f58: $ff
    rst $38                                       ; $6f59: $ff
    rst $38                                       ; $6f5a: $ff
    rst $38                                       ; $6f5b: $ff
    rst $38                                       ; $6f5c: $ff
    rst $38                                       ; $6f5d: $ff
    rst $38                                       ; $6f5e: $ff
    rst $38                                       ; $6f5f: $ff
    rst $38                                       ; $6f60: $ff
    rst $38                                       ; $6f61: $ff
    rst $38                                       ; $6f62: $ff
    rst $38                                       ; $6f63: $ff
    rst $38                                       ; $6f64: $ff
    rst $38                                       ; $6f65: $ff
    rst $38                                       ; $6f66: $ff
    rst $38                                       ; $6f67: $ff
    rst $38                                       ; $6f68: $ff
    rst $38                                       ; $6f69: $ff
    rst $38                                       ; $6f6a: $ff
    rst $38                                       ; $6f6b: $ff
    rst $38                                       ; $6f6c: $ff
    rst $38                                       ; $6f6d: $ff
    rst $38                                       ; $6f6e: $ff
    rst $38                                       ; $6f6f: $ff
    rst $38                                       ; $6f70: $ff
    rst $38                                       ; $6f71: $ff
    rst $38                                       ; $6f72: $ff
    rst $38                                       ; $6f73: $ff
    rst $38                                       ; $6f74: $ff
    rst $38                                       ; $6f75: $ff
    rst $38                                       ; $6f76: $ff
    rst $38                                       ; $6f77: $ff
    rst $38                                       ; $6f78: $ff
    rst $38                                       ; $6f79: $ff
    rst $38                                       ; $6f7a: $ff
    rst $38                                       ; $6f7b: $ff
    rst $38                                       ; $6f7c: $ff
    rst $38                                       ; $6f7d: $ff
    rst $38                                       ; $6f7e: $ff
    rst $38                                       ; $6f7f: $ff
    rst $38                                       ; $6f80: $ff
    rst $38                                       ; $6f81: $ff
    rst $38                                       ; $6f82: $ff
    rst $38                                       ; $6f83: $ff
    rst $38                                       ; $6f84: $ff
    rst $38                                       ; $6f85: $ff
    rst $38                                       ; $6f86: $ff
    rst $38                                       ; $6f87: $ff
    rst $38                                       ; $6f88: $ff
    rst $38                                       ; $6f89: $ff
    rst $38                                       ; $6f8a: $ff
    rst $38                                       ; $6f8b: $ff
    rst $38                                       ; $6f8c: $ff
    rst $38                                       ; $6f8d: $ff
    rst $38                                       ; $6f8e: $ff
    rst $38                                       ; $6f8f: $ff
    rst $38                                       ; $6f90: $ff
    rst $38                                       ; $6f91: $ff
    rst $38                                       ; $6f92: $ff
    rst $38                                       ; $6f93: $ff
    rst $38                                       ; $6f94: $ff
    rst $38                                       ; $6f95: $ff
    rst $38                                       ; $6f96: $ff
    rst $38                                       ; $6f97: $ff
    rst $38                                       ; $6f98: $ff
    rst $38                                       ; $6f99: $ff
    rst $38                                       ; $6f9a: $ff
    rst $38                                       ; $6f9b: $ff
    rst $38                                       ; $6f9c: $ff
    rst $38                                       ; $6f9d: $ff
    rst $38                                       ; $6f9e: $ff
    rst $38                                       ; $6f9f: $ff
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    rst $38                                       ; $6fa2: $ff
    rst $38                                       ; $6fa3: $ff
    rst $38                                       ; $6fa4: $ff
    rst $38                                       ; $6fa5: $ff
    rst $38                                       ; $6fa6: $ff
    rst $38                                       ; $6fa7: $ff
    rst $38                                       ; $6fa8: $ff
    rst $38                                       ; $6fa9: $ff
    rst $38                                       ; $6faa: $ff
    rst $38                                       ; $6fab: $ff
    rst $38                                       ; $6fac: $ff
    rst $38                                       ; $6fad: $ff
    rst $38                                       ; $6fae: $ff
    rst $38                                       ; $6faf: $ff
    rst $38                                       ; $6fb0: $ff
    rst $38                                       ; $6fb1: $ff
    rst $38                                       ; $6fb2: $ff
    rst $38                                       ; $6fb3: $ff
    rst $38                                       ; $6fb4: $ff
    rst $38                                       ; $6fb5: $ff
    rst $38                                       ; $6fb6: $ff
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff
    rst $38                                       ; $6fb9: $ff
    rst $38                                       ; $6fba: $ff
    rst $38                                       ; $6fbb: $ff
    rst $38                                       ; $6fbc: $ff
    rst $38                                       ; $6fbd: $ff
    rst $38                                       ; $6fbe: $ff
    rst $38                                       ; $6fbf: $ff
    rst $38                                       ; $6fc0: $ff
    rst $38                                       ; $6fc1: $ff
    rst $38                                       ; $6fc2: $ff
    rst $38                                       ; $6fc3: $ff
    rst $38                                       ; $6fc4: $ff
    rst $38                                       ; $6fc5: $ff
    rst $38                                       ; $6fc6: $ff
    rst $38                                       ; $6fc7: $ff
    rst $38                                       ; $6fc8: $ff
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    rst $38                                       ; $6fcc: $ff
    rst $38                                       ; $6fcd: $ff
    rst $38                                       ; $6fce: $ff
    rst $38                                       ; $6fcf: $ff
    rst $38                                       ; $6fd0: $ff
    rst $38                                       ; $6fd1: $ff
    rst $38                                       ; $6fd2: $ff
    rst $38                                       ; $6fd3: $ff
    rst $38                                       ; $6fd4: $ff
    rst $38                                       ; $6fd5: $ff
    rst $38                                       ; $6fd6: $ff
    rst $38                                       ; $6fd7: $ff
    rst $38                                       ; $6fd8: $ff
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    rst $38                                       ; $6fdd: $ff
    rst $38                                       ; $6fde: $ff
    rst $38                                       ; $6fdf: $ff
    rst $38                                       ; $6fe0: $ff
    rst $38                                       ; $6fe1: $ff

Jump_05e_6fe2:
    rst $38                                       ; $6fe2: $ff
    rst $38                                       ; $6fe3: $ff
    rst $38                                       ; $6fe4: $ff
    rst $38                                       ; $6fe5: $ff
    rst $38                                       ; $6fe6: $ff
    rst $38                                       ; $6fe7: $ff
    rst $38                                       ; $6fe8: $ff
    rst $38                                       ; $6fe9: $ff
    rst $38                                       ; $6fea: $ff
    rst $38                                       ; $6feb: $ff
    rst $38                                       ; $6fec: $ff
    rst $38                                       ; $6fed: $ff
    rst $38                                       ; $6fee: $ff
    rst $38                                       ; $6fef: $ff
    rst $38                                       ; $6ff0: $ff
    rst $38                                       ; $6ff1: $ff
    rst $38                                       ; $6ff2: $ff
    rst $38                                       ; $6ff3: $ff
    rst $38                                       ; $6ff4: $ff
    rst $38                                       ; $6ff5: $ff
    rst $38                                       ; $6ff6: $ff
    rst $38                                       ; $6ff7: $ff
    rst $38                                       ; $6ff8: $ff
    rst $38                                       ; $6ff9: $ff
    rst $38                                       ; $6ffa: $ff
    rst $38                                       ; $6ffb: $ff
    rst $38                                       ; $6ffc: $ff
    rst $38                                       ; $6ffd: $ff
    rst $38                                       ; $6ffe: $ff
    rst $38                                       ; $6fff: $ff
    rst $38                                       ; $7000: $ff
    rst $38                                       ; $7001: $ff
    rst $38                                       ; $7002: $ff
    rst $38                                       ; $7003: $ff
    rst $38                                       ; $7004: $ff
    rst $38                                       ; $7005: $ff
    rst $38                                       ; $7006: $ff
    rst $38                                       ; $7007: $ff
    rst $38                                       ; $7008: $ff
    rst $38                                       ; $7009: $ff
    rst $38                                       ; $700a: $ff
    rst $38                                       ; $700b: $ff
    rst $38                                       ; $700c: $ff
    rst $38                                       ; $700d: $ff
    rst $38                                       ; $700e: $ff
    rst $38                                       ; $700f: $ff
    rst $38                                       ; $7010: $ff
    rst $38                                       ; $7011: $ff
    rst $38                                       ; $7012: $ff
    rst $38                                       ; $7013: $ff
    rst $38                                       ; $7014: $ff
    rst $38                                       ; $7015: $ff
    rst $38                                       ; $7016: $ff
    rst $38                                       ; $7017: $ff
    rst $38                                       ; $7018: $ff
    rst $38                                       ; $7019: $ff
    rst $38                                       ; $701a: $ff
    rst $38                                       ; $701b: $ff
    rst $38                                       ; $701c: $ff
    rst $38                                       ; $701d: $ff
    rst $38                                       ; $701e: $ff
    rst $38                                       ; $701f: $ff
    rst $38                                       ; $7020: $ff
    rst $38                                       ; $7021: $ff
    rst $38                                       ; $7022: $ff
    rst $38                                       ; $7023: $ff
    rst $38                                       ; $7024: $ff
    rst $38                                       ; $7025: $ff
    rst $38                                       ; $7026: $ff
    rst $38                                       ; $7027: $ff
    rst $38                                       ; $7028: $ff
    rst $38                                       ; $7029: $ff
    rst $38                                       ; $702a: $ff
    rst $38                                       ; $702b: $ff
    rst $38                                       ; $702c: $ff
    rst $38                                       ; $702d: $ff
    rst $38                                       ; $702e: $ff
    rst $38                                       ; $702f: $ff
    rst $38                                       ; $7030: $ff
    rst $38                                       ; $7031: $ff
    rst $38                                       ; $7032: $ff
    rst $38                                       ; $7033: $ff
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    rst $38                                       ; $7036: $ff
    rst $38                                       ; $7037: $ff
    rst $38                                       ; $7038: $ff
    rst $38                                       ; $7039: $ff
    rst $38                                       ; $703a: $ff
    rst $38                                       ; $703b: $ff
    rst $38                                       ; $703c: $ff
    rst $38                                       ; $703d: $ff
    rst $38                                       ; $703e: $ff
    rst $38                                       ; $703f: $ff
    rst $38                                       ; $7040: $ff
    rst $38                                       ; $7041: $ff
    rst $38                                       ; $7042: $ff
    rst $38                                       ; $7043: $ff
    rst $38                                       ; $7044: $ff
    rst $38                                       ; $7045: $ff
    rst $38                                       ; $7046: $ff
    rst $38                                       ; $7047: $ff
    rst $38                                       ; $7048: $ff
    rst $38                                       ; $7049: $ff
    rst $38                                       ; $704a: $ff
    rst $38                                       ; $704b: $ff
    rst $38                                       ; $704c: $ff
    rst $38                                       ; $704d: $ff
    rst $38                                       ; $704e: $ff
    rst $38                                       ; $704f: $ff
    rst $38                                       ; $7050: $ff
    rst $38                                       ; $7051: $ff
    rst $38                                       ; $7052: $ff
    rst $38                                       ; $7053: $ff
    rst $38                                       ; $7054: $ff
    rst $38                                       ; $7055: $ff
    rst $38                                       ; $7056: $ff
    rst $38                                       ; $7057: $ff
    rst $38                                       ; $7058: $ff
    rst $38                                       ; $7059: $ff
    rst $38                                       ; $705a: $ff
    rst $38                                       ; $705b: $ff
    rst $38                                       ; $705c: $ff
    rst $38                                       ; $705d: $ff
    rst $38                                       ; $705e: $ff
    rst $38                                       ; $705f: $ff
    rst $38                                       ; $7060: $ff
    rst $38                                       ; $7061: $ff
    rst $38                                       ; $7062: $ff
    rst $38                                       ; $7063: $ff
    rst $38                                       ; $7064: $ff
    rst $38                                       ; $7065: $ff
    rst $38                                       ; $7066: $ff
    rst $38                                       ; $7067: $ff
    rst $38                                       ; $7068: $ff
    rst $38                                       ; $7069: $ff
    rst $38                                       ; $706a: $ff
    rst $38                                       ; $706b: $ff
    rst $38                                       ; $706c: $ff
    rst $38                                       ; $706d: $ff
    rst $38                                       ; $706e: $ff
    rst $38                                       ; $706f: $ff
    rst $38                                       ; $7070: $ff
    rst $38                                       ; $7071: $ff
    rst $38                                       ; $7072: $ff
    rst $38                                       ; $7073: $ff
    rst $38                                       ; $7074: $ff
    rst $38                                       ; $7075: $ff
    rst $38                                       ; $7076: $ff
    rst $38                                       ; $7077: $ff
    rst $38                                       ; $7078: $ff
    rst $38                                       ; $7079: $ff
    rst $38                                       ; $707a: $ff
    rst $38                                       ; $707b: $ff
    rst $38                                       ; $707c: $ff
    rst $38                                       ; $707d: $ff
    rst $38                                       ; $707e: $ff
    rst $38                                       ; $707f: $ff
    rst $38                                       ; $7080: $ff
    rst $38                                       ; $7081: $ff
    rst $38                                       ; $7082: $ff
    rst $38                                       ; $7083: $ff
    rst $38                                       ; $7084: $ff
    rst $38                                       ; $7085: $ff
    rst $38                                       ; $7086: $ff
    rst $38                                       ; $7087: $ff
    rst $38                                       ; $7088: $ff
    rst $38                                       ; $7089: $ff
    rst $38                                       ; $708a: $ff
    rst $38                                       ; $708b: $ff
    rst $38                                       ; $708c: $ff
    rst $38                                       ; $708d: $ff
    rst $38                                       ; $708e: $ff
    rst $38                                       ; $708f: $ff
    rst $38                                       ; $7090: $ff
    rst $38                                       ; $7091: $ff
    rst $38                                       ; $7092: $ff
    rst $38                                       ; $7093: $ff
    rst $38                                       ; $7094: $ff
    rst $38                                       ; $7095: $ff
    rst $38                                       ; $7096: $ff
    rst $38                                       ; $7097: $ff
    rst $38                                       ; $7098: $ff
    rst $38                                       ; $7099: $ff
    rst $38                                       ; $709a: $ff
    rst $38                                       ; $709b: $ff
    rst $38                                       ; $709c: $ff
    rst $38                                       ; $709d: $ff
    rst $38                                       ; $709e: $ff
    rst $38                                       ; $709f: $ff
    rst $38                                       ; $70a0: $ff
    rst $38                                       ; $70a1: $ff
    rst $38                                       ; $70a2: $ff
    rst $38                                       ; $70a3: $ff
    rst $38                                       ; $70a4: $ff
    rst $38                                       ; $70a5: $ff
    rst $38                                       ; $70a6: $ff
    rst $38                                       ; $70a7: $ff
    rst $38                                       ; $70a8: $ff
    rst $38                                       ; $70a9: $ff
    rst $38                                       ; $70aa: $ff
    rst $38                                       ; $70ab: $ff
    rst $38                                       ; $70ac: $ff
    rst $38                                       ; $70ad: $ff
    rst $38                                       ; $70ae: $ff
    rst $38                                       ; $70af: $ff
    rst $38                                       ; $70b0: $ff
    rst $38                                       ; $70b1: $ff
    rst $38                                       ; $70b2: $ff
    rst $38                                       ; $70b3: $ff
    rst $38                                       ; $70b4: $ff
    rst $38                                       ; $70b5: $ff
    rst $38                                       ; $70b6: $ff
    rst $38                                       ; $70b7: $ff
    rst $38                                       ; $70b8: $ff
    rst $38                                       ; $70b9: $ff
    rst $38                                       ; $70ba: $ff
    rst $38                                       ; $70bb: $ff
    rst $38                                       ; $70bc: $ff
    rst $38                                       ; $70bd: $ff
    rst $38                                       ; $70be: $ff
    rst $38                                       ; $70bf: $ff
    rst $38                                       ; $70c0: $ff
    rst $38                                       ; $70c1: $ff
    rst $38                                       ; $70c2: $ff
    rst $38                                       ; $70c3: $ff
    rst $38                                       ; $70c4: $ff
    rst $38                                       ; $70c5: $ff
    rst $38                                       ; $70c6: $ff
    rst $38                                       ; $70c7: $ff
    rst $38                                       ; $70c8: $ff
    rst $38                                       ; $70c9: $ff
    rst $38                                       ; $70ca: $ff
    rst $38                                       ; $70cb: $ff
    rst $38                                       ; $70cc: $ff
    rst $38                                       ; $70cd: $ff
    rst $38                                       ; $70ce: $ff
    rst $38                                       ; $70cf: $ff
    rst $38                                       ; $70d0: $ff
    rst $38                                       ; $70d1: $ff
    rst $38                                       ; $70d2: $ff
    rst $38                                       ; $70d3: $ff
    rst $38                                       ; $70d4: $ff
    rst $38                                       ; $70d5: $ff
    rst $38                                       ; $70d6: $ff
    rst $38                                       ; $70d7: $ff
    rst $38                                       ; $70d8: $ff
    rst $38                                       ; $70d9: $ff
    rst $38                                       ; $70da: $ff
    rst $38                                       ; $70db: $ff
    rst $38                                       ; $70dc: $ff
    rst $38                                       ; $70dd: $ff
    rst $38                                       ; $70de: $ff
    rst $38                                       ; $70df: $ff
    rst $38                                       ; $70e0: $ff
    rst $38                                       ; $70e1: $ff
    rst $38                                       ; $70e2: $ff
    rst $38                                       ; $70e3: $ff
    rst $38                                       ; $70e4: $ff
    rst $38                                       ; $70e5: $ff
    rst $38                                       ; $70e6: $ff
    rst $38                                       ; $70e7: $ff
    rst $38                                       ; $70e8: $ff
    rst $38                                       ; $70e9: $ff
    rst $38                                       ; $70ea: $ff
    rst $38                                       ; $70eb: $ff
    rst $38                                       ; $70ec: $ff
    rst $38                                       ; $70ed: $ff
    rst $38                                       ; $70ee: $ff
    rst $38                                       ; $70ef: $ff
    rst $38                                       ; $70f0: $ff
    rst $38                                       ; $70f1: $ff
    rst $38                                       ; $70f2: $ff
    rst $38                                       ; $70f3: $ff
    rst $38                                       ; $70f4: $ff
    rst $38                                       ; $70f5: $ff
    rst $38                                       ; $70f6: $ff
    rst $38                                       ; $70f7: $ff
    rst $38                                       ; $70f8: $ff
    rst $38                                       ; $70f9: $ff
    rst $38                                       ; $70fa: $ff
    rst $38                                       ; $70fb: $ff
    rst $38                                       ; $70fc: $ff
    rst $38                                       ; $70fd: $ff
    rst $38                                       ; $70fe: $ff
    rst $38                                       ; $70ff: $ff
    rst $38                                       ; $7100: $ff
    rst $38                                       ; $7101: $ff
    rst $38                                       ; $7102: $ff
    rst $38                                       ; $7103: $ff
    rst $38                                       ; $7104: $ff
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    rst $38                                       ; $7107: $ff
    rst $38                                       ; $7108: $ff
    rst $38                                       ; $7109: $ff
    rst $38                                       ; $710a: $ff
    rst $38                                       ; $710b: $ff
    rst $38                                       ; $710c: $ff
    rst $38                                       ; $710d: $ff
    rst $38                                       ; $710e: $ff
    rst $38                                       ; $710f: $ff
    rst $38                                       ; $7110: $ff
    rst $38                                       ; $7111: $ff
    rst $38                                       ; $7112: $ff
    rst $38                                       ; $7113: $ff
    rst $38                                       ; $7114: $ff
    rst $38                                       ; $7115: $ff
    rst $38                                       ; $7116: $ff
    rst $38                                       ; $7117: $ff
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $38                                       ; $711a: $ff
    rst $38                                       ; $711b: $ff
    rst $38                                       ; $711c: $ff
    rst $38                                       ; $711d: $ff
    rst $38                                       ; $711e: $ff
    rst $38                                       ; $711f: $ff
    rst $38                                       ; $7120: $ff
    rst $38                                       ; $7121: $ff
    rst $38                                       ; $7122: $ff
    rst $38                                       ; $7123: $ff
    rst $38                                       ; $7124: $ff
    rst $38                                       ; $7125: $ff
    rst $38                                       ; $7126: $ff
    rst $38                                       ; $7127: $ff
    rst $38                                       ; $7128: $ff
    rst $38                                       ; $7129: $ff
    rst $38                                       ; $712a: $ff
    rst $38                                       ; $712b: $ff
    rst $38                                       ; $712c: $ff
    rst $38                                       ; $712d: $ff
    rst $38                                       ; $712e: $ff
    rst $38                                       ; $712f: $ff
    rst $38                                       ; $7130: $ff
    rst $38                                       ; $7131: $ff
    rst $38                                       ; $7132: $ff
    rst $38                                       ; $7133: $ff
    rst $38                                       ; $7134: $ff
    rst $38                                       ; $7135: $ff
    rst $38                                       ; $7136: $ff
    rst $38                                       ; $7137: $ff
    rst $38                                       ; $7138: $ff
    rst $38                                       ; $7139: $ff
    rst $38                                       ; $713a: $ff
    rst $38                                       ; $713b: $ff
    rst $38                                       ; $713c: $ff
    rst $38                                       ; $713d: $ff
    rst $38                                       ; $713e: $ff
    rst $38                                       ; $713f: $ff
    rst $38                                       ; $7140: $ff
    rst $38                                       ; $7141: $ff
    rst $38                                       ; $7142: $ff
    rst $38                                       ; $7143: $ff
    rst $38                                       ; $7144: $ff
    rst $38                                       ; $7145: $ff
    rst $38                                       ; $7146: $ff
    rst $38                                       ; $7147: $ff
    rst $38                                       ; $7148: $ff
    rst $38                                       ; $7149: $ff
    rst $38                                       ; $714a: $ff
    rst $38                                       ; $714b: $ff
    rst $38                                       ; $714c: $ff
    rst $38                                       ; $714d: $ff
    rst $38                                       ; $714e: $ff
    rst $38                                       ; $714f: $ff
    rst $38                                       ; $7150: $ff
    rst $38                                       ; $7151: $ff
    rst $38                                       ; $7152: $ff
    rst $38                                       ; $7153: $ff
    rst $38                                       ; $7154: $ff
    rst $38                                       ; $7155: $ff
    rst $38                                       ; $7156: $ff
    rst $38                                       ; $7157: $ff
    rst $38                                       ; $7158: $ff
    rst $38                                       ; $7159: $ff
    rst $38                                       ; $715a: $ff
    rst $38                                       ; $715b: $ff
    rst $38                                       ; $715c: $ff
    rst $38                                       ; $715d: $ff
    rst $38                                       ; $715e: $ff
    rst $38                                       ; $715f: $ff
    rst $38                                       ; $7160: $ff
    rst $38                                       ; $7161: $ff
    rst $38                                       ; $7162: $ff
    rst $38                                       ; $7163: $ff
    rst $38                                       ; $7164: $ff
    rst $38                                       ; $7165: $ff
    rst $38                                       ; $7166: $ff
    rst $38                                       ; $7167: $ff
    rst $38                                       ; $7168: $ff

Jump_05e_7169:
    rst $38                                       ; $7169: $ff
    rst $38                                       ; $716a: $ff
    rst $38                                       ; $716b: $ff
    rst $38                                       ; $716c: $ff
    rst $38                                       ; $716d: $ff
    rst $38                                       ; $716e: $ff
    rst $38                                       ; $716f: $ff
    rst $38                                       ; $7170: $ff
    rst $38                                       ; $7171: $ff
    rst $38                                       ; $7172: $ff
    rst $38                                       ; $7173: $ff
    rst $38                                       ; $7174: $ff
    rst $38                                       ; $7175: $ff
    rst $38                                       ; $7176: $ff
    rst $38                                       ; $7177: $ff
    rst $38                                       ; $7178: $ff
    rst $38                                       ; $7179: $ff
    rst $38                                       ; $717a: $ff
    rst $38                                       ; $717b: $ff
    rst $38                                       ; $717c: $ff
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    rst $38                                       ; $7182: $ff
    rst $38                                       ; $7183: $ff
    rst $38                                       ; $7184: $ff
    rst $38                                       ; $7185: $ff
    rst $38                                       ; $7186: $ff
    rst $38                                       ; $7187: $ff
    rst $38                                       ; $7188: $ff
    rst $38                                       ; $7189: $ff
    rst $38                                       ; $718a: $ff
    rst $38                                       ; $718b: $ff
    rst $38                                       ; $718c: $ff
    rst $38                                       ; $718d: $ff
    rst $38                                       ; $718e: $ff
    rst $38                                       ; $718f: $ff
    rst $38                                       ; $7190: $ff
    rst $38                                       ; $7191: $ff
    rst $38                                       ; $7192: $ff
    rst $38                                       ; $7193: $ff
    rst $38                                       ; $7194: $ff
    rst $38                                       ; $7195: $ff
    rst $38                                       ; $7196: $ff
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $38                                       ; $7199: $ff
    rst $38                                       ; $719a: $ff
    rst $38                                       ; $719b: $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    rst $38                                       ; $719e: $ff
    rst $38                                       ; $719f: $ff
    rst $38                                       ; $71a0: $ff
    rst $38                                       ; $71a1: $ff
    rst $38                                       ; $71a2: $ff
    rst $38                                       ; $71a3: $ff
    rst $38                                       ; $71a4: $ff
    rst $38                                       ; $71a5: $ff
    rst $38                                       ; $71a6: $ff
    rst $38                                       ; $71a7: $ff
    rst $38                                       ; $71a8: $ff
    rst $38                                       ; $71a9: $ff
    rst $38                                       ; $71aa: $ff
    rst $38                                       ; $71ab: $ff
    rst $38                                       ; $71ac: $ff
    rst $38                                       ; $71ad: $ff
    rst $38                                       ; $71ae: $ff
    rst $38                                       ; $71af: $ff
    rst $38                                       ; $71b0: $ff
    rst $38                                       ; $71b1: $ff
    rst $38                                       ; $71b2: $ff
    rst $38                                       ; $71b3: $ff
    rst $38                                       ; $71b4: $ff
    rst $38                                       ; $71b5: $ff
    rst $38                                       ; $71b6: $ff
    rst $38                                       ; $71b7: $ff
    rst $38                                       ; $71b8: $ff
    rst $38                                       ; $71b9: $ff
    rst $38                                       ; $71ba: $ff
    rst $38                                       ; $71bb: $ff
    rst $38                                       ; $71bc: $ff
    rst $38                                       ; $71bd: $ff
    rst $38                                       ; $71be: $ff
    rst $38                                       ; $71bf: $ff
    rst $38                                       ; $71c0: $ff
    rst $38                                       ; $71c1: $ff
    rst $38                                       ; $71c2: $ff
    rst $38                                       ; $71c3: $ff
    rst $38                                       ; $71c4: $ff
    rst $38                                       ; $71c5: $ff
    rst $38                                       ; $71c6: $ff
    rst $38                                       ; $71c7: $ff
    rst $38                                       ; $71c8: $ff
    rst $38                                       ; $71c9: $ff
    rst $38                                       ; $71ca: $ff
    rst $38                                       ; $71cb: $ff
    rst $38                                       ; $71cc: $ff
    rst $38                                       ; $71cd: $ff
    rst $38                                       ; $71ce: $ff
    rst $38                                       ; $71cf: $ff
    rst $38                                       ; $71d0: $ff
    rst $38                                       ; $71d1: $ff
    rst $38                                       ; $71d2: $ff
    rst $38                                       ; $71d3: $ff
    rst $38                                       ; $71d4: $ff
    rst $38                                       ; $71d5: $ff
    rst $38                                       ; $71d6: $ff
    rst $38                                       ; $71d7: $ff
    rst $38                                       ; $71d8: $ff
    rst $38                                       ; $71d9: $ff
    rst $38                                       ; $71da: $ff
    rst $38                                       ; $71db: $ff
    rst $38                                       ; $71dc: $ff

Jump_05e_71dd:
    rst $38                                       ; $71dd: $ff
    rst $38                                       ; $71de: $ff
    rst $38                                       ; $71df: $ff
    rst $38                                       ; $71e0: $ff
    rst $38                                       ; $71e1: $ff
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    rst $38                                       ; $71e4: $ff
    rst $38                                       ; $71e5: $ff
    rst $38                                       ; $71e6: $ff
    rst $38                                       ; $71e7: $ff
    rst $38                                       ; $71e8: $ff
    rst $38                                       ; $71e9: $ff
    rst $38                                       ; $71ea: $ff
    rst $38                                       ; $71eb: $ff
    rst $38                                       ; $71ec: $ff
    rst $38                                       ; $71ed: $ff
    rst $38                                       ; $71ee: $ff
    rst $38                                       ; $71ef: $ff
    rst $38                                       ; $71f0: $ff
    rst $38                                       ; $71f1: $ff
    rst $38                                       ; $71f2: $ff
    rst $38                                       ; $71f3: $ff
    rst $38                                       ; $71f4: $ff
    rst $38                                       ; $71f5: $ff
    rst $38                                       ; $71f6: $ff
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    rst $38                                       ; $71f9: $ff
    rst $38                                       ; $71fa: $ff
    rst $38                                       ; $71fb: $ff
    rst $38                                       ; $71fc: $ff
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    rst $38                                       ; $71ff: $ff
    rst $38                                       ; $7200: $ff
    rst $38                                       ; $7201: $ff
    rst $38                                       ; $7202: $ff
    rst $38                                       ; $7203: $ff
    rst $38                                       ; $7204: $ff
    rst $38                                       ; $7205: $ff
    rst $38                                       ; $7206: $ff
    rst $38                                       ; $7207: $ff
    rst $38                                       ; $7208: $ff
    rst $38                                       ; $7209: $ff
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    rst $38                                       ; $720c: $ff
    rst $38                                       ; $720d: $ff
    rst $38                                       ; $720e: $ff
    rst $38                                       ; $720f: $ff
    rst $38                                       ; $7210: $ff
    rst $38                                       ; $7211: $ff
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    rst $38                                       ; $7215: $ff

Call_05e_7216:
    rst $38                                       ; $7216: $ff
    rst $38                                       ; $7217: $ff
    rst $38                                       ; $7218: $ff
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
    rst $38                                       ; $7220: $ff
    rst $38                                       ; $7221: $ff
    rst $38                                       ; $7222: $ff
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    rst $38                                       ; $7225: $ff
    rst $38                                       ; $7226: $ff
    rst $38                                       ; $7227: $ff
    rst $38                                       ; $7228: $ff
    rst $38                                       ; $7229: $ff
    rst $38                                       ; $722a: $ff
    rst $38                                       ; $722b: $ff
    rst $38                                       ; $722c: $ff
    rst $38                                       ; $722d: $ff
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    rst $38                                       ; $7230: $ff
    rst $38                                       ; $7231: $ff
    rst $38                                       ; $7232: $ff
    rst $38                                       ; $7233: $ff
    rst $38                                       ; $7234: $ff
    rst $38                                       ; $7235: $ff
    rst $38                                       ; $7236: $ff
    rst $38                                       ; $7237: $ff
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    rst $38                                       ; $7242: $ff
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    rst $38                                       ; $724a: $ff
    rst $38                                       ; $724b: $ff
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    rst $38                                       ; $7253: $ff
    rst $38                                       ; $7254: $ff
    rst $38                                       ; $7255: $ff
    rst $38                                       ; $7256: $ff
    rst $38                                       ; $7257: $ff
    rst $38                                       ; $7258: $ff
    rst $38                                       ; $7259: $ff
    rst $38                                       ; $725a: $ff
    rst $38                                       ; $725b: $ff
    rst $38                                       ; $725c: $ff
    rst $38                                       ; $725d: $ff
    rst $38                                       ; $725e: $ff
    rst $38                                       ; $725f: $ff
    rst $38                                       ; $7260: $ff
    rst $38                                       ; $7261: $ff
    rst $38                                       ; $7262: $ff
    rst $38                                       ; $7263: $ff
    rst $38                                       ; $7264: $ff
    rst $38                                       ; $7265: $ff
    rst $38                                       ; $7266: $ff
    rst $38                                       ; $7267: $ff
    rst $38                                       ; $7268: $ff
    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    rst $38                                       ; $726b: $ff
    rst $38                                       ; $726c: $ff
    rst $38                                       ; $726d: $ff
    rst $38                                       ; $726e: $ff
    rst $38                                       ; $726f: $ff
    rst $38                                       ; $7270: $ff
    rst $38                                       ; $7271: $ff
    rst $38                                       ; $7272: $ff
    rst $38                                       ; $7273: $ff
    rst $38                                       ; $7274: $ff
    rst $38                                       ; $7275: $ff
    rst $38                                       ; $7276: $ff
    rst $38                                       ; $7277: $ff
    rst $38                                       ; $7278: $ff
    rst $38                                       ; $7279: $ff
    rst $38                                       ; $727a: $ff
    rst $38                                       ; $727b: $ff
    rst $38                                       ; $727c: $ff
    rst $38                                       ; $727d: $ff
    rst $38                                       ; $727e: $ff
    rst $38                                       ; $727f: $ff
    rst $38                                       ; $7280: $ff
    rst $38                                       ; $7281: $ff
    rst $38                                       ; $7282: $ff
    rst $38                                       ; $7283: $ff
    rst $38                                       ; $7284: $ff
    rst $38                                       ; $7285: $ff
    rst $38                                       ; $7286: $ff
    rst $38                                       ; $7287: $ff
    rst $38                                       ; $7288: $ff
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    rst $38                                       ; $728c: $ff
    rst $38                                       ; $728d: $ff
    rst $38                                       ; $728e: $ff
    rst $38                                       ; $728f: $ff
    rst $38                                       ; $7290: $ff
    rst $38                                       ; $7291: $ff
    rst $38                                       ; $7292: $ff
    rst $38                                       ; $7293: $ff
    rst $38                                       ; $7294: $ff
    rst $38                                       ; $7295: $ff
    rst $38                                       ; $7296: $ff
    rst $38                                       ; $7297: $ff
    rst $38                                       ; $7298: $ff
    rst $38                                       ; $7299: $ff
    rst $38                                       ; $729a: $ff
    rst $38                                       ; $729b: $ff
    rst $38                                       ; $729c: $ff
    rst $38                                       ; $729d: $ff
    rst $38                                       ; $729e: $ff
    rst $38                                       ; $729f: $ff
    rst $38                                       ; $72a0: $ff
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    rst $38                                       ; $72a3: $ff
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    rst $38                                       ; $72a7: $ff
    rst $38                                       ; $72a8: $ff
    rst $38                                       ; $72a9: $ff
    rst $38                                       ; $72aa: $ff
    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    rst $38                                       ; $72af: $ff
    rst $38                                       ; $72b0: $ff
    rst $38                                       ; $72b1: $ff
    rst $38                                       ; $72b2: $ff
    rst $38                                       ; $72b3: $ff
    rst $38                                       ; $72b4: $ff
    rst $38                                       ; $72b5: $ff
    rst $38                                       ; $72b6: $ff
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    rst $38                                       ; $72b9: $ff
    rst $38                                       ; $72ba: $ff
    rst $38                                       ; $72bb: $ff
    rst $38                                       ; $72bc: $ff
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    rst $38                                       ; $72bf: $ff
    rst $38                                       ; $72c0: $ff
    rst $38                                       ; $72c1: $ff
    rst $38                                       ; $72c2: $ff
    rst $38                                       ; $72c3: $ff
    rst $38                                       ; $72c4: $ff
    rst $38                                       ; $72c5: $ff
    rst $38                                       ; $72c6: $ff
    rst $38                                       ; $72c7: $ff
    rst $38                                       ; $72c8: $ff
    rst $38                                       ; $72c9: $ff
    rst $38                                       ; $72ca: $ff
    rst $38                                       ; $72cb: $ff
    rst $38                                       ; $72cc: $ff
    rst $38                                       ; $72cd: $ff
    rst $38                                       ; $72ce: $ff
    rst $38                                       ; $72cf: $ff
    rst $38                                       ; $72d0: $ff
    rst $38                                       ; $72d1: $ff
    rst $38                                       ; $72d2: $ff
    rst $38                                       ; $72d3: $ff
    rst $38                                       ; $72d4: $ff
    rst $38                                       ; $72d5: $ff
    rst $38                                       ; $72d6: $ff
    rst $38                                       ; $72d7: $ff
    rst $38                                       ; $72d8: $ff
    rst $38                                       ; $72d9: $ff
    rst $38                                       ; $72da: $ff
    rst $38                                       ; $72db: $ff
    rst $38                                       ; $72dc: $ff
    rst $38                                       ; $72dd: $ff
    rst $38                                       ; $72de: $ff
    rst $38                                       ; $72df: $ff
    rst $38                                       ; $72e0: $ff
    rst $38                                       ; $72e1: $ff
    rst $38                                       ; $72e2: $ff
    rst $38                                       ; $72e3: $ff
    rst $38                                       ; $72e4: $ff
    rst $38                                       ; $72e5: $ff
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    rst $38                                       ; $72e8: $ff
    rst $38                                       ; $72e9: $ff
    rst $38                                       ; $72ea: $ff
    rst $38                                       ; $72eb: $ff
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    rst $38                                       ; $72f0: $ff
    rst $38                                       ; $72f1: $ff
    rst $38                                       ; $72f2: $ff
    rst $38                                       ; $72f3: $ff
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    rst $38                                       ; $72fd: $ff
    rst $38                                       ; $72fe: $ff
    rst $38                                       ; $72ff: $ff
    rst $38                                       ; $7300: $ff
    rst $38                                       ; $7301: $ff
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    rst $38                                       ; $7304: $ff
    rst $38                                       ; $7305: $ff
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    rst $38                                       ; $7309: $ff
    rst $38                                       ; $730a: $ff
    rst $38                                       ; $730b: $ff
    rst $38                                       ; $730c: $ff
    rst $38                                       ; $730d: $ff
    rst $38                                       ; $730e: $ff
    rst $38                                       ; $730f: $ff
    rst $38                                       ; $7310: $ff
    rst $38                                       ; $7311: $ff
    rst $38                                       ; $7312: $ff
    rst $38                                       ; $7313: $ff
    rst $38                                       ; $7314: $ff
    rst $38                                       ; $7315: $ff
    rst $38                                       ; $7316: $ff
    rst $38                                       ; $7317: $ff
    rst $38                                       ; $7318: $ff
    rst $38                                       ; $7319: $ff
    rst $38                                       ; $731a: $ff
    rst $38                                       ; $731b: $ff
    rst $38                                       ; $731c: $ff
    rst $38                                       ; $731d: $ff
    rst $38                                       ; $731e: $ff
    rst $38                                       ; $731f: $ff
    rst $38                                       ; $7320: $ff
    rst $38                                       ; $7321: $ff
    rst $38                                       ; $7322: $ff
    rst $38                                       ; $7323: $ff
    rst $38                                       ; $7324: $ff
    rst $38                                       ; $7325: $ff
    rst $38                                       ; $7326: $ff
    rst $38                                       ; $7327: $ff
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $38                                       ; $732a: $ff
    rst $38                                       ; $732b: $ff
    rst $38                                       ; $732c: $ff
    rst $38                                       ; $732d: $ff
    rst $38                                       ; $732e: $ff
    rst $38                                       ; $732f: $ff
    rst $38                                       ; $7330: $ff
    rst $38                                       ; $7331: $ff
    rst $38                                       ; $7332: $ff
    rst $38                                       ; $7333: $ff
    rst $38                                       ; $7334: $ff
    rst $38                                       ; $7335: $ff
    rst $38                                       ; $7336: $ff
    rst $38                                       ; $7337: $ff
    rst $38                                       ; $7338: $ff
    rst $38                                       ; $7339: $ff
    rst $38                                       ; $733a: $ff
    rst $38                                       ; $733b: $ff
    rst $38                                       ; $733c: $ff
    rst $38                                       ; $733d: $ff
    rst $38                                       ; $733e: $ff
    rst $38                                       ; $733f: $ff
    rst $38                                       ; $7340: $ff
    rst $38                                       ; $7341: $ff
    rst $38                                       ; $7342: $ff
    rst $38                                       ; $7343: $ff
    rst $38                                       ; $7344: $ff
    rst $38                                       ; $7345: $ff
    rst $38                                       ; $7346: $ff
    rst $38                                       ; $7347: $ff
    rst $38                                       ; $7348: $ff
    rst $38                                       ; $7349: $ff
    rst $38                                       ; $734a: $ff
    rst $38                                       ; $734b: $ff
    rst $38                                       ; $734c: $ff
    rst $38                                       ; $734d: $ff
    rst $38                                       ; $734e: $ff
    rst $38                                       ; $734f: $ff
    rst $38                                       ; $7350: $ff
    rst $38                                       ; $7351: $ff
    rst $38                                       ; $7352: $ff
    rst $38                                       ; $7353: $ff
    rst $38                                       ; $7354: $ff
    rst $38                                       ; $7355: $ff
    rst $38                                       ; $7356: $ff
    rst $38                                       ; $7357: $ff
    rst $38                                       ; $7358: $ff
    rst $38                                       ; $7359: $ff
    rst $38                                       ; $735a: $ff
    rst $38                                       ; $735b: $ff
    rst $38                                       ; $735c: $ff
    rst $38                                       ; $735d: $ff
    rst $38                                       ; $735e: $ff
    rst $38                                       ; $735f: $ff
    rst $38                                       ; $7360: $ff
    rst $38                                       ; $7361: $ff
    rst $38                                       ; $7362: $ff
    rst $38                                       ; $7363: $ff
    rst $38                                       ; $7364: $ff
    rst $38                                       ; $7365: $ff
    rst $38                                       ; $7366: $ff
    rst $38                                       ; $7367: $ff
    rst $38                                       ; $7368: $ff
    rst $38                                       ; $7369: $ff
    rst $38                                       ; $736a: $ff
    rst $38                                       ; $736b: $ff
    rst $38                                       ; $736c: $ff
    rst $38                                       ; $736d: $ff
    rst $38                                       ; $736e: $ff
    rst $38                                       ; $736f: $ff
    rst $38                                       ; $7370: $ff
    rst $38                                       ; $7371: $ff
    rst $38                                       ; $7372: $ff
    rst $38                                       ; $7373: $ff
    rst $38                                       ; $7374: $ff
    rst $38                                       ; $7375: $ff
    rst $38                                       ; $7376: $ff
    rst $38                                       ; $7377: $ff
    rst $38                                       ; $7378: $ff
    rst $38                                       ; $7379: $ff
    rst $38                                       ; $737a: $ff
    rst $38                                       ; $737b: $ff
    rst $38                                       ; $737c: $ff
    rst $38                                       ; $737d: $ff
    rst $38                                       ; $737e: $ff
    rst $38                                       ; $737f: $ff
    rst $38                                       ; $7380: $ff
    rst $38                                       ; $7381: $ff
    rst $38                                       ; $7382: $ff
    rst $38                                       ; $7383: $ff
    rst $38                                       ; $7384: $ff
    rst $38                                       ; $7385: $ff
    rst $38                                       ; $7386: $ff
    rst $38                                       ; $7387: $ff
    rst $38                                       ; $7388: $ff
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    rst $38                                       ; $738d: $ff
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    rst $38                                       ; $7390: $ff
    rst $38                                       ; $7391: $ff
    rst $38                                       ; $7392: $ff
    rst $38                                       ; $7393: $ff
    rst $38                                       ; $7394: $ff
    rst $38                                       ; $7395: $ff
    rst $38                                       ; $7396: $ff
    rst $38                                       ; $7397: $ff
    rst $38                                       ; $7398: $ff
    rst $38                                       ; $7399: $ff
    rst $38                                       ; $739a: $ff
    rst $38                                       ; $739b: $ff
    rst $38                                       ; $739c: $ff
    rst $38                                       ; $739d: $ff
    rst $38                                       ; $739e: $ff
    rst $38                                       ; $739f: $ff
    rst $38                                       ; $73a0: $ff
    rst $38                                       ; $73a1: $ff
    rst $38                                       ; $73a2: $ff
    rst $38                                       ; $73a3: $ff
    rst $38                                       ; $73a4: $ff
    rst $38                                       ; $73a5: $ff
    rst $38                                       ; $73a6: $ff
    rst $38                                       ; $73a7: $ff
    rst $38                                       ; $73a8: $ff
    rst $38                                       ; $73a9: $ff
    rst $38                                       ; $73aa: $ff
    rst $38                                       ; $73ab: $ff
    rst $38                                       ; $73ac: $ff
    rst $38                                       ; $73ad: $ff
    rst $38                                       ; $73ae: $ff
    rst $38                                       ; $73af: $ff
    rst $38                                       ; $73b0: $ff
    rst $38                                       ; $73b1: $ff
    rst $38                                       ; $73b2: $ff
    rst $38                                       ; $73b3: $ff
    rst $38                                       ; $73b4: $ff
    rst $38                                       ; $73b5: $ff
    rst $38                                       ; $73b6: $ff
    rst $38                                       ; $73b7: $ff
    rst $38                                       ; $73b8: $ff
    rst $38                                       ; $73b9: $ff
    rst $38                                       ; $73ba: $ff
    rst $38                                       ; $73bb: $ff
    rst $38                                       ; $73bc: $ff
    rst $38                                       ; $73bd: $ff
    rst $38                                       ; $73be: $ff
    rst $38                                       ; $73bf: $ff
    rst $38                                       ; $73c0: $ff
    rst $38                                       ; $73c1: $ff
    rst $38                                       ; $73c2: $ff
    rst $38                                       ; $73c3: $ff
    rst $38                                       ; $73c4: $ff
    rst $38                                       ; $73c5: $ff
    rst $38                                       ; $73c6: $ff
    rst $38                                       ; $73c7: $ff
    rst $38                                       ; $73c8: $ff
    rst $38                                       ; $73c9: $ff
    rst $38                                       ; $73ca: $ff
    rst $38                                       ; $73cb: $ff
    rst $38                                       ; $73cc: $ff
    rst $38                                       ; $73cd: $ff
    rst $38                                       ; $73ce: $ff
    rst $38                                       ; $73cf: $ff
    rst $38                                       ; $73d0: $ff
    rst $38                                       ; $73d1: $ff
    rst $38                                       ; $73d2: $ff
    rst $38                                       ; $73d3: $ff
    rst $38                                       ; $73d4: $ff
    rst $38                                       ; $73d5: $ff
    rst $38                                       ; $73d6: $ff
    rst $38                                       ; $73d7: $ff
    rst $38                                       ; $73d8: $ff
    rst $38                                       ; $73d9: $ff
    rst $38                                       ; $73da: $ff
    rst $38                                       ; $73db: $ff
    rst $38                                       ; $73dc: $ff
    rst $38                                       ; $73dd: $ff
    rst $38                                       ; $73de: $ff
    rst $38                                       ; $73df: $ff
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    rst $38                                       ; $73e4: $ff
    rst $38                                       ; $73e5: $ff
    rst $38                                       ; $73e6: $ff
    rst $38                                       ; $73e7: $ff
    rst $38                                       ; $73e8: $ff
    rst $38                                       ; $73e9: $ff
    rst $38                                       ; $73ea: $ff
    rst $38                                       ; $73eb: $ff
    rst $38                                       ; $73ec: $ff
    rst $38                                       ; $73ed: $ff
    rst $38                                       ; $73ee: $ff
    rst $38                                       ; $73ef: $ff
    rst $38                                       ; $73f0: $ff
    rst $38                                       ; $73f1: $ff
    rst $38                                       ; $73f2: $ff
    rst $38                                       ; $73f3: $ff
    rst $38                                       ; $73f4: $ff
    rst $38                                       ; $73f5: $ff
    rst $38                                       ; $73f6: $ff
    rst $38                                       ; $73f7: $ff
    rst $38                                       ; $73f8: $ff
    rst $38                                       ; $73f9: $ff
    rst $38                                       ; $73fa: $ff
    rst $38                                       ; $73fb: $ff
    rst $38                                       ; $73fc: $ff
    rst $38                                       ; $73fd: $ff
    rst $38                                       ; $73fe: $ff
    rst $38                                       ; $73ff: $ff
    rst $38                                       ; $7400: $ff
    rst $38                                       ; $7401: $ff
    rst $38                                       ; $7402: $ff
    rst $38                                       ; $7403: $ff
    rst $38                                       ; $7404: $ff
    rst $38                                       ; $7405: $ff
    rst $38                                       ; $7406: $ff
    rst $38                                       ; $7407: $ff
    rst $38                                       ; $7408: $ff
    rst $38                                       ; $7409: $ff
    rst $38                                       ; $740a: $ff
    rst $38                                       ; $740b: $ff
    rst $38                                       ; $740c: $ff
    rst $38                                       ; $740d: $ff
    rst $38                                       ; $740e: $ff
    rst $38                                       ; $740f: $ff
    rst $38                                       ; $7410: $ff
    rst $38                                       ; $7411: $ff
    rst $38                                       ; $7412: $ff
    rst $38                                       ; $7413: $ff
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    rst $38                                       ; $7416: $ff
    rst $38                                       ; $7417: $ff
    rst $38                                       ; $7418: $ff
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    rst $38                                       ; $741b: $ff
    rst $38                                       ; $741c: $ff
    rst $38                                       ; $741d: $ff
    rst $38                                       ; $741e: $ff
    rst $38                                       ; $741f: $ff
    rst $38                                       ; $7420: $ff
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    rst $38                                       ; $7423: $ff
    rst $38                                       ; $7424: $ff
    rst $38                                       ; $7425: $ff
    rst $38                                       ; $7426: $ff
    rst $38                                       ; $7427: $ff
    rst $38                                       ; $7428: $ff
    rst $38                                       ; $7429: $ff
    rst $38                                       ; $742a: $ff
    rst $38                                       ; $742b: $ff
    rst $38                                       ; $742c: $ff
    rst $38                                       ; $742d: $ff
    rst $38                                       ; $742e: $ff
    rst $38                                       ; $742f: $ff
    rst $38                                       ; $7430: $ff
    rst $38                                       ; $7431: $ff
    rst $38                                       ; $7432: $ff
    rst $38                                       ; $7433: $ff
    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    rst $38                                       ; $7439: $ff
    rst $38                                       ; $743a: $ff
    rst $38                                       ; $743b: $ff
    rst $38                                       ; $743c: $ff
    rst $38                                       ; $743d: $ff
    rst $38                                       ; $743e: $ff
    rst $38                                       ; $743f: $ff
    rst $38                                       ; $7440: $ff
    rst $38                                       ; $7441: $ff
    rst $38                                       ; $7442: $ff
    rst $38                                       ; $7443: $ff
    rst $38                                       ; $7444: $ff
    rst $38                                       ; $7445: $ff
    rst $38                                       ; $7446: $ff
    rst $38                                       ; $7447: $ff
    rst $38                                       ; $7448: $ff
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    rst $38                                       ; $744d: $ff
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    rst $38                                       ; $7450: $ff
    rst $38                                       ; $7451: $ff
    rst $38                                       ; $7452: $ff
    rst $38                                       ; $7453: $ff
    rst $38                                       ; $7454: $ff
    rst $38                                       ; $7455: $ff
    rst $38                                       ; $7456: $ff
    rst $38                                       ; $7457: $ff
    rst $38                                       ; $7458: $ff
    rst $38                                       ; $7459: $ff
    rst $38                                       ; $745a: $ff
    rst $38                                       ; $745b: $ff
    rst $38                                       ; $745c: $ff
    rst $38                                       ; $745d: $ff
    rst $38                                       ; $745e: $ff
    rst $38                                       ; $745f: $ff
    rst $38                                       ; $7460: $ff
    rst $38                                       ; $7461: $ff
    rst $38                                       ; $7462: $ff
    rst $38                                       ; $7463: $ff
    rst $38                                       ; $7464: $ff
    rst $38                                       ; $7465: $ff
    rst $38                                       ; $7466: $ff
    rst $38                                       ; $7467: $ff
    rst $38                                       ; $7468: $ff
    rst $38                                       ; $7469: $ff
    rst $38                                       ; $746a: $ff
    rst $38                                       ; $746b: $ff
    rst $38                                       ; $746c: $ff
    rst $38                                       ; $746d: $ff
    rst $38                                       ; $746e: $ff
    rst $38                                       ; $746f: $ff
    rst $38                                       ; $7470: $ff
    rst $38                                       ; $7471: $ff
    rst $38                                       ; $7472: $ff
    rst $38                                       ; $7473: $ff
    rst $38                                       ; $7474: $ff
    rst $38                                       ; $7475: $ff
    rst $38                                       ; $7476: $ff
    rst $38                                       ; $7477: $ff
    rst $38                                       ; $7478: $ff
    rst $38                                       ; $7479: $ff
    rst $38                                       ; $747a: $ff
    rst $38                                       ; $747b: $ff
    rst $38                                       ; $747c: $ff
    rst $38                                       ; $747d: $ff
    rst $38                                       ; $747e: $ff
    rst $38                                       ; $747f: $ff
    rst $38                                       ; $7480: $ff
    rst $38                                       ; $7481: $ff
    rst $38                                       ; $7482: $ff
    rst $38                                       ; $7483: $ff
    rst $38                                       ; $7484: $ff
    rst $38                                       ; $7485: $ff
    rst $38                                       ; $7486: $ff
    rst $38                                       ; $7487: $ff
    rst $38                                       ; $7488: $ff
    rst $38                                       ; $7489: $ff
    rst $38                                       ; $748a: $ff
    rst $38                                       ; $748b: $ff
    rst $38                                       ; $748c: $ff
    rst $38                                       ; $748d: $ff
    rst $38                                       ; $748e: $ff
    rst $38                                       ; $748f: $ff
    rst $38                                       ; $7490: $ff
    rst $38                                       ; $7491: $ff
    rst $38                                       ; $7492: $ff
    rst $38                                       ; $7493: $ff
    rst $38                                       ; $7494: $ff
    rst $38                                       ; $7495: $ff
    rst $38                                       ; $7496: $ff
    rst $38                                       ; $7497: $ff
    rst $38                                       ; $7498: $ff
    rst $38                                       ; $7499: $ff
    rst $38                                       ; $749a: $ff
    rst $38                                       ; $749b: $ff
    rst $38                                       ; $749c: $ff
    rst $38                                       ; $749d: $ff
    rst $38                                       ; $749e: $ff
    rst $38                                       ; $749f: $ff
    rst $38                                       ; $74a0: $ff
    rst $38                                       ; $74a1: $ff
    rst $38                                       ; $74a2: $ff
    rst $38                                       ; $74a3: $ff
    rst $38                                       ; $74a4: $ff
    rst $38                                       ; $74a5: $ff
    rst $38                                       ; $74a6: $ff
    rst $38                                       ; $74a7: $ff
    rst $38                                       ; $74a8: $ff
    rst $38                                       ; $74a9: $ff
    rst $38                                       ; $74aa: $ff
    rst $38                                       ; $74ab: $ff
    rst $38                                       ; $74ac: $ff
    rst $38                                       ; $74ad: $ff
    rst $38                                       ; $74ae: $ff
    rst $38                                       ; $74af: $ff
    rst $38                                       ; $74b0: $ff
    rst $38                                       ; $74b1: $ff
    rst $38                                       ; $74b2: $ff
    rst $38                                       ; $74b3: $ff
    rst $38                                       ; $74b4: $ff
    rst $38                                       ; $74b5: $ff
    rst $38                                       ; $74b6: $ff
    rst $38                                       ; $74b7: $ff
    rst $38                                       ; $74b8: $ff
    rst $38                                       ; $74b9: $ff
    rst $38                                       ; $74ba: $ff
    rst $38                                       ; $74bb: $ff
    rst $38                                       ; $74bc: $ff
    rst $38                                       ; $74bd: $ff
    rst $38                                       ; $74be: $ff
    rst $38                                       ; $74bf: $ff
    rst $38                                       ; $74c0: $ff
    rst $38                                       ; $74c1: $ff
    rst $38                                       ; $74c2: $ff
    rst $38                                       ; $74c3: $ff
    rst $38                                       ; $74c4: $ff
    rst $38                                       ; $74c5: $ff
    rst $38                                       ; $74c6: $ff
    rst $38                                       ; $74c7: $ff
    rst $38                                       ; $74c8: $ff
    rst $38                                       ; $74c9: $ff
    rst $38                                       ; $74ca: $ff
    rst $38                                       ; $74cb: $ff
    rst $38                                       ; $74cc: $ff
    rst $38                                       ; $74cd: $ff
    rst $38                                       ; $74ce: $ff
    rst $38                                       ; $74cf: $ff
    rst $38                                       ; $74d0: $ff
    rst $38                                       ; $74d1: $ff
    rst $38                                       ; $74d2: $ff
    rst $38                                       ; $74d3: $ff
    rst $38                                       ; $74d4: $ff
    rst $38                                       ; $74d5: $ff
    rst $38                                       ; $74d6: $ff
    rst $38                                       ; $74d7: $ff
    rst $38                                       ; $74d8: $ff
    rst $38                                       ; $74d9: $ff
    rst $38                                       ; $74da: $ff
    rst $38                                       ; $74db: $ff
    rst $38                                       ; $74dc: $ff
    rst $38                                       ; $74dd: $ff
    rst $38                                       ; $74de: $ff
    rst $38                                       ; $74df: $ff
    rst $38                                       ; $74e0: $ff
    rst $38                                       ; $74e1: $ff
    rst $38                                       ; $74e2: $ff
    rst $38                                       ; $74e3: $ff
    rst $38                                       ; $74e4: $ff
    rst $38                                       ; $74e5: $ff
    rst $38                                       ; $74e6: $ff
    rst $38                                       ; $74e7: $ff
    rst $38                                       ; $74e8: $ff
    rst $38                                       ; $74e9: $ff
    rst $38                                       ; $74ea: $ff
    rst $38                                       ; $74eb: $ff
    rst $38                                       ; $74ec: $ff
    rst $38                                       ; $74ed: $ff
    rst $38                                       ; $74ee: $ff
    rst $38                                       ; $74ef: $ff
    rst $38                                       ; $74f0: $ff
    rst $38                                       ; $74f1: $ff
    rst $38                                       ; $74f2: $ff
    rst $38                                       ; $74f3: $ff
    rst $38                                       ; $74f4: $ff
    rst $38                                       ; $74f5: $ff
    rst $38                                       ; $74f6: $ff
    rst $38                                       ; $74f7: $ff
    rst $38                                       ; $74f8: $ff
    rst $38                                       ; $74f9: $ff
    rst $38                                       ; $74fa: $ff
    rst $38                                       ; $74fb: $ff
    rst $38                                       ; $74fc: $ff
    rst $38                                       ; $74fd: $ff
    rst $38                                       ; $74fe: $ff

Call_05e_74ff:
    rst $38                                       ; $74ff: $ff
    rst $38                                       ; $7500: $ff
    rst $38                                       ; $7501: $ff
    rst $38                                       ; $7502: $ff
    rst $38                                       ; $7503: $ff
    rst $38                                       ; $7504: $ff
    rst $38                                       ; $7505: $ff
    rst $38                                       ; $7506: $ff
    rst $38                                       ; $7507: $ff
    rst $38                                       ; $7508: $ff
    rst $38                                       ; $7509: $ff
    rst $38                                       ; $750a: $ff
    rst $38                                       ; $750b: $ff
    rst $38                                       ; $750c: $ff
    rst $38                                       ; $750d: $ff
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
    rst $38                                       ; $7510: $ff
    rst $38                                       ; $7511: $ff
    rst $38                                       ; $7512: $ff
    rst $38                                       ; $7513: $ff
    rst $38                                       ; $7514: $ff
    rst $38                                       ; $7515: $ff
    rst $38                                       ; $7516: $ff
    rst $38                                       ; $7517: $ff
    rst $38                                       ; $7518: $ff
    rst $38                                       ; $7519: $ff
    rst $38                                       ; $751a: $ff
    rst $38                                       ; $751b: $ff
    rst $38                                       ; $751c: $ff
    rst $38                                       ; $751d: $ff
    rst $38                                       ; $751e: $ff
    rst $38                                       ; $751f: $ff
    rst $38                                       ; $7520: $ff
    rst $38                                       ; $7521: $ff
    rst $38                                       ; $7522: $ff
    rst $38                                       ; $7523: $ff
    rst $38                                       ; $7524: $ff
    rst $38                                       ; $7525: $ff
    rst $38                                       ; $7526: $ff
    rst $38                                       ; $7527: $ff
    rst $38                                       ; $7528: $ff
    rst $38                                       ; $7529: $ff
    rst $38                                       ; $752a: $ff
    rst $38                                       ; $752b: $ff
    rst $38                                       ; $752c: $ff
    rst $38                                       ; $752d: $ff
    rst $38                                       ; $752e: $ff
    rst $38                                       ; $752f: $ff
    rst $38                                       ; $7530: $ff
    rst $38                                       ; $7531: $ff
    rst $38                                       ; $7532: $ff
    rst $38                                       ; $7533: $ff
    rst $38                                       ; $7534: $ff
    rst $38                                       ; $7535: $ff
    rst $38                                       ; $7536: $ff
    rst $38                                       ; $7537: $ff
    rst $38                                       ; $7538: $ff
    rst $38                                       ; $7539: $ff
    rst $38                                       ; $753a: $ff
    rst $38                                       ; $753b: $ff
    rst $38                                       ; $753c: $ff
    rst $38                                       ; $753d: $ff
    rst $38                                       ; $753e: $ff
    rst $38                                       ; $753f: $ff
    rst $38                                       ; $7540: $ff
    rst $38                                       ; $7541: $ff
    rst $38                                       ; $7542: $ff
    rst $38                                       ; $7543: $ff
    rst $38                                       ; $7544: $ff
    rst $38                                       ; $7545: $ff
    rst $38                                       ; $7546: $ff
    rst $38                                       ; $7547: $ff
    rst $38                                       ; $7548: $ff
    rst $38                                       ; $7549: $ff
    rst $38                                       ; $754a: $ff
    rst $38                                       ; $754b: $ff
    rst $38                                       ; $754c: $ff
    rst $38                                       ; $754d: $ff
    rst $38                                       ; $754e: $ff
    rst $38                                       ; $754f: $ff
    rst $38                                       ; $7550: $ff
    rst $38                                       ; $7551: $ff
    rst $38                                       ; $7552: $ff
    rst $38                                       ; $7553: $ff
    rst $38                                       ; $7554: $ff
    rst $38                                       ; $7555: $ff
    rst $38                                       ; $7556: $ff
    rst $38                                       ; $7557: $ff
    rst $38                                       ; $7558: $ff
    rst $38                                       ; $7559: $ff
    rst $38                                       ; $755a: $ff
    rst $38                                       ; $755b: $ff
    rst $38                                       ; $755c: $ff
    rst $38                                       ; $755d: $ff
    rst $38                                       ; $755e: $ff
    rst $38                                       ; $755f: $ff
    rst $38                                       ; $7560: $ff
    rst $38                                       ; $7561: $ff
    rst $38                                       ; $7562: $ff
    rst $38                                       ; $7563: $ff
    rst $38                                       ; $7564: $ff
    rst $38                                       ; $7565: $ff
    rst $38                                       ; $7566: $ff
    rst $38                                       ; $7567: $ff
    rst $38                                       ; $7568: $ff
    rst $38                                       ; $7569: $ff
    rst $38                                       ; $756a: $ff
    rst $38                                       ; $756b: $ff
    rst $38                                       ; $756c: $ff
    rst $38                                       ; $756d: $ff
    rst $38                                       ; $756e: $ff
    rst $38                                       ; $756f: $ff
    rst $38                                       ; $7570: $ff
    rst $38                                       ; $7571: $ff
    rst $38                                       ; $7572: $ff
    rst $38                                       ; $7573: $ff
    rst $38                                       ; $7574: $ff
    rst $38                                       ; $7575: $ff
    rst $38                                       ; $7576: $ff
    rst $38                                       ; $7577: $ff
    rst $38                                       ; $7578: $ff
    rst $38                                       ; $7579: $ff
    rst $38                                       ; $757a: $ff
    rst $38                                       ; $757b: $ff
    rst $38                                       ; $757c: $ff
    rst $38                                       ; $757d: $ff
    rst $38                                       ; $757e: $ff
    rst $38                                       ; $757f: $ff
    rst $38                                       ; $7580: $ff
    rst $38                                       ; $7581: $ff
    rst $38                                       ; $7582: $ff
    rst $38                                       ; $7583: $ff
    rst $38                                       ; $7584: $ff
    rst $38                                       ; $7585: $ff
    rst $38                                       ; $7586: $ff
    rst $38                                       ; $7587: $ff
    rst $38                                       ; $7588: $ff
    rst $38                                       ; $7589: $ff
    rst $38                                       ; $758a: $ff
    rst $38                                       ; $758b: $ff
    rst $38                                       ; $758c: $ff
    rst $38                                       ; $758d: $ff
    rst $38                                       ; $758e: $ff
    rst $38                                       ; $758f: $ff
    rst $38                                       ; $7590: $ff
    rst $38                                       ; $7591: $ff
    rst $38                                       ; $7592: $ff
    rst $38                                       ; $7593: $ff

Call_05e_7594:
    rst $38                                       ; $7594: $ff
    rst $38                                       ; $7595: $ff
    rst $38                                       ; $7596: $ff
    rst $38                                       ; $7597: $ff
    rst $38                                       ; $7598: $ff
    rst $38                                       ; $7599: $ff
    rst $38                                       ; $759a: $ff
    rst $38                                       ; $759b: $ff
    rst $38                                       ; $759c: $ff
    rst $38                                       ; $759d: $ff
    rst $38                                       ; $759e: $ff
    rst $38                                       ; $759f: $ff
    rst $38                                       ; $75a0: $ff
    rst $38                                       ; $75a1: $ff
    rst $38                                       ; $75a2: $ff
    rst $38                                       ; $75a3: $ff
    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff
    rst $38                                       ; $75a6: $ff
    rst $38                                       ; $75a7: $ff
    rst $38                                       ; $75a8: $ff
    rst $38                                       ; $75a9: $ff
    rst $38                                       ; $75aa: $ff
    rst $38                                       ; $75ab: $ff
    rst $38                                       ; $75ac: $ff
    rst $38                                       ; $75ad: $ff
    rst $38                                       ; $75ae: $ff
    rst $38                                       ; $75af: $ff
    rst $38                                       ; $75b0: $ff
    rst $38                                       ; $75b1: $ff
    rst $38                                       ; $75b2: $ff
    rst $38                                       ; $75b3: $ff
    rst $38                                       ; $75b4: $ff
    rst $38                                       ; $75b5: $ff
    rst $38                                       ; $75b6: $ff
    rst $38                                       ; $75b7: $ff
    rst $38                                       ; $75b8: $ff
    rst $38                                       ; $75b9: $ff
    rst $38                                       ; $75ba: $ff
    rst $38                                       ; $75bb: $ff
    rst $38                                       ; $75bc: $ff
    rst $38                                       ; $75bd: $ff
    rst $38                                       ; $75be: $ff
    rst $38                                       ; $75bf: $ff
    rst $38                                       ; $75c0: $ff
    rst $38                                       ; $75c1: $ff
    rst $38                                       ; $75c2: $ff
    rst $38                                       ; $75c3: $ff
    rst $38                                       ; $75c4: $ff
    rst $38                                       ; $75c5: $ff
    rst $38                                       ; $75c6: $ff
    rst $38                                       ; $75c7: $ff
    rst $38                                       ; $75c8: $ff
    rst $38                                       ; $75c9: $ff
    rst $38                                       ; $75ca: $ff
    rst $38                                       ; $75cb: $ff
    rst $38                                       ; $75cc: $ff
    rst $38                                       ; $75cd: $ff
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
    rst $38                                       ; $75d0: $ff
    rst $38                                       ; $75d1: $ff
    rst $38                                       ; $75d2: $ff
    rst $38                                       ; $75d3: $ff
    rst $38                                       ; $75d4: $ff
    rst $38                                       ; $75d5: $ff
    rst $38                                       ; $75d6: $ff
    rst $38                                       ; $75d7: $ff
    rst $38                                       ; $75d8: $ff
    rst $38                                       ; $75d9: $ff
    rst $38                                       ; $75da: $ff
    rst $38                                       ; $75db: $ff
    rst $38                                       ; $75dc: $ff
    rst $38                                       ; $75dd: $ff
    rst $38                                       ; $75de: $ff
    rst $38                                       ; $75df: $ff
    rst $38                                       ; $75e0: $ff
    rst $38                                       ; $75e1: $ff
    rst $38                                       ; $75e2: $ff
    rst $38                                       ; $75e3: $ff
    rst $38                                       ; $75e4: $ff
    rst $38                                       ; $75e5: $ff
    rst $38                                       ; $75e6: $ff
    rst $38                                       ; $75e7: $ff
    rst $38                                       ; $75e8: $ff
    rst $38                                       ; $75e9: $ff
    rst $38                                       ; $75ea: $ff
    rst $38                                       ; $75eb: $ff
    rst $38                                       ; $75ec: $ff
    rst $38                                       ; $75ed: $ff
    rst $38                                       ; $75ee: $ff
    rst $38                                       ; $75ef: $ff
    rst $38                                       ; $75f0: $ff
    rst $38                                       ; $75f1: $ff
    rst $38                                       ; $75f2: $ff
    rst $38                                       ; $75f3: $ff
    rst $38                                       ; $75f4: $ff
    rst $38                                       ; $75f5: $ff
    rst $38                                       ; $75f6: $ff
    rst $38                                       ; $75f7: $ff
    rst $38                                       ; $75f8: $ff
    rst $38                                       ; $75f9: $ff
    rst $38                                       ; $75fa: $ff
    rst $38                                       ; $75fb: $ff
    rst $38                                       ; $75fc: $ff
    rst $38                                       ; $75fd: $ff
    rst $38                                       ; $75fe: $ff

Call_05e_75ff:
    rst $38                                       ; $75ff: $ff
    rst $38                                       ; $7600: $ff
    rst $38                                       ; $7601: $ff
    rst $38                                       ; $7602: $ff
    rst $38                                       ; $7603: $ff
    rst $38                                       ; $7604: $ff
    rst $38                                       ; $7605: $ff
    rst $38                                       ; $7606: $ff
    rst $38                                       ; $7607: $ff
    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    rst $38                                       ; $760a: $ff
    rst $38                                       ; $760b: $ff
    rst $38                                       ; $760c: $ff
    rst $38                                       ; $760d: $ff
    rst $38                                       ; $760e: $ff
    rst $38                                       ; $760f: $ff
    rst $38                                       ; $7610: $ff
    rst $38                                       ; $7611: $ff
    rst $38                                       ; $7612: $ff
    rst $38                                       ; $7613: $ff
    rst $38                                       ; $7614: $ff
    rst $38                                       ; $7615: $ff
    rst $38                                       ; $7616: $ff
    rst $38                                       ; $7617: $ff
    rst $38                                       ; $7618: $ff
    rst $38                                       ; $7619: $ff
    rst $38                                       ; $761a: $ff
    rst $38                                       ; $761b: $ff
    rst $38                                       ; $761c: $ff
    rst $38                                       ; $761d: $ff
    rst $38                                       ; $761e: $ff
    rst $38                                       ; $761f: $ff
    rst $38                                       ; $7620: $ff
    rst $38                                       ; $7621: $ff
    rst $38                                       ; $7622: $ff
    rst $38                                       ; $7623: $ff
    rst $38                                       ; $7624: $ff
    rst $38                                       ; $7625: $ff
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    rst $38                                       ; $7628: $ff
    rst $38                                       ; $7629: $ff
    rst $38                                       ; $762a: $ff
    rst $38                                       ; $762b: $ff
    rst $38                                       ; $762c: $ff
    rst $38                                       ; $762d: $ff
    rst $38                                       ; $762e: $ff
    rst $38                                       ; $762f: $ff
    rst $38                                       ; $7630: $ff
    rst $38                                       ; $7631: $ff
    rst $38                                       ; $7632: $ff
    rst $38                                       ; $7633: $ff
    rst $38                                       ; $7634: $ff
    rst $38                                       ; $7635: $ff
    rst $38                                       ; $7636: $ff
    rst $38                                       ; $7637: $ff
    rst $38                                       ; $7638: $ff
    rst $38                                       ; $7639: $ff
    rst $38                                       ; $763a: $ff
    rst $38                                       ; $763b: $ff
    rst $38                                       ; $763c: $ff
    rst $38                                       ; $763d: $ff
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    rst $38                                       ; $7640: $ff
    rst $38                                       ; $7641: $ff
    rst $38                                       ; $7642: $ff
    rst $38                                       ; $7643: $ff
    rst $38                                       ; $7644: $ff
    rst $38                                       ; $7645: $ff
    rst $38                                       ; $7646: $ff
    rst $38                                       ; $7647: $ff
    rst $38                                       ; $7648: $ff
    rst $38                                       ; $7649: $ff
    rst $38                                       ; $764a: $ff
    rst $38                                       ; $764b: $ff
    rst $38                                       ; $764c: $ff
    rst $38                                       ; $764d: $ff
    rst $38                                       ; $764e: $ff
    rst $38                                       ; $764f: $ff
    rst $38                                       ; $7650: $ff
    rst $38                                       ; $7651: $ff
    rst $38                                       ; $7652: $ff
    rst $38                                       ; $7653: $ff
    rst $38                                       ; $7654: $ff
    rst $38                                       ; $7655: $ff
    rst $38                                       ; $7656: $ff
    rst $38                                       ; $7657: $ff
    rst $38                                       ; $7658: $ff
    rst $38                                       ; $7659: $ff
    rst $38                                       ; $765a: $ff
    rst $38                                       ; $765b: $ff
    rst $38                                       ; $765c: $ff
    rst $38                                       ; $765d: $ff
    rst $38                                       ; $765e: $ff
    rst $38                                       ; $765f: $ff
    rst $38                                       ; $7660: $ff
    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff
    rst $38                                       ; $7663: $ff
    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    rst $38                                       ; $7666: $ff
    rst $38                                       ; $7667: $ff
    rst $38                                       ; $7668: $ff
    rst $38                                       ; $7669: $ff
    rst $38                                       ; $766a: $ff
    rst $38                                       ; $766b: $ff
    rst $38                                       ; $766c: $ff
    rst $38                                       ; $766d: $ff
    rst $38                                       ; $766e: $ff
    rst $38                                       ; $766f: $ff
    rst $38                                       ; $7670: $ff
    rst $38                                       ; $7671: $ff
    rst $38                                       ; $7672: $ff
    rst $38                                       ; $7673: $ff
    rst $38                                       ; $7674: $ff
    rst $38                                       ; $7675: $ff
    rst $38                                       ; $7676: $ff
    rst $38                                       ; $7677: $ff
    rst $38                                       ; $7678: $ff
    rst $38                                       ; $7679: $ff
    rst $38                                       ; $767a: $ff
    rst $38                                       ; $767b: $ff
    rst $38                                       ; $767c: $ff
    rst $38                                       ; $767d: $ff
    rst $38                                       ; $767e: $ff
    rst $38                                       ; $767f: $ff
    rst $38                                       ; $7680: $ff
    rst $38                                       ; $7681: $ff
    rst $38                                       ; $7682: $ff
    rst $38                                       ; $7683: $ff
    rst $38                                       ; $7684: $ff
    rst $38                                       ; $7685: $ff
    rst $38                                       ; $7686: $ff
    rst $38                                       ; $7687: $ff
    rst $38                                       ; $7688: $ff
    rst $38                                       ; $7689: $ff
    rst $38                                       ; $768a: $ff
    rst $38                                       ; $768b: $ff
    rst $38                                       ; $768c: $ff
    rst $38                                       ; $768d: $ff
    rst $38                                       ; $768e: $ff
    rst $38                                       ; $768f: $ff
    rst $38                                       ; $7690: $ff
    rst $38                                       ; $7691: $ff
    rst $38                                       ; $7692: $ff
    rst $38                                       ; $7693: $ff
    rst $38                                       ; $7694: $ff
    rst $38                                       ; $7695: $ff
    rst $38                                       ; $7696: $ff
    rst $38                                       ; $7697: $ff
    rst $38                                       ; $7698: $ff
    rst $38                                       ; $7699: $ff
    rst $38                                       ; $769a: $ff
    rst $38                                       ; $769b: $ff
    rst $38                                       ; $769c: $ff
    rst $38                                       ; $769d: $ff
    rst $38                                       ; $769e: $ff
    rst $38                                       ; $769f: $ff
    rst $38                                       ; $76a0: $ff
    rst $38                                       ; $76a1: $ff

Call_05e_76a2:
    rst $38                                       ; $76a2: $ff
    rst $38                                       ; $76a3: $ff
    rst $38                                       ; $76a4: $ff
    rst $38                                       ; $76a5: $ff
    rst $38                                       ; $76a6: $ff
    rst $38                                       ; $76a7: $ff
    rst $38                                       ; $76a8: $ff
    rst $38                                       ; $76a9: $ff
    rst $38                                       ; $76aa: $ff
    rst $38                                       ; $76ab: $ff
    rst $38                                       ; $76ac: $ff
    rst $38                                       ; $76ad: $ff
    rst $38                                       ; $76ae: $ff
    rst $38                                       ; $76af: $ff
    rst $38                                       ; $76b0: $ff
    rst $38                                       ; $76b1: $ff
    rst $38                                       ; $76b2: $ff
    rst $38                                       ; $76b3: $ff
    rst $38                                       ; $76b4: $ff
    rst $38                                       ; $76b5: $ff
    rst $38                                       ; $76b6: $ff
    rst $38                                       ; $76b7: $ff
    rst $38                                       ; $76b8: $ff
    rst $38                                       ; $76b9: $ff
    rst $38                                       ; $76ba: $ff
    rst $38                                       ; $76bb: $ff
    rst $38                                       ; $76bc: $ff
    rst $38                                       ; $76bd: $ff
    rst $38                                       ; $76be: $ff
    rst $38                                       ; $76bf: $ff
    rst $38                                       ; $76c0: $ff
    rst $38                                       ; $76c1: $ff
    rst $38                                       ; $76c2: $ff
    rst $38                                       ; $76c3: $ff
    rst $38                                       ; $76c4: $ff
    rst $38                                       ; $76c5: $ff
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff
    rst $38                                       ; $76c8: $ff
    rst $38                                       ; $76c9: $ff
    rst $38                                       ; $76ca: $ff
    rst $38                                       ; $76cb: $ff
    rst $38                                       ; $76cc: $ff
    rst $38                                       ; $76cd: $ff
    rst $38                                       ; $76ce: $ff
    rst $38                                       ; $76cf: $ff
    rst $38                                       ; $76d0: $ff
    rst $38                                       ; $76d1: $ff
    rst $38                                       ; $76d2: $ff
    rst $38                                       ; $76d3: $ff
    rst $38                                       ; $76d4: $ff
    rst $38                                       ; $76d5: $ff
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff

Jump_05e_76d8:
    rst $38                                       ; $76d8: $ff
    rst $38                                       ; $76d9: $ff
    rst $38                                       ; $76da: $ff
    rst $38                                       ; $76db: $ff
    rst $38                                       ; $76dc: $ff
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    rst $38                                       ; $76df: $ff
    rst $38                                       ; $76e0: $ff
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    rst $38                                       ; $76e3: $ff
    rst $38                                       ; $76e4: $ff
    rst $38                                       ; $76e5: $ff
    rst $38                                       ; $76e6: $ff
    rst $38                                       ; $76e7: $ff
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    rst $38                                       ; $76ec: $ff
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    rst $38                                       ; $76f0: $ff
    rst $38                                       ; $76f1: $ff
    rst $38                                       ; $76f2: $ff
    rst $38                                       ; $76f3: $ff
    rst $38                                       ; $76f4: $ff
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    rst $38                                       ; $76fb: $ff
    rst $38                                       ; $76fc: $ff
    rst $38                                       ; $76fd: $ff
    rst $38                                       ; $76fe: $ff
    rst $38                                       ; $76ff: $ff
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    rst $38                                       ; $7702: $ff
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff

Jump_05e_7709:
    rst $38                                       ; $7709: $ff
    rst $38                                       ; $770a: $ff
    rst $38                                       ; $770b: $ff
    rst $38                                       ; $770c: $ff
    rst $38                                       ; $770d: $ff
    rst $38                                       ; $770e: $ff
    rst $38                                       ; $770f: $ff
    rst $38                                       ; $7710: $ff
    rst $38                                       ; $7711: $ff
    rst $38                                       ; $7712: $ff
    rst $38                                       ; $7713: $ff
    rst $38                                       ; $7714: $ff
    rst $38                                       ; $7715: $ff
    rst $38                                       ; $7716: $ff
    rst $38                                       ; $7717: $ff
    rst $38                                       ; $7718: $ff
    rst $38                                       ; $7719: $ff
    rst $38                                       ; $771a: $ff
    rst $38                                       ; $771b: $ff
    rst $38                                       ; $771c: $ff
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    rst $38                                       ; $7723: $ff
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    rst $38                                       ; $772b: $ff
    rst $38                                       ; $772c: $ff
    rst $38                                       ; $772d: $ff
    rst $38                                       ; $772e: $ff
    rst $38                                       ; $772f: $ff
    rst $38                                       ; $7730: $ff
    rst $38                                       ; $7731: $ff
    rst $38                                       ; $7732: $ff
    rst $38                                       ; $7733: $ff
    rst $38                                       ; $7734: $ff
    rst $38                                       ; $7735: $ff
    rst $38                                       ; $7736: $ff
    rst $38                                       ; $7737: $ff
    rst $38                                       ; $7738: $ff
    rst $38                                       ; $7739: $ff
    rst $38                                       ; $773a: $ff
    rst $38                                       ; $773b: $ff
    rst $38                                       ; $773c: $ff
    rst $38                                       ; $773d: $ff
    rst $38                                       ; $773e: $ff
    rst $38                                       ; $773f: $ff
    rst $38                                       ; $7740: $ff
    rst $38                                       ; $7741: $ff
    rst $38                                       ; $7742: $ff
    rst $38                                       ; $7743: $ff
    rst $38                                       ; $7744: $ff
    rst $38                                       ; $7745: $ff
    rst $38                                       ; $7746: $ff
    rst $38                                       ; $7747: $ff
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    rst $38                                       ; $774d: $ff
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
    rst $38                                       ; $7750: $ff
    rst $38                                       ; $7751: $ff
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    rst $38                                       ; $7754: $ff
    rst $38                                       ; $7755: $ff
    rst $38                                       ; $7756: $ff
    rst $38                                       ; $7757: $ff
    rst $38                                       ; $7758: $ff
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff
    rst $38                                       ; $775b: $ff
    rst $38                                       ; $775c: $ff
    rst $38                                       ; $775d: $ff
    rst $38                                       ; $775e: $ff
    rst $38                                       ; $775f: $ff
    rst $38                                       ; $7760: $ff
    rst $38                                       ; $7761: $ff
    rst $38                                       ; $7762: $ff
    rst $38                                       ; $7763: $ff
    rst $38                                       ; $7764: $ff
    rst $38                                       ; $7765: $ff
    rst $38                                       ; $7766: $ff
    rst $38                                       ; $7767: $ff
    rst $38                                       ; $7768: $ff
    rst $38                                       ; $7769: $ff
    rst $38                                       ; $776a: $ff
    rst $38                                       ; $776b: $ff
    rst $38                                       ; $776c: $ff
    rst $38                                       ; $776d: $ff
    rst $38                                       ; $776e: $ff
    rst $38                                       ; $776f: $ff
    rst $38                                       ; $7770: $ff
    rst $38                                       ; $7771: $ff
    rst $38                                       ; $7772: $ff
    rst $38                                       ; $7773: $ff
    rst $38                                       ; $7774: $ff
    rst $38                                       ; $7775: $ff
    rst $38                                       ; $7776: $ff
    rst $38                                       ; $7777: $ff
    rst $38                                       ; $7778: $ff
    rst $38                                       ; $7779: $ff
    rst $38                                       ; $777a: $ff
    rst $38                                       ; $777b: $ff
    rst $38                                       ; $777c: $ff
    rst $38                                       ; $777d: $ff
    rst $38                                       ; $777e: $ff
    rst $38                                       ; $777f: $ff
    rst $38                                       ; $7780: $ff
    rst $38                                       ; $7781: $ff
    rst $38                                       ; $7782: $ff
    rst $38                                       ; $7783: $ff
    rst $38                                       ; $7784: $ff
    rst $38                                       ; $7785: $ff
    rst $38                                       ; $7786: $ff
    rst $38                                       ; $7787: $ff
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    rst $38                                       ; $778d: $ff
    rst $38                                       ; $778e: $ff
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    rst $38                                       ; $7791: $ff
    rst $38                                       ; $7792: $ff
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    rst $38                                       ; $7795: $ff
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff
    rst $38                                       ; $7799: $ff
    rst $38                                       ; $779a: $ff
    rst $38                                       ; $779b: $ff
    rst $38                                       ; $779c: $ff
    rst $38                                       ; $779d: $ff
    rst $38                                       ; $779e: $ff
    rst $38                                       ; $779f: $ff
    rst $38                                       ; $77a0: $ff
    rst $38                                       ; $77a1: $ff
    rst $38                                       ; $77a2: $ff
    rst $38                                       ; $77a3: $ff
    rst $38                                       ; $77a4: $ff
    rst $38                                       ; $77a5: $ff
    rst $38                                       ; $77a6: $ff
    rst $38                                       ; $77a7: $ff
    rst $38                                       ; $77a8: $ff
    rst $38                                       ; $77a9: $ff
    rst $38                                       ; $77aa: $ff
    rst $38                                       ; $77ab: $ff
    rst $38                                       ; $77ac: $ff
    rst $38                                       ; $77ad: $ff
    rst $38                                       ; $77ae: $ff
    rst $38                                       ; $77af: $ff
    rst $38                                       ; $77b0: $ff
    rst $38                                       ; $77b1: $ff
    rst $38                                       ; $77b2: $ff
    rst $38                                       ; $77b3: $ff
    rst $38                                       ; $77b4: $ff
    rst $38                                       ; $77b5: $ff
    rst $38                                       ; $77b6: $ff
    rst $38                                       ; $77b7: $ff
    rst $38                                       ; $77b8: $ff
    rst $38                                       ; $77b9: $ff
    rst $38                                       ; $77ba: $ff
    rst $38                                       ; $77bb: $ff
    rst $38                                       ; $77bc: $ff
    rst $38                                       ; $77bd: $ff
    rst $38                                       ; $77be: $ff
    rst $38                                       ; $77bf: $ff
    rst $38                                       ; $77c0: $ff
    rst $38                                       ; $77c1: $ff
    rst $38                                       ; $77c2: $ff
    rst $38                                       ; $77c3: $ff
    rst $38                                       ; $77c4: $ff
    rst $38                                       ; $77c5: $ff
    rst $38                                       ; $77c6: $ff
    rst $38                                       ; $77c7: $ff
    rst $38                                       ; $77c8: $ff
    rst $38                                       ; $77c9: $ff
    rst $38                                       ; $77ca: $ff
    rst $38                                       ; $77cb: $ff
    rst $38                                       ; $77cc: $ff
    rst $38                                       ; $77cd: $ff
    rst $38                                       ; $77ce: $ff
    rst $38                                       ; $77cf: $ff
    rst $38                                       ; $77d0: $ff
    rst $38                                       ; $77d1: $ff
    rst $38                                       ; $77d2: $ff
    rst $38                                       ; $77d3: $ff
    rst $38                                       ; $77d4: $ff
    rst $38                                       ; $77d5: $ff
    rst $38                                       ; $77d6: $ff
    rst $38                                       ; $77d7: $ff
    rst $38                                       ; $77d8: $ff
    rst $38                                       ; $77d9: $ff
    rst $38                                       ; $77da: $ff
    rst $38                                       ; $77db: $ff
    rst $38                                       ; $77dc: $ff
    rst $38                                       ; $77dd: $ff
    rst $38                                       ; $77de: $ff
    rst $38                                       ; $77df: $ff
    rst $38                                       ; $77e0: $ff
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    rst $38                                       ; $77e3: $ff
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    rst $38                                       ; $77e6: $ff
    rst $38                                       ; $77e7: $ff
    rst $38                                       ; $77e8: $ff
    rst $38                                       ; $77e9: $ff
    rst $38                                       ; $77ea: $ff
    rst $38                                       ; $77eb: $ff
    rst $38                                       ; $77ec: $ff
    rst $38                                       ; $77ed: $ff
    rst $38                                       ; $77ee: $ff
    rst $38                                       ; $77ef: $ff
    rst $38                                       ; $77f0: $ff
    rst $38                                       ; $77f1: $ff
    rst $38                                       ; $77f2: $ff
    rst $38                                       ; $77f3: $ff
    rst $38                                       ; $77f4: $ff
    rst $38                                       ; $77f5: $ff
    rst $38                                       ; $77f6: $ff
    rst $38                                       ; $77f7: $ff
    rst $38                                       ; $77f8: $ff
    rst $38                                       ; $77f9: $ff
    rst $38                                       ; $77fa: $ff
    rst $38                                       ; $77fb: $ff
    rst $38                                       ; $77fc: $ff
    rst $38                                       ; $77fd: $ff
    rst $38                                       ; $77fe: $ff
    rst $38                                       ; $77ff: $ff
    rst $38                                       ; $7800: $ff
    rst $38                                       ; $7801: $ff
    rst $38                                       ; $7802: $ff
    rst $38                                       ; $7803: $ff
    rst $38                                       ; $7804: $ff
    rst $38                                       ; $7805: $ff
    rst $38                                       ; $7806: $ff
    rst $38                                       ; $7807: $ff
    rst $38                                       ; $7808: $ff
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    rst $38                                       ; $780d: $ff
    rst $38                                       ; $780e: $ff
    rst $38                                       ; $780f: $ff
    rst $38                                       ; $7810: $ff
    rst $38                                       ; $7811: $ff
    rst $38                                       ; $7812: $ff
    rst $38                                       ; $7813: $ff
    rst $38                                       ; $7814: $ff
    rst $38                                       ; $7815: $ff
    rst $38                                       ; $7816: $ff
    rst $38                                       ; $7817: $ff
    rst $38                                       ; $7818: $ff

Call_05e_7819:
    rst $38                                       ; $7819: $ff
    rst $38                                       ; $781a: $ff
    rst $38                                       ; $781b: $ff
    rst $38                                       ; $781c: $ff
    rst $38                                       ; $781d: $ff
    rst $38                                       ; $781e: $ff
    rst $38                                       ; $781f: $ff
    rst $38                                       ; $7820: $ff
    rst $38                                       ; $7821: $ff
    rst $38                                       ; $7822: $ff
    rst $38                                       ; $7823: $ff
    rst $38                                       ; $7824: $ff
    rst $38                                       ; $7825: $ff
    rst $38                                       ; $7826: $ff
    rst $38                                       ; $7827: $ff
    rst $38                                       ; $7828: $ff
    rst $38                                       ; $7829: $ff
    rst $38                                       ; $782a: $ff
    rst $38                                       ; $782b: $ff
    rst $38                                       ; $782c: $ff
    rst $38                                       ; $782d: $ff
    rst $38                                       ; $782e: $ff
    rst $38                                       ; $782f: $ff
    rst $38                                       ; $7830: $ff
    rst $38                                       ; $7831: $ff
    rst $38                                       ; $7832: $ff
    rst $38                                       ; $7833: $ff
    rst $38                                       ; $7834: $ff
    rst $38                                       ; $7835: $ff
    rst $38                                       ; $7836: $ff
    rst $38                                       ; $7837: $ff
    rst $38                                       ; $7838: $ff
    rst $38                                       ; $7839: $ff
    rst $38                                       ; $783a: $ff
    rst $38                                       ; $783b: $ff
    rst $38                                       ; $783c: $ff
    rst $38                                       ; $783d: $ff
    rst $38                                       ; $783e: $ff
    rst $38                                       ; $783f: $ff
    rst $38                                       ; $7840: $ff
    rst $38                                       ; $7841: $ff
    rst $38                                       ; $7842: $ff
    rst $38                                       ; $7843: $ff
    rst $38                                       ; $7844: $ff
    rst $38                                       ; $7845: $ff
    rst $38                                       ; $7846: $ff
    rst $38                                       ; $7847: $ff
    rst $38                                       ; $7848: $ff
    rst $38                                       ; $7849: $ff
    rst $38                                       ; $784a: $ff
    rst $38                                       ; $784b: $ff
    rst $38                                       ; $784c: $ff
    rst $38                                       ; $784d: $ff
    rst $38                                       ; $784e: $ff
    rst $38                                       ; $784f: $ff
    rst $38                                       ; $7850: $ff
    rst $38                                       ; $7851: $ff
    rst $38                                       ; $7852: $ff
    rst $38                                       ; $7853: $ff
    rst $38                                       ; $7854: $ff
    rst $38                                       ; $7855: $ff
    rst $38                                       ; $7856: $ff
    rst $38                                       ; $7857: $ff
    rst $38                                       ; $7858: $ff
    rst $38                                       ; $7859: $ff
    rst $38                                       ; $785a: $ff
    rst $38                                       ; $785b: $ff
    rst $38                                       ; $785c: $ff
    rst $38                                       ; $785d: $ff
    rst $38                                       ; $785e: $ff
    rst $38                                       ; $785f: $ff
    rst $38                                       ; $7860: $ff
    rst $38                                       ; $7861: $ff
    rst $38                                       ; $7862: $ff
    rst $38                                       ; $7863: $ff
    rst $38                                       ; $7864: $ff
    rst $38                                       ; $7865: $ff
    rst $38                                       ; $7866: $ff
    rst $38                                       ; $7867: $ff
    rst $38                                       ; $7868: $ff
    rst $38                                       ; $7869: $ff
    rst $38                                       ; $786a: $ff
    rst $38                                       ; $786b: $ff
    rst $38                                       ; $786c: $ff
    rst $38                                       ; $786d: $ff
    rst $38                                       ; $786e: $ff
    rst $38                                       ; $786f: $ff
    rst $38                                       ; $7870: $ff
    rst $38                                       ; $7871: $ff
    rst $38                                       ; $7872: $ff
    rst $38                                       ; $7873: $ff
    rst $38                                       ; $7874: $ff
    rst $38                                       ; $7875: $ff
    rst $38                                       ; $7876: $ff
    rst $38                                       ; $7877: $ff
    rst $38                                       ; $7878: $ff
    rst $38                                       ; $7879: $ff
    rst $38                                       ; $787a: $ff
    rst $38                                       ; $787b: $ff
    rst $38                                       ; $787c: $ff
    rst $38                                       ; $787d: $ff
    rst $38                                       ; $787e: $ff
    rst $38                                       ; $787f: $ff
    rst $38                                       ; $7880: $ff
    rst $38                                       ; $7881: $ff
    rst $38                                       ; $7882: $ff
    rst $38                                       ; $7883: $ff
    rst $38                                       ; $7884: $ff
    rst $38                                       ; $7885: $ff
    rst $38                                       ; $7886: $ff
    rst $38                                       ; $7887: $ff
    rst $38                                       ; $7888: $ff
    rst $38                                       ; $7889: $ff
    rst $38                                       ; $788a: $ff
    rst $38                                       ; $788b: $ff
    rst $38                                       ; $788c: $ff
    rst $38                                       ; $788d: $ff
    rst $38                                       ; $788e: $ff
    rst $38                                       ; $788f: $ff
    rst $38                                       ; $7890: $ff
    rst $38                                       ; $7891: $ff
    rst $38                                       ; $7892: $ff
    rst $38                                       ; $7893: $ff
    rst $38                                       ; $7894: $ff
    rst $38                                       ; $7895: $ff
    rst $38                                       ; $7896: $ff
    rst $38                                       ; $7897: $ff
    rst $38                                       ; $7898: $ff
    rst $38                                       ; $7899: $ff
    rst $38                                       ; $789a: $ff
    rst $38                                       ; $789b: $ff
    rst $38                                       ; $789c: $ff
    rst $38                                       ; $789d: $ff
    rst $38                                       ; $789e: $ff
    rst $38                                       ; $789f: $ff
    rst $38                                       ; $78a0: $ff
    rst $38                                       ; $78a1: $ff
    rst $38                                       ; $78a2: $ff
    rst $38                                       ; $78a3: $ff
    rst $38                                       ; $78a4: $ff
    rst $38                                       ; $78a5: $ff
    rst $38                                       ; $78a6: $ff
    rst $38                                       ; $78a7: $ff
    rst $38                                       ; $78a8: $ff
    rst $38                                       ; $78a9: $ff
    rst $38                                       ; $78aa: $ff
    rst $38                                       ; $78ab: $ff
    rst $38                                       ; $78ac: $ff
    rst $38                                       ; $78ad: $ff
    rst $38                                       ; $78ae: $ff
    rst $38                                       ; $78af: $ff
    rst $38                                       ; $78b0: $ff
    rst $38                                       ; $78b1: $ff
    rst $38                                       ; $78b2: $ff
    rst $38                                       ; $78b3: $ff
    rst $38                                       ; $78b4: $ff
    rst $38                                       ; $78b5: $ff
    rst $38                                       ; $78b6: $ff
    rst $38                                       ; $78b7: $ff
    rst $38                                       ; $78b8: $ff
    rst $38                                       ; $78b9: $ff
    rst $38                                       ; $78ba: $ff
    rst $38                                       ; $78bb: $ff
    rst $38                                       ; $78bc: $ff
    rst $38                                       ; $78bd: $ff
    rst $38                                       ; $78be: $ff
    rst $38                                       ; $78bf: $ff
    rst $38                                       ; $78c0: $ff
    rst $38                                       ; $78c1: $ff
    rst $38                                       ; $78c2: $ff
    rst $38                                       ; $78c3: $ff
    rst $38                                       ; $78c4: $ff
    rst $38                                       ; $78c5: $ff
    rst $38                                       ; $78c6: $ff
    rst $38                                       ; $78c7: $ff
    rst $38                                       ; $78c8: $ff
    rst $38                                       ; $78c9: $ff
    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    rst $38                                       ; $78cc: $ff
    rst $38                                       ; $78cd: $ff
    rst $38                                       ; $78ce: $ff
    rst $38                                       ; $78cf: $ff
    rst $38                                       ; $78d0: $ff
    rst $38                                       ; $78d1: $ff
    rst $38                                       ; $78d2: $ff
    rst $38                                       ; $78d3: $ff
    rst $38                                       ; $78d4: $ff
    rst $38                                       ; $78d5: $ff
    rst $38                                       ; $78d6: $ff
    rst $38                                       ; $78d7: $ff
    rst $38                                       ; $78d8: $ff
    rst $38                                       ; $78d9: $ff
    rst $38                                       ; $78da: $ff
    rst $38                                       ; $78db: $ff
    rst $38                                       ; $78dc: $ff
    rst $38                                       ; $78dd: $ff
    rst $38                                       ; $78de: $ff
    rst $38                                       ; $78df: $ff
    rst $38                                       ; $78e0: $ff
    rst $38                                       ; $78e1: $ff
    rst $38                                       ; $78e2: $ff
    rst $38                                       ; $78e3: $ff
    rst $38                                       ; $78e4: $ff
    rst $38                                       ; $78e5: $ff
    rst $38                                       ; $78e6: $ff
    rst $38                                       ; $78e7: $ff
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    rst $38                                       ; $78ea: $ff
    rst $38                                       ; $78eb: $ff
    rst $38                                       ; $78ec: $ff
    rst $38                                       ; $78ed: $ff
    rst $38                                       ; $78ee: $ff
    rst $38                                       ; $78ef: $ff
    rst $38                                       ; $78f0: $ff
    rst $38                                       ; $78f1: $ff
    rst $38                                       ; $78f2: $ff
    rst $38                                       ; $78f3: $ff
    rst $38                                       ; $78f4: $ff
    rst $38                                       ; $78f5: $ff
    rst $38                                       ; $78f6: $ff
    rst $38                                       ; $78f7: $ff
    rst $38                                       ; $78f8: $ff
    rst $38                                       ; $78f9: $ff
    rst $38                                       ; $78fa: $ff
    rst $38                                       ; $78fb: $ff
    rst $38                                       ; $78fc: $ff
    rst $38                                       ; $78fd: $ff
    rst $38                                       ; $78fe: $ff
    rst $38                                       ; $78ff: $ff
    rst $38                                       ; $7900: $ff
    rst $38                                       ; $7901: $ff
    rst $38                                       ; $7902: $ff
    rst $38                                       ; $7903: $ff
    rst $38                                       ; $7904: $ff
    rst $38                                       ; $7905: $ff
    rst $38                                       ; $7906: $ff
    rst $38                                       ; $7907: $ff
    rst $38                                       ; $7908: $ff
    rst $38                                       ; $7909: $ff
    rst $38                                       ; $790a: $ff
    rst $38                                       ; $790b: $ff
    rst $38                                       ; $790c: $ff
    rst $38                                       ; $790d: $ff
    rst $38                                       ; $790e: $ff
    rst $38                                       ; $790f: $ff
    rst $38                                       ; $7910: $ff
    rst $38                                       ; $7911: $ff
    rst $38                                       ; $7912: $ff
    rst $38                                       ; $7913: $ff
    rst $38                                       ; $7914: $ff
    rst $38                                       ; $7915: $ff
    rst $38                                       ; $7916: $ff
    rst $38                                       ; $7917: $ff
    rst $38                                       ; $7918: $ff
    rst $38                                       ; $7919: $ff
    rst $38                                       ; $791a: $ff
    rst $38                                       ; $791b: $ff
    rst $38                                       ; $791c: $ff
    rst $38                                       ; $791d: $ff
    rst $38                                       ; $791e: $ff
    rst $38                                       ; $791f: $ff
    rst $38                                       ; $7920: $ff
    rst $38                                       ; $7921: $ff
    rst $38                                       ; $7922: $ff
    rst $38                                       ; $7923: $ff
    rst $38                                       ; $7924: $ff
    rst $38                                       ; $7925: $ff
    rst $38                                       ; $7926: $ff
    rst $38                                       ; $7927: $ff
    rst $38                                       ; $7928: $ff
    rst $38                                       ; $7929: $ff
    rst $38                                       ; $792a: $ff
    rst $38                                       ; $792b: $ff
    rst $38                                       ; $792c: $ff
    rst $38                                       ; $792d: $ff
    rst $38                                       ; $792e: $ff
    rst $38                                       ; $792f: $ff
    rst $38                                       ; $7930: $ff
    rst $38                                       ; $7931: $ff
    rst $38                                       ; $7932: $ff
    rst $38                                       ; $7933: $ff
    rst $38                                       ; $7934: $ff
    rst $38                                       ; $7935: $ff
    rst $38                                       ; $7936: $ff
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    rst $38                                       ; $7939: $ff
    rst $38                                       ; $793a: $ff
    rst $38                                       ; $793b: $ff
    rst $38                                       ; $793c: $ff
    rst $38                                       ; $793d: $ff
    rst $38                                       ; $793e: $ff
    rst $38                                       ; $793f: $ff
    rst $38                                       ; $7940: $ff
    rst $38                                       ; $7941: $ff
    rst $38                                       ; $7942: $ff
    rst $38                                       ; $7943: $ff
    rst $38                                       ; $7944: $ff
    rst $38                                       ; $7945: $ff
    rst $38                                       ; $7946: $ff
    rst $38                                       ; $7947: $ff
    rst $38                                       ; $7948: $ff
    rst $38                                       ; $7949: $ff
    rst $38                                       ; $794a: $ff
    rst $38                                       ; $794b: $ff
    rst $38                                       ; $794c: $ff
    rst $38                                       ; $794d: $ff
    rst $38                                       ; $794e: $ff
    rst $38                                       ; $794f: $ff
    rst $38                                       ; $7950: $ff
    rst $38                                       ; $7951: $ff
    rst $38                                       ; $7952: $ff
    rst $38                                       ; $7953: $ff
    rst $38                                       ; $7954: $ff
    rst $38                                       ; $7955: $ff
    rst $38                                       ; $7956: $ff
    rst $38                                       ; $7957: $ff
    rst $38                                       ; $7958: $ff
    rst $38                                       ; $7959: $ff
    rst $38                                       ; $795a: $ff
    rst $38                                       ; $795b: $ff
    rst $38                                       ; $795c: $ff
    rst $38                                       ; $795d: $ff
    rst $38                                       ; $795e: $ff
    rst $38                                       ; $795f: $ff
    rst $38                                       ; $7960: $ff
    rst $38                                       ; $7961: $ff
    rst $38                                       ; $7962: $ff
    rst $38                                       ; $7963: $ff
    rst $38                                       ; $7964: $ff
    rst $38                                       ; $7965: $ff
    rst $38                                       ; $7966: $ff
    rst $38                                       ; $7967: $ff
    rst $38                                       ; $7968: $ff
    rst $38                                       ; $7969: $ff
    rst $38                                       ; $796a: $ff
    rst $38                                       ; $796b: $ff
    rst $38                                       ; $796c: $ff
    rst $38                                       ; $796d: $ff
    rst $38                                       ; $796e: $ff
    rst $38                                       ; $796f: $ff
    rst $38                                       ; $7970: $ff
    rst $38                                       ; $7971: $ff
    rst $38                                       ; $7972: $ff
    rst $38                                       ; $7973: $ff
    rst $38                                       ; $7974: $ff
    rst $38                                       ; $7975: $ff
    rst $38                                       ; $7976: $ff
    rst $38                                       ; $7977: $ff
    rst $38                                       ; $7978: $ff
    rst $38                                       ; $7979: $ff
    rst $38                                       ; $797a: $ff
    rst $38                                       ; $797b: $ff
    rst $38                                       ; $797c: $ff
    rst $38                                       ; $797d: $ff
    rst $38                                       ; $797e: $ff
    rst $38                                       ; $797f: $ff
    rst $38                                       ; $7980: $ff
    rst $38                                       ; $7981: $ff
    rst $38                                       ; $7982: $ff
    rst $38                                       ; $7983: $ff
    rst $38                                       ; $7984: $ff
    rst $38                                       ; $7985: $ff
    rst $38                                       ; $7986: $ff
    rst $38                                       ; $7987: $ff
    rst $38                                       ; $7988: $ff
    rst $38                                       ; $7989: $ff
    rst $38                                       ; $798a: $ff
    rst $38                                       ; $798b: $ff
    rst $38                                       ; $798c: $ff
    rst $38                                       ; $798d: $ff
    rst $38                                       ; $798e: $ff
    rst $38                                       ; $798f: $ff
    rst $38                                       ; $7990: $ff
    rst $38                                       ; $7991: $ff
    rst $38                                       ; $7992: $ff
    rst $38                                       ; $7993: $ff
    rst $38                                       ; $7994: $ff
    rst $38                                       ; $7995: $ff
    rst $38                                       ; $7996: $ff
    rst $38                                       ; $7997: $ff
    rst $38                                       ; $7998: $ff
    rst $38                                       ; $7999: $ff
    rst $38                                       ; $799a: $ff
    rst $38                                       ; $799b: $ff
    rst $38                                       ; $799c: $ff
    rst $38                                       ; $799d: $ff
    rst $38                                       ; $799e: $ff
    rst $38                                       ; $799f: $ff
    rst $38                                       ; $79a0: $ff
    rst $38                                       ; $79a1: $ff
    rst $38                                       ; $79a2: $ff
    rst $38                                       ; $79a3: $ff
    rst $38                                       ; $79a4: $ff
    rst $38                                       ; $79a5: $ff
    rst $38                                       ; $79a6: $ff
    rst $38                                       ; $79a7: $ff
    rst $38                                       ; $79a8: $ff
    rst $38                                       ; $79a9: $ff
    rst $38                                       ; $79aa: $ff
    rst $38                                       ; $79ab: $ff
    rst $38                                       ; $79ac: $ff
    rst $38                                       ; $79ad: $ff
    rst $38                                       ; $79ae: $ff
    rst $38                                       ; $79af: $ff
    rst $38                                       ; $79b0: $ff
    rst $38                                       ; $79b1: $ff
    rst $38                                       ; $79b2: $ff
    rst $38                                       ; $79b3: $ff
    rst $38                                       ; $79b4: $ff
    rst $38                                       ; $79b5: $ff
    rst $38                                       ; $79b6: $ff
    rst $38                                       ; $79b7: $ff
    rst $38                                       ; $79b8: $ff
    rst $38                                       ; $79b9: $ff
    rst $38                                       ; $79ba: $ff
    rst $38                                       ; $79bb: $ff
    rst $38                                       ; $79bc: $ff
    rst $38                                       ; $79bd: $ff
    rst $38                                       ; $79be: $ff
    rst $38                                       ; $79bf: $ff
    rst $38                                       ; $79c0: $ff
    rst $38                                       ; $79c1: $ff
    rst $38                                       ; $79c2: $ff
    rst $38                                       ; $79c3: $ff
    rst $38                                       ; $79c4: $ff
    rst $38                                       ; $79c5: $ff
    rst $38                                       ; $79c6: $ff
    rst $38                                       ; $79c7: $ff
    rst $38                                       ; $79c8: $ff
    rst $38                                       ; $79c9: $ff
    rst $38                                       ; $79ca: $ff
    rst $38                                       ; $79cb: $ff
    rst $38                                       ; $79cc: $ff
    rst $38                                       ; $79cd: $ff
    rst $38                                       ; $79ce: $ff
    rst $38                                       ; $79cf: $ff
    rst $38                                       ; $79d0: $ff
    rst $38                                       ; $79d1: $ff
    rst $38                                       ; $79d2: $ff
    rst $38                                       ; $79d3: $ff
    rst $38                                       ; $79d4: $ff
    rst $38                                       ; $79d5: $ff
    rst $38                                       ; $79d6: $ff
    rst $38                                       ; $79d7: $ff
    rst $38                                       ; $79d8: $ff
    rst $38                                       ; $79d9: $ff
    rst $38                                       ; $79da: $ff
    rst $38                                       ; $79db: $ff
    rst $38                                       ; $79dc: $ff
    rst $38                                       ; $79dd: $ff
    rst $38                                       ; $79de: $ff
    rst $38                                       ; $79df: $ff
    rst $38                                       ; $79e0: $ff
    rst $38                                       ; $79e1: $ff
    rst $38                                       ; $79e2: $ff
    rst $38                                       ; $79e3: $ff
    rst $38                                       ; $79e4: $ff
    rst $38                                       ; $79e5: $ff
    rst $38                                       ; $79e6: $ff
    rst $38                                       ; $79e7: $ff
    rst $38                                       ; $79e8: $ff
    rst $38                                       ; $79e9: $ff
    rst $38                                       ; $79ea: $ff
    rst $38                                       ; $79eb: $ff
    rst $38                                       ; $79ec: $ff
    rst $38                                       ; $79ed: $ff
    rst $38                                       ; $79ee: $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    rst $38                                       ; $79f5: $ff
    rst $38                                       ; $79f6: $ff
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    rst $38                                       ; $79fb: $ff
    rst $38                                       ; $79fc: $ff
    rst $38                                       ; $79fd: $ff
    rst $38                                       ; $79fe: $ff
    rst $38                                       ; $79ff: $ff
    rst $38                                       ; $7a00: $ff
    rst $38                                       ; $7a01: $ff
    rst $38                                       ; $7a02: $ff
    rst $38                                       ; $7a03: $ff
    rst $38                                       ; $7a04: $ff
    rst $38                                       ; $7a05: $ff
    rst $38                                       ; $7a06: $ff
    rst $38                                       ; $7a07: $ff
    rst $38                                       ; $7a08: $ff
    rst $38                                       ; $7a09: $ff
    rst $38                                       ; $7a0a: $ff
    rst $38                                       ; $7a0b: $ff
    rst $38                                       ; $7a0c: $ff
    rst $38                                       ; $7a0d: $ff
    rst $38                                       ; $7a0e: $ff
    rst $38                                       ; $7a0f: $ff
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
    rst $38                                       ; $7a12: $ff
    rst $38                                       ; $7a13: $ff
    rst $38                                       ; $7a14: $ff
    rst $38                                       ; $7a15: $ff
    rst $38                                       ; $7a16: $ff
    rst $38                                       ; $7a17: $ff
    rst $38                                       ; $7a18: $ff
    rst $38                                       ; $7a19: $ff
    rst $38                                       ; $7a1a: $ff
    rst $38                                       ; $7a1b: $ff
    rst $38                                       ; $7a1c: $ff
    rst $38                                       ; $7a1d: $ff
    rst $38                                       ; $7a1e: $ff
    rst $38                                       ; $7a1f: $ff
    rst $38                                       ; $7a20: $ff
    rst $38                                       ; $7a21: $ff
    rst $38                                       ; $7a22: $ff
    rst $38                                       ; $7a23: $ff
    rst $38                                       ; $7a24: $ff
    rst $38                                       ; $7a25: $ff
    rst $38                                       ; $7a26: $ff
    rst $38                                       ; $7a27: $ff
    rst $38                                       ; $7a28: $ff
    rst $38                                       ; $7a29: $ff
    rst $38                                       ; $7a2a: $ff
    rst $38                                       ; $7a2b: $ff
    rst $38                                       ; $7a2c: $ff
    rst $38                                       ; $7a2d: $ff
    rst $38                                       ; $7a2e: $ff
    rst $38                                       ; $7a2f: $ff
    rst $38                                       ; $7a30: $ff
    rst $38                                       ; $7a31: $ff
    rst $38                                       ; $7a32: $ff
    rst $38                                       ; $7a33: $ff
    rst $38                                       ; $7a34: $ff
    rst $38                                       ; $7a35: $ff
    rst $38                                       ; $7a36: $ff
    rst $38                                       ; $7a37: $ff
    rst $38                                       ; $7a38: $ff
    rst $38                                       ; $7a39: $ff
    rst $38                                       ; $7a3a: $ff
    rst $38                                       ; $7a3b: $ff
    rst $38                                       ; $7a3c: $ff
    rst $38                                       ; $7a3d: $ff
    rst $38                                       ; $7a3e: $ff
    rst $38                                       ; $7a3f: $ff
    rst $38                                       ; $7a40: $ff
    rst $38                                       ; $7a41: $ff
    rst $38                                       ; $7a42: $ff
    rst $38                                       ; $7a43: $ff
    rst $38                                       ; $7a44: $ff
    rst $38                                       ; $7a45: $ff
    rst $38                                       ; $7a46: $ff
    rst $38                                       ; $7a47: $ff
    rst $38                                       ; $7a48: $ff
    rst $38                                       ; $7a49: $ff
    rst $38                                       ; $7a4a: $ff
    rst $38                                       ; $7a4b: $ff
    rst $38                                       ; $7a4c: $ff
    rst $38                                       ; $7a4d: $ff
    rst $38                                       ; $7a4e: $ff
    rst $38                                       ; $7a4f: $ff
    rst $38                                       ; $7a50: $ff
    rst $38                                       ; $7a51: $ff
    rst $38                                       ; $7a52: $ff
    rst $38                                       ; $7a53: $ff
    rst $38                                       ; $7a54: $ff
    rst $38                                       ; $7a55: $ff
    rst $38                                       ; $7a56: $ff
    rst $38                                       ; $7a57: $ff
    rst $38                                       ; $7a58: $ff
    rst $38                                       ; $7a59: $ff
    rst $38                                       ; $7a5a: $ff
    rst $38                                       ; $7a5b: $ff
    rst $38                                       ; $7a5c: $ff
    rst $38                                       ; $7a5d: $ff
    rst $38                                       ; $7a5e: $ff
    rst $38                                       ; $7a5f: $ff
    rst $38                                       ; $7a60: $ff
    rst $38                                       ; $7a61: $ff
    rst $38                                       ; $7a62: $ff
    rst $38                                       ; $7a63: $ff
    rst $38                                       ; $7a64: $ff
    rst $38                                       ; $7a65: $ff
    rst $38                                       ; $7a66: $ff
    rst $38                                       ; $7a67: $ff
    rst $38                                       ; $7a68: $ff
    rst $38                                       ; $7a69: $ff
    rst $38                                       ; $7a6a: $ff
    rst $38                                       ; $7a6b: $ff
    rst $38                                       ; $7a6c: $ff
    rst $38                                       ; $7a6d: $ff
    rst $38                                       ; $7a6e: $ff
    rst $38                                       ; $7a6f: $ff
    rst $38                                       ; $7a70: $ff
    rst $38                                       ; $7a71: $ff
    rst $38                                       ; $7a72: $ff
    rst $38                                       ; $7a73: $ff
    rst $38                                       ; $7a74: $ff
    rst $38                                       ; $7a75: $ff
    rst $38                                       ; $7a76: $ff
    rst $38                                       ; $7a77: $ff
    rst $38                                       ; $7a78: $ff
    rst $38                                       ; $7a79: $ff
    rst $38                                       ; $7a7a: $ff
    rst $38                                       ; $7a7b: $ff
    rst $38                                       ; $7a7c: $ff
    rst $38                                       ; $7a7d: $ff
    rst $38                                       ; $7a7e: $ff
    rst $38                                       ; $7a7f: $ff
    rst $38                                       ; $7a80: $ff
    rst $38                                       ; $7a81: $ff
    rst $38                                       ; $7a82: $ff
    rst $38                                       ; $7a83: $ff
    rst $38                                       ; $7a84: $ff
    rst $38                                       ; $7a85: $ff
    rst $38                                       ; $7a86: $ff
    rst $38                                       ; $7a87: $ff
    rst $38                                       ; $7a88: $ff
    rst $38                                       ; $7a89: $ff
    rst $38                                       ; $7a8a: $ff
    rst $38                                       ; $7a8b: $ff
    rst $38                                       ; $7a8c: $ff
    rst $38                                       ; $7a8d: $ff
    rst $38                                       ; $7a8e: $ff
    rst $38                                       ; $7a8f: $ff
    rst $38                                       ; $7a90: $ff
    rst $38                                       ; $7a91: $ff
    rst $38                                       ; $7a92: $ff
    rst $38                                       ; $7a93: $ff
    rst $38                                       ; $7a94: $ff
    rst $38                                       ; $7a95: $ff
    rst $38                                       ; $7a96: $ff
    rst $38                                       ; $7a97: $ff
    rst $38                                       ; $7a98: $ff
    rst $38                                       ; $7a99: $ff
    rst $38                                       ; $7a9a: $ff
    rst $38                                       ; $7a9b: $ff
    rst $38                                       ; $7a9c: $ff
    rst $38                                       ; $7a9d: $ff
    rst $38                                       ; $7a9e: $ff
    rst $38                                       ; $7a9f: $ff
    rst $38                                       ; $7aa0: $ff
    rst $38                                       ; $7aa1: $ff
    rst $38                                       ; $7aa2: $ff
    rst $38                                       ; $7aa3: $ff
    rst $38                                       ; $7aa4: $ff
    rst $38                                       ; $7aa5: $ff
    rst $38                                       ; $7aa6: $ff
    rst $38                                       ; $7aa7: $ff
    rst $38                                       ; $7aa8: $ff
    rst $38                                       ; $7aa9: $ff
    rst $38                                       ; $7aaa: $ff
    rst $38                                       ; $7aab: $ff
    rst $38                                       ; $7aac: $ff
    rst $38                                       ; $7aad: $ff
    rst $38                                       ; $7aae: $ff
    rst $38                                       ; $7aaf: $ff
    rst $38                                       ; $7ab0: $ff
    rst $38                                       ; $7ab1: $ff
    rst $38                                       ; $7ab2: $ff
    rst $38                                       ; $7ab3: $ff
    rst $38                                       ; $7ab4: $ff
    rst $38                                       ; $7ab5: $ff
    rst $38                                       ; $7ab6: $ff
    rst $38                                       ; $7ab7: $ff
    rst $38                                       ; $7ab8: $ff
    rst $38                                       ; $7ab9: $ff
    rst $38                                       ; $7aba: $ff
    rst $38                                       ; $7abb: $ff
    rst $38                                       ; $7abc: $ff
    rst $38                                       ; $7abd: $ff
    rst $38                                       ; $7abe: $ff
    rst $38                                       ; $7abf: $ff
    rst $38                                       ; $7ac0: $ff
    rst $38                                       ; $7ac1: $ff
    rst $38                                       ; $7ac2: $ff
    rst $38                                       ; $7ac3: $ff
    rst $38                                       ; $7ac4: $ff
    rst $38                                       ; $7ac5: $ff
    rst $38                                       ; $7ac6: $ff
    rst $38                                       ; $7ac7: $ff
    rst $38                                       ; $7ac8: $ff
    rst $38                                       ; $7ac9: $ff
    rst $38                                       ; $7aca: $ff
    rst $38                                       ; $7acb: $ff
    rst $38                                       ; $7acc: $ff
    rst $38                                       ; $7acd: $ff
    rst $38                                       ; $7ace: $ff
    rst $38                                       ; $7acf: $ff
    rst $38                                       ; $7ad0: $ff
    rst $38                                       ; $7ad1: $ff
    rst $38                                       ; $7ad2: $ff
    rst $38                                       ; $7ad3: $ff
    rst $38                                       ; $7ad4: $ff
    rst $38                                       ; $7ad5: $ff
    rst $38                                       ; $7ad6: $ff
    rst $38                                       ; $7ad7: $ff
    rst $38                                       ; $7ad8: $ff
    rst $38                                       ; $7ad9: $ff
    rst $38                                       ; $7ada: $ff
    rst $38                                       ; $7adb: $ff
    rst $38                                       ; $7adc: $ff
    rst $38                                       ; $7add: $ff
    rst $38                                       ; $7ade: $ff
    rst $38                                       ; $7adf: $ff
    rst $38                                       ; $7ae0: $ff
    rst $38                                       ; $7ae1: $ff
    rst $38                                       ; $7ae2: $ff
    rst $38                                       ; $7ae3: $ff
    rst $38                                       ; $7ae4: $ff
    rst $38                                       ; $7ae5: $ff
    rst $38                                       ; $7ae6: $ff
    rst $38                                       ; $7ae7: $ff
    rst $38                                       ; $7ae8: $ff
    rst $38                                       ; $7ae9: $ff
    rst $38                                       ; $7aea: $ff
    rst $38                                       ; $7aeb: $ff
    rst $38                                       ; $7aec: $ff
    rst $38                                       ; $7aed: $ff
    rst $38                                       ; $7aee: $ff
    rst $38                                       ; $7aef: $ff
    rst $38                                       ; $7af0: $ff
    rst $38                                       ; $7af1: $ff
    rst $38                                       ; $7af2: $ff
    rst $38                                       ; $7af3: $ff
    rst $38                                       ; $7af4: $ff
    rst $38                                       ; $7af5: $ff
    rst $38                                       ; $7af6: $ff
    rst $38                                       ; $7af7: $ff
    rst $38                                       ; $7af8: $ff

Jump_05e_7af9:
    rst $38                                       ; $7af9: $ff
    rst $38                                       ; $7afa: $ff
    rst $38                                       ; $7afb: $ff
    rst $38                                       ; $7afc: $ff
    rst $38                                       ; $7afd: $ff
    rst $38                                       ; $7afe: $ff
    rst $38                                       ; $7aff: $ff
    rst $38                                       ; $7b00: $ff
    rst $38                                       ; $7b01: $ff
    rst $38                                       ; $7b02: $ff
    rst $38                                       ; $7b03: $ff
    rst $38                                       ; $7b04: $ff
    rst $38                                       ; $7b05: $ff
    rst $38                                       ; $7b06: $ff
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    rst $38                                       ; $7b0d: $ff
    rst $38                                       ; $7b0e: $ff
    rst $38                                       ; $7b0f: $ff
    rst $38                                       ; $7b10: $ff
    rst $38                                       ; $7b11: $ff
    rst $38                                       ; $7b12: $ff
    rst $38                                       ; $7b13: $ff
    rst $38                                       ; $7b14: $ff
    rst $38                                       ; $7b15: $ff
    rst $38                                       ; $7b16: $ff
    rst $38                                       ; $7b17: $ff
    rst $38                                       ; $7b18: $ff
    rst $38                                       ; $7b19: $ff
    rst $38                                       ; $7b1a: $ff
    rst $38                                       ; $7b1b: $ff
    rst $38                                       ; $7b1c: $ff
    rst $38                                       ; $7b1d: $ff
    rst $38                                       ; $7b1e: $ff
    rst $38                                       ; $7b1f: $ff
    rst $38                                       ; $7b20: $ff
    rst $38                                       ; $7b21: $ff
    rst $38                                       ; $7b22: $ff
    rst $38                                       ; $7b23: $ff
    rst $38                                       ; $7b24: $ff
    rst $38                                       ; $7b25: $ff
    rst $38                                       ; $7b26: $ff
    rst $38                                       ; $7b27: $ff
    rst $38                                       ; $7b28: $ff
    rst $38                                       ; $7b29: $ff
    rst $38                                       ; $7b2a: $ff
    rst $38                                       ; $7b2b: $ff
    rst $38                                       ; $7b2c: $ff
    rst $38                                       ; $7b2d: $ff
    rst $38                                       ; $7b2e: $ff
    rst $38                                       ; $7b2f: $ff
    rst $38                                       ; $7b30: $ff
    rst $38                                       ; $7b31: $ff
    rst $38                                       ; $7b32: $ff
    rst $38                                       ; $7b33: $ff
    rst $38                                       ; $7b34: $ff
    rst $38                                       ; $7b35: $ff
    rst $38                                       ; $7b36: $ff
    rst $38                                       ; $7b37: $ff
    rst $38                                       ; $7b38: $ff
    rst $38                                       ; $7b39: $ff
    rst $38                                       ; $7b3a: $ff
    rst $38                                       ; $7b3b: $ff
    rst $38                                       ; $7b3c: $ff
    rst $38                                       ; $7b3d: $ff
    rst $38                                       ; $7b3e: $ff
    rst $38                                       ; $7b3f: $ff
    rst $38                                       ; $7b40: $ff
    rst $38                                       ; $7b41: $ff
    rst $38                                       ; $7b42: $ff
    rst $38                                       ; $7b43: $ff
    rst $38                                       ; $7b44: $ff
    rst $38                                       ; $7b45: $ff
    rst $38                                       ; $7b46: $ff
    rst $38                                       ; $7b47: $ff
    rst $38                                       ; $7b48: $ff
    rst $38                                       ; $7b49: $ff
    rst $38                                       ; $7b4a: $ff
    rst $38                                       ; $7b4b: $ff
    rst $38                                       ; $7b4c: $ff
    rst $38                                       ; $7b4d: $ff
    rst $38                                       ; $7b4e: $ff
    rst $38                                       ; $7b4f: $ff
    rst $38                                       ; $7b50: $ff
    rst $38                                       ; $7b51: $ff
    rst $38                                       ; $7b52: $ff
    rst $38                                       ; $7b53: $ff
    rst $38                                       ; $7b54: $ff
    rst $38                                       ; $7b55: $ff
    rst $38                                       ; $7b56: $ff
    rst $38                                       ; $7b57: $ff
    rst $38                                       ; $7b58: $ff
    rst $38                                       ; $7b59: $ff
    rst $38                                       ; $7b5a: $ff
    rst $38                                       ; $7b5b: $ff
    rst $38                                       ; $7b5c: $ff
    rst $38                                       ; $7b5d: $ff
    rst $38                                       ; $7b5e: $ff
    rst $38                                       ; $7b5f: $ff
    rst $38                                       ; $7b60: $ff
    rst $38                                       ; $7b61: $ff
    rst $38                                       ; $7b62: $ff
    rst $38                                       ; $7b63: $ff
    rst $38                                       ; $7b64: $ff
    rst $38                                       ; $7b65: $ff
    rst $38                                       ; $7b66: $ff
    rst $38                                       ; $7b67: $ff
    rst $38                                       ; $7b68: $ff
    rst $38                                       ; $7b69: $ff
    rst $38                                       ; $7b6a: $ff
    rst $38                                       ; $7b6b: $ff
    rst $38                                       ; $7b6c: $ff
    rst $38                                       ; $7b6d: $ff
    rst $38                                       ; $7b6e: $ff
    rst $38                                       ; $7b6f: $ff
    rst $38                                       ; $7b70: $ff
    rst $38                                       ; $7b71: $ff
    rst $38                                       ; $7b72: $ff
    rst $38                                       ; $7b73: $ff
    rst $38                                       ; $7b74: $ff
    rst $38                                       ; $7b75: $ff
    rst $38                                       ; $7b76: $ff
    rst $38                                       ; $7b77: $ff
    rst $38                                       ; $7b78: $ff
    rst $38                                       ; $7b79: $ff
    rst $38                                       ; $7b7a: $ff
    rst $38                                       ; $7b7b: $ff
    rst $38                                       ; $7b7c: $ff
    rst $38                                       ; $7b7d: $ff
    rst $38                                       ; $7b7e: $ff
    rst $38                                       ; $7b7f: $ff
    rst $38                                       ; $7b80: $ff
    rst $38                                       ; $7b81: $ff
    rst $38                                       ; $7b82: $ff
    rst $38                                       ; $7b83: $ff
    rst $38                                       ; $7b84: $ff
    rst $38                                       ; $7b85: $ff
    rst $38                                       ; $7b86: $ff
    rst $38                                       ; $7b87: $ff
    rst $38                                       ; $7b88: $ff
    rst $38                                       ; $7b89: $ff
    rst $38                                       ; $7b8a: $ff
    rst $38                                       ; $7b8b: $ff
    rst $38                                       ; $7b8c: $ff
    rst $38                                       ; $7b8d: $ff
    rst $38                                       ; $7b8e: $ff
    rst $38                                       ; $7b8f: $ff
    rst $38                                       ; $7b90: $ff
    rst $38                                       ; $7b91: $ff
    rst $38                                       ; $7b92: $ff
    rst $38                                       ; $7b93: $ff
    rst $38                                       ; $7b94: $ff
    rst $38                                       ; $7b95: $ff
    rst $38                                       ; $7b96: $ff
    rst $38                                       ; $7b97: $ff
    rst $38                                       ; $7b98: $ff
    rst $38                                       ; $7b99: $ff
    rst $38                                       ; $7b9a: $ff
    rst $38                                       ; $7b9b: $ff
    rst $38                                       ; $7b9c: $ff
    rst $38                                       ; $7b9d: $ff
    rst $38                                       ; $7b9e: $ff
    rst $38                                       ; $7b9f: $ff
    rst $38                                       ; $7ba0: $ff
    rst $38                                       ; $7ba1: $ff
    rst $38                                       ; $7ba2: $ff
    rst $38                                       ; $7ba3: $ff
    rst $38                                       ; $7ba4: $ff
    rst $38                                       ; $7ba5: $ff
    rst $38                                       ; $7ba6: $ff
    rst $38                                       ; $7ba7: $ff
    rst $38                                       ; $7ba8: $ff
    rst $38                                       ; $7ba9: $ff
    rst $38                                       ; $7baa: $ff
    rst $38                                       ; $7bab: $ff
    rst $38                                       ; $7bac: $ff
    rst $38                                       ; $7bad: $ff
    rst $38                                       ; $7bae: $ff
    rst $38                                       ; $7baf: $ff
    rst $38                                       ; $7bb0: $ff
    rst $38                                       ; $7bb1: $ff
    rst $38                                       ; $7bb2: $ff
    rst $38                                       ; $7bb3: $ff
    rst $38                                       ; $7bb4: $ff
    rst $38                                       ; $7bb5: $ff
    rst $38                                       ; $7bb6: $ff
    rst $38                                       ; $7bb7: $ff
    rst $38                                       ; $7bb8: $ff
    rst $38                                       ; $7bb9: $ff
    rst $38                                       ; $7bba: $ff
    rst $38                                       ; $7bbb: $ff
    rst $38                                       ; $7bbc: $ff
    rst $38                                       ; $7bbd: $ff

Jump_05e_7bbe:
    rst $38                                       ; $7bbe: $ff
    rst $38                                       ; $7bbf: $ff
    rst $38                                       ; $7bc0: $ff
    rst $38                                       ; $7bc1: $ff
    rst $38                                       ; $7bc2: $ff
    rst $38                                       ; $7bc3: $ff
    rst $38                                       ; $7bc4: $ff
    rst $38                                       ; $7bc5: $ff
    rst $38                                       ; $7bc6: $ff
    rst $38                                       ; $7bc7: $ff
    rst $38                                       ; $7bc8: $ff
    rst $38                                       ; $7bc9: $ff
    rst $38                                       ; $7bca: $ff
    rst $38                                       ; $7bcb: $ff
    rst $38                                       ; $7bcc: $ff
    rst $38                                       ; $7bcd: $ff
    rst $38                                       ; $7bce: $ff
    rst $38                                       ; $7bcf: $ff
    rst $38                                       ; $7bd0: $ff
    rst $38                                       ; $7bd1: $ff
    rst $38                                       ; $7bd2: $ff
    rst $38                                       ; $7bd3: $ff
    rst $38                                       ; $7bd4: $ff
    rst $38                                       ; $7bd5: $ff
    rst $38                                       ; $7bd6: $ff
    rst $38                                       ; $7bd7: $ff
    rst $38                                       ; $7bd8: $ff
    rst $38                                       ; $7bd9: $ff
    rst $38                                       ; $7bda: $ff
    rst $38                                       ; $7bdb: $ff
    rst $38                                       ; $7bdc: $ff
    rst $38                                       ; $7bdd: $ff
    rst $38                                       ; $7bde: $ff
    rst $38                                       ; $7bdf: $ff
    rst $38                                       ; $7be0: $ff
    rst $38                                       ; $7be1: $ff
    rst $38                                       ; $7be2: $ff
    rst $38                                       ; $7be3: $ff
    rst $38                                       ; $7be4: $ff
    rst $38                                       ; $7be5: $ff
    rst $38                                       ; $7be6: $ff
    rst $38                                       ; $7be7: $ff
    rst $38                                       ; $7be8: $ff
    rst $38                                       ; $7be9: $ff
    rst $38                                       ; $7bea: $ff
    rst $38                                       ; $7beb: $ff
    rst $38                                       ; $7bec: $ff
    rst $38                                       ; $7bed: $ff
    rst $38                                       ; $7bee: $ff
    rst $38                                       ; $7bef: $ff
    rst $38                                       ; $7bf0: $ff
    rst $38                                       ; $7bf1: $ff
    rst $38                                       ; $7bf2: $ff
    rst $38                                       ; $7bf3: $ff
    rst $38                                       ; $7bf4: $ff
    rst $38                                       ; $7bf5: $ff
    rst $38                                       ; $7bf6: $ff
    rst $38                                       ; $7bf7: $ff
    rst $38                                       ; $7bf8: $ff
    rst $38                                       ; $7bf9: $ff
    rst $38                                       ; $7bfa: $ff
    rst $38                                       ; $7bfb: $ff
    rst $38                                       ; $7bfc: $ff
    rst $38                                       ; $7bfd: $ff
    rst $38                                       ; $7bfe: $ff
    rst $38                                       ; $7bff: $ff

Call_05e_7c00:
    rst $38                                       ; $7c00: $ff
    rst $38                                       ; $7c01: $ff
    rst $38                                       ; $7c02: $ff
    rst $38                                       ; $7c03: $ff
    rst $38                                       ; $7c04: $ff
    rst $38                                       ; $7c05: $ff
    rst $38                                       ; $7c06: $ff
    rst $38                                       ; $7c07: $ff
    rst $38                                       ; $7c08: $ff
    rst $38                                       ; $7c09: $ff
    rst $38                                       ; $7c0a: $ff
    rst $38                                       ; $7c0b: $ff
    rst $38                                       ; $7c0c: $ff
    rst $38                                       ; $7c0d: $ff
    rst $38                                       ; $7c0e: $ff
    rst $38                                       ; $7c0f: $ff
    rst $38                                       ; $7c10: $ff
    rst $38                                       ; $7c11: $ff
    rst $38                                       ; $7c12: $ff
    rst $38                                       ; $7c13: $ff
    rst $38                                       ; $7c14: $ff
    rst $38                                       ; $7c15: $ff
    rst $38                                       ; $7c16: $ff
    rst $38                                       ; $7c17: $ff
    rst $38                                       ; $7c18: $ff
    rst $38                                       ; $7c19: $ff
    rst $38                                       ; $7c1a: $ff
    rst $38                                       ; $7c1b: $ff
    rst $38                                       ; $7c1c: $ff
    rst $38                                       ; $7c1d: $ff
    rst $38                                       ; $7c1e: $ff
    rst $38                                       ; $7c1f: $ff
    rst $38                                       ; $7c20: $ff
    rst $38                                       ; $7c21: $ff
    rst $38                                       ; $7c22: $ff
    rst $38                                       ; $7c23: $ff
    rst $38                                       ; $7c24: $ff
    rst $38                                       ; $7c25: $ff
    rst $38                                       ; $7c26: $ff
    rst $38                                       ; $7c27: $ff
    rst $38                                       ; $7c28: $ff
    rst $38                                       ; $7c29: $ff
    rst $38                                       ; $7c2a: $ff
    rst $38                                       ; $7c2b: $ff
    rst $38                                       ; $7c2c: $ff
    rst $38                                       ; $7c2d: $ff
    rst $38                                       ; $7c2e: $ff
    rst $38                                       ; $7c2f: $ff
    rst $38                                       ; $7c30: $ff
    rst $38                                       ; $7c31: $ff
    rst $38                                       ; $7c32: $ff
    rst $38                                       ; $7c33: $ff
    rst $38                                       ; $7c34: $ff
    rst $38                                       ; $7c35: $ff
    rst $38                                       ; $7c36: $ff
    rst $38                                       ; $7c37: $ff
    rst $38                                       ; $7c38: $ff
    rst $38                                       ; $7c39: $ff
    rst $38                                       ; $7c3a: $ff
    rst $38                                       ; $7c3b: $ff
    rst $38                                       ; $7c3c: $ff
    rst $38                                       ; $7c3d: $ff
    rst $38                                       ; $7c3e: $ff
    rst $38                                       ; $7c3f: $ff
    rst $38                                       ; $7c40: $ff
    rst $38                                       ; $7c41: $ff
    rst $38                                       ; $7c42: $ff
    rst $38                                       ; $7c43: $ff
    rst $38                                       ; $7c44: $ff
    rst $38                                       ; $7c45: $ff
    rst $38                                       ; $7c46: $ff
    rst $38                                       ; $7c47: $ff
    rst $38                                       ; $7c48: $ff
    rst $38                                       ; $7c49: $ff
    rst $38                                       ; $7c4a: $ff
    rst $38                                       ; $7c4b: $ff
    rst $38                                       ; $7c4c: $ff
    rst $38                                       ; $7c4d: $ff
    rst $38                                       ; $7c4e: $ff
    rst $38                                       ; $7c4f: $ff
    rst $38                                       ; $7c50: $ff
    rst $38                                       ; $7c51: $ff
    rst $38                                       ; $7c52: $ff
    rst $38                                       ; $7c53: $ff
    rst $38                                       ; $7c54: $ff
    rst $38                                       ; $7c55: $ff
    rst $38                                       ; $7c56: $ff
    rst $38                                       ; $7c57: $ff
    rst $38                                       ; $7c58: $ff
    rst $38                                       ; $7c59: $ff
    rst $38                                       ; $7c5a: $ff
    rst $38                                       ; $7c5b: $ff
    rst $38                                       ; $7c5c: $ff
    rst $38                                       ; $7c5d: $ff
    rst $38                                       ; $7c5e: $ff
    rst $38                                       ; $7c5f: $ff
    rst $38                                       ; $7c60: $ff
    rst $38                                       ; $7c61: $ff
    rst $38                                       ; $7c62: $ff
    rst $38                                       ; $7c63: $ff
    rst $38                                       ; $7c64: $ff
    rst $38                                       ; $7c65: $ff
    rst $38                                       ; $7c66: $ff
    rst $38                                       ; $7c67: $ff
    rst $38                                       ; $7c68: $ff
    rst $38                                       ; $7c69: $ff
    rst $38                                       ; $7c6a: $ff
    rst $38                                       ; $7c6b: $ff
    rst $38                                       ; $7c6c: $ff
    rst $38                                       ; $7c6d: $ff
    rst $38                                       ; $7c6e: $ff
    rst $38                                       ; $7c6f: $ff
    rst $38                                       ; $7c70: $ff
    rst $38                                       ; $7c71: $ff
    rst $38                                       ; $7c72: $ff
    rst $38                                       ; $7c73: $ff
    rst $38                                       ; $7c74: $ff
    rst $38                                       ; $7c75: $ff
    rst $38                                       ; $7c76: $ff
    rst $38                                       ; $7c77: $ff
    rst $38                                       ; $7c78: $ff
    rst $38                                       ; $7c79: $ff
    rst $38                                       ; $7c7a: $ff
    rst $38                                       ; $7c7b: $ff
    rst $38                                       ; $7c7c: $ff
    rst $38                                       ; $7c7d: $ff
    rst $38                                       ; $7c7e: $ff
    rst $38                                       ; $7c7f: $ff
    rst $38                                       ; $7c80: $ff
    rst $38                                       ; $7c81: $ff
    rst $38                                       ; $7c82: $ff
    rst $38                                       ; $7c83: $ff
    rst $38                                       ; $7c84: $ff
    rst $38                                       ; $7c85: $ff
    rst $38                                       ; $7c86: $ff
    rst $38                                       ; $7c87: $ff
    rst $38                                       ; $7c88: $ff
    rst $38                                       ; $7c89: $ff
    rst $38                                       ; $7c8a: $ff
    rst $38                                       ; $7c8b: $ff
    rst $38                                       ; $7c8c: $ff
    rst $38                                       ; $7c8d: $ff
    rst $38                                       ; $7c8e: $ff
    rst $38                                       ; $7c8f: $ff
    rst $38                                       ; $7c90: $ff
    rst $38                                       ; $7c91: $ff
    rst $38                                       ; $7c92: $ff
    rst $38                                       ; $7c93: $ff
    rst $38                                       ; $7c94: $ff
    rst $38                                       ; $7c95: $ff
    rst $38                                       ; $7c96: $ff
    rst $38                                       ; $7c97: $ff
    rst $38                                       ; $7c98: $ff
    rst $38                                       ; $7c99: $ff
    rst $38                                       ; $7c9a: $ff
    rst $38                                       ; $7c9b: $ff
    rst $38                                       ; $7c9c: $ff
    rst $38                                       ; $7c9d: $ff
    rst $38                                       ; $7c9e: $ff
    rst $38                                       ; $7c9f: $ff
    rst $38                                       ; $7ca0: $ff
    rst $38                                       ; $7ca1: $ff
    rst $38                                       ; $7ca2: $ff
    rst $38                                       ; $7ca3: $ff
    rst $38                                       ; $7ca4: $ff
    rst $38                                       ; $7ca5: $ff
    rst $38                                       ; $7ca6: $ff
    rst $38                                       ; $7ca7: $ff
    rst $38                                       ; $7ca8: $ff
    rst $38                                       ; $7ca9: $ff
    rst $38                                       ; $7caa: $ff
    rst $38                                       ; $7cab: $ff
    rst $38                                       ; $7cac: $ff
    rst $38                                       ; $7cad: $ff
    rst $38                                       ; $7cae: $ff
    rst $38                                       ; $7caf: $ff
    rst $38                                       ; $7cb0: $ff
    rst $38                                       ; $7cb1: $ff
    rst $38                                       ; $7cb2: $ff
    rst $38                                       ; $7cb3: $ff
    rst $38                                       ; $7cb4: $ff
    rst $38                                       ; $7cb5: $ff
    rst $38                                       ; $7cb6: $ff

Call_05e_7cb7:
    rst $38                                       ; $7cb7: $ff
    rst $38                                       ; $7cb8: $ff
    rst $38                                       ; $7cb9: $ff
    rst $38                                       ; $7cba: $ff
    rst $38                                       ; $7cbb: $ff
    rst $38                                       ; $7cbc: $ff
    rst $38                                       ; $7cbd: $ff
    rst $38                                       ; $7cbe: $ff
    rst $38                                       ; $7cbf: $ff
    rst $38                                       ; $7cc0: $ff
    rst $38                                       ; $7cc1: $ff
    rst $38                                       ; $7cc2: $ff
    rst $38                                       ; $7cc3: $ff

Jump_05e_7cc4:
    rst $38                                       ; $7cc4: $ff
    rst $38                                       ; $7cc5: $ff
    rst $38                                       ; $7cc6: $ff
    rst $38                                       ; $7cc7: $ff
    rst $38                                       ; $7cc8: $ff
    rst $38                                       ; $7cc9: $ff
    rst $38                                       ; $7cca: $ff
    rst $38                                       ; $7ccb: $ff
    rst $38                                       ; $7ccc: $ff
    rst $38                                       ; $7ccd: $ff
    rst $38                                       ; $7cce: $ff
    rst $38                                       ; $7ccf: $ff
    rst $38                                       ; $7cd0: $ff
    rst $38                                       ; $7cd1: $ff
    rst $38                                       ; $7cd2: $ff
    rst $38                                       ; $7cd3: $ff
    rst $38                                       ; $7cd4: $ff
    rst $38                                       ; $7cd5: $ff
    rst $38                                       ; $7cd6: $ff
    rst $38                                       ; $7cd7: $ff
    rst $38                                       ; $7cd8: $ff
    rst $38                                       ; $7cd9: $ff
    rst $38                                       ; $7cda: $ff
    rst $38                                       ; $7cdb: $ff
    rst $38                                       ; $7cdc: $ff
    rst $38                                       ; $7cdd: $ff
    rst $38                                       ; $7cde: $ff
    rst $38                                       ; $7cdf: $ff
    rst $38                                       ; $7ce0: $ff
    rst $38                                       ; $7ce1: $ff
    rst $38                                       ; $7ce2: $ff
    rst $38                                       ; $7ce3: $ff
    rst $38                                       ; $7ce4: $ff
    rst $38                                       ; $7ce5: $ff
    rst $38                                       ; $7ce6: $ff
    rst $38                                       ; $7ce7: $ff
    rst $38                                       ; $7ce8: $ff
    rst $38                                       ; $7ce9: $ff
    rst $38                                       ; $7cea: $ff
    rst $38                                       ; $7ceb: $ff
    rst $38                                       ; $7cec: $ff
    rst $38                                       ; $7ced: $ff
    rst $38                                       ; $7cee: $ff

Call_05e_7cef:
    rst $38                                       ; $7cef: $ff
    rst $38                                       ; $7cf0: $ff
    rst $38                                       ; $7cf1: $ff
    rst $38                                       ; $7cf2: $ff
    rst $38                                       ; $7cf3: $ff
    rst $38                                       ; $7cf4: $ff
    rst $38                                       ; $7cf5: $ff
    rst $38                                       ; $7cf6: $ff
    rst $38                                       ; $7cf7: $ff
    rst $38                                       ; $7cf8: $ff
    rst $38                                       ; $7cf9: $ff
    rst $38                                       ; $7cfa: $ff
    rst $38                                       ; $7cfb: $ff
    rst $38                                       ; $7cfc: $ff
    rst $38                                       ; $7cfd: $ff
    rst $38                                       ; $7cfe: $ff
    rst $38                                       ; $7cff: $ff
    rst $38                                       ; $7d00: $ff
    rst $38                                       ; $7d01: $ff
    rst $38                                       ; $7d02: $ff
    rst $38                                       ; $7d03: $ff
    rst $38                                       ; $7d04: $ff
    rst $38                                       ; $7d05: $ff
    rst $38                                       ; $7d06: $ff
    rst $38                                       ; $7d07: $ff
    rst $38                                       ; $7d08: $ff
    rst $38                                       ; $7d09: $ff
    rst $38                                       ; $7d0a: $ff
    rst $38                                       ; $7d0b: $ff
    rst $38                                       ; $7d0c: $ff
    rst $38                                       ; $7d0d: $ff
    rst $38                                       ; $7d0e: $ff
    rst $38                                       ; $7d0f: $ff
    rst $38                                       ; $7d10: $ff
    rst $38                                       ; $7d11: $ff
    rst $38                                       ; $7d12: $ff
    rst $38                                       ; $7d13: $ff
    rst $38                                       ; $7d14: $ff
    rst $38                                       ; $7d15: $ff
    rst $38                                       ; $7d16: $ff
    rst $38                                       ; $7d17: $ff
    rst $38                                       ; $7d18: $ff
    rst $38                                       ; $7d19: $ff
    rst $38                                       ; $7d1a: $ff
    rst $38                                       ; $7d1b: $ff
    rst $38                                       ; $7d1c: $ff
    rst $38                                       ; $7d1d: $ff
    rst $38                                       ; $7d1e: $ff
    rst $38                                       ; $7d1f: $ff
    rst $38                                       ; $7d20: $ff
    rst $38                                       ; $7d21: $ff
    rst $38                                       ; $7d22: $ff
    rst $38                                       ; $7d23: $ff
    rst $38                                       ; $7d24: $ff
    rst $38                                       ; $7d25: $ff
    rst $38                                       ; $7d26: $ff
    rst $38                                       ; $7d27: $ff
    rst $38                                       ; $7d28: $ff
    rst $38                                       ; $7d29: $ff
    rst $38                                       ; $7d2a: $ff
    rst $38                                       ; $7d2b: $ff
    rst $38                                       ; $7d2c: $ff
    rst $38                                       ; $7d2d: $ff
    rst $38                                       ; $7d2e: $ff
    rst $38                                       ; $7d2f: $ff
    rst $38                                       ; $7d30: $ff
    rst $38                                       ; $7d31: $ff
    rst $38                                       ; $7d32: $ff
    rst $38                                       ; $7d33: $ff
    rst $38                                       ; $7d34: $ff
    rst $38                                       ; $7d35: $ff
    rst $38                                       ; $7d36: $ff
    rst $38                                       ; $7d37: $ff
    rst $38                                       ; $7d38: $ff
    rst $38                                       ; $7d39: $ff
    rst $38                                       ; $7d3a: $ff
    rst $38                                       ; $7d3b: $ff
    rst $38                                       ; $7d3c: $ff
    rst $38                                       ; $7d3d: $ff
    rst $38                                       ; $7d3e: $ff
    rst $38                                       ; $7d3f: $ff
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    rst $38                                       ; $7d42: $ff
    rst $38                                       ; $7d43: $ff
    rst $38                                       ; $7d44: $ff
    rst $38                                       ; $7d45: $ff
    rst $38                                       ; $7d46: $ff
    rst $38                                       ; $7d47: $ff
    rst $38                                       ; $7d48: $ff
    rst $38                                       ; $7d49: $ff
    rst $38                                       ; $7d4a: $ff
    rst $38                                       ; $7d4b: $ff
    rst $38                                       ; $7d4c: $ff
    rst $38                                       ; $7d4d: $ff
    rst $38                                       ; $7d4e: $ff
    rst $38                                       ; $7d4f: $ff
    rst $38                                       ; $7d50: $ff
    rst $38                                       ; $7d51: $ff
    rst $38                                       ; $7d52: $ff
    rst $38                                       ; $7d53: $ff
    rst $38                                       ; $7d54: $ff
    rst $38                                       ; $7d55: $ff
    rst $38                                       ; $7d56: $ff
    rst $38                                       ; $7d57: $ff
    rst $38                                       ; $7d58: $ff
    rst $38                                       ; $7d59: $ff
    rst $38                                       ; $7d5a: $ff
    rst $38                                       ; $7d5b: $ff
    rst $38                                       ; $7d5c: $ff
    rst $38                                       ; $7d5d: $ff
    rst $38                                       ; $7d5e: $ff
    rst $38                                       ; $7d5f: $ff
    rst $38                                       ; $7d60: $ff
    rst $38                                       ; $7d61: $ff
    rst $38                                       ; $7d62: $ff
    rst $38                                       ; $7d63: $ff
    rst $38                                       ; $7d64: $ff
    rst $38                                       ; $7d65: $ff
    rst $38                                       ; $7d66: $ff
    rst $38                                       ; $7d67: $ff
    rst $38                                       ; $7d68: $ff
    rst $38                                       ; $7d69: $ff
    rst $38                                       ; $7d6a: $ff
    rst $38                                       ; $7d6b: $ff
    rst $38                                       ; $7d6c: $ff
    rst $38                                       ; $7d6d: $ff
    rst $38                                       ; $7d6e: $ff
    rst $38                                       ; $7d6f: $ff
    rst $38                                       ; $7d70: $ff
    rst $38                                       ; $7d71: $ff
    rst $38                                       ; $7d72: $ff
    rst $38                                       ; $7d73: $ff
    rst $38                                       ; $7d74: $ff
    rst $38                                       ; $7d75: $ff
    rst $38                                       ; $7d76: $ff
    rst $38                                       ; $7d77: $ff
    rst $38                                       ; $7d78: $ff
    rst $38                                       ; $7d79: $ff
    rst $38                                       ; $7d7a: $ff
    rst $38                                       ; $7d7b: $ff
    rst $38                                       ; $7d7c: $ff
    rst $38                                       ; $7d7d: $ff
    rst $38                                       ; $7d7e: $ff
    rst $38                                       ; $7d7f: $ff
    rst $38                                       ; $7d80: $ff
    rst $38                                       ; $7d81: $ff
    rst $38                                       ; $7d82: $ff
    rst $38                                       ; $7d83: $ff
    rst $38                                       ; $7d84: $ff
    rst $38                                       ; $7d85: $ff
    rst $38                                       ; $7d86: $ff
    rst $38                                       ; $7d87: $ff
    rst $38                                       ; $7d88: $ff
    rst $38                                       ; $7d89: $ff
    rst $38                                       ; $7d8a: $ff
    rst $38                                       ; $7d8b: $ff
    rst $38                                       ; $7d8c: $ff
    rst $38                                       ; $7d8d: $ff
    rst $38                                       ; $7d8e: $ff
    rst $38                                       ; $7d8f: $ff
    rst $38                                       ; $7d90: $ff
    rst $38                                       ; $7d91: $ff
    rst $38                                       ; $7d92: $ff
    rst $38                                       ; $7d93: $ff
    rst $38                                       ; $7d94: $ff
    rst $38                                       ; $7d95: $ff
    rst $38                                       ; $7d96: $ff
    rst $38                                       ; $7d97: $ff
    rst $38                                       ; $7d98: $ff
    rst $38                                       ; $7d99: $ff
    rst $38                                       ; $7d9a: $ff
    rst $38                                       ; $7d9b: $ff
    rst $38                                       ; $7d9c: $ff
    rst $38                                       ; $7d9d: $ff
    rst $38                                       ; $7d9e: $ff
    rst $38                                       ; $7d9f: $ff
    rst $38                                       ; $7da0: $ff
    rst $38                                       ; $7da1: $ff
    rst $38                                       ; $7da2: $ff
    rst $38                                       ; $7da3: $ff
    rst $38                                       ; $7da4: $ff
    rst $38                                       ; $7da5: $ff
    rst $38                                       ; $7da6: $ff
    rst $38                                       ; $7da7: $ff
    rst $38                                       ; $7da8: $ff
    rst $38                                       ; $7da9: $ff
    rst $38                                       ; $7daa: $ff
    rst $38                                       ; $7dab: $ff
    rst $38                                       ; $7dac: $ff
    rst $38                                       ; $7dad: $ff
    rst $38                                       ; $7dae: $ff
    rst $38                                       ; $7daf: $ff
    rst $38                                       ; $7db0: $ff
    rst $38                                       ; $7db1: $ff
    rst $38                                       ; $7db2: $ff
    rst $38                                       ; $7db3: $ff
    rst $38                                       ; $7db4: $ff
    rst $38                                       ; $7db5: $ff
    rst $38                                       ; $7db6: $ff
    rst $38                                       ; $7db7: $ff
    rst $38                                       ; $7db8: $ff
    rst $38                                       ; $7db9: $ff
    rst $38                                       ; $7dba: $ff
    rst $38                                       ; $7dbb: $ff
    rst $38                                       ; $7dbc: $ff
    rst $38                                       ; $7dbd: $ff
    rst $38                                       ; $7dbe: $ff
    rst $38                                       ; $7dbf: $ff
    rst $38                                       ; $7dc0: $ff
    rst $38                                       ; $7dc1: $ff
    rst $38                                       ; $7dc2: $ff
    rst $38                                       ; $7dc3: $ff
    rst $38                                       ; $7dc4: $ff
    rst $38                                       ; $7dc5: $ff
    rst $38                                       ; $7dc6: $ff
    rst $38                                       ; $7dc7: $ff
    rst $38                                       ; $7dc8: $ff
    rst $38                                       ; $7dc9: $ff
    rst $38                                       ; $7dca: $ff
    rst $38                                       ; $7dcb: $ff
    rst $38                                       ; $7dcc: $ff
    rst $38                                       ; $7dcd: $ff
    rst $38                                       ; $7dce: $ff
    rst $38                                       ; $7dcf: $ff
    rst $38                                       ; $7dd0: $ff
    rst $38                                       ; $7dd1: $ff
    rst $38                                       ; $7dd2: $ff
    rst $38                                       ; $7dd3: $ff
    rst $38                                       ; $7dd4: $ff
    rst $38                                       ; $7dd5: $ff
    rst $38                                       ; $7dd6: $ff
    rst $38                                       ; $7dd7: $ff
    rst $38                                       ; $7dd8: $ff
    rst $38                                       ; $7dd9: $ff
    rst $38                                       ; $7dda: $ff
    rst $38                                       ; $7ddb: $ff
    rst $38                                       ; $7ddc: $ff
    rst $38                                       ; $7ddd: $ff
    rst $38                                       ; $7dde: $ff
    rst $38                                       ; $7ddf: $ff
    rst $38                                       ; $7de0: $ff
    rst $38                                       ; $7de1: $ff
    rst $38                                       ; $7de2: $ff
    rst $38                                       ; $7de3: $ff
    rst $38                                       ; $7de4: $ff
    rst $38                                       ; $7de5: $ff
    rst $38                                       ; $7de6: $ff
    rst $38                                       ; $7de7: $ff
    rst $38                                       ; $7de8: $ff
    rst $38                                       ; $7de9: $ff
    rst $38                                       ; $7dea: $ff
    rst $38                                       ; $7deb: $ff
    rst $38                                       ; $7dec: $ff

Jump_05e_7ded:
    rst $38                                       ; $7ded: $ff
    rst $38                                       ; $7dee: $ff
    rst $38                                       ; $7def: $ff
    rst $38                                       ; $7df0: $ff
    rst $38                                       ; $7df1: $ff
    rst $38                                       ; $7df2: $ff
    rst $38                                       ; $7df3: $ff
    rst $38                                       ; $7df4: $ff
    rst $38                                       ; $7df5: $ff
    rst $38                                       ; $7df6: $ff
    rst $38                                       ; $7df7: $ff
    rst $38                                       ; $7df8: $ff
    rst $38                                       ; $7df9: $ff
    rst $38                                       ; $7dfa: $ff
    rst $38                                       ; $7dfb: $ff
    rst $38                                       ; $7dfc: $ff
    rst $38                                       ; $7dfd: $ff
    rst $38                                       ; $7dfe: $ff
    rst $38                                       ; $7dff: $ff
    rst $38                                       ; $7e00: $ff
    rst $38                                       ; $7e01: $ff
    rst $38                                       ; $7e02: $ff
    rst $38                                       ; $7e03: $ff
    rst $38                                       ; $7e04: $ff
    rst $38                                       ; $7e05: $ff
    rst $38                                       ; $7e06: $ff
    rst $38                                       ; $7e07: $ff
    rst $38                                       ; $7e08: $ff
    rst $38                                       ; $7e09: $ff
    rst $38                                       ; $7e0a: $ff
    rst $38                                       ; $7e0b: $ff
    rst $38                                       ; $7e0c: $ff
    rst $38                                       ; $7e0d: $ff
    rst $38                                       ; $7e0e: $ff
    rst $38                                       ; $7e0f: $ff
    rst $38                                       ; $7e10: $ff
    rst $38                                       ; $7e11: $ff
    rst $38                                       ; $7e12: $ff
    rst $38                                       ; $7e13: $ff
    rst $38                                       ; $7e14: $ff
    rst $38                                       ; $7e15: $ff
    rst $38                                       ; $7e16: $ff
    rst $38                                       ; $7e17: $ff
    rst $38                                       ; $7e18: $ff
    rst $38                                       ; $7e19: $ff
    rst $38                                       ; $7e1a: $ff
    rst $38                                       ; $7e1b: $ff
    rst $38                                       ; $7e1c: $ff
    rst $38                                       ; $7e1d: $ff
    rst $38                                       ; $7e1e: $ff
    rst $38                                       ; $7e1f: $ff
    rst $38                                       ; $7e20: $ff
    rst $38                                       ; $7e21: $ff
    rst $38                                       ; $7e22: $ff
    rst $38                                       ; $7e23: $ff
    rst $38                                       ; $7e24: $ff
    rst $38                                       ; $7e25: $ff
    rst $38                                       ; $7e26: $ff
    rst $38                                       ; $7e27: $ff
    rst $38                                       ; $7e28: $ff
    rst $38                                       ; $7e29: $ff
    rst $38                                       ; $7e2a: $ff
    rst $38                                       ; $7e2b: $ff
    rst $38                                       ; $7e2c: $ff
    rst $38                                       ; $7e2d: $ff
    rst $38                                       ; $7e2e: $ff
    rst $38                                       ; $7e2f: $ff
    rst $38                                       ; $7e30: $ff
    rst $38                                       ; $7e31: $ff
    rst $38                                       ; $7e32: $ff
    rst $38                                       ; $7e33: $ff
    rst $38                                       ; $7e34: $ff
    rst $38                                       ; $7e35: $ff
    rst $38                                       ; $7e36: $ff
    rst $38                                       ; $7e37: $ff
    rst $38                                       ; $7e38: $ff
    rst $38                                       ; $7e39: $ff
    rst $38                                       ; $7e3a: $ff
    rst $38                                       ; $7e3b: $ff
    rst $38                                       ; $7e3c: $ff
    rst $38                                       ; $7e3d: $ff
    rst $38                                       ; $7e3e: $ff
    rst $38                                       ; $7e3f: $ff
    rst $38                                       ; $7e40: $ff
    rst $38                                       ; $7e41: $ff
    rst $38                                       ; $7e42: $ff
    rst $38                                       ; $7e43: $ff
    rst $38                                       ; $7e44: $ff
    rst $38                                       ; $7e45: $ff
    rst $38                                       ; $7e46: $ff
    rst $38                                       ; $7e47: $ff
    rst $38                                       ; $7e48: $ff
    rst $38                                       ; $7e49: $ff
    rst $38                                       ; $7e4a: $ff
    rst $38                                       ; $7e4b: $ff
    rst $38                                       ; $7e4c: $ff
    rst $38                                       ; $7e4d: $ff
    rst $38                                       ; $7e4e: $ff
    rst $38                                       ; $7e4f: $ff
    rst $38                                       ; $7e50: $ff
    rst $38                                       ; $7e51: $ff
    rst $38                                       ; $7e52: $ff
    rst $38                                       ; $7e53: $ff
    rst $38                                       ; $7e54: $ff
    rst $38                                       ; $7e55: $ff
    rst $38                                       ; $7e56: $ff
    rst $38                                       ; $7e57: $ff
    rst $38                                       ; $7e58: $ff
    rst $38                                       ; $7e59: $ff
    rst $38                                       ; $7e5a: $ff
    rst $38                                       ; $7e5b: $ff
    rst $38                                       ; $7e5c: $ff
    rst $38                                       ; $7e5d: $ff
    rst $38                                       ; $7e5e: $ff
    rst $38                                       ; $7e5f: $ff
    rst $38                                       ; $7e60: $ff
    rst $38                                       ; $7e61: $ff
    rst $38                                       ; $7e62: $ff
    rst $38                                       ; $7e63: $ff
    rst $38                                       ; $7e64: $ff
    rst $38                                       ; $7e65: $ff
    rst $38                                       ; $7e66: $ff
    rst $38                                       ; $7e67: $ff
    rst $38                                       ; $7e68: $ff
    rst $38                                       ; $7e69: $ff
    rst $38                                       ; $7e6a: $ff
    rst $38                                       ; $7e6b: $ff
    rst $38                                       ; $7e6c: $ff
    rst $38                                       ; $7e6d: $ff
    rst $38                                       ; $7e6e: $ff
    rst $38                                       ; $7e6f: $ff
    rst $38                                       ; $7e70: $ff
    rst $38                                       ; $7e71: $ff
    rst $38                                       ; $7e72: $ff
    rst $38                                       ; $7e73: $ff
    rst $38                                       ; $7e74: $ff
    rst $38                                       ; $7e75: $ff
    rst $38                                       ; $7e76: $ff
    rst $38                                       ; $7e77: $ff
    rst $38                                       ; $7e78: $ff
    rst $38                                       ; $7e79: $ff
    rst $38                                       ; $7e7a: $ff
    rst $38                                       ; $7e7b: $ff
    rst $38                                       ; $7e7c: $ff
    rst $38                                       ; $7e7d: $ff
    rst $38                                       ; $7e7e: $ff
    rst $38                                       ; $7e7f: $ff
    rst $38                                       ; $7e80: $ff
    rst $38                                       ; $7e81: $ff
    rst $38                                       ; $7e82: $ff
    rst $38                                       ; $7e83: $ff
    rst $38                                       ; $7e84: $ff
    rst $38                                       ; $7e85: $ff
    rst $38                                       ; $7e86: $ff
    rst $38                                       ; $7e87: $ff
    rst $38                                       ; $7e88: $ff
    rst $38                                       ; $7e89: $ff
    rst $38                                       ; $7e8a: $ff
    rst $38                                       ; $7e8b: $ff
    rst $38                                       ; $7e8c: $ff
    rst $38                                       ; $7e8d: $ff
    rst $38                                       ; $7e8e: $ff
    rst $38                                       ; $7e8f: $ff
    rst $38                                       ; $7e90: $ff
    rst $38                                       ; $7e91: $ff
    rst $38                                       ; $7e92: $ff
    rst $38                                       ; $7e93: $ff
    rst $38                                       ; $7e94: $ff
    rst $38                                       ; $7e95: $ff
    rst $38                                       ; $7e96: $ff
    rst $38                                       ; $7e97: $ff
    rst $38                                       ; $7e98: $ff
    rst $38                                       ; $7e99: $ff
    rst $38                                       ; $7e9a: $ff
    rst $38                                       ; $7e9b: $ff
    rst $38                                       ; $7e9c: $ff
    rst $38                                       ; $7e9d: $ff
    rst $38                                       ; $7e9e: $ff
    rst $38                                       ; $7e9f: $ff
    rst $38                                       ; $7ea0: $ff
    rst $38                                       ; $7ea1: $ff
    rst $38                                       ; $7ea2: $ff
    rst $38                                       ; $7ea3: $ff
    rst $38                                       ; $7ea4: $ff
    rst $38                                       ; $7ea5: $ff
    rst $38                                       ; $7ea6: $ff
    rst $38                                       ; $7ea7: $ff
    rst $38                                       ; $7ea8: $ff
    rst $38                                       ; $7ea9: $ff
    rst $38                                       ; $7eaa: $ff
    rst $38                                       ; $7eab: $ff
    rst $38                                       ; $7eac: $ff
    rst $38                                       ; $7ead: $ff
    rst $38                                       ; $7eae: $ff
    rst $38                                       ; $7eaf: $ff
    rst $38                                       ; $7eb0: $ff
    rst $38                                       ; $7eb1: $ff
    rst $38                                       ; $7eb2: $ff
    rst $38                                       ; $7eb3: $ff
    rst $38                                       ; $7eb4: $ff
    rst $38                                       ; $7eb5: $ff
    rst $38                                       ; $7eb6: $ff
    rst $38                                       ; $7eb7: $ff
    rst $38                                       ; $7eb8: $ff
    rst $38                                       ; $7eb9: $ff
    rst $38                                       ; $7eba: $ff
    rst $38                                       ; $7ebb: $ff
    rst $38                                       ; $7ebc: $ff
    rst $38                                       ; $7ebd: $ff
    rst $38                                       ; $7ebe: $ff
    rst $38                                       ; $7ebf: $ff
    rst $38                                       ; $7ec0: $ff
    rst $38                                       ; $7ec1: $ff
    rst $38                                       ; $7ec2: $ff
    rst $38                                       ; $7ec3: $ff
    rst $38                                       ; $7ec4: $ff
    rst $38                                       ; $7ec5: $ff
    rst $38                                       ; $7ec6: $ff
    rst $38                                       ; $7ec7: $ff
    rst $38                                       ; $7ec8: $ff
    rst $38                                       ; $7ec9: $ff
    rst $38                                       ; $7eca: $ff
    rst $38                                       ; $7ecb: $ff
    rst $38                                       ; $7ecc: $ff
    rst $38                                       ; $7ecd: $ff
    rst $38                                       ; $7ece: $ff
    rst $38                                       ; $7ecf: $ff
    rst $38                                       ; $7ed0: $ff
    rst $38                                       ; $7ed1: $ff
    rst $38                                       ; $7ed2: $ff
    rst $38                                       ; $7ed3: $ff
    rst $38                                       ; $7ed4: $ff
    rst $38                                       ; $7ed5: $ff
    rst $38                                       ; $7ed6: $ff
    rst $38                                       ; $7ed7: $ff
    rst $38                                       ; $7ed8: $ff
    rst $38                                       ; $7ed9: $ff
    rst $38                                       ; $7eda: $ff
    rst $38                                       ; $7edb: $ff
    rst $38                                       ; $7edc: $ff
    rst $38                                       ; $7edd: $ff
    rst $38                                       ; $7ede: $ff
    rst $38                                       ; $7edf: $ff
    rst $38                                       ; $7ee0: $ff
    rst $38                                       ; $7ee1: $ff
    rst $38                                       ; $7ee2: $ff
    rst $38                                       ; $7ee3: $ff
    rst $38                                       ; $7ee4: $ff
    rst $38                                       ; $7ee5: $ff
    rst $38                                       ; $7ee6: $ff
    rst $38                                       ; $7ee7: $ff
    rst $38                                       ; $7ee8: $ff
    rst $38                                       ; $7ee9: $ff
    rst $38                                       ; $7eea: $ff
    rst $38                                       ; $7eeb: $ff
    rst $38                                       ; $7eec: $ff
    rst $38                                       ; $7eed: $ff
    rst $38                                       ; $7eee: $ff
    rst $38                                       ; $7eef: $ff
    rst $38                                       ; $7ef0: $ff
    rst $38                                       ; $7ef1: $ff
    rst $38                                       ; $7ef2: $ff
    rst $38                                       ; $7ef3: $ff
    rst $38                                       ; $7ef4: $ff
    rst $38                                       ; $7ef5: $ff
    rst $38                                       ; $7ef6: $ff
    rst $38                                       ; $7ef7: $ff
    rst $38                                       ; $7ef8: $ff
    rst $38                                       ; $7ef9: $ff
    rst $38                                       ; $7efa: $ff
    rst $38                                       ; $7efb: $ff
    rst $38                                       ; $7efc: $ff
    rst $38                                       ; $7efd: $ff
    rst $38                                       ; $7efe: $ff
    rst $38                                       ; $7eff: $ff
    rst $38                                       ; $7f00: $ff
    rst $38                                       ; $7f01: $ff
    rst $38                                       ; $7f02: $ff
    rst $38                                       ; $7f03: $ff
    rst $38                                       ; $7f04: $ff
    rst $38                                       ; $7f05: $ff
    rst $38                                       ; $7f06: $ff
    rst $38                                       ; $7f07: $ff
    rst $38                                       ; $7f08: $ff
    rst $38                                       ; $7f09: $ff
    rst $38                                       ; $7f0a: $ff
    rst $38                                       ; $7f0b: $ff
    rst $38                                       ; $7f0c: $ff
    rst $38                                       ; $7f0d: $ff
    rst $38                                       ; $7f0e: $ff
    rst $38                                       ; $7f0f: $ff
    rst $38                                       ; $7f10: $ff
    rst $38                                       ; $7f11: $ff
    rst $38                                       ; $7f12: $ff
    rst $38                                       ; $7f13: $ff
    rst $38                                       ; $7f14: $ff
    rst $38                                       ; $7f15: $ff
    rst $38                                       ; $7f16: $ff
    rst $38                                       ; $7f17: $ff
    rst $38                                       ; $7f18: $ff
    rst $38                                       ; $7f19: $ff
    rst $38                                       ; $7f1a: $ff
    rst $38                                       ; $7f1b: $ff
    rst $38                                       ; $7f1c: $ff
    rst $38                                       ; $7f1d: $ff
    rst $38                                       ; $7f1e: $ff
    rst $38                                       ; $7f1f: $ff
    rst $38                                       ; $7f20: $ff
    rst $38                                       ; $7f21: $ff
    rst $38                                       ; $7f22: $ff
    rst $38                                       ; $7f23: $ff
    rst $38                                       ; $7f24: $ff
    rst $38                                       ; $7f25: $ff
    rst $38                                       ; $7f26: $ff
    rst $38                                       ; $7f27: $ff
    rst $38                                       ; $7f28: $ff
    rst $38                                       ; $7f29: $ff
    rst $38                                       ; $7f2a: $ff
    rst $38                                       ; $7f2b: $ff
    rst $38                                       ; $7f2c: $ff
    rst $38                                       ; $7f2d: $ff
    rst $38                                       ; $7f2e: $ff
    rst $38                                       ; $7f2f: $ff
    rst $38                                       ; $7f30: $ff
    rst $38                                       ; $7f31: $ff
    rst $38                                       ; $7f32: $ff
    rst $38                                       ; $7f33: $ff
    rst $38                                       ; $7f34: $ff
    rst $38                                       ; $7f35: $ff
    rst $38                                       ; $7f36: $ff
    rst $38                                       ; $7f37: $ff
    rst $38                                       ; $7f38: $ff
    rst $38                                       ; $7f39: $ff
    rst $38                                       ; $7f3a: $ff
    rst $38                                       ; $7f3b: $ff
    rst $38                                       ; $7f3c: $ff
    rst $38                                       ; $7f3d: $ff
    rst $38                                       ; $7f3e: $ff
    rst $38                                       ; $7f3f: $ff
    rst $38                                       ; $7f40: $ff
    rst $38                                       ; $7f41: $ff
    rst $38                                       ; $7f42: $ff
    rst $38                                       ; $7f43: $ff
    rst $38                                       ; $7f44: $ff
    rst $38                                       ; $7f45: $ff
    rst $38                                       ; $7f46: $ff
    rst $38                                       ; $7f47: $ff
    rst $38                                       ; $7f48: $ff
    rst $38                                       ; $7f49: $ff
    rst $38                                       ; $7f4a: $ff
    rst $38                                       ; $7f4b: $ff
    rst $38                                       ; $7f4c: $ff
    rst $38                                       ; $7f4d: $ff
    rst $38                                       ; $7f4e: $ff
    rst $38                                       ; $7f4f: $ff
    rst $38                                       ; $7f50: $ff
    rst $38                                       ; $7f51: $ff
    rst $38                                       ; $7f52: $ff
    rst $38                                       ; $7f53: $ff
    rst $38                                       ; $7f54: $ff
    rst $38                                       ; $7f55: $ff
    rst $38                                       ; $7f56: $ff
    rst $38                                       ; $7f57: $ff
    rst $38                                       ; $7f58: $ff
    rst $38                                       ; $7f59: $ff
    rst $38                                       ; $7f5a: $ff
    rst $38                                       ; $7f5b: $ff
    rst $38                                       ; $7f5c: $ff
    rst $38                                       ; $7f5d: $ff
    rst $38                                       ; $7f5e: $ff
    rst $38                                       ; $7f5f: $ff
    rst $38                                       ; $7f60: $ff
    rst $38                                       ; $7f61: $ff
    rst $38                                       ; $7f62: $ff
    rst $38                                       ; $7f63: $ff
    rst $38                                       ; $7f64: $ff
    rst $38                                       ; $7f65: $ff
    rst $38                                       ; $7f66: $ff
    rst $38                                       ; $7f67: $ff
    rst $38                                       ; $7f68: $ff
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

Jump_05e_7f78:
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

Call_05e_7fee:
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
