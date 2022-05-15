; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $034", ROMX[$4000], BANK[$34]

    inc [hl]                                      ; $4000: $34
    ret                                           ; $4001: $c9


    ld e, a                                       ; $4002: $5f
    ld h, h                                       ; $4003: $64
    ld c, h                                       ; $4004: $4c
    ld b, a                                       ; $4005: $47
    ld e, l                                       ; $4006: $5d
    nop                                           ; $4007: $00
    sub [hl]                                      ; $4008: $96
    inc [hl]                                      ; $4009: $34
    rlca                                          ; $400a: $07
    ld b, e                                       ; $400b: $43
    ld sp, hl                                     ; $400c: $f9
    dec hl                                        ; $400d: $2b
    ld a, h                                       ; $400e: $7c
    ret nz                                        ; $400f: $c0

    ld b, h                                       ; $4010: $44
    cp $68                                        ; $4011: $fe $68
    ldh a, [$37]                                  ; $4013: $f0 $37
    ld h, e                                       ; $4015: $63
    inc de                                        ; $4016: $13
    ld hl, sp-$15                                 ; $4017: $f8 $eb
    ei                                            ; $4019: $fb
    xor h                                         ; $401a: $ac
    ei                                            ; $401b: $fb
    add hl, hl                                    ; $401c: $29
    dec [hl]                                      ; $401d: $35
    sub [hl]                                      ; $401e: $96
    call nz, $aa5a                                ; $401f: $c4 $5a $aa
    add e                                         ; $4022: $83
    cp a                                          ; $4023: $bf
    ld h, [hl]                                    ; $4024: $66
    and [hl]                                      ; $4025: $a6
    ld b, [hl]                                    ; $4026: $46
    ld l, a                                       ; $4027: $6f
    jp c, $de11                                   ; $4028: $da $11 $de

    ld b, l                                       ; $402b: $45
    xor b                                         ; $402c: $a8
    ld d, [hl]                                    ; $402d: $56
    ld [hl], l                                    ; $402e: $75
    ld h, h                                       ; $402f: $64
    ld e, [hl]                                    ; $4030: $5e
    and b                                         ; $4031: $a0
    pop bc                                        ; $4032: $c1
    ld e, a                                       ; $4033: $5f
    sub c                                         ; $4034: $91
    cp a                                          ; $4035: $bf
    ld l, e                                       ; $4036: $6b
    db $eb                                        ; $4037: $eb
    ret c                                         ; $4038: $d8

    ld c, $fc                                     ; $4039: $0e $fc

Jump_034_403b:
    cpl                                           ; $403b: $2f
    dec a                                         ; $403c: $3d
    pop hl                                        ; $403d: $e1
    dec hl                                        ; $403e: $2b
    sub $82                                       ; $403f: $d6 $82
    inc bc                                        ; $4041: $03
    ld b, d                                       ; $4042: $42
    ld [c], a                                     ; $4043: $e2
    rst $08                                       ; $4044: $cf
    inc sp                                        ; $4045: $33
    halt                                          ; $4046: $76
    db $e4                                        ; $4047: $e4
    ret c                                         ; $4048: $d8

    db $fc                                        ; $4049: $fc
    add c                                         ; $404a: $81
    ld de, $55aa                                  ; $404b: $11 $aa $55
    dec e                                         ; $404e: $1d
    db $eb                                        ; $404f: $eb
    dec l                                         ; $4050: $2d
    or l                                          ; $4051: $b5
    xor h                                         ; $4052: $ac
    ld [hl], a                                    ; $4053: $77
    add $26                                       ; $4054: $c6 $26

jr_034_4056:
    ldh a, [$d7]                                  ; $4056: $f0 $d7
    cp e                                          ; $4058: $bb
    ld b, l                                       ; $4059: $45
    cp e                                          ; $405a: $bb
    ld a, [hl-]                                   ; $405b: $3a
    and h                                         ; $405c: $a4
    sub [hl]                                      ; $405d: $96
    dec de                                        ; $405e: $1b
    ld c, l                                       ; $405f: $4d
    inc d                                         ; $4060: $14
    rst $28                                       ; $4061: $ef
    cp c                                          ; $4062: $b9
    rst $30                                       ; $4063: $f7
    ld [hl], b                                    ; $4064: $70
    adc a                                         ; $4065: $8f
    cp a                                          ; $4066: $bf
    push de                                       ; $4067: $d5
    sbc $ce                                       ; $4068: $de $ce
    ld l, e                                       ; $406a: $6b
    pop de                                        ; $406b: $d1
    ld [hl], c                                    ; $406c: $71
    inc b                                         ; $406d: $04
    and l                                         ; $406e: $a5
    ld [hl], c                                    ; $406f: $71
    add hl, hl                                    ; $4070: $29
    db $ec                                        ; $4071: $ec
    and b                                         ; $4072: $a0
    push hl                                       ; $4073: $e5
    xor $d5                                       ; $4074: $ee $d5
    add [hl]                                      ; $4076: $86
    or h                                          ; $4077: $b4
    dec e                                         ; $4078: $1d
    pop hl                                        ; $4079: $e1
    ld e, b                                       ; $407a: $58
    ld c, e                                       ; $407b: $4b
    ld h, e                                       ; $407c: $63
    ld a, e                                       ; $407d: $7b
    jr c, jr_034_4056                             ; $407e: $38 $d6

    jp nc, $fe59                                  ; $4080: $d2 $59 $fe

    ld de, $dc34                                  ; $4083: $11 $34 $dc
    ld b, b                                       ; $4086: $40
    add sp, -$0f                                  ; $4087: $e8 $f1
    or e                                          ; $4089: $b3
    ld b, b                                       ; $408a: $40
    cp $ce                                        ; $408b: $fe $ce
    db $fd                                        ; $408d: $fd
    xor h                                         ; $408e: $ac
    and l                                         ; $408f: $a5
    pop bc                                        ; $4090: $c1
    ld e, a                                       ; $4091: $5f
    rst $18                                       ; $4092: $df
    ld h, a                                       ; $4093: $67
    db $dd                                        ; $4094: $dd
    ld c, a                                       ; $4095: $4f
    ld l, c                                       ; $4096: $69
    push de                                       ; $4097: $d5
    and d                                         ; $4098: $a2
    push bc                                       ; $4099: $c5
    ld h, l                                       ; $409a: $65
    ld a, [c]                                     ; $409b: $f2
    and a                                         ; $409c: $a7
    jr z, jr_034_40ea                             ; $409d: $28 $4b

    ld [c], a                                     ; $409f: $e2
    rst $08                                       ; $40a0: $cf
    jp nc, $f0af                                  ; $40a1: $d2 $af $f0

    xor $d5                                       ; $40a4: $ee $d5
    sub c                                         ; $40a6: $91
    dec [hl]                                      ; $40a7: $35
    inc sp                                        ; $40a8: $33
    or l                                          ; $40a9: $b5
    inc l                                         ; $40aa: $2c
    and h                                         ; $40ab: $a4
    dec l                                         ; $40ac: $2d
    and e                                         ; $40ad: $a3
    add d                                         ; $40ae: $82
    ld [$7bbf], a                                 ; $40af: $ea $bf $7b
    xor $3d                                       ; $40b2: $ee $3d
    and h                                         ; $40b4: $a4
    xor b                                         ; $40b5: $a8
    ld hl, sp-$0d                                 ; $40b6: $f8 $f3
    or $54                                        ; $40b8: $f6 $54
    inc bc                                        ; $40ba: $03
    add hl, de                                    ; $40bb: $19
    jp z, $d11a                                   ; $40bc: $ca $1a $d1

    jp nc, $03bb                                  ; $40bf: $d2 $bb $03

    inc l                                         ; $40c2: $2c
    db $dd                                        ; $40c3: $dd
    rst $08                                       ; $40c4: $cf
    ld e, a                                       ; $40c5: $5f
    or l                                          ; $40c6: $b5
    and l                                         ; $40c7: $a5
    inc hl                                        ; $40c8: $23
    ld h, h                                       ; $40c9: $64
    ld l, h                                       ; $40ca: $6c
    ld [hl], b                                    ; $40cb: $70
    jp c, $8dce                                   ; $40cc: $da $ce $8d

    db $fc                                        ; $40cf: $fc
    sub c                                         ; $40d0: $91
    add $49                                       ; $40d1: $c6 $49
    ld [hl], e                                    ; $40d3: $73
    add hl, bc                                    ; $40d4: $09
    db $fc                                        ; $40d5: $fc
    push af                                       ; $40d6: $f5
    ld e, l                                       ; $40d7: $5d

Jump_034_40d8:
    inc b                                         ; $40d8: $04
    pop hl                                        ; $40d9: $e1
    ld [hl], e                                    ; $40da: $73

Jump_034_40db:
    add e                                         ; $40db: $83
    cp a                                          ; $40dc: $bf
    or d                                          ; $40dd: $b2
    or c                                          ; $40de: $b1
    db $dd                                        ; $40df: $dd
    ldh [rIF], a                                  ; $40e0: $e0 $0f
    ld a, [de]                                    ; $40e2: $1a
    ld e, e                                       ; $40e3: $5b
    ld l, l                                       ; $40e4: $6d
    add hl, hl                                    ; $40e5: $29
    sbc d                                         ; $40e6: $9a
    or d                                          ; $40e7: $b2
    sbc $8e                                       ; $40e8: $de $8e

jr_034_40ea:
    and b                                         ; $40ea: $a0
    rra                                           ; $40eb: $1f
    pop de                                        ; $40ec: $d1
    cp l                                          ; $40ed: $bd
    add a                                         ; $40ee: $87
    adc e                                         ; $40ef: $8b

jr_034_40f0:
    pop hl                                        ; $40f0: $e1
    or h                                          ; $40f1: $b4
    sbc l                                         ; $40f2: $9d
    add l                                         ; $40f3: $85
    inc h                                         ; $40f4: $24
    dec a                                         ; $40f5: $3d
    inc e                                         ; $40f6: $1c
    db $eb                                        ; $40f7: $eb
    dec l                                         ; $40f8: $2d
    and e                                         ; $40f9: $a3
    sub c                                         ; $40fa: $91
    cp a                                          ; $40fb: $bf
    db $e3                                        ; $40fc: $e3
    di                                            ; $40fd: $f3
    ld e, e                                       ; $40fe: $5b
    rst $18                                       ; $40ff: $df
    ret c                                         ; $4100: $d8

    ld [bc], a                                    ; $4101: $02
    push bc                                       ; $4102: $c5
    ld [hl], b                                    ; $4103: $70
    ld sp, $2bf8                                  ; $4104: $31 $f8 $2b
    ld e, c                                       ; $4107: $59
    dec [hl]                                      ; $4108: $35
    or e                                          ; $4109: $b3
    xor h                                         ; $410a: $ac
    adc e                                         ; $410b: $8b
    and [hl]                                      ; $410c: $a6
    inc l                                         ; $410d: $2c
    ld b, d                                       ; $410e: $42
    push bc                                       ; $410f: $c5
    jp c, $e69b                                   ; $4110: $da $9b $e6

    or e                                          ; $4113: $b3
    sbc c                                         ; $4114: $99
    rst $18                                       ; $4115: $df
    inc l                                         ; $4116: $2c
    ld l, $93                                     ; $4117: $2e $93
    inc [hl]                                      ; $4119: $34
    ld c, [hl]                                    ; $411a: $4e
    ld h, h                                       ; $411b: $64
    scf                                           ; $411c: $37
    rlca                                          ; $411d: $07
    ld a, b                                       ; $411e: $78
    add a                                         ; $411f: $87
    or h                                          ; $4120: $b4
    ld c, h                                       ; $4121: $4c
    cp $ae                                        ; $4122: $fe $ae
    db $db                                        ; $4124: $db
    ld b, l                                       ; $4125: $45
    ret z                                         ; $4126: $c8

    ret c                                         ; $4127: $d8

    ret z                                         ; $4128: $c8

    sbc a                                         ; $4129: $9f
    rst $08                                       ; $412a: $cf
    dec e                                         ; $412b: $1d
    ld b, c                                       ; $412c: $41
    ld [de], a                                    ; $412d: $12
    ld [hl], $70                                  ; $412e: $36 $70
    ldh [rNR44], a                                ; $4130: $e0 $23
    jr jr_034_40f0                                ; $4132: $18 $bc

    rst $20                                       ; $4134: $e7
    ld c, $b3                                     ; $4135: $0e $b3
    ld b, b                                       ; $4137: $40
    cp b                                          ; $4138: $b8
    jp Jump_000_002e                              ; $4139: $c3 $2e $00


    db $ec                                        ; $413c: $ec
    or b                                          ; $413d: $b0
    db $eb                                        ; $413e: $eb
    xor l                                         ; $413f: $ad
    or a                                          ; $4140: $b7
    sbc a                                         ; $4141: $9f
    ld d, d                                       ; $4142: $52
    ld c, e                                       ; $4143: $4b
    add hl, de                                    ; $4144: $19
    adc l                                         ; $4145: $8d
    db $fc                                        ; $4146: $fc
    dec e                                         ; $4147: $1d
    sbc a                                         ; $4148: $9f
    rst $18                                       ; $4149: $df
    ld d, b                                       ; $414a: $50
    add d                                         ; $414b: $82
    ccf                                           ; $414c: $3f
    ld d, b                                       ; $414d: $50
    sbc e                                         ; $414e: $9b
    ld a, c                                       ; $414f: $79
    xor e                                         ; $4150: $ab
    ld d, [hl]                                    ; $4151: $56
    rst $30                                       ; $4152: $f7
    ld d, e                                       ; $4153: $53
    ld l, d                                       ; $4154: $6a
    db $ec                                        ; $4155: $ec
    db $fd                                        ; $4156: $fd
    ld h, e                                       ; $4157: $63
    push af                                       ; $4158: $f5
    rst $00                                       ; $4159: $c7
    ld h, $5b                                     ; $415a: $26 $5b
    ret z                                         ; $415c: $c8

    push bc                                       ; $415d: $c5
    ld l, e                                       ; $415e: $6b
    ld de, $17ba                                  ; $415f: $11 $ba $17
    ld a, a                                       ; $4162: $7f
    ld h, l                                       ; $4163: $65
    sbc l                                         ; $4164: $9d
    ld sp, hl                                     ; $4165: $f9
    add hl, bc                                    ; $4166: $09
    inc c                                         ; $4167: $0c
    ret                                           ; $4168: $c9


    ld bc, $bc73                                  ; $4169: $01 $73 $bc
    ld hl, $332d                                  ; $416c: $21 $2d $33
    call c, $a1f7                                 ; $416f: $dc $f7 $a1
    ld c, h                                       ; $4172: $4c
    cp $ae                                        ; $4173: $fe $ae
    db $db                                        ; $4175: $db
    ld b, l                                       ; $4176: $45
    ret z                                         ; $4177: $c8

    ret c                                         ; $4178: $d8

    ret z                                         ; $4179: $c8

    sbc a                                         ; $417a: $9f
    add a                                         ; $417b: $87
    db $e4                                        ; $417c: $e4
    ld c, h                                       ; $417d: $4c
    cp $ae                                        ; $417e: $fe $ae
    db $db                                        ; $4180: $db
    ld b, l                                       ; $4181: $45
    ret z                                         ; $4182: $c8

    ret c                                         ; $4183: $d8

    ret z                                         ; $4184: $c8

    sbc a                                         ; $4185: $9f
    ld h, a                                       ; $4186: $67
    ld l, h                                       ; $4187: $6c
    sub e                                         ; $4188: $93
    ld a, $16                                     ; $4189: $3e $16
    ld h, e                                       ; $418b: $63
    ld [hl], l                                    ; $418c: $75
    ld l, a                                       ; $418d: $6f
    adc [hl]                                      ; $418e: $8e
    ld [hl], l                                    ; $418f: $75
    call Call_034_781f                            ; $4190: $cd $1f $78
    dec sp                                        ; $4193: $3b
    adc e                                         ; $4194: $8b
    adc h                                         ; $4195: $8c
    adc l                                         ; $4196: $8d
    db $fc                                        ; $4197: $fc
    ld sp, hl                                     ; $4198: $f9
    call c, Call_034_5b4b                         ; $4199: $dc $4b $5b
    ld h, [hl]                                    ; $419c: $66
    call z, $b301                                 ; $419d: $cc $01 $b3
    dec sp                                        ; $41a0: $3b
    or $dc                                        ; $41a1: $f6 $dc
    rst $08                                       ; $41a3: $cf
    ld e, d                                       ; $41a4: $5a
    adc d                                         ; $41a5: $8a
    pop hl                                        ; $41a6: $e1
    ld [hl+], a                                   ; $41a7: $22
    ld a, a                                       ; $41a8: $7f
    add a                                         ; $41a9: $87
    ld sp, hl                                     ; $41aa: $f9
    call $e25b                                    ; $41ab: $cd $5b $e2
    cpl                                           ; $41ae: $2f
    ld a, h                                       ; $41af: $7c
    add h                                         ; $41b0: $84
    ld b, b                                       ; $41b1: $40
    cp $d2                                        ; $41b2: $fe $d2
    halt                                          ; $41b4: $76
    xor b                                         ; $41b5: $a8
    ld a, [de]                                    ; $41b6: $1a
    rst $00                                       ; $41b7: $c7
    and d                                         ; $41b8: $a2
    ld a, l                                       ; $41b9: $7d
    inc d                                         ; $41ba: $14
    ld h, e                                       ; $41bb: $63
    ld [hl], l                                    ; $41bc: $75
    push af                                       ; $41bd: $f5
    sub a                                         ; $41be: $97
    ret c                                         ; $41bf: $d8

    ld c, $0b                                     ; $41c0: $0e $0b
    xor d                                         ; $41c2: $aa
    ld l, a                                       ; $41c3: $6f
    ld e, a                                       ; $41c4: $5f
    ret nz                                        ; $41c5: $c0

    db $db                                        ; $41c6: $db
    pop bc                                        ; $41c7: $c1
    ld l, e                                       ; $41c8: $6b
    bit 3, d                                      ; $41c9: $cb $5a
    ld c, b                                       ; $41cb: $48
    rst $28                                       ; $41cc: $ef
    nop                                           ; $41cd: $00
    ld l, a                                       ; $41ce: $6f
    sub e                                         ; $41cf: $93
    ld a, l                                       ; $41d0: $7d
    cp d                                          ; $41d1: $ba
    or a                                          ; $41d2: $b7
    ld l, d                                       ; $41d3: $6a
    ld [hl], l                                    ; $41d4: $75
    ld c, a                                       ; $41d5: $4f
    ld hl, sp-$76                                 ; $41d6: $f8 $8a
    or l                                          ; $41d8: $b5
    ld e, b                                       ; $41d9: $58
    or [hl]                                       ; $41da: $b6

Call_034_41db:
    add e                                         ; $41db: $83
    ld d, $04                                     ; $41dc: $16 $04
    di                                            ; $41de: $f3
    dec de                                        ; $41df: $1b
    and h                                         ; $41e0: $a4
    add hl, sp                                    ; $41e1: $39
    adc h                                         ; $41e2: $8c
    ld [hl], d                                    ; $41e3: $72
    adc l                                         ; $41e4: $8d
    di                                            ; $41e5: $f3
    dec b                                         ; $41e6: $05
    ld [hl+], a                                   ; $41e7: $22
    dec sp                                        ; $41e8: $3b
    rla                                           ; $41e9: $17
    xor a                                         ; $41ea: $af
    sbc $fe                                       ; $41eb: $de $fe
    ld l, [hl]                                    ; $41ed: $6e
    add e                                         ; $41ee: $83
    cp a                                          ; $41ef: $bf
    ld e, $8e                                     ; $41f0: $1e $8e
    ld [hl], l                                    ; $41f2: $75
    sbc c                                         ; $41f3: $99
    rst $38                                       ; $41f4: $ff
    jr c, @-$56                                   ; $41f5: $38 $a8

    jp c, $83ac                                   ; $41f7: $da $ac $83

    sub [hl]                                      ; $41fa: $96
    pop bc                                        ; $41fb: $c1
    adc e                                         ; $41fc: $8b
    ld d, d                                       ; $41fd: $52
    add h                                         ; $41fe: $84
    call nz, $91d5                                ; $41ff: $c4 $d5 $91
    ld a, c                                       ; $4202: $79
    db $d3                                        ; $4203: $d3
    inc e                                         ; $4204: $1c
    ld c, c                                       ; $4205: $49

Jump_034_4206:
    xor d                                         ; $4206: $aa
    ld hl, sp-$71                                 ; $4207: $f8 $8f
    jp $a114                                      ; $4209: $c3 $14 $a1


    ld e, a                                       ; $420c: $5f
    pop af                                        ; $420d: $f1
    rst $10                                       ; $420e: $d7
    ld h, c                                       ; $420f: $61
    ld b, c                                       ; $4210: $41
    push af                                       ; $4211: $f5
    db $ed                                        ; $4212: $ed
    dec bc                                        ; $4213: $0b
    ld a, b                                       ; $4214: $78
    ld h, a                                       ; $4215: $67
    ld l, h                                       ; $4216: $6c
    jp nz, $f936                                  ; $4217: $c2 $36 $f9

    jp z, Jump_034_5fee                           ; $421a: $ca $ee $5f

    nop                                           ; $421d: $00
    sbc e                                         ; $421e: $9b
    dec b                                         ; $421f: $05
    dec bc                                        ; $4220: $0b
    dec [hl]                                      ; $4221: $35
    sub $b1                                       ; $4222: $d6 $b1
    sbc $32                                       ; $4224: $de $32
    rst $38                                       ; $4226: $ff
    ld [hl], c                                    ; $4227: $71
    ld d, b                                       ; $4228: $50
    res 4, b                                      ; $4229: $cb $a0
    push bc                                       ; $422b: $c5
    or c                                          ; $422c: $b1
    ld l, c                                       ; $422d: $69
    add a                                         ; $422e: $87
    xor d                                         ; $422f: $aa
    ld [hl], c                                    ; $4230: $71
    inc l                                         ; $4231: $2c
    jp c, $df47                                   ; $4232: $da $47 $df

    ld h, a                                       ; $4235: $67
    db $dd                                        ; $4236: $dd
    ldh [$af], a                                  ; $4237: $e0 $af
    sbc c                                         ; $4239: $99
    rst $18                                       ; $423a: $df
    ret c                                         ; $423b: $d8

    ld [bc], a                                    ; $423c: $02
    rst $20                                       ; $423d: $e7
    ld [$d88f], a                                 ; $423e: $ea $8f $d8
    db $e3                                        ; $4241: $e3
    ld l, a                                       ; $4242: $6f
    adc a                                         ; $4243: $8f
    add b                                         ; $4244: $80
    add $5b                                       ; $4245: $c6 $5b
    ld l, a                                       ; $4247: $6f
    adc a                                         ; $4248: $8f
    sbc a                                         ; $4249: $9f
    dec b                                         ; $424a: $05
    ld a, [c]                                     ; $424b: $f2
    rst $20                                       ; $424c: $e7
    ld h, $c5                                     ; $424d: $26 $c5
    ld h, [hl]                                    ; $424f: $66
    xor $e0                                       ; $4250: $ee $e0
    ld b, l                                       ; $4252: $45
    add hl, hl                                    ; $4253: $29
    dec hl                                        ; $4254: $2b
    or c                                          ; $4255: $b1
    sbc c                                         ; $4256: $99
    or a                                          ; $4257: $b7
    or a                                          ; $4258: $b7
    cp a                                          ; $4259: $bf
    sbc e                                         ; $425a: $9b
    halt                                          ; $425b: $76
    or h                                          ; $425c: $b4
    ld [hl], a                                    ; $425d: $77
    xor e                                         ; $425e: $ab
    ld d, l                                       ; $425f: $55
    sbc c                                         ; $4260: $99
    db $fc                                        ; $4261: $fc
    ld e, l                                       ; $4262: $5d
    or a                                          ; $4263: $b7
    adc e                                         ; $4264: $8b
    sub b                                         ; $4265: $90
    or c                                          ; $4266: $b1
    sub c                                         ; $4267: $91
    ccf                                           ; $4268: $3f
    rst $30                                       ; $4269: $f7
    or $15                                        ; $426a: $f6 $15
    add c                                         ; $426c: $81
    ld [hl], b                                    ; $426d: $70
    ld l, $5e                                     ; $426e: $2e $5e
    sub h                                         ; $4270: $94
    add d                                         ; $4271: $82
    ld de, $55aa                                  ; $4272: $11 $aa $55
    db $e3                                        ; $4275: $e3
    jr c, jr_034_42a4                             ; $4276: $38 $2c

    adc l                                         ; $4278: $8d
    xor l                                         ; $4279: $ad
    or [hl]                                       ; $427a: $b6
    ld [hl], h                                    ; $427b: $74
    ld e, [hl]                                    ; $427c: $5e
    set 0, b                                      ; $427d: $cb $c0
    rst $20                                       ; $427f: $e7
    scf                                           ; $4280: $37
    or l                                          ; $4281: $b5
    ld e, c                                       ; $4282: $59
    rst $30                                       ; $4283: $f7
    di                                            ; $4284: $f3
    ld d, a                                       ; $4285: $57
    ld l, l                                       ; $4286: $6d
    jp hl                                         ; $4287: $e9


    or b                                          ; $4288: $b0
    and b                                         ; $4289: $a0
    ld a, [$05f6]                                 ; $428a: $fa $f6 $05
    ld e, h                                       ; $428d: $5c
    ld d, h                                       ; $428e: $54
    db $fc                                        ; $428f: $fc
    ld a, c                                       ; $4290: $79
    db $d3                                        ; $4291: $d3
    inc e                                         ; $4292: $1c
    ret                                           ; $4293: $c9


    rst $00                                       ; $4294: $c7
    cp c                                          ; $4295: $b9
    add e                                         ; $4296: $83
    ld h, c                                       ; $4297: $61
    ld c, d                                       ; $4298: $4a
    dec e                                         ; $4299: $1d
    db $fc                                        ; $429a: $fc
    ld b, c                                       ; $429b: $41
    pop af                                        ; $429c: $f1
    and d                                         ; $429d: $a2
    inc d                                         ; $429e: $14
    call c, $afe0                                 ; $429f: $dc $e0 $af
    ld [hl], a                                    ; $42a2: $77
    ld d, e                                       ; $42a3: $53

jr_034_42a4:
    cp $dc                                        ; $42a4: $fe $dc
    db $db                                        ; $42a6: $db
    ld d, a                                       ; $42a7: $57
    add h                                         ; $42a8: $84
    scf                                           ; $42a9: $37
    ld l, l                                       ; $42aa: $6d
    ld b, a                                       ; $42ab: $47
    ld a, [hl]                                    ; $42ac: $7e
    jp c, Jump_000_2fec                           ; $42ad: $da $ec $2f

jr_034_42b0:
    cp c                                          ; $42b0: $b9
    sbc a                                         ; $42b1: $9f
    call Call_034_7e8c                            ; $42b2: $cd $8c $7e
    sbc $0e                                       ; $42b5: $de $0e
    ld e, [hl]                                    ; $42b7: $5e
    ld e, e                                       ; $42b8: $5b
    db $ed                                        ; $42b9: $ed
    db $ed                                        ; $42ba: $ed
    or b                                          ; $42bb: $b0
    and b                                         ; $42bc: $a0
    ld a, [$05f6]                                 ; $42bd: $fa $f6 $05
    cp h                                          ; $42c0: $bc
    sbc l                                         ; $42c1: $9d
    cp b                                          ; $42c2: $b8
    ld b, a                                       ; $42c3: $47
    ld b, b                                       ; $42c4: $40
    sbc c                                         ; $42c5: $99
    db $fc                                        ; $42c6: $fc
    ld e, l                                       ; $42c7: $5d
    or a                                          ; $42c8: $b7
    adc e                                         ; $42c9: $8b
    ld a, [hl]                                    ; $42ca: $7e
    db $ed                                        ; $42cb: $ed
    sbc $fe                                       ; $42cc: $de $fe
    ld l, [hl]                                    ; $42ce: $6e
    adc a                                         ; $42cf: $8f
    cp a                                          ; $42d0: $bf
    push de                                       ; $42d1: $d5
    rla                                           ; $42d2: $17
    ld a, a                                       ; $42d3: $7f
    ld [hl], l                                    ; $42d4: $75
    ld h, h                                       ; $42d5: $64
    ld e, [hl]                                    ; $42d6: $5e
    and b                                         ; $42d7: $a0
    pop bc                                        ; $42d8: $c1
    ld e, a                                       ; $42d9: $5f
    scf                                           ; $42da: $37
    ld hl, sp+$03                                 ; $42db: $f8 $03
    inc l                                         ; $42dd: $2c
    pop af                                        ; $42de: $f1
    add hl, hl                                    ; $42df: $29
    ld a, [c]                                     ; $42e0: $f2
    rst $10                                       ; $42e1: $d7
    db $e3                                        ; $42e2: $e3
    di                                            ; $42e3: $f3
    rst $20                                       ; $42e4: $e7
    ld c, l                                       ; $42e5: $4d
    ld [hl], e                                    ; $42e6: $73
    db $e3                                        ; $42e7: $e3
    cp [hl]                                       ; $42e8: $be
    db $e3                                        ; $42e9: $e3
    ld e, h                                       ; $42ea: $5c
    ld [c], a                                     ; $42eb: $e2
    ld d, e                                       ; $42ec: $53
    adc d                                         ; $42ed: $8a
    push de                                       ; $42ee: $d5
    xor d                                         ; $42ef: $aa
    ld b, e                                       ; $42f0: $43
    inc sp                                        ; $42f1: $33
    adc c                                         ; $42f2: $89
    add c                                         ; $42f3: $81
    add c                                         ; $42f4: $81
    ld e, a                                       ; $42f5: $5f
    sub $b7                                       ; $42f6: $d6 $b7
    db $eb                                        ; $42f8: $eb
    jr c, @+$12                                   ; $42f9: $38 $10

    adc $bd                                       ; $42fb: $ce $bd
    adc l                                         ; $42fd: $8d
    cp l                                          ; $42fe: $bd
    dec bc                                        ; $42ff: $0b
    ld l, [hl]                                    ; $4300: $6e
    ldh a, [$d7]                                  ; $4301: $f0 $d7
    ld a, b                                       ; $4303: $78
    ld e, e                                       ; $4304: $5b
    db $fd                                        ; $4305: $fd
    ld [hl], a                                    ; $4306: $77
    dec sp                                        ; $4307: $3b
    jr jr_034_42b0                                ; $4308: $18 $a6

    call nc, $1fc1                                ; $430a: $d4 $c1 $1f
    inc [hl]                                      ; $430d: $34
    ld [hl], e                                    ; $430e: $73
    and $ad                                       ; $430f: $e6 $ad
    ld h, e                                       ; $4311: $63
    db $dd                                        ; $4312: $dd
    cp a                                          ; $4313: $bf
    jp c, $8ee2                                   ; $4314: $da $e2 $8e

    ld hl, sp+$02                                 ; $4317: $f8 $02
    xor [hl]                                      ; $4319: $ae

jr_034_431a:
    ld h, e                                       ; $431a: $63
    pop hl                                        ; $431b: $e1
    dec hl                                        ; $431c: $2b
    db $e4                                        ; $431d: $e4
    rst $08                                       ; $431e: $cf
    dec sp                                        ; $431f: $3b
    ld h, e                                       ; $4320: $63
    dec sp                                        ; $4321: $3b
    ld e, h                                       ; $4322: $5c
    ld a, [de]                                    ; $4323: $1a
    ld [$96d5], sp                                ; $4324: $08 $d5 $96
    ld c, $8f                                     ; $4327: $0e $8f
    dec h                                         ; $4329: $25
    ld b, a                                       ; $432a: $47
    and $73                                       ; $432b: $e6 $73
    or l                                          ; $432d: $b5
    and l                                         ; $432e: $a5
    ld b, a                                       ; $432f: $47
    ld c, b                                       ; $4330: $48
    rst $30                                       ; $4331: $f7
    ld [c], a                                     ; $4332: $e2
    xor a                                         ; $4333: $af
    or c                                          ; $4334: $b1
    dec a                                         ; $4335: $3d
    inc e                                         ; $4336: $1c
    ld l, e                                       ; $4337: $6b
    add hl, hl                                    ; $4338: $29
    di                                            ; $4339: $f3
    rra                                           ; $433a: $1f
    rlca                                          ; $433b: $07
    ld d, l                                       ; $433c: $55
    sbc e                                         ; $433d: $9b
    sub l                                         ; $433e: $95
    ldh a, [$a3]                                  ; $433f: $f0 $a3
    sub b                                         ; $4341: $90
    and $a3                                       ; $4342: $e6 $a3
    ccf                                           ; $4344: $3f
    ld [hl], $10                                  ; $4345: $36 $10
    ld a, d                                       ; $4347: $7a
    inc b                                         ; $4348: $04
    ld [hl], h                                    ; $4349: $74
    ret c                                         ; $434a: $d8

    push af                                       ; $434b: $f5
    sub $db                                       ; $434c: $d6 $db
    ld c, a                                       ; $434e: $4f
    xor c                                         ; $434f: $a9
    and l                                         ; $4350: $a5

jr_034_4351:
    adc h                                         ; $4351: $8c
    ld b, [hl]                                    ; $4352: $46
    cp $8e                                        ; $4353: $fe $8e
    rst $08                                       ; $4355: $cf
    ld l, a                                       ; $4356: $6f
    jr z, jr_034_431a                             ; $4357: $28 $c1

    rst $18                                       ; $4359: $df
    call nz, $36a0                                ; $435a: $c4 $a0 $36
    di                                            ; $435d: $f3
    adc $d8                                       ; $435e: $ce $d8
    adc [hl]                                      ; $4360: $8e
    cp [hl]                                       ; $4361: $be
    or $f3                                        ; $4362: $f6 $f3
    ld d, a                                       ; $4364: $57
    db $e4                                        ; $4365: $e4
    rst $28                                       ; $4366: $ef
    jr nc, @-$3f                                  ; $4367: $30 $bf

    ld a, c                                       ; $4369: $79

Call_034_436a:
    adc e                                         ; $436a: $8b
    pop hl                                        ; $436b: $e1
    ld l, d                                       ; $436c: $6a
    rst $28                                       ; $436d: $ef
    adc $98                                       ; $436e: $ce $98
    inc bc                                        ; $4370: $03
    jp Jump_034_59b1                              ; $4371: $c3 $b1 $59


    or b                                          ; $4374: $b0
    ld d, b                                       ; $4375: $50
    inc c                                         ; $4376: $0c
    scf                                           ; $4377: $37
    or [hl]                                       ; $4378: $b6
    or e                                          ; $4379: $b3
    ld c, $4f                                     ; $437a: $0e $4f
    ld a, [de]                                    ; $437c: $1a
    ld a, $57                                     ; $437d: $3e $57
    add hl, de                                    ; $437f: $19
    adc l                                         ; $4380: $8d
    db $fc                                        ; $4381: $fc
    dec e                                         ; $4382: $1d
    sbc a                                         ; $4383: $9f
    rst $18                                       ; $4384: $df
    ld d, b                                       ; $4385: $50
    add d                                         ; $4386: $82
    ccf                                           ; $4387: $3f
    ld d, b                                       ; $4388: $50
    sbc e                                         ; $4389: $9b
    and l                                         ; $438a: $a5
    dec l                                         ; $438b: $2d
    inc sp                                        ; $438c: $33
    ld e, h                                       ; $438d: $5c
    db $e4                                        ; $438e: $e4

jr_034_438f:
    rst $28                                       ; $438f: $ef
    jr nc, jr_034_4351                            ; $4390: $30 $bf

    ld a, c                                       ; $4392: $79
    cp e                                          ; $4393: $bb
    pop bc                                        ; $4394: $c1
    rra                                           ; $4395: $1f
    inc [hl]                                      ; $4396: $34
    adc [hl]                                      ; $4397: $8e
    jp Jump_034_4cd2                              ; $4398: $c3 $d2 $4c


    ld b, c                                       ; $439b: $41
    jp c, $f026                                   ; $439c: $da $26 $f0

    rst $10                                       ; $439f: $d7
    rst $30                                       ; $43a0: $f7
    ld e, c                                       ; $43a1: $59
    rla                                           ; $43a2: $17
    xor a                                         ; $43a3: $af
    db $ec                                        ; $43a4: $ec
    ld c, e                                       ; $43a5: $4b
    adc a                                         ; $43a6: $8f
    ld c, a                                       ; $43a7: $4f
    db $eb                                        ; $43a8: $eb
    ld e, b                                       ; $43a9: $58
    rst $30                                       ; $43aa: $f7
    ld [$9268], sp                                ; $43ab: $08 $68 $92
    sbc b                                         ; $43ae: $98
    rst $18                                       ; $43af: $df
    ld [hl-], a                                   ; $43b0: $32
    inc hl                                        ; $43b1: $23
    ld a, a                                       ; $43b2: $7f
    rst $00                                       ; $43b3: $c7
    rst $20                                       ; $43b4: $e7
    or a                                          ; $43b5: $b7
    ld h, [hl]                                    ; $43b6: $66
    ld a, [hl]                                    ; $43b7: $7e
    sbc a                                         ; $43b8: $9f
    add l                                         ; $43b9: $85
    inc [hl]                                      ; $43ba: $34
    rlca                                          ; $43bb: $07
    db $e3                                        ; $43bc: $e3
    ld h, $26                                     ; $43bd: $26 $26
    cp [hl]                                       ; $43bf: $be
    rst $30                                       ; $43c0: $f7
    adc $bd                                       ; $43c1: $ce $bd
    ld e, a                                       ; $43c3: $5f
    rst $08                                       ; $43c4: $cf
    jp nc, Jump_034_63bb                          ; $43c5: $d2 $bb $63

    inc e                                         ; $43c8: $1c
    xor b                                         ; $43c9: $a8
    ld d, [hl]                                    ; $43ca: $56
    push de                                       ; $43cb: $d5
    sbc $3d                                       ; $43cc: $de $3d
    rst $30                                       ; $43ce: $f7
    ld e, $6e                                     ; $43cf: $1e $6e
    sub d                                         ; $43d1: $92
    sbc b                                         ; $43d2: $98
    rst $18                                       ; $43d3: $df
    adc d                                         ; $43d4: $8a
    db $fc                                        ; $43d5: $fc
    dec e                                         ; $43d6: $1d
    and $37                                       ; $43d7: $e6 $37
    sbc b                                         ; $43d9: $98

jr_034_43da:
    ld sp, $b307                                  ; $43da: $31 $07 $b3
    ret z                                         ; $43dd: $c8

jr_034_43de:
    rst $08                                       ; $43de: $cf
    ld c, d                                       ; $43df: $4a
    jp $a5ac                                      ; $43e0: $c3 $ac $a5


    dec de                                        ; $43e3: $1b
    db $fc                                        ; $43e4: $fc
    ld b, c                                       ; $43e5: $41
    jp c, $a926                                   ; $43e6: $da $26 $a9

    ld [c], a                                     ; $43e9: $e2
    ld b, l                                       ; $43ea: $45
    add hl, hl                                    ; $43eb: $29
    jr jr_034_438f                                ; $43ec: $18 $a1

    jr jr_034_43de                                ; $43ee: $18 $ee

    pop af                                        ; $43f0: $f1
    ld l, c                                       ; $43f1: $69
    rlca                                          ; $43f2: $07
    db $e4                                        ; $43f3: $e4
    ld h, d                                       ; $43f4: $62
    jp Jump_034_4de2                              ; $43f5: $c3 $e2 $4d


    db $db                                        ; $43f8: $db
    and h                                         ; $43f9: $a4
    ld [hl], b                                    ; $43fa: $70
    rrca                                          ; $43fb: $0f
    rlca                                          ; $43fc: $07
    add d                                         ; $43fd: $82
    or a                                          ; $43fe: $b7
    ret z                                         ; $43ff: $c8

    rst $18                                       ; $4400: $df
    ld h, c                                       ; $4401: $61
    ld a, [hl]                                    ; $4402: $7e
    di                                            ; $4403: $f3
    or $1e                                        ; $4404: $f6 $1e
    ld [hl], d                                    ; $4406: $72
    and e                                         ; $4407: $a3
    pop bc                                        ; $4408: $c1
    ld e, a                                       ; $4409: $5f
    inc sp                                        ; $440a: $33
    dec b                                         ; $440b: $05
    ld l, c                                       ; $440c: $69
    dec sp                                        ; $440d: $3b
    jp nc, $eeb1                                  ; $440e: $d2 $b1 $ee

    jr nc, jr_034_4434                            ; $4411: $30 $21

    ld l, c                                       ; $4413: $69
    ld c, e                                       ; $4414: $4b
    rlca                                          ; $4415: $07
    dec l                                         ; $4416: $2d
    or a                                          ; $4417: $b7
    xor a                                         ; $4418: $af
    ld [$996f], sp                                ; $4419: $08 $6f $99
    and h                                         ; $441c: $a4
    ld [hl], c                                    ; $441d: $71
    ld [hl+], a                                   ; $441e: $22
    cp e                                          ; $441f: $bb
    add hl, sp                                    ; $4420: $39
    ret nz                                        ; $4421: $c0

    db $db                                        ; $4422: $db
    ret c                                         ; $4423: $d8

    ld l, d                                       ; $4424: $6a
    ld c, e                                       ; $4425: $4b
    sbc c                                         ; $4426: $99
    db $fc                                        ; $4427: $fc
    add hl, hl                                    ; $4428: $29
    ld [$7573], a                                 ; $4429: $ea $73 $75
    cp b                                          ; $442c: $b8
    jr jr_034_43da                                ; $442d: $18 $ab

    ld a, e                                       ; $442f: $7b
    xor d                                         ; $4430: $aa
    push af                                       ; $4431: $f5
    push bc                                       ; $4432: $c5
    ld e, a                                       ; $4433: $5f

jr_034_4434:
    rlca                                          ; $4434: $07
    jp Jump_034_60b4                              ; $4435: $c3 $b4 $60


    dec h                                         ; $4438: $25
    sub [hl]                                      ; $4439: $96
    inc [hl]                                      ; $443a: $34
    rlca                                          ; $443b: $07
    ret                                           ; $443c: $c9


    rst $00                                       ; $443d: $c7
    ld [hl], c                                    ; $443e: $71
    inc e                                         ; $443f: $1c
    rst $20                                       ; $4440: $e7
    adc [hl]                                      ; $4441: $8e
    cp d                                          ; $4442: $ba
    ld b, $f8                                     ; $4443: $06 $f8
    dec h                                         ; $4445: $25
    sbc e                                         ; $4446: $9b
    halt                                          ; $4447: $76
    add d                                         ; $4448: $82
    adc c                                         ; $4449: $89
    ld h, [hl]                                    ; $444a: $66
    sbc d                                         ; $444b: $9a
    xor h                                         ; $444c: $ac
    ld c, c                                       ; $444d: $49
    and e                                         ; $444e: $a3
    ld h, $cc                                     ; $444f: $26 $cc
    ld bc, $99b3                                  ; $4451: $01 $b3 $99
    rst $18                                       ; $4454: $df
    inc l                                         ; $4455: $2c
    rst $20                                       ; $4456: $e7
    adc [hl]                                      ; $4457: $8e
    db $fc                                        ; $4458: $fc
    ld [hl], d                                    ; $4459: $72
    sbc b                                         ; $445a: $98
    ld a, [hl]                                    ; $445b: $7e
    db $ed                                        ; $445c: $ed
    or h                                          ; $445d: $b4
    inc de                                        ; $445e: $13
    ld c, h                                       ; $445f: $4c
    inc [hl]                                      ; $4460: $34
    db $d3                                        ; $4461: $d3
    ld h, h                                       ; $4462: $64
    ld c, l                                       ; $4463: $4d
    ld a, [de]                                    ; $4464: $1a
    dec [hl]                                      ; $4465: $35
    ld h, c                                       ; $4466: $61
    ld c, $49                                     ; $4467: $0e $49
    ld h, c                                       ; $4469: $61
    or h                                          ; $446a: $b4
    ld [hl], h                                    ; $446b: $74
    add sp, $00                                   ; $446c: $e8 $00
    ld h, c                                       ; $446e: $61
    jp c, $97fb                                   ; $446f: $da $fb $97

    sbc $af                                       ; $4472: $de $af
    ld b, a                                       ; $4474: $47
    cp e                                          ; $4475: $bb
    rla                                           ; $4476: $17
    ld a, a                                       ; $4477: $7f
    db $dd                                        ; $4478: $dd
    ldh [rIF], a                                  ; $4479: $e0 $0f
    sbc d                                         ; $447b: $9a
    db $fd                                        ; $447c: $fd
    dec h                                         ; $447d: $25
    ld d, a                                       ; $447e: $57
    inc e                                         ; $447f: $1c
    ld b, h                                       ; $4480: $44
    jp c, $2609                                   ; $4481: $da $09 $26

    sbc d                                         ; $4484: $9a
    ld l, c                                       ; $4485: $69
    or d                                          ; $4486: $b2

jr_034_4487:
    ld h, $8d                                     ; $4487: $26 $8d
    sbc d                                         ; $4489: $9a
    jr nc, @+$09                                  ; $448a: $30 $07

    add hl, bc                                    ; $448c: $09
    ld e, c                                       ; $448d: $59
    nop                                           ; $448e: $00
    sbc h                                         ; $448f: $9c
    xor e                                         ; $4490: $ab
    jp $fe45                                      ; $4491: $c3 $45 $fe


    ld c, $f3                                     ; $4494: $0e $f3
    dec de                                        ; $4496: $1b
    db $f4                                        ; $4497: $f4
    call nc, $fddf                                ; $4498: $d4 $df $fd
    db $fc                                        ; $449b: $fc
    ld [hl], l                                    ; $449c: $75
    inc b                                         ; $449d: $04
    dec [hl]                                      ; $449e: $35
    adc e                                         ; $449f: $8b
    ld [hl], b                                    ; $44a0: $70
    ld de, $da44                                  ; $44a1: $11 $44 $da
    add hl, bc                                    ; $44a4: $09
    ld h, $9a                                     ; $44a5: $26 $9a
    ld l, c                                       ; $44a7: $69
    or d                                          ; $44a8: $b2
    ld h, $8d                                     ; $44a9: $26 $8d
    sbc d                                         ; $44ab: $9a
    jr nc, jr_034_44b5                            ; $44ac: $30 $07

    ret                                           ; $44ae: $c9


    adc d                                         ; $44af: $8a
    cp a                                          ; $44b0: $bf
    ld [hl], e                                    ; $44b1: $73
    rst $28                                       ; $44b2: $ef
    rst $10                                       ; $44b3: $d7
    ld a, [hl]                                    ; $44b4: $7e

jr_034_44b5:
    cp $8a                                        ; $44b5: $fe $8a
    db $fc                                        ; $44b7: $fc
    dec e                                         ; $44b8: $1d
    and $37                                       ; $44b9: $e6 $37
    xor b                                         ; $44bb: $a8
    cp $58                                        ; $44bc: $fe $58
    db $ed                                        ; $44be: $ed
    db $dd                                        ; $44bf: $dd
    sbc [hl]                                      ; $44c0: $9e
    ld l, d                                       ; $44c1: $6a
    jr nz, jr_034_4487                            ; $44c2: $20 $c3

    adc h                                         ; $44c4: $8c
    db $ed                                        ; $44c5: $ed
    ld c, b                                       ; $44c6: $48
    ld b, l                                       ; $44c7: $45
    add hl, hl                                    ; $44c8: $29
    dec de                                        ; $44c9: $1b
    xor e                                         ; $44ca: $ab
    dec a                                         ; $44cb: $3d
    ld h, e                                       ; $44cc: $63

Jump_034_44cd:
    daa                                           ; $44cd: $27
    sbc b                                         ; $44ce: $98
    ld l, b                                       ; $44cf: $68
    and [hl]                                      ; $44d0: $a6
    ret                                           ; $44d1: $c9


    sbc d                                         ; $44d2: $9a
    inc [hl]                                      ; $44d3: $34
    ld l, d                                       ; $44d4: $6a
    jp nz, $c31c                                  ; $44d5: $c2 $1c $c3

    ld [de], a                                    ; $44d8: $12
    rst $18                                       ; $44d9: $df
    cp c                                          ; $44da: $b9
    pop bc                                        ; $44db: $c1
    ld e, a                                       ; $44dc: $5f
    inc sp                                        ; $44dd: $33
    ld a, [$eb15]                                 ; $44de: $fa $15 $eb
    ld [hl], e                                    ; $44e1: $73
    push af                                       ; $44e2: $f5
    rst $00                                       ; $44e3: $c7
    sbc $bf                                       ; $44e4: $de $bf
    db $f4                                        ; $44e6: $f4
    ld d, h                                       ; $44e7: $54
    inc bc                                        ; $44e8: $03
    add hl, de                                    ; $44e9: $19
    sbc d                                         ; $44ea: $9a
    xor h                                         ; $44eb: $ac
    ld d, [hl]                                    ; $44ec: $56
    sbc e                                         ; $44ed: $9b
    ld d, b                                       ; $44ee: $50
    nop                                           ; $44ef: $00
    sub [hl]                                      ; $44f0: $96
    or h                                          ; $44f1: $b4
    inc de                                        ; $44f2: $13
    ld c, h                                       ; $44f3: $4c
    inc [hl]                                      ; $44f4: $34
    db $d3                                        ; $44f5: $d3
    ld h, h                                       ; $44f6: $64
    ld c, l                                       ; $44f7: $4d
    ld a, [de]                                    ; $44f8: $1a
    dec [hl]                                      ; $44f9: $35
    ld h, c                                       ; $44fa: $61
    ld c, $09                                     ; $44fb: $0e $09
    db $fc                                        ; $44fd: $fc
    push af                                       ; $44fe: $f5
    ld a, l                                       ; $44ff: $7d
    sub $cd                                       ; $4500: $d6 $cd
    db $fc                                        ; $4502: $fc
    add $16                                       ; $4503: $c6 $16
    jr c, jr_034_455e                             ; $4505: $38 $57

    xor e                                         ; $4507: $ab
    sbc $13                                       ; $4508: $de $13
    dec b                                         ; $450a: $05
    and c                                         ; $450b: $a1
    ret                                           ; $450c: $c9


    ld e, a                                       ; $450d: $5f
    ld h, h                                       ; $450e: $64
    ld c, h                                       ; $450f: $4c
    ld b, a                                       ; $4510: $47
    ld e, l                                       ; $4511: $5d
    nop                                           ; $4512: $00
    sub [hl]                                      ; $4513: $96
    inc [hl]                                      ; $4514: $34
    rlca                                          ; $4515: $07
    or e                                          ; $4516: $b3
    cp $73                                        ; $4517: $fe $73
    or l                                          ; $4519: $b5
    and l                                         ; $451a: $a5
    ld l, h                                       ; $451b: $6c
    ld l, h                                       ; $451c: $6c
    add e                                         ; $451d: $83
    cp a                                          ; $451e: $bf
    inc [hl]                                      ; $451f: $34
    rlca                                          ; $4520: $07
    and e                                         ; $4521: $a3
    ccf                                           ; $4522: $3f
    sub [hl]                                      ; $4523: $96
    jr nz, jr_034_456f                            ; $4524: $20 $49

    dec e                                         ; $4526: $1d
    db $eb                                        ; $4527: $eb
    ld c, $5f                                     ; $4528: $0e $5f
    add b                                         ; $452a: $80
    ld b, h                                       ; $452b: $44
    add l                                         ; $452c: $85
    db $fc                                        ; $452d: $fc
    xor c                                         ; $452e: $a9
    call Call_000_36d2                            ; $452f: $cd $d2 $36
    jp hl                                         ; $4532: $e9


    ld h, e                                       ; $4533: $63
    inc bc                                        ; $4534: $03
    and c                                         ; $4535: $a1
    inc sp                                        ; $4536: $33
    bit 4, a                                      ; $4537: $cb $67
    ld e, c                                       ; $4539: $59
    ld d, a                                       ; $453a: $57
    xor l                                         ; $453b: $ad
    xor [hl]                                      ; $453c: $ae
    cp $d8                                        ; $453d: $fe $d8
    ld b, b                                       ; $453f: $40
    jr z, @-$1b                                   ; $4540: $28 $e3

    dec [hl]                                      ; $4542: $35
    add [hl]                                      ; $4543: $86
    ld a, [hl-]                                   ; $4544: $3a
    call $8c01                                    ; $4545: $cd $01 $8c
    and d                                         ; $4548: $a2
    sub [hl]                                      ; $4549: $96
    sbc h                                         ; $454a: $9c
    and $4c                                       ; $454b: $e6 $4c
    cp $f6                                        ; $454d: $fe $f6
    dec hl                                        ; $454f: $2b
    ld [hl], $cd                                  ; $4550: $36 $cd
    ld bc, $fc09                                  ; $4552: $01 $09 $fc
    dec d                                         ; $4555: $15
    db $fd                                        ; $4556: $fd
    ld a, h                                       ; $4557: $7c
    xor [hl]                                      ; $4558: $ae
    ld d, [hl]                                    ; $4559: $56
    ld a, l                                       ; $455a: $7d
    rra                                           ; $455b: $1f
    and c                                         ; $455c: $a1
    xor h                                         ; $455d: $ac

jr_034_455e:
    push bc                                       ; $455e: $c5
    ld bc, $b9d8                                  ; $455f: $01 $d8 $b9
    xor [hl]                                      ; $4562: $ae
    db $ed                                        ; $4563: $ed
    ld l, b                                       ; $4564: $68
    ld a, a                                       ; $4565: $7f
    and h                                         ; $4566: $a4
    ld e, $d3                                     ; $4567: $1e $d3
    sbc e                                         ; $4569: $9b
    ld [hl], a                                    ; $456a: $77
    cp l                                          ; $456b: $bd
    call $2d4c                                    ; $456c: $cd $4c $2d

jr_034_456f:
    dec bc                                        ; $456f: $0b
    ld l, c                                       ; $4570: $69
    bit 6, h                                      ; $4571: $cb $74
    ld [hl], h                                    ; $4573: $74
    ldh a, [rNR12]                                ; $4574: $f0 $12

jr_034_4576:
    inc c                                         ; $4576: $0c
    cp $20                                        ; $4577: $fe $20
    or d                                          ; $4579: $b2
    ld [hl], e                                    ; $457a: $73
    ld b, a                                       ; $457b: $47
    ld e, l                                       ; $457c: $5d
    nop                                           ; $457d: $00
    sub [hl]                                      ; $457e: $96
    or h                                          ; $457f: $b4
    ld c, c                                       ; $4580: $49
    xor d                                         ; $4581: $aa
    rst $30                                       ; $4582: $f7
    db $10                                        ; $4583: $10

Call_034_4584:
    add h                                         ; $4584: $84
    ld [$afe0], a                                 ; $4585: $ea $e0 $af
    ld a, [$afe2]                                 ; $4588: $fa $e2 $af
    dec de                                        ; $458b: $1b
    db $fc                                        ; $458c: $fc
    ld b, c                                       ; $458d: $41
    dec c                                         ; $458e: $0d
    rst $30                                       ; $458f: $f7
    rst $18                                       ; $4590: $df
    inc hl                                        ; $4591: $23
    and b                                         ; $4592: $a0
    jp c, $e252                                   ; $4593: $da $52 $e2

    ld d, e                                       ; $4596: $53
    db $e4                                        ; $4597: $e4
    rst $08                                       ; $4598: $cf
    ld e, e                                       ; $4599: $5b
    and $25                                       ; $459a: $e6 $25
    ldh [$ce], a                                  ; $459c: $e0 $ce
    ld h, [hl]                                    ; $459e: $66
    dec b                                         ; $459f: $05
    xor $67                                       ; $45a0: $ee $67
    inc sp                                        ; $45a2: $33
    or e                                          ; $45a3: $b3
    sbc $34                                       ; $45a4: $de $34
    rlca                                          ; $45a6: $07
    add hl, bc                                    ; $45a7: $09
    db $fc                                        ; $45a8: $fc
    push af                                       ; $45a9: $f5
    xor $18                                       ; $45aa: $ee $18
    and a                                         ; $45ac: $a7
    ld l, b                                       ; $45ad: $68
    jp z, $ce5a                                   ; $45ae: $ca $5a $ce

    cp l                                          ; $45b1: $bd
    ld e, e                                       ; $45b2: $5b
    ld c, d                                       ; $45b3: $4a
    ld d, [hl]                                    ; $45b4: $56
    ld d, d                                       ; $45b5: $52
    ld [c], a                                     ; $45b6: $e2
    ld d, e                                       ; $45b7: $53
    db $e4                                        ; $45b8: $e4
    rst $08                                       ; $45b9: $cf
    ld e, e                                       ; $45ba: $5b
    and $25                                       ; $45bb: $e6 $25
    ldh [$66], a                                  ; $45bd: $e0 $66
    ld a, [hl]                                    ; $45bf: $7e
    ld h, e                                       ; $45c0: $63
    dec bc                                        ; $45c1: $0b
    and h                                         ; $45c2: $a4
    add hl, sp                                    ; $45c3: $39
    and e                                         ; $45c4: $a3
    cp l                                          ; $45c5: $bd
    ld e, e                                       ; $45c6: $5b
    xor l                                         ; $45c7: $ad
    cp d                                          ; $45c8: $ba
    pop bc                                        ; $45c9: $c1
    rra                                           ; $45ca: $1f
    call nc, $bdb1                                ; $45cb: $d4 $b1 $bd
    ld a, e                                       ; $45ce: $7b
    inc hl                                        ; $45cf: $23
    db $eb                                        ; $45d0: $eb
    dec de                                        ; $45d1: $1b
    sbc e                                         ; $45d2: $9b
    and b                                         ; $45d3: $a0
    pop bc                                        ; $45d4: $c1
    sbc a                                         ; $45d5: $9f
    and l                                         ; $45d6: $a5
    ld l, h                                       ; $45d7: $6c
    jr nz, jr_034_4576                            ; $45d8: $20 $9c

    ld a, e                                       ; $45da: $7b
    rrca                                          ; $45db: $0f
    pop de                                        ; $45dc: $d1
    dec [hl]                                      ; $45dd: $35
    ld d, [hl]                                    ; $45de: $56
    add a                                         ; $45df: $87
    inc [hl]                                      ; $45e0: $34
    di                                            ; $45e1: $f3
    ld a, [hl]                                    ; $45e2: $7e
    add l                                         ; $45e3: $85
    ld d, a                                       ; $45e4: $57
    dec l                                         ; $45e5: $2d
    sbc c                                         ; $45e6: $99
    sbc a                                         ; $45e7: $9f
    or a                                          ; $45e8: $b7
    rst $30                                       ; $45e9: $f7
    ld [hl], b                                    ; $45ea: $70
    ld [hl], l                                    ; $45eb: $75
    jr jr_034_466b                                ; $45ec: $18 $7d

    ld [hl], h                                    ; $45ee: $74
    or h                                          ; $45ef: $b4
    ccf                                           ; $45f0: $3f
    ld d, d                                       ; $45f1: $52
    adc a                                         ; $45f2: $8f
    jp hl                                         ; $45f3: $e9


    dec bc                                        ; $45f4: $0b
    ld c, e                                       ; $45f5: $4b
    sbc d                                         ; $45f6: $9a
    inc bc                                        ; $45f7: $03
    add hl, bc                                    ; $45f8: $09
    ld c, a                                       ; $45f9: $4f
    adc d                                         ; $45fa: $8a
    rla                                           ; $45fb: $17
    and l                                         ; $45fc: $a5
    ld h, b                                       ; $45fd: $60
    jr z, jr_034_466b                             ; $45fe: $28 $6b

    ld b, h                                       ; $4600: $44
    ld c, e                                       ; $4601: $4b
    rlca                                          ; $4602: $07
    dec l                                         ; $4603: $2d
    ret z                                         ; $4604: $c8

    rst $18                                       ; $4605: $df
    dec a                                         ; $4606: $3d
    ld d, [hl]                                    ; $4607: $56
    ld a, e                                       ; $4608: $7b
    db $d3                                        ; $4609: $d3
    inc e                                         ; $460a: $1c
    ld b, e                                       ; $460b: $43
    ld e, c                                       ; $460c: $59
    ld c, e                                       ; $460d: $4b
    push de                                       ; $460e: $d5
    ld h, d                                       ; $460f: $62
    inc bc                                        ; $4610: $03
    and c                                         ; $4611: $a1
    ld a, e                                       ; $4612: $7b
    pop af                                        ; $4613: $f1
    ld d, a                                       ; $4614: $57
    ld [de], a                                    ; $4615: $12
    ld l, e                                       ; $4616: $6b
    ld a, c                                       ; $4617: $79
    ld e, a                                       ; $4618: $5f
    dec c                                         ; $4619: $0d
    ld b, b                                       ; $461a: $40
    scf                                           ; $461b: $37
    ld hl, sp-$7d                                 ; $461c: $f8 $83
    xor $e7                                       ; $461e: $ee $e7
    xor a                                         ; $4620: $af
    sbc c                                         ; $4621: $99
    sbc a                                         ; $4622: $9f
    or a                                          ; $4623: $b7
    ld h, h                                       ; $4624: $64
    ld [hl], l                                    ; $4625: $75
    jr z, jr_034_4698                             ; $4626: $28 $70

    jp c, $a09e                                   ; $4628: $da $9e $a0

    inc l                                         ; $462b: $2c
    ld [$5fbd], sp                                ; $462c: $08 $bd $5f
    sub h                                         ; $462f: $94
    ld a, d                                       ; $4630: $7a
    ld a, e                                       ; $4631: $7b
    rrca                                          ; $4632: $0f
    jp hl                                         ; $4633: $e9


    ld e, [hl]                                    ; $4634: $5e
    db $fc                                        ; $4635: $fc
    push de                                       ; $4636: $d5
    ld [hl], b                                    ; $4637: $70
    rst $38                                       ; $4638: $ff
    ret c                                         ; $4639: $d8

    pop bc                                        ; $463a: $c1
    ld l, e                                       ; $463b: $6b
    ld l, e                                       ; $463c: $6b
    dec h                                         ; $463d: $25
    sbc $32                                       ; $463e: $de $32
    ld c, c                                       ; $4640: $49
    db $e3                                        ; $4641: $e3
    ld b, h                                       ; $4642: $44
    halt                                          ; $4643: $76
    ld [hl], e                                    ; $4644: $73
    add b                                         ; $4645: $80
    or a                                          ; $4646: $b7
    rst $28                                       ; $4647: $ef
    or e                                          ; $4648: $b3
    sbc $b4                                       ; $4649: $de $b4
    dec e                                         ; $464b: $1d
    ld h, [hl]                                    ; $464c: $66
    dec e                                         ; $464d: $1d
    ld e, [hl]                                    ; $464e: $5e
    xor b                                         ; $464f: $a8
    dec d                                         ; $4650: $15
    ld a, a                                       ; $4651: $7f

Jump_034_4652:
    rst $20                                       ; $4652: $e7
    adc $aa                                       ; $4653: $ce $aa
    ld [hl], $c3                                  ; $4655: $36 $c3
    ld hl, $7339                                  ; $4657: $21 $39 $73
    xor d                                         ; $465a: $aa
    ldh a, [$6d]                                  ; $465b: $f0 $6d
    ld c, b                                       ; $465d: $48
    ld c, $c3                                     ; $465e: $0e $c3
    ld de, $faa1                                  ; $4660: $11 $a1 $fa
    ld h, e                                       ; $4663: $63
    scf                                           ; $4664: $37
    sub c                                         ; $4665: $91
    ccf                                           ; $4666: $3f
    inc b                                         ; $4667: $04
    ld [hl], a                                    ; $4668: $77
    db $e4                                        ; $4669: $e4
    and a                                         ; $466a: $a7

jr_034_466b:
    or l                                          ; $466b: $b5
    ld [de], a                                    ; $466c: $12
    rst $10                                       ; $466d: $d7
    sub c                                         ; $466e: $91
    ld a, c                                       ; $466f: $79
    cp l                                          ; $4670: $bd
    ld h, l                                       ; $4671: $65
    sub d                                         ; $4672: $92
    add $89                                       ; $4673: $c6 $89
    db $ec                                        ; $4675: $ec
    and $00                                       ; $4676: $e6 $00
    rst $28                                       ; $4678: $ef
    sub b                                         ; $4679: $90
    inc e                                         ; $467a: $1c
    and e                                         ; $467b: $a3
    ld b, e                                       ; $467c: $43
    adc d                                         ; $467d: $8a
    ld a, [hl]                                    ; $467e: $7e
    sbc $aa                                       ; $467f: $de $aa
    push bc                                       ; $4681: $c5
    xor $c5                                       ; $4682: $ee $c5
    rst $18                                       ; $4684: $df
    cp c                                          ; $4685: $b9
    and e                                         ; $4686: $a3
    ld l, $00                                     ; $4687: $2e $00
    res 2, b                                      ; $4689: $cb $90
    inc e                                         ; $468b: $1c
    ld c, c                                       ; $468c: $49
    ld a, a                                       ; $468d: $7f
    ld l, a                                       ; $468e: $6f
    ld a, $77                                     ; $468f: $3e $77
    call nc, Call_034_6005                        ; $4691: $d4 $05 $60
    ld c, c                                       ; $4694: $49
    db $db                                        ; $4695: $db
    inc h                                         ; $4696: $24
    ld d, l                                       ; $4697: $55

jr_034_4698:
    cp h                                          ; $4698: $bc
    jr z, jr_034_46a0                             ; $4699: $28 $05

    inc hl                                        ; $469b: $23
    ld [hl], h                                    ; $469c: $74
    push de                                       ; $469d: $d5
    or $1e                                        ; $469e: $f6 $1e

jr_034_46a0:
    adc b                                         ; $46a0: $88
    sbc $73                                       ; $46a1: $de $73
    push af                                       ; $46a3: $f5
    ld b, a                                       ; $46a4: $47
    db $ec                                        ; $46a5: $ec

jr_034_46a6:
    pop af                                        ; $46a6: $f1
    or a                                          ; $46a7: $b7
    jr jr_034_46a6                                ; $46a8: $18 $fc

    ld [hl], l                                    ; $46aa: $75
    add e                                         ; $46ab: $83
    ccf                                           ; $46ac: $3f
    add sp, $11                                   ; $46ad: $e8 $11
    ld d, b                                       ; $46af: $50
    ld h, $24                                     ; $46b0: $26 $24
    jp z, $e2cd                                   ; $46b2: $ca $cd $e2

    db $ed                                        ; $46b5: $ed
    ld e, a                                       ; $46b6: $5f
    ld [$d20c], a                                 ; $46b7: $ea $0c $d2
    inc e                                         ; $46ba: $1c
    inc hl                                        ; $46bb: $23
    ccf                                           ; $46bc: $3f
    dec h                                         ; $46bd: $25
    xor [hl]                                      ; $46be: $ae
    ld sp, $1f7d                                  ; $46bf: $31 $7d $1f
    jp z, Jump_034_4948                           ; $46c2: $ca $48 $49

    db $fc                                        ; $46c5: $fc
    sub $cc                                       ; $46c6: $d6 $cc
    rst $28                                       ; $46c8: $ef
    or e                                          ; $46c9: $b3
    ld [hl], b                                    ; $46ca: $70
    xor [hl]                                      ; $46cb: $ae
    cp $88                                        ; $46cc: $fe $88
    dec c                                         ; $46ce: $0d
    cp $ba                                        ; $46cf: $fe $ba
    pop bc                                        ; $46d1: $c1
    rra                                           ; $46d2: $1f
    db $f4                                        ; $46d3: $f4
    add l                                         ; $46d4: $85
    and l                                         ; $46d5: $a5
    rst $30                                       ; $46d6: $f7
    cpl                                           ; $46d7: $2f
    ld b, e                                       ; $46d8: $43
    jp c, Jump_000_25b9                           ; $46d9: $da $b9 $25

    or $56                                        ; $46dc: $f6 $56
    dec e                                         ; $46de: $1d
    ld b, [hl]                                    ; $46df: $46
    ld l, a                                       ; $46e0: $6f
    ld b, a                                       ; $46e1: $47
    ld a, [hl-]                                   ; $46e2: $3a
    ei                                            ; $46e3: $fb
    inc bc                                        ; $46e4: $03
    rst $10                                       ; $46e5: $d7
    db $dd                                        ; $46e6: $dd
    ld [hl-], a                                   ; $46e7: $32
    pop af                                        ; $46e8: $f1
    call c, $f7f2                                 ; $46e9: $dc $f2 $f7
    ld d, [hl]                                    ; $46ec: $56
    or l                                          ; $46ed: $b5
    cp d                                          ; $46ee: $ba
    jp c, $eeb1                                   ; $46ef: $da $b1 $ee

    ld l, b                                       ; $46f2: $68
    or l                                          ; $46f3: $b5
    jp c, $bbdb                                   ; $46f4: $da $db $bb

    ld b, l                                       ; $46f7: $45
    ld a, e                                       ; $46f8: $7b
    sbc e                                         ; $46f9: $9b
    ld sp, hl                                     ; $46fa: $f9
    add hl, sp                                    ; $46fb: $39
    jr z, @-$5a                                   ; $46fc: $28 $a4

    add hl, sp                                    ; $46fe: $39
    adc h                                         ; $46ff: $8c
    sbc $af                                       ; $4700: $de $af
    adc d                                         ; $4702: $8a
    ld d, a                                       ; $4703: $57
    rrca                                          ; $4704: $0f
    add l                                         ; $4705: $85
    ret c                                         ; $4706: $d8

    db $e3                                        ; $4707: $e3
    ld l, a                                       ; $4708: $6f
    dec e                                         ; $4709: $1d
    db $eb                                        ; $470a: $eb
    dec l                                         ; $470b: $2d
    ld e, [hl]                                    ; $470c: $5e
    sub h                                         ; $470d: $94
    ccf                                           ; $470e: $3f
    ld l, a                                       ; $470f: $6f
    rst $20                                       ; $4710: $e7
    ld e, $23                                     ; $4711: $1e $23
    ld a, a                                       ; $4713: $7f
    rst $10                                       ; $4714: $d7
    ld e, e                                       ; $4715: $5b
    sub $ef                                       ; $4716: $d6 $ef
    xor a                                         ; $4718: $af
    ld [hl], $dd                                  ; $4719: $36 $dd
    ld hl, $8c39                                  ; $471b: $21 $39 $8c
    ld a, [bc]                                    ; $471e: $0a
    sbc d                                         ; $471f: $9a
    ld sp, hl                                     ; $4720: $f9
    ld hl, sp-$04                                 ; $4721: $f8 $fc
    pop bc                                        ; $4723: $c1
    cp c                                          ; $4724: $b9
    ret                                           ; $4725: $c9


    ld e, a                                       ; $4726: $5f
    ld h, h                                       ; $4727: $64
    ld c, h                                       ; $4728: $4c
    sbc d                                         ; $4729: $9a
    inc bc                                        ; $472a: $03
    di                                            ; $472b: $f3
    add [hl]                                      ; $472c: $86
    ld l, c                                       ; $472d: $69
    ld b, a                                       ; $472e: $47
    add a                                         ; $472f: $87
    or b                                          ; $4730: $b0
    and [hl]                                      ; $4731: $a6
    ld d, l                                       ; $4732: $55
    ld b, a                                       ; $4733: $47
    dec e                                         ; $4734: $1d
    db $db                                        ; $4735: $db
    add c                                         ; $4736: $81
    rst $38                                       ; $4737: $ff
    and l                                         ; $4738: $a5
    ld c, h                                       ; $4739: $4c
    jp nc, $9138                                  ; $473a: $d2 $38 $91

    db $dd                                        ; $473d: $dd
    inc e                                         ; $473e: $1c
    ldh [rKEY1], a                                ; $473f: $e0 $4d
    ld [hl], e                                    ; $4741: $73
    adc h                                         ; $4742: $8c
    sub h                                         ; $4743: $94
    call nz, $cd6f                                ; $4744: $c4 $6f $cd
    db $fc                                        ; $4747: $fc
    ld a, $0b                                     ; $4748: $3e $0b
    rst $20                                       ; $474a: $e7
    ld h, $7f                                     ; $474b: $26 $7f
    sub c                                         ; $474d: $91
    ld sp, $0e69                                  ; $474e: $31 $69 $0e
    or e                                          ; $4751: $b3
    ld a, [de]                                    ; $4752: $1a
    ret z                                         ; $4753: $c8

    ret nc                                        ; $4754: $d0

    ld a, e                                       ; $4755: $7b
    adc b                                         ; $4756: $88

Jump_034_4757:
    xor [hl]                                      ; $4757: $ae
    and l                                         ; $4758: $a5
    ld a, e                                       ; $4759: $7b
    pop af                                        ; $475a: $f1
    rst $10                                       ; $475b: $d7
    call z, Call_034_6387                         ; $475c: $cc $87 $63
    dec l                                         ; $475f: $2d
    cp l                                          ; $4760: $bd
    ld e, e                                       ; $4761: $5b
    or h                                          ; $4762: $b4
    scf                                           ; $4763: $37
    ld l, l                                       ; $4764: $6d
    jp nc, $bec7                                  ; $4765: $d2 $c7 $be

    rst $08                                       ; $4768: $cf
    ld a, d                                       ; $4769: $7a
    ld a, e                                       ; $476a: $7b
    rrca                                          ; $476b: $0f
    jp hl                                         ; $476c: $e9


    ld a, [hl+]                                   ; $476d: $2a
    xor c                                         ; $476e: $a9
    ld c, $29                                     ; $476f: $0e $29
    ld e, c                                       ; $4771: $59
    ld [hl], l                                    ; $4772: $75
    ret nc                                        ; $4773: $d0

    and d                                         ; $4774: $a2
    rst $38                                       ; $4775: $ff
    sbc $bc                                       ; $4776: $de $bc
    ld b, e                                       ; $4778: $43
    ld [hl], d                                    ; $4779: $72
    di                                            ; $477a: $f3
    add [hl]                                      ; $477b: $86
    add hl, hl                                    ; $477c: $29
    ld [hl], l                                    ; $477d: $75
    ldh a, [rTAC]                                 ; $477e: $f0 $07
    ld h, l                                       ; $4780: $65
    inc bc                                        ; $4781: $03
    and c                                         ; $4782: $a1
    ld e, d                                       ; $4783: $5a
    ld d, l                                       ; $4784: $55
    ld e, a                                       ; $4785: $5f
    db $fc                                        ; $4786: $fc
    ld [hl], l                                    ; $4787: $75
    add e                                         ; $4788: $83
    ccf                                           ; $4789: $3f
    jr z, jr_034_47ea                             ; $478a: $28 $5e

    call $f1bc                                    ; $478c: $cd $bc $f1
    jp hl                                         ; $478f: $e9


    cp c                                          ; $4790: $b9
    rst $30                                       ; $4791: $f7
    ld [hl], b                                    ; $4792: $70
    ccf                                           ; $4793: $3f
    and l                                         ; $4794: $a5
    ld l, $eb                                     ; $4795: $2e $eb
    rst $30                                       ; $4797: $f7
    push de                                       ; $4798: $d5
    nop                                           ; $4799: $00
    ld a, b                                       ; $479a: $78
    db $d3                                        ; $479b: $d3
    inc e                                         ; $479c: $1c
    add hl, bc                                    ; $479d: $09
    db $db                                        ; $479e: $db
    cp e                                          ; $479f: $bb
    scf                                           ; $47a0: $37
    ld [hl-], a                                   ; $47a1: $32
    ld l, a                                       ; $47a2: $6f
    ld b, a                                       ; $47a3: $47
    add $2a                                       ; $47a4: $c6 $2a
    ldh a, [$d6]                                  ; $47a6: $f0 $d6
    ld [hl+], a                                   ; $47a8: $22
    ld c, $fe                                     ; $47a9: $0e $fe
    cp h                                          ; $47ab: $bc
    cp l                                          ; $47ac: $bd
    add a                                         ; $47ad: $87
    inc [hl]                                      ; $47ae: $34
    or [hl]                                       ; $47af: $b6
    ret                                           ; $47b0: $c9


    ld d, a                                       ; $47b1: $57
    halt                                          ; $47b2: $76
    rst $38                                       ; $47b3: $ff
    ld [bc], a                                    ; $47b4: $02
    sbc b                                         ; $47b5: $98
    halt                                          ; $47b6: $76
    ld e, b                                       ; $47b7: $58
    nop                                           ; $47b8: $00
    cp b                                          ; $47b9: $b8
    db $e4                                        ; $47ba: $e4

jr_034_47bb:
    ldh a, [$f3]                                  ; $47bb: $f0 $f3
    sub [hl]                                      ; $47bd: $96
    add hl, de                                    ; $47be: $19
    ld l, [hl]                                    ; $47bf: $6e

Call_034_47c0:
    jp nz, $b713                                  ; $47c0: $c2 $13 $b7

    ret                                           ; $47c3: $c9


    ld d, a                                       ; $47c4: $57
    halt                                          ; $47c5: $76
    rst $38                                       ; $47c6: $ff
    ld [bc], a                                    ; $47c7: $02
    jr c, jr_034_47bb                             ; $47c8: $38 $f1

    inc a                                         ; $47ca: $3c
    rst $00                                       ; $47cb: $c7
    ld c, e                                       ; $47cc: $4b
    call c, $fdcc                                 ; $47cd: $dc $cc $fd
    ld e, e                                       ; $47d0: $5b
    sub $83                                       ; $47d1: $d6 $83
    sub a                                         ; $47d3: $97
    sub h                                         ; $47d4: $94
    add hl, de                                    ; $47d5: $19
    xor [hl]                                      ; $47d6: $ae
    or $f6                                        ; $47d7: $f6 $f6
    inc b                                         ; $47d9: $04
    sub l                                         ; $47da: $95
    ld [hl], l                                    ; $47db: $75
    ret nc                                        ; $47dc: $d0

    ld b, d                                       ; $47dd: $42
    ccf                                           ; $47de: $3f
    and d                                         ; $47df: $a2
    scf                                           ; $47e0: $37
    call $2301                                    ; $47e1: $cd $01 $23
    xor [hl]                                      ; $47e4: $ae
    db $e3                                        ; $47e5: $e3
    add b                                         ; $47e6: $80
    ld a, [hl]                                    ; $47e7: $7e
    ld c, d                                       ; $47e8: $4a
    ld e, l                                       ; $47e9: $5d

jr_034_47ea:
    or d                                          ; $47ea: $b2
    ld [$9211], a                                 ; $47eb: $ea $11 $92
    and $a3                                       ; $47ee: $e6 $a3
    ld b, e                                       ; $47f0: $43
    ld c, d                                       ; $47f1: $4a
    db $fc                                        ; $47f2: $fc
    daa                                           ; $47f3: $27
    sbc $c6                                       ; $47f4: $de $c6
    halt                                          ; $47f6: $76
    ret c                                         ; $47f7: $d8

    ld [hl], l                                    ; $47f8: $75
    add c                                         ; $47f9: $81
    or a                                          ; $47fa: $b7
    inc h                                         ; $47fb: $24
    sub $52                                       ; $47fc: $d6 $52
    db $ed                                        ; $47fe: $ed
    dec l                                         ; $47ff: $2d
    db $d3                                        ; $4800: $d3
    xor $7e                                       ; $4801: $ee $7e
    cp $9a                                        ; $4803: $fe $9a
    ld a, h                                       ; $4805: $7c
    ld h, l                                       ; $4806: $65

Jump_034_4807:
    rst $30                                       ; $4807: $f7
    cpl                                           ; $4808: $2f
    add b                                         ; $4809: $80
    ld l, c                                       ; $480a: $69
    sub e                                         ; $480b: $93
    inc de                                        ; $480c: $13
    ld d, a                                       ; $480d: $57
    cp e                                          ; $480e: $bb
    ld l, d                                       ; $480f: $6a
    ld [hl], l                                    ; $4810: $75
    ld h, a                                       ; $4811: $67
    ld hl, $e38d                                  ; $4812: $21 $8d $e3
    ld a, [hl]                                    ; $4815: $7e
    add l                                         ; $4816: $85
    push de                                       ; $4817: $d5
    ld a, $3a                                     ; $4818: $3e $3a
    ld a, [$5a23]                                 ; $481a: $fa $23 $5a
    ld c, d                                       ; $481d: $4a
    ccf                                           ; $481e: $3f
    and d                                         ; $481f: $a2
    or a                                          ; $4820: $b7
    ld l, d                                       ; $4821: $6a
    ld [hl], l                                    ; $4822: $75
    cp a                                          ; $4823: $bf
    ld [hl+], a                                   ; $4824: $22

Jump_034_4825:
    ld b, $3e                                     ; $4825: $06 $3e
    and d                                         ; $4827: $a2
    rst $30                                       ; $4828: $f7
    ld e, h                                       ; $4829: $5c
    db $fd                                        ; $482a: $fd
    ld de, $c3ab                                  ; $482b: $11 $ab $c3
    sbc l                                         ; $482e: $9d
    rst $20                                       ; $482f: $e7
    ld a, b                                       ; $4830: $78
    adc c                                         ; $4831: $89
    sbc e                                         ; $4832: $9b
    cp c                                          ; $4833: $b9
    dec de                                        ; $4834: $1b
    db $fc                                        ; $4835: $fc
    ld b, c                                       ; $4836: $41
    db $e3                                        ; $4837: $e3
    add sp, -$18                                  ; $4838: $e8 $e8
    adc a                                         ; $483a: $8f
    ld l, b                                       ; $483b: $68
    jp hl                                         ; $483c: $e9


    ld c, e                                       ; $483d: $4b
    call c, $9bcc                                 ; $483e: $dc $cc $9b
    halt                                          ; $4841: $76
    jr z, jr_034_48c3                             ; $4842: $28 $7f

    dec a                                         ; $4844: $3d
    push af                                       ; $4845: $f5
    sbc a                                         ; $4846: $9f
    dec de                                        ; $4847: $1b
    ld b, a                                       ; $4848: $47
    ld b, a                                       ; $4849: $47
    ld a, a                                       ; $484a: $7f
    ld b, h                                       ; $484b: $44
    ld c, e                                       ; $484c: $4b
    or e                                          ; $484d: $b3
    ld h, b                                       ; $484e: $60
    ld h, c                                       ; $484f: $61
    ld a, h                                       ; $4850: $7c
    db $ec                                        ; $4851: $ec
    ld e, h                                       ; $4852: $5c
    ld h, c                                       ; $4853: $61
    db $f4                                        ; $4854: $f4
    ld b, d                                       ; $4855: $42
    inc l                                         ; $4856: $2c
    ld a, b                                       ; $4857: $78

Call_034_4858:
    adc c                                         ; $4858: $89
    ld b, b                                       ; $4859: $40
    cp $5c                                        ; $485a: $fe $5c
    or l                                          ; $485c: $b5
    cp d                                          ; $485d: $ba
    ld a, a                                       ; $485e: $7f
    or l                                          ; $485f: $b5
    push bc                                       ; $4860: $c5
    dec h                                         ; $4861: $25
    sub h                                         ; $4862: $94
    ldh a, [rTAC]                                 ; $4863: $f0 $07
    ld d, $71                                     ; $4865: $16 $71
    and $d5                                       ; $4867: $e6 $d5
    xor $c8                                       ; $4869: $ee $c8
    ld l, e                                       ; $486b: $6b
    ld de, $4d2c                                  ; $486c: $11 $2c $4d
    db $d3                                        ; $486f: $d3
    inc [hl]                                      ; $4870: $34
    rlca                                          ; $4871: $07
    inc hl                                        ; $4872: $23
    xor a                                         ; $4873: $af
    ld b, l                                       ; $4874: $45
    or b                                          ; $4875: $b0
    call z, $0398                                 ; $4876: $cc $98 $03
    add hl, bc                                    ; $4879: $09
    db $fc                                        ; $487a: $fc
    push af                                       ; $487b: $f5
    ld c, [hl]                                    ; $487c: $4e
    ld e, d                                       ; $487d: $5a
    db $e4                                        ; $487e: $e4
    rrca                                          ; $487f: $0f
    ld a, h                                       ; $4880: $7c
    ld l, [hl]                                    ; $4881: $6e
    ldh a, [$d7]                                  ; $4882: $f0 $d7
    dec sp                                        ; $4884: $3b
    add hl, bc                                    ; $4885: $09
    ld de, $c75c                                  ; $4886: $11 $5c $c7
    halt                                          ; $4889: $76
    ldh [$7f], a                                  ; $488a: $e0 $7f
    jp hl                                         ; $488c: $e9


    add hl, bc                                    ; $488d: $09
    ld e, a                                       ; $488e: $5f
    or c                                          ; $488f: $b1
    ld d, $1c                                     ; $4890: $16 $1c
    db $10                                        ; $4892: $10
    ld [de], a                                    ; $4893: $12
    ld a, a                                       ; $4894: $7f
    ld c, [hl]                                    ; $4895: $4e
    ld [hl], e                                    ; $4896: $73
    ld b, e                                       ; $4897: $43
    dec d                                         ; $4898: $15
    ld d, c                                       ; $4899: $51
    or d                                          ; $489a: $b2
    xor d                                         ; $489b: $aa
    or $76                                        ; $489c: $f6 $76
    ret c                                         ; $489e: $d8

    ld [hl], l                                    ; $489f: $75
    add c                                         ; $48a0: $81
    scf                                           ; $48a1: $37
    call Call_034_4901                            ; $48a2: $cd $01 $49
    rra                                           ; $48a5: $1f
    ld a, e                                       ; $48a6: $7b
    rst $38                                       ; $48a7: $ff
    jp nc, $8901                                  ; $48a8: $d2 $01 $89

    db $e3                                        ; $48ab: $e3
    and a                                         ; $48ac: $a7
    ld h, l                                       ; $48ad: $65
    ld d, h                                       ; $48ae: $54
    ldh [$0e], a                                  ; $48af: $e0 $0e
    dec d                                         ; $48b1: $15
    sub $01                                       ; $48b2: $d6 $01
    rst $20                                       ; $48b4: $e7
    ld h, $7f                                     ; $48b5: $26 $7f
    sub c                                         ; $48b7: $91
    ld sp, $0e69                                  ; $48b8: $31 $69 $0e
    ld b, e                                       ; $48bb: $43
    ld sp, hl                                     ; $48bc: $f9
    dec sp                                        ; $48bd: $3b
    scf                                           ; $48be: $37
    ld hl, sp-$15                                 ; $48bf: $f8 $eb
    ei                                            ; $48c1: $fb
    xor h                                         ; $48c2: $ac

jr_034_48c3:
    xor e                                         ; $48c3: $ab
    cpl                                           ; $48c4: $2f
    cp $ba                                        ; $48c5: $fe $ba
    ld c, d                                       ; $48c7: $4a
    sbc d                                         ; $48c8: $9a
    and [hl]                                      ; $48c9: $a6
    ld l, c                                       ; $48ca: $69
    rst $18                                       ; $48cb: $df
    pop de                                        ; $48cc: $d1
    inc [hl]                                      ; $48cd: $34
    ld c, l                                       ; $48ce: $4d
    xor e                                         ; $48cf: $ab
    rst $38                                       ; $48d0: $ff
    sbc $dc                                       ; $48d1: $de $dc
    inc [hl]                                      ; $48d3: $34

jr_034_48d4:
    ld c, l                                       ; $48d4: $4d
    ld [hl], e                                    ; $48d5: $73
    or e                                          ; $48d6: $b3
    ld a, [de]                                    ; $48d7: $1a
    ret z                                         ; $48d8: $c8

    ret nc                                        ; $48d9: $d0

    rst $08                                       ; $48da: $cf
    ld e, d                                       ; $48db: $5a
    xor d                                         ; $48dc: $aa
    ccf                                           ; $48dd: $3f
    and l                                         ; $48de: $a5
    ld d, c                                       ; $48df: $51
    xor l                                         ; $48e0: $ad
    add h                                         ; $48e1: $84
    cp a                                          ; $48e2: $bf
    ld l, d                                       ; $48e3: $6a
    ld l, a                                       ; $48e4: $6f
    ld b, a                                       ; $48e5: $47
    ld e, b                                       ; $48e6: $58
    ld l, [hl]                                    ; $48e7: $6e
    sub [hl]                                      ; $48e8: $96
    xor d                                         ; $48e9: $aa
    push de                                       ; $48ea: $d5
    sub l                                         ; $48eb: $95
    xor a                                         ; $48ec: $af
    adc b                                         ; $48ed: $88
    xor $e7                                       ; $48ee: $ee $e7
    xor a                                         ; $48f0: $af
    ret                                           ; $48f1: $c9


    ld d, a                                       ; $48f2: $57
    halt                                          ; $48f3: $76
    rst $38                                       ; $48f4: $ff
    ld [bc], a                                    ; $48f5: $02
    sbc b                                         ; $48f6: $98
    and $c9                                       ; $48f7: $e6 $c9
    xor [hl]                                      ; $48f9: $ae
    ld d, [hl]                                    ; $48fa: $56
    push de                                       ; $48fb: $d5
    rst $38                                       ; $48fc: $ff
    call c, Call_000_11f7                         ; $48fd: $dc $f7 $11
    xor d                                         ; $4900: $aa

Call_034_4901:
    ld d, l                                       ; $4901: $55
    or l                                          ; $4902: $b5
    ld h, e                                       ; $4903: $63
    db $dd                                        ; $4904: $dd
    ld de, $3632                                  ; $4905: $11 $32 $36
    ld a, b                                       ; $4908: $78
    add $1c                                       ; $4909: $c6 $1c
    or e                                          ; $490b: $b3
    cp $73                                        ; $490c: $fe $73
    rst $20                                       ; $490e: $e7
    ld d, $0f                                     ; $490f: $16 $0f
    ld e, [hl]                                    ; $4911: $5e
    jp nc, $e840                                  ; $4912: $d2 $40 $e8

    dec bc                                        ; $4915: $0b
    ld c, e                                       ; $4916: $4b
    ld e, c                                       ; $4917: $59
    ld b, a                                       ; $4918: $47
    adc a                                         ; $4919: $8f
    sub b                                         ; $491a: $90
    ld [hl], e                                    ; $491b: $73

Jump_034_491c:
    push af                                       ; $491c: $f5
    rst $18                                       ; $491d: $df
    sbc e                                         ; $491e: $9b
    db $d3                                        ; $491f: $d3
    inc e                                         ; $4920: $1c
    ld b, e                                       ; $4921: $43
    add hl, hl                                    ; $4922: $29
    dec [hl]                                      ; $4923: $35
    or $46                                        ; $4924: $f6 $46
    cp a                                          ; $4926: $bf
    and h                                         ; $4927: $a4
    ld c, l                                       ; $4928: $4d
    ld a, [bc]                                    ; $4929: $0a
    cp $a0                                        ; $492a: $fe $a0
    xor h                                         ; $492c: $ac
    and e                                         ; $492d: $a3
    ld b, a                                       ; $492e: $47
    ld c, b                                       ; $492f: $48
    ld e, c                                       ; $4930: $59
    ld [$bd60], a                                 ; $4931: $ea $60 $bd
    ld d, l                                       ; $4934: $55
    xor e                                         ; $4935: $ab
    cp e                                          ; $4936: $bb

jr_034_4937:
    pop bc                                        ; $4937: $c1
    rra                                           ; $4938: $1f
    ld d, h                                       ; $4939: $54
    call nc, $de21                                ; $493a: $d4 $21 $de
    push af                                       ; $493d: $f5
    and [hl]                                      ; $493e: $a6

jr_034_493f:
    dec e                                         ; $493f: $1d
    xor d                                         ; $4940: $aa
    adc b                                         ; $4941: $88
    ld l, d                                       ; $4942: $6a
    rra                                           ; $4943: $1f
    ld c, l                                       ; $4944: $4d
    cp $6a                                        ; $4945: $fe $6a
    nop                                           ; $4947: $00

Jump_034_4948:
    xor $ce                                       ; $4948: $ee $ce
    ld a, d                                       ; $494a: $7a
    adc a                                         ; $494b: $8f
    db $e3                                        ; $494c: $e3
    jr nc, jr_034_48d4                            ; $494d: $30 $85

    ld a, [de]                                    ; $494f: $1a
    dec sp                                        ; $4950: $3b
    ld a, b                                       ; $4951: $78
    ld l, l                                       ; $4952: $6d
    ld l, a                                       ; $4953: $6f
    ld a, [c]                                     ; $4954: $f2
    ld e, c                                       ; $4955: $59
    sub $74                                       ; $4956: $d6 $74
    or l                                          ; $4958: $b5
    adc a                                         ; $4959: $8f
    ld [hl], e                                    ; $495a: $73
    ld l, a                                       ; $495b: $6f
    ld [de], a                                    ; $495c: $12
    and $cf                                       ; $495d: $e6 $cf
    xor e                                         ; $495f: $ab
    ld a, l                                       ; $4960: $7d
    ld [hl], h                                    ; $4961: $74
    sbc $f0                                       ; $4962: $de $f0
    inc hl                                        ; $4964: $23
    ld e, e                                       ; $4965: $5b
    ld h, l                                       ; $4966: $65
    ld l, c                                       ; $4967: $69
    ld b, a                                       ; $4968: $47
    sub b                                         ; $4969: $90
    adc [hl]                                      ; $496a: $8e
    jp $b502                                      ; $496b: $c3 $02 $b5


    ld [c], a                                     ; $496e: $e2
    xor a                                         ; $496f: $af
    dec de                                        ; $4970: $1b
    db $fc                                        ; $4971: $fc
    ld b, c                                       ; $4972: $41
    push de                                       ; $4973: $d5
    ld d, c                                       ; $4974: $51
    dec e                                         ; $4975: $1d
    ld l, $93                                     ; $4976: $2e $93
    cp a                                          ; $4978: $bf
    ld b, h                                       ; $4979: $44
    jr nz, jr_034_4937                            ; $497a: $20 $bb

    or c                                          ; $497c: $b1
    push de                                       ; $497d: $d5
    sbc $32                                       ; $497e: $de $32
    dec e                                         ; $4980: $1d
    ldh [$cd], a                                  ; $4981: $e0 $cd
    ld [de], a                                    ; $4983: $12
    scf                                           ; $4984: $37
    di                                            ; $4985: $f3
    and [hl]                                      ; $4986: $a6
    sbc l                                         ; $4987: $9d
    db $ed                                        ; $4988: $ed
    jp nz, $7e66                                  ; $4989: $c2 $66 $7e

    jr nc, jr_034_49cc                            ; $498c: $30 $3e

    and [hl]                                      ; $498e: $a6
    add hl, sp                                    ; $498f: $39
    ld c, c                                       ; $4990: $49
    cp a                                          ; $4991: $bf
    jr jr_034_493f                                ; $4992: $18 $ab

    ld a, e                                       ; $4994: $7b
    rrca                                          ; $4995: $0f
    add hl, de                                    ; $4996: $19
    jp nc, $e5b9                                  ; $4997: $d2 $b9 $e5

    ld [c], a                                     ; $499a: $e2
    scf                                           ; $499b: $37
    ld l, a                                       ; $499c: $6f
    push de                                       ; $499d: $d5
    ld [$afde], a                                 ; $499e: $ea $de $af
    ld b, a                                       ; $49a1: $47
    cp a                                          ; $49a2: $bf
    ld [hl+], a                                   ; $49a3: $22
    add [hl]                                      ; $49a4: $86
    db $e4                                        ; $49a5: $e4
    add hl, bc                                    ; $49a6: $09
    ld [$4ccd], sp                                ; $49a7: $08 $cd $4c
    inc h                                         ; $49aa: $24
    ld a, $a1                                     ; $49ab: $3e $a1
    pop bc                                        ; $49ad: $c1
    rst $18                                       ; $49ae: $df
    cp c                                          ; $49af: $b9
    ld [hl], a                                    ; $49b0: $77
    rst $28                                       ; $49b1: $ef
    ld d, [hl]                                    ; $49b2: $56
    xor e                                         ; $49b3: $ab
    ld [$afe0], a                                 ; $49b4: $ea $e0 $af
    sbc a                                         ; $49b7: $9f
    ld d, d                                       ; $49b8: $52
    rst $00                                       ; $49b9: $c7
    ld d, [hl]                                    ; $49ba: $56
    call nc, $e201                                ; $49bb: $d4 $01 $e2
    ld h, b                                       ; $49be: $60
    ld de, $4dce                                  ; $49bf: $11 $ce $4d
    cp $22                                        ; $49c2: $fe $22
    ld h, e                                       ; $49c4: $63
    jp nc, $231c                                  ; $49c5: $d2 $1c $23

    ccf                                           ; $49c8: $3f
    ld a, a                                       ; $49c9: $7f
    ret nc                                        ; $49ca: $d0

    pop bc                                        ; $49cb: $c1

jr_034_49cc:
    ld c, e                                       ; $49cc: $4b
    cp $9e                                        ; $49cd: $fe $9e
    ei                                            ; $49cf: $fb
    ld a, $db                                     ; $49d0: $3e $db
    sbc e                                         ; $49d2: $9b
    ld h, e                                       ; $49d3: $63
    db $dd                                        ; $49d4: $dd
    reti                                          ; $49d5: $d9


    inc d                                         ; $49d6: $14
    jp nz, $08b9                                  ; $49d7: $c2 $b9 $08

    adc c                                         ; $49da: $89
    xor e                                         ; $49db: $ab
    inc hl                                        ; $49dc: $23
    xor e                                         ; $49dd: $ab
    ld c, $77                                     ; $49de: $0e $77
    or $cf                                        ; $49e0: $f6 $cf
    rra                                           ; $49e2: $1f
    sbc c                                         ; $49e3: $99
    sub h                                         ; $49e4: $94
    ld d, c                                       ; $49e5: $51
    ld c, e                                       ; $49e6: $4b
    dec e                                         ; $49e7: $1d
    ld c, e                                       ; $49e8: $4b
    ld d, [hl]                                    ; $49e9: $56
    ld hl, sp-$71                                 ; $49ea: $f8 $8f
    jp $d374                                      ; $49ec: $c3 $74 $d3


    inc e                                         ; $49ef: $1c
    ret                                           ; $49f0: $c9


    sbc a                                         ; $49f1: $9f
    db $ed                                        ; $49f2: $ed
    ld de, $e652                                  ; $49f3: $11 $52 $e6
    dec h                                         ; $49f6: $25
    sbc c                                         ; $49f7: $99

jr_034_49f8:
    or a                                          ; $49f8: $b7
    ld [$0ea8], a                                 ; $49f9: $ea $a8 $0e
    cp $9a                                        ; $49fc: $fe $9a
    ld sp, hl                                     ; $49fe: $f9
    ld hl, sp-$04                                 ; $49ff: $f8 $fc
    pop bc                                        ; $4a01: $c1
    cp c                                          ; $4a02: $b9
    ret                                           ; $4a03: $c9


    ld e, a                                       ; $4a04: $5f
    ld h, h                                       ; $4a05: $64
    ld c, h                                       ; $4a06: $4c
    sbc d                                         ; $4a07: $9a
    inc bc                                        ; $4a08: $03
    or e                                          ; $4a09: $b3
    rlca                                          ; $4a0a: $07
    ld a, a                                       ; $4a0b: $7f
    ret nc                                        ; $4a0c: $d0

    call z, $b5f2                                 ; $4a0d: $cc $f2 $b5
    cp e                                          ; $4a10: $bb
    ld b, $e8                                     ; $4a11: $06 $e8
    ldh [$b5], a                                  ; $4a13: $e0 $b5
    push de                                       ; $4a15: $d5
    ld hl, $3ae7                                  ; $4a16: $21 $e7 $3a
    sub [hl]                                      ; $4a19: $96
    ld hl, sp-$04                                 ; $4a1a: $f8 $fc
    push af                                       ; $4a1c: $f5
    or e                                          ; $4a1d: $b3
    ld h, h                                       ; $4a1e: $64
    push af                                       ; $4a1f: $f5
    cp [hl]                                       ; $4a20: $be
    ld a, [c]                                     ; $4a21: $f2
    ld d, [hl]                                    ; $4a22: $56
    xor l                                         ; $4a23: $ad
    xor [hl]                                      ; $4a24: $ae
    or $d1                                        ; $4a25: $f6 $d1
    ld c, a                                       ; $4a27: $4f
    pop bc                                        ; $4a28: $c1
    db $db                                        ; $4a29: $db
    db $e4                                        ; $4a2a: $e4
    sbc a                                         ; $4a2b: $9f
    ld c, c                                       ; $4a2c: $49
    add sp, $3a                                   ; $4a2d: $e8 $3a
    sub $5b                                       ; $4a2f: $d6 $5b
    ld h, $7f                                     ; $4a31: $26 $7f
    ld h, d                                       ; $4a33: $62
    ld a, [hl]                                    ; $4a34: $7e

jr_034_4a35:
    di                                            ; $4a35: $f3
    sub $b1                                       ; $4a36: $d6 $b1
    ld h, h                                       ; $4a38: $64
    ld [hl], l                                    ; $4a39: $75
    ld [$bccf], a                                 ; $4a3a: $ea $cf $bc
    rst $20                                       ; $4a3d: $e7
    ld h, $7f                                     ; $4a3e: $26 $7f
    sub c                                         ; $4a40: $91
    ld sp, $0e69                                  ; $4a41: $31 $69 $0e
    ld b, e                                       ; $4a44: $43
    add hl, hl                                    ; $4a45: $29
    ld [hl], l                                    ; $4a46: $75
    rst $38                                       ; $4a47: $ff
    ld l, d                                       ; $4a48: $6a
    adc e                                         ; $4a49: $8b
    or a                                          ; $4a4a: $b7
    jr jr_034_49f8                                ; $4a4b: $18 $ab

    adc e                                         ; $4a4d: $8b
    db $fc                                        ; $4a4e: $fc

Jump_034_4a4f:
    ld e, l                                       ; $4a4f: $5d
    ld e, e                                       ; $4a50: $5b
    dec l                                         ; $4a51: $2d
    or c                                          ; $4a52: $b1
    db $eb                                        ; $4a53: $eb
    ld c, l                                       ; $4a54: $4d
    ld [hl], e                                    ; $4a55: $73
    jp $a102                                      ; $4a56: $c3 $02 $a1


    ret z                                         ; $4a59: $c8

    rra                                           ; $4a5a: $1f
    adc l                                         ; $4a5b: $8d
    db $e3                                        ; $4a5c: $e3
    or b                                          ; $4a5d: $b0
    db $f4                                        ; $4a5e: $f4
    ld d, e                                       ; $4a5f: $53
    db $ec                                        ; $4a60: $ec
    db $ec                                        ; $4a61: $ec
    ld e, $0c                                     ; $4a62: $1e $0c
    ld c, d                                       ; $4a64: $4a
    adc l                                         ; $4a65: $8d
    dec e                                         ; $4a66: $1d
    ld hl, $8363                                  ; $4a67: $21 $63 $83
    db $d3                                        ; $4a6a: $d3
    ld c, $8f                                     ; $4a6b: $0e $8f
    dec h                                         ; $4a6d: $25
    ld a, $7f                                     ; $4a6e: $3e $7f
    db $fd                                        ; $4a70: $fd
    db $ec                                        ; $4a71: $ec
    ei                                            ; $4a72: $fb
    jp z, Jump_034_40db                           ; $4a73: $ca $db $40

    add sp, $06                                   ; $4a76: $e8 $06
    ld a, a                                       ; $4a78: $7f
    ret nc                                        ; $4a79: $d0

    dec [hl]                                      ; $4a7a: $35
    ret nz                                        ; $4a7b: $c0

    cp c                                          ; $4a7c: $b9
    ret                                           ; $4a7d: $c9


    ld e, a                                       ; $4a7e: $5f
    ld h, h                                       ; $4a7f: $64
    call z, Call_000_1c90                         ; $4a80: $cc $90 $1c
    and e                                         ; $4a83: $a3
    dec l                                         ; $4a84: $2d
    jp c, $f65b                                   ; $4a85: $da $5b $f6

    ld d, e                                       ; $4a88: $53
    ld e, l                                       ; $4a89: $5d
    db $fd                                        ; $4a8a: $fd
    adc e                                         ; $4a8b: $8b
    adc [hl]                                      ; $4a8c: $8e
    dec a                                         ; $4a8d: $3d
    rst $30                                       ; $4a8e: $f7
    xor $dd                                       ; $4a8f: $ee $dd
    ld a, [hl]                                    ; $4a91: $7e
    ld c, d                                       ; $4a92: $4a
    ld e, l                                       ; $4a93: $5d
    or d                                          ; $4a94: $b2
    jp nz, Jump_000_1c7f                          ; $4a95: $c2 $7f $1c

    ld e, [hl]                                    ; $4a98: $5e
    sub [hl]                                      ; $4a99: $96
    ld a, [hl-]                                   ; $4a9a: $3a
    ld e, b                                       ; $4a9b: $58
    ld l, a                                       ; $4a9c: $6f
    sbc d                                         ; $4a9d: $9a
    inc bc                                        ; $4a9e: $03
    ld c, h                                       ; $4a9f: $4c
    cp $a8                                        ; $4aa0: $fe $a8
    ld [de], a                                    ; $4aa2: $12
    ld [bc], a                                    ; $4aa3: $02
    cp d                                          ; $4aa4: $ba
    pop bc                                        ; $4aa5: $c1
    rra                                           ; $4aa6: $1f
    inc d                                         ; $4aa7: $14
    xor a                                         ; $4aa8: $af
    adc d                                         ; $4aa9: $8a
    ld a, [hl-]                                   ; $4aaa: $3a
    adc $c5                                       ; $4aab: $ce $c5
    ld l, e                                       ; $4aad: $6b
    ld de, $fc8a                                  ; $4aae: $11 $8a $fc
    db $ed                                        ; $4ab1: $ed
    rra                                           ; $4ab2: $1f
    jr jr_034_4a35                                ; $4ab3: $18 $80

    ld e, d                                       ; $4ab5: $5a
    pop af                                        ; $4ab6: $f1
    rst $10                                       ; $4ab7: $d7
    cp l                                          ; $4ab8: $bd
    ld hl, sp-$55                                 ; $4ab9: $f8 $ab
    ld h, e                                       ; $4abb: $63
    dec l                                         ; $4abc: $2d
    db $fd                                        ; $4abd: $fd
    ld e, e                                       ; $4abe: $5b
    db $ed                                        ; $4abf: $ed
    db $ed                                        ; $4ac0: $ed
    inc l                                         ; $4ac1: $2c
    and h                                         ; $4ac2: $a4
    ld [hl], c                                    ; $4ac3: $71
    cp h                                          ; $4ac4: $bc
    ld l, c                                       ; $4ac5: $69
    ld c, $b3                                     ; $4ac6: $0e $b3
    ld e, a                                       ; $4ac8: $5f
    db $fc                                        ; $4ac9: $fc
    ld d, l                                       ; $4aca: $55
    add a                                         ; $4acb: $87
    dec sp                                        ; $4acc: $3b
    or a                                          ; $4acd: $b7
    ld a, b                                       ; $4ace: $78
    ld h, b                                       ; $4acf: $60
    ret nz                                        ; $4ad0: $c0

    sub l                                         ; $4ad1: $95
    xor a                                         ; $4ad2: $af
    adc b                                         ; $4ad3: $88
    xor d                                         ; $4ad4: $aa
    push de                                       ; $4ad5: $d5
    ld b, l                                       ; $4ad6: $45
    cp $ae                                        ; $4ad7: $fe $ae
    db $ed                                        ; $4ad9: $ed
    db $ed                                        ; $4ada: $ed
    ld a, [hl-]                                   ; $4adb: $3a
    ld c, $6f                                     ; $4adc: $0e $6f
    rst $28                                       ; $4ade: $ef
    ld hl, $8ccd                                  ; $4adf: $21 $cd $8c
    ld l, d                                       ; $4ae2: $6a
    ld [hl], l                                    ; $4ae3: $75

jr_034_4ae4:
    push de                                       ; $4ae4: $d5
    ld [$6a1e], a                                 ; $4ae5: $ea $1e $6a
    pop bc                                        ; $4ae8: $c1
    jp nc, Jump_000_26d8                          ; $4ae9: $d2 $d8 $26

    ld e, a                                       ; $4aec: $5f
    reti                                          ; $4aed: $d9


    db $fd                                        ; $4aee: $fd
    dec bc                                        ; $4aef: $0b
    ld h, b                                       ; $4af0: $60
    rst $38                                       ; $4af1: $ff
    and [hl]                                      ; $4af2: $a6
    add hl, sp                                    ; $4af3: $39
    ld c, c                                       ; $4af4: $49

jr_034_4af5:
    pop hl                                        ; $4af5: $e1
    ld c, $17                                     ; $4af6: $0e $17
    add h                                         ; $4af8: $84
    dec de                                        ; $4af9: $1b
    ld c, l                                       ; $4afa: $4d
    ld b, h                                       ; $4afb: $44
    and h                                         ; $4afc: $a4
    sub [hl]                                      ; $4afd: $96
    ld [hl], e                                    ; $4afe: $73
    ld b, a                                       ; $4aff: $47
    ret                                           ; $4b00: $c9


    ld b, l                                       ; $4b01: $45
    jr jr_034_4af5                                ; $4b02: $18 $f1

    sub d                                         ; $4b04: $92
    adc [hl]                                      ; $4b05: $8e
    db $e4                                        ; $4b06: $e4
    adc h                                         ; $4b07: $8c
    rst $10                                       ; $4b08: $d7
    cp $ec                                        ; $4b09: $fe $ec
    ld d, e                                       ; $4b0b: $53
    sbc d                                         ; $4b0c: $9a
    and $a3                                       ; $4b0d: $e6 $a3
    add e                                         ; $4b0f: $83
    jp nc, Jump_034_75db                          ; $4b10: $d2 $db $75

    inc e                                         ; $4b13: $1c
    sbc $c6                                       ; $4b14: $de $c6
    ld [hl], $f9                                  ; $4b16: $36 $f9
    jp z, Jump_034_5fee                           ; $4b18: $ca $ee $5f

    nop                                           ; $4b1b: $00
    db $d3                                        ; $4b1c: $d3
    ld h, $85                                     ; $4b1d: $26 $85
    dec sp                                        ; $4b1f: $3b
    inc a                                         ; $4b20: $3c
    sub [hl]                                      ; $4b21: $96
    jr nz, jr_034_4b61                            ; $4b22: $20 $3d

    ld d, c                                       ; $4b24: $51
    sbc e                                         ; $4b25: $9b
    ld hl, $b0e1                                  ; $4b26: $21 $e1 $b0
    sub h                                         ; $4b29: $94
    ld [hl], l                                    ; $4b2a: $75
    ld d, $bb                                     ; $4b2b: $16 $bb
    ret nc                                        ; $4b2d: $d0

    ret c                                         ; $4b2e: $d8

    adc [hl]                                      ; $4b2f: $8e
    jr nz, jr_034_4b3b                            ; $4b30: $20 $09

    reti                                          ; $4b32: $d9


    ld l, c                                       ; $4b33: $69
    ld b, a                                       ; $4b34: $47
    add a                                         ; $4b35: $87
    db $f4                                        ; $4b36: $f4
    ld l, [hl]                                    ; $4b37: $6e
    pop de                                        ; $4b38: $d1
    sbc $12                                       ; $4b39: $de $12

jr_034_4b3b:
    ld b, [hl]                                    ; $4b3b: $46
    ld b, b                                       ; $4b3c: $40
    jr nc, jr_034_4ae4                            ; $4b3d: $30 $a5

    sbc $73                                       ; $4b3f: $de $73
    ld h, e                                       ; $4b41: $63
    ld a, e                                       ; $4b42: $7b
    scf                                           ; $4b43: $37
    push hl                                       ; $4b44: $e5
    rst $08                                       ; $4b45: $cf
    ld c, l                                       ; $4b46: $4d
    ld c, [hl]                                    ; $4b47: $4e
    ld d, h                                       ; $4b48: $54
    ld l, b                                       ; $4b49: $68
    ld l, c                                       ; $4b4a: $69
    inc a                                         ; $4b4b: $3c
    jp hl                                         ; $4b4c: $e9


    db $ed                                        ; $4b4d: $ed
    ld a, [hl-]                                   ; $4b4e: $3a
    ld c, $98                                     ; $4b4f: $0e $98
    cp [hl]                                       ; $4b51: $be
    adc h                                         ; $4b52: $8c
    ld [hl-], a                                   ; $4b53: $32
    add [hl]                                      ; $4b54: $86
    jr nz, jr_034_4bb9                            ; $4b55: $20 $62

    push af                                       ; $4b57: $f5
    dec h                                         ; $4b58: $25
    rst $20                                       ; $4b59: $e7
    ld h, $2b                                     ; $4b5a: $26 $2b
    add d                                         ; $4b5c: $82
    and b                                         ; $4b5d: $a0
    ld e, $50                                     ; $4b5e: $1e $50
    inc b                                         ; $4b60: $04

jr_034_4b61:
    ld [hl], c                                    ; $4b61: $71

Jump_034_4b62:
    xor $5c                                       ; $4b62: $ee $5c
    ld a, a                                       ; $4b64: $7f
    ret nc                                        ; $4b65: $d0

    set 5, c                                      ; $4b66: $cb $e9
    cp a                                          ; $4b68: $bf
    rst $30                                       ; $4b69: $f7
    jp nc, Jump_000_3296                          ; $4b6a: $d2 $96 $32

    jp hl                                         ; $4b6d: $e9


    jr jr_034_4be8                                ; $4b6e: $18 $78

    sub [hl]                                      ; $4b70: $96
    ret c                                         ; $4b71: $d8

    or h                                          ; $4b72: $b4
    add hl, bc                                    ; $4b73: $09
    ld c, a                                       ; $4b74: $4f
    ld a, [$0b3e]                                 ; $4b75: $fa $3e $0b
    call $387c                                    ; $4b78: $cd $7c $38
    ld d, $ff                                     ; $4b7b: $16 $ff
    pop de                                        ; $4b7d: $d1
    ld a, c                                       ; $4b7e: $79
    ld d, $2c                                     ; $4b7f: $16 $2c
    ld [de], a                                    ; $4b81: $12

jr_034_4b82:
    db $fc                                        ; $4b82: $fc
    ld b, c                                       ; $4b83: $41
    push de                                       ; $4b84: $d5
    ld [$7f22], a                                 ; $4b85: $ea $22 $7f
    db $f4                                        ; $4b88: $f4
    inc de                                        ; $4b89: $13
    ret nc                                        ; $4b8a: $d0

    ret c                                         ; $4b8b: $d8

    ld [$fa30], a                                 ; $4b8c: $ea $30 $fa
    ld l, b                                       ; $4b8f: $68
    ld a, [c]                                     ; $4b90: $f2
    ld d, a                                       ; $4b91: $57
    sbc b                                         ; $4b92: $98
    halt                                          ; $4b93: $76
    ld h, h                                       ; $4b94: $64
    ld b, b                                       ; $4b95: $40
    or l                                          ; $4b96: $b5
    or a                                          ; $4b97: $b7
    and e                                         ; $4b98: $a3
    call nc, $c0de                                ; $4b99: $d4 $de $c0
    ld a, e                                       ; $4b9c: $7b
    xor [hl]                                      ; $4b9d: $ae
    ld c, $37                                     ; $4b9e: $0e $37
    sbc [hl]                                      ; $4ba0: $9e
    sub h                                         ; $4ba1: $94
    jr nz, jr_034_4bed                            ; $4ba2: $20 $49

    xor l                                         ; $4ba4: $ad
    inc l                                         ; $4ba5: $2c
    ld c, l                                       ; $4ba6: $4d
    cp $0a                                        ; $4ba7: $fe $0a
    dec sp                                        ; $4ba9: $3b
    ld l, b                                       ; $4baa: $68
    pop de                                        ; $4bab: $d1
    pop hl                                        ; $4bac: $e1
    add l                                         ; $4bad: $85
    ld [hl], e                                    ; $4bae: $73
    ld l, a                                       ; $4baf: $6f
    ld h, e                                       ; $4bb0: $63
    rst $28                                       ; $4bb1: $ef
    ld b, d                                       ; $4bb2: $42
    db $e3                                        ; $4bb3: $e3
    ld c, c                                       ; $4bb4: $49
    adc a                                         ; $4bb5: $8f
    or c                                          ; $4bb6: $b1
    inc sp                                        ; $4bb7: $33
    ld a, [de]                                    ; $4bb8: $1a

jr_034_4bb9:
    db $fc                                        ; $4bb9: $fc
    ld e, c                                       ; $4bba: $59
    xor $0e                                       ; $4bbb: $ee $0e
    ld [hl], h                                    ; $4bbd: $74
    or l                                          ; $4bbe: $b5
    or a                                          ; $4bbf: $b7
    ret                                           ; $4bc0: $c9


    ld e, a                                       ; $4bc1: $5f
    pop hl                                        ; $4bc2: $e1
    ret nz                                        ; $4bc3: $c0

    ld [hl], l                                    ; $4bc4: $75
    ei                                            ; $4bc5: $fb
    or h                                          ; $4bc6: $b4
    sbc c                                         ; $4bc7: $99
    rst $28                                       ; $4bc8: $ef
    or c                                          ; $4bc9: $b1
    db $eb                                        ; $4bca: $eb
    ld c, l                                       ; $4bcb: $4d
    ld [hl], e                                    ; $4bcc: $73
    and e                                         ; $4bcd: $a3
    db $10                                        ; $4bce: $10
    and c                                         ; $4bcf: $a1
    ld l, c                                       ; $4bd0: $69
    sbc d                                         ; $4bd1: $9a
    or $fe                                        ; $4bd2: $f6 $fe
    or c                                          ; $4bd4: $b1
    jr jr_034_4b82                                ; $4bd5: $18 $ab

    xor e                                         ; $4bd7: $ab
    ccf                                           ; $4bd8: $3f
    sub [hl]                                      ; $4bd9: $96
    jr nz, jr_034_4c25                            ; $4bda: $20 $49

    ld b, a                                       ; $4bdc: $47
    xor c                                         ; $4bdd: $a9
    cp l                                          ; $4bde: $bd
    add c                                         ; $4bdf: $81
    ld h, a                                       ; $4be0: $67
    call z, $a301                                 ; $4be1: $cc $01 $a3
    cp l                                          ; $4be4: $bd
    ld e, e                                       ; $4be5: $5b
    xor l                                         ; $4be6: $ad
    sbc d                                         ; $4be7: $9a

jr_034_4be8:
    ret                                           ; $4be8: $c9


    dec [hl]                                      ; $4be9: $35

Call_034_4bea:
    adc [hl]                                      ; $4bea: $8e
    dec sp                                        ; $4beb: $3b
    sbc e                                         ; $4bec: $9b

jr_034_4bed:
    inc bc                                        ; $4bed: $03
    ld b, c                                       ; $4bee: $41
    ld l, l                                       ; $4bef: $6d
    and $ed                                       ; $4bf0: $e6 $ed
    ldh [rLYC], a                                 ; $4bf2: $e0 $45
    add hl, hl                                    ; $4bf4: $29
    dec hl                                        ; $4bf5: $2b
    or c                                          ; $4bf6: $b1
    add hl, de                                    ; $4bf7: $19
    jp nz, $acb9                                  ; $4bf8: $c2 $b9 $ac

    ld l, a                                       ; $4bfb: $6f
    rst $10                                       ; $4bfc: $d7
    ld [hl], c                                    ; $4bfd: $71
    jr nz, jr_034_4c54                            ; $4bfe: $20 $54

    xor e                                         ; $4c00: $ab

Call_034_4c01:
    adc [hl]                                      ; $4c01: $8e
    ld d, d                                       ; $4c02: $52
    ld a, e                                       ; $4c03: $7b
    inc bc                                        ; $4c04: $03
    and a                                         ; $4c05: $a7
    dec e                                         ; $4c06: $1d
    db $ed                                        ; $4c07: $ed
    db $dd                                        ; $4c08: $dd
    ld l, d                                       ; $4c09: $6a
    push de                                       ; $4c0a: $d5
    ld d, e                                       ; $4c0b: $53
    xor l                                         ; $4c0c: $ad
    cpl                                           ; $4c0d: $2f
    cp $aa                                        ; $4c0e: $fe $aa
    jp $cb9d                                      ; $4c10: $c3 $9d $cb


jr_034_4c13:
    sbc c                                         ; $4c13: $99
    jp hl                                         ; $4c14: $e9


    halt                                          ; $4c15: $76
    ret nc                                        ; $4c16: $d0

    ld b, d                                       ; $4c17: $42
    dec c                                         ; $4c18: $0d
    ld h, h                                       ; $4c19: $64
    jr c, jr_034_4c13                             ; $4c1a: $38 $f7

    ld l, [hl]                                    ; $4c1c: $6e
    pop de                                        ; $4c1d: $d1
    sbc $8e                                       ; $4c1e: $de $8e
    ld d, d                                       ; $4c20: $52
    ld a, e                                       ; $4c21: $7b
    inc bc                                        ; $4c22: $03
    rst $30                                       ; $4c23: $f7
    or e                                          ; $4c24: $b3

jr_034_4c25:
    sbc c                                         ; $4c25: $99
    ret                                           ; $4c26: $c9


Jump_034_4c27:
    ld d, a                                       ; $4c27: $57
    and $4d                                       ; $4c28: $e6 $4d
    dec sp                                        ; $4c2a: $3b
    db $f4                                        ; $4c2b: $f4
    add sp, -$10                                  ; $4c2c: $e8 $f0
    push de                                       ; $4c2e: $d5
    xor [hl]                                      ; $4c2f: $ae
    ld [hl], $76                                  ; $4c30: $36 $76
    sub $ff                                       ; $4c32: $d6 $ff
    call nz, $bbd8                                ; $4c34: $c4 $d8 $bb
    ld b, l                                       ; $4c37: $45
    ld a, e                                       ; $4c38: $7b
    adc e                                         ; $4c39: $8b
    pop hl                                        ; $4c3a: $e1
    sub d                                         ; $4c3b: $92
    dec d                                         ; $4c3c: $15
    cp $e3                                        ; $4c3d: $fe $e3
    ldh a, [$66]                                  ; $4c3f: $f0 $66
    ld d, $f3                                     ; $4c41: $16 $f3
    or a                                          ; $4c43: $b7
    add [hl]                                      ; $4c44: $86
    xor d                                         ; $4c45: $aa
    push de                                       ; $4c46: $d5
    push de                                       ; $4c47: $d5
    rra                                           ; $4c48: $1f
    sbc e                                         ; $4c49: $9b
    db $fc                                        ; $4c4a: $fc
    dec d                                         ; $4c4b: $15
    or $08                                        ; $4c4c: $f6 $08
    xor b                                         ; $4c4e: $a8
    or $f6                                        ; $4c4f: $f6 $f6
    ld [hl], b                                    ; $4c51: $70
    jr nz, jr_034_4ccc                            ; $4c52: $20 $78

jr_034_4c54:
    dec sp                                        ; $4c54: $3b
    ld c, d                                       ; $4c55: $4a
    db $ed                                        ; $4c56: $ed
    dec c                                         ; $4c57: $0d
    cp h                                          ; $4c58: $bc
    call $8f7c                                    ; $4c59: $cd $7c $8f
    ld e, l                                       ; $4c5c: $5d
    xor b                                         ; $4c5d: $a8
    or $36                                        ; $4c5e: $f6 $36
    ld sp, hl                                     ; $4c60: $f9
    dec hl                                        ; $4c61: $2b
    inc e                                         ; $4c62: $1c
    cp b                                          ; $4c63: $b8
    ld l, [hl]                                    ; $4c64: $6e
    sbc a                                         ; $4c65: $9f
    and [hl]                                      ; $4c66: $a6
    add hl, sp                                    ; $4c67: $39
    and e                                         ; $4c68: $a3
    jp $5bbd                                      ; $4c69: $c3 $bd $5b


    or h                                          ; $4c6c: $b4
    or a                                          ; $4c6d: $b7
    rst $30                                       ; $4c6e: $f7
    sub b                                         ; $4c6f: $90
    ld l, d                                       ; $4c70: $6a
    rst $28                                       ; $4c71: $ef
    or $2b                                        ; $4c72: $f6 $2b
    call z, $4f7c                                 ; $4c74: $cc $7c $4f
    ld a, h                                       ; $4c77: $7c
    inc d                                         ; $4c78: $14
    ld h, [hl]                                    ; $4c79: $66
    call z, Call_000_0901                         ; $4c7a: $cc $01 $09
    db $fc                                        ; $4c7d: $fc
    dec [hl]                                      ; $4c7e: $35
    and e                                         ; $4c7f: $a3
    ld e, a                                       ; $4c80: $5f
    or c                                          ; $4c81: $b1
    ld a, $f7                                     ; $4c82: $3e $f7
    ld e, $d2                                     ; $4c84: $1e $d2
    add e                                         ; $4c86: $83
    add h                                         ; $4c87: $84
    add sp, -$13                                  ; $4c88: $e8 $ed
    ld de, $c750                                  ; $4c8a: $11 $50 $c7
    ld a, [$dce8]                                 ; $4c8d: $fa $e8 $dc
    ld [hl], d                                    ; $4c90: $72
    ld d, c                                       ; $4c91: $51
    jp c, $e25b                                   ; $4c92: $da $5b $e2

    ld sp, $7840                                  ; $4c95: $31 $40 $78
    db $d3                                        ; $4c98: $d3
    inc e                                         ; $4c99: $1c
    or e                                          ; $4c9a: $b3
    ld e, h                                       ; $4c9b: $5c
    inc [hl]                                      ; $4c9c: $34
    add e                                         ; $4c9d: $83
    ld e, $21                                     ; $4c9e: $1e $21
    rst $20                                       ; $4ca0: $e7
    or d                                          ; $4ca1: $b2
    ld bc, $34e0                                  ; $4ca2: $01 $e0 $34
    rlca                                          ; $4ca5: $07
    add hl, bc                                    ; $4ca6: $09
    db $fc                                        ; $4ca7: $fc
    push af                                       ; $4ca8: $f5
    ld e, l                                       ; $4ca9: $5d
    inc b                                         ; $4caa: $04
    pop hl                                        ; $4cab: $e1
    ld [hl], e                                    ; $4cac: $73
    rst $28                                       ; $4cad: $ef
    ld hl, $5dbd                                  ; $4cae: $21 $bd $5d
    rst $00                                       ; $4cb1: $c7
    pop hl                                        ; $4cb2: $e1
    ld l, l                                       ; $4cb3: $6d
    ld l, h                                       ; $4cb4: $6c
    push af                                       ; $4cb5: $f5
    rst $00                                       ; $4cb6: $c7
    and d                                         ; $4cb7: $a2
    add hl, hl                                    ; $4cb8: $29
    db $eb                                        ; $4cb9: $eb
    ld h, $7f                                     ; $4cba: $26 $7f
    add l                                         ; $4cbc: $85
    ld d, l                                       ; $4cbd: $55
    xor e                                         ; $4cbe: $ab
    dec sp                                        ; $4cbf: $3b
    ld a, b                                       ; $4cc0: $78
    ld c, c                                       ; $4cc1: $49
    ccf                                           ; $4cc2: $3f
    and l                                         ; $4cc3: $a5
    ld a, $3a                                     ; $4cc4: $3e $3a
    ld a, e                                       ; $4cc6: $7b
    jp nz, $c9cc                                  ; $4cc7: $c2 $cc $c9

    ld [hl], e                                    ; $4cca: $73
    ld [hl], a                                    ; $4ccb: $77

jr_034_4ccc:
    ccf                                           ; $4ccc: $3f
    ld a, a                                       ; $4ccd: $7f
    ld h, l                                       ; $4cce: $65
    jp nc, $f031                                  ; $4ccf: $d2 $31 $f0

Jump_034_4cd2:
    inc l                                         ; $4cd2: $2c
    or c                                          ; $4cd3: $b1
    ld l, c                                       ; $4cd4: $69
    sbc c                                         ; $4cd5: $99
    pop hl                                        ; $4cd6: $e1
    ld h, d                                       ; $4cd7: $62
    xor h                                         ; $4cd8: $ac
    xor $06                                       ; $4cd9: $ee $06
    ld a, a                                       ; $4cdb: $7f
    ret nc                                        ; $4cdc: $d0

    ld c, a                                       ; $4cdd: $4f
    xor c                                         ; $4cde: $a9
    res 1, [hl]                                   ; $4cdf: $cb $8e
    adc l                                         ; $4ce1: $8d
    ld a, $f7                                     ; $4ce2: $3e $f7
    or e                                          ; $4ce4: $b3
    sub [hl]                                      ; $4ce5: $96
    ld [$a04b], a                                 ; $4ce6: $ea $4b $a0
    call nc, $b7ac                                ; $4ce9: $d4 $ac $b7
    adc [hl]                                      ; $4cec: $8e
    adc l                                         ; $4ced: $8d
    call z, $fecd                                 ; $4cee: $cc $cd $fe
    sub d                                         ; $4cf1: $92
    ld c, e                                       ; $4cf2: $4b
    add h                                         ; $4cf3: $84
    pop de                                        ; $4cf4: $d1
    sbc l                                         ; $4cf5: $9d
    ld a, e                                       ; $4cf6: $7b
    call z, Call_000_3780                         ; $4cf7: $cc $80 $37
    call $a301                                    ; $4cfa: $cd $01 $a3
    add e                                         ; $4cfd: $83
    jp nc, Jump_034_75db                          ; $4cfe: $d2 $db $75

    inc e                                         ; $4d01: $1c
    sbc $73                                       ; $4d02: $de $73
    add a                                         ; $4d04: $87
    dec bc                                        ; $4d05: $0b
    jp nz, Jump_000_268d                          ; $4d06: $c2 $8d $26

    ld [hl+], a                                   ; $4d09: $22
    ld d, d                                       ; $4d0a: $52
    ld c, e                                       ; $4d0b: $4b
    jp c, $fe04                                   ; $4d0c: $da $04 $fe

    jp z, Jump_034_76c6                           ; $4d0f: $ca $c6 $76

    jr z, jr_034_4d79                             ; $4d12: $28 $65

    dec d                                         ; $4d14: $15
    ld [hl], $49                                  ; $4d15: $36 $49
    dec e                                         ; $4d17: $1d
    inc l                                         ; $4d18: $2c
    or l                                          ; $4d19: $b5
    cp [hl]                                       ; $4d1a: $be
    call nz, $32e7                                ; $4d1b: $c4 $e7 $32
    ld sp, hl                                     ; $4d1e: $f9
    ld d, e                                       ; $4d1f: $53
    sub h                                         ; $4d20: $94

jr_034_4d21:
    ld a, [hl-]                                   ; $4d21: $3a
    ret nz                                        ; $4d22: $c0

    jp nc, Jump_034_6bc1                          ; $4d23: $d2 $c1 $6b

    sbc e                                         ; $4d26: $9b
    ld a, h                                       ; $4d27: $7c
    ld h, l                                       ; $4d28: $65
    rst $30                                       ; $4d29: $f7
    cpl                                           ; $4d2a: $2f
    add b                                         ; $4d2b: $80
    ld l, c                                       ; $4d2c: $69
    add a                                         ; $4d2d: $87
    dec b                                         ; $4d2e: $05
    add b                                         ; $4d2f: $80
    srl d                                         ; $4d30: $cb $3a
    inc sp                                        ; $4d32: $33
    dec bc                                        ; $4d33: $0b
    or l                                          ; $4d34: $b5
    ld [c], a                                     ; $4d35: $e2

Call_034_4d36:
    xor a                                         ; $4d36: $af
    ld h, h                                       ; $4d37: $64
    ld d, l                                       ; $4d38: $55
    dec hl                                        ; $4d39: $2b
    pop af                                        ; $4d3a: $f1
    pop de                                        ; $4d3b: $d1
    cp c                                          ; $4d3c: $b9
    inc bc                                        ; $4d3d: $03
    ld sp, hl                                     ; $4d3e: $f9
    dec sp                                        ; $4d3f: $3b
    rla                                           ; $4d40: $17
    cpl                                           ; $4d41: $2f
    or $53                                        ; $4d42: $f6 $53
    db $dd                                        ; $4d44: $dd
    ld a, b                                       ; $4d45: $78
    ld d, d                                       ; $4d46: $52
    rst $00                                       ; $4d47: $c7
    ld a, [$f268]                                 ; $4d48: $fa $68 $f2
    ld d, a                                       ; $4d4b: $57
    ld e, b                                       ; $4d4c: $58
    or d                                          ; $4d4d: $b2
    jp z, Jump_000_0e0c                           ; $4d4e: $ca $0c $0e

    ld a, [bc]                                    ; $4d51: $0a
    cp l                                          ; $4d52: $bd
    dec hl                                        ; $4d53: $2b
    pop de                                        ; $4d54: $d1
    add [hl]                                      ; $4d55: $86
    inc [hl]                                      ; $4d56: $34
    rlca                                          ; $4d57: $07
    inc de                                        ; $4d58: $13
    jr nc, jr_034_4dbe                            ; $4d59: $30 $63

    inc sp                                        ; $4d5b: $33
    sbc b                                         ; $4d5c: $98
    or b                                          ; $4d5d: $b0
    ld b, e                                       ; $4d5e: $43
    add hl, hl                                    ; $4d5f: $29
    ld [hl], l                                    ; $4d60: $75
    ld c, a                                       ; $4d61: $4f
    jr jr_034_4da7                                ; $4d62: $18 $43

    ld h, e                                       ; $4d64: $63
    or l                                          ; $4d65: $b5
    and l                                         ; $4d66: $a5
    ld l, d                                       ; $4d67: $6a
    ld [hl], l                                    ; $4d68: $75
    sub c                                         ; $4d69: $91
    cp a                                          ; $4d6a: $bf
    ldh [$37], a                                  ; $4d6b: $e0 $37
    ld l, a                                       ; $4d6d: $6f
    ld b, a                                       ; $4d6e: $47
    db $fc                                        ; $4d6f: $fc
    add c                                         ; $4d70: $81
    ld bc, $0e6f                                  ; $4d71: $01 $6f $0e
    jr jr_034_4d21                                ; $4d74: $18 $ab

    sbc e                                         ; $4d76: $9b
    add hl, sp                                    ; $4d77: $39
    di                                            ; $4d78: $f3

jr_034_4d79:
    or $08                                        ; $4d79: $f6 $08
    cp $aa                                        ; $4d7b: $fe $aa
    cpl                                           ; $4d7d: $2f
    cp $ba                                        ; $4d7e: $fe $ba
    ld c, d                                       ; $4d80: $4a
    ld a, [hl-]                                   ; $4d81: $3a
    db $eb                                        ; $4d82: $eb
    ccf                                           ; $4d83: $3f
    ld c, $0b                                     ; $4d84: $0e $0b
    db $fd                                        ; $4d86: $fd
    inc bc                                        ; $4d87: $03
    inc bc                                        ; $4d88: $03
    sbc $21                                       ; $4d89: $de $21
    add hl, sp                                    ; $4d8b: $39
    add hl, bc                                    ; $4d8c: $09
    db $fc                                        ; $4d8d: $fc
    push af                                       ; $4d8e: $f5
    xor $18                                       ; $4d8f: $ee $18
    and a                                         ; $4d91: $a7
    or c                                          ; $4d92: $b1
    ld c, l                                       ; $4d93: $4d
    cp [hl]                                       ; $4d94: $be
    or d                                          ; $4d95: $b2
    ei                                            ; $4d96: $fb
    rla                                           ; $4d97: $17
    ret nz                                        ; $4d98: $c0

    cp $a3                                        ; $4d99: $fe $a3
    xor h                                         ; $4d9b: $ac
    ld de, $1dbc                                  ; $4d9c: $11 $bc $1d
    ld h, [hl]                                    ; $4d9f: $66
    db $e4                                        ; $4da0: $e4
    rst $08                                       ; $4da1: $cf
    and c                                         ; $4da2: $a1
    ld [hl], e                                    ; $4da3: $73
    ld l, d                                       ; $4da4: $6a
    ld [hl], l                                    ; $4da5: $75
    reti                                          ; $4da6: $d9


jr_034_4da7:
    ret c                                         ; $4da7: $d8

    ld [de], a                                    ; $4da8: $12
    inc h                                         ; $4da9: $24
    jp hl                                         ; $4daa: $e9


jr_034_4dab:
    xor c                                         ; $4dab: $a9
    sub $de                                       ; $4dac: $d6 $de
    ld [hl-], a                                   ; $4dae: $32
    ld sp, hl                                     ; $4daf: $f9
    ld c, e                                       ; $4db0: $4b
    call nc, Call_034_65a6                        ; $4db1: $d4 $a6 $65
    dec l                                         ; $4db4: $2d
    ld c, $48                                     ; $4db5: $0e $48
    ld [hl], e                                    ; $4db7: $73
    ld c, h                                       ; $4db8: $4c
    inc bc                                        ; $4db9: $03
    add hl, de                                    ; $4dba: $19
    ld a, d                                       ; $4dbb: $7a
    inc b                                         ; $4dbc: $04
    ld a, a                                       ; $4dbd: $7f

jr_034_4dbe:
    ld e, l                                       ; $4dbe: $5d
    dec h                                         ; $4dbf: $25
    db $fd                                        ; $4dc0: $fd
    adc d                                         ; $4dc1: $8a
    jr c, jr_034_4dab                             ; $4dc2: $38 $e7

    pop bc                                        ; $4dc4: $c1
    ld e, a                                       ; $4dc5: $5f
    pop af                                        ; $4dc6: $f1
    ld h, a                                       ; $4dc7: $67
    or l                                          ; $4dc8: $b5
    ld [c], a                                     ; $4dc9: $e2
    xor a                                         ; $4dca: $af
    sbc c                                         ; $4dcb: $99
    rst $30                                       ; $4dcc: $f7
    xor e                                         ; $4dcd: $ab
    ld [hl], e                                    ; $4dce: $73
    ld c, $f7                                     ; $4dcf: $0e $f7
    db $eb                                        ; $4dd1: $eb
    push bc                                       ; $4dd2: $c5
    ld [hl], $9e                                  ; $4dd3: $36 $9e
    inc [hl]                                      ; $4dd5: $34
    di                                            ; $4dd6: $f3
    dec de                                        ; $4dd7: $1b
    ld e, e                                       ; $4dd8: $5b
    and b                                         ; $4dd9: $a0
    inc de                                        ; $4dda: $13
    scf                                           ; $4ddb: $37
    rlca                                          ; $4ddc: $07
    jp c, Jump_000_0dbb                           ; $4ddd: $da $bb $0d

    cp $ca                                        ; $4de0: $fe $ca

Jump_034_4de2:
    add $16                                       ; $4de2: $c6 $16
    ld sp, hl                                     ; $4de4: $f9
    and e                                         ; $4de5: $a3
    ld e, a                                       ; $4de6: $5f
    and l                                         ; $4de7: $a5
    add hl, sp                                    ; $4de8: $39
    adc h                                         ; $4de9: $8c
    ld a, [c]                                     ; $4dea: $f2
    scf                                           ; $4deb: $37
    or e                                          ; $4dec: $b3
    sbc h                                         ; $4ded: $9c
    sbc e                                         ; $4dee: $9b
    ld l, h                                       ; $4def: $6c
    add hl, sp                                    ; $4df0: $39
    ld h, d                                       ; $4df1: $62
    dec a                                         ; $4df2: $3d
    inc h                                         ; $4df3: $24
    rlca                                          ; $4df4: $07
    adc h                                         ; $4df5: $8c
    ld [hl-], a                                   ; $4df6: $32
    add [hl]                                      ; $4df7: $86
    jr nz, jr_034_4e5c                            ; $4df8: $20 $62

    push af                                       ; $4dfa: $f5
    dec h                                         ; $4dfb: $25
    ld b, e                                       ; $4dfc: $43
    ld [hl], d                                    ; $4dfd: $72
    and e                                         ; $4dfe: $a3
    ld l, $00                                     ; $4dff: $2e $00
    res 7, c                                      ; $4e01: $cb $b9
    ret                                           ; $4e03: $c9


    ld e, a                                       ; $4e04: $5f
    ld h, h                                       ; $4e05: $64
    call z, Call_000_1c90                         ; $4e06: $cc $90 $1c
    or e                                          ; $4e09: $b3
    rlca                                          ; $4e0a: $07
    ld a, a                                       ; $4e0b: $7f
    ld d, b                                       ; $4e0c: $50
    ld h, $1d                                     ; $4e0d: $26 $1d
    inc bc                                        ; $4e0f: $03
    rst $08                                       ; $4e10: $cf
    ld [de], a                                    ; $4e11: $12
    ld a, e                                       ; $4e12: $7b
    ld l, $4b                                     ; $4e13: $2e $4b
    xor a                                         ; $4e15: $af
    ld [hl], c                                    ; $4e16: $71
    cp d                                          ; $4e17: $ba
    pop bc                                        ; $4e18: $c1
    rra                                           ; $4e19: $1f
    sub h                                         ; $4e1a: $94
    ld c, c                                       ; $4e1b: $49
    rst $00                                       ; $4e1c: $c7
    ret nz                                        ; $4e1d: $c0

    or e                                          ; $4e1e: $b3
    call nz, Call_034_4d36                        ; $4e1f: $c4 $36 $4d
    db $d3                                        ; $4e22: $d3
    inc e                                         ; $4e23: $1c
    or e                                          ; $4e24: $b3
    xor e                                         ; $4e25: $ab
    dec a                                         ; $4e26: $3d
    rst $30                                       ; $4e27: $f7
    xor $dd                                       ; $4e28: $ee $dd
    ld l, d                                       ; $4e2a: $6a
    ld d, l                                       ; $4e2b: $55
    dec e                                         ; $4e2c: $1d
    ld d, d                                       ; $4e2d: $52
    inc c                                         ; $4e2e: $0c
    cp $2c                                        ; $4e2f: $fe $2c
    ld h, l                                       ; $4e31: $65
    inc bc                                        ; $4e32: $03
    and c                                         ; $4e33: $a1
    inc de                                        ; $4e34: $13
    ld d, a                                       ; $4e35: $57
    rst $38                                       ; $4e36: $ff
    db $dd                                        ; $4e37: $dd
    or d                                          ; $4e38: $b2
    ld b, [hl]                                    ; $4e39: $46
    or h                                          ; $4e3a: $b4
    ld [hl], h                                    ; $4e3b: $74
    ccf                                           ; $4e3c: $3f
    ld a, a                                       ; $4e3d: $7f
    ld h, l                                       ; $4e3e: $65
    sbc h                                         ; $4e3f: $9c
    ld l, e                                       ; $4e40: $6b
    cp $59                                        ; $4e41: $fe $59
    ld h, [hl]                                    ; $4e43: $66
    ld c, c                                       ; $4e44: $49
    sbc b                                         ; $4e45: $98
    dec a                                         ; $4e46: $3d
    ld l, c                                       ; $4e47: $69
    adc [hl]                                      ; $4e48: $8e
    cp c                                          ; $4e49: $b9
    jp nc, $8c1c                                  ; $4e4a: $d2 $1c $8c

    ld [hl-], a                                   ; $4e4d: $32
    add [hl]                                      ; $4e4e: $86
    jr nz, jr_034_4eb3                            ; $4e4f: $20 $62

    push af                                       ; $4e51: $f5
    dec h                                         ; $4e52: $25
    dec c                                         ; $4e53: $0d
    add h                                         ; $4e54: $84
    ld [$958f], a                                 ; $4e55: $ea $8f $95
    ldh [rIF], a                                  ; $4e58: $e0 $0f
    ld [hl+], a                                   ; $4e5a: $22
    ld [hl], e                                    ; $4e5b: $73

jr_034_4e5c:
    sub e                                         ; $4e5c: $93
    cp a                                          ; $4e5d: $bf
    jp nz, $2412                                  ; $4e5e: $c2 $12 $24

    xor c                                         ; $4e61: $a9
    ld c, $fe                                     ; $4e62: $0e $fe
    adc $4d                                       ; $4e64: $ce $4d
    cp $22                                        ; $4e66: $fe $22
    ld h, e                                       ; $4e68: $63
    jp nc, $fa32                                  ; $4e69: $d2 $32 $fa

    sub l                                         ; $4e6c: $95
    xor h                                         ; $4e6d: $ac
    xor d                                         ; $4e6e: $aa
    dec e                                         ; $4e6f: $1d
    db $eb                                        ; $4e70: $eb
    and e                                         ; $4e71: $a3
    ld [hl], e                                    ; $4e72: $73
    rlca                                          ; $4e73: $07
    ld a, [c]                                     ; $4e74: $f2
    sub a                                         ; $4e75: $97
    and $8c                                       ; $4e76: $e6 $8c
    ld a, [hl]                                    ; $4e78: $7e
    dec h                                         ; $4e79: $25
    xor e                                         ; $4e7a: $ab
    ld l, d                                       ; $4e7b: $6a
    rst $00                                       ; $4e7c: $c7
    ld a, [$dce8]                                 ; $4e7d: $fa $e8 $dc
    add c                                         ; $4e80: $81
    db $fc                                        ; $4e81: $fc
    sbc l                                         ; $4e82: $9d
    dec sp                                        ; $4e83: $3b
    ld [$b002], a                                 ; $4e84: $ea $02 $b0
    sbc h                                         ; $4e87: $9c
    ld a, e                                       ; $4e88: $7b
    ld l, c                                       ; $4e89: $69
    ld c, e                                       ; $4e8a: $4b
    rst $28                                       ; $4e8b: $ef
    ld b, c                                       ; $4e8c: $41
    add hl, hl                                    ; $4e8d: $29
    ld b, d                                       ; $4e8e: $42
    or l                                          ; $4e8f: $b5
    ld a, [hl+]                                   ; $4e90: $2a
    ld a, [c]                                     ; $4e91: $f2
    ld [hl], a                                    ; $4e92: $77
    ld l, l                                       ; $4e93: $6d
    ld b, a                                       ; $4e94: $47
    xor c                                         ; $4e95: $a9
    cp l                                          ; $4e96: $bd
    add c                                         ; $4e97: $81
    dec sp                                        ; $4e98: $3b
    ld l, b                                       ; $4e99: $68
    and c                                         ; $4e9a: $a1
    ld h, c                                       ; $4e9b: $61
    pop af                                        ; $4e9c: $f1
    adc $98                                       ; $4e9d: $ce $98
    inc bc                                        ; $4e9f: $03
    ld b, e                                       ; $4ea0: $43
    dec d                                         ; $4ea1: $15
    jr nz, jr_034_4f23                            ; $4ea2: $20 $7f

jr_034_4ea4:
    rst $20                                       ; $4ea4: $e7
    ld e, $8e                                     ; $4ea5: $1e $8e
    db $ed                                        ; $4ea7: $ed
    adc b                                         ; $4ea8: $88
    ld l, e                                       ; $4ea9: $6b
    add b                                         ; $4eaa: $80
    ld c, b                                       ; $4eab: $48
    ld [hl], e                                    ; $4eac: $73
    adc h                                         ; $4ead: $8c
    ld a, [hl]                                    ; $4eae: $7e
    dec h                                         ; $4eaf: $25
    xor e                                         ; $4eb0: $ab
    ld l, d                                       ; $4eb1: $6a
    rst $00                                       ; $4eb2: $c7

jr_034_4eb3:
    ld a, [$dce8]                                 ; $4eb3: $fa $e8 $dc
    add c                                         ; $4eb6: $81
    db $fc                                        ; $4eb7: $fc
    sbc l                                         ; $4eb8: $9d
    sbc e                                         ; $4eb9: $9b
    db $fc                                        ; $4eba: $fc
    ld b, l                                       ; $4ebb: $45
    add $9c                                       ; $4ebc: $c6 $9c
    dec de                                        ; $4ebe: $1b
    db $fc                                        ; $4ebf: $fc
    push af                                       ; $4ec0: $f5
    ld d, b                                       ; $4ec1: $50
    adc b                                         ; $4ec2: $88
    push de                                       ; $4ec3: $d5
    pop hl                                        ; $4ec4: $e1
    sbc [hl]                                      ; $4ec5: $9e
    ld h, b                                       ; $4ec6: $60
    pop af                                        ; $4ec7: $f1

jr_034_4ec8:
    ld [hl], c                                    ; $4ec8: $71
    ld l, l                                       ; $4ec9: $6d
    cp b                                          ; $4eca: $b8
    xor h                                         ; $4ecb: $ac
    cp a                                          ; $4ecc: $bf
    ld [hl+], a                                   ; $4ecd: $22
    jr nc, jr_034_4ec8                            ; $4ece: $30 $f8

    add e                                         ; $4ed0: $83
    ret z                                         ; $4ed1: $c8

    cp h                                          ; $4ed2: $bc
    ld l, c                                       ; $4ed3: $69
    ld c, $8c                                     ; $4ed4: $0e $8c
    inc de                                        ; $4ed6: $13
    ld h, a                                       ; $4ed7: $67
    inc de                                        ; $4ed8: $13
    ld h, a                                       ; $4ed9: $67
    ld a, [hl]                                    ; $4eda: $7e
    dec h                                         ; $4edb: $25
    xor e                                         ; $4edc: $ab
    ld l, d                                       ; $4edd: $6a
    rst $00                                       ; $4ede: $c7
    ld a, [$dce8]                                 ; $4edf: $fa $e8 $dc
    inc de                                        ; $4ee2: $13
    jp Jump_000_10c4                              ; $4ee3: $c3 $c4 $10


    ret z                                         ; $4ee6: $c8

    ld e, a                                       ; $4ee7: $5f
    jp c, Jump_034_7f91                           ; $4ee8: $da $91 $7f

    ld a, e                                       ; $4eeb: $7b
    ei                                            ; $4eec: $fb
    cp e                                          ; $4eed: $bb
    db $dd                                        ; $4eee: $dd
    ld [hl], b                                    ; $4eef: $70
    rst $28                                       ; $4ef0: $ef
    add c                                         ; $4ef1: $81
    add sp, $3d                                   ; $4ef2: $e8 $3d
    rst $30                                       ; $4ef4: $f7
    ld l, [hl]                                    ; $4ef5: $6e
    xor c                                         ; $4ef6: $a9
    ld h, e                                       ; $4ef7: $63
    cp l                                          ; $4ef8: $bd
    ld h, l                                       ; $4ef9: $65
    ld a, l                                       ; $4efa: $7d
    or c                                          ; $4efb: $b1
    sbc a                                         ; $4efc: $9f
    ccf                                           ; $4efd: $3f
    jr nc, jr_034_4ea4                            ; $4efe: $30 $a4

    add hl, sp                                    ; $4f00: $39
    jp Jump_034_59b1                              ; $4f01: $c3 $b1 $59


jr_034_4f04:
    or b                                          ; $4f04: $b0
    ret nc                                        ; $4f05: $d0

    add hl, sp                                    ; $4f06: $39
    inc b                                         ; $4f07: $04
    call c, Call_000_26d8                         ; $4f08: $dc $d8 $26
    ld e, a                                       ; $4f0b: $5f
    reti                                          ; $4f0c: $d9


    db $fd                                        ; $4f0d: $fd
    dec bc                                        ; $4f0e: $0b
    ldh [$b9], a                                  ; $4f0f: $e0 $b9
    ld a, [hl-]                                   ; $4f11: $3a
    ld e, h                                       ; $4f12: $5c
    xor l                                         ; $4f13: $ad
    cp d                                          ; $4f14: $ba
    pop bc                                        ; $4f15: $c1
    rra                                           ; $4f16: $1f
    sub h                                         ; $4f17: $94
    dec [hl]                                      ; $4f18: $35
    adc b                                         ; $4f19: $88
    pop bc                                        ; $4f1a: $c1
    ld e, e                                       ; $4f1b: $5b
    db $fd                                        ; $4f1c: $fd
    add l                                         ; $4f1d: $85
    ld b, b                                       ; $4f1e: $40
    jr c, @+$39                                   ; $4f1f: $38 $37

    ld sp, hl                                     ; $4f21: $f9
    adc e                                         ; $4f22: $8b

jr_034_4f23:
    adc h                                         ; $4f23: $8c
    ld c, c                                       ; $4f24: $49
    ld [hl], e                                    ; $4f25: $73
    add hl, bc                                    ; $4f26: $09
    ld [$1fd5], sp                                ; $4f27: $08 $d5 $1f
    xor e                                         ; $4f2a: $ab
    dec l                                         ; $4f2b: $2d
    sbc l                                         ; $4f2c: $9d
    dec sp                                        ; $4f2d: $3b
    sub b                                         ; $4f2e: $90
    cp a                                          ; $4f2f: $bf
    ld c, $5e                                     ; $4f30: $0e $5e
    db $db                                        ; $4f32: $db
    db $e4                                        ; $4f33: $e4
    xor a                                         ; $4f34: $af
    or b                                          ; $4f35: $b0
    adc h                                         ; $4f36: $8c
    ld [hl-], a                                   ; $4f37: $32
    add [hl]                                      ; $4f38: $86
    jr nz, jr_034_4f9d                            ; $4f39: $20 $62

    push af                                       ; $4f3b: $f5
    dec h                                         ; $4f3c: $25
    inc sp                                        ; $4f3d: $33
    and $b3                                       ; $4f3e: $e6 $b3
    dec sp                                        ; $4f40: $3b
    or $5c                                        ; $4f41: $f6 $5c
    db $fd                                        ; $4f43: $fd
    or c                                          ; $4f44: $b1
    add c                                         ; $4f45: $81
    ld d, b                                       ; $4f46: $50
    ld l, l                                       ; $4f47: $6d
    jp hl                                         ; $4f48: $e9


    call c, $fc81                                 ; $4f49: $dc $81 $fc
    ld [hl], l                                    ; $4f4c: $75
    ldh a, [$da]                                  ; $4f4d: $f0 $da
    ld h, $2b                                     ; $4f4f: $26 $2b
    add d                                         ; $4f51: $82
    and b                                         ; $4f52: $a0
    ld e, $50                                     ; $4f53: $1e $50
    inc b                                         ; $4f55: $04
    sub c                                         ; $4f56: $91
    and $c9                                       ; $4f57: $e6 $c9
    adc d                                         ; $4f59: $8a
    jr nz, jr_034_4f04                            ; $4f5a: $20 $a8

    rlca                                          ; $4f5c: $07
    inc d                                         ; $4f5d: $14
    ld b, c                                       ; $4f5e: $41
    ld [hl], h                                    ; $4f5f: $74
    ld [c], a                                     ; $4f60: $e2
    sbc $43                                       ; $4f61: $de $43
    adc d                                         ; $4f63: $8a
    or c                                          ; $4f64: $b1
    cp d                                          ; $4f65: $ba
    ld a, [hl-]                                   ; $4f66: $3a
    call c, $4661                                 ; $4f67: $dc $61 $46
    ldh a, [$0e]                                  ; $4f6a: $f0 $0e
    ret                                           ; $4f6c: $c9


    ld bc, $2b73                                  ; $4f6d: $01 $73 $2b
    add sp, $11                                   ; $4f70: $e8 $11
    jp nc, Jump_000_1cd9                          ; $4f72: $d2 $d9 $1c

    ld a, [$cfdc]                                 ; $4f75: $fa $dc $cf
    ld e, d                                       ; $4f78: $5a
    xor d                                         ; $4f79: $aa
    jp Jump_034_40d8                              ; $4f7a: $c3 $d8 $40


    xor b                                         ; $4f7d: $a8
    or [hl]                                       ; $4f7e: $b6
    ld [hl], h                                    ; $4f7f: $74
    xor $40                                       ; $4f80: $ee $40
    cp $3a                                        ; $4f82: $fe $3a
    ld a, b                                       ; $4f84: $78
    ld l, l                                       ; $4f85: $6d
    rst $20                                       ; $4f86: $e7
    ld a, [$5e83]                                 ; $4f87: $fa $83 $5e
    ld c, [hl]                                    ; $4f8a: $4e
    rst $38                                       ; $4f8b: $ff
    dec a                                         ; $4f8c: $3d
    call $b301                                    ; $4f8d: $cd $01 $b3
    add a                                         ; $4f90: $87
    adc a                                         ; $4f91: $8f
    cp a                                          ; $4f92: $bf
    cp d                                          ; $4f93: $ba
    or a                                          ; $4f94: $b7
    cp a                                          ; $4f95: $bf
    db $db                                        ; $4f96: $db
    cp c                                          ; $4f97: $b9
    cp $a0                                        ; $4f98: $fe $a0
    sub a                                         ; $4f9a: $97
    db $d3                                        ; $4f9b: $d3
    ld a, a                                       ; $4f9c: $7f

jr_034_4f9d:
    cpl                                           ; $4f9d: $2f
    ld l, e                                       ; $4f9e: $6b
    inc c                                         ; $4f9f: $0c
    ld h, a                                       ; $4fa0: $67
    sbc $21                                       ; $4fa1: $de $21
    add hl, sp                                    ; $4fa3: $39
    ret                                           ; $4fa4: $c9


    ld d, $41                                     ; $4fa5: $16 $41
    cp $a0                                        ; $4fa7: $fe $a0
    ld [hl], c                                    ; $4fa9: $71
    inc [hl]                                      ; $4faa: $34
    ld sp, hl                                     ; $4fab: $f9
    dec hl                                        ; $4fac: $2b
    ld l, h                                       ; $4fad: $6c
    and $fd                                       ; $4fae: $e6 $fd
    ld a, [bc]                                    ; $4fb0: $0a
    xor a                                         ; $4fb1: $af
    ld a, [hl-]                                   ; $4fb2: $3a
    or [hl]                                       ; $4fb3: $b6
    ld c, c                                       ; $4fb4: $49
    ld c, d                                       ; $4fb5: $4a
    ld hl, sp+$73                                 ; $4fb6: $f8 $73
    db $ec                                        ; $4fb8: $ec
    ld e, a                                       ; $4fb9: $5f
    ld l, l                                       ; $4fba: $6d
    jp hl                                         ; $4fbb: $e9


    dec a                                         ; $4fbc: $3d
    call c, $88af                                 ; $4fbd: $dc $af $88
    ld [$fa30], a                                 ; $4fc0: $ea $30 $fa
    add sp, -$24                                  ; $4fc3: $e8 $dc
    add c                                         ; $4fc5: $81
    db $fc                                        ; $4fc6: $fc
    call $0398                                    ; $4fc7: $cd $98 $03
    ld c, c                                       ; $4fca: $49
    rra                                           ; $4fcb: $1f
    dec de                                        ; $4fcc: $1b
    ld [$96d5], sp                                ; $4fcd: $08 $d5 $96
    adc $1d                                       ; $4fd0: $ce $1d
    ret z                                         ; $4fd2: $c8

    ld e, a                                       ; $4fd3: $5f
    rlca                                          ; $4fd4: $07
    xor a                                         ; $4fd5: $af
    dec l                                         ; $4fd6: $2d
    sub e                                         ; $4fd7: $93
    adc [hl]                                      ; $4fd8: $8e
    add c                                         ; $4fd9: $81
    ld h, a                                       ; $4fda: $67
    adc c                                         ; $4fdb: $89
    dec e                                         ; $4fdc: $1d
    sub d                                         ; $4fdd: $92
    inc bc                                        ; $4fde: $03
    ld c, h                                       ; $4fdf: $4c
    ld a, [hl-]                                   ; $4fe0: $3a
    ld b, $9e                                     ; $4fe1: $06 $9e
    dec h                                         ; $4fe3: $25
    or [hl]                                       ; $4fe4: $b6
    inc de                                        ; $4fe5: $13
    rst $30                                       ; $4fe6: $f7
    ld e, $52                                     ; $4fe7: $1e $52
    adc h                                         ; $4fe9: $8c
    push de                                       ; $4fea: $d5
    push de                                       ; $4feb: $d5
    pop hl                                        ; $4fec: $e1
    ld [hl-], a                                   ; $4fed: $32
    jp z, $e3d8                                   ; $4fee: $ca $d8 $e3

    add b                                         ; $4ff1: $80
    ld [hl], a                                    ; $4ff2: $77
    ld c, b                                       ; $4ff3: $48
    ld c, $49                                     ; $4ff4: $0e $49
    rra                                           ; $4ff6: $1f
    dec de                                        ; $4ff7: $1b
    ld [$9cb5], sp                                ; $4ff8: $08 $b5 $9c
    xor e                                         ; $4ffb: $ab
    dec l                                         ; $4ffc: $2d
    ld h, l                                       ; $4ffd: $65
    dec l                                         ; $4ffe: $2d
    and h                                         ; $4fff: $a4
    ld [hl], a                                    ; $5000: $77
    add b                                         ; $5001: $80
    sbc e                                         ; $5002: $9b
    db $fc                                        ; $5003: $fc
    ld b, l                                       ; $5004: $45
    add $74                                       ; $5005: $c6 $74
    call nc, Call_034_6005                        ; $5007: $d4 $05 $60
    add hl, de                                    ; $500a: $19
    sub d                                         ; $500b: $92
    inc bc                                        ; $500c: $03
    ld c, h                                       ; $500d: $4c
    cp $be                                        ; $500e: $fe $be
    or $b9                                        ; $5010: $f6 $b9
    ld a, [$d623]                                 ; $5012: $fa $23 $d6
    ret c                                         ; $5015: $d8

    rla                                           ; $5016: $17
    sub [hl]                                      ; $5017: $96
    sbc $1c                                       ; $5018: $de $1c
    db $eb                                        ; $501a: $eb
    db $ed                                        ; $501b: $ed
    call c, $fc81                                 ; $501c: $dc $81 $fc
    sub l                                         ; $501f: $95
    jr nz, @+$4b                                  ; $5020: $20 $49

    ld b, a                                       ; $5022: $47
    xor d                                         ; $5023: $aa
    inc l                                         ; $5024: $2c
    inc sp                                        ; $5025: $33
    push bc                                       ; $5026: $c5
    ld h, [hl]                                    ; $5027: $66
    pop bc                                        ; $5028: $c1
    jp nz, $a3b9                                  ; $5029: $c2 $b9 $a3

    ld l, $00                                     ; $502c: $2e $00
    ld c, e                                       ; $502e: $4b
    sbc d                                         ; $502f: $9a
    inc bc                                        ; $5030: $03
    call z, $ce90                                 ; $5031: $cc $90 $ce
    ld e, $fc                                     ; $5034: $1e $fc
    ld e, l                                       ; $5036: $5d
    db $f4                                        ; $5037: $f4
    ld h, e                                       ; $5038: $63
    or l                                          ; $5039: $b5
    dec sp                                        ; $503a: $3b
    ld [hl-], a                                   ; $503b: $32
    ld c, $1c                                     ; $503c: $0e $1c
    inc sp                                        ; $503e: $33
    pop af                                        ; $503f: $f1
    xor b                                         ; $5040: $a8
    ld c, e                                       ; $5041: $4b
    ld b, $62                                     ; $5042: $06 $62
    inc sp                                        ; $5044: $33
    cp b                                          ; $5045: $b8
    or $dc                                        ; $5046: $f6 $dc
    db $e4                                        ; $5048: $e4
    xor a                                         ; $5049: $af
    jr nc, @+$75                                  ; $504a: $30 $73

    jr nz, @+$76                                  ; $504c: $20 $74

    ldh a, [$da]                                  ; $504e: $f0 $da
    ld [hl-], a                                   ; $5050: $32
    jp z, $8218                                   ; $5051: $ca $18 $82

    adc b                                         ; $5054: $88
    push de                                       ; $5055: $d5
    sub a                                         ; $5056: $97
    call z, $e0d0                                 ; $5057: $cc $d0 $e0
    xor a                                         ; $505a: $af
    rst $30                                       ; $505b: $f7
    db $eb                                        ; $505c: $eb
    xor l                                         ; $505d: $ad
    dec de                                        ; $505e: $1b
    ld b, a                                       ; $505f: $47
    rst $20                                       ; $5060: $e7
    ld d, [hl]                                    ; $5061: $56
    ld [hl], d                                    ; $5062: $72
    and h                                         ; $5063: $a4
    db $ed                                        ; $5064: $ed
    add sp, -$71                                  ; $5065: $e8 $8f
    cp l                                          ; $5067: $bd
    db $fd                                        ; $5068: $fd
    db $dd                                        ; $5069: $dd
    ld b, $7f                                     ; $506a: $06 $7f
    dec h                                         ; $506c: $25
    ld c, b                                       ; $506d: $48
    ld d, d                                       ; $506e: $52
    dec e                                         ; $506f: $1d
    db $fc                                        ; $5070: $fc
    dec d                                         ; $5071: $15
    call nc, $98ce                                ; $5072: $d4 $ce $98
    inc bc                                        ; $5075: $03
    jp $81b1                                      ; $5076: $c3 $b1 $81


    ret nc                                        ; $5079: $d0

    ld a, e                                       ; $507a: $7b
    ret z                                         ; $507b: $c8

    adc l                                         ; $507c: $8d
    ld b, $7f                                     ; $507d: $06 $7f
    ld b, l                                       ; $507f: $45
    cp $c6                                        ; $5080: $fe $c6
    sbc $73                                       ; $5082: $de $73
    push af                                       ; $5084: $f5
    ld b, a                                       ; $5085: $47
    xor h                                         ; $5086: $ac
    ld d, [hl]                                    ; $5087: $56
    ld h, l                                       ; $5088: $65
    dec e                                         ; $5089: $1d
    ld d, l                                       ; $508a: $55
    adc e                                         ; $508b: $8b
    ld h, l                                       ; $508c: $65
    inc bc                                        ; $508d: $03
    ld hl, $01cd                                  ; $508e: $21 $cd $01
    ld l, c                                       ; $5091: $69
    sbc d                                         ; $5092: $9a
    and $49                                       ; $5093: $e6 $49
    xor d                                         ; $5095: $aa
    ret z                                         ; $5096: $c8

    sbc a                                         ; $5097: $9f
    ld h, e                                       ; $5098: $63
    ld de, $d8ea                                  ; $5099: $11 $ea $d8
    ld [de], a                                    ; $509c: $12
    adc [hl]                                      ; $509d: $8e
    or l                                          ; $509e: $b5
    ld [hl], h                                    ; $509f: $74
    add h                                         ; $50a0: $84
    add l                                         ; $50a1: $85
    sub [hl]                                      ; $50a2: $96
    xor h                                         ; $50a3: $ac
    adc d                                         ; $50a4: $8a
    adc [hl]                                      ; $50a5: $8e
    dec a                                         ; $50a6: $3d
    rst $30                                       ; $50a7: $f7
    or e                                          ; $50a8: $b3
    sub [hl]                                      ; $50a9: $96
    ld [$0d8f], a                                 ; $50aa: $ea $8f $0d
    add h                                         ; $50ad: $84
    ld l, [hl]                                    ; $50ae: $6e
    ldh a, [rTAC]                                 ; $50af: $f0 $07
    push de                                       ; $50b1: $d5
    adc [hl]                                      ; $50b2: $8e
    db $ed                                        ; $50b3: $ed
    call c, $fc81                                 ; $50b4: $dc $81 $fc
    and l                                         ; $50b7: $a5
    add hl, sp                                    ; $50b8: $39
    ld [hl], e                                    ; $50b9: $73
    dec hl                                        ; $50ba: $2b
    add sp, $11                                   ; $50bb: $e8 $11
    jp nc, Jump_000_1cd9                          ; $50bd: $d2 $d9 $1c

    ld a, [$cfdc]                                 ; $50c0: $fa $dc $cf
    ld e, d                                       ; $50c3: $5a
    xor d                                         ; $50c4: $aa
    ccf                                           ; $50c5: $3f
    ld [hl], $10                                  ; $50c6: $36 $10
    cp d                                          ; $50c8: $ba
    pop bc                                        ; $50c9: $c1
    rra                                           ; $50ca: $1f
    ld d, h                                       ; $50cb: $54
    dec sp                                        ; $50cc: $3b
    or [hl]                                       ; $50cd: $b6
    ld [hl], e                                    ; $50ce: $73
    rlca                                          ; $50cf: $07
    ld a, [c]                                     ; $50d0: $f2
    sub a                                         ; $50d1: $97
    and $b3                                       ; $50d2: $e6 $b3
    cp $73                                        ; $50d4: $fe $73
    ld e, a                                       ; $50d6: $5f
    ld e, b                                       ; $50d7: $58
    jp z, Jump_034_4206                           ; $50d8: $ca $06 $42

    or l                                          ; $50db: $b5
    xor d                                         ; $50dc: $aa
    inc b                                         ; $50dd: $04
    ld a, a                                       ; $50de: $7f
    db $10                                        ; $50df: $10
    reti                                          ; $50e0: $d9


    sub b                                         ; $50e1: $90
    adc [hl]                                      ; $50e2: $8e
    ld c, $29                                     ; $50e3: $0e $29
    add $ea                                       ; $50e5: $c6 $ea
    ld [c], a                                     ; $50e7: $e2
    ld d, l                                       ; $50e8: $55
    ld b, d                                       ; $50e9: $42
    xor [hl]                                      ; $50ea: $ae
    ld [hl], a                                    ; $50eb: $77
    xor [hl]                                      ; $50ec: $ae
    cp $88                                        ; $50ed: $fe $88
    push de                                       ; $50ef: $d5
    xor d                                         ; $50f0: $aa
    xor e                                         ; $50f1: $ab
    or [hl]                                       ; $50f2: $b6

jr_034_50f3:
    ld h, h                                       ; $50f3: $64
    ld d, l                                       ; $50f4: $55
    or l                                          ; $50f5: $b5
    ret c                                         ; $50f6: $d8

    call z, Call_034_6c6f                         ; $50f7: $cc $6f $6c
    ld b, c                                       ; $50fa: $41
    jr @-$6c                                      ; $50fb: $18 $92

    inc bc                                        ; $50fd: $03
    ret                                           ; $50fe: $c9


    ld e, a                                       ; $50ff: $5f
    ld h, h                                       ; $5100: $64

jr_034_5101:
    call z, $b7b9                                 ; $5101: $cc $b9 $b7
    db $eb                                        ; $5104: $eb
    jr c, jr_034_5101                             ; $5105: $38 $fa

    jp nz, Jump_034_62f2                          ; $5107: $c2 $f2 $62

    add a                                         ; $510a: $87
    db $e4                                        ; $510b: $e4
    ld c, c                                       ; $510c: $49
    ld a, a                                       ; $510d: $7f
    ld l, a                                       ; $510e: $6f
    ld a, $37                                     ; $510f: $3e $37
    ld hl, sp+$2b                                 ; $5111: $f8 $2b
    ld b, c                                       ; $5113: $41
    ld a, d                                       ; $5114: $7a
    inc d                                         ; $5115: $14
    call c, $f823                                 ; $5116: $dc $23 $f8
    xor e                                         ; $5119: $ab
    pop hl                                        ; $511a: $e1
    cp $b1                                        ; $511b: $fe $b1
    add e                                         ; $511d: $83
    ld d, $7a                                     ; $511e: $16 $7a
    adc c                                         ; $5120: $89
    scf                                           ; $5121: $37
    call $a301                                    ; $5122: $cd $01 $a3
    dec l                                         ; $5125: $2d
    dec c                                         ; $5126: $0d
    add h                                         ; $5127: $84
    ld l, d                                       ; $5128: $6a
    ld c, e                                       ; $5129: $4b
    ld b, a                                       ; $512a: $47
    cp $dd                                        ; $512b: $fe $dd
    ld e, $01                                     ; $512d: $1e $01
    push de                                       ; $512f: $d5
    sbc $22                                       ; $5130: $de $22
    ld a, a                                       ; $5132: $7f
    ld e, a                                       ; $5133: $5f
    ld [$196f], sp                                ; $5134: $08 $6f $19
    adc l                                         ; $5137: $8d
    pop bc                                        ; $5138: $c1
    rra                                           ; $5139: $1f
    jr nz, @-$65                                  ; $513a: $20 $99

    sub h                                         ; $513c: $94
    ld a, c                                       ; $513d: $79
    xor e                                         ; $513e: $ab
    cpl                                           ; $513f: $2f
    add c                                         ; $5140: $81
    cp [hl]                                       ; $5141: $be
    ld e, b                                       ; $5142: $58
    ldh a, [$ce]                                  ; $5143: $f0 $ce
    ret c                                         ; $5145: $d8

    pop hl                                        ; $5146: $e1
    ld d, d                                       ; $5147: $52
    db $e4                                        ; $5148: $e4
    rst $08                                       ; $5149: $cf
    or c                                          ; $514a: $b1
    ret nc                                        ; $514b: $d0

    inc hl                                        ; $514c: $23
    ld hl, sp+$2b                                 ; $514d: $f8 $2b
    ld e, c                                       ; $514f: $59
    push af                                       ; $5150: $f5
    ld a, l                                       ; $5151: $7d
    ld b, h                                       ; $5152: $44
    ld l, a                                       ; $5153: $6f
    sbc d                                         ; $5154: $9a
    inc bc                                        ; $5155: $03
    ld c, c                                       ; $5156: $49
    rra                                           ; $5157: $1f
    dec de                                        ; $5158: $1b
    ld [$ee65], sp                                ; $5159: $08 $65 $ee
    rra                                           ; $515c: $1f
    ld [hl], b                                    ; $515d: $70
    jp c, Jump_034_52e1                           ; $515e: $da $e1 $52

    ld [$d027], a                                 ; $5161: $ea $27 $d0
    inc de                                        ; $5164: $13
    cp [hl]                                       ; $5165: $be
    ld h, d                                       ; $5166: $62
    dec l                                         ; $5167: $2d
    jr nz, jr_034_50f3                            ; $5168: $20 $89

    ld a, e                                       ; $516a: $7b
    ld [hl], e                                    ; $516b: $73
    push de                                       ; $516c: $d5
    ld [$4206], a                                 ; $516d: $ea $06 $42
    sub e                                         ; $5170: $93
    cp a                                          ; $5171: $bf
    ld b, d                                       ; $5172: $42
    ld [$9627], a                                 ; $5173: $ea $27 $96
    ld c, $5e                                     ; $5176: $0e $5e
    ld e, e                                       ; $5178: $5b
    ld h, $1d                                     ; $5179: $26 $1d
    inc bc                                        ; $517b: $03
    rst $08                                       ; $517c: $cf
    ld [de], a                                    ; $517d: $12
    sbc e                                         ; $517e: $9b
    halt                                          ; $517f: $76
    sbc b                                         ; $5180: $98
    rst $18                                       ; $5181: $df
    and a                                         ; $5182: $a7
    ldh [$c6], a                                  ; $5183: $e0 $c6
    db $db                                        ; $5185: $db
    ld h, [hl]                                    ; $5186: $66
    ld a, [bc]                                    ; $5187: $0a
    ld a, [de]                                    ; $5188: $1a
    ld b, a                                       ; $5189: $47
    add a                                         ; $518a: $87
    xor d                                         ; $518b: $aa
    call z, $9369                                 ; $518c: $cc $69 $93
    inc l                                         ; $518f: $2c
    dec a                                         ; $5190: $3d
    ld [bc], a                                    ; $5191: $02
    xor d                                         ; $5192: $aa
    ld a, l                                       ; $5193: $7d
    ld [hl], h                                    ; $5194: $74
    ld l, [hl]                                    ; $5195: $6e
    dec h                                         ; $5196: $25
    db $ec                                        ; $5197: $ec
    rst $18                                       ; $5198: $df
    ld b, $42                                     ; $5199: $06 $42
    rst $20                                       ; $519b: $e7
    ld d, h                                       ; $519c: $54
    ld hl, $4a62                                  ; $519d: $21 $62 $4a
    db $d3                                        ; $51a0: $d3
    ld c, $97                                     ; $51a1: $0e $97
    xor d                                         ; $51a3: $aa
    dec b                                         ; $51a4: $05
    adc e                                         ; $51a5: $8b
    inc b                                         ; $51a6: $04
    ld a, a                                       ; $51a7: $7f
    ld h, b                                       ; $51a8: $60
    add sp, -$44                                  ; $51a9: $e8 $bc
    ld d, $70                                     ; $51ab: $16 $70
    add sp, -$38                                  ; $51ad: $e8 $c8
    call nc, $cd66                                ; $51af: $d4 $66 $cd
    sbc h                                         ; $51b2: $9c
    ld a, c                                       ; $51b3: $79
    xor e                                         ; $51b4: $ab
    jp Jump_034_6ad5                              ; $51b5: $c3 $d5 $6a


    ld l, a                                       ; $51b8: $6f
    call nc, Call_000_11db                        ; $51b9: $d4 $db $11
    and h                                         ; $51bc: $a4
    ld b, l                                       ; $51bd: $45
    ld [hl], b                                    ; $51be: $70
    jp c, Jump_034_7f91                           ; $51bf: $da $91 $7f

    adc e                                         ; $51c2: $8b
    ccf                                           ; $51c3: $3f
    add e                                         ; $51c4: $83
    ld [hl], e                                    ; $51c5: $73
    sbc c                                         ; $51c6: $99
    ei                                            ; $51c7: $fb
    rlca                                          ; $51c8: $07
    ld e, h                                       ; $51c9: $5c
    ld [hl], h                                    ; $51ca: $74
    inc d                                         ; $51cb: $14
    ld sp, hl                                     ; $51cc: $f9
    ei                                            ; $51cd: $fb
    ld b, d                                       ; $51ce: $42
    db $f4                                        ; $51cf: $f4
    dec hl                                        ; $51d0: $2b
    and d                                         ; $51d1: $a2
    add sp, $58                                   ; $51d2: $e8 $58
    ld l, a                                       ; $51d4: $6f
    ld h, a                                       ; $51d5: $67
    cp l                                          ; $51d6: $bd
    ret c                                         ; $51d7: $d8

    inc [hl]                                      ; $51d8: $34
    rlca                                          ; $51d9: $07
    add hl, bc                                    ; $51da: $09
    db $fc                                        ; $51db: $fc
    push af                                       ; $51dc: $f5
    xor [hl]                                      ; $51dd: $ae
    ld b, h                                       ; $51de: $44
    cp e                                          ; $51df: $bb
    inc b                                         ; $51e0: $04
    ld c, c                                       ; $51e1: $49
    jp z, Jump_034_6328                           ; $51e2: $ca $28 $63

    ld [$5622], sp                                ; $51e5: $08 $22 $56
    ld e, a                                       ; $51e8: $5f
    jp nc, Jump_000_30af                          ; $51e9: $d2 $af $30

    di                                            ; $51ec: $f3
    dec a                                         ; $51ed: $3d
    pop af                                        ; $51ee: $f1
    ld d, c                                       ; $51ef: $51
    jr @-$6c                                      ; $51f0: $18 $92

jr_034_51f2:
    inc bc                                        ; $51f2: $03
    adc h                                         ; $51f3: $8c

jr_034_51f4:
    ld a, [bc]                                    ; $51f4: $0a
    sbc d                                         ; $51f5: $9a
    ld sp, hl                                     ; $51f6: $f9
    ld hl, sp-$04                                 ; $51f7: $f8 $fc
    pop bc                                        ; $51f9: $c1
    cp c                                          ; $51fa: $b9
    ld [hl], e                                    ; $51fb: $73
    ld e, l                                       ; $51fc: $5d
    dec sp                                        ; $51fd: $3b
    inc h                                         ; $51fe: $24
    rlca                                          ; $51ff: $07
    ld c, c                                       ; $5200: $49
    ld a, a                                       ; $5201: $7f
    or a                                          ; $5202: $b7
    jr @-$53                                      ; $5203: $18 $ab

    ld a, e                                       ; $5205: $7b
    rrca                                          ; $5206: $0f
    jp hl                                         ; $5207: $e9


    xor c                                         ; $5208: $a9
    ld b, $32                                     ; $5209: $06 $32
    db $f4                                        ; $520b: $f4
    ld d, e                                       ; $520c: $53
    ld [$1592], a                                 ; $520d: $ea $92 $15
    cp $e3                                        ; $5210: $fe $e3
    ldh a, [$0e]                                  ; $5212: $f0 $0e
    ret                                           ; $5214: $c9


    ld bc, $3fa3                                  ; $5215: $01 $a3 $3f
    or $70                                        ; $5218: $f6 $70
    inc l                                         ; $521a: $2c
    ld b, d                                       ; $521b: $42
    or l                                          ; $521c: $b5
    ld [$d011], a                                 ; $521d: $ea $11 $d0
    ld a, e                                       ; $5220: $7b
    ret z                                         ; $5221: $c8

    adc h                                         ; $5222: $8c
    add hl, sp                                    ; $5223: $39
    ld c, c                                       ; $5224: $49
    pop hl                                        ; $5225: $e1
    sbc [hl]                                      ; $5226: $9e
    ld h, b                                       ; $5227: $60
    pop af                                        ; $5228: $f1
    ld [hl], c                                    ; $5229: $71
    ld l, l                                       ; $522a: $6d
    cp b                                          ; $522b: $b8
    add c                                         ; $522c: $81
    ld d, b                                       ; $522d: $50
    or d                                          ; $522e: $b2
    ld [$d5f0], a                                 ; $522f: $ea $f0 $d5
    ld c, [hl]                                    ; $5232: $4e
    dec sp                                        ; $5233: $3b
    ld a, [hl-]                                   ; $5234: $3a
    jr z, jr_034_51f4                             ; $5235: $28 $bd

    ld e, l                                       ; $5237: $5d
    rst $00                                       ; $5238: $c7
    pop hl                                        ; $5239: $e1
    dec l                                         ; $523a: $2d
    ld e, c                                       ; $523b: $59
    push de                                       ; $523c: $d5
    or c                                          ; $523d: $b1
    ld a, $ba                                     ; $523e: $3e $ba
    ld d, [hl]                                    ; $5240: $56
    sbc $ce                                       ; $5241: $de $ce
    ld a, [$349f]                                 ; $5243: $fa $9f $34
    or [hl]                                       ; $5246: $b6
    ret                                           ; $5247: $c9


    ld d, a                                       ; $5248: $57
    halt                                          ; $5249: $76
    rst $38                                       ; $524a: $ff
    ld [bc], a                                    ; $524b: $02
    jr c, jr_034_51f2                             ; $524c: $38 $a4

    ld c, c                                       ; $524e: $49
    rra                                           ; $524f: $1f
    dec sp                                        ; $5250: $3b
    db $ec                                        ; $5251: $ec
    rst $28                                       ; $5252: $ef
    call $0d00                                    ; $5253: $cd $00 $0d
    add h                                         ; $5256: $84
    ld e, d                                       ; $5257: $5a
    add $26                                       ; $5258: $c6 $26
    adc b                                         ; $525a: $88
    dec [hl]                                      ; $525b: $35
    and h                                         ; $525c: $a4
    add hl, sp                                    ; $525d: $39
    or e                                          ; $525e: $b3
    ld e, l                                       ; $525f: $5d
    ld a, b                                       ; $5260: $78
    xor $f1                                       ; $5261: $ee $f1
    ld sp, hl                                     ; $5263: $f9
    dec sp                                        ; $5264: $3b
    ld d, a                                       ; $5265: $57
    ld a, a                                       ; $5266: $7f
    call nz, $d56a                                ; $5267: $c4 $6a $d5
    ret c                                         ; $526a: $d8

    ld [$1970], a                                 ; $526b: $ea $70 $19
    push hl                                       ; $526e: $e5
    ld a, [de]                                    ; $526f: $1a
    rst $00                                       ; $5270: $c7
    ld c, l                                       ; $5271: $4d
    cp $94                                        ; $5272: $fe $94
    cp d                                          ; $5274: $ba
    or a                                          ; $5275: $b7
    db $eb                                        ; $5276: $eb
    jr c, jr_034_5289                             ; $5277: $38 $10

    adc $c5                                       ; $5279: $ce $c5
    ld l, e                                       ; $527b: $6b
    ld de, $0f7a                                  ; $527c: $11 $7a $0f
    ld b, c                                       ; $527f: $41
    xor b                                         ; $5280: $a8
    ld d, [hl]                                    ; $5281: $56
    db $dd                                        ; $5282: $dd
    ldh [rIF], a                                  ; $5283: $e0 $0f
    ld a, [$6615]                                 ; $5285: $fa $15 $66
    cp [hl]                                       ; $5288: $be

jr_034_5289:
    daa                                           ; $5289: $27
    ld a, $0a                                     ; $528a: $3e $0a
    ld b, e                                       ; $528c: $43
    ld [hl], d                                    ; $528d: $72
    add hl, bc                                    ; $528e: $09
    db $fc                                        ; $528f: $fc
    push af                                       ; $5290: $f5
    ld a, l                                       ; $5291: $7d
    sub $bd                                       ; $5292: $d6 $bd
    add hl, sp                                    ; $5294: $39
    sub $3d                                       ; $5295: $d6 $3d
    pop bc                                        ; $5297: $c1
    ld bc, $ab25                                  ; $5298: $01 $25 $ab
    and e                                         ; $529b: $a3
    and e                                         ; $529c: $a3
    add sp, $57                                   ; $529d: $e8 $57
    jp c, $e7b2                                   ; $529f: $da $b2 $e7

    ld b, $7f                                     ; $52a2: $06 $7f
    dec a                                         ; $52a4: $3d
    inc d                                         ; $52a5: $14
    ld h, d                                       ; $52a6: $62
    ret                                           ; $52a7: $c9


    ld c, d                                       ; $52a8: $4a
    ld a, [hl-]                                   ; $52a9: $3a
    inc a                                         ; $52aa: $3c
    sub [hl]                                      ; $52ab: $96
    jr nz, jr_034_52eb                            ; $52ac: $20 $3d

    ld d, c                                       ; $52ae: $51
    sbc e                                         ; $52af: $9b
    ld hl, $b0e1                                  ; $52b0: $21 $e1 $b0
    and h                                         ; $52b3: $a4
    add hl, sp                                    ; $52b4: $39
    ret                                           ; $52b5: $c9


    ld h, c                                       ; $52b6: $61
    ld l, c                                       ; $52b7: $69
    jr nz, jr_034_532e                            ; $52b8: $20 $74

    add e                                         ; $52ba: $83
    ccf                                           ; $52bb: $3f
    ret nz                                        ; $52bc: $c0

    ld c, $5e                                     ; $52bd: $0e $5e
    db $db                                        ; $52bf: $db
    add h                                         ; $52c0: $84

Call_034_52c1:
    dec b                                         ; $52c1: $05
    adc e                                         ; $52c2: $8b
    ld de, $369d                                  ; $52c3: $11 $9d $36
    ld c, c                                       ; $52c6: $49
    dec d                                         ; $52c7: $15
    cpl                                           ; $52c8: $2f
    ld c, d                                       ; $52c9: $4a
    pop bc                                        ; $52ca: $c1
    ld [$2b25], sp                                ; $52cb: $08 $25 $2b
    add hl, hl                                    ; $52ce: $29
    and e                                         ; $52cf: $a3
    ld e, h                                       ; $52d0: $5c
    db $e3                                        ; $52d1: $e3
    ld a, b                                       ; $52d2: $78
    sbc e                                         ; $52d3: $9b
    db $fc                                        ; $52d4: $fc
    add hl, hl                                    ; $52d5: $29
    ld [hl], l                                    ; $52d6: $75
    inc sp                                        ; $52d7: $33
    ccf                                           ; $52d8: $3f
    rst $28                                       ; $52d9: $ef
    cp c                                          ; $52da: $b9
    ld a, [$0717]                                 ; $52db: $fa $17 $07
    jp nz, $aa14                                  ; $52de: $c2 $14 $aa

Jump_034_52e1:
    jp $a91d                                      ; $52e1: $c3 $1d $a9


    jr nc, jr_034_5354                            ; $52e4: $30 $6e

    ld l, c                                       ; $52e6: $69
    ld c, $a3                                     ; $52e7: $0e $a3
    cp l                                          ; $52e9: $bd
    ld e, e                                       ; $52ea: $5b

jr_034_52eb:
    xor l                                         ; $52eb: $ad
    adc d                                         ; $52ec: $8a
    db $fc                                        ; $52ed: $fc
    xor l                                         ; $52ee: $ad
    add hl, hl                                    ; $52ef: $29
    ld l, l                                       ; $52f0: $6d
    ld l, h                                       ; $52f1: $6c
    or l                                          ; $52f2: $b5
    or a                                          ; $52f3: $b7
    inc b                                         ; $52f4: $04
    ld l, c                                       ; $52f5: $69
    add hl, bc                                    ; $52f6: $09
    ldh a, [$96]                                  ; $52f7: $f0 $96
    add hl, bc                                    ; $52f9: $09
    rla                                           ; $52fa: $17
    cp a                                          ; $52fb: $bf
    push af                                       ; $52fc: $f5
    halt                                          ; $52fd: $76
    dec e                                         ; $52fe: $1d
    add a                                         ; $52ff: $87
    or a                                          ; $5300: $b7
    rst $00                                       ; $5301: $c7
    ret c                                         ; $5302: $d8

    db $fc                                        ; $5303: $fc
    add c                                         ; $5304: $81
    ld de, $bdce                                  ; $5305: $11 $ce $bd
    db $fd                                        ; $5308: $fd
    ld e, l                                       ; $5309: $5d
    add h                                         ; $530a: $84
    ld l, d                                       ; $530b: $6a
    ld d, l                                       ; $530c: $55
    dec e                                         ; $530d: $1d
    xor $f1                                       ; $530e: $ee $f1
    or e                                          ; $5310: $b3
    ld b, b                                       ; $5311: $40
    cp $dc                                        ; $5312: $fe $dc
    cp c                                          ; $5314: $b9

jr_034_5315:
    ld c, c                                       ; $5315: $49
    jp nc, $ead8                                  ; $5316: $d2 $d8 $ea

    jr nc, jr_034_5315                            ; $5319: $30 $fa

    add sp, -$78                                  ; $531b: $e8 $88
    ld c, e                                       ; $531d: $4b
    inc h                                         ; $531e: $24
    db $f4                                        ; $531f: $f4
    dec h                                         ; $5320: $25
    dec e                                         ; $5321: $1d
    or h                                          ; $5322: $b4
    call c, $dabd                                 ; $5323: $dc $bd $da
    sbc e                                         ; $5326: $9b
    and $cc                                       ; $5327: $e6 $cc
    db $fd                                        ; $5329: $fd
    inc bc                                        ; $532a: $03
    ld l, $f2                                     ; $532b: $2e $f2
    rst $20                                       ; $532d: $e7

jr_034_532e:
    ld e, b                                       ; $532e: $58
    add sp, $3d                                   ; $532f: $e8 $3d
    db $e4                                        ; $5331: $e4
    ld b, [hl]                                    ; $5332: $46
    add e                                         ; $5333: $83
    cp a                                          ; $5334: $bf
    sub d                                         ; $5335: $92
    ld e, b                                       ; $5336: $58
    res 4, a                                      ; $5337: $cb $a7
    or h                                          ; $5339: $b4
    ld h, h                                       ; $533a: $64
    ld d, l                                       ; $533b: $55
    ld [hl], h                                    ; $533c: $74
    ld l, h                                       ; $533d: $6c
    jp c, $d2e1                                   ; $533e: $da $e1 $d2

    cp e                                          ; $5341: $bb
    ld h, e                                       ; $5342: $63
    sbc h                                         ; $5343: $9c
    ld [hl], e                                    ; $5344: $73
    rst $28                                       ; $5345: $ef
    ld d, a                                       ; $5346: $57
    ld sp, $abf8                                  ; $5347: $31 $f8 $ab
    ld c, $f7                                     ; $534a: $0e $f7
    ld hl, sp+$59                                 ; $534c: $f8 $59
    jr nz, jr_034_53cf                            ; $534e: $20 $7f

    sbc $ce                                       ; $5350: $de $ce
    ld c, l                                       ; $5352: $4d
    ld [de], a                                    ; $5353: $12

jr_034_5354:
    ld l, a                                       ; $5354: $6f
    ld e, c                                       ; $5355: $59
    inc de                                        ; $5356: $13
    or c                                          ; $5357: $b1
    jp c, Jump_000_369b                           ; $5358: $da $9b $36

jr_034_535b:
    add hl, hl                                    ; $535b: $29
    call c, $ead8                                 ; $535c: $dc $d8 $ea
    jr nc, jr_034_535b                            ; $535f: $30 $fa

    add sp, -$78                                  ; $5361: $e8 $88
    ld c, e                                       ; $5363: $4b
    inc h                                         ; $5364: $24
    db $f4                                        ; $5365: $f4
    dec h                                         ; $5366: $25
    ld h, l                                       ; $5367: $65
    cp l                                          ; $5368: $bd
    ld a, [bc]                                    ; $5369: $0a
    ret z                                         ; $536a: $c8

    ld d, b                                       ; $536b: $50
    ld c, e                                       ; $536c: $4b
    rst $38                                       ; $536d: $ff
    pop de                                        ; $536e: $d1
    sub a                                         ; $536f: $97
    xor b                                         ; $5370: $a8
    adc b                                         ; $5371: $88
    ret z                                         ; $5372: $c8

    db $10                                        ; $5373: $10
    cp h                                          ; $5374: $bc
    ld l, c                                       ; $5375: $69
    ld c, $cc                                     ; $5376: $0e $cc
    db $fd                                        ; $5378: $fd
    inc bc                                        ; $5379: $03
    add $8e                                       ; $537a: $c6 $8e
    and b                                         ; $537c: $a0
    rra                                           ; $537d: $1f
    pop de                                        ; $537e: $d1
    ld c, e                                       ; $537f: $4b
    adc [hl]                                      ; $5380: $8e
    db $e3                                        ; $5381: $e3
    or b                                          ; $5382: $b0
    ld d, h                                       ; $5383: $54
    xor l                                         ; $5384: $ad
    xor $30                                       ; $5385: $ee $30
    sub d                                         ; $5387: $92
    ld e, h                                       ; $5388: $5c
    push bc                                       ; $5389: $c5
    ld e, b                                       ; $538a: $58
    db $dd                                        ; $538b: $dd
    rla                                           ; $538c: $17
    sub [hl]                                      ; $538d: $96
    xor d                                         ; $538e: $aa
    dec b                                         ; $538f: $05
    ld l, a                                       ; $5390: $6f
    jp c, $d2e1                                   ; $5391: $da $e1 $d2

    ld b, b                                       ; $5394: $40
    xor b                                         ; $5395: $a8
    or [hl]                                       ; $5396: $b6
    ld d, h                                       ; $5397: $54
    db $ed                                        ; $5398: $ed
    ld [hl], e                                    ; $5399: $73
    inc e                                         ; $539a: $1c
    inc [hl]                                      ; $539b: $34
    ld hl, sp+$43                                 ; $539c: $f8 $43
    ld [hl], b                                    ; $539e: $70
    ld h, a                                       ; $539f: $67
    di                                            ; $53a0: $f3
    inc de                                        ; $53a1: $13
    ld c, e                                       ; $53a2: $4b
    rlca                                          ; $53a3: $07
    xor a                                         ; $53a4: $af
    db $ed                                        ; $53a5: $ed
    and a                                         ; $53a6: $a7
    call nc, $e69b                                ; $53a7: $d4 $9b $e6
    inc hl                                        ; $53aa: $23
    add hl, sp                                    ; $53ab: $39
    db $e3                                        ; $53ac: $e3
    or l                                          ; $53ad: $b5
    ccf                                           ; $53ae: $3f
    ei                                            ; $53af: $fb
    sub h                                         ; $53b0: $94
    ld h, d                                       ; $53b1: $62
    add a                                         ; $53b2: $87
    sub c                                         ; $53b3: $91

jr_034_53b4:
    db $e4                                        ; $53b4: $e4
    ld a, [hl+]                                   ; $53b5: $2a
    ld l, e                                       ; $53b6: $6b
    ld [hl+], a                                   ; $53b7: $22
    ld d, [hl]                                    ; $53b8: $56
    dec de                                        ; $53b9: $1b
    adc d                                         ; $53ba: $8a
    pop bc                                        ; $53bb: $c1
    ld e, a                                       ; $53bc: $5f
    cp a                                          ; $53bd: $bf
    ld [hl+], a                                   ; $53be: $22
    xor d                                         ; $53bf: $aa
    jp $a3e8                                      ; $53c0: $c3 $e8 $a3


    ld c, h                                       ; $53c3: $4c
    cp b                                          ; $53c4: $b8
    ld hl, sp-$13                                 ; $53c5: $f8 $ed
    ld l, [hl]                                    ; $53c7: $6e
    cp c                                          ; $53c8: $b9
    and l                                         ; $53c9: $a5
    ld c, l                                       ; $53ca: $4d
    ld d, d                                       ; $53cb: $52
    push bc                                       ; $53cc: $c5
    adc e                                         ; $53cd: $8b
    ld d, d                                       ; $53ce: $52

jr_034_53cf:
    jr nc, jr_034_5413                            ; $53cf: $30 $42

    scf                                           ; $53d1: $37
    ld hl, sp-$7d                                 ; $53d2: $f8 $83
    sub d                                         ; $53d4: $92
    ld d, l                                       ; $53d5: $55
    ld [hl], c                                    ; $53d6: $71
    jr nz, jr_034_53ea                            ; $53d7: $20 $11

    ld c, d                                       ; $53d9: $4a
    ld d, [hl]                                    ; $53da: $56
    adc l                                         ; $53db: $8d
    daa                                           ; $53dc: $27
    ld a, $3a                                     ; $53dd: $3e $3a
    rst $08                                       ; $53df: $cf
    add d                                         ; $53e0: $82
    ld b, l                                       ; $53e1: $45
    add d                                         ; $53e2: $82
    ccf                                           ; $53e3: $3f
    add sp, -$13                                  ; $53e4: $e8 $ed
    ld a, [hl-]                                   ; $53e6: $3a
    ld c, $ef                                     ; $53e7: $0e $ef
    sub b                                         ; $53e9: $90

jr_034_53ea:
    inc e                                         ; $53ea: $1c
    ld c, h                                       ; $53eb: $4c
    ld b, a                                       ; $53ec: $47
    rlca                                          ; $53ed: $07
    cpl                                           ; $53ee: $2f
    pop bc                                        ; $53ef: $c1
    ldh [rIF], a                                  ; $53f0: $e0 $0f
    ld [hl+], a                                   ; $53f2: $22
    dec sp                                        ; $53f3: $3b
    scf                                           ; $53f4: $37
    or [hl]                                       ; $53f5: $b6
    ld l, d                                       ; $53f6: $6a
    ld e, c                                       ; $53f7: $59
    xor a                                         ; $53f8: $af
    ld [bc], a                                    ; $53f9: $02
    ld [hl-], a                                   ; $53fa: $32
    ld a, b                                       ; $53fb: $78
    dec sp                                        ; $53fc: $3b
    add d                                         ; $53fd: $82
    ld a, [hl]                                    ; $53fe: $7e
    ld b, h                                       ; $53ff: $44
    xor a                                         ; $5400: $af
    inc h                                         ; $5401: $24
    xor d                                         ; $5402: $aa
    jp $b55b                                      ; $5403: $c3 $5b $b5


    cp d                                          ; $5406: $ba
    jp $7248                                      ; $5407: $c3 $48 $72


    ld h, c                                       ; $540a: $61
    ld l, a                                       ; $540b: $6f
    ld h, e                                       ; $540c: $63
    rst $28                                       ; $540d: $ef
    ld a, d                                       ; $540e: $7a
    sbc e                                         ; $540f: $9b
    adc c                                         ; $5410: $89
    ld b, d                                       ; $5411: $42
    db $d3                                        ; $5412: $d3

jr_034_5413:
    ret z                                         ; $5413: $c8

    call c, $d8a4                                 ; $5414: $dc $a4 $d8
    call z, $b41d                                 ; $5417: $cc $1d $b4
    jr nz, jr_034_53b4                            ; $541a: $20 $98

    rst $18                                       ; $541c: $df
    and b                                         ; $541d: $a0
    add sp, -$28                                  ; $541e: $e8 $d8
    inc [hl]                                      ; $5420: $34
    rlca                                          ; $5421: $07
    add hl, bc                                    ; $5422: $09
    db $fc                                        ; $5423: $fc
    dec [hl]                                      ; $5424: $35
    ld d, e                                       ; $5425: $53
    db $fc                                        ; $5426: $fc
    and $6e                                       ; $5427: $e6 $6e
    ldh a, [rTAC]                                 ; $5429: $f0 $07
    ld e, l                                       ; $542b: $5d
    dec h                                         ; $542c: $25
    db $fd                                        ; $542d: $fd
    adc d                                         ; $542e: $8a
    xor b                                         ; $542f: $a8
    ld c, $97                                     ; $5430: $0e $97
    add hl, bc                                    ; $5432: $09
    ld l, d                                       ; $5433: $6a
    or l                                          ; $5434: $b5
    scf                                           ; $5435: $37
    and e                                         ; $5436: $a3
    adc c                                         ; $5437: $89
    ld l, b                                       ; $5438: $68
    add hl, sp                                    ; $5439: $39
    ld d, a                                       ; $543a: $57
    dec e                                         ; $543b: $1d
    dec h                                         ; $543c: $25
    xor e                                         ; $543d: $ab
    ld e, d                                       ; $543e: $5a
    adc b                                         ; $543f: $88
    rst $38                                       ; $5440: $ff
    call nz, $ee7b                                ; $5441: $c4 $7b $ee
    db $dd                                        ; $5444: $dd

jr_034_5445:
    sub h                                         ; $5445: $94
    ccf                                           ; $5446: $3f
    ld h, e                                       ; $5447: $63
    sub e                                         ; $5448: $93
    cp a                                          ; $5449: $bf
    jp nz, $9592                                  ; $544a: $c2 $92 $95

    db $f4                                        ; $544d: $f4
    inc b                                         ; $544e: $04
    rlca                                          ; $544f: $07
    ld d, h                                       ; $5450: $54
    add a                                         ; $5451: $87
    ld a, e                                       ; $5452: $7b
    jr c, jr_034_5465                             ; $5453: $38 $10

    cp h                                          ; $5455: $bc
    dec e                                         ; $5456: $1d
    and l                                         ; $5457: $a5
    or $06                                        ; $5458: $f6 $06
    xor $fb                                       ; $545a: $ee $fb
    ld [hl], b                                    ; $545c: $70
    ld l, $5e                                     ; $545d: $2e $5e
    xor e                                         ; $545f: $ab
    dec l                                         ; $5460: $2d

Jump_034_5461:
    db $db                                        ; $5461: $db
    xor a                                         ; $5462: $af
    ld hl, sp+$3b                                 ; $5463: $f8 $3b

jr_034_5465:
    rst $30                                       ; $5465: $f7
    xor $a0                                       ; $5466: $ee $a0
    push bc                                       ; $5468: $c5
    ld [hl], b                                    ; $5469: $70
    pop af                                        ; $546a: $f1
    ld a, [hl+]                                   ; $546b: $2a
    ld a, [c]                                     ; $546c: $f2
    scf                                           ; $546d: $37
    or $96                                        ; $546e: $f6 $96
    ld d, b                                       ; $5470: $50
    ld a, e                                       ; $5471: $7b
    inc sp                                        ; $5472: $33
    db $dd                                        ; $5473: $dd
    inc [hl]                                      ; $5474: $34
    rlca                                          ; $5475: $07
    add hl, bc                                    ; $5476: $09
    sub d                                         ; $5477: $92
    ld a, c                                       ; $5478: $79
    push af                                       ; $5479: $f5
    db $fd                                        ; $547a: $fd
    ld h, e                                       ; $547b: $63
    rst $38                                       ; $547c: $ff
    halt                                          ; $547d: $76
    sub [hl]                                      ; $547e: $96
    and b                                         ; $547f: $a0
    db $fc                                        ; $5480: $fc
    ld h, c                                       ; $5481: $61
    add a                                         ; $5482: $87
    add hl, de                                    ; $5483: $19
    cp l                                          ; $5484: $bd
    ret z                                         ; $5485: $c8

    sbc a                                         ; $5486: $9f
    db $fc                                        ; $5487: $fc
    cp l                                          ; $5488: $bd
    dec [hl]                                      ; $5489: $35
    db $10                                        ; $548a: $10
    ld a, d                                       ; $548b: $7a
    cp e                                          ; $548c: $bb
    adc [hl]                                      ; $548d: $8e
    ld b, b                                       ; $548e: $40
    cp $d2                                        ; $548f: $fe $d2
    ld h, $f0                                     ; $5491: $26 $f0
    rst $10                                       ; $5493: $d7
    rst $30                                       ; $5494: $f7
    ld e, c                                       ; $5495: $59
    scf                                           ; $5496: $37
    inc sp                                        ; $5497: $33
    ld a, [$cf79]                                 ; $5498: $fa $79 $cf
    cp l                                          ; $549b: $bd
    add a                                         ; $549c: $87
    ld l, e                                       ; $549d: $6b
    jp hl                                         ; $549e: $e9


    adc e                                         ; $549f: $8b
    ld [hl], l                                    ; $54a0: $75
    ld l, h                                       ; $54a1: $6c
    and $ec                                       ; $54a2: $e6 $ec
    ld l, a                                       ; $54a4: $6f
    and $6d                                       ; $54a5: $e6 $6d
    jr nz, jr_034_5445                            ; $54a7: $20 $9c

    ei                                            ; $54a9: $fb
    ld a, $eb                                     ; $54aa: $3e $eb
    add $db                                       ; $54ac: $c6 $db
    ld a, [hl]                                    ; $54ae: $7e
    sub $d2                                       ; $54af: $d6 $d2
    dec c                                         ; $54b1: $0d
    cp $a0                                        ; $54b2: $fe $a0
    rst $30                                       ; $54b4: $f7
    or b                                          ; $54b5: $b0
    or [hl]                                       ; $54b6: $b6
    ld d, h                                       ; $54b7: $54
    cp [hl]                                       ; $54b8: $be
    jp nz, Jump_034_75db                          ; $54b9: $c2 $db $75

    inc e                                         ; $54bc: $1c
    sbc $a2                                       ; $54bd: $de $a2
    sbc a                                         ; $54bf: $9f
    scf                                           ; $54c0: $37
    call Call_034_4901                            ; $54c1: $cd $01 $49
    pop hl                                        ; $54c4: $e1
    ld [hl-], a                                   ; $54c5: $32
    ld sp, hl                                     ; $54c6: $f9
    and e                                         ; $54c7: $a3
    adc d                                         ; $54c8: $8a
    rst $18                                       ; $54c9: $df
    cp h                                          ; $54ca: $bc
    jp c, $d1db                                   ; $54cb: $da $db $d1

    rra                                           ; $54ce: $1f
    pop de                                        ; $54cf: $d1
    add d                                         ; $54d0: $82
    inc bc                                        ; $54d1: $03
    ld c, $4b                                     ; $54d2: $0e $4b
    ld e, c                                       ; $54d4: $59
    rst $18                                       ; $54d5: $df
    ccf                                           ; $54d6: $3f
    ld a, a                                       ; $54d7: $7f
    sbc $ea                                       ; $54d8: $de $ea
    ld [hl], b                                    ; $54da: $70
    add a                                         ; $54db: $87
    rst $00                                       ; $54dc: $c7
    ld h, [hl]                                    ; $54dd: $66
    ld a, a                                       ; $54de: $7f
    inc sp                                        ; $54df: $33
    inc b                                         ; $54e0: $04
    sub d                                         ; $54e1: $92
    ld d, h                                       ; $54e2: $54
    dec de                                        ; $54e3: $1b
    dec sp                                        ; $54e4: $3b
    ld d, h                                       ; $54e5: $54
    ld de, $785e                                  ; $54e6: $11 $5e $78
    sbc a                                         ; $54e9: $9f
    ld [bc], a                                    ; $54ea: $02
    jp z, Jump_000_0757                           ; $54eb: $ca $57 $07

    ld d, [hl]                                    ; $54ee: $56
    ld e, e                                       ; $54ef: $5b
    ld a, [hl-]                                   ; $54f0: $3a
    sbc e                                         ; $54f1: $9b
    sbc a                                         ; $54f2: $9f
    ld e, b                                       ; $54f3: $58
    jp nc, $fece                                  ; $54f4: $d2 $ce $fe

    ld sp, hl                                     ; $54f7: $f9
    inc bc                                        ; $54f8: $03
    inc l                                         ; $54f9: $2c
    ld a, [c]                                     ; $54fa: $f2
    ld b, a                                       ; $54fb: $47
    ccf                                           ; $54fc: $3f
    pop hl                                        ; $54fd: $e1
    dec l                                         ; $54fe: $2d
    add [hl]                                      ; $54ff: $86
    ld a, e                                       ; $5500: $7b

jr_034_5501:
    xor d                                         ; $5501: $aa
    push af                                       ; $5502: $f5
    push bc                                       ; $5503: $c5
    ld e, a                                       ; $5504: $5f
    sbc d                                         ; $5505: $9a
    inc bc                                        ; $5506: $03
    add hl, bc                                    ; $5507: $09
    ld e, e                                       ; $5508: $5b
    dec e                                         ; $5509: $1d
    ld b, [hl]                                    ; $550a: $46
    rra                                           ; $550b: $1f
    dec e                                         ; $550c: $1d
    ld [hl], c                                    ; $550d: $71
    adc c                                         ; $550e: $89
    add h                                         ; $550f: $84
    cp [hl]                                       ; $5510: $be
    and h                                         ; $5511: $a4
    ld a, b                                       ; $5512: $78
    ld d, c                                       ; $5513: $51
    ld e, d                                       ; $5514: $5a
    ld h, e                                       ; $5515: $63
    dec e                                         ; $5516: $1d
    db $eb                                        ; $5517: $eb
    ld h, [hl]                                    ; $5518: $66
    ld a, [hl]                                    ; $5519: $7e
    adc [hl]                                      ; $551a: $8e
    jp Jump_034_5b9d                              ; $551b: $c3 $9d $5b


    inc a                                         ; $551e: $3c
    jr nc, jr_034_5501                            ; $551f: $30 $e0

    ld h, [hl]                                    ; $5521: $66
    ld h, [hl]                                    ; $5522: $66
    cp l                                          ; $5523: $bd
    rst $20                                       ; $5524: $e7
    ld [$6370], a                                 ; $5525: $ea $70 $63
    xor e                                         ; $5528: $ab
    cp l                                          ; $5529: $bd
    dec e                                         ; $552a: $1d
    inc c                                         ; $552b: $0c
    dec bc                                        ; $552c: $0b
    ld a, b                                       ; $552d: $78

jr_034_552e:
    res 0, h                                      ; $552e: $cb $84
    adc e                                         ; $5530: $8b
    rst $18                                       ; $5531: $df
    ld c, d                                       ; $5532: $4a
    sub b                                         ; $5533: $90

jr_034_5534:
    sbc [hl]                                      ; $5534: $9e
    ld b, b                                       ; $5535: $40
    jp c, $fe04                                   ; $5536: $da $04 $fe

    ld a, d                                       ; $5539: $7a
    ld [hl], a                                    ; $553a: $77
    adc h                                         ; $553b: $8c
    db $d3                                        ; $553c: $d3
    ld d, e                                       ; $553d: $53
    xor l                                         ; $553e: $ad
    cpl                                           ; $553f: $2f
    cp $ba                                        ; $5540: $fe $ba
    pop bc                                        ; $5542: $c1
    rra                                           ; $5543: $1f
    inc [hl]                                      ; $5544: $34
    di                                            ; $5545: $f3
    ld a, [hl]                                    ; $5546: $7e
    ld [hl], l                                    ; $5547: $75
    xor $fd                                       ; $5548: $ee $fd
    ld a, d                                       ; $554a: $7a
    or c                                          ; $554b: $b1
    ld h, b                                       ; $554c: $60
    add hl, hl                                    ; $554d: $29
    add [hl]                                      ; $554e: $86
    dec sp                                        ; $554f: $3b
    ld l, b                                       ; $5550: $68
    ld h, c                                       ; $5551: $61
    cpl                                           ; $5552: $2f
    ret                                           ; $5553: $c9


    cp h                                          ; $5554: $bc
    dec c                                         ; $5555: $0d
    add h                                         ; $5556: $84
    inc [hl]                                      ; $5557: $34
    rlca                                          ; $5558: $07
    call z, $abf0                                 ; $5559: $cc $f0 $ab
    ld c, $fe                                     ; $555c: $0e $fe
    sbc d                                         ; $555e: $9a
    add hl, hl                                    ; $555f: $29
    xor b                                         ; $5560: $a8
    ld a, [hl-]                                   ; $5561: $3a
    adc $bd                                       ; $5562: $ce $bd
    ld a, e                                       ; $5564: $7b
    or a                                          ; $5565: $b7
    ld e, d                                       ; $5566: $5a
    sub l                                         ; $5567: $95
    xor h                                         ; $5568: $ac
    ld a, [hl-]                                   ; $5569: $3a
    dec bc                                        ; $556a: $0b
    dec c                                         ; $556b: $0d
    cp b                                          ; $556c: $b8
    rlca                                          ; $556d: $07
    cp a                                          ; $556e: $bf
    ld h, c                                       ; $556f: $61
    add a                                         ; $5570: $87
    sub c                                         ; $5571: $91
    db $e4                                        ; $5572: $e4
    ld l, d                                       ; $5573: $6a
    and $87                                       ; $5574: $e6 $87
    sub b                                         ; $5576: $90
    halt                                          ; $5577: $76
    jr c, jr_034_55b0                             ; $5578: $38 $36

    dec bc                                        ; $557a: $0b
    ld d, $1a                                     ; $557b: $16 $1a
    ld b, a                                       ; $557d: $47
    or l                                          ; $557e: $b5
    inc b                                         ; $557f: $04
    add b                                         ; $5580: $80
    or a                                          ; $5581: $b7
    ld c, h                                       ; $5582: $4c
    cp b                                          ; $5583: $b8
    ld hl, sp-$53                                 ; $5584: $f8 $ad
    adc [hl]                                      ; $5586: $8e
    ld [hl], l                                    ; $5587: $75
    rst $20                                       ; $5588: $e7
    ld d, d                                       ; $5589: $52
    add b                                         ; $558a: $80
    db $fc                                        ; $558b: $fc
    ld sp, hl                                     ; $558c: $f9
    ld e, h                                       ; $558d: $5c
    dec e                                         ; $558e: $1d
    ld l, [hl]                                    ; $558f: $6e
    ld l, h                                       ; $5590: $6c
    or l                                          ; $5591: $b5
    and l                                         ; $5592: $a5
    or e                                          ; $5593: $b3
    daa                                           ; $5594: $27
    ld a, $17                                     ; $5595: $3e $17
    dec e                                         ; $5597: $1d
    ld l, e                                       ; $5598: $6b
    jp hl                                         ; $5599: $e9


    jr nc, jr_034_552e                            ; $559a: $30 $92

    ld e, h                                       ; $559c: $5c
    ld b, b                                       ; $559d: $40
    sub d                                         ; $559e: $92
    ld a, d                                       ; $559f: $7a
    or l                                          ; $55a0: $b5
    ld hl, $01cd                                  ; $55a1: $21 $cd $01
    jp $5d63                                      ; $55a4: $c3 $63 $5d


    ld l, l                                       ; $55a7: $6d
    add hl, hl                                    ; $55a8: $29
    and e                                         ; $55a9: $a3
    jr c, jr_034_5534                             ; $55aa: $38 $88

    pop bc                                        ; $55ac: $c1
    dec hl                                        ; $55ad: $2b
    inc sp                                        ; $55ae: $33
    ld b, l                                       ; $55af: $45

jr_034_55b0:
    ld hl, sp-$60                                 ; $55b0: $f8 $a0
    cp h                                          ; $55b2: $bc
    cp l                                          ; $55b3: $bd
    db $fd                                        ; $55b4: $fd
    db $dd                                        ; $55b5: $dd
    ld [$ea90], a                                 ; $55b6: $ea $90 $ea
    rst $08                                       ; $55b9: $cf
    ld a, [hl-]                                   ; $55ba: $3a
    ld a, [$094c]                                 ; $55bb: $fa $4c $09
    rst $28                                       ; $55be: $ef
    cp c                                          ; $55bf: $b9
    or c                                          ; $55c0: $b1
    ld [hl], l                                    ; $55c1: $75
    xor h                                         ; $55c2: $ac
    or a                                          ; $55c3: $b7
    ld a, a                                       ; $55c4: $7f
    or l                                          ; $55c5: $b5
    push bc                                       ; $55c6: $c5
    db $db                                        ; $55c7: $db
    ld de, $4897                                  ; $55c8: $11 $97 $48
    add sp, $4b                                   ; $55cb: $e8 $4b
    ld c, d                                       ; $55cd: $4a
    ld d, [hl]                                    ; $55ce: $56
    call $ff4c                                    ; $55cf: $cd $4c $ff
    ld h, [hl]                                    ; $55d2: $66
    sbc $34                                       ; $55d3: $de $34
    rlca                                          ; $55d5: $07
    jp $2d63                                      ; $55d6: $c3 $63 $2d


    push de                                       ; $55d9: $d5
    sub [hl]                                      ; $55da: $96
    ld [hl-], a                                   ; $55db: $32
    adc d                                         ; $55dc: $8a
    add e                                         ; $55dd: $83
    jr jr_034_55fc                                ; $55de: $18 $1c

    dec sp                                        ; $55e0: $3b
    inc sp                                        ; $55e1: $33
    dec l                                         ; $55e2: $2d
    dec hl                                        ; $55e3: $2b
    or c                                          ; $55e4: $b1
    add hl, de                                    ; $55e5: $19
    ld d, h                                       ; $55e6: $54
    rlca                                          ; $55e7: $07
    ld a, a                                       ; $55e8: $7f
    dec h                                         ; $55e9: $25
    xor e                                         ; $55ea: $ab
    ld a, [hl-]                                   ; $55eb: $3a
    sub $47                                       ; $55ec: $d6 $47
    rst $38                                       ; $55ee: $ff
    ld l, d                                       ; $55ef: $6a
    adc e                                         ; $55f0: $8b
    or a                                          ; $55f1: $b7
    ld c, h                                       ; $55f2: $4c
    cp b                                          ; $55f3: $b8
    ld hl, sp-$13                                 ; $55f4: $f8 $ed
    ld l, [hl]                                    ; $55f6: $6e
    cp c                                          ; $55f7: $b9
    sbc l                                         ; $55f8: $9d
    ld a, e                                       ; $55f9: $7b
    cp l                                          ; $55fa: $bd
    ld [hl], l                                    ; $55fb: $75

jr_034_55fc:
    push af                                       ; $55fc: $f5
    ld b, a                                       ; $55fd: $47

jr_034_55fe:
    xor h                                         ; $55fe: $ac
    and l                                         ; $55ff: $a5
    jr jr_034_55fe                                ; $5600: $18 $fc

    sub l                                         ; $5602: $95
    push af                                       ; $5603: $f5
    db $dd                                        ; $5604: $dd
    add hl, de                                    ; $5605: $19
    and h                                         ; $5606: $a4
    add hl, sp                                    ; $5607: $39
    add hl, bc                                    ; $5608: $09
    db $fc                                        ; $5609: $fc
    push af                                       ; $560a: $f5
    ld a, l                                       ; $560b: $7d
    sub $dd                                       ; $560c: $d6 $dd
    ldh a, [$f1]                                  ; $560e: $f0 $f1
    add hl, hl                                    ; $5610: $29
    ld [hl], $33                                  ; $5611: $36 $33
    ld a, [$cf79]                                 ; $5613: $fa $79 $cf
    push de                                       ; $5616: $d5
    rra                                           ; $5617: $1f
    or c                                          ; $5618: $b1
    and a                                         ; $5619: $a7
    ld a, [$abf8]                                 ; $561a: $fa $f8 $ab
    xor e                                         ; $561d: $ab
    sub l                                         ; $561e: $95
    ldh a, [$57]                                  ; $561f: $f0 $57
    dec e                                         ; $5621: $1d
    xor $a0                                       ; $5622: $ee $a0
    dec b                                         ; $5624: $05
    ld sp, hl                                     ; $5625: $f9
    and e                                         ; $5626: $a3
    rla                                           ; $5627: $17
    and d                                         ; $5628: $a2
    rst $10                                       ; $5629: $d7
    sbc l                                         ; $562a: $9d
    sbc e                                         ; $562b: $9b
    inc h                                         ; $562c: $24
    adc l                                         ; $562d: $8d
    xor l                                         ; $562e: $ad
    or [hl]                                       ; $562f: $b6
    ld [hl], h                                    ; $5630: $74
    or $c4                                        ; $5631: $f6 $c4
    rst $20                                       ; $5633: $e7
    ld l, d                                       ; $5634: $6a
    ld c, e                                       ; $5635: $4b
    ld b, a                                       ; $5636: $47
    ld de, $2024                                  ; $5637: $11 $24 $20
    cp e                                          ; $563a: $bb
    sbc c                                         ; $563b: $99
    or e                                          ; $563c: $b3
    cp a                                          ; $563d: $bf
    sbc c                                         ; $563e: $99

Call_034_563f:
    or a                                          ; $563f: $b7
    add c                                         ; $5640: $81
    sub b                                         ; $5641: $90
    and $8c                                       ; $5642: $e6 $8c
    ld a, [hl]                                    ; $5644: $7e
    xor $06                                       ; $5645: $ee $06
    ld a, a                                       ; $5647: $7f
    ret nc                                        ; $5648: $d0

    ret c                                         ; $5649: $d8

    adc [hl]                                      ; $564a: $8e
    and b                                         ; $564b: $a0
    rra                                           ; $564c: $1f
    pop de                                        ; $564d: $d1
    dec hl                                        ; $564e: $2b
    adc c                                         ; $564f: $89
    ld [$b9f0], a                                 ; $5650: $ea $f0 $b9
    or c                                          ; $5653: $b1
    push de                                       ; $5654: $d5
    ld e, [hl]                                    ; $5655: $5e
    ld l, a                                       ; $5656: $6f
    inc sp                                        ; $5657: $33
    set 2, a                                      ; $5658: $cb $d7
    xor $3c                                       ; $565a: $ee $3c
    dec bc                                        ; $565c: $0b
    ld d, $09                                     ; $565d: $16 $09
    cp $a0                                        ; $565f: $fe $a0
    ld [$801f], sp                                ; $5661: $08 $1f $80
    adc b                                         ; $5664: $88
    push de                                       ; $5665: $d5
    add [hl]                                      ; $5666: $86
    or h                                          ; $5667: $b4
    ld c, c                                       ; $5668: $49
    pop hl                                        ; $5669: $e1
    ld e, $0e                                     ; $566a: $1e $0e
    inc b                                         ; $566c: $04
    ld l, a                                       ; $566d: $6f
    ld h, a                                       ; $566e: $67
    di                                            ; $566f: $f3
    inc de                                        ; $5670: $13
    ld c, e                                       ; $5671: $4b
    ret                                           ; $5672: $c9


    pop hl                                        ; $5673: $e1
    rst $20                                       ; $5674: $e7
    xor l                                         ; $5675: $ad
    ld c, $69                                     ; $5676: $0e $69
    ld a, [c]                                     ; $5678: $f2
    ld d, a                                       ; $5679: $57
    jr c, @-$5e                                   ; $567a: $38 $a0

    or $06                                        ; $567c: $f6 $06
    xor $67                                       ; $567e: $ee $67
    rst $08                                       ; $5680: $cf
    cp l                                          ; $5681: $bd
    ld a, e                                       ; $5682: $7b
    or a                                          ; $5683: $b7
    ld e, d                                       ; $5684: $5a
    dec [hl]                                      ; $5685: $35
    sbc [hl]                                      ; $5686: $9e
    ld a, b                                       ; $5687: $78
    dec sp                                        ; $5688: $3b
    rst $08                                       ; $5689: $cf
    add d                                         ; $568a: $82
    ld b, l                                       ; $568b: $45
    add d                                         ; $568c: $82
    ccf                                           ; $568d: $3f
    jr z, @-$3c                                   ; $568e: $28 $c2

    ret c                                         ; $5690: $d8

    add d                                         ; $5691: $82
    sub b                                         ; $5692: $90
    and $49                                       ; $5693: $e6 $49
    xor d                                         ; $5695: $aa
    or a                                          ; $5696: $b7
    cp a                                          ; $5697: $bf
    adc e                                         ; $5698: $8b
    ld d, b                                       ; $5699: $50
    db $e4                                        ; $569a: $e4
    ld l, a                                       ; $569b: $6f
    ld c, l                                       ; $569c: $4d
    ld l, c                                       ; $569d: $69
    ret                                           ; $569e: $c9


    ld [$f928], a                                 ; $569f: $ea $28 $f9
    xor $00                                       ; $56a2: $ee $00
    ld l, a                                       ; $56a4: $6f
    sbc c                                         ; $56a5: $99
    ld [hl], b                                    ; $56a6: $70
    pop af                                        ; $56a7: $f1
    ld e, e                                       ; $56a8: $5b
    inc sp                                        ; $56a9: $33
    db $d3                                        ; $56aa: $d3
    cp a                                          ; $56ab: $bf
    sbc c                                         ; $56ac: $99
    rst $30                                       ; $56ad: $f7
    call c, $ed58                                 ; $56ae: $dc $58 $ed
    and e                                         ; $56b1: $a3
    ld e, d                                       ; $56b2: $5a
    ld d, l                                       ; $56b3: $55
    add a                                         ; $56b4: $87
    dec sp                                        ; $56b5: $3b
    ld l, b                                       ; $56b6: $68
    ld h, c                                       ; $56b7: $61
    cpl                                           ; $56b8: $2f
    ret                                           ; $56b9: $c9


    cp h                                          ; $56ba: $bc
    xor $5c                                       ; $56bb: $ee $5c
    ld a, [bc]                                    ; $56bd: $0a
    sub b                                         ; $56be: $90
    ccf                                           ; $56bf: $3f
    rst $30                                       ; $56c0: $f7
    rra                                           ; $56c1: $1f
    ld a, l                                       ; $56c2: $7d
    or c                                          ; $56c3: $b1
    ld h, b                                       ; $56c4: $60
    pop af                                        ; $56c5: $f1

Jump_034_56c6:
    halt                                          ; $56c6: $76
    ld hl, sp+$6a                                 ; $56c7: $f8 $6a
    ld d, a                                       ; $56c9: $57
    dec de                                        ; $56ca: $1b
    dec sp                                        ; $56cb: $3b
    ld [c], a                                     ; $56cc: $e2
    ld [de], a                                    ; $56cd: $12
    add hl, bc                                    ; $56ce: $09
    ld a, l                                       ; $56cf: $7d
    add hl, bc                                    ; $56d0: $09
    sub [hl]                                      ; $56d1: $96
    push af                                       ; $56d2: $f5
    ld a, [hl+]                                   ; $56d3: $2a
    jr nz, jr_034_5719                            ; $56d4: $20 $43

    sbc d                                         ; $56d6: $9a
    inc bc                                        ; $56d7: $03
    ld c, h                                       ; $56d8: $4c
    ld b, a                                       ; $56d9: $47
    rst $38                                       ; $56da: $ff
    ld d, [hl]                                    ; $56db: $56
    ld e, e                                       ; $56dc: $5b
    ld a, [hl-]                                   ; $56dd: $3a
    ei                                            ; $56de: $fb
    dec h                                         ; $56df: $25
    ld a, [de]                                    ; $56e0: $1a
    dec e                                         ; $56e1: $1d
    ldh [$ea], a                                  ; $56e2: $e0 $ea
    jr nc, jr_034_5700                            ; $56e4: $30 $1a

    dec sp                                        ; $56e6: $3b
    ld [c], a                                     ; $56e7: $e2
    ld [de], a                                    ; $56e8: $12
    add hl, bc                                    ; $56e9: $09
    ld a, l                                       ; $56ea: $7d
    add hl, bc                                    ; $56eb: $09
    sub [hl]                                      ; $56ec: $96
    dec [hl]                                      ; $56ed: $35

jr_034_56ee:
    ld e, [hl]                                    ; $56ee: $5e
    xor e                                         ; $56ef: $ab
    dec l                                         ; $56f0: $2d
    ret c                                         ; $56f1: $d8

    pop bc                                        ; $56f2: $c1
    ld c, e                                       ; $56f3: $4b
    jr nc, jr_034_56ee                            ; $56f4: $30 $f8

    add e                                         ; $56f6: $83
    ret z                                         ; $56f7: $c8

    jp nc, $a926                                  ; $56f8: $d2 $26 $a9

    sbc $fe                                       ; $56fb: $de $fe
    ld l, $42                                     ; $56fd: $2e $42
    rlca                                          ; $56ff: $07

jr_034_5700:
    add sp, -$28                                  ; $5700: $e8 $d8
    ld b, b                                       ; $5702: $40
    and [hl]                                      ; $5703: $a6
    pop bc                                        ; $5704: $c1
    ld e, a                                       ; $5705: $5f
    ld h, e                                       ; $5706: $63
    db $eb                                        ; $5707: $eb
    ld e, b                                       ; $5708: $58
    rra                                           ; $5709: $1f
    db $fd                                        ; $570a: $fd
    xor e                                         ; $570b: $ab
    dec l                                         ; $570c: $2d
    sbc $32                                       ; $570d: $de $32
    pop hl                                        ; $570f: $e1
    ld [c], a                                     ; $5710: $e2
    or a                                          ; $5711: $b7
    cp e                                          ; $5712: $bb
    push hl                                       ; $5713: $e5
    ld d, [hl]                                    ; $5714: $56
    ld a, [$7b57]                                 ; $5715: $fa $57 $7b
    rst $08                                       ; $5718: $cf

jr_034_5719:
    cp l                                          ; $5719: $bd
    ld a, e                                       ; $571a: $7b
    or a                                          ; $571b: $b7
    ld e, d                                       ; $571c: $5a
    ld [hl], l                                    ; $571d: $75
    add e                                         ; $571e: $83
    ccf                                           ; $571f: $3f
    add sp, $57                                   ; $5720: $e8 $57
    call nz, Call_034_47c0                        ; $5722: $c4 $c0 $47
    add h                                         ; $5725: $84
    ld [hl], e                                    ; $5726: $73
    rst $28                                       ; $5727: $ef
    ld d, a                                       ; $5728: $57
    or l                                          ; $5729: $b5
    ld [$058b], a                                 ; $572a: $ea $8b $05
    add hl, bc                                    ; $572d: $09
    nop                                           ; $572e: $00
    add h                                         ; $572f: $84
    inc [hl]                                      ; $5730: $34
    rlca                                          ; $5731: $07
    call z, $abf0                                 ; $5732: $cc $f0 $ab
    ld c, $fe                                     ; $5735: $0e $fe
    sbc d                                         ; $5737: $9a
    db $fd                                        ; $5738: $fd
    dec h                                         ; $5739: $25
    scf                                           ; $573a: $37
    di                                            ; $573b: $f3
    ld a, [hl]                                    ; $573c: $7e
    push de                                       ; $573d: $d5
    ret c                                         ; $573e: $d8

    ld l, d                                       ; $573f: $6a
    ld c, e                                       ; $5740: $4b
    sbc c                                         ; $5741: $99
    db $fc                                        ; $5742: $fc
    add hl, hl                                    ; $5743: $29
    ld [$d5aa], a                                 ; $5744: $ea $aa $d5
    db $fd                                        ; $5747: $fd
    adc d                                         ; $5748: $8a
    xor b                                         ; $5749: $a8
    or $51                                        ; $574a: $f6 $51
    ld h, $7f                                     ; $574c: $26 $7f
    adc d                                         ; $574e: $8a
    ld h, [hl]                                    ; $574f: $66
    and [hl]                                      ; $5750: $a6
    adc c                                         ; $5751: $89
    xor e                                         ; $5752: $ab
    ld e, l                                       ; $5753: $5d
    ld [hl], l                                    ; $5754: $75
    and h                                         ; $5755: $a4
    ld c, l                                       ; $5756: $4d
    ld a, [bc]                                    ; $5757: $0a
    sub a                                         ; $5758: $97
    ret                                           ; $5759: $c9


    rra                                           ; $575a: $1f
    adc c                                         ; $575b: $89
    ld e, d                                       ; $575c: $5a
    ld a, [hl-]                                   ; $575d: $3a
    ld l, b                                       ; $575e: $68
    ld b, c                                       ; $575f: $41
    jr nc, @-$3f                                  ; $5760: $30 $bf

    ld a, c                                       ; $5762: $79
    adc e                                         ; $5763: $8b
    db $fc                                        ; $5764: $fc
    ld e, l                                       ; $5765: $5d
    ld e, e                                       ; $5766: $5b
    ld [hl], h                                    ; $5767: $74
    ld b, b                                       ; $5768: $40
    rlca                                          ; $5769: $07
    jp $dbd4                                      ; $576a: $c3 $d4 $db


    ld e, c                                       ; $576d: $59
    rst $38                                       ; $576e: $ff
    inc de                                        ; $576f: $13
    ld l, a                                       ; $5770: $6f
    sub e                                         ; $5771: $93
    ld h, d                                       ; $5772: $62
    inc sp                                        ; $5773: $33
    rst $30                                       ; $5774: $f7
    add l                                         ; $5775: $85
    dec h                                         ; $5776: $25
    call Call_000_0901                            ; $5777: $cd $01 $09
    db $fc                                        ; $577a: $fc
    push af                                       ; $577b: $f5
    ld c, [hl]                                    ; $577c: $4e
    ld [de], a                                    ; $577d: $12
    db $ed                                        ; $577e: $ed
    ld h, [hl]                                    ; $577f: $66
    sub [hl]                                      ; $5780: $96
    ld [hl], l                                    ; $5781: $75
    rst $28                                       ; $5782: $ef
    add c                                         ; $5783: $81
    add sp, $3d                                   ; $5784: $e8 $3d
    rst $30                                       ; $5786: $f7

jr_034_5787:
    cp $b1                                        ; $5787: $fe $b1
    jr jr_034_5787                                ; $5789: $18 $fc

    dec [hl]                                      ; $578b: $35
    or [hl]                                       ; $578c: $b6
    jp c, $9947                                   ; $578d: $da $47 $99

    ld c, $f0                                     ; $5790: $0e $f0
    sbc $2e                                       ; $5792: $de $2e
    sub c                                         ; $5794: $91
    ret nc                                        ; $5795: $d0

    sub a                                         ; $5796: $97
    sub h                                         ; $5797: $94
    dec [hl]                                      ; $5798: $35
    ld de, $0dab                                  ; $5799: $11 $ab $0d
    rst $20                                       ; $579c: $e7
    ld l, d                                       ; $579d: $6a
    ld l, a                                       ; $579e: $6f
    rst $28                                       ; $579f: $ef
    ld hl, $5fa5                                  ; $57a0: $21 $a5 $5f
    ld b, c                                       ; $57a3: $41
    sub e                                         ; $57a4: $93
    call nc, Call_034_52c1                        ; $57a5: $d4 $c1 $52
    db $eb                                        ; $57a8: $eb
    ld c, e                                       ; $57a9: $4b
    call c, $fe0d                                 ; $57aa: $dc $0d $fe
    and b                                         ; $57ad: $a0
    xor h                                         ; $57ae: $ac
    ld b, c                                       ; $57af: $41
    inc c                                         ; $57b0: $0c
    sbc $6a                                       ; $57b1: $de $6a
    sub d                                         ; $57b3: $92
    db $10                                        ; $57b4: $10
    sbc $34                                       ; $57b5: $de $34
    rlca                                          ; $57b7: $07
    ld [hl], e                                    ; $57b8: $73
    xor d                                         ; $57b9: $aa
    db $10                                        ; $57ba: $10
    ld sp, $25a5                                  ; $57bb: $31 $a5 $25
    ld c, b                                       ; $57be: $48
    jp nz, Jump_000_181f                          ; $57bf: $c2 $1f $18

    adc d                                         ; $57c2: $8a
    pop bc                                        ; $57c3: $c1
    ld e, a                                       ; $57c4: $5f
    rst $28                                       ; $57c5: $ef
    ld hl, $1a37                                  ; $57c6: $21 $37 $1a
    db $fc                                        ; $57c9: $fc
    ld [hl], l                                    ; $57ca: $75
    ldh a, [$92]                                  ; $57cb: $f0 $92
    ld a, [hl]                                    ; $57cd: $7e
    ld c, d                                       ; $57ce: $4a
    ld a, l                                       ; $57cf: $7d
    and h                                         ; $57d0: $a4
    ld c, l                                       ; $57d1: $4d
    ldh [$af], a                                  ; $57d2: $e0 $af
    rst $30                                       ; $57d4: $f7
    cpl                                           ; $57d5: $2f
    dec a                                         ; $57d6: $3d
    push de                                       ; $57d7: $d5
    ld a, [$afe2]                                 ; $57d8: $fa $e2 $af
    adc [hl]                                      ; $57db: $8e
    dec a                                         ; $57dc: $3d
    ld a, $ad                                     ; $57dd: $3e $ad
    ld h, e                                       ; $57df: $63
    adc e                                         ; $57e0: $8b
    adc [hl]                                      ; $57e1: $8e
    push af                                       ; $57e2: $f5
    pop de                                        ; $57e3: $d1
    ld h, c                                       ; $57e4: $61
    inc h                                         ; $57e5: $24
    cp c                                          ; $57e6: $b9
    ld a, [hl-]                                   ; $57e7: $3a
    ld [hl], c                                    ; $57e8: $71
    push af                                       ; $57e9: $f5
    rst $28                                       ; $57ea: $ef
    ei                                            ; $57eb: $fb
    xor h                                         ; $57ec: $ac
    sbc e                                         ; $57ed: $9b
    jr nc, jr_034_5863                            ; $57ee: $30 $73

    ld [hl], d                                    ; $57f0: $72
    push af                                       ; $57f1: $f5
    rst $00                                       ; $57f2: $c7
    adc $42                                       ; $57f3: $ce $42
    ld [de], a                                    ; $57f5: $12
    cp $c0                                        ; $57f6: $fe $c0
    db $db                                        ; $57f8: $db
    call z, $b2d4                                 ; $57f9: $cc $d4 $b2
    sub b                                         ; $57fc: $90
    and $a3                                       ; $57fd: $e6 $a3
    cp a                                          ; $57ff: $bf
    jr nz, @+$56                                  ; $5800: $20 $54

    xor e                                         ; $5802: $ab
    ld [hl+], a                                   ; $5803: $22
    ld a, a                                       ; $5804: $7f
    rst $10                                       ; $5805: $d7
    sub $b1                                       ; $5806: $d6 $b1
    rst $00                                       ; $5808: $c7
    and a                                         ; $5809: $a7
    adc l                                         ; $580a: $8d
    and e                                         ; $580b: $a3
    and e                                         ; $580c: $a3
    xor [hl]                                      ; $580d: $ae
    db $db                                        ; $580e: $db
    and a                                         ; $580f: $a7

jr_034_5810:
    db $e4                                        ; $5810: $e4
    jr c, jr_034_5821                             ; $5811: $38 $0e

    res 1, h                                      ; $5813: $cb $8c
    ld c, l                                       ; $5815: $4d
    ldh [$af], a                                  ; $5816: $e0 $af
    or a                                          ; $5818: $b7
    or c                                          ; $5819: $b1
    ld [hl], a                                    ; $581a: $77
    pop bc                                        ; $581b: $c1
    ld b, l                                       ; $581c: $45
    cp $ee                                        ; $581d: $fe $ee
    ld h, e                                       ; $581f: $63
    adc e                                         ; $5820: $8b

jr_034_5821:
    rst $30                                       ; $5821: $f7
    ld e, h                                       ; $5822: $5c
    db $fd                                        ; $5823: $fd
    ld de, $c18b                                  ; $5824: $11 $8b $c1
    ld e, a                                       ; $5827: $5f
    ld [hl], l                                    ; $5828: $75
    cp b                                          ; $5829: $b8
    ld [hl], e                                    ; $582a: $73
    sub c                                         ; $582b: $91
    db $10                                        ; $582c: $10
    call nc, $de66                                ; $582d: $d4 $66 $de
    or d                                          ; $5830: $b2
    cp [hl]                                       ; $5831: $be
    dec sp                                        ; $5832: $3b
    di                                            ; $5833: $f3
    sbc [hl]                                      ; $5834: $9e
    ld a, e                                       ; $5835: $7b
    rst $30                                       ; $5836: $f7
    ld l, [hl]                                    ; $5837: $6e
    adc a                                         ; $5838: $8f
    cp a                                          ; $5839: $bf
    db $dd                                        ; $583a: $dd
    ldh [rIF], a                                  ; $583b: $e0 $0f
    ld a, [$3162]                                 ; $583d: $fa $62 $31
    db $fc                                        ; $5840: $fc
    jr nz, jr_034_5810                            ; $5841: $20 $cd

    ld bc, $5ef3                                  ; $5843: $01 $f3 $5e
    ld b, a                                       ; $5846: $47
    add a                                         ; $5847: $87
    xor a                                         ; $5848: $af
    halt                                          ; $5849: $76
    ld [hl], l                                    ; $584a: $75
    jr @-$71                                      ; $584b: $18 $8d

    dec e                                         ; $584d: $1d
    ld [hl], c                                    ; $584e: $71
    adc c                                         ; $584f: $89
    add h                                         ; $5850: $84
    cp [hl]                                       ; $5851: $be
    inc b                                         ; $5852: $04
    ei                                            ; $5853: $fb
    dec d                                         ; $5854: $15
    or $f6                                        ; $5855: $f6 $f6
    ld [hl], a                                    ; $5857: $77
    ld de, $55aa                                  ; $5858: $11 $aa $55
    pop de                                        ; $585b: $d1
    ld c, a                                       ; $585c: $4f
    adc d                                         ; $585d: $8a
    db $fc                                        ; $585e: $fc
    xor l                                         ; $585f: $ad
    add hl, hl                                    ; $5860: $29
    dec l                                         ; $5861: $2d
    ld e, c                                       ; $5862: $59

jr_034_5863:
    dec e                                         ; $5863: $1d
    push bc                                       ; $5864: $c5
    jr nc, jr_034_5872                            ; $5865: $30 $0b

    sbc $32                                       ; $5867: $de $32
    pop hl                                        ; $5869: $e1
    ld [c], a                                     ; $586a: $e2
    or a                                          ; $586b: $b7
    ld h, [hl]                                    ; $586c: $66
    and [hl]                                      ; $586d: $a6
    ld a, a                                       ; $586e: $7f
    inc sp                                        ; $586f: $33
    ld l, a                                       ; $5870: $6f
    sbc d                                         ; $5871: $9a

jr_034_5872:
    inc bc                                        ; $5872: $03
    ld b, e                                       ; $5873: $43
    adc a                                         ; $5874: $8f
    ld [hl+], a                                   ; $5875: $22
    ld a, a                                       ; $5876: $7f
    ld l, e                                       ; $5877: $6b
    ld c, d                                       ; $5878: $4a
    ld de, $cdbc                                  ; $5879: $11 $bc $cd
    ld c, h                                       ; $587c: $4c
    rst $38                                       ; $587d: $ff
    ld h, [hl]                                    ; $587e: $66
    ld [$aad5], sp                                ; $587f: $08 $d5 $aa
    add e                                         ; $5882: $83
    rst $10                                       ; $5883: $d7
    or $85                                        ; $5884: $f6 $85
    and l                                         ; $5886: $a5
    ld e, a                                       ; $5887: $5f
    ld h, c                                       ; $5888: $61
    rst $30                                       ; $5889: $f7
    di                                            ; $588a: $f3
    ld d, a                                       ; $588b: $57
    ld b, [hl]                                    ; $588c: $46
    add hl, de                                    ; $588d: $19
    ld b, e                                       ; $588e: $43
    db $10                                        ; $588f: $10
    or c                                          ; $5890: $b1
    ld a, [$7392]                                 ; $5891: $fa $92 $73
    ld h, e                                       ; $5894: $63
    or l                                          ; $5895: $b5
    adc a                                         ; $5896: $8f
    ld l, d                                       ; $5897: $6a
    ld d, l                                       ; $5898: $55
    dec e                                         ; $5899: $1d
    xor $f1                                       ; $589a: $ee $f1
    or e                                          ; $589c: $b3
    ld b, b                                       ; $589d: $40
    cp $dc                                        ; $589e: $fe $dc
    cp c                                          ; $58a0: $b9
    ld c, c                                       ; $58a1: $49
    jp nc, Jump_034_747f                          ; $58a2: $d2 $7f $74

    ld hl, sp+$6a                                 ; $58a5: $f8 $6a
    ld d, a                                       ; $58a7: $57
    dec de                                        ; $58a8: $1b
    dec sp                                        ; $58a9: $3b
    ld [c], a                                     ; $58aa: $e2
    ld [de], a                                    ; $58ab: $12
    add hl, bc                                    ; $58ac: $09
    ld a, l                                       ; $58ad: $7d
    add hl, bc                                    ; $58ae: $09
    sub [hl]                                      ; $58af: $96
    push af                                       ; $58b0: $f5
    ld a, [hl+]                                   ; $58b1: $2a
    jr nz, jr_034_58f7                            ; $58b2: $20 $43

    sbc d                                         ; $58b4: $9a
    inc bc                                        ; $58b5: $03
    add hl, bc                                    ; $58b6: $09
    db $fc                                        ; $58b7: $fc
    push af                                       ; $58b8: $f5
    ld a, l                                       ; $58b9: $7d
    sub $cd                                       ; $58ba: $d6 $cd
    db $fc                                        ; $58bc: $fc
    add $16                                       ; $58bd: $c6 $16
    jr c, jr_034_5918                             ; $58bf: $38 $57

    ld a, a                                       ; $58c1: $7f
    call nz, $fb1a                                ; $58c2: $c4 $1a $fb
    or a                                          ; $58c5: $b7
    jp c, Jump_000_39d2                           ; $58c6: $da $d2 $39

    db $10                                        ; $58c9: $10
    ret nc                                        ; $58ca: $d0

    ld bc, $36ae                                  ; $58cb: $01 $ae $36
    halt                                          ; $58ce: $76
    call nz, Call_000_1225                        ; $58cf: $c4 $25 $12
    ld a, [$ac12]                                 ; $58d2: $fa $12 $ac
    ld h, e                                       ; $58d5: $63
    db $dd                                        ; $58d6: $dd
    and c                                         ; $58d7: $a1
    db $ec                                        ; $58d8: $ec

jr_034_58d9:
    adc l                                         ; $58d9: $8d
    inc h                                         ; $58da: $24
    ld h, h                                       ; $58db: $64
    or l                                          ; $58dc: $b5
    ld e, c                                       ; $58dd: $59
    ret                                           ; $58de: $c9


    ld [$9a28], a                                 ; $58df: $ea $28 $9a
    ccf                                           ; $58e2: $3f
    inc b                                         ; $58e3: $04
    ld l, a                                       ; $58e4: $6f
    sbc c                                         ; $58e5: $99
    ld [hl], b                                    ; $58e6: $70
    pop af                                        ; $58e7: $f1
    ld e, e                                       ; $58e8: $5b
    or e                                          ; $58e9: $b3
    ld h, b                                       ; $58ea: $60
    ld hl, $01cd                                  ; $58eb: $21 $cd $01
    ld c, c                                       ; $58ee: $49
    sub [hl]                                      ; $58ef: $96
    ld [hl-], a                                   ; $58f0: $32
    rlca                                          ; $58f1: $07
    jp nz, Jump_034_6999                          ; $58f2: $c2 $99 $69

    rst $10                                       ; $58f5: $d7
    xor h                                         ; $58f6: $ac

jr_034_58f7:
    or a                                          ; $58f7: $b7
    jp c, $b9d2                                   ; $58f8: $da $d2 $b9

    ld c, c                                       ; $58fb: $49
    ld [hl], d                                    ; $58fc: $72
    xor [hl]                                      ; $58fd: $ae
    ld c, $97                                     ; $58fe: $0e $97
    xor h                                         ; $5900: $ac
    adc [hl]                                      ; $5901: $8e
    ld h, $5f                                     ; $5902: $26 $5f
    jr c, jr_034_5916                             ; $5904: $38 $10

    ldh a, [$29]                                  ; $5906: $f0 $29
    ld b, c                                       ; $5908: $41
    ld c, c                                       ; $5909: $49
    sbc c                                         ; $590a: $99
    ld l, c                                       ; $590b: $69
    add hl, bc                                    ; $590c: $09
    jp nc, Jump_000_3813                          ; $590d: $d2 $13 $38

    rla                                           ; $5910: $17
    cpl                                           ; $5911: $2f
    ld c, d                                       ; $5912: $4a
    dec de                                        ; $5913: $1b
    sub d                                         ; $5914: $92
    ld a, c                                       ; $5915: $79

jr_034_5916:
    push af                                       ; $5916: $f5
    db $fd                                        ; $5917: $fd

jr_034_5918:
    ld a, d                                       ; $5918: $7a
    or c                                          ; $5919: $b1
    dec h                                         ; $591a: $25
    ld c, b                                       ; $591b: $48
    ld c, a                                       ; $591c: $4f
    cp h                                          ; $591d: $bc
    ld l, c                                       ; $591e: $69
    ld c, $23                                     ; $591f: $0e $23
    dec e                                         ; $5921: $1d
    db $db                                        ; $5922: $db
    ld a, c                                       ; $5923: $79
    ccf                                           ; $5924: $3f
    ld e, b                                       ; $5925: $58
    ld a, [$f43e]                                 ; $5926: $fa $3e $f4
    ld [$a0e9], sp                                ; $5929: $08 $e9 $a0
    ld b, l                                       ; $592c: $45
    ld a, $78                                     ; $592d: $3e $78
    rst $08                                       ; $592f: $cf
    push de                                       ; $5930: $d5
    rra                                           ; $5931: $1f
    or c                                          ; $5932: $b1
    add $be                                       ; $5933: $c6 $be
    ld e, b                                       ; $5935: $58
    or b                                          ; $5936: $b0
    ld d, h                                       ; $5937: $54
    ei                                            ; $5938: $fb
    jr z, jr_034_59ae                             ; $5939: $28 $73

    jr nz, jr_034_58d9                            ; $593b: $20 $9c

    sbc c                                         ; $593d: $99
    sbc [hl]                                      ; $593e: $9e
    xor e                                         ; $593f: $ab
    dec l                                         ; $5940: $2d
    push bc                                       ; $5941: $c5
    ldh [$af], a                                  ; $5942: $e0 $af
    or c                                          ; $5944: $b1
    push de                                       ; $5945: $d5
    ld h, c                                       ; $5946: $61
    db $f4                                        ; $5947: $f4
    pop de                                        ; $5948: $d1
    ld de, $4897                                  ; $5949: $11 $97 $48
    add sp, $4b                                   ; $594c: $e8 $4b
    jp z, $889a                                   ; $594e: $ca $9a $88

    push de                                       ; $5951: $d5
    add [hl]                                      ; $5952: $86
    ld [hl], e                                    ; $5953: $73
    dec e                                         ; $5954: $1d
    db $eb                                        ; $5955: $eb
    dec l                                         ; $5956: $2d
    and e                                         ; $5957: $a3
    sbc a                                         ; $5958: $9f
    db $e3                                        ; $5959: $e3
    ret z                                         ; $595a: $c8

    cp $66                                        ; $595b: $fe $66
    call Call_034_7acc                            ; $595d: $cd $cc $7a
    adc e                                         ; $5960: $8b
    rla                                           ; $5961: $17

Call_034_5962:
    and l                                         ; $5962: $a5
    ld l, c                                       ; $5963: $69
    ld c, $c3                                     ; $5964: $0e $c3
    ld h, d                                       ; $5966: $62
    rla                                           ; $5967: $17
    xor e                                         ; $5968: $ab
    ld d, $2c                                     ; $5969: $16 $2c
    ld [de], a                                    ; $596b: $12
    db $fc                                        ; $596c: $fc
    add c                                         ; $596d: $81
    and c                                         ; $596e: $a1
    or c                                          ; $596f: $b1
    push de                                       ; $5970: $d5
    ld h, c                                       ; $5971: $61
    db $f4                                        ; $5972: $f4
    ld d, c                                       ; $5973: $51
    ld h, $5c                                     ; $5974: $26 $5c
    db $fc                                        ; $5976: $fc
    halt                                          ; $5977: $76
    or a                                          ; $5978: $b7
    call c, Call_034_68ca                         ; $5979: $dc $ca $68
    db $e4                                        ; $597c: $e4
    cpl                                           ; $597d: $2f
    ld hl, sp+$03                                 ; $597e: $f8 $03
    ld d, a                                       ; $5980: $57
    ld e, e                                       ; $5981: $5b
    ld a, d                                       ; $5982: $7a
    jp nz, $ac57                                  ; $5983: $c2 $57 $ac

    push bc                                       ; $5986: $c5
    pop de                                        ; $5987: $d1
    inc [hl]                                      ; $5988: $34
    ld c, l                                       ; $5989: $4d
    ld a, e                                       ; $598a: $7b
    rst $30                                       ; $598b: $f7
    ld l, [hl]                                    ; $598c: $6e
    adc a                                         ; $598d: $8f
    cp a                                          ; $598e: $bf
    push de                                       ; $598f: $d5
    rra                                           ; $5990: $1f
    ld c, e                                       ; $5991: $4b
    ld h, d                                       ; $5992: $62
    dec l                                         ; $5993: $2d
    rst $28                                       ; $5994: $ef
    xor e                                         ; $5995: $ab
    ld bc, $a7e8                                  ; $5996: $01 $e8 $a7
    ret c                                         ; $5999: $d8

    ld a, c                                       ; $599a: $79
    ld d, $2c                                     ; $599b: $16 $2c
    ld [de], a                                    ; $599d: $12
    db $fc                                        ; $599e: $fc
    add c                                         ; $599f: $81
    or a                                          ; $59a0: $b7
    xor h                                         ; $59a1: $ac
    ret                                           ; $59a2: $c9


    ld c, $fe                                     ; $59a3: $0e $fe
    sub $db                                       ; $59a5: $d6 $db
    db $db                                        ; $59a7: $db
    rst $18                                       ; $59a8: $df
    ld c, l                                       ; $59a9: $4d
    ld [hl], e                                    ; $59aa: $73
    add hl, bc                                    ; $59ab: $09
    db $fc                                        ; $59ac: $fc
    dec [hl]                                      ; $59ad: $35

jr_034_59ae:
    and e                                         ; $59ae: $a3
    ld e, a                                       ; $59af: $5f
    or c                                          ; $59b0: $b1

Jump_034_59b1:
    ld a, $77                                     ; $59b1: $3e $77
    ld e, b                                       ; $59b3: $58
    db $ec                                        ; $59b4: $ec
    ld h, d                                       ; $59b5: $62
    rst $18                                       ; $59b6: $df
    rlca                                          ; $59b7: $07
    ld [hl], b                                    ; $59b8: $70
    cp a                                          ; $59b9: $bf
    ld [hl+], a                                   ; $59ba: $22
    xor d                                         ; $59bb: $aa
    jp $a3e8                                      ; $59bc: $c3 $e8 $a3


    ld c, h                                       ; $59bf: $4c
    cp b                                          ; $59c0: $b8
    ld hl, sp-$13                                 ; $59c1: $f8 $ed
    ld l, [hl]                                    ; $59c3: $6e
    cp c                                          ; $59c4: $b9
    push de                                       ; $59c5: $d5
    or c                                          ; $59c6: $b1
    dec e                                         ; $59c7: $1d
    ld b, [hl]                                    ; $59c8: $46
    sub d                                         ; $59c9: $92
    xor e                                         ; $59ca: $ab
    xor h                                         ; $59cb: $ac
    rlca                                          ; $59cc: $07
    cpl                                           ; $59cd: $2f
    xor c                                         ; $59ce: $a9
    and l                                         ; $59cf: $a5
    ld [$d85f], sp                                ; $59d0: $08 $5f $d8
    xor d                                         ; $59d3: $aa
    push de                                       ; $59d4: $d5
    push de                                       ; $59d5: $d5
    rst $38                                       ; $59d6: $ff
    ld [$5fe8], sp                                ; $59d7: $08 $e8 $5f
    ld [hl+], a                                   ; $59da: $22
    ld [hl], $3b                                  ; $59db: $36 $3b
    rla                                           ; $59dd: $17
    dec e                                         ; $59de: $1d
    db $eb                                        ; $59df: $eb
    adc $22                                       ; $59e0: $ce $22
    ld c, $b2                                     ; $59e2: $0e $b2
    inc bc                                        ; $59e4: $03
    ld a, [de]                                    ; $59e5: $1a
    ld b, a                                       ; $59e6: $47
    add a                                         ; $59e7: $87
    ld a, [hl+]                                   ; $59e8: $2a
    jp nz, $ef0b                                  ; $59e9: $c2 $0b $ef

    ld d, e                                       ; $59ec: $53
    ld b, b                                       ; $59ed: $40
    ld sp, hl                                     ; $59ee: $f9
    ld [$b6a8], a                                 ; $59ef: $ea $a8 $b6
    ld [hl], h                                    ; $59f2: $74
    ld [hl], $3f                                  ; $59f3: $36 $3f
    or c                                          ; $59f5: $b1
    sub h                                         ; $59f6: $94

Jump_034_59f7:
    xor h                                         ; $59f7: $ac
    ld a, [hl-]                                   ; $59f8: $3a
    ld l, b                                       ; $59f9: $68
    ld h, c                                       ; $59fa: $61
    dec h                                         ; $59fb: $25

Call_034_59fc:
    ld [hl], $f3                                  ; $59fc: $36 $f3
    and [hl]                                      ; $59fe: $a6
    add hl, sp                                    ; $59ff: $39
    ld c, c                                       ; $5a00: $49
    sub [hl]                                      ; $5a01: $96
    ld h, $5f                                     ; $5a02: $26 $5f
    jr c, jr_034_5a16                             ; $5a04: $38 $10

    ldh a, [$29]                                  ; $5a06: $f0 $29
    ld b, c                                       ; $5a08: $41
    ld c, c                                       ; $5a09: $49
    sbc c                                         ; $5a0a: $99
    ld l, c                                       ; $5a0b: $69
    ld e, c                                       ; $5a0c: $59
    inc de                                        ; $5a0d: $13
    or c                                          ; $5a0e: $b1
    jp c, Jump_000_0c50                           ; $5a0f: $da $50 $0c

    cp $fa                                        ; $5a12: $fe $fa
    dec d                                         ; $5a14: $15
    ld d, c                                       ; $5a15: $51

jr_034_5a16:
    dec e                                         ; $5a16: $1d
    ld b, [hl]                                    ; $5a17: $46
    rra                                           ; $5a18: $1f
    ld h, l                                       ; $5a19: $65
    jp nz, Jump_034_6fc5                          ; $5a1a: $c2 $c5 $6f

    ld [hl], a                                    ; $5a1d: $77
    sra l                                         ; $5a1e: $cb $2d
    ld l, l                                       ; $5a20: $6d
    ld [bc], a                                    ; $5a21: $02
    ld a, a                                       ; $5a22: $7f
    cp l                                          ; $5a23: $bd
    adc l                                         ; $5a24: $8d
    cp l                                          ; $5a25: $bd
    dec bc                                        ; $5a26: $0b
    xor $dd                                       ; $5a27: $ee $dd
    nop                                           ; $5a29: $00
    sbc $73                                       ; $5a2a: $de $73
    push af                                       ; $5a2c: $f5
    ld b, a                                       ; $5a2d: $47
    db $ec                                        ; $5a2e: $ec
    ret z                                         ; $5a2f: $c8

    xor a                                         ; $5a30: $af
    rst $38                                       ; $5a31: $ff
    pop de                                        ; $5a32: $d1
    ld d, c                                       ; $5a33: $51
    rst $10                                       ; $5a34: $d7
    ld b, c                                       ; $5a35: $41
    adc b                                         ; $5a36: $88
    rst $00                                       ; $5a37: $c7
    sbc h                                         ; $5a38: $9c
    xor e                                         ; $5a39: $ab
    jp Jump_000_211d                              ; $5a3a: $c3 $1d $21


    ld a, a                                       ; $5a3d: $7f
    ld l, a                                       ; $5a3e: $6f
    ld e, [hl]                                    ; $5a3f: $5e
    db $e4                                        ; $5a40: $e4
    rst $28                                       ; $5a41: $ef
    ld l, [hl]                                    ; $5a42: $6e
    inc b                                         ; $5a43: $04
    res 7, c                                      ; $5a44: $cb $b9
    cpl                                           ; $5a46: $2f
    inc l                                         ; $5a47: $2c
    ld [hl], l                                    ; $5a48: $75
    xor h                                         ; $5a49: $ac
    sbc e                                         ; $5a4a: $9b
    ret                                           ; $5a4b: $c9


    dec [hl]                                      ; $5a4c: $35
    adc [hl]                                      ; $5a4d: $8e
    dec sp                                        ; $5a4e: $3b
    jp nc, $b99b                                  ; $5a4f: $d2 $9b $b9

    jp c, $e7d8                                   ; $5a52: $da $d8 $e7

    and b                                         ; $5a55: $a0
    ld e, [hl]                                    ; $5a56: $5e
    db $ed                                        ; $5a57: $ed
    db $ed                                        ; $5a58: $ed
    ld c, b                                       ; $5a59: $48
    ld h, a                                       ; $5a5a: $67
    ld a, a                                       ; $5a5b: $7f
    ldh [$ba], a                                  ; $5a5c: $e0 $ba
    ld e, e                                       ; $5a5e: $5b
    ld h, $9e                                     ; $5a5f: $26 $9e
    ld e, e                                       ; $5a61: $5b
    cp $de                                        ; $5a62: $fe $de
    or b                                          ; $5a64: $b0
    ld e, a                                       ; $5a65: $5f
    ld de, $efac                                  ; $5a66: $11 $ac $ef
    rst $38                                       ; $5a69: $ff
    add hl, bc                                    ; $5a6a: $09
    and h                                         ; $5a6b: $a4
    add hl, sp                                    ; $5a6c: $39
    add hl, bc                                    ; $5a6d: $09
    ld e, e                                       ; $5a6e: $5b
    dec e                                         ; $5a6f: $1d
    ld b, [hl]                                    ; $5a70: $46
    rra                                           ; $5a71: $1f
    dec e                                         ; $5a72: $1d
    ld [hl], c                                    ; $5a73: $71
    adc c                                         ; $5a74: $89
    add h                                         ; $5a75: $84
    cp [hl]                                       ; $5a76: $be
    and h                                         ; $5a77: $a4
    ld e, c                                       ; $5a78: $59
    or b                                          ; $5a79: $b0
    ld d, b                                       ; $5a7a: $50
    ld h, e                                       ; $5a7b: $63
    dec e                                         ; $5a7c: $1d
    db $eb                                        ; $5a7d: $eb
    ld e, $3f                                     ; $5a7e: $1e $3f
    dec bc                                        ; $5a80: $0b
    db $e4                                        ; $5a81: $e4
    rst $08                                       ; $5a82: $cf
    sbc l                                         ; $5a83: $9d
    sbc e                                         ; $5a84: $9b
    inc h                                         ; $5a85: $24
    rst $20                                       ; $5a86: $e7
    ld [$7570], a                                 ; $5a87: $ea $70 $75
    adc b                                         ; $5a8a: $88
    ld l, a                                       ; $5a8b: $6f
    ld d, b                                       ; $5a8c: $50
    or d                                          ; $5a8d: $b2
    xor d                                         ; $5a8e: $aa
    or $76                                        ; $5a8f: $f6 $76
    add h                                         ; $5a91: $84
    push hl                                       ; $5a92: $e5
    ld h, [hl]                                    ; $5a93: $66
    reti                                          ; $5a94: $d9


    ld [de], a                                    ; $5a95: $12
    and h                                         ; $5a96: $a4
    daa                                           ; $5a97: $27
    sub b                                         ; $5a98: $90
    sub [hl]                                      ; $5a99: $96
    add hl, de                                    ; $5a9a: $19
    xor $ed                                       ; $5a9b: $ee $ed
    rst $28                                       ; $5a9d: $ef
    halt                                          ; $5a9e: $76
    ld c, c                                       ; $5a9f: $49
    ld b, b                                       ; $5aa0: $40
    and [hl]                                      ; $5aa1: $a6
    pop bc                                        ; $5aa2: $c1
    ld e, a                                       ; $5aa3: $5f
    pop de                                        ; $5aa4: $d1
    or c                                          ; $5aa5: $b1
    rst $20                                       ; $5aa6: $e7
    sbc $bd                                       ; $5aa7: $de $bd
    ld e, e                                       ; $5aa9: $5b
    xor l                                         ; $5aaa: $ad
    ld l, d                                       ; $5aab: $6a
    inc l                                         ; $5aac: $2c
    ld l, e                                       ; $5aad: $6b
    cp h                                          ; $5aae: $bc
    ld d, [hl]                                    ; $5aaf: $56
    ld e, e                                       ; $5ab0: $5b
    or b                                          ; $5ab1: $b0
    ld c, $1a                                     ; $5ab2: $0e $1a
    ld e, c                                       ; $5ab4: $59
    rst $18                                       ; $5ab5: $df
    ld b, a                                       ; $5ab6: $47
    jr c, @-$67                                   ; $5ab7: $38 $97

    xor h                                         ; $5ab9: $ac
    jp z, Jump_000_3fdc                           ; $5aba: $ca $dc $3f

    ld h, b                                       ; $5abd: $60
    db $ec                                        ; $5abe: $ec
    inc a                                         ; $5abf: $3c
    dec bc                                        ; $5ac0: $0b
    ld d, $09                                     ; $5ac1: $16 $09
    cp $a0                                        ; $5ac3: $fe $a0
    ld h, h                                       ; $5ac5: $64
    push de                                       ; $5ac6: $d5
    db $db                                        ; $5ac7: $db
    ld [hl], l                                    ; $5ac8: $75
    inc e                                         ; $5ac9: $1c
    sbc $34                                       ; $5aca: $de $34
    rlca                                          ; $5acc: $07
    ld c, c                                       ; $5acd: $49
    pop hl                                        ; $5ace: $e1
    ld [hl-], a                                   ; $5acf: $32
    ld b, c                                       ; $5ad0: $41
    jp hl                                         ; $5ad1: $e9


    or b                                          ; $5ad2: $b0
    sub b                                         ; $5ad3: $90
    db $e3                                        ; $5ad4: $e3
    jr c, @+$2e                                   ; $5ad5: $38 $2c

    push de                                       ; $5ad7: $d5
    sub [hl]                                      ; $5ad8: $96
    adc [hl]                                      ; $5ad9: $8e
    ld d, h                                       ; $5ada: $54
    ld e, c                                       ; $5adb: $59
    ld h, [hl]                                    ; $5adc: $66
    ld e, d                                       ; $5add: $5a
    sub $44                                       ; $5ade: $d6 $44
    xor h                                         ; $5ae0: $ac
    or $16                                        ; $5ae1: $f6 $16
    add e                                         ; $5ae3: $83
    cp a                                          ; $5ae4: $bf
    ld a, [hl]                                    ; $5ae5: $7e
    ld b, l                                       ; $5ae6: $45
    ld d, h                                       ; $5ae7: $54
    add a                                         ; $5ae8: $87
    pop de                                        ; $5ae9: $d1
    ld b, a                                       ; $5aea: $47
    sbc c                                         ; $5aeb: $99
    ld [hl], b                                    ; $5aec: $70
    pop af                                        ; $5aed: $f1
    db $db                                        ; $5aee: $db
    db $dd                                        ; $5aef: $dd
    ld [hl], d                                    ; $5af0: $72
    dec sp                                        ; $5af1: $3b
    rst $30                                       ; $5af2: $f7
    dec hl                                        ; $5af3: $2b
    cp $aa                                        ; $5af4: $fe $aa
    jp Jump_034_4825                              ; $5af6: $c3 $25 $48


    jp nc, Jump_034_6a11                          ; $5af9: $d2 $11 $6a

    ld de, $56aa                                  ; $5afc: $11 $aa $56
    ld [hl], a                                    ; $5aff: $77
    and h                                         ; $5b00: $a4
    jp nz, $a5b8                                  ; $5b01: $c2 $b8 $a5

    add hl, sp                                    ; $5b04: $39
    add hl, bc                                    ; $5b05: $09
    ld e, e                                       ; $5b06: $5b
    dec e                                         ; $5b07: $1d
    ld b, [hl]                                    ; $5b08: $46
    rra                                           ; $5b09: $1f
    dec e                                         ; $5b0a: $1d
    ld [hl], c                                    ; $5b0b: $71
    adc c                                         ; $5b0c: $89
    add h                                         ; $5b0d: $84
    cp [hl]                                       ; $5b0e: $be
    and h                                         ; $5b0f: $a4
    ld e, c                                       ; $5b10: $59
    or b                                          ; $5b11: $b0
    ld d, b                                       ; $5b12: $50
    ld h, e                                       ; $5b13: $63
    dec e                                         ; $5b14: $1d
    db $eb                                        ; $5b15: $eb
    ld e, $3f                                     ; $5b16: $1e $3f
    dec bc                                        ; $5b18: $0b
    db $e4                                        ; $5b19: $e4
    rst $08                                       ; $5b1a: $cf
    sbc l                                         ; $5b1b: $9d
    sbc e                                         ; $5b1c: $9b
    inc h                                         ; $5b1d: $24
    rst $20                                       ; $5b1e: $e7
    ld [$c970], a                                 ; $5b1f: $ea $70 $c9
    xor d                                         ; $5b22: $aa
    or e                                          ; $5b23: $b3
    ret nc                                        ; $5b24: $d0

    add b                                         ; $5b25: $80
    ld a, e                                       ; $5b26: $7b
    ldh a, [rNR31]                                ; $5b27: $f0 $1b
    halt                                          ; $5b29: $76
    inc b                                         ; $5b2a: $04
    db $fd                                        ; $5b2b: $fd
    adc b                                         ; $5b2c: $88
    ld e, [hl]                                    ; $5b2d: $5e
    ld [hl], d                                    ; $5b2e: $72
    inc e                                         ; $5b2f: $1c
    add a                                         ; $5b30: $87
    and l                                         ; $5b31: $a5
    inc b                                         ; $5b32: $04
    jp hl                                         ; $5b33: $e9


    add hl, bc                                    ; $5b34: $09
    and h                                         ; $5b35: $a4
    add hl, sp                                    ; $5b36: $39
    ld c, h                                       ; $5b37: $4c
    ld b, a                                       ; $5b38: $47
    rlca                                          ; $5b39: $07
    cpl                                           ; $5b3a: $2f
    pop bc                                        ; $5b3b: $c1
    ldh [rIF], a                                  ; $5b3c: $e0 $0f
    ld [hl+], a                                   ; $5b3e: $22
    dec sp                                        ; $5b3f: $3b
    rst $30                                       ; $5b40: $f7
    xor $dd                                       ; $5b41: $ee $dd
    ld l, d                                       ; $5b43: $6a
    push de                                       ; $5b44: $d5
    ret c                                         ; $5b45: $d8

    xor d                                         ; $5b46: $aa
    ld h, l                                       ; $5b47: $65
    cp l                                          ; $5b48: $bd
    ld a, [bc]                                    ; $5b49: $0a
    ret z                                         ; $5b4a: $c8

Call_034_5b4b:
    ldh [$8e], a                                  ; $5b4b: $e0 $8e
    and b                                         ; $5b4d: $a0
    rra                                           ; $5b4e: $1f
    pop de                                        ; $5b4f: $d1
    dec hl                                        ; $5b50: $2b
    adc c                                         ; $5b51: $89
    ld [$3370], a                                 ; $5b52: $ea $70 $33
    ccf                                           ; $5b55: $3f
    add h                                         ; $5b56: $84
    or h                                          ; $5b57: $b4
    ld c, c                                       ; $5b58: $49
    xor d                                         ; $5b59: $aa
    or a                                          ; $5b5a: $b7
    or c                                          ; $5b5b: $b1
    ld [hl], a                                    ; $5b5c: $77
    pop bc                                        ; $5b5d: $c1
    ld [$97d5], sp                                ; $5b5e: $08 $d5 $97
    ld b, b                                       ; $5b61: $40
    cp a                                          ; $5b62: $bf
    ld [hl+], a                                   ; $5b63: $22
    xor d                                         ; $5b64: $aa
    or $39                                        ; $5b65: $f6 $39
    ld c, $1a                                     ; $5b67: $0e $1a
    db $fc                                        ; $5b69: $fc
    cp c                                          ; $5b6a: $b9
    ld c, c                                       ; $5b6b: $49
    or c                                          ; $5b6c: $b1
    sbc c                                         ; $5b6d: $99
    adc e                                         ; $5b6e: $8b
    ld [hl], b                                    ; $5b6f: $70
    adc l                                         ; $5b70: $8d
    db $e3                                        ; $5b71: $e3
    ld c, l                                       ; $5b72: $4d
    ld [hl], e                                    ; $5b73: $73
    ld c, c                                       ; $5b74: $49
    sub [hl]                                      ; $5b75: $96
    ld [hl-], a                                   ; $5b76: $32
    rst $38                                       ; $5b77: $ff
    ld [hl], c                                    ; $5b78: $71
    ld d, b                                       ; $5b79: $50
    res 4, b                                      ; $5b7a: $cb $a0
    push bc                                       ; $5b7c: $c5
    or c                                          ; $5b7d: $b1
    dec h                                         ; $5b7e: $25
    ld c, b                                       ; $5b7f: $48
    jp nc, $4161                                  ; $5b80: $d2 $61 $41

    push af                                       ; $5b83: $f5
    db $ed                                        ; $5b84: $ed
    dec bc                                        ; $5b85: $0b
    ld a, b                                       ; $5b86: $78
    dec sp                                        ; $5b87: $3b
    ld a, b                                       ; $5b88: $78
    ld l, l                                       ; $5b89: $6d
    ld e, c                                       ; $5b8a: $59
    dec bc                                        ; $5b8b: $0b
    jp hl                                         ; $5b8c: $e9


    dec e                                         ; $5b8d: $1d
    ldh [$6d], a                                  ; $5b8e: $e0 $6d
    or d                                          ; $5b90: $b2
    ld c, a                                       ; $5b91: $4f
    rst $30                                       ; $5b92: $f7
    ld d, [hl]                                    ; $5b93: $56
    xor l                                         ; $5b94: $ad
    xor $09                                       ; $5b95: $ee $09
    ld e, a                                       ; $5b97: $5f
    or c                                          ; $5b98: $b1
    ld d, $cb                                     ; $5b99: $16 $cb
    sub $91                                       ; $5b9b: $d6 $91

Jump_034_5b9d:
jr_034_5b9d:
    xor l                                         ; $5b9d: $ad
    and c                                         ; $5b9e: $a1
    jr jr_034_5b9d                                ; $5b9f: $18 $fc

    sub l                                         ; $5ba1: $95
    dec [hl]                                      ; $5ba2: $35
    ld e, [hl]                                    ; $5ba3: $5e
    xor e                                         ; $5ba4: $ab
    dec l                                         ; $5ba5: $2d
    ret c                                         ; $5ba6: $d8

    ld c, h                                       ; $5ba7: $4c
    pop bc                                        ; $5ba8: $c1
    cp c                                          ; $5ba9: $b9
    ld [$88e8], a                                 ; $5baa: $ea $e8 $88
    cpl                                           ; $5bad: $2f
    ldh [$bd], a                                  ; $5bae: $e0 $bd
    ld e, l                                       ; $5bb0: $5d
    rlca                                          ; $5bb1: $07
    dec de                                        ; $5bb2: $1b
    ei                                            ; $5bb3: $fb
    ld hl, $f5ae                                  ; $5bb4: $21 $ae $f5
    or $2b                                        ; $5bb7: $f6 $2b
    inc h                                         ; $5bb9: $24
    xor e                                         ; $5bba: $ab
    ld bc, $d8b9                                  ; $5bbb: $01 $b9 $d8
    or b                                          ; $5bbe: $b0
    ld a, b                                       ; $5bbf: $78
    db $d3                                        ; $5bc0: $d3
    inc e                                         ; $5bc1: $1c
    di                                            ; $5bc2: $f3
    ld e, d                                       ; $5bc3: $5a
    xor $5e                                       ; $5bc4: $ee $5e
    db $ed                                        ; $5bc6: $ed
    ld [$8f70], a                                 ; $5bc7: $ea $70 $8f
    sbc a                                         ; $5bca: $9f
    dec b                                         ; $5bcb: $05
    ld a, [c]                                     ; $5bcc: $f2
    rst $20                                       ; $5bcd: $e7
    adc $4d                                       ; $5bce: $ce $4d
    sub d                                         ; $5bd0: $92
    cp $ad                                        ; $5bd1: $fe $ad
    or [hl]                                       ; $5bd3: $b6
    ld [hl], h                                    ; $5bd4: $74
    ld c, $84                                     ; $5bd5: $0e $84
    ei                                            ; $5bd7: $fb
    ld e, a                                       ; $5bd8: $5f
    ld a, l                                       ; $5bd9: $7d
    xor [hl]                                      ; $5bda: $ae
    ld a, [hl-]                                   ; $5bdb: $3a
    ld a, [de]                                    ; $5bdc: $1a
    ld e, e                                       ; $5bdd: $5b
    db $ed                                        ; $5bde: $ed
    db $ed                                        ; $5bdf: $ed
    ld h, b                                       ; $5be0: $60
    ld e, b                                       ; $5be1: $58
    ret nz                                        ; $5be2: $c0

    ld e, e                                       ; $5be3: $5b
    ld h, $5c                                     ; $5be4: $26 $5c
    db $fc                                        ; $5be6: $fc
    ld d, [hl]                                    ; $5be7: $56
    or d                                          ; $5be8: $b2
    ld l, d                                       ; $5be9: $6a
    ld h, [hl]                                    ; $5bea: $66
    ld a, [$f337]                                 ; $5beb: $fa $37 $f3
    and [hl]                                      ; $5bee: $a6
    ld h, l                                       ; $5bef: $65
    ld e, [hl]                                    ; $5bf0: $5e
    cp l                                          ; $5bf1: $bd
    db $fd                                        ; $5bf2: $fd
    ld e, l                                       ; $5bf3: $5d
    add h                                         ; $5bf4: $84
    ld l, d                                       ; $5bf5: $6a
    ld d, l                                       ; $5bf6: $55
    db $e4                                        ; $5bf7: $e4
    ld l, a                                       ; $5bf8: $6f
    ld c, l                                       ; $5bf9: $4d
    ld l, c                                       ; $5bfa: $69
    ret                                           ; $5bfb: $c9


    ld [$f268], a                                 ; $5bfc: $ea $68 $f2
    add l                                         ; $5bff: $85
    inc bc                                        ; $5c00: $03
    ld bc, $369f                                  ; $5c01: $01 $9f $36
    inc sp                                        ; $5c04: $33
    db $fd                                        ; $5c05: $fd
    sbc e                                         ; $5c06: $9b
    ld a, c                                       ; $5c07: $79
    rst $08                                       ; $5c08: $cf
    cp l                                          ; $5c09: $bd
    ld a, e                                       ; $5c0a: $7b
    or a                                          ; $5c0b: $b7
    ld e, d                                       ; $5c0c: $5a
    ld [hl], l                                    ; $5c0d: $75
    ret nc                                        ; $5c0e: $d0

    ld b, d                                       ; $5c0f: $42
    dec c                                         ; $5c10: $0d
    ld h, h                                       ; $5c11: $64
    jr z, jr_034_5c2f                             ; $5c12: $28 $1b

    ld [$0e69], sp                                ; $5c14: $08 $69 $0e
    or e                                          ; $5c17: $b3
    inc b                                         ; $5c18: $04
    push hl                                       ; $5c19: $e5
    xor a                                         ; $5c1a: $af
    sbc c                                         ; $5c1b: $99
    jp hl                                         ; $5c1c: $e9


    rst $18                                       ; $5c1d: $df
    inc c                                         ; $5c1e: $0c
    ld c, d                                       ; $5c1f: $4a
    ld c, $1f                                     ; $5c20: $0e $1f
    inc [hl]                                      ; $5c22: $34
    ld hl, sp+$2b                                 ; $5c23: $f8 $2b
    ld a, [c]                                     ; $5c25: $f2
    or a                                          ; $5c26: $b7
    and [hl]                                      ; $5c27: $a6
    or h                                          ; $5c28: $b4
    add e                                         ; $5c29: $83
    rst $10                                       ; $5c2a: $d7
    pop de                                        ; $5c2b: $d1
    pop hl                                        ; $5c2c: $e1
    and d                                         ; $5c2d: $a2
    inc sp                                        ; $5c2e: $33

jr_034_5c2f:
    inc hl                                        ; $5c2f: $23
    ld a, a                                       ; $5c30: $7f
    rla                                           ; $5c31: $17
    ld h, d                                       ; $5c32: $62
    ret                                           ; $5c33: $c9


    xor d                                         ; $5c34: $aa
    ld a, [hl-]                                   ; $5c35: $3a
    adc h                                         ; $5c36: $8c
    ld a, $ca                                     ; $5c37: $3e $ca
    add h                                         ; $5c39: $84
    adc e                                         ; $5c3a: $8b
    rst $18                                       ; $5c3b: $df
    xor $96                                       ; $5c3c: $ee $96
    ld e, e                                       ; $5c3e: $5b
    jp c, $fe04                                   ; $5c3f: $da $04 $fe

    ld a, [hl-]                                   ; $5c42: $3a
    ld l, b                                       ; $5c43: $68
    add hl, sp                                    ; $5c44: $39
    inc d                                         ; $5c45: $14
    ld hl, sp-$24                                 ; $5c46: $f8 $dc
    ret c                                         ; $5c48: $d8

    and d                                         ; $5c49: $a2
    ld h, e                                       ; $5c4a: $63
    ld a, l                                       ; $5c4b: $7d
    ld [hl], h                                    ; $5c4c: $74
    jr @+$4b                                      ; $5c4d: $18 $49

    xor [hl]                                      ; $5c4f: $ae
    ld e, [hl]                                    ; $5c50: $5e
    jp c, $d8d2                                   ; $5c51: $da $d2 $d8

    and d                                         ; $5c54: $a2
    ld h, e                                       ; $5c55: $63
    ld a, l                                       ; $5c56: $7d
    ld [hl], h                                    ; $5c57: $74
    sbc b                                         ; $5c58: $98
    pop de                                        ; $5c59: $d1
    adc e                                         ; $5c5a: $8b
    db $fc                                        ; $5c5b: $fc
    ret                                           ; $5c5c: $c9


    rst $18                                       ; $5c5d: $df
    ld e, e                                       ; $5c5e: $5b
    ld e, c                                       ; $5c5f: $59
    inc de                                        ; $5c60: $13
    or c                                          ; $5c61: $b1
    jp c, Jump_000_0c50                           ; $5c62: $da $50 $0c

    cp $ea                                        ; $5c65: $fe $ea
    ld e, b                                       ; $5c67: $58
    rst $30                                       ; $5c68: $f7
    ld hl, sp+$59                                 ; $5c69: $f8 $59
    jr nz, @+$81                                  ; $5c6b: $20 $7f

    xor $dc                                       ; $5c6d: $ee $dc
    inc h                                         ; $5c6f: $24
    add hl, sp                                    ; $5c70: $39
    ld d, a                                       ; $5c71: $57
    add a                                         ; $5c72: $87
    xor e                                         ; $5c73: $ab
    ld b, e                                       ; $5c74: $43
    ld a, h                                       ; $5c75: $7c
    add e                                         ; $5c76: $83
    xor $e7                                       ; $5c77: $ee $e7
    xor a                                         ; $5c79: $af
    cpl                                           ; $5c7a: $2f
    inc l                                         ; $5c7b: $2c

jr_034_5c7c:
    cp l                                          ; $5c7c: $bd
    ld e, b                                       ; $5c7d: $58
    ld l, a                                       ; $5c7e: $6f
    add hl, bc                                    ; $5c7f: $09
    jp nc, $4813                                  ; $5c80: $d2 $13 $48

    ld [hl], e                                    ; $5c83: $73
    and e                                         ; $5c84: $a3
    cp l                                          ; $5c85: $bd
    ld e, e                                       ; $5c86: $5b
    xor l                                         ; $5c87: $ad
    ld a, d                                       ; $5c88: $7a
    adc h                                         ; $5c89: $8c
    sbc l                                         ; $5c8a: $9d
    pop de                                        ; $5c8b: $d1
    ldh [rIF], a                                  ; $5c8c: $e0 $0f
    and c                                         ; $5c8e: $a1
    ret z                                         ; $5c8f: $c8

    rst $18                                       ; $5c90: $df
    sbc d                                         ; $5c91: $9a
    jp nc, Jump_034_56c6                          ; $5c92: $d2 $c6 $56

    ld a, e                                       ; $5c95: $7b
    dec sp                                        ; $5c96: $3b
    jr jr_034_5caf                                ; $5c97: $18 $16

    ldh a, [$96]                                  ; $5c99: $f0 $96
    add hl, bc                                    ; $5c9b: $09
    rla                                           ; $5c9c: $17
    cp a                                          ; $5c9d: $bf
    dec [hl]                                      ; $5c9e: $35
    inc sp                                        ; $5c9f: $33
    db $fd                                        ; $5ca0: $fd
    sbc e                                         ; $5ca1: $9b
    ld a, c                                       ; $5ca2: $79
    ld a, e                                       ; $5ca3: $7b
    rrca                                          ; $5ca4: $0f
    ld c, d                                       ; $5ca5: $4a
    ld de, $bdce                                  ; $5ca6: $11 $ce $bd
    db $fd                                        ; $5ca9: $fd
    ld e, l                                       ; $5caa: $5d
    add h                                         ; $5cab: $84
    ld l, d                                       ; $5cac: $6a
    ld d, l                                       ; $5cad: $55
    dec e                                         ; $5cae: $1d

jr_034_5caf:
    xor $dc                                       ; $5caf: $ee $dc
    ld [c], a                                     ; $5cb1: $e2
    add c                                         ; $5cb2: $81
    ld bc, $ff6f                                  ; $5cb3: $01 $6f $ff
    ld d, c                                       ; $5cb6: $51
    inc h                                         ; $5cb7: $24
    ld l, c                                       ; $5cb8: $69
    ld a, [de]                                    ; $5cb9: $1a
    db $fc                                        ; $5cba: $fc
    ld a, c                                       ; $5cbb: $79
    dec sp                                        ; $5cbc: $3b
    ld a, h                                       ; $5cbd: $7c
    or l                                          ; $5cbe: $b5
    xor e                                         ; $5cbf: $ab
    adc l                                         ; $5cc0: $8d
    dec e                                         ; $5cc1: $1d
    ld [hl], c                                    ; $5cc2: $71
    adc c                                         ; $5cc3: $89
    add h                                         ; $5cc4: $84
    cp [hl]                                       ; $5cc5: $be
    inc b                                         ; $5cc6: $04
    bit 7, d                                      ; $5cc7: $cb $7a
    dec d                                         ; $5cc9: $15
    sub b                                         ; $5cca: $90
    cp l                                          ; $5ccb: $bd
    ld l, c                                       ; $5ccc: $69
    ld c, $b3                                     ; $5ccd: $0e $b3
    inc b                                         ; $5ccf: $04
    push hl                                       ; $5cd0: $e5
    rrca                                          ; $5cd1: $0f
    dec sp                                        ; $5cd2: $3b
    sub h                                         ; $5cd3: $94
    ld b, l                                       ; $5cd4: $45
    jr nc, jr_034_5c7c                            ; $5cd5: $30 $a5

    or a                                          ; $5cd7: $b7
    ld a, a                                       ; $5cd8: $7f
    inc e                                         ; $5cd9: $1c
    sub [hl]                                      ; $5cda: $96
    or d                                          ; $5cdb: $b2
    ld h, $62                                     ; $5cdc: $26 $62

jr_034_5cde:
    or l                                          ; $5cde: $b5
    and c                                         ; $5cdf: $a1
    jr jr_034_5cde                                ; $5ce0: $18 $fc

    dec [hl]                                      ; $5ce2: $35
    or [hl]                                       ; $5ce3: $b6
    ld a, [hl-]                                   ; $5ce4: $3a
    adc h                                         ; $5ce5: $8c
    ld a, $ca                                     ; $5ce6: $3e $ca
    add h                                         ; $5ce8: $84
    adc e                                         ; $5ce9: $8b
    rst $18                                       ; $5cea: $df

Jump_034_5ceb:
    xor $96                                       ; $5ceb: $ee $96
    ld e, e                                       ; $5ced: $5b
    jp c, $fe04                                   ; $5cee: $da $04 $fe

    ld a, [$eb3e]                                 ; $5cf1: $fa $3e $eb
    ld h, [hl]                                    ; $5cf4: $66
    ld a, [hl]                                    ; $5cf5: $7e
    ld h, e                                       ; $5cf6: $63
    dec bc                                        ; $5cf7: $0b
    sbc h                                         ; $5cf8: $9c
    xor e                                         ; $5cf9: $ab
    cpl                                           ; $5cfa: $2f
    add c                                         ; $5cfb: $81
    sbc $c6                                       ; $5cfc: $de $c6
    sbc $05                                       ; $5cfe: $de $05
    rst $30                                       ; $5d00: $f7
    ld hl, sp-$25                                 ; $5d01: $f8 $db
    xor a                                         ; $5d03: $af
    adc b                                         ; $5d04: $88
    ld h, [hl]                                    ; $5d05: $66
    ld a, [c]                                     ; $5d06: $f2
    dec d                                         ; $5d07: $15
    ld b, [hl]                                    ; $5d08: $46
    and $26                                       ; $5d09: $e6 $26
    push bc                                       ; $5d0b: $c5
    ld h, [hl]                                    ; $5d0c: $66
    ld l, $c2                                     ; $5d0d: $2e $c2
    dec [hl]                                      ; $5d0f: $35
    adc [hl]                                      ; $5d10: $8e
    scf                                           ; $5d11: $37
    call Call_000_0901                            ; $5d12: $cd $01 $09
    ld e, e                                       ; $5d15: $5b
    ld l, l                                       ; $5d16: $6d
    jp hl                                         ; $5d17: $e9


    ld [hl], b                                    ; $5d18: $70
    ld a, [hl]                                    ; $5d19: $7e
    ld [hl], e                                    ; $5d1a: $73
    or e                                          ; $5d1b: $b3
    ld h, b                                       ; $5d1c: $60
    and c                                         ; $5d1d: $a1
    add $3a                                       ; $5d1e: $c6 $3a
    sub $5b                                       ; $5d20: $d6 $5b
    ld h, $7f                                     ; $5d22: $26 $7f
    ld a, [c]                                     ; $5d24: $f2
    rst $30                                       ; $5d25: $f7
    sub $23                                       ; $5d26: $d6 $23
    and b                                         ; $5d28: $a0
    ld c, h                                       ; $5d29: $4c
    cp $c4                                        ; $5d2a: $fe $c4
    pop bc                                        ; $5d2c: $c1
    ld a, [hl+]                                   ; $5d2d: $2a
    ldh a, [$62]                                  ; $5d2e: $f0 $62
    ret nc                                        ; $5d30: $d0

    ldh a, [$a6]                                  ; $5d31: $f0 $a6
    dec e                                         ; $5d33: $1d
    xor d                                         ; $5d34: $aa
    or b                                          ; $5d35: $b0
    pop af                                        ; $5d36: $f1
    adc [hl]                                      ; $5d37: $8e
    ld h, d                                       ; $5d38: $62
    xor h                                         ; $5d39: $ac
    xor $f1                                       ; $5d3a: $ee $f1
    sub a                                         ; $5d3c: $97
    cp a                                          ; $5d3d: $bf
    db $e3                                        ; $5d3e: $e3
    db $d3                                        ; $5d3f: $d3
    and d                                         ; $5d40: $a2
    add hl, hl                                    ; $5d41: $29
    ldh [$3f], a                                  ; $5d42: $e0 $3f
    call c, $bed9                                 ; $5d44: $dc $d9 $be
    ld [bc], a                                    ; $5d47: $02
    sub a                                         ; $5d48: $97
    xor h                                         ; $5d49: $ac
    ld a, [$16c6]                                 ; $5d4a: $fa $c6 $16
    ld l, a                                       ; $5d4d: $6f
    sbc d                                         ; $5d4e: $9a
    inc bc                                        ; $5d4f: $03
    add hl, bc                                    ; $5d50: $09
    db $fc                                        ; $5d51: $fc
    push af                                       ; $5d52: $f5
    or $77                                        ; $5d53: $f6 $77
    ld l, e                                       ; $5d55: $6b
    db $ec                                        ; $5d56: $ec
    db $ed                                        ; $5d57: $ed
    xor e                                         ; $5d58: $ab
    and e                                         ; $5d59: $a3
    sub [hl]                                      ; $5d5a: $96
    ei                                            ; $5d5b: $fb
    rla                                           ; $5d5c: $17
    ldh a, [$9e]                                  ; $5d5d: $f0 $9e
    db $eb                                        ; $5d5f: $eb
    push de                                       ; $5d60: $d5
    inc [hl]                                      ; $5d61: $34
    ld hl, sp-$15                                 ; $5d62: $f8 $eb
    ccf                                           ; $5d64: $3f
    ld a, [hl-]                                   ; $5d65: $3a
    inc d                                         ; $5d66: $14
    ld b, c                                       ; $5d67: $41
    xor [hl]                                      ; $5d68: $ae
    cp l                                          ; $5d69: $bd
    adc [hl]                                      ; $5d6a: $8e
    or b                                          ; $5d6b: $b0
    ld e, d                                       ; $5d6c: $5a
    or b                                          ; $5d6d: $b0
    ld c, b                                       ; $5d6e: $48
    ldh a, [rTAC]                                 ; $5d6f: $f0 $07
    dec b                                         ; $5d71: $05
    rlca                                          ; $5d72: $07
    dec h                                         ; $5d73: $25
    xor e                                         ; $5d74: $ab
    push af                                       ; $5d75: $f5
    dec sp                                        ; $5d76: $3b
    cp h                                          ; $5d77: $bc
    ld l, c                                       ; $5d78: $69
    sub e                                         ; $5d79: $93
    jp nz, $9b9d                                  ; $5d7a: $c2 $9d $9b

    inc h                                         ; $5d7d: $24
    dec h                                         ; $5d7e: $25
    xor e                                         ; $5d7f: $ab
    and e                                         ; $5d80: $a3
    ld b, e                                       ; $5d81: $43
    ld de, $dae4                                  ; $5d82: $11 $e4 $da
    db $eb                                        ; $5d85: $eb
    ld [$3c4f], sp                                ; $5d86: $08 $4f $3c
    or a                                          ; $5d89: $b7
    sub d                                         ; $5d8a: $92
    and e                                         ; $5d8b: $a3
    db $e4                                        ; $5d8c: $e4
    ldh a, [$83]                                  ; $5d8d: $f0 $83
    ld e, $c1                                     ; $5d8f: $1e $c1
    ld e, a                                       ; $5d91: $5f
    adc a                                         ; $5d92: $8f
    sbc a                                         ; $5d93: $9f
    dec b                                         ; $5d94: $05
    ld a, [c]                                     ; $5d95: $f2
    rst $10                                       ; $5d96: $d7
    cp a                                          ; $5d97: $bf
    ld l, c                                       ; $5d98: $69
    ld c, $49                                     ; $5d99: $0e $49
    ld h, c                                       ; $5d9b: $61
    inc [hl]                                      ; $5d9c: $34
    halt                                          ; $5d9d: $76
    call nc, Call_000_2025                        ; $5d9e: $d4 $25 $20
    ccf                                           ; $5da1: $3f
    and b                                         ; $5da2: $a0
    ld a, a                                       ; $5da3: $7f
    xor e                                         ; $5da4: $ab
    dec l                                         ; $5da5: $2d

jr_034_5da6:
    sbc l                                         ; $5da6: $9d
    db $fd                                        ; $5da7: $fd
    ld [de], a                                    ; $5da8: $12
    ld a, l                                       ; $5da9: $7d
    rst $38                                       ; $5daa: $ff
    xor e                                         ; $5dab: $ab
    sbc e                                         ; $5dac: $9b
    and [hl]                                      ; $5dad: $a6
    ld l, c                                       ; $5dae: $69
    add e                                         ; $5daf: $83
    cp a                                          ; $5db0: $bf
    cp [hl]                                       ; $5db1: $be
    rst $08                                       ; $5db2: $cf
    cp d                                          ; $5db3: $ba
    sbc c                                         ; $5db4: $99
    rst $18                                       ; $5db5: $df
    ret c                                         ; $5db6: $d8

    ld [bc], a                                    ; $5db7: $02
    rst $20                                       ; $5db8: $e7
    ld [$588f], a                                 ; $5db9: $ea $8f $58
    ld h, e                                       ; $5dbc: $63
    adc a                                         ; $5dbd: $8f
    cp a                                          ; $5dbe: $bf
    db $fc                                        ; $5dbf: $fc
    dec e                                         ; $5dc0: $1d
    sbc a                                         ; $5dc1: $9f
    sub $b1                                       ; $5dc2: $d6 $b1
    dec e                                         ; $5dc4: $1d
    xor c                                         ; $5dc5: $a9
    db $e4                                        ; $5dc6: $e4
    jr nc, jr_034_5da6                            ; $5dc7: $30 $dd

    ld c, $5e                                     ; $5dc9: $0e $5e
    ld e, e                                       ; $5dcb: $5b
    inc c                                         ; $5dcc: $0c
    cp $9a                                        ; $5dcd: $fe $9a
    add hl, sp                                    ; $5dcf: $39
    inc sp                                        ; $5dd0: $33
    db $eb                                        ; $5dd1: $eb
    db $ed                                        ; $5dd2: $ed
    ei                                            ; $5dd3: $fb
    sub b                                         ; $5dd4: $90
    and $09                                       ; $5dd5: $e6 $09
    db $fc                                        ; $5dd7: $fc
    dec d                                         ; $5dd8: $15
    ld sp, hl                                     ; $5dd9: $f9
    ei                                            ; $5dda: $fb

jr_034_5ddb:
    jp z, $fb55                                   ; $5ddb: $ca $55 $fb

    dec d                                         ; $5dde: $15
    pop af                                        ; $5ddf: $f1
    add $16                                       ; $5de0: $c6 $16
    ld a, [de]                                    ; $5de2: $1a
    db $fc                                        ; $5de3: $fc
    dec [hl]                                      ; $5de4: $35
    or [hl]                                       ; $5de5: $b6
    ld a, [hl-]                                   ; $5de6: $3a
    adc h                                         ; $5de7: $8c
    ld l, [hl]                                    ; $5de8: $6e
    ld h, $d7                                     ; $5de9: $26 $d7
    jr c, jr_034_5ddb                             ; $5deb: $38 $ee

    ld [$8409], sp                                ; $5ded: $08 $09 $84
    ld c, a                                       ; $5df0: $4f
    jp hl                                         ; $5df1: $e9


    ld c, l                                       ; $5df2: $4d
    ld h, l                                       ; $5df3: $65
    and [hl]                                      ; $5df4: $a6
    rst $20                                       ; $5df5: $e7
    ld a, [hl]                                    ; $5df6: $7e
    sub $d2                                       ; $5df7: $d6 $d2
    ldh [$af], a                                  ; $5df9: $e0 $af
    or a                                          ; $5dfb: $b7
    cp a                                          ; $5dfc: $bf
    ld e, e                                       ; $5dfd: $5b
    dec e                                         ; $5dfe: $1d
    xor $09                                       ; $5dff: $ee $09
    ld [$96a6], a                                 ; $5e01: $ea $a6 $96
    add b                                         ; $5e04: $80
    ld a, [hl-]                                   ; $5e05: $3a
    sub [hl]                                      ; $5e06: $96
    ld hl, sp-$04                                 ; $5e07: $f8 $fc
    ld [hl], l                                    ; $5e09: $75
    add e                                         ; $5e0a: $83
    ccf                                           ; $5e0b: $3f
    jr z, @-$04                                   ; $5e0c: $28 $fa

    ld a, c                                       ; $5e0e: $79
    db $d3                                        ; $5e0f: $d3
    inc e                                         ; $5e10: $1c
    add hl, bc                                    ; $5e11: $09
    db $fc                                        ; $5e12: $fc
    push af                                       ; $5e13: $f5
    ld e, l                                       ; $5e14: $5d
    inc b                                         ; $5e15: $04
    pop hl                                        ; $5e16: $e1
    ld [hl], e                                    ; $5e17: $73
    xor l                                         ; $5e18: $ad
    ld hl, sp-$15                                 ; $5e19: $f8 $eb
    ei                                            ; $5e1b: $fb
    ld d, b                                       ; $5e1c: $50
    db $fd                                        ; $5e1d: $fd
    or c                                          ; $5e1e: $b1
    jp $defe                                      ; $5e1f: $c3 $fe $de


    inc c                                         ; $5e22: $0c
    ret nc                                        ; $5e23: $d0

    call z, $a7c4                                 ; $5e24: $cc $c4 $a7
    call nc, $769b                                ; $5e27: $d4 $9b $76
    db $e4                                        ; $5e2a: $e4
    rst $20                                       ; $5e2b: $e7
    rrca                                          ; $5e2c: $0f
    ld l, d                                       ; $5e2d: $6a
    push bc                                       ; $5e2e: $c5
    ld e, a                                       ; $5e2f: $5f
    ld c, a                                       ; $5e30: $4f
    dec [hl]                                      ; $5e31: $35
    sub b                                         ; $5e32: $90
    and c                                         ; $5e33: $a1
    ld e, a                                       ; $5e34: $5f
    ld de, $ded5                                  ; $5e35: $11 $d5 $de
    adc [hl]                                      ; $5e38: $8e
    halt                                          ; $5e39: $76
    halt                                          ; $5e3a: $76
    xor [hl]                                      ; $5e3b: $ae
    sub l                                         ; $5e3c: $95
    cp b                                          ; $5e3d: $b8
    ret                                           ; $5e3e: $c9


    adc c                                         ; $5e3f: $89
    ld a, [bc]                                    ; $5e40: $0a
    dec l                                         ; $5e41: $2d
    dec h                                         ; $5e42: $25
    xor e                                         ; $5e43: $ab
    ld [de], a                                    ; $5e44: $12
    or c                                          ; $5e45: $b1
    jp c, $243b                                   ; $5e46: $da $3b $24

    rlca                                          ; $5e49: $07
    and e                                         ; $5e4a: $a3
    xor a                                         ; $5e4b: $af
    or d                                          ; $5e4c: $b2
    ld h, $62                                     ; $5e4d: $26 $62

jr_034_5e4f:
    or l                                          ; $5e4f: $b5
    and c                                         ; $5e50: $a1
    jr jr_034_5e4f                                ; $5e51: $18 $fc

    sub l                                         ; $5e53: $95
    ld d, c                                       ; $5e54: $51
    add $10                                       ; $5e55: $c6 $10
    ld b, h                                       ; $5e57: $44
    xor h                                         ; $5e58: $ac
    cp [hl]                                       ; $5e59: $be
    ld h, h                                       ; $5e5a: $64
    add $1c                                       ; $5e5b: $c6 $1c
    ld b, e                                       ; $5e5d: $43
    dec d                                         ; $5e5e: $15
    ld d, c                                       ; $5e5f: $51
    db $ed                                        ; $5e60: $ed
    and e                                         ; $5e61: $a3
    call nc, $0640                                ; $5e62: $d4 $40 $06
    ld l, a                                       ; $5e65: $6f
    ld b, a                                       ; $5e66: $47
    pop de                                        ; $5e67: $d1
    rrca                                          ; $5e68: $0f
    db $e4                                        ; $5e69: $e4
    ld [hl], e                                    ; $5e6a: $73
    rst $28                                       ; $5e6b: $ef
    sbc $ed                                       ; $5e6c: $de $ed
    ld de, $75fc                                  ; $5e6e: $11 $fc $75
    add e                                         ; $5e71: $83
    ccf                                           ; $5e72: $3f
    add sp, -$59                                  ; $5e73: $e8 $a7
    call nc, Call_034_4858                        ; $5e75: $d4 $58 $48
    ld d, h                                       ; $5e78: $54
    ret z                                         ; $5e79: $c8

    rra                                           ; $5e7a: $1f
    and h                                         ; $5e7b: $a4
    add hl, sp                                    ; $5e7c: $39
    ld [hl], e                                    ; $5e7d: $73
    dec hl                                        ; $5e7e: $2b
    add sp, $11                                   ; $5e7f: $e8 $11
    jp nc, Jump_000_1cd9                          ; $5e81: $d2 $d9 $1c

    ld a, [$e0dc]                                 ; $5e84: $fa $dc $e0
    xor a                                         ; $5e87: $af
    ld l, h                                       ; $5e88: $6c

jr_034_5e89:
    ld l, h                                       ; $5e89: $6c
    scf                                           ; $5e8a: $37
    ld hl, sp-$7d                                 ; $5e8b: $f8 $83
    add $56                                       ; $5e8d: $c6 $56
    add a                                         ; $5e8f: $87
    pop de                                        ; $5e90: $d1
    ld b, a                                       ; $5e91: $47
    sub e                                         ; $5e92: $93
    cp a                                          ; $5e93: $bf
    jp nz, Jump_000_0734                          ; $5e94: $c2 $34 $07

    jp $9017                                      ; $5e97: $c3 $17 $90


    ccf                                           ; $5e9a: $3f
    ld b, l                                       ; $5e9b: $45
    ld [hl], l                                    ; $5e9c: $75
    ld h, h                                       ; $5e9d: $64
    sbc $32                                       ; $5e9e: $de $32
    jp $8ee7                                      ; $5ea0: $c3 $e7 $8e


    sub d                                         ; $5ea3: $92
    adc e                                         ; $5ea4: $8b
    jr nc, jr_034_5e89                            ; $5ea5: $30 $e2

    dec h                                         ; $5ea7: $25
    rst $20                                       ; $5ea8: $e7
    sbc $af                                       ; $5ea9: $de $af
    ld b, $42                                     ; $5eab: $06 $42
    add hl, de                                    ; $5ead: $19
    ld h, l                                       ; $5eae: $65
    inc c                                         ; $5eaf: $0c
    ld b, c                                       ; $5eb0: $41
    call nz, Call_034_4bea                        ; $5eb1: $c4 $ea $4b
    ld h, [hl]                                    ; $5eb4: $66
    call z, $c301                                 ; $5eb5: $cc $01 $c3
    or c                                          ; $5eb8: $b1
    rst $30                                       ; $5eb9: $f7
    ld b, h                                       ; $5eba: $44
    ld [hl], c                                    ; $5ebb: $71
    ld e, c                                       ; $5ebc: $59
    inc hl                                        ; $5ebd: $23
    ld e, d                                       ; $5ebe: $5a
    ld c, d                                       ; $5ebf: $4a
    sub b                                         ; $5ec0: $90
    and h                                         ; $5ec1: $a4
    ld a, [hl-]                                   ; $5ec2: $3a
    ld hl, sp+$3b                                 ; $5ec3: $f8 $3b
    rst $30                                       ; $5ec5: $f7
    xor $dd                                       ; $5ec6: $ee $dd
    ld l, d                                       ; $5ec8: $6a
    ld d, l                                       ; $5ec9: $55
    db $ed                                        ; $5eca: $ed
    ret c                                         ; $5ecb: $d8

    ld h, $7f                                     ; $5ecc: $26 $7f
    add l                                         ; $5ece: $85
    dec h                                         ; $5ecf: $25
    ld h, d                                       ; $5ed0: $62
    or l                                          ; $5ed1: $b5
    or a                                          ; $5ed2: $b7
    ld [hl], a                                    ; $5ed3: $77
    sub d                                         ; $5ed4: $92
    ld l, b                                       ; $5ed5: $68
    inc hl                                        ; $5ed6: $23
    sbc h                                         ; $5ed7: $9c
    bit 7, d                                      ; $5ed8: $cb $7a
    ldh a, [$92]                                  ; $5eda: $f0 $92
    ld [$6770], a                                 ; $5edc: $ea $70 $67
    dec bc                                        ; $5edf: $0b
    cp $c0                                        ; $5ee0: $fe $c0
    jp nc, Jump_000_30af                          ; $5ee2: $d2 $af $30

    di                                            ; $5ee5: $f3
    di                                            ; $5ee6: $f3
    sbc [hl]                                      ; $5ee7: $9e
    dec sp                                        ; $5ee8: $3b
    ld [$b002], a                                 ; $5ee9: $ea $02 $b0
    and h                                         ; $5eec: $a4
    add hl, sp                                    ; $5eed: $39
    inc hl                                        ; $5eee: $23
    inc e                                         ; $5eef: $1c
    db $eb                                        ; $5ef0: $eb
    ld c, $7d                                     ; $5ef1: $0e $7d
    xor e                                         ; $5ef3: $ab
    ld [hl], $4b                                  ; $5ef4: $36 $4b
    ld [hl], e                                    ; $5ef6: $73
    jp $b7b1                                      ; $5ef7: $c3 $b1 $b7


    cp a                                          ; $5efa: $bf
    ld e, e                                       ; $5efb: $5b
    ld [de], a                                    ; $5efc: $12
    ld l, e                                       ; $5efd: $6b
    ld sp, hl                                     ; $5efe: $f9
    sub h                                         ; $5eff: $94
    ld d, $1d                                     ; $5f00: $16 $1d
    sbc e                                         ; $5f02: $9b
    and $23                                       ; $5f03: $e6 $23
    cp a                                          ; $5f05: $bf
    ld c, d                                       ; $5f06: $4a
    ld [hl], e                                    ; $5f07: $73
    or e                                          ; $5f08: $b3
    ld a, l                                       ; $5f09: $7d
    ld b, h                                       ; $5f0a: $44
    xor b                                         ; $5f0b: $a8
    cp [hl]                                       ; $5f0c: $be
    ld hl, sp-$55                                 ; $5f0d: $f8 $ab
    ld c, $f7                                     ; $5f0f: $0e $f7
    set 4, c                                      ; $5f11: $cb $e1
    ld [hl], e                                    ; $5f13: $73
    ccf                                           ; $5f14: $3f
    dec b                                         ; $5f15: $05
    ld [hl], a                                    ; $5f16: $77
    and h                                         ; $5f17: $a4
    ld h, b                                       ; $5f18: $60
    jp c, Jump_000_2fd9                           ; $5f19: $da $d9 $2f

    sub c                                         ; $5f1c: $91
    ret nz                                        ; $5f1d: $c0

    add $76                                       ; $5f1e: $c6 $76
    ld d, $09                                     ; $5f20: $16 $09
    ld l, e                                       ; $5f22: $6b
    rst $28                                       ; $5f23: $ef
    sub b                                         ; $5f24: $90
    adc [hl]                                      ; $5f25: $8e
    or h                                          ; $5f26: $b4
    call c, $56a0                                 ; $5f27: $dc $a0 $56
    db $fc                                        ; $5f2a: $fc
    sbc l                                         ; $5f2b: $9d

Call_034_5f2c:
    ld a, e                                       ; $5f2c: $7b
    add h                                         ; $5f2d: $84
    call nc, $990b                                ; $5f2e: $d4 $0b $99
    rra                                           ; $5f31: $1f
    ld [hl], h                                    ; $5f32: $74
    add e                                         ; $5f33: $83
    ccf                                           ; $5f34: $3f
    ret nz                                        ; $5f35: $c0

    ld hl, $0939                                  ; $5f36: $21 $39 $09
    db $fc                                        ; $5f39: $fc
    sub l                                         ; $5f3a: $95
    adc l                                         ; $5f3b: $8d
    db $ed                                        ; $5f3c: $ed
    ld de, $0dd2                                  ; $5f3d: $11 $d2 $0d

jr_034_5f40:
    cp $a0                                        ; $5f40: $fe $a0
    jr jr_034_5f40                                ; $5f42: $18 $fc

    ld e, c                                       ; $5f44: $59
    adc $0d                                       ; $5f45: $ce $0d
    cp $9a                                        ; $5f47: $fe $9a
    pop de                                        ; $5f49: $d1
    xor a                                         ; $5f4a: $af
    ld e, b                                       ; $5f4b: $58
    sbc a                                         ; $5f4c: $9f
    cp e                                          ; $5f4d: $bb
    rla                                           ; $5f4e: $17
    ld a, a                                       ; $5f4f: $7f
    cp l                                          ; $5f50: $bd
    dec sp                                        ; $5f51: $3b
    ret nz                                        ; $5f52: $c0

    jp nc, $f58b                                  ; $5f53: $d2 $8b $f5

    sbc [hl]                                      ; $5f56: $9e
    ld a, e                                       ; $5f57: $7b
    or c                                          ; $5f58: $b1
    rst $30                                       ; $5f59: $f7
    db $eb                                        ; $5f5a: $eb
    pop de                                        ; $5f5b: $d1
    and [hl]                                      ; $5f5c: $a6
    ld l, c                                       ; $5f5d: $69
    sbc d                                         ; $5f5e: $9a
    inc bc                                        ; $5f5f: $03
    ld [hl], e                                    ; $5f60: $73
    ld e, h                                       ; $5f61: $5c
    rst $10                                       ; $5f62: $d7
    ld [hl], l                                    ; $5f63: $75
    ld e, l                                       ; $5f64: $5d
    rst $10                                       ; $5f65: $d7
    push af                                       ; $5f66: $f5
    adc $45                                       ; $5f67: $ce $45
    jp nc, Jump_000_3e38                          ; $5f69: $d2 $38 $3e

    rst $30                                       ; $5f6c: $f7
    ld b, [hl]                                    ; $5f6d: $46
    dec e                                         ; $5f6e: $1d
    db $eb                                        ; $5f6f: $eb
    ld c, $17                                     ; $5f70: $0e $17
    add h                                         ; $5f72: $84
    dec de                                        ; $5f73: $1b
    ld c, l                                       ; $5f74: $4d
    ld b, h                                       ; $5f75: $44
    and h                                         ; $5f76: $a4
    sub [hl]                                      ; $5f77: $96
    ld [hl], e                                    ; $5f78: $73
    ld c, c                                       ; $5f79: $49
    xor h                                         ; $5f7a: $ac
    push hl                                       ; $5f7b: $e5
    ld d, e                                       ; $5f7c: $53
    jp c, $d5fb                                   ; $5f7d: $da $fb $d5

    db $e3                                        ; $5f80: $e3
    ld l, a                                       ; $5f81: $6f
    ld e, a                                       ; $5f82: $5f
    inc l                                         ; $5f83: $2c
    add [hl]                                      ; $5f84: $86
    rra                                           ; $5f85: $1f
    and h                                         ; $5f86: $a4
    add hl, sp                                    ; $5f87: $39
    jp Jump_034_71bc                              ; $5f88: $c3 $bc $71


    inc e                                         ; $5f8b: $1c
    push de                                       ; $5f8c: $d5
    pop bc                                        ; $5f8d: $c1
    rst $18                                       ; $5f8e: $df
    cp c                                          ; $5f8f: $b9
    and e                                         ; $5f90: $a3
    db $ec                                        ; $5f91: $ec
    ld b, c                                       ; $5f92: $41
    db $e3                                        ; $5f93: $e3
    cp c                                          ; $5f94: $b9
    sub a                                         ; $5f95: $97
    or [hl]                                       ; $5f96: $b6
    inc d                                         ; $5f97: $14
    cpl                                           ; $5f98: $2f
    ld c, d                                       ; $5f99: $4a
    dec de                                        ; $5f9a: $1b
    db $fc                                        ; $5f9b: $fc
    ld d, l                                       ; $5f9c: $55
    ld a, e                                       ; $5f9d: $7b
    dec sp                                        ; $5f9e: $3b
    adc h                                         ; $5f9f: $8c
    ld a, [hl+]                                   ; $5fa0: $2a
    adc b                                         ; $5fa1: $88
    call z, Call_034_61db                         ; $5fa2: $cc $db $61

Jump_034_5fa5:
    ld e, a                                       ; $5fa5: $5f
    xor [hl]                                      ; $5fa6: $ae
    db $ed                                        ; $5fa7: $ed
    cp e                                          ; $5fa8: $bb
    xor b                                         ; $5fa9: $a8
    ld [hl], a                                    ; $5faa: $77
    add $1c                                       ; $5fab: $c6 $1c
    add hl, bc                                    ; $5fad: $09
    db $fc                                        ; $5fae: $fc
    push af                                       ; $5faf: $f5
    ld hl, sp-$04                                 ; $5fb0: $f8 $fc
    cp c                                          ; $5fb2: $b9
    ld a, [$afe2]                                 ; $5fb3: $fa $e2 $af
    xor e                                         ; $5fb6: $ab
    and h                                         ; $5fb7: $a4
    adc [hl]                                      ; $5fb8: $8e
    db $ed                                        ; $5fb9: $ed
    db $dd                                        ; $5fba: $dd
    dec de                                        ; $5fbb: $1b

Call_034_5fbc:
    ld e, c                                       ; $5fbc: $59

jr_034_5fbd:
    sbc c                                         ; $5fbd: $99
    inc bc                                        ; $5fbe: $03
    ld a, a                                       ; $5fbf: $7f
    sbc h                                         ; $5fc0: $9c
    inc [hl]                                      ; $5fc1: $34
    rlca                                          ; $5fc2: $07
    and e                                         ; $5fc3: $a3
    dec l                                         ; $5fc4: $2d
    cp l                                          ; $5fc5: $bd
    ld a, a                                       ; $5fc6: $7f
    xor c                                         ; $5fc7: $a9
    or $6e                                        ; $5fc8: $f6 $6e
    push af                                       ; $5fca: $f5
    rst $00                                       ; $5fcb: $c7
    add hl, de                                    ; $5fcc: $19
    ld [hl], e                                    ; $5fcd: $73
    and e                                         ; $5fce: $a3
    db $ec                                        ; $5fcf: $ec
    ld b, c                                       ; $5fd0: $41
    ld h, e                                       ; $5fd1: $63
    or l                                          ; $5fd2: $b5
    and l                                         ; $5fd3: $a5
    and e                                         ; $5fd4: $a3
    ld l, $0a                                     ; $5fd5: $2e $0a
    sub [hl]                                      ; $5fd7: $96
    call z, $9081                                 ; $5fd8: $cc $81 $90
    halt                                          ; $5fdb: $76
    or $38                                        ; $5fdc: $f6 $38
    adc [hl]                                      ; $5fde: $8e
    ld [$afe0], a                                 ; $5fdf: $ea $e0 $af
    add e                                         ; $5fe2: $83
    sub a                                         ; $5fe3: $97
    inc [hl]                                      ; $5fe4: $34
    sbc $d1                                       ; $5fe5: $de $d1
    ret c                                         ; $5fe7: $d8

    ld c, $e5                                     ; $5fe8: $0e $e5
    rrca                                          ; $5fea: $0f
    add [hl]                                      ; $5feb: $86
    inc [hl]                                      ; $5fec: $34
    ret                                           ; $5fed: $c9


Jump_034_5fee:
    jp nc, Jump_034_5461                          ; $5fee: $d2 $61 $54

    ld b, c                                       ; $5ff1: $41
    ld h, h                                       ; $5ff2: $64
    xor $b0                                       ; $5ff3: $ee $b0
    cpl                                           ; $5ff5: $2f
    rst $10                                       ; $5ff6: $d7
    sbc [hl]                                      ; $5ff7: $9e
    xor e                                         ; $5ff8: $ab
    dec l                                         ; $5ff9: $2d
    ld c, l                                       ; $5ffa: $4d
    cp $0a                                        ; $5ffb: $fe $0a
    inc sp                                        ; $5ffd: $33
    rlca                                          ; $5ffe: $07
    ld b, d                                       ; $5fff: $42
    rlca                                          ; $6000: $07
    xor a                                         ; $6001: $af
    dec l                                         ; $6002: $2d
    sub e                                         ; $6003: $93
    adc [hl]                                      ; $6004: $8e

Call_034_6005:
    add c                                         ; $6005: $81
    ld h, a                                       ; $6006: $67
    adc c                                         ; $6007: $89
    dec a                                         ; $6008: $3d
    scf                                           ; $6009: $37
    db $10                                        ; $600a: $10
    xor d                                         ; $600b: $aa
    dec l                                         ; $600c: $2d
    dec e                                         ; $600d: $1d
    ld e, $4b                                     ; $600e: $1e $4b
    adc [hl]                                      ; $6010: $8e
    call z, Call_034_6ae7                         ; $6011: $cc $e7 $6a
    ld c, e                                       ; $6014: $4b
    db $e3                                        ; $6015: $e3
    ld l, l                                       ; $6016: $6d
    db $e3                                        ; $6017: $e3
    jr z, jr_034_5fbd                             ; $6018: $28 $a3

    inc b                                         ; $601a: $04
    ld b, c                                       ; $601b: $41
    db $f4                                        ; $601c: $f4
    ld a, l                                       ; $601d: $7d
    ld c, b                                       ; $601e: $48
    ld [hl], e                                    ; $601f: $73
    call z, $abf0                                 ; $6020: $cc $f0 $ab
    ld c, $fe                                     ; $6023: $0e $fe
    cp d                                          ; $6025: $ba
    sbc a                                         ; $6026: $9f
    cp a                                          ; $6027: $bf
    ld l, d                                       ; $6028: $6a
    ld c, e                                       ; $6029: $4b
    add hl, bc                                    ; $602a: $09
    inc bc                                        ; $602b: $03
    ld a, b                                       ; $602c: $78
    sbc e                                         ; $602d: $9b
    db $f4                                        ; $602e: $f4
    rrca                                          ; $602f: $0f
    scf                                           ; $6030: $37
    adc [hl]                                      ; $6031: $8e
    jp z, $bf85                                   ; $6032: $ca $85 $bf

    adc h                                         ; $6035: $8c
    cp [hl]                                       ; $6036: $be
    rst $38                                       ; $6037: $ff
    push de                                       ; $6038: $d5
    ld d, l                                       ; $6039: $55
    rst $00                                       ; $603a: $c7
    cp c                                          ; $603b: $b9
    ld a, [$0363]                                 ; $603c: $fa $63 $03
    and c                                         ; $603f: $a1
    sbc a                                         ; $6040: $9f
    ld d, d                                       ; $6041: $52
    db $e3                                        ; $6042: $e3
    cp c                                          ; $6043: $b9
    rst $30                                       ; $6044: $f7
    adc a                                         ; $6045: $8f
    dec c                                         ; $6046: $0d
    cp $aa                                        ; $6047: $fe $aa
    ld b, e                                       ; $6049: $43
    adc d                                         ; $604a: $8a
    ccf                                           ; $604b: $3f
    di                                            ; $604c: $f3
    or $f6                                        ; $604d: $f6 $f6
    ld [hl], a                                    ; $604f: $77
    db $d3                                        ; $6050: $d3
    inc e                                         ; $6051: $1c
    jp $78b1                                      ; $6052: $c3 $b1 $78


    ld d, c                                       ; $6055: $51
    jp c, $3ad8                                   ; $6056: $da $d8 $3a

    sub $47                                       ; $6059: $d6 $47
    or l                                          ; $605b: $b5
    and l                                         ; $605c: $a5
    ld [hl], e                                    ; $605d: $73
    sub e                                         ; $605e: $93
    db $e4                                        ; $605f: $e4
    ld [hl], b                                    ; $6060: $70
    pop de                                        ; $6061: $d1
    or c                                          ; $6062: $b1
    ld l, c                                       ; $6063: $69
    rst $20                                       ; $6064: $e7
    dec c                                         ; $6065: $0d
    ld d, e                                       ; $6066: $53
    ld [$0fe0], a                                 ; $6067: $ea $e0 $0f
    adc d                                         ; $606a: $8a
    rla                                           ; $606b: $17
    and l                                         ; $606c: $a5
    ld h, b                                       ; $606d: $60
    add h                                         ; $606e: $84
    ld l, d                                       ; $606f: $6a
    ld d, l                                       ; $6070: $55
    rst $00                                       ; $6071: $c7
    ld e, $9f                                     ; $6072: $1e $9f
    ld [hl], $b6                                  ; $6074: $36 $b6
    adc [hl]                                      ; $6076: $8e
    push af                                       ; $6077: $f5
    ld d, c                                       ; $6078: $51
    ld l, l                                       ; $6079: $6d
    jp hl                                         ; $607a: $e9


    push bc                                       ; $607b: $c5
    ld e, d                                       ; $607c: $5a
    cp h                                          ; $607d: $bc
    ld h, l                                       ; $607e: $65

jr_034_607f:
    jp nz, Jump_034_6fc5                          ; $607f: $c2 $c5 $6f

    ld [hl], a                                    ; $6082: $77
    set 1, l                                      ; $6083: $cb $cd
    db $dd                                        ; $6085: $dd
    rst $08                                       ; $6086: $cf
    rra                                           ; $6087: $1f
    ld a, [$d379]                                 ; $6088: $fa $79 $d3
    inc e                                         ; $608b: $1c
    call z, $ebf0                                 ; $608c: $cc $f0 $eb
    push bc                                       ; $608f: $c5
    ld a, d                                       ; $6090: $7a
    cp e                                          ; $6091: $bb
    sbc a                                         ; $6092: $9f
    cp a                                          ; $6093: $bf
    ld [hl], e                                    ; $6094: $73
    scf                                           ; $6095: $37
    ld hl, sp-$7d                                 ; $6096: $f8 $83
    xor d                                         ; $6098: $aa
    dec b                                         ; $6099: $05
    ld l, a                                       ; $609a: $6f
    sbc d                                         ; $609b: $9a
    inc bc                                        ; $609c: $03
    add hl, bc                                    ; $609d: $09
    db $fc                                        ; $609e: $fc
    push af                                       ; $609f: $f5
    ld a, l                                       ; $60a0: $7d
    sub $cd                                       ; $60a1: $d6 $cd
    db $fc                                        ; $60a3: $fc
    add $16                                       ; $60a4: $c6 $16
    jr c, jr_034_607f                             ; $60a6: $38 $d7

    ld e, b                                       ; $60a8: $58
    cp h                                          ; $60a9: $bc
    jr z, jr_034_6119                             ; $60aa: $28 $6d

    ld l, h                                       ; $60ac: $6c
    or l                                          ; $60ad: $b5
    and l                                         ; $60ae: $a5
    or e                                          ; $60af: $b3
    daa                                           ; $60b0: $27
    ld a, $d7                                     ; $60b1: $3e $d7
    or c                                          ; $60b3: $b1

Jump_034_60b4:
    sub [hl]                                      ; $60b4: $96
    ld h, [hl]                                    ; $60b5: $66
    ld [hl], d                                    ; $60b6: $72
    adc l                                         ; $60b7: $8d

jr_034_60b8:
    db $e3                                        ; $60b8: $e3
    db $ed                                        ; $60b9: $ed
    ld [$9995], sp                                ; $60ba: $08 $95 $99
    ld d, $1d                                     ; $60bd: $16 $1d
    sbc e                                         ; $60bf: $9b
    and $f3                                       ; $60c0: $e6 $f3
    add [hl]                                      ; $60c2: $86
    add hl, hl                                    ; $60c3: $29
    ld [hl], l                                    ; $60c4: $75
    ldh a, [rTAC]                                 ; $60c5: $f0 $07
    dec c                                         ; $60c7: $0d
    add h                                         ; $60c8: $84
    ld a, [de]                                    ; $60c9: $1a

jr_034_60ca:
    ei                                            ; $60ca: $fb
    ld h, d                                       ; $60cb: $62
    pop bc                                        ; $60cc: $c1
    ld d, d                                       ; $60cd: $52
    rst $00                                       ; $60ce: $c7
    ld a, [$b0e8]                                 ; $60cf: $fa $e8 $b0
    and b                                         ; $60d2: $a0
    ld a, [hl-]                                   ; $60d3: $3a
    call $b301                                    ; $60d4: $cd $01 $b3
    rst $38                                       ; $60d7: $ff
    rst $20                                       ; $60d8: $e7
    ld l, d                                       ; $60d9: $6a
    ld sp, hl                                     ; $60da: $f9
    db $db                                        ; $60db: $db
    inc [hl]                                      ; $60dc: $34
    ld c, l                                       ; $60dd: $4d
    ld l, e                                       ; $60de: $6b
    ld l, h                                       ; $60df: $6c
    jr nz, jr_034_6156                            ; $60e0: $20 $74

    add e                                         ; $60e2: $83
    ccf                                           ; $60e3: $3f
    add sp, -$1f                                  ; $60e4: $e8 $e1
    daa                                           ; $60e6: $27
    cp l                                          ; $60e7: $bd
    dec sp                                        ; $60e8: $3b
    jr nz, jr_034_60b8                            ; $60e9: $20 $cd

    ld bc, $c623                                  ; $60eb: $01 $23 $c6
    sbc $f5                                       ; $60ee: $de $f5
    sub [hl]                                      ; $60f0: $96
    add hl, de                                    ; $60f1: $19
    ld l, $0e                                     ; $60f2: $2e $0e
    adc b                                         ; $60f4: $88
    ld sp, hl                                     ; $60f5: $f9
    di                                            ; $60f6: $f3
    adc $98                                       ; $60f7: $ce $98
    inc bc                                        ; $60f9: $03
    and e                                         ; $60fa: $a3
    jp Jump_000_1578                              ; $60fb: $c3 $78 $15


    cpl                                           ; $60fe: $2f
    ld c, d                                       ; $60ff: $4a
    pop bc                                        ; $6100: $c1
    dec c                                         ; $6101: $0d
    cp $ba                                        ; $6102: $fe $ba
    pop bc                                        ; $6104: $c1
    rra                                           ; $6105: $1f
    inc d                                         ; $6106: $14
    rlca                                          ; $6107: $07
    call nz, Call_034_79fc                        ; $6108: $c4 $fc $79
    ld a, e                                       ; $610b: $7b
    dec de                                        ; $610c: $1b
    ld a, e                                       ; $610d: $7b
    rst $10                                       ; $610e: $d7
    dec sp                                        ; $610f: $3b
    ld h, e                                       ; $6110: $63
    ld c, $a3                                     ; $6111: $0e $a3
    inc bc                                        ; $6113: $03
    pop de                                        ; $6114: $d1
    ld e, e                                       ; $6115: $5b
    ld h, [hl]                                    ; $6116: $66
    ld hl, sp-$24                                 ; $6117: $f8 $dc

jr_034_6119:
    ei                                            ; $6119: $fb
    ld d, l                                       ; $611a: $55
    ld b, [hl]                                    ; $611b: $46
    add hl, de                                    ; $611c: $19
    ld b, e                                       ; $611d: $43
    db $10                                        ; $611e: $10
    or c                                          ; $611f: $b1
    ld a, [$0692]                                 ; $6120: $fa $92 $06
    jp nz, Jump_000_398c                          ; $6123: $c2 $8c $39

    or e                                          ; $6126: $b3
    ld a, a                                       ; $6127: $7f
    jr nz, @+$0b                                  ; $6128: $20 $09

    dec c                                         ; $612a: $0d
    cp $7a                                        ; $612b: $fe $7a
    ld [hl], a                                    ; $612d: $77
    adc h                                         ; $612e: $8c
    db $d3                                        ; $612f: $d3
    ldh [$af], a                                  ; $6130: $e0 $af
    ld a, [$da63]                                 ; $6132: $fa $63 $da
    inc b                                         ; $6135: $04
    cp $ca                                        ; $6136: $fe $ca
    add $56                                       ; $6138: $c6 $56
    add a                                         ; $613a: $87
    dec sp                                        ; $613b: $3b
    ld a, [hl-]                                   ; $613c: $3a
    sub c                                         ; $613d: $91
    ccf                                           ; $613e: $3f
    or b                                          ; $613f: $b0
    call nz, $f076                                ; $6140: $c4 $76 $f0
    jp c, $ca32                                   ; $6143: $da $32 $ca

    jr jr_034_60ca                                ; $6146: $18 $82

    adc b                                         ; $6148: $88
    push de                                       ; $6149: $d5
    sub a                                         ; $614a: $97
    and h                                         ; $614b: $a4
    add hl, sp                                    ; $614c: $39
    and e                                         ; $614d: $a3
    jp $fdbd                                      ; $614e: $c3 $bd $fd


    db $dd                                        ; $6151: $dd
    ld b, $7f                                     ; $6152: $06 $7f
    push de                                       ; $6154: $d5
    sub a                                         ; $6155: $97

jr_034_6156:
    ld b, b                                       ; $6156: $40
    ld e, a                                       ; $6157: $5f
    ld l, h                                       ; $6158: $6c
    ld h, [hl]                                    ; $6159: $66
    ld a, [$f337]                                 ; $615a: $fa $37 $f3
    adc $98                                       ; $615d: $ce $98
    inc bc                                        ; $615f: $03
    ld c, c                                       ; $6160: $49
    xor d                                         ; $6161: $aa
    add a                                         ; $6162: $87
    ld b, d                                       ; $6163: $42
    add h                                         ; $6164: $84
    ld e, $21                                     ; $6165: $1e $21
    push de                                       ; $6167: $d5
    rra                                           ; $6168: $1f
    sbc e                                         ; $6169: $9b
    ld sp, hl                                     ; $616a: $f9
    add hl, sp                                    ; $616b: $39
    ld c, $77                                     ; $616c: $0e $77
    call nc, $bc47                                ; $616e: $d4 $47 $bc
    ld e, a                                       ; $6171: $5f
    ld [bc], a                                    ; $6172: $02
    ld e, l                                       ; $6173: $5d
    rst $28                                       ; $6174: $ef
    ld a, d                                       ; $6175: $7a
    db $d3                                        ; $6176: $d3
    inc e                                         ; $6177: $1c
    ld b, e                                       ; $6178: $43
    ld e, c                                       ; $6179: $59
    ld c, e                                       ; $617a: $4b
    ld b, a                                       ; $617b: $47
    daa                                           ; $617c: $27
    inc c                                         ; $617d: $0c
    cpl                                           ; $617e: $2f
    db $fd                                        ; $617f: $fd
    ld a, [bc]                                    ; $6180: $0a
    inc c                                         ; $6181: $0c
    push de                                       ; $6182: $d5
    rra                                           ; $6183: $1f
    dec sp                                        ; $6184: $3b
    ld [$de23], a                                 ; $6185: $ea $23 $de
    cpl                                           ; $6188: $2f
    add c                                         ; $6189: $81
    add hl, de                                    ; $618a: $19
    ld [hl], e                                    ; $618b: $73
    jp $f7b1                                      ; $618c: $c3 $b1 $f7


    ld b, h                                       ; $618f: $44
    ld [hl], c                                    ; $6190: $71
    push af                                       ; $6191: $f5
    push bc                                       ; $6192: $c5
    ld e, a                                       ; $6193: $5f
    ld l, a                                       ; $6194: $6f
    adc [hl]                                      ; $6195: $8e
    dec l                                         ; $6196: $2d
    and e                                         ; $6197: $a3
    sbc a                                         ; $6198: $9f
    db $e3                                        ; $6199: $e3
    ret c                                         ; $619a: $d8

    ret nz                                        ; $619b: $c0

    ld e, $7e                                     ; $619c: $1e $7e
    ld [hl], d                                    ; $619e: $72
    xor $dd                                       ; $619f: $ee $dd
    cp e                                          ; $61a1: $bb
    dec c                                         ; $61a2: $0d
    cp $6a                                        ; $61a3: $fe $6a
    xor h                                         ; $61a5: $ac
    ld c, $a9                                     ; $61a6: $0e $a9
    ld h, e                                       ; $61a8: $63
    adc c                                         ; $61a9: $89
    rst $08                                       ; $61aa: $cf
    ld e, a                                       ; $61ab: $5f
    rlca                                          ; $61ac: $07
    dec l                                         ; $61ad: $2d
    ld a, [c]                                     ; $61ae: $f2
    pop bc                                        ; $61af: $c1
    db $db                                        ; $61b0: $db
    dec sp                                        ; $61b1: $3b
    ld c, c                                       ; $61b2: $49
    or h                                          ; $61b3: $b4
    rst $08                                       ; $61b4: $cf
    cp l                                          ; $61b5: $bd
    ld d, c                                       ; $61b6: $51
    rst $00                                       ; $61b7: $c7
    ld e, d                                       ; $61b8: $5a
    sbc d                                         ; $61b9: $9a
    and h                                         ; $61ba: $a4
    adc [hl]                                      ; $61bb: $8e
    db $e3                                        ; $61bc: $e3
    halt                                          ; $61bd: $76
    dec c                                         ; $61be: $0d
    db $10                                        ; $61bf: $10
    ld l, c                                       ; $61c0: $69
    sub e                                         ; $61c1: $93
    ld d, h                                       ; $61c2: $54
    rrca                                          ; $61c3: $0f
    add l                                         ; $61c4: $85
    ld [$1635], sp                                ; $61c5: $08 $35 $16
    ld sp, hl                                     ; $61c8: $f9
    cp e                                          ; $61c9: $bb
    or [hl]                                       ; $61ca: $b6
    ld l, b                                       ; $61cb: $68
    jp z, $fa5a                                   ; $61cc: $ca $5a $fa

    inc l                                         ; $61cf: $2c
    ld e, a                                       ; $61d0: $5f
    ld hl, $ab11                                  ; $61d1: $21 $11 $ab
    cp l                                          ; $61d4: $bd
    ld l, c                                       ; $61d5: $69
    ld c, $23                                     ; $61d6: $0e $23
    cp h                                          ; $61d8: $bc
    adc e                                         ; $61d9: $8b
    ld d, b                                       ; $61da: $50

Call_034_61db:
    xor l                                         ; $61db: $ad
    xor d                                         ; $61dc: $aa
    ccf                                           ; $61dd: $3f
    halt                                          ; $61de: $76
    call nc, $bc47                                ; $61df: $d4 $47 $bc
    ld e, a                                       ; $61e2: $5f
    ld [bc], a                                    ; $61e3: $02
    dec h                                         ; $61e4: $25
    ld c, b                                       ; $61e5: $48
    ld d, d                                       ; $61e6: $52
    ld b, [hl]                                    ; $61e7: $46
    add hl, de                                    ; $61e8: $19
    ld b, e                                       ; $61e9: $43
    db $10                                        ; $61ea: $10
    or c                                          ; $61eb: $b1
    ld a, [$1992]                                 ; $61ec: $fa $92 $19
    ld [hl], e                                    ; $61ef: $73
    or e                                          ; $61f0: $b3
    ret z                                         ; $61f1: $c8

    rst $08                                       ; $61f2: $cf
    xor d                                         ; $61f3: $aa
    cpl                                           ; $61f4: $2f
    cp $ea                                        ; $61f5: $fe $ea
    ld e, b                                       ; $61f7: $58
    ld l, a                                       ; $61f8: $6f
    rlca                                          ; $61f9: $07
    xor a                                         ; $61fa: $af
    dec l                                         ; $61fb: $2d
    and e                                         ; $61fc: $a3
    adc h                                         ; $61fd: $8c
    ld hl, $5888                                  ; $61fe: $21 $88 $58
    ld a, l                                       ; $6201: $7d
    ld c, c                                       ; $6202: $49
    sbc d                                         ; $6203: $9a

jr_034_6204:
    inc bc                                        ; $6204: $03
    add hl, bc                                    ; $6205: $09
    db $fc                                        ; $6206: $fc
    push af                                       ; $6207: $f5
    and $5d                                       ; $6208: $e6 $5d
    ld [hl], a                                    ; $620a: $77
    cpl                                           ; $620b: $2f
    cp $ba                                        ; $620c: $fe $ba
    pop bc                                        ; $620e: $c1
    rra                                           ; $620f: $1f
    call nc, $c7b1                                ; $6210: $d4 $b1 $c7
    and a                                         ; $6213: $a7
    dec a                                         ; $6214: $3d
    inc e                                         ; $6215: $1c
    ld e, e                                       ; $6216: $5b
    ld b, a                                       ; $6217: $47
    and $35                                       ; $6218: $e6 $35
    halt                                          ; $621a: $76
    call nc, $bc47                                ; $621b: $d4 $47 $bc
    ld e, a                                       ; $621e: $5f
    ld [bc], a                                    ; $621f: $02
    ld l, c                                       ; $6220: $69
    ld c, $23                                     ; $6221: $0e $23
    cp h                                          ; $6223: $bc
    db $eb                                        ; $6224: $eb
    dec l                                         ; $6225: $2d
    inc sp                                        ; $6226: $33
    ld e, h                                       ; $6227: $5c
    db $fd                                        ; $6228: $fd
    or c                                          ; $6229: $b1
    and e                                         ; $622a: $a3
    ld a, $e2                                     ; $622b: $3e $e2
    db $fd                                        ; $622d: $fd
    ld [de], a                                    ; $622e: $12
    jr c, @+$59                                   ; $622f: $38 $57

    ld a, a                                       ; $6231: $7f
    call nz, $7f1e                                ; $6232: $c4 $1e $7f
    set 1, d                                      ; $6235: $cb $ca
    ld d, a                                       ; $6237: $57
    db $fc                                        ; $6238: $fc
    pop bc                                        ; $6239: $c1
    cp c                                          ; $623a: $b9
    ld [$7ee8], a                                 ; $623b: $ea $e8 $7e
    cp $ca                                        ; $623e: $fe $ca
    jr z, jr_034_62a5                             ; $6240: $28 $63

    ld [$5622], sp                                ; $6242: $08 $22 $56
    ld e, a                                       ; $6245: $5f
    ld d, d                                       ; $6246: $52
    or d                                          ; $6247: $b2
    ld l, d                                       ; $6248: $6a
    ld h, [hl]                                    ; $6249: $66
    ld a, [$f337]                                 ; $624a: $fa $37 $f3
    adc $98                                       ; $624d: $ce $98
    inc bc                                        ; $624f: $03
    add hl, bc                                    ; $6250: $09
    db $fc                                        ; $6251: $fc
    push af                                       ; $6252: $f5
    sbc [hl]                                      ; $6253: $9e
    jr z, jr_034_6204                             ; $6254: $28 $ae

    ld h, e                                       ; $6256: $63
    adc e                                         ; $6257: $8b
    db $fc                                        ; $6258: $fc
    ld d, c                                       ; $6259: $51
    di                                            ; $625a: $f3
    rlca                                          ; $625b: $07
    sub [hl]                                      ; $625c: $96
    ld h, $7f                                     ; $625d: $26 $7f
    add l                                         ; $625f: $85
    sbc c                                         ; $6260: $99
    inc bc                                        ; $6261: $03
    pop hl                                        ; $6262: $e1
    call c, $77bb                                 ; $6263: $dc $bb $77
    dec de                                        ; $6266: $1b
    db $fc                                        ; $6267: $fc
    push de                                       ; $6268: $d5
    ret c                                         ; $6269: $d8

    dec c                                         ; $626a: $0d
    cp $a0                                        ; $626b: $fe $a0
    ld [hl], a                                    ; $626d: $77

jr_034_626e:
    ld [de], a                                    ; $626e: $12
    ld [hl+], a                                   ; $626f: $22
    ld a, b                                       ; $6270: $78
    ld c, b                                       ; $6271: $48
    ld c, $a3                                     ; $6272: $0e $a3
    jp Jump_034_5fa5                              ; $6274: $c3 $a5 $5f


    add c                                         ; $6277: $81
    and c                                         ; $6278: $a1
    add $19                                       ; $6279: $c6 $19
    ld [hl], e                                    ; $627b: $73
    or e                                          ; $627c: $b3
    xor e                                         ; $627d: $ab
    dec a                                         ; $627e: $3d
    ld d, a                                       ; $627f: $57
    xor e                                         ; $6280: $ab
    sbc $c6                                       ; $6281: $de $c6
    sbc $05                                       ; $6283: $de $05
    inc hl                                        ; $6285: $23
    db $f4                                        ; $6286: $f4
    ld [$5929], sp                                ; $6287: $08 $29 $59
    ld e, c                                       ; $628a: $59
    db $10                                        ; $628b: $10
    ld [$6f58], a                                 ; $628c: $ea $58 $6f
    ld l, a                                       ; $628f: $6f
    call nc, $deb1                                ; $6290: $d4 $b1 $de
    ld [hl-], a                                   ; $6293: $32
    sbc d                                         ; $6294: $9a
    ld hl, sp-$6c                                 ; $6295: $f8 $94
    ld a, d                                       ; $6297: $7a
    dec bc                                        ; $6298: $0b
    ld l, d                                       ; $6299: $6a
    sbc e                                         ; $629a: $9b
    and [hl]                                      ; $629b: $a6
    ld l, c                                       ; $629c: $69
    ld c, $a3                                     ; $629d: $0e $a3
    ccf                                           ; $629f: $3f
    sub [hl]                                      ; $62a0: $96
    jr nz, jr_034_62ec                            ; $62a1: $20 $49

    dec e                                         ; $62a3: $1d
    db $eb                                        ; $62a4: $eb

jr_034_62a5:
    dec l                                         ; $62a5: $2d
    and e                                         ; $62a6: $a3
    adc c                                         ; $62a7: $89
    ld c, a                                       ; $62a8: $4f
    xor c                                         ; $62a9: $a9
    ld [hl], a                                    ; $62aa: $77
    add $1c                                       ; $62ab: $c6 $1c
    ld c, c                                       ; $62ad: $49
    ld h, c                                       ; $62ae: $61
    ld [hl], h                                    ; $62af: $74
    ld b, a                                       ; $62b0: $47
    ld e, h                                       ; $62b1: $5c
    ld [hl+], a                                   ; $62b2: $22
    and c                                         ; $62b3: $a1
    cpl                                           ; $62b4: $2f
    ld [hl], c                                    ; $62b5: $71
    ld sp, $f756                                  ; $62b6: $31 $56 $f7
    ld hl, sp-$35                                 ; $62b9: $f8 $cb
    rst $18                                       ; $62bb: $df
    pop af                                        ; $62bc: $f1
    ld l, c                                       ; $62bd: $69
    ret                                           ; $62be: $c9


    pop hl                                        ; $62bf: $e1
    add e                                         ; $62c0: $83
    ld b, $7f                                     ; $62c1: $06 $7f
    dec h                                         ; $62c3: $25
    xor e                                         ; $62c4: $ab
    inc l                                         ; $62c5: $2c
    or d                                          ; $62c6: $b2
    or h                                          ; $62c7: $b4
    and e                                         ; $62c8: $a3
    cp l                                          ; $62c9: $bd
    db $db                                        ; $62ca: $db
    db $e3                                        ; $62cb: $e3
    ld l, a                                       ; $62cc: $6f
    scf                                           ; $62cd: $37
    ld hl, sp-$7d                                 ; $62ce: $f8 $83
    ld a, [hl]                                    ; $62d0: $7e
    ld b, l                                       ; $62d1: $45
    inc c                                         ; $62d2: $0c
    ld a, h                                       ; $62d3: $7c
    ld b, h                                       ; $62d4: $44
    jr c, jr_034_626e                             ; $62d5: $38 $97

    and b                                         ; $62d7: $a0
    pop hl                                        ; $62d8: $e1
    inc c                                         ; $62d9: $0c
    ld [$1f58], a                                 ; $62da: $ea $58 $1f
    call Call_034_5f2c                            ; $62dd: $cd $2c $5f
    cp e                                          ; $62e0: $bb
    ld a, [$56ef]                                 ; $62e1: $fa $ef $56
    ld e, e                                       ; $62e4: $5b
    ld a, [hl-]                                   ; $62e5: $3a
    ld [c], a                                     ; $62e6: $e2
    ld a, [de]                                    ; $62e7: $1a
    jr nz, @+$7c                                  ; $62e8: $20 $7a

    ld [hl], a                                    ; $62ea: $77
    halt                                          ; $62eb: $76

jr_034_62ec:
    xor $dd                                       ; $62ec: $ee $dd
    cp e                                          ; $62ee: $bb
    dec a                                         ; $62ef: $3d
    cp $d6                                        ; $62f0: $fe $d6

Jump_034_62f2:
    ret c                                         ; $62f2: $d8

    ld a, a                                       ; $62f3: $7f
    db $f4                                        ; $62f4: $f4
    ld d, e                                       ; $62f5: $53
    ld l, d                                       ; $62f6: $6a
    cp c                                          ; $62f7: $b9
    ld a, e                                       ; $62f8: $7b
    inc hl                                        ; $62f9: $23
    ld b, e                                       ; $62fa: $43
    ldh a, [$d6]                                  ; $62fb: $f0 $d6
    ld [hl], d                                    ; $62fd: $72
    rst $38                                       ; $62fe: $ff
    ld [bc], a                                    ; $62ff: $02
    add [hl]                                      ; $6300: $86
    inc [hl]                                      ; $6301: $34
    rlca                                          ; $6302: $07
    di                                            ; $6303: $f3
    add [hl]                                      ; $6304: $86
    add hl, hl                                    ; $6305: $29
    ld [hl], l                                    ; $6306: $75
    ldh a, [rTAC]                                 ; $6307: $f0 $07
    cp l                                          ; $6309: $bd
    adc l                                         ; $630a: $8d
    cp l                                          ; $630b: $bd
    dec bc                                        ; $630c: $0b
    ld b, [hl]                                    ; $630d: $46
    xor b                                         ; $630e: $a8
    ld d, [hl]                                    ; $630f: $56
    dec [hl]                                      ; $6310: $35
    call c, Call_034_563f                         ; $6311: $dc $3f $56
    rst $38                                       ; $6314: $ff
    call z, $b799                                 ; $6315: $cc $99 $b7
    ld l, d                                       ; $6318: $6a
    pop bc                                        ; $6319: $c1
    or d                                          ; $631a: $b2
    ld a, [hl]                                    ; $631b: $7e
    add a                                         ; $631c: $87
    scf                                           ; $631d: $37
    call $a301                                    ; $631e: $cd $01 $a3
    ccf                                           ; $6321: $3f
    ld d, [hl]                                    ; $6322: $56
    ld a, e                                       ; $6323: $7b
    or a                                          ; $6324: $b7
    ld h, h                                       ; $6325: $64
    ld [hl], l                                    ; $6326: $75

jr_034_6327:
    ld [hl], h                                    ; $6327: $74

Jump_034_6328:
    sbc b                                         ; $6328: $98
    inc bc                                        ; $6329: $03
    rlca                                          ; $632a: $07
    jp nz, $c674                                  ; $632b: $c2 $74 $c6

    inc e                                         ; $632e: $1c
    jp $dd63                                      ; $632f: $c3 $63 $dd


    ld c, a                                       ; $6332: $4f
    pop bc                                        ; $6333: $c1
    ld h, l                                       ; $6334: $65
    ld a, [c]                                     ; $6335: $f2
    and a                                         ; $6336: $a7
    add sp, $4d                                   ; $6337: $e8 $4d
    cp $fd                                        ; $6339: $fe $fd
    inc bc                                        ; $633b: $03
    cp b                                          ; $633c: $b8
    ld [hl], a                                    ; $633d: $77
    sub d                                         ; $633e: $92
    ld l, b                                       ; $633f: $68
    rst $30                                       ; $6340: $f7
    ld [$f229], sp                                ; $6341: $08 $29 $f2
    ld [hl], a                                    ; $6344: $77
    ld l, l                                       ; $6345: $6d
    rst $28                                       ; $6346: $ef
    ld c, $b0                                     ; $6347: $0e $b0
    inc a                                         ; $6349: $3c
    ld d, e                                       ; $634a: $53
    jp nz, $e69b                                  ; $634b: $c2 $9b $e6

    ret                                           ; $634e: $c9


    ld h, c                                       ; $634f: $61
    ld l, c                                       ; $6350: $69
    jr nz, jr_034_6327                            ; $6351: $20 $d4

    or c                                          ; $6353: $b1
    ld e, $92                                     ; $6354: $1e $92
    inc bc                                        ; $6356: $03
    adc h                                         ; $6357: $8c
    sbc $f8                                       ; $6358: $de $f8
    ld [hl], h                                    ; $635a: $74
    ld c, b                                       ; $635b: $48
    sub e                                         ; $635c: $93
    cp $11                                        ; $635d: $fe $11
    ld d, b                                       ; $635f: $50
    sub [hl]                                      ; $6360: $96
    ld a, [hl-]                                   ; $6361: $3a
    ld e, b                                       ; $6362: $58
    add sp, -$1f                                  ; $6363: $e8 $e1
    ld e, b                                       ; $6365: $58
    ld [hl], a                                    ; $6366: $77
    ld e, b                                       ; $6367: $58
    ret z                                         ; $6368: $c8

    cp d                                          ; $6369: $ba
    ld a, [$7b9f]                                 ; $636a: $fa $9f $7b
    cp a                                          ; $636d: $bf
    adc d                                         ; $636e: $8a
    pop hl                                        ; $636f: $e1
    cp [hl]                                       ; $6370: $be
    ret c                                         ; $6371: $d8

    call z, Call_034_6c6f                         ; $6372: $cc $6f $6c
    add c                                         ; $6375: $81
    ld hl, $fa4d                                  ; $6376: $21 $4d $fa
    ret c                                         ; $6379: $d8

    ld d, c                                       ; $637a: $51
    rra                                           ; $637b: $1f
    pop af                                        ; $637c: $f1
    ld a, [hl]                                    ; $637d: $7e
    add hl, bc                                    ; $637e: $09
    sub h                                         ; $637f: $94
    ld a, [hl]                                    ; $6380: $7e
    dec b                                         ; $6381: $05
    add [hl]                                      ; $6382: $86
    adc [hl]                                      ; $6383: $8e
    ccf                                           ; $6384: $3f
    di                                            ; $6385: $f3
    rra                                           ; $6386: $1f

Call_034_6387:
    ld d, b                                       ; $6387: $50
    ret nc                                        ; $6388: $d0

    inc h                                         ; $6389: $24
    ld sp, hl                                     ; $638a: $f9
    db $fc                                        ; $638b: $fc
    jp c, $f1c0                                   ; $638c: $da $c0 $f1

    db $d3                                        ; $638f: $d3
    ld c, $0b                                     ; $6390: $0e $0b
    inc l                                         ; $6392: $2c
    ld c, $24                                     ; $6393: $0e $24
    add d                                         ; $6395: $82
    and l                                         ; $6396: $a5
    ld a, [$0eef]                                 ; $6397: $fa $ef $0e
    ret                                           ; $639a: $c9


    ld bc, $afa3                                  ; $639b: $01 $a3 $af
    sbc $fe                                       ; $639e: $de $fe
    ld l, [hl]                                    ; $63a0: $6e
    add e                                         ; $63a1: $83
    cp a                                          ; $63a2: $bf
    ld a, [hl-]                                   ; $63a3: $3a
    sub $25                                       ; $63a4: $d6 $25
    ld h, d                                       ; $63a6: $62
    or l                                          ; $63a7: $b5
    ld [hl], a                                    ; $63a8: $77
    add $1c                                       ; $63a9: $c6 $1c
    add hl, bc                                    ; $63ab: $09
    db $fc                                        ; $63ac: $fc
    dec [hl]                                      ; $63ad: $35
    and e                                         ; $63ae: $a3
    ld e, a                                       ; $63af: $5f
    or c                                          ; $63b0: $b1
    ld a, $37                                     ; $63b1: $3e $37
    ld hl, sp-$15                                 ; $63b3: $f8 $eb
    ei                                            ; $63b5: $fb
    xor h                                         ; $63b6: $ac
    db $eb                                        ; $63b7: $eb
    ld e, b                                       ; $63b8: $58
    scf                                           ; $63b9: $37
    or [hl]                                       ; $63ba: $b6

Jump_034_63bb:
    jp c, $e1d2                                   ; $63bb: $da $d2 $e1

    or c                                          ; $63be: $b1
    reti                                          ; $63bf: $d9


    rst $18                                       ; $63c0: $df
    inc c                                         ; $63c1: $0c
    rst $18                                       ; $63c2: $df
    and a                                         ; $63c3: $a7
    call nc, $8ccd                                ; $63c4: $d4 $cd $8c
    ld a, [hl]                                    ; $63c7: $7e
    sbc $34                                       ; $63c8: $de $34
    rlca                                          ; $63ca: $07
    inc hl                                        ; $63cb: $23
    add $de                                       ; $63cc: $c6 $de
    push af                                       ; $63ce: $f5
    sub [hl]                                      ; $63cf: $96
    add hl, de                                    ; $63d0: $19
    xor [hl]                                      ; $63d1: $ae
    ld c, $a3                                     ; $63d2: $0e $a3
    dec sp                                        ; $63d4: $3b
    ld b, d                                       ; $63d5: $42
    cp $fd                                        ; $63d6: $fe $fd
    inc bc                                        ; $63d8: $03
    cp b                                          ; $63d9: $b8
    sbc c                                         ; $63da: $99
    ld e, c                                       ; $63db: $59
    ld sp, hl                                     ; $63dc: $f9
    adc d                                         ; $63dd: $8a
    ccf                                           ; $63de: $3f
    rst $28                                       ; $63df: $ef
    adc h                                         ; $63e0: $8c
    add hl, sp                                    ; $63e1: $39
    add hl, bc                                    ; $63e2: $09
    db $fc                                        ; $63e3: $fc
    push af                                       ; $63e4: $f5
    or $77                                        ; $63e5: $f6 $77
    ld a, e                                       ; $63e7: $7b
    ld [hl], e                                    ; $63e8: $73
    xor h                                         ; $63e9: $ac
    ld c, e                                       ; $63ea: $4b
    call nz, Call_034_6f6a                        ; $63eb: $c4 $6a $6f
    sbc d                                         ; $63ee: $9a
    inc bc                                        ; $63ef: $03
    ret                                           ; $63f0: $c9


    rra                                           ; $63f1: $1f
    and c                                         ; $63f2: $a1
    ld e, d                                       ; $63f3: $5a
    dec d                                         ; $63f4: $15
    ld sp, hl                                     ; $63f5: $f9
    cp e                                          ; $63f6: $bb
    or [hl]                                       ; $63f7: $b6
    or c                                          ; $63f8: $b1
    push de                                       ; $63f9: $d5
    sub [hl]                                      ; $63fa: $96
    ld c, $8f                                     ; $63fb: $0e $8f
    call Call_034_66fe                            ; $63fd: $cd $fe $66
    ld hl, sp+$3e                                 ; $6400: $f8 $3e
    and l                                         ; $6402: $a5
    xor $7e                                       ; $6403: $ee $7e
    cp $32                                        ; $6405: $fe $32
    and e                                         ; $6407: $a3
    sbc a                                         ; $6408: $9f
    ld [hl], a                                    ; $6409: $77
    add $26                                       ; $640a: $c6 $26
    ldh a, [$d7]                                  ; $640c: $f0 $d7
    adc h                                         ; $640e: $8c
    ld a, [hl]                                    ; $640f: $7e
    push bc                                       ; $6410: $c5
    ld a, [$c75c]                                 ; $6411: $fa $5c $c7
    ld e, d                                       ; $6414: $5a
    xor d                                         ; $6415: $aa
    dec l                                         ; $6416: $2d
    ld h, l                                       ; $6417: $65
    ld a, [c]                                     ; $6418: $f2
    ld b, a                                       ; $6419: $47
    dec d                                         ; $641a: $15
    cp a                                          ; $641b: $bf
    ld a, c                                       ; $641c: $79
    or l                                          ; $641d: $b5
    or a                                          ; $641e: $b7
    and e                                         ; $641f: $a3
    ccf                                           ; $6420: $3f
    and d                                         ; $6421: $a2
    dec b                                         ; $6422: $05
    rlca                                          ; $6423: $07
    inc e                                         ; $6424: $1c
    sub [hl]                                      ; $6425: $96
    cp [hl]                                       ; $6426: $be
    rrca                                          ; $6427: $0f
    ldh [rNR30], a                                ; $6428: $e0 $1a
    xor $1f                                       ; $642a: $ee $1f
    ei                                            ; $642c: $fb
    rst $30                                       ; $642d: $f7
    ld e, h                                       ; $642e: $5c
    db $fd                                        ; $642f: $fd
    or c                                          ; $6430: $b1
    reti                                          ; $6431: $d9


    ld e, a                                       ; $6432: $5f
    ld [hl], d                                    ; $6433: $72
    rst $30                                       ; $6434: $f7
    di                                            ; $6435: $f3
    ld d, a                                       ; $6436: $57
    rst $00                                       ; $6437: $c7
    ld e, d                                       ; $6438: $5a
    ld a, [hl-]                                   ; $6439: $3a
    ld b, d                                       ; $643a: $42
    cp $fd                                        ; $643b: $fe $fd
    inc bc                                        ; $643d: $03
    cp b                                          ; $643e: $b8
    ld e, a                                       ; $643f: $5f
    ld hl, $97fe                                  ; $6440: $21 $fe $97
    halt                                          ; $6443: $76
    sbc $30                                       ; $6444: $de $30
    and l                                         ; $6446: $a5
    ld c, $fe                                     ; $6447: $0e $fe
    and b                                         ; $6449: $a0
    or a                                          ; $644a: $b7
    cp a                                          ; $644b: $bf
    adc e                                         ; $644c: $8b
    ld d, b                                       ; $644d: $50
    xor l                                         ; $644e: $ad
    cp d                                          ; $644f: $ba
    rla                                           ; $6450: $17
    ld a, a                                       ; $6451: $7f
    ld [hl], l                                    ; $6452: $75
    db $ec                                        ; $6453: $ec
    pop af                                        ; $6454: $f1
    ld l, c                                       ; $6455: $69
    rst $30                                       ; $6456: $f7
    di                                            ; $6457: $f3
    add a                                         ; $6458: $87
    ld a, [hl]                                    ; $6459: $7e
    sbc $34                                       ; $645a: $de $34
    rlca                                          ; $645c: $07
    and e                                         ; $645d: $a3
    ccf                                           ; $645e: $3f
    halt                                          ; $645f: $76
    ret nc                                        ; $6460: $d0

    add d                                         ; $6461: $82
    ldh [rTAC], a                                 ; $6462: $e0 $07
    dec a                                         ; $6464: $3d
    cp $56                                        ; $6465: $fe $56
    dec l                                         ; $6467: $2d
    ld e, b                                       ; $6468: $58
    ld [$1f58], a                                 ; $6469: $ea $58 $1f
    dec a                                         ; $646c: $3d
    ld h, l                                       ; $646d: $65
    call nc, $bc47                                ; $646e: $d4 $47 $bc
    ld e, a                                       ; $6471: $5f
    ld [bc], a                                    ; $6472: $02
    db $e3                                        ; $6473: $e3
    rst $08                                       ; $6474: $cf
    sbc b                                         ; $6475: $98
    inc bc                                        ; $6476: $03
    add hl, bc                                    ; $6477: $09
    db $fc                                        ; $6478: $fc
    push af                                       ; $6479: $f5
    and $5d                                       ; $647a: $e6 $5d
    rst $30                                       ; $647c: $f7
    ld [hl], b                                    ; $647d: $70
    ld l, h                                       ; $647e: $6c
    ld b, a                                       ; $647f: $47
    ld a, l                                       ; $6480: $7d
    call nz, Call_000_25fb                        ; $6481: $c4 $fb $25
    ld [hl], b                                    ; $6484: $70
    xor $67                                       ; $6485: $ee $67

jr_034_6487:
    dec l                                         ; $6487: $2d
    db $dd                                        ; $6488: $dd
    ldh [rIF], a                                  ; $6489: $e0 $0f
    xor d                                         ; $648b: $aa
    dec e                                         ; $648c: $1d
    adc e                                         ; $648d: $8b
    ld l, c                                       ; $648e: $69
    ld c, $b3                                     ; $648f: $0e $b3
    dec sp                                        ; $6491: $3b
    or $dc                                        ; $6492: $f6 $dc
    sbc e                                         ; $6494: $9b
    ld h, e                                       ; $6495: $63
    db $dd                                        ; $6496: $dd
    and c                                         ; $6497: $a1
    ld l, a                                       ; $6498: $6f
    push de                                       ; $6499: $d5
    ld h, [hl]                                    ; $649a: $66
    ld l, c                                       ; $649b: $69
    ld c, $b3                                     ; $649c: $0e $b3
    dec sp                                        ; $649e: $3b
    or $dc                                        ; $649f: $f6 $dc
    ldh [$af], a                                  ; $64a1: $e0 $af
    scf                                           ; $64a3: $37
    rst $28                                       ; $64a4: $ef
    cp d                                          ; $64a5: $ba
    add $6e                                       ; $64a6: $c6 $6e
    ldh a, [rTAC]                                 ; $64a8: $f0 $07
    ld l, c                                       ; $64aa: $69
    ld c, $f3                                     ; $64ab: $0e $f3
    ld e, d                                       ; $64ad: $5a
    ld d, b                                       ; $64ae: $50
    pop af                                        ; $64af: $f1
    rst $20                                       ; $64b0: $e7
    ld a, [de]                                    ; $64b1: $1a
    ld a, e                                       ; $64b2: $7b
    ld a, h                                       ; $64b3: $7c
    jp c, $a023                                   ; $64b4: $da $23 $a0

    and a                                         ; $64b7: $a7
    jr nc, jr_034_6487                            ; $64b8: $30 $cd

    xor a                                         ; $64ba: $af
    push de                                       ; $64bb: $d5
    sbc l                                         ; $64bc: $9d
    db $eb                                        ; $64bd: $eb
    add e                                         ; $64be: $83
    rst $00                                       ; $64bf: $c7
    ld c, a                                       ; $64c0: $4f
    sbc e                                         ; $64c1: $9b
    db $f4                                        ; $64c2: $f4
    or c                                          ; $64c3: $b1
    rst $30                                       ; $64c4: $f7
    db $10                                        ; $64c5: $10
    ld e, l                                       ; $64c6: $5d
    inc c                                         ; $64c7: $0c
    cp $2c                                        ; $64c8: $fe $2c
    ld b, l                                       ; $64ca: $45
    adc b                                         ; $64cb: $88
    db $e3                                        ; $64cc: $e3
    ldh a, [$a6]                                  ; $64cd: $f0 $a6
    add hl, sp                                    ; $64cf: $39
    or e                                          ; $64d0: $b3
    dec sp                                        ; $64d1: $3b
    or $dc                                        ; $64d2: $f6 $dc
    rst $30                                       ; $64d4: $f7
    ld e, c                                       ; $64d5: $59
    ld [hl], a                                    ; $64d6: $77
    cpl                                           ; $64d7: $2f
    cp $ba                                        ; $64d8: $fe $ba
    pop hl                                        ; $64da: $e1
    ld a, [de]                                    ; $64db: $1a
    xor $1f                                       ; $64dc: $ee $1f
    xor e                                         ; $64de: $ab
    rst $38                                       ; $64df: $ff
    ldh [$b5], a                                  ; $64e0: $e0 $b5
    call $c6fc                                    ; $64e2: $cd $fc $c6
    ld d, $48                                     ; $64e5: $16 $48
    ld [hl], e                                    ; $64e7: $73
    ret                                           ; $64e8: $c9


    sbc a                                         ; $64e9: $9f
    jp nc, Jump_034_5ceb                          ; $64ea: $d2 $eb $5c

    db $fd                                        ; $64ed: $fd
    rlc [hl]                                      ; $64ee: $cb $06
    ld b, d                                       ; $64f0: $42
    or l                                          ; $64f1: $b5
    ld [$bfa9], a                                 ; $64f2: $ea $a9 $bf
    rst $30                                       ; $64f5: $f7
    or b                                          ; $64f6: $b0
    or [hl]                                       ; $64f7: $b6
    and h                                         ; $64f8: $a4
    add hl, sp                                    ; $64f9: $39
    inc sp                                        ; $64fa: $33
    rst $38                                       ; $64fb: $ff
    ld bc, $4d05                                  ; $64fc: $01 $05 $4d

jr_034_64ff:
    sub d                                         ; $64ff: $92
    rst $08                                       ; $6500: $cf
    xor a                                         ; $6501: $af
    dec c                                         ; $6502: $0d
    inc e                                         ; $6503: $1c
    sub d                                         ; $6504: $92
    inc bc                                        ; $6505: $03
    and e                                         ; $6506: $a3
    add e                                         ; $6507: $83
    jp nc, Jump_034_75db                          ; $6508: $d2 $db $75

    inc e                                         ; $650b: $1c
    sbc $c6                                       ; $650c: $de $c6
    sub [hl]                                      ; $650e: $96
    ld d, c                                       ; $650f: $51
    add $10                                       ; $6510: $c6 $10
    ld b, h                                       ; $6512: $44
    xor h                                         ; $6513: $ac
    cp [hl]                                       ; $6514: $be
    db $e4                                        ; $6515: $e4
    call c, $b1c3                                 ; $6516: $dc $c3 $b1
    dec e                                         ; $6519: $1d
    ld b, c                                       ; $651a: $41
    dec e                                         ; $651b: $1d
    ld l, e                                       ; $651c: $6b
    ld c, c                                       ; $651d: $49
    set 5, b                                      ; $651e: $cb $e8
    rst $10                                       ; $6520: $d7
    rla                                           ; $6521: $17
    db $eb                                        ; $6522: $eb
    ret c                                         ; $6523: $d8

    inc [hl]                                      ; $6524: $34
    rlca                                          ; $6525: $07
    ret                                           ; $6526: $c9


    sbc a                                         ; $6527: $9f
    jp nc, $cd2b                                  ; $6528: $d2 $2b $cd

    ld bc, $83a3                                  ; $652b: $01 $a3 $83
    jp nc, Jump_034_75db                          ; $652e: $d2 $db $75

    inc e                                         ; $6531: $1c
    sbc $c6                                       ; $6532: $de $c6
    ld [hl], $f9                                  ; $6534: $36 $f9
    dec hl                                        ; $6536: $2b
    inc l                                         ; $6537: $2c
    and e                                         ; $6538: $a3
    adc h                                         ; $6539: $8c
    ld hl, $5888                                  ; $653a: $21 $88 $58
    ld a, l                                       ; $653d: $7d
    ld c, c                                       ; $653e: $49
    ld e, d                                       ; $653f: $5a
    ld b, [hl]                                    ; $6540: $46
    cp a                                          ; $6541: $bf
    cp [hl]                                       ; $6542: $be
    ld e, b                                       ; $6543: $58
    rst $00                                       ; $6544: $c7
    sbc [hl]                                      ; $6545: $9e
    ld a, e                                       ; $6546: $7b
    jr c, jr_034_64ff                             ; $6547: $38 $b6

    inc hl                                        ; $6549: $23
    xor b                                         ; $654a: $a8
    ld h, e                                       ; $654b: $63
    dec l                                         ; $654c: $2d
    ld l, c                                       ; $654d: $69
    ld c, $f3                                     ; $654e: $0e $f3
    ld e, d                                       ; $6550: $5a
    or d                                          ; $6551: $b2
    ld b, b                                       ; $6552: $40
    db $ec                                        ; $6553: $ec
    ld b, $7f                                     ; $6554: $06 $7f
    ld [hl], b                                    ; $6556: $70
    xor [hl]                                      ; $6557: $ae
    cp $88                                        ; $6558: $fe $88
    dec e                                         ; $655a: $1d
    push af                                       ; $655b: $f5
    ld de, $97ef                                  ; $655c: $11 $ef $97
    ld b, b                                       ; $655f: $40
    jp hl                                         ; $6560: $e9


    ld d, a                                       ; $6561: $57
    ld h, b                                       ; $6562: $60
    add sp, -$08                                  ; $6563: $e8 $f8
    inc sp                                        ; $6565: $33
    rst $38                                       ; $6566: $ff
    ld bc, $4d05                                  ; $6567: $01 $05 $4d
    sub d                                         ; $656a: $92
    rst $08                                       ; $656b: $cf
    xor a                                         ; $656c: $af
    dec c                                         ; $656d: $0d
    inc e                                         ; $656e: $1c
    ccf                                           ; $656f: $3f
    call $c901                                    ; $6570: $cd $01 $c9
    or c                                          ; $6573: $b1
    adc [hl]                                      ; $6574: $8e
    db $ed                                        ; $6575: $ed
    ld de, $1d50                                  ; $6576: $11 $50 $1d
    ld [hl], d                                    ; $6579: $72
    xor $e1                                       ; $657a: $ee $e1
    ret c                                         ; $657c: $d8

    adc [hl]                                      ; $657d: $8e
    and b                                         ; $657e: $a0
    adc [hl]                                      ; $657f: $8e
    or l                                          ; $6580: $b5
    and h                                         ; $6581: $a4
    add hl, sp                                    ; $6582: $39
    and e                                         ; $6583: $a3
    add e                                         ; $6584: $83
    jp nc, Jump_034_75db                          ; $6585: $d2 $db $75

    inc e                                         ; $6588: $1c
    sbc $c6                                       ; $6589: $de $c6
    sub [hl]                                      ; $658b: $96
    ld d, c                                       ; $658c: $51
    add $10                                       ; $658d: $c6 $10
    ld b, h                                       ; $658f: $44
    xor h                                         ; $6590: $ac
    cp [hl]                                       ; $6591: $be
    db $e4                                        ; $6592: $e4
    call c, Call_000_2fe4                         ; $6593: $dc $e4 $2f
    ld [hl-], a                                   ; $6596: $32
    ld h, [hl]                                    ; $6597: $66
    ld c, b                                       ; $6598: $48
    rrc h                                         ; $6599: $cb $0c
    cp a                                          ; $659b: $bf
    ld [$afe0], a                                 ; $659c: $ea $e0 $af
    xor e                                         ; $659f: $ab
    and h                                         ; $65a0: $a4
    ld [$7348], a                                 ; $65a1: $ea $48 $73
    add hl, bc                                    ; $65a4: $09
    db $fc                                        ; $65a5: $fc

Call_034_65a6:
    sub l                                         ; $65a6: $95
    adc l                                         ; $65a7: $8d
    dec l                                         ; $65a8: $2d
    ld e, [hl]                                    ; $65a9: $5e
    dec h                                         ; $65aa: $25
    db $e4                                        ; $65ab: $e4
    ld a, d                                       ; $65ac: $7a
    rst $20                                       ; $65ad: $e7

Call_034_65ae:
    ld [$d88f], a                                 ; $65ae: $ea $8f $d8
    ldh [$af], a                                  ; $65b1: $e0 $af
    ld e, [hl]                                    ; $65b3: $5e
    ld c, l                                       ; $65b4: $4d
    add e                                         ; $65b5: $83
    cp a                                          ; $65b6: $bf
    cp [hl]                                       ; $65b7: $be
    or b                                          ; $65b8: $b0
    db $f4                                        ; $65b9: $f4
    ld l, a                                       ; $65ba: $6f

Jump_034_65bb:
    and $db                                       ; $65bb: $e6 $db
    ld [hl], l                                    ; $65bd: $75
    inc e                                         ; $65be: $1c
    sbc $b2                                       ; $65bf: $de $b2
    or c                                          ; $65c1: $b1
    ld l, c                                       ; $65c2: $69
    ld c, $a3                                     ; $65c3: $0e $a3
    xor a                                         ; $65c5: $af
    ld h, [hl]                                    ; $65c6: $66
    ld a, [hl]                                    ; $65c7: $7e
    ld [$aad5], sp                                ; $65c8: $08 $d5 $aa
    cpl                                           ; $65cb: $2f
    halt                                          ; $65cc: $76
    add $36                                       ; $65cd: $c6 $36
    jp hl                                         ; $65cf: $e9


    ld [de], a                                    ; $65d0: $12
    ld l, b                                       ; $65d1: $68
    jr nz, jr_034_6628                            ; $65d2: $20 $54

    ld e, e                                       ; $65d4: $5b
    jp z, $8fe4                                   ; $65d5: $ca $e4 $8f

    ld a, [hl]                                    ; $65d8: $7e
    ld [bc], a                                    ; $65d9: $02
    rst $38                                       ; $65da: $ff
    and a                                         ; $65db: $a7
    push de                                       ; $65dc: $d5
    sub [hl]                                      ; $65dd: $96
    adc [hl]                                      ; $65de: $8e
    ld c, h                                       ; $65df: $4c
    call nc, Call_034_79fc                        ; $65e0: $d4 $fc $79
    add a                                         ; $65e3: $87
    or h                                          ; $65e4: $b4
    or e                                          ; $65e5: $b3
    xor d                                         ; $65e6: $aa
    call $d5bc                                    ; $65e7: $cd $bc $d5
    inc h                                         ; $65ea: $24
    ld hl, $d5bc                                  ; $65eb: $21 $bc $d5
    cp a                                          ; $65ee: $bf
    ld b, e                                       ; $65ef: $43
    rst $20                                       ; $65f0: $e7
    sbc c                                         ; $65f1: $99
    and l                                         ; $65f2: $a5
    inc hl                                        ; $65f3: $23
    add [hl]                                      ; $65f4: $86
    daa                                           ; $65f5: $27
    call z, Call_034_7c3e                         ; $65f6: $cc $3e $7c
    or $ce                                        ; $65f9: $f6 $ce
    ld [hl-], a                                   ; $65fb: $32
    ld [hl], h                                    ; $65fc: $74
    or [hl]                                       ; $65fd: $b6
    reti                                          ; $65fe: $d9


    ld a, [$1d62]                                 ; $65ff: $fa $62 $1d
    dec sp                                        ; $6602: $3b
    inc h                                         ; $6603: $24
    rlca                                          ; $6604: $07
    call z, $abf0                                 ; $6605: $cc $f0 $ab
    ld c, $a9                                     ; $6608: $0e $a9
    ld e, d                                       ; $660a: $5a
    sub $3a                                       ; $660b: $d6 $3a
    ld [hl], $83                                  ; $660d: $36 $83
    ld [$1370], a                                 ; $660f: $ea $70 $13
    sub [hl]                                      ; $6612: $96
    cp b                                          ; $6613: $b8
    db $e4                                        ; $6614: $e4
    ld hl, sp+$10                                 ; $6615: $f8 $10
    rst $10                                       ; $6617: $d7
    ld [hl+], a                                   ; $6618: $22
    ld a, h                                       ; $6619: $7c
    jp nz, Jump_034_7fb4                          ; $661a: $c2 $b4 $7f

    db $d3                                        ; $661d: $d3
    inc e                                         ; $661e: $1c
    ld c, c                                       ; $661f: $49
    xor d                                         ; $6620: $aa
    or a                                          ; $6621: $b7
    cp a                                          ; $6622: $bf
    adc e                                         ; $6623: $8b
    ld d, b                                       ; $6624: $50
    rst $00                                       ; $6625: $c7
    cp d                                          ; $6626: $ba
    reti                                          ; $6627: $d9


jr_034_6628:
    ld e, a                                       ; $6628: $5f
    or d                                          ; $6629: $b2
    dec sp                                        ; $662a: $3b
    jp nc, $b99b                                  ; $662b: $d2 $9b $b9

    db $e3                                        ; $662e: $e3
    ld c, d                                       ; $662f: $4a
    ld h, [hl]                                    ; $6630: $66
    add hl, hl                                    ; $6631: $29
    db $eb                                        ; $6632: $eb
    db $db                                        ; $6633: $db
    ld [hl], l                                    ; $6634: $75
    inc e                                         ; $6635: $1c
    sbc $73                                       ; $6636: $de $73
    rst $28                                       ; $6638: $ef
    sbc $ad                                       ; $6639: $de $ad
    ld d, [hl]                                    ; $663b: $56
    ld h, l                                       ; $663c: $65
    sub h                                         ; $663d: $94
    ld sp, $1104                                  ; $663e: $31 $04 $11
    xor e                                         ; $6641: $ab
    cpl                                           ; $6642: $2f
    jp hl                                         ; $6643: $e9


    ld a, [hl]                                    ; $6644: $7e
    cp $00                                        ; $6645: $fe $00
    dec sp                                        ; $6647: $3b
    ld l, b                                       ; $6648: $68
    and c                                         ; $6649: $a1
    adc c                                         ; $664a: $89
    adc b                                         ; $664b: $88
    ret nc                                        ; $664c: $d0

    inc [hl]                                      ; $664d: $34
    ld c, l                                       ; $664e: $4d
    ld l, e                                       ; $664f: $6b
    inc l                                         ; $6650: $2c
    ld a, [hl-]                                   ; $6651: $3a
    xor d                                         ; $6652: $aa
    cp l                                          ; $6653: $bd
    ld a, e                                       ; $6654: $7b
    xor [hl]                                      ; $6655: $ae
    ld d, [hl]                                    ; $6656: $56
    and l                                         ; $6657: $a5
    adc c                                         ; $6658: $89
    adc b                                         ; $6659: $88
    ld d, b                                       ; $665a: $50

Jump_034_665b:
    dec e                                         ; $665b: $1d
    db $fc                                        ; $665c: $fc
    push de                                       ; $665d: $d5
    or c                                          ; $665e: $b1
    call nz, $afe7                                ; $665f: $c4 $e7 $af
    dec de                                        ; $6662: $1b
    db $fc                                        ; $6663: $fc
    ld b, c                                       ; $6664: $41
    dec l                                         ; $6665: $2d
    rst $30                                       ; $6666: $f7
    ld b, b                                       ; $6667: $40
    cp $bc                                        ; $6668: $fe $bc
    ld l, c                                       ; $666a: $69
    ld c, $09                                     ; $666b: $0e $09
    db $fc                                        ; $666d: $fc
    push af                                       ; $666e: $f5
    ld e, l                                       ; $666f: $5d
    inc b                                         ; $6670: $04
    pop hl                                        ; $6671: $e1
    ld [hl], e                                    ; $6672: $73
    push af                                       ; $6673: $f5
    ld b, a                                       ; $6674: $47
    db $ec                                        ; $6675: $ec
    dec a                                         ; $6676: $3d
    and h                                         ; $6677: $a4
    ld a, [hl-]                                   ; $6678: $3a
    adc h                                         ; $6679: $8c
    add $ce                                       ; $667a: $c6 $ce
    ld a, [$549f]                                 ; $667c: $fa $9f $54
    ld a, e                                       ; $667f: $7b
    sbc e                                         ; $6680: $9b
    db $fc                                        ; $6681: $fc
    dec d                                         ; $6682: $15
    ld c, $5c                                     ; $6683: $0e $5c
    or a                                          ; $6685: $b7
    ld c, a                                       ; $6686: $4f
    sbc e                                         ; $6687: $9b
    ld sp, hl                                     ; $6688: $f9
    ld e, $bb                                     ; $6689: $1e $bb
    sbc $b4                                       ; $668b: $de $b4
    ld h, l                                       ; $668d: $65
    jp nc, $f031                                  ; $668e: $d2 $31 $f0

    inc l                                         ; $6691: $2c
    or c                                          ; $6692: $b1
    ld a, l                                       ; $6693: $7d
    rra                                           ; $6694: $1f
    ld a, d                                       ; $6695: $7a
    xor d                                         ; $6696: $aa
    add c                                         ; $6697: $81
    inc c                                         ; $6698: $0c
    ld b, l                                       ; $6699: $45
    cp $ae                                        ; $669a: $fe $ae
    dec l                                         ; $669c: $2d
    sbc d                                         ; $669d: $9a
    ccf                                           ; $669e: $3f
    db $ec                                        ; $669f: $ec
    xor h                                         ; $66a0: $ac
    rst $38                                       ; $66a1: $ff
    adc c                                         ; $66a2: $89
    ei                                            ; $66a3: $fb
    ld h, d                                       ; $66a4: $62
    pop bc                                        ; $66a5: $c1
    ld [c], a                                     ; $66a6: $e2
    ret c                                         ; $66a7: $d8

    cp a                                          ; $66a8: $bf
    jp c, $ccd2                                   ; $66a9: $da $d2 $cc

    rst $30                                       ; $66ac: $f7
    ld l, e                                       ; $66ad: $6b
    rst $10                                       ; $66ae: $d7
    dec sp                                        ; $66af: $3b
    inc h                                         ; $66b0: $24
    rlca                                          ; $66b1: $07
    ld c, c                                       ; $66b2: $49
    pop hl                                        ; $66b3: $e1
    ld [hl-], a                                   ; $66b4: $32
    ld b, c                                       ; $66b5: $41
    xor l                                         ; $66b6: $ad
    or $66                                        ; $66b7: $f6 $66
    inc [hl]                                      ; $66b9: $34
    ld de, $8d2d                                  ; $66ba: $11 $2d $8d
    xor l                                         ; $66bd: $ad
    or [hl]                                       ; $66be: $b6
    ld [hl], h                                    ; $66bf: $74
    ld a, b                                       ; $66c0: $78
    ld l, h                                       ; $66c1: $6c
    or $37                                        ; $66c2: $f6 $37
    jp $29f7                                      ; $66c4: $c3 $f7 $29


    ld [hl], l                                    ; $66c7: $75
    ret                                           ; $66c8: $c9


    adc [hl]                                      ; $66c9: $8e
    call z, $ed5b                                 ; $66ca: $cc $5b $ed
    xor l                                         ; $66cd: $ad
    or [hl]                                       ; $66ce: $b6
    sub b                                         ; $66cf: $90
    dec e                                         ; $66d0: $1d
    db $10                                        ; $66d1: $10
    sbc c                                         ; $66d2: $99
    or a                                          ; $66d3: $b7
    and e                                         ; $66d4: $a3
    call nc, $c0de                                ; $66d5: $d4 $de $c0
    ld [$757f], sp                                ; $66d8: $08 $7f $75
    rst $38                                       ; $66db: $ff
    and [hl]                                      ; $66dc: $a6
    add hl, sp                                    ; $66dd: $39
    add hl, bc                                    ; $66de: $09
    db $fc                                        ; $66df: $fc
    push af                                       ; $66e0: $f5
    ld a, l                                       ; $66e1: $7d
    sub $cd                                       ; $66e2: $d6 $cd
    db $fc                                        ; $66e4: $fc
    add $16                                       ; $66e5: $c6 $16
    jr c, jr_034_6740                             ; $66e7: $38 $57

    ld a, a                                       ; $66e9: $7f
    call nz, $f062                                ; $66ea: $c4 $62 $f0
    rst $10                                       ; $66ed: $d7
    jr c, jr_034_672a                             ; $66ee: $38 $3a

    ld d, h                                       ; $66f0: $54
    ld de, $785e                                  ; $66f1: $11 $5e $78
    sbc a                                         ; $66f4: $9f
    ld [bc], a                                    ; $66f5: $02
    jp z, Jump_034_4757                           ; $66f6: $ca $57 $47

    or l                                          ; $66f9: $b5
    and l                                         ; $66fa: $a5
    or e                                          ; $66fb: $b3
    ld sp, hl                                     ; $66fc: $f9
    adc c                                         ; $66fd: $89

Call_034_66fe:
    and l                                         ; $66fe: $a5
    adc [hl]                                      ; $66ff: $8e
    ld [hl], l                                    ; $6700: $75
    ld b, a                                       ; $6701: $47
    inc b                                         ; $6702: $04
    add d                                         ; $6703: $82
    ld a, e                                       ; $6704: $7b
    inc b                                         ; $6705: $04
    sub h                                         ; $6706: $94
    dec [hl]                                      ; $6707: $35
    ld a, [c]                                     ; $6708: $f2
    ld b, a                                       ; $6709: $47
    ld a, a                                       ; $670a: $7f
    or [hl]                                       ; $670b: $b6
    rst $38                                       ; $670c: $ff
    dec e                                         ; $670d: $1d
    ldh [$2d], a                                  ; $670e: $e0 $2d
    and e                                         ; $6710: $a3
    inc sp                                        ; $6711: $33
    cpl                                           ; $6712: $2f
    ld b, d                                       ; $6713: $42
    ld [c], a                                     ; $6714: $e2
    ld l, d                                       ; $6715: $6a
    ld l, a                                       ; $6716: $6f
    ld e, c                                       ; $6717: $59
    inc de                                        ; $6718: $13
    or c                                          ; $6719: $b1
    jp c, $b690                                   ; $671a: $da $90 $b6

    add hl, bc                                    ; $671d: $09
    db $fc                                        ; $671e: $fc
    push af                                       ; $671f: $f5
    ld l, [hl]                                    ; $6720: $6e
    nop                                           ; $6721: $00
    sbc a                                         ; $6722: $9f
    xor e                                         ; $6723: $ab
    ccf                                           ; $6724: $3f
    ld h, d                                       ; $6725: $62
    adc a                                         ; $6726: $8f
    cp a                                          ; $6727: $bf
    push de                                       ; $6728: $d5
    cp a                                          ; $6729: $bf

jr_034_672a:
    sbc a                                         ; $672a: $9f
    ld d, d                                       ; $672b: $52
    set 7, e                                      ; $672c: $cb $fb
    xor e                                         ; $672e: $ab
    dec sp                                        ; $672f: $3b
    ld c, h                                       ; $6730: $4c
    cp [hl]                                       ; $6731: $be
    ld [c], a                                     ; $6732: $e2
    adc a                                         ; $6733: $8f
    db $fd                                        ; $6734: $fd
    ld h, d                                       ; $6735: $62
    inc l                                         ; $6736: $2c
    ld de, $bdab                                  ; $6737: $11 $ab $bd
    cp l                                          ; $673a: $bd
    db $fd                                        ; $673b: $fd
    db $dd                                        ; $673c: $dd
    inc [hl]                                      ; $673d: $34
    rlca                                          ; $673e: $07
    add hl, bc                                    ; $673f: $09

jr_034_6740:
    ld e, e                                       ; $6740: $5b
    ld l, l                                       ; $6741: $6d
    xor c                                         ; $6742: $a9
    dec b                                         ; $6743: $05
    pop bc                                        ; $6744: $c1
    ld e, e                                       ; $6745: $5b
    ld h, $7f                                     ; $6746: $26 $7f
    adc d                                         ; $6748: $8a
    ld [hl+], a                                   ; $6749: $22
    xor b                                         ; $674a: $a8
    push de                                       ; $674b: $d5
    xor $fb                                       ; $674c: $ee $fb
    xor h                                         ; $674e: $ac
    or a                                          ; $674f: $b7
    rst $30                                       ; $6750: $f7
    sub b                                         ; $6751: $90
    adc $b3                                       ; $6752: $ce $b3
    ld h, b                                       ; $6754: $60
    sub c                                         ; $6755: $91
    ldh [rIF], a                                  ; $6756: $e0 $0f
    ld a, d                                       ; $6758: $7a
    inc b                                         ; $6759: $04
    sub h                                         ; $675a: $94
    cp c                                          ; $675b: $b9
    ld a, a                                       ; $675c: $7f
    ret nz                                        ; $675d: $c0

    ld c, l                                       ; $675e: $4d
    db $d3                                        ; $675f: $d3
    or h                                          ; $6760: $b4
    ld l, d                                       ; $6761: $6a
    ld [hl], l                                    ; $6762: $75
    or l                                          ; $6763: $b5
    or a                                          ; $6764: $b7
    ld c, h                                       ; $6765: $4c
    ld a, [hl-]                                   ; $6766: $3a
    ld b, $9e                                     ; $6767: $06 $9e
    dec h                                         ; $6769: $25
    ld d, $87                                     ; $676a: $16 $87
    db $e4                                        ; $676c: $e4
    di                                            ; $676d: $f3
    ld e, d                                       ; $676e: $5a
    ld l, [hl]                                    ; $676f: $6e
    ld e, a                                       ; $6770: $5f
    ld de, $bc1d                                  ; $6771: $11 $1d $bc
    or [hl]                                       ; $6774: $b6
    ld c, h                                       ; $6775: $4c
    jp nc, $9138                                  ; $6776: $d2 $38 $91

    db $dd                                        ; $6779: $dd
    inc e                                         ; $677a: $1c
    ldh [rKEY1], a                                ; $677b: $e0 $4d
    db $db                                        ; $677d: $db
    ld e, c                                       ; $677e: $59
    ld a, [hl]                                    ; $677f: $7e
    adc b                                         ; $6780: $88
    dec sp                                        ; $6781: $3b
    ld c, d                                       ; $6782: $4a
    inc e                                         ; $6783: $1c
    add sp, -$4c                                  ; $6784: $e8 $b4
    ld h, l                                       ; $6786: $65
    inc [hl]                                      ; $6787: $34
    reti                                          ; $6788: $d9


    pop bc                                        ; $6789: $c1
    rst $18                                       ; $678a: $df
    ld a, [de]                                    ; $678b: $1a
    and [hl]                                      ; $678c: $a6
    rst $28                                       ; $678d: $ef
    inc l                                         ; $678e: $2c
    ld h, d                                       ; $678f: $62
    ld e, l                                       ; $6790: $5d
    or l                                          ; $6791: $b5
    cp d                                          ; $6792: $ba
    adc h                                         ; $6793: $8c
    cp [hl]                                       ; $6794: $be
    inc h                                         ; $6795: $24
    ld [hl], e                                    ; $6796: $73
    ld b, a                                       ; $6797: $47
    ei                                            ; $6798: $fb
    inc hl                                        ; $6799: $23
    push af                                       ; $679a: $f5
    sbc b                                         ; $679b: $98
    inc [hl]                                      ; $679c: $34
    rlca                                          ; $679d: $07
    inc hl                                        ; $679e: $23
    dec h                                         ; $679f: $25
    db $ed                                        ; $67a0: $ed
    inc l                                         ; $67a1: $2c
    ld b, c                                       ; $67a2: $41
    ld sp, hl                                     ; $67a3: $f9
    dec sp                                        ; $67a4: $3b
    ld d, a                                       ; $67a5: $57
    ld e, e                                       ; $67a6: $5b
    sbc d                                         ; $67a7: $9a
    db $fc                                        ; $67a8: $fc
    dec d                                         ; $67a9: $15
    ld e, $0e                                     ; $67aa: $1e $0e
    inc b                                         ; $67ac: $04
    res 7, c                                      ; $67ad: $cb $b9
    rst $00                                       ; $67af: $c7
    ret c                                         ; $67b0: $d8

    db $fc                                        ; $67b1: $fc
    add c                                         ; $67b2: $81
    ei                                            ; $67b3: $fb
    add hl, hl                                    ; $67b4: $29
    ld [hl], l                                    ; $67b5: $75
    push af                                       ; $67b6: $f5
    sub a                                         ; $67b7: $97
    cp a                                          ; $67b8: $bf
    or l                                          ; $67b9: $b5
    call nz, Call_034_65ae                        ; $67ba: $c4 $ae $65
    rst $08                                       ; $67bd: $cf
    push de                                       ; $67be: $d5
    rra                                           ; $67bf: $1f
    or c                                          ; $67c0: $b1
    or c                                          ; $67c1: $b1
    push de                                       ; $67c2: $d5
    sbc $8e                                       ; $67c3: $de $8e
    ld a, [$bd0a]                                 ; $67c5: $fa $0a $bd
    db $fd                                        ; $67c8: $fd
    adc d                                         ; $67c9: $8a
    xor b                                         ; $67ca: $a8
    or $96                                        ; $67cb: $f6 $96
    ld sp, $3371                                  ; $67cd: $31 $71 $33
    ld l, a                                       ; $67d0: $6f
    scf                                           ; $67d1: $37
    ld hl, sp-$7d                                 ; $67d2: $f8 $83
    ld h, [hl]                                    ; $67d4: $66
    ld h, $7f                                     ; $67d5: $26 $7f
    push bc                                       ; $67d7: $c5
    ld e, d                                       ; $67d8: $5a
    and b                                         ; $67d9: $a0
    ld [hl], a                                    ; $67da: $77
    adc e                                         ; $67db: $8b
    or $56                                        ; $67dc: $f6 $56
    ld a, a                                       ; $67de: $7f
    ld hl, $76d2                                  ; $67df: $21 $d2 $76
    or h                                          ; $67e2: $b4
    and l                                         ; $67e3: $a5
    sbc c                                         ; $67e4: $99
    inc sp                                        ; $67e5: $33
    ld l, a                                       ; $67e6: $6f
    ld [hl], l                                    ; $67e7: $75
    jr @-$21                                      ; $67e8: $18 $dd

    ld a, c                                       ; $67ea: $79
    cpl                                           ; $67eb: $2f
    ld b, c                                       ; $67ec: $41
    cp $24                                        ; $67ed: $fe $24
    ld [$a0e8], sp                                ; $67ef: $08 $e8 $a0
    dec b                                         ; $67f2: $05
    ld h, c                                       ; $67f3: $61
    db $ec                                        ; $67f4: $ec
    ld [hl], c                                    ; $67f5: $71
    ldh [$dc], a                                  ; $67f6: $e0 $dc
    ld a, e                                       ; $67f8: $7b
    adc b                                         ; $67f9: $88
    xor $11                                       ; $67fa: $ee $11
    ld d, b                                       ; $67fc: $50
    rst $00                                       ; $67fd: $c7
    ld a, [$28e8]                                 ; $67fe: $fa $e8 $28
    or l                                          ; $6801: $b5
    scf                                           ; $6802: $37
    ldh a, [$67]                                  ; $6803: $f0 $67
    ret                                           ; $6805: $c9


    ld a, [hl+]                                   ; $6806: $2a
    dec hl                                        ; $6807: $2b
    ld l, e                                       ; $6808: $6b
    inc b                                         ; $6809: $04
    ld sp, hl                                     ; $680a: $f9
    inc b                                         ; $680b: $04
    and h                                         ; $680c: $a4
    add hl, sp                                    ; $680d: $39
    jp $81b1                                      ; $680e: $c3 $b1 $81


    ret nc                                        ; $6811: $d0

    ld b, c                                       ; $6812: $41
    dec bc                                        ; $6813: $0b
    ld a, e                                       ; $6814: $7b
    add c                                         ; $6815: $81
    rst $30                                       ; $6816: $f7
    ld e, h                                       ; $6817: $5c
    db $ed                                        ; $6818: $ed
    db $ed                                        ; $6819: $ed
    add sp, $4f                                   ; $681a: $e8 $4f
    ld [hl], l                                    ; $681c: $75
    cp a                                          ; $681d: $bf
    ld [hl+], a                                   ; $681e: $22
    xor d                                         ; $681f: $aa
    ld d, $2d                                     ; $6820: $16 $2d
    sbc $ce                                       ; $6822: $de $ce
    sub [hl]                                      ; $6824: $96
    cp b                                          ; $6825: $b8
    jp c, $f0e2                                   ; $6826: $da $e2 $f0

    sub [hl]                                      ; $6829: $96
    xor h                                         ; $682a: $ac
    jp z, $c41a                                   ; $682b: $ca $1a $c4

    ldh [rKEY1], a                                ; $682e: $e0 $4d
    ld [hl], e                                    ; $6830: $73
    ld c, c                                       ; $6831: $49
    rra                                           ; $6832: $1f
    dec sp                                        ; $6833: $3b
    call z, $0620                                 ; $6834: $cc $20 $06
    ld l, a                                       ; $6837: $6f
    or l                                          ; $6838: $b5
    or c                                          ; $6839: $b1
    inc hl                                        ; $683a: $23
    ld l, $91                                     ; $683b: $2e $91
    ret nc                                        ; $683d: $d0

    sub a                                         ; $683e: $97
    ld h, b                                       ; $683f: $60
    db $e3                                        ; $6840: $e3
    xor b                                         ; $6841: $a8
    sub [hl]                                      ; $6842: $96
    nop                                           ; $6843: $00
    ldh a, [$96]                                  ; $6844: $f0 $96
    add hl, bc                                    ; $6846: $09
    rla                                           ; $6847: $17
    cp a                                          ; $6848: $bf
    sbc l                                         ; $6849: $9d
    xor e                                         ; $684a: $ab
    dec l                                         ; $684b: $2d
    adc l                                         ; $684c: $8d
    xor l                                         ; $684d: $ad
    or $56                                        ; $684e: $f6 $56
    call z, Call_034_781f                         ; $6850: $cc $1f $78
    dec sp                                        ; $6853: $3b
    dec bc                                        ; $6854: $0b
    dec h                                         ; $6855: $25
    ld h, l                                       ; $6856: $65
    and [hl]                                      ; $6857: $a6
    dec h                                         ; $6858: $25
    ld c, b                                       ; $6859: $48
    ld c, a                                       ; $685a: $4f
    ldh [$dc], a                                  ; $685b: $e0 $dc
    ld b, b                                       ; $685d: $40
    add sp, -$59                                  ; $685e: $e8 $a7
    call nc, Call_034_41db                        ; $6860: $d4 $db $41
    dec bc                                        ; $6863: $0b
    ld a, e                                       ; $6864: $7b
    add c                                         ; $6865: $81
    rst $30                                       ; $6866: $f7
    ld e, h                                       ; $6867: $5c
    dec e                                         ; $6868: $1d
    xor $06                                       ; $6869: $ee $06
    ld a, a                                       ; $686b: $7f
    ld d, b                                       ; $686c: $50
    rst $00                                       ; $686d: $c7
    ld a, d                                       ; $686e: $7a
    adc e                                         ; $686f: $8b
    ld a, [hl]                                    ; $6870: $7e
    ld d, d                                       ; $6871: $52
    db $e4                                        ; $6872: $e4
    rst $28                                       ; $6873: $ef
    or b                                          ; $6874: $b0
    sub b                                         ; $6875: $90
    rst $18                                       ; $6876: $df
    daa                                           ; $6877: $27
    ret nz                                        ; $6878: $c0

    db $db                                        ; $6879: $db
    cp c                                          ; $687a: $b9
    cpl                                           ; $687b: $2f
    ld e, l                                       ; $687c: $5d
    inc b                                         ; $687d: $04
    dec bc                                        ; $687e: $0b
    db $eb                                        ; $687f: $eb
    db $ed                                        ; $6880: $ed
    db $fd                                        ; $6881: $fd
    and d                                         ; $6882: $a2
    call nc, $b69b                                ; $6883: $d4 $9b $b6
    adc h                                         ; $6886: $8c
    ld h, $3b                                     ; $6887: $26 $3b
    ld hl, sp+$5b                                 ; $6889: $f8 $5b
    jp $1df4                                      ; $688b: $c3 $f4 $1d


    ld c, d                                       ; $688e: $4a
    ld e, c                                       ; $688f: $59
    add l                                         ; $6890: $85
    ld c, l                                       ; $6891: $4d
    ld d, d                                       ; $6892: $52
    rlca                                          ; $6893: $07
    ld c, e                                       ; $6894: $4b
    xor l                                         ; $6895: $ad
    cpl                                           ; $6896: $2f
    ld [hl], c                                    ; $6897: $71
    sbc d                                         ; $6898: $9a
    inc bc                                        ; $6899: $03
    and e                                         ; $689a: $a3
    ld a, $e2                                     ; $689b: $3e $e2
    db $fd                                        ; $689d: $fd
    ld [de], a                                    ; $689e: $12
    sbc b                                         ; $689f: $98
    cp [hl]                                       ; $68a0: $be
    sbc l                                         ; $68a1: $9d
    ld sp, hl                                     ; $68a2: $f9
    rrca                                          ; $68a3: $0f
    jr z, jr_034_690e                             ; $68a4: $28 $68

    sub d                                         ; $68a6: $92
    ld a, h                                       ; $68a7: $7c
    ld a, [hl]                                    ; $68a8: $7e
    ld l, l                                       ; $68a9: $6d
    ld h, b                                       ; $68aa: $60
    ld c, $49                                     ; $68ab: $0e $49
    rra                                           ; $68ad: $1f
    dec de                                        ; $68ae: $1b
    ld [$96d5], sp                                ; $68af: $08 $d5 $96
    ld [hl-], a                                   ; $68b2: $32
    ld sp, hl                                     ; $68b3: $f9
    and e                                         ; $68b4: $a3
    sbc a                                         ; $68b5: $9f
    ret nz                                        ; $68b6: $c0

    rst $38                                       ; $68b7: $ff
    ld l, c                                       ; $68b8: $69
    or l                                          ; $68b9: $b5
    and l                                         ; $68ba: $a5
    or e                                          ; $68bb: $b3
    xor d                                         ; $68bc: $aa
    call Call_034_69bc                            ; $68bd: $cd $bc $69
    sbc e                                         ; $68c0: $9b
    inc d                                         ; $68c1: $14
    xor $70                                       ; $68c2: $ee $70
    ld b, c                                       ; $68c4: $41
    cp b                                          ; $68c5: $b8
    pop de                                        ; $68c6: $d1
    ld b, h                                       ; $68c7: $44
    ld b, h                                       ; $68c8: $44
    ld l, d                                       ; $68c9: $6a

Call_034_68ca:
    add hl, hl                                    ; $68ca: $29
    ld a, [c]                                     ; $68cb: $f2
    ld b, a                                       ; $68cc: $47
    ccf                                           ; $68cd: $3f
    pop hl                                        ; $68ce: $e1
    db $ed                                        ; $68cf: $ed
    ld d, a                                       ; $68d0: $57
    ld b, h                                       ; $68d1: $44
    or l                                          ; $68d2: $b5
    and l                                         ; $68d3: $a5
    ld l, d                                       ; $68d4: $6a
    pop bc                                        ; $68d5: $c1
    ld [c], a                                     ; $68d6: $e2
    db $ed                                        ; $68d7: $ed
    ld [hl], b                                    ; $68d8: $70
    ld hl, sp-$67                                 ; $68d9: $f8 $99
    db $d3                                        ; $68db: $d3
    inc e                                         ; $68dc: $1c
    ld c, c                                       ; $68dd: $49
    pop hl                                        ; $68de: $e1
    ld c, $97                                     ; $68df: $0e $97
    inc hl                                        ; $68e1: $23
    nop                                           ; $68e2: $00
    xor b                                         ; $68e3: $a8
    jp c, $dbcc                                   ; $68e4: $da $cc $db

    jr c, jr_034_6923                             ; $68e7: $38 $3a

    res 4, a                                      ; $68e9: $cb $a7
    or h                                          ; $68eb: $b4
    jp c, $e1d8                                   ; $68ec: $da $d8 $e1

    or c                                          ; $68ef: $b1
    xor h                                         ; $68f0: $ac

jr_034_68f1:
    jr z, jr_034_68f1                             ; $68f1: $28 $fe

    or b                                          ; $68f3: $b0
    xor h                                         ; $68f4: $ac
    and e                                         ; $68f5: $a3
    adc h                                         ; $68f6: $8c
    ld [de], a                                    ; $68f7: $12
    sbc e                                         ; $68f8: $9b
    ld e, l                                       ; $68f9: $5d
    nop                                           ; $68fa: $00
    ret c                                         ; $68fb: $d8

    cp e                                          ; $68fc: $bb
    ld b, l                                       ; $68fd: $45
    ld a, e                                       ; $68fe: $7b
    ld c, e                                       ; $68ff: $4b
    ld e, h                                       ; $6900: $5c
    ld [bc], a                                    ; $6901: $02
    sbc c                                         ; $6902: $99
    pop de                                        ; $6903: $d1
    ld b, b                                       ; $6904: $40
    add [hl]                                      ; $6905: $86
    or h                                          ; $6906: $b4
    dec e                                         ; $6907: $1d
    ld c, d                                       ; $6908: $4a
    ld l, c                                       ; $6909: $69
    and $c3                                       ; $690a: $e6 $c3
    or c                                          ; $690c: $b1
    cp l                                          ; $690d: $bd

jr_034_690e:
    add a                                         ; $690e: $87
    add sp, $0e                                   ; $690f: $e8 $0e
    ld e, d                                       ; $6911: $5a
    ld c, $05                                     ; $6912: $0e $05
    add [hl]                                      ; $6914: $86
    ld [hl], e                                    ; $6915: $73
    push af                                       ; $6916: $f5
    ld b, a                                       ; $6917: $47

jr_034_6918:
    xor h                                         ; $6918: $ac
    or c                                          ; $6919: $b1
    jr jr_034_6918                                ; $691a: $18 $fc

    ld d, l                                       ; $691c: $55
    dec e                                         ; $691d: $1d
    push de                                       ; $691e: $d5
    pop hl                                        ; $691f: $e1
    adc $fd                                       ; $6920: $ce $fd
    and c                                         ; $6922: $a1

jr_034_6923:
    ret z                                         ; $6923: $c8

    rst $18                                       ; $6924: $df
    db $fd                                        ; $6925: $fd
    dec bc                                        ; $6926: $0b
    reti                                          ; $6927: $d9


    jp nc, $3f91                                  ; $6928: $d2 $91 $3f

    dec bc                                        ; $692b: $0b
    ld c, e                                       ; $692c: $4b
    cpl                                           ; $692d: $2f
    ld l, l                                       ; $692e: $6d
    ld l, c                                       ; $692f: $69
    or d                                          ; $6930: $b2
    ld c, a                                       ; $6931: $4f
    rst $30                                       ; $6932: $f7
    or $fd                                        ; $6933: $f6 $fd
    push de                                       ; $6935: $d5
    and [hl]                                      ; $6936: $a6
    sub b                                         ; $6937: $90
    or [hl]                                       ; $6938: $b6
    or e                                          ; $6939: $b3
    rlca                                          ; $693a: $07
    ld a, a                                       ; $693b: $7f
    add b                                         ; $693c: $80
    cp l                                          ; $693d: $bd
    dec hl                                        ; $693e: $2b
    pop de                                        ; $693f: $d1
    ld l, [hl]                                    ; $6940: $6e
    ld h, [hl]                                    ; $6941: $66
    add h                                         ; $6942: $84
    db $eb                                        ; $6943: $eb
    ld d, c                                       ; $6944: $51
    ld l, a                                       ; $6945: $6f
    jp c, $7d26                                   ; $6946: $da $26 $7d

    db $ec                                        ; $6949: $ec
    cp h                                          ; $694a: $bc
    ld d, $1a                                     ; $694b: $16 $1a
    add $73                                       ; $694d: $c6 $73
    push af                                       ; $694f: $f5
    rst $00                                       ; $6950: $c7
    ld l, d                                       ; $6951: $6a
    dec h                                         ; $6952: $25
    db $fc                                        ; $6953: $fc
    and c                                         ; $6954: $a1
    ld [c], a                                     ; $6955: $e2
    rrca                                          ; $6956: $0f
    ld a, d                                       ; $6957: $7a
    ld d, a                                       ; $6958: $57
    and d                                         ; $6959: $a2
    ld a, l                                       ; $695a: $7d
    xor $fd                                       ; $695b: $ee $fd
    ld c, e                                       ; $695d: $4b
    ret                                           ; $695e: $c9


    adc d                                         ; $695f: $8a
    ld c, b                                       ; $6960: $48
    and h                                         ; $6961: $a4
    inc [hl]                                      ; $6962: $34
    or d                                          ; $6963: $b2
    cp $a3                                        ; $6964: $fe $a3
    ld l, b                                       ; $6966: $68
    jp z, $3b7a                                   ; $6967: $ca $7a $3b

    rst $30                                       ; $696a: $f7
    rst $08                                       ; $696b: $cf
    sbc d                                         ; $696c: $9a
    sbc c                                         ; $696d: $99
    jp c, $bd02                                   ; $696e: $da $02 $bd

    ld e, a                                       ; $6971: $5f
    and d                                         ; $6972: $a2
    cp l                                          ; $6973: $bd
    ld l, c                                       ; $6974: $69
    dec sp                                        ; $6975: $3b
    cp $e8                                        ; $6976: $fe $e8
    sub b                                         ; $6978: $90
    ld [c], a                                     ; $6979: $e2
    rst $08                                       ; $697a: $cf
    cp h                                          ; $697b: $bc
    db $fd                                        ; $697c: $fd
    sub h                                         ; $697d: $94
    ld e, d                                       ; $697e: $5a
    ld [hl], h                                    ; $697f: $74
    ld l, h                                       ; $6980: $6c
    add [hl]                                      ; $6981: $86
    db $dd                                        ; $6982: $dd
    ldh [rIF], a                                  ; $6983: $e0 $0f
    adc $bd                                       ; $6985: $ce $bd
    ld a, a                                       ; $6987: $7f
    xor h                                         ; $6988: $ac
    sub [hl]                                      ; $6989: $96
    ret c                                         ; $698a: $d8

    sbc $bf                                       ; $698b: $de $bf
    sbc h                                         ; $698d: $9c
    ei                                            ; $698e: $fb
    add hl, hl                                    ; $698f: $29
    ld e, [hl]                                    ; $6990: $5e
    ld a, l                                       ; $6991: $7d
    sbc a                                         ; $6992: $9f
    add d                                         ; $6993: $82
    or a                                          ; $6994: $b7
    call z, $1370                                 ; $6995: $cc $70 $13
    sbc [hl]                                      ; $6998: $9e

Jump_034_6999:
    cp b                                          ; $6999: $b8
    or e                                          ; $699a: $b3
    ld a, a                                       ; $699b: $7f
    db $f4                                        ; $699c: $f4
    ld d, [hl]                                    ; $699d: $56
    rst $38                                       ; $699e: $ff
    jp z, Jump_034_7857                           ; $699f: $ca $57 $78

    ld l, $f1                                     ; $69a2: $2e $f1
    add hl, hl                                    ; $69a4: $29
    push bc                                       ; $69a5: $c5

jr_034_69a6:
    ld [hl-], a                                   ; $69a6: $32
    jp $07bd                                      ; $69a7: $c3 $bd $07


    and d                                         ; $69aa: $a2
    rst $30                                       ; $69ab: $f7
    call c, $c7fb                                 ; $69ac: $dc $fb $c7
    ld h, [hl]                                    ; $69af: $66
    ld a, [bc]                                    ; $69b0: $0a
    ld c, d                                       ; $69b1: $4a
    sub b                                         ; $69b2: $90
    and h                                         ; $69b3: $a4
    call z, Call_000_0370                         ; $69b4: $cc $70 $03
    ld h, c                                       ; $69b7: $61
    db $fc                                        ; $69b8: $fc
    ld [hl], e                                    ; $69b9: $73
    pop af                                        ; $69ba: $f1
    ld h, a                                       ; $69bb: $67

Call_034_69bc:
    ldh [$3a], a                                  ; $69bc: $e0 $3a
    or [hl]                                       ; $69be: $b6
    rla                                           ; $69bf: $17
    ld b, c                                       ; $69c0: $41
    inc b                                         ; $69c1: $04
    add hl, sp                                    ; $69c2: $39
    ld c, h                                       ; $69c3: $4c
    xor c                                         ; $69c4: $a9
    and l                                         ; $69c5: $a5
    inc hl                                        ; $69c6: $23
    ld l, $f6                                     ; $69c7: $2e $f6
    and d                                         ; $69c9: $a2
    ld a, [de]                                    ; $69ca: $1a
    rlca                                          ; $69cb: $07
    call nz, Call_034_59fc                        ; $69cc: $c4 $fc $59
    ld a, [hl-]                                   ; $69cf: $3a
    ld a, b                                       ; $69d0: $78
    ld l, l                                       ; $69d1: $6d
    add hl, de                                    ; $69d2: $19
    dec h                                         ; $69d3: $25
    ld [hl], $bb                                  ; $69d4: $36 $bb
    nop                                           ; $69d6: $00
    jr nc, jr_034_69a6                            ; $69d7: $30 $cd

    ld bc, $43a3                                  ; $69d9: $01 $a3 $43
    adc d                                         ; $69dc: $8a
    rla                                           ; $69dd: $17
    and l                                         ; $69de: $a5
    ldh [$2d], a                                  ; $69df: $e0 $2d
    ld l, e                                       ; $69e1: $6b
    ld b, h                                       ; $69e2: $44
    ld c, e                                       ; $69e3: $4b
    add hl, bc                                    ; $69e4: $09
    ld hl, $22bd                                  ; $69e5: $21 $bd $22
    ld a, a                                       ; $69e8: $7f
    db $f4                                        ; $69e9: $f4
    inc de                                        ; $69ea: $13
    sbc $66                                       ; $69eb: $de $66
    ld a, [hl]                                    ; $69ed: $7e
    sbc $73                                       ; $69ee: $de $73
    sub e                                         ; $69f0: $93
    cp a                                          ; $69f1: $bf
    ret z                                         ; $69f2: $c8

    sbc b                                         ; $69f3: $98
    or h                                          ; $69f4: $b4
    dec e                                         ; $69f5: $1d
    dec e                                         ; $69f6: $1d
    jp nc, Jump_034_59f7                          ; $69f7: $d2 $f7 $59

    ld l, a                                       ; $69fa: $6f
    dec e                                         ; $69fb: $1d
    db $eb                                        ; $69fc: $eb
    db $ed                                        ; $69fd: $ed
    ei                                            ; $69fe: $fb
    ld [bc], a                                    ; $69ff: $02
    sbc $ce                                       ; $6a00: $de $ce
    db $fd                                        ; $6a02: $fd
    or e                                          ; $6a03: $b3
    ld c, $5e                                     ; $6a04: $0e $5e
    ld d, d                                       ; $6a06: $52
    or l                                          ; $6a07: $b5
    sbc b                                         ; $6a08: $98
    and $09                                       ; $6a09: $e6 $09
    db $fc                                        ; $6a0b: $fc
    sub l                                         ; $6a0c: $95
    adc l                                         ; $6a0d: $8d
    dec l                                         ; $6a0e: $2d
    ld e, [hl]                                    ; $6a0f: $5e
    dec a                                         ; $6a10: $3d

Jump_034_6a11:
    ld c, b                                       ; $6a11: $48
    jp c, Jump_000_06e7                           ; $6a12: $da $e7 $06

    ld a, a                                       ; $6a15: $7f
    cp l                                          ; $6a16: $bd
    db $fd                                        ; $6a17: $fd
    db $dd                                        ; $6a18: $dd
    ld l, [hl]                                    ; $6a19: $6e
    ldh a, [rTAC]                                 ; $6a1a: $f0 $07
    dec a                                         ; $6a1c: $3d
    db $fc                                        ; $6a1d: $fc
    and h                                         ; $6a1e: $a4
    ld [hl], a                                    ; $6a1f: $77
    rlca                                          ; $6a20: $07
    ld e, b                                       ; $6a21: $58
    ld [hl], b                                    ; $6a22: $70
    ld b, b                                       ; $6a23: $40
    call z, $379f                                 ; $6a24: $cc $9f $37
    call Call_034_7301                            ; $6a27: $cd $01 $73
    adc e                                         ; $6a2a: $8b
    rlca                                          ; $6a2b: $07
    cpl                                           ; $6a2c: $2f
    xor c                                         ; $6a2d: $a9
    ld e, d                                       ; $6a2e: $5a
    db $dd                                        ; $6a2f: $dd
    ldh [$af], a                                  ; $6a30: $e0 $af
    sbc c                                         ; $6a32: $99
    sbc a                                         ; $6a33: $9f
    or a                                          ; $6a34: $b7
    and a                                         ; $6a35: $a7
    ld a, [de]                                    ; $6a36: $1a
    ret z                                         ; $6a37: $c8

    ret nc                                        ; $6a38: $d0

    ld e, b                                       ; $6a39: $58
    db $ec                                        ; $6a3a: $ec
    jr nc, jr_034_6a40                            ; $6a3b: $30 $03

    sbc h                                         ; $6a3d: $9c
    cp e                                          ; $6a3e: $bb
    pop bc                                        ; $6a3f: $c1

jr_034_6a40:
    rra                                           ; $6a40: $1f
    db $f4                                        ; $6a41: $f4
    cp $9f                                        ; $6a42: $fe $9f
    ld [hl], h                                    ; $6a44: $74
    ld l, [hl]                                    ; $6a45: $6e
    pop af                                        ; $6a46: $f1
    ldh [rNR51], a                                ; $6a47: $e0 $25
    inc sp                                        ; $6a49: $33
    halt                                          ; $6a4a: $76
    ld l, [hl]                                    ; $6a4b: $6e

jr_034_6a4c:
    pop af                                        ; $6a4c: $f1
    ldh [rNR51], a                                ; $6a4d: $e0 $25
    ld c, l                                       ; $6a4f: $4d
    db $d3                                        ; $6a50: $d3
    ld [hl], h                                    ; $6a51: $74
    add $1c                                       ; $6a52: $c6 $1c
    adc h                                         ; $6a54: $8c
    ld a, [bc]                                    ; $6a55: $0a
    call c, Call_000_3fd9                         ; $6a56: $dc $d9 $3f
    ld a, a                                       ; $6a59: $7f
    ld [hl], b                                    ; $6a5a: $70
    ld l, [hl]                                    ; $6a5b: $6e
    ld a, [c]                                     ; $6a5c: $f2
    rla                                           ; $6a5d: $17
    add hl, de                                    ; $6a5e: $19
    sub e                                         ; $6a5f: $93
    or [hl]                                       ; $6a60: $b6
    jp $81b1                                      ; $6a61: $c3 $b1 $81


    ret nc                                        ; $6a64: $d0

    ld a, e                                       ; $6a65: $7b
    ret z                                         ; $6a66: $c8

    adc l                                         ; $6a67: $8d
    ld b, $7f                                     ; $6a68: $06 $7f
    ld [hl], l                                    ; $6a6a: $75
    xor h                                         ; $6a6b: $ac
    dec sp                                        ; $6a6c: $3b
    db $fc                                        ; $6a6d: $fc
    adc c                                         ; $6a6e: $89
    rst $08                                       ; $6a6f: $cf
    adc l                                         ; $6a70: $8d
    and e                                         ; $6a71: $a3
    ld l, b                                       ; $6a72: $68
    jp z, $9b7a                                   ; $6a73: $ca $7a $9b

    db $fc                                        ; $6a76: $fc
    dec d                                         ; $6a77: $15
    or $1e                                        ; $6a78: $f6 $1e
    xor [hl]                                      ; $6a7a: $ae
    ld d, [hl]                                    ; $6a7b: $56
    dec h                                         ; $6a7c: $25
    xor e                                         ; $6a7d: $ab
    and d                                         ; $6a7e: $a2
    ld h, e                                       ; $6a7f: $63
    db $d3                                        ; $6a80: $d3
    inc e                                         ; $6a81: $1c
    jp Jump_034_4b62                              ; $6a82: $c3 $62 $4b


    ld d, [hl]                                    ; $6a85: $56
    dec a                                         ; $6a86: $3d
    ld c, b                                       ; $6a87: $48
    jp c, $ab25                                   ; $6a88: $da $25 $ab

    and e                                         ; $6a8b: $a3
    call z, $3101                                 ; $6a8c: $cc $01 $31
    ld a, a                                       ; $6a8f: $7f
    sbc $b4                                       ; $6a90: $de $b4
    sbc l                                         ; $6a92: $9d
    db $fd                                        ; $6a93: $fd
    di                                            ; $6a94: $f3
    rlca                                          ; $6a95: $07
    ld l, c                                       ; $6a96: $69
    ld c, $8c                                     ; $6a97: $0e $8c
    ld a, [bc]                                    ; $6a99: $0a
    call c, Call_000_3fd9                         ; $6a9a: $dc $d9 $3f
    ld a, a                                       ; $6a9d: $7f
    ld [hl], b                                    ; $6a9e: $70
    ld l, [hl]                                    ; $6a9f: $6e
    ld a, [c]                                     ; $6aa0: $f2
    rla                                           ; $6aa1: $17
    add hl, de                                    ; $6aa2: $19
    sub e                                         ; $6aa3: $93
    and $c3                                       ; $6aa4: $e6 $c3
    db $ec                                        ; $6aa6: $ec
    and b                                         ; $6aa7: $a0
    push de                                       ; $6aa8: $d5
    pop bc                                        ; $6aa9: $c1
    rst $18                                       ; $6aaa: $df
    cp c                                          ; $6aab: $b9
    ret                                           ; $6aac: $c9


    ld e, a                                       ; $6aad: $5f
    ld h, h                                       ; $6aae: $64
    ld c, h                                       ; $6aaf: $4c
    jp c, $8aa1                                   ; $6ab0: $da $a1 $8a

    jr c, jr_034_6a4c                             ; $6ab3: $38 $97

    xor h                                         ; $6ab5: $ac
    adc [hl]                                      ; $6ab6: $8e
    sbc [hl]                                      ; $6ab7: $9e
    ldh a, [$15]                                  ; $6ab8: $f0 $15
    ld l, e                                       ; $6aba: $6b
    ld bc, $7bf9                                  ; $6abb: $01 $f9 $7b
    sbc e                                         ; $6abe: $9b
    ld e, b                                       ; $6abf: $58
    dec l                                         ; $6ac0: $2d
    ld e, b                                       ; $6ac1: $58
    inc h                                         ; $6ac2: $24
    ld hl, sp-$7d                                 ; $6ac3: $f8 $83
    ld hl, $ee65                                  ; $6ac5: $21 $65 $ee
    rra                                           ; $6ac8: $1f
    ld [hl], b                                    ; $6ac9: $70
    ld sp, $a0fc                                  ; $6aca: $31 $fc $a0
    add $66                                       ; $6acd: $c6 $66
    ld e, a                                       ; $6acf: $5f
    cp d                                          ; $6ad0: $ba
    pop bc                                        ; $6ad1: $c1
    rra                                           ; $6ad2: $1f
    inc [hl]                                      ; $6ad3: $34
    or e                                          ; $6ad4: $b3

Jump_034_6ad5:
    xor h                                         ; $6ad5: $ac
    rst $08                                       ; $6ad6: $cf
    cp l                                          ; $6ad7: $bd
    ld a, e                                       ; $6ad8: $7b
    or a                                          ; $6ad9: $b7
    rst $30                                       ; $6ada: $f7
    sub b                                         ; $6adb: $90
    sub d                                         ; $6adc: $92
    ld d, l                                       ; $6add: $55
    ld [hl], c                                    ; $6ade: $71
    jr nz, jr_034_6af2                            ; $6adf: $20 $11

    ld a, d                                       ; $6ae1: $7a
    cp e                                          ; $6ae2: $bb
    adc [hl]                                      ; $6ae3: $8e
    jp $243b                                      ; $6ae4: $c3 $3b $24


Call_034_6ae7:
    rlca                                          ; $6ae7: $07
    di                                            ; $6ae8: $f3
    ld e, d                                       ; $6ae9: $5a
    sub b                                         ; $6aea: $90
    ccf                                           ; $6aeb: $3f
    ld a, d                                       ; $6aec: $7a
    ld hl, $d37a                                  ; $6aed: $21 $7a $d3
    inc e                                         ; $6af0: $1c
    and e                                         ; $6af1: $a3

jr_034_6af2:
    xor a                                         ; $6af2: $af
    ld b, $42                                     ; $6af3: $06 $42
    push af                                       ; $6af5: $f5
    rst $00                                       ; $6af6: $c7
    adc [hl]                                      ; $6af7: $8e
    and b                                         ; $6af8: $a0
    rra                                           ; $6af9: $1f
    pop de                                        ; $6afa: $d1
    ld c, e                                       ; $6afb: $4b
    adc [hl]                                      ; $6afc: $8e
    db $e3                                        ; $6afd: $e3
    or b                                          ; $6afe: $b0
    call z, $0398                                 ; $6aff: $cc $98 $03
    jp $81b1                                      ; $6b02: $c3 $b1 $81


    ret nc                                        ; $6b05: $d0

    ld a, a                                       ; $6b06: $7f
    db $f4                                        ; $6b07: $f4
    push bc                                       ; $6b08: $c5
    add d                                         ; $6b09: $82
    push bc                                       ; $6b0a: $c5
    db $db                                        ; $6b0b: $db
    pop hl                                        ; $6b0c: $e1
    xor e                                         ; $6b0d: $ab
    ld e, l                                       ; $6b0e: $5d
    ld l, l                                       ; $6b0f: $6d
    inc l                                         ; $6b10: $2c
    and e                                         ; $6b11: $a3
    reti                                          ; $6b12: $d9


    ld b, h                                       ; $6b13: $44
    and l                                         ; $6b14: $a5
    adc l                                         ; $6b15: $8d
    ld l, c                                       ; $6b16: $69
    dec sp                                        ; $6b17: $3b
    inc e                                         ; $6b18: $1c
    sbc e                                         ; $6b19: $9b
    dec b                                         ; $6b1a: $05
    dec bc                                        ; $6b1b: $0b
    dec a                                         ; $6b1c: $3d
    push de                                       ; $6b1d: $d5
    ld a, [$afe2]                                 ; $6b1e: $fa $e2 $af
    inc hl                                        ; $6b21: $23
    rst $00                                       ; $6b22: $c7
    adc $68                                       ; $6b23: $ce $68
    ldh a, [rPCM34]                               ; $6b25: $f0 $77
    ld [hl], e                                    ; $6b27: $73
    add b                                         ; $6b28: $80
    rst $30                                       ; $6b29: $f7
    ld e, h                                       ; $6b2a: $5c
    ld a, l                                       ; $6b2b: $7d
    add hl, bc                                    ; $6b2c: $09

jr_034_6b2d:
    inc d                                         ; $6b2d: $14
    ld sp, hl                                     ; $6b2e: $f9
    ld e, e                                       ; $6b2f: $5b
    ld d, e                                       ; $6b30: $53
    ld l, d                                       ; $6b31: $6a
    jp hl                                         ; $6b32: $e9


    adc e                                         ; $6b33: $8b
    dec h                                         ; $6b34: $25
    xor e                                         ; $6b35: $ab
    call z, $6ff4                                 ; $6b36: $cc $f4 $6f
    and $3d                                       ; $6b39: $e6 $3d
    rst $30                                       ; $6b3b: $f7
    ld hl, sp-$25                                 ; $6b3c: $f8 $db
    ld b, e                                       ; $6b3e: $43
    ld hl, $9576                                  ; $6b3f: $21 $76 $95
    db $f4                                        ; $6b42: $f4
    ld e, $88                                     ; $6b43: $1e $88
    sbc $de                                       ; $6b45: $de $de
    jp Jump_000_0e69                              ; $6b47: $c3 $69 $0e


    ld b, e                                       ; $6b4a: $43
    or a                                          ; $6b4b: $b7
    adc [hl]                                      ; $6b4c: $8e
    push af                                       ; $6b4d: $f5
    ld d, c                                       ; $6b4e: $51
    or l                                          ; $6b4f: $b5
    sbc c                                         ; $6b50: $99
    rrca                                          ; $6b51: $0f
    ld [de], a                                    ; $6b52: $12
    ret nc                                        ; $6b53: $d0

    ldh [$cf], a                                  ; $6b54: $e0 $cf
    ld a, e                                       ; $6b56: $7b
    xor [hl]                                      ; $6b57: $ae
    ld d, [hl]                                    ; $6b58: $56
    ld a, e                                       ; $6b59: $7b
    and e                                         ; $6b5a: $a3
    sbc $aa                                       ; $6b5b: $de $aa
    push de                                       ; $6b5d: $d5
    dec h                                         ; $6b5e: $25
    xor h                                         ; $6b5f: $ac
    ld hl, sp+$03                                 ; $6b60: $f8 $03
    ld l, a                                       ; $6b62: $6f
    rst $20                                       ; $6b63: $e7
    db $10                                        ; $6b64: $10
    add sp, -$3c                                  ; $6b65: $e8 $c4
    call Call_034_5fbc                            ; $6b67: $cd $bc $5f
    ld [hl], l                                    ; $6b6a: $75
    ccf                                           ; $6b6b: $3f
    ld a, a                                       ; $6b6c: $7f
    ld h, l                                       ; $6b6d: $65
    xor $bf                                       ; $6b6e: $ee $bf
    add hl, de                                    ; $6b70: $19
    bit 5, b                                      ; $6b71: $cb $68
    db $e4                                        ; $6b73: $e4
    rst $28                                       ; $6b74: $ef
    ld hl, sp-$04                                 ; $6b75: $f8 $fc
    sub [hl]                                      ; $6b77: $96
    and $e3                                       ; $6b78: $e6 $e3
    sbc a                                         ; $6b7a: $9f
    ldh a, [$15]                                  ; $6b7b: $f0 $15
    ld l, e                                       ; $6b7d: $6b
    ld bc, $7bf9                                  ; $6b7e: $01 $f9 $7b
    dec de                                        ; $6b81: $1b
    db $10                                        ; $6b82: $10
    rlca                                          ; $6b83: $07
    cp d                                          ; $6b84: $ba
    jr jr_034_6c02                                ; $6b85: $18 $7b

    di                                            ; $6b87: $f3
    and [hl]                                      ; $6b88: $a6
    dec e                                         ; $6b89: $1d
    ld e, $db                                     ; $6b8a: $1e $db
    and c                                         ; $6b8c: $a1
    adc e                                         ; $6b8d: $8b
    and b                                         ; $6b8e: $a0
    db $e4                                        ; $6b8f: $e4
    add sp, $57                                   ; $6b90: $e8 $57
    ld b, h                                       ; $6b92: $44
    ld [hl], l                                    ; $6b93: $75
    cp b                                          ; $6b94: $b8
    inc hl                                        ; $6b95: $23
    inc l                                         ; $6b96: $2c
    scf                                           ; $6b97: $37
    ld c, e                                       ; $6b98: $4b
    rst $28                                       ; $6b99: $ef
    ld hl, $96ba                                  ; $6b9a: $21 $ba $96
    ei                                            ; $6b9d: $fb
    rla                                           ; $6b9e: $17
    jr nc, jr_034_6b2d                            ; $6b9f: $30 $8c

    sbc a                                         ; $6ba1: $9f
    inc bc                                        ; $6ba2: $03
    ld c, c                                       ; $6ba3: $49
    xor d                                         ; $6ba4: $aa
    add a                                         ; $6ba5: $87
    ld b, d                                       ; $6ba6: $42
    add h                                         ; $6ba7: $84
    ld a, [hl-]                                   ; $6ba8: $3a
    sub $db                                       ; $6ba9: $d6 $db
    cp e                                          ; $6bab: $bb
    inc bc                                        ; $6bac: $03
    cp h                                          ; $6bad: $bc
    dec e                                         ; $6bae: $1d
    db $ed                                        ; $6baf: $ed
    xor h                                         ; $6bb0: $ac
    ld h, h                                       ; $6bb1: $64
    dec h                                         ; $6bb2: $25
    inc h                                         ; $6bb3: $24
    ld a, [hl]                                    ; $6bb4: $7e
    and e                                         ; $6bb5: $a3
    adc $bc                                       ; $6bb6: $ce $bc
    ld l, c                                       ; $6bb8: $69
    ld c, $09                                     ; $6bb9: $0e $09
    db $fc                                        ; $6bbb: $fc
    ld [hl], l                                    ; $6bbc: $75
    ret nc                                        ; $6bbd: $d0

    add d                                         ; $6bbe: $82
    adc d                                         ; $6bbf: $8a
    ccf                                           ; $6bc0: $3f

Jump_034_6bc1:
    ld d, a                                       ; $6bc1: $57
    ld a, e                                       ; $6bc2: $7b
    sbc e                                         ; $6bc3: $9b
    ld a, h                                       ; $6bc4: $7c
    pop hl                                        ; $6bc5: $e1
    ld b, b                                       ; $6bc6: $40
    ret nz                                        ; $6bc7: $c0

    and a                                         ; $6bc8: $a7
    inc b                                         ; $6bc9: $04
    dec h                                         ; $6bca: $25
    ld h, l                                       ; $6bcb: $65
    and [hl]                                      ; $6bcc: $a6
    dec h                                         ; $6bcd: $25
    xor e                                         ; $6bce: $ab
    ld [de], a                                    ; $6bcf: $12
    or c                                          ; $6bd0: $b1
    jp c, Jump_000_369b                           ; $6bd1: $da $9b $36

    add c                                         ; $6bd4: $81
    cp a                                          ; $6bd5: $bf
    cp [hl]                                       ; $6bd6: $be
    rst $08                                       ; $6bd7: $cf
    cp d                                          ; $6bd8: $ba
    sbc c                                         ; $6bd9: $99
    ld de, $db2c                                  ; $6bda: $11 $2c $db
    and c                                         ; $6bdd: $a1
    xor h                                         ; $6bde: $ac
    ld d, a                                       ; $6bdf: $57
    sub a                                         ; $6be0: $97
    xor h                                         ; $6be1: $ac
    ld a, [hl-]                                   ; $6be2: $3a
    jr @-$58                                      ; $6be3: $18 $a6

    call $199c                                    ; $6be5: $cd $9c $19
    pop de                                        ; $6be8: $d1
    sbc e                                         ; $6be9: $9b
    and $cc                                       ; $6bea: $e6 $cc
    adc e                                         ; $6bec: $8b
    cp $cd                                        ; $6bed: $fe $cd
    ld e, h                                       ; $6bef: $5c
    xor l                                         ; $6bf0: $ad
    cp d                                          ; $6bf1: $ba
    pop bc                                        ; $6bf2: $c1
    rra                                           ; $6bf3: $1f
    db $f4                                        ; $6bf4: $f4
    push bc                                       ; $6bf5: $c5
    ld a, [hl]                                    ; $6bf6: $7e
    ld b, l                                       ; $6bf7: $45
    inc [hl]                                      ; $6bf8: $34
    di                                            ; $6bf9: $f3
    ld b, e                                       ; $6bfa: $43
    add sp, -$5b                                  ; $6bfb: $e8 $a5
    dec l                                         ; $6bfd: $2d
    ld b, l                                       ; $6bfe: $45
    ldh a, [$f3]                                  ; $6bff: $f0 $f3
    sub [hl]                                      ; $6c01: $96

jr_034_6c02:
    and l                                         ; $6c02: $a5
    ld c, $16                                     ; $6c03: $0e $16
    pop hl                                        ; $6c05: $e1
    ld e, h                                       ; $6c06: $5c
    ld [hl], $10                                  ; $6c07: $36 $10
    xor d                                         ; $6c09: $aa
    ld d, l                                       ; $6c0a: $55
    rst $30                                       ; $6c0b: $f7
    ld [c], a                                     ; $6c0c: $e2
    xor a                                         ; $6c0d: $af
    ld e, a                                       ; $6c0e: $5f
    ld de, $3ed5                                  ; $6c0f: $11 $d5 $3e
    ld a, [hl+]                                   ; $6c12: $2a
    pop bc                                        ; $6c13: $c1
    rra                                           ; $6c14: $1f
    ld b, h                                       ; $6c15: $44
    and $ed                                       ; $6c16: $e6 $ed
    ld l, b                                       ; $6c18: $68
    ld h, a                                       ; $6c19: $67
    ld l, c                                       ; $6c1a: $69
    ld c, $09                                     ; $6c1b: $0e $09
    db $fc                                        ; $6c1d: $fc
    push af                                       ; $6c1e: $f5
    ld a, l                                       ; $6c1f: $7d
    sub $45                                       ; $6c20: $d6 $45
    ld d, e                                       ; $6c22: $53
    sub $d2                                       ; $6c23: $d6 $d2
    inc de                                        ; $6c25: $13
    inc e                                         ; $6c26: $1c
    jr nc, jr_034_6c69                            ; $6c27: $30 $40

    inc de                                        ; $6c29: $13
    rst $10                                       ; $6c2a: $d7
    rst $20                                       ; $6c2b: $e7
    ld [$8370], a                                 ; $6c2c: $ea $70 $83
    cp a                                          ; $6c2f: $bf
    ld a, [hl-]                                   ; $6c30: $3a
    or $7d                                        ; $6c31: $f6 $7d
    ld a, [bc]                                    ; $6c33: $0a
    sbc $1e                                       ; $6c34: $de $1e
    ld a, [bc]                                    ; $6c36: $0a
    ld [hl], c                                    ; $6c37: $71
    ld c, b                                       ; $6c38: $48
    ld c, $cc                                     ; $6c39: $0e $cc
    db $fd                                        ; $6c3b: $fd
    inc bc                                        ; $6c3c: $03
    add $0e                                       ; $6c3d: $c6 $0e
    inc hl                                        ; $6c3f: $23
    ret                                           ; $6c40: $c9


    ld d, l                                       ; $6c41: $55
    sub $44                                       ; $6c42: $d6 $44
    xor h                                         ; $6c44: $ac
    ld [hl], $14                                  ; $6c45: $36 $14
    add e                                         ; $6c47: $83
    cp a                                          ; $6c48: $bf
    add $56                                       ; $6c49: $c6 $56
    ld a, e                                       ; $6c4b: $7b
    dec sp                                        ; $6c4c: $3b
    jp nz, $b372                                  ; $6c4d: $c2 $72 $b3

    ld l, h                                       ; $6c50: $6c
    jp c, $7d26                                   ; $6c51: $da $26 $7d

    db $ec                                        ; $6c54: $ec
    ld [$11fa], sp                                ; $6c55: $08 $fa $11
    cp l                                          ; $6c58: $bd
    db $e4                                        ; $6c59: $e4
    jr c, jr_034_6c6a                             ; $6c5a: $38 $0e

    ld c, e                                       ; $6c5c: $4b
    rrca                                          ; $6c5d: $0f
    ld [de], a                                    ; $6c5e: $12

jr_034_6c5f:
    ld [hl+], a                                   ; $6c5f: $22
    cp b                                          ; $6c60: $b8
    jr jr_034_6c5f                                ; $6c61: $18 $fc

    sub l                                         ; $6c63: $95
    cp b                                          ; $6c64: $b8
    ld l, b                                       ; $6c65: $68
    ld b, [hl]                                    ; $6c66: $46
    add e                                         ; $6c67: $83
    cp a                                          ; $6c68: $bf

jr_034_6c69:
    ld a, [hl]                                    ; $6c69: $7e

jr_034_6c6a:
    push bc                                       ; $6c6a: $c5
    ld e, a                                       ; $6c6b: $5f
    push af                                       ; $6c6c: $f5
    dec h                                         ; $6c6d: $25
    ld d, b                                       ; $6c6e: $50

Call_034_6c6f:
    sub $44                                       ; $6c6f: $d6 $44
    xor h                                         ; $6c71: $ac
    or $a6                                        ; $6c72: $f6 $a6
    add hl, sp                                    ; $6c74: $39
    jp $cb63                                      ; $6c75: $c3 $63 $cb


    jr z, jr_034_6cdd                             ; $6c78: $28 $63

    ld [$5622], sp                                ; $6c7a: $08 $22 $56
    ld e, a                                       ; $6c7d: $5f
    ld [hl], d                                    ; $6c7e: $72
    xor [hl]                                      ; $6c7f: $ae
    or [hl]                                       ; $6c80: $b6
    inc d                                         ; $6c81: $14
    add e                                         ; $6c82: $83
    cp a                                          ; $6c83: $bf
    ld c, $5a                                     ; $6c84: $0e $5a
    ld b, d                                       ; $6c86: $42
    inc b                                         ; $6c87: $04
    ld a, [$0c3e]                                 ; $6c88: $fa $3e $0c
    ret                                           ; $6c8b: $c9


    ld bc, $5fc9                                  ; $6c8c: $01 $c9 $5f
    ld h, h                                       ; $6c8f: $64
    call z, $7690                                 ; $6c90: $cc $90 $76
    db $f4                                        ; $6c93: $f4
    rla                                           ; $6c94: $17
    ld [hl], l                                    ; $6c95: $75
    sub h                                         ; $6c96: $94
    dec c                                         ; $6c97: $0d
    add h                                         ; $6c98: $84
    ld l, d                                       ; $6c99: $6a
    push de                                       ; $6c9a: $d5
    dec c                                         ; $6c9b: $0d
    cp $a0                                        ; $6c9c: $fe $a0
    or c                                          ; $6c9e: $b1
    push de                                       ; $6c9f: $d5
    adc [hl]                                      ; $6ca0: $8e
    or l                                          ; $6ca1: $b5
    ld [hl], h                                    ; $6ca2: $74
    inc b                                         ; $6ca3: $04
    db $fd                                        ; $6ca4: $fd
    adc b                                         ; $6ca5: $88
    sbc [hl]                                      ; $6ca6: $9e
    ld sp, $0907                                  ; $6ca7: $31 $07 $09
    db $fc                                        ; $6caa: $fc
    dec d                                         ; $6cab: $15
    dec d                                         ; $6cac: $15
    ld a, a                                       ; $6cad: $7f
    xor [hl]                                      ; $6cae: $ae
    or $76                                        ; $6caf: $f6 $76
    sbc [hl]                                      ; $6cb1: $9e
    dec b                                         ; $6cb2: $05
    adc e                                         ; $6cb3: $8b
    inc b                                         ; $6cb4: $04
    ld a, a                                       ; $6cb5: $7f
    add b                                         ; $6cb6: $80
    ld a, [c]                                     ; $6cb7: $f2
    push de                                       ; $6cb8: $d5
    ld [hl], c                                    ; $6cb9: $71
    ld l, [hl]                                    ; $6cba: $6e
    xor h                                         ; $6cbb: $ac
    or $51                                        ; $6cbc: $f6 $51
    dec e                                         ; $6cbe: $1d
    xor $09                                       ; $6cbf: $ee $09
    ld e, a                                       ; $6cc1: $5f
    or c                                          ; $6cc2: $b1
    ld d, $90                                     ; $6cc3: $16 $90
    cp a                                          ; $6cc5: $bf
    scf                                           ; $6cc6: $37
    inc b                                         ; $6cc7: $04
    or l                                          ; $6cc8: $b5
    jp c, $f845                                   ; $6cc9: $da $45 $f8

    nop                                           ; $6ccc: $00
    ld b, h                                       ; $6ccd: $44
    xor h                                         ; $6cce: $ac
    ld [hl], $a4                                  ; $6ccf: $36 $a4
    add hl, sp                                    ; $6cd1: $39
    jp $aca5                                      ; $6cd2: $c3 $a5 $ac


    adc c                                         ; $6cd5: $89
    ld e, b                                       ; $6cd6: $58
    ld l, l                                       ; $6cd7: $6d
    jr z, jr_034_6ce0                             ; $6cd8: $28 $06

    ld a, a                                       ; $6cda: $7f
    adc l                                         ; $6cdb: $8d
    xor l                                         ; $6cdc: $ad

jr_034_6cdd:
    or $76                                        ; $6cdd: $f6 $76
    add h                                         ; $6cdf: $84

jr_034_6ce0:
    push hl                                       ; $6ce0: $e5
    ld h, [hl]                                    ; $6ce1: $66
    reti                                          ; $6ce2: $d9


    ld hl, $d26d                                  ; $6ce3: $21 $6d $d2
    rst $00                                       ; $6ce6: $c7
    ld e, $24                                     ; $6ce7: $1e $24
    ld b, h                                       ; $6ce9: $44
    ld [hl], b                                    ; $6cea: $70
    ccf                                           ; $6ceb: $3f
    ld l, e                                       ; $6cec: $6b
    add hl, hl                                    ; $6ced: $29
    sbc d                                         ; $6cee: $9a
    or d                                          ; $6cef: $b2
    ld [$6c75], sp                                ; $6cf0: $08 $75 $6c
    add a                                         ; $6cf3: $87
    dec bc                                        ; $6cf4: $0b
    jp nz, Jump_000_268d                          ; $6cf5: $c2 $8d $26

    ld [hl+], a                                   ; $6cf8: $22
    ld d, d                                       ; $6cf9: $52
    ld c, e                                       ; $6cfa: $4b
    rst $28                                       ; $6cfb: $ef
    add c                                         ; $6cfc: $81
    add sp, $1d                                   ; $6cfd: $e8 $1d
    sub d                                         ; $6cff: $92
    inc bc                                        ; $6d00: $03

jr_034_6d01:
    or e                                          ; $6d01: $b3
    xor e                                         ; $6d02: $ab
    db $ed                                        ; $6d03: $ed
    ld h, a                                       ; $6d04: $67
    dec l                                         ; $6d05: $2d
    ld b, l                                       ; $6d06: $45
    cp $d6                                        ; $6d07: $fe $d6
    sub h                                         ; $6d09: $94
    ld [hl], $16                                  ; $6d0a: $36 $16
    dec sp                                        ; $6d0c: $3b
    add d                                         ; $6d0d: $82
    ld a, [hl]                                    ; $6d0e: $7e
    ld b, h                                       ; $6d0f: $44
    cpl                                           ; $6d10: $2f
    add hl, sp                                    ; $6d11: $39
    adc [hl]                                      ; $6d12: $8e
    jp Jump_034_6e72                              ; $6d13: $c3 $72 $6e


    ld a, [c]                                     ; $6d16: $f2
    rla                                           ; $6d17: $17
    add hl, de                                    ; $6d18: $19
    db $d3                                        ; $6d19: $d3
    ld d, c                                       ; $6d1a: $51
    rla                                           ; $6d1b: $17
    add b                                         ; $6d1c: $80
    ld h, l                                       ; $6d1d: $65
    ld c, b                                       ; $6d1e: $48
    ld c, $43                                     ; $6d1f: $0e $43
    ld e, a                                       ; $6d21: $5f
    ld c, a                                       ; $6d22: $4f
    db $fd                                        ; $6d23: $fd
    rst $20                                       ; $6d24: $e7
    ld h, $7f                                     ; $6d25: $26 $7f
    sub c                                         ; $6d27: $91
    ld sp, $751d                                  ; $6d28: $31 $1d $75
    ld bc, $d258                                  ; $6d2b: $01 $58 $d2
    halt                                          ; $6d2e: $76
    sbc [hl]                                      ; $6d2f: $9e
    ld b, l                                       ; $6d30: $45
    adc e                                         ; $6d31: $8b
    cp e                                          ; $6d32: $bb
    ld d, [hl]                                    ; $6d33: $56
    ld l, [hl]                                    ; $6d34: $6e
    sbc d                                         ; $6d35: $9a
    and [hl]                                      ; $6d36: $a6
    dec e                                         ; $6d37: $1d
    ld h, [hl]                                    ; $6d38: $66
    ld hl, $03bd                                  ; $6d39: $21 $bd $03
    sbc [hl]                                      ; $6d3c: $9e
    inc bc                                        ; $6d3d: $03
    jp nc, $6996                                  ; $6d3e: $d2 $96 $69

    jr nz, @+$59                                  ; $6d41: $20 $57

    rlca                                          ; $6d43: $07
    ld a, a                                       ; $6d44: $7f
    db $fd                                        ; $6d45: $fd
    adc d                                         ; $6d46: $8a
    xor b                                         ; $6d47: $a8
    halt                                          ; $6d48: $76
    xor h                                         ; $6d49: $ac
    or a                                          ; $6d4a: $b7
    and e                                         ; $6d4b: $a3
    add sp, $07                                   ; $6d4c: $e8 $07
    ld [hl], d                                    ; $6d4e: $72
    sbc d                                         ; $6d4f: $9a
    inc bc                                        ; $6d50: $03
    and e                                         ; $6d51: $a3
    ld l, $00                                     ; $6d52: $2e $00
    res 7, c                                      ; $6d54: $cb $b9
    rst $30                                       ; $6d56: $f7
    xor e                                         ; $6d57: $ab
    ld [hl], a                                    ; $6d58: $77
    sub d                                         ; $6d59: $92
    ld l, b                                       ; $6d5a: $68
    inc hl                                        ; $6d5b: $23
    ld d, h                                       ; $6d5c: $54
    xor e                                         ; $6d5d: $ab
    and d                                         ; $6d5e: $a2
    ld [c], a                                     ; $6d5f: $e2
    rst $08                                       ; $6d60: $cf
    ld a, e                                       ; $6d61: $7b
    xor $dd                                       ; $6d62: $ee $dd
    cp e                                          ; $6d64: $bb
    push de                                       ; $6d65: $d5
    xor d                                         ; $6d66: $aa
    ld b, a                                       ; $6d67: $47
    ld c, b                                       ; $6d68: $48
    dec e                                         ; $6d69: $1d
    db $eb                                        ; $6d6a: $eb
    db $ed                                        ; $6d6b: $ed
    jr nc, jr_034_6d01                            ; $6d6c: $30 $93

    xor a                                         ; $6d6e: $af
    cpl                                           ; $6d6f: $2f
    ld h, l                                       ; $6d70: $65
    adc l                                         ; $6d71: $8d
    db $fc                                        ; $6d72: $fc
    ld a, l                                       ; $6d73: $7d
    add d                                         ; $6d74: $82
    ldh a, [$f6]                                  ; $6d75: $f0 $f6
    jr nz, @+$23                                  ; $6d77: $20 $21

    add d                                         ; $6d79: $82
    ld de, $cc66                                  ; $6d7a: $11 $66 $cc
    ld bc, $fc09                                  ; $6d7d: $01 $09 $fc
    push af                                       ; $6d80: $f5
    xor $18                                       ; $6d81: $ee $18
    and a                                         ; $6d83: $a7
    add $73                                       ; $6d84: $c6 $73
    add e                                         ; $6d86: $83
    cp a                                          ; $6d87: $bf
    sbc $1d                                       ; $6d88: $de $1d
    db $e3                                        ; $6d8a: $e3
    call nc, $2438                                ; $6d8b: $d4 $38 $24
    rlca                                          ; $6d8e: $07
    add hl, bc                                    ; $6d8f: $09
    db $fc                                        ; $6d90: $fc
    push af                                       ; $6d91: $f5
    xor $18                                       ; $6d92: $ee $18
    and a                                         ; $6d94: $a7
    dec de                                        ; $6d95: $1b
    db $fc                                        ; $6d96: $fc
    pop bc                                        ; $6d97: $c1
    cp c                                          ; $6d98: $b9
    call z, $b490                                 ; $6d99: $cc $90 $b4
    dec e                                         ; $6d9c: $1d
    db $fd                                        ; $6d9d: $fd
    ld b, l                                       ; $6d9e: $45
    dec e                                         ; $6d9f: $1d
    ld e, l                                       ; $6da0: $5d
    cp a                                          ; $6da1: $bf
    jp Jump_034_665b                              ; $6da2: $c3 $5b $66


    cp b                                          ; $6da5: $b8
    dec de                                        ; $6da6: $1b
    db $fc                                        ; $6da7: $fc
    ld b, c                                       ; $6da8: $41
    sub e                                         ; $6da9: $93
    dec l                                         ; $6daa: $2d
    ld b, a                                       ; $6dab: $47
    xor h                                         ; $6dac: $ac
    xor e                                         ; $6dad: $ab
    push hl                                       ; $6dae: $e5
    rst $28                                       ; $6daf: $ef
    cp c                                          ; $6db0: $b9
    pop bc                                        ; $6db1: $c1
    ld e, a                                       ; $6db2: $5f
    inc sp                                        ; $6db3: $33
    ld a, [$eb15]                                 ; $6db4: $fa $15 $eb
    ld h, d                                       ; $6db7: $62
    cp b                                          ; $6db8: $b8
    ld [hl], a                                    ; $6db9: $77
    rst $00                                       ; $6dba: $c7
    jr c, jr_034_6df2                             ; $6dbb: $38 $35

    and [hl]                                      ; $6dbd: $a6
    add hl, sp                                    ; $6dbe: $39
    jp $3b63                                      ; $6dbf: $c3 $63 $3b


    ld [hl-], a                                   ; $6dc2: $32
    ld d, [hl]                                    ; $6dc3: $56
    pop hl                                        ; $6dc4: $e1
    add b                                         ; $6dc5: $80
    jp c, $941b                                   ; $6dc6: $da $1b $94

    jr nz, @+$4b                                  ; $6dc9: $20 $49

    add hl, de                                    ; $6dcb: $19
    ld h, l                                       ; $6dcc: $65
    inc c                                         ; $6dcd: $0c
    ld b, c                                       ; $6dce: $41
    call nz, Call_034_4bea                        ; $6dcf: $c4 $ea $4b
    adc $1d                                       ; $6dd2: $ce $1d
    ld [hl], l                                    ; $6dd4: $75
    ld bc, $d258                                  ; $6dd5: $01 $58 $d2
    inc e                                         ; $6dd8: $1c
    ld b, e                                       ; $6dd9: $43
    push de                                       ; $6dda: $d5
    cp c                                          ; $6ddb: $b9
    ld e, a                                       ; $6ddc: $5f
    db $fd                                        ; $6ddd: $fd
    ld [hl], e                                    ; $6dde: $73
    cp a                                          ; $6ddf: $bf
    ld [bc], a                                    ; $6de0: $02
    db $e4                                        ; $6de1: $e4

Jump_034_6de2:
    ld l, a                                       ; $6de2: $6f
    ld c, b                                       ; $6de3: $48
    ld c, $49                                     ; $6de4: $0e $49
    adc [hl]                                      ; $6de6: $8e
    db $ed                                        ; $6de7: $ed
    inc l                                         ; $6de8: $2c
    ld h, d                                       ; $6de9: $62
    or l                                          ; $6dea: $b5
    ld a, [$91dc]                                 ; $6deb: $fa $dc $91
    sub d                                         ; $6dee: $92
    halt                                          ; $6def: $76
    or [hl]                                       ; $6df0: $b6
    ld l, e                                       ; $6df1: $6b

jr_034_6df2:
    inc sp                                        ; $6df2: $33
    or $02                                        ; $6df3: $f6 $02
    cp b                                          ; $6df5: $b8
    adc [hl]                                      ; $6df6: $8e
    ld [hl], e                                    ; $6df7: $73
    sub c                                         ; $6df8: $91
    ccf                                           ; $6df9: $3f
    rst $00                                       ; $6dfa: $c7
    ld b, d                                       ; $6dfb: $42
    ld sp, $ebf8                                  ; $6dfc: $31 $f8 $eb
    and b                                         ; $6dff: $a0
    add l                                         ; $6e00: $85
    ld a, [de]                                    ; $6e01: $1a
    ret z                                         ; $6e02: $c8

    ld d, b                                       ; $6e03: $50
    or d                                          ; $6e04: $b2
    ld [$acfb], a                                 ; $6e05: $ea $fb $ac
    scf                                           ; $6e08: $37
    dec l                                         ; $6e09: $2d
    di                                            ; $6e0a: $f3

jr_034_6e0b:
    rra                                           ; $6e0b: $1f
    rlca                                          ; $6e0c: $07
    ld [hl], l                                    ; $6e0d: $75
    ld [hl], l                                    ; $6e0e: $75
    cp b                                          ; $6e0f: $b8
    daa                                           ; $6e10: $27
    jr z, jr_034_6e0b                             ; $6e11: $28 $f8

    ldh [$2d], a                                  ; $6e13: $e0 $2d
    ld b, c                                       ; $6e15: $41
    sub d                                         ; $6e16: $92
    ld a, [hl-]                                   ; $6e17: $3a
    sub $db                                       ; $6e18: $d6 $db
    inc de                                        ; $6e1a: $13
    cp [hl]                                       ; $6e1b: $be
    ld h, d                                       ; $6e1c: $62
    dec l                                         ; $6e1d: $2d
    jr nz, jr_034_6e9f                            ; $6e1e: $20 $7f

    ld l, a                                       ; $6e20: $6f
    rst $20                                       ; $6e21: $e7
    xor d                                         ; $6e22: $aa
    and e                                         ; $6e23: $a3
    pop af                                        ; $6e24: $f1
    or [hl]                                       ; $6e25: $b6
    ld h, h                                       ; $6e26: $64
    push de                                       ; $6e27: $d5
    rst $20                                       ; $6e28: $e7
    and b                                         ; $6e29: $a0
    sbc $73                                       ; $6e2a: $de $73
    ld b, a                                       ; $6e2c: $47
    ld e, l                                       ; $6e2d: $5d
    nop                                           ; $6e2e: $00
    sub [hl]                                      ; $6e2f: $96
    inc [hl]                                      ; $6e30: $34
    rlca                                          ; $6e31: $07
    ld b, e                                       ; $6e32: $43
    ld e, c                                       ; $6e33: $59
    ld c, e                                       ; $6e34: $4b
    db $d3                                        ; $6e35: $d3
    inc [hl]                                      ; $6e36: $34
    call Call_034_4901                            ; $6e37: $cd $01 $49
    xor d                                         ; $6e3a: $aa
    add a                                         ; $6e3b: $87
    ld b, d                                       ; $6e3c: $42
    add h                                         ; $6e3d: $84
    sub d                                         ; $6e3e: $92
    rst $28                                       ; $6e3f: $ef
    adc [hl]                                      ; $6e40: $8e

jr_034_6e41:
    adc [hl]                                      ; $6e41: $8e
    cp d                                          ; $6e42: $ba
    inc b                                         ; $6e43: $04
    ld [c], a                                     ; $6e44: $e2
    ld e, d                                       ; $6e45: $5a
    ld l, a                                       ; $6e46: $6f
    ld b, a                                       ; $6e47: $47
    inc h                                         ; $6e48: $24
    ld [de], a                                    ; $6e49: $12
    sub [hl]                                      ; $6e4a: $96
    xor a                                         ; $6e4b: $af
    ld [hl-], a                                   ; $6e4c: $32
    rst $28                                       ; $6e4d: $ef
    cp c                                          ; $6e4e: $b9
    adc [hl]                                      ; $6e4f: $8e
    ld [hl], l                                    ; $6e50: $75
    ld b, a                                       ; $6e51: $47
    ld e, l                                       ; $6e52: $5d
    ld [bc], a                                    ; $6e53: $02
    ld [hl], c                                    ; $6e54: $71
    ld l, l                                       ; $6e55: $6d
    sbc c                                         ; $6e56: $99
    db $fc                                        ; $6e57: $fc
    pop de                                        ; $6e58: $d1
    cp a                                          ; $6e59: $bf
    sbc c                                         ; $6e5a: $99
    sub a                                         ; $6e5b: $97
    sbc h                                         ; $6e5c: $9c
    ld hl, sp-$2a                                 ; $6e5d: $f8 $d6
    ld d, l                                       ; $6e5f: $55
    xor e                                         ; $6e60: $ab
    db $eb                                        ; $6e61: $eb
    ld e, b                                       ; $6e62: $58
    ld [hl], a                                    ; $6e63: $77
    call nc, $1025                                ; $6e64: $d4 $25 $10
    rst $10                                       ; $6e67: $d7
    halt                                          ; $6e68: $76
    ret c                                         ; $6e69: $d8

    ld d, a                                       ; $6e6a: $57
    rlca                                          ; $6e6b: $07
    ld a, [c]                                     ; $6e6c: $f2
    ld b, a                                       ; $6e6d: $47
    rst $38                                       ; $6e6e: $ff
    ld h, [hl]                                    ; $6e6f: $66
    sbc $f7                                       ; $6e70: $de $f7

Jump_034_6e72:
    dec d                                         ; $6e72: $15
    sub h                                         ; $6e73: $94
    adc b                                         ; $6e74: $88
    push de                                       ; $6e75: $d5
    sbc $b4                                       ; $6e76: $de $b4
    ld c, h                                       ; $6e78: $4c
    push bc                                       ; $6e79: $c5
    sbc a                                         ; $6e7a: $9f
    xor e                                         ; $6e7b: $ab
    jp $9ee8                                      ; $6e7c: $c3 $e8 $9e


    and b                                         ; $6e7f: $a0
    ldh [$83], a                                  ; $6e80: $e0 $83
    or a                                          ; $6e82: $b7
    or c                                          ; $6e83: $b1
    ld d, l                                       ; $6e84: $55
    xor e                                         ; $6e85: $ab
    xor e                                         ; $6e86: $ab
    adc [hl]                                      ; $6e87: $8e
    ld h, $5f                                     ; $6e88: $26 $5f
    reti                                          ; $6e8a: $d9


    db $fd                                        ; $6e8b: $fd
    dec bc                                        ; $6e8c: $0b
    ld h, b                                       ; $6e8d: $60
    sbc a                                         ; $6e8e: $9f
    ld b, l                                       ; $6e8f: $45
    dec e                                         ; $6e90: $1d
    ld l, c                                       ; $6e91: $69
    sub e                                         ; $6e92: $93
    ld d, h                                       ; $6e93: $54
    pop af                                        ; $6e94: $f1
    and d                                         ; $6e95: $a2
    inc d                                         ; $6e96: $14
    adc h                                         ; $6e97: $8c
    ret nc                                        ; $6e98: $d0

    pop bc                                        ; $6e99: $c1
    jr nc, jr_034_6e41                            ; $6e9a: $30 $a5

    ld c, $fe                                     ; $6e9c: $0e $fe
    and b                                         ; $6e9e: $a0

jr_034_6e9f:
    adc [hl]                                      ; $6e9f: $8e
    dec a                                         ; $6ea0: $3d
    ld a, $ed                                     ; $6ea1: $3e $ed
    ld de, $e4d0                                  ; $6ea3: $11 $d0 $e4
    cpl                                           ; $6ea6: $2f
    sbc c                                         ; $6ea7: $99
    add h                                         ; $6ea8: $84
    ld a, $57                                     ; $6ea9: $3e $57
    ei                                            ; $6eab: $fb
    add sp, -$18                                  ; $6eac: $e8 $e8
    and b                                         ; $6eae: $a0
    ld a, [$c091]                                 ; $6eaf: $fa $91 $c0
    ld [hl], d                                    ; $6eb2: $72
    ld l, $0e                                     ; $6eb3: $2e $0e
    adc b                                         ; $6eb5: $88
    ld sp, hl                                     ; $6eb6: $f9
    di                                            ; $6eb7: $f3
    sbc [hl]                                      ; $6eb8: $9e
    xor e                                         ; $6eb9: $ab
    cp l                                          ; $6eba: $bd
    ld e, e                                       ; $6ebb: $5b
    ld c, e                                       ; $6ebc: $4b
    ld l, a                                       ; $6ebd: $6f
    ld a, a                                       ; $6ebe: $7f
    or a                                          ; $6ebf: $b7
    ld a, [hl-]                                   ; $6ec0: $3a
    and h                                         ; $6ec1: $a4
    ld hl, sp+$33                                 ; $6ec2: $f8 $33
    rst $28                                       ; $6ec4: $ef
    cp c                                          ; $6ec5: $b9
    rst $30                                       ; $6ec6: $f7
    xor e                                         ; $6ec7: $ab
    ld e, d                                       ; $6ec8: $5a
    dec d                                         ; $6ec9: $15
    dec d                                         ; $6eca: $15
    ld a, a                                       ; $6ecb: $7f
    sbc $e2                                       ; $6ecc: $de $e2
    ld b, l                                       ; $6ece: $45
    add hl, hl                                    ; $6ecf: $29
    ld b, d                                       ; $6ed0: $42
    jp c, Jump_034_7661                           ; $6ed1: $da $61 $76

    ld d, b                                       ; $6ed4: $50
    ld d, a                                       ; $6ed5: $57
    rlca                                          ; $6ed6: $07
    ld a, a                                       ; $6ed7: $7f
    ld l, c                                       ; $6ed8: $69
    dec sp                                        ; $6ed9: $3b
    jp c, $d5bb                                   ; $6eda: $da $bb $d5

    xor d                                         ; $6edd: $aa
    jr nz, jr_034_6f43                            ; $6ede: $20 $63

    ld l, e                                       ; $6ee0: $6b
    ld d, e                                       ; $6ee1: $53
    add h                                         ; $6ee2: $84
    ld [hl], e                                    ; $6ee3: $73
    inc sp                                        ; $6ee4: $33
    or e                                          ; $6ee5: $b3
    ld l, [hl]                                    ; $6ee6: $6e
    ldh a, [$57]                                  ; $6ee7: $f0 $57
    dec e                                         ; $6ee9: $1d
    jp nc, Jump_000_3c4d                          ; $6eea: $d2 $4d $3c

    ld l, b                                       ; $6eed: $68
    ldh a, [$57]                                  ; $6eee: $f0 $57
    ld h, $c8                                     ; $6ef0: $26 $c8
    daa                                           ; $6ef2: $27
    ld b, $d4                                     ; $6ef3: $06 $d4
    sbc $c0                                       ; $6ef5: $de $c0
    ld l, c                                       ; $6ef7: $69
    ld c, $23                                     ; $6ef8: $0e $23
    ccf                                           ; $6efa: $3f
    ld a, a                                       ; $6efb: $7f
    ld b, l                                       ; $6efc: $45
    cp $d6                                        ; $6efd: $fe $d6
    sub h                                         ; $6eff: $94
    sbc [hl]                                      ; $6f00: $9e
    ld a, e                                       ; $6f01: $7b
    ld a, h                                       ; $6f02: $7c
    cp $8a                                        ; $6f03: $fe $8a
    db $fc                                        ; $6f05: $fc
    xor l                                         ; $6f06: $ad
    add hl, hl                                    ; $6f07: $29
    ld l, l                                       ; $6f08: $6d
    sbc d                                         ; $6f09: $9a
    and [hl]                                      ; $6f0a: $a6
    add hl, sp                                    ; $6f0b: $39
    ld l, c                                       ; $6f0c: $69
    sbc d                                         ; $6f0d: $9a
    sub $58                                       ; $6f0e: $d6 $58
    ld d, b                                       ; $6f10: $50
    ld d, b                                       ; $6f11: $50
    cp h                                          ; $6f12: $bc
    ld a, d                                       ; $6f13: $7a
    rst $30                                       ; $6f14: $f7
    dec de                                        ; $6f15: $1b
    sub d                                         ; $6f16: $92
    inc bc                                        ; $6f17: $03
    ret                                           ; $6f18: $c9


    ld h, c                                       ; $6f19: $61
    jp hl                                         ; $6f1a: $e9


    dec a                                         ; $6f1b: $3d
    inc b                                         ; $6f1c: $04
    and c                                         ; $6f1d: $a1
    ld e, d                                       ; $6f1e: $5a
    ld [hl], l                                    ; $6f1f: $75
    add e                                         ; $6f20: $83
    ccf                                           ; $6f21: $3f
    jr z, @+$13                                   ; $6f22: $28 $11

    xor e                                         ; $6f24: $ab
    cp l                                          ; $6f25: $bd
    rst $20                                       ; $6f26: $e7
    sbc $3f                                       ; $6f27: $de $3f
    ld d, [hl]                                    ; $6f29: $56
    xor e                                         ; $6f2a: $ab
    and d                                         ; $6f2b: $a2
    ld [c], a                                     ; $6f2c: $e2
    rrca                                          ; $6f2d: $0f
    pop hl                                        ; $6f2e: $e1
    call c, Call_000_1751                         ; $6f2f: $dc $51 $17
    add b                                         ; $6f32: $80
    dec h                                         ; $6f33: $25
    call Call_034_4901                            ; $6f34: $cd $01 $49
    ld h, c                                       ; $6f37: $61
    or h                                          ; $6f38: $b4
    ld [hl], h                                    ; $6f39: $74
    xor [hl]                                      ; $6f3a: $ae
    xor a                                         ; $6f3b: $af
    adc [hl]                                      ; $6f3c: $8e
    ld [$442f], a                                 ; $6f3d: $ea $2f $44
    ld h, a                                       ; $6f40: $67
    ld c, a                                       ; $6f41: $4f
    sbc b                                         ; $6f42: $98

jr_034_6f43:
    add hl, sp                                    ; $6f43: $39
    ld a, c                                       ; $6f44: $79
    xor $0e                                       ; $6f45: $ee $0e
    ld e, [hl]                                    ; $6f47: $5e
    db $db                                        ; $6f48: $db
    pop hl                                        ; $6f49: $e1
    add d                                         ; $6f4a: $82
    ld [hl], b                                    ; $6f4b: $70
    and e                                         ; $6f4c: $a3
    adc c                                         ; $6f4d: $89
    adc b                                         ; $6f4e: $88
    call nc, $65b2                                ; $6f4f: $d4 $b2 $65
    dec c                                         ; $6f52: $0d
    ld h, d                                       ; $6f53: $62
    ldh a, [$f6]                                  ; $6f54: $f0 $f6
    ld l, [hl]                                    ; $6f56: $6e
    pop de                                        ; $6f57: $d1
    sbc $73                                       ; $6f58: $de $73
    ld b, a                                       ; $6f5a: $47
    ld e, l                                       ; $6f5b: $5d
    nop                                           ; $6f5c: $00
    sub [hl]                                      ; $6f5d: $96
    inc [hl]                                      ; $6f5e: $34
    rlca                                          ; $6f5f: $07
    ret                                           ; $6f60: $c9


    ld e, a                                       ; $6f61: $5f
    ld h, h                                       ; $6f62: $64
    call z, $f7b9                                 ; $6f63: $cc $b9 $f7
    cpl                                           ; $6f66: $2f
    ld [$1b28], a                                 ; $6f67: $ea $28 $1b

Call_034_6f6a:
    ld [$aad5], sp                                ; $6f6a: $08 $d5 $aa
    dec de                                        ; $6f6d: $1b
    db $fc                                        ; $6f6e: $fc
    ld b, c                                       ; $6f6f: $41

Call_034_6f70:
    ld h, e                                       ; $6f70: $63
    xor e                                         ; $6f71: $ab
    dec e                                         ; $6f72: $1d
    ld l, e                                       ; $6f73: $6b
    jp hl                                         ; $6f74: $e9


    ld [$11fa], sp                                ; $6f75: $08 $fa $11
    dec a                                         ; $6f78: $3d
    ld h, e                                       ; $6f79: $63
    inc de                                        ; $6f7a: $13
    or [hl]                                       ; $6f7b: $b6
    add a                                         ; $6f7c: $87
    ld h, e                                       ; $6f7d: $63
    dec l                                         ; $6f7e: $2d
    sbc l                                         ; $6f7f: $9d
    ld b, l                                       ; $6f80: $45
    db $ed                                        ; $6f81: $ed
    dec c                                         ; $6f82: $0d
    ld [c], a                                     ; $6f83: $e2
    jp c, $8a7e                                   ; $6f84: $da $7e $8a

    sbc l                                         ; $6f87: $9d
    rst $10                                       ; $6f88: $d7
    ld [bc], a                                    ; $6f89: $02
    ld a, [c]                                     ; $6f8a: $f2
    sub l                                         ; $6f8b: $95
    rla                                           ; $6f8c: $17
    sub c                                         ; $6f8d: $91
    ccf                                           ; $6f8e: $3f
    ld [de], a                                    ; $6f8f: $12
    or l                                          ; $6f90: $b5
    db $f4                                        ; $6f91: $f4
    ld d, b                                       ; $6f92: $50
    adc b                                         ; $6f93: $88
    dec c                                         ; $6f94: $0d
    cp $aa                                        ; $6f95: $fe $aa
    add e                                         ; $6f97: $83
    cp a                                          ; $6f98: $bf
    ld [$258f], a                                 ; $6f99: $ea $8f $25
    db $e4                                        ; $6f9c: $e4
    ld h, a                                       ; $6f9d: $67
    sbc $34                                       ; $6f9e: $de $34
    rlca                                          ; $6fa0: $07
    or e                                          ; $6fa1: $b3
    ld a, e                                       ; $6fa2: $7b
    jr nc, jr_034_6fcd                            ; $6fa3: $30 $28

    ld [hl], l                                    ; $6fa5: $75
    rst $18                                       ; $6fa6: $df
    add a                                         ; $6fa7: $87
    ld h, d                                       ; $6fa8: $62
    ldh a, [$d7]                                  ; $6fa9: $f0 $d7
    ld b, c                                       ; $6fab: $41
    dec bc                                        ; $6fac: $0b
    dec [hl]                                      ; $6fad: $35
    sub b                                         ; $6fae: $90
    and c                                         ; $6faf: $a1
    ld l, d                                       ; $6fb0: $6a
    ld [hl], l                                    ; $6fb1: $75
    sbc c                                         ; $6fb2: $99
    ei                                            ; $6fb3: $fb
    rlca                                          ; $6fb4: $07
    call c, $a1f7                                 ; $6fb5: $dc $f7 $a1
    ld b, a                                       ; $6fb8: $47
    ldh a, [$57]                                  ; $6fb9: $f0 $57
    ld a, d                                       ; $6fbb: $7a
    ld h, c                                       ; $6fbc: $61
    ld h, [hl]                                    ; $6fbd: $66
    db $e4                                        ; $6fbe: $e4
    cpl                                           ; $6fbf: $2f
    ld hl, sp+$0d                                 ; $6fc0: $f8 $0d
    adc $55                                       ; $6fc2: $ce $55
    ld b, a                                       ; $6fc4: $47

Jump_034_6fc5:
    ld c, a                                       ; $6fc5: $4f
    ld d, b                                       ; $6fc6: $50
    ldh a, [$c1]                                  ; $6fc7: $f0 $c1
    ld e, e                                       ; $6fc9: $5b
    add d                                         ; $6fca: $82
    inc h                                         ; $6fcb: $24
    ld [hl], l                                    ; $6fcc: $75

jr_034_6fcd:
    xor h                                         ; $6fcd: $ac
    or a                                          ; $6fce: $b7
    daa                                           ; $6fcf: $27
    ld a, h                                       ; $6fd0: $7c
    push bc                                       ; $6fd1: $c5
    ld e, d                                       ; $6fd2: $5a
    ld b, b                                       ; $6fd3: $40
    cp $de                                        ; $6fd4: $fe $de
    ld c, d                                       ; $6fd6: $4a
    ld d, [hl]                                    ; $6fd7: $56
    ld b, l                                       ; $6fd8: $45
    push bc                                       ; $6fd9: $c5
    sbc a                                         ; $6fda: $9f
    rst $30                                       ; $6fdb: $f7
    ld e, h                                       ; $6fdc: $5c
    db $fd                                        ; $6fdd: $fd
    adc a                                         ; $6fde: $8f
    add b                                         ; $6fdf: $80
    sbc $43                                       ; $6fe0: $de $43
    ld a, [de]                                    ; $6fe2: $1a
    ld l, a                                       ; $6fe3: $6f
    set 7, d                                      ; $6fe4: $cb $fa
    db $fd                                        ; $6fe6: $fd
    push de                                       ; $6fe7: $d5
    and [hl]                                      ; $6fe8: $a6
    db $db                                        ; $6fe9: $db
    db $db                                        ; $6fea: $db
    ret c                                         ; $6feb: $d8

    cp e                                          ; $6fec: $bb
    sbc $34                                       ; $6fed: $de $34
    rlca                                          ; $6fef: $07
    call z, Call_000_0901                         ; $6ff0: $cc $01 $09
    cp $7a                                        ; $6ff3: $fe $7a
    ld a, h                                       ; $6ff5: $7c
    jp c, $a023                                   ; $6ff6: $da $23 $a0

    ret                                           ; $6ff9: $c9


    ccf                                           ; $6ffa: $3f
    sub e                                         ; $6ffb: $93
    ret nc                                        ; $6ffc: $d0

    ld l, c                                       ; $6ffd: $69
    add a                                         ; $6ffe: $87
    ld c, e                                       ; $6fff: $4b
    rst $28                                       ; $7000: $ef
    adc [hl]                                      ; $7001: $8e
    ld [hl], c                                    ; $7002: $71
    cp d                                          ; $7003: $ba
    sub a                                         ; $7004: $97
    inc e                                         ; $7005: $1c
    sbc a                                         ; $7006: $9f
    ld e, d                                       ; $7007: $5a
    xor $0e                                       ; $7008: $ee $0e
    ld [hl], h                                    ; $700a: $74
    db $e3                                        ; $700b: $e3
    jr c, jr_034_703a                             ; $700c: $38 $2c

    rst $20                                       ; $700e: $e7
    sbc $3f                                       ; $700f: $de $3f
    or $85                                        ; $7011: $f6 $85
    and l                                         ; $7013: $a5
    ld a, b                                       ; $7014: $78
    dec [hl]                                      ; $7015: $35
    or [hl]                                       ; $7016: $b6
    jp c, Jump_034_4652                           ; $7017: $da $52 $46

    ld h, a                                       ; $701a: $67
    ld e, [hl]                                    ; $701b: $5e
    db $dd                                        ; $701c: $dd
    ld h, a                                       ; $701d: $67
    ld d, c                                       ; $701e: $51
    rlca                                          ; $701f: $07
    dec c                                         ; $7020: $0d
    ld h, a                                       ; $7021: $67
    sub b                                         ; $7022: $90
    and $a3                                       ; $7023: $e6 $a3
    ccf                                           ; $7025: $3f
    or $f8                                        ; $7026: $f6 $f8
    db $fc                                        ; $7028: $fc
    ld hl, $ab54                                  ; $7029: $21 $54 $ab
    sbc $13                                       ; $702c: $de $13
    sbc a                                         ; $702e: $9f
    ld a, b                                       ; $702f: $78
    ld [hl], l                                    ; $7030: $75
    or l                                          ; $7031: $b5
    or c                                          ; $7032: $b1
    di                                            ; $7033: $f3
    inc l                                         ; $7034: $2c
    ld e, b                                       ; $7035: $58
    inc h                                         ; $7036: $24
    ld hl, sp+$03                                 ; $7037: $f8 $03
    db $ec                                        ; $7039: $ec

jr_034_703a:
    dec bc                                        ; $703a: $0b
    ld c, e                                       ; $703b: $4b
    or l                                          ; $703c: $b5
    ld a, h                                       ; $703d: $7c
    dec [hl]                                      ; $703e: $35
    adc [hl]                                      ; $703f: $8e
    rst $30                                       ; $7040: $f7
    call c, Call_000_2fe4                         ; $7041: $dc $e4 $2f
    ld [hl-], a                                   ; $7044: $32
    ld h, [hl]                                    ; $7045: $66
    add $1c                                       ; $7046: $c6 $1c
    and e                                         ; $7048: $a3
    db $e4                                        ; $7049: $e4
    ld [hl+], a                                   ; $704a: $22
    adc h                                         ; $704b: $8c
    ld a, b                                       ; $704c: $78
    ld c, c                                       ; $704d: $49
    sbc c                                         ; $704e: $99
    ei                                            ; $704f: $fb
    rlca                                          ; $7050: $07
    call c, $a1f7                                 ; $7051: $dc $f7 $a1
    ld b, a                                       ; $7054: $47
    ld c, b                                       ; $7055: $48
    cp a                                          ; $7056: $bf
    ld [hl+], a                                   ; $7057: $22
    ld [hl-], a                                   ; $7058: $32
    add e                                         ; $7059: $83
    db $fc                                        ; $705a: $fc
    call z, $ee7b                                 ; $705b: $cc $7b $ee
    add hl, bc                                    ; $705e: $09
    ld a, [bc]                                    ; $705f: $0a
    ld a, $78                                     ; $7060: $3e $78
    ld c, e                                       ; $7062: $4b
    sub b                                         ; $7063: $90
    and h                                         ; $7064: $a4
    adc [hl]                                      ; $7065: $8e
    push af                                       ; $7066: $f5
    or $84                                        ; $7067: $f6 $84
    xor a                                         ; $7069: $af
    ld e, b                                       ; $706a: $58
    dec bc                                        ; $706b: $0b
    ret z                                         ; $706c: $c8

    rst $18                                       ; $706d: $df
    ld e, e                                       ; $706e: $5b
    ret                                           ; $706f: $c9


    xor d                                         ; $7070: $aa
    xor b                                         ; $7071: $a8
    ld hl, sp-$0d                                 ; $7072: $f8 $f3
    ld c, [hl]                                    ; $7074: $4e
    rst $18                                       ; $7075: $df
    ld de, $8489                                  ; $7076: $11 $89 $84
    push hl                                       ; $7079: $e5
    xor e                                         ; $707a: $ab
    call z, $ee7b                                 ; $707b: $cc $7b $ee
    or b                                          ; $707e: $b0
    xor a                                         ; $707f: $af
    ld c, $e4                                     ; $7080: $0e $e4
    adc a                                         ; $7082: $8f
    cp $cd                                        ; $7083: $fe $cd
    cp h                                          ; $7085: $bc
    rst $28                                       ; $7086: $ef
    dec hl                                        ; $7087: $2b
    xor b                                         ; $7088: $a8
    ld e, d                                       ; $7089: $5a
    ld e, l                                       ; $708a: $5d
    ld h, $7f                                     ; $708b: $26 $7f
    db $f4                                        ; $708d: $f4
    ld l, a                                       ; $708e: $6f
    and $25                                       ; $708f: $e6 $25
    daa                                           ; $7091: $27
    cp [hl]                                       ; $7092: $be
    ld [hl], l                                    ; $7093: $75
    sbc d                                         ; $7094: $9a
    inc bc                                        ; $7095: $03
    call z, $f28b                                 ; $7096: $cc $8b $f2
    rst $20                                       ; $7099: $e7
    ld h, $c5                                     ; $709a: $26 $c5
    ld h, [hl]                                    ; $709c: $66
    ld l, $0d                                     ; $709d: $2e $0d
    ld h, a                                       ; $709f: $67
    sbc $1e                                       ; $70a0: $de $1e
    ld a, a                                       ; $70a2: $7f
    ld sp, hl                                     ; $70a3: $f9
    dec sp                                        ; $70a4: $3b
    ld a, $ed                                     ; $70a5: $3e $ed
    ld d, a                                       ; $70a7: $57
    ld b, h                                       ; $70a8: $44
    or l                                          ; $70a9: $b5
    adc a                                         ; $70aa: $8f
    ld [hl-], a                                   ; $70ab: $32
    ld sp, hl                                     ; $70ac: $f9
    ld d, e                                       ; $70ad: $53
    inc [hl]                                      ; $70ae: $34
    inc sp                                        ; $70af: $33
    ld c, l                                       ; $70b0: $4d
    ld e, h                                       ; $70b1: $5c
    db $ed                                        ; $70b2: $ed
    adc d                                         ; $70b3: $8a
    ld a, [hl-]                                   ; $70b4: $3a
    jp nc, $f476                                  ; $70b5: $d2 $76 $f4

    rst $00                                       ; $70b8: $c7
    ld [$8770], a                                 ; $70b9: $ea $70 $87
    ld a, l                                       ; $70bc: $7d
    ld [hl], l                                    ; $70bd: $75
    jr nz, jr_034_713f                            ; $70be: $20 $7f

    db $f4                                        ; $70c0: $f4
    ld l, a                                       ; $70c1: $6f
    and $7d                                       ; $70c2: $e6 $7d
    ld e, a                                       ; $70c4: $5f
    ld b, c                                       ; $70c5: $41
    rst $38                                       ; $70c6: $ff
    ld h, [hl]                                    ; $70c7: $66
    ld a, [hl]                                    ; $70c8: $7e
    ld [hl], b                                    ; $70c9: $70
    xor $9d                                       ; $70ca: $ee $9d
    inc h                                         ; $70cc: $24
    jp c, $fe0d                                   ; $70cd: $da $0d $fe

    ld a, d                                       ; $70d0: $7a
    inc b                                         ; $70d1: $04
    ld a, a                                       ; $70d2: $7f
    db $dd                                        ; $70d3: $dd
    ldh [rIF], a                                  ; $70d4: $e0 $0f
    ld a, d                                       ; $70d6: $7a
    ld d, a                                       ; $70d7: $57
    xor e                                         ; $70d8: $ab
    dec l                                         ; $70d9: $2d
    ld a, e                                       ; $70da: $7b
    xor $dd                                       ; $70db: $ee $dd
    cp e                                          ; $70dd: $bb
    ld h, l                                       ; $70de: $65
    xor $1f                                       ; $70df: $ee $1f
    ld [hl], b                                    ; $70e1: $70
    rst $28                                       ; $70e2: $ef
    and [hl]                                      ; $70e3: $a6
    db $fc                                        ; $70e4: $fc
    cp c                                          ; $70e5: $b9
    or c                                          ; $70e6: $b1
    ld b, l                                       ; $70e7: $45
    rst $00                                       ; $70e8: $c7
    ld a, [$30e8]                                 ; $70e9: $fa $e8 $30
    sub d                                         ; $70ec: $92
    ld e, h                                       ; $70ed: $5c
    ld a, l                                       ; $70ee: $7d
    adc c                                         ; $70ef: $89
    nop                                           ; $70f0: $00
    ld c, [hl]                                    ; $70f1: $4e
    dec sp                                        ; $70f2: $3b
    ld e, h                                       ; $70f3: $5c
    ld a, d                                       ; $70f4: $7a
    db $fc                                        ; $70f5: $fc
    xor h                                         ; $70f6: $ac
    ld c, h                                       ; $70f7: $4c
    cp $e8                                        ; $70f8: $fe $e8
    rst $18                                       ; $70fa: $df
    call z, $b55b                                 ; $70fb: $cc $5b $b5
    cp d                                          ; $70fe: $ba
    adc c                                         ; $70ff: $89
    ld l, a                                       ; $7100: $6f
    ld l, c                                       ; $7101: $69
    ldh a, [$67]                                  ; $7102: $f0 $67
    inc l                                         ; $7104: $2c
    and e                                         ; $7105: $a3
    ld hl, $dd2c                                  ; $7106: $21 $2c $dd
    call nz, $0683                                ; $7109: $c4 $83 $06
    ld a, a                                       ; $710c: $7f
    ld b, l                                       ; $710d: $45
    ccf                                           ; $710e: $3f
    ld l, c                                       ; $710f: $69
    ld h, [hl]                                    ; $7110: $66
    reti                                          ; $7111: $d9


    inc [hl]                                      ; $7112: $34
    rlca                                          ; $7113: $07
    ld c, c                                       ; $7114: $49
    xor d                                         ; $7115: $aa
    rst $28                                       ; $7116: $ef
    inc hl                                        ; $7117: $23
    ld d, h                                       ; $7118: $54
    ld a, e                                       ; $7119: $7b
    dec sp                                        ; $711a: $3b
    rst $08                                       ; $711b: $cf
    add d                                         ; $711c: $82
    ld b, l                                       ; $711d: $45
    add d                                         ; $711e: $82
    ccf                                           ; $711f: $3f
    ld l, b                                       ; $7120: $68
    ld h, [hl]                                    ; $7121: $66
    add h                                         ; $7122: $84
    or c                                          ; $7123: $b1
    dec b                                         ; $7124: $05
    add [hl]                                      ; $7125: $86
    or h                                          ; $7126: $b4
    or e                                          ; $7127: $b3
    sub b                                         ; $7128: $90
    sub [hl]                                      ; $7129: $96
    add sp, $28                                   ; $712a: $e8 $28
    or l                                          ; $712c: $b5
    scf                                           ; $712d: $37
    ld [hl], b                                    ; $712e: $70
    add a                                         ; $712f: $87
    or d                                          ; $7130: $b2
    ld h, h                                       ; $7131: $64
    sub l                                         ; $7132: $95
    sub l                                         ; $7133: $95
    jr nz, @+$4b                                  ; $7134: $20 $49

    sub e                                         ; $7136: $93
    cp a                                          ; $7137: $bf
    jp nz, $ca32                                  ; $7138: $c2 $32 $ca

    jr @-$7c                                      ; $713b: $18 $82

    adc b                                         ; $713d: $88
    push de                                       ; $713e: $d5

jr_034_713f:
    sub a                                         ; $713f: $97
    inc c                                         ; $7140: $0c
    ret                                           ; $7141: $c9


    ld bc, $af23                                  ; $7142: $01 $23 $af
    jp Jump_000_3d0b                              ; $7145: $c3 $0b $3d


    ld a, $6d                                     ; $7148: $3e $6d
    sbc d                                         ; $714a: $9a
    and [hl]                                      ; $714b: $a6
    ld c, l                                       ; $714c: $4d
    cp $99                                        ; $714d: $fe $99
    add h                                         ; $714f: $84
    xor $fb                                       ; $7150: $ee $fb
    ld d, b                                       ; $7152: $50
    ld a, l                                       ; $7153: $7d
    pop af                                        ; $7154: $f1
    ld d, a                                       ; $7155: $57
    or e                                          ; $7156: $b3
    sbc $66                                       ; $7157: $de $66
    add $9f                                       ; $7159: $c6 $9f
    pop bc                                        ; $715b: $c1
    cp c                                          ; $715c: $b9
    ld a, [$d623]                                 ; $715d: $fa $23 $d6
    jp nc, $9617                                  ; $7160: $d2 $17 $96

    cp [hl]                                       ; $7163: $be
    ld e, b                                       ; $7164: $58
    ldh a, [$36]                                  ; $7165: $f0 $36
    ld h, c                                       ; $7167: $61
    pop de                                        ; $7168: $d1
    scf                                           ; $7169: $37
    ldh a, [$e2]                                  ; $716a: $f0 $e2
    add b                                         ; $716c: $80
    db $fc                                        ; $716d: $fc
    ld sp, $8afd                                  ; $716e: $31 $fd $8a
    add sp, -$78                                  ; $7171: $e8 $88
    ld b, h                                       ; $7173: $44
    jp nz, $ccd2                                  ; $7174: $c2 $d2 $cc

    jr c, jr_034_7199                             ; $7177: $38 $20

    and h                                         ; $7179: $a4
    rlca                                          ; $717a: $07
    ld a, l                                       ; $717b: $7d
    adc c                                         ; $717c: $89
    nop                                           ; $717d: $00
    ld e, $92                                     ; $717e: $1e $92
    inc bc                                        ; $7180: $03
    ld c, c                                       ; $7181: $49
    rra                                           ; $7182: $1f
    adc e                                         ; $7183: $8b
    or c                                          ; $7184: $b1
    cp d                                          ; $7185: $ba
    inc hl                                        ; $7186: $23
    ld [de], a                                    ; $7187: $12
    add hl, bc                                    ; $7188: $09
    bit 2, a                                      ; $7189: $cb $57
    sbc c                                         ; $718b: $99
    rst $30                                       ; $718c: $f7
    call c, Call_000_1bcc                         ; $718d: $dc $cc $1b
    sbc a                                         ; $7190: $9f
    ld c, $c9                                     ; $7191: $0e $c9
    ld bc, $1f49                                  ; $7193: $01 $49 $1f
    adc e                                         ; $7196: $8b
    pop hl                                        ; $7197: $e1
    rlca                                          ; $7198: $07

jr_034_7199:
    dec a                                         ; $7199: $3d
    push af                                       ; $719a: $f5
    rst $30                                       ; $719b: $f7
    dec hl                                        ; $719c: $2b
    db $ec                                        ; $719d: $ec
    dec a                                         ; $719e: $3d
    call c, Call_034_4584                         ; $719f: $dc $84 $45
    rst $18                                       ; $71a2: $df
    ret nz                                        ; $71a3: $c0

    ei                                            ; $71a4: $fb
    ld d, l                                       ; $71a5: $55
    and $6d                                       ; $71a6: $e6 $6d
    sbc d                                         ; $71a8: $9a
    and [hl]                                      ; $71a9: $a6
    dec e                                         ; $71aa: $1d
    xor d                                         ; $71ab: $aa
    ld [hl-], a                                   ; $71ac: $32
    ld l, a                                       ; $71ad: $6f
    rlca                                          ; $71ae: $07
    xor a                                         ; $71af: $af
    xor l                                         ; $71b0: $ad
    ld h, e                                       ; $71b1: $63
    ld a, l                                       ; $71b2: $7d
    ld [hl], h                                    ; $71b3: $74
    ld b, h                                       ; $71b4: $44
    ld [hl+], a                                   ; $71b5: $22
    ld h, c                                       ; $71b6: $61
    add hl, de                                    ; $71b7: $19
    sub d                                         ; $71b8: $92
    inc bc                                        ; $71b9: $03
    add hl, bc                                    ; $71ba: $09
    sub d                                         ; $71bb: $92

Jump_034_71bc:
    ld a, c                                       ; $71bc: $79
    push af                                       ; $71bd: $f5
    db $fd                                        ; $71be: $fd
    ld h, e                                       ; $71bf: $63
    rst $38                                       ; $71c0: $ff
    ld d, [hl]                                    ; $71c1: $56
    add a                                         ; $71c2: $87
    pop de                                        ; $71c3: $d1
    ld e, e                                       ; $71c4: $5b
    ld h, $7f                                     ; $71c5: $26 $7f
    db $f4                                        ; $71c7: $f4
    ld l, a                                       ; $71c8: $6f
    and $2d                                       ; $71c9: $e6 $2d
    add [hl]                                      ; $71cb: $86
    rra                                           ; $71cc: $1f
    db $f4                                        ; $71cd: $f4
    halt                                          ; $71ce: $76
    dec e                                         ; $71cf: $1d
    add c                                         ; $71d0: $81
    db $fc                                        ; $71d1: $fc
    push af                                       ; $71d2: $f5
    dec hl                                        ; $71d3: $2b
    ld l, h                                       ; $71d4: $6c
    sbc d                                         ; $71d5: $9a
    and [hl]                                      ; $71d6: $a6
    add hl, sp                                    ; $71d7: $39
    ld c, c                                       ; $71d8: $49
    rra                                           ; $71d9: $1f
    dec de                                        ; $71da: $1b

jr_034_71db:
    ld [$f265], sp                                ; $71db: $08 $65 $f2
    ld b, a                                       ; $71de: $47
    rst $38                                       ; $71df: $ff
    ld h, [hl]                                    ; $71e0: $66
    sbc $f7                                       ; $71e1: $de $f7
    dec d                                         ; $71e3: $15
    and h                                         ; $71e4: $a4
    dec l                                         ; $71e5: $2d
    sub e                                         ; $71e6: $93
    ccf                                           ; $71e7: $3f
    ld a, [$f337]                                 ; $71e8: $fa $37 $f3
    cp [hl]                                       ; $71eb: $be
    xor a                                         ; $71ec: $af
    ld h, b                                       ; $71ed: $60
    add $26                                       ; $71ee: $c6 $26
    add l                                         ; $71f0: $85
    set 1, d                                      ; $71f1: $cb $ca
    ld d, a                                       ; $71f3: $57
    db $fc                                        ; $71f4: $fc
    dec [hl]                                      ; $71f5: $35
    ld hl, sp-$55                                 ; $71f6: $f8 $ab
    cp [hl]                                       ; $71f8: $be
    ld hl, sp+$1b                                 ; $71f9: $f8 $1b
    sub d                                         ; $71fb: $92
    inc bc                                        ; $71fc: $03
    and e                                         ; $71fd: $a3
    ccf                                           ; $71fe: $3f
    ld [hl], $10                                  ; $71ff: $36 $10
    xor d                                         ; $7201: $aa
    cp l                                          ; $7202: $bd
    ld e, e                                       ; $7203: $5b
    db $fd                                        ; $7204: $fd
    or c                                          ; $7205: $b1
    ld a, [$7c97]                                 ; $7206: $fa $97 $7c
    rrca                                          ; $7209: $0f
    db $e4                                        ; $720a: $e4
    rst $08                                       ; $720b: $cf
    ld e, e                                       ; $720c: $5b
    db $ed                                        ; $720d: $ed
    db $ed                                        ; $720e: $ed
    ld [$94f9], sp                                ; $720f: $08 $f9 $94

jr_034_7212:
    ld a, d                                       ; $7212: $7a
    xor e                                         ; $7213: $ab
    adc l                                         ; $7214: $8d
    ld h, l                                       ; $7215: $65
    inc d                                         ; $7216: $14
    rlca                                          ; $7217: $07
    add c                                         ; $7218: $81
    inc sp                                        ; $7219: $33
    and $49                                       ; $721a: $e6 $49
    rra                                           ; $721c: $1f
    ld a, e                                       ; $721d: $7b
    sub b                                         ; $721e: $90
    db $10                                        ; $721f: $10
    cp l                                          ; $7220: $bd
    ld h, l                                       ; $7221: $65
    ld a, [c]                                     ; $7222: $f2
    ld b, a                                       ; $7223: $47
    rst $38                                       ; $7224: $ff
    ld h, [hl]                                    ; $7225: $66
    ld e, [hl]                                    ; $7226: $5e
    ld [hl], d                                    ; $7227: $72
    ld [c], a                                     ; $7228: $e2
    ld e, e                                       ; $7229: $5b
    rla                                           ; $722a: $17
    dec e                                         ; $722b: $1d
    sbc e                                         ; $722c: $9b
    or [hl]                                       ; $722d: $b6
    add hl, bc                                    ; $722e: $09
    db $fc                                        ; $722f: $fc
    push af                                       ; $7230: $f5
    ld e, l                                       ; $7231: $5d
    inc b                                         ; $7232: $04
    pop hl                                        ; $7233: $e1
    ld [hl], e                                    ; $7234: $73
    push af                                       ; $7235: $f5
    rst $00                                       ; $7236: $c7
    ld h, d                                       ; $7237: $62
    xor h                                         ; $7238: $ac
    xor $57                                       ; $7239: $ee $57
    db $fc                                        ; $723b: $fc
    ld d, l                                       ; $723c: $55
    add a                                         ; $723d: $87
    dec hl                                        ; $723e: $2b
    pop bc                                        ; $723f: $c1
    rra                                           ; $7240: $1f
    ld b, h                                       ; $7241: $44
    and $4d                                       ; $7242: $e6 $4d
    ld [hl], e                                    ; $7244: $73
    ld c, c                                       ; $7245: $49
    pop hl                                        ; $7246: $e1
    ld c, $55                                     ; $7247: $0e $55
    ld b, h                                       ; $7249: $44
    or $59                                        ; $724a: $f6 $59
    scf                                           ; $724c: $37
    db $10                                        ; $724d: $10
    cp d                                          ; $724e: $ba
    pop bc                                        ; $724f: $c1
    rra                                           ; $7250: $1f
    call nc, $9042                                ; $7251: $d4 $42 $90
    jr z, jr_034_71db                             ; $7254: $28 $85

    or h                                          ; $7256: $b4
    dec e                                         ; $7257: $1d
    ld e, $eb                                     ; $7258: $1e $eb
    db $ed                                        ; $725a: $ed
    jr z, jr_034_7212                             ; $725b: $28 $b5

    scf                                           ; $725d: $37
    add sp, $50                                   ; $725e: $e8 $50
    sub [hl]                                      ; $7260: $96
    xor h                                         ; $7261: $ac
    or d                                          ; $7262: $b2
    or h                                          ; $7263: $b4
    dec e                                         ; $7264: $1d
    ld h, [hl]                                    ; $7265: $66

jr_034_7266:
    ld hl, $03bd                                  ; $7266: $21 $bd $03
    adc d                                         ; $7269: $8a
    adc [hl]                                      ; $726a: $8e
    xor l                                         ; $726b: $ad
    jr c, jr_034_7266                             ; $726c: $38 $f8

    add e                                         ; $726e: $83
    sbc d                                         ; $726f: $9a
    push af                                       ; $7270: $f5
    halt                                          ; $7271: $76
    add e                                         ; $7272: $83
    ccf                                           ; $7273: $3f
    add sp, $57                                   ; $7274: $e8 $57
    sbc b                                         ; $7276: $98
    or [hl]                                       ; $7277: $b6
    ld c, h                                       ; $7278: $4c
    push bc                                       ; $7279: $c5
    ld e, a                                       ; $727a: $5f
    rst $28                                       ; $727b: $ef
    ld c, $b0                                     ; $727c: $0e $b0
    and h                                         ; $727e: $a4
    add hl, sp                                    ; $727f: $39
    or e                                          ; $7280: $b3
    rlca                                          ; $7281: $07
    ld a, a                                       ; $7282: $7f
    ret nc                                        ; $7283: $d0

    pop bc                                        ; $7284: $c1
    adc e                                         ; $7285: $8b

jr_034_7286:
    ld d, d                                       ; $7286: $52
    add h                                         ; $7287: $84
    call nz, $91d5                                ; $7288: $c4 $d5 $91
    and l                                         ; $728b: $a5
    db $ed                                        ; $728c: $ed
    ldh a, [$58]                                  ; $728d: $f0 $58
    ld l, a                                       ; $728f: $6f
    ld b, a                                       ; $7290: $47
    xor c                                         ; $7291: $a9
    cp l                                          ; $7292: $bd
    ld b, c                                       ; $7293: $41
    add a                                         ; $7294: $87
    or d                                          ; $7295: $b2
    ld h, h                                       ; $7296: $64
    sub l                                         ; $7297: $95
    and l                                         ; $7298: $a5
    ld l, l                                       ; $7299: $6d
    sub d                                         ; $729a: $92
    ld a, [hl+]                                   ; $729b: $2a
    ld c, l                                       ; $729c: $4d
    ld b, h                                       ; $729d: $44
    add h                                         ; $729e: $84
    ld l, d                                       ; $729f: $6a
    rst $00                                       ; $72a0: $c7
    ld a, d                                       ; $72a1: $7a
    dec sp                                        ; $72a2: $3b
    adc e                                         ; $72a3: $8b
    ld e, b                                       ; $72a4: $58
    xor l                                         ; $72a5: $ad
    ld a, $77                                     ; $72a6: $3e $77
    and h                                         ; $72a8: $a4
    and h                                         ; $72a9: $a4
    sbc l                                         ; $72aa: $9d
    db $ed                                        ; $72ab: $ed
    jp c, $bd8c                                   ; $72ac: $da $8c $bd

    nop                                           ; $72af: $00
    xor [hl]                                      ; $72b0: $ae
    db $e3                                        ; $72b1: $e3
    call c, Call_000_2fec                         ; $72b2: $dc $ec $2f
    cp c                                          ; $72b5: $b9
    ret z                                         ; $72b6: $c8

    rst $18                                       ; $72b7: $df
    ret c                                         ; $72b8: $d8

    db $db                                        ; $72b9: $db
    jr c, jr_034_7286                             ; $72ba: $38 $ca

    add h                                         ; $72bc: $84
    ldh [$2f], a                                  ; $72bd: $e0 $2f
    call Call_034_4901                            ; $72bf: $cd $01 $49
    rra                                           ; $72c2: $1f
    adc e                                         ; $72c3: $8b
    or c                                          ; $72c4: $b1
    cp d                                          ; $72c5: $ba
    dec de                                        ; $72c6: $1b
    db $fc                                        ; $72c7: $fc
    ld b, c                                       ; $72c8: $41
    ccf                                           ; $72c9: $3f
    and l                                         ; $72ca: $a5
    xor $09                                       ; $72cb: $ee $09
    ld a, [bc]                                    ; $72cd: $0a
    ld a, $78                                     ; $72ce: $3e $78
    rst $08                                       ; $72d0: $cf
    dec e                                         ; $72d1: $1d
    ld [hl], l                                    ; $72d2: $75
    ld bc, $d258                                  ; $72d3: $01 $58 $d2
    halt                                          ; $72d6: $76
    db $e4                                        ; $72d7: $e4
    rst $20                                       ; $72d8: $e7
    xor a                                         ; $72d9: $af
    ld a, [hl-]                                   ; $72da: $3a
    ld hl, sp-$55                                 ; $72db: $f8 $ab
    ld h, l                                       ; $72dd: $65
    xor l                                         ; $72de: $ad
    and b                                         ; $72df: $a0
    ld e, a                                       ; $72e0: $5f
    ld de, $e1d5                                  ; $72e1: $11 $d5 $e1
    ld [hl-], a                                   ; $72e4: $32
    dec d                                         ; $72e5: $15
    ld a, a                                       ; $72e6: $7f
    ld c, [hl]                                    ; $72e7: $4e
    ld [hl], e                                    ; $72e8: $73
    ld c, c                                       ; $72e9: $49
    adc [hl]                                      ; $72ea: $8e
    db $ed                                        ; $72eb: $ed
    inc l                                         ; $72ec: $2c
    ld h, d                                       ; $72ed: $62
    or l                                          ; $72ee: $b5
    cp d                                          ; $72ef: $ba
    or a                                          ; $72f0: $b7
    ld l, e                                       ; $72f1: $6b
    rla                                           ; $72f2: $17
    call c, $fe0d                                 ; $72f3: $dc $0d $fe
    and b                                         ; $72f6: $a0
    add a                                         ; $72f7: $87
    sbc a                                         ; $72f8: $9f
    sub h                                         ; $72f9: $94
    ld h, $6e                                     ; $72fa: $26 $6e
    ld h, [hl]                                    ; $72fc: $66
    jp hl                                         ; $72fd: $e9


    db $fd                                        ; $72fe: $fd
    dec bc                                        ; $72ff: $0b
    ld a, b                                       ; $7300: $78

Call_034_7301:
    rst $08                                       ; $7301: $cf
    or l                                          ; $7302: $b5
    inc [hl]                                      ; $7303: $34
    db $10                                        ; $7304: $10
    ld c, d                                       ; $7305: $4a
    ld d, [hl]                                    ; $7306: $56
    ld b, a                                       ; $7307: $47
    sub e                                         ; $7308: $93
    cpl                                           ; $7309: $2f
    inc e                                         ; $730a: $1c
    ld [$94f8], sp                                ; $730b: $08 $f8 $94
    and b                                         ; $730e: $a0
    and h                                         ; $730f: $a4
    call z, $99b4                                 ; $7310: $cc $b4 $99
    or e                                          ; $7313: $b3
    cp a                                          ; $7314: $bf
    sbc c                                         ; $7315: $99
    scf                                           ; $7316: $37
    ld l, l                                       ; $7317: $6d
    add a                                         ; $7318: $87
    rst $00                                       ; $7319: $c7
    cp d                                          ; $731a: $ba
    ret z                                         ; $731b: $c8

    rra                                           ; $731c: $1f
    dec [hl]                                      ; $731d: $35
    ld a, a                                       ; $731e: $7f
    ldh [$ce], a                                  ; $731f: $e0 $ce
    and $40                                       ; $7321: $e6 $40
    ld d, b                                       ; $7323: $50
    sbc e                                         ; $7324: $9b
    sbc l                                         ; $7325: $9d
    dec sp                                        ; $7326: $3b
    ld [$b002], a                                 ; $7327: $ea $02 $b0
    and h                                         ; $732a: $a4
    db $ed                                        ; $732b: $ed
    inc l                                         ; $732c: $2c
    and h                                         ; $732d: $a4
    dec h                                         ; $732e: $25
    jp z, $f904                                   ; $732f: $ca $04 $f9

    call nz, $da80                                ; $7332: $c4 $80 $da
    dec de                                        ; $7335: $1b
    cp b                                          ; $7336: $b8
    inc b                                         ; $7337: $04
    ld c, c                                       ; $7338: $49
    jp z, Jump_034_6328                           ; $7339: $ca $28 $63

    ld [$5622], sp                                ; $733c: $08 $22 $56
    ld e, a                                       ; $733f: $5f
    sub d                                         ; $7340: $92
    or [hl]                                       ; $7341: $b6
    ld c, c                                       ; $7342: $49
    sub [hl]                                      ; $7343: $96
    adc $b3                                       ; $7344: $ce $b3
    ld h, b                                       ; $7346: $60
    sub c                                         ; $7347: $91
    ldh [rIF], a                                  ; $7348: $e0 $0f
    ld a, [de]                                    ; $734a: $1a
    ld [$ed65], sp                                ; $734b: $08 $65 $ed
    push de                                       ; $734e: $d5
    add [hl]                                      ; $734f: $86
    inc [hl]                                      ; $7350: $34
    rlca                                          ; $7351: $07
    or e                                          ; $7352: $b3
    ld a, [de]                                    ; $7353: $1a
    ret z                                         ; $7354: $c8

    ret nc                                        ; $7355: $d0

    rst $30                                       ; $7356: $f7
    ld e, c                                       ; $7357: $59
    scf                                           ; $7358: $37
    ld hl, sp-$15                                 ; $7359: $f8 $eb
    and a                                         ; $735b: $a7
    call nc, $b698                                ; $735c: $d4 $98 $b6
    inc hl                                        ; $735f: $23
    ccf                                           ; $7360: $3f
    dec l                                         ; $7361: $2d
    ld a, [$cf79]                                 ; $7362: $fa $79 $cf
    cp l                                          ; $7365: $bd
    ret c                                         ; $7366: $d8

    ld [hl-], a                                   ; $7367: $32
    rst $30                                       ; $7368: $f7
    rrca                                          ; $7369: $0f
    cp b                                          ; $736a: $b8
    ld b, a                                       ; $736b: $47
    ld c, b                                       ; $736c: $48
    ld c, a                                       ; $736d: $4f
    dec [hl]                                      ; $736e: $35
    sub b                                         ; $736f: $90
    and c                                         ; $7370: $a1
    ld [hl], c                                    ; $7371: $71
    inc e                                         ; $7372: $1c
    sub [hl]                                      ; $7373: $96
    xor $c5                                       ; $7374: $ee $c5
    ld e, a                                       ; $7376: $5f
    ld b, a                                       ; $7377: $47
    xor c                                         ; $7378: $a9
    cp l                                          ; $7379: $bd
    add c                                         ; $737a: $81
    ei                                            ; $737b: $fb
    ld e, c                                       ; $737c: $59
    ld [hl], d                                    ; $737d: $72
    ld hl, sp-$3f                                 ; $737e: $f8 $c1
    sub b                                         ; $7380: $90
    inc e                                         ; $7381: $1c
    ld c, h                                       ; $7382: $4c
    di                                            ; $7383: $f3
    add a                                         ; $7384: $87
    ld c, l                                       ; $7385: $4d
    cp $0a                                        ; $7386: $fe $0a
    rlca                                          ; $7388: $07
    call nc, $c0de                                ; $7389: $d4 $de $c0
    rst $20                                       ; $738c: $e7
    sbc $1d                                       ; $738d: $de $1d
    or h                                          ; $738f: $b4
    ld e, d                                       ; $7390: $5a
    push af                                       ; $7391: $f5
    ld d, e                                       ; $7392: $53
    ld [$a09e], a                                 ; $7393: $ea $9e $a0
    ldh [$83], a                                  ; $7396: $e0 $83
    or a                                          ; $7398: $b7
    sbc c                                         ; $7399: $99
    add hl, bc                                    ; $739a: $09
    or l                                          ; $739b: $b5
    jp c, $f7db                                   ; $739c: $da $db $f7

    ld de, $26d2                                  ; $739f: $11 $d2 $26
    ldh a, [$d7]                                  ; $73a2: $f0 $d7
    call z, $abac                                 ; $73a4: $cc $ac $ab
    ld b, e                                       ; $73a7: $43
    ld a, d                                       ; $73a8: $7a
    xor d                                         ; $73a9: $aa
    push af                                       ; $73aa: $f5
    push bc                                       ; $73ab: $c5
    ld e, a                                       ; $73ac: $5f
    dec e                                         ; $73ad: $1d
    db $eb                                        ; $73ae: $eb
    dec l                                         ; $73af: $2d
    inc de                                        ; $73b0: $13
    db $e4                                        ; $73b1: $e4
    inc de                                        ; $73b2: $13
    inc bc                                        ; $73b3: $03
    ld l, d                                       ; $73b4: $6a
    ld l, a                                       ; $73b5: $6f
    ld [hl], b                                    ; $73b6: $70
    xor $dd                                       ; $73b7: $ee $dd
    ld b, c                                       ; $73b9: $41
    xor e                                         ; $73ba: $ab
    ld d, l                                       ; $73bb: $55
    pop af                                        ; $73bc: $f1
    ld a, [hl+]                                   ; $73bd: $2a
    db $fd                                        ; $73be: $fd
    sbc e                                         ; $73bf: $9b
    cp c                                          ; $73c0: $b9
    sbc c                                         ; $73c1: $99
    ld e, c                                       ; $73c2: $59
    ld sp, hl                                     ; $73c3: $f9
    adc d                                         ; $73c4: $8a
    ccf                                           ; $73c5: $3f
    add sp, -$05                                  ; $73c6: $e8 $fb
    ld [$3b69], sp                                ; $73c8: $08 $69 $3b
    xor e                                         ; $73cb: $ab
    add c                                         ; $73cc: $81
    inc c                                         ; $73cd: $0c
    dec a                                         ; $73ce: $3d
    ld a, $7f                                     ; $73cf: $3e $7f
    rst $20                                       ; $73d1: $e7
    ld [$588f], a                                 ; $73d2: $ea $8f $58
    xor l                                         ; $73d5: $ad
    ld c, d                                       ; $73d6: $4a
    ld d, [hl]                                    ; $73d7: $56
    push de                                       ; $73d8: $d5
    adc [hl]                                      ; $73d9: $8e
    or l                                          ; $73da: $b5
    ld [hl], h                                    ; $73db: $74
    inc de                                        ; $73dc: $13
    ld sp, hl                                     ; $73dd: $f9
    ld b, e                                       ; $73de: $43
    ldh a, [rPCM12]                               ; $73df: $f0 $76
    sbc [hl]                                      ; $73e1: $9e
    dec b                                         ; $73e2: $05
    adc e                                         ; $73e3: $8b
    inc b                                         ; $73e4: $04
    ld a, a                                       ; $73e5: $7f
    add b                                         ; $73e6: $80
    ld [$b56a], sp                                ; $73e7: $08 $6a $b5
    ld a, e                                       ; $73ea: $7b
    cp e                                          ; $73eb: $bb
    adc [hl]                                      ; $73ec: $8e
    inc bc                                        ; $73ed: $03
    pop hl                                        ; $73ee: $e1
    ld e, h                                       ; $73ef: $5c
    ld h, e                                       ; $73f0: $63
    pop de                                        ; $73f1: $d1
    ld d, c                                       ; $73f2: $51
    db $ed                                        ; $73f3: $ed
    db $dd                                        ; $73f4: $dd
    ld [hl], e                                    ; $73f5: $73
    or l                                          ; $73f6: $b5
    ld [$283d], a                                 ; $73f7: $ea $3d $28
    ld b, l                                       ; $73fa: $45
    add sp, $5e                                   ; $73fb: $e8 $5e
    db $fc                                        ; $73fd: $fc
    push af                                       ; $73fe: $f5
    ldh a, [$93]                                  ; $73ff: $f0 $93
    adc [hl]                                      ; $7401: $8e
    ld d, d                                       ; $7402: $52
    ld a, e                                       ; $7403: $7b
    inc bc                                        ; $7404: $03
    ld [hl], a                                    ; $7405: $77
    ret nc                                        ; $7406: $d0

    ld b, d                                       ; $7407: $42
    jp Jump_034_6de2                              ; $7408: $c3 $e2 $6d


    sbc d                                         ; $740b: $9a
    and [hl]                                      ; $740c: $a6
    add hl, sp                                    ; $740d: $39
    jp Jump_000_3efc                              ; $740e: $c3 $fc $3e


    dec b                                         ; $7411: $05
    ld d, a                                       ; $7412: $57
    add a                                         ; $7413: $87
    set 4, h                                      ; $7414: $cb $e4
    adc a                                         ; $7416: $8f
    ld a, [hl+]                                   ; $7417: $2a
    ld a, [hl]                                    ; $7418: $7e
    di                                            ; $7419: $f3
    ld l, d                                       ; $741a: $6a
    ld l, a                                       ; $741b: $6f
    ld b, a                                       ; $741c: $47
    ld a, a                                       ; $741d: $7f
    ld b, h                                       ; $741e: $44

jr_034_741f:
    dec bc                                        ; $741f: $0b
    ld c, $38                                     ; $7420: $0e $38
    inc l                                         ; $7422: $2c
    adc l                                         ; $7423: $8d
    xor l                                         ; $7424: $ad
    or [hl]                                       ; $7425: $b6
    ld [hl], h                                    ; $7426: $74
    ld a, b                                       ; $7427: $78
    ld l, h                                       ; $7428: $6c
    or $37                                        ; $7429: $f6 $37
    jp $29f7                                      ; $742b: $c3 $f7 $29


    ld [hl], l                                    ; $742e: $75
    db $e3                                        ; $742f: $e3
    add sp, $50                                   ; $7430: $e8 $50
    sub l                                         ; $7432: $95
    add hl, sp                                    ; $7433: $39
    db $ed                                        ; $7434: $ed
    xor h                                         ; $7435: $ac
    ld a, $fe                                     ; $7436: $3e $fe
    ld [$d5fe], a                                 ; $7438: $ea $fe $d5
    ld d, $63                                     ; $743b: $16 $63
    rst $18                                       ; $743d: $df
    add a                                         ; $743e: $87
    or d                                          ; $743f: $b2
    ld d, $07                                     ; $7440: $16 $07
    ld h, b                                       ; $7442: $60
    inc de                                        ; $7443: $13
    ld d, $2c                                     ; $7444: $16 $2c
    ld b, [hl]                                    ; $7446: $46
    ld [hl], h                                    ; $7447: $74
    rst $38                                       ; $7448: $ff
    ld [hl], $de                                  ; $7449: $36 $de
    ld a, d                                       ; $744b: $7a
    sbc e                                         ; $744c: $9b
    sbc c                                         ; $744d: $99
    db $ec                                        ; $744e: $ec
    ret z                                         ; $744f: $c8

jr_034_7450:
    jr nz, jr_034_741f                            ; $7450: $20 $cd

    ld bc, $f0cc                                  ; $7452: $01 $cc $f0
    xor e                                         ; $7455: $ab
    ld c, $fe                                     ; $7456: $0e $fe
    ld a, [de]                                    ; $7458: $1a
    ld e, e                                       ; $7459: $5b
    ld l, l                                       ; $745a: $6d
    jp hl                                         ; $745b: $e9


    db $ec                                        ; $745c: $ec
    adc c                                         ; $745d: $89
    rst $08                                       ; $745e: $cf
    dec e                                         ; $745f: $1d
    cp h                                          ; $7460: $bc
    or [hl]                                       ; $7461: $b6
    ret                                           ; $7462: $c9


    ccf                                           ; $7463: $3f
    sub e                                         ; $7464: $93
    ret nc                                        ; $7465: $d0

    ret c                                         ; $7466: $d8

    ld h, h                                       ; $7467: $64
    ld [de], a                                    ; $7468: $12
    add b                                         ; $7469: $80
    xor e                                         ; $746a: $ab
    adc [hl]                                      ; $746b: $8e
    or h                                          ; $746c: $b4
    add hl, bc                                    ; $746d: $09
    db $fc                                        ; $746e: $fc
    push af                                       ; $746f: $f5
    ld a, l                                       ; $7470: $7d
    sub $45                                       ; $7471: $d6 $45
    cp $ae                                        ; $7473: $fe $ae
    xor l                                         ; $7475: $ad
    ld h, e                                       ; $7476: $63
    adc a                                         ; $7477: $8f
    ld c, a                                       ; $7478: $4f
    cp e                                          ; $7479: $bb
    inc h                                         ; $747a: $24
    jr nz, jr_034_7450                            ; $747b: $20 $d3

    ldh [$cf], a                                  ; $747d: $e0 $cf

Jump_034_747f:
    dec a                                         ; $747f: $3d
    ld b, c                                       ; $7480: $41
    pop bc                                        ; $7481: $c1
    rlca                                          ; $7482: $07
    ld l, a                                       ; $7483: $6f
    ld h, e                                       ; $7484: $63
    adc e                                         ; $7485: $8b
    adc [hl]                                      ; $7486: $8e
    push af                                       ; $7487: $f5
    ld d, c                                       ; $7488: $51
    add $2f                                       ; $7489: $c6 $2f
    ldh [$6d], a                                  ; $748b: $e0 $6d
    ld h, [hl]                                    ; $748d: $66
    ld b, d                                       ; $748e: $42
    xor l                                         ; $748f: $ad
    or $a6                                        ; $7490: $f6 $a6
    add hl, sp                                    ; $7492: $39
    add hl, bc                                    ; $7493: $09
    db $fc                                        ; $7494: $fc
    dec [hl]                                      ; $7495: $35
    and e                                         ; $7496: $a3
    ld e, a                                       ; $7497: $5f
    or c                                          ; $7498: $b1
    ld a, $37                                     ; $7499: $3e $37
    ld hl, sp-$15                                 ; $749b: $f8 $eb
    ei                                            ; $749d: $fb
    xor h                                         ; $749e: $ac
    dec de                                        ; $749f: $1b
    sub d                                         ; $74a0: $92
    ld a, c                                       ; $74a1: $79
    or l                                          ; $74a2: $b5
    pop hl                                        ; $74a3: $e1
    cp $b1                                        ; $74a4: $fe $b1
    ld e, a                                       ; $74a6: $5f
    ld de, $ded5                                  ; $74a7: $11 $d5 $de
    jp nc, $efb1                                  ; $74aa: $d2 $b1 $ef

    sbc $2f                                       ; $74ad: $de $2f
    db $10                                        ; $74af: $10
    sbc c                                         ; $74b0: $99
    or a                                          ; $74b1: $b7
    ld c, h                                       ; $74b2: $4c
    ld hl, sp-$60                                 ; $74b3: $f8 $a0
    cp h                                          ; $74b5: $bc
    dec a                                         ; $74b6: $3d
    ld [bc], a                                    ; $74b7: $02
    xor d                                         ; $74b8: $aa
    cp l                                          ; $74b9: $bd
    dec e                                         ; $74ba: $1d
    xor d                                         ; $74bb: $aa
    xor c                                         ; $74bc: $a9
    push hl                                       ; $74bd: $e5
    ld [hl], $f6                                  ; $74be: $36 $f6
    nop                                           ; $74c0: $00
    pop hl                                        ; $74c1: $e1
    ld l, l                                       ; $74c2: $6d
    ld h, [hl]                                    ; $74c3: $66
    db $f4                                        ; $74c4: $f4
    di                                            ; $74c5: $f3
    sbc [hl]                                      ; $74c6: $9e
    xor e                                         ; $74c7: $ab
    jp $e0c5                                      ; $74c8: $c3 $c5 $e0


    xor a                                         ; $74cb: $af
    ld [hl], c                                    ; $74cc: $71
    sub h                                         ; $74cd: $94
    ld a, h                                       ; $74ce: $7c
    ld [hl], a                                    ; $74cf: $77
    add b                                         ; $74d0: $80
    or a                                          ; $74d1: $b7
    ld c, h                                       ; $74d2: $4c
    cp b                                          ; $74d3: $b8
    ld hl, sp-$53                                 ; $74d4: $f8 $ad
    xor h                                         ; $74d6: $ac
    adc c                                         ; $74d7: $89
    ld e, b                                       ; $74d8: $58
    db $ed                                        ; $74d9: $ed
    ld c, l                                       ; $74da: $4d
    ld [hl], e                                    ; $74db: $73
    or e                                          ; $74dc: $b3
    ld e, a                                       ; $74dd: $5f
    ld [hl], d                                    ; $74de: $72
    ld a, h                                       ; $74df: $7c
    ld l, d                                       ; $74e0: $6a
    cp c                                          ; $74e1: $b9
    dec sp                                        ; $74e2: $3b
    ret nc                                        ; $74e3: $d0

    ld a, l                                       ; $74e4: $7d
    rra                                           ; $74e5: $1f
    jp z, Jump_000_3fdc                           ; $74e6: $ca $dc $3f

    ldh [$c6], a                                  ; $74e9: $e0 $c6
    ld [hl], c                                    ; $74eb: $71
    ld e, b                                       ; $74ec: $58
    ld a, d                                       ; $74ed: $7a
    add d                                         ; $74ee: $82
    add d                                         ; $74ef: $82
    rrca                                          ; $74f0: $0f
    sbc $c6                                       ; $74f1: $de $c6
    ld d, $1d                                     ; $74f3: $16 $1d
    db $eb                                        ; $74f5: $eb
    and e                                         ; $74f6: $a3
    jp $7248                                      ; $74f7: $c3 $48 $72


    ld [hl], l                                    ; $74fa: $75
    ret nc                                        ; $74fb: $d0

    add d                                         ; $74fc: $82
    ld h, b                                       ; $74fd: $60
    ld a, [hl]                                    ; $74fe: $7e
    add e                                         ; $74ff: $83
    or h                                          ; $7500: $b4
    call z, Call_034_6f70                         ; $7501: $cc $70 $6f
    ld h, e                                       ; $7504: $63
    rst $28                                       ; $7505: $ef
    ld a, d                                       ; $7506: $7a
    ld a, e                                       ; $7507: $7b
    xor d                                         ; $7508: $aa
    push af                                       ; $7509: $f5
    push bc                                       ; $750a: $c5
    ld e, a                                       ; $750b: $5f
    ld c, c                                       ; $750c: $49
    xor h                                         ; $750d: $ac
    push hl                                       ; $750e: $e5
    ld d, e                                       ; $750f: $53
    ld e, d                                       ; $7510: $5a
    ld [hl], h                                    ; $7511: $74
    ld l, h                                       ; $7512: $6c
    daa                                           ; $7513: $27
    ld l, $86                                     ; $7514: $2e $86
    ld e, a                                       ; $7516: $5f
    ld [hl], l                                    ; $7517: $75
    ld c, b                                       ; $7518: $48
    ld [hl], l                                    ; $7519: $75
    cp b                                          ; $751a: $b8
    and e                                         ; $751b: $a3
    inc de                                        ; $751c: $13
    ld d, a                                       ; $751d: $57
    cp e                                          ; $751e: $bb
    adc [hl]                                      ; $751f: $8e
    dec a                                         ; $7520: $3d
    ld a, $6d                                     ; $7521: $3e $6d
    and $fd                                       ; $7523: $e6 $fd
    xor d                                         ; $7525: $aa
    ld a, a                                       ; $7526: $7f
    db $d3                                        ; $7527: $d3
    inc e                                         ; $7528: $1c
    ret                                           ; $7529: $c9


    rra                                           ; $752a: $1f
    and c                                         ; $752b: $a1
    ld e, d                                       ; $752c: $5a
    push af                                       ; $752d: $f5
    add l                                         ; $752e: $85
    and l                                         ; $752f: $a5
    ld hl, $5799                                  ; $7530: $21 $99 $57
    rst $18                                       ; $7533: $df
    xor a                                         ; $7534: $af
    sbc [hl]                                      ; $7535: $9e
    and b                                         ; $7536: $a0
    ldh [$83], a                                  ; $7537: $e0 $83
    or a                                          ; $7539: $b7
    inc b                                         ; $753a: $04
    ld c, c                                       ; $753b: $49
    ld a, d                                       ; $753c: $7a
    jp nz, $ac57                                  ; $753d: $c2 $57 $ac

    dec b                                         ; $7540: $05
    inc h                                         ; $7541: $24
    ld [hl], c                                    ; $7542: $71
    ld l, a                                       ; $7543: $6f
    ld l, [hl]                                    ; $7544: $6e
    ld h, [hl]                                    ; $7545: $66
    db $f4                                        ; $7546: $f4
    di                                            ; $7547: $f3
    adc $98                                       ; $7548: $ce $98
    inc bc                                        ; $754a: $03
    jp Jump_034_59b1                              ; $754b: $c3 $b1 $59


    or b                                          ; $754e: $b0
    ret nc                                        ; $754f: $d0

    sbc e                                         ; $7550: $9b
    ld h, e                                       ; $7551: $63
    cp l                                          ; $7552: $bd
    dec a                                         ; $7553: $3d
    pop hl                                        ; $7554: $e1
    dec hl                                        ; $7555: $2b
    sub $02                                       ; $7556: $d6 $02
    ld a, [c]                                     ; $7558: $f2
    rst $30                                       ; $7559: $f7
    halt                                          ; $755a: $76
    xor [hl]                                      ; $755b: $ae
    or [hl]                                       ; $755c: $b6
    ld d, h                                       ; $755d: $54
    add a                                         ; $755e: $87
    ld [hl], h                                    ; $755f: $74
    cpl                                           ; $7560: $2f
    cp $fa                                        ; $7561: $fe $fa
    ld c, h                                       ; $7563: $4c
    add hl, bc                                    ; $7564: $09
    ld l, a                                       ; $7565: $6f
    ld l, a                                       ; $7566: $6f
    ld h, e                                       ; $7567: $63
    rst $28                                       ; $7568: $ef
    add d                                         ; $7569: $82
    rst $08                                       ; $756a: $cf
    dec e                                         ; $756b: $1d
    ld [hl], l                                    ; $756c: $75
    ld bc, $d258                                  ; $756d: $01 $58 $d2
    inc e                                         ; $7570: $1c
    and e                                         ; $7571: $a3
    ld a, $62                                     ; $7572: $3e $62
    cp a                                          ; $7574: $bf
    ld [hl+], a                                   ; $7575: $22
    adc $d5                                       ; $7576: $ce $d5
    rra                                           ; $7578: $1f
    or c                                          ; $7579: $b1
    ld e, d                                       ; $757a: $5a
    ld [hl], l                                    ; $757b: $75
    add e                                         ; $757c: $83
    ccf                                           ; $757d: $3f
    ld l, b                                       ; $757e: $68
    ld l, h                                       ; $757f: $6c
    dec e                                         ; $7580: $1d
    db $eb                                        ; $7581: $eb
    db $ed                                        ; $7582: $ed
    ld [$9a23], sp                                ; $7583: $08 $23 $9a
    sub [hl]                                      ; $7586: $96
    ld c, b                                       ; $7587: $48
    and h                                         ; $7588: $a4
    inc d                                         ; $7589: $14
    pop hl                                        ; $758a: $e1
    call c, Call_000_1751                         ; $758b: $dc $51 $17
    add b                                         ; $758e: $80
    dec h                                         ; $758f: $25
    call $c301                                    ; $7590: $cd $01 $c3
    or c                                          ; $7593: $b1
    rst $08                                       ; $7594: $cf
    ld sp, $9c0e                                  ; $7595: $31 $0e $9c
    xor e                                         ; $7598: $ab
    ccf                                           ; $7599: $3f
    ld h, d                                       ; $759a: $62
    sbc c                                         ; $759b: $99
    ei                                            ; $759c: $fb
    ld l, a                                       ; $759d: $6f
    xor [hl]                                      ; $759e: $ae
    ld c, $97                                     ; $759f: $0e $97
    ld c, c                                       ; $75a1: $49
    rst $00                                       ; $75a2: $c7
    ret nz                                        ; $75a3: $c0

    or e                                          ; $75a4: $b3
    call nz, Call_034_5962                        ; $75a5: $c4 $62 $59
    rrca                                          ; $75a8: $0f
    ld e, [hl]                                    ; $75a9: $5e
    ld b, d                                       ; $75aa: $42
    ld d, [hl]                                    ; $75ab: $56
    add hl, de                                    ; $75ac: $19
    sbc h                                         ; $75ad: $9c
    ld a, e                                       ; $75ae: $7b
    ld [hl], a                                    ; $75af: $77
    ret nc                                        ; $75b0: $d0

jr_034_75b1:
    ld e, d                                       ; $75b1: $5a
    ld a, [de]                                    ; $75b2: $1a
    ld c, a                                       ; $75b3: $4f
    sbc d                                         ; $75b4: $9a
    db $fc                                        ; $75b5: $fc
    dec d                                         ; $75b6: $15
    ld d, d                                       ; $75b7: $52
    ccf                                           ; $75b8: $3f
    or c                                          ; $75b9: $b1
    inc [hl]                                      ; $75ba: $34
    db $10                                        ; $75bb: $10
    jp nc, $091c                                  ; $75bc: $d2 $1c $09

    db $fc                                        ; $75bf: $fc
    sub l                                         ; $75c0: $95
    push af                                       ; $75c1: $f5
    db $ed                                        ; $75c2: $ed
    ld a, [hl-]                                   ; $75c3: $3a
    ld c, $17                                     ; $75c4: $0e $17
    ld sp, hl                                     ; $75c6: $f9
    cp e                                          ; $75c7: $bb
    or [hl]                                       ; $75c8: $b6
    adc [hl]                                      ; $75c9: $8e
    ld [hl], l                                    ; $75ca: $75
    add hl, de                                    ; $75cb: $19
    inc de                                        ; $75cc: $13
    rla                                           ; $75cd: $17
    db $fd                                        ; $75ce: $fd
    cp [hl]                                       ; $75cf: $be
    add d                                         ; $75d0: $82
    ld [hl], e                                    ; $75d1: $73
    rst $28                                       ; $75d2: $ef
    sbc $6d                                       ; $75d3: $de $6d
    ldh a, [$d7]                                  ; $75d5: $f0 $d7
    ld d, l                                       ; $75d7: $55
    ld d, d                                       ; $75d8: $52
    ld [hl], h                                    ; $75d9: $74
    xor h                                         ; $75da: $ac

Jump_034_75db:
    or a                                          ; $75db: $b7
    or e                                          ; $75dc: $b3
    rst $38                                       ; $75dd: $ff
    jp $37db                                      ; $75de: $c3 $db $37


    or [hl]                                       ; $75e1: $b6
    jr c, jr_034_75b1                             ; $75e2: $38 $cd

    ld bc, $fc09                                  ; $75e4: $01 $09 $fc
    push af                                       ; $75e7: $f5
    ld c, [hl]                                    ; $75e8: $4e
    ld [de], a                                    ; $75e9: $12
    db $ed                                        ; $75ea: $ed
    ld h, [hl]                                    ; $75eb: $66
    sub [hl]                                      ; $75ec: $96
    ld [hl], l                                    ; $75ed: $75
    rst $28                                       ; $75ee: $ef
    add c                                         ; $75ef: $81
    add sp, $3d                                   ; $75f0: $e8 $3d
    rst $30                                       ; $75f2: $f7
    ld e, $ee                                     ; $75f3: $1e $ee
    pop af                                        ; $75f5: $f1
    or a                                          ; $75f6: $b7
    jp $2be4                                      ; $75f7: $c3 $e4 $2b


    ld [hl], h                                    ; $75fa: $74
    adc a                                         ; $75fb: $8f

jr_034_75fc:
    rst $08                                       ; $75fc: $cf
    rra                                           ; $75fd: $1f
    and h                                         ; $75fe: $a4
    add hl, sp                                    ; $75ff: $39
    ret                                           ; $7600: $c9


    ld h, c                                       ; $7601: $61
    xor c                                         ; $7602: $a9
    add h                                         ; $7603: $84
    ld sp, hl                                     ; $7604: $f9
    add e                                         ; $7605: $83
    ld a, [de]                                    ; $7606: $1a
    cp e                                          ; $7607: $bb
    sbc a                                         ; $7608: $9f
    cp a                                          ; $7609: $bf
    ld c, $5a                                     ; $760a: $0e $5a
    adc b                                         ; $760c: $88
    xor a                                         ; $760d: $af
    jr z, @+$7a                                   ; $760e: $28 $78

    dec sp                                        ; $7610: $3b
    inc a                                         ; $7611: $3c
    inc l                                         ; $7612: $2c
    sbc e                                         ; $7613: $9b
    and $23                                       ; $7614: $e6 $23
    dec e                                         ; $7616: $1d
    db $db                                        ; $7617: $db
    ld h, c                                       ; $7618: $61
    and d                                         ; $7619: $a2
    or h                                          ; $761a: $b4
    and l                                         ; $761b: $a5
    rst $28                                       ; $761c: $ef
    ld b, e                                       ; $761d: $43
    adc a                                         ; $761e: $8f
    sub b                                         ; $761f: $90
    ld e, d                                       ; $7620: $5a
    ret z                                         ; $7621: $c8

    adc c                                         ; $7622: $89
    adc a                                         ; $7623: $8f
    jp nz, $fab9                                  ; $7624: $c2 $b9 $fa

    inc hl                                        ; $7627: $23
    sub $70                                       ; $7628: $d6 $70
    rst $38                                       ; $762a: $ff
    ld e, b                                       ; $762b: $58
    cp b                                          ; $762c: $b8
    ldh [$d3], a                                  ; $762d: $e0 $d3
    ld d, d                                       ; $762f: $52
    add l                                         ; $7630: $85
    db $10                                        ; $7631: $10
    sbc c                                         ; $7632: $99
    or c                                          ; $7633: $b1
    inc bc                                        ; $7634: $03
    rra                                           ; $7635: $1f
    ld sp, $702c                                  ; $7636: $31 $2c $70
    xor $dd                                       ; $7639: $ee $dd
    cp e                                          ; $763b: $bb
    dec a                                         ; $763c: $3d
    cp $d6                                        ; $763d: $fe $d6
    or c                                          ; $763f: $b1
    xor $11                                       ; $7640: $ee $11
    ret nc                                        ; $7642: $d0

    inc de                                        ; $7643: $13
    cp [hl]                                       ; $7644: $be
    ld h, d                                       ; $7645: $62
    dec l                                         ; $7646: $2d
    jr nz, @+$81                                  ; $7647: $20 $7f

    ld l, a                                       ; $7649: $6f
    call $904c                                    ; $764a: $cd $4c $90
    jr z, jr_034_7654                             ; $764d: $28 $05

    ld [hl], a                                    ; $764f: $77
    ld d, $fa                                     ; $7650: $16 $fa
    sub c                                         ; $7652: $91
    ccf                                           ; $7653: $3f

jr_034_7654:
    rla                                           ; $7654: $17
    ld sp, hl                                     ; $7655: $f9
    inc hl                                        ; $7656: $23
    ld bc, $4298                                  ; $7657: $01 $98 $42
    sbc d                                         ; $765a: $9a
    inc bc                                        ; $765b: $03
    add hl, bc                                    ; $765c: $09
    db $fc                                        ; $765d: $fc
    push af                                       ; $765e: $f5
    jr jr_034_75fc                                ; $765f: $18 $9b

Jump_034_7661:
    ccf                                           ; $7661: $3f
    ld [hl], b                                    ; $7662: $70
    xor c                                         ; $7663: $a9
    ld h, l                                       ; $7664: $65
    cp l                                          ; $7665: $bd
    rst $20                                       ; $7666: $e7
    sbc $c3                                       ; $7667: $de $c3
    dec a                                         ; $7669: $3d
    cp $d6                                        ; $766a: $fe $d6
    or c                                          ; $766c: $b1
    sbc $26                                       ; $766d: $de $26
    dec sp                                        ; $766f: $3b
    jr z, @-$36                                   ; $7670: $28 $c8

    rst $18                                       ; $7672: $df
    ld e, e                                       ; $7673: $5b
    sbc a                                         ; $7674: $9f
    dec b                                         ; $7675: $05
    pop bc                                        ; $7676: $c1
    sub h                                         ; $7677: $94
    jp nz, $77b9                                  ; $7678: $c2 $b9 $77

    rlca                                          ; $767b: $07
    xor l                                         ; $767c: $ad
    ld c, $97                                     ; $767d: $0e $97
    ld c, c                                       ; $767f: $49
    rst $00                                       ; $7680: $c7
    ret nz                                        ; $7681: $c0

    or e                                          ; $7682: $b3
    call nz, $8f62                                ; $7683: $c4 $62 $8f
    sub b                                         ; $7686: $90
    cp $d5                                        ; $7687: $fe $d5
    ld e, a                                       ; $7689: $5f
    ld e, c                                       ; $768a: $59
    ld d, [hl]                                    ; $768b: $56
    rst $10                                       ; $768c: $d7
    or c                                          ; $768d: $b1
    dec e                                         ; $768e: $1d
    and $d8                                       ; $768f: $e6 $d8
    ld [hl+], a                                   ; $7691: $22
    sbc b                                         ; $7692: $98
    ld d, d                                       ; $7693: $52
    ld l, a                                       ; $7694: $6f
    sbc d                                         ; $7695: $9a
    inc bc                                        ; $7696: $03
    ld [hl], e                                    ; $7697: $73
    dec b                                         ; $7698: $05
    ld a, a                                       ; $7699: $7f
    ldh [$6e], a                                  ; $769a: $e0 $6e
    ldh a, [rTAC]                                 ; $769c: $f0 $07
    cp l                                          ; $769e: $bd
    add a                                         ; $769f: $87
    or l                                          ; $76a0: $b5
    and l                                         ; $76a1: $a5
    adc [hl]                                      ; $76a2: $8e
    db $ed                                        ; $76a3: $ed
    call z, $5fef                                 ; $76a4: $cc $ef $5f
    ret c                                         ; $76a7: $d8

    cp a                                          ; $76a8: $bf
    rst $20                                       ; $76a9: $e7
    adc [hl]                                      ; $76aa: $8e
    cp d                                          ; $76ab: $ba
    nop                                           ; $76ac: $00
    inc l                                         ; $76ad: $2c
    ld l, c                                       ; $76ae: $69
    ld c, $09                                     ; $76af: $0e $09
    db $fc                                        ; $76b1: $fc
    push af                                       ; $76b2: $f5
    ld e, l                                       ; $76b3: $5d
    inc b                                         ; $76b4: $04
    pop hl                                        ; $76b5: $e1
    ld [hl], e                                    ; $76b6: $73
    add e                                         ; $76b7: $83
    cp a                                          ; $76b8: $bf
    ld c, $5a                                     ; $76b9: $0e $5a
    sub b                                         ; $76bb: $90
    ccf                                           ; $76bc: $3f
    ld [de], a                                    ; $76bd: $12
    add b                                         ; $76be: $80
    cp e                                          ; $76bf: $bb
    pop bc                                        ; $76c0: $c1
    rra                                           ; $76c1: $1f
    db $f4                                        ; $76c2: $f4
    ld e, $d6                                     ; $76c3: $1e $d6
    sub [hl]                                      ; $76c5: $96

Jump_034_76c6:
    ld a, [de]                                    ; $76c6: $1a
    xor $1f                                       ; $76c7: $ee $1f
    db $d3                                        ; $76c9: $d3
    inc e                                         ; $76ca: $1c
    inc hl                                        ; $76cb: $23
    dec e                                         ; $76cc: $1d
    db $db                                        ; $76cd: $db
    ld de, $3446                                  ; $76ce: $11 $46 $34
    ld l, l                                       ; $76d1: $6d
    ld b, [hl]                                    ; $76d2: $46
    inc de                                        ; $76d3: $13
    sub a                                         ; $76d4: $97
    inc c                                         ; $76d5: $0c
    cp l                                          ; $76d6: $bd
    add a                                         ; $76d7: $87
    ld a, e                                       ; $76d8: $7b
    ld [hl], e                                    ; $76d9: $73
    ld l, h                                       ; $76da: $6c
    rst $38                                       ; $76db: $ff
    ld l, d                                       ; $76dc: $6a
    adc e                                         ; $76dd: $8b
    dec h                                         ; $76de: $25
    ld l, l                                       ; $76df: $6d
    sub d                                         ; $76e0: $92
    ld a, [hl+]                                   ; $76e1: $2a
    ld e, [hl]                                    ; $76e2: $5e
    sub h                                         ; $76e3: $94
    add d                                         ; $76e4: $82
    ld de, $1daa                                  ; $76e5: $11 $aa $1d
    db $eb                                        ; $76e8: $eb
    db $ed                                        ; $76e9: $ed
    ld d, a                                       ; $76ea: $57
    db $fc                                        ; $76eb: $fc
    push af                                       ; $76ec: $f5
    ld hl, sp-$4c                                 ; $76ed: $f8 $b4
    inc bc                                        ; $76ef: $03
    rla                                           ; $76f0: $17
    dec c                                         ; $76f1: $0d
    adc e                                         ; $76f2: $8b
    scf                                           ; $76f3: $37
    call $2301                                    ; $76f4: $cd $01 $23
    dec e                                         ; $76f7: $1d
    db $db                                        ; $76f8: $db
    ld h, c                                       ; $76f9: $61
    and d                                         ; $76fa: $a2
    or h                                          ; $76fb: $b4
    and l                                         ; $76fc: $a5
    xor h                                         ; $76fd: $ac
    rst $18                                       ; $76fe: $df
    ld d, a                                       ; $76ff: $57
    inc bc                                        ; $7700: $03
    ld h, b                                       ; $7701: $60
    jr c, @-$67                                   ; $7702: $38 $97

    cp c                                          ; $7704: $b9
    ld a, a                                       ; $7705: $7f
    ret nz                                        ; $7706: $c0

    ld b, l                                       ; $7707: $45
    ld b, a                                       ; $7708: $47
    inc sp                                        ; $7709: $33
    rst $28                                       ; $770a: $ef
    ld d, a                                       ; $770b: $57
    ld a, b                                       ; $770c: $78
    dec [hl]                                      ; $770d: $35
    di                                            ; $770e: $f3
    pop hl                                        ; $770f: $e1
    ret c                                         ; $7710: $d8

    sbc $c3                                       ; $7711: $de $c3
    or l                                          ; $7713: $b5
    db $f4                                        ; $7714: $f4
    dec hl                                        ; $7715: $2b
    call nz, $83f0                                ; $7716: $c4 $f0 $83
    inc [hl]                                      ; $7719: $34
    rlca                                          ; $771a: $07
    di                                            ; $771b: $f3
    inc l                                         ; $771c: $2c
    ld e, b                                       ; $771d: $58
    inc h                                         ; $771e: $24
    ld hl, sp+$03                                 ; $771f: $f8 $03
    inc h                                         ; $7721: $24
    ld [de], a                                    ; $7722: $12
    ld sp, hl                                     ; $7723: $f9
    or e                                          ; $7724: $b3
    sub h                                         ; $7725: $94
    jr nz, jr_034_7771                            ; $7726: $20 $49

    add a                                         ; $7728: $87
    dec bc                                        ; $7729: $0b
    jp nz, Jump_000_268d                          ; $772a: $c2 $8d $26

    ld [hl+], a                                   ; $772d: $22
    ld d, d                                       ; $772e: $52
    set 6, h                                      ; $772f: $cb $f4
    db $ed                                        ; $7731: $ed
    cp h                                          ; $7732: $bc
    sub [hl]                                      ; $7733: $96
    ei                                            ; $7734: $fb
    ld e, a                                       ; $7735: $5f
    ld c, l                                       ; $7736: $4d
    push de                                       ; $7737: $d5
    ld h, [hl]                                    ; $7738: $66
    sbc $9e                                       ; $7739: $de $9e
    ld a, e                                       ; $773b: $7b
    jp nz, $ac57                                  ; $773c: $c2 $57 $ac

    dec b                                         ; $773f: $05
    inc h                                         ; $7740: $24
    ld [hl], c                                    ; $7741: $71
    ld l, a                                       ; $7742: $6f
    ld a, $f7                                     ; $7743: $3e $f7
    add h                                         ; $7745: $84
    xor a                                         ; $7746: $af
    ld e, b                                       ; $7747: $58
    bit 1, l                                      ; $7748: $cb $4d
    dec l                                         ; $774a: $2d
    jp nz, $8cb9                                  ; $774b: $c2 $b9 $8c

    ld b, [hl]                                    ; $774e: $46
    cp $82                                        ; $774f: $fe $82
    ccf                                           ; $7751: $3f
    ld [hl], b                                    ; $7752: $70
    or l                                          ; $7753: $b5
    and l                                         ; $7754: $a5
    daa                                           ; $7755: $27
    ld a, h                                       ; $7756: $7c
    push bc                                       ; $7757: $c5
    ld e, d                                       ; $7758: $5a
    inc e                                         ; $7759: $1c
    rst $20                                       ; $775a: $e7
    adc [hl]                                      ; $775b: $8e
    sub b                                         ; $775c: $90
    ld b, h                                       ; $775d: $44
    dec b                                         ; $775e: $05
    sub [hl]                                      ; $775f: $96
    sbc e                                         ; $7760: $9b
    ld e, d                                       ; $7761: $5a
    db $ed                                        ; $7762: $ed
    ld [hl], e                                    ; $7763: $73
    rst $20                                       ; $7764: $e7
    or l                                          ; $7765: $b5
    add b                                         ; $7766: $80
    ld b, e                                       ; $7767: $43
    ld b, a                                       ; $7768: $47
    and [hl]                                      ; $7769: $a6
    ld [hl], $6b                                  ; $776a: $36 $6b
    and $cc                                       ; $776c: $e6 $cc
    ld e, e                                       ; $776e: $5b
    dec e                                         ; $776f: $1d
    xor [hl]                                      ; $7770: $ae

jr_034_7771:
    ld d, [hl]                                    ; $7771: $56
    ld a, e                                       ; $7772: $7b
    and e                                         ; $7773: $a3
    sbc $8e                                       ; $7774: $de $8e
    jr nz, jr_034_77a5                            ; $7776: $20 $2d

    add d                                         ; $7778: $82
    xor e                                         ; $7779: $ab
    ld d, [hl]                                    ; $777a: $56
    ld [hl], a                                    ; $777b: $77
    ld d, $1a                                     ; $777c: $16 $1a
    adc $bc                                       ; $777e: $ce $bc
    ld l, c                                       ; $7780: $69
    ld c, $c3                                     ; $7781: $0e $c3
    db $ec                                        ; $7783: $ec
    and b                                         ; $7784: $a0
    push de                                       ; $7785: $d5
    pop bc                                        ; $7786: $c1
    rst $18                                       ; $7787: $df
    cp c                                          ; $7788: $b9
    ld h, h                                       ; $7789: $64
    ld d, l                                       ; $778a: $55
    db $ed                                        ; $778b: $ed
    ld e, b                                       ; $778c: $58
    ld c, e                                       ; $778d: $4b
    scf                                           ; $778e: $37
    sub c                                         ; $778f: $91
    ccf                                           ; $7790: $3f
    inc b                                         ; $7791: $04
    ld l, a                                       ; $7792: $6f
    rst $20                                       ; $7793: $e7
    ld e, c                                       ; $7794: $59
    or b                                          ; $7795: $b0
    ld c, b                                       ; $7796: $48
    ldh a, [rTAC]                                 ; $7797: $f0 $07
    adc b                                         ; $7799: $88
    and b                                         ; $779a: $a0
    ld d, [hl]                                    ; $779b: $56
    cp e                                          ; $779c: $bb
    ld h, h                                       ; $779d: $64
    push de                                       ; $779e: $d5
    db $db                                        ; $779f: $db
    ld [hl], l                                    ; $77a0: $75
    inc e                                         ; $77a1: $1c
    sbc $34                                       ; $77a2: $de $34
    rlca                                          ; $77a4: $07

jr_034_77a5:
    and e                                         ; $77a5: $a3
    cp l                                          ; $77a6: $bd
    ld e, e                                       ; $77a7: $5b
    xor l                                         ; $77a8: $ad
    cp d                                          ; $77a9: $ba
    pop bc                                        ; $77aa: $c1
    rra                                           ; $77ab: $1f
    db $f4                                        ; $77ac: $f4
    xor $18                                       ; $77ad: $ee $18
    rlca                                          ; $77af: $07
    adc $bd                                       ; $77b0: $ce $bd
    sbc e                                         ; $77b2: $9b
    ld a, [c]                                     ; $77b3: $f2
    rst $20                                       ; $77b4: $e7
    db $ed                                        ; $77b5: $ed
    inc a                                         ; $77b6: $3c
    dec bc                                        ; $77b7: $0b
    ld d, $09                                     ; $77b8: $16 $09
    cp $a0                                        ; $77ba: $fe $a0
    ld e, d                                       ; $77bc: $5a
    push af                                       ; $77bd: $f5
    ld a, l                                       ; $77be: $7d
    add h                                         ; $77bf: $84
    ld [hl], e                                    ; $77c0: $73
    ld sp, $fafc                                  ; $77c1: $31 $fc $fa
    dec d                                         ; $77c4: $15
    ld d, c                                       ; $77c5: $51
    ld l, l                                       ; $77c6: $6d
    ld l, c                                       ; $77c7: $69
    jp nz, $9712                                  ; $77c8: $c2 $12 $97

    inc e                                         ; $77cb: $1c
    rra                                           ; $77cc: $1f
    ld [c], a                                     ; $77cd: $e2
    ld e, d                                       ; $77ce: $5a
    add h                                         ; $77cf: $84
    ld c, a                                       ; $77d0: $4f
    sbc b                                         ; $77d1: $98
    ld [hl], $8e                                  ; $77d2: $36 $8e
    ld [hl-], a                                   ; $77d4: $32
    ld a, [$2c70]                                 ; $77d5: $fa $70 $2c
    ld a, [c]                                     ; $77d8: $f2
    rst $30                                       ; $77d9: $f7
    add hl, bc                                    ; $77da: $09
    ld b, b                                       ; $77db: $40
    ld sp, hl                                     ; $77dc: $f9
    ld [$76a8], a                                 ; $77dd: $ea $a8 $76
    xor h                                         ; $77e0: $ac
    or c                                          ; $77e1: $b1
    ret                                           ; $77e2: $c9


    ld e, a                                       ; $77e3: $5f
    and c                                         ; $77e4: $a1
    or c                                          ; $77e5: $b1
    ei                                            ; $77e6: $fb
    ld sp, hl                                     ; $77e7: $f9
    ld c, e                                       ; $77e8: $4b
    ld [hl], e                                    ; $77e9: $73
    add hl, bc                                    ; $77ea: $09
    db $fc                                        ; $77eb: $fc
    sub l                                         ; $77ec: $95
    adc l                                         ; $77ed: $8d
    xor l                                         ; $77ee: $ad
    ld e, d                                       ; $77ef: $5a
    or b                                          ; $77f0: $b0
    call c, $619d                                 ; $77f1: $dc $9d $61
    ret                                           ; $77f4: $c9


    ld [$08e8], a                                 ; $77f5: $ea $e8 $08
    ld c, c                                       ; $77f8: $49
    ld d, h                                       ; $77f9: $54
    ld h, b                                       ; $77fa: $60
    cp c                                          ; $77fb: $b9
    xor c                                         ; $77fc: $a9
    push de                                       ; $77fd: $d5
    inc de                                        ; $77fe: $13
    ld e, e                                       ; $77ff: $5b
    dec l                                         ; $7800: $2d
    ld e, b                                       ; $7801: $58
    inc h                                         ; $7802: $24
    ld hl, sp-$7d                                 ; $7803: $f8 $83
    or h                                          ; $7805: $b4
    ld c, c                                       ; $7806: $49
    rra                                           ; $7807: $1f
    dec de                                        ; $7808: $1b
    ld [$ad8d], sp                                ; $7809: $08 $8d $ad
    or $96                                        ; $780c: $f6 $96
    pop de                                        ; $780e: $d1
    rst $30                                       ; $780f: $f7
    ld b, h                                       ; $7810: $44
    cp $f0                                        ; $7811: $fe $f0
    dec h                                         ; $7813: $25
    ld a, [hl+]                                   ; $7814: $2a
    or h                                          ; $7815: $b4
    ld l, h                                       ; $7816: $6c
    sbc d                                         ; $7817: $9a

jr_034_7818:
    inc bc                                        ; $7818: $03
    add hl, bc                                    ; $7819: $09
    db $fc                                        ; $781a: $fc
    dec d                                         ; $781b: $15
    dec d                                         ; $781c: $15
    ld a, a                                       ; $781d: $7f
    xor [hl]                                      ; $781e: $ae

Call_034_781f:
    or $76                                        ; $781f: $f6 $76
    sbc [hl]                                      ; $7821: $9e
    dec b                                         ; $7822: $05
    adc e                                         ; $7823: $8b
    inc b                                         ; $7824: $04
    ld a, a                                       ; $7825: $7f
    add b                                         ; $7826: $80
    ld a, [c]                                     ; $7827: $f2
    push de                                       ; $7828: $d5
    ld d, c                                       ; $7829: $51
    add d                                         ; $782a: $82
    inc h                                         ; $782b: $24
    dec a                                         ; $782c: $3d
    pop hl                                        ; $782d: $e1
    dec hl                                        ; $782e: $2b
    sub $72                                       ; $782f: $d6 $72
    ld d, e                                       ; $7831: $53
    adc e                                         ; $7832: $8b
    sub b                                         ; $7833: $90
    ld [hl], $81                                  ; $7834: $36 $81
    cp a                                          ; $7836: $bf
    ld h, [hl]                                    ; $7837: $66
    db $f4                                        ; $7838: $f4
    dec hl                                        ; $7839: $2b
    sub $e7                                       ; $783a: $d6 $e7
    ld e, d                                       ; $783c: $5a
    ld a, [de]                                    ; $783d: $1a
    ld [$a38d], sp                                ; $783e: $08 $8d $a3
    db $e4                                        ; $7841: $e4
    cp e                                          ; $7842: $bb
    inc bc                                        ; $7843: $03
    cp h                                          ; $7844: $bc
    ld h, l                                       ; $7845: $65
    jp nz, Jump_034_6fc5                          ; $7846: $c2 $c5 $6f

    ld l, c                                       ; $7849: $69
    ld c, $23                                     ; $784a: $0e $23
    add sp, $47                                   ; $784c: $e8 $47
    db $f4                                        ; $784e: $f4
    sub d                                         ; $784f: $92
    db $e3                                        ; $7850: $e3
    jr c, jr_034_787f                             ; $7851: $38 $2c

    dec h                                         ; $7853: $25
    ld c, b                                       ; $7854: $48
    ld d, d                                       ; $7855: $52
    dec e                                         ; $7856: $1d

Jump_034_7857:
    xor $bc                                       ; $7857: $ee $bc
    ld d, $70                                     ; $7859: $16 $70
    add sp, -$38                                  ; $785b: $e8 $c8
    call nc, $cd66                                ; $785d: $d4 $66 $cd
    sbc h                                         ; $7860: $9c
    ld a, c                                       ; $7861: $79
    xor e                                         ; $7862: $ab
    jp Jump_034_6ad5                              ; $7863: $c3 $d5 $6a


    ld l, a                                       ; $7866: $6f
    call nc, Call_000_11db                        ; $7867: $d4 $db $11
    and h                                         ; $786a: $a4
    ld b, l                                       ; $786b: $45
    ld [hl], b                                    ; $786c: $70
    rst $18                                       ; $786d: $df
    ret c                                         ; $786e: $d8

    ld [bc], a                                    ; $786f: $02
    push bc                                       ; $7870: $c5
    ldh [$af], a                                  ; $7871: $e0 $af
    ld hl, $5799                                  ; $7873: $21 $99 $57
    rst $18                                       ; $7876: $df
    jp Jump_034_44cd                              ; $7877: $c3 $cd $44


    and c                                         ; $787a: $a1
    ld l, c                                       ; $787b: $69
    ld h, h                                       ; $787c: $64
    db $fd                                        ; $787d: $fd
    sbc e                                         ; $787e: $9b

jr_034_787f:
    halt                                          ; $787f: $76
    jr c, jr_034_7818                             ; $7880: $38 $96

    dec [hl]                                      ; $7882: $35
    ld de, $0dab                                  ; $7883: $11 $ab $0d
    push bc                                       ; $7886: $c5
    ldh [$af], a                                  ; $7887: $e0 $af
    ld [hl], c                                    ; $7889: $71
    ld d, h                                       ; $788a: $54
    ld c, e                                       ; $788b: $4b
    nop                                           ; $788c: $00
    ld a, b                                       ; $788d: $78
    res 0, h                                      ; $788e: $cb $84
    adc e                                         ; $7890: $8b
    rst $18                                       ; $7891: $df
    jp nc, $091c                                  ; $7892: $d2 $1c $09

    ld b, a                                       ; $7895: $47
    add a                                         ; $7896: $87
    adc e                                         ; $7897: $8b
    adc $8c                                       ; $7898: $ce $8c
    db $fc                                        ; $789a: $fc
    ld e, l                                       ; $789b: $5d
    adc b                                         ; $789c: $88
    dec h                                         ; $789d: $25
    ld h, d                                       ; $789e: $62
    or l                                          ; $789f: $b5
    and c                                         ; $78a0: $a1
    scf                                           ; $78a1: $37
    rst $00                                       ; $78a2: $c7
    halt                                          ; $78a3: $76
    sbc [hl]                                      ; $78a4: $9e
    dec b                                         ; $78a5: $05
    adc e                                         ; $78a6: $8b
    inc b                                         ; $78a7: $04
    ld a, a                                       ; $78a8: $7f
    ld d, b                                       ; $78a9: $50
    add h                                         ; $78aa: $84
    rrca                                          ; $78ab: $0f
    sub b                                         ; $78ac: $90
    and $49                                       ; $78ad: $e6 $49
    pop hl                                        ; $78af: $e1
    adc $b3                                       ; $78b0: $ce $b3
    ld h, b                                       ; $78b2: $60
    sub c                                         ; $78b3: $91
    ldh [rIF], a                                  ; $78b4: $e0 $0f
    sub b                                         ; $78b6: $90
    ld c, b                                       ; $78b7: $48
    db $e4                                        ; $78b8: $e4
    rst $08                                       ; $78b9: $cf
    ld d, d                                       ; $78ba: $52
    add d                                         ; $78bb: $82
    inc h                                         ; $78bc: $24
    push de                                       ; $78bd: $d5
    pop hl                                        ; $78be: $e1
    ld c, $17                                     ; $78bf: $0e $17
    add h                                         ; $78c1: $84
    dec de                                        ; $78c2: $1b
    ld c, l                                       ; $78c3: $4d
    ld b, h                                       ; $78c4: $44
    and h                                         ; $78c5: $a4
    sub [hl]                                      ; $78c6: $96
    ld [hl+], a                                   ; $78c7: $22
    ld hl, sp+$79                                 ; $78c8: $f8 $79
    ei                                            ; $78ca: $fb
    dec d                                         ; $78cb: $15
    ld d, c                                       ; $78cc: $51
    ld l, l                                       ; $78cd: $6d
    ld l, c                                       ; $78ce: $69
    jp nz, $9712                                  ; $78cf: $c2 $12 $97

    inc e                                         ; $78d2: $1c
    rra                                           ; $78d3: $1f
    ld [c], a                                     ; $78d4: $e2
    ld e, d                                       ; $78d5: $5a
    add h                                         ; $78d6: $84
    ld c, a                                       ; $78d7: $4f
    sbc b                                         ; $78d8: $98
    ld [hl], $8e                                  ; $78d9: $36 $8e
    ld [hl-], a                                   ; $78db: $32
    ld a, [$2c70]                                 ; $78dc: $fa $70 $2c
    ld a, [c]                                     ; $78df: $f2
    rst $30                                       ; $78e0: $f7
    add hl, bc                                    ; $78e1: $09
    ld b, b                                       ; $78e2: $40
    ld sp, hl                                     ; $78e3: $f9
    ld [$e0e8], a                                 ; $78e4: $ea $e8 $e0
    or l                                          ; $78e7: $b5
    ld h, l                                       ; $78e8: $65
    sub h                                         ; $78e9: $94
    ld sp, $1104                                  ; $78ea: $31 $04 $11
    xor e                                         ; $78ed: $ab
    cpl                                           ; $78ee: $2f
    ld c, c                                       ; $78ef: $49
    ld [hl], e                                    ; $78f0: $73
    ret                                           ; $78f1: $c9


    ld h, c                                       ; $78f2: $61
    add hl, hl                                    ; $78f3: $29
    ld de, $0dab                                  ; $78f4: $11 $ab $0d
    ld e, l                                       ; $78f7: $5d
    dec h                                         ; $78f8: $25
    push de                                       ; $78f9: $d5
    sub [hl]                                      ; $78fa: $96
    sbc [hl]                                      ; $78fb: $9e
    ldh a, [$15]                                  ; $78fc: $f0 $15
    ld l, e                                       ; $78fe: $6b
    ld bc, $7bf9                                  ; $78ff: $01 $f9 $7b
    ld d, e                                       ; $7902: $53
    dec bc                                        ; $7903: $0b
    ld d, $09                                     ; $7904: $16 $09
    cp $a0                                        ; $7906: $fe $a0
    ld [$201f], sp                                ; $7908: $08 $1f $20
    call Call_000_0901                            ; $790b: $cd $01 $09
    db $fc                                        ; $790e: $fc
    push af                                       ; $790f: $f5
    ld c, [hl]                                    ; $7910: $4e
    ld e, d                                       ; $7911: $5a
    db $e4                                        ; $7912: $e4
    rrca                                          ; $7913: $0f
    ld a, h                                       ; $7914: $7c
    xor [hl]                                      ; $7915: $ae
    or c                                          ; $7916: $b1
    ld [hl], a                                    ; $7917: $77
    sub d                                         ; $7918: $92
    ld l, b                                       ; $7919: $68
    ld l, a                                       ; $791a: $6f
    rst $30                                       ; $791b: $f7
    ld [c], a                                     ; $791c: $e2
    xor a                                         ; $791d: $af
    ld a, a                                       ; $791e: $7f
    or l                                          ; $791f: $b5
    push bc                                       ; $7920: $c5
    sbc l                                         ; $7921: $9d
    ld h, a                                       ; $7922: $67
    pop bc                                        ; $7923: $c1
    ld [hl+], a                                   ; $7924: $22
    pop bc                                        ; $7925: $c1
    rra                                           ; $7926: $1f
    jr nz, @-$56                                  ; $7927: $20 $a8

    push de                                       ; $7929: $d5
    sbc $c6                                       ; $792a: $de $c6
    ld d, [hl]                                    ; $792c: $56
    ld a, e                                       ; $792d: $7b
    dec sp                                        ; $792e: $3b
    jp nz, $b372                                  ; $792f: $c2 $72 $b3

    ld l, h                                       ; $7932: $6c
    ld de, $003e                                  ; $7933: $11 $3e $00
    ld de, $bdab                                  ; $7936: $11 $ab $bd
    rst $20                                       ; $7939: $e7
    ld [$0c5f], a                                 ; $793a: $ea $5f $0c
    ld [hl], a                                    ; $793d: $77
    add e                                         ; $793e: $83
    ccf                                           ; $793f: $3f
    add sp, -$23                                  ; $7940: $e8 $dd
    ld bc, $bc1d                                  ; $7942: $01 $1d $bc
    or [hl]                                       ; $7945: $b6
    add a                                         ; $7946: $87

jr_034_7947:
    ld h, e                                       ; $7947: $63
    ld a, l                                       ; $7948: $7d
    inc [hl]                                      ; $7949: $34
    ld sp, hl                                     ; $794a: $f9
    dec hl                                        ; $794b: $2b
    xor h                                         ; $794c: $ac
    rla                                           ; $794d: $17
    ld [$42cb], sp                                ; $794e: $08 $cb $42
    ld l, c                                       ; $7951: $69
    jr c, jr_034_7947                             ; $7952: $38 $f3

    and [hl]                                      ; $7954: $a6
    add hl, sp                                    ; $7955: $39
    ld b, e                                       ; $7956: $43
    dec d                                         ; $7957: $15
    ld d, c                                       ; $7958: $51
    dec e                                         ; $7959: $1d
    ld b, [hl]                                    ; $795a: $46
    rra                                           ; $795b: $1f
    ld h, l                                       ; $795c: $65
    jp nz, Jump_034_6fc5                          ; $795d: $c2 $c5 $6f

    ld [hl], a                                    ; $7960: $77
    res 5, l                                      ; $7961: $cb $ad
    ld b, h                                       ; $7963: $44
    xor h                                         ; $7964: $ac
    ld [hl], $f4                                  ; $7965: $36 $f4
    and $d8                                       ; $7967: $e6 $d8
    adc $b3                                       ; $7969: $ce $b3
    ld h, b                                       ; $796b: $60
    sub c                                         ; $796c: $91
    ldh [rIF], a                                  ; $796d: $e0 $0f
    adc d                                         ; $796f: $8a
    ldh a, [rSB]                                  ; $7970: $f0 $01
    jp nc, Jump_034_491c                          ; $7972: $d2 $1c $49

    pop hl                                        ; $7975: $e1
    ld e, $0e                                     ; $7976: $1e $0e
    inc b                                         ; $7978: $04
    ld l, a                                       ; $7979: $6f
    rst $20                                       ; $797a: $e7
    ld e, c                                       ; $797b: $59
    or b                                          ; $797c: $b0
    ld c, b                                       ; $797d: $48
    ldh a, [rTAC]                                 ; $797e: $f0 $07
    adc b                                         ; $7980: $88
    and b                                         ; $7981: $a0
    ld d, [hl]                                    ; $7982: $56
    ld a, e                                       ; $7983: $7b
    ld c, e                                       ; $7984: $4b
    sub b                                         ; $7985: $90
    and h                                         ; $7986: $a4
    jp $e105                                      ; $7987: $c3 $05 $e1


    ld b, [hl]                                    ; $798a: $46
    inc de                                        ; $798b: $13
    ld de, $a5a9                                  ; $798c: $11 $a9 $a5
    ld b, h                                       ; $798f: $44
    xor h                                         ; $7990: $ac
    or $f6                                        ; $7991: $f6 $f6
    ld h, d                                       ; $7993: $62
    cp l                                          ; $7994: $bd
    ld b, l                                       ; $7995: $45
    ld hl, sp+$00                                 ; $7996: $f8 $00
    rst $20                                       ; $7998: $e7
    ld a, [hl]                                    ; $7999: $7e
    dec [hl]                                      ; $799a: $35
    adc [hl]                                      ; $799b: $8e
    and l                                         ; $799c: $a5
    daa                                           ; $799d: $27
    ld a, h                                       ; $799e: $7c
    push bc                                       ; $799f: $c5
    ld e, d                                       ; $79a0: $5a
    ld b, b                                       ; $79a1: $40
    ld [de], a                                    ; $79a2: $12
    rst $30                                       ; $79a3: $f7
    and $aa                                       ; $79a4: $e6 $aa
    push de                                       ; $79a6: $d5
    dec e                                         ; $79a7: $1d
    ld hl, $0a89                                  ; $79a8: $21 $89 $0a
    inc l                                         ; $79ab: $2c
    scf                                           ; $79ac: $37
    or l                                          ; $79ad: $b5
    jp c, Jump_000_0e69                           ; $79ae: $da $69 $0e

    ld b, e                                       ; $79b1: $43
    dec d                                         ; $79b2: $15
    ld d, c                                       ; $79b3: $51
    dec e                                         ; $79b4: $1d
    ld b, [hl]                                    ; $79b5: $46
    rra                                           ; $79b6: $1f
    ld h, l                                       ; $79b7: $65
    jp nz, Jump_034_6fc5                          ; $79b8: $c2 $c5 $6f

    ld [hl], a                                    ; $79bb: $77
    res 5, l                                      ; $79bc: $cb $ad
    xor h                                         ; $79be: $ac
    adc c                                         ; $79bf: $89
    ld e, b                                       ; $79c0: $58
    ld l, l                                       ; $79c1: $6d
    jr z, jr_034_79ca                             ; $79c2: $28 $06

    ld a, a                                       ; $79c4: $7f
    push de                                       ; $79c5: $d5
    sub [hl]                                      ; $79c6: $96
    ld c, $55                                     ; $79c7: $0e $55
    add h                                         ; $79c9: $84

jr_034_79ca:
    rla                                           ; $79ca: $17
    sbc $a7                                       ; $79cb: $de $a7
    add b                                         ; $79cd: $80
    ld a, [c]                                     ; $79ce: $f2
    push de                                       ; $79cf: $d5
    ld d, c                                       ; $79d0: $51
    ld l, l                                       ; $79d1: $6d

Jump_034_79d2:
    jp hl                                         ; $79d2: $e9


    ld l, h                                       ; $79d3: $6c
    ld a, [hl]                                    ; $79d4: $7e
    ld h, d                                       ; $79d5: $62
    add hl, sp                                    ; $79d6: $39
    rst $30                                       ; $79d7: $f7
    or e                                          ; $79d8: $b3
    sub [hl]                                      ; $79d9: $96
    sbc $1c                                       ; $79da: $de $1c
    db $db                                        ; $79dc: $db
    ld de, $23f4                                  ; $79dd: $11 $f4 $23
    ld a, d                                       ; $79e0: $7a
    ret                                           ; $79e1: $c9


    ld [hl], c                                    ; $79e2: $71
    inc e                                         ; $79e3: $1c
    sub [hl]                                      ; $79e4: $96
    inc [hl]                                      ; $79e5: $34
    rlca                                          ; $79e6: $07
    add hl, bc                                    ; $79e7: $09
    db $fc                                        ; $79e8: $fc
    push af                                       ; $79e9: $f5
    xor $18                                       ; $79ea: $ee $18
    and a                                         ; $79ec: $a7
    dec de                                        ; $79ed: $1b
    db $fc                                        ; $79ee: $fc
    ld b, c                                       ; $79ef: $41
    rrca                                          ; $79f0: $0f
    ccf                                           ; $79f1: $3f
    add hl, sp                                    ; $79f2: $39
    rst $30                                       ; $79f3: $f7
    ld a, [hl]                                    ; $79f4: $7e
    cp l                                          ; $79f5: $bd
    ret c                                         ; $79f6: $d8

    ld b, $7f                                     ; $79f7: $06 $7f
    call $bcfc                                    ; $79f9: $cd $fc $bc

Call_034_79fc:
    push bc                                       ; $79fc: $c5
    adc e                                         ; $79fd: $8b
    jp nc, Jump_000_0734                          ; $79fe: $d2 $34 $07

    add hl, bc                                    ; $7a01: $09
    ld [$5635], sp                                ; $7a02: $08 $35 $56
    add d                                         ; $7a05: $82
    ccf                                           ; $7a06: $3f
    adc b                                         ; $7a07: $88
    db $ec                                        ; $7a08: $ec
    ld e, h                                       ; $7a09: $5c
    db $fd                                        ; $7a0a: $fd
    ld de, $2dab                                  ; $7a0b: $11 $ab $2d
    sbc l                                         ; $7a0e: $9d
    rst $10                                       ; $7a0f: $d7
    ld [hl], d                                    ; $7a10: $72
    rst $38                                       ; $7a11: $ff
    xor e                                         ; $7a12: $ab
    xor c                                         ; $7a13: $a9
    jp c, $626c                                   ; $7a14: $da $6c $62

    ld d, h                                       ; $7a17: $54
    dec bc                                        ; $7a18: $0b
    ld d, $09                                     ; $7a19: $16 $09
    cp $a0                                        ; $7a1b: $fe $a0
    ld e, a                                       ; $7a1d: $5f
    ld de, $61d5                                  ; $7a1e: $11 $d5 $61
    db $f4                                        ; $7a21: $f4
    ld d, c                                       ; $7a22: $51
    ld h, $5c                                     ; $7a23: $26 $5c
    db $fc                                        ; $7a25: $fc
    halt                                          ; $7a26: $76
    or a                                          ; $7a27: $b7
    call c, $f08a                                 ; $7a28: $dc $8a $f0
    ld bc, $5888                                  ; $7a2b: $01 $88 $58
    ld l, l                                       ; $7a2e: $6d
    sbc b                                         ; $7a2f: $98
    or c                                          ; $7a30: $b1
    or e                                          ; $7a31: $b3
    ld a, [$abf8]                                 ; $7a32: $fa $f8 $ab
    ei                                            ; $7a35: $fb
    ld a, $d4                                     ; $7a36: $3e $d4
    ret c                                         ; $7a38: $d8

    inc hl                                        ; $7a39: $23
    and h                                         ; $7a3a: $a4
    and a                                         ; $7a3b: $a7
    ld e, d                                       ; $7a3c: $5a

jr_034_7a3d:
    ld a, e                                       ; $7a3d: $7b
    adc c                                         ; $7a3e: $89
    ld c, a                                       ; $7a3f: $4f
    add hl, hl                                    ; $7a40: $29
    ld [hl], $33                                  ; $7a41: $36 $33
    cp $0c                                        ; $7a43: $fe $0c
    jp nc, Jump_034_491c                          ; $7a45: $d2 $1c $49

    rra                                           ; $7a48: $1f
    dec sp                                        ; $7a49: $3b
    add d                                         ; $7a4a: $82
    ld a, [hl]                                    ; $7a4b: $7e
    ld b, h                                       ; $7a4c: $44
    cpl                                           ; $7a4d: $2f
    add hl, sp                                    ; $7a4e: $39
    adc [hl]                                      ; $7a4f: $8e
    jp Jump_034_6e72                              ; $7a50: $c3 $72 $6e


    ld l, h                                       ; $7a53: $6c
    or l                                          ; $7a54: $b5
    adc a                                         ; $7a55: $8f
    adc [hl]                                      ; $7a56: $8e
    sub d                                         ; $7a57: $92
    adc e                                         ; $7a58: $8b
    jr nc, jr_034_7a3d                            ; $7a59: $30 $e2

    dec h                                         ; $7a5b: $25
    dec e                                         ; $7a5c: $1d
    ret                                           ; $7a5d: $c9


    add hl, de                                    ; $7a5e: $19
    xor a                                         ; $7a5f: $af
    db $fd                                        ; $7a60: $fd
    reti                                          ; $7a61: $d9


    and a                                         ; $7a62: $a7
    inc d                                         ; $7a63: $14
    dec sp                                        ; $7a64: $3b
    xor a                                         ; $7a65: $af
    push hl                                       ; $7a66: $e5
    cp $57                                        ; $7a67: $fe $57
    ld d, e                                       ; $7a69: $53
    or l                                          ; $7a6a: $b5
    reti                                          ; $7a6b: $d9


    call nz, $16a8                                ; $7a6c: $c4 $a8 $16
    inc l                                         ; $7a6f: $2c

jr_034_7a70:
    ld [de], a                                    ; $7a70: $12
    db $fc                                        ; $7a71: $fc
    ld b, c                                       ; $7a72: $41
    ld de, $003e                                  ; $7a73: $11 $3e $00
    ld de, $0dab                                  ; $7a76: $11 $ab $0d
    rst $20                                       ; $7a79: $e7
    ld b, $42                                     ; $7a7a: $06 $42
    ld b, e                                       ; $7a7c: $43
    ld [hl-], a                                   ; $7a7d: $32
    xor a                                         ; $7a7e: $af
    cp [hl]                                       ; $7a7f: $be
    ld e, a                                       ; $7a80: $5f
    ld a, l                                       ; $7a81: $7d
    ld h, c                                       ; $7a82: $61
    ld l, c                                       ; $7a83: $69
    ld l, h                                       ; $7a84: $6c
    or l                                          ; $7a85: $b5
    and l                                         ; $7a86: $a5
    or e                                          ; $7a87: $b3
    daa                                           ; $7a88: $27
    ld a, $a7                                     ; $7a89: $3e $a7
    add hl, sp                                    ; $7a8b: $39
    add hl, bc                                    ; $7a8c: $09
    db $fc                                        ; $7a8d: $fc
    push af                                       ; $7a8e: $f5
    dec h                                         ; $7a8f: $25
    ld [bc], a                                    ; $7a90: $02
    cp b                                          ; $7a91: $b8
    dec de                                        ; $7a92: $1b
    db $fc                                        ; $7a93: $fc
    ld b, c                                       ; $7a94: $41
    inc sp                                        ; $7a95: $33
    db $eb                                        ; $7a96: $eb
    rst $08                                       ; $7a97: $cf
    rra                                           ; $7a98: $1f
    sbc h                                         ; $7a99: $9c
    xor e                                         ; $7a9a: $ab
    ccf                                           ; $7a9b: $3f
    ld h, d                                       ; $7a9c: $62
    pop af                                        ; $7a9d: $f1
    ld [$9860], a                                 ; $7a9e: $ea $60 $98
    cp d                                          ; $7aa1: $ba
    ld c, h                                       ; $7aa2: $4c
    cp $48                                        ; $7aa3: $fe $48
    call nc, $afd2                                ; $7aa5: $d4 $d2 $af
    or b                                          ; $7aa8: $b0
    inc hl                                        ; $7aa9: $23
    ld d, l                                       ; $7aaa: $55
    sub [hl]                                      ; $7aab: $96
    sbc c                                         ; $7aac: $99
    ld [de], a                                    ; $7aad: $12
    rst $38                                       ; $7aae: $ff
    ld [$de1a], sp                                ; $7aaf: $08 $1a $de
    ld [hl+], a                                   ; $7ab2: $22
    db $fc                                        ; $7ab3: $fc
    db $e3                                        ; $7ab4: $e3
    ldh a, [$a6]                                  ; $7ab5: $f0 $a6
    add hl, sp                                    ; $7ab7: $39
    ld c, c                                       ; $7ab8: $49
    sub [hl]                                      ; $7ab9: $96
    adc $b3                                       ; $7aba: $ce $b3
    ld h, b                                       ; $7abc: $60
    sub c                                         ; $7abd: $91
    ldh [rIF], a                                  ; $7abe: $e0 $0f
    ld d, b                                       ; $7ac0: $50
    cp [hl]                                       ; $7ac1: $be
    ld a, [hl-]                                   ; $7ac2: $3a
    ld c, d                                       ; $7ac3: $4a
    sub b                                         ; $7ac4: $90
    and h                                         ; $7ac5: $a4
    daa                                           ; $7ac6: $27
    ld a, h                                       ; $7ac7: $7c
    push bc                                       ; $7ac8: $c5
    ld e, d                                       ; $7ac9: $5a
    ld l, [hl]                                    ; $7aca: $6e
    ld l, d                                       ; $7acb: $6a

Call_034_7acc:
    ld de, $9aca                                  ; $7acc: $11 $ca $9a
    adc b                                         ; $7acf: $88
    push de                                       ; $7ad0: $d5
    add [hl]                                      ; $7ad1: $86
    ld h, d                                       ; $7ad2: $62
    ldh a, [$d7]                                  ; $7ad3: $f0 $d7
    ld a, a                                       ; $7ad5: $7f
    ld [hl], h                                    ; $7ad6: $74
    rst $00                                       ; $7ad7: $c7
    ld d, $4d                                     ; $7ad8: $16 $4d
    add e                                         ; $7ada: $83
    ccf                                           ; $7adb: $3f
    ld l, a                                       ; $7adc: $6f
    add a                                         ; $7add: $87
    xor a                                         ; $7ade: $af
    halt                                          ; $7adf: $76
    ld [hl], l                                    ; $7ae0: $75
    jr jr_034_7a70                                ; $7ae1: $18 $8d

    dec e                                         ; $7ae3: $1d
    ld [hl], c                                    ; $7ae4: $71
    adc c                                         ; $7ae5: $89
    add h                                         ; $7ae6: $84
    cp [hl]                                       ; $7ae7: $be
    inc b                                         ; $7ae8: $04
    db $d3                                        ; $7ae9: $d3
    inc e                                         ; $7aea: $1c
    ld b, e                                       ; $7aeb: $43
    dec d                                         ; $7aec: $15
    ld d, c                                       ; $7aed: $51
    dec e                                         ; $7aee: $1d
    ld b, [hl]                                    ; $7aef: $46
    rra                                           ; $7af0: $1f
    ld h, l                                       ; $7af1: $65
    jp nz, Jump_034_6fc5                          ; $7af2: $c2 $c5 $6f

    call $8582                                    ; $7af5: $cd $82 $85
    ld a, [de]                                    ; $7af8: $1a
    db $eb                                        ; $7af9: $eb
    ld e, b                                       ; $7afa: $58
    ld l, a                                       ; $7afb: $6f
    inc sp                                        ; $7afc: $33
    cp c                                          ; $7afd: $b9
    add $f1                                       ; $7afe: $c6 $f1
    halt                                          ; $7b00: $76
    xor [hl]                                      ; $7b01: $ae
    xor a                                         ; $7b02: $af
    adc [hl]                                      ; $7b03: $8e
    ld [hl], e                                    ; $7b04: $73
    ld h, e                                       ; $7b05: $63
    xor e                                         ; $7b06: $ab
    ld a, l                                       ; $7b07: $7d
    inc d                                         ; $7b08: $14
    add e                                         ; $7b09: $83
    cp a                                          ; $7b0a: $bf
    ld a, [hl-]                                   ; $7b0b: $3a
    sub $9d                                       ; $7b0c: $d6 $9d
    scf                                           ; $7b0e: $37
    ld c, h                                       ; $7b0f: $4c
    ret                                           ; $7b10: $c9


    rst $38                                       ; $7b11: $ff
    pop de                                        ; $7b12: $d1
    ld c, $5e                                     ; $7b13: $0e $5e
    db $db                                        ; $7b15: $db
    ld h, c                                       ; $7b16: $61
    inc h                                         ; $7b17: $24
    cp $2c                                        ; $7b18: $fe $2c
    ld e, e                                       ; $7b1a: $5b
    sub $44                                       ; $7b1b: $d6 $44
    xor h                                         ; $7b1d: $ac
    ld [hl], $a4                                  ; $7b1e: $36 $a4
    ld c, l                                       ; $7b20: $4d
    ldh [$af], a                                  ; $7b21: $e0 $af
    ld [hl], a                                    ; $7b23: $77
    sub d                                         ; $7b24: $92
    ld l, b                                       ; $7b25: $68
    rst $30                                       ; $7b26: $f7
    ld l, [hl]                                    ; $7b27: $6e
    nop                                           ; $7b28: $00
    rst $28                                       ; $7b29: $ef
    cp c                                          ; $7b2a: $b9
    ld a, [$5623]                                 ; $7b2b: $fa $23 $56
    ld a, a                                       ; $7b2e: $7f
    xor h                                         ; $7b2f: $ac
    ld c, $77                                     ; $7b30: $0e $77
    ld e, b                                       ; $7b32: $58
    or b                                          ; $7b33: $b0
    inc [hl]                                      ; $7b34: $34
    ld l, $78                                     ; $7b35: $2e $78
    cp [hl]                                       ; $7b37: $be
    dec [hl]                                      ; $7b38: $35
    db $10                                        ; $7b39: $10
    jp nc, Jump_034_491c                          ; $7b3a: $d2 $1c $49

    sub [hl]                                      ; $7b3d: $96
    adc $b3                                       ; $7b3e: $ce $b3
    ld h, b                                       ; $7b40: $60
    sub c                                         ; $7b41: $91
    ldh [rIF], a                                  ; $7b42: $e0 $0f
    ld d, b                                       ; $7b44: $50
    cp [hl]                                       ; $7b45: $be
    ld a, [hl-]                                   ; $7b46: $3a
    ld c, d                                       ; $7b47: $4a
    sub b                                         ; $7b48: $90
    and h                                         ; $7b49: $a4
    daa                                           ; $7b4a: $27
    ld a, h                                       ; $7b4b: $7c
    push bc                                       ; $7b4c: $c5
    ld e, d                                       ; $7b4d: $5a
    ld l, [hl]                                    ; $7b4e: $6e
    ld l, d                                       ; $7b4f: $6a
    ld de, $c34a                                  ; $7b50: $11 $4a $c3
    add hl, de                                    ; $7b53: $19
    sub h                                         ; $7b54: $94
    ld a, h                                       ; $7b55: $7c
    rrca                                          ; $7b56: $0f
    db $e4                                        ; $7b57: $e4
    rst $08                                       ; $7b58: $cf
    ld e, e                                       ; $7b59: $5b
    db $ed                                        ; $7b5a: $ed
    dec l                                         ; $7b5b: $2d
    db $eb                                        ; $7b5c: $eb
    ret nc                                        ; $7b5d: $d0

    sbc $8e                                       ; $7b5e: $de $8e
    cp $ab                                        ; $7b60: $fe $ab
    pop bc                                        ; $7b62: $c1
    inc bc                                        ; $7b63: $03
    inc bc                                        ; $7b64: $03
    pop bc                                        ; $7b65: $c1
    sbc a                                         ; $7b66: $9f
    or a                                          ; $7b67: $b7
    rst $38                                       ; $7b68: $ff
    add sp, -$10                                  ; $7b69: $e8 $f0
    push de                                       ; $7b6b: $d5
    xor [hl]                                      ; $7b6c: $ae
    ld c, $a3                                     ; $7b6d: $0e $a3
    or c                                          ; $7b6f: $b1
    inc hl                                        ; $7b70: $23
    ld l, $91                                     ; $7b71: $2e $91
    ret nc                                        ; $7b73: $d0

    sub a                                         ; $7b74: $97
    ld h, b                                       ; $7b75: $60
    sbc d                                         ; $7b76: $9a
    inc bc                                        ; $7b77: $03
    ld c, c                                       ; $7b78: $49
    sub [hl]                                      ; $7b79: $96
    adc $b3                                       ; $7b7a: $ce $b3
    ld h, b                                       ; $7b7c: $60
    sub c                                         ; $7b7d: $91
    ldh [rIF], a                                  ; $7b7e: $e0 $0f
    ld a, [de]                                    ; $7b80: $1a
    db $db                                        ; $7b81: $db
    ld a, c                                       ; $7b82: $79
    dec l                                         ; $7b83: $2d
    ldh [$d0], a                                  ; $7b84: $e0 $d0
    sub c                                         ; $7b86: $91
    xor c                                         ; $7b87: $a9
    call Call_000_399a                            ; $7b88: $cd $9a $39
    di                                            ; $7b8b: $f3
    ld d, [hl]                                    ; $7b8c: $56
    add a                                         ; $7b8d: $87
    xor e                                         ; $7b8e: $ab
    push de                                       ; $7b8f: $d5
    sbc $a8                                       ; $7b90: $de $a8
    or a                                          ; $7b92: $b7
    inc hl                                        ; $7b93: $23
    ld c, b                                       ; $7b94: $48
    adc e                                         ; $7b95: $8b
    ldh [rNR12], a                                ; $7b96: $e0 $12
    or c                                          ; $7b98: $b1
    jp c, $afd0                                   ; $7b99: $da $d0 $af

    adc b                                         ; $7b9c: $88
    ld [$fa30], a                                 ; $7b9d: $ea $30 $fa
    jr z, @+$15                                   ; $7ba0: $28 $13

    ld l, $7e                                     ; $7ba2: $2e $7e
    cp e                                          ; $7ba4: $bb
    ld e, e                                       ; $7ba5: $5b
    ld l, [hl]                                    ; $7ba6: $6e
    ld b, l                                       ; $7ba7: $45
    ld hl, sp+$00                                 ; $7ba8: $f8 $00
    ld l, c                                       ; $7baa: $69
    ld c, $a3                                     ; $7bab: $0e $a3
    db $e4                                        ; $7bad: $e4
    ld [hl+], a                                   ; $7bae: $22
    adc h                                         ; $7baf: $8c
    ld a, b                                       ; $7bb0: $78
    ld c, c                                       ; $7bb1: $49
    rst $20                                       ; $7bb2: $e7
    ld d, h                                       ; $7bb3: $54
    ld hl, $4a62                                  ; $7bb4: $21 $62 $4a
    or c                                          ; $7bb7: $b1
    jp $7248                                      ; $7bb8: $c3 $48 $72


    dec [hl]                                      ; $7bbb: $35
    db $10                                        ; $7bbc: $10
    xor d                                         ; $7bbd: $aa
    cpl                                           ; $7bbe: $2f
    add c                                         ; $7bbf: $81
    cp [hl]                                       ; $7bc0: $be
    ld e, b                                       ; $7bc1: $58
    ldh a, [$a6]                                  ; $7bc2: $f0 $a6
    ld c, l                                       ; $7bc4: $4d
    or d                                          ; $7bc5: $b2
    ld [hl], h                                    ; $7bc6: $74
    sbc [hl]                                      ; $7bc7: $9e
    dec b                                         ; $7bc8: $05
    adc e                                         ; $7bc9: $8b
    inc b                                         ; $7bca: $04
    ld a, a                                       ; $7bcb: $7f
    add b                                         ; $7bcc: $80
    ld a, [c]                                     ; $7bcd: $f2
    push de                                       ; $7bce: $d5
    ld d, c                                       ; $7bcf: $51
    add d                                         ; $7bd0: $82
    inc h                                         ; $7bd1: $24
    ld b, l                                       ; $7bd2: $45
    rst $00                                       ; $7bd3: $c7
    ld a, d                                       ; $7bd4: $7a
    dec sp                                        ; $7bd5: $3b
    rst $08                                       ; $7bd6: $cf
    add d                                         ; $7bd7: $82
    ld b, l                                       ; $7bd8: $45
    add d                                         ; $7bd9: $82
    ccf                                           ; $7bda: $3f
    ld l, b                                       ; $7bdb: $68
    ld l, h                                       ; $7bdc: $6c
    rst $20                                       ; $7bdd: $e7
    or l                                          ; $7bde: $b5
    add b                                         ; $7bdf: $80
    ld b, e                                       ; $7be0: $43
    ld b, a                                       ; $7be1: $47
    and [hl]                                      ; $7be2: $a6
    ld [hl], $6b                                  ; $7be3: $36 $6b
    and $cc                                       ; $7be5: $e6 $cc
    ld e, e                                       ; $7be7: $5b
    dec e                                         ; $7be8: $1d
    xor [hl]                                      ; $7be9: $ae
    ld d, [hl]                                    ; $7bea: $56
    ld a, e                                       ; $7beb: $7b
    and e                                         ; $7bec: $a3
    sbc $8e                                       ; $7bed: $de $8e
    jr nz, jr_034_7c1e                            ; $7bef: $20 $2d

    add d                                         ; $7bf1: $82
    ld a, e                                       ; $7bf2: $7b
    jr z, @-$3a                                   ; $7bf3: $28 $c4

    ld h, [hl]                                    ; $7bf5: $66
    ld a, a                                       ; $7bf6: $7f
    ret                                           ; $7bf7: $c9


    adc l                                         ; $7bf8: $8d
    xor l                                         ; $7bf9: $ad
    or [hl]                                       ; $7bfa: $b6
    ld [hl], h                                    ; $7bfb: $74
    or $c4                                        ; $7bfc: $f6 $c4
    rst $20                                       ; $7bfe: $e7
    and d                                         ; $7bff: $a2
    ld h, e                                       ; $7c00: $63
    db $d3                                        ; $7c01: $d3
    inc e                                         ; $7c02: $1c
    ld c, c                                       ; $7c03: $49
    pop hl                                        ; $7c04: $e1
    adc $4d                                       ; $7c05: $ce $4d
    sub d                                         ; $7c07: $92
    sub d                                         ; $7c08: $92
    push de                                       ; $7c09: $d5
    pop de                                        ; $7c0a: $d1
    adc e                                         ; $7c0b: $8b
    or l                                          ; $7c0c: $b5
    ld a, b                                       ; $7c0d: $78
    res 0, h                                      ; $7c0e: $cb $84
    adc e                                         ; $7c10: $8b
    rst $18                                       ; $7c11: $df
    xor $96                                       ; $7c12: $ee $96
    ld e, e                                       ; $7c14: $5b
    or l                                          ; $7c15: $b5
    and l                                         ; $7c16: $a5
    jp $a582                                      ; $7c17: $c3 $82 $a5


    ld [hl], c                                    ; $7c1a: $71
    pop bc                                        ; $7c1b: $c1
    di                                            ; $7c1c: $f3
    xor l                                         ; $7c1d: $ad

jr_034_7c1e:
    ld b, h                                       ; $7c1e: $44
    xor h                                         ; $7c1f: $ac
    ld [hl], $42                                  ; $7c20: $36 $42
    or l                                          ; $7c22: $b5
    ld a, [hl-]                                   ; $7c23: $3a
    rst $30                                       ; $7c24: $f7
    xor $dd                                       ; $7c25: $ee $dd
    ld l, d                                       ; $7c27: $6a
    push de                                       ; $7c28: $d5
    pop bc                                        ; $7c29: $c1
    db $eb                                        ; $7c2a: $eb
    add sp, $08                                   ; $7c2b: $e8 $08
    ld a, [$bd11]                                 ; $7c2d: $fa $11 $bd
    db $e4                                        ; $7c30: $e4
    jr c, jr_034_7c41                             ; $7c31: $38 $0e

    ld c, e                                       ; $7c33: $4b
    add hl, bc                                    ; $7c34: $09
    sub d                                         ; $7c35: $92
    ld [hl], h                                    ; $7c36: $74
    ld e, [hl]                                    ; $7c37: $5e
    dec bc                                        ; $7c38: $0b
    jr c, jr_034_7caf                             ; $7c39: $38 $74

    ld h, h                                       ; $7c3b: $64
    ld l, d                                       ; $7c3c: $6a
    or e                                          ; $7c3d: $b3

Call_034_7c3e:
    ld h, [hl]                                    ; $7c3e: $66
    adc $bc                                       ; $7c3f: $ce $bc

jr_034_7c41:
    push de                                       ; $7c41: $d5
    pop hl                                        ; $7c42: $e1
    ld l, d                                       ; $7c43: $6a
    or l                                          ; $7c44: $b5
    scf                                           ; $7c45: $37
    ld [$08ed], a                                 ; $7c46: $ea $ed $08
    jp nc, $b822                                  ; $7c49: $d2 $22 $b8

    ld e, a                                       ; $7c4c: $5f
    ld h, c                                       ; $7c4d: $61
    or l                                          ; $7c4e: $b5
    ld [de], a                                    ; $7c4f: $12
    cp $aa                                        ; $7c50: $fe $aa
    cp l                                          ; $7c52: $bd
    dec e                                         ; $7c53: $1d
    ld [hl], c                                    ; $7c54: $71
    adc c                                         ; $7c55: $89
    add h                                         ; $7c56: $84
    cp [hl]                                       ; $7c57: $be
    and h                                         ; $7c58: $a4
    sbc c                                         ; $7c59: $99
    rra                                           ; $7c5a: $1f
    ld b, d                                       ; $7c5b: $42
    sbc d                                         ; $7c5c: $9a
    inc bc                                        ; $7c5d: $03
    and e                                         ; $7c5e: $a3
    cp a                                          ; $7c5f: $bf
    xor b                                         ; $7c60: $a8
    and e                                         ; $7c61: $a3
    ld a, b                                       ; $7c62: $78
    ld d, c                                       ; $7c63: $51
    jp c, $afe0                                   ; $7c64: $da $e0 $af

    or c                                          ; $7c67: $b1
    ld h, l                                       ; $7c68: $65
    inc [hl]                                      ; $7c69: $34
    ld a, [c]                                     ; $7c6a: $f2
    rla                                           ; $7c6b: $17
    db $fc                                        ; $7c6c: $fc
    add c                                         ; $7c6d: $81
    xor e                                         ; $7c6e: $ab
    dec l                                         ; $7c6f: $2d
    dec a                                         ; $7c70: $3d
    pop hl                                        ; $7c71: $e1
    dec hl                                        ; $7c72: $2b
    sub $e2                                       ; $7c73: $d6 $e2
    add sp, -$03                                  ; $7c75: $e8 $fd
    di                                            ; $7c77: $f3
    ld d, a                                       ; $7c78: $57
    sub [hl]                                      ; $7c79: $96
    ld a, [hl-]                                   ; $7c7a: $3a
    ld e, b                                       ; $7c7b: $58
    rst $28                                       ; $7c7c: $ef
    cp c                                          ; $7c7d: $b9
    ld [hl], a                                    ; $7c7e: $77
    rst $28                                       ; $7c7f: $ef
    ld d, [hl]                                    ; $7c80: $56
    ld e, e                                       ; $7c81: $5b
    ld a, [hl-]                                   ; $7c82: $3a
    sbc e                                         ; $7c83: $9b
    sbc a                                         ; $7c84: $9f
    ld e, b                                       ; $7c85: $58
    adc d                                         ; $7c86: $8a
    and [hl]                                      ; $7c87: $a6
    inc l                                         ; $7c88: $2c
    ld b, d                                       ; $7c89: $42
    pop af                                        ; $7c8a: $f1
    ld [$4045], a                                 ; $7c8b: $ea $45 $40
    dec e                                         ; $7c8e: $1d
    adc e                                         ; $7c8f: $8b
    db $fc                                        ; $7c90: $fc
    pop de                                        ; $7c91: $d1
    ld b, h                                       ; $7c92: $44
    ld [bc], a                                    ; $7c93: $02
    ld h, [hl]                                    ; $7c94: $66
    call z, Call_034_4c01                         ; $7c95: $cc $01 $4c
    push bc                                       ; $7c98: $c5
    rra                                           ; $7c99: $1f
    ld b, d                                       ; $7c9a: $42
    or l                                          ; $7c9b: $b5
    xor d                                         ; $7c9c: $aa
    or $76                                        ; $7c9d: $f6 $76
    sbc [hl]                                      ; $7c9f: $9e
    dec b                                         ; $7ca0: $05
    adc e                                         ; $7ca1: $8b
    inc b                                         ; $7ca2: $04
    ld a, a                                       ; $7ca3: $7f
    add b                                         ; $7ca4: $80
    ld a, [c]                                     ; $7ca5: $f2
    push de                                       ; $7ca6: $d5
    ld d, c                                       ; $7ca7: $51
    add d                                         ; $7ca8: $82
    inc h                                         ; $7ca9: $24
    ld h, l                                       ; $7caa: $65
    inc [hl]                                      ; $7cab: $34
    ld a, [c]                                     ; $7cac: $f2
    rla                                           ; $7cad: $17
    db $fc                                        ; $7cae: $fc

jr_034_7caf:
    add c                                         ; $7caf: $81
    xor e                                         ; $7cb0: $ab
    dec l                                         ; $7cb1: $2d
    dec a                                         ; $7cb2: $3d
    pop hl                                        ; $7cb3: $e1
    dec hl                                        ; $7cb4: $2b
    sub $e2                                       ; $7cb5: $d6 $e2
    sbc b                                         ; $7cb7: $98
    or c                                          ; $7cb8: $b1
    jp $aca5                                      ; $7cb9: $c3 $a5 $ac


    adc c                                         ; $7cbc: $89
    ld e, b                                       ; $7cbd: $58
    ld l, l                                       ; $7cbe: $6d
    jr z, jr_034_7cc7                             ; $7cbf: $28 $06

    ld a, a                                       ; $7cc1: $7f
    db $fd                                        ; $7cc2: $fd
    adc d                                         ; $7cc3: $8a
    xor b                                         ; $7cc4: $a8
    ld c, $a3                                     ; $7cc5: $0e $a3

jr_034_7cc7:
    adc a                                         ; $7cc7: $8f
    ld [hl-], a                                   ; $7cc8: $32
    pop hl                                        ; $7cc9: $e1
    ld [c], a                                     ; $7cca: $e2
    or a                                          ; $7ccb: $b7
    inc [hl]                                      ; $7ccc: $34
    rlca                                          ; $7ccd: $07
    ld c, c                                       ; $7cce: $49
    pop hl                                        ; $7ccf: $e1
    cp $d5                                        ; $7cd0: $fe $d5
    ld d, $6f                                     ; $7cd2: $16 $6f
    sbc c                                         ; $7cd4: $99
    db $fc                                        ; $7cd5: $fc
    sub c                                         ; $7cd6: $91
    xor b                                         ; $7cd7: $a8
    and l                                         ; $7cd8: $a5
    rst $28                                       ; $7cd9: $ef
    or e                                          ; $7cda: $b3
    sbc $1e                                       ; $7cdb: $de $1e
    ld hl, $8ccd                                  ; $7cdd: $21 $cd $8c
    ccf                                           ; $7ce0: $3f
    add e                                         ; $7ce1: $83
    ld [hl], e                                    ; $7ce2: $73
    add e                                         ; $7ce3: $83
    cp a                                          ; $7ce4: $bf
    ld [c], a                                     ; $7ce5: $e2
    ld b, l                                       ; $7ce6: $45
    ld l, c                                       ; $7ce7: $69
    rst $30                                       ; $7ce8: $f7
    di                                            ; $7ce9: $f3
    rst $10                                       ; $7cea: $d7
    rla                                           ; $7ceb: $17
    sub [hl]                                      ; $7cec: $96
    xor d                                         ; $7ced: $aa
    dec b                                         ; $7cee: $05
    ld l, a                                       ; $7cef: $6f
    inc sp                                        ; $7cf0: $33
    ccf                                           ; $7cf1: $3f
    ld l, a                                       ; $7cf2: $6f
    jp c, $1fd1                                   ; $7cf3: $da $d1 $1f

    adc e                                         ; $7cf6: $8b
    rla                                           ; $7cf7: $17
    and l                                         ; $7cf8: $a5
    dec c                                         ; $7cf9: $0d
    cp $aa                                        ; $7cfa: $fe $aa
    cp l                                          ; $7cfc: $bd
    db $db                                        ; $7cfd: $db
    ld d, e                                       ; $7cfe: $53
    dec c                                         ; $7cff: $0d
    ld h, h                                       ; $7d00: $64
    add sp, $0b                                   ; $7d01: $e8 $0b
    ld c, e                                       ; $7d03: $4b
    ld b, c                                       ; $7d04: $41
    db $ed                                        ; $7d05: $ed
    adc h                                         ; $7d06: $8c
    add hl, sp                                    ; $7d07: $39
    ret                                           ; $7d08: $c9


    ld h, c                                       ; $7d09: $61
    jp hl                                         ; $7d0a: $e9


    push bc                                       ; $7d0b: $c5
    ld a, d                                       ; $7d0c: $7a
    ld c, e                                       ; $7d0d: $4b
    call nz, Call_034_436a                        ; $7d0e: $c4 $6a $43
    ld l, a                                       ; $7d11: $6f
    adc [hl]                                      ; $7d12: $8e
    db $ed                                        ; $7d13: $ed
    inc a                                         ; $7d14: $3c
    dec bc                                        ; $7d15: $0b
    ld d, $09                                     ; $7d16: $16 $09
    cp $a0                                        ; $7d18: $fe $a0
    inc b                                         ; $7d1a: $04
    ld c, c                                       ; $7d1b: $49
    ld a, [hl-]                                   ; $7d1c: $3a
    ld e, h                                       ; $7d1d: $5c
    db $10                                        ; $7d1e: $10
    ld l, [hl]                                    ; $7d1f: $6e
    inc [hl]                                      ; $7d20: $34
    ld de, $5a91                                  ; $7d21: $11 $91 $5a
    adc d                                         ; $7d24: $8a
    ldh a, [rSB]                                  ; $7d25: $f0 $01
    jp nc, $091c                                  ; $7d27: $d2 $1c $09

    db $db                                        ; $7d2a: $db
    jp $3eb1                                      ; $7d2b: $c3 $b1 $3e


    jp z, $b504                                   ; $7d2e: $ca $04 $b5

    jp c, Jump_034_403b                           ; $7d31: $da $3b $40

    rst $38                                       ; $7d34: $ff
    ld d, $c1                                     ; $7d35: $16 $c1
    rrca                                          ; $7d37: $0f
    ld a, d                                       ; $7d38: $7a
    ld [hl], e                                    ; $7d39: $73
    xor h                                         ; $7d3a: $ac
    and l                                         ; $7d3b: $a5
    jp c, Jump_034_79d2                           ; $7d3c: $da $d2 $79

    ld d, $2c                                     ; $7d3f: $16 $2c
    ld [de], a                                    ; $7d41: $12
    db $fc                                        ; $7d42: $fc
    ld bc, $a24a                                  ; $7d43: $01 $4a $a2
    ld a, [hl-]                                   ; $7d46: $3a
    ld a, h                                       ; $7d47: $7c
    xor [hl]                                      ; $7d48: $ae
    ld c, $17                                     ; $7d49: $0e $17
    add e                                         ; $7d4b: $83
    cp a                                          ; $7d4c: $bf
    ld a, [hl]                                    ; $7d4d: $7e
    ld b, l                                       ; $7d4e: $45
    ld d, h                                       ; $7d4f: $54
    add a                                         ; $7d50: $87
    pop de                                        ; $7d51: $d1
    ld b, a                                       ; $7d52: $47
    sbc c                                         ; $7d53: $99
    ld [hl], b                                    ; $7d54: $70
    pop af                                        ; $7d55: $f1
    db $db                                        ; $7d56: $db
    db $dd                                        ; $7d57: $dd
    ld [hl], d                                    ; $7d58: $72
    dec hl                                        ; $7d59: $2b
    ld l, e                                       ; $7d5a: $6b
    ld [hl+], a                                   ; $7d5b: $22
    ld d, [hl]                                    ; $7d5c: $56
    ld a, e                                       ; $7d5d: $7b
    db $d3                                        ; $7d5e: $d3
    inc e                                         ; $7d5f: $1c
    or e                                          ; $7d60: $b3
    ld a, [$abf8]                                 ; $7d61: $fa $f8 $ab
    ei                                            ; $7d64: $fb
    ld a, $f4                                     ; $7d65: $3e $f4
    ld [$85a9], sp                                ; $7d67: $08 $a9 $85
    sbc h                                         ; $7d6a: $9c
    ld hl, sp+$28                                 ; $7d6b: $f8 $28
    sbc h                                         ; $7d6d: $9c
    xor e                                         ; $7d6e: $ab
    ccf                                           ; $7d6f: $3f
    ld h, d                                       ; $7d70: $62
    ld [hl], l                                    ; $7d71: $75
    cp b                                          ; $7d72: $b8
    di                                            ; $7d73: $f3
    inc l                                         ; $7d74: $2c
    ld e, b                                       ; $7d75: $58
    inc h                                         ; $7d76: $24
    ld hl, sp+$03                                 ; $7d77: $f8 $03
    ld b, h                                       ; $7d79: $44
    ld d, b                                       ; $7d7a: $50
    xor e                                         ; $7d7b: $ab
    cp l                                          ; $7d7c: $bd
    dec h                                         ; $7d7d: $25
    ld c, b                                       ; $7d7e: $48
    ld d, d                                       ; $7d7f: $52
    dec e                                         ; $7d80: $1d
    xor $70                                       ; $7d81: $ee $70
    ld b, c                                       ; $7d83: $41
    cp b                                          ; $7d84: $b8
    pop de                                        ; $7d85: $d1
    ld b, h                                       ; $7d86: $44
    ld b, h                                       ; $7d87: $44
    ld l, d                                       ; $7d88: $6a
    ld l, c                                       ; $7d89: $69
    inc e                                         ; $7d8a: $1c
    dec e                                         ; $7d8b: $1d
    inc c                                         ; $7d8c: $0c
    dec bc                                        ; $7d8d: $0b
    ld a, b                                       ; $7d8e: $78
    res 0, h                                      ; $7d8f: $cb $84
    adc e                                         ; $7d91: $8b
    rst $18                                       ; $7d92: $df
    jp z, $1c9a                                   ; $7d93: $ca $9a $1c

    ld a, [hl]                                    ; $7d96: $7e
    ld l, d                                       ; $7d97: $6a
    inc sp                                        ; $7d98: $33
    cp h                                          ; $7d99: $bc
    dec sp                                        ; $7d9a: $3b
    ret nc                                        ; $7d9b: $d0

    adc l                                         ; $7d9c: $8d
    xor l                                         ; $7d9d: $ad
    or $56                                        ; $7d9e: $f6 $56
    ld a, a                                       ; $7da0: $7f
    ld d, c                                       ; $7da1: $51
    dec bc                                        ; $7da2: $0b
    sub [hl]                                      ; $7da3: $96
    jp nc, $e670                                  ; $7da4: $d2 $70 $e6

    push de                                       ; $7da7: $d5
    sbc $32                                       ; $7da8: $de $32
    pop hl                                        ; $7daa: $e1
    ld [c], a                                     ; $7dab: $e2
    or a                                          ; $7dac: $b7
    cp e                                          ; $7dad: $bb
    push hl                                       ; $7dae: $e5
    and $2d                                       ; $7daf: $e6 $2d
    jp nz, $2007                                  ; $7db1: $c2 $07 $20

    ld h, d                                       ; $7db4: $62
    or l                                          ; $7db5: $b5
    scf                                           ; $7db6: $37
    call Call_034_4901                            ; $7db7: $cd $01 $49
    pop hl                                        ; $7dba: $e1
    adc $b3                                       ; $7dbb: $ce $b3
    ld h, b                                       ; $7dbd: $60
    sub c                                         ; $7dbe: $91
    ldh [rIF], a                                  ; $7dbf: $e0 $0f
    db $10                                        ; $7dc1: $10
    ld b, c                                       ; $7dc2: $41
    xor l                                         ; $7dc3: $ad
    or $96                                        ; $7dc4: $f6 $96
    jr nz, jr_034_7e11                            ; $7dc6: $20 $49

    add a                                         ; $7dc8: $87
    dec bc                                        ; $7dc9: $0b
    jp nz, Jump_000_268d                          ; $7dca: $c2 $8d $26

    ld [hl+], a                                   ; $7dcd: $22
    ld d, d                                       ; $7dce: $52
    ld c, e                                       ; $7dcf: $4b
    adc c                                         ; $7dd0: $89
    ld e, b                                       ; $7dd1: $58
    db $ed                                        ; $7dd2: $ed
    ld l, l                                       ; $7dd3: $6d
    ld l, h                                       ; $7dd4: $6c
    or l                                          ; $7dd5: $b5
    or a                                          ; $7dd6: $b7
    ld l, d                                       ; $7dd7: $6a
    pop bc                                        ; $7dd8: $c1
    ld [c], a                                     ; $7dd9: $e2
    dec l                                         ; $7dda: $2d
    inc de                                        ; $7ddb: $13
    ld l, $7e                                     ; $7ddc: $2e $7e
    cp e                                          ; $7dde: $bb
    ld e, e                                       ; $7ddf: $5b
    ld l, [hl]                                    ; $7de0: $6e
    sbc $22                                       ; $7de1: $de $22
    ld a, h                                       ; $7de3: $7c
    add b                                         ; $7de4: $80
    inc [hl]                                      ; $7de5: $34
    rlca                                          ; $7de6: $07
    add hl, bc                                    ; $7de7: $09
    db $fc                                        ; $7de8: $fc
    push af                                       ; $7de9: $f5
    ld a, l                                       ; $7dea: $7d
    sub $fd                                       ; $7deb: $d6 $fd
    adc d                                         ; $7ded: $8a
    xor b                                         ; $7dee: $a8
    or [hl]                                       ; $7def: $b6
    inc [hl]                                      ; $7df0: $34
    ld h, c                                       ; $7df1: $61
    adc c                                         ; $7df2: $89
    ld c, e                                       ; $7df3: $4b
    adc [hl]                                      ; $7df4: $8e
    rrca                                          ; $7df5: $0f
    ld [hl], c                                    ; $7df6: $71
    dec l                                         ; $7df7: $2d
    jp nz, Jump_034_4c27                          ; $7df8: $c2 $27 $4c

    dec de                                        ; $7dfb: $1b
    ld b, a                                       ; $7dfc: $47
    add hl, de                                    ; $7dfd: $19
    ld a, l                                       ; $7dfe: $7d
    jr c, jr_034_7e17                             ; $7dff: $38 $16

    ld sp, hl                                     ; $7e01: $f9
    ei                                            ; $7e02: $fb
    inc b                                         ; $7e03: $04
    and b                                         ; $7e04: $a0
    ld a, h                                       ; $7e05: $7c
    ld [hl], l                                    ; $7e06: $75
    db $f4                                        ; $7e07: $f4
    ld [hl], b                                    ; $7e08: $70
    xor h                                         ; $7e09: $ac
    or c                                          ; $7e0a: $b1
    ret                                           ; $7e0b: $c9


    ld e, a                                       ; $7e0c: $5f
    and c                                         ; $7e0d: $a1
    or c                                          ; $7e0e: $b1
    ei                                            ; $7e0f: $fb
    ld sp, hl                                     ; $7e10: $f9

jr_034_7e11:
    res 1, h                                      ; $7e11: $cb $8c
    ld a, [hl]                                    ; $7e13: $7e
    sbc $73                                       ; $7e14: $de $73
    rst $28                                       ; $7e16: $ef

jr_034_7e17:
    and [hl]                                      ; $7e17: $a6
    db $fc                                        ; $7e18: $fc
    ld a, c                                       ; $7e19: $79
    dec sp                                        ; $7e1a: $3b
    rst $08                                       ; $7e1b: $cf
    add d                                         ; $7e1c: $82
    ld b, l                                       ; $7e1d: $45
    add d                                         ; $7e1e: $82
    ccf                                           ; $7e1f: $3f
    ld l, b                                       ; $7e20: $68
    ldh a, [$d7]                                  ; $7e21: $f0 $d7
    rst $30                                       ; $7e23: $f7
    ld e, c                                       ; $7e24: $59
    and a                                         ; $7e25: $a7
    add hl, sp                                    ; $7e26: $39
    ld c, c                                       ; $7e27: $49
    pop hl                                        ; $7e28: $e1
    ld a, [hl]                                    ; $7e29: $7e
    ld b, l                                       ; $7e2a: $45
    ld d, h                                       ; $7e2b: $54
    add a                                         ; $7e2c: $87
    pop de                                        ; $7e2d: $d1
    ld b, a                                       ; $7e2e: $47
    sbc c                                         ; $7e2f: $99
    ld [hl], b                                    ; $7e30: $70
    pop af                                        ; $7e31: $f1
    ld e, e                                       ; $7e32: $5b
    ld de, $003e                                  ; $7e33: $11 $3e $00
    ld de, $bdab                                  ; $7e36: $11 $ab $bd
    jp c, $79db                                   ; $7e39: $da $db $79

    ld d, $2c                                     ; $7e3c: $16 $2c
    ld [de], a                                    ; $7e3e: $12
    db $fc                                        ; $7e3f: $fc
    ld bc, $a822                                  ; $7e40: $01 $22 $a8
    push de                                       ; $7e43: $d5
    sbc $e2                                       ; $7e44: $de $e2
    rst $08                                       ; $7e46: $cf
    cp h                                          ; $7e47: $bc
    dec a                                         ; $7e48: $3d
    ld b, d                                       ; $7e49: $42
    ld a, [hl+]                                   ; $7e4a: $2a
    adc [hl]                                      ; $7e4b: $8e
    dec l                                         ; $7e4c: $2d
    adc c                                         ; $7e4d: $89
    or l                                          ; $7e4e: $b5
    cp h                                          ; $7e4f: $bc
    xor a                                         ; $7e50: $af
    ld b, $a0                                     ; $7e51: $06 $a0
    dec de                                        ; $7e53: $1b
    db $fc                                        ; $7e54: $fc
    ld bc, $39a6                                  ; $7e55: $01 $a6 $39
    add hl, bc                                    ; $7e58: $09
    db $fc                                        ; $7e59: $fc
    dec [hl]                                      ; $7e5a: $35
    and e                                         ; $7e5b: $a3
    ld e, a                                       ; $7e5c: $5f
    or c                                          ; $7e5d: $b1
    ld a, $f7                                     ; $7e5e: $3e $f7
    add l                                         ; $7e60: $85
    and l                                         ; $7e61: $a5
    rla                                           ; $7e62: $17
    db $eb                                        ; $7e63: $eb
    dec l                                         ; $7e64: $2d
    ld de, $0dab                                  ; $7e65: $11 $ab $0d
    cp l                                          ; $7e68: $bd
    add hl, sp                                    ; $7e69: $39
    or [hl]                                       ; $7e6a: $b6
    di                                            ; $7e6b: $f3
    inc l                                         ; $7e6c: $2c
    ld e, b                                       ; $7e6d: $58
    inc h                                         ; $7e6e: $24
    ld hl, sp-$7d                                 ; $7e6f: $f8 $83
    ld [de], a                                    ; $7e71: $12
    inc h                                         ; $7e72: $24
    jp hl                                         ; $7e73: $e9


    ld [hl], b                                    ; $7e74: $70
    ld b, c                                       ; $7e75: $41
    cp b                                          ; $7e76: $b8
    pop de                                        ; $7e77: $d1
    ld b, h                                       ; $7e78: $44
    ld b, h                                       ; $7e79: $44
    ld l, d                                       ; $7e7a: $6a
    add hl, hl                                    ; $7e7b: $29
    jp nz, Jump_034_4807                          ; $7e7c: $c2 $07 $48

    ld [hl], e                                    ; $7e7f: $73
    inc hl                                        ; $7e80: $23
    dec e                                         ; $7e81: $1d
    db $db                                        ; $7e82: $db
    ld a, c                                       ; $7e83: $79
    dec l                                         ; $7e84: $2d
    jr nz, jr_034_7ee6                            ; $7e85: $20 $5f

    ld a, c                                       ; $7e87: $79
    sub c                                         ; $7e88: $91
    ld a, [$a589]                                 ; $7e89: $fa $89 $a5

Call_034_7e8c:
jr_034_7e8c:
    rst $28                                       ; $7e8c: $ef
    ld b, e                                       ; $7e8d: $43
    adc a                                         ; $7e8e: $8f
    sub b                                         ; $7e8f: $90
    ld h, [hl]                                    ; $7e90: $66
    add $9f                                       ; $7e91: $c6 $9f
    pop bc                                        ; $7e93: $c1
    cp c                                          ; $7e94: $b9
    add a                                         ; $7e95: $87
    ld h, e                                       ; $7e96: $63
    dec sp                                        ; $7e97: $3b
    rst $08                                       ; $7e98: $cf
    add d                                         ; $7e99: $82
    ld b, l                                       ; $7e9a: $45
    add d                                         ; $7e9b: $82
    ccf                                           ; $7e9c: $3f
    add sp, -$63                                  ; $7e9d: $e8 $9d
    inc h                                         ; $7e9f: $24
    jp c, $0b55                                   ; $7ea0: $da $55 $0b

    sbc $22                                       ; $7ea3: $de $22
    ld a, h                                       ; $7ea5: $7c
    nop                                           ; $7ea6: $00
    ld [hl+], a                                   ; $7ea7: $22
    ld d, [hl]                                    ; $7ea8: $56
    ld a, e                                       ; $7ea9: $7b
    db $d3                                        ; $7eaa: $d3
    ld c, $a5                                     ; $7eab: $0e $a5
    ld a, b                                       ; $7ead: $78
    push af                                       ; $7eae: $f5
    ld d, b                                       ; $7eaf: $50
    adc b                                         ; $7eb0: $88
    dec c                                         ; $7eb1: $0d
    cp $8a                                        ; $7eb2: $fe $8a
    pop bc                                        ; $7eb4: $c1
    sbc a                                         ; $7eb5: $9f
    and l                                         ; $7eb6: $a5
    ld a, [hl-]                                   ; $7eb7: $3a
    call c, $c5b9                                 ; $7eb8: $dc $b9 $c5
    inc bc                                        ; $7ebb: $03
    inc bc                                        ; $7ebc: $03
    sbc $ee                                       ; $7ebd: $de $ee
    rst $20                                       ; $7ebf: $e7
    xor a                                         ; $7ec0: $af
    ld l, d                                       ; $7ec1: $6a
    pop bc                                        ; $7ec2: $c1
    db $db                                        ; $7ec3: $db
    push af                                       ; $7ec4: $f5
    dec sp                                        ; $7ec5: $3b
    cp h                                          ; $7ec6: $bc
    ld l, c                                       ; $7ec7: $69
    ld c, $a3                                     ; $7ec8: $0e $a3
    ld b, e                                       ; $7eca: $43
    ld a, [hl-]                                   ; $7ecb: $3a
    ld e, h                                       ; $7ecc: $5c
    db $10                                        ; $7ecd: $10
    ld l, [hl]                                    ; $7ece: $6e
    inc [hl]                                      ; $7ecf: $34
    ld de, $5a91                                  ; $7ed0: $11 $91 $5a
    ld a, [$eb3e]                                 ; $7ed3: $fa $3e $eb
    xor l                                         ; $7ed6: $ad
    dec b                                         ; $7ed7: $05
    and c                                         ; $7ed8: $a1
    rst $00                                       ; $7ed9: $c7
    and a                                         ; $7eda: $a7

jr_034_7edb:
    cp l                                          ; $7edb: $bd
    add hl, sp                                    ; $7edc: $39
    sub $db                                       ; $7edd: $d6 $db
    ld a, c                                       ; $7edf: $79
    ld d, $2c                                     ; $7ee0: $16 $2c
    ld [de], a                                    ; $7ee2: $12
    db $fc                                        ; $7ee3: $fc
    ld b, c                                       ; $7ee4: $41
    ld h, e                                       ; $7ee5: $63

jr_034_7ee6:
    xor e                                         ; $7ee6: $ab
    jp $a3e8                                      ; $7ee7: $c3 $e8 $a3


    ld c, h                                       ; $7eea: $4c
    cp b                                          ; $7eeb: $b8
    ld hl, sp-$13                                 ; $7eec: $f8 $ed
    ld l, [hl]                                    ; $7eee: $6e
    cp c                                          ; $7eef: $b9
    and l                                         ; $7ef0: $a5
    add hl, sp                                    ; $7ef1: $39
    ld b, e                                       ; $7ef2: $43
    push de                                       ; $7ef3: $d5
    jr c, jr_034_7e8c                             ; $7ef4: $38 $96

    ld c, $33                                     ; $7ef6: $0e $33
    ld c, b                                       ; $7ef8: $48
    sbc b                                         ; $7ef9: $98
    ld c, l                                       ; $7efa: $4d
    ld [hl], e                                    ; $7efb: $73
    sbc l                                         ; $7efc: $9d
    db $e3                                        ; $7efd: $e3
    cp d                                          ; $7efe: $ba
    xor [hl]                                      ; $7eff: $ae
    db $eb                                        ; $7f00: $eb
    cp d                                          ; $7f01: $ba
    xor [hl]                                      ; $7f02: $ae
    ld [hl], a                                    ; $7f03: $77
    xor [hl]                                      ; $7f04: $ae
    ld h, e                                       ; $7f05: $63
    adc e                                         ; $7f06: $8b
    and h                                         ; $7f07: $a4
    ld [hl], c                                    ; $7f08: $71
    inc l                                         ; $7f09: $2c
    rst $20                                       ; $7f0a: $e7
    sbc $a8                                       ; $7f0b: $de $a8
    ld h, e                                       ; $7f0d: $63
    dec l                                         ; $7f0e: $2d
    dec e                                         ; $7f0f: $1d
    ld l, $08                                     ; $7f10: $2e $08
    scf                                           ; $7f12: $37
    sbc d                                         ; $7f13: $9a
    adc b                                         ; $7f14: $88
    ld c, b                                       ; $7f15: $48
    dec l                                         ; $7f16: $2d
    db $fd                                        ; $7f17: $fd
    adc d                                         ; $7f18: $8a
    xor b                                         ; $7f19: $a8
    or $d1                                        ; $7f1a: $f6 $d1
    pop de                                        ; $7f1c: $d1
    adc $4a                                       ; $7f1d: $ce $4a
    ld d, [hl]                                    ; $7f1f: $56
    ld b, a                                       ; $7f20: $47
    rst $20                                       ; $7f21: $e7
    ld e, c                                       ; $7f22: $59
    or b                                          ; $7f23: $b0
    ld c, b                                       ; $7f24: $48
    ldh a, [rTAC]                                 ; $7f25: $f0 $07
    ld b, e                                       ; $7f27: $43
    ld a, [hl-]                                   ; $7f28: $3a
    ld a, [$3dea]                                 ; $7f29: $fa $ea $3d
    jr z, jr_034_7edb                             ; $7f2c: $28 $ad

    and l                                         ; $7f2e: $a5
    jp c, Jump_034_65bb                           ; $7f2f: $da $bb $65

    jp hl                                         ; $7f32: $e9


    dec [hl]                                      ; $7f33: $35
    ld c, [hl]                                    ; $7f34: $4e
    ld e, a                                       ; $7f35: $5f
    db $ec                                        ; $7f36: $ec
    adc h                                         ; $7f37: $8c
    add hl, sp                                    ; $7f38: $39
    add hl, bc                                    ; $7f39: $09
    db $fc                                        ; $7f3a: $fc
    dec [hl]                                      ; $7f3b: $35
    or d                                          ; $7f3c: $b2
    cp l                                          ; $7f3d: $bd
    inc h                                         ; $7f3e: $24
    inc l                                         ; $7f3f: $2c
    xor [hl]                                      ; $7f40: $ae
    ld c, $fe                                     ; $7f41: $0e $fe
    ld [$e258], a                                 ; $7f43: $ea $58 $e2
    di                                            ; $7f46: $f3
    ld [hl], a                                    ; $7f47: $77
    xor $28                                       ; $7f48: $ee $28
    ld a, e                                       ; $7f4a: $7b
    ret nc                                        ; $7f4b: $d0

    sbc b                                         ; $7f4c: $98
    and $49                                       ; $7f4d: $e6 $49
    ld a, a                                       ; $7f4f: $7f
    or a                                          ; $7f50: $b7
    ld [hl], a                                    ; $7f51: $77
    adc e                                         ; $7f52: $8b
    halt                                          ; $7f53: $76
    add e                                         ; $7f54: $83
    cp a                                          ; $7f55: $bf
    ld [$904f], a                                 ; $7f56: $ea $4f $90
    and h                                         ; $7f59: $a4
    ld a, b                                       ; $7f5a: $78
    ld c, c                                       ; $7f5b: $49
    and $3d                                       ; $7f5c: $e6 $3d
    ld d, a                                       ; $7f5e: $57
    ld a, a                                       ; $7f5f: $7f
    call nz, $d56a                                ; $7f60: $c4 $6a $d5
    inc hl                                        ; $7f63: $23
    ld hl, sp-$15                                 ; $7f64: $f8 $eb
    ld b, $7f                                     ; $7f66: $06 $7f
    ret nc                                        ; $7f68: $d0

    jp Jump_034_4a4f                              ; $7f69: $c3 $4f $4a


    inc de                                        ; $7f6c: $13
    scf                                           ; $7f6d: $37
    or e                                          ; $7f6e: $b3
    inc [hl]                                      ; $7f6f: $34
    or d                                          ; $7f70: $b2
    cp l                                          ; $7f71: $bd
    inc h                                         ; $7f72: $24
    inc l                                         ; $7f73: $2c
    sbc $de                                       ; $7f74: $de $de
    cp $2e                                        ; $7f76: $fe $2e
    ld b, d                                       ; $7f78: $42
    sbc d                                         ; $7f79: $9a
    inc bc                                        ; $7f7a: $03
    ret                                           ; $7f7b: $c9


    rra                                           ; $7f7c: $1f
    sub b                                         ; $7f7d: $90
    cp a                                          ; $7f7e: $bf
    ld l, b                                       ; $7f7f: $68
    sbc d                                         ; $7f80: $9a
    and [hl]                                      ; $7f81: $a6
    dec b                                         ; $7f82: $05
    dec b                                         ; $7f83: $05
    inc de                                        ; $7f84: $13
    add e                                         ; $7f85: $83
    add d                                         ; $7f86: $82
    and [hl]                                      ; $7f87: $a6
    ld l, c                                       ; $7f88: $69
    jp c, Jump_000_01f7                           ; $7f89: $da $f7 $01

    ld sp, hl                                     ; $7f8c: $f9
    adc e                                         ; $7f8d: $8b
    and [hl]                                      ; $7f8e: $a6
    ld l, c                                       ; $7f8f: $69
    sbc d                                         ; $7f90: $9a

Jump_034_7f91:
    inc bc                                        ; $7f91: $03
    ret                                           ; $7f92: $c9


    pop af                                        ; $7f93: $f1
    ld [c], a                                     ; $7f94: $e2
    push bc                                       ; $7f95: $c5
    adc e                                         ; $7f96: $8b
    and [hl]                                      ; $7f97: $a6
    ld l, c                                       ; $7f98: $69
    sbc d                                         ; $7f99: $9a
    and $c9                                       ; $7f9a: $e6 $c9
    rra                                           ; $7f9c: $1f
    sub b                                         ; $7f9d: $90
    cp a                                          ; $7f9e: $bf
    jr c, jr_034_7fb8                             ; $7f9f: $38 $17

    ld sp, hl                                     ; $7fa1: $f9
    db $db                                        ; $7fa2: $db
    jr nc, @+$73                                  ; $7fa3: $30 $71

    ld l, $f2                                     ; $7fa5: $2e $f2
    or a                                          ; $7fa7: $b7
    ld h, c                                       ; $7fa8: $61
    and d                                         ; $7fa9: $a2
    ld l, c                                       ; $7faa: $69
    sbc d                                         ; $7fab: $9a
    and $c9                                       ; $7fac: $e6 $c9
    inc de                                        ; $7fae: $13
    daa                                           ; $7faf: $27
    ld c, a                                       ; $7fb0: $4f
    sbc h                                         ; $7fb1: $9c
    db $fc                                        ; $7fb2: $fc
    ld b, l                                       ; $7fb3: $45

Jump_034_7fb4:
    add $9c                                       ; $7fb4: $c6 $9c
    rlc [hl]                                      ; $7fb6: $cb $06

jr_034_7fb8:
    ld b, d                                       ; $7fb8: $42
    or l                                          ; $7fb9: $b5
    ld [$fe4d], a                                 ; $7fba: $ea $4d $fe
    sbc $66                                       ; $7fbd: $de $66
    call z, $b301                                 ; $7fbf: $cc $01 $b3
    dec sp                                        ; $7fc2: $3b
    or $dc                                        ; $7fc3: $f6 $dc
    ld d, c                                       ; $7fc5: $51
    or $a0                                        ; $7fc6: $f6 $a0
    or c                                          ; $7fc8: $b1
    rst $28                                       ; $7fc9: $ef
    ld b, e                                       ; $7fca: $43
    adc a                                         ; $7fcb: $8f
    ldh [$af], a                                  ; $7fcc: $e0 $af
    add e                                         ; $7fce: $83
    ld d, $f2                                     ; $7fcf: $16 $f2
    ld d, a                                       ; $7fd1: $57
    xor h                                         ; $7fd2: $ac
    dec b                                         ; $7fd3: $05
    jp nc, $7f26                                  ; $7fd4: $d2 $26 $7f

    ld b, b                                       ; $7fd7: $40
    cp $e2                                        ; $7fd8: $fe $e2
    ld e, h                                       ; $7fda: $5c
    db $e4                                        ; $7fdb: $e4
    ld l, a                                       ; $7fdc: $6f
    jp $d344                                      ; $7fdd: $c3 $44 $d3


    inc [hl]                                      ; $7fe0: $34
    call $ff01                                    ; $7fe1: $cd $01 $ff
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
