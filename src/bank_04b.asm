; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $04b", ROMX[$4000], BANK[$4b]

    ld c, e                                       ; $4000: $4b
    dec de                                        ; $4001: $1b
    adc h                                         ; $4002: $8c
    or a                                          ; $4003: $b7
    call $5ce8                                    ; $4004: $cd $e8 $5c
    nop                                           ; $4007: $00
    ld c, d                                       ; $4008: $4a
    ld [hl], e                                    ; $4009: $73
    sub b                                         ; $400a: $90
    rst $20                                       ; $400b: $e7
    cp e                                          ; $400c: $bb
    rst $28                                       ; $400d: $ef
    ld hl, sp-$50                                 ; $400e: $f8 $b0
    add sp, -$19                                  ; $4010: $e8 $e7
    or c                                          ; $4012: $b1
    di                                            ; $4013: $f3
    db $dd                                        ; $4014: $dd
    add hl, de                                    ; $4015: $19
    sbc e                                         ; $4016: $9b
    and l                                         ; $4017: $a5
    dec a                                         ; $4018: $3d
    ld l, l                                       ; $4019: $6d
    ld a, [de]                                    ; $401a: $1a
    ld e, $9a                                     ; $401b: $1e $9a
    sbc d                                         ; $401d: $9a
    ld e, e                                       ; $401e: $5b
    ld d, d                                       ; $401f: $52
    ld a, [$8c17]                                 ; $4020: $fa $17 $8c
    ld sp, $4df0                                  ; $4023: $31 $f0 $4d
    or l                                          ; $4026: $b5
    ld [hl], $07                                  ; $4027: $36 $07
    ld a, l                                       ; $4029: $7d
    ld c, $ba                                     ; $402a: $0e $ba
    ld l, d                                       ; $402c: $6a
    ld l, c                                       ; $402d: $69
    ld b, [hl]                                    ; $402e: $46
    di                                            ; $402f: $f3
    db $dd                                        ; $4030: $dd
    ret                                           ; $4031: $c9


    adc h                                         ; $4032: $8c
    jp nz, $dfa2                                  ; $4033: $c2 $a2 $df

    cp c                                          ; $4036: $b9
    nop                                           ; $4037: $00
    inc [hl]                                      ; $4038: $34
    db $e3                                        ; $4039: $e3
    inc bc                                        ; $403a: $03
    dec de                                        ; $403b: $1b
    adc h                                         ; $403c: $8c
    xor e                                         ; $403d: $ab
    ld d, h                                       ; $403e: $54
    rst $20                                       ; $403f: $e7
    ld e, h                                       ; $4040: $5c
    dec l                                         ; $4041: $2d
    sbc l                                         ; $4042: $9d
    db $f4                                        ; $4043: $f4
    ld [$e6ba], sp                                ; $4044: $08 $ba $e6
    inc d                                         ; $4047: $14
    inc a                                         ; $4048: $3c
    inc h                                         ; $4049: $24
    inc c                                         ; $404a: $0c
    call c, Call_04b_5cd2                         ; $404b: $dc $d2 $5c
    res 6, l                                      ; $404e: $cb $b5
    add hl, sp                                    ; $4050: $39
    ld b, b                                       ; $4051: $40
    rst $38                                       ; $4052: $ff
    di                                            ; $4053: $f3
    call z, Call_04b_4d92                         ; $4054: $cc $92 $4d
    ld c, a                                       ; $4057: $4f
    ld hl, sp-$6b                                 ; $4058: $f8 $95
    call $9d8b                                    ; $405a: $cd $8b $9d
    call z, $a7e8                                 ; $405d: $cc $e8 $a7
    cpl                                           ; $4060: $2f
    db $ed                                        ; $4061: $ed
    or [hl]                                       ; $4062: $b6
    xor e                                         ; $4063: $ab
    ld d, h                                       ; $4064: $54
    rst $20                                       ; $4065: $e7
    ld e, h                                       ; $4066: $5c
    xor l                                         ; $4067: $ad
    and $b1                                       ; $4068: $e6 $b1
    ld a, e                                       ; $406a: $7b
    add hl, de                                    ; $406b: $19
    jp nc, Jump_04b_6e65                          ; $406c: $d2 $65 $6e

    sbc $16                                       ; $406f: $de $16
    rra                                           ; $4071: $1f
    dec de                                        ; $4072: $1b
    adc h                                         ; $4073: $8c
    scf                                           ; $4074: $37
    sub c                                         ; $4075: $91
    ld e, l                                       ; $4076: $5d
    ld c, h                                       ; $4077: $4c
    ld e, a                                       ; $4078: $5f
    sbc d                                         ; $4079: $9a
    ld l, e                                       ; $407a: $6b
    add hl, sp                                    ; $407b: $39
    rst $18                                       ; $407c: $df
    cp l                                          ; $407d: $bd
    ld e, b                                       ; $407e: $58
    push bc                                       ; $407f: $c5
    jp nz, $e28f                                  ; $4080: $c2 $8f $e2

    inc bc                                        ; $4083: $03
    dec de                                        ; $4084: $1b
    adc h                                         ; $4085: $8c
    and a                                         ; $4086: $a7
    ld c, d                                       ; $4087: $4a
    cp a                                          ; $4088: $bf
    sub c                                         ; $4089: $91
    ld d, a                                       ; $408a: $57
    call c, Call_04b_77f1                         ; $408b: $dc $f1 $77
    sbc e                                         ; $408e: $9b
    ld h, [hl]                                    ; $408f: $66
    inc [hl]                                      ; $4090: $34
    db $d3                                        ; $4091: $d3
    cp d                                          ; $4092: $ba
    inc [hl]                                      ; $4093: $34
    add $c0                                       ; $4094: $c6 $c0
    scf                                           ; $4096: $37
    db $e3                                        ; $4097: $e3
    cp l                                          ; $4098: $bd
    add b                                         ; $4099: $80
    ld a, [hl]                                    ; $409a: $7e
    xor [hl]                                      ; $409b: $ae
    push hl                                       ; $409c: $e5
    ld a, h                                       ; $409d: $7c
    rla                                           ; $409e: $17
    ld a, [hl]                                    ; $409f: $7e
    ld d, c                                       ; $40a0: $51
    ld hl, sp+$1d                                 ; $40a1: $f8 $1d
    adc a                                         ; $40a3: $8f
    add hl, bc                                    ; $40a4: $09
    and $5a                                       ; $40a5: $e6 $5a
    xor $f9                                       ; $40a7: $ee $f9
    sbc a                                         ; $40a9: $9f
    sbc b                                         ; $40aa: $98
    ld h, b                                       ; $40ab: $60
    ld c, a                                       ; $40ac: $4f
    ld [de], a                                    ; $40ad: $12
    add a                                         ; $40ae: $87
    ld c, $c5                                     ; $40af: $0e $c5
    rlca                                          ; $40b1: $07
    dec de                                        ; $40b2: $1b
    adc h                                         ; $40b3: $8c
    set 7, a                                      ; $40b4: $cb $ff
    ld b, l                                       ; $40b6: $45
    ld a, [hl]                                    ; $40b7: $7e
    xor [hl]                                      ; $40b8: $ae
    push hl                                       ; $40b9: $e5
    ld a, h                                       ; $40ba: $7c
    rst $30                                       ; $40bb: $f7
    add $77                                       ; $40bc: $c6 $77
    sbc e                                         ; $40be: $9b
    ld h, [hl]                                    ; $40bf: $66
    and h                                         ; $40c0: $a4
    ret z                                         ; $40c1: $c8

    call z, $ec5f                                 ; $40c2: $cc $5f $ec
    sbc $87                                       ; $40c5: $de $87
    xor $bd                                       ; $40c7: $ee $bd
    ld l, a                                       ; $40c9: $6f
    ld [hl], a                                    ; $40ca: $77
    db $ed                                        ; $40cb: $ed
    sbc $87                                       ; $40cc: $de $87
    ld e, $79                                     ; $40ce: $1e $79
    jr c, jr_04b_4110                             ; $40d0: $38 $3e

    nop                                           ; $40d2: $00
    dec de                                        ; $40d3: $1b
    adc h                                         ; $40d4: $8c
    ld d, a                                       ; $40d5: $57
    ld a, $e4                                     ; $40d6: $3e $e4
    ld l, b                                       ; $40d8: $68
    ld b, e                                       ; $40d9: $43
    ld [$c45e], a                                 ; $40da: $ea $5e $c4
    ld b, h                                       ; $40dd: $44
    push bc                                       ; $40de: $c5
    and l                                         ; $40df: $a5
    cp c                                          ; $40e0: $b9
    sub [hl]                                      ; $40e1: $96
    ld a, e                                       ; $40e2: $7b
    db $e3                                        ; $40e3: $e3
    cp e                                          ; $40e4: $bb
    dec h                                         ; $40e5: $25
    jp hl                                         ; $40e6: $e9


    and h                                         ; $40e7: $a4
    ld [c], a                                     ; $40e8: $e2
    adc e                                         ; $40e9: $8b
    add hl, bc                                    ; $40ea: $09
    call $c8df                                    ; $40eb: $cd $df $c8
    rrca                                          ; $40ee: $0f
    ld [hl], e                                    ; $40ef: $73
    rst $30                                       ; $40f0: $f7
    ld a, $72                                     ; $40f1: $3e $72
    rst $28                                       ; $40f3: $ef
    cp l                                          ; $40f4: $bd
    pop af                                        ; $40f5: $f1
    ld bc, $8c1b                                  ; $40f6: $01 $1b $8c
    or a                                          ; $40f9: $b7
    cp $a7                                        ; $40fa: $fe $a7
    inc sp                                        ; $40fc: $33
    ld [hl-], a                                   ; $40fd: $32
    sub a                                         ; $40fe: $97
    and $5a                                       ; $40ff: $e6 $5a
    adc $77                                       ; $4101: $ce $77
    ld l, a                                       ; $4103: $6f
    ld a, h                                       ; $4104: $7c
    or a                                          ; $4105: $b7
    ld l, c                                       ; $4106: $69
    ld b, [hl]                                    ; $4107: $46
    adc d                                         ; $4108: $8a
    call z, $c5fc                                 ; $4109: $cc $fc $c5
    xor $7d                                       ; $410c: $ee $7d
    ldh [$81], a                                  ; $410e: $e0 $81

jr_04b_4110:
    ld b, a                                       ; $4110: $47
    halt                                          ; $4111: $76
    rst $10                                       ; $4112: $d7
    xor $7d                                       ; $4113: $ee $7d
    ldh [$c1], a                                  ; $4115: $e0 $c1
    ld a, e                                       ; $4117: $7b
    ld [c], a                                     ; $4118: $e2
    inc bc                                        ; $4119: $03
    dec de                                        ; $411a: $1b
    adc h                                         ; $411b: $8c
    and a                                         ; $411c: $a7
    ld c, d                                       ; $411d: $4a
    cp a                                          ; $411e: $bf
    sub c                                         ; $411f: $91
    rst $18                                       ; $4120: $df
    xor c                                         ; $4121: $a9
    and b                                         ; $4122: $a0
    xor c                                         ; $4123: $a9
    ld d, $96                                     ; $4124: $16 $96
    rst $20                                       ; $4126: $e7
    sub [hl]                                      ; $4127: $96
    sub h                                         ; $4128: $94
    ld [hl], $cb                                  ; $4129: $36 $cb
    cp c                                          ; $412b: $b9
    sub [hl]                                      ; $412c: $96
    ld l, e                                       ; $412d: $6b
    ld [hl], e                                    ; $412e: $73
    ld c, h                                       ; $412f: $4c
    ld e, a                                       ; $4130: $5f
    rst $08                                       ; $4131: $cf
    ld h, e                                       ; $4132: $63
    rst $20                                       ; $4133: $e7
    dec sp                                        ; $4134: $3b
    add c                                         ; $4135: $81
    inc e                                         ; $4136: $1c
    or b                                          ; $4137: $b0
    rst $28                                       ; $4138: $ef
    sub [hl]                                      ; $4139: $96
    and $3b                                       ; $413a: $e6 $3b
    ld b, d                                       ; $413c: $42
    rla                                           ; $413d: $17
    ld c, e                                       ; $413e: $4b
    di                                            ; $413f: $f3
    db $dd                                        ; $4140: $dd
    db $db                                        ; $4141: $db
    ld h, d                                       ; $4142: $62
    cp d                                          ; $4143: $ba
    ret nc                                        ; $4144: $d0

    db $fc                                        ; $4145: $fc
    ld b, b                                       ; $4146: $40
    dec b                                         ; $4147: $05
    inc hl                                        ; $4148: $23
    ld b, d                                       ; $4149: $42
    cp b                                          ; $414a: $b8
    ld sp, hl                                     ; $414b: $f9
    sub [hl]                                      ; $414c: $96
    ld a, h                                       ; $414d: $7c
    ld a, h                                       ; $414e: $7c
    nop                                           ; $414f: $00
    dec de                                        ; $4150: $1b
    adc h                                         ; $4151: $8c
    ld h, a                                       ; $4152: $67
    ld c, d                                       ; $4153: $4a
    adc d                                         ; $4154: $8a
    cp e                                          ; $4155: $bb
    or b                                          ; $4156: $b0
    ld d, d                                       ; $4157: $52
    call $f763                                    ; $4158: $cd $63 $f7
    ld [hl+], a                                   ; $415b: $22

Jump_04b_415c:
    ld h, $2a                                     ; $415c: $26 $2a
    ld l, $cd                                     ; $415e: $2e $cd
    or l                                          ; $4160: $b5
    call c, $df1b                                 ; $4161: $dc $1b $df
    dec l                                         ; $4164: $2d
    ld c, c                                       ; $4165: $49
    daa                                           ; $4166: $27
    dec d                                         ; $4167: $15
    rst $28                                       ; $4168: $ef
    ld d, h                                       ; $4169: $54
    ld a, [c]                                     ; $416a: $f2
    pop af                                        ; $416b: $f1
    ld bc, $8c1b                                  ; $416c: $01 $1b $8c
    and a                                         ; $416f: $a7
    ld a, [hl+]                                   ; $4170: $2a
    sbc e                                         ; $4171: $9b
    ld a, [hl]                                    ; $4172: $7e
    ccf                                           ; $4173: $3f
    ld e, d                                       ; $4174: $5a
    ld l, b                                       ; $4175: $68
    ld b, [hl]                                    ; $4176: $46
    ei                                            ; $4177: $fb
    jp hl                                         ; $4178: $e9


    ld c, e                                       ; $4179: $4b
    rst $20                                       ; $417a: $e7
    ld e, a                                       ; $417b: $5f
    cp c                                          ; $417c: $b9
    inc [hl]                                      ; $417d: $34
    and e                                         ; $417e: $a3
    ld sp, $ad7d                                  ; $417f: $31 $7d $ad
    sbc e                                         ; $4182: $9b
    pop af                                        ; $4183: $f1
    xor [hl]                                      ; $4184: $ae
    cp $ef                                        ; $4185: $fe $ef
    ld b, c                                       ; $4187: $41
    ld h, l                                       ; $4188: $65
    ld a, [hl-]                                   ; $4189: $3a
    db $10                                        ; $418a: $10
    ld d, h                                       ; $418b: $54
    db $ed                                        ; $418c: $ed
    rst $00                                       ; $418d: $c7
    and l                                         ; $418e: $a5
    inc de                                        ; $418f: $13
    ld b, $7a                                     ; $4190: $06 $7a
    rst $20                                       ; $4192: $e7
    xor [hl]                                      ; $4193: $ae
    or h                                          ; $4194: $b4
    ld [hl], $07                                  ; $4195: $36 $07
    ld a, l                                       ; $4197: $7d
    ld h, d                                       ; $4198: $62
    ld a, [hl+]                                   ; $4199: $2a
    ld [hl], e                                    ; $419a: $73
    ld c, e                                       ; $419b: $4b
    cp [hl]                                       ; $419c: $be
    pop af                                        ; $419d: $f1
    ld bc, $8c1b                                  ; $419e: $01 $1b $8c
    rst $20                                       ; $41a1: $e7
    dec l                                         ; $41a2: $2d
    add d                                         ; $41a3: $82
    ldh a, [$37]                                  ; $41a4: $f0 $37
    rst $30                                       ; $41a6: $f7
    add $77                                       ; $41a7: $c6 $77
    ld c, e                                       ; $41a9: $4b
    ld a, [bc]                                    ; $41aa: $0a
    ld e, $9a                                     ; $41ab: $1e $9a
    ld l, h                                       ; $41ad: $6c
    ld e, [hl]                                    ; $41ae: $5e
    db $ec                                        ; $41af: $ec
    sbc $07                                       ; $41b0: $de $07
    rst $28                                       ; $41b2: $ef
    ld a, c                                       ; $41b3: $79
    ld l, b                                       ; $41b4: $68
    ld [hl], a                                    ; $41b5: $77
    db $ed                                        ; $41b6: $ed
    sbc $07                                       ; $41b7: $de $07
    rra                                           ; $41b9: $1f
    ld a, c                                       ; $41ba: $79
    inc h                                         ; $41bb: $24
    ld a, $00                                     ; $41bc: $3e $00
    dec de                                        ; $41be: $1b
    adc h                                         ; $41bf: $8c
    xor e                                         ; $41c0: $ab
    ld e, l                                       ; $41c1: $5d
    ldh a, [rNR13]                                ; $41c2: $f0 $13
    inc [hl]                                      ; $41c4: $34
    rst $20                                       ; $41c5: $e7
    or c                                          ; $41c6: $b1
    inc de                                        ; $41c7: $13
    ld [hl], h                                    ; $41c8: $74
    dec hl                                        ; $41c9: $2b
    sbc d                                         ; $41ca: $9a
    xor [hl]                                      ; $41cb: $ae
    db $db                                        ; $41cc: $db
    adc h                                         ; $41cd: $8c
    rrca                                          ; $41ce: $0f
    dec de                                        ; $41cf: $1b
    adc h                                         ; $41d0: $8c
    daa                                           ; $41d1: $27
    ld a, c                                       ; $41d2: $79
    ld l, l                                       ; $41d3: $6d
    adc $fd                                       ; $41d4: $ce $fd
    ld e, d                                       ; $41d6: $5a
    rst $10                                       ; $41d7: $d7
    inc hl                                        ; $41d8: $23
    ret c                                         ; $41d9: $d8

    dec bc                                        ; $41da: $0b
    sub [hl]                                      ; $41db: $96
    ret nz                                        ; $41dc: $c0

    sub e                                         ; $41dd: $93
    ld a, c                                       ; $41de: $79
    inc b                                         ; $41df: $04
    ld a, e                                       ; $41e0: $7b
    cp e                                          ; $41e1: $bb

jr_04b_41e2:
    sub l                                         ; $41e2: $95
    add d                                         ; $41e3: $82
    ld [hl], $bf                                  ; $41e4: $36 $bf
    and $be                                       ; $41e6: $e6 $be
    ld e, e                                       ; $41e8: $5b
    jp nc, $c8ad                                  ; $41e9: $d2 $ad $c8

    ld [hl], a                                    ; $41ec: $77
    ld h, c                                       ; $41ed: $61

jr_04b_41ee:
    ld sp, hl                                     ; $41ee: $f9
    ld h, d                                       ; $41ef: $62
    sub c                                         ; $41f0: $91
    add hl, de                                    ; $41f1: $19
    dec c                                         ; $41f2: $0d
    push de                                       ; $41f3: $d5
    ld a, [c]                                     ; $41f4: $f2
    add e                                         ; $41f5: $83
    add hl, hl                                    ; $41f6: $29
    ld l, [hl]                                    ; $41f7: $6e
    cp l                                          ; $41f8: $bd
    ld a, [de]                                    ; $41f9: $1a
    ld h, h                                       ; $41fa: $64
    ld b, [hl]                                    ; $41fb: $46
    ld a, [hl+]                                   ; $41fc: $2a
    ld a, $00                                     ; $41fd: $3e $00
    dec de                                        ; $41ff: $1b
    adc h                                         ; $4200: $8c
    ld h, a                                       ; $4201: $67
    sbc d                                         ; $4202: $9a
    rra                                           ; $4203: $1f
    jr nz, jr_04b_41ee                            ; $4204: $20 $e8

    jp nz, $b54a                                  ; $4206: $c2 $4a $b5

    xor b                                         ; $4209: $a8

Jump_04b_420a:
    inc a                                         ; $420a: $3c
    pop hl                                        ; $420b: $e1
    jp $eac3                                      ; $420c: $c3 $c3 $ea


    ld a, c                                       ; $420f: $79
    db $ec                                        ; $4210: $ec
    jp c, $845c                                   ; $4211: $da $5c $84

    sbc $57                                       ; $4214: $de $57
    adc a                                         ; $4216: $8f
    dec bc                                        ; $4217: $0b
    sbc d                                         ; $4218: $9a
    di                                            ; $4219: $f3
    ld h, h                                       ; $421a: $64
    or d                                          ; $421b: $b2
    add hl, bc                                    ; $421c: $09
    ld a, l                                       ; $421d: $7d
    add hl, hl                                    ; $421e: $29
    sbc e                                         ; $421f: $9b
    ei                                            ; $4220: $fb
    ret                                           ; $4221: $c9


    cp [hl]                                       ; $4222: $be
    sub d                                         ; $4223: $92
    dec de                                        ; $4224: $1b
    rra                                           ; $4225: $1f
    dec de                                        ; $4226: $1b
    adc h                                         ; $4227: $8c
    ld l, e                                       ; $4228: $6b
    dec h                                         ; $4229: $25
    push de                                       ; $422a: $d5
    ld a, c                                       ; $422b: $79
    ld [hl], d                                    ; $422c: $72
    ld l, [hl]                                    ; $422d: $6e
    or $9d                                        ; $422e: $f6 $9d
    rst $00                                       ; $4230: $c7
    adc $77                                       ; $4231: $ce $77
    ld b, l                                       ; $4233: $45
    ret nc                                        ; $4234: $d0

    ld d, h                                       ; $4235: $54
    ldh a, [$d0]                                  ; $4236: $f0 $d0
    jr nz, jr_04b_41e2                            ; $4238: $20 $a8

    add hl, sp                                    ; $423a: $39
    rst $10                                       ; $423b: $d7
    ld [hl], d                                    ; $423c: $72
    cpl                                           ; $423d: $2f
    sbc d                                         ; $423e: $9a
    and l                                         ; $423f: $a5
    scf                                           ; $4240: $37
    rst $20                                       ; $4241: $e7
    or h                                          ; $4242: $b4
    sbc a                                         ; $4243: $9f
    db $ec                                        ; $4244: $ec
    dec hl                                        ; $4245: $2b
    cp c                                          ; $4246: $b9
    pop af                                        ; $4247: $f1
    ld bc, $8c1b                                  ; $4248: $01 $1b $8c
    ld d, a                                       ; $424b: $57
    ldh a, [$27]                                  ; $424c: $f0 $27
    sub [hl]                                      ; $424e: $96
    or $a1                                        ; $424f: $f6 $a1
    add l                                         ; $4251: $85
    push hl                                       ; $4252: $e5
    add c                                         ; $4253: $81
    ld a, [bc]                                    ; $4254: $0a
    ld e, b                                       ; $4255: $58
    ccf                                           ; $4256: $3f
    rst $10                                       ; $4257: $d7
    ld [hl], d                                    ; $4258: $72
    rst $08                                       ; $4259: $cf
    sub e                                         ; $425a: $93
    add e                                         ; $425b: $83
    cp [hl]                                       ; $425c: $be
    add hl, hl                                    ; $425d: $29
    sbc l                                         ; $425e: $9d
    db $f4                                        ; $425f: $f4
    ld e, l                                       ; $4260: $5d
    ld [hl], e                                    ; $4261: $73
    ld l, [hl]                                    ; $4262: $6e
    jp hl                                         ; $4263: $e9


    ld l, h                                       ; $4264: $6c
    ld d, c                                       ; $4265: $51
    or l                                          ; $4266: $b5
    add hl, de                                    ; $4267: $19
    call Call_04b_5cb5                            ; $4268: $cd $b5 $5c
    ld h, h                                       ; $426b: $64
    nop                                           ; $426c: $00
    dec d                                         ; $426d: $15
    inc a                                         ; $426e: $3c
    db $ec                                        ; $426f: $ec
    inc b                                         ; $4270: $04
    db $fd                                        ; $4271: $fd
    dec de                                        ; $4272: $1b
    dec [hl]                                      ; $4273: $35
    db $e3                                        ; $4274: $e3
    inc bc                                        ; $4275: $03
    dec de                                        ; $4276: $1b

Call_04b_4277:
    adc h                                         ; $4277: $8c
    ld h, a                                       ; $4278: $67
    ld c, d                                       ; $4279: $4a
    adc d                                         ; $427a: $8a
    dec sp                                        ; $427b: $3b
    and c                                         ; $427c: $a1
    or d                                          ; $427d: $b2
    jp hl                                         ; $427e: $e9


    dec sp                                        ; $427f: $3b
    and l                                         ; $4280: $a5
    dec c                                         ; $4281: $0d
    ld e, $f2                                     ; $4282: $1e $f2
    rla                                           ; $4284: $17
    adc c                                         ; $4285: $89
    ld c, d                                       ; $4286: $4a
    ld [hl], e                                    ; $4287: $73
    dec l                                         ; $4288: $2d
    rst $20                                       ; $4289: $e7
    ret                                           ; $428a: $c9


    ld h, h                                       ; $428b: $64
    inc de                                        ; $428c: $13
    ld a, [$3652]                                 ; $428d: $fa $52 $36
    db $e3                                        ; $4290: $e3
    inc bc                                        ; $4291: $03
    dec de                                        ; $4292: $1b
    adc h                                         ; $4293: $8c
    sub a                                         ; $4294: $97
    ld hl, $7842                                  ; $4295: $21 $42 $78
    ret z                                         ; $4298: $c8

    and l                                         ; $4299: $a5
    cp c                                          ; $429a: $b9
    sub [hl]                                      ; $429b: $96
    dec bc                                        ; $429c: $0b
    bit 7, e                                      ; $429d: $cb $7b
    sbc l                                         ; $429f: $9d
    db $e3                                        ; $42a0: $e3
    ld e, l                                       ; $42a1: $5d
    ld a, [hl]                                    ; $42a2: $7e
    adc l                                         ; $42a3: $8d
    adc d                                         ; $42a4: $8a
    rst $38                                       ; $42a5: $ff
    ld l, l                                       ; $42a6: $6d
    ld l, d                                       ; $42a7: $6a
    sub a                                         ; $42a8: $97
    ld e, a                                       ; $42a9: $5f
    ld b, c                                       ; $42aa: $41
    ret z                                         ; $42ab: $c8

    ld h, [hl]                                    ; $42ac: $66
    ld a, d                                       ; $42ad: $7a
    xor $ff                                       ; $42ae: $ee $ff
    or h                                          ; $42b0: $b4
    rla                                           ; $42b1: $17
    dec c                                         ; $42b2: $0d
    and b                                         ; $42b3: $a0
    add d                                         ; $42b4: $82
    add a                                         ; $42b5: $87
    db $dd                                        ; $42b6: $dd
    ld a, e                                       ; $42b7: $7b
    ld e, b                                       ; $42b8: $58
    ret                                           ; $42b9: $c9


    ld d, l                                       ; $42ba: $55
    ld l, e                                       ; $42bb: $6b
    xor $bd                                       ; $42bc: $ee $bd
    sub e                                         ; $42be: $93
    ld c, c                                       ; $42bf: $49
    xor [hl]                                      ; $42c0: $ae
    adc d                                         ; $42c1: $8a
    rrca                                          ; $42c2: $0f
    dec de                                        ; $42c3: $1b
    adc h                                         ; $42c4: $8c
    ld h, a                                       ; $42c5: $67
    ld c, d                                       ; $42c6: $4a
    adc d                                         ; $42c7: $8a
    dec sp                                        ; $42c8: $3b
    cp $6e                                        ; $42c9: $fe $6e
    db $d3                                        ; $42cb: $d3
    adc h                                         ; $42cc: $8c
    and $b1                                       ; $42cd: $e6 $b1
    di                                            ; $42cf: $f3
    rst $38                                       ; $42d0: $ff
    db $d3                                        ; $42d1: $d3
    jp c, $93dc                                   ; $42d2: $da $dc $93

    ld [hl+], a                                   ; $42d5: $22
    ld b, d                                       ; $42d6: $42
    ld l, c                                       ; $42d7: $69
    sub [hl]                                      ; $42d8: $96
    xor d                                         ; $42d9: $aa
    ld a, e                                       ; $42da: $7b
    add [hl]                                      ; $42db: $86
    sbc h                                         ; $42dc: $9c
    ld [$f26a], sp                                ; $42dd: $08 $6a $f2
    ld c, [hl]                                    ; $42e0: $4e
    dec h                                         ; $42e1: $25
    ccf                                           ; $42e2: $3f
    ld d, b                                       ; $42e3: $50
    dec b                                         ; $42e4: $05
    ld h, c                                       ; $42e5: $61
    dec d                                         ; $42e6: $15
    rst $00                                       ; $42e7: $c7
    rlca                                          ; $42e8: $07
    dec de                                        ; $42e9: $1b
    adc h                                         ; $42ea: $8c
    ld h, a                                       ; $42eb: $67
    ld c, d                                       ; $42ec: $4a
    adc d                                         ; $42ed: $8a
    dec sp                                        ; $42ee: $3b
    rst $30                                       ; $42ef: $f7
    ld a, a                                       ; $42f0: $7f
    ld d, d                                       ; $42f1: $52
    ld d, b                                       ; $42f2: $50
    or l                                          ; $42f3: $b5
    ld l, [hl]                                    ; $42f4: $6e
    ld a, [$6551]                                 ; $42f5: $fa $51 $65
    db $d3                                        ; $42f8: $d3
    adc h                                         ; $42f9: $8c
    and $b1                                       ; $42fa: $e6 $b1
    di                                            ; $42fc: $f3
    ld e, l                                       ; $42fd: $5d
    ld h, h                                       ; $42fe: $64
    nop                                           ; $42ff: $00
    dec d                                         ; $4300: $15
    inc a                                         ; $4301: $3c
    db $ec                                        ; $4302: $ec
    adc d                                         ; $4303: $8a
    and b                                         ; $4304: $a0
    xor c                                         ; $4305: $a9
    ldh [$a1], a                                  ; $4306: $e0 $a1
    ld b, c                                       ; $4308: $41
    ld d, b                                       ; $4309: $50
    ld [hl], e                                    ; $430a: $73
    xor [hl]                                      ; $430b: $ae
    push hl                                       ; $430c: $e5
    jp nz, $40f2                                  ; $430d: $c2 $f2 $40

    reti                                          ; $4310: $d9


    db $f4                                        ; $4311: $f4
    adc $75                                       ; $4312: $ce $75
    sbc e                                         ; $4314: $9b
    sub e                                         ; $4315: $93
    ccf                                           ; $4316: $3f
    daa                                           ; $4317: $27
    db $f4                                        ; $4318: $f4
    add h                                         ; $4319: $84
    pop bc                                        ; $431a: $c1
    cp c                                          ; $431b: $b9
    add hl, de                                    ; $431c: $19
    rra                                           ; $431d: $1f
    dec de                                        ; $431e: $1b
    adc h                                         ; $431f: $8c
    rla                                           ; $4320: $17
    db $eb                                        ; $4321: $eb
    ld a, e                                       ; $4322: $7b
    rst $10                                       ; $4323: $d7
    add a                                         ; $4324: $87
    ld [$21e1], sp                                ; $4325: $08 $e1 $21
    sub a                                         ; $4328: $97
    and $5a                                       ; $4329: $e6 $5a
    xor $bd                                       ; $432b: $ee $bd
    ld d, e                                       ; $432d: $53
    ld sp, $1715                                  ; $432e: $31 $15 $17
    inc sp                                        ; $4331: $33
    sbc $33                                       ; $4332: $de $33
    scf                                           ; $4334: $37
    db $e4                                        ; $4335: $e4
    ld e, h                                       ; $4336: $5c
    set 7, c                                      ; $4337: $cb $f9
    adc $c5                                       ; $4339: $ce $c5
    jp nc, $e44c                                  ; $433b: $d2 $4c $e4

    xor e                                         ; $433e: $ab
    ld sp, $7341                                  ; $433f: $31 $41 $73
    xor b                                         ; $4342: $a8
    sub [hl]                                      ; $4343: $96
    ld h, [hl]                                    ; $4344: $66
    or h                                          ; $4345: $b4
    or b                                          ; $4346: $b0
    pop de                                        ; $4347: $d1
    call c, $fe52                                 ; $4348: $dc $52 $fe
    ld b, [hl]                                    ; $434b: $46
    ld a, $3e                                     ; $434c: $3e $3e
    nop                                           ; $434e: $00
    dec de                                        ; $434f: $1b
    adc h                                         ; $4350: $8c
    and a                                         ; $4351: $a7
    ld c, d                                       ; $4352: $4a
    cp a                                          ; $4353: $bf
    sub c                                         ; $4354: $91
    sbc a                                         ; $4355: $9f
    add d                                         ; $4356: $82
    add a                                         ; $4357: $87
    add h                                         ; $4358: $84
    add c                                         ; $4359: $81
    ld c, b                                       ; $435a: $48
    ld [hl], c                                    ; $435b: $71
    ld l, c                                       ; $435c: $69
    xor [hl]                                      ; $435d: $ae
    push hl                                       ; $435e: $e5
    inc d                                         ; $435f: $14
    ld b, h                                       ; $4360: $44
    ld [hl], l                                    ; $4361: $75
    ld h, h                                       ; $4362: $64
    ld d, e                                       ; $4363: $53
    ld hl, sp-$6b                                 ; $4364: $f8 $95
    call $00f8                                    ; $4366: $cd $f8 $00
    dec de                                        ; $4369: $1b
    adc h                                         ; $436a: $8c
    rla                                           ; $436b: $17
    db $eb                                        ; $436c: $eb
    ld a, e                                       ; $436d: $7b
    rst $10                                       ; $436e: $d7
    add a                                         ; $436f: $87
    ld [$21e1], sp                                ; $4370: $08 $e1 $21
    sub a                                         ; $4373: $97
    and $5a                                       ; $4374: $e6 $5a
    xor $bd                                       ; $4376: $ee $bd
    ld d, e                                       ; $4378: $53
    ld sp, $1715                                  ; $4379: $31 $15 $17
    inc sp                                        ; $437c: $33
    sbc $33                                       ; $437d: $de $33
    scf                                           ; $437f: $37
    db $e4                                        ; $4380: $e4
    ld e, h                                       ; $4381: $5c
    set 7, c                                      ; $4382: $cb $f9
    adc $c5                                       ; $4384: $ce $c5
    jp nc, $e44c                                  ; $4386: $d2 $4c $e4

    xor e                                         ; $4389: $ab
    ld sp, $7341                                  ; $438a: $31 $41 $73
    xor b                                         ; $438d: $a8
    sub [hl]                                      ; $438e: $96
    ld h, [hl]                                    ; $438f: $66
    or h                                          ; $4390: $b4
    or b                                          ; $4391: $b0
    pop de                                        ; $4392: $d1
    call c, $fe52                                 ; $4393: $dc $52 $fe
    ld b, [hl]                                    ; $4396: $46
    ld a, $3e                                     ; $4397: $3e $3e
    nop                                           ; $4399: $00
    dec de                                        ; $439a: $1b
    adc h                                         ; $439b: $8c
    rla                                           ; $439c: $17
    ld a, [bc]                                    ; $439d: $0a
    sbc d                                         ; $439e: $9a
    sbc $08                                       ; $439f: $de $08
    dec d                                         ; $43a1: $15
    inc a                                         ; $43a2: $3c
    db $ec                                        ; $43a3: $ec
    jp nz, Jump_000_354a                          ; $43a4: $c2 $4a $35

    adc a                                         ; $43a7: $8f
    ld e, l                                       ; $43a8: $5d
    ldh a, [rNR13]                                ; $43a9: $f0 $13
    ld [hl], h                                    ; $43ab: $74
    db $fc                                        ; $43ac: $fc
    db $dd                                        ; $43ad: $dd
    and [hl]                                      ; $43ae: $a6
    add hl, de                                    ; $43af: $19
    xor c                                         ; $43b0: $a9
    ld h, c                                       ; $43b1: $61
    xor $5a                                       ; $43b2: $ee $5a
    ld c, c                                       ; $43b4: $49
    ld e, e                                       ; $43b5: $5b
    ld a, [$f4fd]                                 ; $43b6: $fa $fd $f4
    and l                                         ; $43b9: $a5
    ld d, e                                       ; $43ba: $53
    xor e                                         ; $43bb: $ab
    ld [c], a                                     ; $43bc: $e2
    inc bc                                        ; $43bd: $03
    dec de                                        ; $43be: $1b
    adc h                                         ; $43bf: $8c
    rla                                           ; $43c0: $17
    db $eb                                        ; $43c1: $eb

Call_04b_43c2:
    ld a, e                                       ; $43c2: $7b
    rst $10                                       ; $43c3: $d7
    add a                                         ; $43c4: $87
    ld [$21e1], sp                                ; $43c5: $08 $e1 $21
    dec hl                                        ; $43c8: $2b
    ld l, $cd                                     ; $43c9: $2e $cd
    or l                                          ; $43cb: $b5
    call c, $a77b                                 ; $43cc: $dc $7b $a7
    ld h, d                                       ; $43cf: $62
    ld a, [hl+]                                   ; $43d0: $2a
    ld l, $66                                     ; $43d1: $2e $66
    cp h                                          ; $43d3: $bc
    ld h, a                                       ; $43d4: $67
    ld l, [hl]                                    ; $43d5: $6e
    ret z                                         ; $43d6: $c8

    cp c                                          ; $43d7: $b9
    sub [hl]                                      ; $43d8: $96
    di                                            ; $43d9: $f3
    sbc l                                         ; $43da: $9d
    adc e                                         ; $43db: $8b
    and l                                         ; $43dc: $a5
    sbc c                                         ; $43dd: $99
    ret z                                         ; $43de: $c8

    ld d, a                                       ; $43df: $57
    ld h, e                                       ; $43e0: $63
    add d                                         ; $43e1: $82
    and $50                                       ; $43e2: $e6 $50
    dec l                                         ; $43e4: $2d
    call $a168                                    ; $43e5: $cd $68 $a1
    add hl, de                                    ; $43e8: $19
    call $e52d                                    ; $43e9: $cd $2d $e5
    ld l, a                                       ; $43ec: $6f
    db $e4                                        ; $43ed: $e4
    db $e3                                        ; $43ee: $e3
    inc bc                                        ; $43ef: $03
    dec de                                        ; $43f0: $1b
    adc h                                         ; $43f1: $8c
    rla                                           ; $43f2: $17
    db $eb                                        ; $43f3: $eb
    ld a, e                                       ; $43f4: $7b
    rst $10                                       ; $43f5: $d7
    add a                                         ; $43f6: $87
    ld [$21e1], sp                                ; $43f7: $08 $e1 $21
    dec hl                                        ; $43fa: $2b
    ld l, $cd                                     ; $43fb: $2e $cd
    or l                                          ; $43fd: $b5
    call c, $a77b                                 ; $43fe: $dc $7b $a7
    ld h, d                                       ; $4401: $62
    ld a, [hl+]                                   ; $4402: $2a
    ld l, $66                                     ; $4403: $2e $66
    cp h                                          ; $4405: $bc
    ld h, a                                       ; $4406: $67
    ld l, [hl]                                    ; $4407: $6e
    ret z                                         ; $4408: $c8

    cp c                                          ; $4409: $b9
    sub [hl]                                      ; $440a: $96
    di                                            ; $440b: $f3
    sbc l                                         ; $440c: $9d
    adc e                                         ; $440d: $8b
    and l                                         ; $440e: $a5
    sbc c                                         ; $440f: $99
    ret z                                         ; $4410: $c8

    ld d, a                                       ; $4411: $57
    ld h, e                                       ; $4412: $63
    add d                                         ; $4413: $82
    and $50                                       ; $4414: $e6 $50
    dec l                                         ; $4416: $2d
    call $a168                                    ; $4417: $cd $68 $a1
    add hl, de                                    ; $441a: $19
    call $e52d                                    ; $441b: $cd $2d $e5
    ld l, a                                       ; $441e: $6f
    db $e4                                        ; $441f: $e4
    db $e3                                        ; $4420: $e3
    inc bc                                        ; $4421: $03
    dec de                                        ; $4422: $1b
    adc h                                         ; $4423: $8c
    rst $10                                       ; $4424: $d7
    add hl, de                                    ; $4425: $19
    pop hl                                        ; $4426: $e1
    ld hl, $e697                                  ; $4427: $21 $97 $e6
    ld e, d                                       ; $442a: $5a
    ld l, $2c                                     ; $442b: $2e $2c
    rst $08                                       ; $442d: $cf
    ld a, a                                       ; $442e: $7f
    add d                                         ; $442f: $82
    or $de                                        ; $4430: $f6 $de
    xor c                                         ; $4432: $a9
    sbc b                                         ; $4433: $98
    jp z, $f6ad                                   ; $4434: $ca $ad $f6

    pop af                                        ; $4437: $f1
    ld bc, $8c1b                                  ; $4438: $01 $1b $8c
    ld h, a                                       ; $443b: $67
    ld c, d                                       ; $443c: $4a
    adc d                                         ; $443d: $8a
    dec sp                                        ; $443e: $3b
    rlca                                          ; $443f: $07
    ld e, c                                       ; $4440: $59
    jr nc, @+$65                                  ; $4441: $30 $63

    push bc                                       ; $4443: $c5
    and l                                         ; $4444: $a5
    cp c                                          ; $4445: $b9
    sub [hl]                                      ; $4446: $96
    di                                            ; $4447: $f3
    db $dd                                        ; $4448: $dd
    dec bc                                        ; $4449: $0b
    sub l                                         ; $444a: $95
    or d                                          ; $444b: $b2
    jp hl                                         ; $444c: $e9


    cp e                                          ; $444d: $bb
    rst $20                                       ; $444e: $e7
    set 2, l                                      ; $444f: $cb $d5
    pop af                                        ; $4451: $f1
    ld bc, $8c1b                                  ; $4452: $01 $1b $8c
    set 7, a                                      ; $4455: $cb $ff
    ld b, l                                       ; $4457: $45
    ld a, [hl]                                    ; $4458: $7e
    xor [hl]                                      ; $4459: $ae
    push hl                                       ; $445a: $e5
    sbc $3b                                       ; $445b: $de $3b
    dec d                                         ; $445d: $15
    ld d, e                                       ; $445e: $53
    ld [hl], c                                    ; $445f: $71
    ld sp, $bde3                                  ; $4460: $31 $e3 $bd
    ld h, d                                       ; $4463: $62
    call nz, $9a59                                ; $4464: $c4 $59 $9a
    ld l, e                                       ; $4467: $6b
    cp c                                          ; $4468: $b9
    sub a                                         ; $4469: $97
    db $10                                        ; $446a: $10
    cp $b5                                        ; $446b: $fe $b5
    sbc c                                         ; $446d: $99
    jp c, $dab3                                   ; $446e: $da $b3 $da

    and d                                         ; $4471: $a2
    ld [$35dd], a                                 ; $4472: $ea $dd $35
    rst $18                                       ; $4475: $df
    ld b, l                                       ; $4476: $45
    ld h, $4b                                     ; $4477: $26 $4b
    ld [hl], e                                    ; $4479: $73
    dec l                                         ; $447a: $2d
    rst $20                                       ; $447b: $e7
    cp e                                          ; $447c: $bb
    rst $10                                       ; $447d: $d7
    cp c                                          ; $447e: $b9
    call $d2f9                                    ; $447f: $cd $f9 $d2
    sbc $c6                                       ; $4482: $de $c6
    ldh [$dc], a                                  ; $4484: $e0 $dc
    adc h                                         ; $4486: $8c
    rrca                                          ; $4487: $0f
    dec de                                        ; $4488: $1b
    adc h                                         ; $4489: $8c
    and a                                         ; $448a: $a7
    ld c, h                                       ; $448b: $4c
    ld bc, $2364                                  ; $448c: $01 $64 $23
    ld d, h                                       ; $448f: $54
    inc a                                         ; $4490: $3c
    rst $10                                       ; $4491: $d7
    ld [hl], d                                    ; $4492: $72
    cp [hl]                                       ; $4493: $be
    add e                                         ; $4494: $83
    ld a, $e4                                     ; $4495: $3e $e4
    ld l, b                                       ; $4497: $68
    ld b, e                                       ; $4498: $43
    ld [$bbf8], a                                 ; $4499: $ea $f8 $bb
    ld c, l                                       ; $449c: $4d
    inc sp                                        ; $449d: $33
    ld d, d                                       ; $449e: $52
    add d                                         ; $449f: $82
    and l                                         ; $44a0: $a5
    sbc a                                         ; $44a1: $9f
    rst $28                                       ; $44a2: $ef
    sbc $46                                       ; $44a3: $de $46
    and $ee                                       ; $44a5: $e6 $ee
    ld l, l                                       ; $44a7: $6d
    xor h                                         ; $44a8: $ac
    db $db                                        ; $44a9: $db
    adc h                                         ; $44aa: $8c
    rrca                                          ; $44ab: $0f
    dec de                                        ; $44ac: $1b
    adc h                                         ; $44ad: $8c
    and a                                         ; $44ae: $a7
    ld a, a                                       ; $44af: $7f
    inc b                                         ; $44b0: $04
    db $fd                                        ; $44b1: $fd
    ld b, h                                       ; $44b2: $44
    push bc                                       ; $44b3: $c5
    ld [hl], e                                    ; $44b4: $73
    dec l                                         ; $44b5: $2d
    rst $20                                       ; $44b6: $e7
    cp e                                          ; $44b7: $bb
    sbc a                                         ; $44b8: $9f
    xor $d7                                       ; $44b9: $ee $d7
    db $fc                                        ; $44bb: $fc
    ccf                                           ; $44bc: $3f
    ld a, [$75ee]                                 ; $44bd: $fa $ee $75
    rlca                                          ; $44c0: $07
    cp c                                          ; $44c1: $b9
    ld [hl], e                                    ; $44c2: $73
    rst $38                                       ; $44c3: $ff
    and a                                         ; $44c4: $a7
    cp l                                          ; $44c5: $bd
    pop af                                        ; $44c6: $f1
    db $dd                                        ; $44c7: $dd
    and [hl]                                      ; $44c8: $a6
    add hl, de                                    ; $44c9: $19
    xor c                                         ; $44ca: $a9
    adc e                                         ; $44cb: $8b
    sbc l                                         ; $44cc: $9d
    call z, Call_04b_7308                         ; $44cd: $cc $08 $73
    ld l, l                                       ; $44d0: $6d
    xor [hl]                                      ; $44d1: $ae
    or b                                          ; $44d2: $b0
    ld hl, $7dfd                                  ; $44d3: $21 $fd $7d
    xor c                                         ; $44d6: $a9
    jp hl                                         ; $44d7: $e9


    dec sp                                        ; $44d8: $3b
    halt                                          ; $44d9: $76
    inc b                                         ; $44da: $04
    sbc e                                         ; $44db: $9b
    ei                                            ; $44dc: $fb
    ccf                                           ; $44dd: $3f
    ret                                           ; $44de: $c9


    rra                                           ; $44df: $1f
    ld [hl], c                                    ; $44e0: $71
    ld a, h                                       ; $44e1: $7c
    nop                                           ; $44e2: $00
    dec de                                        ; $44e3: $1b
    adc h                                         ; $44e4: $8c
    rst $10                                       ; $44e5: $d7
    and c                                         ; $44e6: $a1
    ld d, [hl]                                    ; $44e7: $56
    di                                            ; $44e8: $f3
    db $fc                                        ; $44e9: $fc
    xor a                                         ; $44ea: $af
    xor a                                         ; $44eb: $af
    ld a, $9b                                     ; $44ec: $3e $9b
    inc e                                         ; $44ee: $1c
    and $7c                                       ; $44ef: $e6 $7c
    rlca                                          ; $44f1: $07
    ld a, l                                       ; $44f2: $7d
    ret z                                         ; $44f3: $c8

    pop de                                        ; $44f4: $d1
    add [hl]                                      ; $44f5: $86
    call nc, Call_04b_77f1                        ; $44f6: $d4 $f1 $77
    sbc e                                         ; $44f9: $9b
    ld h, [hl]                                    ; $44fa: $66
    and h                                         ; $44fb: $a4
    inc b                                         ; $44fc: $04
    ld c, e                                       ; $44fd: $4b
    ccf                                           ; $44fe: $3f
    rst $18                                       ; $44ff: $df
    cp l                                          ; $4500: $bd
    adc l                                         ; $4501: $8d
    call z, $dbdd                                 ; $4502: $cc $dd $db
    ld e, b                                       ; $4505: $58
    or a                                          ; $4506: $b7
    add hl, de                                    ; $4507: $19
    rra                                           ; $4508: $1f
    dec de                                        ; $4509: $1b
    adc h                                         ; $450a: $8c
    rst $10                                       ; $450b: $d7
    and c                                         ; $450c: $a1
    ld d, [hl]                                    ; $450d: $56
    di                                            ; $450e: $f3
    or h                                          ; $450f: $b4
    add e                                         ; $4510: $83
    inc a                                         ; $4511: $3c
    call z, Call_000_0ef9                         ; $4512: $cc $f9 $0e
    ld a, [$a390]                                 ; $4515: $fa $90 $a3
    dec c                                         ; $4518: $0d
    xor c                                         ; $4519: $a9
    db $e3                                        ; $451a: $e3
    rst $28                                       ; $451b: $ef
    ld [hl], $cd                                  ; $451c: $36 $cd
    ld c, b                                       ; $451e: $48
    add hl, bc                                    ; $451f: $09
    sub [hl]                                      ; $4520: $96
    ld a, [hl]                                    ; $4521: $7e
    cp [hl]                                       ; $4522: $be
    ld a, e                                       ; $4523: $7b
    dec de                                        ; $4524: $1b
    sbc c                                         ; $4525: $99
    cp e                                          ; $4526: $bb
    or a                                          ; $4527: $b7
    or c                                          ; $4528: $b1
    ld l, [hl]                                    ; $4529: $6e
    inc sp                                        ; $452a: $33
    ld a, $00                                     ; $452b: $3e $00
    dec de                                        ; $452d: $1b
    adc h                                         ; $452e: $8c
    rst $10                                       ; $452f: $d7
    and c                                         ; $4530: $a1
    ld d, [hl]                                    ; $4531: $56
    di                                            ; $4532: $f3
    ld [hl], h                                    ; $4533: $74
    call Call_04b_6403                            ; $4534: $cd $03 $64
    inc sp                                        ; $4537: $33
    ld a, [de]                                    ; $4538: $1a
    and $7c                                       ; $4539: $e6 $7c
    rlca                                          ; $453b: $07
    ld a, l                                       ; $453c: $7d
    ret z                                         ; $453d: $c8

    pop de                                        ; $453e: $d1
    add [hl]                                      ; $453f: $86
    call nc, Call_04b_77f1                        ; $4540: $d4 $f1 $77
    sbc e                                         ; $4543: $9b
    ld h, [hl]                                    ; $4544: $66
    and h                                         ; $4545: $a4
    inc b                                         ; $4546: $04
    ld c, e                                       ; $4547: $4b
    ccf                                           ; $4548: $3f
    rst $18                                       ; $4549: $df
    cp l                                          ; $454a: $bd
    adc l                                         ; $454b: $8d
    call z, $dbdd                                 ; $454c: $cc $dd $db
    ld e, b                                       ; $454f: $58
    or a                                          ; $4550: $b7
    add hl, de                                    ; $4551: $19
    rra                                           ; $4552: $1f
    dec de                                        ; $4553: $1b
    adc h                                         ; $4554: $8c
    rst $30                                       ; $4555: $f7
    inc l                                         ; $4556: $2c
    ld b, c                                       ; $4557: $41
    ld l, c                                       ; $4558: $69
    xor [hl]                                      ; $4559: $ae
    push hl                                       ; $455a: $e5
    ld a, h                                       ; $455b: $7c
    rlca                                          ; $455c: $07
    ld a, l                                       ; $455d: $7d
    ret z                                         ; $455e: $c8

    pop de                                        ; $455f: $d1
    add [hl]                                      ; $4560: $86
    call nc, Call_04b_77f1                        ; $4561: $d4 $f1 $77
    sbc e                                         ; $4564: $9b
    ld h, [hl]                                    ; $4565: $66
    and h                                         ; $4566: $a4
    inc b                                         ; $4567: $04
    ld c, e                                       ; $4568: $4b
    ccf                                           ; $4569: $3f
    rst $18                                       ; $456a: $df
    cp l                                          ; $456b: $bd
    adc l                                         ; $456c: $8d
    call z, $dbdd                                 ; $456d: $cc $dd $db
    ld e, b                                       ; $4570: $58
    or a                                          ; $4571: $b7
    add hl, de                                    ; $4572: $19
    rra                                           ; $4573: $1f

Jump_04b_4574:
    dec de                                        ; $4574: $1b
    adc h                                         ; $4575: $8c
    xor e                                         ; $4576: $ab
    db $e4                                        ; $4577: $e4
    ld b, h                                       ; $4578: $44
    ld d, c                                       ; $4579: $51
    ld l, c                                       ; $457a: $69
    xor [hl]                                      ; $457b: $ae
    push hl                                       ; $457c: $e5
    ld a, h                                       ; $457d: $7c
    rlca                                          ; $457e: $07
    ld a, l                                       ; $457f: $7d
    ret z                                         ; $4580: $c8

    pop de                                        ; $4581: $d1
    add [hl]                                      ; $4582: $86
    call nc, Call_04b_77f1                        ; $4583: $d4 $f1 $77
    sbc e                                         ; $4586: $9b
    ld h, [hl]                                    ; $4587: $66
    and h                                         ; $4588: $a4
    inc b                                         ; $4589: $04
    ld c, e                                       ; $458a: $4b

Call_04b_458b:
    ccf                                           ; $458b: $3f
    rst $18                                       ; $458c: $df
    cp l                                          ; $458d: $bd
    adc l                                         ; $458e: $8d
    call z, $dbdd                                 ; $458f: $cc $dd $db
    ld e, b                                       ; $4592: $58
    or a                                          ; $4593: $b7
    add hl, de                                    ; $4594: $19
    rra                                           ; $4595: $1f
    dec de                                        ; $4596: $1b
    adc h                                         ; $4597: $8c
    ld d, a                                       ; $4598: $57
    ld a, $e4                                     ; $4599: $3e $e4
    ld l, b                                       ; $459b: $68
    ld b, e                                       ; $459c: $43
    ld [$98ce], a                                 ; $459d: $ea $ce $98
    and b                                         ; $45a0: $a0
    jp hl                                         ; $45a1: $e9


    dec sp                                        ; $45a2: $3b
    cp $6e                                        ; $45a3: $fe $6e
    db $d3                                        ; $45a5: $d3
    xor b                                         ; $45a6: $a8
    ld a, [hl+]                                   ; $45a7: $2a
    ld a, $00                                     ; $45a8: $3e $00
    dec de                                        ; $45aa: $1b
    adc h                                         ; $45ab: $8c
    rst $10                                       ; $45ac: $d7
    and c                                         ; $45ad: $a1
    ld d, [hl]                                    ; $45ae: $56
    di                                            ; $45af: $f3
    sub h                                         ; $45b0: $94
    ld [hl], $00                                  ; $45b1: $36 $00
    sub b                                         ; $45b3: $90
    call $9868                                    ; $45b4: $cd $68 $98
    di                                            ; $45b7: $f3
    dec e                                         ; $45b8: $1d
    db $f4                                        ; $45b9: $f4
    ld hl, $1b47                                  ; $45ba: $21 $47 $1b
    ld d, d                                       ; $45bd: $52
    rst $00                                       ; $45be: $c7
    rst $18                                       ; $45bf: $df
    ld l, l                                       ; $45c0: $6d
    sbc d                                         ; $45c1: $9a
    sub c                                         ; $45c2: $91
    ld [de], a                                    ; $45c3: $12
    inc l                                         ; $45c4: $2c
    db $fd                                        ; $45c5: $fd
    ld a, h                                       ; $45c6: $7c
    rst $30                                       ; $45c7: $f7
    ld [hl], $32                                  ; $45c8: $36 $32
    ld [hl], a                                    ; $45ca: $77
    ld l, a                                       ; $45cb: $6f
    ld h, e                                       ; $45cc: $63
    db $dd                                        ; $45cd: $dd
    ld h, [hl]                                    ; $45ce: $66
    ld a, h                                       ; $45cf: $7c
    nop                                           ; $45d0: $00
    dec de                                        ; $45d1: $1b
    adc h                                         ; $45d2: $8c
    rst $10                                       ; $45d3: $d7
    and c                                         ; $45d4: $a1
    ld d, [hl]                                    ; $45d5: $56
    di                                            ; $45d6: $f3
    ldh [$d5], a                                  ; $45d7: $e0 $d5
    ld a, [$730f]                                 ; $45d9: $fa $0f $73
    cp [hl]                                       ; $45dc: $be
    add e                                         ; $45dd: $83
    ld a, $e4                                     ; $45de: $3e $e4
    ld l, b                                       ; $45e0: $68
    ld b, e                                       ; $45e1: $43
    ld [$bbf8], a                                 ; $45e2: $ea $f8 $bb
    ld c, l                                       ; $45e5: $4d
    inc sp                                        ; $45e6: $33
    ld d, d                                       ; $45e7: $52
    add d                                         ; $45e8: $82
    and l                                         ; $45e9: $a5
    sbc a                                         ; $45ea: $9f
    rst $28                                       ; $45eb: $ef
    sbc $46                                       ; $45ec: $de $46
    and $ee                                       ; $45ee: $e6 $ee
    ld l, l                                       ; $45f0: $6d
    xor h                                         ; $45f1: $ac
    db $db                                        ; $45f2: $db
    adc h                                         ; $45f3: $8c
    rrca                                          ; $45f4: $0f
    dec de                                        ; $45f5: $1b
    adc h                                         ; $45f6: $8c
    and a                                         ; $45f7: $a7
    ld c, d                                       ; $45f8: $4a
    cp a                                          ; $45f9: $bf
    sub c                                         ; $45fa: $91
    rst $18                                       ; $45fb: $df
    xor c                                         ; $45fc: $a9
    and b                                         ; $45fd: $a0
    xor c                                         ; $45fe: $a9
    ld d, $96                                     ; $45ff: $16 $96
    rst $30                                       ; $4601: $f7
    sub e                                         ; $4602: $93
    ld c, a                                       ; $4603: $4f
    dec h                                         ; $4604: $25
    xor b                                         ; $4605: $a8
    add hl, sp                                    ; $4606: $39
    rst $10                                       ; $4607: $d7
    ld [hl], d                                    ; $4608: $72
    cp [hl]                                       ; $4609: $be
    ld a, e                                       ; $460a: $7b
    xor $3b                                       ; $460b: $ee $3b
    cp [hl]                                       ; $460d: $be
    cp c                                          ; $460e: $b9
    rst $10                                       ; $460f: $d7
    db $d3                                        ; $4610: $d3
    inc c                                         ; $4611: $0c
    db $e3                                        ; $4612: $e3
    inc bc                                        ; $4613: $03
    dec de                                        ; $4614: $1b
    adc h                                         ; $4615: $8c
    rst $10                                       ; $4616: $d7
    ld a, [bc]                                    ; $4617: $0a
    rst $38                                       ; $4618: $ff
    db $e4                                        ; $4619: $e4
    jp $f8ef                                      ; $461a: $c3 $ef $f8


    jp nc, $cb5c                                  ; $461d: $d2 $5c $cb

    ld sp, hl                                     ; $4620: $f9
    xor [hl]                                      ; $4621: $ae
    ld [hl], l                                    ; $4622: $75
    ld c, [hl]                                    ; $4623: $4e
    ld [hl], e                                    ; $4624: $73
    dec l                                         ; $4625: $2d
    rla                                           ; $4626: $17
    sub [hl]                                      ; $4627: $96
    rla                                           ; $4628: $17
    cp $0f                                        ; $4629: $fe $0f
    inc d                                         ; $462b: $14
    ld [hl], a                                    ; $462c: $77
    ld h, [hl]                                    ; $462d: $66
    ret                                           ; $462e: $c9


    and [hl]                                      ; $462f: $a6
    rst $30                                       ; $4630: $f7
    sbc $a9                                       ; $4631: $de $a9
    inc h                                         ; $4633: $24
    dec b                                         ; $4634: $05
    db $d3                                        ; $4635: $d3
    ldh [$9b], a                                  ; $4636: $e0 $9b
    ld d, [hl]                                    ; $4638: $56
    ld h, e                                       ; $4639: $63
    inc c                                         ; $463a: $0c
    ld a, h                                       ; $463b: $7c
    ld d, e                                       ; $463c: $53
    dec l                                         ; $463d: $2d
    adc l                                         ; $463e: $8d
    pop af                                        ; $463f: $f1
    and a                                         ; $4640: $a7
    jp hl                                         ; $4641: $e9


    ld c, [hl]                                    ; $4642: $4e
    ld e, d                                       ; $4643: $5a
    inc b                                         ; $4644: $04
    pop hl                                        ; $4645: $e1
    ld l, a                                       ; $4646: $6f
    ld a, [hl+]                                   ; $4647: $2a
    ld a, b                                       ; $4648: $78
    ld l, b                                       ; $4649: $68
    db $10                                        ; $464a: $10
    call nc, $0f8c                                ; $464b: $d4 $8c $0f
    dec de                                        ; $464e: $1b
    adc h                                         ; $464f: $8c
    daa                                           ; $4650: $27
    dec l                                         ; $4651: $2d
    db $dd                                        ; $4652: $dd
    ld e, a                                       ; $4653: $5f
    ld a, [c]                                     ; $4654: $f2
    and l                                         ; $4655: $a5
    cp c                                          ; $4656: $b9
    sub [hl]                                      ; $4657: $96
    dec bc                                        ; $4658: $0b
    bit 5, e                                      ; $4659: $cb $6b
    ld [hl+], a                                   ; $465b: $22
    add sp, $5c                                   ; $465c: $e8 $5c
    ld a, [$a9ce]                                 ; $465e: $fa $ce $a9
    ld a, [de]                                    ; $4661: $1a
    inc bc                                        ; $4662: $03
    reti                                          ; $4663: $d9


    and l                                         ; $4664: $a5
    ld sp, $34fe                                  ; $4665: $31 $fe $34
    db $dd                                        ; $4668: $dd
    cp l                                          ; $4669: $bd
    ld [hl], a                                    ; $466a: $77
    ld a, [hl+]                                   ; $466b: $2a
    ld c, c                                       ; $466c: $49
    pop bc                                        ; $466d: $c1
    inc [hl]                                      ; $466e: $34
    rst $10                                       ; $466f: $d7
    and d                                         ; $4670: $a2
    adc e                                         ; $4671: $8b
    ld sp, hl                                     ; $4672: $f9
    xor $f2                                       ; $4673: $ee $f2
    ld l, e                                       ; $4675: $6b
    ld sp, $cd61                                  ; $4676: $31 $61 $cd
    rst $28                                       ; $4679: $ef
    jp nc, $c208                                  ; $467a: $d2 $08 $c2

    xor d                                         ; $467d: $aa
    ld hl, sp+$00                                 ; $467e: $f8 $00
    dec de                                        ; $4680: $1b
    adc h                                         ; $4681: $8c
    ld h, a                                       ; $4682: $67
    ld [de], a                                    ; $4683: $12
    ld b, c                                       ; $4684: $41
    and a                                         ; $4685: $a7
    ldh [$61], a                                  ; $4686: $e0 $61
    pop de                                        ; $4688: $d1
    dec hl                                        ; $4689: $2b
    ld a, [hl+]                                   ; $468a: $2a

Call_04b_468b:
    inc a                                         ; $468b: $3c
    db $e4                                        ; $468c: $e4
    jp nc, Jump_04b_763c                          ; $468d: $d2 $3c $76

    rst $38                                       ; $4690: $ff
    inc hl                                        ; $4691: $23
    rrca                                          ; $4692: $0f
    push de                                       ; $4693: $d5
    cp [hl]                                       ; $4694: $be
    ld e, e                                       ; $4695: $5b
    jp nc, $cdf5                                  ; $4696: $d2 $f5 $cd

    ld sp, $be06                                  ; $4699: $31 $06 $be
    xor c                                         ; $469c: $a9
    sub $e6                                       ; $469d: $d6 $e6
    sbc $3b                                       ; $469f: $de $3b
    sub l                                         ; $46a1: $95
    and h                                         ; $46a2: $a4
    ld h, b                                       ; $46a3: $60
    ld a, [$af54]                                 ; $46a4: $fa $54 $af
    sbc b                                         ; $46a7: $98
    jr nc, @-$0e                                  ; $46a8: $30 $f0

    pop af                                        ; $46aa: $f1
    ld bc, $8c1b                                  ; $46ab: $01 $1b $8c
    sub a                                         ; $46ae: $97

jr_04b_46af:
    ld hl, $7842                                  ; $46af: $21 $42 $78
    ret z                                         ; $46b2: $c8

    and l                                         ; $46b3: $a5
    cp c                                          ; $46b4: $b9
    sub [hl]                                      ; $46b5: $96
    ld a, e                                       ; $46b6: $7b
    add hl, bc                                    ; $46b7: $09
    inc hl                                        ; $46b8: $23
    pop bc                                        ; $46b9: $c1
    ld d, c                                       ; $46ba: $51
    ld a, e                                       ; $46bb: $7b
    call Call_000_15e0                            ; $46bc: $cd $e0 $15
    ld a, d                                       ; $46bf: $7a
    ld l, [hl]                                    ; $46c0: $6e
    inc h                                         ; $46c1: $24
    ld a, h                                       ; $46c2: $7c
    rst $20                                       ; $46c3: $e7
    ld d, h                                       ; $46c4: $54
    ld d, d                                       ; $46c5: $52
    pop af                                        ; $46c6: $f1
    ld bc, $8c1b                                  ; $46c7: $01 $1b $8c
    ld c, e                                       ; $46ca: $4b
    rlca                                          ; $46cb: $07
    dec a                                         ; $46cc: $3d
    add d                                         ; $46cd: $82
    cp l                                          ; $46ce: $bd
    push af                                       ; $46cf: $f5
    ccf                                           ; $46d0: $3f
    sbc l                                         ; $46d1: $9d
    sub c                                         ; $46d2: $91
    cp c                                          ; $46d3: $b9
    inc [hl]                                      ; $46d4: $34
    rst $10                                       ; $46d5: $d7
    ld [hl], d                                    ; $46d6: $72
    rst $28                                       ; $46d7: $ef
    cp l                                          ; $46d8: $bd
    db $fd                                        ; $46d9: $fd
    call z, $af1b                                 ; $46da: $cc $1b $af
    ld e, a                                       ; $46dd: $5f
    inc l                                         ; $46de: $2c
    inc l                                         ; $46df: $2c
    rst $28                                       ; $46e0: $ef
    inc de                                        ; $46e1: $13
    jr nc, jr_04b_46af                            ; $46e2: $30 $cb

    ld a, c                                       ; $46e4: $79
    db $e3                                        ; $46e5: $e3
    pop af                                        ; $46e6: $f1
    rst $28                                       ; $46e7: $ef
    add hl, de                                    ; $46e8: $19
    pop hl                                        ; $46e9: $e1
    ld hl, $fc2f                                  ; $46ea: $21 $2f $fc
    adc [hl]                                      ; $46ed: $8e
    rst $20                                       ; $46ee: $e7
    ld a, l                                       ; $46ef: $7d
    ld l, b                                       ; $46f0: $68
    rst $28                                       ; $46f1: $ef
    sbc l                                         ; $46f2: $9d
    ld c, d                                       ; $46f3: $4a

jr_04b_46f4:
    ld d, d                                       ; $46f4: $52
    jr nc, jr_04b_4774                            ; $46f5: $30 $7d

    xor d                                         ; $46f7: $aa
    ld d, a                                       ; $46f8: $57
    ld c, h                                       ; $46f9: $4c
    jr jr_04b_46f4                                ; $46fa: $18 $f8

    ld h, [hl]                                    ; $46fc: $66
    ld a, h                                       ; $46fd: $7c
    nop                                           ; $46fe: $00
    dec de                                        ; $46ff: $1b
    adc h                                         ; $4700: $8c
    ld h, a                                       ; $4701: $67
    ld c, d                                       ; $4702: $4a
    adc d                                         ; $4703: $8a
    cp e                                          ; $4704: $bb
    ld h, a                                       ; $4705: $67
    ld [de], a                                    ; $4706: $12
    ld d, h                                       ; $4707: $54
    xor e                                         ; $4708: $ab
    ld l, $ac                                     ; $4709: $2e $ac
    ld d, h                                       ; $470b: $54
    di                                            ; $470c: $f3
    ret c                                         ; $470d: $d8

    add hl, hl                                    ; $470e: $29
    ld a, b                                       ; $470f: $78
    ld e, b                                       ; $4710: $58
    db $f4                                        ; $4711: $f4
    adc d                                         ; $4712: $8a
    ld a, [bc]                                    ; $4713: $0a
    rrca                                          ; $4714: $0f
    cp c                                          ; $4715: $b9
    or h                                          ; $4716: $b4
    sub e                                         ; $4717: $93
    xor c                                         ; $4718: $a9
    ld sp, $be06                                  ; $4719: $31 $06 $be
    xor c                                         ; $471c: $a9
    sub $e6                                       ; $471d: $d6 $e6
    sbc $3b                                       ; $471f: $de $3b
    sub l                                         ; $4721: $95
    and h                                         ; $4722: $a4
    ld h, b                                       ; $4723: $60
    ld a, [$af54]                                 ; $4724: $fa $54 $af
    sbc b                                         ; $4727: $98
    jr nc, @-$0e                                  ; $4728: $30 $f0

    pop af                                        ; $472a: $f1
    ld bc, $8c1b                                  ; $472b: $01 $1b $8c
    ld h, a                                       ; $472e: $67
    ld [de], a                                    ; $472f: $12
    ld d, h                                       ; $4730: $54
    xor e                                         ; $4731: $ab
    ld d, c                                       ; $4732: $51
    pop hl                                        ; $4733: $e1
    sbc a                                         ; $4734: $9f
    ld a, h                                       ; $4735: $7c
    ld hl, sp+$1d                                 ; $4736: $f8 $1d
    ld e, a                                       ; $4738: $5f
    sbc d                                         ; $4739: $9a
    ei                                            ; $473a: $fb
    ccf                                           ; $473b: $3f
    call Call_000_2a77                            ; $473c: $cd $77 $2a
    xor e                                         ; $473f: $ab
    dec d                                         ; $4740: $15
    ld [hl], a                                    ; $4741: $77
    xor [hl]                                      ; $4742: $ae
    dec h                                         ; $4743: $25
    ld d, b                                       ; $4744: $50
    inc a                                         ; $4745: $3c
    rst $10                                       ; $4746: $d7
    ld [hl], d                                    ; $4747: $72
    cp [hl]                                       ; $4748: $be
    ld a, e                                       ; $4749: $7b
    dec a                                         ; $474a: $3d
    call $b1f0                                    ; $474b: $cd $f0 $b1
    ld a, c                                       ; $474e: $79
    jp nz, $94de                                  ; $474f: $c2 $de $94

    ld l, l                                       ; $4752: $6d
    add [hl]                                      ; $4753: $86
    and [hl]                                      ; $4754: $a6
    db $dd                                        ; $4755: $dd
    ld c, [hl]                                    ; $4756: $4e
    dec d                                         ; $4757: $15
    cp $d3                                        ; $4758: $fe $d3
    scf                                           ; $475a: $37
    db $e3                                        ; $475b: $e3
    inc bc                                        ; $475c: $03
    dec de                                        ; $475d: $1b
    adc h                                         ; $475e: $8c
    ld c, e                                       ; $475f: $4b
    rlca                                          ; $4760: $07
    dec a                                         ; $4761: $3d
    add d                                         ; $4762: $82
    cp l                                          ; $4763: $bd
    push af                                       ; $4764: $f5
    ccf                                           ; $4765: $3f
    sbc l                                         ; $4766: $9d
    sub c                                         ; $4767: $91
    cp c                                          ; $4768: $b9
    inc [hl]                                      ; $4769: $34
    rst $10                                       ; $476a: $d7
    ld [hl], d                                    ; $476b: $72
    ld h, c                                       ; $476c: $61
    ld a, c                                       ; $476d: $79
    rst $08                                       ; $476e: $cf
    inc h                                         ; $476f: $24
    xor b                                         ; $4770: $a8
    ld d, [hl]                                    ; $4771: $56
    db $dd                                        ; $4772: $dd
    or e                                          ; $4773: $b3

jr_04b_4774:
    jp c, $48c1                                   ; $4774: $da $c1 $48

    ld [hl], c                                    ; $4777: $71
    or e                                          ; $4778: $b3
    cp c                                          ; $4779: $b9
    rst $30                                       ; $477a: $f7
    ld c, [hl]                                    ; $477b: $4e
    dec h                                         ; $477c: $25
    add hl, hl                                    ; $477d: $29
    sbc b                                         ; $477e: $98
    and $5a                                       ; $477f: $e6 $5a
    inc d                                         ; $4781: $14
    rra                                           ; $4782: $1f
    dec de                                        ; $4783: $1b
    adc h                                         ; $4784: $8c
    ld h, a                                       ; $4785: $67
    ld c, d                                       ; $4786: $4a
    adc d                                         ; $4787: $8a
    dec sp                                        ; $4788: $3b
    dec b                                         ; $4789: $05
    rrca                                          ; $478a: $0f
    dec bc                                        ; $478b: $0b
    ld b, c                                       ; $478c: $41
    and l                                         ; $478d: $a5
    cp c                                          ; $478e: $b9
    sub [hl]                                      ; $478f: $96
    di                                            ; $4790: $f3
    db $dd                                        ; $4791: $dd
    ld d, e                                       ; $4792: $53
    and [hl]                                      ; $4793: $a6
    ld d, b                                       ; $4794: $50
    and e                                         ; $4795: $a3
    sub d                                         ; $4796: $92
    pop af                                        ; $4797: $f1
    ld bc, $8c1b                                  ; $4798: $01 $1b $8c
    sub a                                         ; $479b: $97
    call z, Call_04b_6e68                         ; $479c: $cc $68 $6e
    ld c, c                                       ; $479f: $49
    dec sp                                        ; $47a0: $3b
    add sp, $79                                   ; $47a1: $e8 $79
    cp [hl]                                       ; $47a3: $be
    ld l, e                                       ; $47a4: $6b
    ld [hl+], a                                   ; $47a5: $22
    add sp, -$08                                  ; $47a6: $e8 $f8
    cp e                                          ; $47a8: $bb
    ld c, l                                       ; $47a9: $4d
    inc sp                                        ; $47aa: $33
    sbc d                                         ; $47ab: $9a
    rst $00                                       ; $47ac: $c7
    xor [hl]                                      ; $47ad: $ae
    call Call_04b_62bd                            ; $47ae: $cd $bd $62
    ld c, h                                       ; $47b1: $4c
    ccf                                           ; $47b2: $3f
    dec e                                         ; $47b3: $1d
    dec [hl]                                      ; $47b4: $35
    rst $10                                       ; $47b5: $d7
    ld [hl], d                                    ; $47b6: $72
    nop                                           ; $47b7: $00
    add c                                         ; $47b8: $81
    dec h                                         ; $47b9: $25
    and e                                         ; $47ba: $a3
    add d                                         ; $47bb: $82
    add a                                         ; $47bc: $87
    sbc l                                         ; $47bd: $9d
    adc c                                         ; $47be: $89
    and d                                         ; $47bf: $a2
    ld [hl-], a                                   ; $47c0: $32
    ld h, $68                                     ; $47c1: $26 $68
    xor $84                                       ; $47c3: $ee $84
    adc d                                         ; $47c5: $8a
    rst $00                                       ; $47c6: $c7
    dec e                                         ; $47c7: $1d
    ld b, h                                       ; $47c8: $44
    rst $18                                       ; $47c9: $df
    dec sp                                        ; $47ca: $3b
    ldh a, [rHDMA2]                               ; $47cb: $f0 $52
    inc sp                                        ; $47cd: $33
    ld a, $00                                     ; $47ce: $3e $00
    dec de                                        ; $47d0: $1b
    adc h                                         ; $47d1: $8c
    scf                                           ; $47d2: $37
    sub c                                         ; $47d3: $91
    ld c, e                                       ; $47d4: $4b
    sub c                                         ; $47d5: $91
    ld [hl], c                                    ; $47d6: $71
    ld d, a                                       ; $47d7: $57
    ret c                                         ; $47d8: $d8

    ldh a, [rNR52]                                ; $47d9: $f0 $26
    inc de                                        ; $47db: $13
    ld d, [hl]                                    ; $47dc: $56
    halt                                          ; $47dd: $76
    db $fc                                        ; $47de: $fc
    db $dd                                        ; $47df: $dd
    and [hl]                                      ; $47e0: $a6
    add hl, de                                    ; $47e1: $19

jr_04b_47e2:
    ld c, l                                       ; $47e2: $4d
    jr z, jr_04b_47e2                             ; $47e3: $28 $fd

    ld b, [hl]                                    ; $47e5: $46
    ld a, [hl]                                    ; $47e6: $7e
    ccf                                           ; $47e7: $3f
    ld e, d                                       ; $47e8: $5a
    ld e, b                                       ; $47e9: $58
    sbc [hl]                                      ; $47ea: $9e
    xor b                                         ; $47eb: $a8
    ret z                                         ; $47ec: $c8

    di                                            ; $47ed: $f3
    add $0b                                       ; $47ee: $c6 $0b
    ld sp, $9b58                                  ; $47f0: $31 $58 $9b
    sub e                                         ; $47f3: $93
    daa                                           ; $47f4: $27
    db $d3                                        ; $47f5: $d3
    inc sp                                        ; $47f6: $33
    xor l                                         ; $47f7: $ad
    ld d, $fe                                     ; $47f8: $16 $fe
    ld a, [$fa79]                                 ; $47fa: $fa $79 $fa
    dec b                                         ; $47fd: $05
    pop af                                        ; $47fe: $f1
    ld bc, $8c1b                                  ; $47ff: $01 $1b $8c
    ld h, a                                       ; $4802: $67
    cp a                                          ; $4803: $bf
    sub h                                         ; $4804: $94
    and l                                         ; $4805: $a5
    cp c                                          ; $4806: $b9
    sub [hl]                                      ; $4807: $96
    ld [hl], e                                    ; $4808: $73
    dec [hl]                                      ; $4809: $35
    ld d, $34                                     ; $480a: $16 $34
    ld a, l                                       ; $480c: $7d
    rlca                                          ; $480d: $07
    sbc c                                         ; $480e: $99
    sub c                                         ; $480f: $91
    ld l, a                                       ; $4810: $6f
    add $07                                       ; $4811: $c6 $07
    dec de                                        ; $4813: $1b
    adc h                                         ; $4814: $8c
    rla                                           ; $4815: $17
    ld e, d                                       ; $4816: $5a
    sub c                                         ; $4817: $91
    rst $28                                       ; $4818: $ef
    ld a, $b4                                     ; $4819: $3e $b4
    or b                                          ; $481b: $b0
    cp h                                          ; $481c: $bc
    rst $20                                       ; $481d: $e7
    ld [$552b], sp                                ; $481e: $08 $2b $55
    ld d, a                                       ; $4821: $57
    call nc, Call_04b_7e96                        ; $4822: $d4 $96 $7e
    ld c, a                                       ; $4825: $4f
    sub $6a                                       ; $4826: $d6 $6a
    pop af                                        ; $4828: $f1
    sbc $2a                                       ; $4829: $de $2a
    ld e, c                                       ; $482b: $59
    ld a, [$ef92]                                 ; $482c: $fa $92 $ef
    nop                                           ; $482f: $00
    sbc c                                         ; $4830: $99
    add c                                         ; $4831: $81
    sbc c                                         ; $4832: $99
    dec h                                         ; $4833: $25
    xor b                                         ; $4834: $a8
    add d                                         ; $4835: $82
    ld a, [hl]                                    ; $4836: $7e
    or l                                          ; $4837: $b5
    rst $28                                       ; $4838: $ef
    ld [hl+], a                                   ; $4839: $22
    ld h, e                                       ; $483a: $63
    ld a, [$e6e7]                                 ; $483b: $fa $e7 $e6
    jr nc, @-$17                                  ; $483e: $30 $e7

    ld a, [de]                                    ; $4840: $1a
    ret                                           ; $4841: $c9


    and [hl]                                      ; $4842: $a6
    adc d                                         ; $4843: $8a
    rrca                                          ; $4844: $0f
    dec de                                        ; $4845: $1b
    adc h                                         ; $4846: $8c
    and a                                         ; $4847: $a7
    ld c, d                                       ; $4848: $4a
    cp a                                          ; $4849: $bf
    sub c                                         ; $484a: $91
    rst $18                                       ; $484b: $df
    adc a                                         ; $484c: $8f
    ld d, $9a                                     ; $484d: $16 $9a
    pop de                                        ; $484f: $d1
    inc [hl]                                      ; $4850: $34
    ld d, [hl]                                    ; $4851: $56
    db $e4                                        ; $4852: $e4
    dec sp                                        ; $4853: $3b
    rst $30                                       ; $4854: $f7
    ld a, a                                       ; $4855: $7f
    ld e, d                                       ; $4856: $5a
    sbc e                                         ; $4857: $9b
    adc e                                         ; $4858: $8b
    ld e, d                                       ; $4859: $5a
    adc d                                         ; $485a: $8a
    inc l                                         ; $485b: $2c
    rst $10                                       ; $485c: $d7
    ld e, h                                       ; $485d: $5c
    ld l, b                                       ; $485e: $68
    ld b, [hl]                                    ; $485f: $46
    inc bc                                        ; $4860: $03
    push af                                       ; $4861: $f5
    ld h, [hl]                                    ; $4862: $66
    ret                                           ; $4863: $c9


    ld [hl], l                                    ; $4864: $75
    ld c, e                                       ; $4865: $4b
    sub [hl]                                      ; $4866: $96
    cp [hl]                                       ; $4867: $be
    add h                                         ; $4868: $84
    add hl, bc                                    ; $4869: $09
    add [hl]                                      ; $486a: $86
    cp c                                          ; $486b: $b9
    ld [hl], $17                                  ; $486c: $36 $17
    ld a, [de]                                    ; $486e: $1a
    ld h, c                                       ; $486f: $61
    add d                                         ; $4870: $82
    ld hl, sp+$00                                 ; $4871: $f8 $00
    dec de                                        ; $4873: $1b
    adc h                                         ; $4874: $8c
    scf                                           ; $4875: $37
    sub c                                         ; $4876: $91
    ld e, l                                       ; $4877: $5d
    ld c, h                                       ; $4878: $4c
    ld e, a                                       ; $4879: $5f
    sbc d                                         ; $487a: $9a
    ld l, e                                       ; $487b: $6b
    cp c                                          ; $487c: $b9
    rst $10                                       ; $487d: $d7
    and e                                         ; $487e: $a3
    ld c, d                                       ; $487f: $4a
    adc c                                         ; $4880: $89
    ld d, l                                       ; $4881: $55
    jp $93dc                                      ; $4882: $c3 $dc $93


    ld e, d                                       ; $4885: $5a
    ld [hl], a                                    ; $4886: $77
    xor a                                         ; $4887: $af
    ld b, a                                       ; $4888: $47
    ld h, $9b                                     ; $4889: $26 $9b
    pop af                                        ; $488b: $f1
    ld bc, $8c1b                                  ; $488c: $01 $1b $8c
    and a                                         ; $488f: $a7
    ld c, d                                       ; $4890: $4a
    cp a                                          ; $4891: $bf
    sub c                                         ; $4892: $91
    rst $18                                       ; $4893: $df
    adc a                                         ; $4894: $8f
    cp h                                          ; $4895: $bc
    pop af                                        ; $4896: $f1
    ld b, d                                       ; $4897: $42
    inc c                                         ; $4898: $0c
    halt                                          ; $4899: $76
    xor [hl]                                      ; $489a: $ae
    db $db                                        ; $489b: $db
    call c, $67f9                                 ; $489c: $dc $f9 $67
    ld [hl], e                                    ; $489f: $73
    sub d                                         ; $48a0: $92
    ld e, d                                       ; $48a1: $5a
    or b                                          ; $48a2: $b0
    and $ce                                       ; $48a3: $e6 $ce
    sbc l                                         ; $48a5: $9d
    ld h, d                                       ; $48a6: $62
    ld b, a                                       ; $48a7: $47
    adc $fd                                       ; $48a8: $ce $fd
    sbc a                                         ; $48aa: $9f

jr_04b_48ab:
    and [hl]                                      ; $48ab: $a6
    ret c                                         ; $48ac: $d8

    sub c                                         ; $48ad: $91
    jp Jump_04b_415c                              ; $48ae: $c3 $5c $41


    or l                                          ; $48b1: $b5
    sbc d                                         ; $48b2: $9a
    ld e, e                                       ; $48b3: $5b
    or d                                          ; $48b4: $b2
    db $f4                                        ; $48b5: $f4
    dec h                                         ; $48b6: $25
    rst $18                                       ; $48b7: $df
    ld hl, sp+$00                                 ; $48b8: $f8 $00
    dec de                                        ; $48ba: $1b
    adc h                                         ; $48bb: $8c
    xor e                                         ; $48bc: $ab
    dec a                                         ; $48bd: $3d
    ld [hl], a                                    ; $48be: $77
    jp nc, Jump_04b_788c                          ; $48bf: $d2 $8c $78

    ld h, c                                       ; $48c2: $61
    add l                                         ; $48c3: $85
    dec b                                         ; $48c4: $05
    ld e, l                                       ; $48c5: $5d
    ld a, [hl]                                    ; $48c6: $7e
    or b                                          ; $48c7: $b0
    call nz, $40f2                                ; $48c8: $c4 $f2 $40
    db $dd                                        ; $48cb: $dd
    sbc a                                         ; $48cc: $9f
    cp [hl]                                       ; $48cd: $be
    add hl, de                                    ; $48ce: $19
    rra                                           ; $48cf: $1f
    rst $10                                       ; $48d0: $d7
    cp e                                          ; $48d1: $bb
    or b                                          ; $48d2: $b0
    ld [bc], a                                    ; $48d3: $02
    rrca                                          ; $48d4: $0f
    or h                                          ; $48d5: $b4
    add hl, sp                                    ; $48d6: $39
    ld l, c                                       ; $48d7: $69
    ld b, [hl]                                    ; $48d8: $46
    call c, $8fdc                                 ; $48d9: $dc $dc $8f
    add $9d                                       ; $48dc: $c6 $9d
    ld d, b                                       ; $48de: $50
    adc c                                         ; $48df: $89
    add c                                         ; $48e0: $81
    ld l, h                                       ; $48e1: $6c
    add $07                                       ; $48e2: $c6 $07
    ld d, a                                       ; $48e4: $57
    ld a, e                                       ; $48e5: $7b
    xor $a4                                       ; $48e6: $ee $a4
    add hl, de                                    ; $48e8: $19
    or c                                          ; $48e9: $b1
    ld e, c                                       ; $48ea: $59
    cp d                                          ; $48eb: $ba
    and [hl]                                      ; $48ec: $a6
    rst $20                                       ; $48ed: $e7
    jr nz, jr_04b_48ab                            ; $48ee: $20 $bb

    cp a                                          ; $48f0: $bf
    call nc, $0f8c                                ; $48f1: $d4 $8c $0f
    ld c, a                                       ; $48f4: $4f
    ld l, d                                       ; $48f5: $6a
    ld a, b                                       ; $48f6: $78
    ret c                                         ; $48f7: $d8

    ld [$007b], sp                                ; $48f8: $08 $7b $00
    xor a                                         ; $48fb: $af
    ld b, e                                       ; $48fc: $43
    ld d, h                                       ; $48fd: $54
    ld b, a                                       ; $48fe: $47
    ld [hl], $0f                                  ; $48ff: $36 $0f
    ld l, a                                       ; $4901: $6f
    jp hl                                         ; $4902: $e9


    ld e, a                                       ; $4903: $5f
    reti                                          ; $4904: $d9


    inc a                                         ; $4905: $3c
    nop                                           ; $4906: $00
    ld c, a                                       ; $4907: $4f
    ld d, l                                       ; $4908: $55
    pop bc                                        ; $4909: $c1
    jp $8452                                      ; $490a: $c3 $52 $84


    add hl, bc                                    ; $490d: $09
    ld c, $6f                                     ; $490e: $0e $6f
    sbc e                                         ; $4910: $9b
    pop de                                        ; $4911: $d1
    cp c                                          ; $4912: $b9
    nop                                           ; $4913: $00
    sub h                                         ; $4914: $94
    jr nc, @+$3a                                  ; $4915: $30 $38

    nop                                           ; $4917: $00
    rst $08                                       ; $4918: $cf
    dec [hl]                                      ; $4919: $35
    ld c, e                                       ; $491a: $4b
    and [hl]                                      ; $491b: $a6
    ld d, c                                       ; $491c: $51
    pop af                                        ; $491d: $f1
    ld bc, $35cf                                  ; $491e: $01 $cf $35
    ld a, e                                       ; $4921: $7b
    add $04                                       ; $4922: $c6 $04
    rlca                                          ; $4924: $07
    rst $28                                       ; $4925: $ef
    sbc l                                         ; $4926: $9d
    adc d                                         ; $4927: $8a
    xor c                                         ; $4928: $a9
    cp b                                          ; $4929: $b8
    sbc b                                         ; $492a: $98
    rlca                                          ; $492b: $07
    cpl                                           ; $492c: $2f
    ld a, [hl-]                                   ; $492d: $3a
    ld a, [bc]                                    ; $492e: $0a
    pop hl                                        ; $492f: $e1
    adc [hl]                                      ; $4930: $8e
    ld a, [hl-]                                   ; $4931: $3a
    nop                                           ; $4932: $00
    rst $28                                       ; $4933: $ef
    sbc l                                         ; $4934: $9d
    ld c, d                                       ; $4935: $4a
    ld d, d                                       ; $4936: $52
    jr nc, jr_04b_49b6                            ; $4937: $30 $7d

    nop                                           ; $4939: $00
    ld l, a                                       ; $493a: $6f
    sub b                                         ; $493b: $90
    and l                                         ; $493c: $a5
    ld [de], a                                    ; $493d: $12
    ld hl, $c870                                  ; $493e: $21 $70 $c8
    jr jr_04b_49be                                ; $4941: $18 $7b

    nop                                           ; $4943: $00
    rst $08                                       ; $4944: $cf
    cp h                                          ; $4945: $bc
    or $d6                                        ; $4946: $f6 $d6
    ld bc, $a3af                                  ; $4948: $01 $af $a3
    sub h                                         ; $494b: $94
    push de                                       ; $494c: $d5
    ld [$9700], a                                 ; $494d: $ea $00 $97
    ld b, [hl]                                    ; $4950: $46
    inc h                                         ; $4951: $24
    ld h, [hl]                                    ; $4952: $66
    xor $4f                                       ; $4953: $ee $4f
    ld a, a                                       ; $4955: $7f
    nop                                           ; $4956: $00
    ld l, a                                       ; $4957: $6f
    and e                                         ; $4958: $a3
    ld e, [hl]                                    ; $4959: $5e
    ret nc                                        ; $495a: $d0

    ld a, c                                       ; $495b: $79
    db $e4                                        ; $495c: $e4
    ret                                           ; $495d: $c9


    rrca                                          ; $495e: $0f
    dec [hl]                                      ; $495f: $35
    xor a                                         ; $4960: $af
    inc e                                         ; $4961: $1c
    db $db                                        ; $4962: $db
    halt                                          ; $4963: $76
    db $dd                                        ; $4964: $dd
    ld c, $db                                     ; $4965: $0e $db
    or $52                                        ; $4967: $f6 $52
    ld a, e                                       ; $4969: $7b
    nop                                           ; $496a: $00
    ld d, a                                       ; $496b: $57
    ld a, e                                       ; $496c: $7b
    xor $7c                                       ; $496d: $ee $7c
    dec e                                         ; $496f: $1d
    jp c, Jump_04b_7919                           ; $4970: $da $19 $79

    ret nc                                        ; $4973: $d0

    ld h, a                                       ; $4974: $67
    adc a                                         ; $4975: $8f
    ldh a, [$90]                                  ; $4976: $f0 $90
    push bc                                       ; $4978: $c5
    rra                                           ; $4979: $1f
    ld d, a                                       ; $497a: $57
    dec sp                                        ; $497b: $3b
    xor c                                         ; $497c: $a9
    dec e                                         ; $497d: $1d
    inc a                                         ; $497e: $3c
    scf                                           ; $497f: $37
    rst $20                                       ; $4980: $e7
    ld e, d                                       ; $4981: $5a
    xor $b9                                       ; $4982: $ee $b9
    rst $28                                       ; $4984: $ef
    ld a, b                                       ; $4985: $78
    ld b, b                                       ; $4986: $40
    jr jr_04b_49c9                                ; $4987: $18 $40

    dec sp                                        ; $4989: $3b
    ld h, e                                       ; $498a: $63
    sub b                                         ; $498b: $90
    dec hl                                        ; $498c: $2b
    inc a                                         ; $498d: $3c
    db $e4                                        ; $498e: $e4
    pop bc                                        ; $498f: $c1
    ld d, h                                       ; $4990: $54
    ld h, $ea                                     ; $4991: $26 $ea
    ld l, l                                       ; $4993: $6d
    ld [c], a                                     ; $4994: $e2
    rrca                                          ; $4995: $0f
    ld l, a                                       ; $4996: $6f
    ld h, e                                       ; $4997: $63
    ld [hl], a                                    ; $4998: $77
    ld l, d                                       ; $4999: $6a
    ld a, c                                       ; $499a: $79
    daa                                           ; $499b: $27
    db $e3                                        ; $499c: $e3
    sub l                                         ; $499d: $95
    add [hl]                                      ; $499e: $86
    add hl, sp                                    ; $499f: $39
    rst $18                                       ; $49a0: $df
    ld [hl], e                                    ; $49a1: $73
    daa                                           ; $49a2: $27
    or l                                          ; $49a3: $b5
    add e                                         ; $49a4: $83
    ld l, d                                       ; $49a5: $6a
    ld h, a                                       ; $49a6: $67
    db $e4                                        ; $49a7: $e4
    dec hl                                        ; $49a8: $2b
    cp e                                          ; $49a9: $bb
    adc [hl]                                      ; $49aa: $8e
    pop bc                                        ; $49ab: $c1
    jp nz, $bc0a                                  ; $49ac: $c2 $0a $bc

    inc [hl]                                      ; $49af: $34
    halt                                          ; $49b0: $76
    inc e                                         ; $49b1: $1c
    jp nc, $c818                                  ; $49b2: $d2 $18 $c8

    add c                                         ; $49b5: $81

jr_04b_49b6:
    ld [hl], $87                                  ; $49b6: $36 $87
    cp [hl]                                       ; $49b8: $be
    adc l                                         ; $49b9: $8d
    rrca                                          ; $49ba: $0f
    rst $28                                       ; $49bb: $ef
    ld a, l                                       ; $49bc: $7d
    or a                                          ; $49bd: $b7

jr_04b_49be:
    push de                                       ; $49be: $d5
    di                                            ; $49bf: $f3
    ld [$b90f], sp                                ; $49c0: $08 $0f $b9
    di                                            ; $49c3: $f3
    ld [hl], l                                    ; $49c4: $75
    xor b                                         ; $49c5: $a8
    add hl, hl                                    ; $49c6: $29
    cp $00                                        ; $49c7: $fe $00

jr_04b_49c9:
    rst $10                                       ; $49c9: $d7
    dec sp                                        ; $49ca: $3b
    jp hl                                         ; $49cb: $e9


    inc h                                         ; $49cc: $24
    rst $08                                       ; $49cd: $cf
    or h                                          ; $49ce: $b4
    ld l, [hl]                                    ; $49cf: $6e
    ld [hl], e                                    ; $49d0: $73
    sub c                                         ; $49d1: $91
    add hl, de                                    ; $49d2: $19
    dec l                                         ; $49d3: $2d
    add sp, -$76                                  ; $49d4: $e8 $8a
    and b                                         ; $49d6: $a0
    add hl, sp                                    ; $49d7: $39
    xor c                                         ; $49d8: $a9
    dec e                                         ; $49d9: $1d
    ld d, h                                       ; $49da: $54
    jp $0f8c                                      ; $49db: $c3 $8c $0f


    ld d, a                                       ; $49de: $57
    sbc e                                         ; $49df: $9b
    ld [hl], d                                    ; $49e0: $72
    ld b, c                                       ; $49e1: $41
    rst $20                                       ; $49e2: $e7
    adc l                                         ; $49e3: $8d
    rla                                           ; $49e4: $17
    ld [hl], h                                    ; $49e5: $74
    ld b, c                                       ; $49e6: $41
    ld d, a                                       ; $49e7: $57
    inc b                                         ; $49e8: $04
    call $ed49                                    ; $49e9: $cd $49 $ed
    and b                                         ; $49ec: $a0
    jp c, $c8ff                                   ; $49ed: $da $ff $c8

    rrc a                                         ; $49f0: $cb $0f
    and $62                                       ; $49f2: $e6 $62
    ld a, d                                       ; $49f4: $7a
    cp [hl]                                       ; $49f5: $be
    ld [hl], d                                    ; $49f6: $72
    nop                                           ; $49f7: $00
    cpl                                           ; $49f8: $2f
    ld a, l                                       ; $49f9: $7d
    or b                                          ; $49fa: $b0
    ld [hl], $07                                  ; $49fb: $36 $07
    xor d                                         ; $49fd: $aa
    db $f4                                        ; $49fe: $f4
    rst $20                                       ; $49ff: $e7
    and $7c                                       ; $4a00: $e6 $7c
    dec e                                         ; $4a02: $1d
    ld [de], a                                    ; $4a03: $12
    ld a, a                                       ; $4a04: $7f
    nop                                           ; $4a05: $00
    ld c, a                                       ; $4a06: $4f
    ld [$ec79], a                                 ; $4a07: $ea $79 $ec
    ld b, b                                       ; $4a0a: $40
    sub l                                         ; $4a0b: $95
    cp $dc                                        ; $4a0c: $fe $dc
    sbc h                                         ; $4a0e: $9c
    xor a                                         ; $4a0f: $af
    ld b, e                                       ; $4a10: $43
    call $ba81                                    ; $4a11: $cd $81 $ba
    call Call_000_1d05                            ; $4a14: $cd $05 $1d
    scf                                           ; $4a17: $37
    inc hl                                        ; $4a18: $23
    ld c, h                                       ; $4a19: $4c
    push bc                                       ; $4a1a: $c5
    ld e, l                                       ; $4a1b: $5d
    ld e, b                                       ; $4a1c: $58
    ld e, $fa                                     ; $4a1d: $1e $fa
    halt                                          ; $4a1f: $76
    sbc $78                                       ; $4a20: $de $78
    ld b, c                                       ; $4a22: $41
    ld d, a                                       ; $4a23: $57
    inc b                                         ; $4a24: $04
    call $ed49                                    ; $4a25: $cd $49 $ed
    and b                                         ; $4a28: $a0
    ld a, [de]                                    ; $4a29: $1a
    ld hl, sp-$0b                                 ; $4a2a: $f8 $f5
    inc de                                        ; $4a2c: $13
    ld [$3516], a                                 ; $4a2d: $ea $16 $35
    ld [bc], a                                    ; $4a30: $02
    ccf                                           ; $4a31: $3f
    ld d, h                                       ; $4a32: $54
    pop af                                        ; $4a33: $f1
    ld bc, $7b57                                  ; $4a34: $01 $57 $7b
    xor $7c                                       ; $4a37: $ee $7c
    dec e                                         ; $4a39: $1d
    jp c, Jump_04b_7919                           ; $4a3a: $da $19 $79

    and a                                         ; $4a3d: $a7
    ld [$ad85], a                                 ; $4a3e: $ea $85 $ad
    ld e, [hl]                                    ; $4a41: $5e
    add hl, bc                                    ; $4a42: $09
    db $ec                                        ; $4a43: $ec
    ld b, e                                       ; $4a44: $43
    ld d, e                                       ; $4a45: $53
    ld a, [$7c73]                                 ; $4a46: $fa $73 $7c
    nop                                           ; $4a49: $00
    rst $10                                       ; $4a4a: $d7
    cp e                                          ; $4a4b: $bb
    or e                                          ; $4a4c: $b3
    and e                                         ; $4a4d: $a3
    ld a, c                                       ; $4a4e: $79
    ccf                                           ; $4a4f: $3f
    reti                                          ; $4a50: $d9


    ld d, a                                       ; $4a51: $57
    jp z, $bce6                                   ; $4a52: $ca $e6 $bc

    pop af                                        ; $4a55: $f1
    ld a, h                                       ; $4a56: $7c
    rst $08                                       ; $4a57: $cf
    sbc l                                         ; $4a58: $9d
    xor a                                         ; $4a59: $af
    ld b, e                                       ; $4a5a: $43
    ld [hl], e                                    ; $4a5b: $73
    adc e                                         ; $4a5c: $8b
    ld a, [de]                                    ; $4a5d: $1a
    pop bc                                        ; $4a5e: $c1
    ld a, $34                                     ; $4a5f: $3e $34
    and l                                         ; $4a61: $a5
    ccf                                           ; $4a62: $3f
    rst $28                                       ; $4a63: $ef
    adc h                                         ; $4a64: $8c
    inc e                                         ; $4a65: $1c
    rra                                           ; $4a66: $1f
    rst $28                                       ; $4a67: $ef
    ld d, l                                       ; $4a68: $55
    adc e                                         ; $4a69: $8b
    call nc, $0d2e                                ; $4a6a: $d4 $2e $0d

Call_04b_4a6d:
    db $10                                        ; $4a6d: $10
    ld a, [$bf9d]                                 ; $4a6e: $fa $9d $bf
    inc sp                                        ; $4a71: $33
    rst $18                                       ; $4a72: $df
    ld [hl], e                                    ; $4a73: $73
    rst $20                                       ; $4a74: $e7
    db $eb                                        ; $4a75: $eb
    ret nc                                        ; $4a76: $d0

Jump_04b_4a77:
    ld [de], a                                    ; $4a77: $12
    set 7, e                                      ; $4a78: $cb $fb
    ld d, b                                       ; $4a7a: $50
    ld [hl], e                                    ; $4a7b: $73
    sub d                                         ; $4a7c: $92
    jr nc, jr_04b_4a7f                            ; $4a7d: $30 $00

jr_04b_4a7f:
    call $00f8                                    ; $4a7f: $cd $f8 $00
    rst $08                                       ; $4a82: $cf
    ret nc                                        ; $4a83: $d0

    and h                                         ; $4a84: $a4
    push hl                                       ; $4a85: $e5
    ld e, h                                       ; $4a86: $5c
    res 3, c                                      ; $4a87: $cb $99
    sub $55                                       ; $4a89: $d6 $55
    inc sp                                        ; $4a8b: $33
    ld a, b                                       ; $4a8c: $78
    ret z                                         ; $4a8d: $c8

    and l                                         ; $4a8e: $a5
    ld a, c                                       ; $4a8f: $79
    db $ec                                        ; $4a90: $ec
    inc a                                         ; $4a91: $3c
    jp nz, $ee43                                  ; $4a92: $c2 $43 $ee

    ld a, h                                       ; $4a95: $7c
    dec e                                         ; $4a96: $1d
    jp c, $9919                                   ; $4a97: $da $19 $99

    sbc e                                         ; $4a9a: $9b
    ld [c], a                                     ; $4a9b: $e2
    ld [hl], a                                    ; $4a9c: $77
    dec e                                         ; $4a9d: $1d
    add e                                         ; $4a9e: $83
    ret                                           ; $4a9f: $c9


    rra                                           ; $4aa0: $1f
    pop af                                        ; $4aa1: $f1
    ld c, d                                       ; $4aa2: $4a
    jp $d61c                                      ; $4aa3: $c3 $1c $d6


    sub a                                         ; $4aa6: $97
    ld b, $ea                                     ; $4aa7: $06 $ea
    sbc d                                         ; $4aa9: $9a
    ld e, [hl]                                    ; $4aaa: $5e
    ld h, d                                       ; $4aab: $62
    ld a, c                                       ; $4aac: $79
    sbc b                                         ; $4aad: $98
    pop af                                        ; $4aae: $f1
    ld bc, $7def                                  ; $4aaf: $01 $ef $7d
    or a                                          ; $4ab2: $b7
    push de                                       ; $4ab3: $d5
    di                                            ; $4ab4: $f3
    ld [$b90f], sp                                ; $4ab5: $08 $0f $b9
    di                                            ; $4ab8: $f3
    ld [hl], l                                    ; $4ab9: $75
    xor b                                         ; $4aba: $a8

Jump_04b_4abb:
    add hl, de                                    ; $4abb: $19
    rst $00                                       ; $4abc: $c7
    pop af                                        ; $4abd: $f1
    adc $7f                                       ; $4abe: $ce $7f
    and a                                         ; $4ac0: $a7
    ld h, d                                       ; $4ac1: $62
    ld [hl+], a                                   ; $4ac2: $22
    sbc b                                         ; $4ac3: $98
    jp nc, $b875                                  ; $4ac4: $d2 $75 $b8

    ld e, d                                       ; $4ac7: $5a
    push bc                                       ; $4ac8: $c5
    rlca                                          ; $4ac9: $07
    rst $10                                       ; $4aca: $d7
    dec sp                                        ; $4acb: $3b
    jp hl                                         ; $4acc: $e9


    inc h                                         ; $4acd: $24
    rst $08                                       ; $4ace: $cf
    or h                                          ; $4acf: $b4
    ld l, [hl]                                    ; $4ad0: $6e
    ld [hl], e                                    ; $4ad1: $73
    sub c                                         ; $4ad2: $91
    add hl, de                                    ; $4ad3: $19
    dec l                                         ; $4ad4: $2d
    add sp, -$76                                  ; $4ad5: $e8 $8a
    and b                                         ; $4ad7: $a0
    add hl, sp                                    ; $4ad8: $39
    xor c                                         ; $4ad9: $a9
    dec e                                         ; $4ada: $1d
    ld d, h                                       ; $4adb: $54
    jp $0f8c                                      ; $4adc: $c3 $8c $0f


    rst $28                                       ; $4adf: $ef
    ld a, l                                       ; $4ae0: $7d
    ld h, a                                       ; $4ae1: $67
    ld d, a                                       ; $4ae2: $57
    xor a                                         ; $4ae3: $af
    cp l                                          ; $4ae4: $bd
    ld sp, $49df                                  ; $4ae5: $31 $df $49
    db $ed                                        ; $4ae8: $ed
    and b                                         ; $4ae9: $a0
    sbc d                                         ; $4aea: $9a
    ld l, e                                       ; $4aeb: $6b
    cp c                                          ; $4aec: $b9
    ld c, e                                       ; $4aed: $4b
    inc hl                                        ; $4aee: $23
    ld [de], a                                    ; $4aef: $12
    or e                                          ; $4af0: $b3
    ld d, a                                       ; $4af1: $57
    ld a, $73                                     ; $4af2: $3e $73
    ld l, c                                       ; $4af4: $69
    ld h, a                                       ; $4af5: $67
    inc c                                         ; $4af6: $0c
    ld a, [c]                                     ; $4af7: $f2
    jp z, $dd76                                   ; $4af8: $ca $76 $dd

    and d                                         ; $4afb: $a2
    xor b                                         ; $4afc: $a8
    ld [hl], h                                    ; $4afd: $74
    or c                                          ; $4afe: $b1
    ret z                                         ; $4aff: $c8

    adc h                                         ; $4b00: $8c
    ld d, $56                                     ; $4b01: $16 $56
    sbc e                                         ; $4b03: $9b
    xor c                                         ; $4b04: $a9
    ld hl, sp+$00                                 ; $4b05: $f8 $00
    rst $10                                       ; $4b07: $d7
    dec sp                                        ; $4b08: $3b
    jp hl                                         ; $4b09: $e9


    inc h                                         ; $4b0a: $24
    xor a                                         ; $4b0b: $af
    or h                                          ; $4b0c: $b4
    call nz, Call_000_30f2                        ; $4b0d: $c4 $f2 $30
    cpl                                           ; $4b10: $2f
    ld d, $99                                     ; $4b11: $16 $99
    pop de                                        ; $4b13: $d1
    add d                                         ; $4b14: $82
    ld l, $fc                                     ; $4b15: $2e $fc
    dec d                                         ; $4b17: $15
    pop af                                        ; $4b18: $f1
    cp b                                          ; $4b19: $b8
    add hl, de                                    ; $4b1a: $19
    ld h, c                                       ; $4b1b: $61
    ld a, [hl+]                                   ; $4b1c: $2a
    xor $fe                                       ; $4b1d: $ee $fe
    sub a                                         ; $4b1f: $97
    ld c, e                                       ; $4b20: $4b
    inc l                                         ; $4b21: $2c
    adc a                                         ; $4b22: $8f
    dec sp                                        ; $4b23: $3b
    adc b                                         ; $4b24: $88
    cp [hl]                                       ; $4b25: $be
    ld d, b                                       ; $4b26: $50
    ld l, d                                       ; $4b27: $6a
    xor $47                                       ; $4b28: $ee $47
    dec hl                                        ; $4b2a: $2b
    db $ed                                        ; $4b2b: $ed
    call nc, Call_000_1cd2                        ; $4b2c: $d4 $d2 $1c
    db $e4                                        ; $4b2f: $e4
    ld [hl], c                                    ; $4b30: $71
    daa                                           ; $4b31: $27
    ld a, a                                       ; $4b32: $7f
    call nc, Call_04b_7f14                        ; $4b33: $d4 $14 $7f
    nop                                           ; $4b36: $00
    ld l, a                                       ; $4b37: $6f
    ld h, e                                       ; $4b38: $63
    rla                                           ; $4b39: $17
    sbc d                                         ; $4b3a: $9a
    sbc a                                         ; $4b3b: $9f
    scf                                           ; $4b3c: $37
    ld e, $a8                                     ; $4b3d: $1e $a8
    scf                                           ; $4b3f: $37
    ld a, b                                       ; $4b40: $78
    ret z                                         ; $4b41: $c8

    ld [hl], c                                    ; $4b42: $71
    inc e                                         ; $4b43: $1c
    rst $08                                       ; $4b44: $cf
    rst $30                                       ; $4b45: $f7
    call c, $3af9                                 ; $4b46: $dc $f9 $3a
    or h                                          ; $4b49: $b4
    inc sp                                        ; $4b4a: $33
    ld a, [c]                                     ; $4b4b: $f2
    ld a, $34                                     ; $4b4c: $3e $34
    and l                                         ; $4b4e: $a5
    ccf                                           ; $4b4f: $3f
    rst $00                                       ; $4b50: $c7
    ld [hl], c                                    ; $4b51: $71
    ld a, h                                       ; $4b52: $7c
    nop                                           ; $4b53: $00
    rst $08                                       ; $4b54: $cf
    db $e4                                        ; $4b55: $e4
    ld c, h                                       ; $4b56: $4c
    sbc a                                         ; $4b57: $9f
    ld e, d                                       ; $4b58: $5a
    ld e, d                                       ; $4b59: $5a
    sbc e                                         ; $4b5a: $9b
    sub e                                         ; $4b5b: $93
    jp c, $b541                                   ; $4b5c: $da $41 $b5

    sub e                                         ; $4b5f: $93
    add hl, de                                    ; $4b60: $19
    dec l                                         ; $4b61: $2d
    add sp, $12                                   ; $4b62: $e8 $12
    set 0, e                                      ; $4b64: $cb $c3
    sbc h                                         ; $4b66: $9c
    ld [hl], h                                    ; $4b67: $74
    sub d                                         ; $4b68: $92

Call_04b_4b69:
    db $e3                                        ; $4b69: $e3
    inc bc                                        ; $4b6a: $03
    ld d, a                                       ; $4b6b: $57
    ld a, e                                       ; $4b6c: $7b
    xor $7c                                       ; $4b6d: $ee $7c
    dec e                                         ; $4b6f: $1d
    jp c, Jump_04b_7919                           ; $4b70: $da $19 $79

    ret nc                                        ; $4b73: $d0

    ld h, a                                       ; $4b74: $67
    adc a                                         ; $4b75: $8f
    ldh a, [$90]                                  ; $4b76: $f0 $90
    db $e3                                        ; $4b78: $e3
    inc bc                                        ; $4b79: $03
    rst $08                                       ; $4b7a: $cf
    ld h, e                                       ; $4b7b: $63
    push de                                       ; $4b7c: $d5
    add d                                         ; $4b7d: $82
    ld c, $13                                     ; $4b7e: $0e $13
    ld d, b                                       ; $4b80: $50
    dec a                                         ; $4b81: $3d
    sbc $94                                       ; $4b82: $de $94
    call c, $735c                                 ; $4b84: $dc $5c $73
    sbc [hl]                                      ; $4b87: $9e
    inc e                                         ; $4b88: $1c
    cp c                                          ; $4b89: $b9
    rrca                                          ; $4b8a: $0f
    db $ed                                        ; $4b8b: $ed
    ld [hl], l                                    ; $4b8c: $75
    ld [hl], $e2                                  ; $4b8d: $36 $e2
    db $fd                                        ; $4b8f: $fd
    ld l, b                                       ; $4b90: $68
    rst $20                                       ; $4b91: $e7
    adc [hl]                                      ; $4b92: $8e
    cp e                                          ; $4b93: $bb
    xor b                                         ; $4b94: $a8
    add hl, bc                                    ; $4b95: $09
    sbc d                                         ; $4b96: $9a
    pop af                                        ; $4b97: $f1
    ld bc, $003b                                  ; $4b98: $01 $3b $00
    dec sp                                        ; $4b9b: $3b
    nop                                           ; $4b9c: $00
    rst $08                                       ; $4b9d: $cf
    ret nc                                        ; $4b9e: $d0

    ld b, b                                       ; $4b9f: $40
    add l                                         ; $4ba0: $85
    ld a, [hl-]                                   ; $4ba1: $3a
    call nz, Call_000_2c4b                        ; $4ba2: $c4 $4b $2c
    xor e                                         ; $4ba5: $ab
    ld a, b                                       ; $4ba6: $78
    rst $10                                       ; $4ba7: $d7
    dec sp                                        ; $4ba8: $3b
    and c                                         ; $4ba9: $a1
    ret                                           ; $4baa: $c9


    dec bc                                        ; $4bab: $0b
    ld a, [hl-]                                   ; $4bac: $3a
    ld c, h                                       ; $4bad: $4c
    ld b, b                                       ; $4bae: $40
    push af                                       ; $4baf: $f5
    ld a, b                                       ; $4bb0: $78
    ld d, e                                       ; $4bb1: $53
    ld [hl], d                                    ; $4bb2: $72
    ld [hl], e                                    ; $4bb3: $73
    ld a, [c]                                     ; $4bb4: $f2
    add h                                         ; $4bb5: $84
    ld bc, $07c7                                  ; $4bb6: $01 $c7 $07
    rst $08                                       ; $4bb9: $cf
    ld e, d                                       ; $4bba: $5a
    or d                                          ; $4bbb: $b2
    add hl, hl                                    ; $4bbc: $29
    ld b, [hl]                                    ; $4bbd: $46
    dec b                                         ; $4bbe: $05
    rrca                                          ; $4bbf: $0f
    push bc                                       ; $4bc0: $c5
    rst $28                                       ; $4bc1: $ef
    ld a, d                                       ; $4bc2: $7a
    rla                                           ; $4bc3: $17
    ld d, [hl]                                    ; $4bc4: $56

jr_04b_4bc5:
    ldh [$81], a                                  ; $4bc5: $e0 $81
    ld b, [hl]                                    ; $4bc7: $46
    ld h, [hl]                                    ; $4bc8: $66
    sub d                                         ; $4bc9: $92
    rra                                           ; $4bca: $1f
    dec sp                                        ; $4bcb: $3b
    nop                                           ; $4bcc: $00
    cpl                                           ; $4bcd: $2f
    ld h, c                                       ; $4bce: $61
    sbc l                                         ; $4bcf: $9d
    db $d3                                        ; $4bd0: $d3
    inc d                                         ; $4bd1: $14
    ld d, h                                       ; $4bd2: $54
    ld a, l                                       ; $4bd3: $7d
    nop                                           ; $4bd4: $00
    xor a                                         ; $4bd5: $af
    ld b, e                                       ; $4bd6: $43
    push de                                       ; $4bd7: $d5
    db $d3                                        ; $4bd8: $d3
    and $9b                                       ; $4bd9: $e6 $9b
    rlca                                          ; $4bdb: $07
    ld l, a                                       ; $4bdc: $6f
    sbc b                                         ; $4bdd: $98
    jp hl                                         ; $4bde: $e9


    ld c, c                                       ; $4bdf: $49
    db $ec                                        ; $4be0: $ec
    cp c                                          ; $4be1: $b9
    ld a, c                                       ; $4be2: $79
    nop                                           ; $4be3: $00
    ld c, a                                       ; $4be4: $4f
    db $fd                                        ; $4be5: $fd
    ld [hl], h                                    ; $4be6: $74
    sub h                                         ; $4be7: $94
    add d                                         ; $4be8: $82
    xor d                                         ; $4be9: $aa
    ld [hl], l                                    ; $4bea: $75
    add hl, sp                                    ; $4beb: $39
    xor b                                         ; $4bec: $a8
    ld a, [hl-]                                   ; $4bed: $3a
    nop                                           ; $4bee: $00
    ld c, a                                       ; $4bef: $4f
    dec [hl]                                      ; $4bf0: $35
    rla                                           ; $4bf1: $17
    ld h, b                                       ; $4bf2: $60
    or b                                          ; $4bf3: $b0
    bit 2, d                                      ; $4bf4: $cb $52
    ld d, h                                       ; $4bf6: $54
    adc l                                         ; $4bf7: $8d
    call $9625                                    ; $4bf8: $cd $25 $96
    and a                                         ; $4bfb: $a7
    jr nz, jr_04b_4bc5                            ; $4bfc: $20 $c7

    ld bc, $e367                                  ; $4bfe: $01 $67 $e3
    dec hl                                        ; $4c01: $2b
    ld a, e                                       ; $4c02: $7b
    xor a                                         ; $4c03: $af
    di                                            ; $4c04: $f3
    ld c, l                                       ; $4c05: $4d
    ret                                           ; $4c06: $c9


    di                                            ; $4c07: $f3
    add $3b                                       ; $4c08: $c6 $3b
    ld [hl], a                                    ; $4c0a: $77
    and [hl]                                      ; $4c0b: $a6
    ld [hl], l                                    ; $4c0c: $75
    push de                                       ; $4c0d: $d5
    ld c, [hl]                                    ; $4c0e: $4e
    dec l                                         ; $4c0f: $2d
    rst $00                                       ; $4c10: $c7
    rlca                                          ; $4c11: $07
    sub a                                         ; $4c12: $97
    push hl                                       ; $4c13: $e5
    and c                                         ; $4c14: $a1
    ld e, d                                       ; $4c15: $5a
    ld h, d                                       ; $4c16: $62
    ld a, c                                       ; $4c17: $79
    rst $20                                       ; $4c18: $e7
    ccf                                           ; $4c19: $3f
    sub a                                         ; $4c1a: $97
    jp c, $cfc8                                   ; $4c1b: $da $c8 $cf

    dec de                                        ; $4c1e: $1b
    cpl                                           ; $4c1f: $2f
    or c                                          ; $4c20: $b1
    sub c                                         ; $4c21: $91
    and l                                         ; $4c22: $a5
    ld e, a                                       ; $4c23: $5f
    ld l, b                                       ; $4c24: $68
    ld b, [hl]                                    ; $4c25: $46
    sub e                                         ; $4c26: $93
    sub [hl]                                      ; $4c27: $96
    ld [hl], e                                    ; $4c28: $73
    sub b                                         ; $4c29: $90
    dec d                                         ; $4c2a: $15
    sbc e                                         ; $4c2b: $9b
    ld h, l                                       ; $4c2c: $65
    ld a, h                                       ; $4c2d: $7c
    nop                                           ; $4c2e: $00
    sub a                                         ; $4c2f: $97
    cp a                                          ; $4c30: $bf
    ld [hl], c                                    ; $4c31: $71
    inc e                                         ; $4c32: $1c
    cpl                                           ; $4c33: $2f
    db $fc                                        ; $4c34: $fc
    sbc l                                         ; $4c35: $9d
    ld [hl], h                                    ; $4c36: $74
    ld [hl-], a                                   ; $4c37: $32
    sbc e                                         ; $4c38: $9b
    dec sp                                        ; $4c39: $3b
    ld [hl], a                                    ; $4c3a: $77
    sbc $78                                       ; $4c3b: $de $78
    ld sp, hl                                     ; $4c3d: $f9
    sbc l                                         ; $4c3e: $9d
    ld a, l                                       ; $4c3f: $7d
    or a                                          ; $4c40: $b7
    or h                                          ; $4c41: $b4
    xor b                                         ; $4c42: $a8
    dec sp                                        ; $4c43: $3b
    rla                                           ; $4c44: $17
    add b                                         ; $4c45: $80
    ld h, [hl]                                    ; $4c46: $66
    inc e                                         ; $4c47: $1c
    rst $00                                       ; $4c48: $c7
    rlca                                          ; $4c49: $07
    rst $10                                       ; $4c4a: $d7
    db $e4                                        ; $4c4b: $e4
    ld b, b                                       ; $4c4c: $40
    push af                                       ; $4c4d: $f5
    rst $38                                       ; $4c4e: $ff
    and d                                         ; $4c4f: $a2
    ld a, c                                       ; $4c50: $79
    db $e3                                        ; $4c51: $e3
    sbc l                                         ; $4c52: $9d

Call_04b_4c53:
    cp e                                          ; $4c53: $bb
    sbc a                                         ; $4c54: $9f
    ld l, d                                       ; $4c55: $6a
    ld h, c                                       ; $4c56: $61
    dec hl                                        ; $4c57: $2b
    ld [c], a                                     ; $4c58: $e2
    add c                                         ; $4c59: $81
    add [hl]                                      ; $4c5a: $86
    rst $38                                       ; $4c5b: $ff
    sub e                                         ; $4c5c: $93
    adc a                                         ; $4c5d: $8f
    db $e3                                        ; $4c5e: $e3
    ld hl, sp+$00                                 ; $4c5f: $f8 $00
    sub a                                         ; $4c61: $97
    dec d                                         ; $4c62: $15
    ld d, $60                                     ; $4c63: $16 $60
    or b                                          ; $4c65: $b0
    bit 2, d                                      ; $4c66: $cb $52
    ld d, h                                       ; $4c68: $54
    adc l                                         ; $4c69: $8d
    call $473d                                    ; $4c6a: $cd $3d $47
    jr z, jr_04b_4c81                             ; $4c6d: $28 $12

    ld d, l                                       ; $4c6f: $55
    rrca                                          ; $4c70: $0f
    db $f4                                        ; $4c71: $f4
    adc h                                         ; $4c72: $8c
    call Call_000_072b                            ; $4c73: $cd $2b $07
    rst $10                                       ; $4c76: $d7
    db $e4                                        ; $4c77: $e4
    jp nz, Jump_000_0b0a                          ; $4c78: $c2 $0a $0b

    call Call_04b_5968                            ; $4c7b: $cd $68 $59
    ld e, $e8                                     ; $4c7e: $1e $e8
    add hl, de                                    ; $4c80: $19

jr_04b_4c81:
    sbc e                                         ; $4c81: $9b
    adc e                                         ; $4c82: $8b
    call z, $a768                                 ; $4c83: $cc $68 $a7
    sub [hl]                                      ; $4c86: $96
    sub a                                         ; $4c87: $97
    ld e, b                                       ; $4c88: $58
    sbc $c9                                       ; $4c89: $de $c9
    adc h                                         ; $4c8b: $8c
    halt                                          ; $4c8c: $76
    xor $d2                                       ; $4c8d: $ee $d2
    adc h                                         ; $4c8f: $8c
    ld hl, sp+$77                                 ; $4c90: $f8 $77
    nop                                           ; $4c92: $00
    inc de                                        ; $4c93: $13
    call nz, $cf07                                ; $4c94: $c4 $07 $cf
    reti                                          ; $4c97: $d9


    ld b, d                                       ; $4c98: $42
    inc sp                                        ; $4c99: $33
    jp c, Jump_04b_57f9                           ; $4c9a: $da $f9 $57

    ld [hl], $67                                  ; $4c9d: $36 $67
    ld e, d                                       ; $4c9f: $5a
    dec b                                         ; $4ca0: $05
    dec d                                         ; $4ca1: $15
    inc [hl]                                      ; $4ca2: $34
    ld d, [hl]                                    ; $4ca3: $56
    call nz, $aef1                                ; $4ca4: $c4 $f1 $ae
    push de                                       ; $4ca7: $d5
    sub a                                         ; $4ca8: $97
    jp c, $f45c                                   ; $4ca9: $da $5c $f4

    bit 6, e                                      ; $4cac: $cb $73
    ld c, e                                       ; $4cae: $4b
    ld h, a                                       ; $4caf: $67
    adc e                                         ; $4cb0: $8b
    xor d                                         ; $4cb1: $aa
    sbc e                                         ; $4cb2: $9b
    ld [hl], e                                    ; $4cb3: $73
    rst $38                                       ; $4cb4: $ff
    and a                                         ; $4cb5: $a7
    add l                                         ; $4cb6: $85
    push hl                                       ; $4cb7: $e5
    ld e, l                                       ; $4cb8: $5d
    sbc d                                         ; $4cb9: $9a
    sub $ff                                       ; $4cba: $d6 $ff
    call nc, $a8a6                                ; $4cbc: $d4 $a6 $a8
    ld d, l                                       ; $4cbf: $55
    inc e                                         ; $4cc0: $1c
    rra                                           ; $4cc1: $1f
    xor a                                         ; $4cc2: $af
    ret nc                                        ; $4cc3: $d0

    rla                                           ; $4cc4: $17
    ld e, d                                       ; $4cc5: $5a
    ld e, d                                       ; $4cc6: $5a
    ret nc                                        ; $4cc7: $d0

    sbc l                                         ; $4cc8: $9d
    ld a, [bc]                                    ; $4cc9: $0a
    add $9d                                       ; $4cca: $c6 $9d
    jp nc, $420e                                  ; $4ccc: $d2 $0e $42

    call Call_04b_7b2b                            ; $4ccf: $cd $2b $7b
    pop bc                                        ; $4cd2: $c1
    ld [de], a                                    ; $4cd3: $12
    xor b                                         ; $4cd4: $a8
    ld b, l                                       ; $4cd5: $45
    jr jr_04b_4d24                                ; $4cd6: $18 $4c

    cp $68                                        ; $4cd8: $fe $68
    ld b, c                                       ; $4cda: $41
    sub a                                         ; $4cdb: $97
    ld e, b                                       ; $4cdc: $58
    adc [hl]                                      ; $4cdd: $8e
    ld [hl], a                                    ; $4cde: $77
    adc c                                         ; $4cdf: $89
    and l                                         ; $4ce0: $a5
    add hl, bc                                    ; $4ce1: $09
    ld a, [de]                                    ; $4ce2: $1a
    inc bc                                        ; $4ce3: $03
    or a                                          ; $4ce4: $b7
    add hl, sp                                    ; $4ce5: $39
    rst $30                                       ; $4ce6: $f7
    ld a, a                                       ; $4ce7: $7f
    ld e, d                                       ; $4ce8: $5a
    ld e, b                                       ; $4ce9: $58
    sbc [hl]                                      ; $4cea: $9e
    xor b                                         ; $4ceb: $a8
    ld d, l                                       ; $4cec: $55
    inc e                                         ; $4ced: $1c
    sbc c                                         ; $4cee: $99
    jp hl                                         ; $4cef: $e9


    ld hl, sp+$00                                 ; $4cf0: $f8 $00
    rst $10                                       ; $4cf2: $d7
    db $e4                                        ; $4cf3: $e4
    add h                                         ; $4cf4: $84
    sbc [hl]                                      ; $4cf5: $9e
    call z, $7ce4                                 ; $4cf6: $cc $e4 $7c
    rst $08                                       ; $4cf9: $cf
    sbc l                                         ; $4cfa: $9d
    xor a                                         ; $4cfb: $af
    ld b, e                                       ; $4cfc: $43
    db $e3                                        ; $4cfd: $e3
    rst $08                                       ; $4cfe: $cf
    sbc $78                                       ; $4cff: $de $78
    ld h, c                                       ; $4d01: $61
    ld a, c                                       ; $4d02: $79
    and d                                         ; $4d03: $a2
    ld d, [hl]                                    ; $4d04: $56
    ld [hl], c                                    ; $4d05: $71
    ld h, h                                       ; $4d06: $64
    and [hl]                                      ; $4d07: $a6
    daa                                           ; $4d08: $27

jr_04b_4d09:
    inc d                                         ; $4d09: $14
    ld h, b                                       ; $4d0a: $60
    ld [hl], d                                    ; $4d0b: $72
    cp h                                          ; $4d0c: $bc
    xor e                                         ; $4d0d: $ab
    or a                                          ; $4d0e: $b7
    pop de                                        ; $4d0f: $d1
    and d                                         ; $4d10: $a2
    ld e, a                                       ; $4d11: $5f
    ld l, [hl]                                    ; $4d12: $6e
    xor [hl]                                      ; $4d13: $ae
    or h                                          ; $4d14: $b4
    call nz, $f2f2                                ; $4d15: $c4 $f2 $f2
    add e                                         ; $4d18: $83
    ld b, l                                       ; $4d19: $45
    dec l                                         ; $4d1a: $2d
    db $ed                                        ; $4d1b: $ed
    ld d, h                                       ; $4d1c: $54
    and b                                         ; $4d1d: $a0
    or h                                          ; $4d1e: $b4
    add e                                         ; $4d1f: $83
    ld d, b                                       ; $4d20: $50
    inc sp                                        ; $4d21: $33
    ld a, $00                                     ; $4d22: $3e $00

jr_04b_4d24:
    ld d, a                                       ; $4d24: $57
    call $f848                                    ; $4d25: $cd $48 $f8
    ld l, [hl]                                    ; $4d28: $6e
    ld [hl], e                                    ; $4d29: $73
    xor b                                         ; $4d2a: $a8
    sub [hl]                                      ; $4d2b: $96
    ld e, b                                       ; $4d2c: $58
    ld d, [hl]                                    ; $4d2d: $56
    db $e3                                        ; $4d2e: $e3
    xor $8c                                       ; $4d2f: $ee $8c
    call $5d8b                                    ; $4d31: $cd $8b $5d
    ld a, [de]                                    ; $4d34: $1a
    sub c                                         ; $4d35: $91
    sbc b                                         ; $4d36: $98
    ld a, b                                       ; $4d37: $78
    ld c, a                                       ; $4d38: $4f
    ld l, d                                       ; $4d39: $6a
    db $dd                                        ; $4d3a: $dd
    ld b, c                                       ; $4d3b: $41
    ld d, h                                       ; $4d3c: $54
    ld e, $aa                                     ; $4d3d: $1e $aa
    add l                                         ; $4d3f: $85
    ld e, b                                       ; $4d40: $58
    ld [de], a                                    ; $4d41: $12
    sbc d                                         ; $4d42: $9a
    push af                                       ; $4d43: $f5
    ld c, l                                       ; $4d44: $4d
    pop af                                        ; $4d45: $f1
    rlca                                          ; $4d46: $07
    rst $10                                       ; $4d47: $d7
    dec sp                                        ; $4d48: $3b
    ld h, b                                       ; $4d49: $60
    add $03                                       ; $4d4a: $c6 $03
    ld l, l                                       ; $4d4c: $6d
    adc [hl]                                      ; $4d4d: $8e
    ld a, [hl]                                    ; $4d4e: $7e
    inc d                                         ; $4d4f: $14
    ld d, l                                       ; $4d50: $55
    ld [hl], e                                    ; $4d51: $73
    ret nc                                        ; $4d52: $d0

    ld b, l                                       ; $4d53: $45
    ld h, $9b                                     ; $4d54: $26 $9b
    ld [hl], e                                    ; $4d56: $73
    dec l                                         ; $4d57: $2d
    rla                                           ; $4d58: $17
    ld h, c                                       ; $4d59: $61
    sub b                                         ; $4d5a: $90
    adc e                                         ; $4d5b: $8b
    cp $c7                                        ; $4d5c: $fe $c7
    ld e, [hl]                                    ; $4d5e: $5e
    ld c, h                                       ; $4d5f: $4c
    pop bc                                        ; $4d60: $c1
    jp $9d9f                                      ; $4d61: $c3 $9f $9d


    inc l                                         ; $4d64: $2c
    ret                                           ; $4d65: $c9


    ld d, d                                       ; $4d66: $52
    cp h                                          ; $4d67: $bc
    and a                                         ; $4d68: $a7
    inc [hl]                                      ; $4d69: $34
    ld b, $a2                                     ; $4d6a: $06 $a2
    add l                                         ; $4d6c: $85
    ld e, b                                       ; $4d6d: $58
    ld [de], a                                    ; $4d6e: $12
    cp [hl]                                       ; $4d6f: $be
    db $db                                        ; $4d70: $db
    sbc h                                         ; $4d71: $9c
    ei                                            ; $4d72: $fb
    ccf                                           ; $4d73: $3f
    dec l                                         ; $4d74: $2d
    add sp, $44                                   ; $4d75: $e8 $44
    xor l                                         ; $4d77: $ad
    ld [c], a                                     ; $4d78: $e2
    jr c, jr_04b_4d09                             ; $4d79: $38 $8e

    rst $20                                       ; $4d7b: $e7
    adc l                                         ; $4d7c: $8d
    add a                                         ; $4d7d: $87
    ld l, d                                       ; $4d7e: $6a
    ld h, c                                       ; $4d7f: $61
    ld a, c                                       ; $4d80: $79
    ld c, l                                       ; $4d81: $4d
    inc b                                         ; $4d82: $04
    sbc l                                         ; $4d83: $9d
    scf                                           ; $4d84: $37
    ld e, $ca                                     ; $4d85: $1e $ca
    ld bc, $87db                                  ; $4d87: $01 $db $87
    ret z                                         ; $4d8a: $c8

    pop bc                                        ; $4d8b: $c1
    xor b                                         ; $4d8c: $a8
    add hl, de                                    ; $4d8d: $19
    rra                                           ; $4d8e: $1f
    rst $10                                       ; $4d8f: $d7
    cp e                                          ; $4d90: $bb
    ret z                                         ; $4d91: $c8

Call_04b_4d92:
    ret nz                                        ; $4d92: $c0

    ld c, d                                       ; $4d93: $4a
    rrc a                                         ; $4d94: $cb $0f
    sub [hl]                                      ; $4d96: $96
    ld e, b                                       ; $4d97: $58
    ld e, $66                                     ; $4d98: $1e $66
    cp h                                          ; $4d9a: $bc
    xor e                                         ; $4d9b: $ab
    sbc l                                         ; $4d9c: $9d
    ld e, e                                       ; $4d9d: $5b
    ld d, d                                       ; $4d9e: $52
    ld e, b                                       ; $4d9f: $58
    jp nz, $cd04                                  ; $4da0: $c2 $04 $cd

    sbc l                                         ; $4da3: $9d
    ld sp, $e5c8                                  ; $4da4: $31 $c8 $e5
    rlca                                          ; $4da7: $07
    ld c, e                                       ; $4da8: $4b
    inc l                                         ; $4da9: $2c
    ld c, a                                       ; $4daa: $4f
    ld l, d                                       ; $4dab: $6a
    inc sp                                        ; $4dac: $33
    adc d                                         ; $4dad: $8a
    rrca                                          ; $4dae: $0f
    rst $10                                       ; $4daf: $d7
    dec sp                                        ; $4db0: $3b
    reti                                          ; $4db1: $d9


    call c, $e687                                 ; $4db2: $dc $87 $e6
    sub c                                         ; $4db5: $91
    rst $00                                       ; $4db6: $c7
    jr jr_04b_4e31                                ; $4db7: $18 $78

    push bc                                       ; $4db9: $c5
    ld [$b12d], sp                                ; $4dba: $08 $2d $b1
    inc a                                         ; $4dbd: $3c
    pop bc                                        ; $4dbe: $c1
    ld b, c                                       ; $4dbf: $41
    ld l, [hl]                                    ; $4dc0: $6e
    adc [hl]                                      ; $4dc1: $8e
    ld a, [hl]                                    ; $4dc2: $7e
    ld a, [$a9f3]                                 ; $4dc3: $fa $f3 $a9
    db $e4                                        ; $4dc6: $e4
    ld [hl], $2f                                  ; $4dc7: $36 $2f
    halt                                          ; $4dc9: $76
    ld l, c                                       ; $4dca: $69
    ld b, h                                       ; $4dcb: $44
    ld h, d                                       ; $4dcc: $62
    ld [c], a                                     ; $4dcd: $e2
    inc bc                                        ; $4dce: $03
    sub a                                         ; $4dcf: $97
    dec d                                         ; $4dd0: $15
    ld d, $60                                     ; $4dd1: $16 $60
    or b                                          ; $4dd3: $b0
    bit 2, d                                      ; $4dd4: $cb $52
    ld d, h                                       ; $4dd6: $54
    adc l                                         ; $4dd7: $8d
    call $9e81                                    ; $4dd8: $cd $81 $9e
    or c                                          ; $4ddb: $b1
    ld a, c                                       ; $4ddc: $79
    push hl                                       ; $4ddd: $e5
    nop                                           ; $4dde: $00
    rst $10                                       ; $4ddf: $d7
    db $e4                                        ; $4de0: $e4
    cp h                                          ; $4de1: $bc
    pop bc                                        ; $4de2: $c1
    ld b, e                                       ; $4de3: $43
    sbc [hl]                                      ; $4de4: $9e
    scf                                           ; $4de5: $37
    ld e, $ca                                     ; $4de6: $1e $ca
    add l                                         ; $4de8: $85
    ld h, [hl]                                    ; $4de9: $66
    or h                                          ; $4dea: $b4
    inc l                                         ; $4deb: $2c
    rst $28                                       ; $4dec: $ef
    ld l, h                                       ; $4ded: $6c
    ld h, b                                       ; $4dee: $60
    ld [bc], a                                    ; $4def: $02
    ld b, $f3                                     ; $4df0: $06 $f3
    sbc l                                         ; $4df2: $9d
    ret nc                                        ; $4df3: $d0

    ld [hl], e                                    ; $4df4: $73
    inc hl                                        ; $4df5: $23
    ld l, c                                       ; $4df6: $69
    adc d                                         ; $4df7: $8a
    db $e3                                        ; $4df8: $e3
    inc bc                                        ; $4df9: $03
    sub a                                         ; $4dfa: $97
    ld h, [hl]                                    ; $4dfb: $66
    or h                                          ; $4dfc: $b4
    xor h                                         ; $4dfd: $ac
    and e                                         ; $4dfe: $a3
    halt                                          ; $4dff: $76
    ld b, [hl]                                    ; $4e00: $46
    sbc $c9                                       ; $4e01: $de $c9
    adc h                                         ; $4e03: $8c
    inc d                                         ; $4e04: $14
    inc a                                         ; $4e05: $3c
    call nz, Call_000_3520                        ; $4e06: $c4 $20 $35
    ld b, $72                                     ; $4e09: $06 $72
    sbc b                                         ; $4e0b: $98
    di                                            ; $4e0c: $f3
    sbc l                                         ; $4e0d: $9d
    ldh a, [$2b]                                  ; $4e0e: $f0 $2b
    sbc e                                         ; $4e10: $9b
    rla                                           ; $4e11: $17
    adc e                                         ; $4e12: $8b
    call z, $2868                                 ; $4e13: $cc $68 $28
    rla                                           ; $4e16: $17
    ld d, [hl]                                    ; $4e17: $56
    jr jr_04b_4e82                                ; $4e18: $18 $68

    ld [hl], e                                    ; $4e1a: $73
    add sp, -$25                                  ; $4e1b: $e8 $db
    sbc l                                         ; $4e1d: $9d
    call z, $be68                                 ; $4e1e: $cc $68 $be
    and e                                         ; $4e21: $a3
    ld a, [hl+]                                   ; $4e22: $2a
    sbc [hl]                                      ; $4e23: $9e
    ld l, e                                       ; $4e24: $6b
    cp c                                          ; $4e25: $b9
    ret nc                                        ; $4e26: $d0

    adc h                                         ; $4e27: $8c
    add [hl]                                      ; $4e28: $86
    ld a, [hl+]                                   ; $4e29: $2a
    ld a, $00                                     ; $4e2a: $3e $00
    cpl                                           ; $4e2c: $2f
    and d                                         ; $4e2d: $a2
    ld d, d                                       ; $4e2e: $52
    ldh a, [rNR10]                                ; $4e2f: $f0 $10

jr_04b_4e31:
    sbc e                                         ; $4e31: $9b
    ld b, e                                       ; $4e32: $43
    or l                                          ; $4e33: $b5
    ld [hl], e                                    ; $4e34: $73
    daa                                           ; $4e35: $27
    ld h, b                                       ; $4e36: $60
    or b                                          ; $4e37: $b0
    rla                                           ; $4e38: $17
    adc l                                         ; $4e39: $8d
    ldh [$d5], a                                  ; $4e3a: $e0 $d5
    ld l, d                                       ; $4e3c: $6a
    sub b                                         ; $4e3d: $90
    ld sp, hl                                     ; $4e3e: $f9
    dec [hl]                                      ; $4e3f: $35
    ld [hl], a                                    ; $4e40: $77
    add $20                                       ; $4e41: $c6 $20
    ld [hl], a                                    ; $4e43: $77
    xor $4c                                       ; $4e44: $ee $4c
    db $eb                                        ; $4e46: $eb
    ld a, [bc]                                    ; $4e47: $0a
    push bc                                       ; $4e48: $c5
    ld sp, hl                                     ; $4e49: $f9
    xor $54                                       ; $4e4a: $ee $54
    jr nc, @+$7b                                  ; $4e4c: $30 $79

    jp nz, $e380                                  ; $4e4e: $c2 $80 $e3

    inc bc                                        ; $4e51: $03
    rst $28                                       ; $4e52: $ef
    ld [hl], l                                    ; $4e53: $75
    ld h, a                                       ; $4e54: $67
    db $e4                                        ; $4e55: $e4
    ld h, c                                       ; $4e56: $61
    adc $77                                       ; $4e57: $ce $77
    ld d, c                                       ; $4e59: $51
    ld d, c                                       ; $4e5a: $51
    dec b                                         ; $4e5b: $05
    ld d, l                                       ; $4e5c: $55
    db $fc                                        ; $4e5d: $fc
    ld d, c                                       ; $4e5e: $51
    sub a                                         ; $4e5f: $97
    cp c                                          ; $4e60: $b9
    cp c                                          ; $4e61: $b9
    rrca                                          ; $4e62: $0f
    call $2d77                                    ; $4e63: $cd $77 $2d
    add hl, hl                                    ; $4e66: $29
    xor $dc                                       ; $4e67: $ee $dc
    sub d                                         ; $4e69: $92
    rst $00                                       ; $4e6a: $c7
    ld b, d                                       ; $4e6b: $42
    sbc b                                         ; $4e6c: $98

Call_04b_4e6d:
    ld h, b                                       ; $4e6d: $60
    and c                                         ; $4e6e: $a1
    add hl, de                                    ; $4e6f: $19
    db $ed                                        ; $4e70: $ed
    add e                                         ; $4e71: $83
    and $1c                                       ; $4e72: $e6 $1c
    db $e4                                        ; $4e74: $e4
    add l                                         ; $4e75: $85
    ld h, [hl]                                    ; $4e76: $66
    or h                                          ; $4e77: $b4
    ldh a, [$7f]                                  ; $4e78: $f0 $7f
    sub c                                         ; $4e7a: $91
    rra                                           ; $4e7b: $1f
    ld [hl], a                                    ; $4e7c: $77
    add c                                         ; $4e7d: $81
    and l                                         ; $4e7e: $a5
    ld l, h                                       ; $4e7f: $6c
    ld e, [hl]                                    ; $4e80: $5e
    xor h                                         ; $4e81: $ac

jr_04b_4e82:
    add hl, sp                                    ; $4e82: $39
    ld l, a                                       ; $4e83: $6f
    inc a                                         ; $4e84: $3c
    ld d, h                                       ; $4e85: $54
    dec bc                                        ; $4e86: $0b
    inc e                                         ; $4e87: $1c
    xor l                                         ; $4e88: $ad
    or c                                          ; $4e89: $b1
    ld d, e                                       ; $4e8a: $53
    ldh a, [$d0]                                  ; $4e8b: $f0 $d0
    pop de                                        ; $4e8d: $d1
    ld e, [hl]                                    ; $4e8e: $5e
    db $fc                                        ; $4e8f: $fc
    ld bc, $872f                                  ; $4e90: $01 $2f $87
    rla                                           ; $4e93: $17
    bit 2, [hl]                                   ; $4e94: $cb $56
    db $fc                                        ; $4e96: $fc
    xor [hl]                                      ; $4e97: $ae
    ld a, [de]                                    ; $4e98: $1a
    rst $28                                       ; $4e99: $ef
    ld h, h                                       ; $4e9a: $64
    ld l, d                                       ; $4e9b: $6a
    ld h, c                                       ; $4e9c: $61
    ld [hl], l                                    ; $4e9d: $75
    inc hl                                        ; $4e9e: $23
    inc sp                                        ; $4e9f: $33
    cp l                                          ; $4ea0: $bd
    call nz, Call_04b_7cf2                        ; $4ea1: $c4 $f2 $7c
    daa                                           ; $4ea4: $27
    call nc, Call_04b_6aff                        ; $4ea5: $d4 $ff $6a
    ld c, h                                       ; $4ea8: $4c
    db $10                                        ; $4ea9: $10
    rra                                           ; $4eaa: $1f
    ld l, a                                       ; $4eab: $6f
    ld [hl], a                                    ; $4eac: $77
    db $10                                        ; $4ead: $10
    add hl, de                                    ; $4eae: $19
    scf                                           ; $4eaf: $37
    ld [hl], a                                    ; $4eb0: $77
    xor d                                         ; $4eb1: $aa
    ld e, [hl]                                    ; $4eb2: $5e
    ld d, h                                       ; $4eb3: $54
    ld e, [hl]                                    ; $4eb4: $5e
    ld l, b                                       ; $4eb5: $68
    ld b, [hl]                                    ; $4eb6: $46
    inc sp                                        ; $4eb7: $33
    xor l                                         ; $4eb8: $ad
    halt                                          ; $4eb9: $76
    xor $b8                                       ; $4eba: $ee $b8
    db $e4                                        ; $4ebc: $e4
    nop                                           ; $4ebd: $00
    ld sp, hl                                     ; $4ebe: $f9
    inc hl                                        ; $4ebf: $23
    adc [hl]                                      ; $4ec0: $8e
    rrca                                          ; $4ec1: $0f
    rst $10                                       ; $4ec2: $d7
    ld [$6d4b], a                                 ; $4ec3: $ea $4b $6d
    ld l, $cd                                     ; $4ec6: $2e $cd
    ld l, b                                       ; $4ec8: $68
    cp [hl]                                       ; $4ec9: $be
    ld a, e                                       ; $4eca: $7b
    adc [hl]                                      ; $4ecb: $8e
    ld a, $77                                     ; $4ecc: $3e $77
    rst $28                                       ; $4ece: $ef
    sbc c                                         ; $4ecf: $99
    ld l, c                                       ; $4ed0: $69
    pop af                                        ; $4ed1: $f1
    cp e                                          ; $4ed2: $bb
    inc l                                         ; $4ed3: $2c
    rst $28                                       ; $4ed4: $ef
    jp nc, $feb4                                  ; $4ed5: $d2 $b4 $fe

    and a                                         ; $4ed8: $a7
    ld [hl], $45                                  ; $4ed9: $36 $45
    xor l                                         ; $4edb: $ad
    ld [c], a                                     ; $4edc: $e2
    ld c, c                                       ; $4edd: $49
    rrc c                                         ; $4ede: $cb $09
    dec b                                         ; $4ee0: $05
    sbc b                                         ; $4ee1: $98
    reti                                          ; $4ee2: $d9


    inc d                                         ; $4ee3: $14
    ld a, a                                       ; $4ee4: $7f
    nop                                           ; $4ee5: $00
    ld l, a                                       ; $4ee6: $6f
    call c, Call_04b_77c5                         ; $4ee7: $dc $c5 $77
    ld sp, $1d7d                                  ; $4eea: $31 $7d $1d
    rst $00                                       ; $4eed: $c7
    pop af                                        ; $4eee: $f1
    ld a, $b4                                     ; $4eef: $3e $b4
    sbc $d5                                       ; $4ef1: $de $d5
    cp e                                          ; $4ef3: $bb
    ld e, d                                       ; $4ef4: $5a
    ld d, d                                       ; $4ef5: $52
    call c, Call_04b_77b9                         ; $4ef6: $dc $b9 $77
    cp c                                          ; $4ef9: $b9
    ld [hl], a                                    ; $4efa: $77
    cp c                                          ; $4efb: $b9
    dec h                                         ; $4efc: $25
    adc a                                         ; $4efd: $8f
    add l                                         ; $4efe: $85
    jr nc, jr_04b_4f42                            ; $4eff: $30 $41

    inc e                                         ; $4f01: $1c
    rst $00                                       ; $4f02: $c7
    ld [hl], e                                    ; $4f03: $73
    ld a, a                                       ; $4f04: $7f
    ld a, [$e379]                                 ; $4f05: $fa $79 $e3
    dec b                                         ; $4f08: $05
    sbc l                                         ; $4f09: $9d
    scf                                           ; $4f0a: $37
    ld e, [hl]                                    ; $4f0b: $5e
    db $f4                                        ; $4f0c: $f4
    xor e                                         ; $4f0d: $ab
    ld a, b                                       ; $4f0e: $78
    and a                                         ; $4f0f: $a7
    ld [hl], d                                    ; $4f10: $72
    inc sp                                        ; $4f11: $33
    ld a, $00                                     ; $4f12: $3e $00
    rst $08                                       ; $4f14: $cf
    ld l, e                                       ; $4f15: $6b
    ld d, e                                       ; $4f16: $53
    xor d                                         ; $4f17: $aa
    ld sp, hl                                     ; $4f18: $f9
    dec e                                         ; $4f19: $1d

jr_04b_4f1a:
    xor a                                         ; $4f1a: $af

Call_04b_4f1b:
    cp b                                          ; $4f1b: $b8
    ld a, c                                       ; $4f1c: $79
    ld sp, $9a81                                  ; $4f1d: $31 $81 $9a
    ld h, b                                       ; $4f20: $60
    add c                                         ; $4f21: $81
    and e                                         ; $4f22: $a3
    dec [hl]                                      ; $4f23: $35
    halt                                          ; $4f24: $76
    ld h, $f2                                     ; $4f25: $26 $f2
    push de                                       ; $4f27: $d5
    sbc b                                         ; $4f28: $98
    and b                                         ; $4f29: $a0
    cp c                                          ; $4f2a: $b9
    sbc a                                         ; $4f2b: $9f
    ld de, $5f7a                                  ; $4f2c: $11 $7a $5f
    xor l                                         ; $4f2f: $ad
    ld sp, $e390                                  ; $4f30: $31 $90 $e3
    sub d                                         ; $4f33: $92
    inc bc                                        ; $4f34: $03
    sub [hl]                                      ; $4f35: $96
    ld h, [hl]                                    ; $4f36: $66
    inc [hl]                                      ; $4f37: $34
    rst $18                                       ; $4f38: $df
    add hl, hl                                    ; $4f39: $29
    ld l, l                                       ; $4f3a: $6d
    ld b, $9d                                     ; $4f3b: $06 $9d
    ld c, l                                       ; $4f3d: $4d
    scf                                           ; $4f3e: $37
    push bc                                       ; $4f3f: $c5
    rra                                           ; $4f40: $1f
    rst $08                                       ; $4f41: $cf

jr_04b_4f42:
    sub h                                         ; $4f42: $94
    inc d                                         ; $4f43: $14
    scf                                           ; $4f44: $37
    jr nc, jr_04b_4f6a                            ; $4f45: $30 $23

    ld [hl], l                                    ; $4f47: $75
    ld sp, $8301                                  ; $4f48: $31 $01 $83
    ld d, l                                       ; $4f4b: $55
    ld c, e                                       ; $4f4c: $4b
    inc sp                                        ; $4f4d: $33
    sbc d                                         ; $4f4e: $9a
    and b                                         ; $4f4f: $a0
    ld sp, $9b70                                  ; $4f50: $31 $70 $9b
    ld [c], a                                     ; $4f53: $e2
    rst $30                                       ; $4f54: $f7
    sub $d7                                       ; $4f55: $d6 $d7
    ld h, b                                       ; $4f57: $60
    ld de, $e206                                  ; $4f58: $11 $06 $e2
    rrca                                          ; $4f5b: $0f
    sub a                                         ; $4f5c: $97
    cp a                                          ; $4f5d: $bf
    ld b, e                                       ; $4f5e: $43
    dec [hl]                                      ; $4f5f: $35
    adc a                                         ; $4f60: $8f
    dec e                                         ; $4f61: $1d
    db $d3                                        ; $4f62: $d3
    rst $10                                       ; $4f63: $d7
    inc de                                        ; $4f64: $13
    jr nc, jr_04b_4f1a                            ; $4f65: $30 $b3

    add hl, bc                                    ; $4f67: $09
    ld a, [hl+]                                   ; $4f68: $2a
    ld a, a                                       ; $4f69: $7f

jr_04b_4f6a:
    call nc, Call_04b_72bc                        ; $4f6a: $d4 $bc $72
    nop                                           ; $4f6d: $00
    cpl                                           ; $4f6e: $2f
    and d                                         ; $4f6f: $a2
    ld d, d                                       ; $4f70: $52
    ldh a, [rNR10]                                ; $4f71: $f0 $10
    sbc e                                         ; $4f73: $9b
    dec sp                                        ; $4f74: $3b
    and c                                         ; $4f75: $a1
    or $dd                                        ; $4f76: $f6 $dd

Call_04b_4f78:
    or e                                          ; $4f78: $b3
    rra                                           ; $4f79: $1f
    add d                                         ; $4f7a: $82
    cp d                                          ; $4f7b: $ba
    ld [hl], $77                                  ; $4f7c: $36 $77
    ld l, c                                       ; $4f7e: $69
    ld e, d                                       ; $4f7f: $5a
    rst $38                                       ; $4f80: $ff
    ld d, e                                       ; $4f81: $53
    sbc e                                         ; $4f82: $9b
    add b                                         ; $4f83: $80
    inc c                                         ; $4f84: $0c
    sbc d                                         ; $4f85: $9a
    add e                                         ; $4f86: $83
    inc e                                         ; $4f87: $1c
    sbc d                                         ; $4f88: $9a
    ld l, [hl]                                    ; $4f89: $6e
    add $07                                       ; $4f8a: $c6 $07
    ld l, a                                       ; $4f8c: $6f
    dec de                                        ; $4f8d: $1b
    inc a                                         ; $4f8e: $3c
    db $e4                                        ; $4f8f: $e4
    or l                                          ; $4f90: $b5
    xor c                                         ; $4f91: $a9
    ld d, [hl]                                    ; $4f92: $56
    or a                                          ; $4f93: $b7
    add hl, de                                    ; $4f94: $19
    rst $00                                       ; $4f95: $c7
    pop af                                        ; $4f96: $f1
    ld l, $4b                                     ; $4f97: $2e $4b
    ld d, c                                       ; $4f99: $51
    dec [hl]                                      ; $4f9a: $35
    ld [hl], $77                                  ; $4f9b: $36 $77
    ld l, d                                       ; $4f9d: $6a
    ld a, c                                       ; $4f9e: $79
    adc c                                         ; $4f9f: $89
    push hl                                       ; $4fa0: $e5
    cp c                                          ; $4fa1: $b9
    sub [hl]                                      ; $4fa2: $96
    di                                            ; $4fa3: $f3
    ret c                                         ; $4fa4: $d8

    ld sp, $2d7d                                  ; $4fa5: $31 $7d $2d
    ld a, [hl]                                    ; $4fa8: $7e
    ld l, a                                       ; $4fa9: $6f
    ld [hl], a                                    ; $4faa: $77
    pop de                                        ; $4fab: $d1
    cpl                                           ; $4fac: $2f

jr_04b_4fad:
    scf                                           ; $4fad: $37
    rla                                           ; $4fae: $17
    sbc d                                         ; $4faf: $9a
    pop de                                        ; $4fb0: $d1
    ld c, [hl]                                    ; $4fb1: $4e
    ld h, [hl]                                    ; $4fb2: $66
    and h                                         ; $4fb3: $a4
    ldh [$a1], a                                  ; $4fb4: $e0 $a1
    ld [hl], e                                    ; $4fb6: $73
    ld l, d                                       ; $4fb7: $6a
    adc d                                         ; $4fb8: $8a
    ccf                                           ; $4fb9: $3f
    nop                                           ; $4fba: $00
    ld l, a                                       ; $4fbb: $6f
    dec de                                        ; $4fbc: $1b
    rst $08                                       ; $4fbd: $cf
    or a                                          ; $4fbe: $b7
    ld a, [hl]                                    ; $4fbf: $7e
    xor a                                         ; $4fc0: $af
    ld h, a                                       ; $4fc1: $67
    dec bc                                        ; $4fc2: $0b
    dec l                                         ; $4fc3: $2d
    call nz, $f092                                ; $4fc4: $c4 $92 $f0
    db $dd                                        ; $4fc7: $dd
    and $95                                       ; $4fc8: $e6 $95
    inc bc                                        ; $4fca: $03
    ld d, a                                       ; $4fcb: $57
    adc l                                         ; $4fcc: $8d
    daa                                           ; $4fcd: $27
    ld a, a                                       ; $4fce: $7f
    call nz, Call_04b_4c53                        ; $4fcf: $c4 $53 $4c
    ld h, $d5                                     ; $4fd2: $26 $d5
    ld c, [hl]                                    ; $4fd4: $4e
    push de                                       ; $4fd5: $d5
    pop af                                        ; $4fd6: $f1
    sbc $ee                                       ; $4fd7: $de $ee
    and d                                         ; $4fd9: $a2
    ld e, a                                       ; $4fda: $5f
    ld l, [hl]                                    ; $4fdb: $6e
    xor $b2                                       ; $4fdc: $ee $b2
    inc d                                         ; $4fde: $14
    ld d, l                                       ; $4fdf: $55
    ld h, e                                       ; $4fe0: $63
    ld [hl], e                                    ; $4fe1: $73
    ld l, $a6                                     ; $4fe2: $2e $a6
    ld l, a                                       ; $4fe4: $6f
    adc d                                         ; $4fe5: $8a
    ccf                                           ; $4fe6: $3f
    nop                                           ; $4fe7: $00
    xor a                                         ; $4fe8: $af
    add hl, sp                                    ; $4fe9: $39
    jr z, @+$19                                   ; $4fea: $28 $17

    ld h, b                                       ; $4fec: $60
    jr nc, jr_04b_501b                            ; $4fed: $30 $2c

    xor e                                         ; $4fef: $ab
    dec hl                                        ; $4ff0: $2b
    rlca                                          ; $4ff1: $07
    rst $10                                       ; $4ff2: $d7
    dec l                                         ; $4ff3: $2d
    adc [hl]                                      ; $4ff4: $8e
    db $e3                                        ; $4ff5: $e3
    ld a, l                                       ; $4ff6: $7d
    rst $00                                       ; $4ff7: $c7
    ld [hl], a                                    ; $4ff8: $77
    rst $20                                       ; $4ff9: $e7
    ld d, e                                       ; $4ffa: $53
    set 5, d                                      ; $4ffb: $cb $ea
    ld c, e                                       ; $4ffd: $4b
    reti                                          ; $4ffe: $d9


Call_04b_4fff:
    ld e, h                                       ; $4fff: $5c
    ld [hl], e                                    ; $5000: $73
    ld l, l                                       ; $5001: $6d
    ld c, $fc                                     ; $5002: $0e $fc
    ld c, a                                       ; $5004: $4f
    ei                                            ; $5005: $fb
    ld d, b                                       ; $5006: $50
    ld d, e                                       ; $5007: $53
    jr nc, jr_04b_4fad                            ; $5008: $30 $a3

    pop af                                        ; $500a: $f1
    ld b, a                                       ; $500b: $47
    ld e, l                                       ; $500c: $5d
    adc [hl]                                      ; $500d: $8e
    rst $30                                       ; $500e: $f7
    ld [hl+], a                                   ; $500f: $22
    ld a, [hl+]                                   ; $5010: $2a
    dec b                                         ; $5011: $05
    rrca                                          ; $5012: $0f
    or c                                          ; $5013: $b1
    cp c                                          ; $5014: $b9
    inc sp                                        ; $5015: $33
    ld b, $b9                                     ; $5016: $06 $b9
    ld d, e                                       ; $5018: $53
    add a                                         ; $5019: $87
    add hl, sp                                    ; $501a: $39

jr_04b_501b:
    rst $18                                       ; $501b: $df
    add hl, bc                                    ; $501c: $09
    adc [hl]                                      ; $501d: $8e
    ld b, e                                       ; $501e: $43
    inc a                                         ; $501f: $3c
    rst $10                                       ; $5020: $d7
    ld [hl], d                                    ; $5021: $72
    rst $28                                       ; $5022: $ef
    sbc l                                         ; $5023: $9d
    call z, Call_000_12fb                         ; $5024: $cc $fb $12
    jp nz, $f8c3                                  ; $5027: $c2 $c3 $f8

    nop                                           ; $502a: $00
    xor a                                         ; $502b: $af
    db $fd                                        ; $502c: $fd
    adc h                                         ; $502d: $8c
    db $e3                                        ; $502e: $e3
    ld a, b                                       ; $502f: $78
    ld [de], a                                    ; $5030: $12
    inc bc                                        ; $5031: $03
    add hl, hl                                    ; $5032: $29
    cp $00                                        ; $5033: $fe $00
    ld l, a                                       ; $5035: $6f
    sbc e                                         ; $5036: $9b
    pop de                                        ; $5037: $d1
    add b                                         ; $5038: $80
    add hl, de                                    ; $5039: $19
    cpl                                           ; $503a: $2f
    call nz, Call_04b_6960                        ; $503b: $c4 $60 $69
    ld b, [hl]                                    ; $503e: $46
    db $fc                                        ; $503f: $fc
    ld a, e                                       ; $5040: $7b
    push hl                                       ; $5041: $e5
    nop                                           ; $5042: $00
    rst $10                                       ; $5043: $d7
    adc d                                         ; $5044: $8a
    push bc                                       ; $5045: $c5
    ld h, d                                       ; $5046: $62
    ld b, e                                       ; $5047: $43
    pop af                                        ; $5048: $f1
    ld [c], a                                     ; $5049: $e2
    push bc                                       ; $504a: $c5
    rra                                           ; $504b: $1f
    ld l, a                                       ; $504c: $6f
    dec de                                        ; $504d: $1b
    rst $28                                       ; $504e: $ef
    ld h, h                                       ; $504f: $64
    ld l, d                                       ; $5050: $6a
    sbc $f8                                       ; $5051: $de $f8
    jp z, $9701                                   ; $5053: $ca $01 $97

    and l                                         ; $5056: $a5
    xor b                                         ; $5057: $a8
    ld a, [de]                                    ; $5058: $1a
    sbc e                                         ; $5059: $9b
    ld [c], a                                     ; $505a: $e2
    ld [hl], a                                    ; $505b: $77
    or l                                          ; $505c: $b5
    ld h, e                                       ; $505d: $63
    ld a, [$617a]                                 ; $505e: $fa $7a $61
    dec hl                                        ; $5061: $2b
    ld [c], a                                     ; $5062: $e2
    add l                                         ; $5063: $85
    ld h, [hl]                                    ; $5064: $66
    inc [hl]                                      ; $5065: $34
    ld d, b                                       ; $5066: $50
    rst $30                                       ; $5067: $f7
    and a                                         ; $5068: $a7
    ld l, a                                       ; $5069: $6f
    adc d                                         ; $506a: $8a
    ccf                                           ; $506b: $3f
    nop                                           ; $506c: $00
    sub a                                         ; $506d: $97
    ld b, [hl]                                    ; $506e: $46
    inc h                                         ; $506f: $24
    and $62                                       ; $5070: $e6 $62
    ld b, c                                       ; $5072: $41
    rla                                           ; $5073: $17
    db $fd                                        ; $5074: $fd
    ld a, [c]                                     ; $5075: $f2
    ld b, d                                       ; $5076: $42
    inc sp                                        ; $5077: $33
    ld a, [de]                                    ; $5078: $1a
    push de                                       ; $5079: $d5
    ei                                            ; $507a: $fb
    and [hl]                                      ; $507b: $a6
    ld hl, sp+$03                                 ; $507c: $f8 $03
    rst $10                                       ; $507e: $d7
    db $e4                                        ; $507f: $e4
    db $e4                                        ; $5080: $e4
    rst $08                                       ; $5081: $cf
    dec b                                         ; $5082: $05
    ld e, l                                       ; $5083: $5d
    ld a, [hl]                                    ; $5084: $7e
    or b                                          ; $5085: $b0
    inc l                                         ; $5086: $2c
    rst $28                                       ; $5087: $ef
    ld b, e                                       ; $5088: $43
    ld h, e                                       ; $5089: $63
    inc c                                         ; $508a: $0c
    db $fc                                        ; $508b: $fc
    xor b                                         ; $508c: $a8
    sbc $37                                       ; $508d: $de $37
    push bc                                       ; $508f: $c5
    rst $28                                       ; $5090: $ef
    ld b, l                                       ; $5091: $45
    dec sp                                        ; $5092: $3b
    sbc a                                         ; $5093: $9f
    xor e                                         ; $5094: $ab
    rst $20                                       ; $5095: $e7
    adc l                                         ; $5096: $8d
    add a                                         ; $5097: $87
    ld [hl], d                                    ; $5098: $72
    ld e, $bb                                     ; $5099: $1e $bb
    or a                                          ; $509b: $b7
    ld de, $e680                                  ; $509c: $11 $80 $e6
    xor c                                         ; $509f: $a9
    jp c, $e5df                                   ; $50a0: $da $df $e5

    ret                                           ; $50a3: $c9


    ld d, d                                       ; $50a4: $52
    ld c, [hl]                                    ; $50a5: $4e
    ret nz                                        ; $50a6: $c0

    ld h, b                                       ; $50a7: $60
    ld d, c                                       ; $50a8: $51
    rla                                           ; $50a9: $17
    sbc d                                         ; $50aa: $9a
    adc a                                         ; $50ab: $8f
    rst $30                                       ; $50ac: $f7
    and d                                         ; $50ad: $a2
    add hl, de                                    ; $50ae: $19
    db $ed                                        ; $50af: $ed
    or d                                          ; $50b0: $b2
    inc d                                         ; $50b1: $14
    ld d, l                                       ; $50b2: $55
    ld h, e                                       ; $50b3: $63
    ld [hl], e                                    ; $50b4: $73
    ld h, a                                       ; $50b5: $67
    db $e4                                        ; $50b6: $e4
    sub l                                         ; $50b7: $95
    sub [hl]                                      ; $50b8: $96
    rra                                           ; $50b9: $1f
    ld c, h                                       ; $50ba: $4c
    ld [hl], c                                    ; $50bb: $71
    db $eb                                        ; $50bc: $eb
    ld d, l                                       ; $50bd: $55
    cp h                                          ; $50be: $bc
    db $eb                                        ; $50bf: $eb
    ld e, l                                       ; $50c0: $5d
    db $f4                                        ; $50c1: $f4
    rrc e                                         ; $50c2: $cb $0b
    call Call_04b_5468                            ; $50c4: $cd $68 $54
    rst $28                                       ; $50c7: $ef
    sbc e                                         ; $50c8: $9b
    ld [c], a                                     ; $50c9: $e2
    rrca                                          ; $50ca: $0f
    rst $10                                       ; $50cb: $d7
    db $e4                                        ; $50cc: $e4
    db $e4                                        ; $50cd: $e4
    rst $08                                       ; $50ce: $cf
    dec b                                         ; $50cf: $05
    ld e, l                                       ; $50d0: $5d
    sub [hl]                                      ; $50d1: $96
    rst $30                                       ; $50d2: $f7
    and c                                         ; $50d3: $a1
    ld sp, $7e06                                  ; $50d4: $31 $06 $7e
    ld d, h                                       ; $50d7: $54
    rst $28                                       ; $50d8: $ef
    sbc e                                         ; $50d9: $9b
    ld [c], a                                     ; $50da: $e2
    rst $30                                       ; $50db: $f7
    and d                                         ; $50dc: $a2
    sbc l                                         ; $50dd: $9d
    rst $08                                       ; $50de: $cf
    push de                                       ; $50df: $d5
    di                                            ; $50e0: $f3
    add $43                                       ; $50e1: $c6 $43
    cp c                                          ; $50e3: $b9
    db $fc                                        ; $50e4: $fc
    ld h, b                                       ; $50e5: $60
    ld l, l                                       ; $50e6: $6d
    xor $6d                                       ; $50e7: $ee $6d
    inc b                                         ; $50e9: $04
    and b                                         ; $50ea: $a0
    ld a, c                                       ; $50eb: $79
    xor d                                         ; $50ec: $aa
    or $9e                                        ; $50ed: $f6 $9e
    inc l                                         ; $50ef: $2c
    push hl                                       ; $50f0: $e5
    inc b                                         ; $50f1: $04
    inc c                                         ; $50f2: $0c
    ld d, $75                                     ; $50f3: $16 $75
    and c                                         ; $50f5: $a1
    ld sp, hl                                     ; $50f6: $f9
    ld a, b                                       ; $50f7: $78
    cpl                                           ; $50f8: $2f
    sbc d                                         ; $50f9: $9a
    pop de                                        ; $50fa: $d1
    add d                                         ; $50fb: $82
    ld l, $fa                                     ; $50fc: $2e $fa
    push hl                                       ; $50fe: $e5
    push hl                                       ; $50ff: $e5
    rlca                                          ; $5100: $07
    ld d, e                                       ; $5101: $53
    call c, $b57a                                 ; $5102: $dc $7a $b5
    bit 2, d                                      ; $5105: $cb $52
    ld d, h                                       ; $5107: $54
    adc l                                         ; $5108: $8d
    call $bd51                                    ; $5109: $cd $51 $bd
    ld l, a                                       ; $510c: $6f
    adc d                                         ; $510d: $8a
    ccf                                           ; $510e: $3f
    nop                                           ; $510f: $00
    sub a                                         ; $5110: $97
    and l                                         ; $5111: $a5
    xor b                                         ; $5112: $a8
    ld a, [de]                                    ; $5113: $1a
    sbc e                                         ; $5114: $9b
    ld [c], a                                     ; $5115: $e2
    ld [hl], a                                    ; $5116: $77
    ld c, l                                       ; $5117: $4d
    call $aeb4                                    ; $5118: $cd $b4 $ae
    ld a, [de]                                    ; $511b: $1a
    ld hl, sp-$0b                                 ; $511c: $f8 $f5
    adc e                                         ; $511e: $8b
    jp z, Jump_04b_7a0b                           ; $511f: $ca $0b $7a

    push hl                                       ; $5122: $e5
    nop                                           ; $5123: $00
    rst $10                                       ; $5124: $d7
    dec l                                         ; $5125: $2d
    adc [hl]                                      ; $5126: $8e
    db $e3                                        ; $5127: $e3
    add c                                         ; $5128: $81
    ld [$45ff], a                                 ; $5129: $ea $ff $45
    ld b, e                                       ; $512c: $43
    add hl, de                                    ; $512d: $19
    rst $00                                       ; $512e: $c7
    pop af                                        ; $512f: $f1
    ld bc, $1b6f                                  ; $5130: $01 $6f $1b
    rrca                                          ; $5133: $0f
    push de                                       ; $5134: $d5
    ld c, d                                       ; $5135: $4a
    ld [hl], c                                    ; $5136: $71
    inc e                                         ; $5137: $1c
    ld c, a                                       ; $5138: $4f
    adc h                                         ; $5139: $8c
    inc hl                                        ; $513a: $23
    cpl                                           ; $513b: $2f
    halt                                          ; $513c: $76
    ld [$c8ce], a                                 ; $513d: $ea $ce $c8
    call c, $e61c                                 ; $5140: $dc $1c $e6
    ld a, h                                       ; $5143: $7c
    rla                                           ; $5144: $17
    dec d                                         ; $5145: $15
    ld d, l                                       ; $5146: $55
    ld d, b                                       ; $5147: $50
    push bc                                       ; $5148: $c5
    rra                                           ; $5149: $1f
    ld [hl], l                                    ; $514a: $75
    sbc c                                         ; $514b: $99
    sbc e                                         ; $514c: $9b
    pop af                                        ; $514d: $f1
    ld bc, $61ef                                  ; $514e: $01 $ef $61
    sub b                                         ; $5151: $90
    dec bc                                        ; $5152: $0b
    inc e                                         ; $5153: $1c
    xor l                                         ; $5154: $ad
    or c                                          ; $5155: $b1
    adc e                                         ; $5156: $8b
    jp z, $df3b                                   ; $5157: $ca $3b $df

    sub [hl]                                      ; $515a: $96
    di                                            ; $515b: $f3
    add h                                         ; $515c: $84
    cp l                                          ; $515d: $bd
    add hl, hl                                    ; $515e: $29
    rst $30                                       ; $515f: $f7
    and c                                         ; $5160: $a1
    sbc l                                         ; $5161: $9d
    ld a, a                                       ; $5162: $7f
    push hl                                       ; $5163: $e5
    ld b, b                                       ; $5164: $40
    add c                                         ; $5165: $81
    ld e, c                                       ; $5166: $59
    ld l, $cd                                     ; $5167: $2e $cd
    ld l, b                                       ; $5169: $68
    ld e, $3b                                     ; $516a: $1e $3b
    and [hl]                                      ; $516c: $a6
    xor a                                         ; $516d: $af
    xor a                                         ; $516e: $af
    db $ec                                        ; $516f: $ec
    ld a, d                                       ; $5170: $7a
    rla                                           ; $5171: $17
    ld d, [hl]                                    ; $5172: $56
    ldh [$81], a                                  ; $5173: $e0 $81
    ld l, d                                       ; $5175: $6a
    ld b, a                                       ; $5176: $47
    adc $1b                                       ; $5177: $ce $1b
    cpl                                           ; $5179: $2f
    add sp, $12                                   ; $517a: $e8 $12
    res 1, e                                      ; $517c: $cb $8b
    ld a, $29                                     ; $517e: $3e $29
    rst $38                                       ; $5180: $ff
    cp a                                          ; $5181: $bf
    sbc a                                         ; $5182: $9f
    ret nc                                        ; $5183: $d0

    ld h, h                                       ; $5184: $64
    pop af                                        ; $5185: $f1
    rlca                                          ; $5186: $07
    rst $10                                       ; $5187: $d7
    db $e4                                        ; $5188: $e4
    ld c, [hl]                                    ; $5189: $4e
    and [hl]                                      ; $518a: $a6
    add [hl]                                      ; $518b: $86
    cp c                                          ; $518c: $b9
    ld [$5c83], sp                                ; $518d: $08 $83 $5c
    sbc e                                         ; $5190: $9b
    inc e                                         ; $5191: $1c
    ld [hl], h                                    ; $5192: $74
    rra                                           ; $5193: $1f
    jp c, Jump_04b_57f9                           ; $5194: $da $f9 $57

    ld c, $14                                     ; $5197: $0e $14
    sbc b                                         ; $5199: $98
    push hl                                       ; $519a: $e5
    jp nc, $e68c                                  ; $519b: $d2 $8c $e6

    dec sp                                        ; $519e: $3b
    and [hl]                                      ; $519f: $a6
    xor a                                         ; $51a0: $af
    db $e3                                        ; $51a1: $e3
    ld e, l                                       ; $51a2: $5d
    sub e                                         ; $51a3: $93
    di                                            ; $51a4: $f3
    ld b, $0f                                     ; $51a5: $06 $0f
    ld a, c                                       ; $51a7: $79
    sbc $78                                       ; $51a8: $de $78
    jr z, @+$19                                   ; $51aa: $28 $17

    ld [hl], $da                                  ; $51ac: $36 $da
    xor c                                         ; $51ae: $a9
    ld a, d                                       ; $51af: $7a
    ld h, [hl]                                    ; $51b0: $66
    cp c                                          ; $51b1: $b9
    di                                            ; $51b2: $f3
    ld [hl], a                                    ; $51b3: $77
    ld h, $9d                                     ; $51b4: $26 $9d
    call z, $bc66                                 ; $51b6: $cc $66 $bc
    ld l, e                                       ; $51b9: $6b
    ld [hl], d                                    ; $51ba: $72
    ld h, c                                       ; $51bb: $61
    add l                                         ; $51bc: $85
    sub l                                         ; $51bd: $95
    sub [hl]                                      ; $51be: $96
    ld d, $55                                     ; $51bf: $16 $55
    ld h, e                                       ; $51c1: $63
    jr nz, @-$17                                  ; $51c2: $20 $e7

    or [hl]                                       ; $51c4: $b6
    ld a, d                                       ; $51c5: $7a
    rst $18                                       ; $51c6: $df
    dec l                                         ; $51c7: $2d
    dec c                                         ; $51c8: $0d
    ld d, h                                       ; $51c9: $54
    rst $30                                       ; $51ca: $f7
    call c, $98bc                                 ; $51cb: $dc $bc $98
    ld c, d                                       ; $51ce: $4a
    add e                                         ; $51cf: $83
    ld a, b                                       ; $51d0: $78
    ld c, [hl]                                    ; $51d1: $4e
    cp h                                          ; $51d2: $bc
    daa                                           ; $51d3: $27
    or l                                          ; $51d4: $b5
    jp c, Jump_000_3f6b                           ; $51d5: $da $6b $3f

    rst $10                                       ; $51d8: $d7
    call c, $11a5                                 ; $51d9: $dc $a5 $11
    adc c                                         ; $51dc: $89
    ld e, c                                       ; $51dd: $59
    call nc, $9625                                ; $51de: $d4 $25 $96
    rla                                           ; $51e1: $17
    sbc d                                         ; $51e2: $9a
    rst $30                                       ; $51e3: $f7
    call $ba81                                    ; $51e4: $cd $81 $ba
    ccf                                           ; $51e7: $3f
    ld a, l                                       ; $51e8: $7d
    di                                            ; $51e9: $f3
    ld h, d                                       ; $51ea: $62
    daa                                           ; $51eb: $27
    ld d, e                                       ; $51ec: $53
    ld b, e                                       ; $51ed: $43
    cp c                                          ; $51ee: $b9
    ld [hl], h                                    ; $51ef: $74
    and $ff                                       ; $51f0: $e6 $ff
    rst $30                                       ; $51f2: $f7
    inc bc                                        ; $51f3: $03
    dec a                                         ; $51f4: $3d
    or l                                          ; $51f5: $b5
    adc d                                         ; $51f6: $8a
    db $e3                                        ; $51f7: $e3
    inc bc                                        ; $51f8: $03
    ld d, a                                       ; $51f9: $57
    dec e                                         ; $51fa: $1d
    dec [hl]                                      ; $51fb: $35
    adc a                                         ; $51fc: $8f
    cp h                                          ; $51fd: $bc
    sub e                                         ; $51fe: $93
    xor c                                         ; $51ff: $a9
    dec b                                         ; $5200: $05
    rst $18                                       ; $5201: $df
    add hl, sp                                    ; $5202: $39
    ld c, l                                       ; $5203: $4d
    pop bc                                        ; $5204: $c1
    ld b, e                                       ; $5205: $43
    ld b, a                                       ; $5206: $47
    ld a, e                                       ; $5207: $7b
    pop af                                        ; $5208: $f1
    ld a, e                                       ; $5209: $7b
    dec bc                                        ; $520a: $0b
    inc bc                                        ; $520b: $03
    pop de                                        ; $520c: $d1
    jr nz, @+$29                                  ; $520d: $20 $27

    cp c                                          ; $520f: $b9
    add hl, sp                                    ; $5210: $39
    inc de                                        ; $5211: $13
    ld sp, $ce55                                  ; $5212: $31 $55 $ce
    db $fd                                        ; $5215: $fd
    sbc a                                         ; $5216: $9f
    or $1c                                        ; $5217: $f6 $1c
    and c                                         ; $5219: $a1
    ld c, b                                       ; $521a: $48
    db $f4                                        ; $521b: $f4
    sbc e                                         ; $521c: $9b
    cp $53                                        ; $521d: $fe $53
    cp h                                          ; $521f: $bc
    scf                                           ; $5220: $37
    ld c, d                                       ; $5221: $4a
    ld c, $58                                     ; $5222: $0e $58
    sbc d                                         ; $5224: $9a
    pop de                                        ; $5225: $d1
    add d                                         ; $5226: $82
    ld c, [hl]                                    ; $5227: $4e
    ld l, c                                       ; $5228: $69
    inc sp                                        ; $5229: $33
    add sp, $6c                                   ; $522a: $e8 $6c
    and [hl]                                      ; $522c: $a6
    db $e3                                        ; $522d: $e3
    inc bc                                        ; $522e: $03
    rst $08                                       ; $522f: $cf
    db $e4                                        ; $5230: $e4
    ld [bc], a                                    ; $5231: $02
    ld b, a                                       ; $5232: $47
    ld l, e                                       ; $5233: $6b
    db $ec                                        ; $5234: $ec
    ld hl, sp-$2c                                 ; $5235: $f8 $d4
    ld e, [hl]                                    ; $5237: $5e
    inc l                                         ; $5238: $2c
    or c                                          ; $5239: $b1
    inc a                                         ; $523a: $3c
    or a                                          ; $523b: $b7
    push de                                       ; $523c: $d5
    ld l, e                                       ; $523d: $6b
    ld c, c                                       ; $523e: $49
    ld [hl], c                                    ; $523f: $71
    inc bc                                        ; $5240: $03
    inc sp                                        ; $5241: $33
    ld d, d                                       ; $5242: $52
    dec sp                                        ; $5243: $3b
    ld a, a                                       ; $5244: $7f
    rst $00                                       ; $5245: $c7
    scf                                           ; $5246: $37
    rla                                           ; $5247: $17
    sub [hl]                                      ; $5248: $96
    rla                                           ; $5249: $17
    ld d, [hl]                                    ; $524a: $56
    db $10                                        ; $524b: $10
    sbc d                                         ; $524c: $9a
    ei                                            ; $524d: $fb
    db $10                                        ; $524e: $10
    ld l, b                                       ; $524f: $68
    cp $a8                                        ; $5250: $fe $a8
    add hl, sp                                    ; $5252: $39
    ld l, $68                                     ; $5253: $2e $68
    xor [hl]                                      ; $5255: $ae
    call Call_04b_5fb9                            ; $5256: $cd $b9 $5f
    sbc a                                         ; $5259: $9f
    ld c, h                                       ; $525a: $4c
    xor c                                         ; $525b: $a9
    and $84                                       ; $525c: $e6 $84
    ld [de], a                                    ; $525e: $12
    ld h, b                                       ; $525f: $60
    ld a, [$de3a]                                 ; $5260: $fa $3a $de
    ld [hl], l                                    ; $5263: $75
    ld b, a                                       ; $5264: $47
    ld l, e                                       ; $5265: $6b
    db $ec                                        ; $5266: $ec
    jp nz, Jump_04b_420a                          ; $5267: $c2 $0a $42

    ld [hl], e                                    ; $526a: $73
    and [hl]                                      ; $526b: $a6
    ld [hl], l                                    ; $526c: $75
    add l                                         ; $526d: $85
    ld [c], a                                     ; $526e: $e2
    ld e, h                                       ; $526f: $5c
    inc c                                         ; $5270: $0c
    ld b, h                                       ; $5271: $44
    add e                                         ; $5272: $83
    sbc h                                         ; $5273: $9c
    db $e4                                        ; $5274: $e4
    and $dc                                       ; $5275: $e6 $dc
    sub d                                         ; $5277: $92
    rst $00                                       ; $5278: $c7
    and [hl]                                      ; $5279: $a6
    sbc a                                         ; $527a: $9f
    ei                                            ; $527b: $fb
    ccf                                           ; $527c: $3f
    db $ed                                        ; $527d: $ed
    add hl, sp                                    ; $527e: $39
    ld b, d                                       ; $527f: $42
    sub c                                         ; $5280: $91
    add sp, $37                                   ; $5281: $e8 $37
    db $fd                                        ; $5283: $fd
    and a                                         ; $5284: $a7
    ld a, b                                       ; $5285: $78
    rst $10                                       ; $5286: $d7
    dec e                                         ; $5287: $1d
    xor l                                         ; $5288: $ad
    or c                                          ; $5289: $b1
    adc e                                         ; $528a: $8b
    ld a, $68                                     ; $528b: $3e $68
    ld c, $98                                     ; $528d: $0e $98
    ld h, l                                       ; $528f: $65
    ld a, h                                       ; $5290: $7c
    nop                                           ; $5291: $00
    ld c, a                                       ; $5292: $4f
    ld a, [de]                                    ; $5293: $1a
    ld a, c                                       ; $5294: $79
    inc b                                         ; $5295: $04
    ld [hl], e                                    ; $5296: $73
    dec l                                         ; $5297: $2d
    rla                                           ; $5298: $17
    ld [hl], h                                    ; $5299: $74
    ccf                                           ; $529a: $3f
    jp c, Jump_000_354f                           ; $529b: $da $4f $35

    rlca                                          ; $529e: $07
    ld a, c                                       ; $529f: $79
    cp [hl]                                       ; $52a0: $be
    add e                                         ; $52a1: $83

Jump_04b_52a2:
    inc e                                         ; $52a2: $1c
    ld l, d                                       ; $52a3: $6a
    rst $00                                       ; $52a4: $c7
    ld e, l                                       ; $52a5: $5d
    ld e, b                                       ; $52a6: $58
    dec c                                         ; $52a7: $0d
    dec [hl]                                      ; $52a8: $35
    db $e3                                        ; $52a9: $e3
    inc bc                                        ; $52aa: $03
    cpl                                           ; $52ab: $2f
    ld a, l                                       ; $52ac: $7d
    ld h, a                                       ; $52ad: $67
    add c                                         ; $52ae: $81
    ld e, l                                       ; $52af: $5d
    inc l                                         ; $52b0: $2c
    ld [hl], b                                    ; $52b1: $70
    or h                                          ; $52b2: $b4
    add $2e                                       ; $52b3: $c6 $2e
    xor h                                         ; $52b5: $ac
    jr nz, jr_04b_52ec                            ; $52b6: $20 $34

    rla                                           ; $52b8: $17
    ld [hl], l                                    ; $52b9: $75
    and b                                         ; $52ba: $a0
    ld d, h                                       ; $52bb: $54
    ld a, a                                       ; $52bc: $7f

Jump_04b_52bd:
    or c                                          ; $52bd: $b1
    sbc a                                         ; $52be: $9f
    sbc $52                                       ; $52bf: $de $52
    xor d                                         ; $52c1: $aa
    add l                                         ; $52c2: $85
    push hl                                       ; $52c3: $e5
    adc c                                         ; $52c4: $89
    adc d                                         ; $52c5: $8a
    inc e                                         ; $52c6: $1c
    rst $00                                       ; $52c7: $c7
    pop af                                        ; $52c8: $f1
    cp h                                          ; $52c9: $bc
    pop af                                        ; $52ca: $f1
    ld d, b                                       ; $52cb: $50
    xor $fc                                       ; $52cc: $ee $fc
    daa                                           ; $52ce: $27
    ld h, b                                       ; $52cf: $60
    ldh [rNR31], a                                ; $52d0: $e0 $1b
    ld e, d                                       ; $52d2: $5a
    ld a, [$d6f9]                                 ; $52d3: $fa $f9 $d6
    rst $00                                       ; $52d6: $c7
    rlca                                          ; $52d7: $07
    ld l, a                                       ; $52d8: $6f
    ld [hl], a                                    ; $52d9: $77
    rst $20                                       ; $52da: $e7
    rst $28                                       ; $52db: $ef
    ld hl, sp-$1a                                 ; $52dc: $f8 $e6
    ld e, h                                       ; $52de: $5c
    jp nz, Jump_04b_6fa6                          ; $52df: $c2 $a6 $6f

    ld l, $fa                                     ; $52e2: $2e $fa
    push hl                                       ; $52e4: $e5
    and $ce                                       ; $52e5: $e6 $ce
    jr @-$1a                                      ; $52e7: $18 $e4

    sbc d                                         ; $52e9: $9a
    xor e                                         ; $52ea: $ab
    sub [hl]                                      ; $52eb: $96

jr_04b_52ec:
    ld h, [hl]                                    ; $52ec: $66
    or h                                          ; $52ed: $b4
    add sp, -$69                                  ; $52ee: $e8 $97
    sbc e                                         ; $52f0: $9b
    dec bc                                        ; $52f1: $0b
    xor e                                         ; $52f2: $ab
    and c                                         ; $52f3: $a1
    ld h, [hl]                                    ; $52f4: $66
    cp h                                          ; $52f5: $bc
    rst $10                                       ; $52f6: $d7
    dec l                                         ; $52f7: $2d

jr_04b_52f8:
    ld l, d                                       ; $52f8: $6a
    xor [hl]                                      ; $52f9: $ae
    call $2509                                    ; $52fa: $cd $09 $25
    ret nz                                        ; $52fd: $c0

    db $f4                                        ; $52fe: $f4
    push af                                       ; $52ff: $f5
    inc b                                         ; $5300: $04
    rlca                                          ; $5301: $07
    cp c                                          ; $5302: $b9
    add hl, sp                                    ; $5303: $39
    ld d, b                                       ; $5304: $50
    or a                                          ; $5305: $b7
    ldh a, [$90]                                  ; $5306: $f0 $90
    and a                                         ; $5308: $a7
    cp b                                          ; $5309: $b8
    ld e, d                                       ; $530a: $5a
    scf                                           ; $530b: $37
    cpl                                           ; $530c: $2f
    add [hl]                                      ; $530d: $86
    ld l, d                                       ; $530e: $6a
    db $10                                        ; $530f: $10
    dec d                                         ; $5310: $15
    adc [hl]                                      ; $5311: $8e
    ld d, l                                       ; $5312: $55
    cp e                                          ; $5313: $bb
    pop hl                                        ; $5314: $e1
    add [hl]                                      ; $5315: $86
    sbc h                                         ; $5316: $9c
    ld l, e                                       ; $5317: $6b
    add hl, sp                                    ; $5318: $39
    adc a                                         ; $5319: $8f
    sbc l                                         ; $531a: $9d
    rst $00                                       ; $531b: $c7
    inc b                                         ; $531c: $04
    call $ec79                                    ; $531d: $cd $79 $ec
    jp c, $609c                                   ; $5320: $da $9c $60

    jp hl                                         ; $5323: $e9


    and a                                         ; $5324: $a7
    and d                                         ; $5325: $a2
    ld a, [$7c66]                                 ; $5326: $fa $66 $7c
    nop                                           ; $5329: $00
    rst $08                                       ; $532a: $cf
    db $e4                                        ; $532b: $e4
    ld e, h                                       ; $532c: $5c
    jp nz, Jump_04b_6fa6                          ; $532d: $c2 $a6 $6f

    xor $ec                                       ; $5330: $ee $ec
    ld l, b                                       ; $5332: $68
    db $dd                                        ; $5333: $dd
    call c, Call_000_3ba9                         ; $5334: $dc $a9 $3b
    ld h, e                                       ; $5337: $63
    sub b                                         ; $5338: $90
    ld [c], a                                     ; $5339: $e2
    rrca                                          ; $533a: $0f
    ld l, a                                       ; $533b: $6f
    or a                                          ; $533c: $b7
    cp h                                          ; $533d: $bc
    and b                                         ; $533e: $a0
    rla                                           ; $533f: $17
    dec sp                                        ; $5340: $3b
    ld [hl], l                                    ; $5341: $75
    and c                                         ; $5342: $a1
    ld a, c                                       ; $5343: $79
    rst $18                                       ; $5344: $df
    ld e, h                                       ; $5345: $5c
    adc b                                         ; $5346: $88
    and l                                         ; $5347: $a5
    dec d                                         ; $5348: $15
    ld b, c                                       ; $5349: $41
    ld d, e                                       ; $534a: $53
    ld h, e                                       ; $534b: $63
    jr nz, jr_04b_5365                            ; $534c: $20 $17

    or l                                          ; $534e: $b5
    inc [hl]                                      ; $534f: $34
    ret z                                         ; $5350: $c8

    ld c, c                                       ; $5351: $49
    ld l, [hl]                                    ; $5352: $6e
    adc $fd                                       ; $5353: $ce $fd
    sbc a                                         ; $5355: $9f
    ld d, $fd                                     ; $5356: $16 $fd
    ld [hl], d                                    ; $5358: $72
    ld [hl], e                                    ; $5359: $73
    sub d                                         ; $535a: $92
    jr nc, jr_04b_535d                            ; $535b: $30 $00

jr_04b_535d:
    call $00f8                                    ; $535d: $cd $f8 $00
    rst $10                                       ; $5360: $d7
    db $e4                                        ; $5361: $e4
    jp nz, Jump_04b_6b0a                          ; $5362: $c2 $0a $6b

jr_04b_5365:
    ld [hl], e                                    ; $5365: $73
    add sp, -$25                                  ; $5366: $e8 $db
    jr c, jr_04b_52f8                             ; $5368: $38 $8e

    ld [hl], a                                    ; $536a: $77
    ld [$5fa2], a                                 ; $536b: $ea $a2 $5f
    ld l, [hl]                                    ; $536e: $6e
    ld l, $2c                                     ; $536f: $2e $2c
    rst $08                                       ; $5371: $cf
    inc l                                         ; $5372: $2c
    ld [hl], a                                    ; $5373: $77
    ld l, c                                       ; $5374: $69
    add b                                         ; $5375: $80
    ret nc                                        ; $5376: $d0

    rst $08                                       ; $5377: $cf
    dec h                                         ; $5378: $25
    inc bc                                        ; $5379: $03
    call $9778                                    ; $537a: $cd $78 $97
    jr jr_04b_538b                                ; $537d: $18 $0c

    push de                                       ; $537f: $d5
    ld a, h                                       ; $5380: $7c
    rst $00                                       ; $5381: $c7
    dec h                                         ; $5382: $25
    ld a, [hl+]                                   ; $5383: $2a
    and [hl]                                      ; $5384: $a6
    call z, Call_04b_43c2                         ; $5385: $cc $c2 $43
    ld e, [hl]                                    ; $5388: $5e
    ld [hl], e                                    ; $5389: $73
    and a                                         ; $538a: $a7

jr_04b_538b:
    sub [hl]                                      ; $538b: $96
    ld h, a                                       ; $538c: $67
    ld e, d                                       ; $538d: $5a
    ld d, a                                       ; $538e: $57
    db $ed                                        ; $538f: $ed
    cp e                                          ; $5390: $bb
    and l                                         ; $5391: $a5
    ld a, c                                       ; $5392: $79
    inc l                                         ; $5393: $2c
    dec [hl]                                      ; $5394: $35
    db $e3                                        ; $5395: $e3
    cp l                                          ; $5396: $bd
    adc b                                         ; $5397: $88
    ld c, d                                       ; $5398: $4a
    pop bc                                        ; $5399: $c1
    ld b, e                                       ; $539a: $43
    ld l, h                                       ; $539b: $6c
    xor $d4                                       ; $539c: $ee $d4
    ld a, [c]                                     ; $539e: $f2
    ld b, d                                       ; $539f: $42
    inc c                                         ; $53a0: $0c
    add [hl]                                      ; $53a1: $86
    ld h, l                                       ; $53a2: $65
    or l                                          ; $53a3: $b5
    rst $28                                       ; $53a4: $ef
    sub [hl]                                      ; $53a5: $96
    and $b1                                       ; $53a6: $e6 $b1
    di                                            ; $53a8: $f3
    add h                                         ; $53a9: $84
    sub l                                         ; $53aa: $95
    rra                                           ; $53ab: $1f
    add d                                         ; $53ac: $82
    db $10                                        ; $53ad: $10
    ld [hl], h                                    ; $53ae: $74
    pop hl                                        ; $53af: $e1
    ld c, a                                       ; $53b0: $4f
    rra                                           ; $53b1: $1f
    rra                                           ; $53b2: $1f
    ld d, a                                       ; $53b3: $57
    call $a168                                    ; $53b4: $cd $68 $a1
    ld sp, hl                                     ; $53b7: $f9
    and c                                         ; $53b8: $a1
    ld e, h                                       ; $53b9: $5c
    ld a, [hl]                                    ; $53ba: $7e
    or b                                          ; $53bb: $b0
    call nz, $ccf2                                ; $53bc: $c4 $f2 $cc
    ld [hl], d                                    ; $53bf: $72
    and b                                         ; $53c0: $a0
    sbc $e0                                       ; $53c1: $de $e0
    ld hl, $7bc7                                  ; $53c3: $21 $c7 $7b
    ld h, $67                                     ; $53c6: $26 $67
    ld e, d                                       ; $53c8: $5a
    dec l                                         ; $53c9: $2d
    call nz, Call_04b_6160                        ; $53ca: $c4 $60 $61
    ld a, c                                       ; $53cd: $79
    adc c                                         ; $53ce: $89
    push hl                                       ; $53cf: $e5
    sbc l                                         ; $53d0: $9d
    ld e, d                                       ; $53d1: $5a
    cp [hl]                                       ; $53d2: $be
    ret c                                         ; $53d3: $d8

    xor c                                         ; $53d4: $a9
    push hl                                       ; $53d5: $e5
    add l                                         ; $53d6: $85
    jr @-$12                                      ; $53d7: $18 $ec

    ld d, h                                       ; $53d9: $54
    cp l                                          ; $53da: $bd
    ld [hl], $17                                  ; $53db: $36 $17
    ld e, c                                       ; $53dd: $59
    ld h, d                                       ; $53de: $62
    ld l, c                                       ; $53df: $69
    ccf                                           ; $53e0: $3f
    ld e, d                                       ; $53e1: $5a
    ret                                           ; $53e2: $c9


    ldh [rNR42], a                                ; $53e3: $e0 $21
    sub a                                         ; $53e5: $97
    add $9d                                       ; $53e6: $c6 $9d
    db $fc                                        ; $53e8: $fc
    ld d, c                                       ; $53e9: $51
    inc sp                                        ; $53ea: $33
    sbc $f3                                       ; $53eb: $de $f3
    ccf                                           ; $53ed: $3f
    jp c, Jump_000_2e87                           ; $53ee: $da $87 $2e

    halt                                          ; $53f1: $76
    ld [$5980], a                                 ; $53f2: $ea $80 $59
    add $07                                       ; $53f5: $c6 $07
    ld d, a                                       ; $53f7: $57
    adc l                                         ; $53f8: $8d
    ld b, a                                       ; $53f9: $47
    sbc a                                         ; $53fa: $9f
    add l                                         ; $53fb: $85
    ld d, [hl]                                    ; $53fc: $56
    pop af                                        ; $53fd: $f1
    jp nz, $c456                                  ; $53fe: $c2 $56 $c4

    adc e                                         ; $5401: $8b
    ld a, [hl-]                                   ; $5402: $3a
    sub c                                         ; $5403: $91
    add $94                                       ; $5404: $c6 $94
    inc bc                                        ; $5406: $03
    dec d                                         ; $5407: $15
    jp z, Jump_04b_78cd                           ; $5408: $ca $cd $78

    sub a                                         ; $540b: $97
    cp a                                          ; $540c: $bf
    adc e                                         ; $540d: $8b
    ld a, [hl]                                    ; $540e: $7e
    ld a, c                                       ; $540f: $79
    ld b, c                                       ; $5410: $41
    add a                                         ; $5411: $87
    cp c                                          ; $5412: $b9
    or b                                          ; $5413: $b0
    ld d, c                                       ; $5414: $51
    or l                                          ; $5415: $b5
    ld c, d                                       ; $5416: $4a
    or e                                          ; $5417: $b3
    ld l, b                                       ; $5418: $68
    and [hl]                                      ; $5419: $a6
    ld [hl], l                                    ; $541a: $75
    rst $20                                       ; $541b: $e7
    add hl, bc                                    ; $541c: $09
    dec sp                                        ; $541d: $3b
    adc a                                         ; $541e: $8f
    ld e, l                                       ; $541f: $5d
    ld hl, sp-$41                                 ; $5420: $f8 $bf
    ret z                                         ; $5422: $c8

    scf                                           ; $5423: $37
    add a                                         ; $5424: $87
    add hl, sp                                    ; $5425: $39
    rst $18                                       ; $5426: $df
    xor c                                         ; $5427: $a9
    ld [$6e7b], sp                                ; $5428: $08 $7b $6e
    ld l, $fc                                     ; $542b: $2e $fc
    adc [hl]                                      ; $542d: $8e

jr_04b_542e:
    ld l, a                                       ; $542e: $6f
    ld e, [hl]                                    ; $542f: $5e
    add hl, sp                                    ; $5430: $39
    nop                                           ; $5431: $00
    xor a                                         ; $5432: $af
    jr jr_04b_542e                                ; $5433: $18 $f9

    sbc a                                         ; $5435: $9f
    rla                                           ; $5436: $17
    inc bc                                        ; $5437: $03
    ld h, [hl]                                    ; $5438: $66
    inc a                                         ; $5439: $3c
    db $d3                                        ; $543a: $d3
    cp d                                          ; $543b: $ba
    ld l, d                                       ; $543c: $6a
    ldh [$d7], a                                  ; $543d: $e0 $d7
    cpl                                           ; $543f: $2f
    ld a, [hl+]                                   ; $5440: $2a
    rst $08                                       ; $5441: $cf
    cp c                                          ; $5442: $b9
    or d                                          ; $5443: $b2
    scf                                           ; $5444: $37
    rla                                           ; $5445: $17
    ld h, d                                       ; $5446: $62
    ld c, d                                       ; $5447: $4a
    adc [hl]                                      ; $5448: $8e
    rrca                                          ; $5449: $0f
    ld c, a                                       ; $544a: $4f
    dec [hl]                                      ; $544b: $35
    rla                                           ; $544c: $17
    ld [hl], h                                    ; $544d: $74
    ld d, c                                       ; $544e: $51
    ld h, a                                       ; $544f: $67
    sub [hl]                                      ; $5450: $96
    dec bc                                        ; $5451: $0b
    rl e                                          ; $5452: $cb $13
    xor d                                         ; $5454: $aa
    jr nz, @-$02                                  ; $5455: $20 $fc

    ld e, c                                       ; $5457: $59
    ld l, d                                       ; $5458: $6a
    ld e, [hl]                                    ; $5459: $5e
    db $ec                                        ; $545a: $ec
    sub l                                         ; $545b: $95
    rst $08                                       ; $545c: $cf
    ld e, h                                       ; $545d: $5c
    cp d                                          ; $545e: $ba
    or d                                          ; $545f: $b2
    rla                                           ; $5460: $17
    ld d, c                                       ; $5461: $51
    add hl, hl                                    ; $5462: $29
    ld a, b                                       ; $5463: $78
    adc b                                         ; $5464: $88
    call $bf45                                    ; $5465: $cd $45 $bf

Call_04b_5468:
    cp h                                          ; $5468: $bc
    and b                                         ; $5469: $a0
    dec sp                                        ; $546a: $3b
    add hl, de                                    ; $546b: $19
    cpl                                           ; $546c: $2f
    ld l, d                                       ; $546d: $6a
    ld l, c                                       ; $546e: $69
    ld h, [hl]                                    ; $546f: $66
    jp hl                                         ; $5470: $e9


    dec c                                         ; $5471: $0d
    ld e, $f2                                     ; $5472: $1e $f2
    add h                                         ; $5474: $84
    ld a, [hl+]                                   ; $5475: $2a
    xor [hl]                                      ; $5476: $ae
    ld l, a                                       ; $5477: $6f
    adc $2c                                       ; $5478: $ce $2c
    rla                                           ; $547a: $17
    ld [hl], h                                    ; $547b: $74
    cp d                                          ; $547c: $ba
    ld c, d                                       ; $547d: $4a
    dec [hl]                                      ; $547e: $35
    rst $10                                       ; $547f: $d7
    call c, Call_04b_78c9                         ; $5480: $dc $c9 $78
    ld de, $2fa6                                  ; $5483: $11 $a6 $2f
    call $e72c                                    ; $5486: $cd $2c $e7
    ld sp, $7341                                  ; $5489: $31 $41 $73
    ld e, $bb                                     ; $548c: $1e $bb
    and b                                         ; $548e: $a0
    inc bc                                        ; $548f: $03
    ld l, l                                       ; $5490: $6d
    ld c, [hl]                                    ; $5491: $4e
    and l                                         ; $5492: $a5
    sub c                                         ; $5493: $91
    sbc d                                         ; $5494: $9a
    ld e, c                                       ; $5495: $59
    ld [bc], a                                    ; $5496: $02
    or e                                          ; $5497: $b3
    adc h                                         ; $5498: $8c
    rrca                                          ; $5499: $0f
    ld d, a                                       ; $549a: $57
    add hl, bc                                    ; $549b: $09
    dec sp                                        ; $549c: $3b
    ld sp, hl                                     ; $549d: $f9
    ld hl, $29a8                                  ; $549e: $21 $a8 $29
    ld a, [hl]                                    ; $54a1: $7e
    sub a                                         ; $54a2: $97
    jr jr_04b_54d1                                ; $54a3: $18 $2c

    ld l, h                                       ; $54a5: $6c
    ld b, l                                       ; $54a6: $45
    cp h                                          ; $54a7: $bc
    xor b                                         ; $54a8: $a8
    cp h                                          ; $54a9: $bc
    ld c, e                                       ; $54aa: $4b
    db $d3                                        ; $54ab: $d3
    ld a, [$da9f]                                 ; $54ac: $fa $9f $da
    inc e                                         ; $54af: $1c
    jr z, jr_04b_54f6                             ; $54b0: $28 $44

    ld e, a                                       ; $54b2: $5f
    ld l, b                                       ; $54b3: $68
    ret                                           ; $54b4: $c9


    rst $28                                       ; $54b5: $ef
    ld b, a                                       ; $54b6: $47
    db $d3                                        ; $54b7: $d3
    sub [hl]                                      ; $54b8: $96
    ld b, b                                       ; $54b9: $40
    call $9e77                                    ; $54ba: $cd $77 $9e
    or b                                          ; $54bd: $b0
    ld a, [c]                                     ; $54be: $f2
    ld b, e                                       ; $54bf: $43
    db $10                                        ; $54c0: $10
    add d                                         ; $54c1: $82
    ld l, $fc                                     ; $54c2: $2e $fc
    jp hl                                         ; $54c4: $e9


    rst $00                                       ; $54c5: $c7
    sbc l                                         ; $54c6: $9d
    db $fc                                        ; $54c7: $fc
    ld d, c                                       ; $54c8: $51
    ld d, e                                       ; $54c9: $53
    db $fc                                        ; $54ca: $fc
    sbc [hl]                                      ; $54cb: $9e
    ret                                           ; $54cc: $c9


    sbc l                                         ; $54cd: $9d
    call z, $c148                                 ; $54ce: $cc $48 $c1

jr_04b_54d1:
    ld b, e                                       ; $54d1: $43
    inc c                                         ; $54d2: $0c
    ld d, d                                       ; $54d3: $52
    ld h, e                                       ; $54d4: $63
    jr nz, jr_04b_54ee                            ; $54d5: $20 $17

    or [hl]                                       ; $54d7: $b6
    ld [hl+], a                                   ; $54d8: $22
    ld e, [hl]                                    ; $54d9: $5e
    adc b                                         ; $54da: $88
    pop bc                                        ; $54db: $c1
    inc a                                         ; $54dc: $3c
    halt                                          ; $54dd: $76
    ld c, h                                       ; $54de: $4c
    ld e, a                                       ; $54df: $5f
    ld c, a                                       ; $54e0: $4f
    ret nz                                        ; $54e1: $c0

    call z, $a826                                 ; $54e2: $cc $26 $a8
    ld [hl], $6e                                  ; $54e5: $36 $6e
    adc $b4                                       ; $54e7: $ce $b4
    sbc d                                         ; $54e9: $9a
    adc c                                         ; $54ea: $89
    ld [hl], h                                    ; $54eb: $74
    pop de                                        ; $54ec: $d1
    ld h, e                                       ; $54ed: $63

jr_04b_54ee:
    ld [bc], a                                    ; $54ee: $02
    dec d                                         ; $54ef: $15
    ld e, c                                       ; $54f0: $59
    cp $3a                                        ; $54f1: $fe $3a
    ld l, $55                                     ; $54f3: $2e $55
    db $fc                                        ; $54f5: $fc

jr_04b_54f6:
    ld e, [hl]                                    ; $54f6: $5e
    jr nc, jr_04b_5567                            ; $54f7: $30 $6e

    xor $d4                                       ; $54f9: $ee $d4
    and l                                         ; $54fb: $a5
    add hl, de                                    ; $54fc: $19
    db $ed                                        ; $54fd: $ed
    jp nc, $a100                                  ; $54fe: $d2 $00 $a1

    rra                                           ; $5501: $1f
    jr nc, @-$33                                  ; $5502: $30 $cb

    ld hl, sp+$00                                 ; $5504: $f8 $00
    sub a                                         ; $5506: $97
    and [hl]                                      ; $5507: $a6
    push af                                       ; $5508: $f5
    rla                                           ; $5509: $17
    cp a                                          ; $550a: $bf
    ld l, e                                       ; $550b: $6b
    ld [hl], d                                    ; $550c: $72
    and c                                         ; $550d: $a1
    ld sp, hl                                     ; $550e: $f9
    dec b                                         ; $550f: $05
    adc [hl]                                      ; $5510: $8e
    sub $d8                                       ; $5511: $d6 $d8
    add l                                         ; $5513: $85
    ld e, b                                       ; $5514: $58
    ld e, d                                       ; $5515: $5a
    ld h, d                                       ; $5516: $62
    ld a, c                                       ; $5517: $79
    ld l, [hl]                                    ; $5518: $6e
    jp hl                                         ; $5519: $e9


    ld h, h                                       ; $551a: $64
    ldh a, [$90]                                  ; $551b: $f0 $90
    rst $20                                       ; $551d: $e7
    ld e, d                                       ; $551e: $5a
    ld a, d                                       ; $551f: $7a
    inc sp                                        ; $5520: $33
    db $10                                        ; $5521: $10
    rra                                           ; $5522: $1f
    xor a                                         ; $5523: $af
    ld h, a                                       ; $5524: $67
    dec bc                                        ; $5525: $0b
    dec l                                         ; $5526: $2d
    ld l, h                                       ; $5527: $6c
    ld b, l                                       ; $5528: $45
    inc a                                         ; $5529: $3c
    ld d, b                                       ; $552a: $50
    adc b                                         ; $552b: $88
    cp [hl]                                       ; $552c: $be
    ret nc                                        ; $552d: $d0

    sub d                                         ; $552e: $92
    rst $18                                       ; $552f: $df
    adc a                                         ; $5530: $8f
    and [hl]                                      ; $5531: $a6
    dec l                                         ; $5532: $2d
    add c                                         ; $5533: $81
    sbc d                                         ; $5534: $9a
    rst $28                                       ; $5535: $ef
    inc a                                         ; $5536: $3c
    ld h, c                                       ; $5537: $61
    push hl                                       ; $5538: $e5
    add a                                         ; $5539: $87
    jr nz, jr_04b_5540                            ; $553a: $20 $04

    ld e, l                                       ; $553c: $5d
    ld hl, sp-$2d                                 ; $553d: $f8 $d3
    rrca                                          ; $553f: $0f

jr_04b_5540:
    ld [hl], e                                    ; $5540: $73
    cp [hl]                                       ; $5541: $be
    ld a, e                                       ; $5542: $7b
    xor e                                         ; $5543: $ab
    inc h                                         ; $5544: $24
    ld a, h                                       ; $5545: $7c
    rst $18                                       ; $5546: $df
    call c, $9673                                 ; $5547: $dc $73 $96
    ld h, b                                       ; $554a: $60
    call c, Call_000_1fc9                         ; $554b: $dc $c9 $1f
    dec [hl]                                      ; $554e: $35
    db $e3                                        ; $554f: $e3
    ld e, l                                       ; $5550: $5d
    db $ed                                        ; $5551: $ed
    jp nz, Jump_04b_7e9f                          ; $5552: $c2 $9f $7e

    ld h, c                                       ; $5555: $61
    dec hl                                        ; $5556: $2b
    ld [c], a                                     ; $5557: $e2
    add l                                         ; $5558: $85
    adc l                                         ; $5559: $8d
    ld b, $2a                                     ; $555a: $06 $2a
    sub h                                         ; $555c: $94
    sbc e                                         ; $555d: $9b
    pop af                                        ; $555e: $f1
    sbc $ee                                       ; $555f: $de $ee
    ld a, h                                       ; $5561: $7c
    ld d, e                                       ; $5562: $53
    ld [hl], $e7                                  ; $5563: $36 $e7
    adc l                                         ; $5565: $8d
    rla                                           ; $5566: $17

jr_04b_5567:
    ld h, d                                       ; $5567: $62
    jr nc, @-$76                                  ; $5568: $30 $88

    cp [hl]                                       ; $556a: $be
    ret nc                                        ; $556b: $d0

    sub d                                         ; $556c: $92
    rst $28                                       ; $556d: $ef
    cp b                                          ; $556e: $b8
    ld d, e                                       ; $556f: $53
    ld e, h                                       ; $5570: $5c
    db $dd                                        ; $5571: $dd
    call c, Call_04b_78c9                         ; $5572: $dc $c9 $78
    cp [hl]                                       ; $5575: $be
    dec bc                                        ; $5576: $0b
    ld a, a                                       ; $5577: $7f
    ld a, [$3d09]                                 ; $5578: $fa $09 $3d
    sbc c                                         ; $557b: $99
    ld c, c                                       ; $557c: $49
    adc [hl]                                      ; $557d: $8e
    rrca                                          ; $557e: $0f
    sub a                                         ; $557f: $97
    cp a                                          ; $5580: $bf
    dec sp                                        ; $5581: $3b
    sub l                                         ; $5582: $95
    sbc e                                         ; $5583: $9b
    dec bc                                        ; $5584: $0b
    inc e                                         ; $5585: $1c
    xor l                                         ; $5586: $ad
    or c                                          ; $5587: $b1
    ld [hl], e                                    ; $5588: $73
    dec l                                         ; $5589: $2d
    rst $30                                       ; $558a: $f7
    adc d                                         ; $558b: $8a
    halt                                          ; $558c: $76
    ld d, b                                       ; $558d: $50
    dec b                                         ; $558e: $05
    cp l                                          ; $558f: $bd
    ld e, b                                       ; $5590: $58
    add h                                         ; $5591: $84
    ld b, c                                       ; $5592: $41
    adc $13                                       ; $5593: $ce $13
    ld d, [hl]                                    ; $5595: $56
    ld a, [hl]                                    ; $5596: $7e
    ld [$d042], sp                                ; $5597: $08 $42 $d0
    add l                                         ; $559a: $85
    ccf                                           ; $559b: $3f
    db $fd                                        ; $559c: $fd
    sub l                                         ; $559d: $95
    ld e, l                                       ; $559e: $5d
    sub e                                         ; $559f: $93
    dec bc                                        ; $55a0: $0b
    dec hl                                        ; $55a1: $2b
    db $ec                                        ; $55a2: $ec
    or [hl]                                       ; $55a3: $b6
    ld l, b                                       ; $55a4: $68
    xor $27                                       ; $55a5: $ee $27
    inc b                                         ; $55a7: $04
    dec bc                                        ; $55a8: $0b
    call z, $ae68                                 ; $55a9: $cc $68 $ae
    push hl                                       ; $55ac: $e5
    ld l, [hl]                                    ; $55ad: $6e
    srl l                                         ; $55ae: $cb $3d
    ld b, a                                       ; $55b0: $47
    ld e, b                                       ; $55b1: $58
    xor c                                         ; $55b2: $a9
    ld a, [hl-]                                   ; $55b3: $3a
    ldh a, [$cf]                                  ; $55b4: $f0 $cf
    and l                                         ; $55b6: $a5
    add c                                         ; $55b7: $81
    jp z, Jump_000_0f0f                           ; $55b8: $ca $0f $0f

    ld a, c                                       ; $55bb: $79
    call $8d85                                    ; $55bc: $cd $85 $8d
    ld h, [hl]                                    ; $55bf: $66
    sub [hl]                                      ; $55c0: $96
    ld a, e                                       ; $55c1: $7b
    and l                                         ; $55c2: $a5
    inc h                                         ; $55c3: $24
    dec l                                         ; $55c4: $2d
    ld l, d                                       ; $55c5: $6a
    or d                                          ; $55c6: $b2
    and e                                         ; $55c7: $a3
    and $20                                       ; $55c8: $e6 $20
    add e                                         ; $55ca: $83
    ld [$fd36], a                                 ; $55cb: $ea $36 $fd
    ld c, h                                       ; $55ce: $4c
    xor e                                         ; $55cf: $ab
    add hl, bc                                    ; $55d0: $09
    dec a                                         ; $55d1: $3d
    sbc c                                         ; $55d2: $99
    inc l                                         ; $55d3: $2c
    call $9cb5                                    ; $55d4: $cd $b5 $9c
    ld l, a                                       ; $55d7: $6f
    inc e                                         ; $55d8: $1c
    rst $00                                       ; $55d9: $c7
    ld l, e                                       ; $55da: $6b
    ld a, b                                       ; $55db: $78
    ld sp, $c66d                                  ; $55dc: $31 $6d $c6
    adc e                                         ; $55df: $8b
    call z, Call_04b_6768                         ; $55e0: $cc $68 $67
    ld h, h                                       ; $55e3: $64
    ld l, [hl]                                    ; $55e4: $6e
    ld a, h                                       ; $55e5: $7c
    nop                                           ; $55e6: $00
    ld c, a                                       ; $55e7: $4f
    push af                                       ; $55e8: $f5
    ld h, h                                       ; $55e9: $64
    or d                                          ; $55ea: $b2
    inc [hl]                                      ; $55eb: $34
    rst $10                                       ; $55ec: $d7
    ld [hl], d                                    ; $55ed: $72
    daa                                           ; $55ee: $27
    db $e3                                        ; $55ef: $e3
    dec hl                                        ; $55f0: $2b
    rlca                                          ; $55f1: $07
    sub a                                         ; $55f2: $97
    rst $38                                       ; $55f3: $ff
    db $d3                                        ; $55f4: $d3
    xor d                                         ; $55f5: $aa
    ld d, [hl]                                    ; $55f6: $56
    sub c                                         ; $55f7: $91
    xor b                                         ; $55f8: $a8
    rla                                           ; $55f9: $17
    dec bc                                        ; $55fa: $0b
    inc e                                         ; $55fb: $1c
    xor l                                         ; $55fc: $ad
    or c                                          ; $55fd: $b1
    dec sp                                        ; $55fe: $3b
    inc hl                                        ; $55ff: $23
    ld [hl], e                                    ; $5600: $73
    rst $00                                       ; $5601: $c7
    db $dd                                        ; $5602: $dd
    adc c                                         ; $5603: $89
    ld a, [hl]                                    ; $5604: $7e
    cp c                                          ; $5605: $b9
    jp $c79c                                      ; $5606: $c3 $9c $c7


    inc b                                         ; $5609: $04
    call $ec79                                    ; $560a: $cd $79 $ec
    add d                                         ; $560d: $82
    ld c, $b4                                     ; $560e: $0e $b4
    add hl, sp                                    ; $5610: $39
    pop bc                                        ; $5611: $c1
    db $f4                                        ; $5612: $f4
    call z, $9812                                 ; $5613: $cc $12 $98
    ld h, l                                       ; $5616: $65
    cp h                                          ; $5617: $bc
    or a                                          ; $5618: $b7
    ld c, d                                       ; $5619: $4a
    and b                                         ; $561a: $a0
    push hl                                       ; $561b: $e5
    ld a, c                                       ; $561c: $79
    db $ec                                        ; $561d: $ec
    jp nz, Jump_04b_7e9f                          ; $561e: $c2 $9f $7e

    call $8c9d                                    ; $5621: $cd $9d $8c
    add a                                         ; $5624: $87
    sbc l                                         ; $5625: $9d
    ret nc                                        ; $5626: $d0

    sub e                                         ; $5627: $93
    sbc c                                         ; $5628: $99
    db $e4                                        ; $5629: $e4
    jr c, @-$70                                   ; $562a: $38 $8e

    rst $20                                       ; $562c: $e7
    db $ed                                        ; $562d: $ed
    ld [hl], $35                                  ; $562e: $36 $35
    halt                                          ; $5630: $76
    sub h                                         ; $5631: $94
    ld l, d                                       ; $5632: $6a
    xor $95                                       ; $5633: $ee $95
    sub d                                         ; $5635: $92
    or h                                          ; $5636: $b4
    xor b                                         ; $5637: $a8
    ret                                           ; $5638: $c9


    adc [hl]                                      ; $5639: $8e
    ld e, d                                       ; $563a: $5a
    ld [hl], e                                    ; $563b: $73
    cpl                                           ; $563c: $2f
    ld hl, $6bfc                                  ; $563d: $21 $fc $6b
    inc sp                                        ; $5640: $33
    or l                                          ; $5641: $b5
    ld h, a                                       ; $5642: $67
    or l                                          ; $5643: $b5
    ld b, l                                       ; $5644: $45
    push de                                       ; $5645: $d5
    pop af                                        ; $5646: $f1
    ld bc, $1d57                                  ; $5647: $01 $57 $1d
    or l                                          ; $564a: $b5
    ld h, [hl]                                    ; $564b: $66
    rst $30                                       ; $564c: $f7
    ld [de], a                                    ; $564d: $12
    jp nz, Jump_000_36bf                          ; $564e: $c2 $bf $36

    ld d, e                                       ; $5651: $53
    ld a, e                                       ; $5652: $7b
    ld d, [hl]                                    ; $5653: $56
    ld e, e                                       ; $5654: $5b
    ld d, h                                       ; $5655: $54
    cp l                                          ; $5656: $bd
    or b                                          ; $5657: $b0
    dec d                                         ; $5658: $15
    pop af                                        ; $5659: $f1
    ld c, d                                       ; $565a: $4a
    jp Jump_04b_5ab2                              ; $565b: $c3 $b2 $5a


    call nc, $bb8e                                ; $565e: $d4 $8e $bb
    ret z                                         ; $5661: $c8

    ld h, h                                       ; $5662: $64
    di                                            ; $5663: $f3
    jp z, $d701                                   ; $5664: $ca $01 $d7

    db $e4                                        ; $5667: $e4
    jp nz, $2cef                                  ; $5668: $c2 $ef $2c

    cp d                                          ; $566b: $ba
    dec l                                         ; $566c: $2d
    daa                                           ; $566d: $27
    ld [hl], l                                    ; $566e: $75
    ld hl, $07f1                                  ; $566f: $21 $f1 $07
    ld l, a                                       ; $5672: $6f
    ld [hl], a                                    ; $5673: $77
    pop de                                        ; $5674: $d1
    cpl                                           ; $5675: $2f
    scf                                           ; $5676: $37
    rst $30                                       ; $5677: $f7
    ld hl, $0f05                                  ; $5678: $21 $05 $0f
    or c                                          ; $567b: $b1
    call c, $735c                                 ; $567c: $dc $5c $73
    sub a                                         ; $567f: $97
    and l                                         ; $5680: $a5
    xor b                                         ; $5681: $a8
    ld a, [de]                                    ; $5682: $1a
    sbc e                                         ; $5683: $9b
    ld [hl], e                                    ; $5684: $73
    ld sp, $f37d                                  ; $5685: $31 $7d $f3
    ld h, d                                       ; $5688: $62
    sub a                                         ; $5689: $97
    ld b, [hl]                                    ; $568a: $46
    inc h                                         ; $568b: $24
    ld h, $de                                     ; $568c: $26 $de
    db $db                                        ; $568e: $db
    db $dd                                        ; $568f: $dd
    xor c                                         ; $5690: $a9
    call c, $379c                                 ; $5691: $dc $9c $37
    sbc $b9                                       ; $5694: $de $b9
    dec hl                                        ; $5696: $2b
    add c                                         ; $5697: $81
    and [hl]                                      ; $5698: $a6
    jp c, $e687                                   ; $5699: $da $87 $e6

    cp e                                          ; $569c: $bb
    sub [hl]                                      ; $569d: $96
    inc d                                         ; $569e: $14
    ld [hl], a                                    ; $569f: $77
    ld l, [hl]                                    ; $56a0: $6e
    ret                                           ; $56a1: $c9


    ld h, e                                       ; $56a2: $63
    ld hl, $304c                                  ; $56a3: $21 $4c $30
    ld d, h                                       ; $56a6: $54
    ld [c], a                                     ; $56a7: $e2
    rrca                                          ; $56a8: $0f
    cpl                                           ; $56a9: $2f
    ld [hl], $5b                                  ; $56aa: $36 $5b
    jp c, $a85b                                   ; $56ac: $da $5b $a8

    ld a, l                                       ; $56af: $7d
    ld l, c                                       ; $56b0: $69
    ld h, c                                       ; $56b1: $61
    dec hl                                        ; $56b2: $2b
    ld [c], a                                     ; $56b3: $e2
    dec b                                         ; $56b4: $05
    adc [hl]                                      ; $56b5: $8e
    sub $d8                                       ; $56b6: $d6 $d8
    add c                                         ; $56b8: $81
    cp d                                          ; $56b9: $ba
    ccf                                           ; $56ba: $3f
    ld a, l                                       ; $56bb: $7d
    ld [hl], e                                    ; $56bc: $73
    sbc b                                         ; $56bd: $98
    di                                            ; $56be: $f3
    sbc l                                         ; $56bf: $9d
    add hl, hl                                    ; $56c0: $29
    and [hl]                                      ; $56c1: $a6
    sbc a                                         ; $56c2: $9f
    ccf                                           ; $56c3: $3f
    jp nz, $a7f2                                  ; $56c4: $c2 $f2 $a7

    and [hl]                                      ; $56c7: $a6
    ld hl, sp+$03                                 ; $56c8: $f8 $03
    sub a                                         ; $56ca: $97
    ld b, [hl]                                    ; $56cb: $46
    inc h                                         ; $56cc: $24
    ld b, [hl]                                    ; $56cd: $46
    db $fc                                        ; $56ce: $fc
    xor [hl]                                      ; $56cf: $ae
    ret                                           ; $56d0: $c9


    ld b, c                                       ; $56d1: $41
    db $f4                                        ; $56d2: $f4
    add l                                         ; $56d3: $85
    sub [hl]                                      ; $56d4: $96
    ld a, h                                       ; $56d5: $7c
    rla                                           ; $56d6: $17
    ld [hl], h                                    ; $56d7: $74
    call c, $cc9d                                 ; $56d8: $dc $9d $cc
    ld c, b                                       ; $56db: $48
    pop bc                                        ; $56dc: $c1
    ld b, e                                       ; $56dd: $43
    rst $20                                       ; $56de: $e7
    call nc, $d8bc                                ; $56df: $d4 $bc $d8
    adc e                                         ; $56e2: $8b
    and [hl]                                      ; $56e3: $a6
    ld b, l                                       ; $56e4: $45
    add sp, $1d                                   ; $56e5: $e8 $1d
    or l                                          ; $56e7: $b5
    ld [hl], e                                    ; $56e8: $73
    ld [hl], c                                    ; $56e9: $71
    sbc $78                                       ; $56ea: $de $78
    ld b, c                                       ; $56ec: $41
    rst $10                                       ; $56ed: $d7
    and $3c                                       ; $56ee: $e6 $3c
    ld e, c                                       ; $56f0: $59
    inc e                                         ; $56f1: $1c
    rst $00                                       ; $56f2: $c7
    rlca                                          ; $56f3: $07
    xor a                                         ; $56f4: $af
    dec hl                                        ; $56f5: $2b
    ld d, $7f                                     ; $56f6: $16 $7f
    nop                                           ; $56f8: $00
    rst $10                                       ; $56f9: $d7
    cp e                                          ; $56fa: $bb
    or b                                          ; $56fb: $b0
    ld [bc], a                                    ; $56fc: $02
    cpl                                           ; $56fd: $2f
    ld l, d                                       ; $56fe: $6a
    or [hl]                                       ; $56ff: $b6
    or h                                          ; $5700: $b4
    rla                                           ; $5701: $17
    ld c, l                                       ; $5702: $4d
    adc e                                         ; $5703: $8b
    ret nc                                        ; $5704: $d0

    dec sp                                        ; $5705: $3b
    ld l, d                                       ; $5706: $6a
    ld l, l                                       ; $5707: $6d
    adc $2d                                       ; $5708: $ce $2d
    add l                                         ; $570a: $85
    ld h, [hl]                                    ; $570b: $66
    ld a, d                                       ; $570c: $7a
    ld l, [hl]                                    ; $570d: $6e
    adc c                                         ; $570e: $89
    xor e                                         ; $570f: $ab
    db $fd                                        ; $5710: $fd
    cp [hl]                                       ; $5711: $be
    ld e, e                                       ; $5712: $5b
    ld e, d                                       ; $5713: $5a
    sbc e                                         ; $5714: $9b
    di                                            ; $5715: $f3
    ld h, h                                       ; $5716: $64
    ld h, $f7                                     ; $5717: $26 $f7
    and e                                         ; $5719: $a3
    add l                                         ; $571a: $85
    adc l                                         ; $571b: $8d
    and $20                                       ; $571c: $e6 $20
    ld c, a                                       ; $571e: $4f
    xor b                                         ; $571f: $a8
    ld e, a                                       ; $5720: $5f
    ld [hl], e                                    ; $5721: $73
    sbc b                                         ; $5722: $98
    di                                            ; $5723: $f3
    ld e, l                                       ; $5724: $5d
    ld d, [hl]                                    ; $5725: $56
    ld [hl], c                                    ; $5726: $71
    ld [hl], e                                    ; $5727: $73
    call c, $c249                                 ; $5728: $dc $49 $c2
    nop                                           ; $572b: $00
    inc [hl]                                      ; $572c: $34
    db $e3                                        ; $572d: $e3
    ld e, l                                       ; $572e: $5d
    sub e                                         ; $572f: $93
    dec bc                                        ; $5730: $0b
    dec hl                                        ; $5731: $2b
    inc l                                         ; $5732: $2c
    ld l, h                                       ; $5733: $6c
    inc [hl]                                      ; $5734: $34
    db $d3                                        ; $5735: $d3
    ei                                            ; $5736: $fb
    jp hl                                         ; $5737: $e9


    ld c, e                                       ; $5738: $4b
    ld a, [bc]                                    ; $5739: $0a
    ld e, $16                                     ; $573a: $1e $16
    ld [c], a                                     ; $573c: $e2
    ld a, b                                       ; $573d: $78
    cpl                                           ; $573e: $2f
    ld a, [de]                                    ; $573f: $1a
    pop bc                                        ; $5740: $c1
    xor e                                         ; $5741: $ab
    rlca                                          ; $5742: $07
    xor d                                         ; $5743: $aa
    rst $38                                       ; $5744: $ff
    rla                                           ; $5745: $17
    ld sp, hl                                     ; $5746: $f9
    ld l, $2c                                     ; $5747: $2e $2c
    rst $28                                       ; $5749: $ef
    ld a, a                                       ; $574a: $7f
    cp c                                          ; $574b: $b9
    and $50                                       ; $574c: $e6 $50
    db $ed                                        ; $574e: $ed
    ld a, a                                       ; $574f: $7f
    cp c                                          ; $5750: $b9
    rrca                                          ; $5751: $0f
    add c                                         ; $5752: $81
    ld a, [hl+]                                   ; $5753: $2a
    ld [hl], $cb                                  ; $5754: $36 $cb
    ld hl, sp+$00                                 ; $5756: $f8 $00
    cpl                                           ; $5758: $2f
    sbc d                                         ; $5759: $9a
    ld d, c                                       ; $575a: $51
    inc e                                         ; $575b: $1c
    rst $00                                       ; $575c: $c7
    rlca                                          ; $575d: $07
    rst $10                                       ; $575e: $d7
    dec e                                         ; $575f: $1d
    xor l                                         ; $5760: $ad
    or c                                          ; $5761: $b1
    sub e                                         ; $5762: $93
    add h                                         ; $5763: $84
    ld bc, $ce68                                  ; $5764: $01 $68 $ce
    or h                                          ; $5767: $b4
    xor $3c                                       ; $5768: $ee $3c
    ld h, c                                       ; $576a: $61
    and a                                         ; $576b: $a7
    sbc b                                         ; $576c: $98
    ld c, h                                       ; $576d: $4c
    or h                                          ; $576e: $b4
    and $c2                                       ; $576f: $e6 $c2
    ld a, [c]                                     ; $5771: $f2
    db $e4                                        ; $5772: $e4
    ld d, a                                       ; $5773: $57
    cp h                                          ; $5774: $bc
    rst $20                                       ; $5775: $e7
    ld [$a245], sp                                ; $5776: $08 $45 $a2
    rst $18                                       ; $5779: $df
    db $f4                                        ; $577a: $f4
    sbc a                                         ; $577b: $9f
    or $e0                                        ; $577c: $f6 $e0
    dec a                                         ; $577e: $3d
    add e                                         ; $577f: $83
    sbc h                                         ; $5780: $9c
    db $e4                                        ; $5781: $e4
    ld h, [hl]                                    ; $5782: $66
    inc e                                         ; $5783: $1c
    rst $00                                       ; $5784: $c7
    ld a, e                                       ; $5785: $7b
    ldh a, [$9e]                                  ; $5786: $f0 $9e
    ld b, c                                       ; $5788: $41
    ld c, [hl]                                    ; $5789: $4e
    ld [hl], d                                    ; $578a: $72
    ld [hl], e                                    ; $578b: $73
    ld d, b                                       ; $578c: $50
    ld l, c                                       ; $578d: $69
    ld d, b                                       ; $578e: $50
    ld c, c                                       ; $578f: $49
    db $fd                                        ; $5790: $fd
    sbc a                                         ; $5791: $9f

jr_04b_5792:
    ld [c], a                                     ; $5792: $e2
    rrca                                          ; $5793: $0f
    rrca                                          ; $5794: $0f
    sbc $33                                       ; $5795: $de $33
    xor b                                         ; $5797: $a8
    inc [hl]                                      ; $5798: $34
    xor b                                         ; $5799: $a8
    and h                                         ; $579a: $a4
    cp $4f                                        ; $579b: $fe $4f
    pop af                                        ; $579d: $f1
    rlca                                          ; $579e: $07
    cpl                                           ; $579f: $2f
    ld b, a                                       ; $57a0: $47
    xor e                                         ; $57a1: $ab
    ld d, $cd                                     ; $57a2: $16 $cd
    ld [hl], c                                    ; $57a4: $71
    ld l, b                                       ; $57a5: $68
    pop de                                        ; $57a6: $d1
    daa                                           ; $57a7: $27
    ret nc                                        ; $57a8: $d0

    inc [hl]                                      ; $57a9: $34
    rst $30                                       ; $57aa: $f7
    and a                                         ; $57ab: $a7
    rra                                           ; $57ac: $1f
    jr nc, jr_04b_5792                            ; $57ad: $30 $e3

    dec b                                         ; $57af: $05
    adc [hl]                                      ; $57b0: $8e
    sub $d8                                       ; $57b1: $d6 $d8
    add hl, hl                                    ; $57b3: $29
    ld h, $13                                     ; $57b4: $26 $13
    dec c                                         ; $57b6: $0d
    inc sp                                        ; $57b7: $33
    sbc $8b                                       ; $57b8: $de $8b
    call $f696                                    ; $57ba: $cd $96 $f6
    ld d, $6a                                     ; $57bd: $16 $6a
    ld e, a                                       ; $57bf: $5f
    jp c, $e0c9                                   ; $57c0: $da $c9 $e0

    ld hl, $c04f                                  ; $57c3: $21 $4f $c0
    ld h, b                                       ; $57c6: $60
    cp [hl]                                       ; $57c7: $be
    dec bc                                        ; $57c8: $0b
    rst $38                                       ; $57c9: $ff
    rla                                           ; $57ca: $17
    ld a, c                                       ; $57cb: $79
    ld c, h                                       ; $57cc: $4c
    ld h, b                                       ; $57cd: $60
    add hl, bc                                    ; $57ce: $09
    or $a1                                        ; $57cf: $f6 $a1
    dec b                                         ; $57d1: $05
    adc [hl]                                      ; $57d2: $8e
    sub $d8                                       ; $57d3: $d6 $d8
    ld a, b                                       ; $57d5: $78
    rst $08                                       ; $57d6: $cf
    db $e4                                        ; $57d7: $e4
    jp nc, $9a59                                  ; $57d8: $d2 $59 $9a

    pop de                                        ; $57db: $d1
    add h                                         ; $57dc: $84
    ld a, [$d699]                                 ; $57dd: $fa $99 $d6
    adc l                                         ; $57e0: $8d
    call z, $bc74                                 ; $57e1: $cc $74 $bc
    ld l, e                                       ; $57e4: $6b
    ld [hl], d                                    ; $57e5: $72
    ld h, c                                       ; $57e6: $61
    add l                                         ; $57e7: $85
    ld b, l                                       ; $57e8: $45
    ld e, l                                       ; $57e9: $5d
    ld a, [hl]                                    ; $57ea: $7e
    or b                                          ; $57eb: $b0
    db $fc                                        ; $57ec: $fc

jr_04b_57ed:
    rra                                           ; $57ed: $1f
    ld a, c                                       ; $57ee: $79
    rst $20                                       ; $57ef: $e7
    ccf                                           ; $57f0: $3f
    ld d, b                                       ; $57f1: $50
    dec b                                         ; $57f2: $05
    rrca                                          ; $57f3: $0f
    call Call_000_3f22                            ; $57f4: $cd $22 $3f
    rst $30                                       ; $57f7: $f7
    ld a, a                                       ; $57f8: $7f

Jump_04b_57f9:
    sbc d                                         ; $57f9: $9a
    ld l, [hl]                                    ; $57fa: $6e
    ld c, c                                       ; $57fb: $49
    ld h, e                                       ; $57fc: $63
    add d                                         ; $57fd: $82
    and $5c                                       ; $57fe: $e6 $5c
    srl l                                         ; $5800: $cb $3d
    ld b, a                                       ; $5802: $47
    jr z, jr_04b_5817                             ; $5803: $28 $12

    db $fd                                        ; $5805: $fd
    and [hl]                                      ; $5806: $a6
    rst $38                                       ; $5807: $ff
    inc d                                         ; $5808: $14
    rra                                           ; $5809: $1f
    ld d, a                                       ; $580a: $57
    sub c                                         ; $580b: $91
    add a                                         ; $580c: $87
    ld l, d                                       ; $580d: $6a
    cp [hl]                                       ; $580e: $be
    dec hl                                        ; $580f: $2b
    ld bc, $9dc5                                  ; $5810: $01 $c5 $9d
    scf                                           ; $5813: $37
    jr nc, jr_04b_57ed                            ; $5814: $30 $d7

    ld [hl], d                                    ; $5816: $72

jr_04b_5817:
    ld de, $3906                                  ; $5817: $11 $06 $39
    ld e, l                                       ; $581a: $5d
    or a                                          ; $581b: $b7
    add hl, de                                    ; $581c: $19
    rst $28                                       ; $581d: $ef
    ld e, d                                       ; $581e: $5a
    ld a, l                                       ; $581f: $7d
    xor c                                         ; $5820: $a9
    call $5a9d                                    ; $5821: $cd $9d $5a
    sbc [hl]                                      ; $5824: $9e
    scf                                           ; $5825: $37
    sbc $09                                       ; $5826: $de $09
    add e                                         ; $5828: $83
    db $dd                                        ; $5829: $dd
    ei                                            ; $582a: $fb
    ldh [$3d], a                                  ; $582b: $e0 $3d
    add e                                         ; $582d: $83
    sbc h                                         ; $582e: $9c
    db $e4                                        ; $582f: $e4
    and $dc                                       ; $5830: $e6 $dc
    rst $38                                       ; $5832: $ff
    ld l, c                                       ; $5833: $69
    rst $08                                       ; $5834: $cf
    ld de, $448a                                  ; $5835: $11 $8a $44
    cp a                                          ; $5838: $bf
    jp hl                                         ; $5839: $e9


    ccf                                           ; $583a: $3f
    db $ed                                        ; $583b: $ed
    adc h                                         ; $583c: $8c
    ld b, c                                       ; $583d: $41
    ld c, [hl]                                    ; $583e: $4e
    sbc [hl]                                      ; $583f: $9e
    jr nc, jr_04b_58a2                            ; $5840: $30 $60

    ld d, b                                       ; $5842: $50
    ld [hl-], a                                   ; $5843: $32
    sub e                                         ; $5844: $93
    inc e                                         ; $5845: $1c
    rra                                           ; $5846: $1f
    rst $28                                       ; $5847: $ef
    ld d, l                                       ; $5848: $55
    adc e                                         ; $5849: $8b
    call nc, Call_04b_777c                        ; $584a: $d4 $7c $77
    jp hl                                         ; $584d: $e9


    adc b                                         ; $584e: $88
    ld b, h                                       ; $584f: $44
    push de                                       ; $5850: $d5
    sub b                                         ; $5851: $90
    inc hl                                        ; $5852: $23
    ld d, d                                       ; $5853: $52
    ld l, e                                       ; $5854: $6b
    xor $35                                       ; $5855: $ee $35
    ld [hl], e                                    ; $5857: $73
    sbc e                                         ; $5858: $9b
    ld d, d                                       ; $5859: $52
    sbc e                                         ; $585a: $9b
    ld [hl], e                                    ; $585b: $73

Call_04b_585c:
Jump_04b_585c:
    ld l, d                                       ; $585c: $6a
    xor $8c                                       ; $585d: $ee $8c
    ld b, c                                       ; $585f: $41
    ld c, [hl]                                    ; $5860: $4e
    ld hl, sp+$5f                                 ; $5861: $f8 $5f
    db $ed                                        ; $5863: $ed
    ld b, e                                       ; $5864: $43
    ei                                            ; $5865: $fb
    xor c                                         ; $5866: $a9
    ld [c], a                                     ; $5867: $e2
    cp l                                          ; $5868: $bd
    rst $10                                       ; $5869: $d7
    ld a, c                                       ; $586a: $79
    add e                                         ; $586b: $83
    add a                                         ; $586c: $87
    call c, $379c                                 ; $586d: $dc $9c $37
    sbc $09                                       ; $5870: $de $09
    add e                                         ; $5872: $83
    ld sp, hl                                     ; $5873: $f9

jr_04b_5874:
    xor [hl]                                      ; $5874: $ae
    adc c                                         ; $5875: $89
    and b                                         ; $5876: $a0
    cp c                                          ; $5877: $b9
    sub e                                         ; $5878: $93
    ld d, c                                       ; $5879: $51
    ld [hl], e                                    ; $587a: $73
    ld e, $3b                                     ; $587b: $1e $3b
    rst $18                                       ; $587d: $df
    sbc c                                         ; $587e: $99
    ret z                                         ; $587f: $c8

    ld d, a                                       ; $5880: $57
    ld h, e                                       ; $5881: $63
    ld [bc], a                                    ; $5882: $02
    dec h                                         ; $5883: $25
    ld d, h                                       ; $5884: $54
    sub [hl]                                      ; $5885: $96
    and $20                                       ; $5886: $e6 $20
    rst $08                                       ; $5888: $cf
    ld [hl], a                                    ; $5889: $77
    and c                                         ; $588a: $a1
    and l                                         ; $588b: $a5
    ld l, a                                       ; $588c: $6f
    adc $b5                                       ; $588d: $ce $b5
    sbc h                                         ; $588f: $9c
    rst $28                                       ; $5890: $ef
    sbc $3b                                       ; $5891: $de $3b
    sbc c                                         ; $5893: $99
    rst $30                                       ; $5894: $f7
    dec h                                         ; $5895: $25
    inc sp                                        ; $5896: $33
    ld d, d                                       ; $5897: $52
    sub e                                         ; $5898: $93
    ccf                                           ; $5899: $3f
    ld a, l                                       ; $589a: $7d
    ld [hl], e                                    ; $589b: $73
    pop hl                                        ; $589c: $e1
    ld [hl], a                                    ; $589d: $77
    ld a, h                                       ; $589e: $7c

Jump_04b_589f:
    inc sp                                        ; $589f: $33
    sbc $35                                       ; $58a0: $de $35

jr_04b_58a2:
    cp c                                          ; $58a2: $b9
    inc sp                                        ; $58a3: $33
    halt                                          ; $58a4: $76
    ld b, c                                       ; $58a5: $41
    daa                                           ; $58a6: $27
    inc [hl]                                      ; $58a7: $34
    db $eb                                        ; $58a8: $eb
    sbc e                                         ; $58a9: $9b
    pop af                                        ; $58aa: $f1
    ld bc, $b52f                                  ; $58ab: $01 $2f $b5
    rla                                           ; $58ae: $17
    set 6, [hl]                                   ; $58af: $cb $f6
    ld h, d                                       ; $58b1: $62
    adc c                                         ; $58b2: $89
    push hl                                       ; $58b3: $e5
    sbc l                                         ; $58b4: $9d
    ld e, d                                       ; $58b5: $5a
    cp d                                          ; $58b6: $ba
    sbc b                                         ; $58b7: $98
    ld l, c                                       ; $58b8: $69
    push bc                                       ; $58b9: $c5
    adc [hl]                                      ; $58ba: $8e
    and b                                         ; $58bb: $a0
    or c                                          ; $58bc: $b1
    ld [hl+], a                                   ; $58bd: $22
    adc [hl]                                      ; $58be: $8e
    db $e3                                        ; $58bf: $e3
    ld hl, sp+$00                                 ; $58c0: $f8 $00
    ld d, a                                       ; $58c2: $57
    adc l                                         ; $58c3: $8d

jr_04b_58c4:
    and a                                         ; $58c4: $a7
    ld sp, $bc90                                  ; $58c5: $31 $90 $bc
    rst $20                                       ; $58c8: $e7
    add hl, bc                                    ; $58c9: $09
    ld d, e                                       ; $58ca: $53
    ld d, [hl]                                    ; $58cb: $56
    rst $28                                       ; $58cc: $ef
    ld d, h                                       ; $58cd: $54
    dec e                                         ; $58ce: $1d
    rra                                           ; $58cf: $1f
    cpl                                           ; $58d0: $2f
    cp $08                                        ; $58d1: $fe $08
    xor d                                         ; $58d3: $aa
    cp [hl]                                       ; $58d4: $be
    ld e, b                                       ; $58d5: $58
    db $f4                                        ; $58d6: $f4
    inc hl                                        ; $58d7: $23
    xor b                                         ; $58d8: $a8
    ld a, [$8062]                                 ; $58d9: $fa $62 $80
    jr z, jr_04b_591c                             ; $58dc: $28 $3e

    nop                                           ; $58de: $00
    rst $08                                       ; $58df: $cf
    db $fd                                        ; $58e0: $fd
    ld a, [$cb79]                                 ; $58e1: $fa $79 $cb
    jr c, jr_04b_5874                             ; $58e4: $38 $8e

    rlca                                          ; $58e6: $07
    ld a, [hl]                                    ; $58e7: $7e
    db $fd                                        ; $58e8: $fd
    cp h                                          ; $58e9: $bc
    ld h, l                                       ; $58ea: $65
    inc e                                         ; $58eb: $1c
    rst $00                                       ; $58ec: $c7
    ld b, e                                       ; $58ed: $43

jr_04b_58ee:
    cp c                                          ; $58ee: $b9
    or e                                          ; $58ef: $b3
    jp hl                                         ; $58f0: $e9


    add l                                         ; $58f1: $85
    push hl                                       ; $58f2: $e5
    add hl, sp                                    ; $58f3: $39
    ld [hl], e                                    ; $58f4: $73
    ld c, e                                       ; $58f5: $4b
    ld e, h                                       ; $58f6: $5c
    xor l                                         ; $58f7: $ad
    sbc e                                         ; $58f8: $9b
    ld [hl], c                                    ; $58f9: $71
    inc e                                         ; $58fa: $1c
    rra                                           ; $58fb: $1f
    xor a                                         ; $58fc: $af
    jr z, jr_04b_58c4                             ; $58fd: $28 $c5

    ld [hl], c                                    ; $58ff: $71
    inc e                                         ; $5900: $1c
    rst $28                                       ; $5901: $ef
    or d                                          ; $5902: $b2
    inc d                                         ; $5903: $14
    ld d, l                                       ; $5904: $55
    ld h, e                                       ; $5905: $63
    inc sp                                        ; $5906: $33
    adc [hl]                                      ; $5907: $8e
    db $e3                                        ; $5908: $e3
    and c                                         ; $5909: $a1
    ld e, h                                       ; $590a: $5c
    ld e, b                                       ; $590b: $58
    ld h, c                                       ; $590c: $61
    ld e, c                                       ; $590d: $59
    sbc $f3                                       ; $590e: $de $f3
    add h                                         ; $5910: $84
    add hl, hl                                    ; $5911: $29
    xor e                                         ; $5912: $ab
    rla                                           ; $5913: $17
    sub l                                         ; $5914: $95
    add a                                         ; $5915: $87
    adc l                                         ; $5916: $8d
    inc l                                         ; $5917: $2c
    db $fd                                        ; $5918: $fd
    jp nz, $cd4f                                  ; $5919: $c2 $4f $cd

jr_04b_591c:
    ld b, c                                       ; $591c: $41
    ld h, h                                       ; $591d: $64
    call c, Call_04b_778c                         ; $591e: $dc $8c $77
    adc c                                         ; $5921: $89
    pop bc                                        ; $5922: $c1
    and h                                         ; $5923: $a4
    cp $29                                        ; $5924: $fe $29
    daa                                           ; $5926: $27
    ld e, b                                       ; $5927: $58
    add d                                         ; $5928: $82
    ld hl, sp+$00                                 ; $5929: $f8 $00
    ld d, a                                       ; $592b: $57
    adc l                                         ; $592c: $8d
    add a                                         ; $592d: $87
    ld l, d                                       ; $592e: $6a
    xor [hl]                                      ; $592f: $ae
    add hl, hl                                    ; $5930: $29
    sbc $eb                                       ; $5931: $de $eb
    reti                                          ; $5933: $d9


    ld b, d                                       ; $5934: $42
    dec sp                                        ; $5935: $3b
    or l                                          ; $5936: $b5
    inc h                                         ; $5937: $24
    cp $00                                        ; $5938: $fe $00
    ld l, a                                       ; $593a: $6f
    ld a, l                                       ; $593b: $7d
    dec c                                         ; $593c: $0d
    sbc d                                         ; $593d: $9a
    ld l, d                                       ; $593e: $6a
    ld de, $0306                                  ; $593f: $11 $06 $03
    ld h, [hl]                                    ; $5942: $66
    cp h                                          ; $5943: $bc
    db $10                                        ; $5944: $10
    add e                                         ; $5945: $83
    cp l                                          ; $5946: $bd
    sbc [hl]                                      ; $5947: $9e
    dec l                                         ; $5948: $2d
    inc [hl]                                      ; $5949: $34
    or a                                          ; $594a: $b7
    call nz, $bad5                                ; $594b: $c4 $d5 $ba
    cp c                                          ; $594e: $b9
    ldh a, [rPCM34]                               ; $594f: $f0 $77
    ld hl, $1306                                  ; $5951: $21 $06 $13
    jr nc, jr_04b_58ee                            ; $5954: $30 $98

    rst $28                                       ; $5956: $ef
    ld e, [hl]                                    ; $5957: $5e
    rst $20                                       ; $5958: $e7
    ld [hl], $17                                  ; $5959: $36 $17
    db $fd                                        ; $595b: $fd
    ld a, [c]                                     ; $595c: $f2
    db $e4                                        ; $595d: $e4
    adc a                                         ; $595e: $8f
    sbc d                                         ; $595f: $9a
    ld [c], a                                     ; $5960: $e2
    rrca                                          ; $5961: $0f
    ld l, a                                       ; $5962: $6f
    ld [hl], a                                    ; $5963: $77
    ret nz                                        ; $5964: $c0

    inc l                                         ; $5965: $2c
    sub a                                         ; $5966: $97
    ld h, [hl]                                    ; $5967: $66

Call_04b_5968:
    or h                                          ; $5968: $b4
    ld d, a                                       ; $5969: $57
    ld c, d                                       ; $596a: $4a
    jp nc, Jump_000_26a2                          ; $596b: $d2 $a2 $26

    dec sp                                        ; $596e: $3b
    ld a, [hl+]                                   ; $596f: $2a
    sbc $55                                       ; $5970: $de $55
    db $e3                                        ; $5972: $e3
    add l                                         ; $5973: $85
    and $7d                                       ; $5974: $e6 $7d
    ld [hl], e                                    ; $5976: $73
    and a                                         ; $5977: $a7
    adc $23                                       ; $5978: $ce $23
    dec d                                         ; $597a: $15
    adc $8b                                       ; $597b: $ce $8b
    ld a, [hl]                                    ; $597d: $7e
    cp c                                          ; $597e: $b9
    add hl, sp                                    ; $597f: $39
    rst $38                                       ; $5980: $ff
    sbc e                                         ; $5981: $9b
    pop af                                        ; $5982: $f1
    ld bc, $9a2f                                  ; $5983: $01 $2f $9a
    pop de                                        ; $5986: $d1
    ld c, [hl]                                    ; $5987: $4e
    ld e, l                                       ; $5988: $5d
    ld e, b                                       ; $5989: $58
    ld b, c                                       ; $598a: $41
    ld l, b                                       ; $598b: $68
    ld c, $b4                                     ; $598c: $0e $b4
    add hl, sp                                    ; $598e: $39
    and c                                         ; $598f: $a1
    daa                                           ; $5990: $27
    inc c                                         ; $5991: $0c
    sub h                                         ; $5992: $94
    ld hl, sp+$3d                                 ; $5993: $f8 $3d
    sub e                                         ; $5995: $93
    dec sp                                        ; $5996: $3b
    ld [hl], l                                    ; $5997: $75
    pop de                                        ; $5998: $d1
    rlca                                          ; $5999: $07
    call $d585                                    ; $599a: $cd $85 $d5
    adc l                                         ; $599d: $8d
    call z, $12f4                                 ; $599e: $cc $f4 $12
    bit 5, d                                      ; $59a1: $cb $6a
    ld h, $3a                                     ; $59a3: $26 $3a
    sub l                                         ; $59a5: $95
    sbc e                                         ; $59a6: $9b
    ld [hl], e                                    ; $59a7: $73
    dec l                                         ; $59a8: $2d
    rst $20                                       ; $59a9: $e7
    cp e                                          ; $59aa: $bb
    rst $10                                       ; $59ab: $d7
    cp c                                          ; $59ac: $b9
    call $d17d                                    ; $59ad: $cd $7d $d1
    ld e, [hl]                                    ; $59b0: $5e
    pop de                                        ; $59b1: $d1
    ld c, $aa                                     ; $59b2: $0e $aa
    and b                                         ; $59b4: $a0
    pop af                                        ; $59b5: $f1
    ld bc, $7d6f                                  ; $59b6: $01 $6f $7d
    dec c                                         ; $59b9: $0d
    ld d, $61                                     ; $59ba: $16 $61
    db $10                                        ; $59bc: $10
    rst $28                                       ; $59bd: $ef
    ld l, d                                       ; $59be: $6a
    rst $20                                       ; $59bf: $e7
    ld a, [hl]                                    ; $59c0: $7e
    dec c                                         ; $59c1: $0d
    sbc d                                         ; $59c2: $9a
    cp [hl]                                       ; $59c3: $be
    sub e                                         ; $59c4: $93
    dec l                                         ; $59c5: $2d
    db $ed                                        ; $59c6: $ed
    db $ec                                        ; $59c7: $ec
    ld l, b                                       ; $59c8: $68
    db $dd                                        ; $59c9: $dd
    ld e, h                                       ; $59ca: $5c
    ldh [rBCPS], a                                ; $59cb: $e0 $68
    adc l                                         ; $59cd: $8d
    db $dd                                        ; $59ce: $dd
    xor c                                         ; $59cf: $a9
    ld a, d                                       ; $59d0: $7a
    ld a, h                                       ; $59d1: $7c
    ld l, d                                       ; $59d2: $6a
    daa                                           ; $59d3: $27
    ld e, e                                       ; $59d4: $5b
    ld e, d                                       ; $59d5: $5a
    sbc d                                         ; $59d6: $9a
    ld l, a                                       ; $59d7: $6f
    jp z, $dce6                                   ; $59d8: $ca $e6 $dc

    rst $38                                       ; $59db: $ff
    ret                                           ; $59dc: $c9


    dec de                                        ; $59dd: $1b
    cpl                                           ; $59de: $2f
    add sp, -$26                                  ; $59df: $e8 $da
    ld e, h                                       ; $59e1: $5c
    add sp, -$60                                  ; $59e2: $e8 $a0
    and d                                         ; $59e4: $a2
    add d                                         ; $59e5: $82
    ld [$b77d], a                                 ; $59e6: $ea $7d $b7
    call nz, Call_04b_7ad4                        ; $59e9: $c4 $d4 $7a
    cp [hl]                                       ; $59ec: $be
    ld e, b                                       ; $59ed: $58
    ld h, d                                       ; $59ee: $62
    ld sp, hl                                     ; $59ef: $f9
    ld h, h                                       ; $59f0: $64
    ld b, [hl]                                    ; $59f1: $46
    ld d, a                                       ; $59f2: $57
    ld c, $57                                     ; $59f3: $0e $57
    rst $38                                       ; $59f5: $ff
    rst $30                                       ; $59f6: $f7
    rst $20                                       ; $59f7: $e7
    sbc a                                         ; $59f8: $9f
    cp [hl]                                       ; $59f9: $be
    di                                            ; $59fa: $f3
    add $3b                                       ; $59fb: $c6 $3b
    ld [hl], a                                    ; $59fd: $77
    cp [hl]                                       ; $59fe: $be
    ei                                            ; $59ff: $fb
    adc [hl]                                      ; $5a00: $8e
    rst $28                                       ; $5a01: $ef
    inc d                                         ; $5a02: $14
    sub e                                         ; $5a03: $93
    adc c                                         ; $5a04: $89
    ld b, h                                       ; $5a05: $44
    call $0899                                    ; $5a06: $cd $99 $08
    ld d, h                                       ; $5a09: $54
    pop bc                                        ; $5a0a: $c1
    ld b, e                                       ; $5a0b: $43

jr_04b_5a0c:
    inc de                                        ; $5a0c: $13
    pop af                                        ; $5a0d: $f1
    jp nz, Jump_04b_420a                          ; $5a0e: $c2 $0a $42

    inc sp                                        ; $5a11: $33
    sbc $35                                       ; $5a12: $de $35
    add hl, sp                                    ; $5a14: $39
    and c                                         ; $5a15: $a1
    daa                                           ; $5a16: $27
    inc sp                                        ; $5a17: $33
    sbc d                                         ; $5a18: $9a
    rst $28                                       ; $5a19: $ef
    ld h, h                                       ; $5a1a: $64
    sbc c                                         ; $5a1b: $99
    ld sp, $7341                                  ; $5a1c: $31 $41 $73
    ld sp, hl                                     ; $5a1f: $f9
    pop bc                                        ; $5a20: $c1
    inc d                                         ; $5a21: $14
    or a                                          ; $5a22: $b7
    ld e, [hl]                                    ; $5a23: $5e
    db $ed                                        ; $5a24: $ed
    ld b, e                                       ; $5a25: $43
    adc e                                         ; $5a26: $8b
    ld l, [hl]                                    ; $5a27: $6e
    bit 1, c                                      ; $5a28: $cb $49
    ld c, e                                       ; $5a2a: $4b
    cp $9f                                        ; $5a2b: $fe $9f
    jr c, jr_04b_5a97                             ; $5a2d: $38 $68

    ld a, h                                       ; $5a2f: $7c
    nop                                           ; $5a30: $00
    rst $08                                       ; $5a31: $cf
    ld h, e                                       ; $5a32: $63
    jr nz, jr_04b_5a0c                            ; $5a33: $20 $d7

    and [hl]                                      ; $5a35: $a6
    sbc d                                         ; $5a36: $9a
    ld e, c                                       ; $5a37: $59
    ld e, [hl]                                    ; $5a38: $5e
    call z, Call_04b_4277                         ; $5a39: $cc $77 $42
    jp hl                                         ; $5a3c: $e9


    scf                                           ; $5a3d: $37
    ld a, [c]                                     ; $5a3e: $f2
    ld e, l                                       ; $5a3f: $5d
    call nc, $696c                                ; $5a40: $d4 $6c $69
    sub a                                         ; $5a43: $97
    ld b, [hl]                                    ; $5a44: $46
    inc h                                         ; $5a45: $24
    ld h, [hl]                                    ; $5a46: $66
    xor a                                         ; $5a47: $af
    ld a, h                                       ; $5a48: $7c
    and $d2                                       ; $5a49: $e6 $d2
    call c, $c05f                                 ; $5a4b: $dc $5f $c0
    dec sp                                        ; $5a4e: $3b
    inc hl                                        ; $5a4f: $23
    inc a                                         ; $5a50: $3c
    inc e                                         ; $5a51: $1c
    scf                                           ; $5a52: $37
    sub l                                         ; $5a53: $95
    cp $cc                                        ; $5a54: $fe $cc
    sbc l                                         ; $5a56: $9d
    add b                                         ; $5a57: $80
    pop bc                                        ; $5a58: $c1
    jp nz, $40f2                                  ; $5a59: $c2 $f2 $40

    rst $08                                       ; $5a5c: $cf
    push de                                       ; $5a5d: $d5
    ld a, [bc]                                    ; $5a5e: $0a
    ld e, $1a                                     ; $5a5f: $1e $1a
    inc d                                         ; $5a61: $14
    rst $28                                       ; $5a62: $ef
    ld l, l                                       ; $5a63: $6d
    add e                                         ; $5a64: $83
    add a                                         ; $5a65: $87
    cp h                                          ; $5a66: $bc
    db $10                                        ; $5a67: $10
    ld c, e                                       ; $5a68: $4b
    ei                                            ; $5a69: $fb

jr_04b_5a6a:
    ret nc                                        ; $5a6a: $d0

    ld l, $0d                                     ; $5a6b: $2e $0d
    db $10                                        ; $5a6d: $10

jr_04b_5a6e:
    ld a, [$cf78]                                 ; $5a6e: $fa $78 $cf
    db $e4                                        ; $5a71: $e4
    jr nz, jr_04b_5a6e                            ; $5a72: $20 $fa

    ld b, d                                       ; $5a74: $42
    ld c, e                                       ; $5a75: $4b
    ld c, e                                       ; $5a76: $4b
    inc l                                         ; $5a77: $2c
    rst $28                                       ; $5a78: $ef
    ld d, h                                       ; $5a79: $54
    jr nc, jr_04b_5a6a                            ; $5a7a: $30 $ee

    xor b                                         ; $5a7c: $a8
    sbc c                                         ; $5a7d: $99
    call $5778                                    ; $5a7e: $cd $78 $57
    adc l                                         ; $5a81: $8d
    rla                                           ; $5a82: $17
    sbc c                                         ; $5a83: $99
    ld c, c                                       ; $5a84: $49
    sbc [hl]                                      ; $5a85: $9e
    rst $28                                       ; $5a86: $ef
    adc $66                                       ; $5a87: $ce $66
    ld [hl], d                                    ; $5a89: $72
    and [hl]                                      ; $5a8a: $a6
    ld [hl], l                                    ; $5a8b: $75
    sbc e                                         ; $5a8c: $9b
    adc e                                         ; $5a8d: $8b
    call z, Call_000_2568                         ; $5a8e: $cc $68 $25
    ld d, b                                       ; $5a91: $50
    adc d                                         ; $5a92: $8a
    rrca                                          ; $5a93: $0f
    ld c, a                                       ; $5a94: $4f
    cp d                                          ; $5a95: $ba
    ccf                                           ; $5a96: $3f

jr_04b_5a97:
    ld a, l                                       ; $5a97: $7d
    cp h                                          ; $5a98: $bc
    rst $20                                       ; $5a99: $e7
    or l                                          ; $5a9a: $b5
    add hl, de                                    ; $5a9b: $19
    call $9ffd                                    ; $5a9c: $cd $fd $9f
    sub $e6                                       ; $5a9f: $d6 $e6
    ld c, [hl]                                    ; $5aa1: $4e
    sub [hl]                                      ; $5aa2: $96
    cp [hl]                                       ; $5aa3: $be
    ld a, [de]                                    ; $5aa4: $1a
    inc de                                        ; $5aa5: $13
    call z, Call_04b_4fff                         ; $5aa6: $cc $ff $4f
    dec bc                                        ; $5aa9: $0b
    rl e                                          ; $5aaa: $cb $13
    cp [hl]                                       ; $5aac: $be
    cp d                                          ; $5aad: $ba
    ld [hl], d                                    ; $5aae: $72
    nop                                           ; $5aaf: $00
    rst $10                                       ; $5ab0: $d7
    db $e4                                        ; $5ab1: $e4

Jump_04b_5ab2:
    add b                                         ; $5ab2: $80
    call Call_04b_4f1b                            ; $5ab3: $cd $1b $4f
    ld hl, sp+$6a                                 ; $5ab6: $f8 $6a
    adc c                                         ; $5ab8: $89
    push hl                                       ; $5ab9: $e5
    ld h, c                                       ; $5aba: $61
    adc d                                         ; $5abb: $8a
    ccf                                           ; $5abc: $3f
    nop                                           ; $5abd: $00
    cpl                                           ; $5abe: $2f
    cpl                                           ; $5abf: $2f
    or b                                          ; $5ac0: $b0
    ld d, e                                       ; $5ac1: $53
    push af                                       ; $5ac2: $f5
    push bc                                       ; $5ac3: $c5
    ld c, h                                       ; $5ac4: $4c
    xor e                                         ; $5ac5: $ab
    dec b                                         ; $5ac6: $05
    dec e                                         ; $5ac7: $1d
    scf                                           ; $5ac8: $37
    inc hl                                        ; $5ac9: $23
    ld c, h                                       ; $5aca: $4c
    push bc                                       ; $5acb: $c5
    db $dd                                        ; $5acc: $dd
    add a                                         ; $5acd: $87
    or $de                                        ; $5ace: $f6 $de
    xor c                                         ; $5ad0: $a9
    sbc b                                         ; $5ad1: $98
    adc d                                         ; $5ad2: $8a
    adc e                                         ; $5ad3: $8b
    cp c                                          ; $5ad4: $b9
    inc de                                        ; $5ad5: $13

jr_04b_5ad6:
    ld l, d                                       ; $5ad6: $6a
    sbc [hl]                                      ; $5ad7: $9e
    and b                                         ; $5ad8: $a0
    ld sp, $9b70                                  ; $5ad9: $31 $70 $9b
    ld [c], a                                     ; $5adc: $e2
    rst $30                                       ; $5add: $f7
    inc a                                         ; $5ade: $3c
    ld b, $32                                     ; $5adf: $06 $32
    sbc $55                                       ; $5ae1: $de $55
    db $e3                                        ; $5ae3: $e3
    sbc l                                         ; $5ae4: $9d
    ld d, c                                       ; $5ae5: $51
    cp e                                          ; $5ae6: $bb
    and l                                         ; $5ae7: $a5
    and $14                                       ; $5ae8: $e6 $14
    db $e4                                        ; $5aea: $e4
    add sp, $7d                                   ; $5aeb: $e8 $7d
    ld l, b                                       ; $5aed: $68
    cp [hl]                                       ; $5aee: $be
    inc bc                                        ; $5aef: $03
    db $f4                                        ; $5af0: $f4
    db $d3                                        ; $5af1: $d3
    rrca                                          ; $5af2: $0f
    push de                                       ; $5af3: $d5
    jp c, $ff0c                                   ; $5af4: $da $0c $ff

    and a                                         ; $5af7: $a7
    inc d                                         ; $5af8: $14
    db $f4                                        ; $5af9: $f4
    xor a                                         ; $5afa: $af
    adc a                                         ; $5afb: $8f
    ld [hl], a                                    ; $5afc: $77
    push af                                       ; $5afd: $f5
    ld [hl], $9a                                  ; $5afe: $36 $9a
    cp $1f                                        ; $5b00: $fe $1f
    ld [c], a                                     ; $5b02: $e2
    or l                                          ; $5b03: $b5
    cp c                                          ; $5b04: $b9
    ld [hl], $c3                                  ; $5b05: $36 $c3
    rst $38                                       ; $5b07: $ff
    add hl, hl                                    ; $5b08: $29
    add a                                         ; $5b09: $87
    cp c                                          ; $5b0a: $b9
    or b                                          ; $5b0b: $b0
    inc a                                         ; $5b0c: $3c
    pop hl                                        ; $5b0d: $e1
    xor e                                         ; $5b0e: $ab
    ld a, c                                       ; $5b0f: $79
    db $ec                                        ; $5b10: $ec
    ld c, d                                       ; $5b11: $4a
    xor c                                         ; $5b12: $a9
    jr jr_04b_5ad6                                ; $5b13: $18 $c1

    call c, $e9d2                                 ; $5b15: $dc $d2 $e9
    and a                                         ; $5b18: $a7
    rra                                           ; $5b19: $1f
    xor d                                         ; $5b1a: $aa
    ld a, b                                       ; $5b1b: $78
    ld l, a                                       ; $5b1c: $6f
    ld [hl], a                                    ; $5b1d: $77
    pop de                                        ; $5b1e: $d1
    ld h, a                                       ; $5b1f: $67
    xor $bc                                       ; $5b20: $ee $bc
    pop af                                        ; $5b22: $f1
    adc h                                         ; $5b23: $8c
    and d                                         ; $5b24: $a2
    ld c, [hl]                                    ; $5b25: $4e
    ld l, b                                       ; $5b26: $68
    dec d                                         ; $5b27: $15
    rst $28                                       ; $5b28: $ef
    adc h                                         ; $5b29: $8c
    call $e771                                    ; $5b2a: $cd $71 $e7
    ld h, d                                       ; $5b2d: $62
    ld a, [$7c66]                                 ; $5b2e: $fa $66 $7c
    nop                                           ; $5b31: $00
    rst $08                                       ; $5b32: $cf
    db $e4                                        ; $5b33: $e4
    ld c, h                                       ; $5b34: $4c
    xor e                                         ; $5b35: $ab
    ld a, c                                       ; $5b36: $79
    ld h, e                                       ; $5b37: $63
    ret nc                                        ; $5b38: $d0

    db $ec                                        ; $5b39: $ec
    ld c, [hl]                                    ; $5b3a: $4e
    add $f3                                       ; $5b3b: $c6 $f3
    ret c                                         ; $5b3d: $d8

    or l                                          ; $5b3e: $b5
    add hl, de                                    ; $5b3f: $19
    cp $4f                                        ; $5b40: $fe $4f
    cp c                                          ; $5b42: $b9
    or b                                          ; $5b43: $b0
    dec d                                         ; $5b44: $15
    pop af                                        ; $5b45: $f1
    call z, $d412                                 ; $5b46: $cc $12 $d4
    dec [hl]                                      ; $5b49: $35
    xor l                                         ; $5b4a: $ad
    sbc e                                         ; $5b4b: $9b
    ei                                            ; $5b4c: $fb
    xor c                                         ; $5b4d: $a9
    sub [hl]                                      ; $5b4e: $96
    rst $18                                       ; $5b4f: $df
    ld e, c                                       ; $5b50: $59
    ld c, e                                       ; $5b51: $4b
    adc d                                         ; $5b52: $8a
    rst $20                                       ; $5b53: $e7
    ld h, d                                       ; $5b54: $62
    ld a, d                                       ; $5b55: $7a
    cp [hl]                                       ; $5b56: $be
    ld [hl], d                                    ; $5b57: $72
    nop                                           ; $5b58: $00
    cpl                                           ; $5b59: $2f

jr_04b_5b5a:
    and c                                         ; $5b5a: $a1

jr_04b_5b5b:
    ld d, h                                       ; $5b5b: $54
    jp $379c                                      ; $5b5c: $c3 $9c $37


    sbc [hl]                                      ; $5b5f: $9e
    ldh a, [$d5]                                  ; $5b60: $f0 $d5
    adc $a6                                       ; $5b62: $ce $a6
    rla                                           ; $5b64: $17
    jr c, jr_04b_5bc1                             ; $5b65: $38 $5a

    ld h, e                                       ; $5b67: $63
    ld [hl], a                                    ; $5b68: $77

jr_04b_5b69:
    ld [hl-], a                                   ; $5b69: $32
    ld e, [hl]                                    ; $5b6a: $5e
    ld h, h                                       ; $5b6b: $64
    or d                                          ; $5b6c: $b2
    add hl, sp                                    ; $5b6d: $39
    db $d3                                        ; $5b6e: $d3
    ld l, d                                       ; $5b6f: $6a
    jr z, jr_04b_5b69                             ; $5b70: $28 $f7

    ld b, l                                       ; $5b72: $45
    ld a, e                                       ; $5b73: $7b
    pop de                                        ; $5b74: $d1
    ld b, c                                       ; $5b75: $41
    cp l                                          ; $5b76: $bd
    sub d                                         ; $5b77: $92
    add b                                         ; $5b78: $80
    pop bc                                        ; $5b79: $c1
    adc $18                                       ; $5b7a: $ce $18
    ld h, h                                       ; $5b7c: $64
    cp h                                          ; $5b7d: $bc
    and a                                         ; $5b7e: $a7
    inc [hl]                                      ; $5b7f: $34
    ld b, $a2                                     ; $5b80: $06 $a2
    ld a, l                                       ; $5b82: $7d
    ld l, b                                       ; $5b83: $68
    or a                                          ; $5b84: $b7
    pop af                                        ; $5b85: $f1
    jr nz, @-$0b                                  ; $5b86: $20 $f3

    pop af                                        ; $5b88: $f1
    sbc $ee                                       ; $5b89: $de $ee

jr_04b_5b8b:
    inc d                                         ; $5b8b: $14
    and h                                         ; $5b8c: $a4
    sub c                                         ; $5b8d: $91
    ld d, l                                       ; $5b8e: $55
    ld [hl], e                                    ; $5b8f: $73
    ccf                                           ; $5b90: $3f
    push de                                       ; $5b91: $d5
    jr nc, jr_04b_5b5b                            ; $5b92: $30 $c7

    and a                                         ; $5b94: $a7
    halt                                          ; $5b95: $76
    add b                                         ; $5b96: $80
    ld a, [hl]                                    ; $5b97: $7e
    and c                                         ; $5b98: $a1
    ld h, [hl]                                    ; $5b99: $66
    ld a, h                                       ; $5b9a: $7c
    nop                                           ; $5b9b: $00
    ld c, a                                       ; $5b9c: $4f
    ld l, d                                       ; $5b9d: $6a
    dec [hl]                                      ; $5b9e: $35
    sub h                                         ; $5b9f: $94
    di                                            ; $5ba0: $f3
    ld h, [hl]                                    ; $5ba1: $66
    inc [hl]                                      ; $5ba2: $34
    call z, $bf45                                 ; $5ba3: $cc $45 $bf
    ld a, h                                       ; $5ba6: $7c
    or c                                          ; $5ba7: $b1
    inc de                                        ; $5ba8: $13
    ld [$5ca1], a                                 ; $5ba9: $ea $a1 $5c
    ld d, h                                       ; $5bac: $54
    sbc $8b                                       ; $5bad: $de $8b
    ld c, $ea                                     ; $5baf: $0e $ea
    ld b, l                                       ; $5bb1: $45
    ld l, l                                       ; $5bb2: $6d
    ld a, h                                       ; $5bb3: $7c
    nop                                           ; $5bb4: $00
    cpl                                           ; $5bb5: $2f
    ld h, d                                       ; $5bb6: $62
    jr nc, jr_04b_5b5a                            ; $5bb7: $30 $a1

    adc d                                         ; $5bb9: $8a
    db $e3                                        ; $5bba: $e3
    ld e, l                                       ; $5bbb: $5d
    or l                                          ; $5bbc: $b5
    inc e                                         ; $5bbd: $1c
    jr nc, jr_04b_5b8b                            ; $5bbe: $30 $cb

    ld e, l                                       ; $5bc0: $5d

jr_04b_5bc1:
    ld a, [de]                                    ; $5bc1: $1a
    sub c                                         ; $5bc2: $91
    sbc b                                         ; $5bc3: $98
    adc e                                         ; $5bc4: $8b
    ld e, l                                       ; $5bc5: $5d
    sub [hl]                                      ; $5bc6: $96
    and d                                         ; $5bc7: $a2
    ld l, d                                       ; $5bc8: $6a
    ld l, h                                       ; $5bc9: $6c
    xor [hl]                                      ; $5bca: $ae
    add hl, sp                                    ; $5bcb: $39

jr_04b_5bcc:
    sub h                                         ; $5bcc: $94
    di                                            ; $5bcd: $f3
    ld e, l                                       ; $5bce: $5d
    or e                                          ; $5bcf: $b3
    sub e                                         ; $5bd0: $93
    sub [hl]                                      ; $5bd1: $96
    cp h                                          ; $5bd2: $bc
    rrca                                          ; $5bd3: $0f
    xor l                                         ; $5bd4: $ad
    cp c                                          ; $5bd5: $b9
    rla                                           ; $5bd6: $17
    ld c, l                                       ; $5bd7: $4d
    adc e                                         ; $5bd8: $8b
    ret nc                                        ; $5bd9: $d0

    dec sp                                        ; $5bda: $3b
    ld [$2f62], a                                 ; $5bdb: $ea $62 $2f
    ld a, [de]                                    ; $5bde: $1a
    pop bc                                        ; $5bdf: $c1
    xor e                                         ; $5be0: $ab
    rst $10                                       ; $5be1: $d7
    call c, Call_000_0e8b                         ; $5be2: $dc $8b $0e
    ld [$cef9], a                                 ; $5be5: $ea $f9 $ce
    jp nc, Jump_000_1a97                          ; $5be8: $d2 $97 $1a

    rst $28                                       ; $5beb: $ef
    ld c, c                                       ; $5bec: $49
    xor l                                         ; $5bed: $ad
    ld d, $74                                     ; $5bee: $16 $74
    sbc b                                         ; $5bf0: $98
    di                                            ; $5bf1: $f3
    dec e                                         ; $5bf2: $1d
    call nc, $c234                                ; $5bf3: $d4 $34 $c2
    ld c, [hl]                                    ; $5bf6: $4e
    cp $88                                        ; $5bf7: $fe $88
    cpl                                           ; $5bf9: $2f
    and [hl]                                      ; $5bfa: $a6
    jr nz, @+$09                                  ; $5bfb: $20 $07

    ld a, c                                       ; $5bfd: $79
    ld b, c                                       ; $5bfe: $41
    ld b, a                                       ; $5bff: $47
    rst $38                                       ; $5c00: $ff
    ld h, e                                       ; $5c01: $63
    rst $20                                       ; $5c02: $e7
    cp $94                                        ; $5c03: $fe $94
    call $e545                                    ; $5c05: $cd $45 $e5
    dec b                                         ; $5c08: $05
    dec e                                         ; $5c09: $1d
    ld a, a                                       ; $5c0a: $7f
    or a                                          ; $5c0b: $b7
    and h                                         ; $5c0c: $a4
    ld hl, sp+$4b                                 ; $5c0d: $f8 $4b
    adc c                                         ; $5c0f: $89
    adc l                                         ; $5c10: $8d
    rrca                                          ; $5c11: $0f
    xor a                                         ; $5c12: $af
    ret nc                                        ; $5c13: $d0

    rla                                           ; $5c14: $17
    ld e, d                                       ; $5c15: $5a
    sbc d                                         ; $5c16: $9a
    add b                                         ; $5c17: $80
    pop bc                                        ; $5c18: $c1
    ld a, [hl]                                    ; $5c19: $7e
    xor d                                         ; $5c1a: $aa
    ld [hl], c                                    ; $5c1b: $71
    daa                                           ; $5c1c: $27
    ld l, b                                       ; $5c1d: $68
    inc c                                         ; $5c1e: $0c
    call c, $c5e6                                 ; $5c1f: $dc $e6 $c5
    ld l, $8d                                     ; $5c22: $2e $8d
    ld c, b                                       ; $5c24: $48
    ld c, h                                       ; $5c25: $4c
    cp h                                          ; $5c26: $bc
    xor e                                         ; $5c27: $ab
    ret z                                         ; $5c28: $c8

    inc de                                        ; $5c29: $13
    cp [hl]                                       ; $5c2a: $be
    ld a, [de]                                    ; $5c2b: $1a
    xor d                                         ; $5c2c: $aa
    add c                                         ; $5c2d: $81
    cp d                                          ; $5c2e: $ba
    ld h, [hl]                                    ; $5c2f: $66
    and h                                         ; $5c30: $a4
    ld sp, $f190                                  ; $5c31: $31 $90 $f1
    ld bc, $636f                                  ; $5c34: $01 $6f $63
    add a                                         ; $5c37: $87
    ld l, d                                       ; $5c38: $6a
    sbc $8c                                       ; $5c39: $de $8c
    ld [c], a                                     ; $5c3b: $e2
    jr c, jr_04b_5bcc                             ; $5c3c: $38 $8e

    rst $30                                       ; $5c3e: $f7
    cpl                                           ; $5c3f: $2f
    ld h, $34                                     ; $5c40: $26 $34
    rla                                           ; $5c42: $17
    ld h, b                                       ; $5c43: $60
    or b                                          ; $5c44: $b0
    db $db                                        ; $5c45: $db
    jr c, jr_04b_5c86                             ; $5c46: $38 $3e

    nop                                           ; $5c48: $00
    rst $08                                       ; $5c49: $cf
    db $fd                                        ; $5c4a: $fd
    ld a, [$b9a6]                                 ; $5c4b: $fa $a6 $b9
    ccf                                           ; $5c4e: $3f
    db $fd                                        ; $5c4f: $fd
    push bc                                       ; $5c50: $c5
    ld l, $0d                                     ; $5c51: $2e $0d
    db $10                                        ; $5c53: $10
    ld a, [$00f8]                                 ; $5c54: $fa $f8 $00
    ld d, a                                       ; $5c57: $57
    sub c                                         ; $5c58: $91
    ld [hl], a                                    ; $5c59: $77
    add $20                                       ; $5c5a: $c6 $20
    ld [hl], a                                    ; $5c5c: $77
    ld l, c                                       ; $5c5d: $69
    ld b, h                                       ; $5c5e: $44
    ld h, d                                       ; $5c5f: $62
    or $ca                                        ; $5c60: $f6 $ca
    ld h, a                                       ; $5c62: $67
    ld l, $ad                                     ; $5c63: $2e $ad
    cp c                                          ; $5c65: $b9
    bit 2, d                                      ; $5c66: $cb $52
    ld d, h                                       ; $5c68: $54
    adc l                                         ; $5c69: $8d
    call $473d                                    ; $5c6a: $cd $3d $47
    jr z, jr_04b_5c81                             ; $5c6d: $28 $12

    ld d, l                                       ; $5c6f: $55
    ld e, a                                       ; $5c70: $5f
    adc h                                         ; $5c71: $8c
    ld c, a                                       ; $5c72: $4f
    db $ed                                        ; $5c73: $ed
    ld [hl], h                                    ; $5c74: $74
    ld c, e                                       ; $5c75: $4b
    ld a, [de]                                    ; $5c76: $1a
    inc de                                        ; $5c77: $13
    inc [hl]                                      ; $5c78: $34
    rst $20                                       ; $5c79: $e7
    ld e, d                                       ; $5c7a: $5a
    ld c, [hl]                                    ; $5c7b: $4e
    pop bc                                        ; $5c7c: $c1
    jp $75ff                                      ; $5c7d: $c3 $ff $75


    cp h                                          ; $5c80: $bc

jr_04b_5c81:
    ld h, a                                       ; $5c81: $67
    ld [hl], d                                    ; $5c82: $72
    ld e, $79                                     ; $5c83: $1e $79
    xor b                                         ; $5c85: $a8

jr_04b_5c86:
    or $da                                        ; $5c86: $f6 $da
    ld c, a                                       ; $5c88: $4f
    res 1, e                                      ; $5c89: $cb $8b
    add l                                         ; $5c8b: $85
    jr jr_04b_5c9a                                ; $5c8c: $18 $0c

    push de                                       ; $5c8e: $d5
    jp c, $bc1c                                   ; $5c8f: $da $1c $bc

    ret                                           ; $5c92: $c9


    and $50                                       ; $5c93: $e6 $50
    ld a, h                                       ; $5c95: $7c
    nop                                           ; $5c96: $00
    ld d, a                                       ; $5c97: $57
    adc l                                         ; $5c98: $8d
    rla                                           ; $5c99: $17

jr_04b_5c9a:
    sbc d                                         ; $5c9a: $9a
    rst $30                                       ; $5c9b: $f7
    call Call_000_3a9d                            ; $5c9c: $cd $9d $3a
    db $d3                                        ; $5c9f: $d3
    inc bc                                        ; $5ca0: $03
    dec a                                         ; $5ca1: $3d
    ld h, e                                       ; $5ca2: $63
    inc sp                                        ; $5ca3: $33
    ld a, $00                                     ; $5ca4: $3e $00
    ld d, a                                       ; $5ca6: $57
    ld l, a                                       ; $5ca7: $6f
    and e                                         ; $5ca8: $a3
    ld b, l                                       ; $5ca9: $45
    sbc a                                         ; $5caa: $9f
    ld d, a                                       ; $5cab: $57
    ld [bc], a                                    ; $5cac: $02
    ld c, l                                       ; $5cad: $4d
    or l                                          ; $5cae: $b5
    ld [hl], $07                                  ; $5caf: $36 $07
    ld a, d                                       ; $5cb1: $7a
    ld a, [$bbe9]                                 ; $5cb2: $fa $e9 $bb

Call_04b_5cb5:
    ld [hl], $c3                                  ; $5cb5: $36 $c3
    rst $38                                       ; $5cb7: $ff
    add hl, hl                                    ; $5cb8: $29
    ld b, a                                       ; $5cb9: $47
    ccf                                           ; $5cba: $3f
    cp l                                          ; $5cbb: $bd
    cp $50                                        ; $5cbc: $fe $50
    ld [hl], e                                    ; $5cbe: $73
    ld [hl], a                                    ; $5cbf: $77
    dec l                                         ; $5cc0: $2d
    xor h                                         ; $5cc1: $ac
    or b                                          ; $5cc2: $b0
    nop                                           ; $5cc3: $00
    add e                                         ; $5cc4: $83
    sbc l                                         ; $5cc5: $9d
    adc h                                         ; $5cc6: $8c
    ld b, a                                       ; $5cc7: $47
    ld h, [hl]                                    ; $5cc8: $66
    and h                                         ; $5cc9: $a4
    ld b, $7a                                     ; $5cca: $06 $7a
    add $e6                                       ; $5ccc: $c6 $e6
    sub l                                         ; $5cce: $95
    inc bc                                        ; $5ccf: $03
    cpl                                           ; $5cd0: $2f
    ld a, [de]                                    ; $5cd1: $1a

Call_04b_5cd2:
    xor c                                         ; $5cd2: $a9
    and c                                         ; $5cd3: $a1
    jp c, $d04f                                   ; $5cd4: $da $4f $d0

    db $d3                                        ; $5cd7: $d3
    rst $38                                       ; $5cd8: $ff
    cp c                                          ; $5cd9: $b9
    or b                                          ; $5cda: $b0
    jp c, $e697                                   ; $5cdb: $da $97 $e6

    ld e, d                                       ; $5cde: $5a
    and [hl]                                      ; $5cdf: $a6
    pop bc                                        ; $5ce0: $c1
    ld b, e                                       ; $5ce1: $43
    adc [hl]                                      ; $5ce2: $8e
    rrca                                          ; $5ce3: $0f
    rst $10                                       ; $5ce4: $d7
    db $e4                                        ; $5ce5: $e4
    add h                                         ; $5ce6: $84
    ld a, [$3d5f]                                 ; $5ce7: $fa $5f $3d
    inc l                                         ; $5cea: $2c
    xor e                                         ; $5ceb: $ab
    and b                                         ; $5cec: $a0
    di                                            ; $5ced: $f3
    ld [$b90f], sp                                ; $5cee: $08 $0f $b9
    inc [hl]                                      ; $5cf1: $34
    ld bc, $8583                                  ; $5cf2: $01 $83 $85
    ld c, $aa                                     ; $5cf5: $0e $aa
    ld hl, sp+$00                                 ; $5cf7: $f8 $00
    rst $10                                       ; $5cf9: $d7
    ld [hl], d                                    ; $5cfa: $72
    ld h, c                                       ; $5cfb: $61
    ld a, c                                       ; $5cfc: $79
    jp nz, $5357                                  ; $5cfd: $c2 $57 $53

    ldh a, [$d0]                                  ; $5d00: $f0 $d0
    ld b, c                                       ; $5d02: $41
    db $dd                                        ; $5d03: $dd
    sbc h                                         ; $5d04: $9c
    ld e, e                                       ; $5d05: $5b
    db $dd                                        ; $5d06: $dd
    add c                                         ; $5d07: $81
    add [hl]                                      ; $5d08: $86
    push bc                                       ; $5d09: $c5
    xor b                                         ; $5d0a: $a8
    add hl, de                                    ; $5d0b: $19
    rra                                           ; $5d0c: $1f
    ld c, a                                       ; $5d0d: $4f
    ld a, [de]                                    ; $5d0e: $1a
    ld a, c                                       ; $5d0f: $79
    inc b                                         ; $5d10: $04
    ld [hl], e                                    ; $5d11: $73
    dec l                                         ; $5d12: $2d
    rla                                           ; $5d13: $17
    ld [hl], h                                    ; $5d14: $74
    sbc $78                                       ; $5d15: $de $78
    ld b, c                                       ; $5d17: $41
    rla                                           ; $5d18: $17
    ld d, [hl]                                    ; $5d19: $56
    ld b, e                                       ; $5d1a: $43
    cp h                                          ; $5d1b: $bc
    rra                                           ; $5d1c: $1f
    db $ed                                        ; $5d1d: $ed
    call c, $2771                                 ; $5d1e: $dc $71 $27
    db $f4                                        ; $5d21: $f4
    ld h, h                                       ; $5d22: $64
    call nc, $0f8c                                ; $5d23: $d4 $8c $0f
    sub a                                         ; $5d26: $97
    and [hl]                                      ; $5d27: $a6
    push af                                       ; $5d28: $f5
    cp a                                          ; $5d29: $bf
    ret c                                         ; $5d2a: $d8

    and l                                         ; $5d2b: $a5
    ld bc, $1f42                                  ; $5d2c: $01 $42 $1f
    rra                                           ; $5d2f: $1f
    sub a                                         ; $5d30: $97
    and [hl]                                      ; $5d31: $a6
    push af                                       ; $5d32: $f5
    cp a                                          ; $5d33: $bf
    ret c                                         ; $5d34: $d8

    ld d, e                                       ; $5d35: $53
    sub [hl]                                      ; $5d36: $96
    pop af                                        ; $5d37: $f1
    xor [hl]                                      ; $5d38: $ae
    ret                                           ; $5d39: $c9


    cp c                                          ; $5d3a: $b9
    db $f4                                        ; $5d3b: $f4
    dec bc                                        ; $5d3c: $0b
    sub [hl]                                      ; $5d3d: $96
    push hl                                       ; $5d3e: $e5
    sbc c                                         ; $5d3f: $99
    push hl                                       ; $5d40: $e5
    ld e, [hl]                                    ; $5d41: $5e
    ei                                            ; $5d42: $fb
    ld l, c                                       ; $5d43: $69
    cp c                                          ; $5d44: $b9
    cpl                                           ; $5d45: $2f
    ld e, d                                       ; $5d46: $5a
    ldh [rBCPS], a                                ; $5d47: $e0 $68
    adc l                                         ; $5d49: $8d
    dec e                                         ; $5d4a: $1d
    sub [hl]                                      ; $5d4b: $96
    push de                                       ; $5d4c: $d5
    ld e, h                                       ; $5d4d: $5c
    ld l, d                                       ; $5d4e: $6a
    inc hl                                        ; $5d4f: $23
    xor a                                         ; $5d50: $af
    ld d, $56                                     ; $5d51: $16 $56
    db $10                                        ; $5d53: $10
    sbc d                                         ; $5d54: $9a
    inc bc                                        ; $5d55: $03
    dec a                                         ; $5d56: $3d
    ld h, e                                       ; $5d57: $63
    di                                            ; $5d58: $f3
    jp z, Jump_000_2f01                           ; $5d59: $ca $01 $2f

    ld a, [de]                                    ; $5d5c: $1a
    xor c                                         ; $5d5d: $a9
    and c                                         ; $5d5e: $a1
    jp c, $d04f                                   ; $5d5f: $da $4f $d0

    db $d3                                        ; $5d62: $d3
    rst $38                                       ; $5d63: $ff
    cp c                                          ; $5d64: $b9
    or b                                          ; $5d65: $b0
    jp c, $e697                                   ; $5d66: $da $97 $e6

    ld e, d                                       ; $5d69: $5a
    sbc d                                         ; $5d6a: $9a
    ei                                            ; $5d6b: $fb
    db $d3                                        ; $5d6c: $d3
    rst $00                                       ; $5d6d: $c7
    rlca                                          ; $5d6e: $07
    ld d, a                                       ; $5d6f: $57
    call Call_04b_6768                            ; $5d70: $cd $68 $67
    inc c                                         ; $5d73: $0c
    ld [hl], d                                    ; $5d74: $72
    ld h, a                                       ; $5d75: $67
    ld b, a                                       ; $5d76: $47
    ld l, e                                       ; $5d77: $6b
    db $ec                                        ; $5d78: $ec
    jp nz, $bef2                                  ; $5d79: $c2 $f2 $be

    ld e, e                                       ; $5d7c: $5b
    ld e, d                                       ; $5d7d: $5a
    sbc e                                         ; $5d7e: $9b
    ld a, [hl+]                                   ; $5d7f: $2a
    sbc $db                                       ; $5d80: $de $db
    sbc l                                         ; $5d82: $9d
    ld h, d                                       ; $5d83: $62
    add e                                         ; $5d84: $83
    and b                                         ; $5d85: $a0
    and $22                                       ; $5d86: $e6 $22
    inc sp                                        ; $5d88: $33
    jp c, $a5a9                                   ; $5d89: $da $a9 $a5

    or l                                          ; $5d8c: $b5
    xor c                                         ; $5d8d: $a9
    or $a1                                        ; $5d8e: $f6 $a1
    ld a, b                                       ; $5d90: $78
    ld c, a                                       ; $5d91: $4f
    ld l, d                                       ; $5d92: $6a
    or l                                          ; $5d93: $b5
    ret nz                                        ; $5d94: $c0

    pop de                                        ; $5d95: $d1
    ld a, [de]                                    ; $5d96: $1a
    dec sp                                        ; $5d97: $3b
    inc l                                         ; $5d98: $2c
    xor e                                         ; $5d99: $ab
    sbc l                                         ; $5d9a: $9d
    or c                                          ; $5d9b: $b1
    cp c                                          ; $5d9c: $b9
    sub e                                         ; $5d9d: $93
    pop af                                        ; $5d9e: $f1
    ld b, d                                       ; $5d9f: $42
    inc l                                         ; $5da0: $2c
    add hl, bc                                    ; $5da1: $09
    call $e6fa                                    ; $5da2: $cd $fa $e6
    jr nc, @+$09                                  ; $5da5: $30 $07

    ld l, c                                       ; $5da7: $69
    inc sp                                        ; $5da8: $33
    ld d, [hl]                                    ; $5da9: $56
    ld [hl], e                                    ; $5daa: $73
    dec l                                         ; $5dab: $2d
    rst $20                                       ; $5dac: $e7
    call $f848                                    ; $5dad: $cd $48 $f8
    ld l, [hl]                                    ; $5db0: $6e
    ld [hl], e                                    ; $5db1: $73
    ld l, $b5                                     ; $5db2: $2e $b5
    sub c                                         ; $5db4: $91
    rra                                           ; $5db5: $1f
    xor d                                         ; $5db6: $aa
    adc e                                         ; $5db7: $8b
    ld l, c                                       ; $5db8: $69
    inc sp                                        ; $5db9: $33
    sbc $6d                                       ; $5dba: $de $6d
    cp h                                          ; $5dbc: $bc
    xor b                                         ; $5dbd: $a8
    di                                            ; $5dbe: $f3
    sub [hl]                                      ; $5dbf: $96
    dec sp                                        ; $5dc0: $3b
    sub l                                         ; $5dc1: $95
    sbc e                                         ; $5dc2: $9b
    pop af                                        ; $5dc3: $f1
    ld bc, $3b57                                  ; $5dc4: $01 $57 $3b
    push bc                                       ; $5dc7: $c5
    dec h                                         ; $5dc8: $25
    ld l, d                                       ; $5dc9: $6a
    adc $fd                                       ; $5dca: $ce $fd
    sbc a                                         ; $5dcc: $9f
    inc d                                         ; $5dcd: $14
    ld d, h                                       ; $5dce: $54
    xor l                                         ; $5dcf: $ad
    sbc e                                         ; $5dd0: $9b
    ei                                            ; $5dd1: $fb
    xor c                                         ; $5dd2: $a9
    and [hl]                                      ; $5dd3: $a6
    ccf                                           ; $5dd4: $3f
    rst $00                                       ; $5dd5: $c7
    cp e                                          ; $5dd6: $bb
    ld l, d                                       ; $5dd7: $6a
    cp h                                          ; $5dd8: $bc
    add sp, -$69                                  ; $5dd9: $e8 $97
    sbc e                                         ; $5ddb: $9b
    dec sp                                        ; $5ddc: $3b
    ld [hl], l                                    ; $5ddd: $75
    ld b, $87                                     ; $5dde: $06 $87
    rla                                           ; $5de0: $17
    ld [c], a                                     ; $5de1: $e2
    ld d, d                                       ; $5de2: $52
    inc sp                                        ; $5de3: $33
    ld a, $00                                     ; $5de4: $3e $00
    ld d, a                                       ; $5de6: $57
    dec sp                                        ; $5de7: $3b
    push bc                                       ; $5de8: $c5
    dec h                                         ; $5de9: $25
    ld l, d                                       ; $5dea: $6a
    adc $fd                                       ; $5deb: $ce $fd
    sbc a                                         ; $5ded: $9f
    inc d                                         ; $5dee: $14
    ld d, h                                       ; $5def: $54
    xor l                                         ; $5df0: $ad
    sbc e                                         ; $5df1: $9b
    ld c, e                                       ; $5df2: $4b
    inc l                                         ; $5df3: $2c
    rst $08                                       ; $5df4: $cf
    or h                                          ; $5df5: $b4
    ld l, [hl]                                    ; $5df6: $6e
    ld [hl], e                                    ; $5df7: $73
    sub c                                         ; $5df8: $91
    add hl, de                                    ; $5df9: $19
    dec c                                         ; $5dfa: $0d
    db $fc                                        ; $5dfb: $fc
    ld a, [$63ce]                                 ; $5dfc: $fa $ce $63
    add d                                         ; $5dff: $82
    ld h, [hl]                                    ; $5e00: $66
    ld a, h                                       ; $5e01: $7c
    nop                                           ; $5e02: $00
    cpl                                           ; $5e03: $2f
    dec d                                         ; $5e04: $15
    ld h, d                                       ; $5e05: $62
    daa                                           ; $5e06: $27
    dec e                                         ; $5e07: $1d
    dec [hl]                                      ; $5e08: $35
    ld d, h                                       ; $5e09: $54
    ld c, e                                       ; $5e0a: $4b
    inc l                                         ; $5e0b: $2c
    rst $28                                       ; $5e0c: $ef
    db $fc                                        ; $5e0d: $fc

jr_04b_5e0e:
    rla                                           ; $5e0e: $17
    ld d, [hl]                                    ; $5e0f: $56
    ei                                            ; $5e10: $fb
    jp nc, $cb5c                                  ; $5e11: $d2 $5c $cb

    inc [hl]                                      ; $5e14: $34
    ld a, b                                       ; $5e15: $78
    ret z                                         ; $5e16: $c8

    rla                                           ; $5e17: $17
    adc e                                         ; $5e18: $8b
    call z, Call_04b_6168                         ; $5e19: $cc $68 $61
    or l                                          ; $5e1c: $b5
    cpl                                           ; $5e1d: $2f
    ld sp, hl                                     ; $5e1e: $f9
    jp nc, $e5bc                                  ; $5e1f: $d2 $bc $e5

    inc l                                         ; $5e22: $2c
    ld a, l                                       ; $5e23: $7d
    ld c, c                                       ; $5e24: $49
    push bc                                       ; $5e25: $c5
    rlca                                          ; $5e26: $07
    ld l, a                                       ; $5e27: $6f
    ld [hl], a                                    ; $5e28: $77
    pop de                                        ; $5e29: $d1
    rlca                                          ; $5e2a: $07
    call Call_000_2361                            ; $5e2b: $cd $61 $23
    ld c, e                                       ; $5e2e: $4b
    cp a                                          ; $5e2f: $bf
    sub e                                         ; $5e30: $93
    add hl, de                                    ; $5e31: $19
    cp c                                          ; $5e32: $b9
    sub [hl]                                      ; $5e33: $96
    di                                            ; $5e34: $f3
    sbc l                                         ; $5e35: $9d
    ld [c], a                                     ; $5e36: $e2
    ld [de], a                                    ; $5e37: $12
    dec [hl]                                      ; $5e38: $35
    ld [hl], a                                    ; $5e39: $77
    ld l, $00                                     ; $5e3a: $2e $00
    call $e379                                    ; $5e3c: $cd $79 $e3
    add l                                         ; $5e3f: $85
    jr jr_04b_5e0e                                ; $5e40: $18 $cc

    dec l                                         ; $5e42: $2d
    ld sp, hl                                     ; $5e43: $f9
    rst $18                                       ; $5e44: $df
    ret z                                         ; $5e45: $c8

    rrca                                          ; $5e46: $0f
    push de                                       ; $5e47: $d5
    ld [de], a                                    ; $5e48: $12
    rrc e                                         ; $5e49: $cb $0b
    xor e                                         ; $5e4b: $ab
    and c                                         ; $5e4c: $a1
    ld h, [hl]                                    ; $5e4d: $66
    ld a, h                                       ; $5e4e: $7c
    nop                                           ; $5e4f: $00
    ld l, a                                       ; $5e50: $6f
    ld [hl], a                                    ; $5e51: $77
    pop de                                        ; $5e52: $d1
    cpl                                           ; $5e53: $2f
    scf                                           ; $5e54: $37
    rst $20                                       ; $5e55: $e7
    cp $4f                                        ; $5e56: $fe $4f
    di                                            ; $5e58: $f3
    db $dd                                        ; $5e59: $dd
    add hl, bc                                    ; $5e5a: $09
    push af                                       ; $5e5b: $f5
    ld a, h                                       ; $5e5c: $7c
    ld l, c                                       ; $5e5d: $69
    adc d                                         ; $5e5e: $8a
    ld c, e                                       ; $5e5f: $4b
    call nc, $e09c                                ; $5e60: $d4 $9c $e0
    jr nz, jr_04b_5ecd                            ; $5e63: $20 $68

    add $07                                       ; $5e65: $c6 $07
    sub a                                         ; $5e67: $97
    push hl                                       ; $5e68: $e5
    add hl, bc                                    ; $5e69: $09
    ld e, a                                       ; $5e6a: $5f
    dec c                                         ; $5e6b: $0d
    push de                                       ; $5e6c: $d5
    jp c, $245c                                   ; $5e6d: $da $5c $24

    ld b, [hl]                                    ; $5e70: $46

jr_04b_5e71:
    ld [hl], c                                    ; $5e71: $71
    add hl, bc                                    ; $5e72: $09
    db $eb                                        ; $5e73: $eb
    xor b                                         ; $5e74: $a8
    db $fd                                        ; $5e75: $fd
    ld c, a                                       ; $5e76: $4f
    ld a, $3e                                     ; $5e77: $3e $3e
    nop                                           ; $5e79: $00
    sub a                                         ; $5e7a: $97
    ld b, $08                                     ; $5e7b: $06 $08
    db $fd                                        ; $5e7d: $fd
    push bc                                       ; $5e7e: $c5
    inc h                                         ; $5e7f: $24
    ld b, $f2                                     ; $5e80: $06 $f2
    ld h, d                                       ; $5e82: $62
    db $f4                                        ; $5e83: $f4
    ld a, l                                       ; $5e84: $7d
    rst $20                                       ; $5e85: $e7
    cp $94                                        ; $5e86: $fe $94
    ld c, l                                       ; $5e88: $4d
    pop af                                        ; $5e89: $f1
    cp e                                          ; $5e8a: $bb
    jp c, $fa59                                   ; $5e8b: $da $59 $fa

    ld d, d                                       ; $5e8e: $52
    ld [hl], e                                    ; $5e8f: $73
    ld h, a                                       ; $5e90: $67
    inc c                                         ; $5e91: $0c
    ld [hl], d                                    ; $5e92: $72
    sbc b                                         ; $5e93: $98
    inc bc                                        ; $5e94: $03
    ld [hl], l                                    ; $5e95: $75
    call Call_000_3e28                            ; $5e96: $cd $28 $3e
    nop                                           ; $5e99: $00
    ld l, a                                       ; $5e9a: $6f
    dec de                                        ; $5e9b: $1b
    inc a                                         ; $5e9c: $3c
    db $e4                                        ; $5e9d: $e4
    and $02                                       ; $5e9e: $e6 $02
    ld b, a                                       ; $5ea0: $47
    ld l, e                                       ; $5ea1: $6b
    db $ec                                        ; $5ea2: $ec
    ld b, d                                       ; $5ea3: $42
    inc l                                         ; $5ea4: $2c
    push bc                                       ; $5ea5: $c5
    rlca                                          ; $5ea6: $07
    rst $10                                       ; $5ea7: $d7
    db $e4                                        ; $5ea8: $e4
    jp nz, $a1ff                                  ; $5ea9: $c2 $ff $a1

    ld a, c                                       ; $5eac: $79
    db $e3                                        ; $5ead: $e3
    sub l                                         ; $5eae: $95
    sub [hl]                                      ; $5eaf: $96
    ret c                                         ; $5eb0: $d8

    ret z                                         ; $5eb1: $c8

    jp nc, $f40f                                  ; $5eb2: $d2 $0f $f4

    db $f4                                        ; $5eb5: $f4
    db $d3                                        ; $5eb6: $d3
    rrca                                          ; $5eb7: $0f
    push de                                       ; $5eb8: $d5
    ld b, b                                       ; $5eb9: $40
    ret                                           ; $5eba: $c9


    ld c, h                                       ; $5ebb: $4c
    or d                                          ; $5ebc: $b2
    ld hl, sp+$03                                 ; $5ebd: $f8 $03
    ld c, a                                       ; $5ebf: $4f
    dec [hl]                                      ; $5ec0: $35
    inc [hl]                                      ; $5ec1: $34
    db $ed                                        ; $5ec2: $ed
    halt                                          ; $5ec3: $76
    ld de, $052a                                  ; $5ec4: $11 $2a $05
    rrca                                          ; $5ec7: $0f
    or c                                          ; $5ec8: $b1
    cp c                                          ; $5ec9: $b9
    rla                                           ; $5eca: $17
    ld c, l                                       ; $5ecb: $4d
    adc e                                         ; $5ecc: $8b

jr_04b_5ecd:
    ret nc                                        ; $5ecd: $d0

    dec sp                                        ; $5ece: $3b
    ld a, [hl+]                                   ; $5ecf: $2a
    adc [hl]                                      ; $5ed0: $8e
    db $e3                                        ; $5ed1: $e3
    inc bc                                        ; $5ed2: $03
    ld l, a                                       ; $5ed3: $6f
    dec de                                        ; $5ed4: $1b
    rrca                                          ; $5ed5: $0f
    push de                                       ; $5ed6: $d5
    ld c, d                                       ; $5ed7: $4a
    inc bc                                        ; $5ed8: $03
    dec d                                         ; $5ed9: $15
    ld [$bf90], a                                 ; $5eda: $ea $90 $bf
    ld [hl], d                                    ; $5edd: $72
    nop                                           ; $5ede: $00
    cpl                                           ; $5edf: $2f
    sbc d                                         ; $5ee0: $9a
    ld d, $a1                                     ; $5ee1: $16 $a1
    ld [hl], a                                    ; $5ee3: $77
    call nc, $b500                                ; $5ee4: $d4 $00 $b5
    ret nc                                        ; $5ee7: $d0

    and d                                         ; $5ee8: $a2
    adc $b4                                       ; $5ee9: $ce $b4
    ld a, [de]                                    ; $5eeb: $1a
    jr nz, jr_04b_5e71                            ; $5eec: $20 $83

    and $5a                                       ; $5eee: $e6 $5a
    adc $e0                                       ; $5ef0: $ce $e0
    ld hl, $9a97                                  ; $5ef2: $21 $97 $9a
    inc de                                        ; $5ef5: $13
    ld e, d                                       ; $5ef6: $5a
    ld e, [hl]                                    ; $5ef7: $5e
    inc sp                                        ; $5ef8: $33
    adc [hl]                                      ; $5ef9: $8e
    db $e3                                        ; $5efa: $e3
    push hl                                       ; $5efb: $e5
    ld [hl], a                                    ; $5efc: $77
    ld d, $d8                                     ; $5efd: $16 $d8
    push bc                                       ; $5eff: $c5
    ld d, b                                       ; $5f00: $50
    adc [hl]                                      ; $5f01: $8e
    call z, Call_04b_7724                         ; $5f02: $cc $24 $77
    sbc b                                         ; $5f05: $98
    add e                                         ; $5f06: $83
    inc l                                         ; $5f07: $2c
    or c                                          ; $5f08: $b1
    ld [hl-], a                                   ; $5f09: $32
    ld a, $00                                     ; $5f0a: $3e $00
    ld l, a                                       ; $5f0c: $6f
    ld [hl], a                                    ; $5f0d: $77
    cp $37                                        ; $5f0e: $fe $37
    rla                                           ; $5f10: $17
    sub [hl]                                      ; $5f11: $96
    ld h, a                                       ; $5f12: $67
    jp hl                                         ; $5f13: $e9


    ld c, e                                       ; $5f14: $4b
    ld a, [hl+]                                   ; $5f15: $2a
    sbc $8b                                       ; $5f16: $de $8b
    ld b, [hl]                                    ; $5f18: $46
    ldh a, [$ea]                                  ; $5f19: $f0 $ea
    dec [hl]                                      ; $5f1b: $35
    ld [hl], a                                    ; $5f1c: $77
    ld e, c                                       ; $5f1d: $59
    adc d                                         ; $5f1e: $8a
    xor d                                         ; $5f1f: $aa
    or c                                          ; $5f20: $b1
    ld a, c                                       ; $5f21: $79
    or c                                          ; $5f22: $b1
    xor b                                         ; $5f23: $a8
    cp h                                          ; $5f24: $bc

jr_04b_5f25:
    ld [$4583], sp                                ; $5f25: $08 $83 $45
    ld l, l                                       ; $5f28: $6d
    cp h                                          ; $5f29: $bc
    ld c, e                                       ; $5f2a: $4b
    inc hl                                        ; $5f2b: $23
    ld [de], a                                    ; $5f2c: $12
    ld [hl], e                                    ; $5f2d: $73
    or c                                          ; $5f2e: $b1
    nop                                           ; $5f2f: $00
    add e                                         ; $5f30: $83
    ld b, l                                       ; $5f31: $45
    sbc a                                         ; $5f32: $9f
    rla                                           ; $5f33: $17
    sub l                                         ; $5f34: $95
    rst $30                                       ; $5f35: $f7
    and d                                         ; $5f36: $a2
    ld l, c                                       ; $5f37: $69
    ld de, $477a                                  ; $5f38: $11 $7a $47
    xor l                                         ; $5f3b: $ad
    cp c                                          ; $5f3c: $b9
    rla                                           ; $5f3d: $17
    dec e                                         ; $5f3e: $1d
    call nc, $da8b                                ; $5f3f: $d4 $8b $da
    ld a, b                                       ; $5f42: $78
    ld d, a                                       ; $5f43: $57
    or c                                          ; $5f44: $b1
    ld b, e                                       ; $5f45: $43
    adc a                                         ; $5f46: $8f
    rst $38                                       ; $5f47: $ff
    di                                            ; $5f48: $f3
    and h                                         ; $5f49: $a4
    push hl                                       ; $5f4a: $e5
    add d                                         ; $5f4b: $82

jr_04b_5f4c:
    rst $28                                       ; $5f4c: $ef
    inc l                                         ; $5f4d: $2c
    or c                                          ; $5f4e: $b1

Jump_04b_5f4f:
    cp h                                          ; $5f4f: $bc
    di                                            ; $5f50: $f3
    sbc a                                         ; $5f51: $9f
    jp z, $09ea                                   ; $5f52: $ca $ea $09

    sub [hl]                                      ; $5f55: $96
    ld h, b                                       ; $5f56: $60

jr_04b_5f57:
    sub c                                         ; $5f57: $91
    ret                                           ; $5f58: $c9


    ld h, [hl]                                    ; $5f59: $66
    ld a, h                                       ; $5f5a: $7c
    nop                                           ; $5f5b: $00
    rst $08                                       ; $5f5c: $cf
    ld h, e                                       ; $5f5d: $63
    jr nz, jr_04b_5f25                            ; $5f5e: $20 $c5

    rst $28                                       ; $5f60: $ef
    xor d                                         ; $5f61: $aa
    pop af                                        ; $5f62: $f1
    and d                                         ; $5f63: $a2
    ld e, a                                       ; $5f64: $5f
    sbc [hl]                                      ; $5f65: $9e
    rst $28                                       ; $5f66: $ef
    jp c, $ff0c                                   ; $5f67: $da $0c $ff

    and a                                         ; $5f6a: $a7
    call c, $8319                                 ; $5f6b: $dc $19 $83
    adc h                                         ; $5f6e: $8c
    ld [hl], a                                    ; $5f6f: $77
    adc c                                         ; $5f70: $89
    pop bc                                        ; $5f71: $c1
    ld d, b                                       ; $5f72: $50
    call $efff                                    ; $5f73: $cd $ff $ef
    push bc                                       ; $5f76: $c5
    rra                                           ; $5f77: $1f
    ld c, a                                       ; $5f78: $4f
    sbc d                                         ; $5f79: $9a
    ld bc, $c200                                  ; $5f7a: $01 $00 $c2
    jr nc, jr_04b_5f8b                            ; $5f7d: $30 $0c

    push bc                                       ; $5f7f: $c5
    rra                                           ; $5f80: $1f
    ld l, a                                       ; $5f81: $6f
    ld h, [hl]                                    ; $5f82: $66
    jr jr_04b_5f4c                                ; $5f83: $18 $c7

    pop af                                        ; $5f85: $f1
    jr nz, jr_04b_5f94                            ; $5f86: $20 $0c

    ld [hl-], a                                   ; $5f88: $32
    adc [hl]                                      ; $5f89: $8e
    db $e3                                        ; $5f8a: $e3

jr_04b_5f8b:
    ld h, c                                       ; $5f8b: $61
    ld l, $c2                                     ; $5f8c: $2e $c2
    jr nz, @+$19                                  ; $5f8e: $20 $17

    cp $2f                                        ; $5f90: $fe $2f
    ld a, [c]                                     ; $5f92: $f2
    ld [hl], c                                    ; $5f93: $71

jr_04b_5f94:
    inc e                                         ; $5f94: $1c
    rra                                           ; $5f95: $1f
    ld l, a                                       ; $5f96: $6f
    dec de                                        ; $5f97: $1b
    rst $28                                       ; $5f98: $ef
    ld h, h                                       ; $5f99: $64
    ld l, d                                       ; $5f9a: $6a
    sbc $f8                                       ; $5f9b: $de $f8
    jp z, $9701                                   ; $5f9d: $ca $01 $97

    push hl                                       ; $5fa0: $e5
    and c                                         ; $5fa1: $a1
    ld e, d                                       ; $5fa2: $5a
    ld a, [hl-]                                   ; $5fa3: $3a
    dec sp                                        ; $5fa4: $3b
    dec d                                         ; $5fa5: $15
    call nz, $26bb                                ; $5fa6: $c4 $bb $26
    rla                                           ; $5fa9: $17
    or [hl]                                       ; $5faa: $b6
    cp h                                          ; $5fab: $bc
    ld h, a                                       ; $5fac: $67
    sub c                                         ; $5fad: $91
    sbc d                                         ; $5fae: $9a
    rst $20                                       ; $5faf: $e7
    add $bb                                       ; $5fb0: $c6 $bb
    ld h, $27                                     ; $5fb2: $26 $27
    ld d, b                                       ; $5fb4: $50
    inc de                                        ; $5fb5: $13
    inc l                                         ; $5fb6: $2c
    add sp, -$48                                  ; $5fb7: $e8 $b8

Call_04b_5fb9:
    db $e4                                        ; $5fb9: $e4
    add b                                         ; $5fba: $80
    and l                                         ; $5fbb: $a5
    add hl, de                                    ; $5fbc: $19
    db $ed                                        ; $5fbd: $ed
    jp nc, $a100                                  ; $5fbe: $d2 $00 $a1

    adc a                                         ; $5fc1: $8f
    rrca                                          ; $5fc2: $0f
    ld l, a                                       ; $5fc3: $6f
    dec de                                        ; $5fc4: $1b
    inc a                                         ; $5fc5: $3c
    db $e4                                        ; $5fc6: $e4
    jr c, jr_04b_5f57                             ; $5fc7: $38 $8e

    ld [hl], a                                    ; $5fc9: $77
    ld l, d                                       ; $5fca: $6a
    ld a, c                                       ; $5fcb: $79
    adc $4e                                       ; $5fcc: $ce $4e
    ret c                                         ; $5fce: $d8

    ld a, c                                       ; $5fcf: $79
    db $ec                                        ; $5fd0: $ec
    jp c, $ff0c                                   ; $5fd1: $da $0c $ff

    and a                                         ; $5fd4: $a7
    ld e, h                                       ; $5fd5: $5c
    ret c                                         ; $5fd6: $d8

    adc d                                         ; $5fd7: $8a
    ld a, b                                       ; $5fd8: $78
    and b                                         ; $5fd9: $a0
    cp $7f                                        ; $5fda: $fe $7f
    ld a, a                                       ; $5fdc: $7f
    push hl                                       ; $5fdd: $e5
    nop                                           ; $5fde: $00
    rst $10                                       ; $5fdf: $d7
    ld a, [de]                                    ; $5fe0: $1a
    ld e, c                                       ; $5fe1: $59
    ld a, [$ec79]                                 ; $5fe2: $fa $79 $ec
    jp c, $ff0c                                   ; $5fe5: $da $0c $ff

    and a                                         ; $5fe8: $a7
    inc d                                         ; $5fe9: $14
    db $f4                                        ; $5fea: $f4
    xor a                                         ; $5feb: $af
    rst $18                                       ; $5fec: $df
    add hl, bc                                    ; $5fed: $09
    push af                                       ; $5fee: $f5
    jp nz, Jump_04b_420a                          ; $5fef: $c2 $0a $42

    inc sp                                        ; $5ff2: $33
    sbc $65                                       ; $5ff3: $de $65
    ld a, c                                       ; $5ff5: $79
    sbc [hl]                                      ; $5ff6: $9e
    jr nc, jr_04b_605e                            ; $5ff7: $30 $65

    ld [hl], e                                    ; $5ff9: $73
    dec h                                         ; $5ffa: $25
    rst $10                                       ; $5ffb: $d7
    ld [hl], d                                    ; $5ffc: $72
    pop hl                                        ; $5ffd: $e1
    ld [hl], a                                    ; $5ffe: $77
    inc a                                         ; $5fff: $3c
    cpl                                           ; $6000: $2f
    ld l, h                                       ; $6001: $6c
    inc [hl]                                      ; $6002: $34
    call z, $bae9                                 ; $6003: $cc $e9 $ba
    call Call_04b_458b                            ; $6006: $cd $8b $45
    ld h, [hl]                                    ; $6009: $66
    inc [hl]                                      ; $600a: $34
    ld l, a                                       ; $600b: $6f
    add hl, sp                                    ; $600c: $39
    ld d, h                                       ; $600d: $54
    dec bc                                        ; $600e: $0b
    ld sp, $a9d8                                  ; $600f: $31 $d8 $a9
    ld a, d                                       ; $6012: $7a
    xor $ff                                       ; $6013: $ee $ff
    inc [hl]                                      ; $6015: $34
    db $d3                                        ; $6016: $d3
    adc h                                         ; $6017: $8c
    add c                                         ; $6018: $81
    sbc a                                         ; $6019: $9f
    ld e, e                                       ; $601a: $5b
    ld [hl], d                                    ; $601b: $72
    push af                                       ; $601c: $f5
    xor a                                         ; $601d: $af
    db $e4                                        ; $601e: $e4
    ld a, b                                       ; $601f: $78
    cpl                                           ; $6020: $2f
    sbc d                                         ; $6021: $9a
    pop de                                        ; $6022: $d1
    ld b, d                                       ; $6023: $42
    inc c                                         ; $6024: $0c
    and $9b                                       ; $6025: $e6 $9b
    sub d                                         ; $6027: $92
    rst $20                                       ; $6028: $e7
    adc l                                         ; $6029: $8d
    rla                                           ; $602a: $17
    ld h, d                                       ; $602b: $62
    jr nc, jr_04b_602f                            ; $602c: $30 $01

    inc sp                                        ; $602e: $33

jr_04b_602f:
    sbc e                                         ; $602f: $9b
    ld a, [c]                                     ; $6030: $f2
    inc de                                        ; $6031: $13
    rrca                                          ; $6032: $0f
    bit 5, d                                      ; $6033: $cb $6a
    ld h, a                                       ; $6035: $67
    db $d3                                        ; $6036: $d3
    di                                            ; $6037: $f3
    add h                                         ; $6038: $84
    add hl, hl                                    ; $6039: $29
    sbc e                                         ; $603a: $9b
    dec sp                                        ; $603b: $3b
    sbc c                                         ; $603c: $99
    sub c                                         ; $603d: $91
    rst $38                                       ; $603e: $ff
    sbc a                                         ; $603f: $9f
    ld d, $62                                     ; $6040: $16 $62
    or b                                          ; $6042: $b0
    sbc a                                         ; $6043: $9f
    adc d                                         ; $6044: $8a
    ld c, e                                       ; $6045: $4b
    and d                                         ; $6046: $a2
    ld l, d                                       ; $6047: $6a
    inc c                                         ; $6048: $0c
    db $e4                                        ; $6049: $e4
    ld c, [hl]                                    ; $604a: $4e
    sbc a                                         ; $604b: $9f
    inc a                                         ; $604c: $3c
    rst $00                                       ; $604d: $c7
    rlca                                          ; $604e: $07
    cpl                                           ; $604f: $2f
    add hl, de                                    ; $6050: $19
    dec sp                                        ; $6051: $3b
    ld c, $69                                     ; $6052: $0e $69
    inc c                                         ; $6054: $0c
    db $e4                                        ; $6055: $e4
    xor $5a                                       ; $6056: $ee $5a
    ld e, b                                       ; $6058: $58
    sbc $0b                                       ; $6059: $de $0b
    ld [hl], l                                    ; $605b: $75
    sbc e                                         ; $605c: $9b
    xor d                                         ; $605d: $aa

jr_04b_605e:
    ld a, [de]                                    ; $605e: $1a
    ld h, c                                       ; $605f: $61
    sub a                                         ; $6060: $97
    ld l, $e6                                     ; $6061: $2e $e6
    cp e                                          ; $6063: $bb
    rst $10                                       ; $6064: $d7
    cp c                                          ; $6065: $b9
    call $d2f9                                    ; $6066: $cd $f9 $d2
    sbc $c6                                       ; $6069: $de $c6
    ldh [$dc], a                                  ; $606b: $e0 $dc
    inc d                                         ; $606d: $14
    cp a                                          ; $606e: $bf
    rla                                           ; $606f: $17
    call Call_000_2768                            ; $6070: $cd $68 $27
    db $ec                                        ; $6073: $ec
    ld d, b                                       ; $6074: $50
    xor l                                         ; $6075: $ad
    or h                                          ; $6076: $b4
    di                                            ; $6077: $f3
    rst $18                                       ; $6078: $df
    ret                                           ; $6079: $c9


    ld [hl-], a                                   ; $607a: $32
    db $fc                                        ; $607b: $fc
    db $10                                        ; $607c: $10
    add d                                         ; $607d: $82
    dec hl                                        ; $607e: $2b
    rlca                                          ; $607f: $07
    ld d, a                                       ; $6080: $57
    ld a, e                                       ; $6081: $7b
    xor [hl]                                      ; $6082: $ae
    ld d, $f9                                     ; $6083: $16 $f9
    ld c, $2a                                     ; $6085: $0e $2a
    xor c                                         ; $6087: $a9
    rst $38                                       ; $6088: $ff
    ld [hl], e                                    ; $6089: $73
    daa                                           ; $608a: $27
    inc sp                                        ; $608b: $33
    ld [hl], d                                    ; $608c: $72
    dec l                                         ; $608d: $2d
    add a                                         ; $608e: $87
    add hl, sp                                    ; $608f: $39
    rst $18                                       ; $6090: $df
    add hl, hl                                    ; $6091: $29
    ld l, $51                                     ; $6092: $2e $51
    ld [hl], e                                    ; $6094: $73
    adc d                                         ; $6095: $8a
    call $de78                                    ; $6096: $cd $78 $de
    ld a, b                                       ; $6099: $78
    ld hl, $0b06                                  ; $609a: $21 $06 $0b
    cp d                                          ; $609d: $ba
    or e                                          ; $609e: $b3
    jp hl                                         ; $609f: $e9


    cp c                                          ; $60a0: $b9
    and l                                         ; $60a1: $a5
    add sp, $7f                                   ; $60a2: $e8 $7f
    ld a, [c]                                     ; $60a4: $f2
    call $5778                                    ; $60a5: $cd $78 $57
    adc l                                         ; $60a8: $8d
    add a                                         ; $60a9: $87
    ld l, d                                       ; $60aa: $6a

jr_04b_60ab:
    daa                                           ; $60ab: $27
    db $e3                                        ; $60ac: $e3
    xor c                                         ; $60ad: $a9
    rra                                           ; $60ae: $1f
    ld b, l                                       ; $60af: $45
    ld [$783a], sp                                ; $60b0: $08 $3a $78
    sub e                                         ; $60b3: $93
    call $3521                                    ; $60b4: $cd $21 $35
    ld d, b                                       ; $60b7: $50
    db $fd                                        ; $60b8: $fd
    db $dd                                        ; $60b9: $dd
    ld h, [hl]                                    ; $60ba: $66
    cp h                                          ; $60bb: $bc
    xor e                                         ; $60bc: $ab
    dec a                                         ; $60bd: $3d
    ld d, a                                       ; $60be: $57
    adc e                                         ; $60bf: $8b
    ld a, h                                       ; $60c0: $7c
    rst $20                                       ; $60c1: $e7
    or c                                          ; $60c2: $b1
    dec sp                                        ; $60c3: $3b
    inc hl                                        ; $60c4: $23
    inc a                                         ; $60c5: $3c
    sbc h                                         ; $60c6: $9c
    jp hl                                         ; $60c7: $e9


    add l                                         ; $60c8: $85
    xor l                                         ; $60c9: $ad
    sbc [hl]                                      ; $60ca: $9e
    or [hl]                                       ; $60cb: $b6
    inc b                                         ; $60cc: $04
    dec sp                                        ; $60cd: $3b
    ld e, c                                       ; $60ce: $59
    add [hl]                                      ; $60cf: $86
    rra                                           ; $60d0: $1f
    ld b, d                                       ; $60d1: $42
    jr nc, jr_04b_60ab                            ; $60d2: $30 $d7

    inc d                                         ; $60d4: $14
    ld c, e                                       ; $60d5: $4b
    ld l, l                                       ; $60d6: $6d
    ld de, $33c4                                  ; $60d7: $11 $c4 $33
    res 0, l                                      ; $60da: $cb $85
    push hl                                       ; $60dc: $e5
    jp hl                                         ; $60dd: $e9


    cp d                                          ; $60de: $ba
    call $0735                                    ; $60df: $cd $35 $07
    pop de                                        ; $60e2: $d1
    rla                                           ; $60e3: $17
    ld e, d                                       ; $60e4: $5a
    ld [c], a                                     ; $60e5: $e2
    sbc l                                         ; $60e6: $9d
    ld sp, $45c8                                  ; $60e7: $31 $c8 $45
    ld b, $0f                                     ; $60ea: $06 $0f
    ld a, c                                       ; $60ec: $79
    ld e, h                                       ; $60ed: $5c
    ld [hl], d                                    ; $60ee: $72
    ret nz                                        ; $60ef: $c0

    cp b                                          ; $60f0: $b8
    sub e                                         ; $60f1: $93
    add h                                         ; $60f2: $84
    ld bc, $c668                                  ; $60f3: $01 $68 $c6
    rlca                                          ; $60f6: $07
    ld l, a                                       ; $60f7: $6f
    ld a, l                                       ; $60f8: $7d
    db $ed                                        ; $60f9: $ed
    dec de                                        ; $60fa: $1b
    ld a, l                                       ; $60fb: $7d
    ld h, d                                       ; $60fc: $62
    pop af                                        ; $60fd: $f1
    rlca                                          ; $60fe: $07
    sub a                                         ; $60ff: $97
    ld b, [hl]                                    ; $6100: $46
    inc h                                         ; $6101: $24
    ld b, [hl]                                    ; $6102: $46
    db $fc                                        ; $6103: $fc
    xor [hl]                                      ; $6104: $ae
    xor c                                         ; $6105: $a9
    sbc c                                         ; $6106: $99
    sub $55                                       ; $6107: $d6 $55
    inc bc                                        ; $6109: $03
    cp a                                          ; $610a: $bf
    ld a, [hl]                                    ; $610b: $7e
    ld d, c                                       ; $610c: $51
    ld a, c                                       ; $610d: $79
    ld b, c                                       ; $610e: $41
    xor a                                         ; $610f: $af
    inc e                                         ; $6110: $1c
    rst $10                                       ; $6111: $d7
    dec l                                         ; $6112: $2d
    sbc $8b                                       ; $6113: $de $8b
    ld h, [hl]                                    ; $6115: $66
    inc [hl]                                      ; $6116: $34
    rst $18                                       ; $6117: $df
    or l                                          ; $6118: $b5
    add hl, de                                    ; $6119: $19
    cp $4f                                        ; $611a: $fe $4f
    add hl, sp                                    ; $611c: $39
    adc l                                         ; $611d: $8d
    add b                                         ; $611e: $80
    rst $20                                       ; $611f: $e7
    call Call_04b_62e8                            ; $6120: $cd $e8 $62
    cp $7f                                        ; $6123: $fe $7f
    rra                                           ; $6125: $1f
    rra                                           ; $6126: $1f
    rst $10                                       ; $6127: $d7
    db $e4                                        ; $6128: $e4
    and d                                         ; $6129: $a2
    ld e, a                                       ; $612a: $5f
    ld e, [hl]                                    ; $612b: $5e
    ld a, [hl-]                                   ; $612c: $3a
    inc bc                                        ; $612d: $03
    ld h, [hl]                                    ; $612e: $66
    ld a, c                                       ; $612f: $79
    or c                                          ; $6130: $b1
    ld c, e                                       ; $6131: $4b
    inc hl                                        ; $6132: $23
    ld [de], a                                    ; $6133: $12
    inc de                                        ; $6134: $13
    rst $28                                       ; $6135: $ef
    ld a, d                                       ; $6136: $7a
    daa                                           ; $6137: $27
    inc [hl]                                      ; $6138: $34
    ld a, c                                       ; $6139: $79
    ld l, [hl]                                    ; $613a: $6e
    ld d, c                                       ; $613b: $51
    inc hl                                        ; $613c: $23
    adc b                                         ; $613d: $88
    rst $30                                       ; $613e: $f7
    ld c, h                                       ; $613f: $4c
    adc $37                                       ; $6140: $ce $37
    push hl                                       ; $6142: $e5
    ld c, d                                       ; $6143: $4a
    ld h, [hl]                                    ; $6144: $66
    ld a, c                                       ; $6145: $79
    or c                                          ; $6146: $b1
    rst $38                                       ; $6147: $ff
    push hl                                       ; $6148: $e5
    ld a, h                                       ; $6149: $7c
    and a                                         ; $614a: $a7
    cp b                                          ; $614b: $b8
    ld b, h                                       ; $614c: $44
    call Call_000_1585                            ; $614d: $cd $85 $15
    add h                                         ; $6150: $84
    and $c2                                       ; $6151: $e6 $c2
    ld a, [c]                                     ; $6153: $f2
    ld c, [hl]                                    ; $6154: $4e
    push de                                       ; $6155: $d5
    ld l, e                                       ; $6156: $6b
    ld d, e                                       ; $6157: $53
    dec l                                         ; $6158: $2d
    ld b, d                                       ; $6159: $42
    dec d                                         ; $615a: $15
    rra                                           ; $615b: $1f
    cpl                                           ; $615c: $2f
    jr jr_04b_6196                                ; $615d: $18 $37

    ld [hl], a                                    ; $615f: $77

Call_04b_6160:
    ld [$8cd2], a                                 ; $6160: $ea $d2 $8c
    ld d, $3a                                     ; $6163: $16 $3a
    xor b                                         ; $6165: $a8
    ld b, $cc                                     ; $6166: $06 $cc

Call_04b_6168:
    ld [hl-], a                                   ; $6168: $32
    sbc $d5                                       ; $6169: $de $d5
    adc $d2                                       ; $616b: $ce $d2
    sub a                                         ; $616d: $97
    sbc d                                         ; $616e: $9a
    dec sp                                        ; $616f: $3b
    ld h, e                                       ; $6170: $63
    sub b                                         ; $6171: $90
    dec sp                                        ; $6172: $3b
    ld d, a                                       ; $6173: $57
    sub [hl]                                      ; $6174: $96
    ld h, [hl]                                    ; $6175: $66
    ld a, d                                       ; $6176: $7a
    ld e, h                                       ; $6177: $5c
    ld [hl], d                                    ; $6178: $72
    ld b, b                                       ; $6179: $40
    ld a, h                                       ; $617a: $7c
    nop                                           ; $617b: $00
    rst $10                                       ; $617c: $d7
    cp e                                          ; $617d: $bb
    ret nc                                        ; $617e: $d0

    db $fc                                        ; $617f: $fc
    ld b, b                                       ; $6180: $40
    or l                                          ; $6181: $b5
    inc hl                                        ; $6182: $23
    rst $20                                       ; $6183: $e7
    adc l                                         ; $6184: $8d
    ld [hl], a                                    ; $6185: $77
    ld l, c                                       ; $6186: $69
    add b                                         ; $6187: $80
    ret nc                                        ; $6188: $d0

    cpl                                           ; $6189: $2f
    add sp, -$3e                                  ; $618a: $e8 $c2
    ld d, [hl]                                    ; $618c: $56
    call nz, $7503                                ; $618d: $c4 $03 $75
    ld a, a                                       ; $6190: $7f
    ld a, [$30e6]                                 ; $6191: $fa $e6 $30
    rla                                           ; $6194: $17
    sub [hl]                                      ; $6195: $96

jr_04b_6196:
    daa                                           ; $6196: $27
    ld a, h                                       ; $6197: $7c
    dec d                                         ; $6198: $15
    rst $28                                       ; $6199: $ef
    jp nc, $2e81                                  ; $619a: $d2 $81 $2e

    and [hl]                                      ; $619d: $a6
    or d                                          ; $619e: $b2
    ld a, d                                       ; $619f: $7a
    ld l, c                                       ; $61a0: $69
    ld b, [hl]                                    ; $61a1: $46
    ld a, e                                       ; $61a2: $7b
    adc [hl]                                      ; $61a3: $8e
    ld d, b                                       ; $61a4: $50
    inc h                                         ; $61a5: $24
    ld a, [$ff4d]                                 ; $61a6: $fa $4d $ff
    add hl, hl                                    ; $61a9: $29
    ld a, $00                                     ; $61aa: $3e $00
    xor a                                         ; $61ac: $af
    ld a, h                                       ; $61ad: $7c
    and $d2                                       ; $61ae: $e6 $d2
    push bc                                       ; $61b0: $c5
    add b                                         ; $61b1: $80
    db $ed                                        ; $61b2: $ed
    ld h, a                                       ; $61b3: $67
    add h                                         ; $61b4: $84
    sbc $57                                       ; $61b5: $de $57

jr_04b_61b7:
    ld l, e                                       ; $61b7: $6b
    inc c                                         ; $61b8: $0c
    db $e4                                        ; $61b9: $e4
    jp nc, Jump_000_268c                          ; $61ba: $d2 $8c $26

    call nc, Call_000_07c7                        ; $61bd: $d4 $c7 $07
    rst $10                                       ; $61c0: $d7
    cp e                                          ; $61c1: $bb
    or b                                          ; $61c2: $b0
    ld [bc], a                                    ; $61c3: $02
    cpl                                           ; $61c4: $2f
    add sp, $14                                   ; $61c5: $e8 $14
    sub e                                         ; $61c7: $93
    adc c                                         ; $61c8: $89
    and $20                                       ; $61c9: $e6 $20
    add e                                         ; $61cb: $83
    sbc [hl]                                      ; $61cc: $9e

Call_04b_61cd:
    set 1, l                                      ; $61cd: $cb $cd
    adc e                                         ; $61cf: $8b
    ld e, l                                       ; $61d0: $5d
    ld a, [de]                                    ; $61d1: $1a
    sub c                                         ; $61d2: $91
    sbc b                                         ; $61d3: $98
    ld a, b                                       ; $61d4: $78
    rst $08                                       ; $61d5: $cf
    reti                                          ; $61d6: $d9


    jp nc, $4799                                  ; $61d7: $d2 $99 $47

    ld a, [hl+]                                   ; $61da: $2a
    sbc h                                         ; $61db: $9c
    sub a                                         ; $61dc: $97
    ld h, [hl]                                    ; $61dd: $66
    or h                                          ; $61de: $b4
    rst $20                                       ; $61df: $e7
    ld [$a245], sp                                ; $61e0: $08 $45 $a2
    rst $18                                       ; $61e3: $df
    db $f4                                        ; $61e4: $f4
    sbc a                                         ; $61e5: $9f
    ld [c], a                                     ; $61e6: $e2
    inc bc                                        ; $61e7: $03
    ld l, a                                       ; $61e8: $6f
    add hl, de                                    ; $61e9: $19
    ret                                           ; $61ea: $c9


    and [hl]                                      ; $61eb: $a6
    ld d, d                                       ; $61ec: $52
    jp hl                                         ; $61ed: $e9


    jr nz, jr_04b_61b7                            ; $61ee: $20 $c7

    rlca                                          ; $61f0: $07
    sub a                                         ; $61f1: $97
    ld b, [hl]                                    ; $61f2: $46
    inc h                                         ; $61f3: $24
    ld b, [hl]                                    ; $61f4: $46
    db $fc                                        ; $61f5: $fc
    sbc $36                                       ; $61f6: $de $36
    ld e, $aa                                     ; $61f8: $1e $aa
    sub l                                         ; $61fa: $95
    ld b, $2a                                     ; $61fb: $06 $2a
    call nc, Call_04b_7f21                        ; $61fd: $d4 $21 $7f
    push hl                                       ; $6200: $e5
    nop                                           ; $6201: $00
    ld l, a                                       ; $6202: $6f
    ld a, l                                       ; $6203: $7d
    db $ed                                        ; $6204: $ed
    dec de                                        ; $6205: $1b
    ld a, l                                       ; $6206: $7d
    ld [c], a                                     ; $6207: $e2
    and c                                         ; $6208: $a1
    ld a, [de]                                    ; $6209: $1a
    and $c2                                       ; $620a: $e6 $c2
    ld a, [c]                                     ; $620c: $f2
    add h                                         ; $620d: $84
    xor a                                         ; $620e: $af
    ld [c], a                                     ; $620f: $e2
    ld e, l                                       ; $6210: $5d
    ld h, d                                       ; $6211: $62
    or b                                          ; $6212: $b0
    sub e                                         ; $6213: $93
    pop bc                                        ; $6214: $c1
    ld b, e                                       ; $6215: $43
    sbc $87                                       ; $6216: $de $87
    and $bb                                       ; $6218: $e6 $bb
    rst $10                                       ; $621a: $d7
    cp c                                          ; $621b: $b9
    call $d2f9                                    ; $621c: $cd $f9 $d2
    sbc $c6                                       ; $621f: $de $c6
    ldh [$dc], a                                  ; $6221: $e0 $dc
    adc h                                         ; $6223: $8c
    rst $30                                       ; $6224: $f7
    ld c, h                                       ; $6225: $4c
    adc $fd                                       ; $6226: $ce $fd
    ld a, [de]                                    ; $6228: $1a
    inc [hl]                                      ; $6229: $34
    push de                                       ; $622a: $d5
    ld [hl+], a                                   ; $622b: $22
    inc c                                         ; $622c: $0c
    ld d, $b6                                     ; $622d: $16 $b6
    ld [hl+], a                                   ; $622f: $22
    sbc $eb                                       ; $6230: $de $eb
    reti                                          ; $6232: $d9


    ld b, d                                       ; $6233: $42
    ld a, e                                       ; $6234: $7b
    sbc [hl]                                      ; $6235: $9e
    jr nc, jr_04b_629d                            ; $6236: $30 $65

    push af                                       ; $6238: $f5
    adc $7f                                       ; $6239: $ce $7f
    add d                                         ; $623b: $82
    dec h                                         ; $623c: $25
    jr @+$6a                                      ; $623d: $18 $68

    ld h, h                                       ; $623f: $64

Call_04b_6240:
    ld h, $79                                     ; $6240: $26 $79
    sbc $78                                       ; $6242: $de $78

jr_04b_6244:
    ld hl, $0b06                                  ; $6244: $21 $06 $0b
    sbc l                                         ; $6247: $9d
    ld e, h                                       ; $6248: $5c
    ld e, b                                       ; $6249: $58
    dec c                                         ; $624a: $0d
    ld [hl], c                                    ; $624b: $71
    ld a, h                                       ; $624c: $7c
    nop                                           ; $624d: $00
    rst $28                                       ; $624e: $ef
    dec d                                         ; $624f: $15
    call z, $9763                                 ; $6250: $cc $63 $97
    ld h, [hl]                                    ; $6253: $66
    pop de                                        ; $6254: $d1
    ld [de], a                                    ; $6255: $12
    set 4, d                                      ; $6256: $cb $e2
    rrca                                          ; $6258: $0f
    rst $08                                       ; $6259: $cf
    ld [hl+], a                                   ; $625a: $22
    dec [hl]                                      ; $625b: $35
    rst $08                                       ; $625c: $cf
    sbc l                                         ; $625d: $9d
    rst $28                                       ; $625e: $ef
    sbc [hl]                                      ; $625f: $9e
    ld l, [hl]                                    ; $6260: $6e
    or d                                          ; $6261: $b2
    add hl, sp                                    ; $6262: $39
    or h                                          ; $6263: $b4
    or b                                          ; $6264: $b0
    dec d                                         ; $6265: $15
    pop af                                        ; $6266: $f1
    and d                                         ; $6267: $a2
    ld c, $94                                     ; $6268: $0e $94
    ld [$162f], a                                 ; $626a: $ea $2f $16
    sbc c                                         ; $626d: $99
    pop de                                        ; $626e: $d1
    ld a, h                                       ; $626f: $7c
    ld h, a                                       ; $6270: $67
    jp hl                                         ; $6271: $e9


    ld c, e                                       ; $6272: $4b
    dec e                                         ; $6273: $1d

jr_04b_6274:
    cp h                                          ; $6274: $bc
    ret                                           ; $6275: $c9


    and $90                                       ; $6276: $e6 $90
    ld a, [de]                                    ; $6278: $1a
    xor b                                         ; $6279: $a8
    cp $6e                                        ; $627a: $fe $6e
    ld [hl], e                                    ; $627c: $73
    sbc $78                                       ; $627d: $de $78
    ld l, a                                       ; $627f: $6f
    ld a, l                                       ; $6280: $7d
    db $ed                                        ; $6281: $ed
    dec de                                        ; $6282: $1b
    ld a, l                                       ; $6283: $7d
    ld [c], a                                     ; $6284: $e2
    ld b, l                                       ; $6285: $45
    jr jr_04b_6274                                ; $6286: $18 $ec

    ld l, h                                       ; $6288: $6c
    ld a, d                                       ; $6289: $7a
    ld l, [hl]                                    ; $628a: $6e
    add hl, hl                                    ; $628b: $29
    ld a, [$7c9f]                                 ; $628c: $fa $9f $7c
    inc sp                                        ; $628f: $33
    sbc $65                                       ; $6290: $de $65
    ld a, c                                       ; $6292: $79
    adc d                                         ; $6293: $8a
    call $9878                                    ; $6294: $cd $78 $98
    di                                            ; $6297: $f3
    sbc l                                         ; $6298: $9d
    ld [c], a                                     ; $6299: $e2
    ld [de], a                                    ; $629a: $12
    dec [hl]                                      ; $629b: $35
    db $e3                                        ; $629c: $e3

jr_04b_629d:
    inc bc                                        ; $629d: $03
    sub a                                         ; $629e: $97
    jr @+$4e                                      ; $629f: $18 $4c

    ld [de], a                                    ; $62a1: $12
    ld b, $80                                     ; $62a2: $06 $80
    rst $30                                       ; $62a4: $f7
    ld d, e                                       ; $62a5: $53
    call Call_04b_6eb4                            ; $62a6: $cd $b4 $6e
    ld h, h                                       ; $62a9: $64
    and [hl]                                      ; $62aa: $a6
    rst $00                                       ; $62ab: $c7
    dec e                                         ; $62ac: $1d
    ld h, h                                       ; $62ad: $64
    ld d, d                                       ; $62ae: $52
    ld [hl], $67                                  ; $62af: $36 $67
    ld e, d                                       ; $62b1: $5a
    dec l                                         ; $62b2: $2d
    add sp, $3c                                   ; $62b3: $e8 $3c
    halt                                          ; $62b5: $76
    ld l, c                                       ; $62b6: $69
    ld d, $4d                                     ; $62b7: $16 $4d
    ret nc                                        ; $62b9: $d0

    jr jr_04b_6244                                ; $62ba: $18 $88

    ld a, b                                       ; $62bc: $78

Call_04b_62bd:
    rst $20                                       ; $62bd: $e7
    ld [bc], a                                    ; $62be: $02
    ret nc                                        ; $62bf: $d0

    inc d                                         ; $62c0: $14

jr_04b_62c1:
    ld a, a                                       ; $62c1: $7f
    nop                                           ; $62c2: $00
    sub a                                         ; $62c3: $97
    ld b, [hl]                                    ; $62c4: $46
    inc h                                         ; $62c5: $24
    and $62                                       ; $62c6: $e6 $62
    jr z, jr_04b_62e1                             ; $62c8: $28 $17

    ld d, [hl]                                    ; $62ca: $56
    jr jr_04b_6335                                ; $62cb: $18 $68

    ld hl, sp+$3f                                 ; $62cd: $f8 $3f
    ld sp, hl                                     ; $62cf: $f9
    ld a, c                                       ; $62d0: $79
    db $e3                                        ; $62d1: $e3
    cp l                                          ; $62d2: $bd
    push af                                       ; $62d3: $f5
    or l                                          ; $62d4: $b5

jr_04b_62d5:
    ld l, a                                       ; $62d5: $6f
    db $f4                                        ; $62d6: $f4
    adc c                                         ; $62d7: $89
    daa                                           ; $62d8: $27
    ld e, b                                       ; $62d9: $58
    add d                                         ; $62da: $82
    and c                                         ; $62db: $a1
    sbc d                                         ; $62dc: $9a
    ei                                            ; $62dd: $fb
    ccf                                           ; $62de: $3f
    db $ed                                        ; $62df: $ed
    sub l                                         ; $62e0: $95

jr_04b_62e1:
    sub d                                         ; $62e1: $92
    or h                                          ; $62e2: $b4
    xor b                                         ; $62e3: $a8
    ret                                           ; $62e4: $c9


    adc [hl]                                      ; $62e5: $8e
    adc d                                         ; $62e6: $8a
    rst $30                                       ; $62e7: $f7

Call_04b_62e8:
    sbc $d7                                       ; $62e8: $de $d7
    sub [hl]                                      ; $62ea: $96
    ld h, b                                       ; $62eb: $60
    ld hl, $c306                                  ; $62ec: $21 $06 $c3
    sbc h                                         ; $62ef: $9c
    rst $28                                       ; $62f0: $ef
    inc b                                         ; $62f1: $04
    rst $00                                       ; $62f2: $c7
    ld hl, $aa1e                                  ; $62f3: $21 $1e $aa
    adc e                                         ; $62f6: $8b
    add hl, bc                                    ; $62f7: $09
    call $9d05                                    ; $62f8: $cd $05 $9d
    ld e, e                                       ; $62fb: $5b
    call nc, $e208                                ; $62fc: $d4 $08 $e2
    dec a                                         ; $62ff: $3d
    sub e                                         ; $6300: $93
    ld c, e                                       ; $6301: $4b
    ld h, a                                       ; $6302: $67
    pop de                                        ; $6303: $d1
    cpl                                           ; $6304: $2f
    scf                                           ; $6305: $37
    ld [hl], a                                    ; $6306: $77
    ld [$3694], a                                 ; $6307: $ea $94 $36
    xor b                                         ; $630a: $a8
    add hl, de                                    ; $630b: $19
    rra                                           ; $630c: $1f
    cpl                                           ; $630d: $2f
    ld h, d                                       ; $630e: $62
    sub b                                         ; $630f: $90
    ld a, e                                       ; $6310: $7b
    add hl, sp                                    ; $6311: $39
    rst $08                                       ; $6312: $cf
    ld [$590f], sp                                ; $6313: $08 $0f $59
    jr nc, @-$5b                                  ; $6316: $30 $a3

    or b                                          ; $6318: $b0
    add sp, -$2b                                  ; $6319: $e8 $d5
    ld e, l                                       ; $631b: $5d
    sub c                                         ; $631c: $91
    dec h                                         ; $631d: $25
    ld d, a                                       ; $631e: $57
    rst $00                                       ; $631f: $c7
    ld [hl], c                                    ; $6320: $71
    cp h                                          ; $6321: $bc
    db $10                                        ; $6322: $10
    add e                                         ; $6323: $83
    and c                                         ; $6324: $a1
    ld e, d                                       ; $6325: $5a
    ld l, c                                       ; $6326: $69
    and a                                         ; $6327: $a7
    sub [hl]                                      ; $6328: $96
    call nz, $99ef                                ; $6329: $c4 $ef $99
    ld e, h                                       ; $632c: $5c
    ld l, c                                       ; $632d: $69
    ld h, a                                       ; $632e: $67
    db $e4                                        ; $632f: $e4
    or l                                          ; $6330: $b5
    add hl, sp                                    ; $6331: $39
    add c                                         ; $6332: $81
    or b                                          ; $6333: $b0
    and d                                         ; $6334: $a2

jr_04b_6335:
    and b                                         ; $6335: $a0
    inc de                                        ; $6336: $13
    jr nc, jr_04b_62c1                            ; $6337: $30 $88

    rrca                                          ; $6339: $0f
    ld l, a                                       ; $633a: $6f
    db $fd                                        ; $633b: $fd
    ld c, a                                       ; $633c: $4f
    dec bc                                        ; $633d: $0b
    rlc e                                         ; $633e: $cb $03
    ld [hl], l                                    ; $6340: $75

jr_04b_6341:
    ld c, l                                       ; $6341: $4d
    rst $08                                       ; $6342: $cf
    dec de                                        ; $6343: $1b
    rst $00                                       ; $6344: $c7
    rlca                                          ; $6345: $07
    rst $28                                       ; $6346: $ef
    db $fd                                        ; $6347: $fd
    jp z, $1a5d                                   ; $6348: $ca $5d $1a

    jr nz, jr_04b_6341                            ; $634b: $20 $f4

    jp Jump_04b_73dc                              ; $634d: $c3 $dc $73


    rst $18                                       ; $6350: $df
    pop af                                        ; $6351: $f1
    add b                                         ; $6352: $80
    jr nc, jr_04b_62d5                            ; $6353: $30 $80

    ld l, [hl]                                    ; $6355: $6e
    ld d, e                                       ; $6356: $53
    dec bc                                        ; $6357: $0b
    ld c, l                                       ; $6358: $4d
    rst $00                                       ; $6359: $c7
    rlca                                          ; $635a: $07
    rst $08                                       ; $635b: $cf
    rst $38                                       ; $635c: $ff
    rrca                                          ; $635d: $0f
    ld c, l                                       ; $635e: $4d
    pop bc                                        ; $635f: $c1
    jp $b5ff                                      ; $6360: $c3 $ff $b5


    ret nc                                        ; $6363: $d0

    db $fc                                        ; $6364: $fc
    ld e, $81                                     ; $6365: $1e $81
    rrca                                          ; $6367: $0f
    db $eb                                        ; $6368: $eb
    sbc e                                         ; $6369: $9b
    ei                                            ; $636a: $fb
    ret nc                                        ; $636b: $d0

    ld a, h                                       ; $636c: $7c
    rst $30                                       ; $636d: $f7
    halt                                          ; $636e: $76
    ld bc, $53aa                                  ; $636f: $01 $aa $53
    ld b, c                                       ; $6372: $41
    ld a, h                                       ; $6373: $7c
    nop                                           ; $6374: $00
    xor a                                         ; $6375: $af
    or e                                          ; $6376: $b3
    ld b, c                                       ; $6377: $41
    ei                                            ; $6378: $fb
    ret nc                                        ; $6379: $d0

    ld a, h                                       ; $637a: $7c
    rst $30                                       ; $637b: $f7
    sbc $a9                                       ; $637c: $de $a9
    sbc b                                         ; $637e: $98
    adc d                                         ; $637f: $8a
    adc e                                         ; $6380: $8b
    ld e, c                                       ; $6381: $59
    ret c                                         ; $6382: $d8

    db $10                                        ; $6383: $10
    ld d, l                                       ; $6384: $55
    push bc                                       ; $6385: $c5
    rlca                                          ; $6386: $07
    rst $28                                       ; $6387: $ef
    db $fd                                        ; $6388: $fd
    jp z, $f6bd                                   ; $6389: $ca $bd $f6

    ld [hl], e                                    ; $638c: $73
    sbc b                                         ; $638d: $98
    di                                            ; $638e: $f3
    dec e                                         ; $638f: $1d
    ld d, e                                       ; $6390: $53
    ld sp, $03e3                                  ; $6391: $31 $e3 $03
    xor a                                         ; $6394: $af
    ld [hl], e                                    ; $6395: $73
    dec hl                                        ; $6396: $2b
    rla                                           ; $6397: $17
    sub [hl]                                      ; $6398: $96
    rla                                           ; $6399: $17
    or l                                          ; $639a: $b5
    or h                                          ; $639b: $b4
    rst $28                                       ; $639c: $ef
    sub [hl]                                      ; $639d: $96
    ld [c], a                                     ; $639e: $e2
    inc bc                                        ; $639f: $03
    rst $08                                       ; $63a0: $cf
    reti                                          ; $63a1: $d9


    ld e, h                                       ; $63a2: $5c
    or h                                          ; $63a3: $b4
    ld sp, hl                                     ; $63a4: $f9
    ld c, [hl]                                    ; $63a5: $4e
    sub [hl]                                      ; $63a6: $96
    ld h, h                                       ; $63a7: $64
    ld c, c                                       ; $63a8: $49
    dec l                                         ; $63a9: $2d
    call $ef68                                    ; $63aa: $cd $68 $ef
    sbc l                                         ; $63ad: $9d
    adc d                                         ; $63ae: $8a
    xor c                                         ; $63af: $a9
    cp b                                          ; $63b0: $b8
    sbc b                                         ; $63b1: $98
    pop af                                        ; $63b2: $f1
    ld bc, $982f                                  ; $63b3: $01 $2f $98
    pop af                                        ; $63b6: $f1
    add d                                         ; $63b7: $82
    ld c, $d3                                     ; $63b8: $0e $d3
    ld d, a                                       ; $63ba: $57
    scf                                           ; $63bb: $37
    daa                                           ; $63bc: $27
    ld h, b                                       ; $63bd: $60
    or b                                          ; $63be: $b0
    ld [hl], $67                                  ; $63bf: $36 $67
    ld [hl+], a                                   ; $63c1: $22
    ld e, a                                       ; $63c2: $5f
    adc l                                         ; $63c3: $8d
    add hl, bc                                    ; $63c4: $09
    ld [c], a                                     ; $63c5: $e2
    inc bc                                        ; $63c6: $03
    rst $28                                       ; $63c7: $ef
    db $fd                                        ; $63c8: $fd
    jp z, $eef9                                   ; $63c9: $ca $f9 $ee

    add hl, sp                                    ; $63cc: $39
    ld b, d                                       ; $63cd: $42
    sub c                                         ; $63ce: $91
    add sp, $37                                   ; $63cf: $e8 $37
    db $fd                                        ; $63d1: $fd
    and a                                         ; $63d2: $a7
    add hl, hl                                    ; $63d3: $29
    ld l, l                                       ; $63d4: $6d
    ld b, $9d                                     ; $63d5: $06 $9d
    call $7c74                                    ; $63d7: $cd $74 $7c
    nop                                           ; $63da: $00
    rst $08                                       ; $63db: $cf
    reti                                          ; $63dc: $d9


    jp nc, $f68c                                  ; $63dd: $d2 $8c $f6

    add $77                                       ; $63e0: $c6 $77
    ld c, e                                       ; $63e2: $4b
    sbc [hl]                                      ; $63e3: $9e
    inc l                                         ; $63e4: $2c
    and l                                         ; $63e5: $a5
    xor [hl]                                      ; $63e6: $ae
    adc d                                         ; $63e7: $8a
    rrca                                          ; $63e8: $0f
    rst $28                                       ; $63e9: $ef
    db $fd                                        ; $63ea: $fd
    jp z, Jump_000_0261                           ; $63eb: $ca $61 $02

    xor d                                         ; $63ee: $aa
    rst $00                                       ; $63ef: $c7
    sbc e                                         ; $63f0: $9b
    sub d                                         ; $63f1: $92
    sbc e                                         ; $63f2: $9b
    ld [hl], e                                    ; $63f3: $73
    rst $38                                       ; $63f4: $ff
    and a                                         ; $63f5: $a7
    cp l                                          ; $63f6: $bd
    sbc [hl]                                      ; $63f7: $9e
    dec l                                         ; $63f8: $2d
    inc d                                         ; $63f9: $14
    rra                                           ; $63fa: $1f
    dec sp                                        ; $63fb: $3b
    nop                                           ; $63fc: $00
    ld l, a                                       ; $63fd: $6f
    ld e, c                                       ; $63fe: $59
    add d                                         ; $63ff: $82
    ld b, c                                       ; $6400: $41
    ld h, [hl]                                    ; $6401: $66
    and h                                         ; $6402: $a4

Call_04b_6403:
    ld h, $7f                                     ; $6403: $26 $7f
    ld h, d                                       ; $6405: $62
    sub b                                         ; $6406: $90
    pop af                                        ; $6407: $f1
    ld bc, $fdef                                  ; $6408: $01 $ef $fd
    jp z, $343d                                   ; $640b: $ca $3d $34

    ld c, h                                       ; $640e: $4c
    ld b, b                                       ; $640f: $40
    push af                                       ; $6410: $f5
    ld a, b                                       ; $6411: $78
    ld d, e                                       ; $6412: $53
    ld [hl], d                                    ; $6413: $72
    ld [hl], e                                    ; $6414: $73
    xor $ff                                       ; $6415: $ee $ff
    or h                                          ; $6417: $b4
    rst $20                                       ; $6418: $e7
    ret                                           ; $6419: $c9


    ld b, c                                       ; $641a: $41
    rst $18                                       ; $641b: $df
    sub h                                         ; $641c: $94
    ld c, [hl]                                    ; $641d: $4e
    ld a, [$07c6]                                 ; $641e: $fa $c6 $07
    rst $28                                       ; $6421: $ef
    db $fd                                        ; $6422: $fd
    jp z, $343d                                   ; $6423: $ca $3d $34

    ld c, h                                       ; $6426: $4c
    ld b, b                                       ; $6427: $40
    push af                                       ; $6428: $f5
    ld a, b                                       ; $6429: $78
    ld d, e                                       ; $642a: $53
    ld [hl], d                                    ; $642b: $72
    ld [hl], e                                    ; $642c: $73
    xor $ff                                       ; $642d: $ee $ff
    or h                                          ; $642f: $b4
    rst $20                                       ; $6430: $e7
    ret                                           ; $6431: $c9


    ld b, c                                       ; $6432: $41
    rst $18                                       ; $6433: $df
    sub h                                         ; $6434: $94
    ld c, [hl]                                    ; $6435: $4e
    ld a, [$07c6]                                 ; $6436: $fa $c6 $07
    dec sp                                        ; $6439: $3b
    nop                                           ; $643a: $00
    dec sp                                        ; $643b: $3b
    nop                                           ; $643c: $00
    rst $28                                       ; $643d: $ef
    db $fd                                        ; $643e: $fd
    jp z, $e585                                   ; $643f: $ca $85 $e5

    cp l                                          ; $6442: $bd
    ld [hl], a                                    ; $6443: $77
    ld [hl-], a                                   ; $6444: $32
    ld [c], a                                     ; $6445: $e2
    xor $79                                       ; $6446: $ee $79
    daa                                           ; $6448: $27
    dec d                                         ; $6449: $15
    scf                                           ; $644a: $37
    push af                                       ; $644b: $f5
    sub a                                         ; $644c: $97
    ld h, [hl]                                    ; $644d: $66
    ld a, [hl-]                                   ; $644e: $3a
    ld a, $00                                     ; $644f: $3e $00
    cpl                                           ; $6451: $2f
    sbc d                                         ; $6452: $9a
    ret                                           ; $6453: $c9


    ld sp, hl                                     ; $6454: $f9
    adc $2d                                       ; $6455: $ce $2d
    cp c                                          ; $6457: $b9
    ld a, [$6257]                                 ; $6458: $fa $57 $62
    add d                                         ; $645b: $82

Jump_04b_645c:
    db $fd                                        ; $645c: $fd
    inc b                                         ; $645d: $04
    push af                                       ; $645e: $f5
    ld h, [hl]                                    ; $645f: $66
    add hl, de                                    ; $6460: $19
    rra                                           ; $6461: $1f
    dec sp                                        ; $6462: $3b
    nop                                           ; $6463: $00
    xor a                                         ; $6464: $af
    sbc b                                         ; $6465: $98
    call c, Call_04b_468b                         ; $6466: $dc $8b $46
    ldh a, [rOCPS]                                ; $6469: $f0 $6a
    or l                                          ; $646b: $b5
    rst $20                                       ; $646c: $e7
    ld a, [de]                                    ; $646d: $1a
    sub $01                                       ; $646e: $d6 $01
    ld c, l                                       ; $6470: $4d
    push bc                                       ; $6471: $c5
    ld l, l                                       ; $6472: $6d
    adc $44                                       ; $6473: $ce $44
    ld [hl], e                                    ; $6475: $73
    dec l                                         ; $6476: $2d
    ld [hl], a                                    ; $6477: $77
    sub l                                         ; $6478: $95
    inc c                                         ; $6479: $0c
    cp $e3                                        ; $647a: $fe $e3
    inc bc                                        ; $647c: $03
    dec sp                                        ; $647d: $3b
    nop                                           ; $647e: $00
    dec sp                                        ; $647f: $3b
    nop                                           ; $6480: $00
    rst $08                                       ; $6481: $cf
    reti                                          ; $6482: $d9


    cp b                                          ; $6483: $b8
    db $e4                                        ; $6484: $e4
    add b                                         ; $6485: $80
    and l                                         ; $6486: $a5
    add hl, de                                    ; $6487: $19
    call $ba77                                    ; $6488: $cd $77 $ba
    ld l, d                                       ; $648b: $6a
    rst $08                                       ; $648c: $cf
    ld d, l                                       ; $648d: $55
    pop bc                                        ; $648e: $c1
    ld b, e                                       ; $648f: $43
    xor h                                         ; $6490: $ac
    ld l, a                                       ; $6491: $6f
    and d                                         ; $6492: $a2
    sbc d                                         ; $6493: $9a
    ld l, e                                       ; $6494: $6b
    add hl, sp                                    ; $6495: $39
    rst $18                                       ; $6496: $df
    cp l                                          ; $6497: $bd
    pop af                                        ; $6498: $f1
    db $dd                                        ; $6499: $dd
    sub d                                         ; $649a: $92
    ld [hl], h                                    ; $649b: $74
    ld d, d                                       ; $649c: $52
    ld [hl], c                                    ; $649d: $71
    ld a, h                                       ; $649e: $7c
    nop                                           ; $649f: $00
    rst $28                                       ; $64a0: $ef
    db $fd                                        ; $64a1: $fd
    jp z, $eef9                                   ; $64a2: $ca $f9 $ee

    ld l, c                                       ; $64a5: $69
    inc h                                         ; $64a6: $24
    ld a, b                                       ; $64a7: $78
    rst $28                                       ; $64a8: $ef
    sub d                                         ; $64a9: $92
    ld h, [hl]                                    ; $64aa: $66
    call nz, $01f1                                ; $64ab: $c4 $f1 $01
    rst $28                                       ; $64ae: $ef
    db $fd                                        ; $64af: $fd
    jp z, $eef9                                   ; $64b0: $ca $f9 $ee

    ld l, c                                       ; $64b3: $69
    inc h                                         ; $64b4: $24
    ld a, b                                       ; $64b5: $78
    rst $28                                       ; $64b6: $ef
    sub d                                         ; $64b7: $92
    ld h, [hl]                                    ; $64b8: $66
    call nz, $01f1                                ; $64b9: $c4 $f1 $01
    dec sp                                        ; $64bc: $3b
    nop                                           ; $64bd: $00
    dec sp                                        ; $64be: $3b
    nop                                           ; $64bf: $00
    dec sp                                        ; $64c0: $3b
    nop                                           ; $64c1: $00
    rst $08                                       ; $64c2: $cf
    reti                                          ; $64c3: $d9


    cp b                                          ; $64c4: $b8
    db $e4                                        ; $64c5: $e4
    add b                                         ; $64c6: $80
    and l                                         ; $64c7: $a5
    add hl, de                                    ; $64c8: $19
    call $ba77                                    ; $64c9: $cd $77 $ba
    ld l, d                                       ; $64cc: $6a
    rst $08                                       ; $64cd: $cf
    ld d, l                                       ; $64ce: $55
    pop bc                                        ; $64cf: $c1
    ld b, e                                       ; $64d0: $43
    xor h                                         ; $64d1: $ac
    ld l, a                                       ; $64d2: $6f
    and d                                         ; $64d3: $a2
    sbc d                                         ; $64d4: $9a
    ld l, e                                       ; $64d5: $6b
    add hl, sp                                    ; $64d6: $39
    rst $18                                       ; $64d7: $df
    cp l                                          ; $64d8: $bd
    pop af                                        ; $64d9: $f1
    db $dd                                        ; $64da: $dd
    sub d                                         ; $64db: $92
    ld [hl], h                                    ; $64dc: $74
    ld d, d                                       ; $64dd: $52
    ld [hl], c                                    ; $64de: $71
    ld a, h                                       ; $64df: $7c
    nop                                           ; $64e0: $00
    dec sp                                        ; $64e1: $3b
    nop                                           ; $64e2: $00
    dec sp                                        ; $64e3: $3b
    nop                                           ; $64e4: $00
    dec sp                                        ; $64e5: $3b
    nop                                           ; $64e6: $00
    dec sp                                        ; $64e7: $3b
    nop                                           ; $64e8: $00
    dec sp                                        ; $64e9: $3b
    nop                                           ; $64ea: $00
    dec sp                                        ; $64eb: $3b
    nop                                           ; $64ec: $00
    dec sp                                        ; $64ed: $3b
    nop                                           ; $64ee: $00
    dec sp                                        ; $64ef: $3b
    nop                                           ; $64f0: $00
    ld c, a                                       ; $64f1: $4f
    rst $38                                       ; $64f2: $ff
    inc d                                         ; $64f3: $14
    pop de                                        ; $64f4: $d1
    ld c, a                                       ; $64f5: $4f
    ld l, [hl]                                    ; $64f6: $6e
    ld l, c                                       ; $64f7: $69
    ld d, a                                       ; $64f8: $57
    ret                                           ; $64f9: $c9


    ldh [$3f], a                                  ; $64fa: $e0 $3f
    ld a, $00                                     ; $64fc: $3e $00
    rst $08                                       ; $64fe: $cf
    reti                                          ; $64ff: $d9


    jp nc, $e68c                                  ; $6500: $d2 $8c $e6

    cp e                                          ; $6503: $bb
    ld d, a                                       ; $6504: $57
    ld [$7383], sp                                ; $6505: $08 $83 $73
    ld d, e                                       ; $6508: $53
    ld e, d                                       ; $6509: $5a
    ld d, h                                       ; $650a: $54
    sbc d                                         ; $650b: $9a
    ei                                            ; $650c: $fb
    ccf                                           ; $650d: $3f
    dec l                                         ; $650e: $2d
    inc l                                         ; $650f: $2c
    adc a                                         ; $6510: $8f
    cp a                                          ; $6511: $bf
    ld e, e                                       ; $6512: $5b
    ld a, [c]                                     ; $6513: $f2
    ld c, [hl]                                    ; $6514: $4e
    ld [hl], l                                    ; $6515: $75
    ld a, h                                       ; $6516: $7c
    nop                                           ; $6517: $00
    rst $08                                       ; $6518: $cf
    reti                                          ; $6519: $d9


    cp b                                          ; $651a: $b8
    db $e4                                        ; $651b: $e4
    add b                                         ; $651c: $80
    and l                                         ; $651d: $a5
    add hl, de                                    ; $651e: $19
    db $ed                                        ; $651f: $ed
    add hl, sp                                    ; $6520: $39
    ld b, d                                       ; $6521: $42
    sub c                                         ; $6522: $91
    add sp, $37                                   ; $6523: $e8 $37
    db $fd                                        ; $6525: $fd
    and a                                         ; $6526: $a7
    ld hl, sp+$00                                 ; $6527: $f8 $00
    dec sp                                        ; $6529: $3b
    nop                                           ; $652a: $00
    dec sp                                        ; $652b: $3b
    nop                                           ; $652c: $00
    dec sp                                        ; $652d: $3b
    nop                                           ; $652e: $00
    dec sp                                        ; $652f: $3b
    nop                                           ; $6530: $00
    dec sp                                        ; $6531: $3b
    nop                                           ; $6532: $00
    dec sp                                        ; $6533: $3b
    nop                                           ; $6534: $00
    dec sp                                        ; $6535: $3b
    nop                                           ; $6536: $00
    dec sp                                        ; $6537: $3b
    nop                                           ; $6538: $00
    dec sp                                        ; $6539: $3b
    nop                                           ; $653a: $00
    dec sp                                        ; $653b: $3b
    nop                                           ; $653c: $00
    rst $08                                       ; $653d: $cf
    reti                                          ; $653e: $d9


    jp nc, $168c                                  ; $653f: $d2 $8c $16

    sub [hl]                                      ; $6542: $96
    ld [hl], a                                    ; $6543: $77
    ld l, c                                       ; $6544: $69
    ld e, d                                       ; $6545: $5a
    rst $38                                       ; $6546: $ff
    ld d, e                                       ; $6547: $53
    sbc e                                         ; $6548: $9b
    and d                                         ; $6549: $a2
    ld d, [hl]                                    ; $654a: $56
    ld [hl], c                                    ; $654b: $71
    ld a, h                                       ; $654c: $7c
    nop                                           ; $654d: $00
    xor a                                         ; $654e: $af
    push de                                       ; $654f: $d5
    rst $28                                       ; $6550: $ef
    or d                                          ; $6551: $b2
    inc d                                         ; $6552: $14
    ld d, l                                       ; $6553: $55
    ld h, e                                       ; $6554: $63
    ld [hl], e                                    ; $6555: $73
    xor [hl]                                      ; $6556: $ae
    push hl                                       ; $6557: $e5
    ld a, h                                       ; $6558: $7c
    rst $00                                       ; $6559: $c7
    db $f4                                        ; $655a: $f4
    ld [hl], l                                    ; $655b: $75
    ld a, h                                       ; $655c: $7c
    nop                                           ; $655d: $00
    rst $08                                       ; $655e: $cf
    reti                                          ; $655f: $d9


    jp nc, Jump_04b_768c                          ; $6560: $d2 $8c $76

    ld l, c                                       ; $6563: $69
    add b                                         ; $6564: $80
    ret nc                                        ; $6565: $d0

    xor e                                         ; $6566: $ab
    add l                                         ; $6567: $85
    ld c, $aa                                     ; $6568: $0e $aa
    and b                                         ; $656a: $a0
    pop af                                        ; $656b: $f1
    ld bc, $d9cf                                  ; $656c: $01 $cf $d9
    jp nc, $f68c                                  ; $656f: $d2 $8c $f6

    inc e                                         ; $6572: $1c
    and c                                         ; $6573: $a1
    ld c, b                                       ; $6574: $48
    db $f4                                        ; $6575: $f4
    sbc e                                         ; $6576: $9b
    cp $53                                        ; $6577: $fe $53
    ld a, h                                       ; $6579: $7c
    nop                                           ; $657a: $00
    cpl                                           ; $657b: $2f
    daa                                           ; $657c: $27
    cp e                                          ; $657d: $bb
    sub [hl]                                      ; $657e: $96
    ld h, b                                       ; $657f: $60
    ld b, c                                       ; $6580: $41
    daa                                           ; $6581: $27
    ld c, e                                       ; $6582: $4b
    adc d                                         ; $6583: $8a
    pop hl                                        ; $6584: $e1
    and $6b                                       ; $6585: $e6 $6b
    adc [hl]                                      ; $6587: $8e
    adc d                                         ; $6588: $8a
    rrca                                          ; $6589: $0f
    rst $08                                       ; $658a: $cf
    reti                                          ; $658b: $d9


    ld a, [hl]                                    ; $658c: $7e
    sbc [hl]                                      ; $658d: $9e
    ld de, $b21e                                  ; $658e: $11 $1e $b2
    ld h, b                                       ; $6591: $60
    ld b, [hl]                                    ; $6592: $46
    ei                                            ; $6593: $fb
    ret nc                                        ; $6594: $d0

    ld a, [hl]                                    ; $6595: $7e
    ld a, [$f9d2]                                 ; $6596: $fa $d2 $f9
    ld d, a                                       ; $6599: $57
    adc $41                                       ; $659a: $ce $41
    adc [hl]                                      ; $659c: $8e
    rrca                                          ; $659d: $0f
    dec sp                                        ; $659e: $3b
    nop                                           ; $659f: $00
    cpl                                           ; $65a0: $2f
    daa                                           ; $65a1: $27
    xor e                                         ; $65a2: $ab
    inc [hl]                                      ; $65a3: $34
    ld l, b                                       ; $65a4: $68
    ccf                                           ; $65a5: $3f
    ld b, c                                       ; $65a6: $41
    rst $08                                       ; $65a7: $cf
    ret c                                         ; $65a8: $d8

    sbc h                                         ; $65a9: $9c
    add e                                         ; $65aa: $83
    inc a                                         ; $65ab: $3c
    rst $18                                       ; $65ac: $df
    add hl, bc                                    ; $65ad: $09
    jr z, jr_04b_6618                             ; $65ae: $28 $68

    db $fc                                        ; $65b0: $fc
    inc e                                         ; $65b1: $1c
    or [hl]                                       ; $65b2: $b6
    ld [hl-], a                                   ; $65b3: $32
    ld a, $00                                     ; $65b4: $3e $00
    dec sp                                        ; $65b6: $3b
    nop                                           ; $65b7: $00
    rst $28                                       ; $65b8: $ef
    db $fd                                        ; $65b9: $fd
    jp z, $eef9                                   ; $65ba: $ca $f9 $ee

    ld [hl], l                                    ; $65bd: $75
    ld [$aa0b], sp                                ; $65be: $08 $0b $aa
    rst $20                                       ; $65c1: $e7
    ld e, d                                       ; $65c2: $5a
    xor $a5                                       ; $65c3: $ee $a5
    ld d, d                                       ; $65c5: $52
    ld b, c                                       ; $65c6: $41
    add l                                         ; $65c7: $85
    ld hl, sp+$00                                 ; $65c8: $f8 $00
    dec sp                                        ; $65ca: $3b
    nop                                           ; $65cb: $00
    cpl                                           ; $65cc: $2f
    sbc d                                         ; $65cd: $9a
    ret                                           ; $65ce: $c9


    ret                                           ; $65cf: $c9


    ld h, [hl]                                    ; $65d0: $66
    and d                                         ; $65d1: $a2
    ld e, d                                       ; $65d2: $5a
    ld d, h                                       ; $65d3: $54
    sbc $4b                                       ; $65d4: $de $4b
    sbc a                                         ; $65d6: $9f
    add h                                         ; $65d7: $84
    ld [de], a                                    ; $65d8: $12
    rst $00                                       ; $65d9: $c7
    rlca                                          ; $65da: $07
    dec sp                                        ; $65db: $3b
    nop                                           ; $65dc: $00
    rst $28                                       ; $65dd: $ef
    db $fd                                        ; $65de: $fd
    jp z, $383d                                   ; $65df: $ca $3d $38

    adc c                                         ; $65e2: $89
    db $10                                        ; $65e3: $10
    call nc, $fb9c                                ; $65e4: $d4 $9c $fb
    ccf                                           ; $65e7: $3f
    db $ed                                        ; $65e8: $ed
    and l                                         ; $65e9: $a5
    ld c, a                                       ; $65ea: $4f
    ld b, d                                       ; $65eb: $42
    adc c                                         ; $65ec: $89
    db $e3                                        ; $65ed: $e3
    inc bc                                        ; $65ee: $03
    ld l, a                                       ; $65ef: $6f
    ld e, c                                       ; $65f0: $59
    add d                                         ; $65f1: $82
    cp l                                          ; $65f2: $bd
    db $f4                                        ; $65f3: $f4
    ld c, c                                       ; $65f4: $49
    jr z, jr_04b_6668                             ; $65f5: $28 $71

    ld a, h                                       ; $65f7: $7c
    nop                                           ; $65f8: $00
    ld c, a                                       ; $65f9: $4f
    ld d, c                                       ; $65fa: $51
    inc de                                        ; $65fb: $13
    db $ec                                        ; $65fc: $ec
    and l                                         ; $65fd: $a5
    ld c, a                                       ; $65fe: $4f
    ld b, d                                       ; $65ff: $42
    adc c                                         ; $6600: $89
    sub a                                         ; $6601: $97
    ld h, [hl]                                    ; $6602: $66
    inc [hl]                                      ; $6603: $34
    rst $18                                       ; $6604: $df
    sbc c                                         ; $6605: $99
    ld h, d                                       ; $6606: $62
    ld a, [$23f9]                                 ; $6607: $fa $f9 $23
    inc l                                         ; $660a: $2c
    ld a, a                                       ; $660b: $7f
    ld l, d                                       ; $660c: $6a
    add $07                                       ; $660d: $c6 $07
    cpl                                           ; $660f: $2f
    sbc b                                         ; $6610: $98
    pop af                                        ; $6611: $f1
    add d                                         ; $6612: $82
    ld c, $32                                     ; $6613: $0e $32
    add hl, hl                                    ; $6615: $29
    sbc e                                         ; $6616: $9b
    di                                            ; $6617: $f3

jr_04b_6618:
    rst $38                                       ; $6618: $ff
    db $d3                                        ; $6619: $d3
    sbc $42                                       ; $661a: $de $42
    db $ed                                        ; $661c: $ed
    ld c, e                                       ; $661d: $4b
    pop af                                        ; $661e: $f1
    ld bc, $fdef                                  ; $661f: $01 $ef $fd
    jp z, Jump_000_0ef9                           ; $6622: $ca $f9 $0e

    db $f4                                        ; $6625: $f4
    db $f4                                        ; $6626: $f4
    db $d3                                        ; $6627: $d3
    ld [hl], a                                    ; $6628: $77
    ld l, l                                       ; $6629: $6d
    add [hl]                                      ; $662a: $86
    rst $38                                       ; $662b: $ff
    ld d, e                                       ; $662c: $53
    add $07                                       ; $662d: $c6 $07
    dec sp                                        ; $662f: $3b
    nop                                           ; $6630: $00
    dec sp                                        ; $6631: $3b
    nop                                           ; $6632: $00
    dec sp                                        ; $6633: $3b
    nop                                           ; $6634: $00
    dec sp                                        ; $6635: $3b
    nop                                           ; $6636: $00
    rst $08                                       ; $6637: $cf
    reti                                          ; $6638: $d9


    jp nc, $e68c                                  ; $6639: $d2 $8c $e6

    cp e                                          ; $663c: $bb
    or a                                          ; $663d: $b7
    ld c, d                                       ; $663e: $4a
    jp nz, $cdf7                                  ; $663f: $c2 $f7 $cd

    dec a                                         ; $6642: $3d
    ld h, a                                       ; $6643: $67
    add hl, bc                                    ; $6644: $09
    ld [c], a                                     ; $6645: $e2
    inc bc                                        ; $6646: $03
    ld l, a                                       ; $6647: $6f
    sub l                                         ; $6648: $95
    ld [de], a                                    ; $6649: $12
    rrc b                                         ; $664a: $cb $08
    and $bb                                       ; $664c: $e6 $bb
    xor e                                         ; $664e: $ab
    ld c, $ba                                     ; $664f: $0e $ba
    push de                                       ; $6651: $d5
    ld c, d                                       ; $6652: $4a
    ld sp, $8ca1                                  ; $6653: $31 $a1 $8c
    rrca                                          ; $6656: $0f
    rst $28                                       ; $6657: $ef
    db $fd                                        ; $6658: $fd
    jp z, Jump_000_2ef9                           ; $6659: $ca $f9 $2e

    ld [hl], b                                    ; $665c: $70
    ld d, b                                       ; $665d: $50
    ld [hl], c                                    ; $665e: $71
    rlca                                          ; $665f: $07
    ld [$3aea], a                                 ; $6660: $ea $ea $3a
    and b                                         ; $6663: $a0
    jp c, Jump_04b_4a77                           ; $6664: $da $77 $4a

    rst $10                                       ; $6667: $d7

jr_04b_6668:
    pop hl                                        ; $6668: $e1
    ld [$00f8], a                                 ; $6669: $ea $f8 $00
    ld l, a                                       ; $666c: $6f
    dec d                                         ; $666d: $15
    ld e, $f2                                     ; $666e: $1e $f2
    and d                                         ; $6670: $a2
    ld a, [c]                                     ; $6671: $f2
    ld a, h                                       ; $6672: $7c
    and a                                         ; $6673: $a7
    ldh [$a1], a                                  ; $6674: $e0 $a1
    sbc c                                         ; $6676: $99
    ld d, h                                       ; $6677: $54
    db $ec                                        ; $6678: $ec
    ld c, b                                       ; $6679: $48
    reti                                          ; $667a: $d9


    adc h                                         ; $667b: $8c
    rrca                                          ; $667c: $0f
    cpl                                           ; $667d: $2f
    ld a, h                                       ; $667e: $7c
    dec [hl]                                      ; $667f: $35
    rst $18                                       ; $6680: $df
    pop af                                        ; $6681: $f1
    ld [hl], a                                    ; $6682: $77
    ld c, e                                       ; $6683: $4b
    sbc [hl]                                      ; $6684: $9e
    inc l                                         ; $6685: $2c
    dec h                                         ; $6686: $25
    db $e4                                        ; $6687: $e4
    sbc h                                         ; $6688: $9c
    rst $08                                       ; $6689: $cf
    push de                                       ; $668a: $d5
    ei                                            ; $668b: $fb
    ld d, b                                       ; $668c: $50
    ld a, h                                       ; $668d: $7c
    nop                                           ; $668e: $00
    cpl                                           ; $668f: $2f
    ld a, h                                       ; $6690: $7c
    dec [hl]                                      ; $6691: $35
    rst $18                                       ; $6692: $df
    pop af                                        ; $6693: $f1
    ld [hl], a                                    ; $6694: $77
    ld c, e                                       ; $6695: $4b
    sbc [hl]                                      ; $6696: $9e
    inc l                                         ; $6697: $2c
    dec h                                         ; $6698: $25
    db $e4                                        ; $6699: $e4
    sbc h                                         ; $669a: $9c
    rst $08                                       ; $669b: $cf
    push de                                       ; $669c: $d5
    ei                                            ; $669d: $fb
    ld d, b                                       ; $669e: $50
    ld a, h                                       ; $669f: $7c
    nop                                           ; $66a0: $00
    rst $28                                       ; $66a1: $ef
    db $fd                                        ; $66a2: $fd
    jp z, $cebd                                   ; $66a3: $ca $bd $ce

    ld l, l                                       ; $66a6: $6d
    adc $97                                       ; $66a7: $ce $97
    or $36                                        ; $66a9: $f6 $36
    ld b, $e7                                     ; $66ab: $06 $e7
    ld h, [hl]                                    ; $66ad: $66
    ld a, h                                       ; $66ae: $7c
    nop                                           ; $66af: $00
    rst $08                                       ; $66b0: $cf
    reti                                          ; $66b1: $d9


    jp nc, $e68c                                  ; $66b2: $d2 $8c $e6

    cp e                                          ; $66b5: $bb
    rst $20                                       ; $66b6: $e7
    add sp, $73                                   ; $66b7: $e8 $73
    rst $30                                       ; $66b9: $f7
    sbc [hl]                                      ; $66ba: $9e
    sbc c                                         ; $66bb: $99
    adc [hl]                                      ; $66bc: $8e
    rrca                                          ; $66bd: $0f
    rst $28                                       ; $66be: $ef
    db $fd                                        ; $66bf: $fd
    jp z, $1a5d                                   ; $66c0: $ca $5d $1a

    sub c                                         ; $66c3: $91
    sbc b                                         ; $66c4: $98
    cp e                                          ; $66c5: $bb

jr_04b_66c6:
    and h                                         ; $66c6: $a4
    add hl, de                                    ; $66c7: $19
    ld [hl], c                                    ; $66c8: $71
    ld a, h                                       ; $66c9: $7c
    nop                                           ; $66ca: $00
    rst $28                                       ; $66cb: $ef
    db $fd                                        ; $66cc: $fd
    jp z, $1a5d                                   ; $66cd: $ca $5d $1a

    jr nz, jr_04b_66c6                            ; $66d0: $20 $f4

    jp $d49c                                      ; $66d2: $c3 $9c $d4


    ld c, $aa                                     ; $66d5: $0e $aa
    ld hl, sp+$00                                 ; $66d7: $f8 $00
    rst $28                                       ; $66d9: $ef
    db $fd                                        ; $66da: $fd
    jp z, $473d                                   ; $66db: $ca $3d $47

    jr z, jr_04b_66f2                             ; $66de: $28 $12

    db $fd                                        ; $66e0: $fd
    and [hl]                                      ; $66e1: $a6
    rst $38                                       ; $66e2: $ff
    or h                                          ; $66e3: $b4
    sub e                                         ; $66e4: $93
    pop bc                                        ; $66e5: $c1
    ld b, e                                       ; $66e6: $43
    ld a, $fd                                     ; $66e7: $3e $fd
    ld c, a                                       ; $66e9: $4f
    ld a, $3e                                     ; $66ea: $3e $3e
    nop                                           ; $66ec: $00
    rst $28                                       ; $66ed: $ef
    db $fd                                        ; $66ee: $fd
    jp z, $9d05                                   ; $66ef: $ca $05 $9d

jr_04b_66f2:
    ei                                            ; $66f2: $fb
    dec [hl]                                      ; $66f3: $35
    ld l, b                                       ; $66f4: $68
    ld a, [$574e]                                 ; $66f5: $fa $4e $57
    push bc                                       ; $66f8: $c5
    rlca                                          ; $66f9: $07
    ld c, a                                       ; $66fa: $4f
    ld d, c                                       ; $66fb: $51
    inc de                                        ; $66fc: $13
    inc l                                         ; $66fd: $2c
    inc l                                         ; $66fe: $2c
    rst $08                                       ; $66ff: $cf
    dec l                                         ; $6700: $2d
    cp c                                          ; $6701: $b9
    ld a, [$6257]                                 ; $6702: $fa $57 $62
    add d                                         ; $6705: $82
    and [hl]                                      ; $6706: $a6
    ldh a, [$2b]                                  ; $6707: $f0 $2b
    rst $00                                       ; $6709: $c7
    dec h                                         ; $670a: $25
    rlca                                          ; $670b: $07
    inc l                                         ; $670c: $2c
    call $be68                                    ; $670d: $cd $68 $be
    inc de                                        ; $6710: $13
    ld d, b                                       ; $6711: $50
    ret nc                                        ; $6712: $d0

    ld hl, sp+$39                                 ; $6713: $f8 $39
    ld l, h                                       ; $6715: $6c
    ld h, l                                       ; $6716: $65
    ld a, h                                       ; $6717: $7c
    nop                                           ; $6718: $00
    dec sp                                        ; $6719: $3b
    nop                                           ; $671a: $00
    sub a                                         ; $671b: $97
    ld h, [hl]                                    ; $671c: $66
    ld a, d                                       ; $671d: $7a
    db $fc                                        ; $671e: $fc
    db $dd                                        ; $671f: $dd
    sub d                                         ; $6720: $92
    daa                                           ; $6721: $27
    ld c, e                                       ; $6722: $4b
    ld c, c                                       ; $6723: $49
    add l                                         ; $6724: $85
    rla                                           ; $6725: $17
    ld [c], a                                     ; $6726: $e2
    and $04                                       ; $6727: $e6 $04
    inc c                                         ; $6729: $0c
    or $7a                                        ; $672a: $f6 $7a
    or [hl]                                       ; $672c: $b6
    ld d, b                                       ; $672d: $50
    ld a, h                                       ; $672e: $7c
    nop                                           ; $672f: $00
    cpl                                           ; $6730: $2f
    daa                                           ; $6731: $27
    xor e                                         ; $6732: $ab
    inc [hl]                                      ; $6733: $34
    ld l, b                                       ; $6734: $68
    ld c, $f2                                     ; $6735: $0e $f2
    ld e, [hl]                                    ; $6737: $5e
    ld hl, $ce0c                                  ; $6738: $21 $0c $ce
    ld c, l                                       ; $673b: $4d
    ld l, c                                       ; $673c: $69
    ld d, c                                       ; $673d: $51
    add hl, hl                                    ; $673e: $29
    ld a, $00                                     ; $673f: $3e $00
    rst $28                                       ; $6741: $ef
    db $fd                                        ; $6742: $fd
    jp z, $cef9                                   ; $6743: $ca $f9 $ce

    dec l                                         ; $6746: $2d
    add hl, hl                                    ; $6747: $29
    cp $10                                        ; $6748: $fe $10
    ld [hl], a                                    ; $674a: $77
    ld [hl], b                                    ; $674b: $70
    di                                            ; $674c: $f3
    dec [hl]                                      ; $674d: $35
    ld b, a                                       ; $674e: $47
    push bc                                       ; $674f: $c5
    rlca                                          ; $6750: $07
    rst $08                                       ; $6751: $cf
    rst $38                                       ; $6752: $ff
    rrca                                          ; $6753: $0f
    xor l                                         ; $6754: $ad
    call Call_04b_77f1                            ; $6755: $cd $f1 $77
    ld c, e                                       ; $6758: $4b
    adc d                                         ; $6759: $8a
    cp a                                          ; $675a: $bf
    adc h                                         ; $675b: $8c
    rrca                                          ; $675c: $0f
    rst $08                                       ; $675d: $cf
    reti                                          ; $675e: $d9


    cp b                                          ; $675f: $b8
    db $e4                                        ; $6760: $e4
    add b                                         ; $6761: $80
    and l                                         ; $6762: $a5
    add hl, de                                    ; $6763: $19
    db $ed                                        ; $6764: $ed
    add hl, sp                                    ; $6765: $39
    ld b, d                                       ; $6766: $42
    sub c                                         ; $6767: $91

Call_04b_6768:
    add sp, $37                                   ; $6768: $e8 $37
    db $fd                                        ; $676a: $fd
    and a                                         ; $676b: $a7
    ld hl, sp+$00                                 ; $676c: $f8 $00
    cpl                                           ; $676e: $2f
    ld b, a                                       ; $676f: $47
    rst $20                                       ; $6770: $e7
    and d                                         ; $6771: $a2
    sbc $8b                                       ; $6772: $de $8b
    ld b, [hl]                                    ; $6774: $46
    ldh a, [$ea]                                  ; $6775: $f0 $ea
    ld hl, sp+$00                                 ; $6777: $f8 $00
    rst $28                                       ; $6779: $ef
    db $fd                                        ; $677a: $fd
    jp z, Jump_04b_52bd                           ; $677b: $ca $bd $52

    sub d                                         ; $677e: $92
    ld d, $35                                     ; $677f: $16 $35
    reti                                          ; $6781: $d9


    ld d, c                                       ; $6782: $51
    pop af                                        ; $6783: $f1
    ld bc, $d9cf                                  ; $6784: $01 $cf $d9
    cp b                                          ; $6787: $b8
    db $e4                                        ; $6788: $e4
    add b                                         ; $6789: $80
    and l                                         ; $678a: $a5
    add hl, de                                    ; $678b: $19
    call $af77                                    ; $678c: $cd $77 $af
    db $10                                        ; $678f: $10
    ld b, $e7                                     ; $6790: $06 $e7
    and [hl]                                      ; $6792: $a6
    or h                                          ; $6793: $b4
    xor b                                         ; $6794: $a8
    inc d                                         ; $6795: $14
    rra                                           ; $6796: $1f
    rst $28                                       ; $6797: $ef
    db $fd                                        ; $6798: $fd
    jp z, $eef9                                   ; $6799: $ca $f9 $ee

    ld l, c                                       ; $679c: $69
    inc h                                         ; $679d: $24
    ld a, b                                       ; $679e: $78
    rst $28                                       ; $679f: $ef
    sub d                                         ; $67a0: $92
    ld h, [hl]                                    ; $67a1: $66
    call nz, $01f1                                ; $67a2: $c4 $f1 $01
    ld l, a                                       ; $67a5: $6f
    rla                                           ; $67a6: $17
    and b                                         ; $67a7: $a0
    ld a, [hl-]                                   ; $67a8: $3a
    dec d                                         ; $67a9: $15
    inc e                                         ; $67aa: $1c
    rst $08                                       ; $67ab: $cf
    sub a                                         ; $67ac: $97
    xor e                                         ; $67ad: $ab
    ld c, a                                       ; $67ae: $4f
    sbc b                                         ; $67af: $98
    or d                                          ; $67b0: $b2
    ld a, [$4f00]                                 ; $67b1: $fa $00 $4f
    ld b, d                                       ; $67b4: $42
    sbc a                                         ; $67b5: $9f
    jp Jump_000_12ca                              ; $67b6: $c3 $ca $12


    ld b, $07                                     ; $67b9: $06 $07

Call_04b_67bb:
    ld l, a                                       ; $67bb: $6f
    and d                                         ; $67bc: $a2
    ld l, [hl]                                    ; $67bd: $6e
    ld a, [bc]                                    ; $67be: $0a
    cp a                                          ; $67bf: $bf
    adc h                                         ; $67c0: $8c
    sub l                                         ; $67c1: $95
    rlca                                          ; $67c2: $07
    ld l, a                                       ; $67c3: $6f
    ld a, h                                       ; $67c4: $7c
    or a                                          ; $67c5: $b7
    and h                                         ; $67c6: $a4
    ld hl, sp+$4b                                 ; $67c7: $f8 $4b
    reti                                          ; $67c9: $d9


    inc a                                         ; $67ca: $3c
    ld h, c                                       ; $67cb: $61
    jp z, Jump_000_03ea                           ; $67cc: $ca $ea $03

    ld c, a                                       ; $67cf: $4f
    db $fd                                        ; $67d0: $fd
    jp z, $a613                                   ; $67d1: $ca $13 $a6

    xor h                                         ; $67d4: $ac
    ld a, $00                                     ; $67d5: $3e $00
    rst $08                                       ; $67d7: $cf
    push af                                       ; $67d8: $f5
    ld h, h                                       ; $67d9: $64
    cp [hl]                                       ; $67da: $be
    ld a, c                                       ; $67db: $79
    jp nz, $d594                                  ; $67dc: $c2 $94 $d5

    rlca                                          ; $67df: $07
    xor a                                         ; $67e0: $af
    rst $20                                       ; $67e1: $e7
    cpl                                           ; $67e2: $2f
    ld [hl], h                                    ; $67e3: $74
    jp nz, $d594                                  ; $67e4: $c2 $94 $d5

    rlca                                          ; $67e7: $07
    rst $10                                       ; $67e8: $d7
    ld [de], a                                    ; $67e9: $12
    ld e, b                                       ; $67ea: $58
    add d                                         ; $67eb: $82
    dec a                                         ; $67ec: $3d
    rst $30                                       ; $67ed: $f7
    dec e                                         ; $67ee: $1d
    rrca                                          ; $67ef: $0f
    ld [$e803], sp                                ; $67f0: $08 $03 $e8
    nop                                           ; $67f3: $00
    rst $08                                       ; $67f4: $cf
    ld a, l                                       ; $67f5: $7d
    rst $00                                       ; $67f6: $c7
    inc bc                                        ; $67f7: $03
    jp nz, $9a00                                  ; $67f8: $c2 $00 $9a

    inc l                                         ; $67fb: $2c
    ret                                           ; $67fc: $c9


    jp nc, Jump_000_3dee                          ; $67fd: $d2 $ee $3d

    nop                                           ; $6800: $00
    cpl                                           ; $6801: $2f
    cp e                                          ; $6802: $bb
    dec h                                         ; $6803: $25
    push bc                                       ; $6804: $c5
    xor l                                         ; $6805: $ad
    ld e, h                                       ; $6806: $5c
    call nc, $01d2                                ; $6807: $d4 $d2 $01
    rst $28                                       ; $680a: $ef
    sbc l                                         ; $680b: $9d
    adc d                                         ; $680c: $8a
    xor c                                         ; $680d: $a9
    cp b                                          ; $680e: $b8
    sbc b                                         ; $680f: $98
    sub e                                         ; $6810: $93
    dec h                                         ; $6811: $25
    ld e, c                                       ; $6812: $59
    jp c, $07bd                                   ; $6813: $da $bd $07

    rst $28                                       ; $6816: $ef
    sbc l                                         ; $6817: $9d
    adc d                                         ; $6818: $8a
    xor c                                         ; $6819: $a9
    cp b                                          ; $681a: $b8
    sbc b                                         ; $681b: $98
    sub e                                         ; $681c: $93
    dec h                                         ; $681d: $25
    ld e, c                                       ; $681e: $59
    jp c, Jump_000_077d                           ; $681f: $da $7d $07

    rst $28                                       ; $6822: $ef
    sbc l                                         ; $6823: $9d
    adc d                                         ; $6824: $8a
    xor c                                         ; $6825: $a9
    cp b                                          ; $6826: $b8
    sbc b                                         ; $6827: $98
    sub e                                         ; $6828: $93
    dec h                                         ; $6829: $25
    ld e, c                                       ; $682a: $59
    jp c, Jump_000_07fd                           ; $682b: $da $fd $07

    rst $28                                       ; $682e: $ef
    sbc l                                         ; $682f: $9d
    adc d                                         ; $6830: $8a
    xor c                                         ; $6831: $a9
    cp b                                          ; $6832: $b8
    sbc b                                         ; $6833: $98
    add l                                         ; $6834: $85
    dec c                                         ; $6835: $0d
    ld d, c                                       ; $6836: $51
    push de                                       ; $6837: $d5
    ld bc, $7c2f                                  ; $6838: $01 $2f $7c
    ld l, c                                       ; $683b: $69
    and [hl]                                      ; $683c: $a6
    rst $30                                       ; $683d: $f7
    sbc d                                         ; $683e: $9a
    sub e                                         ; $683f: $93
    call $c839                                    ; $6840: $cd $39 $c8
    di                                            ; $6843: $f3
    db $dd                                        ; $6844: $dd
    res 1, [hl]                                   ; $6845: $cb $8e
    rrca                                          ; $6847: $0f
    adc e                                         ; $6848: $8b
    cp $00                                        ; $6849: $fe $00
    cpl                                           ; $684b: $2f
    ld a, h                                       ; $684c: $7c
    ld l, c                                       ; $684d: $69
    and [hl]                                      ; $684e: $a6
    rst $30                                       ; $684f: $f7
    sub $ff                                       ; $6850: $d6 $ff
    and h                                         ; $6852: $a4
    and b                                         ; $6853: $a0
    ld l, d                                       ; $6854: $6a
    db $dd                                        ; $6855: $dd
    db $f4                                        ; $6856: $f4
    ld a, e                                       ; $6857: $7b
    xor l                                         ; $6858: $ad
    or d                                          ; $6859: $b2
    reti                                          ; $685a: $d9


    inc a                                         ; $685b: $3c
    nop                                           ; $685c: $00
    sub a                                         ; $685d: $97
    ld b, [hl]                                    ; $685e: $46
    ld l, c                                       ; $685f: $69
    ld a, [bc]                                    ; $6860: $0a
    sbc b                                         ; $6861: $98
    ld l, $61                                     ; $6862: $2e $61
    ld [hl], b                                    ; $6864: $70
    nop                                           ; $6865: $00
    ld c, a                                       ; $6866: $4f
    ld a, [hl+]                                   ; $6867: $2a
    and [hl]                                      ; $6868: $a6
    sbc a                                         ; $6869: $9f
    ccf                                           ; $686a: $3f
    jp nz, Jump_000_2fea                          ; $686b: $c2 $ea $2f

    call $01f4                                    ; $686e: $cd $f4 $01
    cpl                                           ; $6871: $2f
    and a                                         ; $6872: $a7
    cpl                                           ; $6873: $2f
    add hl, hl                                    ; $6874: $29
    ld l, [hl]                                    ; $6875: $6e
    and l                                         ; $6876: $a5
    or h                                          ; $6877: $b4
    xor b                                         ; $6878: $a8
    ld [hl], h                                    ; $6879: $74
    nop                                           ; $687a: $00
    ld c, a                                       ; $687b: $4f
    push af                                       ; $687c: $f5
    call c, $84e8                                 ; $687d: $dc $e8 $84
    add hl, hl                                    ; $6880: $29
    xor e                                         ; $6881: $ab
    rrca                                          ; $6882: $0f
    ld c, a                                       ; $6883: $4f
    push af                                       ; $6884: $f5
    ld a, h                                       ; $6885: $7c
    ld a, [hl+]                                   ; $6886: $2a
    ld h, c                                       ; $6887: $61
    add d                                         ; $6888: $82
    and [hl]                                      ; $6889: $a6
    cp $d2                                        ; $688a: $fe $d2
    ld c, h                                       ; $688c: $4c
    rra                                           ; $688d: $1f
    rst $28                                       ; $688e: $ef
    sbc l                                         ; $688f: $9d
    adc h                                         ; $6890: $8c
    cp b                                          ; $6891: $b8
    ld a, e                                       ; $6892: $7b
    sbc $49                                       ; $6893: $de $49
    push bc                                       ; $6895: $c5
    ld c, l                                       ; $6896: $4d
    db $fd                                        ; $6897: $fd
    and l                                         ; $6898: $a5
    sbc c                                         ; $6899: $99
    ld a, $00                                     ; $689a: $3e $00
    xor a                                         ; $689c: $af
    ld b, e                                       ; $689d: $43
    ld e, b                                       ; $689e: $58
    ld d, b                                       ; $689f: $50
    dec a                                         ; $68a0: $3d
    rst $10                                       ; $68a1: $d7
    ld [hl], d                                    ; $68a2: $72
    cpl                                           ; $68a3: $2f
    sub l                                         ; $68a4: $95
    ld a, [bc]                                    ; $68a5: $0a
    ld a, [hl+]                                   ; $68a6: $2a
    inc e                                         ; $68a7: $1c
    ld l, a                                       ; $68a8: $6f
    sub l                                         ; $68a9: $95
    add h                                         ; $68aa: $84
    rst $28                                       ; $68ab: $ef
    sbc e                                         ; $68ac: $9b
    ld a, e                                       ; $68ad: $7b
    ld [$ddab], a                                 ; $68ae: $ea $ab $dd
    ld a, e                                       ; $68b1: $7b
    nop                                           ; $68b2: $00
    ld l, a                                       ; $68b3: $6f
    sub l                                         ; $68b4: $95
    add h                                         ; $68b5: $84
    rst $28                                       ; $68b6: $ef
    sbc e                                         ; $68b7: $9b
    ld a, e                                       ; $68b8: $7b
    ld [$ddab], a                                 ; $68b9: $ea $ab $dd
    ld [hl], a                                    ; $68bc: $77
    nop                                           ; $68bd: $00
    ld l, a                                       ; $68be: $6f
    sub l                                         ; $68bf: $95
    add h                                         ; $68c0: $84
    rst $28                                       ; $68c1: $ef
    sbc e                                         ; $68c2: $9b
    ld a, e                                       ; $68c3: $7b
    ld [$ddab], a                                 ; $68c4: $ea $ab $dd
    ld a, a                                       ; $68c7: $7f
    nop                                           ; $68c8: $00
    ld l, a                                       ; $68c9: $6f
    sub l                                         ; $68ca: $95
    add h                                         ; $68cb: $84
    rst $28                                       ; $68cc: $ef
    sbc e                                         ; $68cd: $9b
    ld a, e                                       ; $68ce: $7b
    ld [$3dab], a                                 ; $68cf: $ea $ab $3d
    ld [hl], b                                    ; $68d2: $70
    nop                                           ; $68d3: $00
    ld l, a                                       ; $68d4: $6f
    sub l                                         ; $68d5: $95
    add h                                         ; $68d6: $84
    rst $28                                       ; $68d7: $ef
    sbc e                                         ; $68d8: $9b
    ld a, e                                       ; $68d9: $7b
    ld [$3dab], a                                 ; $68da: $ea $ab $3d
    ld a, b                                       ; $68dd: $78
    nop                                           ; $68de: $00
    ld l, a                                       ; $68df: $6f
    sub l                                         ; $68e0: $95
    add h                                         ; $68e1: $84
    rst $28                                       ; $68e2: $ef
    sbc e                                         ; $68e3: $9b
    ld a, e                                       ; $68e4: $7b
    ld [$3dab], a                                 ; $68e5: $ea $ab $3d
    ld [hl], h                                    ; $68e8: $74
    nop                                           ; $68e9: $00
    rst $08                                       ; $68ea: $cf
    ld h, b                                       ; $68eb: $60
    ld a, d                                       ; $68ec: $7a
    ld e, c                                       ; $68ed: $59
    sub d                                         ; $68ee: $92
    and l                                         ; $68ef: $a5
    db $dd                                        ; $68f0: $dd
    ld a, e                                       ; $68f1: $7b
    nop                                           ; $68f2: $00
    rst $08                                       ; $68f3: $cf
    ld h, b                                       ; $68f4: $60
    ld a, d                                       ; $68f5: $7a
    ld e, c                                       ; $68f6: $59
    sub d                                         ; $68f7: $92
    and l                                         ; $68f8: $a5
    db $dd                                        ; $68f9: $dd
    ld [hl], a                                    ; $68fa: $77
    nop                                           ; $68fb: $00
    rst $08                                       ; $68fc: $cf
    ld h, b                                       ; $68fd: $60
    ld a, d                                       ; $68fe: $7a
    ld e, c                                       ; $68ff: $59
    sub d                                         ; $6900: $92
    and l                                         ; $6901: $a5
    db $dd                                        ; $6902: $dd
    ld a, a                                       ; $6903: $7f
    nop                                           ; $6904: $00
    rst $08                                       ; $6905: $cf
    ld h, b                                       ; $6906: $60
    ld a, d                                       ; $6907: $7a
    ld e, c                                       ; $6908: $59
    sub d                                         ; $6909: $92
    and l                                         ; $690a: $a5
    dec a                                         ; $690b: $3d
    ld [hl], b                                    ; $690c: $70
    nop                                           ; $690d: $00
    rst $08                                       ; $690e: $cf
    ld h, b                                       ; $690f: $60
    ld a, d                                       ; $6910: $7a
    ld e, c                                       ; $6911: $59
    sub d                                         ; $6912: $92
    and l                                         ; $6913: $a5
    dec a                                         ; $6914: $3d
    ld a, b                                       ; $6915: $78
    nop                                           ; $6916: $00
    rst $08                                       ; $6917: $cf
    ld h, b                                       ; $6918: $60
    ld a, d                                       ; $6919: $7a
    ld e, c                                       ; $691a: $59
    sub d                                         ; $691b: $92
    and l                                         ; $691c: $a5
    dec a                                         ; $691d: $3d
    ld [hl], h                                    ; $691e: $74
    nop                                           ; $691f: $00
    ld c, a                                       ; $6920: $4f
    ld e, c                                       ; $6921: $59
    ld h, $26                                     ; $6922: $26 $26
    ld d, b                                       ; $6924: $50
    sub e                                         ; $6925: $93
    sub [hl]                                      ; $6926: $96
    db $fc                                        ; $6927: $fc
    ccf                                           ; $6928: $3f
    dec e                                         ; $6929: $1d
    cpl                                           ; $692a: $2f
    or h                                          ; $692b: $b4
    ld h, b                                       ; $692c: $60
    ld a, [$334b]                                 ; $692d: $fa $4b $33
    ld a, l                                       ; $6930: $7d
    nop                                           ; $6931: $00
    cpl                                           ; $6932: $2f
    or h                                          ; $6933: $b4
    ld h, b                                       ; $6934: $60
    ld a, [$334b]                                 ; $6935: $fa $4b $33
    ld a, l                                       ; $6938: $7d
    nop                                           ; $6939: $00
    ld l, a                                       ; $693a: $6f
    sub l                                         ; $693b: $95
    add h                                         ; $693c: $84
    rst $28                                       ; $693d: $ef
    sbc e                                         ; $693e: $9b
    ld a, e                                       ; $693f: $7b
    adc $12                                       ; $6940: $ce $12
    inc e                                         ; $6942: $1c
    rst $08                                       ; $6943: $cf
    sbc e                                         ; $6944: $9b
    ld d, d                                       ; $6945: $52
    call $2f03                                    ; $6946: $cd $03 $2f
    ld d, $55                                     ; $6949: $16 $55
    ld d, b                                       ; $694b: $50
    push bc                                       ; $694c: $c5
    rra                                           ; $694d: $1f
    ld [hl], l                                    ; $694e: $75
    ld sp, hl                                     ; $694f: $f9
    nop                                           ; $6950: $00
    rst $28                                       ; $6951: $ef
    sbc l                                         ; $6952: $9d
    adc d                                         ; $6953: $8a
    xor c                                         ; $6954: $a9
    cp b                                          ; $6955: $b8
    sbc b                                         ; $6956: $98
    dec bc                                        ; $6957: $0b
    rst $38                                       ; $6958: $ff
    rla                                           ; $6959: $17
    ld a, c                                       ; $695a: $79
    ld l, $51                                     ; $695b: $2e $51
    ld sp, $ef77                                  ; $695d: $31 $77 $ef

Call_04b_6960:
    ld bc, $0697                                  ; $6960: $01 $97 $06
    ld [$5abd], sp                                ; $6963: $08 $bd $5a
    add sp, -$60                                  ; $6966: $e8 $a0
    ld a, [bc]                                    ; $6968: $0a
    ld a, [hl-]                                   ; $6969: $3a
    ld bc, $9b33                                  ; $696a: $01 $33 $9b
    jp nc, $0f92                                  ; $696d: $d2 $92 $0f

    ld l, a                                       ; $6970: $6f
    sub l                                         ; $6971: $95
    inc a                                         ; $6972: $3c
    ld d, $c2                                     ; $6973: $16 $c2
    inc b                                         ; $6975: $04
    cp e                                          ; $6976: $bb
    ld [hl], a                                    ; $6977: $77
    sub a                                         ; $6978: $97
    and [hl]                                      ; $6979: $a6
    rrca                                          ; $697a: $0f
    ld l, a                                       ; $697b: $6f
    sub l                                         ; $697c: $95
    inc a                                         ; $697d: $3c
    ld d, $c2                                     ; $697e: $16 $c2
    inc b                                         ; $6980: $04
    cp e                                          ; $6981: $bb
    ld l, a                                       ; $6982: $6f
    sub a                                         ; $6983: $97
    and [hl]                                      ; $6984: $a6
    rrca                                          ; $6985: $0f
    ld l, a                                       ; $6986: $6f
    sub l                                         ; $6987: $95
    inc a                                         ; $6988: $3c
    ld d, $c2                                     ; $6989: $16 $c2
    inc b                                         ; $698b: $04
    cp e                                          ; $698c: $bb
    ld a, a                                       ; $698d: $7f
    sub a                                         ; $698e: $97
    and [hl]                                      ; $698f: $a6
    rrca                                          ; $6990: $0f
    ld l, a                                       ; $6991: $6f
    sub l                                         ; $6992: $95
    inc a                                         ; $6993: $3c
    ld d, $c2                                     ; $6994: $16 $c2
    inc b                                         ; $6996: $04
    ld a, e                                       ; $6997: $7b
    ld h, b                                       ; $6998: $60
    sub a                                         ; $6999: $97
    and [hl]                                      ; $699a: $a6
    rrca                                          ; $699b: $0f
    ld l, a                                       ; $699c: $6f
    sub l                                         ; $699d: $95
    inc a                                         ; $699e: $3c
    ld d, $c2                                     ; $699f: $16 $c2
    inc b                                         ; $69a1: $04
    ld a, e                                       ; $69a2: $7b
    ld [hl], b                                    ; $69a3: $70
    sub a                                         ; $69a4: $97
    and [hl]                                      ; $69a5: $a6
    rrca                                          ; $69a6: $0f
    ld l, a                                       ; $69a7: $6f
    sub l                                         ; $69a8: $95
    inc a                                         ; $69a9: $3c
    ld d, $c2                                     ; $69aa: $16 $c2
    inc b                                         ; $69ac: $04
    ld a, e                                       ; $69ad: $7b
    ld l, b                                       ; $69ae: $68
    sub a                                         ; $69af: $97
    and [hl]                                      ; $69b0: $a6
    rrca                                          ; $69b1: $0f
    ld l, a                                       ; $69b2: $6f
    sub l                                         ; $69b3: $95
    inc a                                         ; $69b4: $3c
    ld d, $c2                                     ; $69b5: $16 $c2
    inc b                                         ; $69b7: $04
    ld a, e                                       ; $69b8: $7b
    ld a, b                                       ; $69b9: $78
    sub a                                         ; $69ba: $97
    and [hl]                                      ; $69bb: $a6
    rrca                                          ; $69bc: $0f
    rst $08                                       ; $69bd: $cf
    dec [hl]                                      ; $69be: $35
    ld a, e                                       ; $69bf: $7b
    ld l, $1d                                     ; $69c0: $2e $1d
    cpl                                           ; $69c2: $2f
    ld a, h                                       ; $69c3: $7c
    ld l, c                                       ; $69c4: $69
    and [hl]                                      ; $69c5: $a6
    rst $30                                       ; $69c6: $f7
    ld e, h                                       ; $69c7: $5c
    dec d                                         ; $69c8: $15
    inc a                                         ; $69c9: $3c
    call nz, Call_000_26fa                        ; $69ca: $c4 $fa $26
    xor d                                         ; $69cd: $aa
    cp c                                          ; $69ce: $b9
    sub [hl]                                      ; $69cf: $96
    di                                            ; $69d0: $f3
    db $dd                                        ; $69d1: $dd
    dec de                                        ; $69d2: $1b
    rst $18                                       ; $69d3: $df
    dec l                                         ; $69d4: $2d
    ld c, c                                       ; $69d5: $49
    daa                                           ; $69d6: $27
    dec d                                         ; $69d7: $15
    rra                                           ; $69d8: $1f
    rst $28                                       ; $69d9: $ef
    ld h, c                                       ; $69da: $61
    ld h, l                                       ; $69db: $65
    ld d, e                                       ; $69dc: $53
    ld hl, sp+$05                                 ; $69dd: $f8 $05
    rlca                                          ; $69df: $07
    ld c, a                                       ; $69e0: $4f
    and c                                         ; $69e1: $a1
    and b                                         ; $69e2: $a0
    pop af                                        ; $69e3: $f1
    ld [hl], e                                    ; $69e4: $73
    ret c                                         ; $69e5: $d8

    jp z, $7bdd                                   ; $69e6: $ca $dd $7b

    nop                                           ; $69e9: $00
    ld c, a                                       ; $69ea: $4f
    and c                                         ; $69eb: $a1
    and b                                         ; $69ec: $a0
    pop af                                        ; $69ed: $f1
    ld [hl], e                                    ; $69ee: $73
    ret c                                         ; $69ef: $d8

    jp z, Jump_04b_77dd                           ; $69f0: $ca $dd $77

    nop                                           ; $69f3: $00
    ld c, a                                       ; $69f4: $4f
    and [hl]                                      ; $69f5: $a6
    cpl                                           ; $69f6: $2f
    ld l, c                                       ; $69f7: $69
    ld c, h                                       ; $69f8: $4c
    and b                                         ; $69f9: $a0
    ld h, $2d                                     ; $69fa: $26 $2d
    ld sp, hl                                     ; $69fc: $f9
    ld a, a                                       ; $69fd: $7f
    ld a, [hl-]                                   ; $69fe: $3a

Call_04b_69ff:
    nop                                           ; $69ff: $00
    ld d, a                                       ; $6a00: $57
    xor c                                         ; $6a01: $a9
    adc $b9                                       ; $6a02: $ce $b9
    ld e, d                                       ; $6a04: $5a
    ld a, [hl-]                                   ; $6a05: $3a
    jp hl                                         ; $6a06: $e9


    xor e                                         ; $6a07: $ab
    cp a                                          ; $6a08: $bf
    inc [hl]                                      ; $6a09: $34
    db $d3                                        ; $6a0a: $d3
    rlca                                          ; $6a0b: $07
    xor a                                         ; $6a0c: $af
    ld l, b                                       ; $6a0d: $68
    inc c                                         ; $6a0e: $0c
    inc d                                         ; $6a0f: $14
    sub a                                         ; $6a10: $97
    call nc, Call_000_25a4                        ; $6a11: $d4 $a4 $25
    rst $38                                       ; $6a14: $ff
    ld c, a                                       ; $6a15: $4f
    rlca                                          ; $6a16: $07
    ld l, a                                       ; $6a17: $6f
    ld a, h                                       ; $6a18: $7c
    or a                                          ; $6a19: $b7
    db $e4                                        ; $6a1a: $e4
    ret                                           ; $6a1b: $c9


    ld d, d                                       ; $6a1c: $52
    ld [$cd2f], a                                 ; $6a1d: $ea $2f $cd
    db $f4                                        ; $6a20: $f4
    ld bc, $13cf                                  ; $6a21: $01 $cf $13
    and [hl]                                      ; $6a24: $a6
    xor h                                         ; $6a25: $ac
    ld d, [hl]                                    ; $6a26: $56
    sub e                                         ; $6a27: $93
    sub [hl]                                      ; $6a28: $96
    db $fc                                        ; $6a29: $fc
    ccf                                           ; $6a2a: $3f
    dec e                                         ; $6a2b: $1d
    xor a                                         ; $6a2c: $af
    ld h, a                                       ; $6a2d: $67
    dec bc                                        ; $6a2e: $0b
    xor c                                         ; $6a2f: $a9
    ld c, c                                       ; $6a30: $49
    ld c, e                                       ; $6a31: $4b
    cp $9f                                        ; $6a32: $fe $9f
    ld c, $af                                     ; $6a34: $0e $af
    inc sp                                        ; $6a36: $33
    db $fd                                        ; $6a37: $fd
    sub h                                         ; $6a38: $94
    ld l, d                                       ; $6a39: $6a
    jp nc, $ff92                                  ; $6a3a: $d2 $92 $ff

    and a                                         ; $6a3d: $a7
    inc bc                                        ; $6a3e: $03
    ld l, a                                       ; $6a3f: $6f
    db $fd                                        ; $6a40: $fd
    ld c, a                                       ; $6a41: $4f
    ld h, h                                       ; $6a42: $64
    and $a5                                       ; $6a43: $e6 $a5
    ld b, l                                       ; $6a45: $45
    and l                                         ; $6a46: $a5
    inc bc                                        ; $6a47: $03
    cpl                                           ; $6a48: $2f
    ld a, h                                       ; $6a49: $7c
    ld l, c                                       ; $6a4a: $69
    and [hl]                                      ; $6a4b: $a6
    rst $30                                       ; $6a4c: $f7
    ld e, h                                       ; $6a4d: $5c
    cp l                                          ; $6a4e: $bd
    ld e, c                                       ; $6a4f: $59
    ld [hl], d                                    ; $6a50: $72
    rst $28                                       ; $6a51: $ef
    sbc d                                         ; $6a52: $9a
    ld e, e                                       ; $6a53: $5b
    or d                                          ; $6a54: $b2
    db $f4                                        ; $6a55: $f4
    dec h                                         ; $6a56: $25
    ld c, h                                       ; $6a57: $4c
    ret nc                                        ; $6a58: $d0

    inc a                                         ; $6a59: $3c
    nop                                           ; $6a5a: $00
    xor a                                         ; $6a5b: $af
    db $10                                        ; $6a5c: $10
    ld b, $e7                                     ; $6a5d: $06 $e7
    and [hl]                                      ; $6a5f: $a6
    or h                                          ; $6a60: $b4
    xor b                                         ; $6a61: $a8
    ld [hl], h                                    ; $6a62: $74
    nop                                           ; $6a63: $00
    rst $08                                       ; $6a64: $cf
    ld a, l                                       ; $6a65: $7d
    rst $00                                       ; $6a66: $c7
    inc bc                                        ; $6a67: $03
    jp nz, $9a00                                  ; $6a68: $c2 $00 $9a

    inc l                                         ; $6a6b: $2c
    ret                                           ; $6a6c: $c9


    jp nc, $3bee                                  ; $6a6d: $d2 $ee $3b

    nop                                           ; $6a70: $00
    xor a                                         ; $6a71: $af
    sub h                                         ; $6a72: $94
    add sp, -$19                                  ; $6a73: $e8 $e7
    ld e, $dd                                     ; $6a75: $1e $dd
    db $fd                                        ; $6a77: $fd
    ld [hl], a                                    ; $6a78: $77
    ccf                                           ; $6a79: $3f
    ld [hl], b                                    ; $6a7a: $70
    nop                                           ; $6a7b: $00
    cpl                                           ; $6a7c: $2f
    rst $10                                       ; $6a7d: $d7
    dec l                                         ; $6a7e: $2d
    dec l                                         ; $6a7f: $2d
    ld l, d                                       ; $6a80: $6a
    jp hl                                         ; $6a81: $e9


    nop                                           ; $6a82: $00
    rst $28                                       ; $6a83: $ef
    sbc l                                         ; $6a84: $9d
    adc d                                         ; $6a85: $8a
    xor c                                         ; $6a86: $a9
    cp b                                          ; $6a87: $b8
    sbc b                                         ; $6a88: $98
    cp e                                          ; $6a89: $bb
    inc [hl]                                      ; $6a8a: $34
    ld a, l                                       ; $6a8b: $7d
    nop                                           ; $6a8c: $00
    rst $08                                       ; $6a8d: $cf
    ld de, $448a                                  ; $6a8e: $11 $8a $44
    cp a                                          ; $6a91: $bf
    jp hl                                         ; $6a92: $e9


    ccf                                           ; $6a93: $3f
    dec l                                         ; $6a94: $2d
    ld hl, sp+$09                                 ; $6a95: $f8 $09
    sbc d                                         ; $6a97: $9a
    ld c, d                                       ; $6a98: $4a
    ld l, c                                       ; $6a99: $69
    inc sp                                        ; $6a9a: $33
    add sp, $6c                                   ; $6a9b: $e8 $6c
    and [hl]                                      ; $6a9d: $a6
    rrca                                          ; $6a9e: $0f
    rst $08                                       ; $6a9f: $cf
    ld de, $448a                                  ; $6aa0: $11 $8a $44
    cp a                                          ; $6aa3: $bf
    jp hl                                         ; $6aa4: $e9


    ccf                                           ; $6aa5: $3f
    ld c, l                                       ; $6aa6: $4d
    or a                                          ; $6aa7: $b7
    and h                                         ; $6aa8: $a4
    ld sp, $5341                                  ; $6aa9: $31 $41 $53
    ld e, d                                       ; $6aac: $5a
    ld d, h                                       ; $6aad: $54
    ld a, [hl-]                                   ; $6aae: $3a
    nop                                           ; $6aaf: $00
    ld c, a                                       ; $6ab0: $4f
    push af                                       ; $6ab1: $f5
    call c, $9a48                                 ; $6ab2: $dc $48 $9a
    ld [c], a                                     ; $6ab5: $e2
    inc bc                                        ; $6ab6: $03
    ld l, a                                       ; $6ab7: $6f
    and c                                         ; $6ab8: $a1
    or $25                                        ; $6ab9: $f6 $25
    dec [hl]                                      ; $6abb: $35
    ld l, c                                       ; $6abc: $69
    ret                                           ; $6abd: $c9


    rst $38                                       ; $6abe: $ff
    db $d3                                        ; $6abf: $d3
    ld bc, $9def                                  ; $6ac0: $01 $ef $9d
    adc d                                         ; $6ac3: $8a
    xor c                                         ; $6ac4: $a9
    cp b                                          ; $6ac5: $b8
    sbc b                                         ; $6ac6: $98
    ld a, e                                       ; $6ac7: $7b
    adc [hl]                                      ; $6ac8: $8e
    ld a, $77                                     ; $6ac9: $3e $77
    rst $28                                       ; $6acb: $ef
    sbc c                                         ; $6acc: $99
    jp hl                                         ; $6acd: $e9


    inc bc                                        ; $6ace: $03
    rst $28                                       ; $6acf: $ef
    sbc l                                         ; $6ad0: $9d
    adc d                                         ; $6ad1: $8a
    xor c                                         ; $6ad2: $a9
    cp b                                          ; $6ad3: $b8
    sbc b                                         ; $6ad4: $98
    di                                            ; $6ad5: $f3
    rra                                           ; $6ad6: $1f
    sbc $e4                                       ; $6ad7: $de $e4
    and [hl]                                      ; $6ad9: $a6
    or h                                          ; $6ada: $b4
    xor b                                         ; $6adb: $a8
    ld [hl], h                                    ; $6adc: $74
    nop                                           ; $6add: $00
    xor a                                         ; $6ade: $af
    ld a, h                                       ; $6adf: $7c
    ld h, d                                       ; $6ae0: $62
    ld a, [hl+]                                   ; $6ae1: $2a
    ld [hl], e                                    ; $6ae2: $73
    ld d, e                                       ; $6ae3: $53
    ld e, d                                       ; $6ae4: $5a
    ld d, h                                       ; $6ae5: $54
    ld a, [hl-]                                   ; $6ae6: $3a
    nop                                           ; $6ae7: $00
    ld l, a                                       ; $6ae8: $6f
    sub l                                         ; $6ae9: $95
    inc a                                         ; $6aea: $3c
    ld d, $c2                                     ; $6aeb: $16 $c2
    inc b                                         ; $6aed: $04
    cp e                                          ; $6aee: $bb
    ld h, a                                       ; $6aef: $67
    rst $08                                       ; $6af0: $cf
    sub a                                         ; $6af1: $97
    ld h, h                                       ; $6af2: $64
    ld c, c                                       ; $6af3: $49
    dec e                                         ; $6af4: $1d
    ld l, a                                       ; $6af5: $6f
    ld a, h                                       ; $6af6: $7c
    or a                                          ; $6af7: $b7
    db $e4                                        ; $6af8: $e4
    ret                                           ; $6af9: $c9


    ld d, d                                       ; $6afa: $52
    xor $be                                       ; $6afb: $ee $be
    inc bc                                        ; $6afd: $03
    rst $08                                       ; $6afe: $cf

Call_04b_6aff:
    ld a, l                                       ; $6aff: $7d
    rst $00                                       ; $6b00: $c7
    inc bc                                        ; $6b01: $03
    jp nz, $9a00                                  ; $6b02: $c2 $00 $9a

    call nc, $aa0e                                ; $6b05: $d4 $0e $aa
    inc bc                                        ; $6b08: $03
    ld c, a                                       ; $6b09: $4f

Jump_04b_6b0a:
    ld a, [hl+]                                   ; $6b0a: $2a
    and [hl]                                      ; $6b0b: $a6
    sbc a                                         ; $6b0c: $9f
    ccf                                           ; $6b0d: $3f
    jp nz, $4b02                                  ; $6b0e: $c2 $02 $4b

    ld [hl], b                                    ; $6b11: $70
    nop                                           ; $6b12: $00
    rst $28                                       ; $6b13: $ef
    sbc l                                         ; $6b14: $9d
    adc d                                         ; $6b15: $8a
    xor c                                         ; $6b16: $a9
    cp b                                          ; $6b17: $b8
    sbc b                                         ; $6b18: $98
    dec bc                                        ; $6b19: $0b
    rst $38                                       ; $6b1a: $ff
    rla                                           ; $6b1b: $17
    ld a, c                                       ; $6b1c: $79
    ld l, $51                                     ; $6b1d: $2e $51
    ld sp, $df77                                  ; $6b1f: $31 $77 $df
    ld bc, $9def                                  ; $6b22: $01 $ef $9d
    adc d                                         ; $6b25: $8a
    xor c                                         ; $6b26: $a9
    cp b                                          ; $6b27: $b8
    sbc b                                         ; $6b28: $98
    dec bc                                        ; $6b29: $0b
    rst $38                                       ; $6b2a: $ff
    rla                                           ; $6b2b: $17
    ld a, c                                       ; $6b2c: $79
    ld l, $51                                     ; $6b2d: $2e $51
    ld sp, $ff77                                  ; $6b2f: $31 $77 $ff
    ld bc, $9def                                  ; $6b32: $01 $ef $9d
    adc d                                         ; $6b35: $8a
    xor c                                         ; $6b36: $a9
    cp b                                          ; $6b37: $b8
    sbc b                                         ; $6b38: $98
    dec bc                                        ; $6b39: $0b
    rst $38                                       ; $6b3a: $ff
    rla                                           ; $6b3b: $17
    ld a, c                                       ; $6b3c: $79
    ld l, $51                                     ; $6b3d: $2e $51
    ld sp, $c0f7                                  ; $6b3f: $31 $f7 $c0
    ld bc, $0697                                  ; $6b42: $01 $97 $06
    ld [$5abd], sp                                ; $6b45: $08 $bd $5a
    add sp, -$60                                  ; $6b48: $e8 $a0
    ld a, [bc]                                    ; $6b4a: $0a
    ld a, [hl-]                                   ; $6b4b: $3a
    pop bc                                        ; $6b4c: $c1
    ld b, c                                       ; $6b4d: $41
    ld l, [hl]                                    ; $6b4e: $6e
    ld c, d                                       ; $6b4f: $4a
    ld c, e                                       ; $6b50: $4b
    ld a, $00                                     ; $6b51: $3e $00
    ld l, a                                       ; $6b53: $6f
    sub l                                         ; $6b54: $95
    adc $16                                       ; $6b55: $ce $16
    ld d, l                                       ; $6b57: $55
    sbc e                                         ; $6b58: $9b
    sub c                                         ; $6b59: $91
    add d                                         ; $6b5a: $82
    ld l, e                                       ; $6b5b: $6b
    ld b, a                                       ; $6b5c: $47
    jr c, jr_04b_6b5f                             ; $6b5d: $38 $00

jr_04b_6b5f:
    rst $08                                       ; $6b5f: $cf
    pop de                                        ; $6b60: $d1
    rst $20                                       ; $6b61: $e7
    xor $3d                                       ; $6b62: $ee $3d
    inc sp                                        ; $6b64: $33
    cp l                                          ; $6b65: $bd
    cp e                                          ; $6b66: $bb
    or $42                                        ; $6b67: $f6 $42
    dec bc                                        ; $6b69: $0b
    ld c, $cf                                     ; $6b6a: $0e $cf
    dec [hl]                                      ; $6b6c: $35
    inc l                                         ; $6b6d: $2c
    ld b, [hl]                                    ; $6b6e: $46
    db $dd                                        ; $6b6f: $dd
    ld d, l                                       ; $6b70: $55
    xor d                                         ; $6b71: $aa
    ld [hl], e                                    ; $6b72: $73
    xor [hl]                                      ; $6b73: $ae
    sub [hl]                                      ; $6b74: $96
    ld d, $95                                     ; $6b75: $16 $95
    ld c, $af                                     ; $6b77: $0e $af
    jp $c243                                      ; $6b79: $c3 $43 $c2


    ld b, b                                       ; $6b7c: $40
    inc h                                         ; $6b7d: $24
    inc [hl]                                      ; $6b7e: $34
    cp a                                          ; $6b7f: $bf
    ld b, a                                       ; $6b80: $47
    ldh [$c3], a                                  ; $6b81: $e0 $c3
    ld a, [$01e6]                                 ; $6b83: $fa $e6 $01
    rst $10                                       ; $6b86: $d7
    ld a, a                                       ; $6b87: $7f
    add d                                         ; $6b88: $82
    and [hl]                                      ; $6b89: $a6
    ld [c], a                                     ; $6b8a: $e2
    adc a                                         ; $6b8b: $8f
    cp d                                          ; $6b8c: $ba
    ld a, h                                       ; $6b8d: $7c
    nop                                           ; $6b8e: $00
    ld d, a                                       ; $6b8f: $57
    xor c                                         ; $6b90: $a9
    adc $b9                                       ; $6b91: $ce $b9
    ld a, [hl-]                                   ; $6b93: $3a
    ld [hl], d                                    ; $6b94: $72
    adc $58                                       ; $6b95: $ce $58
    xor c                                         ; $6b97: $a9
    cp a                                          ; $6b98: $bf
    inc [hl]                                      ; $6b99: $34
    db $d3                                        ; $6b9a: $d3
    rlca                                          ; $6b9b: $07

Call_04b_6b9c:
    ld d, a                                       ; $6b9c: $57
    xor c                                         ; $6b9d: $a9
    adc $b9                                       ; $6b9e: $ce $b9
    ld e, d                                       ; $6ba0: $5a
    ld a, [hl-]                                   ; $6ba1: $3a
    xor c                                         ; $6ba2: $a9
    ld e, b                                       ; $6ba3: $58
    ld a, a                                       ; $6ba4: $7f
    ld l, c                                       ; $6ba5: $69
    and [hl]                                      ; $6ba6: $a6
    rrca                                          ; $6ba7: $0f
    rst $08                                       ; $6ba8: $cf
    ld l, e                                       ; $6ba9: $6b
    rlca                                          ; $6baa: $07
    push de                                       ; $6bab: $d5
    and d                                         ; $6bac: $a2
    ld a, [c]                                     ; $6bad: $f2
    and h                                         ; $6bae: $a4
    add hl, de                                    ; $6baf: $19
    pop af                                        ; $6bb0: $f1
    ld bc, $956f                                  ; $6bb1: $01 $6f $95
    inc a                                         ; $6bb4: $3c
    ld d, $c2                                     ; $6bb5: $16 $c2
    inc b                                         ; $6bb7: $04
    ld a, e                                       ; $6bb8: $7b
    ld l, b                                       ; $6bb9: $68
    rst $08                                       ; $6bba: $cf
    dec [hl]                                      ; $6bbb: $35
    inc l                                         ; $6bbc: $2c
    ld b, [hl]                                    ; $6bbd: $46
    db $dd                                        ; $6bbe: $dd
    ld [hl], e                                    ; $6bbf: $73
    sub [hl]                                      ; $6bc0: $96
    ldh [rP1], a                                  ; $6bc1: $e0 $00
    rst $08                                       ; $6bc3: $cf
    and e                                         ; $6bc4: $a3
    ld h, d                                       ; $6bc5: $62
    dec [hl]                                      ; $6bc6: $35
    ld l, c                                       ; $6bc7: $69
    ret                                           ; $6bc8: $c9


    rst $38                                       ; $6bc9: $ff
    db $d3                                        ; $6bca: $d3
    ld bc, $b42f                                  ; $6bcb: $01 $2f $b4
    ld h, b                                       ; $6bce: $60
    ld a, [$334b]                                 ; $6bcf: $fa $4b $33
    ld a, l                                       ; $6bd2: $7d
    nop                                           ; $6bd3: $00
    xor a                                         ; $6bd4: $af
    ld l, b                                       ; $6bd5: $68
    ld h, e                                       ; $6bd6: $63
    ld l, $a0                                     ; $6bd7: $2e $a0
    sbc a                                         ; $6bd9: $9f
    ld a, [hl]                                    ; $6bda: $7e
    and b                                         ; $6bdb: $a0
    xor [hl]                                      ; $6bdc: $ae
    xor [hl]                                      ; $6bdd: $ae
    inc bc                                        ; $6bde: $03
    xor d                                         ; $6bdf: $aa
    ld a, l                                       ; $6be0: $7d
    and a                                         ; $6be1: $a7
    ld [hl], h                                    ; $6be2: $74
    dec e                                         ; $6be3: $1d
    xor [hl]                                      ; $6be4: $ae
    ld a, $00                                     ; $6be5: $3e $00
    rst $08                                       ; $6be7: $cf
    pop de                                        ; $6be8: $d1
    rst $20                                       ; $6be9: $e7
    xor $3d                                       ; $6bea: $ee $3d
    inc sp                                        ; $6bec: $33
    cp l                                          ; $6bed: $bd
    cp e                                          ; $6bee: $bb
    or $0c                                        ; $6bef: $f6 $0c
    and [hl]                                      ; $6bf1: $a6
    rst $28                                       ; $6bf2: $ef
    inc d                                         ; $6bf3: $14
    ld d, h                                       ; $6bf4: $54
    ld a, l                                       ; $6bf5: $7d
    nop                                           ; $6bf6: $00
    xor a                                         ; $6bf7: $af
    ld a, a                                       ; $6bf8: $7f
    daa                                           ; $6bf9: $27
    db $fd                                        ; $6bfa: $fd
    db $dd                                        ; $6bfb: $dd
    cpl                                           ; $6bfc: $2f
    ld a, [hl-]                                   ; $6bfd: $3a
    ld a, [bc]                                    ; $6bfe: $0a
    pop hl                                        ; $6bff: $e1
    adc a                                         ; $6c00: $8f
    db $ed                                        ; $6c01: $ed
    adc c                                         ; $6c02: $89
    ld a, e                                       ; $6c03: $7b
    ld [hl], a                                    ; $6c04: $77
    nop                                           ; $6c05: $00
    rst $10                                       ; $6c06: $d7
    dec sp                                        ; $6c07: $3b
    and c                                         ; $6c08: $a1
    ret                                           ; $6c09: $c9


    ei                                            ; $6c0a: $fb
    ret nc                                        ; $6c0b: $d0

    ld a, h                                       ; $6c0c: $7c
    rst $30                                       ; $6c0d: $f7
    halt                                          ; $6c0e: $76
    ld bc, $53aa                                  ; $6c0f: $01 $aa $53
    ld b, c                                       ; $6c12: $41
    ld a, h                                       ; $6c13: $7c
    nop                                           ; $6c14: $00
    rst $10                                       ; $6c15: $d7
    dec sp                                        ; $6c16: $3b
    and c                                         ; $6c17: $a1
    ret                                           ; $6c18: $c9


    jp $53dc                                      ; $6c19: $c3 $dc $53


    rst $18                                       ; $6c1c: $df
    ld b, c                                       ; $6c1d: $41
    xor l                                         ; $6c1e: $ad
    ld a, a                                       ; $6c1f: $7f
    sbc $a6                                       ; $6c20: $de $a6
    or $7c                                        ; $6c22: $f6 $7c
    cp c                                          ; $6c24: $b9
    ld a, [$2984]                                 ; $6c25: $fa $84 $29
    xor e                                         ; $6c28: $ab
    db $e3                                        ; $6c29: $e3
    inc bc                                        ; $6c2a: $03
    rst $10                                       ; $6c2b: $d7
    dec sp                                        ; $6c2c: $3b
    and c                                         ; $6c2d: $a1
    ret                                           ; $6c2e: $c9


    jp $ef9c                                      ; $6c2f: $c3 $9c $ef


    sbc [hl]                                      ; $6c32: $9e
    add h                                         ; $6c33: $84
    ld a, $87                                     ; $6c34: $3e $87
    sub l                                         ; $6c36: $95
    dec h                                         ; $6c37: $25
    inc c                                         ; $6c38: $0c
    ld [c], a                                     ; $6c39: $e2
    inc bc                                        ; $6c3a: $03
    rst $10                                       ; $6c3b: $d7
    dec sp                                        ; $6c3c: $3b
    and c                                         ; $6c3d: $a1
    ret                                           ; $6c3e: $c9


    jp $53dc                                      ; $6c3f: $c3 $dc $53


    ld h, h                                       ; $6c42: $64
    ld h, $05                                     ; $6c43: $26 $05
    db $d3                                        ; $6c45: $d3
    or a                                          ; $6c46: $b7
    xor c                                         ; $6c47: $a9
    cp l                                          ; $6c48: $bd
    adc c                                         ; $6c49: $89
    cp d                                          ; $6c4a: $ba
    add hl, hl                                    ; $6c4b: $29
    db $fc                                        ; $6c4c: $fc
    ld [hl-], a                                   ; $6c4d: $32

jr_04b_6c4e:
    ld d, [hl]                                    ; $6c4e: $56
    add $07                                       ; $6c4f: $c6 $07
    rst $10                                       ; $6c51: $d7
    dec sp                                        ; $6c52: $3b
    and c                                         ; $6c53: $a1
    ret                                           ; $6c54: $c9


    jp $cbdc                                      ; $6c55: $c3 $dc $cb


    ld a, [de]                                    ; $6c58: $1a
    ld e, l                                       ; $6c59: $5d
    ld c, e                                       ; $6c5a: $4b
    ld e, a                                       ; $6c5b: $5f
    cp d                                          ; $6c5c: $ba
    ld c, l                                       ; $6c5d: $4d
    db $ed                                        ; $6c5e: $ed
    adc l                                         ; $6c5f: $8d
    rst $28                                       ; $6c60: $ef
    sub [hl]                                      ; $6c61: $96
    inc d                                         ; $6c62: $14
    ld a, a                                       ; $6c63: $7f
    add hl, hl                                    ; $6c64: $29
    sbc e                                         ; $6c65: $9b
    daa                                           ; $6c66: $27
    ld c, h                                       ; $6c67: $4c
    ld e, c                                       ; $6c68: $59
    dec e                                         ; $6c69: $1d
    rra                                           ; $6c6a: $1f
    rst $10                                       ; $6c6b: $d7
    dec sp                                        ; $6c6c: $3b
    and c                                         ; $6c6d: $a1

jr_04b_6c6e:
    ret                                           ; $6c6e: $c9


    jp $f09c                                      ; $6c6f: $c3 $9c $f0


    dec hl                                        ; $6c72: $2b
    ld c, a                                       ; $6c73: $4f
    sbc b                                         ; $6c74: $98
    or d                                          ; $6c75: $b2
    ld a, d                                       ; $6c76: $7a
    rst $08                                       ; $6c77: $cf
    ld l, e                                       ; $6c78: $6b
    xor h                                         ; $6c79: $ac
    cpl                                           ; $6c7a: $2f
    db $ed                                        ; $6c7b: $ed
    sub $bd                                       ; $6c7c: $d6 $bd
    and l                                         ; $6c7e: $a5
    dec hl                                        ; $6c7f: $2b
    db $e3                                        ; $6c80: $e3
    inc bc                                        ; $6c81: $03
    rst $10                                       ; $6c82: $d7
    dec sp                                        ; $6c83: $3b
    and c                                         ; $6c84: $a1
    ret                                           ; $6c85: $c9


    jp $8bdc                                      ; $6c86: $c3 $dc $8b


    and $2d                                       ; $6c89: $e6 $2d
    ld [$345e], a                                 ; $6c8b: $ea $5e $34
    xor l                                         ; $6c8e: $ad
    dec hl                                        ; $6c8f: $2b
    ld sp, $f62f                                  ; $6c90: $31 $2f $f6
    ld e, h                                       ; $6c93: $5c
    ld c, a                                       ; $6c94: $4f
    and $9b                                       ; $6c95: $e6 $9b
    ld [hl], e                                    ; $6c97: $73
    rst $38                                       ; $6c98: $ff
    and a                                         ; $6c99: $a7
    dec a                                         ; $6c9a: $3d
    xor c                                         ; $6c9b: $a9

Jump_04b_6c9c:
jr_04b_6c9c:
    ld [hl], l                                    ; $6c9c: $75
    rst $30                                       ; $6c9d: $f7
    ld e, h                                       ; $6c9e: $5c
    ld [hl], l                                    ; $6c9f: $75
    ld b, c                                       ; $6ca0: $41
    inc sp                                        ; $6ca1: $33
    xor h                                         ; $6ca2: $ac
    ld l, a                                       ; $6ca3: $6f
    add $07                                       ; $6ca4: $c6 $07
    rst $10                                       ; $6ca6: $d7
    dec sp                                        ; $6ca7: $3b
    and c                                         ; $6ca8: $a1
    ret                                           ; $6ca9: $c9


    jp Jump_04b_7bdc                              ; $6caa: $c3 $dc $7b


    cp a                                          ; $6cad: $bf
    inc e                                         ; $6cae: $1c
    ld a, [hl]                                    ; $6caf: $7e
    rst $00                                       ; $6cb0: $c7
    sub a                                         ; $6cb1: $97
    jr c, jr_04b_6c9c                             ; $6cb2: $38 $e8

    ld l, l                                       ; $6cb4: $6d
    ld l, d                                       ; $6cb5: $6a
    ld l, a                                       ; $6cb6: $6f
    ld a, h                                       ; $6cb7: $7c
    or a                                          ; $6cb8: $b7
    and h                                         ; $6cb9: $a4
    ld a, [c]                                     ; $6cba: $f2
    rla                                           ; $6cbb: $17
    ld a, [hl-]                                   ; $6cbc: $3a
    ld h, c                                       ; $6cbd: $61
    jp z, $f8ea                                   ; $6cbe: $ca $ea $f8

    nop                                           ; $6cc1: $00
    rst $10                                       ; $6cc2: $d7
    dec sp                                        ; $6cc3: $3b
    and c                                         ; $6cc4: $a1
    ret                                           ; $6cc5: $c9


    jp Jump_04b_73dc                              ; $6cc6: $c3 $dc $73


    rst $18                                       ; $6cc9: $df
    pop af                                        ; $6cca: $f1
    add b                                         ; $6ccb: $80
    jr nc, jr_04b_6c4e                            ; $6ccc: $30 $80

    ld l, $e6                                     ; $6cce: $2e $e6
    dec sp                                        ; $6cd0: $3b
    cp $6e                                        ; $6cd1: $fe $6e
    db $d3                                        ; $6cd3: $d3
    adc h                                         ; $6cd4: $8c
    sub h                                         ; $6cd5: $94
    ld h, b                                       ; $6cd6: $60
    add hl, hl                                    ; $6cd7: $29
    db $e3                                        ; $6cd8: $e3
    inc bc                                        ; $6cd9: $03
    rst $10                                       ; $6cda: $d7
    dec sp                                        ; $6cdb: $3b
    and c                                         ; $6cdc: $a1
    ret                                           ; $6cdd: $c9


    jp $9b5c                                      ; $6cde: $c3 $5c $9b


    sub e                                         ; $6ce1: $93
    dec h                                         ; $6ce2: $25
    ld e, c                                       ; $6ce3: $59
    jp c, Jump_04b_5f4f                           ; $6ce4: $da $4f $5f

    jp c, $df73                                   ; $6ce7: $da $73 $df

    pop af                                        ; $6cea: $f1
    add b                                         ; $6ceb: $80
    jr nc, jr_04b_6c6e                            ; $6cec: $30 $80

    ld [c], a                                     ; $6cee: $e2
    inc bc                                        ; $6cef: $03
    rst $10                                       ; $6cf0: $d7
    dec sp                                        ; $6cf1: $3b
    push bc                                       ; $6cf2: $c5
    xor l                                         ; $6cf3: $ad
    db $e4                                        ; $6cf4: $e4
    add l                                         ; $6cf5: $85
    push hl                                       ; $6cf6: $e5
    ld b, l                                       ; $6cf7: $45
    dec l                                         ; $6cf8: $2d
    db $ed                                        ; $6cf9: $ed
    cp e                                          ; $6cfa: $bb
    and l                                         ; $6cfb: $a5
    ld hl, sp+$00                                 ; $6cfc: $f8 $00
    rst $10                                       ; $6cfe: $d7
    dec sp                                        ; $6cff: $3b
    and c                                         ; $6d00: $a1
    ret                                           ; $6d01: $c9


    jp $9b5c                                      ; $6d02: $c3 $5c $9b


    sub e                                         ; $6d05: $93
    dec h                                         ; $6d06: $25
    ld e, c                                       ; $6d07: $59
    adc d                                         ; $6d08: $8a
    rrca                                          ; $6d09: $0f
    rst $10                                       ; $6d0a: $d7
    dec sp                                        ; $6d0b: $3b
    and c                                         ; $6d0c: $a1
    ret                                           ; $6d0d: $c9


    jp $9b5c                                      ; $6d0e: $c3 $5c $9b


    sub e                                         ; $6d11: $93
    dec h                                         ; $6d12: $25
    ld e, c                                       ; $6d13: $59
    adc d                                         ; $6d14: $8a
    rrca                                          ; $6d15: $0f
    rst $10                                       ; $6d16: $d7
    dec sp                                        ; $6d17: $3b
    and c                                         ; $6d18: $a1
    ret                                           ; $6d19: $c9


    jp $9b5c                                      ; $6d1a: $c3 $5c $9b


    sub e                                         ; $6d1d: $93
    dec h                                         ; $6d1e: $25
    ld e, c                                       ; $6d1f: $59
    adc d                                         ; $6d20: $8a
    rrca                                          ; $6d21: $0f
    rst $10                                       ; $6d22: $d7
    cp e                                          ; $6d23: $bb
    inc sp                                        ; $6d24: $33
    ld a, [c]                                     ; $6d25: $f2
    ld a, $34                                     ; $6d26: $3e $34
    rst $18                                       ; $6d28: $df
    cp l                                          ; $6d29: $bd
    ld [hl], a                                    ; $6d2a: $77
    ld a, [hl+]                                   ; $6d2b: $2a
    and [hl]                                      ; $6d2c: $a6
    ld [c], a                                     ; $6d2d: $e2
    ld h, d                                       ; $6d2e: $62
    ld d, $36                                     ; $6d2f: $16 $36
    ld b, h                                       ; $6d31: $44
    ld d, l                                       ; $6d32: $55
    pop af                                        ; $6d33: $f1
    ld bc, $3bd7                                  ; $6d34: $01 $d7 $3b
    and c                                         ; $6d37: $a1
    ret                                           ; $6d38: $c9


    jp Jump_04b_585c                              ; $6d39: $c3 $5c $58


    sbc [hl]                                      ; $6d3c: $9e
    cp $d2                                        ; $6d3d: $fe $d2
    ld c, h                                       ; $6d3f: $4c
    rst $28                                       ; $6d40: $ef
    dec [hl]                                      ; $6d41: $35
    daa                                           ; $6d42: $27
    sbc e                                         ; $6d43: $9b
    ld [hl], e                                    ; $6d44: $73
    sub b                                         ; $6d45: $90
    rst $20                                       ; $6d46: $e7
    cp e                                          ; $6d47: $bb
    sub a                                         ; $6d48: $97
    dec e                                         ; $6d49: $1d
    rra                                           ; $6d4a: $1f
    ld d, $7d                                     ; $6d4b: $16 $7d
    ld a, h                                       ; $6d4d: $7c
    nop                                           ; $6d4e: $00
    rst $10                                       ; $6d4f: $d7
    dec sp                                        ; $6d50: $3b
    and c                                         ; $6d51: $a1
    ret                                           ; $6d52: $c9


    jp Jump_04b_585c                              ; $6d53: $c3 $5c $58


    sbc [hl]                                      ; $6d56: $9e
    cp $d2                                        ; $6d57: $fe $d2
    ld c, h                                       ; $6d59: $4c
    rst $28                                       ; $6d5a: $ef
    xor l                                         ; $6d5b: $ad
    rst $38                                       ; $6d5c: $ff
    ld c, c                                       ; $6d5d: $49
    ld b, c                                       ; $6d5e: $41
    push de                                       ; $6d5f: $d5
    cp d                                          ; $6d60: $ba
    jp hl                                         ; $6d61: $e9


    rst $30                                       ; $6d62: $f7
    ld e, d                                       ; $6d63: $5a
    ld h, l                                       ; $6d64: $65
    or e                                          ; $6d65: $b3
    add hl, de                                    ; $6d66: $19
    rra                                           ; $6d67: $1f
    rst $10                                       ; $6d68: $d7
    dec sp                                        ; $6d69: $3b
    and c                                         ; $6d6a: $a1
    ret                                           ; $6d6b: $c9


    jp $ef9c                                      ; $6d6c: $c3 $9c $ef


    ld l, $8d                                     ; $6d6f: $2e $8d
    jp nc, Jump_000_3014                          ; $6d71: $d2 $14 $30

    ld e, l                                       ; $6d74: $5d
    jp nz, $3e20                                  ; $6d75: $c2 $20 $3e

    nop                                           ; $6d78: $00
    rst $10                                       ; $6d79: $d7
    dec sp                                        ; $6d7a: $3b
    and c                                         ; $6d7b: $a1
    ret                                           ; $6d7c: $c9


    jp Jump_04b_585c                              ; $6d7d: $c3 $5c $58


    sbc $93                                       ; $6d80: $de $93
    adc d                                         ; $6d82: $8a
    jp hl                                         ; $6d83: $e9


    rst $20                                       ; $6d84: $e7
    adc a                                         ; $6d85: $8f
    or b                                          ; $6d86: $b0
    ld a, [$334b]                                 ; $6d87: $fa $4b $33
    dec e                                         ; $6d8a: $1d
    rra                                           ; $6d8b: $1f
    rst $10                                       ; $6d8c: $d7
    dec sp                                        ; $6d8d: $3b
    and c                                         ; $6d8e: $a1
    ret                                           ; $6d8f: $c9


    jp $ef9c                                      ; $6d90: $c3 $9c $ef


    ld e, [hl]                                    ; $6d93: $5e
    ld c, [hl]                                    ; $6d94: $4e
    ld e, a                                       ; $6d95: $5f
    ld d, d                                       ; $6d96: $52
    call c, $694a                                 ; $6d97: $dc $4a $69
    ld d, c                                       ; $6d9a: $51
    add hl, hl                                    ; $6d9b: $29
    ld a, $00                                     ; $6d9c: $3e $00
    rst $10                                       ; $6d9e: $d7
    dec sp                                        ; $6d9f: $3b
    and c                                         ; $6da0: $a1
    ret                                           ; $6da1: $c9


    jp $ef9c                                      ; $6da2: $c3 $9c $ef


    sbc [hl]                                      ; $6da5: $9e
    ld [$d1b9], a                                 ; $6da6: $ea $b9 $d1
    add hl, bc                                    ; $6da9: $09
    ld d, e                                       ; $6daa: $53
    ld d, [hl]                                    ; $6dab: $56
    rst $00                                       ; $6dac: $c7
    rlca                                          ; $6dad: $07
    rst $10                                       ; $6dae: $d7
    dec sp                                        ; $6daf: $3b
    and c                                         ; $6db0: $a1
    ret                                           ; $6db1: $c9


    jp Jump_04b_585c                              ; $6db2: $c3 $5c $58


    sbc $53                                       ; $6db5: $de $53
    dec a                                         ; $6db7: $3d
    sbc a                                         ; $6db8: $9f
    ld c, d                                       ; $6db9: $4a
    sbc b                                         ; $6dba: $98
    and b                                         ; $6dbb: $a0
    xor c                                         ; $6dbc: $a9
    cp a                                          ; $6dbd: $bf
    inc [hl]                                      ; $6dbe: $34
    db $d3                                        ; $6dbf: $d3
    pop af                                        ; $6dc0: $f1
    ld bc, $3bd7                                  ; $6dc1: $01 $d7 $3b
    and c                                         ; $6dc4: $a1
    ret                                           ; $6dc5: $c9


    jp Jump_04b_585c                              ; $6dc6: $c3 $5c $58


    sbc $7b                                       ; $6dc9: $de $7b
    daa                                           ; $6dcb: $27
    inc hl                                        ; $6dcc: $23
    xor $9e                                       ; $6dcd: $ee $9e
    ld [hl], a                                    ; $6dcf: $77
    ld d, d                                       ; $6dd0: $52
    ld [hl], c                                    ; $6dd1: $71
    ld d, e                                       ; $6dd2: $53
    ld a, a                                       ; $6dd3: $7f
    ld l, c                                       ; $6dd4: $69
    and [hl]                                      ; $6dd5: $a6
    db $e3                                        ; $6dd6: $e3
    inc bc                                        ; $6dd7: $03
    rst $10                                       ; $6dd8: $d7
    cp e                                          ; $6dd9: $bb
    or b                                          ; $6dda: $b0
    ld [bc], a                                    ; $6ddb: $02
    rst $08                                       ; $6ddc: $cf
    ld [hl], a                                    ; $6ddd: $77
    xor a                                         ; $6dde: $af
    ld b, e                                       ; $6ddf: $43
    ld e, b                                       ; $6de0: $58
    ld d, b                                       ; $6de1: $50
    dec a                                         ; $6de2: $3d
    rst $10                                       ; $6de3: $d7
    ld [hl], d                                    ; $6de4: $72
    cpl                                           ; $6de5: $2f
    sub l                                         ; $6de6: $95
    ld a, [bc]                                    ; $6de7: $0a
    ld a, [hl+]                                   ; $6de8: $2a
    inc c                                         ; $6de9: $0c
    call nc, $e9fd                                ; $6dea: $d4 $fd $e9
    sbc e                                         ; $6ded: $9b
    pop af                                        ; $6dee: $f1
    ld bc, $3bd7                                  ; $6def: $01 $d7 $3b
    and c                                         ; $6df2: $a1
    ret                                           ; $6df3: $c9


    jp Jump_04b_585c                              ; $6df4: $c3 $5c $58


    sbc $bd                                       ; $6df7: $de $bd
    adc d                                         ; $6df9: $8a
    dec sp                                        ; $6dfa: $3b
    rst $18                                       ; $6dfb: $df
    ld [$96b9], a                                 ; $6dfc: $ea $b9 $96
    dec bc                                        ; $6dff: $0b
    bit 7, e                                      ; $6e00: $cb $7b
    xor e                                         ; $6e02: $ab
    inc h                                         ; $6e03: $24
    ld a, h                                       ; $6e04: $7c
    rst $18                                       ; $6e05: $df
    call c, $5f53                                 ; $6e06: $dc $53 $5f
    push bc                                       ; $6e09: $c5
    rlca                                          ; $6e0a: $07
    rst $10                                       ; $6e0b: $d7
    dec sp                                        ; $6e0c: $3b
    and c                                         ; $6e0d: $a1
    ret                                           ; $6e0e: $c9


    jp Jump_04b_585c                              ; $6e0f: $c3 $5c $58


    sbc $7d                                       ; $6e12: $de $7d
    cp [hl]                                       ; $6e14: $be
    di                                            ; $6e15: $f3
    xor l                                         ; $6e16: $ad
    sbc [hl]                                      ; $6e17: $9e
    ld l, e                                       ; $6e18: $6b
    cp c                                          ; $6e19: $b9
    or b                                          ; $6e1a: $b0
    cp h                                          ; $6e1b: $bc
    or a                                          ; $6e1c: $b7
    ld c, d                                       ; $6e1d: $4a
    jp nz, $cdf7                                  ; $6e1e: $c2 $f7 $cd

    dec a                                         ; $6e21: $3d
    push af                                       ; $6e22: $f5
    ld d, l                                       ; $6e23: $55
    ld a, h                                       ; $6e24: $7c
    nop                                           ; $6e25: $00
    rst $10                                       ; $6e26: $d7
    dec sp                                        ; $6e27: $3b
    and c                                         ; $6e28: $a1
    ret                                           ; $6e29: $c9


    jp Jump_04b_585c                              ; $6e2a: $c3 $5c $58


    sbc $fd                                       ; $6e2d: $de $fd
    cp [hl]                                       ; $6e2f: $be
    di                                            ; $6e30: $f3
    xor l                                         ; $6e31: $ad
    sbc [hl]                                      ; $6e32: $9e
    ld l, e                                       ; $6e33: $6b
    cp c                                          ; $6e34: $b9
    or b                                          ; $6e35: $b0
    cp h                                          ; $6e36: $bc
    or a                                          ; $6e37: $b7
    ld c, d                                       ; $6e38: $4a
    jp nz, $cdf7                                  ; $6e39: $c2 $f7 $cd

    dec a                                         ; $6e3c: $3d
    push af                                       ; $6e3d: $f5
    ld d, l                                       ; $6e3e: $55
    ld a, h                                       ; $6e3f: $7c
    nop                                           ; $6e40: $00
    rst $10                                       ; $6e41: $d7
    dec sp                                        ; $6e42: $3b
    and c                                         ; $6e43: $a1
    ret                                           ; $6e44: $c9


    jp Jump_04b_585c                              ; $6e45: $c3 $5c $58


    sbc $03                                       ; $6e48: $de $03
    cp [hl]                                       ; $6e4a: $be
    di                                            ; $6e4b: $f3
    xor l                                         ; $6e4c: $ad
    sbc [hl]                                      ; $6e4d: $9e
    ld l, e                                       ; $6e4e: $6b
    cp c                                          ; $6e4f: $b9
    or b                                          ; $6e50: $b0
    cp h                                          ; $6e51: $bc
    or a                                          ; $6e52: $b7
    ld c, d                                       ; $6e53: $4a
    jp nz, $cdf7                                  ; $6e54: $c2 $f7 $cd

    dec a                                         ; $6e57: $3d
    push af                                       ; $6e58: $f5
    ld d, l                                       ; $6e59: $55
    ld a, h                                       ; $6e5a: $7c
    nop                                           ; $6e5b: $00
    rst $10                                       ; $6e5c: $d7
    dec sp                                        ; $6e5d: $3b
    and c                                         ; $6e5e: $a1
    ret                                           ; $6e5f: $c9


    jp Jump_04b_585c                              ; $6e60: $c3 $5c $58


    sbc $83                                       ; $6e63: $de $83

Jump_04b_6e65:
    cp [hl]                                       ; $6e65: $be
    di                                            ; $6e66: $f3
    xor l                                         ; $6e67: $ad

Call_04b_6e68:
    sbc [hl]                                      ; $6e68: $9e
    ld l, e                                       ; $6e69: $6b
    cp c                                          ; $6e6a: $b9
    or b                                          ; $6e6b: $b0
    cp h                                          ; $6e6c: $bc
    or a                                          ; $6e6d: $b7
    ld c, d                                       ; $6e6e: $4a
    jp nz, $cdf7                                  ; $6e6f: $c2 $f7 $cd

    dec a                                         ; $6e72: $3d
    push af                                       ; $6e73: $f5
    ld d, l                                       ; $6e74: $55
    ld a, h                                       ; $6e75: $7c
    nop                                           ; $6e76: $00
    rst $10                                       ; $6e77: $d7
    dec sp                                        ; $6e78: $3b
    and c                                         ; $6e79: $a1
    ret                                           ; $6e7a: $c9


    jp Jump_04b_585c                              ; $6e7b: $c3 $5c $58


    sbc $43                                       ; $6e7e: $de $43
    cp [hl]                                       ; $6e80: $be
    di                                            ; $6e81: $f3
    xor l                                         ; $6e82: $ad
    sbc [hl]                                      ; $6e83: $9e
    ld l, e                                       ; $6e84: $6b
    cp c                                          ; $6e85: $b9
    or b                                          ; $6e86: $b0
    cp h                                          ; $6e87: $bc
    or a                                          ; $6e88: $b7
    ld c, d                                       ; $6e89: $4a
    jp nz, $cdf7                                  ; $6e8a: $c2 $f7 $cd

    dec a                                         ; $6e8d: $3d
    push af                                       ; $6e8e: $f5
    ld d, l                                       ; $6e8f: $55
    ld a, h                                       ; $6e90: $7c
    nop                                           ; $6e91: $00
    rst $10                                       ; $6e92: $d7
    dec sp                                        ; $6e93: $3b
    and c                                         ; $6e94: $a1
    ret                                           ; $6e95: $c9


    jp $9b5c                                      ; $6e96: $c3 $5c $9b


    sub e                                         ; $6e99: $93
    dec h                                         ; $6e9a: $25
    ld e, c                                       ; $6e9b: $59
    adc d                                         ; $6e9c: $8a
    rrca                                          ; $6e9d: $0f
    rst $10                                       ; $6e9e: $d7
    dec sp                                        ; $6e9f: $3b
    and c                                         ; $6ea0: $a1
    ret                                           ; $6ea1: $c9


    jp $9b5c                                      ; $6ea2: $c3 $5c $9b


    sub e                                         ; $6ea5: $93
    dec h                                         ; $6ea6: $25
    ld e, c                                       ; $6ea7: $59
    adc d                                         ; $6ea8: $8a
    rrca                                          ; $6ea9: $0f
    rst $10                                       ; $6eaa: $d7
    dec sp                                        ; $6eab: $3b
    and c                                         ; $6eac: $a1
    ret                                           ; $6ead: $c9


    jp $9b5c                                      ; $6eae: $c3 $5c $9b


    sub e                                         ; $6eb1: $93
    dec h                                         ; $6eb2: $25
    ld e, c                                       ; $6eb3: $59

Call_04b_6eb4:
    adc d                                         ; $6eb4: $8a
    rrca                                          ; $6eb5: $0f
    rst $10                                       ; $6eb6: $d7
    dec sp                                        ; $6eb7: $3b
    and c                                         ; $6eb8: $a1
    ret                                           ; $6eb9: $c9


    jp $9b5c                                      ; $6eba: $c3 $5c $9b


    sub e                                         ; $6ebd: $93
    dec h                                         ; $6ebe: $25
    ld e, c                                       ; $6ebf: $59
    adc d                                         ; $6ec0: $8a
    rrca                                          ; $6ec1: $0f
    rst $10                                       ; $6ec2: $d7
    dec sp                                        ; $6ec3: $3b
    and c                                         ; $6ec4: $a1
    ret                                           ; $6ec5: $c9


    jp $9b5c                                      ; $6ec6: $c3 $5c $9b


    sub e                                         ; $6ec9: $93
    dec h                                         ; $6eca: $25
    ld e, c                                       ; $6ecb: $59
    adc d                                         ; $6ecc: $8a
    rrca                                          ; $6ecd: $0f
    rst $10                                       ; $6ece: $d7
    dec sp                                        ; $6ecf: $3b
    and c                                         ; $6ed0: $a1
    ret                                           ; $6ed1: $c9


    jp $9b5c                                      ; $6ed2: $c3 $5c $9b


    sub e                                         ; $6ed5: $93
    dec h                                         ; $6ed6: $25
    ld e, c                                       ; $6ed7: $59
    adc d                                         ; $6ed8: $8a
    rrca                                          ; $6ed9: $0f
    rst $10                                       ; $6eda: $d7
    dec sp                                        ; $6edb: $3b
    and c                                         ; $6edc: $a1
    ret                                           ; $6edd: $c9


    jp $441c                                      ; $6ede: $c3 $1c $44


    ld e, a                                       ; $6ee1: $5f
    ld d, h                                       ; $6ee2: $54
    and l                                         ; $6ee3: $a5
    ld a, $ed                                     ; $6ee4: $3e $ed
    add hl, hl                                    ; $6ee6: $29
    set 0, h                                      ; $6ee7: $cb $c4
    inc b                                         ; $6ee9: $04
    ld l, d                                       ; $6eea: $6a
    jp nc, $ff92                                  ; $6eeb: $d2 $92 $ff

    and a                                         ; $6eee: $a7
    ld hl, sp+$00                                 ; $6eef: $f8 $00
    rst $10                                       ; $6ef1: $d7
    dec sp                                        ; $6ef2: $3b
    and c                                         ; $6ef3: $a1
    ret                                           ; $6ef4: $c9


    jp $9b5c                                      ; $6ef5: $c3 $5c $9b


    db $d3                                        ; $6ef8: $d3
    dec l                                         ; $6ef9: $2d
    sbc b                                         ; $6efa: $98
    xor [hl]                                      ; $6efb: $ae
    jp nc, $9a5f                                  ; $6efc: $d2 $5f $9a

    jp hl                                         ; $6eff: $e9


    ld hl, sp+$00                                 ; $6f00: $f8 $00
    rst $10                                       ; $6f02: $d7

Jump_04b_6f03:
    dec sp                                        ; $6f03: $3b
    and c                                         ; $6f04: $a1
    ret                                           ; $6f05: $c9


    jp $9b5c                                      ; $6f06: $c3 $5c $9b


    db $d3                                        ; $6f09: $d3
    dec l                                         ; $6f0a: $2d
    sbc b                                         ; $6f0b: $98
    xor [hl]                                      ; $6f0c: $ae
    jp nc, $9a5f                                  ; $6f0d: $d2 $5f $9a

    jp hl                                         ; $6f10: $e9


    ld hl, sp+$00                                 ; $6f11: $f8 $00
    rst $10                                       ; $6f13: $d7
    dec sp                                        ; $6f14: $3b
    and c                                         ; $6f15: $a1
    ret                                           ; $6f16: $c9


    jp $ef9c                                      ; $6f17: $c3 $9c $ef


    sbc $2a                                       ; $6f1a: $de $2a
    add hl, bc                                    ; $6f1c: $09
    rst $18                                       ; $6f1d: $df
    scf                                           ; $6f1e: $37
    rst $30                                       ; $6f1f: $f7
    sbc h                                         ; $6f20: $9c
    dec h                                         ; $6f21: $25
    adc b                                         ; $6f22: $88
    rrca                                          ; $6f23: $0f
    rst $10                                       ; $6f24: $d7
    dec sp                                        ; $6f25: $3b
    and c                                         ; $6f26: $a1
    ret                                           ; $6f27: $c9


    jp $ef9c                                      ; $6f28: $c3 $9c $ef


    and h                                         ; $6f2b: $a4
    add hl, hl                                    ; $6f2c: $29
    push de                                       ; $6f2d: $d5
    adc h                                         ; $6f2e: $8c
    rrca                                          ; $6f2f: $0f
    rst $10                                       ; $6f30: $d7
    dec sp                                        ; $6f31: $3b
    and c                                         ; $6f32: $a1
    ret                                           ; $6f33: $c9


    jp Jump_04b_585c                              ; $6f34: $c3 $5c $58


    ld e, [hl]                                    ; $6f37: $5e
    ld d, h                                       ; $6f38: $54
    ld d, h                                       ; $6f39: $54
    ld b, c                                       ; $6f3a: $41
    dec d                                         ; $6f3b: $15
    ld a, a                                       ; $6f3c: $7f
    call nc, $f8e5                                ; $6f3d: $d4 $e5 $f8
    nop                                           ; $6f40: $00
    rst $10                                       ; $6f41: $d7
    dec sp                                        ; $6f42: $3b
    and c                                         ; $6f43: $a1
    ret                                           ; $6f44: $c9


    ei                                            ; $6f45: $fb
    ret nc                                        ; $6f46: $d0

    jp nz, $b8f2                                  ; $6f47: $c2 $f2 $b8

    ld b, h                                       ; $6f4a: $44
    push bc                                       ; $6f4b: $c5
    sbc h                                         ; $6f4c: $9c
    ld l, e                                       ; $6f4d: $6b
    cp c                                          ; $6f4e: $b9
    rst $30                                       ; $6f4f: $f7
    ld c, [hl]                                    ; $6f50: $4e
    push bc                                       ; $6f51: $c5
    ld d, h                                       ; $6f52: $54
    ld e, h                                       ; $6f53: $5c
    call z, $00f8                                 ; $6f54: $cc $f8 $00
    rst $10                                       ; $6f57: $d7
    dec sp                                        ; $6f58: $3b
    and c                                         ; $6f59: $a1
    ret                                           ; $6f5a: $c9


    jp $a5dc                                      ; $6f5b: $c3 $dc $a5


    ld bc, $af42                                  ; $6f5e: $01 $42 $af
    ld d, $3a                                     ; $6f61: $16 $3a
    xor b                                         ; $6f63: $a8
    add d                                         ; $6f64: $82
    add $07                                       ; $6f65: $c6 $07
    rst $10                                       ; $6f67: $d7
    dec sp                                        ; $6f68: $3b
    and c                                         ; $6f69: $a1
    ret                                           ; $6f6a: $c9


    jp $ef9c                                      ; $6f6b: $c3 $9c $ef


    ld b, d                                       ; $6f6e: $42
    db $d3                                        ; $6f6f: $d3
    ld [hl], e                                    ; $6f70: $73
    dec l                                         ; $6f71: $2d
    rst $20                                       ; $6f72: $e7
    cp e                                          ; $6f73: $bb
    ld a, e                                       ; $6f74: $7b
    dec d                                         ; $6f75: $15
    ld [hl], a                                    ; $6f76: $77
    ld l, [hl]                                    ; $6f77: $6e
    ret                                           ; $6f78: $c9


    ld h, e                                       ; $6f79: $63
    ld hl, $104c                                  ; $6f7a: $21 $4c $10
    rra                                           ; $6f7d: $1f
    rst $10                                       ; $6f7e: $d7
    dec sp                                        ; $6f7f: $3b
    and c                                         ; $6f80: $a1
    ret                                           ; $6f81: $c9


    jp $ef9c                                      ; $6f82: $c3 $9c $ef


    ld b, d                                       ; $6f85: $42
    db $d3                                        ; $6f86: $d3
    ld [hl], e                                    ; $6f87: $73
    dec l                                         ; $6f88: $2d
    rst $20                                       ; $6f89: $e7
    cp e                                          ; $6f8a: $bb
    ei                                            ; $6f8b: $fb
    ld a, h                                       ; $6f8c: $7c
    rst $20                                       ; $6f8d: $e7
    sub [hl]                                      ; $6f8e: $96
    inc a                                         ; $6f8f: $3c
    ld d, $c2                                     ; $6f90: $16 $c2
    inc b                                         ; $6f92: $04
    pop af                                        ; $6f93: $f1
    ld bc, $3bd7                                  ; $6f94: $01 $d7 $3b
    and c                                         ; $6f97: $a1
    ret                                           ; $6f98: $c9


    jp $ef9c                                      ; $6f99: $c3 $9c $ef


    ld b, d                                       ; $6f9c: $42
    db $d3                                        ; $6f9d: $d3
    ld [hl], e                                    ; $6f9e: $73
    dec l                                         ; $6f9f: $2d
    rst $20                                       ; $6fa0: $e7
    cp e                                          ; $6fa1: $bb
    ei                                            ; $6fa2: $fb
    ld a, l                                       ; $6fa3: $7d
    rst $20                                       ; $6fa4: $e7
    sub [hl]                                      ; $6fa5: $96

Jump_04b_6fa6:
    inc a                                         ; $6fa6: $3c

jr_04b_6fa7:
    ld d, $c2                                     ; $6fa7: $16 $c2
    inc b                                         ; $6fa9: $04
    pop af                                        ; $6faa: $f1
    ld bc, $3bd7                                  ; $6fab: $01 $d7 $3b
    and c                                         ; $6fae: $a1
    ret                                           ; $6faf: $c9


    jp $ef9c                                      ; $6fb0: $c3 $9c $ef


    ld b, d                                       ; $6fb3: $42
    db $d3                                        ; $6fb4: $d3
    ld [hl], e                                    ; $6fb5: $73
    dec l                                         ; $6fb6: $2d
    rst $20                                       ; $6fb7: $e7
    cp e                                          ; $6fb8: $bb
    rlca                                          ; $6fb9: $07
    ld a, h                                       ; $6fba: $7c
    rst $20                                       ; $6fbb: $e7
    sub [hl]                                      ; $6fbc: $96
    inc a                                         ; $6fbd: $3c
    ld d, $c2                                     ; $6fbe: $16 $c2
    inc b                                         ; $6fc0: $04
    pop af                                        ; $6fc1: $f1
    ld bc, $3bd7                                  ; $6fc2: $01 $d7 $3b
    and c                                         ; $6fc5: $a1
    ret                                           ; $6fc6: $c9


    jp $ef9c                                      ; $6fc7: $c3 $9c $ef


    ld b, d                                       ; $6fca: $42
    db $d3                                        ; $6fcb: $d3
    ld [hl], e                                    ; $6fcc: $73
    dec l                                         ; $6fcd: $2d
    rst $20                                       ; $6fce: $e7
    cp e                                          ; $6fcf: $bb
    rlca                                          ; $6fd0: $07
    ld a, l                                       ; $6fd1: $7d
    rst $20                                       ; $6fd2: $e7
    sub [hl]                                      ; $6fd3: $96
    inc a                                         ; $6fd4: $3c
    ld d, $c2                                     ; $6fd5: $16 $c2
    inc b                                         ; $6fd7: $04
    pop af                                        ; $6fd8: $f1
    ld bc, $3bd7                                  ; $6fd9: $01 $d7 $3b
    and c                                         ; $6fdc: $a1
    ret                                           ; $6fdd: $c9


    jp $ef9c                                      ; $6fde: $c3 $9c $ef


    ld b, d                                       ; $6fe1: $42
    db $d3                                        ; $6fe2: $d3
    ld [hl], e                                    ; $6fe3: $73
    dec l                                         ; $6fe4: $2d
    rst $20                                       ; $6fe5: $e7
    cp e                                          ; $6fe6: $bb
    add a                                         ; $6fe7: $87
    ld a, h                                       ; $6fe8: $7c
    rst $20                                       ; $6fe9: $e7
    sub [hl]                                      ; $6fea: $96
    inc a                                         ; $6feb: $3c
    ld d, $c2                                     ; $6fec: $16 $c2
    inc b                                         ; $6fee: $04
    pop af                                        ; $6fef: $f1
    ld bc, $3bd7                                  ; $6ff0: $01 $d7 $3b
    and c                                         ; $6ff3: $a1
    ret                                           ; $6ff4: $c9


    jp $ef9c                                      ; $6ff5: $c3 $9c $ef


    ld b, d                                       ; $6ff8: $42
    db $d3                                        ; $6ff9: $d3
    ld [hl], e                                    ; $6ffa: $73
    dec l                                         ; $6ffb: $2d
    rst $20                                       ; $6ffc: $e7
    cp e                                          ; $6ffd: $bb
    add a                                         ; $6ffe: $87
    ld a, l                                       ; $6fff: $7d
    rst $20                                       ; $7000: $e7
    sub [hl]                                      ; $7001: $96
    inc a                                         ; $7002: $3c
    ld d, $c2                                     ; $7003: $16 $c2
    inc b                                         ; $7005: $04
    pop af                                        ; $7006: $f1
    ld bc, $3bd7                                  ; $7007: $01 $d7 $3b
    and c                                         ; $700a: $a1
    ret                                           ; $700b: $c9


    inc de                                        ; $700c: $13
    jr nc, jr_04b_6fa7                            ; $700d: $30 $98

    rst $28                                       ; $700f: $ef
    sbc [hl]                                      ; $7010: $9e
    ld l, e                                       ; $7011: $6b
    or $5c                                        ; $7012: $f6 $5c
    adc d                                         ; $7014: $8a
    rrca                                          ; $7015: $0f
    rst $10                                       ; $7016: $d7
    dec sp                                        ; $7017: $3b
    and c                                         ; $7018: $a1
    ret                                           ; $7019: $c9


    jp Jump_04b_585c                              ; $701a: $c3 $5c $58


    sbc [hl]                                      ; $701d: $9e
    cp $d2                                        ; $701e: $fe $d2
    ld c, h                                       ; $7020: $4c
    rst $28                                       ; $7021: $ef
    cp c                                          ; $7022: $b9
    ld a, [hl+]                                   ; $7023: $2a
    ld a, b                                       ; $7024: $78
    adc b                                         ; $7025: $88
    push af                                       ; $7026: $f5
    ld c, l                                       ; $7027: $4d
    ld d, h                                       ; $7028: $54
    ld [hl], e                                    ; $7029: $73
    dec l                                         ; $702a: $2d
    rst $20                                       ; $702b: $e7
    cp e                                          ; $702c: $bb
    scf                                           ; $702d: $37
    cp [hl]                                       ; $702e: $be
    ld e, e                                       ; $702f: $5b
    sub d                                         ; $7030: $92
    ld c, [hl]                                    ; $7031: $4e
    ld a, [hl+]                                   ; $7032: $2a
    adc [hl]                                      ; $7033: $8e
    rrca                                          ; $7034: $0f
    rst $10                                       ; $7035: $d7
    dec sp                                        ; $7036: $3b
    and c                                         ; $7037: $a1
    ret                                           ; $7038: $c9


    ei                                            ; $7039: $fb
    ret nc                                        ; $703a: $d0

    ld a, h                                       ; $703b: $7c
    ld [hl], a                                    ; $703c: $77
    add $ca                                       ; $703d: $c6 $ca
    and [hl]                                      ; $703f: $a6
    ldh a, [$0b]                                  ; $7040: $f0 $0b
    ld [c], a                                     ; $7042: $e2
    inc bc                                        ; $7043: $03
    rst $10                                       ; $7044: $d7
    dec sp                                        ; $7045: $3b
    and c                                         ; $7046: $a1
    ret                                           ; $7047: $c9


    jp $ef9c                                      ; $7048: $c3 $9c $ef


    inc b                                         ; $704b: $04
    inc d                                         ; $704c: $14
    inc [hl]                                      ; $704d: $34
    ld a, [hl]                                    ; $704e: $7e
    ld c, $5b                                     ; $704f: $0e $5b
    add hl, de                                    ; $7051: $19
    rra                                           ; $7052: $1f
    rst $10                                       ; $7053: $d7
    dec sp                                        ; $7054: $3b
    and c                                         ; $7055: $a1
    ret                                           ; $7056: $c9


    jp $ef9c                                      ; $7057: $c3 $9c $ef


    inc b                                         ; $705a: $04
    inc d                                         ; $705b: $14
    inc [hl]                                      ; $705c: $34
    ld a, [hl]                                    ; $705d: $7e
    ld c, $5b                                     ; $705e: $0e $5b
    add hl, de                                    ; $7060: $19
    rra                                           ; $7061: $1f
    rst $10                                       ; $7062: $d7
    dec sp                                        ; $7063: $3b
    and c                                         ; $7064: $a1
    ret                                           ; $7065: $c9


    jp $441c                                      ; $7066: $c3 $1c $44


    ld e, a                                       ; $7069: $5f
    ld d, h                                       ; $706a: $54
    and l                                         ; $706b: $a5
    ld a, $ed                                     ; $706c: $3e $ed
    ret                                           ; $706e: $c9


    db $f4                                        ; $706f: $f4
    dec h                                         ; $7070: $25
    adc l                                         ; $7071: $8d
    add hl, bc                                    ; $7072: $09
    call nc, Call_000_25a4                        ; $7073: $d4 $a4 $25
    rst $38                                       ; $7076: $ff
    ld c, a                                       ; $7077: $4f
    pop af                                        ; $7078: $f1
    ld bc, $3bd7                                  ; $7079: $01 $d7 $3b
    and c                                         ; $707c: $a1
    ret                                           ; $707d: $c9


    jp Jump_04b_585c                              ; $707e: $c3 $5c $58


    sbc $55                                       ; $7081: $de $55
    xor d                                         ; $7083: $aa
    ld [hl], e                                    ; $7084: $73
    xor [hl]                                      ; $7085: $ae
    sub [hl]                                      ; $7086: $96
    ld c, [hl]                                    ; $7087: $4e
    ld a, [$2fea]                                 ; $7088: $fa $ea $2f
    call $7c74                                    ; $708b: $cd $74 $7c
    nop                                           ; $708e: $00
    rst $10                                       ; $708f: $d7
    dec sp                                        ; $7090: $3b
    and c                                         ; $7091: $a1
    ret                                           ; $7092: $c9


    jp Jump_04b_645c                              ; $7093: $c3 $5c $64


    sbc $a2                                       ; $7096: $de $a2
    xor $15                                       ; $7098: $ee $15
    adc l                                         ; $709a: $8d
    add c                                         ; $709b: $81
    ld [c], a                                     ; $709c: $e2
    sub d                                         ; $709d: $92
    sbc d                                         ; $709e: $9a
    or h                                          ; $709f: $b4
    db $e4                                        ; $70a0: $e4
    rst $38                                       ; $70a1: $ff
    add hl, hl                                    ; $70a2: $29
    ld a, $00                                     ; $70a3: $3e $00
    rst $10                                       ; $70a5: $d7
    dec sp                                        ; $70a6: $3b
    and c                                         ; $70a7: $a1
    ret                                           ; $70a8: $c9


    jp Jump_04b_585c                              ; $70a9: $c3 $5c $58


    sbc $1b                                       ; $70ac: $de $1b
    rst $18                                       ; $70ae: $df
    dec l                                         ; $70af: $2d
    ld a, c                                       ; $70b0: $79
    or d                                          ; $70b1: $b2
    sub h                                         ; $70b2: $94
    ld a, [$334b]                                 ; $70b3: $fa $4b $33
    dec e                                         ; $70b6: $1d
    rra                                           ; $70b7: $1f
    rst $10                                       ; $70b8: $d7
    dec sp                                        ; $70b9: $3b
    and c                                         ; $70ba: $a1
    ret                                           ; $70bb: $c9


    jp $441c                                      ; $70bc: $c3 $1c $44


    ld e, a                                       ; $70bf: $5f
    ld d, h                                       ; $70c0: $54
    and l                                         ; $70c1: $a5
    ld a, $ed                                     ; $70c2: $3e $ed
    ld a, c                                       ; $70c4: $79
    jp nz, $d594                                  ; $70c5: $c2 $94 $d5

    ld l, d                                       ; $70c8: $6a
    jp nc, $ff92                                  ; $70c9: $d2 $92 $ff

    and a                                         ; $70cc: $a7
    ld hl, sp+$00                                 ; $70cd: $f8 $00
    rst $10                                       ; $70cf: $d7
    dec sp                                        ; $70d0: $3b
    and c                                         ; $70d1: $a1
    ret                                           ; $70d2: $c9


    jp $441c                                      ; $70d3: $c3 $1c $44


    ld e, a                                       ; $70d6: $5f
    ld d, h                                       ; $70d7: $54
    and l                                         ; $70d8: $a5
    ld a, $ed                                     ; $70d9: $3e $ed
    push af                                       ; $70db: $f5
    ld l, h                                       ; $70dc: $6c
    ld hl, $6935                                  ; $70dd: $21 $35 $69
    ret                                           ; $70e0: $c9


    rst $38                                       ; $70e1: $ff
    ld d, e                                       ; $70e2: $53
    ld a, h                                       ; $70e3: $7c
    nop                                           ; $70e4: $00
    rst $10                                       ; $70e5: $d7
    dec sp                                        ; $70e6: $3b
    and c                                         ; $70e7: $a1
    ret                                           ; $70e8: $c9


    jp $441c                                      ; $70e9: $c3 $1c $44


    ld e, a                                       ; $70ec: $5f
    ld d, h                                       ; $70ed: $54
    and l                                         ; $70ee: $a5
    ld a, $ed                                     ; $70ef: $3e $ed
    ld [hl], l                                    ; $70f1: $75
    and [hl]                                      ; $70f2: $a6
    sbc a                                         ; $70f3: $9f
    ld d, d                                       ; $70f4: $52
    ld c, l                                       ; $70f5: $4d
    ld e, d                                       ; $70f6: $5a
    ld a, [c]                                     ; $70f7: $f2
    rst $38                                       ; $70f8: $ff
    inc d                                         ; $70f9: $14
    rra                                           ; $70fa: $1f
    rst $10                                       ; $70fb: $d7
    dec sp                                        ; $70fc: $3b
    and c                                         ; $70fd: $a1
    ret                                           ; $70fe: $c9


    jp $9b5c                                      ; $70ff: $c3 $5c $9b


    ld [hl], e                                    ; $7102: $73
    rst $38                                       ; $7103: $ff
    daa                                           ; $7104: $27
    ld [hl-], a                                   ; $7105: $32
    di                                            ; $7106: $f3
    jp nc, Jump_04b_52a2                          ; $7107: $d2 $a2 $52

    ld a, h                                       ; $710a: $7c
    nop                                           ; $710b: $00
    rst $10                                       ; $710c: $d7
    dec sp                                        ; $710d: $3b
    and c                                         ; $710e: $a1
    ret                                           ; $710f: $c9


    jp Jump_04b_585c                              ; $7110: $c3 $5c $58


    sbc $73                                       ; $7113: $de $73
    push af                                       ; $7115: $f5
    ld h, [hl]                                    ; $7116: $66
    ret                                           ; $7117: $c9


    cp l                                          ; $7118: $bd
    sra l                                         ; $7119: $cb $2d
    ld e, c                                       ; $711b: $59
    ld a, [$2612]                                 ; $711c: $fa $12 $26
    ld l, b                                       ; $711f: $68
    add $07                                       ; $7120: $c6 $07
    rst $10                                       ; $7122: $d7
    dec sp                                        ; $7123: $3b
    and c                                         ; $7124: $a1
    ret                                           ; $7125: $c9


    jp $ef9c                                      ; $7126: $c3 $9c $ef


    ld e, [hl]                                    ; $7129: $5e
    ld hl, $ce0c                                  ; $712a: $21 $0c $ce
    ld c, l                                       ; $712d: $4d
    ld l, c                                       ; $712e: $69
    ld d, c                                       ; $712f: $51
    add hl, hl                                    ; $7130: $29
    ld a, $00                                     ; $7131: $3e $00
    rst $10                                       ; $7133: $d7
    dec sp                                        ; $7134: $3b
    and c                                         ; $7135: $a1
    ret                                           ; $7136: $c9


    jp $9b5c                                      ; $7137: $c3 $5c $9b


    sub e                                         ; $713a: $93
    dec h                                         ; $713b: $25
    ld e, c                                       ; $713c: $59
    jp c, Jump_04b_5f4f                           ; $713d: $da $4f $5f

    jp c, $df73                                   ; $7140: $da $73 $df

    pop af                                        ; $7143: $f1
    add b                                         ; $7144: $80
    jr nc, @-$7e                                  ; $7145: $30 $80

    ld [c], a                                     ; $7147: $e2
    inc bc                                        ; $7148: $03
    rst $10                                       ; $7149: $d7
    dec sp                                        ; $714a: $3b
    and c                                         ; $714b: $a1
    ret                                           ; $714c: $c9


    ei                                            ; $714d: $fb
    ret nc                                        ; $714e: $d0

    and b                                         ; $714f: $a0
    ld [de], a                                    ; $7150: $12
    db $fd                                        ; $7151: $fd
    call c, $bba3                                 ; $7152: $dc $a3 $bb
    rst $38                                       ; $7155: $ff
    xor $07                                       ; $7156: $ee $07
    ld [c], a                                     ; $7158: $e2
    inc bc                                        ; $7159: $03
    rst $10                                       ; $715a: $d7
    dec sp                                        ; $715b: $3b
    and c                                         ; $715c: $a1
    ret                                           ; $715d: $c9


    inc sp                                        ; $715e: $33
    set 7, c                                      ; $715f: $cb $f9
    xor $d7                                       ; $7161: $ee $d7
    dec l                                         ; $7163: $2d
    call Call_04b_5cb5                            ; $7164: $cd $b5 $5c
    ld e, b                                       ; $7167: $58
    ld e, [hl]                                    ; $7168: $5e
    call nc, Call_04b_7c52                        ; $7169: $d4 $52 $7c
    nop                                           ; $716c: $00
    rst $10                                       ; $716d: $d7
    dec sp                                        ; $716e: $3b
    and c                                         ; $716f: $a1
    ret                                           ; $7170: $c9


    jp $ef9c                                      ; $7171: $c3 $9c $ef


    ld l, $4d                                     ; $7174: $2e $4d
    rst $08                                       ; $7176: $cf
    or l                                          ; $7177: $b5
    call c, $a77b                                 ; $7178: $dc $7b $a7
    ld h, d                                       ; $717b: $62
    ld a, [hl+]                                   ; $717c: $2a
    ld l, $66                                     ; $717d: $2e $66
    ld a, h                                       ; $717f: $7c
    nop                                           ; $7180: $00
    rst $10                                       ; $7181: $d7
    dec sp                                        ; $7182: $3b
    and c                                         ; $7183: $a1
    ret                                           ; $7184: $c9


    jp $ef9c                                      ; $7185: $c3 $9c $ef


    add d                                         ; $7188: $82
    sbc a                                         ; $7189: $9f
    and b                                         ; $718a: $a0
    xor c                                         ; $718b: $a9
    sub h                                         ; $718c: $94
    ld [hl], $83                                  ; $718d: $36 $83
    adc $66                                       ; $718f: $ce $66
    ld a, d                                       ; $7191: $7a
    xor [hl]                                      ; $7192: $ae
    push hl                                       ; $7193: $e5
    sbc [hl]                                      ; $7194: $9e
    inc hl                                        ; $7195: $23
    inc d                                         ; $7196: $14
    adc c                                         ; $7197: $89
    ld a, [hl]                                    ; $7198: $7e
    db $d3                                        ; $7199: $d3
    ld a, a                                       ; $719a: $7f
    adc d                                         ; $719b: $8a
    rrca                                          ; $719c: $0f
    rst $10                                       ; $719d: $d7
    dec sp                                        ; $719e: $3b
    and c                                         ; $719f: $a1
    ret                                           ; $71a0: $c9


    jp $ef9c                                      ; $71a1: $c3 $9c $ef


    ld [hl], h                                    ; $71a4: $74
    ld c, e                                       ; $71a5: $4b
    ld a, [de]                                    ; $71a6: $1a
    inc de                                        ; $71a7: $13
    inc [hl]                                      ; $71a8: $34
    and l                                         ; $71a9: $a5
    ld b, l                                       ; $71aa: $45
    and l                                         ; $71ab: $a5
    cp c                                          ; $71ac: $b9
    sub [hl]                                      ; $71ad: $96
    ld a, e                                       ; $71ae: $7b
    adc [hl]                                      ; $71af: $8e
    ld d, b                                       ; $71b0: $50
    inc h                                         ; $71b1: $24
    ld a, [$ff4d]                                 ; $71b2: $fa $4d $ff
    add hl, hl                                    ; $71b5: $29
    ld a, $00                                     ; $71b6: $3e $00
    rst $10                                       ; $71b8: $d7
    dec sp                                        ; $71b9: $3b
    and c                                         ; $71ba: $a1
    ret                                           ; $71bb: $c9


    jp $9b5c                                      ; $71bc: $c3 $5c $9b


    inc de                                        ; $71bf: $13
    ld a, d                                       ; $71c0: $7a
    ld l, [hl]                                    ; $71c1: $6e
    inc h                                         ; $71c2: $24
    ld c, l                                       ; $71c3: $4d
    ld [hl], c                                    ; $71c4: $71
    ld a, h                                       ; $71c5: $7c
    nop                                           ; $71c6: $00
    rst $10                                       ; $71c7: $d7
    dec sp                                        ; $71c8: $3b
    and c                                         ; $71c9: $a1
    ret                                           ; $71ca: $c9


    jp $5bdc                                      ; $71cb: $c3 $dc $5b


    xor b                                         ; $71ce: $a8
    ld a, l                                       ; $71cf: $7d
    ld c, c                                       ; $71d0: $49
    ld c, l                                       ; $71d1: $4d
    ld e, d                                       ; $71d2: $5a
    ld a, [c]                                     ; $71d3: $f2
    rst $38                                       ; $71d4: $ff
    inc d                                         ; $71d5: $14
    rra                                           ; $71d6: $1f
    rst $10                                       ; $71d7: $d7
    dec sp                                        ; $71d8: $3b
    and c                                         ; $71d9: $a1
    ret                                           ; $71da: $c9


    jp $ef9c                                      ; $71db: $c3 $9c $ef


    sbc [hl]                                      ; $71de: $9e
    and e                                         ; $71df: $a3
    rst $08                                       ; $71e0: $cf
    db $dd                                        ; $71e1: $dd
    ld a, e                                       ; $71e2: $7b
    ld h, [hl]                                    ; $71e3: $66
    ld a, [hl-]                                   ; $71e4: $3a
    ld a, $00                                     ; $71e5: $3e $00
    rst $10                                       ; $71e7: $d7
    dec sp                                        ; $71e8: $3b
    and c                                         ; $71e9: $a1
    ret                                           ; $71ea: $c9


    jp $ef9c                                      ; $71eb: $c3 $9c $ef


    db $fc                                        ; $71ee: $fc
    add a                                         ; $71ef: $87
    scf                                           ; $71f0: $37
    cp c                                          ; $71f1: $b9
    add hl, hl                                    ; $71f2: $29
    dec l                                         ; $71f3: $2d
    ld a, [hl+]                                   ; $71f4: $2a
    push bc                                       ; $71f5: $c5
    rlca                                          ; $71f6: $07
    rst $10                                       ; $71f7: $d7
    dec sp                                        ; $71f8: $3b
    and c                                         ; $71f9: $a1
    ret                                           ; $71fa: $c9


    jp $ef9c                                      ; $71fb: $c3 $9c $ef


    and b                                         ; $71fe: $a0
    ld c, a                                       ; $71ff: $4f
    ld c, h                                       ; $7200: $4c
    ld h, l                                       ; $7201: $65
    ld l, [hl]                                    ; $7202: $6e
    ld c, d                                       ; $7203: $4a
    adc e                                         ; $7204: $8b
    ld c, d                                       ; $7205: $4a
    pop af                                        ; $7206: $f1
    ld bc, $3bd7                                  ; $7207: $01 $d7 $3b
    and c                                         ; $720a: $a1
    ret                                           ; $720b: $c9


    jp $ef9c                                      ; $720c: $c3 $9c $ef


    ld h, h                                       ; $720f: $64
    ld c, c                                       ; $7210: $49
    sub [hl]                                      ; $7211: $96
    ld d, h                                       ; $7212: $54
    ld a, h                                       ; $7213: $7c
    nop                                           ; $7214: $00
    rst $10                                       ; $7215: $d7
    dec sp                                        ; $7216: $3b
    and c                                         ; $7217: $a1
    ret                                           ; $7218: $c9


    jp $ef9c                                      ; $7219: $c3 $9c $ef


    and d                                         ; $721c: $a2
    ld h, $90                                     ; $721d: $26 $90
    ld d, $95                                     ; $721f: $16 $95
    and $fe                                       ; $7221: $e6 $fe
    ld c, a                                       ; $7223: $4f
    db $e3                                        ; $7224: $e3
    rst $28                                       ; $7225: $ef
    sub [hl]                                      ; $7226: $96
    inc a                                         ; $7227: $3c
    ld e, c                                       ; $7228: $59
    jp z, Jump_04b_7c66                           ; $7229: $ca $66 $7c

    nop                                           ; $722c: $00
    rst $10                                       ; $722d: $d7
    dec sp                                        ; $722e: $3b
    and c                                         ; $722f: $a1
    ret                                           ; $7230: $c9


    jp $a5dc                                      ; $7231: $c3 $dc $a5


    ld de, $b989                                  ; $7234: $11 $89 $b9
    ld c, l                                       ; $7237: $4d
    ld c, l                                       ; $7238: $4d
    ld l, d                                       ; $7239: $6a
    rlca                                          ; $723a: $07
    ld d, l                                       ; $723b: $55
    ld a, h                                       ; $723c: $7c
    nop                                           ; $723d: $00
    rst $10                                       ; $723e: $d7
    dec sp                                        ; $723f: $3b
    and c                                         ; $7240: $a1
    ret                                           ; $7241: $c9


    jp $ef9c                                      ; $7242: $c3 $9c $ef


    ld c, h                                       ; $7245: $4c
    ld sp, $fcfd                                  ; $7246: $31 $fd $fc
    ld de, $5816                                  ; $7249: $11 $16 $58
    add d                                         ; $724c: $82
    ld hl, sp+$00                                 ; $724d: $f8 $00
    rst $10                                       ; $724f: $d7
    dec sp                                        ; $7250: $3b
    and c                                         ; $7251: $a1
    ret                                           ; $7252: $c9


    inc de                                        ; $7253: $13
    inc e                                         ; $7254: $1c
    db $e4                                        ; $7255: $e4
    and $c2                                       ; $7256: $e6 $c2
    ld a, [c]                                     ; $7258: $f2
    inc d                                         ; $7259: $14
    inc a                                         ; $725a: $3c
    db $fc                                        ; $725b: $fc
    ld e, a                                       ; $725c: $5f
    add e                                         ; $725d: $83
    ld a, [bc]                                    ; $725e: $0a
    rst $18                                       ; $725f: $df
    add hl, sp                                    ; $7260: $39
    push bc                                       ; $7261: $c5
    rlca                                          ; $7262: $07
    rst $10                                       ; $7263: $d7
    dec sp                                        ; $7264: $3b
    and c                                         ; $7265: $a1
    ret                                           ; $7266: $c9


    inc de                                        ; $7267: $13
    inc e                                         ; $7268: $1c
    db $e4                                        ; $7269: $e4
    and $c2                                       ; $726a: $e6 $c2
    ld a, [c]                                     ; $726c: $f2
    inc d                                         ; $726d: $14
    inc a                                         ; $726e: $3c
    db $fc                                        ; $726f: $fc
    ld e, a                                       ; $7270: $5f
    add e                                         ; $7271: $83
    ld a, [bc]                                    ; $7272: $0a
    rst $18                                       ; $7273: $df
    add hl, sp                                    ; $7274: $39
    push bc                                       ; $7275: $c5
    rlca                                          ; $7276: $07
    rst $10                                       ; $7277: $d7
    dec sp                                        ; $7278: $3b
    and c                                         ; $7279: $a1
    ret                                           ; $727a: $c9


    inc de                                        ; $727b: $13
    inc e                                         ; $727c: $1c
    db $e4                                        ; $727d: $e4
    and $c2                                       ; $727e: $e6 $c2
    ld a, [c]                                     ; $7280: $f2
    inc d                                         ; $7281: $14
    inc a                                         ; $7282: $3c
    db $fc                                        ; $7283: $fc
    ld e, a                                       ; $7284: $5f
    add e                                         ; $7285: $83
    ld a, [bc]                                    ; $7286: $0a
    rst $18                                       ; $7287: $df
    add hl, sp                                    ; $7288: $39
    push bc                                       ; $7289: $c5
    rlca                                          ; $728a: $07
    rst $10                                       ; $728b: $d7
    dec sp                                        ; $728c: $3b
    and c                                         ; $728d: $a1
    ret                                           ; $728e: $c9


    inc de                                        ; $728f: $13
    inc e                                         ; $7290: $1c
    db $e4                                        ; $7291: $e4
    and $2e                                       ; $7292: $e6 $2e
    dec c                                         ; $7294: $0d
    db $10                                        ; $7295: $10
    ld a, d                                       ; $7296: $7a
    or l                                          ; $7297: $b5
    ret nc                                        ; $7298: $d0

    ld b, c                                       ; $7299: $41
    dec d                                         ; $729a: $15
    inc [hl]                                      ; $729b: $34
    ld a, $00                                     ; $729c: $3e $00
    rst $10                                       ; $729e: $d7
    dec sp                                        ; $729f: $3b
    and c                                         ; $72a0: $a1
    ret                                           ; $72a1: $c9


    jp $ef9c                                      ; $72a2: $c3 $9c $ef


    and h                                         ; $72a5: $a4
    ld b, l                                       ; $72a6: $45
    and l                                         ; $72a7: $a5
    cp c                                          ; $72a8: $b9
    sub [hl]                                      ; $72a9: $96
    di                                            ; $72aa: $f3
    db $dd                                        ; $72ab: $dd
    ld e, e                                       ; $72ac: $5b
    and l                                         ; $72ad: $a5
    or e                                          ; $72ae: $b3
    ld b, l                                       ; $72af: $45
    push de                                       ; $72b0: $d5
    ld h, [hl]                                    ; $72b1: $66
    and h                                         ; $72b2: $a4
    ldh [$da], a                                  ; $72b3: $e0 $da
    ld de, $03e2                                  ; $72b5: $11 $e2 $03
    rst $10                                       ; $72b8: $d7
    dec sp                                        ; $72b9: $3b
    and c                                         ; $72ba: $a1
    ret                                           ; $72bb: $c9


Call_04b_72bc:
    jp $ef9c                                      ; $72bc: $c3 $9c $ef


    sbc [hl]                                      ; $72bf: $9e
    and e                                         ; $72c0: $a3
    rst $08                                       ; $72c1: $cf
    db $dd                                        ; $72c2: $dd
    ld a, e                                       ; $72c3: $7b
    ld h, [hl]                                    ; $72c4: $66
    ld a, [hl-]                                   ; $72c5: $3a
    ld a, $00                                     ; $72c6: $3e $00
    rst $10                                       ; $72c8: $d7

Call_04b_72c9:
    dec sp                                        ; $72c9: $3b
    and c                                         ; $72ca: $a1
    ret                                           ; $72cb: $c9


    jp $ef9c                                      ; $72cc: $c3 $9c $ef


    ld b, b                                       ; $72cf: $40
    jp $d462                                      ; $72d0: $c3 $62 $d4


    ld e, l                                       ; $72d3: $5d
    and l                                         ; $72d4: $a5
    ld a, [hl-]                                   ; $72d5: $3a
    rst $20                                       ; $72d6: $e7
    ld l, d                                       ; $72d7: $6a
    ld l, c                                       ; $72d8: $69
    ld d, c                                       ; $72d9: $51
    add hl, hl                                    ; $72da: $29
    ld a, $00                                     ; $72db: $3e $00
    rst $10                                       ; $72dd: $d7
    dec sp                                        ; $72de: $3b
    and c                                         ; $72df: $a1
    ret                                           ; $72e0: $c9


    jp Jump_04b_585c                              ; $72e1: $c3 $5c $58


    sbc [hl]                                      ; $72e4: $9e
    or h                                          ; $72e5: $b4
    db $e4                                        ; $72e6: $e4
    rst $38                                       ; $72e7: $ff
    ld l, c                                       ; $72e8: $69
    xor a                                         ; $72e9: $af
    jp $c243                                      ; $72ea: $c3 $43 $c2


    ld b, b                                       ; $72ed: $40
    inc h                                         ; $72ee: $24
    inc [hl]                                      ; $72ef: $34
    cp a                                          ; $72f0: $bf
    ld b, a                                       ; $72f1: $47
    ldh [$c3], a                                  ; $72f2: $e0 $c3
    ld a, [$7c66]                                 ; $72f4: $fa $66 $7c
    nop                                           ; $72f7: $00
    rst $10                                       ; $72f8: $d7
    dec sp                                        ; $72f9: $3b
    and c                                         ; $72fa: $a1
    ret                                           ; $72fb: $c9


    jp Jump_04b_585c                              ; $72fc: $c3 $5c $58


    ld e, [hl]                                    ; $72ff: $5e
    ldh a, [rNR13]                                ; $7300: $f0 $13
    inc [hl]                                      ; $7302: $34
    dec d                                         ; $7303: $15
    ld a, a                                       ; $7304: $7f
    call nc, $f8e5                                ; $7305: $d4 $e5 $f8

Call_04b_7308:
    nop                                           ; $7308: $00
    rst $10                                       ; $7309: $d7
    dec sp                                        ; $730a: $3b
    and c                                         ; $730b: $a1
    ret                                           ; $730c: $c9


    jp Jump_04b_585c                              ; $730d: $c3 $5c $58


    sbc $55                                       ; $7310: $de $55
    xor d                                         ; $7312: $aa
    ld [hl], e                                    ; $7313: $73
    xor [hl]                                      ; $7314: $ae
    adc [hl]                                      ; $7315: $8e
    sbc h                                         ; $7316: $9c
    inc sp                                        ; $7317: $33
    ld d, [hl]                                    ; $7318: $56
    ld [$cd2f], a                                 ; $7319: $ea $2f $cd
    ld [hl], h                                    ; $731c: $74
    ld a, h                                       ; $731d: $7c
    nop                                           ; $731e: $00
    rst $10                                       ; $731f: $d7
    dec sp                                        ; $7320: $3b
    and c                                         ; $7321: $a1
    ret                                           ; $7322: $c9


    jp Jump_04b_585c                              ; $7323: $c3 $5c $58


    sbc $55                                       ; $7326: $de $55
    xor d                                         ; $7328: $aa
    ld [hl], e                                    ; $7329: $73
    xor [hl]                                      ; $732a: $ae
    sub [hl]                                      ; $732b: $96
    ld c, [hl]                                    ; $732c: $4e
    ld a, [hl+]                                   ; $732d: $2a
    sub $5f                                       ; $732e: $d6 $5f
    sbc d                                         ; $7330: $9a
    jp hl                                         ; $7331: $e9


    ld hl, sp+$00                                 ; $7332: $f8 $00
    rst $10                                       ; $7334: $d7
    dec sp                                        ; $7335: $3b
    and c                                         ; $7336: $a1
    ret                                           ; $7337: $c9


    jp $ef9c                                      ; $7338: $c3 $9c $ef


    and h                                         ; $733b: $a4
    halt                                          ; $733c: $76
    ld d, b                                       ; $733d: $50
    dec l                                         ; $733e: $2d
    ld a, [hl+]                                   ; $733f: $2a
    rst $08                                       ; $7340: $cf
    ld [hl], a                                    ; $7341: $77
    jp nc, Jump_000_388c                          ; $7342: $d2 $8c $38

    ld a, $00                                     ; $7345: $3e $00
    rst $10                                       ; $7347: $d7
    dec sp                                        ; $7348: $3b
    and c                                         ; $7349: $a1
    ret                                           ; $734a: $c9


    jp $9b5c                                      ; $734b: $c3 $5c $9b


    inc bc                                        ; $734e: $03
    dec c                                         ; $734f: $0d
    adc e                                         ; $7350: $8b
    ld d, c                                       ; $7351: $51
    rlca                                          ; $7352: $07
    inc l                                         ; $7353: $2c
    ld b, c                                       ; $7354: $41
    ld a, h                                       ; $7355: $7c
    nop                                           ; $7356: $00
    rst $10                                       ; $7357: $d7
    dec sp                                        ; $7358: $3b
    and c                                         ; $7359: $a1
    ret                                           ; $735a: $c9


    jp $441c                                      ; $735b: $c3 $1c $44


    ld e, a                                       ; $735e: $5f
    ld d, h                                       ; $735f: $54
    and l                                         ; $7360: $a5
    ld a, $ed                                     ; $7361: $3e $ed
    ld a, c                                       ; $7363: $79

Call_04b_7364:
    ld d, h                                       ; $7364: $54
    xor h                                         ; $7365: $ac
    ld h, $2d                                     ; $7366: $26 $2d
    ld sp, hl                                     ; $7368: $f9
    ld a, a                                       ; $7369: $7f
    adc d                                         ; $736a: $8a
    rrca                                          ; $736b: $0f
    rst $10                                       ; $736c: $d7
    dec sp                                        ; $736d: $3b
    and c                                         ; $736e: $a1
    ret                                           ; $736f: $c9


    jp $9b5c                                      ; $7370: $c3 $5c $9b


jr_04b_7373:
    db $d3                                        ; $7373: $d3
    dec l                                         ; $7374: $2d
    sbc b                                         ; $7375: $98
    cp $d2                                        ; $7376: $fe $d2
    ld c, h                                       ; $7378: $4c
    rst $00                                       ; $7379: $c7
    rlca                                          ; $737a: $07
    rst $10                                       ; $737b: $d7
    dec sp                                        ; $737c: $3b
    and c                                         ; $737d: $a1
    ret                                           ; $737e: $c9


    jp $ef9c                                      ; $737f: $c3 $9c $ef


    and h                                         ; $7382: $a4
    ld b, l                                       ; $7383: $45
    and l                                         ; $7384: $a5
    ld b, l                                       ; $7385: $45
    push hl                                       ; $7386: $e5
    ld sp, hl                                     ; $7387: $f9
    xor $b9                                       ; $7388: $ee $b9
    cp d                                          ; $738a: $ba
    cp d                                          ; $738b: $ba
    ld c, $a8                                     ; $738c: $0e $a8
    or $dd                                        ; $738e: $f6 $dd
    db $eb                                        ; $7390: $eb
    cp d                                          ; $7391: $ba
    ld c, $57                                     ; $7392: $0e $57
    xor e                                         ; $7394: $ab
    ld hl, sp+$00                                 ; $7395: $f8 $00
    rst $10                                       ; $7397: $d7
    dec sp                                        ; $7398: $3b
    and c                                         ; $7399: $a1
    ret                                           ; $739a: $c9


    jp $ef9c                                      ; $739b: $c3 $9c $ef


    sbc [hl]                                      ; $739e: $9e
    and e                                         ; $739f: $a3
    rst $08                                       ; $73a0: $cf
    db $dd                                        ; $73a1: $dd
    ld a, e                                       ; $73a2: $7b
    ld h, [hl]                                    ; $73a3: $66
    ld a, [hl-]                                   ; $73a4: $3a
    ld a, $00                                     ; $73a5: $3e $00
    ld c, a                                       ; $73a7: $4f
    sub a                                         ; $73a8: $97
    ret c                                         ; $73a9: $d8

    jr nc, jr_04b_7373                            ; $73aa: $30 $c7

    add l                                         ; $73ac: $85
    add a                                         ; $73ad: $87
    ld sp, hl                                     ; $73ae: $f9
    push af                                       ; $73af: $f5
    rlca                                          ; $73b0: $07
    ld h, d                                       ; $73b1: $62
    ld h, $76                                     ; $73b2: $26 $76
    rst $30                                       ; $73b4: $f7
    db $dd                                        ; $73b5: $dd
    ld [hl], e                                    ; $73b6: $73
    rst $08                                       ; $73b7: $cf
    cp l                                          ; $73b8: $bd
    ld a, e                                       ; $73b9: $7b
    ld [hl-], a                                   ; $73ba: $32
    or d                                          ; $73bb: $b2
    ld [hl], e                                    ; $73bc: $73
    rst $30                                       ; $73bd: $f7
    ld c, h                                       ; $73be: $4c
    ld [hl], d                                    ; $73bf: $72
    adc c                                         ; $73c0: $89
    dec c                                         ; $73c1: $0d
    inc sp                                        ; $73c2: $33
    ld l, d                                       ; $73c3: $6a
    ld a, [c]                                     ; $73c4: $f2
    push bc                                       ; $73c5: $c5
    xor [hl]                                      ; $73c6: $ae
    dec h                                         ; $73c7: $25
    inc a                                         ; $73c8: $3c
    ld e, $8c                                     ; $73c9: $1e $8c
    dec c                                         ; $73cb: $0d
    add $93                                       ; $73cc: $c6 $93
    sub c                                         ; $73ce: $91
    sbc l                                         ; $73cf: $9d
    cp e                                          ; $73d0: $bb
    ld h, a                                       ; $73d1: $67
    sub d                                         ; $73d2: $92
    ld c, e                                       ; $73d3: $4b
    ld l, h                                       ; $73d4: $6c
    sbc b                                         ; $73d5: $98
    ld d, c                                       ; $73d6: $51
    sub e                                         ; $73d7: $93
    rst $10                                       ; $73d8: $d7
    ld e, h                                       ; $73d9: $5c
    ld e, b                                       ; $73da: $58
    sbc [hl]                                      ; $73db: $9e

Jump_04b_73dc:
    cp $e0                                        ; $73dc: $fe $e0
    rst $08                                       ; $73de: $cf
    or l                                          ; $73df: $b5
    call c, $9193                                 ; $73e0: $dc $93 $91
    sbc l                                         ; $73e3: $9d
    cp e                                          ; $73e4: $bb
    ld h, a                                       ; $73e5: $67
    sub d                                         ; $73e6: $92
    ld c, e                                       ; $73e7: $4b
    ld l, h                                       ; $73e8: $6c
    sbc b                                         ; $73e9: $98
    ld d, c                                       ; $73ea: $51
    sub e                                         ; $73eb: $93
    ld [hl], a                                    ; $73ec: $77
    rst $30                                       ; $73ed: $f7
    sbc [hl]                                      ; $73ee: $9e
    inc hl                                        ; $73ef: $23
    add h                                         ; $73f0: $84
    ld hl, sp+$27                                 ; $73f1: $f8 $27
    ld [hl], d                                    ; $73f3: $72
    ld [hl], a                                    ; $73f4: $77
    add $20                                       ; $73f5: $c6 $20
    rlca                                          ; $73f7: $07
    ld c, d                                       ; $73f8: $4a
    dec b                                         ; $73f9: $05
    xor b                                         ; $73fa: $a8
    sbc b                                         ; $73fb: $98
    ld e, d                                       ; $73fc: $5a
    ld a, [c]                                     ; $73fd: $f2
    ld e, l                                       ; $73fe: $5d
    ld l, b                                       ; $73ff: $68
    jp hl                                         ; $7400: $e9


    xor e                                         ; $7401: $ab
    ld d, l                                       ; $7402: $55
    ld d, h                                       ; $7403: $54
    sub d                                         ; $7404: $92
    call $96b9                                    ; $7405: $cd $b9 $96
    ld a, e                                       ; $7408: $7b
    ld [hl-], a                                   ; $7409: $32
    or d                                          ; $740a: $b2
    ld [hl], e                                    ; $740b: $73
    rst $30                                       ; $740c: $f7
    ld c, h                                       ; $740d: $4c
    ld [hl], d                                    ; $740e: $72
    adc c                                         ; $740f: $89
    dec c                                         ; $7410: $0d
    inc sp                                        ; $7411: $33
    ld l, d                                       ; $7412: $6a
    ld a, [c]                                     ; $7413: $f2
    push bc                                       ; $7414: $c5
    xor [hl]                                      ; $7415: $ae
    dec h                                         ; $7416: $25
    inc a                                         ; $7417: $3c
    ld e, $e6                                     ; $7418: $1e $e6
    ld a, h                                       ; $741a: $7c
    rst $30                                       ; $741b: $f7
    ld d, [hl]                                    ; $741c: $56
    xor c                                         ; $741d: $a9
    adc c                                         ; $741e: $89
    ret nz                                        ; $741f: $c0

    ld [hl], a                                    ; $7420: $77
    xor a                                         ; $7421: $af
    or e                                          ; $7422: $b3
    ld [hl], c                                    ; $7423: $71
    ld [hl], e                                    ; $7424: $73
    call $bfbb                                    ; $7425: $cd $bb $bf
    ld l, b                                       ; $7428: $68
    sub [hl]                                      ; $7429: $96
    cp [hl]                                       ; $742a: $be
    call nc, Call_04b_4b69                        ; $742b: $d4 $69 $4b
    rst $18                                       ; $742e: $df
    adc h                                         ; $742f: $8c
    rlca                                          ; $7430: $07
    ld h, e                                       ; $7431: $63
    add e                                         ; $7432: $83
    pop af                                        ; $7433: $f1
    and d                                         ; $7434: $a2
    and e                                         ; $7435: $a3
    call nz, $b3bc                                ; $7436: $c4 $bc $b3
    daa                                           ; $7439: $27
    dec e                                         ; $743a: $1d
    adc a                                         ; $743b: $8f
    ld a, a                                       ; $743c: $7f
    ld l, a                                       ; $743d: $6f
    db $fc                                        ; $743e: $fc
    xor a                                         ; $743f: $af
    push de                                       ; $7440: $d5
    ld a, [hl]                                    ; $7441: $7e
    ld a, [$34d2]                                 ; $7442: $fa $d2 $34
    jp nz, $8c9b                                  ; $7445: $c2 $9b $8c

    sbc l                                         ; $7448: $9d
    ld l, e                                       ; $7449: $6b
    cp c                                          ; $744a: $b9
    ld h, a                                       ; $744b: $67
    dec c                                         ; $744c: $0d
    adc $9f                                       ; $744d: $ce $9f
    or $e0                                        ; $744f: $f6 $e0
    ld h, b                                       ; $7451: $60
    ld l, h                                       ; $7452: $6c
    jr nc, jr_04b_74b3                            ; $7453: $30 $5e

    cp b                                          ; $7455: $b8
    or $f4                                        ; $7456: $f6 $f4
    inc sp                                        ; $7458: $33
    cpl                                           ; $7459: $2f
    cp l                                          ; $745a: $bd
    cp $cc                                        ; $745b: $fe $cc
    push de                                       ; $745d: $d5
    dec a                                         ; $745e: $3d
    push af                                       ; $745f: $f5
    xor $5e                                       ; $7460: $ee $5e
    cp d                                          ; $7462: $ba
    or $d2                                        ; $7463: $f6 $d2
    dec de                                        ; $7465: $1b
    rst $08                                       ; $7466: $cf
    cp h                                          ; $7467: $bc
    ld [hl], h                                    ; $7468: $74
    push af                                       ; $7469: $f5
    push hl                                       ; $746a: $e5
    inc bc                                        ; $746b: $03
    ld h, d                                       ; $746c: $62
    ld [hl], a                                    ; $746d: $77
    rst $18                                       ; $746e: $df
    dec a                                         ; $746f: $3d
    rst $30                                       ; $7470: $f7
    call c, Call_04b_67bb                         ; $7471: $dc $bb $67
    ld [hl], h                                    ; $7474: $74
    pop hl                                        ; $7475: $e1
    ld c, h                                       ; $7476: $4c
    ccf                                           ; $7477: $3f
    ld de, $27be                                  ; $7478: $11 $be $27
    adc c                                         ; $747b: $89
    push de                                       ; $747c: $d5
    xor [hl]                                      ; $747d: $ae
    dec h                                         ; $747e: $25
    inc a                                         ; $747f: $3c
    ld e, $8c                                     ; $7480: $1e $8c
    daa                                           ; $7482: $27
    or l                                          ; $7483: $b5
    xor $a8                                       ; $7484: $ee $a8
    ldh a, [$90]                                  ; $7486: $f0 $90
    sbc e                                         ; $7488: $9b
    ld [hl], e                                    ; $7489: $73
    rst $38                                       ; $748a: $ff
    daa                                           ; $748b: $27
    and c                                         ; $748c: $a1
    pop hl                                        ; $748d: $e1
    ld [hl], a                                    ; $748e: $77
    ld a, h                                       ; $748f: $7c
    di                                            ; $7490: $f3
    nop                                           ; $7491: $00
    ld d, a                                       ; $7492: $57
    ret                                           ; $7493: $c9


    sub c                                         ; $7494: $91
    ei                                            ; $7495: $fb
    ret nc                                        ; $7496: $d0

    ld e, [hl]                                    ; $7497: $5e
    ld h, a                                       ; $7498: $67
    inc hl                                        ; $7499: $23
    ld a, $00                                     ; $749a: $3e $00
    cpl                                           ; $749c: $2f
    and c                                         ; $749d: $a1
    ld e, e                                       ; $749e: $5b
    ld [hl], e                                    ; $749f: $73
    ld e, $db                                     ; $74a0: $1e $db
    inc de                                        ; $74a2: $13
    rst $30                                       ; $74a3: $f7
    xor $00                                       ; $74a4: $ee $00
    ld l, a                                       ; $74a6: $6f
    ld h, b                                       ; $74a7: $60
    ldh [$1f], a                                  ; $74a8: $e0 $1f
    db $db                                        ; $74aa: $db
    inc de                                        ; $74ab: $13
    rst $30                                       ; $74ac: $f7
    ld a, $f6                                     ; $74ad: $3e $f6
    call nz, $8f7d                                ; $74af: $c4 $7d $8f
    dec a                                         ; $74b2: $3d

jr_04b_74b3:
    ld [hl], c                                    ; $74b3: $71
    rst $38                                       ; $74b4: $ff
    ld c, $2f                                     ; $74b5: $0e $2f
    or h                                          ; $74b7: $b4
    ld h, b                                       ; $74b8: $60
    jr nc, jr_04b_74f1                            ; $74b9: $30 $36

    jr jr_04b_74d8                                ; $74bb: $18 $1b

    adc h                                         ; $74bd: $8c
    db $ed                                        ; $74be: $ed
    nop                                           ; $74bf: $00
    ld c, a                                       ; $74c0: $4f
    jp hl                                         ; $74c1: $e9


    cpl                                           ; $74c2: $2f
    add a                                         ; $74c3: $87
    add hl, sp                                    ; $74c4: $39
    ld d, b                                       ; $74c5: $50
    add c                                         ; $74c6: $81
    inc e                                         ; $74c7: $1c
    sub h                                         ; $74c8: $94
    pop af                                        ; $74c9: $f1
    ld h, b                                       ; $74ca: $60
    cp h                                          ; $74cb: $bc
    db $ec                                        ; $74cc: $ec
    sub [hl]                                      ; $74cd: $96
    inc d                                         ; $74ce: $14
    inc a                                         ; $74cf: $3c
    inc h                                         ; $74d0: $24
    inc c                                         ; $74d1: $0c
    call c, $95e6                                 ; $74d2: $dc $e6 $95
    inc bc                                        ; $74d5: $03
    rst $28                                       ; $74d6: $ef
    inc a                                         ; $74d7: $3c

jr_04b_74d8:
    or $c4                                        ; $74d8: $f6 $c4
    cp l                                          ; $74da: $bd
    ld a, e                                       ; $74db: $7b
    rst $30                                       ; $74dc: $f7
    or c                                          ; $74dd: $b1
    daa                                           ; $74de: $27
    xor $db                                       ; $74df: $ee $db
    ld bc, $7b57                                  ; $74e1: $01 $57 $7b
    xor $24                                       ; $74e4: $ee $24
    ld a, [hl+]                                   ; $74e6: $2a
    sbc $19                                       ; $74e7: $de $19
    ld a, c                                       ; $74e9: $79
    rra                                           ; $74ea: $1f
    sbc d                                         ; $74eb: $9a
    jp nc, $c59f                                  ; $74ec: $d2 $9f $c5

    rra                                           ; $74ef: $1f
    rst $08                                       ; $74f0: $cf

jr_04b_74f1:
    ld d, l                                       ; $74f1: $55
    jr nz, jr_04b_74fb                            ; $74f2: $20 $07

    push hl                                       ; $74f4: $e5
    ld h, e                                       ; $74f5: $63
    rlca                                          ; $74f6: $07
    rst $30                                       ; $74f7: $f7
    sbc $b1                                       ; $74f8: $de $b1
    daa                                           ; $74fa: $27

jr_04b_74fb:
    xor $dd                                       ; $74fb: $ee $dd
    ld bc, $ddf7                                  ; $74fd: $01 $f7 $dd
    or c                                          ; $7500: $b1
    daa                                           ; $7501: $27
    xor $dd                                       ; $7502: $ee $dd
    ld bc, $dff7                                  ; $7504: $01 $f7 $df
    or c                                          ; $7507: $b1
    daa                                           ; $7508: $27
    xor $dd                                       ; $7509: $ee $dd
    ld bc, $dc0f                                  ; $750b: $01 $0f $dc
    or c                                          ; $750e: $b1
    daa                                           ; $750f: $27
    xor $dd                                       ; $7510: $ee $dd
    ld bc, $472f                                  ; $7512: $01 $2f $47
    di                                            ; $7515: $f3
    ret z                                         ; $7516: $c8

    db $e3                                        ; $7517: $e3
    ld l, $32                                     ; $7518: $2e $32
    reti                                          ; $751a: $d9


    ld a, h                                       ; $751b: $7c
    db $ec                                        ; $751c: $ec
    nop                                           ; $751d: $00
    ld d, a                                       ; $751e: $57
    sub c                                         ; $751f: $91
    ld b, a                                       ; $7520: $47
    add l                                         ; $7521: $85
    rla                                           ; $7522: $17
    ld [c], a                                     ; $7523: $e2
    ret                                           ; $7524: $c9


    and $82                                       ; $7525: $e6 $82
    ld l, $3f                                     ; $7527: $2e $3f
    ld e, b                                       ; $7529: $58
    ld h, d                                       ; $752a: $62
    ld e, c                                       ; $752b: $59
    db $fc                                        ; $752c: $fc
    ld bc, $432f                                  ; $752d: $01 $2f $43
    xor $77                                       ; $7530: $ee $77
    ld c, [hl]                                    ; $7532: $4e
    add d                                         ; $7533: $82
    ld d, c                                       ; $7534: $51
    daa                                           ; $7535: $27
    set 2, l                                      ; $7536: $cb $d5
    rlca                                          ; $7538: $07
    xor a                                         ; $7539: $af
    db $fd                                        ; $753a: $fd
    rst $28                                       ; $753b: $ef
    push hl                                       ; $753c: $e5
    add a                                         ; $753d: $87
    ld c, d                                       ; $753e: $4a
    call Call_04b_72c9                            ; $753f: $cd $c9 $72
    push af                                       ; $7542: $f5
    ld bc, $7fcf                                  ; $7543: $01 $cf $7f
    xor b                                         ; $7546: $a8
    call nc, Call_000_2c9c                        ; $7547: $d4 $9c $2c
    ld d, a                                       ; $754a: $57
    rra                                           ; $754b: $1f
    rst $28                                       ; $754c: $ef
    and c                                         ; $754d: $a1
    halt                                          ; $754e: $76
    ld c, e                                       ; $754f: $4b
    call Call_04b_72c9                            ; $7550: $cd $c9 $72
    push af                                       ; $7553: $f5
    ld bc, $55ef                                  ; $7554: $01 $ef $55
    adc e                                         ; $7557: $8b
    add sp, -$69                                  ; $7558: $e8 $97
    sbc d                                         ; $755a: $9a
    cp [hl]                                       ; $755b: $be
    sub e                                         ; $755c: $93
    push hl                                       ; $755d: $e5
    ld [$4f03], a                                 ; $755e: $ea $03 $4f
    adc d                                         ; $7561: $8a
    ld b, h                                       ; $7562: $44
    rst $18                                       ; $7563: $df
    and e                                         ; $7564: $a3
    ld a, $7d                                     ; $7565: $3e $7d
    ld [c], a                                     ; $7567: $e2
    ld [$2f03], a                                 ; $7568: $ea $03 $2f
    cp $4c                                        ; $756b: $fe $4c
    sub h                                         ; $756d: $94
    ld c, d                                       ; $756e: $4a
    ld a, [de]                                    ; $756f: $1a
    ld [hl], h                                    ; $7570: $74
    nop                                           ; $7571: $00
    rst $08                                       ; $7572: $cf
    push de                                       ; $7573: $d5
    db $d3                                        ; $7574: $d3
    rst $38                                       ; $7575: $ff
    ret nz                                        ; $7576: $c0

    ld [hl], a                                    ; $7577: $77
    ld [bc], a                                    ; $7578: $02
    ld e, c                                       ; $7579: $59
    ld a, [$572c]                                 ; $757a: $fa $2c $57
    xor e                                         ; $757d: $ab
    inc bc                                        ; $757e: $03
    ld l, a                                       ; $757f: $6f
    add hl, sp                                    ; $7580: $39
    ld c, $9d                                     ; $7581: $0e $9d
    ld c, d                                       ; $7583: $4a
    ld [de], a                                    ; $7584: $12
    jp nc, Jump_04b_7c96                          ; $7585: $d2 $96 $7c

    nop                                           ; $7588: $00
    ld c, a                                       ; $7589: $4f
    ld l, d                                       ; $758a: $6a
    push de                                       ; $758b: $d5
    add sp, $00                                   ; $758c: $e8 $00
    ld c, a                                       ; $758e: $4f
    ld l, d                                       ; $758f: $6a
    ld [hl], d                                    ; $7590: $72
    jr nc, jr_04b_75e2                            ; $7591: $30 $4f

    sbc a                                         ; $7593: $9f
    cp b                                          ; $7594: $b8
    ld a, [$4f00]                                 ; $7595: $fa $00 $4f
    db $fd                                        ; $7598: $fd
    rra                                           ; $7599: $1f
    add hl, hl                                    ; $759a: $29
    ld l, l                                       ; $759b: $6d
    add hl, bc                                    ; $759c: $09
    ld b, d                                       ; $759d: $42
    rlca                                          ; $759e: $07
    db $fd                                        ; $759f: $fd
    ld bc, $73af                                  ; $75a0: $01 $af $73
    ld h, l                                       ; $75a3: $65
    or l                                          ; $75a4: $b5
    ld l, e                                       ; $75a5: $6b
    inc h                                         ; $75a6: $24
    sbc e                                         ; $75a7: $9b
    adc d                                         ; $75a8: $8a
    dec hl                                        ; $75a9: $2b
    xor e                                         ; $75aa: $ab
    push de                                       ; $75ab: $d5
    ld bc, $c32f                                  ; $75ac: $01 $2f $c3
    ld sp, hl                                     ; $75af: $f9
    ld b, e                                       ; $75b0: $43
    adc [hl]                                      ; $75b1: $8e
    add d                                         ; $75b2: $82
    ld a, [hl]                                    ; $75b3: $7e
    ld a, l                                       ; $75b4: $7d
    jp hl                                         ; $75b5: $e9


    nop                                           ; $75b6: $00
    rst $08                                       ; $75b7: $cf
    rst $10                                       ; $75b8: $d7
    dec l                                         ; $75b9: $2d
    ld a, l                                       ; $75ba: $7d
    ret nc                                        ; $75bb: $d0

    inc a                                         ; $75bc: $3c
    nop                                           ; $75bd: $00
    sub a                                         ; $75be: $97
    rst $38                                       ; $75bf: $ff
    ld d, e                                       ; $75c0: $53
    adc $b5                                       ; $75c1: $ce $b5
    inc e                                         ; $75c3: $1c
    sbc a                                         ; $75c4: $9f
    jp c, Jump_04b_7ff0                           ; $75c5: $da $f0 $7f

    jp z, $af03                                   ; $75c8: $ca $03 $af

    ld l, e                                       ; $75cb: $6b
    ld c, e                                       ; $75cc: $4b
    ret nc                                        ; $75cd: $d0

    ld h, h                                       ; $75ce: $64
    ld c, e                                       ; $75cf: $4b
    rst $18                                       ; $75d0: $df
    inc a                                         ; $75d1: $3c
    nop                                           ; $75d2: $00
    ld c, a                                       ; $75d3: $4f
    push af                                       ; $75d4: $f5
    db $fc                                        ; $75d5: $fc
    adc l                                         ; $75d6: $8d
    xor $52                                       ; $75d7: $ee $52
    call c, Call_000_01e6                         ; $75d9: $dc $e6 $01
    rst $28                                       ; $75dc: $ef
    and c                                         ; $75dd: $a1
    halt                                          ; $75de: $76
    db $e3                                        ; $75df: $e3
    add l                                         ; $75e0: $85
    rst $38                                       ; $75e1: $ff

jr_04b_75e2:
    ld d, e                                       ; $75e2: $53
    adc $b5                                       ; $75e3: $ce $b5
    ld e, h                                       ; $75e5: $5c
    sbc e                                         ; $75e6: $9b
    pop hl                                        ; $75e7: $e1
    rst $38                                       ; $75e8: $ff
    sub h                                         ; $75e9: $94
    rlca                                          ; $75ea: $07
    ld l, a                                       ; $75eb: $6f
    ld a, a                                       ; $75ec: $7f
    dec l                                         ; $75ed: $2d
    ld d, d                                       ; $75ee: $52
    and a                                         ; $75ef: $a7
    ld c, a                                       ; $75f0: $4f
    ld e, h                                       ; $75f1: $5c
    ld a, l                                       ; $75f2: $7d
    nop                                           ; $75f3: $00
    ld c, a                                       ; $75f4: $4f
    jp z, Jump_04b_589f                           ; $75f5: $ca $9f $58

    ld a, $00                                     ; $75f8: $3e $00
    ld l, a                                       ; $75fa: $6f
    inc d                                         ; $75fb: $14
    inc [hl]                                      ; $75fc: $34
    ld bc, $0e8a                                  ; $75fd: $01 $8a $0e
    ld l, a                                       ; $7600: $6f
    inc hl                                        ; $7601: $23
    nop                                           ; $7602: $00
    call $b553                                    ; $7603: $cd $53 $b5
    rst $30                                       ; $7606: $f7
    ld h, h                                       ; $7607: $64
    add hl, hl                                    ; $7608: $29
    rrca                                          ; $7609: $0f
    sub a                                         ; $760a: $97
    rst $38                                       ; $760b: $ff
    add e                                         ; $760c: $83
    sub e                                         ; $760d: $93
    add hl, de                                    ; $760e: $19
    ld a, c                                       ; $760f: $79
    inc b                                         ; $7610: $04
    db $dd                                        ; $7611: $dd
    db $db                                        ; $7612: $db
    ld [$f340], sp                                ; $7613: $08 $40 $f3
    ld d, h                                       ; $7616: $54
    db $ed                                        ; $7617: $ed
    dec a                                         ; $7618: $3d
    ld e, c                                       ; $7619: $59
    jp z, Jump_04b_6f03                           ; $761a: $ca $03 $6f

    ld hl, $845b                                  ; $761d: $21 $5b $84
    or b                                          ; $7620: $b0
    dec a                                         ; $7621: $3d
    ld e, c                                       ; $7622: $59
    jp z, $2f03                                   ; $7623: $ca $03 $2f

    and a                                         ; $7626: $a7
    inc h                                         ; $7627: $24
    rlca                                          ; $7628: $07
    cp l                                          ; $7629: $bd
    ld e, e                                       ; $762a: $5b
    ld a, [c]                                     ; $762b: $f2
    push de                                       ; $762c: $d5
    and b                                         ; $762d: $a0
    ld [hl], h                                    ; $762e: $74
    nop                                           ; $762f: $00
    xor a                                         ; $7630: $af
    inc d                                         ; $7631: $14
    ld a, [hl+]                                   ; $7632: $2a
    ld a, c                                       ; $7633: $79
    or d                                          ; $7634: $b2
    sub h                                         ; $7635: $94
    rlca                                          ; $7636: $07
    sub a                                         ; $7637: $97
    rst $38                                       ; $7638: $ff
    add e                                         ; $7639: $83
    ld d, e                                       ; $763a: $53
    inc a                                         ; $763b: $3c

Jump_04b_763c:
    xor b                                         ; $763c: $a8
    ld d, b                                       ; $763d: $50
    ret                                           ; $763e: $c9


    sub e                                         ; $763f: $93
    and l                                         ; $7640: $a5
    inc a                                         ; $7641: $3c
    nop                                           ; $7642: $00
    ld l, a                                       ; $7643: $6f
    ld [hl+], a                                   ; $7644: $22
    cp e                                          ; $7645: $bb
    cp a                                          ; $7646: $bf
    call nc, Call_000_003c                        ; $7647: $d4 $3c $00
    rst $08                                       ; $764a: $cf
    sbc e                                         ; $764b: $9b
    ld de, $9d2f                                  ; $764c: $11 $2f $9d
    jr z, jr_04b_767b                             ; $764f: $28 $2a

    dec a                                         ; $7651: $3d
    or [hl]                                       ; $7652: $b6
    daa                                           ; $7653: $27
    xor $dd                                       ; $7654: $ee $dd
    ld bc, $63cf                                  ; $7656: $01 $cf $63
    push de                                       ; $7659: $d5
    and h                                         ; $765a: $a4
    add hl, de                                    ; $765b: $19
    pop af                                        ; $765c: $f1
    ld bc, $39af                                  ; $765d: $01 $af $39
    xor b                                         ; $7660: $a8
    sbc e                                         ; $7661: $9b
    rlca                                          ; $7662: $07
    ld c, a                                       ; $7663: $4f
    adc d                                         ; $7664: $8a
    sub h                                         ; $7665: $94
    halt                                          ; $7666: $76
    sub b                                         ; $7667: $90
    sbc e                                         ; $7668: $9b
    rlca                                          ; $7669: $07
    rst $08                                       ; $766a: $cf
    ld l, e                                       ; $766b: $6b
    inc sp                                        ; $766c: $33
    jp c, $c68f                                   ; $766d: $da $8f $c6

    dec e                                         ; $7670: $1d
    add hl, sp                                    ; $7671: $39
    xor b                                         ; $7672: $a8
    sbc e                                         ; $7673: $9b
    ld [c], a                                     ; $7674: $e2
    rrca                                          ; $7675: $0f
    ld l, a                                       ; $7676: $6f
    dec de                                        ; $7677: $1b
    inc a                                         ; $7678: $3c
    db $e4                                        ; $7679: $e4
    ld a, l                                       ; $767a: $7d

jr_04b_767b:
    ld l, b                                       ; $767b: $68
    sub [hl]                                      ; $767c: $96
    cp [hl]                                       ; $767d: $be
    call nc, $a829                                ; $767e: $d4 $29 $a8
    cp d                                          ; $7681: $ba
    inc d                                         ; $7682: $14
    rst $28                                       ; $7683: $ef
    ld a, [hl+]                                   ; $7684: $2a
    add hl, sp                                    ; $7685: $39
    ld [hl], d                                    ; $7686: $72
    rra                                           ; $7687: $1f
    sbc d                                         ; $7688: $9a
    rst $28                                       ; $7689: $ef
    sbc [hl]                                      ; $768a: $9e
    cp d                                          ; $768b: $ba

Jump_04b_768c:
    ld c, e                                       ; $768c: $4b
    and $87                                       ; $768d: $e6 $87
    or $a3                                        ; $768f: $f6 $a3
    ld sp, hl                                     ; $7691: $f9
    adc [hl]                                      ; $7692: $8e
    inc e                                         ; $7693: $1c
    call nc, $cee3                                ; $7694: $d4 $e3 $ce
    ld [hl-], a                                   ; $7697: $32
    dec e                                         ; $7698: $1d
    ld e, l                                       ; $7699: $5d
    ld l, d                                       ; $769a: $6a
    add $07                                       ; $769b: $c6 $07
    xor a                                         ; $769d: $af
    add hl, sp                                    ; $769e: $39
    xor b                                         ; $769f: $a8
    rlca                                          ; $76a0: $07
    ld l, d                                       ; $76a1: $6a
    sbc c                                         ; $76a2: $99
    adc [hl]                                      ; $76a3: $8e
    ld l, [hl]                                    ; $76a4: $6e
    ret                                           ; $76a5: $c9


    adc e                                         ; $76a6: $8b
    ccf                                           ; $76a7: $3f
    nop                                           ; $76a8: $00
    xor a                                         ; $76a9: $af
    add hl, sp                                    ; $76aa: $39
    xor b                                         ; $76ab: $a8
    rst $20                                       ; $76ac: $e7
    ld a, [hl]                                    ; $76ad: $7e
    call $a3ff                                    ; $76ae: $cd $ff $a3
    rla                                           ; $76b1: $17
    ld a, a                                       ; $76b2: $7f
    nop                                           ; $76b3: $00
    rst $10                                       ; $76b4: $d7
    dec sp                                        ; $76b5: $3b
    jp hl                                         ; $76b6: $e9


    inc h                                         ; $76b7: $24
    rrca                                          ; $76b8: $0f
    or h                                          ; $76b9: $b4
    add hl, sp                                    ; $76ba: $39
    ld l, c                                       ; $76bb: $69
    ld b, [hl]                                    ; $76bc: $46
    call c, $d45c                                 ; $76bd: $dc $5c $d4
    jp nc, $d2dc                                  ; $76c0: $d2 $dc $d2

    reti                                          ; $76c3: $d9


    and d                                         ; $76c4: $a2
    ld [$7ee6], a                                 ; $76c5: $ea $e6 $7e
    db $e4                                        ; $76c8: $e4
    adc l                                         ; $76c9: $8d
    rla                                           ; $76ca: $17
    ld [hl], h                                    ; $76cb: $74
    rst $08                                       ; $76cc: $cf
    ld a, [hl]                                    ; $76cd: $7e
    adc l                                         ; $76ce: $8d
    ld a, a                                       ; $76cf: $7f
    ld c, a                                       ; $76d0: $4f
    ld d, c                                       ; $76d1: $51
    ld e, l                                       ; $76d2: $5d
    ld d, h                                       ; $76d3: $54
    ld [hl], e                                    ; $76d4: $73
    cp a                                          ; $76d5: $bf
    ld e, $2a                                     ; $76d6: $1e $2a
    pop af                                        ; $76d8: $f1
    rlca                                          ; $76d9: $07
    rst $10                                       ; $76da: $d7
    cp e                                          ; $76db: $bb
    or b                                          ; $76dc: $b0
    ld [bc], a                                    ; $76dd: $02
    xor a                                         ; $76de: $af
    call $f1bd                                    ; $76df: $cd $bd $f1
    db $dd                                        ; $76e2: $dd
    and [hl]                                      ; $76e3: $a6
    add hl, de                                    ; $76e4: $19
    add hl, hl                                    ; $76e5: $29
    ld l, c                                       ; $76e6: $69
    ld b, [hl]                                    ; $76e7: $46
    inc a                                         ; $76e8: $3c
    ld d, b                                       ; $76e9: $50
    rst $30                                       ; $76ea: $f7
    and a                                         ; $76eb: $a7
    ld l, a                                       ; $76ec: $6f
    adc d                                         ; $76ed: $8a
    ccf                                           ; $76ee: $3f
    nop                                           ; $76ef: $00
    rst $10                                       ; $76f0: $d7
    dec sp                                        ; $76f1: $3b
    or a                                          ; $76f2: $b7
    ld [hl], h                                    ; $76f3: $74
    or [hl]                                       ; $76f4: $b6
    xor b                                         ; $76f5: $a8
    sbc d                                         ; $76f6: $9a
    rst $20                                       ; $76f7: $e7
    cp e                                          ; $76f8: $bb
    rst $20                                       ; $76f9: $e7
    ld [$a245], sp                                ; $76fa: $08 $45 $a2
    rst $18                                       ; $76fd: $df
    db $f4                                        ; $76fe: $f4
    sbc a                                         ; $76ff: $9f
    xor $92                                       ; $7700: $ee $92
    ld h, [hl]                                    ; $7702: $66
    call nz, $f14d                                ; $7703: $c4 $4d $f1
    rlca                                          ; $7706: $07
    rst $10                                       ; $7707: $d7
    dec sp                                        ; $7708: $3b
    or a                                          ; $7709: $b7
    ld [hl], h                                    ; $770a: $74
    or [hl]                                       ; $770b: $b6
    xor b                                         ; $770c: $a8
    sbc d                                         ; $770d: $9a
    rst $20                                       ; $770e: $e7
    cp e                                          ; $770f: $bb
    ld c, e                                       ; $7710: $4b
    ld b, a                                       ; $7711: $47
    inc h                                         ; $7712: $24
    xor d                                         ; $7713: $aa
    add [hl]                                      ; $7714: $86
    inc e                                         ; $7715: $1c
    pop de                                        ; $7716: $d1
    ld e, l                                       ; $7717: $5d
    jp nc, $b88c                                  ; $7718: $d2 $8c $b8

    add hl, hl                                    ; $771b: $29
    cp $00                                        ; $771c: $fe $00
    rst $10                                       ; $771e: $d7
    dec sp                                        ; $771f: $3b
    or a                                          ; $7720: $b7
    ld [hl], h                                    ; $7721: $74
    or [hl]                                       ; $7722: $b6
    xor b                                         ; $7723: $a8

Call_04b_7724:
    sbc d                                         ; $7724: $9a
    rst $20                                       ; $7725: $e7
    cp e                                          ; $7726: $bb
    rst $10                                       ; $7727: $d7
    call z, Call_04b_4a6d                         ; $7728: $cc $6d $4a
    ld l, l                                       ; $772b: $6d
    adc $e9                                       ; $772c: $ce $e9
    ld l, $69                                     ; $772e: $2e $69
    ld b, [hl]                                    ; $7730: $46
    call c, Call_04b_7f14                         ; $7731: $dc $14 $7f
    nop                                           ; $7734: $00
    rst $10                                       ; $7735: $d7
    dec sp                                        ; $7736: $3b
    or a                                          ; $7737: $b7
    ld [hl], h                                    ; $7738: $74
    or [hl]                                       ; $7739: $b6
    xor b                                         ; $773a: $a8
    sbc d                                         ; $773b: $9a
    rst $20                                       ; $773c: $e7
    cp e                                          ; $773d: $bb
    rst $30                                       ; $773e: $f7
    ld c, [hl]                                    ; $773f: $4e
    and $7d                                       ; $7740: $e6 $7d
    add hl, bc                                    ; $7742: $09
    pop hl                                        ; $7743: $e1
    pop hl                                        ; $7744: $e1
    ld e, l                                       ; $7745: $5d
    jp nc, $b88c                                  ; $7746: $d2 $8c $b8

    add hl, hl                                    ; $7749: $29
    cp $00                                        ; $774a: $fe $00
    rst $10                                       ; $774c: $d7
    cp e                                          ; $774d: $bb
    or b                                          ; $774e: $b0
    ld [bc], a                                    ; $774f: $02
    cpl                                           ; $7750: $2f
    ccf                                           ; $7751: $3f
    jr jr_04b_77bc                                ; $7752: $18 $68

    ld [hl], e                                    ; $7754: $73
    db $fc                                        ; $7755: $fc
    dec bc                                        ; $7756: $0b
    inc l                                         ; $7757: $2c
    pop bc                                        ; $7758: $c1
    ld hl, sp-$0d                                 ; $7759: $f8 $f3
    inc a                                         ; $775b: $3c
    ld a, [c]                                     ; $775c: $f2
    inc d                                         ; $775d: $14
    ld d, h                                       ; $775e: $54
    dec l                                         ; $775f: $2d
    cp $00                                        ; $7760: $fe $00
    xor a                                         ; $7762: $af
    add hl, de                                    ; $7763: $19
    cp h                                          ; $7764: $bc
    adc e                                         ; $7765: $8b
    jp z, Jump_04b_4abb                           ; $7766: $ca $bb $4a

    ld b, $ff                                     ; $7769: $06 $ff
    ei                                            ; $776b: $fb
    pop de                                        ; $776c: $d1
    ld e, [hl]                                    ; $776d: $5e
    inc [hl]                                      ; $776e: $34
    add d                                         ; $776f: $82
    ld d, a                                       ; $7770: $57
    xor e                                         ; $7771: $ab
    dec a                                         ; $7772: $3d
    rst $10                                       ; $7773: $d7
    or b                                          ; $7774: $b0
    ld c, $68                                     ; $7775: $0e $68
    ld a, [hl+]                                   ; $7777: $2a
    ld l, [hl]                                    ; $7778: $6e
    ld [hl], e                                    ; $7779: $73
    ld e, h                                       ; $777a: $5c
    ld [hl], d                                    ; $777b: $72

Call_04b_777c:
    ret nz                                        ; $777c: $c0

    cp b                                          ; $777d: $b8
    sub e                                         ; $777e: $93
    add h                                         ; $777f: $84
    ld bc, $8a68                                  ; $7780: $01 $68 $8a
    ccf                                           ; $7783: $3f
    nop                                           ; $7784: $00
    cpl                                           ; $7785: $2f
    ld a, l                                       ; $7786: $7d
    ld [de], a                                    ; $7787: $12
    ld c, d                                       ; $7788: $4a
    inc a                                         ; $7789: $3c
    ld d, h                                       ; $778a: $54
    ei                                            ; $778b: $fb

Call_04b_778c:
    ret                                           ; $778c: $c9


    ld a, [hl+]                                   ; $778d: $2a
    dec c                                         ; $778e: $0d
    ld h, d                                       ; $778f: $62
    pop af                                        ; $7790: $f1
    ld a, e                                       ; $7791: $7b
    call $dde0                                    ; $7792: $cd $e0 $dd
    adc a                                         ; $7795: $8f
    ld d, $36                                     ; $7796: $16 $36
    ld a, [de]                                    ; $7798: $1a
    ld [hl], a                                    ; $7799: $77
    xor [hl]                                      ; $779a: $ae
    dec h                                         ; $779b: $25
    ld l, b                                       ; $779c: $68
    add $07                                       ; $779d: $c6 $07
    ld l, a                                       ; $779f: $6f
    ld h, c                                       ; $77a0: $61
    ld a, [$2ef9]                                 ; $77a1: $fa $f9 $2e
    ld [hl], b                                    ; $77a4: $70
    ld d, b                                       ; $77a5: $50
    ld [hl], c                                    ; $77a6: $71
    and a                                         ; $77a7: $a7
    ld [hl], h                                    ; $77a8: $74
    dec e                                         ; $77a9: $1d
    xor [hl]                                      ; $77aa: $ae
    sbc $8f                                       ; $77ab: $de $8f
    and $3b                                       ; $77ad: $e6 $3b
    ld e, a                                       ; $77af: $5f
    add a                                         ; $77b0: $87
    add $dd                                       ; $77b1: $c6 $dd
    add a                                         ; $77b3: $87
    sbc d                                         ; $77b4: $9a
    ld c, l                                       ; $77b5: $4d
    pop af                                        ; $77b6: $f1
    rlca                                          ; $77b7: $07
    rst $08                                       ; $77b8: $cf

Call_04b_77b9:
    dec sp                                        ; $77b9: $3b
    cp c                                          ; $77ba: $b9
    nop                                           ; $77bb: $00

jr_04b_77bc:
    add e                                         ; $77bc: $83
    ld sp, hl                                     ; $77bd: $f9
    adc $41                                       ; $77be: $ce $41
    dec a                                         ; $77c0: $3d
    rst $10                                       ; $77c1: $d7
    ld [de], a                                    ; $77c2: $12
    inc [hl]                                      ; $77c3: $34
    xor a                                         ; $77c4: $af

Call_04b_77c5:
    inc e                                         ; $77c5: $1c
    ld l, a                                       ; $77c6: $6f
    ld a, l                                       ; $77c7: $7d
    dec c                                         ; $77c8: $0d
    or $94                                        ; $77c9: $f6 $94
    ld h, l                                       ; $77cb: $65
    ld h, d                                       ; $77cc: $62
    ld [bc], a                                    ; $77cd: $02
    pop af                                        ; $77ce: $f1
    rlca                                          ; $77cf: $07
    cpl                                           ; $77d0: $2f
    sbc d                                         ; $77d1: $9a
    ret                                           ; $77d2: $c9


    ld sp, hl                                     ; $77d3: $f9
    ld l, $70                                     ; $77d4: $2e $70
    ld d, b                                       ; $77d6: $50
    ld [hl], c                                    ; $77d7: $71
    rst $00                                       ; $77d8: $c7
    rst $18                                       ; $77d9: $df
    dec l                                         ; $77da: $2d
    ld a, c                                       ; $77db: $79
    or d                                          ; $77dc: $b2

Jump_04b_77dd:
    sub h                                         ; $77dd: $94
    ld [c], a                                     ; $77de: $e2
    rrca                                          ; $77df: $0f
    ld c, a                                       ; $77e0: $4f
    sub l                                         ; $77e1: $95
    ld a, [hl]                                    ; $77e2: $7e
    inc hl                                        ; $77e3: $23
    rst $18                                       ; $77e4: $df
    ld e, l                                       ; $77e5: $5d
    ld d, [hl]                                    ; $77e6: $56
    xor d                                         ; $77e7: $aa
    and $9a                                       ; $77e8: $e6 $9a
    ld a, e                                       ; $77ea: $7b
    db $e3                                        ; $77eb: $e3
    cp e                                          ; $77ec: $bb
    ld c, l                                       ; $77ed: $4d
    inc sp                                        ; $77ee: $33
    ld d, d                                       ; $77ef: $52
    ld a, e                                       ; $77f0: $7b

Call_04b_77f1:
    or c                                          ; $77f1: $b1
    pop de                                        ; $77f2: $d1
    daa                                           ; $77f3: $27
    ld sp, $aa0a                                  ; $77f4: $31 $0a $aa
    ld d, $7f                                     ; $77f7: $16 $7f
    nop                                           ; $77f9: $00
    rst $10                                       ; $77fa: $d7
    dec sp                                        ; $77fb: $3b
    ld h, b                                       ; $77fc: $60
    add $6b                                       ; $77fd: $c6 $6b
    ld [hl], e                                    ; $77ff: $73
    adc c                                         ; $7800: $89

jr_04b_7801:
    ld l, [hl]                                    ; $7801: $6e
    call $8fd9                                    ; $7802: $cd $d9 $8f
    jp nz, $81ff                                  ; $7805: $c2 $ff $81

    ld hl, sp+$03                                 ; $7808: $f8 $03
    rst $10                                       ; $780a: $d7
    cp e                                          ; $780b: $bb
    or b                                          ; $780c: $b0
    ld [bc], a                                    ; $780d: $02
    xor a                                         ; $780e: $af
    call $d625                                    ; $780f: $cd $25 $d6
    add hl, sp                                    ; $7812: $39
    ld c, l                                       ; $7813: $4d
    ld b, c                                       ; $7814: $41
    ld d, h                                       ; $7815: $54
    ld b, a                                       ; $7816: $47
    ld [hl], $13                                  ; $7817: $36 $13
    db $dd                                        ; $7819: $dd
    sbc d                                         ; $781a: $9a
    inc sp                                        ; $781b: $33
    and c                                         ; $781c: $a1
    ld d, h                                       ; $781d: $54
    sub h                                         ; $781e: $94
    inc l                                         ; $781f: $2c
    cp $00                                        ; $7820: $fe $00
    rst $08                                       ; $7822: $cf
    sub e                                         ; $7823: $93
    pop bc                                        ; $7824: $c1
    ld b, e                                       ; $7825: $43
    sbc $9d                                       ; $7826: $de $9d
    ld c, a                                       ; $7828: $4f
    call c, $03bb                                 ; $7829: $dc $bb $03
    ld l, a                                       ; $782c: $6f
    sub l                                         ; $782d: $95
    ld a, h                                       ; $782e: $7c
    cp h                                          ; $782f: $bc
    dec sp                                        ; $7830: $3b
    sbc a                                         ; $7831: $9f
    cp b                                          ; $7832: $b8
    ld [hl], a                                    ; $7833: $77
    rlca                                          ; $7834: $07
    cpl                                           ; $7835: $2f
    ld a, [de]                                    ; $7836: $1a
    adc b                                         ; $7837: $88
    daa                                           ; $7838: $27
    add hl, hl                                    ; $7839: $29
    sbc $9d                                       ; $783a: $de $9d
    ld c, a                                       ; $783c: $4f
    call c, $03bb                                 ; $783d: $dc $bb $03
    cpl                                           ; $7840: $2f
    ld a, [de]                                    ; $7841: $1a
    adc b                                         ; $7842: $88
    rst $20                                       ; $7843: $e7
    sub d                                         ; $7844: $92
    adc a                                         ; $7845: $8f
    ld [hl], a                                    ; $7846: $77
    rst $20                                       ; $7847: $e7
    inc de                                        ; $7848: $13
    rst $30                                       ; $7849: $f7
    xor $00                                       ; $784a: $ee $00
    ld c, a                                       ; $784c: $4f
    dec [hl]                                      ; $784d: $35
    ld l, h                                       ; $784e: $6c
    ld a, d                                       ; $784f: $7a
    inc b                                         ; $7850: $04
    cp e                                          ; $7851: $bb
    di                                            ; $7852: $f3
    adc c                                         ; $7853: $89
    ld a, e                                       ; $7854: $7b
    ld [hl], a                                    ; $7855: $77
    nop                                           ; $7856: $00
    cpl                                           ; $7857: $2f
    call nc, $ee6d                                ; $7858: $d4 $6d $ee
    adc $27                                       ; $785b: $ce $27
    xor $dd                                       ; $785d: $ee $dd
    ld bc, $75ef                                  ; $785f: $01 $ef $75
    ld a, [hl+]                                   ; $7862: $2a
    ld [hl-], a                                   ; $7863: $32
    reti                                          ; $7864: $d9


    sbc h                                         ; $7865: $9c
    ret z                                         ; $7866: $c8

    sub d                                         ; $7867: $92
    ld c, l                                       ; $7868: $4d
    ld sp, $782a                                  ; $7869: $31 $2a $78
    cp b                                          ; $786c: $b8
    and $4a                                       ; $786d: $e6 $4a
    dec sp                                        ; $786f: $3b
    inc hl                                        ; $7870: $23
    xor a                                         ; $7871: $af
    call Call_000_3349                            ; $7872: $cd $49 $33
    ld [c], a                                     ; $7875: $e2
    add hl, bc                                    ; $7876: $09
    jr jr_04b_7801                                ; $7877: $18 $88

    ccf                                           ; $7879: $3f
    nop                                           ; $787a: $00
    sub a                                         ; $787b: $97
    ld e, b                                       ; $787c: $58
    ld e, d                                       ; $787d: $5a
    ld e, b                                       ; $787e: $58
    ld h, c                                       ; $787f: $61
    ld b, c                                       ; $7880: $41
    rla                                           ; $7881: $17
    ld [hl], h                                    ; $7882: $74
    rst $08                                       ; $7883: $cf
    dec [hl]                                      ; $7884: $35
    xor h                                         ; $7885: $ac
    inc bc                                        ; $7886: $03
    sbc d                                         ; $7887: $9a
    adc d                                         ; $7888: $8a
    db $db                                        ; $7889: $db
    inc e                                         ; $788a: $1c
    sub a                                         ; $788b: $97

Jump_04b_788c:
    inc e                                         ; $788c: $1c
    ld [hl], b                                    ; $788d: $70
    or c                                          ; $788e: $b1
    rla                                           ; $788f: $17
    adc l                                         ; $7890: $8d
    ldh [$d5], a                                  ; $7891: $e0 $d5
    pop af                                        ; $7893: $f1
    ld bc, $df97                                  ; $7894: $01 $97 $df
    ld e, c                                       ; $7897: $59
    add b                                         ; $7898: $80
    pop bc                                        ; $7899: $c1
    jp nz, $8b46                                  ; $789a: $c2 $46 $8b

    call z, Call_04b_62e8                         ; $789d: $cc $e8 $62
    sub a                                         ; $78a0: $97
    ld b, [hl]                                    ; $78a1: $46
    inc h                                         ; $78a2: $24
    ld h, $8e                                     ; $78a3: $26 $8e
    db $e3                                        ; $78a5: $e3
    dec b                                         ; $78a6: $05
    ld e, l                                       ; $78a7: $5d
    ld e, b                                       ; $78a8: $58
    add c                                         ; $78a9: $81
    ld d, a                                       ; $78aa: $57
    ld e, d                                       ; $78ab: $5a
    ret c                                         ; $78ac: $d8

    ld [$8c9d], a                                 ; $78ad: $ea $9d $8c
    rst $20                                       ; $78b0: $e7
    cp $4f                                        ; $78b1: $fe $4f
    adc e                                         ; $78b3: $8b
    ld a, [hl]                                    ; $78b4: $7e
    cp c                                          ; $78b5: $b9
    add hl, sp                                    ; $78b6: $39
    rst $38                                       ; $78b7: $ff
    sbc e                                         ; $78b8: $9b
    pop af                                        ; $78b9: $f1
    ld bc, $6a4f                                  ; $78ba: $01 $4f $6a
    or l                                          ; $78bd: $b5
    and b                                         ; $78be: $a0
    inc bc                                        ; $78bf: $03
    ld l, l                                       ; $78c0: $6d
    xor $8d                                       ; $78c1: $ee $8d
    rst $28                                       ; $78c3: $ef
    ld [hl], $cd                                  ; $78c4: $36 $cd
    ld c, b                                       ; $78c6: $48
    ld c, c                                       ; $78c7: $49
    inc sp                                        ; $78c8: $33

Call_04b_78c9:
    ld [c], a                                     ; $78c9: $e2
    and $4e                                       ; $78ca: $e6 $4e
    xor b                                         ; $78cc: $a8

Jump_04b_78cd:
    ld a, c                                       ; $78cd: $79
    ld a, [c]                                     ; $78ce: $f2
    ld b, e                                       ; $78cf: $43
    call $858b                                    ; $78d0: $cd $8b $85
    dec d                                         ; $78d3: $15
    add h                                         ; $78d4: $84
    and $4e                                       ; $78d5: $e6 $4e
    ld e, l                                       ; $78d7: $5d
    or l                                          ; $78d8: $b5
    inc [hl]                                      ; $78d9: $34
    and e                                         ; $78da: $a3
    dec h                                         ; $78db: $25
    sub [hl]                                      ; $78dc: $96
    push de                                       ; $78dd: $d5
    cp b                                          ; $78de: $b8
    ld [hl], e                                    ; $78df: $73
    ld c, e                                       ; $78e0: $4b
    ld e, h                                       ; $78e1: $5c
    xor l                                         ; $78e2: $ad
    sbc e                                         ; $78e3: $9b
    pop af                                        ; $78e4: $f1
    ld bc, $7d6f                                  ; $78e5: $01 $6f $7d
    dec c                                         ; $78e8: $0d
    sbc d                                         ; $78e9: $9a
    ld l, d                                       ; $78ea: $6a
    ld de, $b906                                  ; $78eb: $11 $06 $b9
    or b                                          ; $78ee: $b0
    ret nc                                        ; $78ef: $d0

    add d                                         ; $78f0: $82
    xor [hl]                                      ; $78f1: $ae
    call $8391                                    ; $78f2: $cd $91 $83
    ld h, b                                       ; $78f5: $60
    db $fc                                        ; $78f6: $fc
    pop hl                                        ; $78f7: $e1
    ld hl, $a076                                  ; $78f8: $21 $76 $a0
    and c                                         ; $78fb: $a1
    ld sp, hl                                     ; $78fc: $f9
    adc e                                         ; $78fd: $8b
    ld e, l                                       ; $78fe: $5d
    ld a, [de]                                    ; $78ff: $1a
    sub c                                         ; $7900: $91
    sbc b                                         ; $7901: $98
    ld a, b                                       ; $7902: $78
    rst $28                                       ; $7903: $ef
    sbc c                                         ; $7904: $99
    ld e, $ca                                     ; $7905: $1e $ca
    dec b                                         ; $7907: $05
    ld e, l                                       ; $7908: $5d
    ld b, l                                       ; $7909: $45
    and d                                         ; $790a: $a2
    xor $43                                       ; $790b: $ee $43
    jp nc, Jump_04b_4574                          ; $790d: $d2 $74 $45

    add $a5                                       ; $7910: $c6 $a5
    and $95                                       ; $7912: $e6 $95
    inc bc                                        ; $7914: $03
    rst $08                                       ; $7915: $cf
    db $e4                                        ; $7916: $e4
    ld a, [c]                                     ; $7917: $f2
    dec sp                                        ; $7918: $3b

Jump_04b_7919:
    db $e3                                        ; $7919: $e3
    sub d                                         ; $791a: $92
    inc bc                                        ; $791b: $03
    sub [hl]                                      ; $791c: $96
    ld h, [hl]                                    ; $791d: $66
    or h                                          ; $791e: $b4
    and b                                         ; $791f: $a0
    inc de                                        ; $7920: $13
    cp $e7                                        ; $7921: $fe $e7
    adc e                                         ; $7923: $8b
    ld e, l                                       ; $7924: $5d
    ld a, [de]                                    ; $7925: $1a
    sub c                                         ; $7926: $91
    sbc b                                         ; $7927: $98
    ld hl, sp+$00                                 ; $7928: $f8 $00
    or b                                          ; $792a: $b0
    sbc a                                         ; $792b: $9f
    cp b                                          ; $792c: $b8
    ld [hl], a                                    ; $792d: $77
    or a                                          ; $792e: $b7
    ccf                                           ; $792f: $3f
    ld [hl], c                                    ; $7930: $71
    rst $18                                       ; $7931: $df
    ld e, [hl]                                    ; $7932: $5e
    sub a                                         ; $7933: $97
    db $e3                                        ; $7934: $e3
    rst $08                                       ; $7935: $cf
    ld h, [hl]                                    ; $7936: $66
    ld a, [$038e]                                 ; $7937: $fa $8e $03
    ld l, a                                       ; $793a: $6f
    sub b                                         ; $793b: $90
    and l                                         ; $793c: $a5
    ld [de], a                                    ; $793d: $12
    ld hl, $c870                                  ; $793e: $21 $70 $c8
    jr @+$7d                                      ; $7941: $18 $7b

    nop                                           ; $7943: $00
    rst $08                                       ; $7944: $cf
    sub e                                         ; $7945: $93
    add e                                         ; $7946: $83
    cp [hl]                                       ; $7947: $be
    add hl, hl                                    ; $7948: $29
    sbc l                                         ; $7949: $9d
    db $f4                                        ; $794a: $f4
    dec a                                         ; $794b: $3d
    nop                                           ; $794c: $00
    ld l, a                                       ; $794d: $6f
    sub l                                         ; $794e: $95
    ld c, [hl]                                    ; $794f: $4e
    dec l                                         ; $7950: $2d
    db $ed                                        ; $7951: $ed
    cp l                                          ; $7952: $bd
    sub e                                         ; $7953: $93
    ld de, $cf77                                  ; $7954: $11 $77 $cf
    dec sp                                        ; $7957: $3b
    xor c                                         ; $7958: $a9
    cp b                                          ; $7959: $b8
    ld a, c                                       ; $795a: $79
    nop                                           ; $795b: $00
    ld c, a                                       ; $795c: $4f
    push af                                       ; $795d: $f5
    call c, $d5c8                                 ; $795e: $dc $c8 $d5
    ld e, b                                       ; $7961: $58
    ret nc                                        ; $7962: $d0

    inc a                                         ; $7963: $3c
    nop                                           ; $7964: $00
    xor a                                         ; $7965: $af
    ld b, e                                       ; $7966: $43
    ld d, h                                       ; $7967: $54
    ld b, a                                       ; $7968: $47
    ld [hl], $0f                                  ; $7969: $36 $0f
    rst $08                                       ; $796b: $cf
    ld d, l                                       ; $796c: $55
    pop bc                                        ; $796d: $c1
    ld b, e                                       ; $796e: $43
    xor h                                         ; $796f: $ac
    ld l, a                                       ; $7970: $6f
    and d                                         ; $7971: $a2
    jp c, $df1b                                   ; $7972: $da $1b $df

    dec l                                         ; $7975: $2d
    ld c, c                                       ; $7976: $49
    daa                                           ; $7977: $27
    dec d                                         ; $7978: $15
    rra                                           ; $7979: $1f
    rst $10                                       ; $797a: $d7
    db $e4                                        ; $797b: $e4
    and h                                         ; $797c: $a4
    push hl                                       ; $797d: $e5
    ld [hl+], a                                   ; $797e: $22
    inc sp                                        ; $797f: $33
    sbc d                                         ; $7980: $9a
    ld d, b                                       ; $7981: $50
    ld l, $2d                                     ; $7982: $2e $2d
    or c                                          ; $7984: $b1
    inc a                                         ; $7985: $3c
    adc a                                         ; $7986: $8f
    sbc l                                         ; $7987: $9d
    or h                                          ; $7988: $b4
    db $e4                                        ; $7989: $e4
    ld a, l                                       ; $798a: $7d
    ld [$6598], sp                                ; $798b: $08 $98 $65
    cp h                                          ; $798e: $bc
    or a                                          ; $798f: $b7
    cp [hl]                                       ; $7990: $be
    ld b, $4d                                     ; $7991: $06 $4d
    or l                                          ; $7993: $b5
    ld [$6983], sp                                ; $7994: $08 $83 $69
    inc b                                         ; $7997: $04
    cp h                                          ; $7998: $bc
    rst $10                                       ; $7999: $d7
    or e                                          ; $799a: $b3
    add l                                         ; $799b: $85
    and $cd                                       ; $799c: $e6 $cd
    ld l, b                                       ; $799e: $68
    ld sp, hl                                     ; $799f: $f9
    pop bc                                        ; $79a0: $c1
    inc d                                         ; $79a1: $14
    or a                                          ; $79a2: $b7
    ld e, [hl]                                    ; $79a3: $5e
    xor l                                         ; $79a4: $ad
    inc b                                         ; $79a5: $04
    sbc d                                         ; $79a6: $9a
    ld l, d                                       ; $79a7: $6a
    rra                                           ; $79a8: $1f
    sbc d                                         ; $79a9: $9a
    rst $28                                       ; $79aa: $ef
    db $f4                                        ; $79ab: $f4
    cpl                                           ; $79ac: $2f
    push bc                                       ; $79ad: $c5
    rlca                                          ; $79ae: $07
    ld c, a                                       ; $79af: $4f
    ld l, c                                       ; $79b0: $69
    inc c                                         ; $79b1: $0c
    ld b, h                                       ; $79b2: $44
    dec bc                                        ; $79b3: $0b
    or c                                          ; $79b4: $b1
    inc [hl]                                      ; $79b5: $34
    and c                                         ; $79b6: $a1
    ld e, c                                       ; $79b7: $59
    rst $18                                       ; $79b8: $df
    cp h                                          ; $79b9: $bc
    ret c                                         ; $79ba: $d8

    and l                                         ; $79bb: $a5
    ld de, $8989                                  ; $79bc: $11 $89 $89
    ld [hl], a                                    ; $79bf: $77
    or l                                          ; $79c0: $b5
    cp e                                          ; $79c1: $bb
    sub [hl]                                      ; $79c2: $96
    cp [hl]                                       ; $79c3: $be
    ld a, [de]                                    ; $79c4: $1a
    inc de                                        ; $79c5: $13
    jr z, jr_04b_7a40                             ; $79c6: $28 $78

    xor c                                         ; $79c8: $a9
    pop de                                        ; $79c9: $d1
    ld c, a                                       ; $79ca: $4f
    db $ec                                        ; $79cb: $ec
    add h                                         ; $79cc: $84
    ld [bc], a                                    ; $79cd: $02
    ld c, h                                       ; $79ce: $4c
    sbc $f9                                       ; $79cf: $de $f9
    rst $00                                       ; $79d1: $c7
    rlca                                          ; $79d2: $07
    sub a                                         ; $79d3: $97
    push hl                                       ; $79d4: $e5
    and c                                         ; $79d5: $a1
    ld e, d                                       ; $79d6: $5a
    ld h, d                                       ; $79d7: $62
    ld a, c                                       ; $79d8: $79
    ld l, [hl]                                    ; $79d9: $6e
    ld c, c                                       ; $79da: $49
    or c                                          ; $79db: $b1
    and l                                         ; $79dc: $a5
    ld b, a                                       ; $79dd: $47
    or b                                          ; $79de: $b0
    rra                                           ; $79df: $1f
    call $d19b                                    ; $79e0: $cd $9b $d1
    jp nc, Jump_000_268c                          ; $79e3: $d2 $8c $26

    inc [hl]                                      ; $79e6: $34
    db $eb                                        ; $79e7: $eb
    sbc e                                         ; $79e8: $9b
    db $e3                                        ; $79e9: $e3
    ld c, $98                                     ; $79ea: $0e $98
    push hl                                       ; $79ec: $e5
    push bc                                       ; $79ed: $c5
    ld l, $8d                                     ; $79ee: $2e $8d
    ld c, b                                       ; $79f0: $48
    ld c, h                                       ; $79f1: $4c
    cp h                                          ; $79f2: $bc
    or a                                          ; $79f3: $b7
    cp e                                          ; $79f4: $bb
    add sp, -$69                                  ; $79f5: $e8 $97
    sbc e                                         ; $79f7: $9b
    db $e3                                        ; $79f8: $e3
    sub d                                         ; $79f9: $92
    inc bc                                        ; $79fa: $03
    sub [hl]                                      ; $79fb: $96
    ld h, [hl]                                    ; $79fc: $66
    inc [hl]                                      ; $79fd: $34
    rst $18                                       ; $79fe: $df
    add hl, hl                                    ; $79ff: $29
    ld l, l                                       ; $7a00: $6d
    ld b, $9d                                     ; $7a01: $06 $9d
    call $7c74                                    ; $7a03: $cd $74 $7c
    nop                                           ; $7a06: $00
    rst $10                                       ; $7a07: $d7
    db $e4                                        ; $7a08: $e4
    ld b, b                                       ; $7a09: $40
    push af                                       ; $7a0a: $f5

Jump_04b_7a0b:
    rst $38                                       ; $7a0b: $ff
    and d                                         ; $7a0c: $a2
    ld a, c                                       ; $7a0d: $79
    db $e3                                        ; $7a0e: $e3
    and c                                         ; $7a0f: $a1
    sbc h                                         ; $7a10: $9c
    scf                                           ; $7a11: $37
    and e                                         ; $7a12: $a3
    add hl, bc                                    ; $7a13: $09
    call $e6fa                                    ; $7a14: $cd $fa $e6
    or b                                          ; $7a17: $b0
    sub c                                         ; $7a18: $91
    and l                                         ; $7a19: $a5
    ld e, a                                       ; $7a1a: $5f
    ld hl, sp+$3f                                 ; $7a1b: $f8 $3f
    push bc                                       ; $7a1d: $c5
    cp e                                          ; $7a1e: $bb
    ld h, $17                                     ; $7a1f: $26 $17
    db $fd                                        ; $7a21: $fd
    ld a, [c]                                     ; $7a22: $f2
    ld [hl+], a                                   ; $7a23: $22
    inc sp                                        ; $7a24: $33
    ld e, d                                       ; $7a25: $5a
    ld h, d                                       ; $7a26: $62
    ld a, c                                       ; $7a27: $79
    and a                                         ; $7a28: $a7
    sub [hl]                                      ; $7a29: $96
    and $3b                                       ; $7a2a: $e6 $3b
    ld h, $83                                     ; $7a2c: $26 $83
    ld h, [hl]                                    ; $7a2e: $66
    ld [hl+], a                                   ; $7a2f: $22
    ld h, b                                       ; $7a30: $60
    sub [hl]                                      ; $7a31: $96
    pop af                                        ; $7a32: $f1
    ld bc, $68af                                  ; $7a33: $01 $af $68
    rlca                                          ; $7a36: $07
    ld d, l                                       ; $7a37: $55
    ret nc                                        ; $7a38: $d0

    sbc l                                         ; $7a39: $9d
    sub c                                         ; $7a3a: $91
    rst $30                                       ; $7a3b: $f7
    and c                                         ; $7a3c: $a1
    ld sp, hl                                     ; $7a3d: $f9
    sbc [hl]                                      ; $7a3e: $9e
    dec sp                                        ; $7a3f: $3b

jr_04b_7a40:
    or a                                          ; $7a40: $b7
    db $e4                                        ; $7a41: $e4
    or c                                          ; $7a42: $b1
    db $10                                        ; $7a43: $10
    ld h, $88                                     ; $7a44: $26 $88
    rst $30                                       ; $7a46: $f7
    halt                                          ; $7a47: $76
    rla                                           ; $7a48: $17
    db $fd                                        ; $7a49: $fd
    ld [hl], d                                    ; $7a4a: $72
    ld [hl], e                                    ; $7a4b: $73
    rst $20                                       ; $7a4c: $e7
    ccf                                           ; $7a4d: $3f
    sub l                                         ; $7a4e: $95
    push de                                       ; $7a4f: $d5
    adc e                                         ; $7a50: $8b
    ld a, $a8                                     ; $7a51: $3e $a8
    add $40                                       ; $7a53: $c6 $40
    ld l, $cd                                     ; $7a55: $2e $cd
    ld l, b                                       ; $7a57: $68
    ld h, c                                       ; $7a58: $61
    and e                                         ; $7a59: $a3
    pop af                                        ; $7a5a: $f1
    ld l, a                                       ; $7a5b: $6f
    ld a, h                                       ; $7a5c: $7c
    nop                                           ; $7a5d: $00
    ld l, a                                       ; $7a5e: $6f
    jr z, jr_04b_7ad6                             ; $7a5f: $28 $75

    ld sp, $ea56                                  ; $7a61: $31 $56 $ea
    ld h, d                                       ; $7a64: $62
    ld d, c                                       ; $7a65: $51
    or e                                          ; $7a66: $b3
    and l                                         ; $7a67: $a5
    cp l                                          ; $7a68: $bd
    ld a, [c]                                     ; $7a69: $f2
    sbc c                                         ; $7a6a: $99
    ld c, e                                       ; $7a6b: $4b
    rla                                           ; $7a6c: $17
    dec sp                                        ; $7a6d: $3b
    add hl, de                                    ; $7a6e: $19
    rst $08                                       ; $7a6f: $cf
    rst $38                                       ; $7a70: $ff
    ld l, $c0                                     ; $7a71: $2e $c0
    ld h, b                                       ; $7a73: $60
    ld c, $f2                                     ; $7a74: $0e $f2

jr_04b_7a76:
    add h                                         ; $7a76: $84
    ld a, [$7b2b]                                 ; $7a77: $fa $2b $7b
    and e                                         ; $7a7a: $a3
    db $e4                                        ; $7a7b: $e4
    add b                                         ; $7a7c: $80
    and l                                         ; $7a7d: $a5
    add hl, de                                    ; $7a7e: $19
    dec l                                         ; $7a7f: $2d
    add sp, -$6c                                  ; $7a80: $e8 $94
    ld [hl], $83                                  ; $7a82: $36 $83
    adc $66                                       ; $7a84: $ce $66
    ld a, [$2862]                                 ; $7a86: $fa $62 $28
    ld [hl], a                                    ; $7a89: $77
    ld l, $58                                     ; $7a8a: $2e $58
    ld e, b                                       ; $7a8c: $58
    ld e, [hl]                                    ; $7a8d: $5e
    ld h, d                                       ; $7a8e: $62
    ld a, c                                       ; $7a8f: $79
    ld sp, hl                                     ; $7a90: $f9
    pop bc                                        ; $7a91: $c1
    jp c, Jump_04b_6c9c                           ; $7a92: $da $9c $6c

    add hl, hl                                    ; $7a95: $29
    ld a, $00                                     ; $7a96: $3e $00
    rst $10                                       ; $7a98: $d7
    db $e4                                        ; $7a99: $e4
    jp nz, Jump_000_0b0a                          ; $7a9a: $c2 $0a $0b

    ld a, [hl-]                                   ; $7a9d: $3a
    ret nc                                        ; $7a9e: $d0

    sub e                                         ; $7a9f: $93
    add hl, de                                    ; $7aa0: $19
    add hl, hl                                    ; $7aa1: $29
    ld a, b                                       ; $7aa2: $78
    add sp, -$64                                  ; $7aa3: $e8 $9c
    ld a, h                                       ; $7aa5: $7c
    cp h                                          ; $7aa6: $bc
    ld a, e                                       ; $7aa7: $7b
    rlca                                          ; $7aa8: $07
    add hl, sp                                    ; $7aa9: $39
    ret                                           ; $7aaa: $c9


    inc sp                                        ; $7aab: $33
    ld de, $e553                                  ; $7aac: $11 $53 $e5
    call c, Call_04b_69ff                         ; $7aaf: $dc $ff $69
    rst $08                                       ; $7ab2: $cf
    ld de, $448a                                  ; $7ab3: $11 $8a $44
    cp a                                          ; $7ab6: $bf
    jp hl                                         ; $7ab7: $e9


    ccf                                           ; $7ab8: $3f
    push bc                                       ; $7ab9: $c5
    ld a, e                                       ; $7aba: $7b
    ld h, $97                                     ; $7abb: $26 $97
    adc $b8                                       ; $7abd: $ce $b8
    db $e4                                        ; $7abf: $e4
    add b                                         ; $7ac0: $80
    and l                                         ; $7ac1: $a5
    add hl, de                                    ; $7ac2: $19
    ld c, l                                       ; $7ac3: $4d
    xor b                                         ; $7ac4: $a8
    adc a                                         ; $7ac5: $8f
    rrca                                          ; $7ac6: $0f
    sub a                                         ; $7ac7: $97
    ld b, [hl]                                    ; $7ac8: $46
    inc h                                         ; $7ac9: $24
    and $62                                       ; $7aca: $e6 $62
    ld e, h                                       ; $7acc: $5c
    ld [hl], d                                    ; $7acd: $72
    ret nz                                        ; $7ace: $c0

    jp nc, $168c                                  ; $7acf: $d2 $8c $16

    ld [hl], h                                    ; $7ad2: $74
    ld e, c                                       ; $7ad3: $59

Call_04b_7ad4:
    push bc                                       ; $7ad4: $c5
    ld [c], a                                     ; $7ad5: $e2

jr_04b_7ad6:
    ld [hl], a                                    ; $7ad6: $77
    dec de                                        ; $7ad7: $1b
    rst $28                                       ; $7ad8: $ef
    sbc d                                         ; $7ad9: $9a
    ld e, d                                       ; $7ada: $5a
    adc b                                         ; $7adb: $88
    and l                                         ; $7adc: $a5
    add hl, bc                                    ; $7add: $09
    ld c, $72                                     ; $7ade: $0e $72
    ld [hl], e                                    ; $7ae0: $73
    adc c                                         ; $7ae1: $89
    push hl                                       ; $7ae2: $e5
    cp c                                          ; $7ae3: $b9
    ld b, l                                       ; $7ae4: $45
    adc l                                         ; $7ae5: $8d
    jr nz, jr_04b_7a76                            ; $7ae6: $20 $8e

    db $e3                                        ; $7ae8: $e3
    ld sp, hl                                     ; $7ae9: $f9
    db $db                                        ; $7aea: $db
    ld l, b                                       ; $7aeb: $68
    ld b, d                                       ; $7aec: $42
    inc sp                                        ; $7aed: $33
    dec sp                                        ; $7aee: $3b
    ld e, l                                       ; $7aef: $5d
    ld [hl-], a                                   ; $7af0: $32
    ld l, d                                       ; $7af1: $6a
    ld c, $73                                     ; $7af2: $0e $73
    cp [hl]                                       ; $7af4: $be
    inc de                                        ; $7af5: $13
    inc e                                         ; $7af6: $1c
    add a                                         ; $7af7: $87
    ld e, b                                       ; $7af8: $58
    db $fc                                        ; $7af9: $fc
    ld bc, $e4d7                                  ; $7afa: $01 $d7 $e4
    jp nz, $0b42                                  ; $7afd: $c2 $42 $0b

    ld a, [hl-]                                   ; $7b00: $3a
    db $d3                                        ; $7b01: $d3
    ld l, e                                       ; $7b02: $6b
    ld [hl], e                                    ; $7b03: $73
    or d                                          ; $7b04: $b2
    and l                                         ; $7b05: $a5
    add c                                         ; $7b06: $81
    sbc [hl]                                      ; $7b07: $9e
    call z, $c148                                 ; $7b08: $cc $48 $c1
    ld b, e                                       ; $7b0b: $43
    rst $20                                       ; $7b0c: $e7
    db $e4                                        ; $7b0d: $e4
    push bc                                       ; $7b0e: $c5
    rst $28                                       ; $7b0f: $ef
    adc l                                         ; $7b10: $8d
    sub d                                         ; $7b11: $92
    inc bc                                        ; $7b12: $03
    sub [hl]                                      ; $7b13: $96
    ld h, [hl]                                    ; $7b14: $66
    or h                                          ; $7b15: $b4
    rst $20                                       ; $7b16: $e7
    ld [$a245], sp                                ; $7b17: $08 $45 $a2
    rst $18                                       ; $7b1a: $df
    db $f4                                        ; $7b1b: $f4
    sbc a                                         ; $7b1c: $9f
    ld l, $66                                     ; $7b1d: $2e $66
    jp hl                                         ; $7b1f: $e9


    ld c, e                                       ; $7b20: $4b
    ld l, d                                       ; $7b21: $6a
    ld c, h                                       ; $7b22: $4c
    sub l                                         ; $7b23: $95
    ld b, e                                       ; $7b24: $43
    cp c                                          ; $7b25: $b9
    adc d                                         ; $7b26: $8a
    ld b, h                                       ; $7b27: $44
    db $dd                                        ; $7b28: $dd
    ret                                           ; $7b29: $c9


    ld a, b                                       ; $7b2a: $78

Call_04b_7b2b:
    sub b                                         ; $7b2b: $90
    sub e                                         ; $7b2c: $93
    call c, $899c                                 ; $7b2d: $dc $9c $89
    call nz, $d71f                                ; $7b30: $c4 $1f $d7
    db $e4                                        ; $7b33: $e4
    ld b, d                                       ; $7b34: $42
    di                                            ; $7b35: $f3
    ld c, e                                       ; $7b36: $4b
    inc l                                         ; $7b37: $2c
    rst $08                                       ; $7b38: $cf
    dec l                                         ; $7b39: $2d
    sbc l                                         ; $7b3a: $9d
    inc c                                         ; $7b3b: $0c
    ld e, $f2                                     ; $7b3c: $1e $f2
    cp h                                          ; $7b3e: $bc
    pop af                                        ; $7b3f: $f1
    ld [bc], a                                    ; $7b40: $02
    inc c                                         ; $7b41: $0c
    sub $e6                                       ; $7b42: $d6 $e6
    jp nc, Jump_000_21e0                          ; $7b44: $d2 $e0 $21

    cp e                                          ; $7b47: $bb
    ld a, [de]                                    ; $7b48: $1a

jr_04b_7b49:
    db $d3                                        ; $7b49: $d3
    sub a                                         ; $7b4a: $97
    halt                                          ; $7b4b: $76
    cp $ce                                        ; $7b4c: $fe $ce
    adc $18                                       ; $7b4e: $ce $18
    db $e4                                        ; $7b50: $e4
    push bc                                       ; $7b51: $c5
    ld l, $8d                                     ; $7b52: $2e $8d
    ld c, b                                       ; $7b54: $48
    ld c, h                                       ; $7b55: $4c
    cp h                                          ; $7b56: $bc
    ld l, e                                       ; $7b57: $6b
    ld [hl], d                                    ; $7b58: $72
    ld h, a                                       ; $7b59: $67
    db $d3                                        ; $7b5a: $d3
    dec bc                                        ; $7b5b: $0b
    bit 1, e                                      ; $7b5c: $cb $4b
    inc l                                         ; $7b5e: $2c
    cpl                                           ; $7b5f: $2f
    xor d                                         ; $7b60: $aa
    or $cd                                        ; $7b61: $f6 $cd
    adc e                                         ; $7b63: $8b
    ld b, l                                       ; $7b64: $45
    ld h, [hl]                                    ; $7b65: $66
    inc [hl]                                      ; $7b66: $34
    dec b                                         ; $7b67: $05
    rrca                                          ; $7b68: $0f
    or c                                          ; $7b69: $b1
    cp h                                          ; $7b6a: $bc
    ld d, e                                       ; $7b6b: $53
    push af                                       ; $7b6c: $f5
    ld a, $b4                                     ; $7b6d: $3e $b4
    and $20                                       ; $7b6f: $e6 $20
    ld l, l                                       ; $7b71: $6d
    ret                                           ; $7b72: $c9


    dec bc                                        ; $7b73: $0b
    ld a, d                                       ; $7b74: $7a
    xor [hl]                                      ; $7b75: $ae
    ld d, $8d                                     ; $7b76: $16 $8d
    ld c, e                                       ; $7b78: $4b
    ld c, $18                                     ; $7b79: $0e $18
    and $84                                       ; $7b7b: $e6 $84
    ld a, [$00f8]                                 ; $7b7d: $fa $f8 $00
    cpl                                           ; $7b80: $2f
    ld a, l                                       ; $7b81: $7d
    jr nc, jr_04b_7b49                            ; $7b82: $30 $c5

    xor l                                         ; $7b84: $ad
    ld d, a                                       ; $7b85: $57
    ld c, e                                       ; $7b86: $4b
    inc l                                         ; $7b87: $2c
    rrca                                          ; $7b88: $0f
    ld [hl], e                                    ; $7b89: $73
    ld b, d                                       ; $7b8a: $42
    ld a, l                                       ; $7b8b: $7d
    cp h                                          ; $7b8c: $bc
    ld l, e                                       ; $7b8d: $6b
    ld [hl], d                                    ; $7b8e: $72
    ld b, d                                       ; $7b8f: $42
    ld [hl], e                                    ; $7b90: $73
    add d                                         ; $7b91: $82
    dec h                                         ; $7b92: $25
    sbc b                                         ; $7b93: $98
    scf                                           ; $7b94: $37
    ld e, $ca                                     ; $7b95: $1e $ca
    ld a, c                                       ; $7b97: $79
    set 3, l                                      ; $7b98: $cb $dd
    dec sp                                        ; $7b9a: $3b
    ret z                                         ; $7b9b: $c8

    ld c, c                                       ; $7b9c: $49
    sbc [hl]                                      ; $7b9d: $9e
    ld l, e                                       ; $7b9e: $6b
    add hl, sp                                    ; $7b9f: $39
    rst $18                                       ; $7ba0: $df
    add hl, hl                                    ; $7ba1: $29
    ld hl, sp-$59                                 ; $7ba2: $f8 $a7
    adc $b5                                       ; $7ba4: $ce $b5
    call c, $8473                                 ; $7ba6: $dc $73 $84
    ld [hl+], a                                   ; $7ba9: $22
    pop de                                        ; $7baa: $d1
    ld l, a                                       ; $7bab: $6f
    ld a, [$8b4f]                                 ; $7bac: $fa $4f $8b
    ld a, [hl]                                    ; $7baf: $7e
    ld a, c                                       ; $7bb0: $79
    ld a, [hl+]                                   ; $7bb1: $2a
    ld a, a                                       ; $7bb2: $7f
    or c                                          ; $7bb3: $b1
    add hl, de                                    ; $7bb4: $19
    rst $28                                       ; $7bb5: $ef
    sbc c                                         ; $7bb6: $99
    ld e, h                                       ; $7bb7: $5c
    ld a, [hl-]                                   ; $7bb8: $3a
    db $e3                                        ; $7bb9: $e3
    sub d                                         ; $7bba: $92
    inc bc                                        ; $7bbb: $03
    sub [hl]                                      ; $7bbc: $96
    ld h, [hl]                                    ; $7bbd: $66
    or h                                          ; $7bbe: $b4
    and b                                         ; $7bbf: $a0
    inc de                                        ; $7bc0: $13
    ld [$03e3], a                                 ; $7bc1: $ea $e3 $03
    rst $10                                       ; $7bc4: $d7
    db $e4                                        ; $7bc5: $e4
    jp nz, Jump_000_0b0a                          ; $7bc6: $c2 $0a $0b

    cp d                                          ; $7bc9: $ba
    or b                                          ; $7bca: $b0
    cp d                                          ; $7bcb: $ba
    sub c                                         ; $7bcc: $91
    sbc c                                         ; $7bcd: $99
    sbc [hl]                                      ; $7bce: $9e
    rst $38                                       ; $7bcf: $ff
    sbc a                                         ; $7bd0: $9f
    ld l, $76                                     ; $7bd1: $2e $76
    ld l, c                                       ; $7bd3: $69
    ld b, h                                       ; $7bd4: $44
    ld h, d                                       ; $7bd5: $62
    or $ca                                        ; $7bd6: $f6 $ca
    ld h, a                                       ; $7bd8: $67
    ld l, $89                                     ; $7bd9: $2e $89
    rst $18                                       ; $7bdb: $df

Jump_04b_7bdc:
    rr c                                          ; $7bdc: $cb $19
    and c                                         ; $7bde: $a1
    rst $30                                       ; $7bdf: $f7
    push de                                       ; $7be0: $d5
    ld a, [de]                                    ; $7be1: $1a
    inc bc                                        ; $7be2: $03
    add hl, sp                                    ; $7be3: $39
    ld l, $39                                     ; $7be4: $2e $39
    ld h, b                                       ; $7be6: $60
    ld l, c                                       ; $7be7: $69
    ld b, [hl]                                    ; $7be8: $46
    dec bc                                        ; $7be9: $0b
    ld a, [hl-]                                   ; $7bea: $3a
    and l                                         ; $7beb: $a5
    call $b3a0                                    ; $7bec: $cd $a0 $b3
    sbc c                                         ; $7bef: $99
    ld d, $7f                                     ; $7bf0: $16 $7f
    nop                                           ; $7bf2: $00
    sub a                                         ; $7bf3: $97
    ld e, b                                       ; $7bf4: $58
    sbc d                                         ; $7bf5: $9a
    inc h                                         ; $7bf6: $24
    inc c                                         ; $7bf7: $0c
    ret nz                                        ; $7bf8: $c0

    add d                                         ; $7bf9: $82
    ld c, [hl]                                    ; $7bfa: $4e
    sbc e                                         ; $7bfb: $9b
    ld [c], a                                     ; $7bfc: $e2
    ld b, l                                       ; $7bfd: $45
    xor l                                         ; $7bfe: $ad
    ld hl, sp+$5d                                 ; $7bff: $f8 $5d
    sub e                                         ; $7c01: $93
    ld d, e                                       ; $7c02: $53
    ld c, h                                       ; $7c03: $4c
    dec l                                         ; $7c04: $2d
    or h                                          ; $7c05: $b4
    ld a, e                                       ; $7c06: $7b
    rlca                                          ; $7c07: $07
    add hl, sp                                    ; $7c08: $39
    ret                                           ; $7c09: $c9


    dec sp                                        ; $7c0a: $3b
    dec d                                         ; $7c0b: $15
    call z, $9ffd                                 ; $7c0c: $cc $fd $9f
    or $1c                                        ; $7c0f: $f6 $1c
    and c                                         ; $7c11: $a1
    ld c, b                                       ; $7c12: $48
    db $f4                                        ; $7c13: $f4
    sbc e                                         ; $7c14: $9b
    cp $53                                        ; $7c15: $fe $53
    cp h                                          ; $7c17: $bc
    ld h, a                                       ; $7c18: $67
    ld [hl], d                                    ; $7c19: $72
    jp hl                                         ; $7c1a: $e9


    adc h                                         ; $7c1b: $8c
    ld c, e                                       ; $7c1c: $4b
    ld c, $58                                     ; $7c1d: $0e $58
    ret nc                                        ; $7c1f: $d0

    add hl, bc                                    ; $7c20: $09
    push af                                       ; $7c21: $f5
    jp Jump_04b_7f14                              ; $7c22: $c3 $14 $7f


    nop                                           ; $7c25: $00
    ld l, a                                       ; $7c26: $6f
    db $fd                                        ; $7c27: $fd
    ld c, a                                       ; $7c28: $4f
    sbc $78                                       ; $7c29: $de $78
    jr z, jr_04b_7c34                             ; $7c2b: $28 $07

    db $ec                                        ; $7c2d: $ec
    ld h, d                                       ; $7c2e: $62
    pop de                                        ; $7c2f: $d1
    rst $20                                       ; $7c30: $e7
    and c                                         ; $7c31: $a1
    ld e, h                                       ; $7c32: $5c
    ret nc                                        ; $7c33: $d0

jr_04b_7c34:
    ld a, c                                       ; $7c34: $79
    db $e4                                        ; $7c35: $e4
    add c                                         ; $7c36: $81
    cp d                                          ; $7c37: $ba
    call Call_04b_4f78                            ; $7c38: $cd $78 $4f
    ld l, d                                       ; $7c3b: $6a
    db $dd                                        ; $7c3c: $dd
    jp hl                                         ; $7c3d: $e9


    sub [hl]                                      ; $7c3e: $96
    inc [hl]                                      ; $7c3f: $34
    ld h, $68                                     ; $7c40: $26 $68
    xor $43                                       ; $7c42: $ee $43
    ld a, e                                       ; $7c44: $7b
    rst $28                                       ; $7c45: $ef
    ld d, h                                       ; $7c46: $54
    ld c, h                                       ; $7c47: $4c
    push bc                                       ; $7c48: $c5
    push bc                                       ; $7c49: $c5
    call c, $8319                                 ; $7c4a: $dc $19 $83
    inc e                                         ; $7c4d: $1c
    xor b                                         ; $7c4e: $a8
    call c, $e687                                 ; $7c4f: $dc $87 $e6

Call_04b_7c52:
    dec sp                                        ; $7c52: $3b
    ld l, c                                       ; $7c53: $69
    ld b, [hl]                                    ; $7c54: $46
    call c, Call_04b_6b9c                         ; $7c55: $dc $9c $6b
    cp c                                          ; $7c58: $b9
    and a                                         ; $7c59: $a7
    ld c, d                                       ; $7c5a: $4a
    cp a                                          ; $7c5b: $bf
    sub c                                         ; $7c5c: $91
    rst $28                                       ; $7c5d: $ef
    ld l, $2b                                     ; $7c5e: $2e $2b
    ld d, l                                       ; $7c60: $55
    ld [hl], e                                    ; $7c61: $73
    call $f1bd                                    ; $7c62: $cd $bd $f1
    db $dd                                        ; $7c65: $dd

Jump_04b_7c66:
    and [hl]                                      ; $7c66: $a6
    add hl, de                                    ; $7c67: $19
    xor c                                         ; $7c68: $a9
    ld a, b                                       ; $7c69: $78
    rst $10                                       ; $7c6a: $d7
    ld [hl], d                                    ; $7c6b: $72
    cp [hl]                                       ; $7c6c: $be
    rst $20                                       ; $7c6d: $e7
    ld c, [hl]                                    ; $7c6e: $4e
    db $f4                                        ; $7c6f: $f4
    dec [hl]                                      ; $7c70: $35
    cp $db                                        ; $7c71: $fe $db
    call nc, Call_04b_7364                        ; $7c73: $d4 $64 $73
    ld b, c                                       ; $7c76: $41
    rst $20                                       ; $7c77: $e7
    dec sp                                        ; $7c78: $3b
    ld l, c                                       ; $7c79: $69
    ld b, [hl]                                    ; $7c7a: $46
    call c, $d09c                                 ; $7c7b: $dc $9c $d0
    sub e                                         ; $7c7e: $93
    ld d, c                                       ; $7c7f: $51
    inc sp                                        ; $7c80: $33
    sbc $d5                                       ; $7c81: $de $d5
    xor $d9                                       ; $7c83: $ee $d9
    xor a                                         ; $7c85: $af
    pop af                                        ; $7c86: $f1
    rst $28                                       ; $7c87: $ef
    add hl, hl                                    ; $7c88: $29
    xor d                                         ; $7c89: $aa
    adc e                                         ; $7c8a: $8b
    ld l, d                                       ; $7c8b: $6a
    or d                                          ; $7c8c: $b2
    cp c                                          ; $7c8d: $b9
    and b                                         ; $7c8e: $a0
    inc sp                                        ; $7c8f: $33
    call $f818                                    ; $7c90: $cd $18 $f8
    add hl, bc                                    ; $7c93: $09
    jr @+$2e                                      ; $7c94: $18 $2c

Jump_04b_7c96:
    add sp, -$3e                                  ; $7c96: $e8 $c2
    ld a, [bc]                                    ; $7c98: $0a
    ld b, d                                       ; $7c99: $42
    cpl                                           ; $7c9a: $2f
    ld d, $99                                     ; $7c9b: $16 $99
    pop de                                        ; $7c9d: $d1
    ld a, h                                       ; $7c9e: $7c
    rst $30                                       ; $7c9f: $f7
    db $ec                                        ; $7ca0: $ec
    rst $10                                       ; $7ca1: $d7
    ld hl, sp-$09                                 ; $7ca2: $f8 $f7
    and d                                         ; $7ca4: $a2
    ld bc, $58bc                                  ; $7ca5: $01 $bc $58
    ld e, b                                       ; $7ca8: $58
    ld e, $a0                                     ; $7ca9: $1e $a0
    rst $08                                       ; $7cab: $cf
    sbc l                                         ; $7cac: $9d
    ld l, c                                       ; $7cad: $69
    pop bc                                        ; $7cae: $c1
    adc c                                         ; $7caf: $89
    ld l, $86                                     ; $7cb0: $2e $86
    ld l, d                                       ; $7cb2: $6a
    call c, $fa01                                 ; $7cb3: $dc $01 $fa
    sbc a                                         ; $7cb6: $9f
    rst $30                                       ; $7cb7: $f7
    and e                                         ; $7cb8: $a3
    pop de                                        ; $7cb9: $d1
    ld c, a                                       ; $7cba: $4f
    ccf                                           ; $7cbb: $3f
    xor $94                                       ; $7cbc: $ee $94
    xor [hl]                                      ; $7cbe: $ae
    ld b, e                                       ; $7cbf: $43
    call $5778                                    ; $7cc0: $cd $78 $57
    adc l                                         ; $7cc3: $8d
    rst $20                                       ; $7cc4: $e7
    ld e, d                                       ; $7cc5: $5a
    ld l, $f8                                     ; $7cc6: $2e $f8
    adc $4e                                       ; $7cc8: $ce $4e
    ld b, $0f                                     ; $7cca: $06 $0f
    ld a, c                                       ; $7ccc: $79
    rra                                           ; $7ccd: $1f
    ld e, d                                       ; $7cce: $5a
    ret nc                                        ; $7ccf: $d0

    ld h, c                                       ; $7cd0: $61
    xor $bd                                       ; $7cd1: $ee $bd
    ld d, e                                       ; $7cd3: $53
    ld sp, $1715                                  ; $7cd4: $31 $15 $17
    di                                            ; $7cd7: $f3
    ld h, d                                       ; $7cd8: $62
    sub c                                         ; $7cd9: $91
    add hl, de                                    ; $7cda: $19
    dec l                                         ; $7cdb: $2d
    add sp, $64                                   ; $7cdc: $e8 $64
    ld [hl], e                                    ; $7cde: $73
    and a                                         ; $7cdf: $a7
    ld [$2455], a                                 ; $7ce0: $ea $55 $24
    ld [$9cda], a                                 ; $7ce3: $ea $da $9c
    call nz, Call_04b_6240                        ; $7ce6: $c4 $40 $62
    sub a                                         ; $7ce9: $97
    adc l                                         ; $7cea: $8d
    sbc d                                         ; $7ceb: $9a
    pop af                                        ; $7cec: $f1
    xor [hl]                                      ; $7ced: $ae

jr_04b_7cee:
    ld [hl], a                                    ; $7cee: $77
    or d                                          ; $7cef: $b2
    add hl, sp                                    ; $7cf0: $39
    ld a, a                                       ; $7cf1: $7f

Call_04b_7cf2:
    dec de                                        ; $7cf2: $1b
    call Call_04b_6eb4                            ; $7cf3: $cd $b4 $6e
    ld [hl], e                                    ; $7cf6: $73
    ld sp, hl                                     ; $7cf7: $f9
    pop bc                                        ; $7cf8: $c1
    ld b, b                                       ; $7cf9: $40
    sbc e                                         ; $7cfa: $9b
    sub e                                         ; $7cfb: $93
    ld h, [hl]                                    ; $7cfc: $66
    call nz, Call_04b_61cd                        ; $7cfd: $c4 $cd $61
    ld c, [hl]                                    ; $7d00: $4e
    pop af                                        ; $7d01: $f1
    add a                                         ; $7d02: $87
    and b                                         ; $7d03: $a0
    ld h, [hl]                                    ; $7d04: $66
    ld a, h                                       ; $7d05: $7c
    nop                                           ; $7d06: $00
    ld l, a                                       ; $7d07: $6f
    ld a, h                                       ; $7d08: $7c
    or a                                          ; $7d09: $b7
    db $e4                                        ; $7d0a: $e4
    ret                                           ; $7d0b: $c9


    ld d, d                                       ; $7d0c: $52
    ld c, [hl]                                    ; $7d0d: $4e
    jr z, @+$17                                   ; $7d0e: $28 $15

    ld a, l                                       ; $7d10: $7d
    di                                            ; $7d11: $f3
    nop                                           ; $7d12: $00
    rst $08                                       ; $7d13: $cf
    push af                                       ; $7d14: $f5
    db $fc                                        ; $7d15: $fc
    db $d3                                        ; $7d16: $d3
    add a                                         ; $7d17: $87
    ld b, l                                       ; $7d18: $45
    xor a                                         ; $7d19: $af
    ld a, $04                                     ; $7d1a: $3e $04
    dec d                                         ; $7d1c: $15
    add d                                         ; $7d1d: $82
    ld c, d                                       ; $7d1e: $4a
    rlca                                          ; $7d1f: $07
    cpl                                           ; $7d20: $2f
    and d                                         ; $7d21: $a2
    ld d, d                                       ; $7d22: $52
    push de                                       ; $7d23: $d5
    jr jr_04b_7cee                                ; $7d24: $18 $c8

    or b                                          ; $7d26: $b0
    add sp, $0f                                   ; $7d27: $e8 $0f
    xor a                                         ; $7d29: $af
    dec d                                         ; $7d2a: $15
    inc [hl]                                      ; $7d2b: $34
    ld c, e                                       ; $7d2c: $4b
    add $d8                                       ; $7d2d: $c6 $d8
    inc bc                                        ; $7d2f: $03
    xor a                                         ; $7d30: $af
    dec d                                         ; $7d31: $15
    inc [hl]                                      ; $7d32: $34
    rst $20                                       ; $7d33: $e7
    ld e, d                                       ; $7d34: $5a
    xor $a9                                       ; $7d35: $ee $a9
    ld a, [hl-]                                   ; $7d37: $3a
    or d                                          ; $7d38: $b2
    and h                                         ; $7d39: $a4
    ld c, $af                                     ; $7d3a: $0e $af
    and a                                         ; $7d3c: $a7
    add hl, de                                    ; $7d3d: $19
    sbc $a5                                       ; $7d3e: $de $a5
    or h                                          ; $7d40: $b4
    add c                                         ; $7d41: $81
    inc bc                                        ; $7d42: $03
    xor a                                         ; $7d43: $af
    and a                                         ; $7d44: $a7
    add hl, de                                    ; $7d45: $19
    sbc $05                                       ; $7d46: $de $05
    ld b, a                                       ; $7d48: $47
    sub d                                         ; $7d49: $92
    push de                                       ; $7d4a: $d5
    rlca                                          ; $7d4b: $07
    xor a                                         ; $7d4c: $af
    rst $20                                       ; $7d4d: $e7
    cpl                                           ; $7d4e: $2f
    db $f4                                        ; $7d4f: $f4
    ld hl, $85fa                                  ; $7d50: $21 $fa $85
    ld c, $cf                                     ; $7d53: $0e $cf
    ret nz                                        ; $7d55: $c0

    ld h, [hl]                                    ; $7d56: $66
    or d                                          ; $7d57: $b2
    ld b, c                                       ; $7d58: $41
    ld c, [hl]                                    ; $7d59: $4e
    ld [hl], d                                    ; $7d5a: $72
    di                                            ; $7d5b: $f3
    nop                                           ; $7d5c: $00
    ld l, a                                       ; $7d5d: $6f
    inc d                                         ; $7d5e: $14
    inc [hl]                                      ; $7d5f: $34
    ld bc, $0e8a                                  ; $7d60: $01 $8a $0e
    ld l, a                                       ; $7d63: $6f
    sub l                                         ; $7d64: $95
    ld e, h                                       ; $7d65: $5c
    db $fd                                        ; $7d66: $fd
    dec hl                                        ; $7d67: $2b
    ld sp, $3ec1                                  ; $7d68: $31 $c1 $3e
    inc d                                         ; $7d6b: $14
    ld d, [hl]                                    ; $7d6c: $56
    inc h                                         ; $7d6d: $24
    ld l, d                                       ; $7d6e: $6a
    ld e, $4f                                     ; $7d6f: $1e $4f
    ld d, l                                       ; $7d71: $55
    pop bc                                        ; $7d72: $c1
    jp $d452                                      ; $7d73: $c3 $52 $d4


    inc a                                         ; $7d76: $3c
    nop                                           ; $7d77: $00
    ld c, a                                       ; $7d78: $4f
    adc d                                         ; $7d79: $8a
    ld h, h                                       ; $7d7a: $64
    ld e, c                                       ; $7d7b: $59
    dec [hl]                                      ; $7d7c: $35
    rrca                                          ; $7d7d: $0f
    rst $08                                       ; $7d7e: $cf
    sub e                                         ; $7d7f: $93
    pop bc                                        ; $7d80: $c1
    ld b, e                                       ; $7d81: $43
    ld a, $00                                     ; $7d82: $3e $00
    rst $08                                       ; $7d84: $cf
    cp b                                          ; $7d85: $b8
    ld c, l                                       ; $7d86: $4d
    and c                                         ; $7d87: $a1
    push de                                       ; $7d88: $d5
    cp $00                                        ; $7d89: $fe $00
    xor a                                         ; $7d8b: $af
    push de                                       ; $7d8c: $d5
    add hl, sp                                    ; $7d8d: $39
    scf                                           ; $7d8e: $37
    dec h                                         ; $7d8f: $25
    add hl, de                                    ; $7d90: $19
    inc a                                         ; $7d91: $3c
    db $e4                                        ; $7d92: $e4
    inc bc                                        ; $7d93: $03
    xor a                                         ; $7d94: $af
    ld l, e                                       ; $7d95: $6b
    inc sp                                        ; $7d96: $33
    add sp, $00                                   ; $7d97: $e8 $00
    ld l, a                                       ; $7d99: $6f
    db $fd                                        ; $7d9a: $fd
    ld c, a                                       ; $7d9b: $4f
    and a                                         ; $7d9c: $a7
    ld [de], a                                    ; $7d9d: $12
    inc [hl]                                      ; $7d9e: $34
    call z, $2db9                                 ; $7d9f: $cc $b9 $2d
    dec e                                         ; $7da2: $1d
    ld l, a                                       ; $7da3: $6f
    sub l                                         ; $7da4: $95
    add h                                         ; $7da5: $84
    ld [hl], d                                    ; $7da6: $72
    ret                                           ; $7da7: $c9


    ld [hl], a                                    ; $7da8: $77
    sub c                                         ; $7da9: $91
    ld bc, $01ec                                  ; $7daa: $01 $ec $01
    rst $10                                       ; $7dad: $d7
    and d                                         ; $7dae: $a2
    ret z                                         ; $7daf: $c8

    ld [hl], c                                    ; $7db0: $71
    ld [hl], d                                    ; $7db1: $72
    xor $ff                                       ; $7db2: $ee $ff
    inc [hl]                                      ; $7db4: $34
    add b                                         ; $7db5: $80
    and d                                         ; $7db6: $a2
    inc bc                                        ; $7db7: $03
    rst $08                                       ; $7db8: $cf
    db $fd                                        ; $7db9: $fd
    inc a                                         ; $7dba: $3c
    scf                                           ; $7dbb: $37
    rrca                                          ; $7dbc: $0f
    ld c, a                                       ; $7dbd: $4f
    adc d                                         ; $7dbe: $8a
    ld [hl], h                                    ; $7dbf: $74
    pop de                                        ; $7dc0: $d1
    ld h, e                                       ; $7dc1: $63
    add d                                         ; $7dc2: $82
    inc bc                                        ; $7dc3: $03
    xor a                                         ; $7dc4: $af
    ld l, e                                       ; $7dc5: $6b
    inc sp                                        ; $7dc6: $33
    ld c, b                                       ; $7dc7: $48
    ld h, e                                       ; $7dc8: $63
    ld a, l                                       ; $7dc9: $7d
    ret nc                                        ; $7dca: $d0

    inc bc                                        ; $7dcb: $03
    xor a                                         ; $7dcc: $af
    inc sp                                        ; $7dcd: $33
    and [hl]                                      ; $7dce: $a6
    add h                                         ; $7dcf: $84
    or h                                          ; $7dd0: $b4
    dec h                                         ; $7dd1: $25
    rra                                           ; $7dd2: $1f
    cpl                                           ; $7dd3: $2f
    ld e, b                                       ; $7dd4: $58
    add d                                         ; $7dd5: $82
    or e                                          ; $7dd6: $b3
    ld e, c                                       ; $7dd7: $59
    ld [hl], h                                    ; $7dd8: $74
    nop                                           ; $7dd9: $00
    ld l, a                                       ; $7dda: $6f
    sub b                                         ; $7ddb: $90
    add hl, de                                    ; $7ddc: $19
    jr c, jr_04b_7ddf                             ; $7ddd: $38 $00

jr_04b_7ddf:
    ld l, a                                       ; $7ddf: $6f
    ld h, e                                       ; $7de0: $63
    ld a, [$7ff0]                                 ; $7de1: $fa $f0 $7f
    ld [hl], l                                    ; $7de4: $75
    nop                                           ; $7de5: $00
    ld l, a                                       ; $7de6: $6f
    ld h, c                                       ; $7de7: $61
    ld h, b                                       ; $7de8: $60
    jp hl                                         ; $7de9: $e9


    rst $20                                       ; $7dea: $e7
    sub [hl]                                      ; $7deb: $96
    inc l                                         ; $7dec: $2c
    ld a, l                                       ; $7ded: $7d
    xor c                                         ; $7dee: $a9
    ld a, c                                       ; $7def: $79
    nop                                           ; $7df0: $00
    ld d, a                                       ; $7df1: $57
    dec e                                         ; $7df2: $1d
    ld b, c                                       ; $7df3: $41
    xor b                                         ; $7df4: $a8
    xor $5e                                       ; $7df5: $ee $5e
    ld a, b                                       ; $7df7: $78
    push hl                                       ; $7df8: $e5
    nop                                           ; $7df9: $00
    cpl                                           ; $7dfa: $2f
    ld b, a                                       ; $7dfb: $47
    or d                                          ; $7dfc: $b2
    add h                                         ; $7dfd: $84
    add hl, bc                                    ; $7dfe: $09
    ld c, $ef                                     ; $7dff: $0e $ef
    db $fd                                        ; $7e01: $fd
    jp z, $8ebd                                   ; $7e02: $ca $bd $8e

    ld d, d                                       ; $7e05: $52
    ld d, [hl]                                    ; $7e06: $56
    xor e                                         ; $7e07: $ab
    inc bc                                        ; $7e08: $03
    cpl                                           ; $7e09: $2f
    or [hl]                                       ; $7e0a: $b6
    inc [hl]                                      ; $7e0b: $34
    ld c, c                                       ; $7e0c: $49
    ld b, $0f                                     ; $7e0d: $06 $0f
    add hl, sp                                    ; $7e0f: $39
    ld a, [hl+]                                   ; $7e10: $2a
    ld h, e                                       ; $7e11: $63
    add d                                         ; $7e12: $82
    and $01                                       ; $7e13: $e6 $01
    ld l, a                                       ; $7e15: $6f
    sub l                                         ; $7e16: $95
    and h                                         ; $7e17: $a4
    ld b, [hl]                                    ; $7e18: $46
    ret                                           ; $7e19: $c9


    push de                                       ; $7e1a: $d5
    dec b                                         ; $7e1b: $05
    ld h, h                                       ; $7e1c: $64
    pop de                                        ; $7e1d: $d1
    ld bc, $9def                                  ; $7e1e: $01 $ef $9d
    ld c, h                                       ; $7e21: $4c
    jp z, $d20e                                   ; $7e22: $ca $0e $d2

    sub l                                         ; $7e25: $95
    rlca                                          ; $7e26: $07
    cpl                                           ; $7e27: $2f
    ld a, [de]                                    ; $7e28: $1a
    ret nz                                        ; $7e29: $c0

    ld c, [hl]                                    ; $7e2a: $4e
    ret nz                                        ; $7e2b: $c0

    ret nz                                        ; $7e2c: $c0

    ld [hl], l                                    ; $7e2d: $75
    or h                                          ; $7e2e: $b4
    ld l, [hl]                                    ; $7e2f: $6e
    ld e, $2f                                     ; $7e30: $1e $2f
    ld a, [de]                                    ; $7e32: $1a
    ld b, b                                       ; $7e33: $40
    dec b                                         ; $7e34: $05
    rrca                                          ; $7e35: $0f
    cp e                                          ; $7e36: $bb
    rra                                           ; $7e37: $1f
    ret                                           ; $7e38: $c9


    ld [de], a                                    ; $7e39: $12
    ld h, $38                                     ; $7e3a: $26 $38
    nop                                           ; $7e3c: $00
    cpl                                           ; $7e3d: $2f
    call nc, Call_04b_4e6d                        ; $7e3e: $d4 $6d $4e
    ret nz                                        ; $7e41: $c0

    ret nz                                        ; $7e42: $c0

    ld [hl], l                                    ; $7e43: $75
    or h                                          ; $7e44: $b4
    ld l, [hl]                                    ; $7e45: $6e
    ld e, $af                                     ; $7e46: $1e $af
    jr jr_04b_7e63                                ; $7e48: $18 $19

    and h                                         ; $7e4a: $a4
    sbc l                                         ; $7e4b: $9d
    db $fd                                        ; $7e4c: $fd
    ld h, h                                       ; $7e4d: $64
    ld bc, $9beb                                  ; $7e4e: $01 $eb $9b
    rlca                                          ; $7e51: $07
    xor a                                         ; $7e52: $af
    or e                                          ; $7e53: $b3
    db $e3                                        ; $7e54: $e3
    or c                                          ; $7e55: $b1
    jp nz, $07d7                                  ; $7e56: $c2 $d7 $07

    rst $08                                       ; $7e59: $cf
    dec [hl]                                      ; $7e5a: $35
    ld a, e                                       ; $7e5b: $7b
    ld l, [hl]                                    ; $7e5c: $6e
    ld a, [$2cce]                                 ; $7e5d: $fa $ce $2c
    ld e, l                                       ; $7e60: $5d
    db $d3                                        ; $7e61: $d3
    rlca                                          ; $7e62: $07

jr_04b_7e63:
    cpl                                           ; $7e63: $2f
    and c                                         ; $7e64: $a1
    ld e, e                                       ; $7e65: $5b
    ld [hl], e                                    ; $7e66: $73
    or $a3                                        ; $7e67: $f6 $a3
    ldh a, [$7f]                                  ; $7e69: $f0 $7f
    ld [hl], b                                    ; $7e6b: $70
    nop                                           ; $7e6c: $00
    cpl                                           ; $7e6d: $2f
    cp h                                          ; $7e6e: $bc
    or d                                          ; $7e6f: $b2
    inc de                                        ; $7e70: $13
    and [hl]                                      ; $7e71: $a6
    ld [c], a                                     ; $7e72: $e2
    inc bc                                        ; $7e73: $03
    ld l, a                                       ; $7e74: $6f
    cp h                                          ; $7e75: $bc
    or d                                          ; $7e76: $b2
    inc de                                        ; $7e77: $13
    and [hl]                                      ; $7e78: $a6
    ld [c], a                                     ; $7e79: $e2
    inc bc                                        ; $7e7a: $03
    ld l, a                                       ; $7e7b: $6f
    cp h                                          ; $7e7c: $bc
    ld [hl-], a                                   ; $7e7d: $32
    or a                                          ; $7e7e: $b7
    and h                                         ; $7e7f: $a4
    or c                                          ; $7e80: $b1
    ld [$4f00], a                                 ; $7e81: $ea $00 $4f
    ld l, d                                       ; $7e84: $6a
    ld e, l                                       ; $7e85: $5d
    dec [hl]                                      ; $7e86: $35
    ld bc, $d703                                  ; $7e87: $01 $03 $d7
    pop de                                        ; $7e8a: $d1
    cp d                                          ; $7e8b: $ba
    ld a, c                                       ; $7e8c: $79
    nop                                           ; $7e8d: $00
    cpl                                           ; $7e8e: $2f
    ld a, [de]                                    ; $7e8f: $1a
    ld b, b                                       ; $7e90: $40
    dec b                                         ; $7e91: $05
    rrca                                          ; $7e92: $0f
    dec sp                                        ; $7e93: $3b
    adc h                                         ; $7e94: $8c
    ld [hl+], a                                   ; $7e95: $22

Call_04b_7e96:
    daa                                           ; $7e96: $27
    sub c                                         ; $7e97: $91
    adc e                                         ; $7e98: $8b
    ld a, h                                       ; $7e99: $7c
    nop                                           ; $7e9a: $00
    rst $10                                       ; $7e9b: $d7
    and d                                         ; $7e9c: $a2
    ret z                                         ; $7e9d: $c8

    ld c, c                                       ; $7e9e: $49

Jump_04b_7e9f:
    db $e4                                        ; $7e9f: $e4
    ld [hl+], a                                   ; $7ea0: $22
    rra                                           ; $7ea1: $1f
    ld l, a                                       ; $7ea2: $6f
    ld [hl+], a                                   ; $7ea3: $22
    ld b, e                                       ; $7ea4: $43
    ld c, $33                                     ; $7ea5: $0e $33
    ld h, $38                                     ; $7ea7: $26 $38
    nop                                           ; $7ea9: $00
    ld l, a                                       ; $7eaa: $6f
    sub l                                         ; $7eab: $95
    ld c, [hl]                                    ; $7eac: $4e
    ld c, l                                       ; $7ead: $4d
    push hl                                       ; $7eae: $e5
    ld [$795f], a                                 ; $7eaf: $ea $5f $79
    nop                                           ; $7eb2: $00
    sub a                                         ; $7eb3: $97
    and l                                         ; $7eb4: $a5
    ld a, a                                       ; $7eb5: $7f
    or e                                          ; $7eb6: $b3
    add d                                         ; $7eb7: $82
    add a                                         ; $7eb8: $87
    sbc l                                         ; $7eb9: $9d
    inc h                                         ; $7eba: $24
    add e                                         ; $7ebb: $83
    add a                                         ; $7ebc: $87
    ld a, h                                       ; $7ebd: $7c
    nop                                           ; $7ebe: $00
    ld l, a                                       ; $7ebf: $6f
    ld a, l                                       ; $7ec0: $7d
    xor l                                         ; $7ec1: $ad
    db $eb                                        ; $7ec2: $eb
    ld de, $4274                                  ; $7ec3: $11 $74 $42
    ld sp, hl                                     ; $7ec6: $f9
    cp e                                          ; $7ec7: $bb
    dec h                                         ; $7ec8: $25
    ld c, h                                       ; $7ec9: $4c
    ld [hl], b                                    ; $7eca: $70
    nop                                           ; $7ecb: $00
    ld d, a                                       ; $7ecc: $57
    dec sp                                        ; $7ecd: $3b
    ld l, c                                       ; $7ece: $69
    ld b, [hl]                                    ; $7ecf: $46
    call c, Call_04b_585c                         ; $7ed0: $dc $5c $58
    ld b, c                                       ; $7ed3: $41
    ld l, b                                       ; $7ed4: $68
    xor [hl]                                      ; $7ed5: $ae
    call $509d                                    ; $7ed6: $cd $9d $50
    db $eb                                        ; $7ed9: $eb
    jp z, $843a                                   ; $7eda: $ca $3a $84

    and b                                         ; $7edd: $a0
    db $e3                                        ; $7ede: $e3
    rst $28                                       ; $7edf: $ef
    sub [hl]                                      ; $7ee0: $96
    inc a                                         ; $7ee1: $3c
    ld e, c                                       ; $7ee2: $59
    jp z, $a509                                   ; $7ee3: $ca $09 $a5

    and d                                         ; $7ee6: $a2
    rla                                           ; $7ee7: $17
    ld a, a                                       ; $7ee8: $7f
    nop                                           ; $7ee9: $00
    ld d, a                                       ; $7eea: $57
    dec sp                                        ; $7eeb: $3b
    ld l, c                                       ; $7eec: $69
    ld b, [hl]                                    ; $7eed: $46
    call c, Call_04b_585c                         ; $7eee: $dc $5c $58
    ld b, c                                       ; $7ef1: $41
    ld l, b                                       ; $7ef2: $68
    ld l, $e8                                     ; $7ef3: $2e $e8
    jp c, $281c                                   ; $7ef5: $da $1c $28

    ld h, c                                       ; $7ef8: $61
    add d                                         ; $7ef9: $82
    sbc c                                         ; $7efa: $99
    dec h                                         ; $7efb: $25
    sbc e                                         ; $7efc: $9b
    sbc $0b                                       ; $7efd: $de $0b
    xor a                                         ; $7eff: $af
    adc h                                         ; $7f00: $8c
    ld c, e                                       ; $7f01: $4b
    ld c, $00                                     ; $7f02: $0e $00
    dec b                                         ; $7f04: $05
    ld [hl], l                                    ; $7f05: $75
    sbc e                                         ; $7f06: $9b
    pop af                                        ; $7f07: $f1
    ld bc, $3b57                                  ; $7f08: $01 $57 $3b
    ld l, c                                       ; $7f0b: $69
    ld b, [hl]                                    ; $7f0c: $46
    call c, Call_04b_585c                         ; $7f0d: $dc $5c $58
    ld b, c                                       ; $7f10: $41
    ld l, b                                       ; $7f11: $68
    ld l, $b1                                     ; $7f12: $2e $b1

Call_04b_7f14:
Jump_04b_7f14:
    inc a                                         ; $7f14: $3c
    ret nc                                        ; $7f15: $d0

    ldh a, [rOCPD]                                ; $7f16: $f0 $6b
    xor b                                         ; $7f18: $a8
    add hl, de                                    ; $7f19: $19
    rst $28                                       ; $7f1a: $ef
    ld a, d                                       ; $7f1b: $7a
    rla                                           ; $7f1c: $17
    sbc c                                         ; $7f1d: $99
    add c                                         ; $7f1e: $81
    and c                                         ; $7f1f: $a1
    sbc d                                         ; $7f20: $9a

Call_04b_7f21:
    ld l, e                                       ; $7f21: $6b
    add hl, sp                                    ; $7f22: $39
    push bc                                       ; $7f23: $c5
    call nc, $35ca                                ; $7f24: $d4 $ca $35
    rla                                           ; $7f27: $17
    ld [hl], h                                    ; $7f28: $74
    ld b, d                                       ; $7f29: $42
    sub e                                         ; $7f2a: $93
    rst $20                                       ; $7f2b: $e7
    dec e                                         ; $7f2c: $1d
    inc a                                         ; $7f2d: $3c
    ld d, a                                       ; $7f2e: $57
    inc hl                                        ; $7f2f: $23
    adc b                                         ; $7f30: $88
    ld [hl], a                                    ; $7f31: $77
    ld e, c                                       ; $7f32: $59
    sbc [hl]                                      ; $7f33: $9e
    or h                                          ; $7f34: $b4
    sbc h                                         ; $7f35: $9c
    scf                                           ; $7f36: $37
    ld e, [hl]                                    ; $7f37: $5e
    ret nc                                        ; $7f38: $d0

    sbc l                                         ; $7f39: $9d
    adc h                                         ; $7f3a: $8c
    rst $30                                       ; $7f3b: $f7
    jp nz, Jump_000_0b2b                          ; $7f3c: $c2 $2b $0b

    dec hl                                        ; $7f3f: $2b
    ldh a, [$dc]                                  ; $7f40: $f0 $dc
    sub d                                         ; $7f42: $92
    cp $d4                                        ; $7f43: $fe $d4
    adc h                                         ; $7f45: $8c
    rrca                                          ; $7f46: $0f
    ld d, a                                       ; $7f47: $57
    dec sp                                        ; $7f48: $3b
    ld l, c                                       ; $7f49: $69
    ld b, [hl]                                    ; $7f4a: $46
    call c, Call_04b_585c                         ; $7f4b: $dc $5c $58
    ld b, c                                       ; $7f4e: $41
    ld l, b                                       ; $7f4f: $68
    ld l, $e8                                     ; $7f50: $2e $e8
    ld e, [hl]                                    ; $7f52: $5e
    ld a, b                                       ; $7f53: $78
    ld h, l                                       ; $7f54: $65
    rra                                           ; $7f55: $1f
    ld [bc], a                                    ; $7f56: $02
    sub l                                         ; $7f57: $95
    add h                                         ; $7f58: $84
    sub d                                         ; $7f59: $92
    db $e3                                        ; $7f5a: $e3
    ld e, l                                       ; $7f5b: $5d
    sub [hl]                                      ; $7f5c: $96
    and a                                         ; $7f5d: $a7
    ld sp, $3c90                                  ; $7f5e: $31 $90 $3c
    db $d3                                        ; $7f61: $d3
    ld [$168b], a                                 ; $7f62: $ea $8b $16
    ld [hl], h                                    ; $7f65: $74
    adc d                                         ; $7f66: $8a
    ld e, e                                       ; $7f67: $5b
    xor a                                         ; $7f68: $af
    ld d, $b5                                     ; $7f69: $16 $b5
    or h                                          ; $7f6b: $b4
    rla                                           ; $7f6c: $17
    ld e, [hl]                                    ; $7f6d: $5e
    sbc c                                         ; $7f6e: $99
    inc h                                         ; $7f6f: $24
    inc c                                         ; $7f70: $0c
    nop                                           ; $7f71: $00
    adc e                                         ; $7f72: $8b
    ccf                                           ; $7f73: $3f
    nop                                           ; $7f74: $00
    ld d, a                                       ; $7f75: $57
    dec sp                                        ; $7f76: $3b
    ld l, c                                       ; $7f77: $69
    ld b, [hl]                                    ; $7f78: $46
    call c, $441c                                 ; $7f79: $dc $1c $44
    rst $18                                       ; $7f7c: $df
    dec sp                                        ; $7f7d: $3b
    ldh a, [rHDMA2]                               ; $7f7e: $f0 $52
    ld [hl], e                                    ; $7f80: $73
    ld l, l                                       ; $7f81: $6d
    ld l, $34                                     ; $7f82: $2e $34
    ld d, b                                       ; $7f84: $50
    dec l                                         ; $7f85: $2d
    jr c, jr_04b_7fc0                             ; $7f86: $38 $38

    rst $10                                       ; $7f88: $d7
    ld [hl], d                                    ; $7f89: $72
    ld c, a                                       ; $7f8a: $4f
    push de                                       ; $7f8b: $d5
    sub c                                         ; $7f8c: $91
    dec h                                         ; $7f8d: $25
    dec [hl]                                      ; $7f8e: $35
    adc a                                         ; $7f8f: $8f
    db $dd                                        ; $7f90: $dd
    add a                                         ; $7f91: $87
    ld d, $74                                     ; $7f92: $16 $74
    ld e, h                                       ; $7f94: $5c
    ret nc                                        ; $7f95: $d0

    ld d, h                                       ; $7f96: $54
    ld l, h                                       ; $7f97: $6c
    jp hl                                         ; $7f98: $e9


    ld c, e                                       ; $7f99: $4b
    res 2, [hl]                                   ; $7f9a: $cb $96
    cp h                                          ; $7f9c: $bc
    sbc c                                         ; $7f9d: $99
    and $f8                                       ; $7f9e: $e6 $f8
    nop                                           ; $7fa0: $00
    ld d, a                                       ; $7fa1: $57
    dec sp                                        ; $7fa2: $3b
    ld l, c                                       ; $7fa3: $69
    ld b, [hl]                                    ; $7fa4: $46
    call c, $441c                                 ; $7fa5: $dc $1c $44
    rst $18                                       ; $7fa8: $df
    dec sp                                        ; $7fa9: $3b
    ldh a, [rHDMA2]                               ; $7faa: $f0 $52
    ld [hl], e                                    ; $7fac: $73
    ld l, l                                       ; $7fad: $6d
    xor $b9                                       ; $7fae: $ee $b9
    rst $28                                       ; $7fb0: $ef
    ld hl, sp-$1a                                 ; $7fb1: $f8 $e6
    ld e, [hl]                                    ; $7fb3: $5e
    ld c, a                                       ; $7fb4: $4f
    inc sp                                        ; $7fb5: $33
    sbc h                                         ; $7fb6: $9c
    rst $00                                       ; $7fb7: $c7
    adc [hl]                                      ; $7fb8: $8e
    dec bc                                        ; $7fb9: $0b
    sbc d                                         ; $7fba: $9a
    ld l, e                                       ; $7fbb: $6b
    ld [hl], e                                    ; $7fbc: $73
    ld e, h                                       ; $7fbd: $5c
    ret nc                                        ; $7fbe: $d0

    ld d, h                                       ; $7fbf: $54

jr_04b_7fc0:
    ld l, h                                       ; $7fc0: $6c
    jp hl                                         ; $7fc1: $e9


    ld c, e                                       ; $7fc2: $4b
    sub e                                         ; $7fc3: $93
    jp c, $5e20                                   ; $7fc4: $da $20 $5e

    ld [hl], e                                    ; $7fc7: $73
    ld h, c                                       ; $7fc8: $61
    and e                                         ; $7fc9: $a3
    adc c                                         ; $7fca: $89
    inc [hl]                                      ; $7fcb: $34
    and [hl]                                      ; $7fcc: $a6
    call c, Call_04b_78c9                         ; $7fcd: $dc $c9 $78
    cpl                                           ; $7fd0: $2f
    cp h                                          ; $7fd1: $bc
    ld [hl-], a                                   ; $7fd2: $32
    inc de                                        ; $7fd3: $13
    add l                                         ; $7fd4: $85
    sub [hl]                                      ; $7fd5: $96
    ld e, $c1                                     ; $7fd6: $1e $c1
    ld [hl+], a                                   ; $7fd8: $22
    inc sp                                        ; $7fd9: $33
    ret                                           ; $7fda: $c9


    pop af                                        ; $7fdb: $f1
    ld bc, $ffff                                  ; $7fdc: $01 $ff $ff
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

Jump_04b_7ff0:
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
