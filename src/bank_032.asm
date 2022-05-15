; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

    ld [hl-], a                                   ; $4000: $32
    sbc l                                         ; $4001: $9d
    ld h, b                                       ; $4002: $60
    ld d, $23                                     ; $4003: $16 $23

jr_032_4005:
    ld a, a                                       ; $4005: $7f
    ret nz                                        ; $4006: $c0

    call c, $8c76                                 ; $4007: $dc $76 $8c
    rst $10                                       ; $400a: $d7
    and h                                         ; $400b: $a4
    db $d3                                        ; $400c: $d3
    rst $28                                       ; $400d: $ef
    di                                            ; $400e: $f3
    rst $20                                       ; $400f: $e7
    ret                                           ; $4010: $c9


    dec d                                         ; $4011: $15
    ld e, e                                       ; $4012: $5b
    ld h, l                                       ; $4013: $65
    jr jr_032_4005                                ; $4014: $18 $ef

    adc a                                         ; $4016: $8f
    ld l, e                                       ; $4017: $6b
    dec e                                         ; $4018: $1d
    rra                                           ; $4019: $1f
    ldh a, [$62]                                  ; $401a: $f0 $62
    adc $f7                                       ; $401c: $ce $f7
    cp d                                          ; $401e: $ba
    rra                                           ; $401f: $1f
    pop bc                                        ; $4020: $c1
    db $18, $8b                                   ; $4021: $18 $8b
    ld sp, $b8c8                                  ; $4023: $31 $c8 $b8
    ld h, $da                                     ; $4026: $26 $da
    adc l                                         ; $4028: $8d
    add b                                         ; $4029: $80
    and e                                         ; $402a: $a3
    cp h                                          ; $402b: $bc
    ld [hl], $71                                  ; $402c: $36 $71
    daa                                           ; $402e: $27
    ld l, b                                       ; $402f: $68
    ld e, c                                       ; $4030: $59
    dec b                                         ; $4031: $05
    ld d, d                                       ; $4032: $52
    db $e3                                        ; $4033: $e3
    adc d                                         ; $4034: $8a
    ld e, l                                       ; $4035: $5d
    xor a                                         ; $4036: $af
    inc d                                         ; $4037: $14
    ld e, l                                       ; $4038: $5d
    add h                                         ; $4039: $84
    rst $28                                       ; $403a: $ef
    ld a, a                                       ; $403b: $7f
    add c                                         ; $403c: $81
    rst $00                                       ; $403d: $c7
    cp b                                          ; $403e: $b8
    sub [hl]                                      ; $403f: $96
    ld h, l                                       ; $4040: $65
    ld c, [hl]                                    ; $4041: $4e
    adc d                                         ; $4042: $8a
    push de                                       ; $4043: $d5

jr_032_4044:
    call z, Call_032_6156                         ; $4044: $cc $56 $61
    inc c                                         ; $4047: $0c
    cp [hl]                                       ; $4048: $be
    or $1f                                        ; $4049: $f6 $1f
    jr nc, jr_032_4077                            ; $404b: $30 $2a

    ld b, l                                       ; $404d: $45
    cp e                                          ; $404e: $bb
    ld e, [hl]                                    ; $404f: $5e
    sub l                                         ; $4050: $95
    jp nz, $186f                                  ; $4051: $c2 $6f $18

    rst $28                                       ; $4054: $ef
    adc a                                         ; $4055: $8f
    ld l, e                                       ; $4056: $6b
    ld e, c                                       ; $4057: $59
    and $a4                                       ; $4058: $e6 $a4
    ld e, b                                       ; $405a: $58
    sbc l                                         ; $405b: $9d
    dec d                                         ; $405c: $15
    dec de                                        ; $405d: $1b
    rst $00                                       ; $405e: $c7
    ld l, b                                       ; $405f: $68
    ld e, [hl]                                    ; $4060: $5e
    jr nz, jr_032_4044                            ; $4061: $20 $e1

    ei                                            ; $4063: $fb
    db $e3                                        ; $4064: $e3
    adc d                                         ; $4065: $8a
    db $dd                                        ; $4066: $dd
    ld c, d                                       ; $4067: $4a
    ld e, l                                       ; $4068: $5d
    ld b, [hl]                                    ; $4069: $46
    sub c                                         ; $406a: $91
    or a                                          ; $406b: $b7
    add a                                         ; $406c: $87
    xor a                                         ; $406d: $af
    pop af                                        ; $406e: $f1
    ld e, e                                       ; $406f: $5b
    add sp, $53                                   ; $4070: $e8 $53
    ld [hl], d                                    ; $4072: $72
    inc b                                         ; $4073: $04
    inc hl                                        ; $4074: $23
    adc l                                         ; $4075: $8d
    and e                                         ; $4076: $a3

jr_032_4077:
    inc hl                                        ; $4077: $23
    ld c, e                                       ; $4078: $4b
    ld sp, $1e46                                  ; $4079: $31 $46 $1e
    dec hl                                        ; $407c: $2b
    ld [hl], $96                                  ; $407d: $36 $96
    cp c                                          ; $407f: $b9
    add $b5                                       ; $4080: $c6 $b5
    db $e3                                        ; $4082: $e3
    pop af                                        ; $4083: $f1
    or e                                          ; $4084: $b3
    xor $b1                                       ; $4085: $ee $b1
    inc l                                         ; $4087: $2c
    ld a, a                                       ; $4088: $7f
    ld de, $1dc9                                  ; $4089: $11 $c9 $1d
    ld l, e                                       ; $408c: $6b
    xor $35                                       ; $408d: $ee $35
    ld sp, hl                                     ; $408f: $f9
    ld c, [hl]                                    ; $4090: $4e
    pop de                                        ; $4091: $d1
    rst $20                                       ; $4092: $e7
    ld d, c                                       ; $4093: $51
    adc a                                         ; $4094: $8f
    ld e, $2e                                     ; $4095: $1e $2e
    ret nz                                        ; $4097: $c0

    ld d, a                                       ; $4098: $57
    ld l, h                                       ; $4099: $6c
    call z, $ed43                                 ; $409a: $cc $43 $ed
    and b                                         ; $409d: $a0
    push af                                       ; $409e: $f5
    db $d3                                        ; $409f: $d3
    ld b, a                                       ; $40a0: $47
    cp a                                          ; $40a1: $bf
    inc de                                        ; $40a2: $13
    adc l                                         ; $40a3: $8d
    db $fc                                        ; $40a4: $fc
    ld bc, $15a3                                  ; $40a5: $01 $a3 $15
    xor l                                         ; $40a8: $ad
    db $e3                                        ; $40a9: $e3
    inc bc                                        ; $40aa: $03
    ld e, [hl]                                    ; $40ab: $5e
    call z, $8ef9                                 ; $40ac: $cc $f9 $8e
    ld [$b8dc], a                                 ; $40af: $ea $dc $b8
    ld [hl+], a                                   ; $40b2: $22
    ld a, [c]                                     ; $40b3: $f2
    ld d, $27                                     ; $40b4: $16 $27
    ld l, b                                       ; $40b6: $68
    rst $10                                       ; $40b7: $d7
    inc bc                                        ; $40b8: $03
    adc a                                         ; $40b9: $8f
    add hl, hl                                    ; $40ba: $29
    ld l, b                                       ; $40bb: $68
    inc h                                         ; $40bc: $24
    rst $08                                       ; $40bd: $cf
    di                                            ; $40be: $f3
    ld a, h                                       ; $40bf: $7c
    inc h                                         ; $40c0: $24
    rst $08                                       ; $40c1: $cf
    di                                            ; $40c2: $f3
    ld a, h                                       ; $40c3: $7c
    inc h                                         ; $40c4: $24
    xor a                                         ; $40c5: $af
    ldh a, [$df]                                  ; $40c6: $f0 $df
    ld a, [c]                                     ; $40c8: $f2
    ld d, $bd                                     ; $40c9: $16 $bd
    rra                                           ; $40cb: $1f
    sub $d7                                       ; $40cc: $d6 $d7
    ld e, d                                       ; $40ce: $5a
    push af                                       ; $40cf: $f5
    ld c, $eb                                     ; $40d0: $0e $eb
    ld l, e                                       ; $40d2: $6b
    dec l                                         ; $40d3: $2d
    sbc l                                         ; $40d4: $9d
    ld h, b                                       ; $40d5: $60
    ld d, $6b                                     ; $40d6: $16 $6b
    db $e4                                        ; $40d8: $e4
    inc e                                         ; $40d9: $1c
    halt                                          ; $40da: $76
    ld [hl], b                                    ; $40db: $70
    dec bc                                        ; $40dc: $0b
    sbc l                                         ; $40dd: $9d
    ld h, b                                       ; $40de: $60
    adc l                                         ; $40df: $8d
    sbc h                                         ; $40e0: $9c
    rst $00                                       ; $40e1: $c7
    ld c, $eb                                     ; $40e2: $0e $eb
    ld l, e                                       ; $40e4: $6b
    dec e                                         ; $40e5: $1d
    ld c, a                                       ; $40e6: $4f
    xor c                                         ; $40e7: $a9
    ld c, l                                       ; $40e8: $4d
    ld l, h                                       ; $40e9: $6c
    ld bc, $609d                                  ; $40ea: $01 $9d $60
    inc l                                         ; $40ed: $2c
    ld h, e                                       ; $40ee: $63
    ld a, l                                       ; $40ef: $7d
    push bc                                       ; $40f0: $c5
    ld c, $eb                                     ; $40f1: $0e $eb
    ld l, e                                       ; $40f3: $6b
    dec e                                         ; $40f4: $1d
    ld c, a                                       ; $40f5: $4f
    xor c                                         ; $40f6: $a9
    ld c, l                                       ; $40f7: $4d
    ld l, h                                       ; $40f8: $6c
    ld bc, $e2a7                                  ; $40f9: $01 $a7 $e2
    ld [$b5f6], sp                                ; $40fc: $08 $f6 $b5
    db $eb                                        ; $40ff: $eb
    sub l                                         ; $4100: $95
    and d                                         ; $4101: $a2
    adc e                                         ; $4102: $8b
    ldh a, [$fd]                                  ; $4103: $f0 $fd
    xor a                                         ; $4105: $af
    ld e, b                                       ; $4106: $58
    ld h, e                                       ; $4107: $63
    ld sp, $ebfd                                  ; $4108: $31 $fd $eb
    cp c                                          ; $410b: $b9
    ld d, [hl]                                    ; $410c: $56
    inc d                                         ; $410d: $14
    swap d                                        ; $410e: $cb $32
    daa                                           ; $4110: $27
    push bc                                       ; $4111: $c5
    cp b                                          ; $4112: $b8
    ld h, d                                       ; $4113: $62
    pop af                                        ; $4114: $f1
    db $fc                                        ; $4115: $fc
    jp nz, $aeba                                  ; $4116: $c2 $ba $ae

    sbc b                                         ; $4119: $98
    ld l, b                                       ; $411a: $68
    pop af                                        ; $411b: $f1
    db $fc                                        ; $411c: $fc
    ld b, d                                       ; $411d: $42
    ld a, c                                       ; $411e: $79
    db $ec                                        ; $411f: $ec
    cp d                                          ; $4120: $ba
    sub l                                         ; $4121: $95
    cp d                                          ; $4122: $ba
    add hl, hl                                    ; $4123: $29
    ld d, a                                       ; $4124: $57
    inc h                                         ; $4125: $24
    ld b, a                                       ; $4126: $47
    or b                                          ; $4127: $b0
    or h                                          ; $4128: $b4
    call c, $9630                                 ; $4129: $dc $30 $96
    ld b, d                                       ; $412c: $42
    db $fd                                        ; $412d: $fd
    ld [hl], c                                    ; $412e: $71
    adc l                                         ; $412f: $8d
    xor $35                                       ; $4130: $ee $35
    xor e                                         ; $4132: $ab
    ld b, h                                       ; $4133: $44
    db $e4                                        ; $4134: $e4
    xor d                                         ; $4135: $aa
    ld c, l                                       ; $4136: $4d
    ld l, h                                       ; $4137: $6c
    ld bc, $3c27                                  ; $4138: $01 $27 $3c
    adc a                                         ; $413b: $8f
    inc c                                         ; $413c: $0c
    ld l, b                                       ; $413d: $68
    inc b                                         ; $413e: $04
    ei                                            ; $413f: $fb
    ld [hl], a                                    ; $4140: $77
    adc e                                         ; $4141: $8b
    dec [hl]                                      ; $4142: $35
    dec b                                         ; $4143: $05
    ld h, d                                       ; $4144: $62

jr_032_4145:
    ld e, h                                       ; $4145: $5c
    adc e                                         ; $4146: $8b
    rst $20                                       ; $4147: $e7
    inc d                                         ; $4148: $14
    ret                                           ; $4149: $c9


    dec d                                         ; $414a: $15
    push bc                                       ; $414b: $c5
    or d                                          ; $414c: $b2
    call z, $3149                                 ; $414d: $cc $49 $31
    xor [hl]                                      ; $4150: $ae
    ld e, b                                       ; $4151: $58
    inc a                                         ; $4152: $3c
    cp a                                          ; $4153: $bf
    or b                                          ; $4154: $b0
    xor [hl]                                      ; $4155: $ae
    dec hl                                        ; $4156: $2b
    ld h, $5a                                     ; $4157: $26 $5a
    inc a                                         ; $4159: $3c
    cp a                                          ; $415a: $bf
    ld d, b                                       ; $415b: $50
    ld e, $bb                                     ; $415c: $1e $bb
    ld l, [hl]                                    ; $415e: $6e
    and l                                         ; $415f: $a5
    ld l, [hl]                                    ; $4160: $6e
    jp z, $8b15                                   ; $4161: $ca $15 $8b

    cp e                                          ; $4164: $bb
    ld sp, $5d75                                  ; $4165: $31 $75 $5d
    sbc a                                         ; $4168: $9f
    ld b, [hl]                                    ; $4169: $46
    ld e, [hl]                                    ; $416a: $5e
    scf                                           ; $416b: $37
    ld b, $84                                     ; $416c: $06 $84
    ld b, l                                       ; $416e: $45
    sub c                                         ; $416f: $91
    or a                                          ; $4170: $b7
    ld b, a                                       ; $4171: $47
    and l                                         ; $4172: $a5
    db $d3                                        ; $4173: $d3
    rst $08                                       ; $4174: $cf
    cpl                                           ; $4175: $2f
    push de                                       ; $4176: $d5
    and e                                         ; $4177: $a3
    add a                                         ; $4178: $87
    db $e3                                        ; $4179: $e3
    jp c, Jump_032_7ef5                           ; $417a: $da $f5 $7e

    ret z                                         ; $417d: $c8

    add hl, de                                    ; $417e: $19
    ld sp, hl                                     ; $417f: $f9
    sbc d                                         ; $4180: $9a
    ld [bc], a                                    ; $4181: $02
    add c                                         ; $4182: $81
    ld [bc], a                                    ; $4183: $02
    adc a                                         ; $4184: $8f
    xor c                                         ; $4185: $a9
    or e                                          ; $4186: $b3
    xor d                                         ; $4187: $aa
    and [hl]                                      ; $4188: $a6
    jr jr_032_4145                                ; $4189: $18 $ba

    ld h, d                                       ; $418b: $62
    ld e, h                                       ; $418c: $5c
    or c                                          ; $418d: $b1
    inc l                                         ; $418e: $2c
    ld [hl], e                                    ; $418f: $73
    ld d, d                                       ; $4190: $52
    adc h                                         ; $4191: $8c
    dec hl                                        ; $4192: $2b
    ld d, $cf                                     ; $4193: $16 $cf
    cpl                                           ; $4195: $2f
    xor h                                         ; $4196: $ac
    db $eb                                        ; $4197: $eb
    adc d                                         ; $4198: $8a
    adc c                                         ; $4199: $89
    ld d, $cf                                     ; $419a: $16 $cf
    cpl                                           ; $419c: $2f
    sub h                                         ; $419d: $94
    rst $00                                       ; $419e: $c7
    xor [hl]                                      ; $419f: $ae
    ld e, e                                       ; $41a0: $5b
    xor c                                         ; $41a1: $a9
    sbc e                                         ; $41a2: $9b
    ld [hl], d                                    ; $41a3: $72
    push bc                                       ; $41a4: $c5
    sbc [hl]                                      ; $41a5: $9e
    ld [hl], e                                    ; $41a6: $73
    db $fc                                        ; $41a7: $fc
    add [hl]                                      ; $41a8: $86
    xor [hl]                                      ; $41a9: $ae
    ret z                                         ; $41aa: $c8

    ld [hl], a                                    ; $41ab: $77
    add d                                         ; $41ac: $82
    ld h, d                                       ; $41ad: $62
    ld e, c                                       ; $41ae: $59
    and $a4                                       ; $41af: $e6 $a4
    ret c                                         ; $41b1: $d8

    ld [hl], e                                    ; $41b2: $73
    adc [hl]                                      ; $41b3: $8e
    rst $18                                       ; $41b4: $df
    ret nc                                        ; $41b5: $d0

    dec d                                         ; $41b6: $15
    dec bc                                        ; $41b7: $0b
    adc l                                         ; $41b8: $8d
    rst $18                                       ; $41b9: $df
    ld [bc], a                                    ; $41ba: $02
    ccf                                           ; $41bb: $3f
    push de                                       ; $41bc: $d5
    ld h, l                                       ; $41bd: $65
    cp c                                          ; $41be: $b9
    ld a, $ad                                     ; $41bf: $3e $ad
    inc a                                         ; $41c1: $3c
    adc a                                         ; $41c2: $8f
    inc c                                         ; $41c3: $0c
    ld l, b                                       ; $41c4: $68
    inc b                                         ; $41c5: $04
    dec hl                                        ; $41c6: $2b
    adc d                                         ; $41c7: $8a
    ld bc, $c161                                  ; $41c8: $01 $61 $c1
    ld d, b                                       ; $41cb: $50
    call z, Call_032_5d18                         ; $41cc: $cc $18 $5d
    dec bc                                        ; $41cf: $0b
    cp b                                          ; $41d0: $b8
    xor [hl]                                      ; $41d1: $ae
    cp d                                          ; $41d2: $ba
    ld sp, $3f6e                                  ; $41d3: $31 $6e $3f
    ld b, $5f                                     ; $41d6: $06 $5f
    cp e                                          ; $41d8: $bb
    ld e, [hl]                                    ; $41d9: $5e
    sub l                                         ; $41da: $95
    jp nz, $186f                                  ; $41db: $c2 $6f $18

    rst $28                                       ; $41de: $ef
    adc a                                         ; $41df: $8f
    ld l, e                                       ; $41e0: $6b
    ld e, c                                       ; $41e1: $59
    and $a4                                       ; $41e2: $e6 $a4
    ret z                                         ; $41e4: $c8

    ld e, e                                       ; $41e5: $5b
    push af                                       ; $41e6: $f5
    rst $28                                       ; $41e7: $ef
    add [hl]                                      ; $41e8: $86
    db $d3                                        ; $41e9: $d3
    daa                                           ; $41ea: $27
    ld a, l                                       ; $41eb: $7d
    ld c, $e3                                     ; $41ec: $0e $e3
    add sp, $5a                                   ; $41ee: $e8 $5a
    ld b, $b4                                     ; $41f0: $06 $b4
    and d                                         ; $41f2: $a2
    ld e, b                                       ; $41f3: $58
    ld [hl], $54                                  ; $41f4: $36 $54
    ld [hl-], a                                   ; $41f6: $32
    add sp, -$44                                  ; $41f7: $e8 $bc
    inc sp                                        ; $41f9: $33
    ld h, h                                       ; $41fa: $64
    ld d, c                                       ; $41fb: $51
    ld d, h                                       ; $41fc: $54
    inc sp                                        ; $41fd: $33
    ld b, [hl]                                    ; $41fe: $46
    sbc a                                         ; $41ff: $9f
    db $eb                                        ; $4200: $eb
    db $d3                                        ; $4201: $d3
    cp b                                          ; $4202: $b8
    ld h, d                                       ; $4203: $62
    adc l                                         ; $4204: $8d
    ld h, l                                       ; $4205: $65
    ld b, b                                       ; $4206: $40
    inc d                                         ; $4207: $14
    db $e3                                        ; $4208: $e3
    ld e, d                                       ; $4209: $5a
    ld d, $fb                                     ; $420a: $16 $fb
    ld e, l                                       ; $420c: $5d
    adc a                                         ; $420d: $8f
    push hl                                       ; $420e: $e5
    ld a, [$b00f]                                 ; $420f: $fa $0f $b0
    inc d                                         ; $4212: $14
    push bc                                       ; $4213: $c5
    ld [$dcac], a                                 ; $4214: $ea $ac $dc
    pop af                                        ; $4217: $f1
    db $d3                                        ; $4218: $d3
    call $e051                                    ; $4219: $cd $51 $e0
    db $e3                                        ; $421c: $e3

jr_032_421d:
    adc d                                         ; $421d: $8a
    inc c                                         ; $421e: $0c
    xor b                                         ; $421f: $a8
    call nz, Call_032_7de2                        ; $4220: $c4 $e2 $7d
    ld e, d                                       ; $4223: $5a
    ld l, b                                       ; $4224: $68
    db $e4                                        ; $4225: $e4
    rrca                                          ; $4226: $0f
    jr jr_032_42a6                                ; $4227: $18 $7d

    ld a, [de]                                    ; $4229: $1a
    ld d, a                                       ; $422a: $57
    inc l                                         ; $422b: $2c
    res 3, h                                      ; $422c: $cb $9c
    inc d                                         ; $422e: $14
    db $e3                                        ; $422f: $e3
    adc d                                         ; $4230: $8a
    push bc                                       ; $4231: $c5
    di                                            ; $4232: $f3
    dec bc                                        ; $4233: $0b
    db $eb                                        ; $4234: $eb
    cp d                                          ; $4235: $ba
    ld h, d                                       ; $4236: $62
    and d                                         ; $4237: $a2
    push bc                                       ; $4238: $c5
    di                                            ; $4239: $f3
    dec bc                                        ; $423a: $0b
    push hl                                       ; $423b: $e5
    or c                                          ; $423c: $b1
    db $eb                                        ; $423d: $eb
    ld d, [hl]                                    ; $423e: $56
    ld [$5ca6], a                                 ; $423f: $ea $a6 $5c
    sub c                                         ; $4242: $91
    or a                                          ; $4243: $b7
    daa                                           ; $4244: $27
    jr z, jr_032_421d                             ; $4245: $28 $d6

    inc d                                         ; $4247: $14
    adc b                                         ; $4248: $88
    dec [hl]                                      ; $4249: $35
    add b                                         ; $424a: $80
    ld de, $49f6                                  ; $424b: $11 $f6 $49
    or c                                          ; $424e: $b1
    db $eb                                        ; $424f: $eb
    ld d, l                                       ; $4250: $55
    add hl, hl                                    ; $4251: $29
    db $fc                                        ; $4252: $fc
    add [hl]                                      ; $4253: $86
    pop af                                        ; $4254: $f1
    ld a, [hl]                                    ; $4255: $7e
    adc h                                         ; $4256: $8c
    ld l, e                                       ; $4257: $6b
    ld e, c                                       ; $4258: $59
    and $a4                                       ; $4259: $e6 $a4
    jr jr_032_42b4                                ; $425b: $18 $57

    inc l                                         ; $425d: $2c
    sbc [hl]                                      ; $425e: $9e
    ld e, a                                       ; $425f: $5f
    ld e, b                                       ; $4260: $58
    rst $10                                       ; $4261: $d7
    dec d                                         ; $4262: $15
    inc de                                        ; $4263: $13
    dec l                                         ; $4264: $2d
    sbc [hl]                                      ; $4265: $9e
    ld e, a                                       ; $4266: $5f
    jr z, @-$6f                                   ; $4267: $28 $8f

    ld e, l                                       ; $4269: $5d
    or a                                          ; $426a: $b7
    ld d, d                                       ; $426b: $52
    scf                                           ; $426c: $37
    push hl                                       ; $426d: $e5
    adc d                                         ; $426e: $8a
    and l                                         ; $426f: $a5
    rst $18                                       ; $4270: $df
    and a                                         ; $4271: $a7
    ld e, c                                       ; $4272: $59
    db $d3                                        ; $4273: $d3
    xor b                                         ; $4274: $a8
    call z, $f3a0                                 ; $4275: $cc $a0 $f3
    or d                                          ; $4278: $b2
    call z, $b149                                 ; $4279: $cc $49 $b1
    ld d, e                                       ; $427c: $53
    call z, Call_032_7b15                         ; $427d: $cc $15 $7b
    or b                                          ; $4280: $b0
    inc de                                        ; $4281: $13
    ld e, a                                       ; $4282: $5f
    xor d                                         ; $4283: $aa

jr_032_4284:
    jr z, @+$28                                   ; $4284: $28 $26

    ld c, d                                       ; $4286: $4a
    xor [hl]                                      ; $4287: $ae
    ld sp, $3f4f                                  ; $4288: $31 $4f $3f
    adc h                                         ; $428b: $8c
    ld d, l                                       ; $428c: $55
    ld e, l                                       ; $428d: $5d
    ld d, a                                       ; $428e: $57
    ld c, d                                       ; $428f: $4a
    adc $a0                                       ; $4290: $ce $a0
    di                                            ; $4292: $f3
    cp b                                          ; $4293: $b8
    and b                                         ; $4294: $a0
    di                                            ; $4295: $f3
    ld [bc], a                                    ; $4296: $02
    dec hl                                        ; $4297: $2b
    jr z, jr_032_42fe                             ; $4298: $28 $64

    rst $38                                       ; $429a: $ff
    ld d, [hl]                                    ; $429b: $56
    jp hl                                         ; $429c: $e9


    ld d, e                                       ; $429d: $53
    sbc $02                                       ; $429e: $de $02
    rst $00                                       ; $42a0: $c7
    sub l                                         ; $42a1: $95
    xor c                                         ; $42a2: $a9
    inc sp                                        ; $42a3: $33
    ld b, $69                                     ; $42a4: $06 $69

jr_032_42a6:
    ld a, l                                       ; $42a6: $7d
    push af                                       ; $42a7: $f5
    reti                                          ; $42a8: $d9


    rst $10                                       ; $42a9: $d7
    or d                                          ; $42aa: $b2
    call z, $3149                                 ; $42ab: $cc $49 $31
    xor [hl]                                      ; $42ae: $ae
    ld e, b                                       ; $42af: $58
    inc a                                         ; $42b0: $3c
    cp a                                          ; $42b1: $bf
    or b                                          ; $42b2: $b0
    xor [hl]                                      ; $42b3: $ae

jr_032_42b4:
    dec hl                                        ; $42b4: $2b
    ld h, $5a                                     ; $42b5: $26 $5a
    inc a                                         ; $42b7: $3c
    cp a                                          ; $42b8: $bf
    ld d, b                                       ; $42b9: $50
    ld e, $bb                                     ; $42ba: $1e $bb
    ld l, [hl]                                    ; $42bc: $6e
    and l                                         ; $42bd: $a5
    ld l, [hl]                                    ; $42be: $6e
    jp z, $c915                                   ; $42bf: $ca $15 $c9

    ld sp, hl                                     ; $42c2: $f9
    xor l                                         ; $42c3: $ad
    ld sp, $5427                                  ; $42c4: $31 $27 $54
    ld c, h                                       ; $42c7: $4c
    ld a, a                                       ; $42c8: $7f
    ld a, l                                       ; $42c9: $7d
    push af                                       ; $42ca: $f5
    or l                                          ; $42cb: $b5
    db $eb                                        ; $42cc: $eb
    ld b, c                                       ; $42cd: $41
    ld de, $e478                                  ; $42ce: $11 $78 $e4
    dec l                                         ; $42d1: $2d
    rst $00                                       ; $42d2: $c7
    sub l                                         ; $42d3: $95
    xor c                                         ; $42d4: $a9
    inc sp                                        ; $42d5: $33
    ld b, $69                                     ; $42d6: $06 $69
    db $fd                                        ; $42d8: $fd
    push af                                       ; $42d9: $f5
    cp c                                          ; $42da: $b9
    db $eb                                        ; $42db: $eb
    ld d, l                                       ; $42dc: $55
    add hl, hl                                    ; $42dd: $29
    db $fc                                        ; $42de: $fc
    add [hl]                                      ; $42df: $86
    pop af                                        ; $42e0: $f1
    ld a, [hl]                                    ; $42e1: $7e
    adc h                                         ; $42e2: $8c
    ld l, e                                       ; $42e3: $6b
    ld e, c                                       ; $42e4: $59
    and $a4                                       ; $42e5: $e6 $a4
    jr jr_032_4340                                ; $42e7: $18 $57

    inc l                                         ; $42e9: $2c
    sbc [hl]                                      ; $42ea: $9e
    ld e, a                                       ; $42eb: $5f
    ld e, b                                       ; $42ec: $58
    rst $10                                       ; $42ed: $d7
    dec d                                         ; $42ee: $15
    inc de                                        ; $42ef: $13
    dec l                                         ; $42f0: $2d
    sbc [hl]                                      ; $42f1: $9e
    ld e, a                                       ; $42f2: $5f
    jr z, jr_032_4284                             ; $42f3: $28 $8f

    ld e, l                                       ; $42f5: $5d
    or a                                          ; $42f6: $b7
    ld d, d                                       ; $42f7: $52
    scf                                           ; $42f8: $37
    push hl                                       ; $42f9: $e5
    adc d                                         ; $42fa: $8a
    ld a, h                                       ; $42fb: $7c
    daa                                           ; $42fc: $27
    ret c                                         ; $42fd: $d8

jr_032_42fe:
    sbc d                                         ; $42fe: $9a
    ld [bc], a                                    ; $42ff: $02
    adc l                                         ; $4300: $8d
    add hl, sp                                    ; $4301: $39
    adc l                                         ; $4302: $8d
    or h                                          ; $4303: $b4
    ld a, b                                       ; $4304: $78
    sbc a                                         ; $4305: $9f
    sub [hl]                                      ; $4306: $96
    ld [hl], $e6                                  ; $4307: $36 $e6
    cp c                                          ; $4309: $b9
    and l                                         ; $430a: $a5
    adc d                                         ; $430b: $8a
    ld [hl+], a                                   ; $430c: $22
    cp c                                          ; $430d: $b9
    ld c, e                                       ; $430e: $4b
    ld c, [hl]                                    ; $430f: $4e
    add [hl]                                      ; $4310: $86
    ld e, a                                       ; $4311: $5f
    or c                                          ; $4312: $b1
    rst $30                                       ; $4313: $f7
    ld l, c                                       ; $4314: $69
    ld e, h                                       ; $4315: $5c
    db $e3                                        ; $4316: $e3
    sbc $5d                                       ; $4317: $de $5d
    pop de                                        ; $4319: $d1
    ld hl, sp+$5d                                 ; $431a: $f8 $5d
    jp hl                                         ; $431c: $e9


    or h                                          ; $431d: $b4
    jr z, jr_032_4346                             ; $431e: $28 $26

    ld a, [de]                                    ; $4320: $1a
    cp a                                          ; $4321: $bf
    dec de                                        ; $4322: $1b
    sub b                                         ; $4323: $90
    dec hl                                        ; $4324: $2b
    and [hl]                                      ; $4325: $a6
    ld a, a                                       ; $4326: $7f
    dec a                                         ; $4327: $3d
    rst $10                                       ; $4328: $d7
    ld a, [de]                                    ; $4329: $1a
    ld bc, $4fa3                                  ; $432a: $01 $a3 $4f
    adc e                                         ; $432d: $8b
    cp e                                          ; $432e: $bb
    ld sp, $9737                                  ; $432f: $31 $37 $97
    adc a                                         ; $4332: $8f
    db $db                                        ; $4333: $db
    ld h, a                                       ; $4334: $67
    ret                                           ; $4335: $c9


    dec b                                         ; $4336: $05
    and c                                         ; $4337: $a1
    ld e, b                                       ; $4338: $58
    di                                            ; $4339: $f3
    ret nz                                        ; $433a: $c0

    ld b, a                                       ; $433b: $47
    or [hl]                                       ; $433c: $b6
    add $5f                                       ; $433d: $c6 $5f
    db $e3                                        ; $433f: $e3

jr_032_4340:
    ld e, d                                       ; $4340: $5a
    ret c                                         ; $4341: $d8

    and a                                         ; $4342: $a7
    ld e, e                                       ; $4343: $5b
    sbc $02                                       ; $4344: $de $02

jr_032_4346:
    ld e, c                                       ; $4346: $59
    ld [hl], d                                    ; $4347: $72
    ld [hl-], a                                   ; $4348: $32
    db $fc                                        ; $4349: $fc
    adc d                                         ; $434a: $8a
    ld [hl], c                                    ; $434b: $71
    push bc                                       ; $434c: $c5
    or d                                          ; $434d: $b2
    call z, $3149                                 ; $434e: $cc $49 $31
    xor [hl]                                      ; $4351: $ae
    ld e, b                                       ; $4352: $58
    inc a                                         ; $4353: $3c
    cp a                                          ; $4354: $bf
    or b                                          ; $4355: $b0
    xor [hl]                                      ; $4356: $ae
    dec hl                                        ; $4357: $2b
    ld h, $5a                                     ; $4358: $26 $5a
    inc a                                         ; $435a: $3c
    cp a                                          ; $435b: $bf
    ld d, b                                       ; $435c: $50
    ld e, $bb                                     ; $435d: $1e $bb
    ld l, [hl]                                    ; $435f: $6e
    and l                                         ; $4360: $a5
    ld l, [hl]                                    ; $4361: $6e
    jp z, $8b15                                   ; $4362: $ca $15 $8b

    rst $30                                       ; $4365: $f7
    ld l, c                                       ; $4366: $69
    sub a                                         ; $4367: $97
    ld e, l                                       ; $4368: $5d
    db $ec                                        ; $4369: $ec
    sbc e                                         ; $436a: $9b
    ld h, d                                       ; $436b: $62
    ld [hl], l                                    ; $436c: $75
    sub $f1                                       ; $436d: $d6 $f1
    ld bc, $e62f                                  ; $436f: $01 $2f $e6
    inc a                                         ; $4372: $3c
    rst $18                                       ; $4373: $df
    ld d, c                                       ; $4374: $51
    sbc l                                         ; $4375: $9d
    sbc e                                         ; $4376: $9b
    ld a, [c]                                     ; $4377: $f2
    ld e, h                                       ; $4378: $5c
    cp e                                          ; $4379: $bb
    ret c                                         ; $437a: $d8

    sub [hl]                                      ; $437b: $96
    ld bc, $75cd                                  ; $437c: $01 $cd $75
    dec a                                         ; $437f: $3d
    db $fc                                        ; $4380: $fc
    inc de                                        ; $4381: $13
    adc l                                         ; $4382: $8d
    ld h, b                                       ; $4383: $60
    ld b, l                                       ; $4384: $45
    ld sp, $07f2                                  ; $4385: $31 $f2 $07
    adc h                                         ; $4388: $8c
    call c, $8d62                                 ; $4389: $dc $62 $8d
    add b                                         ; $438c: $80
    ld [$4d75], a                                 ; $438d: $ea $75 $4d
    xor [hl]                                      ; $4390: $ae
    jp c, $16c4                                   ; $4391: $da $c4 $16

    and a                                         ; $4394: $a7
    ld [c], a                                     ; $4395: $e2
    ld [$bd76], sp                                ; $4396: $08 $76 $bd
    rst $08                                       ; $4399: $cf
    ld bc, $2963                                  ; $439a: $01 $63 $29
    call nc, Call_000_291f                        ; $439d: $d4 $1f $29
    halt                                          ; $43a0: $76
    cp e                                          ; $43a1: $bb
    ret c                                         ; $43a2: $d8

    or $59                                        ; $43a3: $f6 $59
    adc d                                         ; $43a5: $8a
    db $e4                                        ; $43a6: $e4
    ld [$52f6], sp                                ; $43a7: $08 $f6 $52
    add h                                         ; $43aa: $84
    ld a, [$2ddc]                                 ; $43ab: $fa $dc $2d
    add $8d                                       ; $43ae: $c6 $8d
    or c                                          ; $43b0: $b1
    ld c, a                                       ; $43b1: $4f
    add $d2                                       ; $43b2: $c6 $d2
    cp b                                          ; $43b4: $b8
    sub [hl]                                      ; $43b5: $96
    ld h, l                                       ; $43b6: $65
    ld c, [hl]                                    ; $43b7: $4e
    adc d                                         ; $43b8: $8a
    ld [hl], c                                    ; $43b9: $71
    push bc                                       ; $43ba: $c5
    ld [c], a                                     ; $43bb: $e2
    ld sp, hl                                     ; $43bc: $f9
    add l                                         ; $43bd: $85
    ld [hl], l                                    ; $43be: $75
    ld e, l                                       ; $43bf: $5d
    ld sp, $e2d1                                  ; $43c0: $31 $d1 $e2
    ld sp, hl                                     ; $43c3: $f9
    add l                                         ; $43c4: $85
    ld a, [c]                                     ; $43c5: $f2
    ret c                                         ; $43c6: $d8

    ld [hl], l                                    ; $43c7: $75
    dec hl                                        ; $43c8: $2b

jr_032_43c9:
    ld [hl], l                                    ; $43c9: $75
    ld d, e                                       ; $43ca: $53
    xor [hl]                                      ; $43cb: $ae
    sbc b                                         ; $43cc: $98
    ld l, b                                       ; $43cd: $68
    inc b                                         ; $43ce: $04
    ld l, e                                       ; $43cf: $6b
    ld e, $b8                                     ; $43d0: $1e $b8
    ld e, e                                       ; $43d2: $5b
    adc h                                         ; $43d3: $8c
    cp a                                          ; $43d4: $bf
    ld a, a                                       ; $43d5: $7f
    dec l                                         ; $43d6: $2d
    ld [hl], l                                    ; $43d7: $75
    ei                                            ; $43d8: $fb
    or a                                          ; $43d9: $b7
    inc [hl]                                      ; $43da: $34
    ld e, [hl]                                    ; $43db: $5e
    jr z, jr_032_43fd                             ; $43dc: $28 $1f

    rst $10                                       ; $43de: $d7
    xor [hl]                                      ; $43df: $ae
    ld d, a                                       ; $43e0: $57
    and l                                         ; $43e1: $a5
    ldh a, [rNR31]                                ; $43e2: $f0 $1b
    add $fb                                       ; $43e4: $c6 $fb
    or c                                          ; $43e6: $b1
    add b                                         ; $43e7: $80
    and [hl]                                      ; $43e8: $a6
    add hl, hl                                    ; $43e9: $29
    or a                                          ; $43ea: $b7
    ld c, d                                       ; $43eb: $4a
    sbc a                                         ; $43ec: $9f
    inc c                                         ; $43ed: $0c
    ld e, l                                       ; $43ee: $5d
    sub c                                         ; $43ef: $91
    or a                                          ; $43f0: $b7
    daa                                           ; $43f1: $27
    ret c                                         ; $43f2: $d8

    jr jr_032_43c9                                ; $43f3: $18 $d4

jr_032_43f5:
    cp b                                          ; $43f5: $b8
    sub [hl]                                      ; $43f6: $96
    add d                                         ; $43f7: $82
    jr nz, jr_032_4447                            ; $43f8: $20 $4d

    ld b, c                                       ; $43fa: $41
    ld l, e                                       ; $43fb: $6b
    ld a, [bc]                                    ; $43fc: $0a

jr_032_43fd:
    ld d, b                                       ; $43fd: $50
    ld [hl], a                                    ; $43fe: $77
    inc [hl]                                      ; $43ff: $34
    ld h, e                                       ; $4400: $63
    ld sp, hl                                     ; $4401: $f9
    call Call_032_4552                            ; $4402: $cd $52 $45
    ld sp, hl                                     ; $4405: $f9
    ld [$0ddf], a                                 ; $4406: $ea $df $0d
    sub a                                         ; $4409: $97
    ld [hl], $a4                                  ; $440a: $36 $a4
    cp l                                          ; $440c: $bd
    ld [hl], h                                    ; $440d: $74
    ld a, [de]                                    ; $440e: $1a
    cpl                                           ; $440f: $2f
    adc l                                         ; $4410: $8d
    ld l, e                                       ; $4411: $6b
    adc l                                         ; $4412: $8d
    dec hl                                        ; $4413: $2b
    ld b, d                                       ; $4414: $42
    push af                                       ; $4415: $f5
    ld a, [de]                                    ; $4416: $1a
    ld l, e                                       ; $4417: $6b
    ld d, b                                       ; $4418: $50
    ld e, $79                                     ; $4419: $1e $79
    dec bc                                        ; $441b: $0b
    daa                                           ; $441c: $27
    jr z, jr_032_43f5                             ; $441d: $28 $d6

jr_032_441f:
    inc a                                         ; $441f: $3c
    daa                                           ; $4420: $27
    scf                                           ; $4421: $37
    and h                                         ; $4422: $a4
    ld e, b                                       ; $4423: $58
    and l                                         ; $4424: $a5
    pop af                                        ; $4425: $f1
    rst $30                                       ; $4426: $f7
    cp a                                          ; $4427: $bf
    ld a, $ad                                     ; $4428: $3e $ad
    ret c                                         ; $442a: $d8

    ld l, $b6                                     ; $442b: $2e $b6
    and c                                         ; $442d: $a1
    adc a                                         ; $442e: $8f
    ld l, e                                       ; $442f: $6b
    call $a283                                    ; $4430: $cd $83 $a2
    ld a, h                                       ; $4433: $7c
    rst $00                                       ; $4434: $c7
    sub l                                         ; $4435: $95
    jr jr_032_44a1                                ; $4436: $18 $69

    ld bc, $e8c8                                  ; $4438: $01 $c8 $e8
    db $d3                                        ; $443b: $d3
    add sp, $41                                   ; $443c: $e8 $41
    or $03                                        ; $443e: $f6 $03
    adc a                                         ; $4440: $8f
    ld [hl], c                                    ; $4441: $71
    sbc b                                         ; $4442: $98
    adc e                                         ; $4443: $8b
    ld h, l                                       ; $4444: $65
    adc $f3                                       ; $4445: $ce $f3

jr_032_4447:
    ld d, $27                                     ; $4447: $16 $27
    ld l, d                                       ; $4449: $6a
    ld l, c                                       ; $444a: $69
    jp Jump_032_6358                              ; $444b: $c3 $58 $63


    ld sp, $d223                                  ; $444e: $31 $23 $d2
    daa                                           ; $4451: $27
    ld a, h                                       ; $4452: $7c
    ld a, a                                       ; $4453: $7f
    ld b, $9d                                     ; $4454: $06 $9d
    sub a                                         ; $4456: $97
    add d                                         ; $4457: $82
    jr nz, jr_032_441f                            ; $4458: $20 $c5

    db $f4                                        ; $445a: $f4
    rst $00                                       ; $445b: $c7

jr_032_445c:
    ld [hl], d                                    ; $445c: $72
    ei                                            ; $445d: $fb
    ld c, b                                       ; $445e: $48
    ld sp, hl                                     ; $445f: $f9
    adc [hl]                                      ; $4460: $8e
    dec hl                                        ; $4461: $2b
    or c                                          ; $4462: $b1
    ld a, a                                       ; $4463: $7f
    ld a, a                                       ; $4464: $7f
    sbc a                                         ; $4465: $9f
    sub $58                                       ; $4466: $d6 $58
    inc c                                         ; $4468: $0c
    ccf                                           ; $4469: $3f
    and e                                         ; $446a: $a3
    ld c, a                                       ; $446b: $4f
    or a                                          ; $446c: $b7
    dec d                                         ; $446d: $15
    ld e, e                                       ; $446e: $5b
    di                                            ; $446f: $f3
    add b                                         ; $4470: $80
    cp e                                          ; $4471: $bb
    ld a, [c]                                     ; $4472: $f2
    inc a                                         ; $4473: $3c
    ld l, a                                       ; $4474: $6f
    ld bc, $eff5                                  ; $4475: $01 $f5 $ef
    add [hl]                                      ; $4478: $86
    cp e                                          ; $4479: $bb
    ld e, [hl]                                    ; $447a: $5e
    ld d, l                                       ; $447b: $55
    jp hl                                         ; $447c: $e9


    ld e, a                                       ; $447d: $5f
    or a                                          ; $447e: $b7
    ld d, l                                       ; $447f: $55
    or [hl]                                       ; $4480: $b6
    set 3, h                                      ; $4481: $cb $dc
    or c                                          ; $4483: $b1
    xor [hl]                                      ; $4484: $ae
    ld l, e                                       ; $4485: $6b
    rst $10                                       ; $4486: $d7
    xor e                                         ; $4487: $ab
    ld a, [hl+]                                   ; $4488: $2a
    dec l                                         ; $4489: $2d
    ret z                                         ; $448a: $c8

    ld [$5c94], sp                                ; $448b: $08 $94 $5c
    ld h, l                                       ; $448e: $65
    jr jr_032_445c                                ; $448f: $18 $cb

    cp [hl]                                       ; $4491: $be
    dec de                                        ; $4492: $1b
    xor $46                                       ; $4493: $ee $46
    or a                                          ; $4495: $b7
    ld sp, hl                                     ; $4496: $f9
    adc l                                         ; $4497: $8d
    db $fc                                        ; $4498: $fc
    or c                                          ; $4499: $b1
    call c, Call_032_6df8                         ; $449a: $dc $f8 $6d
    ld b, $73                                     ; $449d: $06 $73
    ei                                            ; $449f: $fb
    xor h                                         ; $44a0: $ac

jr_032_44a1:
    pop af                                        ; $44a1: $f1
    dec sp                                        ; $44a2: $3b
    db $fc                                        ; $44a3: $fc
    dec b                                         ; $44a4: $05
    ld d, [hl]                                    ; $44a5: $56

jr_032_44a6:
    ld c, l                                       ; $44a6: $4d
    pop de                                        ; $44a7: $d1
    ld d, d                                       ; $44a8: $52
    db $10                                        ; $44a9: $10
    and h                                         ; $44aa: $a4
    cp h                                          ; $44ab: $bc
    dec b                                         ; $44ac: $05
    dec e                                         ; $44ad: $1d
    ld e, $26                                     ; $44ae: $1e $26
    sub a                                         ; $44b0: $97
    xor l                                         ; $44b1: $ad
    ld a, l                                       ; $44b2: $7d
    xor l                                         ; $44b3: $ad
    ld de, $5e74                                  ; $44b4: $11 $74 $5e
    ld h, e                                       ; $44b7: $63
    ld sp, $a1e6                                  ; $44b8: $31 $e6 $a1
    rst $28                                       ; $44bb: $ef
    ld d, d                                       ; $44bc: $52
    xor h                                         ; $44bd: $ac
    ld a, c                                       ; $44be: $79
    ld c, [hl]                                    ; $44bf: $4e
    ld l, [hl]                                    ; $44c0: $6e
    ld c, b                                       ; $44c1: $48
    ld sp, $35fd                                  ; $44c2: $31 $fd $35
    jp nz, $e04f                                  ; $44c5: $c2 $4f $e0

    xor d                                         ; $44c8: $aa
    ld c, l                                       ; $44c9: $4d
    ld l, h                                       ; $44ca: $6c
    ld bc, $b5f5                                  ; $44cb: $01 $f5 $b5
    ld c, d                                       ; $44ce: $4a
    dec bc                                        ; $44cf: $0b
    ret nz                                        ; $44d0: $c0

    jr jr_032_4510                                ; $44d1: $18 $3d

    ret z                                         ; $44d3: $c8

    ld a, [hl]                                    ; $44d4: $7e
    ldh [$31], a                                  ; $44d5: $e0 $31
    xor [hl]                                      ; $44d7: $ae
    jp z, $bf3e                                   ; $44d8: $ca $3e $bf

    db $ed                                        ; $44db: $ed
    jp nc, $a032                                  ; $44dc: $d2 $32 $a0

    push af                                       ; $44df: $f5
    ld l, b                                       ; $44e0: $68
    ld c, e                                       ; $44e1: $4b
    dec de                                        ; $44e2: $1b

jr_032_44e3:
    add [hl]                                      ; $44e3: $86
    ld hl, $df8d                                  ; $44e4: $21 $8d $df
    adc l                                         ; $44e7: $8d
    ld a, c                                       ; $44e8: $79
    add sp, -$1d                                  ; $44e9: $e8 $e3
    adc d                                         ; $44eb: $8a
    db $dd                                        ; $44ec: $dd
    ld a, [de]                                    ; $44ed: $1a
    add e                                         ; $44ee: $83
    and d                                         ; $44ef: $a2
    ret z                                         ; $44f0: $c8

    ld e, e                                       ; $44f1: $5b
    dec e                                         ; $44f2: $1d
    sbc $5f                                       ; $44f3: $de $5f
    ld [$9aca], sp                                ; $44f5: $08 $ca $9a
    ld h, d                                       ; $44f8: $62
    jr jr_032_44e3                                ; $44f9: $18 $e8

    db $e3                                        ; $44fb: $e3
    or $63                                        ; $44fc: $f6 $63
    push bc                                       ; $44fe: $c5
    add $a0                                       ; $44ff: $c6 $a0
    sub d                                         ; $4501: $92
    cp e                                          ; $4502: $bb
    xor $0a                                       ; $4503: $ee $0a
    ld a, [de]                                    ; $4505: $1a
    rst $10                                       ; $4506: $d7
    ld a, [hl+]                                   ; $4507: $2a
    dec l                                         ; $4508: $2d
    ld l, l                                       ; $4509: $6d
    add sp, $5a                                   ; $450a: $e8 $5a
    add c                                         ; $450c: $81
    jr nz, jr_032_44a6                            ; $450d: $20 $97

    rst $20                                       ; $450f: $e7

jr_032_4510:
    dec l                                         ; $4510: $2d
    push af                                       ; $4511: $f5
    rst $28                                       ; $4512: $ef
    add [hl]                                      ; $4513: $86
    sub l                                         ; $4514: $95
    call c, $9630                                 ; $4515: $dc $30 $96
    ld b, d                                       ; $4518: $42
    db $fd                                        ; $4519: $fd
    add hl, de                                    ; $451a: $19
    di                                            ; $451b: $f3
    ret nc                                        ; $451c: $d0

    rlca                                          ; $451d: $07
    ld e, a                                       ; $451e: $5f
    ld h, e                                       ; $451f: $63
    ccf                                           ; $4520: $3f
    cpl                                           ; $4521: $2f
    adc a                                         ; $4522: $8f
    and l                                         ; $4523: $a5
    dec b                                         ; $4524: $05
    ld hl, sp-$56                                 ; $4525: $f8 $aa
    rst $30                                       ; $4527: $f7
    sub a                                         ; $4528: $97
    or $f7                                        ; $4529: $f6 $f7
    ld l, c                                       ; $452b: $69
    adc l                                         ; $452c: $8d
    ld sp, hl                                     ; $452d: $f9
    call nc, Call_032_5559                        ; $452e: $d4 $59 $55
    ld d, e                                       ; $4531: $53
    sub h                                         ; $4532: $94
    rst $20                                       ; $4533: $e7
    ld sp, hl                                     ; $4534: $f9
    ld [$956b], a                                 ; $4535: $ea $6b $95
    ld d, $fa                                     ; $4538: $16 $fa
    add h                                         ; $453a: $84
    ld l, [hl]                                    ; $453b: $6e
    jr jr_032_4589                                ; $453c: $18 $4b

    and c                                         ; $453e: $a1
    cp $9a                                        ; $453f: $fe $9a
    ld [bc], a                                    ; $4541: $02
    ld sp, $2c20                                  ; $4542: $31 $20 $2c
    xor d                                         ; $4545: $aa
    ld c, l                                       ; $4546: $4d
    ld l, h                                       ; $4547: $6c
    ld bc, $6827                                  ; $4548: $01 $27 $68
    ld c, l                                       ; $454b: $4d
    jp hl                                         ; $454c: $e9


    sub d                                         ; $454d: $92
    ld e, h                                       ; $454e: $5c
    ld d, e                                       ; $454f: $53
    ret nc                                        ; $4550: $d0

    ld a, [hl+]                                   ; $4551: $2a

Call_032_4552:
    ld e, e                                       ; $4552: $5b
    ld h, l                                       ; $4553: $65
    add h                                         ; $4554: $84
    ld [hl], l                                    ; $4555: $75
    ld e, l                                       ; $4556: $5d
    ld l, e                                       ; $4557: $6b
    db $fc                                        ; $4558: $fc
    sub [hl]                                      ; $4559: $96
    cp [hl]                                       ; $455a: $be
    ld sp, hl                                     ; $455b: $f9
    ld c, l                                       ; $455c: $4d
    ld a, c                                       ; $455d: $79
    dec bc                                        ; $455e: $0b
    push af                                       ; $455f: $f5
    or l                                          ; $4560: $b5
    nop                                           ; $4561: $00
    adc h                                         ; $4562: $8c
    pop bc                                        ; $4563: $c1
    ld e, a                                       ; $4564: $5f
    add e                                         ; $4565: $83
    dec b                                         ; $4566: $05
    push hl                                       ; $4567: $e5
    db $e3                                        ; $4568: $e3
    ld e, d                                       ; $4569: $5a
    or c                                          ; $456a: $b1
    ld e, l                                       ; $456b: $5d
    xor a                                         ; $456c: $af
    xor d                                         ; $456d: $aa
    ldh [rNR31], a                                ; $456e: $e0 $1b
    ret nc                                        ; $4570: $d0

    dec l                                         ; $4571: $2d
    ld l, a                                       ; $4572: $6f
    ld bc, $b5f5                                  ; $4573: $01 $f5 $b5
    nop                                           ; $4576: $00
    adc h                                         ; $4577: $8c
    pop bc                                        ; $4578: $c1
    ld e, a                                       ; $4579: $5f
    inc hl                                        ; $457a: $23
    ld e, b                                       ; $457b: $58
    sbc l                                         ; $457c: $9d
    dec [hl]                                      ; $457d: $35
    push bc                                       ; $457e: $c5
    ld l, b                                       ; $457f: $68
    ld e, h                                       ; $4580: $5c
    dec c                                         ; $4581: $0d
    ld h, b                                       ; $4582: $60
    inc l                                         ; $4583: $2c
    inc bc                                        ; $4584: $03
    ld a, [hl+]                                   ; $4585: $2a
    add hl, de                                    ; $4586: $19
    ld d, b                                       ; $4587: $50
    inc l                                         ; $4588: $2c

jr_032_4589:
    ei                                            ; $4589: $fb
    add c                                         ; $458a: $81
    ld b, a                                       ; $458b: $47
    sbc [hl]                                      ; $458c: $9e
    rst $20                                       ; $458d: $e7
    dec l                                         ; $458e: $2d
    push af                                       ; $458f: $f5
    or l                                          ; $4590: $b5
    nop                                           ; $4591: $00
    adc h                                         ; $4592: $8c
    dec [hl]                                      ; $4593: $35
    jp nz, $0b4f                                  ; $4594: $c2 $4f $0b

    ldh a, [$c1]                                  ; $4597: $f0 $c1
    ld e, a                                       ; $4599: $5f
    ld h, e                                       ; $459a: $63
    dec [hl]                                      ; $459b: $35
    ld h, c                                       ; $459c: $61
    inc l                                         ; $459d: $2c
    ld c, l                                       ; $459e: $4d
    or h                                          ; $459f: $b4
    add $3c                                       ; $45a0: $c6 $3c
    db $fd                                        ; $45a2: $fd
    jr nc, @-$6c                                  ; $45a3: $30 $92

    db $eb                                        ; $45a5: $eb
    pop de                                        ; $45a6: $d1
    ld d, [hl]                                    ; $45a7: $56
    ld l, c                                       ; $45a8: $69
    inc l                                         ; $45a9: $2c
    scf                                           ; $45aa: $37
    ld [hl+], a                                   ; $45ab: $22
    xor l                                         ; $45ac: $ad
    ld l, b                                       ; $45ad: $68
    db $fc                                        ; $45ae: $fc
    ld b, l                                       ; $45af: $45
    sbc $02                                       ; $45b0: $de $02
    push af                                       ; $45b2: $f5
    rst $28                                       ; $45b3: $ef
    add [hl]                                      ; $45b4: $86
    cp e                                          ; $45b5: $bb
    ld e, [hl]                                    ; $45b6: $5e
    ld d, l                                       ; $45b7: $55
    jp hl                                         ; $45b8: $e9


    ld e, a                                       ; $45b9: $5f
    or a                                          ; $45ba: $b7
    ld d, l                                       ; $45bb: $55
    or [hl]                                       ; $45bc: $b6
    set 3, h                                      ; $45bd: $cb $dc
    or c                                          ; $45bf: $b1
    xor [hl]                                      ; $45c0: $ae
    ld l, e                                       ; $45c1: $6b
    rst $10                                       ; $45c2: $d7
    xor e                                         ; $45c3: $ab
    ld a, [hl+]                                   ; $45c4: $2a
    ld c, l                                       ; $45c5: $4d
    sub c                                         ; $45c6: $91
    ld bc, $d08c                                  ; $45c7: $01 $8c $d0
    ld a, [hl+]                                   ; $45ca: $2a
    jp $f658                                      ; $45cb: $c3 $58 $f6


    db $dd                                        ; $45ce: $dd
    ld [hl], b                                    ; $45cf: $70
    db $e4                                        ; $45d0: $e4
    add $18                                       ; $45d1: $c6 $18
    sub [hl]                                      ; $45d3: $96
    ld [hl], d                                    ; $45d4: $72
    dec de                                        ; $45d5: $1b
    rlca                                          ; $45d6: $07
    ld e, a                                       ; $45d7: $5f
    di                                            ; $45d8: $f3
    ret nz                                        ; $45d9: $c0

    ld d, a                                       ; $45da: $57
    and c                                         ; $45db: $a1
    and b                                         ; $45dc: $a0
    di                                            ; $45dd: $f3
    ld hl, sp+$2d                                 ; $45de: $f8 $2d
    adc l                                         ; $45e0: $8d
    rra                                           ; $45e1: $1f
    ld a, l                                       ; $45e2: $7d
    ld b, l                                       ; $45e3: $45
    or c                                          ; $45e4: $b1
    db $eb                                        ; $45e5: $eb
    ld a, l                                       ; $45e6: $7d
    ld a, d                                       ; $45e7: $7a
    ldh [$31], a                                  ; $45e8: $e0 $31
    xor [hl]                                      ; $45ea: $ae
    ld d, l                                       ; $45eb: $55
    rst $28                                       ; $45ec: $ef
    xor a                                         ; $45ed: $af
    ld a, c                                       ; $45ee: $79
    ld b, c                                       ; $45ef: $41
    jp z, Jump_032_595b                           ; $45f0: $ca $5b $59

    jp c, Jump_000_2bbf                           ; $45f3: $da $bf $2b

    ld l, b                                       ; $45f6: $68
    adc l                                         ; $45f7: $8d
    push bc                                       ; $45f8: $c5
    ld hl, sp-$05                                 ; $45f9: $f8 $fb
    rst $38                                       ; $45fb: $ff
    or [hl]                                       ; $45fc: $b6
    ld a, [hl-]                                   ; $45fd: $3a
    and e                                         ; $45fe: $a3
    rlca                                          ; $45ff: $07
    or c                                          ; $4600: $b1
    and d                                         ; $4601: $a2
    ld e, b                                       ; $4602: $58
    di                                            ; $4603: $f3
    sbc h                                         ; $4604: $9c
    call c, Call_032_6290                         ; $4605: $dc $90 $62
    db $fc                                        ; $4608: $fc
    sbc $35                                       ; $4609: $de $35
    cp c                                          ; $460b: $b9
    and [hl]                                      ; $460c: $a6
    adc $cd                                       ; $460d: $ce $cd
    adc e                                         ; $460f: $8b
    db $db                                        ; $4610: $db
    db $f4                                        ; $4611: $f4
    rst $10                                       ; $4612: $d7
    ret z                                         ; $4613: $c8

    dec hl                                        ; $4614: $2b
    ei                                            ; $4615: $fb
    ld a, [$9297]                                 ; $4616: $fa $97 $92
    inc hl                                        ; $4619: $23
    ld e, b                                       ; $461a: $58
    jr jr_032_4663                                ; $461b: $18 $46

    sbc $02                                       ; $461d: $de $02
    push af                                       ; $461f: $f5
    or l                                          ; $4620: $b5
    nop                                           ; $4621: $00
    adc h                                         ; $4622: $8c
    xor c                                         ; $4623: $a9
    inc sp                                        ; $4624: $33
    ld a, c                                       ; $4625: $79
    rst $10                                       ; $4626: $d7
    sub l                                         ; $4627: $95
    ld a, [hl+]                                   ; $4628: $2a
    ld a, l                                       ; $4629: $7d
    ld e, d                                       ; $462a: $5a
    ld a, [de]                                    ; $462b: $1a
    push hl                                       ; $462c: $e5
    db $e3                                        ; $462d: $e3
    ld e, d                                       ; $462e: $5a
    push af                                       ; $462f: $f5
    cp $2e                                        ; $4630: $fe $2e
    db $e3                                        ; $4632: $e3
    xor [hl]                                      ; $4633: $ae
    dec e                                         ; $4634: $1d
    ld [hl-], a                                   ; $4635: $32
    inc l                                         ; $4636: $2c
    xor e                                         ; $4637: $ab
    inc [hl]                                      ; $4638: $34
    add $56                                       ; $4639: $c6 $56
    ld h, a                                       ; $463b: $67
    push bc                                       ; $463c: $c5
    sub $c8                                       ; $463d: $d6 $c8
    db $d3                                        ; $463f: $d3
    cp d                                          ; $4640: $ba
    ld [$4fdf], sp                                ; $4641: $08 $df $4f
    xor $bf                                       ; $4644: $ee $bf
    ld e, a                                       ; $4646: $5f
    ld a, e                                       ; $4647: $7b
    ld l, b                                       ; $4648: $68
    dec bc                                        ; $4649: $0b
    dec e                                         ; $464a: $1d
    call Call_000_0fd3                            ; $464b: $cd $d3 $0f
    inc hl                                        ; $464e: $23
    cp c                                          ; $464f: $b9
    ld h, d                                       ; $4650: $62
    db $e3                                        ; $4651: $e3
    rrca                                          ; $4652: $0f
    ld l, $ad                                     ; $4653: $2e $ad
    ld sp, $5c60                                  ; $4655: $31 $60 $5c
    ld [hl], h                                    ; $4658: $74
    dec de                                        ; $4659: $1b
    rst $10                                       ; $465a: $d7
    ld a, [hl+]                                   ; $465b: $2a
    ld e, e                                       ; $465c: $5b
    or [hl]                                       ; $465d: $b6
    ldh [$2b], a                                  ; $465e: $e0 $2b
    ld b, d                                       ; $4660: $42
    xor e                                         ; $4661: $ab
    or h                                          ; $4662: $b4

jr_032_4663:
    jp z, Jump_000_067e                           ; $4663: $ca $7e $06

    sub h                                         ; $4666: $94
    inc e                                         ; $4667: $1c
    pop bc                                        ; $4668: $c1
    jp nz, $9230                                  ; $4669: $c2 $30 $92

    res 0, b                                      ; $466c: $cb $80
    ld a, l                                       ; $466e: $7d
    cp [hl]                                       ; $466f: $be
    ld l, h                                       ; $4670: $6c
    db $ed                                        ; $4671: $ed
    rst $18                                       ; $4672: $df
    ld l, a                                       ; $4673: $6f
    ld h, h                                       ; $4674: $64
    jr @-$33                                      ; $4675: $18 $cb

    ret nz                                        ; $4677: $c0

    dec e                                         ; $4678: $1d
    cp [hl]                                       ; $4679: $be
    halt                                          ; $467a: $76
    ld c, e                                       ; $467b: $4b
    add hl, de                                    ; $467c: $19
    ld e, h                                       ; $467d: $5c
    ld l, h                                       ; $467e: $6c
    call Call_032_6960                            ; $467f: $cd $60 $69
    ld [$9fc3], sp                                ; $4682: $08 $c3 $9f
    or a                                          ; $4685: $b7
    push af                                       ; $4686: $f5
    rst $28                                       ; $4687: $ef
    adc d                                         ; $4688: $8a
    jr nc, @-$2a                                  ; $4689: $30 $d4

    cp b                                          ; $468b: $b8
    and $fa                                       ; $468c: $e6 $fa
    db $e4                                        ; $468e: $e4
    ld a, [c]                                     ; $468f: $f2
    jp hl                                         ; $4690: $e9


    rst $28                                       ; $4691: $ef
    ld a, d                                       ; $4692: $7a
    sbc a                                         ; $4693: $9f
    db $ec                                        ; $4694: $ec
    and d                                         ; $4695: $a2
    add hl, de                                    ; $4696: $19
    and e                                         ; $4697: $a3
    ld l, e                                       ; $4698: $6b
    push de                                       ; $4699: $d5
    ei                                            ; $469a: $fb
    or e                                          ; $469b: $b3
    inc c                                         ; $469c: $0c
    sbc b                                         ; $469d: $98
    xor e                                         ; $469e: $ab
    inc d                                         ; $469f: $14
    dec c                                         ; $46a0: $0d
    ccf                                           ; $46a1: $3f
    db $dd                                        ; $46a2: $dd
    inc e                                         ; $46a3: $1c
    dec b                                         ; $46a4: $05
    xor [hl]                                      ; $46a5: $ae
    cp h                                          ; $46a6: $bc
    dec b                                         ; $46a7: $05
    push af                                       ; $46a8: $f5
    or l                                          ; $46a9: $b5
    xor a                                         ; $46aa: $af
    dec b                                         ; $46ab: $05
    ld h, b                                       ; $46ac: $60
    xor h                                         ; $46ad: $ac
    ld de, $bd50                                  ; $46ae: $11 $50 $bd
    xor [hl]                                      ; $46b1: $ae
    ret                                           ; $46b2: $c9


    or l                                          ; $46b3: $b5
    inc c                                         ; $46b4: $0c
    call c, Call_000_2fe1                         ; $46b5: $dc $e1 $2f
    or b                                          ; $46b8: $b0
    ld l, d                                       ; $46b9: $6a
    adc d                                         ; $46ba: $8a
    sub $3c                                       ; $46bb: $d6 $3c
    daa                                           ; $46bd: $27
    scf                                           ; $46be: $37
    and h                                         ; $46bf: $a4
    db $e4                                        ; $46c0: $e4
    ld a, [hl+]                                   ; $46c1: $2a
    jp $da58                                      ; $46c2: $c3 $58 $da


    db $ed                                        ; $46c5: $ed
    ld e, a                                       ; $46c6: $5f
    ld l, h                                       ; $46c7: $6c
    ld d, l                                       ; $46c8: $55
    ld a, [$5c94]                                 ; $46c9: $fa $94 $5c
    or $dd                                        ; $46cc: $f6 $dd
    ld [hl], b                                    ; $46ce: $70
    add hl, hl                                    ; $46cf: $29
    add hl, de                                    ; $46d0: $19
    ld e, h                                       ; $46d1: $5c
    rrca                                          ; $46d2: $0f
    sbc d                                         ; $46d3: $9a
    dec [hl]                                      ; $46d4: $35
    dec b                                         ; $46d5: $05
    ld h, d                                       ; $46d6: $62
    ld e, h                                       ; $46d7: $5c
    cp e                                          ; $46d8: $bb
    ret c                                         ; $46d9: $d8

    and $95                                       ; $46da: $e6 $95
    sub [hl]                                      ; $46dc: $96

jr_032_46dd:
    ld bc, $68ad                                  ; $46dd: $01 $ad $68
    push de                                       ; $46e0: $d5
    db $e3                                        ; $46e1: $e3
    ld [hl], l                                    ; $46e2: $75
    adc e                                         ; $46e3: $8b
    sub [hl]                                      ; $46e4: $96
    ld bc, $755c                                  ; $46e5: $01 $5c $75
    or a                                          ; $46e8: $b7
    pop hl                                        ; $46e9: $e1
    adc a                                         ; $46ea: $8f
    ld b, $fd                                     ; $46eb: $06 $fd
    ld d, [hl]                                    ; $46ed: $56
    sbc e                                         ; $46ee: $9b
    ret c                                         ; $46ef: $d8

    ld [bc], a                                    ; $46f0: $02
    push af                                       ; $46f1: $f5
    rst $28                                       ; $46f2: $ef
    add [hl]                                      ; $46f3: $86
    ld l, e                                       ; $46f4: $6b
    call z, Call_000_2f09                         ; $46f5: $cc $09 $2f
    ld l, h                                       ; $46f8: $6c
    ld l, [hl]                                    ; $46f9: $6e
    xor e                                         ; $46fa: $ab
    inc sp                                        ; $46fb: $33
    ld hl, sp-$66                                 ; $46fc: $f8 $9a
    ld a, [hl-]                                   ; $46fe: $3a
    scf                                           ; $46ff: $37
    cpl                                           ; $4700: $2f
    sub b                                         ; $4701: $90
    ldh a, [$fd]                                  ; $4702: $f0 $fd
    pop de                                        ; $4704: $d1
    inc bc                                        ; $4705: $03
    rst $38                                       ; $4706: $ff
    or $49                                        ; $4707: $f6 $49
    add e                                         ; $4709: $83
    xor a                                         ; $470a: $af
    and l                                         ; $470b: $a5
    rra                                           ; $470c: $1f
    add $b8                                       ; $470d: $c6 $b8
    db $fd                                        ; $470f: $fd
    ld e, b                                       ; $4710: $58
    ld h, l                                       ; $4711: $65
    ld h, e                                       ; $4712: $63
    ld d, b                                       ; $4713: $50
    inc de                                        ; $4714: $13
    dec l                                         ; $4715: $2d
    ei                                            ; $4716: $fb
    xor [hl]                                      ; $4717: $ae
    ccf                                           ; $4718: $3f
    jp $ccb1                                      ; $4719: $c3 $b1 $cc


    ld sp, hl                                     ; $471c: $f9
    ld l, l                                       ; $471d: $6d
    ld b, l                                       ; $471e: $45
    and e                                         ; $471f: $a3
    rlca                                          ; $4720: $07
    cp $31                                        ; $4721: $fe $31
    sub $e8                                       ; $4723: $d6 $e8
    ld [hl], e                                    ; $4725: $73
    ei                                            ; $4726: $fb
    inc [hl]                                      ; $4727: $34
    xor [hl]                                      ; $4728: $ae
    ld e, b                                       ; $4729: $58
    xor b                                         ; $472a: $a8
    ld [hl-], a                                   ; $472b: $32
    db $fc                                        ; $472c: $fc
    adc d                                         ; $472d: $8a
    jp c, $16c4                                   ; $472e: $da $c4 $16

    ld b, a                                       ; $4731: $47
    db $fd                                        ; $4732: $fd
    adc e                                         ; $4733: $8b
    ld l, l                                       ; $4734: $6d
    sbc a                                         ; $4735: $9f
    ld l, [hl]                                    ; $4736: $6e
    ld sp, hl                                     ; $4737: $f9

jr_032_4738:
    ld c, [hl]                                    ; $4738: $4e
    ld a, h                                       ; $4739: $7c
    db $10                                        ; $473a: $10
    ei                                            ; $473b: $fb
    sbc d                                         ; $473c: $9a
    db $eb                                        ; $473d: $eb
    ld [de], a                                    ; $473e: $12
    di                                            ; $473f: $f3
    ld a, [hl]                                    ; $4740: $7e
    xor h                                         ; $4741: $ac
    or c                                          ; $4742: $b1
    ld e, b                                       ; $4743: $58
    ld c, d                                       ; $4744: $4a
    ld b, $d7                                     ; $4745: $06 $d7
    add e                                         ; $4747: $83
    ld h, [hl]                                    ; $4748: $66
    ld e, h                                       ; $4749: $5c
    ld h, e                                       ; $474a: $63
    jr nc, jr_032_46dd                            ; $474b: $30 $90

    inc d                                         ; $474d: $14
    ld l, e                                       ; $474e: $6b
    call z, Call_000_1787                         ; $474f: $cc $87 $17
    and $2d                                       ; $4752: $e6 $2d
    ld e, c                                       ; $4754: $59
    jp c, $dc65                                   ; $4755: $da $65 $dc

    or l                                          ; $4758: $b5
    ld c, d                                       ; $4759: $4a
    ld h, e                                       ; $475a: $63
    ld sp, hl                                     ; $475b: $f9
    adc e                                         ; $475c: $8b
    ld b, b                                       ; $475d: $40
    ld c, d                                       ; $475e: $4a
    xor $bf                                       ; $475f: $ee $bf
    ld e, a                                       ; $4761: $5f
    ld a, e                                       ; $4762: $7b
    ld l, b                                       ; $4763: $68
    dec bc                                        ; $4764: $0b
    ld b, a                                       ; $4765: $47
    sbc $e2                                       ; $4766: $de $e2
    sub l                                         ; $4768: $95
    ld e, e                                       ; $4769: $5b
    ld [hl], d                                    ; $476a: $72
    inc b                                         ; $476b: $04
    or e                                          ; $476c: $b3
    ld e, b                                       ; $476d: $58
    inc hl                                        ; $476e: $23
    rst $20                                       ; $476f: $e7
    sub b                                         ; $4770: $90
    rst $28                                       ; $4771: $ef
    xor b                                         ; $4772: $a8
    ld [$4d43], sp                                ; $4773: $08 $43 $4d
    rst $38                                       ; $4776: $ff
    ld a, d                                       ; $4777: $7a
    xor [hl]                                      ; $4778: $ae
    jp c, $16c4                                   ; $4779: $da $c4 $16

    sbc l                                         ; $477c: $9d
    ld h, b                                       ; $477d: $60
    ld d, $bb                                     ; $477e: $16 $bb
    ld e, l                                       ; $4780: $5d
    db $ec                                        ; $4781: $ec
    rlca                                          ; $4782: $07
    or a                                          ; $4783: $b7
    ld [hl], c                                    ; $4784: $71
    xor l                                         ; $4785: $ad
    ld de, $26d4                                  ; $4786: $11 $d4 $26
    xor $f0                                       ; $4789: $ee $f0
    ld d, d                                       ; $478b: $52
    ld [hl], h                                    ; $478c: $74
    ld a, [hl]                                    ; $478d: $7e
    ld [hl], d                                    ; $478e: $72
    xor [hl]                                      ; $478f: $ae
    db $eb                                        ; $4790: $eb
    ld d, l                                       ; $4791: $55
    sub l                                         ; $4792: $95
    cp $a5                                        ; $4793: $fe $a5
    jp c, $16c4                                   ; $4795: $da $c4 $16

    sbc l                                         ; $4798: $9d
    ld h, b                                       ; $4799: $60
    rst $38                                       ; $479a: $ff

jr_032_479b:
    ld l, [hl]                                    ; $479b: $6e
    or c                                          ; $479c: $b1
    add $62                                       ; $479d: $c6 $62
    ld a, [hl]                                    ; $479f: $7e
    add e                                         ; $47a0: $83
    ld [$25dc], sp                                ; $47a1: $08 $dc $25
    ld [hl+], a                                   ; $47a4: $22
    dec l                                         ; $47a5: $2d
    db $fd                                        ; $47a6: $fd
    jr nc, jr_032_479b                            ; $47a7: $30 $f2

    ld [hl], l                                    ; $47a9: $75
    jr nc, jr_032_4738                            ; $47aa: $30 $8c

    db $fd                                        ; $47ac: $fd
    cp e                                          ; $47ad: $bb
    and l                                         ; $47ae: $a5
    db $ec                                        ; $47af: $ec
    di                                            ; $47b0: $f3
    rst $30                                       ; $47b1: $f7
    cp a                                          ; $47b2: $bf
    sub $58                                       ; $47b3: $d6 $58
    call nc, $b626                                ; $47b5: $d4 $26 $b6
    dec e                                         ; $47b8: $1d
    rra                                           ; $47b9: $1f
    ld hl, sp+$2e                                 ; $47ba: $f8 $2e
    ld de, $ae69                                  ; $47bc: $11 $69 $ae
    jp z, $033c                                   ; $47bf: $ca $3c $03

    sub [hl]                                      ; $47c2: $96
    ld a, [hl+]                                   ; $47c3: $2a
    ld e, d                                       ; $47c4: $5a
    db $e3                                        ; $47c5: $e3
    xor d                                         ; $47c6: $aa
    or b                                          ; $47c7: $b0
    xor [hl]                                      ; $47c8: $ae
    ld l, e                                       ; $47c9: $6b
    or $ff                                        ; $47ca: $f6 $ff
    ld c, l                                       ; $47cc: $4d
    ret                                           ; $47cd: $c9


    ld sp, $2f0f                                  ; $47ce: $31 $0f $2f
    inc e                                         ; $47d1: $1c
    ld a, h                                       ; $47d2: $7c
    call $d76f                                    ; $47d3: $cd $6f $d7
    xor e                                         ; $47d6: $ab
    ld a, [de]                                    ; $47d7: $1a
    db $fd                                        ; $47d8: $fd
    ret nc                                        ; $47d9: $d0

    ld e, h                                       ; $47da: $5c
    sub l                                         ; $47db: $95
    ld a, c                                       ; $47dc: $79
    ld b, $2c                                     ; $47dd: $06 $2c
    ld d, l                                       ; $47df: $55
    or h                                          ; $47e0: $b4
    ld b, e                                       ; $47e1: $43
    sub [hl]                                      ; $47e2: $96
    xor l                                         ; $47e3: $ad
    pop de                                        ; $47e4: $d1
    db $fd                                        ; $47e5: $fd
    and l                                         ; $47e6: $a5
    db $d3                                        ; $47e7: $d3
    xor [hl]                                      ; $47e8: $ae
    pop bc                                        ; $47e9: $c1
    rst $10                                       ; $47ea: $d7
    or d                                          ; $47eb: $b2
    call z, $e349                                 ; $47ec: $cc $49 $e3
    adc d                                         ; $47ef: $8a
    push bc                                       ; $47f0: $c5
    di                                            ; $47f1: $f3
    dec bc                                        ; $47f2: $0b
    db $eb                                        ; $47f3: $eb
    cp d                                          ; $47f4: $ba
    ld h, d                                       ; $47f5: $62
    and d                                         ; $47f6: $a2
    push bc                                       ; $47f7: $c5
    di                                            ; $47f8: $f3
    dec bc                                        ; $47f9: $0b
    push hl                                       ; $47fa: $e5
    or c                                          ; $47fb: $b1
    db $eb                                        ; $47fc: $eb
    ld d, [hl]                                    ; $47fd: $56
    ld [$5ca6], a                                 ; $47fe: $ea $a6 $5c
    ld sp, $1dae                                  ; $4801: $31 $ae $1d
    ld l, e                                       ; $4804: $6b
    xor $35                                       ; $4805: $ee $35
    db $eb                                        ; $4807: $eb
    ld hl, sp-$78                                 ; $4808: $f8 $88
    db $e4                                        ; $480a: $e4
    or l                                          ; $480b: $b5
    adc c                                         ; $480c: $89
    db $eb                                        ; $480d: $eb
    db $f4                                        ; $480e: $f4
    add b                                         ; $480f: $80
    inc d                                         ; $4810: $14
    xor e                                         ; $4811: $ab
    inc d                                         ; $4812: $14
    ld c, e                                       ; $4813: $4b
    rst $18                                       ; $4814: $df
    ld a, [bc]                                    ; $4815: $0a

jr_032_4816:
    ld e, [hl]                                    ; $4816: $5e
    ld c, b                                       ; $4817: $48
    ld b, [hl]                                    ; $4818: $46
    ld hl, sp+$7e                                 ; $4819: $f8 $7e
    call nc, $b626                                ; $481b: $d4 $26 $b6
    ld e, c                                       ; $481e: $59
    ld e, d                                       ; $481f: $5a
    ld b, c                                       ; $4820: $41
    add $b5                                       ; $4821: $c6 $b5
    ld d, b                                       ; $4823: $50
    sub l                                         ; $4824: $95
    ld a, [hl+]                                   ; $4825: $2a
    ld e, d                                       ; $4826: $5a
    rst $10                                       ; $4827: $d7
    db $e4                                        ; $4828: $e4
    ld a, [de]                                    ; $4829: $1a
    db $fc                                        ; $482a: $fc
    dec [hl]                                      ; $482b: $35
    add $dc                                       ; $482c: $c6 $dc
    ld a, [c]                                     ; $482e: $f2
    dec e                                         ; $482f: $1d
    dec d                                         ; $4830: $15
    ld h, c                                       ; $4831: $61
    xor b                                         ; $4832: $a8
    jp hl                                         ; $4833: $e9


    ld e, a                                       ; $4834: $5f
    rst $08                                       ; $4835: $cf
    sub l                                         ; $4836: $95
    call c, $e6b1                                 ; $4837: $dc $b1 $e6
    ld e, [hl]                                    ; $483a: $5e
    sub e                                         ; $483b: $93
    or a                                          ; $483c: $b7
    daa                                           ; $483d: $27
    jr z, jr_032_4816                             ; $483e: $28 $d6

    and b                                         ; $4840: $a0
    ld a, b                                       ; $4841: $78
    adc h                                         ; $4842: $8c
    ld l, e                                       ; $4843: $6b
    sub a                                         ; $4844: $97
    ld b, [hl]                                    ; $4845: $46
    sub [hl]                                      ; $4846: $96
    ld a, d                                       ; $4847: $7a
    ldh [$a2], a                                  ; $4848: $e0 $a2
    pop de                                        ; $484a: $d1
    add e                                         ; $484b: $83
    adc e                                         ; $484c: $8b
    xor l                                         ; $484d: $ad
    ld c, a                                       ; $484e: $4f
    db $d3                                        ; $484f: $d3
    cp a                                          ; $4850: $bf
    sbc [hl]                                      ; $4851: $9e
    ld l, e                                       ; $4852: $6b
    inc h                                         ; $4853: $24
    ld [hl], a                                    ; $4854: $77
    push hl                                       ; $4855: $e5
    dec sp                                        ; $4856: $3b
    ld a, [hl+]                                   ; $4857: $2a
    jp nz, $d350                                  ; $4858: $c2 $50 $d3

jr_032_485b:
    cp a                                          ; $485b: $bf
    sbc [hl]                                      ; $485c: $9e
    dec hl                                        ; $485d: $2b
    cp c                                          ; $485e: $b9
    ld h, e                                       ; $485f: $63
    call Call_000_26bd                            ; $4860: $cd $bd $26
    ld l, a                                       ; $4863: $6f
    ld bc, $d8a7                                  ; $4864: $01 $a7 $d8
    add l                                         ; $4867: $85
    ld e, a                                       ; $4868: $5f
    db $e3                                        ; $4869: $e3
    ld [hl], a                                    ; $486a: $77
    adc e                                         ; $486b: $8b
    add [hl]                                      ; $486c: $86
    db $fd                                        ; $486d: $fd
    ld a, b                                       ; $486e: $78
    db $dd                                        ; $486f: $dd
    and d                                         ; $4870: $a2
    ld d, $27                                     ; $4871: $16 $27
    add hl, sp                                    ; $4873: $39
    and c                                         ; $4874: $a1
    ld h, d                                       ; $4875: $62
    ld [hl], c                                    ; $4876: $71
    cp e                                          ; $4877: $bb
    ret c                                         ; $4878: $d8

    scf                                           ; $4879: $37
    ld b, l                                       ; $487a: $45
    dec bc                                        ; $487b: $0b
    ld b, a                                       ; $487c: $47
    ld [c], a                                     ; $487d: $e2
    ld b, l                                       ; $487e: $45
    ld d, [hl]                                    ; $487f: $56
    xor c                                         ; $4880: $a9
    dec b                                         ; $4881: $05
    add a                                         ; $4882: $87
    ld a, e                                       ; $4883: $7b
    push af                                       ; $4884: $f5
    jr nc, jr_032_485b                            ; $4885: $30 $d4

    ld [bc], a                                    ; $4887: $02
    and a                                         ; $4888: $a7
    ret c                                         ; $4889: $d8

    add l                                         ; $488a: $85
    ld e, a                                       ; $488b: $5f
    db $e3                                        ; $488c: $e3
    ld e, d                                       ; $488d: $5a
    ld h, l                                       ; $488e: $65
    sbc a                                         ; $488f: $9f
    cp e                                          ; $4890: $bb
    or c                                          ; $4891: $b1
    sbc [hl]                                      ; $4892: $9e
    xor e                                         ; $4893: $ab
    dec b                                         ; $4894: $05
    add a                                         ; $4895: $87
    ld e, a                                       ; $4896: $5f
    rst $28                                       ; $4897: $ef
    inc hl                                        ; $4898: $23
    or l                                          ; $4899: $b5
    ld b, a                                       ; $489a: $47
    cp h                                          ; $489b: $bc
    sbc a                                         ; $489c: $9f
    db $fd                                        ; $489d: $fd
    ret nz                                        ; $489e: $c0

    sub e                                         ; $489f: $93
    dec sp                                        ; $48a0: $3b
    sub $dc                                       ; $48a1: $d6 $dc
    ld l, e                                       ; $48a3: $6b
    ld a, [c]                                     ; $48a4: $f2
    ld d, $27                                     ; $48a5: $16 $27
    jp Jump_032_71c3                              ; $48a7: $c3 $c3 $71


    db $ed                                        ; $48aa: $ed
    dec bc                                        ; $48ab: $0b
    jp nc, Jump_000_1dc9                          ; $48ac: $d2 $c9 $1d

    ld l, e                                       ; $48af: $6b
    xor $35                                       ; $48b0: $ee $35
    or l                                          ; $48b2: $b5
    add a                                         ; $48b3: $87
    or [hl]                                       ; $48b4: $b6
    ld e, c                                       ; $48b5: $59
    ld [hl], a                                    ; $48b6: $77
    dec b                                         ; $48b7: $05
    dec c                                         ; $48b8: $0d
    cp $9a                                        ; $48b9: $fe $9a
    ld h, d                                       ; $48bb: $62
    jr @-$16                                      ; $48bc: $18 $e8

    ret                                           ; $48be: $c9


    dec e                                         ; $48bf: $1d
    ld l, e                                       ; $48c0: $6b
    xor $35                                       ; $48c1: $ee $35
    ld a, c                                       ; $48c3: $79
    dec bc                                        ; $48c4: $0b
    sbc l                                         ; $48c5: $9d
    ld h, b                                       ; $48c6: $60
    db $fc                                        ; $48c7: $fc
    ld a, c                                       ; $48c8: $79
    call nc, $da1e                                ; $48c9: $d4 $1e $da
    ld [bc], a                                    ; $48cc: $02
    and a                                         ; $48cd: $a7
    ld e, d                                       ; $48ce: $5a
    ld bc, $ee4a                                  ; $48cf: $01 $4a $ee
    ld e, b                                       ; $48d2: $58
    ld [hl], e                                    ; $48d3: $73
    xor a                                         ; $48d4: $af
    ret                                           ; $48d5: $c9


    ld e, e                                       ; $48d6: $5b
    and a                                         ; $48d7: $a7
    ld e, d                                       ; $48d8: $5a
    ld bc, $c232                                  ; $48d9: $01 $32 $c2
    rst $30                                       ; $48dc: $f7
    inc hl                                        ; $48dd: $23
    cp c                                          ; $48de: $b9
    ld h, e                                       ; $48df: $63
    call Call_000_26bd                            ; $48e0: $cd $bd $26
    ld l, a                                       ; $48e3: $6f
    ld bc, $5aa7                                  ; $48e4: $01 $a7 $5a
    ld bc, $9d5a                                  ; $48e7: $01 $5a $9d
    pop de                                        ; $48ea: $d1
    jp $8ee4                                      ; $48eb: $c3 $e4 $8e


    dec [hl]                                      ; $48ee: $35
    rst $30                                       ; $48ef: $f7
    sbc d                                         ; $48f0: $9a
    cp h                                          ; $48f1: $bc
    dec b                                         ; $48f2: $05
    ld e, c                                       ; $48f3: $59
    ld [hl], a                                    ; $48f4: $77
    dec b                                         ; $48f5: $05
    adc l                                         ; $48f6: $8d
    ld e, $64                                     ; $48f7: $1e $64
    ccf                                           ; $48f9: $3f
    ldh a, [rNR23]                                ; $48fa: $f0 $18
    db $fc                                        ; $48fc: $fc
    dec [hl]                                      ; $48fd: $35
    push bc                                       ; $48fe: $c5
    jr nc, @-$2e                                  ; $48ff: $30 $d0

    rst $00                                       ; $4901: $c7
    dec [hl]                                      ; $4902: $35
    jp nc, $ff5c                                  ; $4903: $d2 $5c $ff

    ld a, d                                       ; $4906: $7a
    sbc a                                         ; $4907: $9f
    ld e, h                                       ; $4908: $5c
    sbc [hl]                                      ; $4909: $9e
    call c, $e6b1                                 ; $490a: $dc $b1 $e6
    ld e, [hl]                                    ; $490d: $5e
    sub e                                         ; $490e: $93
    or a                                          ; $490f: $b7
    ld e, c                                       ; $4910: $59
    ld [hl], a                                    ; $4911: $77
    dec b                                         ; $4912: $05
    dec l                                         ; $4913: $2d
    ld l, d                                       ; $4914: $6a
    xor d                                         ; $4915: $aa
    add $c6                                       ; $4916: $c6 $c6
    or l                                          ; $4918: $b5
    ret nc                                        ; $4919: $d0

    ld d, d                                       ; $491a: $52
    ld d, [hl]                                    ; $491b: $56
    adc h                                         ; $491c: $8c
    res 2, e                                      ; $491d: $cb $93
    ei                                            ; $491f: $fb
    rst $28                                       ; $4920: $ef
    rst $10                                       ; $4921: $d7
    ld e, $da                                     ; $4922: $1e $da
    ld [bc], a                                    ; $4924: $02
    push af                                       ; $4925: $f5
    or l                                          ; $4926: $b5
    ld a, a                                       ; $4927: $7f
    scf                                           ; $4928: $37
    rst $30                                       ; $4929: $f7
    xor [hl]                                      ; $492a: $ae
    ld c, c                                       ; $492b: $49
    ld l, e                                       ; $492c: $6b
    inc l                                         ; $492d: $2c
    add $35                                       ; $492e: $c6 $35
    rst $28                                       ; $4930: $ef
    sbc d                                         ; $4931: $9a
    sub c                                         ; $4932: $91
    xor a                                         ; $4933: $af
    adc $b8                                       ; $4934: $ce $b8
    ld h, d                                       ; $4936: $62
    call Call_000_2283                            ; $4937: $cd $83 $22
    adc d                                         ; $493a: $8a
    jp c, $9dc4                                   ; $493b: $da $c4 $9d

    inc c                                         ; $493e: $0c
    ld [hl], a                                    ; $493f: $77
    dec b                                         ; $4940: $05
    push de                                       ; $4941: $d5
    cp e                                          ; $4942: $bb
    or h                                          ; $4943: $b4
    inc c                                         ; $4944: $0c
    ld l, b                                       ; $4945: $68
    dec a                                         ; $4946: $3d
    jp c, $011a                                   ; $4947: $da $1a $01

    dec l                                         ; $494a: $2d
    add l                                         ; $494b: $85
    ld a, [$1e63]                                 ; $494c: $fa $63 $1e
    sub h                                         ; $494f: $94
    add a                                         ; $4950: $87
    ld a, $8e                                     ; $4951: $3e $8e
    xor [hl]                                      ; $4953: $ae
    jp c, Jump_032_5b43                           ; $4954: $da $43 $5b

    sbc l                                         ; $4957: $9d
    inc e                                         ; $4958: $1c
    add e                                         ; $4959: $83
    or h                                          ; $495a: $b4
    db $ec                                        ; $495b: $ec
    rlca                                          ; $495c: $07
    cp $6f                                        ; $495d: $fe $6f
    ld c, d                                       ; $495f: $4a
    xor $bf                                       ; $4960: $ee $bf
    ld e, a                                       ; $4962: $5f
    ld a, e                                       ; $4963: $7b
    ld l, b                                       ; $4964: $68
    dec bc                                        ; $4965: $0b
    push af                                       ; $4966: $f5
    rst $28                                       ; $4967: $ef
    add [hl]                                      ; $4968: $86
    sub l                                         ; $4969: $95
    call c, $d630                                 ; $496a: $dc $30 $d6
    inc a                                         ; $496d: $3c
    ld h, b                                       ; $496e: $60
    ld e, $fa                                     ; $496f: $1e $fa
    ld e, h                                       ; $4971: $5c
    db $f4                                        ; $4972: $f4
    ret nz                                        ; $4973: $c0

    cp a                                          ; $4974: $bf
    ld a, h                                       ; $4975: $7c
    sub l                                         ; $4976: $95
    halt                                          ; $4977: $76
    dec a                                         ; $4978: $3d
    cp b                                          ; $4979: $b8
    ret c                                         ; $497a: $d8

    ld a, [c]                                     ; $497b: $f2
    cp h                                          ; $497c: $bc
    dec b                                         ; $497d: $05
    push af                                       ; $497e: $f5
    or l                                          ; $497f: $b5
    ld c, d                                       ; $4980: $4a
    ld l, e                                       ; $4981: $6b
    db $e4                                        ; $4982: $e4
    inc a                                         ; $4983: $3c
    ld b, [hl]                                    ; $4984: $46
    rrca                                          ; $4985: $0f
    or d                                          ; $4986: $b2
    rra                                           ; $4987: $1f
    ld a, b                                       ; $4988: $78
    inc c                                         ; $4989: $0c
    cpl                                           ; $498a: $2f
    call z, $f55b                                 ; $498b: $cc $5b $f5
    or l                                          ; $498e: $b5
    ld c, d                                       ; $498f: $4a
    db $e3                                        ; $4990: $e3
    xor d                                         ; $4991: $aa
    db $ec                                        ; $4992: $ec
    ld [hl], e                                    ; $4993: $73
    db $ed                                        ; $4994: $ed
    ld [hl], l                                    ; $4995: $75
    ccf                                           ; $4996: $3f
    dec b                                         ; $4997: $05
    xor l                                         ; $4998: $ad
    or c                                          ; $4999: $b1
    adc b                                         ; $499a: $88
    db $db                                        ; $499b: $db
    adc [hl]                                      ; $499c: $8e
    dec [hl]                                      ; $499d: $35
    sub [hl]                                      ; $499e: $96
    inc hl                                        ; $499f: $23
    rst $08                                       ; $49a0: $cf
    ld e, e                                       ; $49a1: $5b
    add a                                         ; $49a2: $87
    ld b, a                                       ; $49a3: $47
    dec a                                         ; $49a4: $3d
    add d                                         ; $49a5: $82
    dec [hl]                                      ; $49a6: $35
    and $e5                                       ; $49a7: $e6 $e5
    or [hl]                                       ; $49a9: $b6
    ld a, [hl-]                                   ; $49aa: $3a
    dec sp                                        ; $49ab: $3b
    sub $58                                       ; $49ac: $d6 $58
    adc [hl]                                      ; $49ae: $8e
    cp h                                          ; $49af: $bc
    or $d0                                        ; $49b0: $f6 $d0
    dec e                                         ; $49b2: $1d
    ld d, a                                       ; $49b3: $57
    ld h, [hl]                                    ; $49b4: $66
    rlc b                                         ; $49b5: $cb $00
    ld [de], a                                    ; $49b7: $12
    db $dd                                        ; $49b8: $dd
    ld d, $b6                                     ; $49b9: $16 $b6
    bit 2, d                                      ; $49bb: $cb $52
    or $35                                        ; $49bd: $f6 $35
    inc l                                         ; $49bf: $2c
    ei                                            ; $49c0: $fb
    rst $30                                       ; $49c1: $f7
    sbc d                                         ; $49c2: $9a
    reti                                          ; $49c3: $d9


    ld a, [de]                                    ; $49c4: $1a
    adc e                                         ; $49c5: $8b
    and l                                         ; $49c6: $a5
    ld d, b                                       ; $49c7: $50
    ld a, a                                       ; $49c8: $7f
    push hl                                       ; $49c9: $e5
    ld a, l                                       ; $49ca: $7d
    ld d, $a9                                     ; $49cb: $16 $a9
    ld l, d                                       ; $49cd: $6a
    ld [hl+], a                                   ; $49ce: $22
    ld l, a                                       ; $49cf: $6f
    ld bc, $1ac7                                  ; $49d0: $01 $c7 $1a
    res 2, c                                      ; $49d3: $cb $91
    ld c, a                                       ; $49d5: $4f
    ld b, c                                       ; $49d6: $41
    push af                                       ; $49d7: $f5
    or b                                          ; $49d8: $b0
    xor h                                         ; $49d9: $ac
    or d                                          ; $49da: $b2
    ld h, d                                       ; $49db: $62
    ld e, h                                       ; $49dc: $5c
    or l                                          ; $49dd: $b5
    add a                                         ; $49de: $87
    ld l, $cb                                     ; $49df: $2e $cb
    sub [hl]                                      ; $49e1: $96
    ld [hl], $a4                                  ; $49e2: $36 $a4
    sub l                                         ; $49e4: $95
    rst $30                                       ; $49e5: $f7
    ld e, c                                       ; $49e6: $59
    and h                                         ; $49e7: $a4
    xor d                                         ; $49e8: $aa
    adc c                                         ; $49e9: $89
    ld h, l                                       ; $49ea: $65
    ld b, b                                       ; $49eb: $40
    set 2, [hl]                                   ; $49ec: $cb $d6
    cp [hl]                                       ; $49ee: $be
    ld d, [hl]                                    ; $49ef: $56
    xor $86                                       ; $49f0: $ee $86
    ld l, e                                       ; $49f2: $6b
    inc l                                         ; $49f3: $2c
    add $40                                       ; $49f4: $c6 $40
    sbc $02                                       ; $49f6: $de $02
    and a                                         ; $49f8: $a7
    ld a, l                                       ; $49f9: $7d
    db $ed                                        ; $49fa: $ed
    ld h, d                                       ; $49fb: $62
    cp a                                          ; $49fc: $bf
    ret nc                                        ; $49fd: $d0

    inc d                                         ; $49fe: $14
    or h                                          ; $49ff: $b4
    add sp, -$3f                                  ; $4a00: $e8 $c1
    or l                                          ; $4a02: $b5
    add e                                         ; $4a03: $83
    ld [hl], a                                    ; $4a04: $77
    xor h                                         ; $4a05: $ac
    or c                                          ; $4a06: $b1
    inc e                                         ; $4a07: $1c
    ld sp, hl                                     ; $4a08: $f9
    cp $5d                                        ; $4a09: $fe $5d
    ld b, c                                       ; $4a0b: $41
    ld l, e                                       ; $4a0c: $6b
    inc l                                         ; $4a0d: $2c
    halt                                          ; $4a0e: $76
    dec d                                         ; $4a0f: $15
    add e                                         ; $4a10: $83
    jr nz, jr_032_4a92                            ; $4a11: $20 $7f

    dec c                                         ; $4a13: $0d
    ei                                            ; $4a14: $fb
    and l                                         ; $4a15: $a5
    sub h                                         ; $4a16: $94
    inc e                                         ; $4a17: $1c
    sub [hl]                                      ; $4a18: $96
    dec [hl]                                      ; $4a19: $35
    ld d, $a1                                     ; $4a1a: $16 $a1
    pop de                                        ; $4a1c: $d1
    inc bc                                        ; $4a1d: $03
    ld e, d                                       ; $4a1e: $5a
    cp h                                          ; $4a1f: $bc
    ccf                                           ; $4a20: $3f

jr_032_4a21:
    ld d, d                                       ; $4a21: $52
    push de                                       ; $4a22: $d5
    call nz, $fdb8                                ; $4a23: $c4 $b8 $fd
    ld e, b                                       ; $4a26: $58
    ret c                                         ; $4a27: $d8

    ld l, $4b                                     ; $4a28: $2e $4b
    reti                                          ; $4a2a: $d9


    ld d, a                                       ; $4a2b: $57
    sbc $02                                       ; $4a2c: $de $02
    rst $00                                       ; $4a2e: $c7
    ld a, [de]                                    ; $4a2f: $1a
    res 2, c                                      ; $4a30: $cb $91
    rst $08                                       ; $4a32: $cf
    ld [$3d51], a                                 ; $4a33: $ea $51 $3d
    inc l                                         ; $4a36: $2c
    cp e                                          ; $4a37: $bb
    pop de                                        ; $4a38: $d1
    ld l, l                                       ; $4a39: $6d
    dec c                                         ; $4a3a: $0d
    ld a, h                                       ; $4a3b: $7c
    xor h                                         ; $4a3c: $ac
    dec a                                         ; $4a3d: $3d
    or h                                          ; $4a3e: $b4
    dec b                                         ; $4a3f: $05
    rlca                                          ; $4a40: $07
    dec e                                         ; $4a41: $1d
    or h                                          ; $4a42: $b4
    call nc, Call_000_1203                        ; $4a43: $d4 $03 $12
    sub [hl]                                      ; $4a46: $96
    and d                                         ; $4a47: $a2
    jr jr_032_4a21                                ; $4a48: $18 $d7

    sbc d                                         ; $4a4a: $9a
    ld b, a                                       ; $4a4b: $47
    ld hl, sp-$02                                 ; $4a4c: $f8 $fe
    adc $43                                       ; $4a4e: $ce $43
    ld d, $4b                                     ; $4a50: $16 $4b
    rst $38                                       ; $4a52: $ff
    inc a                                         ; $4a53: $3c
    dec d                                         ; $4a54: $15
    cp [hl]                                       ; $4a55: $be
    nop                                           ; $4a56: $00
    ld e, a                                       ; $4a57: $5f
    pop de                                        ; $4a58: $d1
    ld a, [hl+]                                   ; $4a59: $2a
    ldh a, [$e4]                                  ; $4a5a: $f0 $e4
    ld c, $3a                                     ; $4a5c: $0e $3a
    ld l, b                                       ; $4a5e: $68
    xor c                                         ; $4a5f: $a9
    rlca                                          ; $4a60: $07
    inc h                                         ; $4a61: $24
    inc l                                         ; $4a62: $2c
    ld b, l                                       ; $4a63: $45
    ld sp, $35ae                                  ; $4a64: $31 $ae $35
    adc a                                         ; $4a67: $8f
    ldh a, [$fd]                                  ; $4a68: $f0 $fd
    sbc l                                         ; $4a6a: $9d
    add a                                         ; $4a6b: $87
    inc l                                         ; $4a6c: $2c
    sub [hl]                                      ; $4a6d: $96
    cp $79                                        ; $4a6e: $fe $79
    ld a, [hl+]                                   ; $4a70: $2a
    inc a                                         ; $4a71: $3c
    rst $08                                       ; $4a72: $cf
    di                                            ; $4a73: $f3
    ld d, $1d                                     ; $4a74: $16 $1d
    ld l, h                                       ; $4a76: $6c
    sub l                                         ; $4a77: $95
    ld d, l                                       ; $4a78: $55
    or $57                                        ; $4a79: $f6 $57
    ld l, c                                       ; $4a7b: $69
    sub l                                         ; $4a7c: $95
    db $fd                                        ; $4a7d: $fd
    inc c                                         ; $4a7e: $0c
    jr z, jr_032_4af0                             ; $4a7f: $28 $6f

    ld bc, $e8a7                                  ; $4a81: $01 $a7 $e8
    ld h, d                                       ; $4a84: $62
    sra a                                         ; $4a85: $cb $2f
    or [hl]                                       ; $4a87: $b6
    ld h, [hl]                                    ; $4a88: $66
    rla                                           ; $4a89: $17
    add c                                         ; $4a8a: $81
    ld c, d                                       ; $4a8b: $4a
    ld d, c                                       ; $4a8c: $51
    dec bc                                        ; $4a8d: $0b
    sbc l                                         ; $4a8e: $9d
    ld h, b                                       ; $4a8f: $60
    ld d, $b3                                     ; $4a90: $16 $b3

jr_032_4a92:
    and [hl]                                      ; $4a92: $a6
    ld [hl], c                                    ; $4a93: $71
    adc h                                         ; $4a94: $8c
    pop bc                                        ; $4a95: $c1
    ld e, a                                       ; $4a96: $5f
    inc a                                         ; $4a97: $3c
    and a                                         ; $4a98: $a7

jr_032_4a99:
    jp c, $16c4                                   ; $4a99: $da $c4 $16

    and a                                         ; $4a9c: $a7
    ld a, [de]                                    ; $4a9d: $1a
    jr nc, @+$64                                  ; $4a9e: $30 $62

    sbc c                                         ; $4aa0: $99
    ld [hl], e                                    ; $4aa1: $73
    push hl                                       ; $4aa2: $e5
    ld a, c                                       ; $4aa3: $79
    sbc $02                                       ; $4aa4: $de $02
    dec e                                         ; $4aa6: $1d
    call $b509                                    ; $4aa7: $cd $09 $b5
    jr nc, jr_032_4b0c                            ; $4aaa: $30 $60

    call nz, $e732                                ; $4aac: $c4 $32 $e7
    scf                                           ; $4aaf: $37
    push de                                       ; $4ab0: $d5
    ld h, $b6                                     ; $4ab1: $26 $b6
    sbc l                                         ; $4ab3: $9d
    ld h, b                                       ; $4ab4: $60
    rst $38                                       ; $4ab5: $ff
    ld l, [hl]                                    ; $4ab6: $6e
    or c                                          ; $4ab7: $b1
    add $62                                       ; $4ab8: $c6 $62
    ld a, [hl]                                    ; $4aba: $7e
    add e                                         ; $4abb: $83
    adc a                                         ; $4abc: $8f
    and e                                         ; $4abd: $a3
    rlca                                          ; $4abe: $07
    and h                                         ; $4abf: $a4
    ld e, b                                       ; $4ac0: $58
    ld d, c                                       ; $4ac1: $51
    inc l                                         ; $4ac2: $2c
    res 3, h                                      ; $4ac3: $cb $9c
    inc d                                         ; $4ac5: $14
    db $e3                                        ; $4ac6: $e3
    adc d                                         ; $4ac7: $8a
    push bc                                       ; $4ac8: $c5
    di                                            ; $4ac9: $f3
    dec bc                                        ; $4aca: $0b
    db $eb                                        ; $4acb: $eb
    cp d                                          ; $4acc: $ba
    ld h, d                                       ; $4acd: $62
    and d                                         ; $4ace: $a2
    push bc                                       ; $4acf: $c5
    di                                            ; $4ad0: $f3
    dec bc                                        ; $4ad1: $0b
    push hl                                       ; $4ad2: $e5
    or c                                          ; $4ad3: $b1
    db $eb                                        ; $4ad4: $eb
    ld d, [hl]                                    ; $4ad5: $56
    ld l, [hl]                                    ; $4ad6: $6e
    add hl, hl                                    ; $4ad7: $29
    ld d, a                                       ; $4ad8: $57
    db $ec                                        ; $4ad9: $ec
    rst $18                                       ; $4ada: $df
    ld l, $45                                     ; $4adb: $2e $45
    jr jr_032_4a99                                ; $4add: $18 $ba

    ld h, d                                       ; $4adf: $62
    call $df03                                    ; $4ae0: $cd $03 $df
    dec h                                         ; $4ae3: $25
    ld [hl+], a                                   ; $4ae4: $22
    db $ed                                        ; $4ae5: $ed
    ld a, d                                       ; $4ae6: $7a
    ld d, l                                       ; $4ae7: $55
    ld a, [bc]                                    ; $4ae8: $0a
    cp a                                          ; $4ae9: $bf
    ld h, c                                       ; $4aea: $61
    cp h                                          ; $4aeb: $bc
    sbc a                                         ; $4aec: $9f
    or a                                          ; $4aed: $b7
    sbc l                                         ; $4aee: $9d
    ld h, b                                       ; $4aef: $60

jr_032_4af0:
    db $fc                                        ; $4af0: $fc
    ld h, c                                       ; $4af1: $61
    inc l                                         ; $4af2: $2c
    ld l, [hl]                                    ; $4af3: $6e
    ld b, l                                       ; $4af4: $45
    rla                                           ; $4af5: $17
    pop hl                                        ; $4af6: $e1
    ei                                            ; $4af7: $fb
    ld e, a                                       ; $4af8: $5f
    ld a, $f8                                     ; $4af9: $3e $f8
    ld e, d                                       ; $4afb: $5a
    sub [hl]                                      ; $4afc: $96
    add hl, sp                                    ; $4afd: $39
    ld l, c                                       ; $4afe: $69
    ld b, $bb                                     ; $4aff: $06 $bb
    ld e, $78                                     ; $4b01: $1e $78
    adc h                                         ; $4b03: $8c
    rst $18                                       ; $4b04: $df
    pop hl                                        ; $4b05: $e1
    ld l, e                                       ; $4b06: $6b
    xor [hl]                                      ; $4b07: $ae
    ld a, a                                       ; $4b08: $7f
    cp l                                          ; $4b09: $bd
    ld c, a                                       ; $4b0a: $4f
    xor [hl]                                      ; $4b0b: $ae

jr_032_4b0c:
    ld d, l                                       ; $4b0c: $55
    add $c2                                       ; $4b0d: $c6 $c2
    inc c                                         ; $4b0f: $0c
    ld l, b                                       ; $4b10: $68
    call $df03                                    ; $4b11: $cd $03 $df
    adc l                                         ; $4b14: $8d
    inc l                                         ; $4b15: $2c
    ld d, l                                       ; $4b16: $55
    ret nc                                        ; $4b17: $d0

    rlca                                          ; $4b18: $07
    ld e, a                                       ; $4b19: $5f
    cp e                                          ; $4b1a: $bb
    ld e, [hl]                                    ; $4b1b: $5e
    sub l                                         ; $4b1c: $95
    jp nz, $186f                                  ; $4b1d: $c2 $6f $18

    rst $28                                       ; $4b20: $ef
    adc a                                         ; $4b21: $8f
    ld l, e                                       ; $4b22: $6b
    sub a                                         ; $4b23: $97
    add hl, sp                                    ; $4b24: $39
    add hl, hl                                    ; $4b25: $29
    ld a, [c]                                     ; $4b26: $f2
    ld d, $9d                                     ; $4b27: $16 $9d
    ld h, b                                       ; $4b29: $60
    rst $38                                       ; $4b2a: $ff
    ld l, [hl]                                    ; $4b2b: $6e
    or c                                          ; $4b2c: $b1
    add $62                                       ; $4b2d: $c6 $62
    ld a, [hl]                                    ; $4b2f: $7e
    add e                                         ; $4b30: $83
    adc a                                         ; $4b31: $8f
    and e                                         ; $4b32: $a3
    rlca                                          ; $4b33: $07
    and h                                         ; $4b34: $a4
    ld e, b                                       ; $4b35: $58
    ld d, c                                       ; $4b36: $51
    inc l                                         ; $4b37: $2c
    res 3, h                                      ; $4b38: $cb $9c
    inc d                                         ; $4b3a: $14
    db $e3                                        ; $4b3b: $e3
    adc d                                         ; $4b3c: $8a
    push bc                                       ; $4b3d: $c5
    di                                            ; $4b3e: $f3
    dec bc                                        ; $4b3f: $0b
    db $eb                                        ; $4b40: $eb
    cp d                                          ; $4b41: $ba
    ld h, d                                       ; $4b42: $62
    and d                                         ; $4b43: $a2
    push bc                                       ; $4b44: $c5
    di                                            ; $4b45: $f3
    dec bc                                        ; $4b46: $0b
    push hl                                       ; $4b47: $e5
    or c                                          ; $4b48: $b1
    db $eb                                        ; $4b49: $eb
    ld d, [hl]                                    ; $4b4a: $56
    ld [$5ca6], a                                 ; $4b4b: $ea $a6 $5c
    or c                                          ; $4b4e: $b1
    ld a, a                                       ; $4b4f: $7f
    cp e                                          ; $4b50: $bb
    inc d                                         ; $4b51: $14
    ld h, c                                       ; $4b52: $61
    add sp, -$76                                  ; $4b53: $e8 $8a
    dec [hl]                                      ; $4b55: $35
    rrca                                          ; $4b56: $0f
    ld a, h                                       ; $4b57: $7c
    sub a                                         ; $4b58: $97
    adc b                                         ; $4b59: $88
    or h                                          ; $4b5a: $b4
    db $eb                                        ; $4b5b: $eb
    ld d, l                                       ; $4b5c: $55
    add hl, hl                                    ; $4b5d: $29
    db $fc                                        ; $4b5e: $fc
    add [hl]                                      ; $4b5f: $86
    pop af                                        ; $4b60: $f1
    ld a, [hl]                                    ; $4b61: $7e
    cp [hl]                                       ; $4b62: $be
    and e                                         ; $4b63: $a3
    ld l, b                                       ; $4b64: $68
    inc b                                         ; $4b65: $04
    db $e3                                        ; $4b66: $e3
    rrca                                          ; $4b67: $0f
    ld h, e                                       ; $4b68: $63
    ld [hl], c                                    ; $4b69: $71
    dec hl                                        ; $4b6a: $2b
    cp d                                          ; $4b6b: $ba
    ld [$ffdf], sp                                ; $4b6c: $08 $df $ff
    ld a, [c]                                     ; $4b6f: $f2
    pop bc                                        ; $4b70: $c1
    rst $10                                       ; $4b71: $d7
    or d                                          ; $4b72: $b2
    call z, Call_000_3349                         ; $4b73: $cc $49 $33
    ret c                                         ; $4b76: $d8

    push af                                       ; $4b77: $f5
    ret nz                                        ; $4b78: $c0

    ld h, e                                       ; $4b79: $63
    db $fc                                        ; $4b7a: $fc
    ld c, $5f                                     ; $4b7b: $0e $5f
    ld [hl], e                                    ; $4b7d: $73
    db $fd                                        ; $4b7e: $fd
    db $eb                                        ; $4b7f: $eb
    ld a, l                                       ; $4b80: $7d
    ld [hl], d                                    ; $4b81: $72
    xor l                                         ; $4b82: $ad
    ld [hl-], a                                   ; $4b83: $32
    ld d, $66                                     ; $4b84: $16 $66
    ld b, b                                       ; $4b86: $40
    ld l, e                                       ; $4b87: $6b
    ld e, $f8                                     ; $4b88: $1e $f8
    ld l, [hl]                                    ; $4b8a: $6e
    ld h, h                                       ; $4b8b: $64
    xor c                                         ; $4b8c: $a9
    add d                                         ; $4b8d: $82
    ld a, $f8                                     ; $4b8e: $3e $f8
    jp c, $aaf5                                   ; $4b90: $da $f5 $aa

    inc d                                         ; $4b93: $14
    ld a, [hl]                                    ; $4b94: $7e
    jp Jump_032_7f78                              ; $4b95: $c3 $78 $7f


    ld e, h                                       ; $4b98: $5c
    cp e                                          ; $4b99: $bb
    call z, $9149                                 ; $4b9a: $cc $49 $91
    or a                                          ; $4b9d: $b7
    and a                                         ; $4b9e: $a7
    inc hl                                        ; $4b9f: $23
    ld l, c                                       ; $4ba0: $69
    ld b, $2b                                     ; $4ba1: $06 $2b
    ld c, b                                       ; $4ba3: $48
    ret                                           ; $4ba4: $c9


    dec e                                         ; $4ba5: $1d
    ld l, e                                       ; $4ba6: $6b
    xor $35                                       ; $4ba7: $ee $35
    ret                                           ; $4ba9: $c9


    ld d, l                                       ; $4baa: $55
    add [hl]                                      ; $4bab: $86
    sbc a                                         ; $4bac: $9f
    db $f4                                        ; $4bad: $f4
    db $ed                                        ; $4bae: $ed
    ld d, e                                       ; $4baf: $53
    sbc $02                                       ; $4bb0: $de $02
    ld e, c                                       ; $4bb2: $59
    ld l, h                                       ; $4bb3: $6c
    ld sp, hl                                     ; $4bb4: $f9
    ld a, [hl-]                                   ; $4bb5: $3a
    ld hl, sp+$3a                                 ; $4bb6: $f8 $3a
    ld a, $22                                     ; $4bb8: $3e $22
    ld a, c                                       ; $4bba: $79
    or d                                          ; $4bbb: $b2
    dec b                                         ; $4bbc: $05
    daa                                           ; $4bbd: $27
    ld a, $88                                     ; $4bbe: $3e $88
    add hl, de                                    ; $4bc0: $19
    di                                            ; $4bc1: $f3
    ld a, [hl]                                    ; $4bc2: $7e
    xor h                                         ; $4bc3: $ac
    ld l, b                                       ; $4bc4: $68
    ld c, l                                       ; $4bc5: $4d
    ld sp, $f40c                                  ; $4bc6: $31 $0c $f4
    ld [hl], c                                    ; $4bc9: $71
    adc l                                         ; $4bca: $8d
    ld a, c                                       ; $4bcb: $79
    db $10                                        ; $4bcc: $10
    jp Jump_032_7e9f                              ; $4bcd: $c3 $9f $7e


    ld e, [hl]                                    ; $4bd0: $5e
    ret                                           ; $4bd1: $c9


    sub a                                         ; $4bd2: $97
    ld bc, $798d                                  ; $4bd3: $01 $8d $79
    db $10                                        ; $4bd6: $10
    inc sp                                        ; $4bd7: $33
    ld b, [hl]                                    ; $4bd8: $46
    rst $20                                       ; $4bd9: $e7
    rst $28                                       ; $4bda: $ef
    ld b, [hl]                                    ; $4bdb: $46
    or a                                          ; $4bdc: $b7
    reti                                          ; $4bdd: $d9


    ld [hl], l                                    ; $4bde: $75
    xor c                                         ; $4bdf: $a9
    and c                                         ; $4be0: $a1
    db $db                                        ; $4be1: $db
    inc c                                         ; $4be2: $0c
    halt                                          ; $4be3: $76
    cp l                                          ; $4be4: $bd
    ld d, d                                       ; $4be5: $52
    ld [$b4b2], a                                 ; $4be6: $ea $b2 $b4
    adc [hl]                                      ; $4be9: $8e
    rrca                                          ; $4bea: $0f
    ld a, b                                       ; $4beb: $78
    ld sp, $79e7                                  ; $4bec: $31 $e7 $79
    dec bc                                        ; $4bef: $0b
    add a                                         ; $4bf0: $87
    inc sp                                        ; $4bf1: $33
    cp d                                          ; $4bf2: $ba
    ld d, [hl]                                    ; $4bf3: $56
    add hl, hl                                    ; $4bf4: $29
    ld d, [hl]                                    ; $4bf5: $56
    add hl, bc                                    ; $4bf6: $09
    ld c, e                                       ; $4bf7: $4b
    ld de, $2c78                                  ; $4bf8: $11 $78 $2c
    db $f4                                        ; $4bfb: $f4
    add hl, bc                                    ; $4bfc: $09
    dec hl                                        ; $4bfd: $2b
    ld a, l                                       ; $4bfe: $7d
    adc d                                         ; $4bff: $8a
    ld h, h                                       ; $4c00: $64
    dec bc                                        ; $4c01: $0b
    add a                                         ; $4c02: $87
    sub a                                         ; $4c03: $97
    inc d                                         ; $4c04: $14
    call nz, $848e                                ; $4c05: $c4 $8e $84
    ld a, [hl+]                                   ; $4c08: $2a
    ld d, l                                       ; $4c09: $55
    call nz, $ab9f                                ; $4c0a: $c4 $9f $ab
    dec b                                         ; $4c0d: $05
    ld b, a                                       ; $4c0e: $47
    and d                                         ; $4c0f: $a2
    db $eb                                        ; $4c10: $eb
    ld [hl+], a                                   ; $4c11: $22
    add c                                         ; $4c12: $81
    or a                                          ; $4c13: $b7
    sbc l                                         ; $4c14: $9d
    ld h, b                                       ; $4c15: $60
    db $fc                                        ; $4c16: $fc
    sub [hl]                                      ; $4c17: $96
    ld a, d                                       ; $4c18: $7a
    adc $15                                       ; $4c19: $ce $15
    db $e3                                        ; $4c1b: $e3
    rst $30                                       ; $4c1c: $f7
    db $db                                        ; $4c1d: $db
    sub a                                         ; $4c1e: $97
    or e                                          ; $4c1f: $b3
    ld d, b                                       ; $4c20: $50
    ld a, c                                       ; $4c21: $79
    dec bc                                        ; $4c22: $0b
    ld b, a                                       ; $4c23: $47
    ld [$dcfc], sp                                ; $4c24: $08 $fc $dc
    jp c, Jump_032_65c4                           ; $4c27: $da $c4 $65

    db $dd                                        ; $4c2a: $dd
    dec d                                         ; $4c2b: $15
    inc [hl]                                      ; $4c2c: $34
    ld a, [hl]                                    ; $4c2d: $7e
    ld h, e                                       ; $4c2e: $63
    cp l                                          ; $4c2f: $bd
    ld e, $c8                                     ; $4c30: $1e $c8
    ld a, $d5                                     ; $4c32: $3e $d5
    ld h, $b6                                     ; $4c34: $26 $b6
    and a                                         ; $4c36: $a7
    add sp, $12                                   ; $4c37: $e8 $12
    sub c                                         ; $4c39: $91
    sub $3c                                       ; $4c3a: $d6 $3c
    ldh a, [$35]                                  ; $4c3c: $f0 $35
    adc a                                         ; $4c3e: $8f
    ldh a, [$fd]                                  ; $4c3f: $f0 $fd
    ld d, $47                                     ; $4c41: $16 $47
    rla                                           ; $4c43: $17
    ld l, h                                       ; $4c44: $6c
    db $f4                                        ; $4c45: $f4
    ld sp, hl                                     ; $4c46: $f9
    ld l, e                                       ; $4c47: $6b
    ld bc, $cba7                                  ; $4c48: $01 $a7 $cb
    dec hl                                        ; $4c4b: $2b
    inc l                                         ; $4c4c: $2c
    dec b                                         ; $4c4d: $05
    rra                                           ; $4c4e: $1f
    ld b, h                                       ; $4c4f: $44
    dec bc                                        ; $4c50: $0b
    and a                                         ; $4c51: $a7
    srl c                                         ; $4c52: $cb $39
    ld d, [hl]                                    ; $4c54: $56
    ld e, b                                       ; $4c55: $58
    ld a, [bc]                                    ; $4c56: $0a
    ld a, $88                                     ; $4c57: $3e $88
    ld d, $c7                                     ; $4c59: $16 $c7
    db $fd                                        ; $4c5b: $fd
    ld c, e                                       ; $4c5c: $4b
    sbc a                                         ; $4c5d: $9f
    db $e3                                        ; $4c5e: $e3
    ld l, e                                       ; $4c5f: $6b
    ld bc, $016b                                  ; $4c60: $01 $6b $01
    ld l, e                                       ; $4c63: $6b
    ld bc, $016b                                  ; $4c64: $01 $6b $01
    ld l, e                                       ; $4c67: $6b
    ld bc, $016b                                  ; $4c68: $01 $6b $01
    ld l, e                                       ; $4c6b: $6b
    ld bc, $016b                                  ; $4c6c: $01 $6b $01
    ld l, e                                       ; $4c6f: $6b
    ld bc, $016b                                  ; $4c70: $01 $6b $01
    ld l, e                                       ; $4c73: $6b
    ld bc, $016b                                  ; $4c74: $01 $6b $01
    ld l, e                                       ; $4c77: $6b
    ld bc, $016b                                  ; $4c78: $01 $6b $01
    ld l, e                                       ; $4c7b: $6b
    ld bc, $016b                                  ; $4c7c: $01 $6b $01
    ld l, e                                       ; $4c7f: $6b
    ld bc, $016b                                  ; $4c80: $01 $6b $01
    ld l, e                                       ; $4c83: $6b
    ld bc, $016b                                  ; $4c84: $01 $6b $01
    ld l, e                                       ; $4c87: $6b
    ld bc, $016b                                  ; $4c88: $01 $6b $01
    ld l, e                                       ; $4c8b: $6b
    ld bc, $016b                                  ; $4c8c: $01 $6b $01
    ld l, e                                       ; $4c8f: $6b
    ld bc, $016b                                  ; $4c90: $01 $6b $01
    ld l, e                                       ; $4c93: $6b
    ld bc, $016b                                  ; $4c94: $01 $6b $01
    ld l, e                                       ; $4c97: $6b
    ld bc, $016b                                  ; $4c98: $01 $6b $01
    ld l, e                                       ; $4c9b: $6b
    ld bc, $016b                                  ; $4c9c: $01 $6b $01
    ld l, e                                       ; $4c9f: $6b
    ld bc, $016b                                  ; $4ca0: $01 $6b $01
    ld l, e                                       ; $4ca3: $6b
    ld bc, $016b                                  ; $4ca4: $01 $6b $01
    ld l, e                                       ; $4ca7: $6b
    ld bc, $016b                                  ; $4ca8: $01 $6b $01
    ld l, e                                       ; $4cab: $6b
    ld bc, $016b                                  ; $4cac: $01 $6b $01
    ld l, e                                       ; $4caf: $6b
    ld bc, $016b                                  ; $4cb0: $01 $6b $01
    ld l, e                                       ; $4cb3: $6b
    ld bc, $7f87                                  ; $4cb4: $01 $87 $7f
    ld b, d                                       ; $4cb7: $42
    cp $48                                        ; $4cb8: $fe $48
    dec l                                         ; $4cba: $2d
    dec e                                         ; $4cbb: $1d
    rra                                           ; $4cbc: $1f
    pop hl                                        ; $4cbd: $e1
    ei                                            ; $4cbe: $fb
    dec sp                                        ; $4cbf: $3b
    rrca                                          ; $4cc0: $0f
    ld e, c                                       ; $4cc1: $59
    inc l                                         ; $4cc2: $2c
    db $fd                                        ; $4cc3: $fd
    di                                            ; $4cc4: $f3
    ld d, h                                       ; $4cc5: $54
    ld a, b                                       ; $4cc6: $78
    dec bc                                        ; $4cc7: $0b
    dec e                                         ; $4cc8: $1d
    rra                                           ; $4cc9: $1f
    pop hl                                        ; $4cca: $e1
    ei                                            ; $4ccb: $fb
    dec sp                                        ; $4ccc: $3b
    rrca                                          ; $4ccd: $0f
    ld e, c                                       ; $4cce: $59
    xor h                                         ; $4ccf: $ac
    ld a, h                                       ; $4cd0: $7c
    ld [$6e4c], a                                 ; $4cd1: $ea $4c $6e
    dec l                                         ; $4cd4: $2d
    dec e                                         ; $4cd5: $1d
    rra                                           ; $4cd6: $1f
    pop hl                                        ; $4cd7: $e1
    ei                                            ; $4cd8: $fb
    ld h, e                                       ; $4cd9: $63
    bit 2, e                                      ; $4cda: $cb $53
    ld a, b                                       ; $4cdc: $78
    ld hl, $0b57                                  ; $4cdd: $21 $57 $0b
    dec e                                         ; $4ce0: $1d
    rra                                           ; $4ce1: $1f
    pop hl                                        ; $4ce2: $e1
    ei                                            ; $4ce3: $fb
    ld h, e                                       ; $4ce4: $63
    sub b                                         ; $4ce5: $90
    xor h                                         ; $4ce6: $ac
    jp nz, $2dce                                  ; $4ce7: $c2 $ce $2d

    dec e                                         ; $4cea: $1d
    or c                                          ; $4ceb: $b1
    jp nc, $fc27                                  ; $4cec: $d2 $27 $fc

    ld l, d                                       ; $4cef: $6a
    ld bc, $b11d                                  ; $4cf0: $01 $1d $b1
    jp nc, $fc27                                  ; $4cf3: $d2 $27 $fc

    sbc d                                         ; $4cf6: $9a
    ld a, [hl-]                                   ; $4cf7: $3a
    sub e                                         ; $4cf8: $93
    ld e, e                                       ; $4cf9: $5b
    dec bc                                        ; $4cfa: $0b
    ld l, e                                       ; $4cfb: $6b
    ld bc, $016b                                  ; $4cfc: $01 $6b $01
    ld l, e                                       ; $4cff: $6b
    ld bc, $016b                                  ; $4d00: $01 $6b $01
    ld l, e                                       ; $4d03: $6b
    ld bc, $016b                                  ; $4d04: $01 $6b $01
    ld l, e                                       ; $4d07: $6b
    ld bc, $016b                                  ; $4d08: $01 $6b $01
    ld l, e                                       ; $4d0b: $6b
    ld bc, $016b                                  ; $4d0c: $01 $6b $01
    ld l, e                                       ; $4d0f: $6b
    ld bc, $2027                                  ; $4d10: $01 $27 $20
    db $e3                                        ; $4d13: $e3
    ld a, [de]                                    ; $4d14: $1a
    rst $10                                       ; $4d15: $d7
    ld a, [hl+]                                   ; $4d16: $2a
    dec hl                                        ; $4d17: $2b
    or a                                          ; $4d18: $b7
    inc [hl]                                      ; $4d19: $34
    ld e, [hl]                                    ; $4d1a: $5e
    adc d                                         ; $4d1b: $8a
    ld d, $6b                                     ; $4d1c: $16 $6b
    ld bc, $016b                                  ; $4d1e: $01 $6b $01
    ld l, e                                       ; $4d21: $6b
    ld bc, $016b                                  ; $4d22: $01 $6b $01
    ld l, e                                       ; $4d25: $6b
    ld bc, $016b                                  ; $4d26: $01 $6b $01
    ld l, e                                       ; $4d29: $6b
    ld bc, $016b                                  ; $4d2a: $01 $6b $01
    ld l, e                                       ; $4d2d: $6b
    ld bc, $016b                                  ; $4d2e: $01 $6b $01
    ld l, e                                       ; $4d31: $6b
    ld bc, $016b                                  ; $4d32: $01 $6b $01
    ld l, e                                       ; $4d35: $6b
    ld bc, $016b                                  ; $4d36: $01 $6b $01
    ld l, e                                       ; $4d39: $6b
    ld bc, $016b                                  ; $4d3a: $01 $6b $01
    ld l, e                                       ; $4d3d: $6b
    ld bc, $016b                                  ; $4d3e: $01 $6b $01
    ld l, e                                       ; $4d41: $6b
    ld bc, $016b                                  ; $4d42: $01 $6b $01
    ld l, e                                       ; $4d45: $6b
    ld bc, $ba47                                  ; $4d46: $01 $47 $ba
    or c                                          ; $4d49: $b1
    ld l, [hl]                                    ; $4d4a: $6e
    adc d                                         ; $4d4b: $8a
    dec b                                         ; $4d4c: $05
    ld a, b                                       ; $4d4d: $78
    db $e3                                        ; $4d4e: $e3
    jr @-$74                                      ; $4d4f: $18 $8a

    ld d, $6b                                     ; $4d51: $16 $6b
    ld bc, $5847                                  ; $4d53: $01 $47 $58
    add hl, hl                                    ; $4d56: $29
    rst $28                                       ; $4d57: $ef
    or e                                          ; $4d58: $b3
    ld e, [hl]                                    ; $4d59: $5e
    ld d, l                                       ; $4d5a: $55
    add hl, hl                                    ; $4d5b: $29
    ld e, d                                       ; $4d5c: $5a
    dec e                                         ; $4d5d: $1d
    adc l                                         ; $4d5e: $8d
    db $ec                                        ; $4d5f: $ec
    ld b, d                                       ; $4d60: $42
    ld a, [c]                                     ; $4d61: $f2
    rlca                                          ; $4d62: $07
    ld e, b                                       ; $4d63: $58
    adc d                                         ; $4d64: $8a
    and d                                         ; $4d65: $a2
    dec b                                         ; $4d66: $05
    ld b, a                                       ; $4d67: $47
    cp a                                          ; $4d68: $bf
    rst $08                                       ; $4d69: $cf
    db $ed                                        ; $4d6a: $ed
    ld d, e                                       ; $4d6b: $53
    adc h                                         ; $4d6c: $8c
    jp $b62e                                      ; $4d6d: $c3 $2e $b6


    ld bc, $f7f7                                  ; $4d70: $01 $f7 $f7
    ld e, e                                       ; $4d73: $5b
    ld b, a                                       ; $4d74: $47
    jr @+$0d                                      ; $4d75: $18 $0b

    ld b, h                                       ; $4d77: $44
    and h                                         ; $4d78: $a4
    sbc b                                         ; $4d79: $98
    rst $18                                       ; $4d7a: $df
    ld e, b                                       ; $4d7b: $58
    dec b                                         ; $4d7c: $05
    inc hl                                        ; $4d7d: $23
    call nc, Call_032_6b02                        ; $4d7e: $d4 $02 $6b
    ld bc, $016b                                  ; $4d81: $01 $6b $01
    ld l, e                                       ; $4d84: $6b
    ld bc, $016b                                  ; $4d85: $01 $6b $01
    ld l, e                                       ; $4d88: $6b
    ld bc, $016b                                  ; $4d89: $01 $6b $01
    ld l, e                                       ; $4d8c: $6b
    ld bc, $016b                                  ; $4d8d: $01 $6b $01
    ld l, e                                       ; $4d90: $6b
    ld bc, $016b                                  ; $4d91: $01 $6b $01
    ld l, e                                       ; $4d94: $6b
    ld bc, $016b                                  ; $4d95: $01 $6b $01
    ld l, e                                       ; $4d98: $6b
    ld bc, $016b                                  ; $4d99: $01 $6b $01
    ld l, e                                       ; $4d9c: $6b
    ld bc, $016b                                  ; $4d9d: $01 $6b $01
    ld l, e                                       ; $4da0: $6b
    ld bc, $016b                                  ; $4da1: $01 $6b $01
    ld b, a                                       ; $4da4: $47
    sub a                                         ; $4da5: $97
    ld e, $48                                     ; $4da6: $1e $48
    dec l                                         ; $4da8: $2d
    ld l, e                                       ; $4da9: $6b
    ld bc, $016b                                  ; $4daa: $01 $6b $01
    ld l, e                                       ; $4dad: $6b
    ld bc, $016b                                  ; $4dae: $01 $6b $01
    ld l, e                                       ; $4db1: $6b
    ld bc, $ffff                                  ; $4db2: $01 $ff $ff
    rst $38                                       ; $4db5: $ff
    rst $38                                       ; $4db6: $ff
    rst $38                                       ; $4db7: $ff
    rst $38                                       ; $4db8: $ff
    rst $38                                       ; $4db9: $ff
    rst $38                                       ; $4dba: $ff
    rst $38                                       ; $4dbb: $ff
    rst $38                                       ; $4dbc: $ff
    rst $38                                       ; $4dbd: $ff
    rst $38                                       ; $4dbe: $ff
    rst $38                                       ; $4dbf: $ff
    rst $38                                       ; $4dc0: $ff
    rst $38                                       ; $4dc1: $ff
    rst $38                                       ; $4dc2: $ff
    rst $38                                       ; $4dc3: $ff
    rst $38                                       ; $4dc4: $ff
    rst $38                                       ; $4dc5: $ff
    rst $38                                       ; $4dc6: $ff
    rst $38                                       ; $4dc7: $ff
    rst $38                                       ; $4dc8: $ff
    rst $38                                       ; $4dc9: $ff
    rst $38                                       ; $4dca: $ff
    rst $38                                       ; $4dcb: $ff
    rst $38                                       ; $4dcc: $ff
    rst $38                                       ; $4dcd: $ff
    rst $38                                       ; $4dce: $ff
    rst $38                                       ; $4dcf: $ff
    rst $38                                       ; $4dd0: $ff
    rst $38                                       ; $4dd1: $ff
    rst $38                                       ; $4dd2: $ff
    rst $38                                       ; $4dd3: $ff
    rst $38                                       ; $4dd4: $ff
    rst $38                                       ; $4dd5: $ff
    rst $38                                       ; $4dd6: $ff
    rst $38                                       ; $4dd7: $ff
    rst $38                                       ; $4dd8: $ff
    rst $38                                       ; $4dd9: $ff
    rst $38                                       ; $4dda: $ff
    rst $38                                       ; $4ddb: $ff
    rst $38                                       ; $4ddc: $ff
    rst $38                                       ; $4ddd: $ff
    rst $38                                       ; $4dde: $ff
    rst $38                                       ; $4ddf: $ff
    rst $38                                       ; $4de0: $ff
    rst $38                                       ; $4de1: $ff
    rst $38                                       ; $4de2: $ff
    rst $38                                       ; $4de3: $ff
    rst $38                                       ; $4de4: $ff
    rst $38                                       ; $4de5: $ff
    rst $38                                       ; $4de6: $ff
    rst $38                                       ; $4de7: $ff
    rst $38                                       ; $4de8: $ff
    rst $38                                       ; $4de9: $ff
    rst $38                                       ; $4dea: $ff
    rst $38                                       ; $4deb: $ff
    rst $38                                       ; $4dec: $ff
    rst $38                                       ; $4ded: $ff
    rst $38                                       ; $4dee: $ff
    rst $38                                       ; $4def: $ff
    rst $38                                       ; $4df0: $ff
    rst $38                                       ; $4df1: $ff
    rst $38                                       ; $4df2: $ff
    rst $38                                       ; $4df3: $ff
    rst $38                                       ; $4df4: $ff
    rst $38                                       ; $4df5: $ff
    rst $38                                       ; $4df6: $ff
    rst $38                                       ; $4df7: $ff
    rst $38                                       ; $4df8: $ff
    rst $38                                       ; $4df9: $ff
    rst $38                                       ; $4dfa: $ff
    rst $38                                       ; $4dfb: $ff
    rst $38                                       ; $4dfc: $ff
    rst $38                                       ; $4dfd: $ff
    rst $38                                       ; $4dfe: $ff
    rst $38                                       ; $4dff: $ff
    rst $38                                       ; $4e00: $ff
    rst $38                                       ; $4e01: $ff
    rst $38                                       ; $4e02: $ff
    rst $38                                       ; $4e03: $ff
    rst $38                                       ; $4e04: $ff
    rst $38                                       ; $4e05: $ff
    rst $38                                       ; $4e06: $ff
    rst $38                                       ; $4e07: $ff
    rst $38                                       ; $4e08: $ff
    rst $38                                       ; $4e09: $ff
    rst $38                                       ; $4e0a: $ff
    rst $38                                       ; $4e0b: $ff
    rst $38                                       ; $4e0c: $ff
    rst $38                                       ; $4e0d: $ff
    rst $38                                       ; $4e0e: $ff
    rst $38                                       ; $4e0f: $ff
    rst $38                                       ; $4e10: $ff
    rst $38                                       ; $4e11: $ff
    rst $38                                       ; $4e12: $ff
    rst $38                                       ; $4e13: $ff
    rst $38                                       ; $4e14: $ff
    rst $38                                       ; $4e15: $ff
    rst $38                                       ; $4e16: $ff
    rst $38                                       ; $4e17: $ff
    rst $38                                       ; $4e18: $ff
    rst $38                                       ; $4e19: $ff
    rst $38                                       ; $4e1a: $ff
    rst $38                                       ; $4e1b: $ff
    rst $38                                       ; $4e1c: $ff
    rst $38                                       ; $4e1d: $ff
    rst $38                                       ; $4e1e: $ff
    rst $38                                       ; $4e1f: $ff
    rst $38                                       ; $4e20: $ff
    rst $38                                       ; $4e21: $ff
    rst $38                                       ; $4e22: $ff
    rst $38                                       ; $4e23: $ff
    rst $38                                       ; $4e24: $ff
    rst $38                                       ; $4e25: $ff
    rst $38                                       ; $4e26: $ff
    rst $38                                       ; $4e27: $ff
    rst $38                                       ; $4e28: $ff
    rst $38                                       ; $4e29: $ff
    rst $38                                       ; $4e2a: $ff
    rst $38                                       ; $4e2b: $ff
    rst $38                                       ; $4e2c: $ff
    rst $38                                       ; $4e2d: $ff
    rst $38                                       ; $4e2e: $ff
    rst $38                                       ; $4e2f: $ff
    rst $38                                       ; $4e30: $ff
    rst $38                                       ; $4e31: $ff
    rst $38                                       ; $4e32: $ff
    rst $38                                       ; $4e33: $ff
    rst $38                                       ; $4e34: $ff
    rst $38                                       ; $4e35: $ff
    rst $38                                       ; $4e36: $ff
    rst $38                                       ; $4e37: $ff
    rst $38                                       ; $4e38: $ff
    rst $38                                       ; $4e39: $ff
    rst $38                                       ; $4e3a: $ff
    rst $38                                       ; $4e3b: $ff
    rst $38                                       ; $4e3c: $ff
    rst $38                                       ; $4e3d: $ff
    rst $38                                       ; $4e3e: $ff
    rst $38                                       ; $4e3f: $ff
    rst $38                                       ; $4e40: $ff
    rst $38                                       ; $4e41: $ff
    rst $38                                       ; $4e42: $ff
    rst $38                                       ; $4e43: $ff
    rst $38                                       ; $4e44: $ff
    rst $38                                       ; $4e45: $ff
    rst $38                                       ; $4e46: $ff
    rst $38                                       ; $4e47: $ff
    rst $38                                       ; $4e48: $ff
    rst $38                                       ; $4e49: $ff
    rst $38                                       ; $4e4a: $ff
    rst $38                                       ; $4e4b: $ff
    rst $38                                       ; $4e4c: $ff
    rst $38                                       ; $4e4d: $ff
    rst $38                                       ; $4e4e: $ff
    rst $38                                       ; $4e4f: $ff
    rst $38                                       ; $4e50: $ff
    rst $38                                       ; $4e51: $ff
    rst $38                                       ; $4e52: $ff
    rst $38                                       ; $4e53: $ff
    rst $38                                       ; $4e54: $ff
    rst $38                                       ; $4e55: $ff
    rst $38                                       ; $4e56: $ff
    rst $38                                       ; $4e57: $ff
    rst $38                                       ; $4e58: $ff
    rst $38                                       ; $4e59: $ff
    rst $38                                       ; $4e5a: $ff
    rst $38                                       ; $4e5b: $ff
    rst $38                                       ; $4e5c: $ff
    rst $38                                       ; $4e5d: $ff
    rst $38                                       ; $4e5e: $ff
    rst $38                                       ; $4e5f: $ff
    rst $38                                       ; $4e60: $ff
    rst $38                                       ; $4e61: $ff
    rst $38                                       ; $4e62: $ff
    rst $38                                       ; $4e63: $ff
    rst $38                                       ; $4e64: $ff
    rst $38                                       ; $4e65: $ff
    rst $38                                       ; $4e66: $ff
    rst $38                                       ; $4e67: $ff
    rst $38                                       ; $4e68: $ff
    rst $38                                       ; $4e69: $ff
    rst $38                                       ; $4e6a: $ff
    rst $38                                       ; $4e6b: $ff
    rst $38                                       ; $4e6c: $ff
    rst $38                                       ; $4e6d: $ff
    rst $38                                       ; $4e6e: $ff
    rst $38                                       ; $4e6f: $ff
    rst $38                                       ; $4e70: $ff
    rst $38                                       ; $4e71: $ff
    rst $38                                       ; $4e72: $ff
    rst $38                                       ; $4e73: $ff
    rst $38                                       ; $4e74: $ff
    rst $38                                       ; $4e75: $ff
    rst $38                                       ; $4e76: $ff
    rst $38                                       ; $4e77: $ff
    rst $38                                       ; $4e78: $ff
    rst $38                                       ; $4e79: $ff
    rst $38                                       ; $4e7a: $ff
    rst $38                                       ; $4e7b: $ff
    rst $38                                       ; $4e7c: $ff
    rst $38                                       ; $4e7d: $ff
    rst $38                                       ; $4e7e: $ff
    rst $38                                       ; $4e7f: $ff
    rst $38                                       ; $4e80: $ff
    rst $38                                       ; $4e81: $ff
    rst $38                                       ; $4e82: $ff
    rst $38                                       ; $4e83: $ff
    rst $38                                       ; $4e84: $ff
    rst $38                                       ; $4e85: $ff
    rst $38                                       ; $4e86: $ff
    rst $38                                       ; $4e87: $ff
    rst $38                                       ; $4e88: $ff
    rst $38                                       ; $4e89: $ff
    rst $38                                       ; $4e8a: $ff
    rst $38                                       ; $4e8b: $ff
    rst $38                                       ; $4e8c: $ff
    rst $38                                       ; $4e8d: $ff
    rst $38                                       ; $4e8e: $ff
    rst $38                                       ; $4e8f: $ff
    rst $38                                       ; $4e90: $ff
    rst $38                                       ; $4e91: $ff
    rst $38                                       ; $4e92: $ff
    rst $38                                       ; $4e93: $ff
    rst $38                                       ; $4e94: $ff
    rst $38                                       ; $4e95: $ff
    rst $38                                       ; $4e96: $ff
    rst $38                                       ; $4e97: $ff
    rst $38                                       ; $4e98: $ff
    rst $38                                       ; $4e99: $ff
    rst $38                                       ; $4e9a: $ff
    rst $38                                       ; $4e9b: $ff
    rst $38                                       ; $4e9c: $ff
    rst $38                                       ; $4e9d: $ff
    rst $38                                       ; $4e9e: $ff
    rst $38                                       ; $4e9f: $ff
    rst $38                                       ; $4ea0: $ff
    rst $38                                       ; $4ea1: $ff
    rst $38                                       ; $4ea2: $ff
    rst $38                                       ; $4ea3: $ff
    rst $38                                       ; $4ea4: $ff
    rst $38                                       ; $4ea5: $ff
    rst $38                                       ; $4ea6: $ff
    rst $38                                       ; $4ea7: $ff
    rst $38                                       ; $4ea8: $ff
    rst $38                                       ; $4ea9: $ff
    rst $38                                       ; $4eaa: $ff
    rst $38                                       ; $4eab: $ff
    rst $38                                       ; $4eac: $ff
    rst $38                                       ; $4ead: $ff
    rst $38                                       ; $4eae: $ff
    rst $38                                       ; $4eaf: $ff
    rst $38                                       ; $4eb0: $ff
    rst $38                                       ; $4eb1: $ff
    rst $38                                       ; $4eb2: $ff
    rst $38                                       ; $4eb3: $ff
    rst $38                                       ; $4eb4: $ff
    rst $38                                       ; $4eb5: $ff
    rst $38                                       ; $4eb6: $ff
    rst $38                                       ; $4eb7: $ff
    rst $38                                       ; $4eb8: $ff
    rst $38                                       ; $4eb9: $ff
    rst $38                                       ; $4eba: $ff
    rst $38                                       ; $4ebb: $ff
    rst $38                                       ; $4ebc: $ff
    rst $38                                       ; $4ebd: $ff
    rst $38                                       ; $4ebe: $ff
    rst $38                                       ; $4ebf: $ff
    rst $38                                       ; $4ec0: $ff
    rst $38                                       ; $4ec1: $ff
    rst $38                                       ; $4ec2: $ff
    rst $38                                       ; $4ec3: $ff
    rst $38                                       ; $4ec4: $ff
    rst $38                                       ; $4ec5: $ff
    rst $38                                       ; $4ec6: $ff
    rst $38                                       ; $4ec7: $ff
    rst $38                                       ; $4ec8: $ff
    rst $38                                       ; $4ec9: $ff
    rst $38                                       ; $4eca: $ff
    rst $38                                       ; $4ecb: $ff
    rst $38                                       ; $4ecc: $ff
    rst $38                                       ; $4ecd: $ff
    rst $38                                       ; $4ece: $ff
    rst $38                                       ; $4ecf: $ff
    rst $38                                       ; $4ed0: $ff
    rst $38                                       ; $4ed1: $ff
    rst $38                                       ; $4ed2: $ff
    rst $38                                       ; $4ed3: $ff
    rst $38                                       ; $4ed4: $ff
    rst $38                                       ; $4ed5: $ff
    rst $38                                       ; $4ed6: $ff
    rst $38                                       ; $4ed7: $ff
    rst $38                                       ; $4ed8: $ff
    rst $38                                       ; $4ed9: $ff
    rst $38                                       ; $4eda: $ff
    rst $38                                       ; $4edb: $ff
    rst $38                                       ; $4edc: $ff
    rst $38                                       ; $4edd: $ff
    rst $38                                       ; $4ede: $ff
    rst $38                                       ; $4edf: $ff
    rst $38                                       ; $4ee0: $ff
    rst $38                                       ; $4ee1: $ff
    rst $38                                       ; $4ee2: $ff
    rst $38                                       ; $4ee3: $ff
    rst $38                                       ; $4ee4: $ff
    rst $38                                       ; $4ee5: $ff
    rst $38                                       ; $4ee6: $ff
    rst $38                                       ; $4ee7: $ff
    rst $38                                       ; $4ee8: $ff
    rst $38                                       ; $4ee9: $ff
    rst $38                                       ; $4eea: $ff
    rst $38                                       ; $4eeb: $ff
    rst $38                                       ; $4eec: $ff
    rst $38                                       ; $4eed: $ff
    rst $38                                       ; $4eee: $ff
    rst $38                                       ; $4eef: $ff
    rst $38                                       ; $4ef0: $ff
    rst $38                                       ; $4ef1: $ff
    rst $38                                       ; $4ef2: $ff
    rst $38                                       ; $4ef3: $ff
    rst $38                                       ; $4ef4: $ff
    rst $38                                       ; $4ef5: $ff
    rst $38                                       ; $4ef6: $ff
    rst $38                                       ; $4ef7: $ff
    rst $38                                       ; $4ef8: $ff
    rst $38                                       ; $4ef9: $ff
    rst $38                                       ; $4efa: $ff
    rst $38                                       ; $4efb: $ff
    rst $38                                       ; $4efc: $ff
    rst $38                                       ; $4efd: $ff
    rst $38                                       ; $4efe: $ff
    rst $38                                       ; $4eff: $ff
    rst $38                                       ; $4f00: $ff
    rst $38                                       ; $4f01: $ff
    rst $38                                       ; $4f02: $ff
    rst $38                                       ; $4f03: $ff
    rst $38                                       ; $4f04: $ff
    rst $38                                       ; $4f05: $ff
    rst $38                                       ; $4f06: $ff
    rst $38                                       ; $4f07: $ff
    rst $38                                       ; $4f08: $ff
    rst $38                                       ; $4f09: $ff
    rst $38                                       ; $4f0a: $ff
    rst $38                                       ; $4f0b: $ff
    rst $38                                       ; $4f0c: $ff
    rst $38                                       ; $4f0d: $ff
    rst $38                                       ; $4f0e: $ff
    rst $38                                       ; $4f0f: $ff
    rst $38                                       ; $4f10: $ff
    rst $38                                       ; $4f11: $ff
    rst $38                                       ; $4f12: $ff
    rst $38                                       ; $4f13: $ff
    rst $38                                       ; $4f14: $ff
    rst $38                                       ; $4f15: $ff
    rst $38                                       ; $4f16: $ff
    rst $38                                       ; $4f17: $ff
    rst $38                                       ; $4f18: $ff
    rst $38                                       ; $4f19: $ff
    rst $38                                       ; $4f1a: $ff
    rst $38                                       ; $4f1b: $ff
    rst $38                                       ; $4f1c: $ff
    rst $38                                       ; $4f1d: $ff
    rst $38                                       ; $4f1e: $ff
    rst $38                                       ; $4f1f: $ff
    rst $38                                       ; $4f20: $ff
    rst $38                                       ; $4f21: $ff
    rst $38                                       ; $4f22: $ff
    rst $38                                       ; $4f23: $ff
    rst $38                                       ; $4f24: $ff
    rst $38                                       ; $4f25: $ff
    rst $38                                       ; $4f26: $ff
    rst $38                                       ; $4f27: $ff
    rst $38                                       ; $4f28: $ff
    rst $38                                       ; $4f29: $ff
    rst $38                                       ; $4f2a: $ff
    rst $38                                       ; $4f2b: $ff
    rst $38                                       ; $4f2c: $ff
    rst $38                                       ; $4f2d: $ff
    rst $38                                       ; $4f2e: $ff
    rst $38                                       ; $4f2f: $ff
    rst $38                                       ; $4f30: $ff
    rst $38                                       ; $4f31: $ff
    rst $38                                       ; $4f32: $ff
    rst $38                                       ; $4f33: $ff
    rst $38                                       ; $4f34: $ff
    rst $38                                       ; $4f35: $ff
    rst $38                                       ; $4f36: $ff
    rst $38                                       ; $4f37: $ff
    rst $38                                       ; $4f38: $ff
    rst $38                                       ; $4f39: $ff
    rst $38                                       ; $4f3a: $ff
    rst $38                                       ; $4f3b: $ff
    rst $38                                       ; $4f3c: $ff
    rst $38                                       ; $4f3d: $ff
    rst $38                                       ; $4f3e: $ff
    rst $38                                       ; $4f3f: $ff
    rst $38                                       ; $4f40: $ff
    rst $38                                       ; $4f41: $ff
    rst $38                                       ; $4f42: $ff
    rst $38                                       ; $4f43: $ff
    rst $38                                       ; $4f44: $ff
    rst $38                                       ; $4f45: $ff
    rst $38                                       ; $4f46: $ff
    rst $38                                       ; $4f47: $ff
    rst $38                                       ; $4f48: $ff
    rst $38                                       ; $4f49: $ff
    rst $38                                       ; $4f4a: $ff
    rst $38                                       ; $4f4b: $ff
    rst $38                                       ; $4f4c: $ff
    rst $38                                       ; $4f4d: $ff
    rst $38                                       ; $4f4e: $ff
    rst $38                                       ; $4f4f: $ff
    rst $38                                       ; $4f50: $ff
    rst $38                                       ; $4f51: $ff
    rst $38                                       ; $4f52: $ff
    rst $38                                       ; $4f53: $ff
    rst $38                                       ; $4f54: $ff
    rst $38                                       ; $4f55: $ff
    rst $38                                       ; $4f56: $ff
    rst $38                                       ; $4f57: $ff
    rst $38                                       ; $4f58: $ff
    rst $38                                       ; $4f59: $ff
    rst $38                                       ; $4f5a: $ff
    rst $38                                       ; $4f5b: $ff
    rst $38                                       ; $4f5c: $ff
    rst $38                                       ; $4f5d: $ff
    rst $38                                       ; $4f5e: $ff
    rst $38                                       ; $4f5f: $ff
    rst $38                                       ; $4f60: $ff
    rst $38                                       ; $4f61: $ff
    rst $38                                       ; $4f62: $ff
    rst $38                                       ; $4f63: $ff
    rst $38                                       ; $4f64: $ff
    rst $38                                       ; $4f65: $ff
    rst $38                                       ; $4f66: $ff
    rst $38                                       ; $4f67: $ff
    rst $38                                       ; $4f68: $ff
    rst $38                                       ; $4f69: $ff
    rst $38                                       ; $4f6a: $ff
    rst $38                                       ; $4f6b: $ff
    rst $38                                       ; $4f6c: $ff
    rst $38                                       ; $4f6d: $ff
    rst $38                                       ; $4f6e: $ff
    rst $38                                       ; $4f6f: $ff
    rst $38                                       ; $4f70: $ff
    rst $38                                       ; $4f71: $ff
    rst $38                                       ; $4f72: $ff
    rst $38                                       ; $4f73: $ff
    rst $38                                       ; $4f74: $ff
    rst $38                                       ; $4f75: $ff
    rst $38                                       ; $4f76: $ff
    rst $38                                       ; $4f77: $ff
    rst $38                                       ; $4f78: $ff
    rst $38                                       ; $4f79: $ff
    rst $38                                       ; $4f7a: $ff
    rst $38                                       ; $4f7b: $ff
    rst $38                                       ; $4f7c: $ff
    rst $38                                       ; $4f7d: $ff
    rst $38                                       ; $4f7e: $ff
    rst $38                                       ; $4f7f: $ff
    rst $38                                       ; $4f80: $ff
    rst $38                                       ; $4f81: $ff
    rst $38                                       ; $4f82: $ff
    rst $38                                       ; $4f83: $ff
    rst $38                                       ; $4f84: $ff
    rst $38                                       ; $4f85: $ff
    rst $38                                       ; $4f86: $ff
    rst $38                                       ; $4f87: $ff
    rst $38                                       ; $4f88: $ff
    rst $38                                       ; $4f89: $ff
    rst $38                                       ; $4f8a: $ff
    rst $38                                       ; $4f8b: $ff
    rst $38                                       ; $4f8c: $ff
    rst $38                                       ; $4f8d: $ff
    rst $38                                       ; $4f8e: $ff
    rst $38                                       ; $4f8f: $ff
    rst $38                                       ; $4f90: $ff
    rst $38                                       ; $4f91: $ff
    rst $38                                       ; $4f92: $ff
    rst $38                                       ; $4f93: $ff
    rst $38                                       ; $4f94: $ff
    rst $38                                       ; $4f95: $ff
    rst $38                                       ; $4f96: $ff
    rst $38                                       ; $4f97: $ff
    rst $38                                       ; $4f98: $ff
    rst $38                                       ; $4f99: $ff
    rst $38                                       ; $4f9a: $ff
    rst $38                                       ; $4f9b: $ff
    rst $38                                       ; $4f9c: $ff
    rst $38                                       ; $4f9d: $ff
    rst $38                                       ; $4f9e: $ff
    rst $38                                       ; $4f9f: $ff
    rst $38                                       ; $4fa0: $ff
    rst $38                                       ; $4fa1: $ff
    rst $38                                       ; $4fa2: $ff
    rst $38                                       ; $4fa3: $ff
    rst $38                                       ; $4fa4: $ff
    rst $38                                       ; $4fa5: $ff
    rst $38                                       ; $4fa6: $ff
    rst $38                                       ; $4fa7: $ff
    rst $38                                       ; $4fa8: $ff
    rst $38                                       ; $4fa9: $ff
    rst $38                                       ; $4faa: $ff
    rst $38                                       ; $4fab: $ff
    rst $38                                       ; $4fac: $ff
    rst $38                                       ; $4fad: $ff
    rst $38                                       ; $4fae: $ff
    rst $38                                       ; $4faf: $ff
    rst $38                                       ; $4fb0: $ff
    rst $38                                       ; $4fb1: $ff
    rst $38                                       ; $4fb2: $ff
    rst $38                                       ; $4fb3: $ff
    rst $38                                       ; $4fb4: $ff
    rst $38                                       ; $4fb5: $ff
    rst $38                                       ; $4fb6: $ff
    rst $38                                       ; $4fb7: $ff
    rst $38                                       ; $4fb8: $ff
    rst $38                                       ; $4fb9: $ff
    rst $38                                       ; $4fba: $ff
    rst $38                                       ; $4fbb: $ff
    rst $38                                       ; $4fbc: $ff
    rst $38                                       ; $4fbd: $ff
    rst $38                                       ; $4fbe: $ff
    rst $38                                       ; $4fbf: $ff
    rst $38                                       ; $4fc0: $ff
    rst $38                                       ; $4fc1: $ff
    rst $38                                       ; $4fc2: $ff
    rst $38                                       ; $4fc3: $ff
    rst $38                                       ; $4fc4: $ff
    rst $38                                       ; $4fc5: $ff
    rst $38                                       ; $4fc6: $ff
    rst $38                                       ; $4fc7: $ff
    rst $38                                       ; $4fc8: $ff
    rst $38                                       ; $4fc9: $ff
    rst $38                                       ; $4fca: $ff
    rst $38                                       ; $4fcb: $ff
    rst $38                                       ; $4fcc: $ff
    rst $38                                       ; $4fcd: $ff
    rst $38                                       ; $4fce: $ff
    rst $38                                       ; $4fcf: $ff
    rst $38                                       ; $4fd0: $ff
    rst $38                                       ; $4fd1: $ff
    rst $38                                       ; $4fd2: $ff
    rst $38                                       ; $4fd3: $ff
    rst $38                                       ; $4fd4: $ff
    rst $38                                       ; $4fd5: $ff
    rst $38                                       ; $4fd6: $ff
    rst $38                                       ; $4fd7: $ff
    rst $38                                       ; $4fd8: $ff
    rst $38                                       ; $4fd9: $ff
    rst $38                                       ; $4fda: $ff
    rst $38                                       ; $4fdb: $ff
    rst $38                                       ; $4fdc: $ff
    rst $38                                       ; $4fdd: $ff
    rst $38                                       ; $4fde: $ff
    rst $38                                       ; $4fdf: $ff
    rst $38                                       ; $4fe0: $ff
    rst $38                                       ; $4fe1: $ff
    rst $38                                       ; $4fe2: $ff
    rst $38                                       ; $4fe3: $ff
    rst $38                                       ; $4fe4: $ff
    rst $38                                       ; $4fe5: $ff
    rst $38                                       ; $4fe6: $ff
    rst $38                                       ; $4fe7: $ff
    rst $38                                       ; $4fe8: $ff
    rst $38                                       ; $4fe9: $ff
    rst $38                                       ; $4fea: $ff
    rst $38                                       ; $4feb: $ff
    rst $38                                       ; $4fec: $ff
    rst $38                                       ; $4fed: $ff
    rst $38                                       ; $4fee: $ff
    rst $38                                       ; $4fef: $ff
    rst $38                                       ; $4ff0: $ff
    rst $38                                       ; $4ff1: $ff
    rst $38                                       ; $4ff2: $ff
    rst $38                                       ; $4ff3: $ff
    rst $38                                       ; $4ff4: $ff
    rst $38                                       ; $4ff5: $ff
    rst $38                                       ; $4ff6: $ff
    rst $38                                       ; $4ff7: $ff
    rst $38                                       ; $4ff8: $ff
    rst $38                                       ; $4ff9: $ff
    rst $38                                       ; $4ffa: $ff
    rst $38                                       ; $4ffb: $ff
    rst $38                                       ; $4ffc: $ff
    rst $38                                       ; $4ffd: $ff
    rst $38                                       ; $4ffe: $ff
    rst $38                                       ; $4fff: $ff
    rst $38                                       ; $5000: $ff
    rst $38                                       ; $5001: $ff
    rst $38                                       ; $5002: $ff
    rst $38                                       ; $5003: $ff
    rst $38                                       ; $5004: $ff
    rst $38                                       ; $5005: $ff
    rst $38                                       ; $5006: $ff
    rst $38                                       ; $5007: $ff
    rst $38                                       ; $5008: $ff
    rst $38                                       ; $5009: $ff
    rst $38                                       ; $500a: $ff
    rst $38                                       ; $500b: $ff
    rst $38                                       ; $500c: $ff
    rst $38                                       ; $500d: $ff
    rst $38                                       ; $500e: $ff
    rst $38                                       ; $500f: $ff
    rst $38                                       ; $5010: $ff
    rst $38                                       ; $5011: $ff
    rst $38                                       ; $5012: $ff
    rst $38                                       ; $5013: $ff
    rst $38                                       ; $5014: $ff
    rst $38                                       ; $5015: $ff
    rst $38                                       ; $5016: $ff
    rst $38                                       ; $5017: $ff
    rst $38                                       ; $5018: $ff
    rst $38                                       ; $5019: $ff
    rst $38                                       ; $501a: $ff
    rst $38                                       ; $501b: $ff
    rst $38                                       ; $501c: $ff
    rst $38                                       ; $501d: $ff
    rst $38                                       ; $501e: $ff
    rst $38                                       ; $501f: $ff
    rst $38                                       ; $5020: $ff
    rst $38                                       ; $5021: $ff
    rst $38                                       ; $5022: $ff
    rst $38                                       ; $5023: $ff
    rst $38                                       ; $5024: $ff
    rst $38                                       ; $5025: $ff
    rst $38                                       ; $5026: $ff
    rst $38                                       ; $5027: $ff
    rst $38                                       ; $5028: $ff
    rst $38                                       ; $5029: $ff
    rst $38                                       ; $502a: $ff
    rst $38                                       ; $502b: $ff
    rst $38                                       ; $502c: $ff
    rst $38                                       ; $502d: $ff
    rst $38                                       ; $502e: $ff
    rst $38                                       ; $502f: $ff
    rst $38                                       ; $5030: $ff
    rst $38                                       ; $5031: $ff
    rst $38                                       ; $5032: $ff
    rst $38                                       ; $5033: $ff
    rst $38                                       ; $5034: $ff
    rst $38                                       ; $5035: $ff
    rst $38                                       ; $5036: $ff
    rst $38                                       ; $5037: $ff
    rst $38                                       ; $5038: $ff
    rst $38                                       ; $5039: $ff
    rst $38                                       ; $503a: $ff
    rst $38                                       ; $503b: $ff
    rst $38                                       ; $503c: $ff
    rst $38                                       ; $503d: $ff
    rst $38                                       ; $503e: $ff
    rst $38                                       ; $503f: $ff
    rst $38                                       ; $5040: $ff
    rst $38                                       ; $5041: $ff
    rst $38                                       ; $5042: $ff
    rst $38                                       ; $5043: $ff
    rst $38                                       ; $5044: $ff
    rst $38                                       ; $5045: $ff
    rst $38                                       ; $5046: $ff
    rst $38                                       ; $5047: $ff
    rst $38                                       ; $5048: $ff
    rst $38                                       ; $5049: $ff
    rst $38                                       ; $504a: $ff
    rst $38                                       ; $504b: $ff
    rst $38                                       ; $504c: $ff
    rst $38                                       ; $504d: $ff
    rst $38                                       ; $504e: $ff
    rst $38                                       ; $504f: $ff
    rst $38                                       ; $5050: $ff
    rst $38                                       ; $5051: $ff
    rst $38                                       ; $5052: $ff
    rst $38                                       ; $5053: $ff
    rst $38                                       ; $5054: $ff
    rst $38                                       ; $5055: $ff
    rst $38                                       ; $5056: $ff
    rst $38                                       ; $5057: $ff
    rst $38                                       ; $5058: $ff
    rst $38                                       ; $5059: $ff
    rst $38                                       ; $505a: $ff
    rst $38                                       ; $505b: $ff
    rst $38                                       ; $505c: $ff
    rst $38                                       ; $505d: $ff
    rst $38                                       ; $505e: $ff
    rst $38                                       ; $505f: $ff
    rst $38                                       ; $5060: $ff
    rst $38                                       ; $5061: $ff
    rst $38                                       ; $5062: $ff
    rst $38                                       ; $5063: $ff
    rst $38                                       ; $5064: $ff
    rst $38                                       ; $5065: $ff
    rst $38                                       ; $5066: $ff
    rst $38                                       ; $5067: $ff
    rst $38                                       ; $5068: $ff
    rst $38                                       ; $5069: $ff
    rst $38                                       ; $506a: $ff
    rst $38                                       ; $506b: $ff
    rst $38                                       ; $506c: $ff
    rst $38                                       ; $506d: $ff
    rst $38                                       ; $506e: $ff
    rst $38                                       ; $506f: $ff
    rst $38                                       ; $5070: $ff
    rst $38                                       ; $5071: $ff
    rst $38                                       ; $5072: $ff
    rst $38                                       ; $5073: $ff
    rst $38                                       ; $5074: $ff
    rst $38                                       ; $5075: $ff
    rst $38                                       ; $5076: $ff
    rst $38                                       ; $5077: $ff
    rst $38                                       ; $5078: $ff
    rst $38                                       ; $5079: $ff
    rst $38                                       ; $507a: $ff
    rst $38                                       ; $507b: $ff
    rst $38                                       ; $507c: $ff
    rst $38                                       ; $507d: $ff
    rst $38                                       ; $507e: $ff
    rst $38                                       ; $507f: $ff
    rst $38                                       ; $5080: $ff
    rst $38                                       ; $5081: $ff
    rst $38                                       ; $5082: $ff
    rst $38                                       ; $5083: $ff
    rst $38                                       ; $5084: $ff
    rst $38                                       ; $5085: $ff
    rst $38                                       ; $5086: $ff
    rst $38                                       ; $5087: $ff
    rst $38                                       ; $5088: $ff
    rst $38                                       ; $5089: $ff
    rst $38                                       ; $508a: $ff
    rst $38                                       ; $508b: $ff
    rst $38                                       ; $508c: $ff
    rst $38                                       ; $508d: $ff
    rst $38                                       ; $508e: $ff
    rst $38                                       ; $508f: $ff
    rst $38                                       ; $5090: $ff
    rst $38                                       ; $5091: $ff
    rst $38                                       ; $5092: $ff
    rst $38                                       ; $5093: $ff
    rst $38                                       ; $5094: $ff
    rst $38                                       ; $5095: $ff
    rst $38                                       ; $5096: $ff
    rst $38                                       ; $5097: $ff
    rst $38                                       ; $5098: $ff
    rst $38                                       ; $5099: $ff
    rst $38                                       ; $509a: $ff
    rst $38                                       ; $509b: $ff
    rst $38                                       ; $509c: $ff
    rst $38                                       ; $509d: $ff
    rst $38                                       ; $509e: $ff
    rst $38                                       ; $509f: $ff
    rst $38                                       ; $50a0: $ff
    rst $38                                       ; $50a1: $ff
    rst $38                                       ; $50a2: $ff
    rst $38                                       ; $50a3: $ff
    rst $38                                       ; $50a4: $ff
    rst $38                                       ; $50a5: $ff
    rst $38                                       ; $50a6: $ff
    rst $38                                       ; $50a7: $ff
    rst $38                                       ; $50a8: $ff
    rst $38                                       ; $50a9: $ff
    rst $38                                       ; $50aa: $ff
    rst $38                                       ; $50ab: $ff
    rst $38                                       ; $50ac: $ff
    rst $38                                       ; $50ad: $ff
    rst $38                                       ; $50ae: $ff
    rst $38                                       ; $50af: $ff
    rst $38                                       ; $50b0: $ff
    rst $38                                       ; $50b1: $ff
    rst $38                                       ; $50b2: $ff
    rst $38                                       ; $50b3: $ff
    rst $38                                       ; $50b4: $ff
    rst $38                                       ; $50b5: $ff
    rst $38                                       ; $50b6: $ff
    rst $38                                       ; $50b7: $ff
    rst $38                                       ; $50b8: $ff
    rst $38                                       ; $50b9: $ff
    rst $38                                       ; $50ba: $ff
    rst $38                                       ; $50bb: $ff
    rst $38                                       ; $50bc: $ff
    rst $38                                       ; $50bd: $ff
    rst $38                                       ; $50be: $ff
    rst $38                                       ; $50bf: $ff
    rst $38                                       ; $50c0: $ff
    rst $38                                       ; $50c1: $ff
    rst $38                                       ; $50c2: $ff
    rst $38                                       ; $50c3: $ff
    rst $38                                       ; $50c4: $ff
    rst $38                                       ; $50c5: $ff
    rst $38                                       ; $50c6: $ff
    rst $38                                       ; $50c7: $ff
    rst $38                                       ; $50c8: $ff
    rst $38                                       ; $50c9: $ff
    rst $38                                       ; $50ca: $ff
    rst $38                                       ; $50cb: $ff
    rst $38                                       ; $50cc: $ff
    rst $38                                       ; $50cd: $ff
    rst $38                                       ; $50ce: $ff
    rst $38                                       ; $50cf: $ff
    rst $38                                       ; $50d0: $ff
    rst $38                                       ; $50d1: $ff
    rst $38                                       ; $50d2: $ff
    rst $38                                       ; $50d3: $ff
    rst $38                                       ; $50d4: $ff
    rst $38                                       ; $50d5: $ff
    rst $38                                       ; $50d6: $ff
    rst $38                                       ; $50d7: $ff
    rst $38                                       ; $50d8: $ff
    rst $38                                       ; $50d9: $ff
    rst $38                                       ; $50da: $ff
    rst $38                                       ; $50db: $ff
    rst $38                                       ; $50dc: $ff
    rst $38                                       ; $50dd: $ff
    rst $38                                       ; $50de: $ff
    rst $38                                       ; $50df: $ff
    rst $38                                       ; $50e0: $ff
    rst $38                                       ; $50e1: $ff
    rst $38                                       ; $50e2: $ff
    rst $38                                       ; $50e3: $ff
    rst $38                                       ; $50e4: $ff
    rst $38                                       ; $50e5: $ff
    rst $38                                       ; $50e6: $ff
    rst $38                                       ; $50e7: $ff
    rst $38                                       ; $50e8: $ff
    rst $38                                       ; $50e9: $ff
    rst $38                                       ; $50ea: $ff
    rst $38                                       ; $50eb: $ff
    rst $38                                       ; $50ec: $ff
    rst $38                                       ; $50ed: $ff
    rst $38                                       ; $50ee: $ff
    rst $38                                       ; $50ef: $ff
    rst $38                                       ; $50f0: $ff
    rst $38                                       ; $50f1: $ff
    rst $38                                       ; $50f2: $ff
    rst $38                                       ; $50f3: $ff
    rst $38                                       ; $50f4: $ff
    rst $38                                       ; $50f5: $ff
    rst $38                                       ; $50f6: $ff
    rst $38                                       ; $50f7: $ff
    rst $38                                       ; $50f8: $ff
    rst $38                                       ; $50f9: $ff
    rst $38                                       ; $50fa: $ff
    rst $38                                       ; $50fb: $ff
    rst $38                                       ; $50fc: $ff
    rst $38                                       ; $50fd: $ff
    rst $38                                       ; $50fe: $ff
    rst $38                                       ; $50ff: $ff
    rst $38                                       ; $5100: $ff
    rst $38                                       ; $5101: $ff
    rst $38                                       ; $5102: $ff
    rst $38                                       ; $5103: $ff
    rst $38                                       ; $5104: $ff
    rst $38                                       ; $5105: $ff
    rst $38                                       ; $5106: $ff
    rst $38                                       ; $5107: $ff
    rst $38                                       ; $5108: $ff
    rst $38                                       ; $5109: $ff
    rst $38                                       ; $510a: $ff
    rst $38                                       ; $510b: $ff
    rst $38                                       ; $510c: $ff
    rst $38                                       ; $510d: $ff
    rst $38                                       ; $510e: $ff
    rst $38                                       ; $510f: $ff
    rst $38                                       ; $5110: $ff
    rst $38                                       ; $5111: $ff
    rst $38                                       ; $5112: $ff
    rst $38                                       ; $5113: $ff
    rst $38                                       ; $5114: $ff
    rst $38                                       ; $5115: $ff
    rst $38                                       ; $5116: $ff
    rst $38                                       ; $5117: $ff
    rst $38                                       ; $5118: $ff
    rst $38                                       ; $5119: $ff
    rst $38                                       ; $511a: $ff
    rst $38                                       ; $511b: $ff
    rst $38                                       ; $511c: $ff
    rst $38                                       ; $511d: $ff
    rst $38                                       ; $511e: $ff
    rst $38                                       ; $511f: $ff
    rst $38                                       ; $5120: $ff
    rst $38                                       ; $5121: $ff
    rst $38                                       ; $5122: $ff
    rst $38                                       ; $5123: $ff
    rst $38                                       ; $5124: $ff
    rst $38                                       ; $5125: $ff
    rst $38                                       ; $5126: $ff
    rst $38                                       ; $5127: $ff
    rst $38                                       ; $5128: $ff
    rst $38                                       ; $5129: $ff
    rst $38                                       ; $512a: $ff
    rst $38                                       ; $512b: $ff
    rst $38                                       ; $512c: $ff
    rst $38                                       ; $512d: $ff
    rst $38                                       ; $512e: $ff
    rst $38                                       ; $512f: $ff
    rst $38                                       ; $5130: $ff
    rst $38                                       ; $5131: $ff
    rst $38                                       ; $5132: $ff
    rst $38                                       ; $5133: $ff
    rst $38                                       ; $5134: $ff
    rst $38                                       ; $5135: $ff
    rst $38                                       ; $5136: $ff
    rst $38                                       ; $5137: $ff
    rst $38                                       ; $5138: $ff
    rst $38                                       ; $5139: $ff
    rst $38                                       ; $513a: $ff
    rst $38                                       ; $513b: $ff
    rst $38                                       ; $513c: $ff
    rst $38                                       ; $513d: $ff
    rst $38                                       ; $513e: $ff
    rst $38                                       ; $513f: $ff
    rst $38                                       ; $5140: $ff
    rst $38                                       ; $5141: $ff
    rst $38                                       ; $5142: $ff
    rst $38                                       ; $5143: $ff
    rst $38                                       ; $5144: $ff
    rst $38                                       ; $5145: $ff
    rst $38                                       ; $5146: $ff
    rst $38                                       ; $5147: $ff
    rst $38                                       ; $5148: $ff
    rst $38                                       ; $5149: $ff
    rst $38                                       ; $514a: $ff
    rst $38                                       ; $514b: $ff
    rst $38                                       ; $514c: $ff
    rst $38                                       ; $514d: $ff
    rst $38                                       ; $514e: $ff
    rst $38                                       ; $514f: $ff
    rst $38                                       ; $5150: $ff
    rst $38                                       ; $5151: $ff
    rst $38                                       ; $5152: $ff
    rst $38                                       ; $5153: $ff
    rst $38                                       ; $5154: $ff
    rst $38                                       ; $5155: $ff
    rst $38                                       ; $5156: $ff
    rst $38                                       ; $5157: $ff
    rst $38                                       ; $5158: $ff
    rst $38                                       ; $5159: $ff
    rst $38                                       ; $515a: $ff
    rst $38                                       ; $515b: $ff
    rst $38                                       ; $515c: $ff
    rst $38                                       ; $515d: $ff
    rst $38                                       ; $515e: $ff
    rst $38                                       ; $515f: $ff
    rst $38                                       ; $5160: $ff
    rst $38                                       ; $5161: $ff
    rst $38                                       ; $5162: $ff
    rst $38                                       ; $5163: $ff
    rst $38                                       ; $5164: $ff
    rst $38                                       ; $5165: $ff
    rst $38                                       ; $5166: $ff
    rst $38                                       ; $5167: $ff
    rst $38                                       ; $5168: $ff
    rst $38                                       ; $5169: $ff
    rst $38                                       ; $516a: $ff
    rst $38                                       ; $516b: $ff
    rst $38                                       ; $516c: $ff
    rst $38                                       ; $516d: $ff
    rst $38                                       ; $516e: $ff
    rst $38                                       ; $516f: $ff
    rst $38                                       ; $5170: $ff
    rst $38                                       ; $5171: $ff
    rst $38                                       ; $5172: $ff
    rst $38                                       ; $5173: $ff
    rst $38                                       ; $5174: $ff
    rst $38                                       ; $5175: $ff
    rst $38                                       ; $5176: $ff
    rst $38                                       ; $5177: $ff
    rst $38                                       ; $5178: $ff
    rst $38                                       ; $5179: $ff
    rst $38                                       ; $517a: $ff
    rst $38                                       ; $517b: $ff
    rst $38                                       ; $517c: $ff
    rst $38                                       ; $517d: $ff
    rst $38                                       ; $517e: $ff
    rst $38                                       ; $517f: $ff
    rst $38                                       ; $5180: $ff
    rst $38                                       ; $5181: $ff
    rst $38                                       ; $5182: $ff
    rst $38                                       ; $5183: $ff
    rst $38                                       ; $5184: $ff
    rst $38                                       ; $5185: $ff
    rst $38                                       ; $5186: $ff
    rst $38                                       ; $5187: $ff
    rst $38                                       ; $5188: $ff
    rst $38                                       ; $5189: $ff
    rst $38                                       ; $518a: $ff
    rst $38                                       ; $518b: $ff
    rst $38                                       ; $518c: $ff
    rst $38                                       ; $518d: $ff
    rst $38                                       ; $518e: $ff
    rst $38                                       ; $518f: $ff
    rst $38                                       ; $5190: $ff
    rst $38                                       ; $5191: $ff
    rst $38                                       ; $5192: $ff
    rst $38                                       ; $5193: $ff
    rst $38                                       ; $5194: $ff
    rst $38                                       ; $5195: $ff
    rst $38                                       ; $5196: $ff
    rst $38                                       ; $5197: $ff
    rst $38                                       ; $5198: $ff
    rst $38                                       ; $5199: $ff
    rst $38                                       ; $519a: $ff
    rst $38                                       ; $519b: $ff
    rst $38                                       ; $519c: $ff
    rst $38                                       ; $519d: $ff
    rst $38                                       ; $519e: $ff
    rst $38                                       ; $519f: $ff
    rst $38                                       ; $51a0: $ff
    rst $38                                       ; $51a1: $ff
    rst $38                                       ; $51a2: $ff
    rst $38                                       ; $51a3: $ff
    rst $38                                       ; $51a4: $ff
    rst $38                                       ; $51a5: $ff
    rst $38                                       ; $51a6: $ff
    rst $38                                       ; $51a7: $ff
    rst $38                                       ; $51a8: $ff
    rst $38                                       ; $51a9: $ff
    rst $38                                       ; $51aa: $ff
    rst $38                                       ; $51ab: $ff
    rst $38                                       ; $51ac: $ff
    rst $38                                       ; $51ad: $ff
    rst $38                                       ; $51ae: $ff
    rst $38                                       ; $51af: $ff
    rst $38                                       ; $51b0: $ff
    rst $38                                       ; $51b1: $ff
    rst $38                                       ; $51b2: $ff
    rst $38                                       ; $51b3: $ff
    rst $38                                       ; $51b4: $ff
    rst $38                                       ; $51b5: $ff
    rst $38                                       ; $51b6: $ff
    rst $38                                       ; $51b7: $ff
    rst $38                                       ; $51b8: $ff
    rst $38                                       ; $51b9: $ff
    rst $38                                       ; $51ba: $ff
    rst $38                                       ; $51bb: $ff
    rst $38                                       ; $51bc: $ff
    rst $38                                       ; $51bd: $ff
    rst $38                                       ; $51be: $ff
    rst $38                                       ; $51bf: $ff
    rst $38                                       ; $51c0: $ff
    rst $38                                       ; $51c1: $ff
    rst $38                                       ; $51c2: $ff
    rst $38                                       ; $51c3: $ff
    rst $38                                       ; $51c4: $ff
    rst $38                                       ; $51c5: $ff
    rst $38                                       ; $51c6: $ff
    rst $38                                       ; $51c7: $ff
    rst $38                                       ; $51c8: $ff
    rst $38                                       ; $51c9: $ff
    rst $38                                       ; $51ca: $ff
    rst $38                                       ; $51cb: $ff
    rst $38                                       ; $51cc: $ff
    rst $38                                       ; $51cd: $ff
    rst $38                                       ; $51ce: $ff
    rst $38                                       ; $51cf: $ff
    rst $38                                       ; $51d0: $ff
    rst $38                                       ; $51d1: $ff
    rst $38                                       ; $51d2: $ff
    rst $38                                       ; $51d3: $ff
    rst $38                                       ; $51d4: $ff
    rst $38                                       ; $51d5: $ff
    rst $38                                       ; $51d6: $ff
    rst $38                                       ; $51d7: $ff
    rst $38                                       ; $51d8: $ff
    rst $38                                       ; $51d9: $ff
    rst $38                                       ; $51da: $ff
    rst $38                                       ; $51db: $ff
    rst $38                                       ; $51dc: $ff
    rst $38                                       ; $51dd: $ff
    rst $38                                       ; $51de: $ff
    rst $38                                       ; $51df: $ff
    rst $38                                       ; $51e0: $ff
    rst $38                                       ; $51e1: $ff
    rst $38                                       ; $51e2: $ff
    rst $38                                       ; $51e3: $ff
    rst $38                                       ; $51e4: $ff
    rst $38                                       ; $51e5: $ff
    rst $38                                       ; $51e6: $ff
    rst $38                                       ; $51e7: $ff
    rst $38                                       ; $51e8: $ff
    rst $38                                       ; $51e9: $ff
    rst $38                                       ; $51ea: $ff
    rst $38                                       ; $51eb: $ff
    rst $38                                       ; $51ec: $ff
    rst $38                                       ; $51ed: $ff
    rst $38                                       ; $51ee: $ff
    rst $38                                       ; $51ef: $ff
    rst $38                                       ; $51f0: $ff
    rst $38                                       ; $51f1: $ff
    rst $38                                       ; $51f2: $ff
    rst $38                                       ; $51f3: $ff
    rst $38                                       ; $51f4: $ff
    rst $38                                       ; $51f5: $ff
    rst $38                                       ; $51f6: $ff
    rst $38                                       ; $51f7: $ff
    rst $38                                       ; $51f8: $ff
    rst $38                                       ; $51f9: $ff
    rst $38                                       ; $51fa: $ff
    rst $38                                       ; $51fb: $ff
    rst $38                                       ; $51fc: $ff
    rst $38                                       ; $51fd: $ff
    rst $38                                       ; $51fe: $ff
    rst $38                                       ; $51ff: $ff
    rst $38                                       ; $5200: $ff
    rst $38                                       ; $5201: $ff
    rst $38                                       ; $5202: $ff
    rst $38                                       ; $5203: $ff
    rst $38                                       ; $5204: $ff
    rst $38                                       ; $5205: $ff
    rst $38                                       ; $5206: $ff
    rst $38                                       ; $5207: $ff
    rst $38                                       ; $5208: $ff
    rst $38                                       ; $5209: $ff
    rst $38                                       ; $520a: $ff
    rst $38                                       ; $520b: $ff
    rst $38                                       ; $520c: $ff
    rst $38                                       ; $520d: $ff
    rst $38                                       ; $520e: $ff
    rst $38                                       ; $520f: $ff
    rst $38                                       ; $5210: $ff
    rst $38                                       ; $5211: $ff
    rst $38                                       ; $5212: $ff
    rst $38                                       ; $5213: $ff
    rst $38                                       ; $5214: $ff
    rst $38                                       ; $5215: $ff
    rst $38                                       ; $5216: $ff
    rst $38                                       ; $5217: $ff
    rst $38                                       ; $5218: $ff
    rst $38                                       ; $5219: $ff
    rst $38                                       ; $521a: $ff
    rst $38                                       ; $521b: $ff
    rst $38                                       ; $521c: $ff
    rst $38                                       ; $521d: $ff
    rst $38                                       ; $521e: $ff
    rst $38                                       ; $521f: $ff
    rst $38                                       ; $5220: $ff
    rst $38                                       ; $5221: $ff
    rst $38                                       ; $5222: $ff
    rst $38                                       ; $5223: $ff
    rst $38                                       ; $5224: $ff
    rst $38                                       ; $5225: $ff
    rst $38                                       ; $5226: $ff
    rst $38                                       ; $5227: $ff
    rst $38                                       ; $5228: $ff
    rst $38                                       ; $5229: $ff
    rst $38                                       ; $522a: $ff
    rst $38                                       ; $522b: $ff
    rst $38                                       ; $522c: $ff
    rst $38                                       ; $522d: $ff
    rst $38                                       ; $522e: $ff
    rst $38                                       ; $522f: $ff
    rst $38                                       ; $5230: $ff
    rst $38                                       ; $5231: $ff
    rst $38                                       ; $5232: $ff
    rst $38                                       ; $5233: $ff
    rst $38                                       ; $5234: $ff
    rst $38                                       ; $5235: $ff
    rst $38                                       ; $5236: $ff
    rst $38                                       ; $5237: $ff
    rst $38                                       ; $5238: $ff
    rst $38                                       ; $5239: $ff
    rst $38                                       ; $523a: $ff
    rst $38                                       ; $523b: $ff
    rst $38                                       ; $523c: $ff
    rst $38                                       ; $523d: $ff
    rst $38                                       ; $523e: $ff
    rst $38                                       ; $523f: $ff
    rst $38                                       ; $5240: $ff
    rst $38                                       ; $5241: $ff
    rst $38                                       ; $5242: $ff
    rst $38                                       ; $5243: $ff
    rst $38                                       ; $5244: $ff
    rst $38                                       ; $5245: $ff
    rst $38                                       ; $5246: $ff
    rst $38                                       ; $5247: $ff
    rst $38                                       ; $5248: $ff
    rst $38                                       ; $5249: $ff
    rst $38                                       ; $524a: $ff
    rst $38                                       ; $524b: $ff
    rst $38                                       ; $524c: $ff
    rst $38                                       ; $524d: $ff
    rst $38                                       ; $524e: $ff
    rst $38                                       ; $524f: $ff
    rst $38                                       ; $5250: $ff
    rst $38                                       ; $5251: $ff
    rst $38                                       ; $5252: $ff
    rst $38                                       ; $5253: $ff
    rst $38                                       ; $5254: $ff
    rst $38                                       ; $5255: $ff
    rst $38                                       ; $5256: $ff
    rst $38                                       ; $5257: $ff
    rst $38                                       ; $5258: $ff
    rst $38                                       ; $5259: $ff
    rst $38                                       ; $525a: $ff
    rst $38                                       ; $525b: $ff
    rst $38                                       ; $525c: $ff
    rst $38                                       ; $525d: $ff
    rst $38                                       ; $525e: $ff
    rst $38                                       ; $525f: $ff
    rst $38                                       ; $5260: $ff
    rst $38                                       ; $5261: $ff
    rst $38                                       ; $5262: $ff
    rst $38                                       ; $5263: $ff
    rst $38                                       ; $5264: $ff
    rst $38                                       ; $5265: $ff
    rst $38                                       ; $5266: $ff
    rst $38                                       ; $5267: $ff
    rst $38                                       ; $5268: $ff
    rst $38                                       ; $5269: $ff
    rst $38                                       ; $526a: $ff
    rst $38                                       ; $526b: $ff
    rst $38                                       ; $526c: $ff
    rst $38                                       ; $526d: $ff
    rst $38                                       ; $526e: $ff
    rst $38                                       ; $526f: $ff
    rst $38                                       ; $5270: $ff
    rst $38                                       ; $5271: $ff
    rst $38                                       ; $5272: $ff
    rst $38                                       ; $5273: $ff
    rst $38                                       ; $5274: $ff
    rst $38                                       ; $5275: $ff
    rst $38                                       ; $5276: $ff
    rst $38                                       ; $5277: $ff
    rst $38                                       ; $5278: $ff
    rst $38                                       ; $5279: $ff
    rst $38                                       ; $527a: $ff
    rst $38                                       ; $527b: $ff
    rst $38                                       ; $527c: $ff
    rst $38                                       ; $527d: $ff
    rst $38                                       ; $527e: $ff
    rst $38                                       ; $527f: $ff
    rst $38                                       ; $5280: $ff
    rst $38                                       ; $5281: $ff
    rst $38                                       ; $5282: $ff
    rst $38                                       ; $5283: $ff
    rst $38                                       ; $5284: $ff
    rst $38                                       ; $5285: $ff
    rst $38                                       ; $5286: $ff
    rst $38                                       ; $5287: $ff
    rst $38                                       ; $5288: $ff
    rst $38                                       ; $5289: $ff
    rst $38                                       ; $528a: $ff
    rst $38                                       ; $528b: $ff
    rst $38                                       ; $528c: $ff
    rst $38                                       ; $528d: $ff
    rst $38                                       ; $528e: $ff
    rst $38                                       ; $528f: $ff
    rst $38                                       ; $5290: $ff
    rst $38                                       ; $5291: $ff
    rst $38                                       ; $5292: $ff
    rst $38                                       ; $5293: $ff
    rst $38                                       ; $5294: $ff
    rst $38                                       ; $5295: $ff
    rst $38                                       ; $5296: $ff
    rst $38                                       ; $5297: $ff
    rst $38                                       ; $5298: $ff
    rst $38                                       ; $5299: $ff
    rst $38                                       ; $529a: $ff
    rst $38                                       ; $529b: $ff
    rst $38                                       ; $529c: $ff
    rst $38                                       ; $529d: $ff
    rst $38                                       ; $529e: $ff
    rst $38                                       ; $529f: $ff
    rst $38                                       ; $52a0: $ff
    rst $38                                       ; $52a1: $ff
    rst $38                                       ; $52a2: $ff
    rst $38                                       ; $52a3: $ff
    rst $38                                       ; $52a4: $ff
    rst $38                                       ; $52a5: $ff
    rst $38                                       ; $52a6: $ff
    rst $38                                       ; $52a7: $ff
    rst $38                                       ; $52a8: $ff
    rst $38                                       ; $52a9: $ff
    rst $38                                       ; $52aa: $ff
    rst $38                                       ; $52ab: $ff
    rst $38                                       ; $52ac: $ff
    rst $38                                       ; $52ad: $ff
    rst $38                                       ; $52ae: $ff
    rst $38                                       ; $52af: $ff
    rst $38                                       ; $52b0: $ff
    rst $38                                       ; $52b1: $ff
    rst $38                                       ; $52b2: $ff
    rst $38                                       ; $52b3: $ff
    rst $38                                       ; $52b4: $ff
    rst $38                                       ; $52b5: $ff
    rst $38                                       ; $52b6: $ff
    rst $38                                       ; $52b7: $ff
    rst $38                                       ; $52b8: $ff
    rst $38                                       ; $52b9: $ff
    rst $38                                       ; $52ba: $ff
    rst $38                                       ; $52bb: $ff
    rst $38                                       ; $52bc: $ff
    rst $38                                       ; $52bd: $ff
    rst $38                                       ; $52be: $ff
    rst $38                                       ; $52bf: $ff
    rst $38                                       ; $52c0: $ff
    rst $38                                       ; $52c1: $ff
    rst $38                                       ; $52c2: $ff
    rst $38                                       ; $52c3: $ff
    rst $38                                       ; $52c4: $ff
    rst $38                                       ; $52c5: $ff
    rst $38                                       ; $52c6: $ff
    rst $38                                       ; $52c7: $ff
    rst $38                                       ; $52c8: $ff
    rst $38                                       ; $52c9: $ff
    rst $38                                       ; $52ca: $ff
    rst $38                                       ; $52cb: $ff
    rst $38                                       ; $52cc: $ff
    rst $38                                       ; $52cd: $ff
    rst $38                                       ; $52ce: $ff
    rst $38                                       ; $52cf: $ff
    rst $38                                       ; $52d0: $ff
    rst $38                                       ; $52d1: $ff
    rst $38                                       ; $52d2: $ff
    rst $38                                       ; $52d3: $ff
    rst $38                                       ; $52d4: $ff
    rst $38                                       ; $52d5: $ff
    rst $38                                       ; $52d6: $ff
    rst $38                                       ; $52d7: $ff
    rst $38                                       ; $52d8: $ff
    rst $38                                       ; $52d9: $ff
    rst $38                                       ; $52da: $ff
    rst $38                                       ; $52db: $ff
    rst $38                                       ; $52dc: $ff
    rst $38                                       ; $52dd: $ff
    rst $38                                       ; $52de: $ff
    rst $38                                       ; $52df: $ff
    rst $38                                       ; $52e0: $ff
    rst $38                                       ; $52e1: $ff
    rst $38                                       ; $52e2: $ff
    rst $38                                       ; $52e3: $ff
    rst $38                                       ; $52e4: $ff
    rst $38                                       ; $52e5: $ff
    rst $38                                       ; $52e6: $ff
    rst $38                                       ; $52e7: $ff
    rst $38                                       ; $52e8: $ff
    rst $38                                       ; $52e9: $ff
    rst $38                                       ; $52ea: $ff
    rst $38                                       ; $52eb: $ff
    rst $38                                       ; $52ec: $ff
    rst $38                                       ; $52ed: $ff
    rst $38                                       ; $52ee: $ff
    rst $38                                       ; $52ef: $ff
    rst $38                                       ; $52f0: $ff
    rst $38                                       ; $52f1: $ff
    rst $38                                       ; $52f2: $ff
    rst $38                                       ; $52f3: $ff
    rst $38                                       ; $52f4: $ff
    rst $38                                       ; $52f5: $ff
    rst $38                                       ; $52f6: $ff
    rst $38                                       ; $52f7: $ff
    rst $38                                       ; $52f8: $ff
    rst $38                                       ; $52f9: $ff
    rst $38                                       ; $52fa: $ff
    rst $38                                       ; $52fb: $ff
    rst $38                                       ; $52fc: $ff
    rst $38                                       ; $52fd: $ff
    rst $38                                       ; $52fe: $ff
    rst $38                                       ; $52ff: $ff
    rst $38                                       ; $5300: $ff
    rst $38                                       ; $5301: $ff
    rst $38                                       ; $5302: $ff
    rst $38                                       ; $5303: $ff
    rst $38                                       ; $5304: $ff
    rst $38                                       ; $5305: $ff
    rst $38                                       ; $5306: $ff
    rst $38                                       ; $5307: $ff
    rst $38                                       ; $5308: $ff
    rst $38                                       ; $5309: $ff
    rst $38                                       ; $530a: $ff
    rst $38                                       ; $530b: $ff
    rst $38                                       ; $530c: $ff
    rst $38                                       ; $530d: $ff
    rst $38                                       ; $530e: $ff
    rst $38                                       ; $530f: $ff
    rst $38                                       ; $5310: $ff
    rst $38                                       ; $5311: $ff
    rst $38                                       ; $5312: $ff
    rst $38                                       ; $5313: $ff
    rst $38                                       ; $5314: $ff
    rst $38                                       ; $5315: $ff
    rst $38                                       ; $5316: $ff
    rst $38                                       ; $5317: $ff
    rst $38                                       ; $5318: $ff
    rst $38                                       ; $5319: $ff
    rst $38                                       ; $531a: $ff
    rst $38                                       ; $531b: $ff
    rst $38                                       ; $531c: $ff
    rst $38                                       ; $531d: $ff
    rst $38                                       ; $531e: $ff
    rst $38                                       ; $531f: $ff
    rst $38                                       ; $5320: $ff
    rst $38                                       ; $5321: $ff
    rst $38                                       ; $5322: $ff
    rst $38                                       ; $5323: $ff
    rst $38                                       ; $5324: $ff
    rst $38                                       ; $5325: $ff
    rst $38                                       ; $5326: $ff
    rst $38                                       ; $5327: $ff
    rst $38                                       ; $5328: $ff
    rst $38                                       ; $5329: $ff
    rst $38                                       ; $532a: $ff
    rst $38                                       ; $532b: $ff
    rst $38                                       ; $532c: $ff
    rst $38                                       ; $532d: $ff
    rst $38                                       ; $532e: $ff
    rst $38                                       ; $532f: $ff
    rst $38                                       ; $5330: $ff
    rst $38                                       ; $5331: $ff
    rst $38                                       ; $5332: $ff
    rst $38                                       ; $5333: $ff
    rst $38                                       ; $5334: $ff
    rst $38                                       ; $5335: $ff
    rst $38                                       ; $5336: $ff
    rst $38                                       ; $5337: $ff
    rst $38                                       ; $5338: $ff
    rst $38                                       ; $5339: $ff
    rst $38                                       ; $533a: $ff
    rst $38                                       ; $533b: $ff
    rst $38                                       ; $533c: $ff
    rst $38                                       ; $533d: $ff
    rst $38                                       ; $533e: $ff
    rst $38                                       ; $533f: $ff
    rst $38                                       ; $5340: $ff
    rst $38                                       ; $5341: $ff
    rst $38                                       ; $5342: $ff
    rst $38                                       ; $5343: $ff
    rst $38                                       ; $5344: $ff
    rst $38                                       ; $5345: $ff
    rst $38                                       ; $5346: $ff
    rst $38                                       ; $5347: $ff
    rst $38                                       ; $5348: $ff
    rst $38                                       ; $5349: $ff
    rst $38                                       ; $534a: $ff
    rst $38                                       ; $534b: $ff
    rst $38                                       ; $534c: $ff
    rst $38                                       ; $534d: $ff
    rst $38                                       ; $534e: $ff
    rst $38                                       ; $534f: $ff
    rst $38                                       ; $5350: $ff
    rst $38                                       ; $5351: $ff
    rst $38                                       ; $5352: $ff
    rst $38                                       ; $5353: $ff
    rst $38                                       ; $5354: $ff
    rst $38                                       ; $5355: $ff
    rst $38                                       ; $5356: $ff
    rst $38                                       ; $5357: $ff
    rst $38                                       ; $5358: $ff
    rst $38                                       ; $5359: $ff
    rst $38                                       ; $535a: $ff
    rst $38                                       ; $535b: $ff
    rst $38                                       ; $535c: $ff
    rst $38                                       ; $535d: $ff
    rst $38                                       ; $535e: $ff
    rst $38                                       ; $535f: $ff
    rst $38                                       ; $5360: $ff
    rst $38                                       ; $5361: $ff
    rst $38                                       ; $5362: $ff
    rst $38                                       ; $5363: $ff
    rst $38                                       ; $5364: $ff
    rst $38                                       ; $5365: $ff
    rst $38                                       ; $5366: $ff
    rst $38                                       ; $5367: $ff
    rst $38                                       ; $5368: $ff
    rst $38                                       ; $5369: $ff
    rst $38                                       ; $536a: $ff
    rst $38                                       ; $536b: $ff
    rst $38                                       ; $536c: $ff
    rst $38                                       ; $536d: $ff
    rst $38                                       ; $536e: $ff
    rst $38                                       ; $536f: $ff
    rst $38                                       ; $5370: $ff
    rst $38                                       ; $5371: $ff
    rst $38                                       ; $5372: $ff
    rst $38                                       ; $5373: $ff
    rst $38                                       ; $5374: $ff
    rst $38                                       ; $5375: $ff
    rst $38                                       ; $5376: $ff
    rst $38                                       ; $5377: $ff
    rst $38                                       ; $5378: $ff
    rst $38                                       ; $5379: $ff
    rst $38                                       ; $537a: $ff
    rst $38                                       ; $537b: $ff
    rst $38                                       ; $537c: $ff
    rst $38                                       ; $537d: $ff
    rst $38                                       ; $537e: $ff
    rst $38                                       ; $537f: $ff
    rst $38                                       ; $5380: $ff
    rst $38                                       ; $5381: $ff
    rst $38                                       ; $5382: $ff
    rst $38                                       ; $5383: $ff
    rst $38                                       ; $5384: $ff
    rst $38                                       ; $5385: $ff
    rst $38                                       ; $5386: $ff
    rst $38                                       ; $5387: $ff
    rst $38                                       ; $5388: $ff
    rst $38                                       ; $5389: $ff
    rst $38                                       ; $538a: $ff
    rst $38                                       ; $538b: $ff
    rst $38                                       ; $538c: $ff
    rst $38                                       ; $538d: $ff
    rst $38                                       ; $538e: $ff
    rst $38                                       ; $538f: $ff
    rst $38                                       ; $5390: $ff
    rst $38                                       ; $5391: $ff
    rst $38                                       ; $5392: $ff
    rst $38                                       ; $5393: $ff
    rst $38                                       ; $5394: $ff
    rst $38                                       ; $5395: $ff
    rst $38                                       ; $5396: $ff
    rst $38                                       ; $5397: $ff
    rst $38                                       ; $5398: $ff
    rst $38                                       ; $5399: $ff
    rst $38                                       ; $539a: $ff
    rst $38                                       ; $539b: $ff
    rst $38                                       ; $539c: $ff
    rst $38                                       ; $539d: $ff
    rst $38                                       ; $539e: $ff
    rst $38                                       ; $539f: $ff
    rst $38                                       ; $53a0: $ff
    rst $38                                       ; $53a1: $ff
    rst $38                                       ; $53a2: $ff
    rst $38                                       ; $53a3: $ff
    rst $38                                       ; $53a4: $ff
    rst $38                                       ; $53a5: $ff
    rst $38                                       ; $53a6: $ff
    rst $38                                       ; $53a7: $ff
    rst $38                                       ; $53a8: $ff
    rst $38                                       ; $53a9: $ff
    rst $38                                       ; $53aa: $ff
    rst $38                                       ; $53ab: $ff
    rst $38                                       ; $53ac: $ff
    rst $38                                       ; $53ad: $ff
    rst $38                                       ; $53ae: $ff
    rst $38                                       ; $53af: $ff
    rst $38                                       ; $53b0: $ff
    rst $38                                       ; $53b1: $ff
    rst $38                                       ; $53b2: $ff
    rst $38                                       ; $53b3: $ff
    rst $38                                       ; $53b4: $ff
    rst $38                                       ; $53b5: $ff
    rst $38                                       ; $53b6: $ff
    rst $38                                       ; $53b7: $ff
    rst $38                                       ; $53b8: $ff
    rst $38                                       ; $53b9: $ff
    rst $38                                       ; $53ba: $ff
    rst $38                                       ; $53bb: $ff
    rst $38                                       ; $53bc: $ff
    rst $38                                       ; $53bd: $ff
    rst $38                                       ; $53be: $ff
    rst $38                                       ; $53bf: $ff
    rst $38                                       ; $53c0: $ff
    rst $38                                       ; $53c1: $ff
    rst $38                                       ; $53c2: $ff
    rst $38                                       ; $53c3: $ff
    rst $38                                       ; $53c4: $ff
    rst $38                                       ; $53c5: $ff
    rst $38                                       ; $53c6: $ff
    rst $38                                       ; $53c7: $ff
    rst $38                                       ; $53c8: $ff
    rst $38                                       ; $53c9: $ff
    rst $38                                       ; $53ca: $ff
    rst $38                                       ; $53cb: $ff
    rst $38                                       ; $53cc: $ff
    rst $38                                       ; $53cd: $ff
    rst $38                                       ; $53ce: $ff
    rst $38                                       ; $53cf: $ff
    rst $38                                       ; $53d0: $ff
    rst $38                                       ; $53d1: $ff
    rst $38                                       ; $53d2: $ff
    rst $38                                       ; $53d3: $ff
    rst $38                                       ; $53d4: $ff
    rst $38                                       ; $53d5: $ff
    rst $38                                       ; $53d6: $ff
    rst $38                                       ; $53d7: $ff
    rst $38                                       ; $53d8: $ff
    rst $38                                       ; $53d9: $ff
    rst $38                                       ; $53da: $ff
    rst $38                                       ; $53db: $ff
    rst $38                                       ; $53dc: $ff
    rst $38                                       ; $53dd: $ff
    rst $38                                       ; $53de: $ff
    rst $38                                       ; $53df: $ff
    rst $38                                       ; $53e0: $ff
    rst $38                                       ; $53e1: $ff
    rst $38                                       ; $53e2: $ff
    rst $38                                       ; $53e3: $ff
    rst $38                                       ; $53e4: $ff
    rst $38                                       ; $53e5: $ff
    rst $38                                       ; $53e6: $ff
    rst $38                                       ; $53e7: $ff
    rst $38                                       ; $53e8: $ff
    rst $38                                       ; $53e9: $ff
    rst $38                                       ; $53ea: $ff
    rst $38                                       ; $53eb: $ff
    rst $38                                       ; $53ec: $ff
    rst $38                                       ; $53ed: $ff
    rst $38                                       ; $53ee: $ff
    rst $38                                       ; $53ef: $ff
    rst $38                                       ; $53f0: $ff
    rst $38                                       ; $53f1: $ff
    rst $38                                       ; $53f2: $ff
    rst $38                                       ; $53f3: $ff
    rst $38                                       ; $53f4: $ff
    rst $38                                       ; $53f5: $ff
    rst $38                                       ; $53f6: $ff
    rst $38                                       ; $53f7: $ff
    rst $38                                       ; $53f8: $ff
    rst $38                                       ; $53f9: $ff
    rst $38                                       ; $53fa: $ff
    rst $38                                       ; $53fb: $ff
    rst $38                                       ; $53fc: $ff
    rst $38                                       ; $53fd: $ff
    rst $38                                       ; $53fe: $ff
    rst $38                                       ; $53ff: $ff
    rst $38                                       ; $5400: $ff
    rst $38                                       ; $5401: $ff
    rst $38                                       ; $5402: $ff
    rst $38                                       ; $5403: $ff
    rst $38                                       ; $5404: $ff
    rst $38                                       ; $5405: $ff
    rst $38                                       ; $5406: $ff
    rst $38                                       ; $5407: $ff
    rst $38                                       ; $5408: $ff
    rst $38                                       ; $5409: $ff
    rst $38                                       ; $540a: $ff
    rst $38                                       ; $540b: $ff
    rst $38                                       ; $540c: $ff
    rst $38                                       ; $540d: $ff
    rst $38                                       ; $540e: $ff
    rst $38                                       ; $540f: $ff
    rst $38                                       ; $5410: $ff
    rst $38                                       ; $5411: $ff
    rst $38                                       ; $5412: $ff
    rst $38                                       ; $5413: $ff
    rst $38                                       ; $5414: $ff
    rst $38                                       ; $5415: $ff
    rst $38                                       ; $5416: $ff
    rst $38                                       ; $5417: $ff
    rst $38                                       ; $5418: $ff
    rst $38                                       ; $5419: $ff
    rst $38                                       ; $541a: $ff
    rst $38                                       ; $541b: $ff
    rst $38                                       ; $541c: $ff
    rst $38                                       ; $541d: $ff
    rst $38                                       ; $541e: $ff
    rst $38                                       ; $541f: $ff
    rst $38                                       ; $5420: $ff
    rst $38                                       ; $5421: $ff
    rst $38                                       ; $5422: $ff
    rst $38                                       ; $5423: $ff
    rst $38                                       ; $5424: $ff
    rst $38                                       ; $5425: $ff
    rst $38                                       ; $5426: $ff
    rst $38                                       ; $5427: $ff
    rst $38                                       ; $5428: $ff
    rst $38                                       ; $5429: $ff
    rst $38                                       ; $542a: $ff
    rst $38                                       ; $542b: $ff
    rst $38                                       ; $542c: $ff
    rst $38                                       ; $542d: $ff
    rst $38                                       ; $542e: $ff
    rst $38                                       ; $542f: $ff
    rst $38                                       ; $5430: $ff
    rst $38                                       ; $5431: $ff
    rst $38                                       ; $5432: $ff
    rst $38                                       ; $5433: $ff
    rst $38                                       ; $5434: $ff
    rst $38                                       ; $5435: $ff
    rst $38                                       ; $5436: $ff
    rst $38                                       ; $5437: $ff
    rst $38                                       ; $5438: $ff
    rst $38                                       ; $5439: $ff
    rst $38                                       ; $543a: $ff
    rst $38                                       ; $543b: $ff
    rst $38                                       ; $543c: $ff
    rst $38                                       ; $543d: $ff
    rst $38                                       ; $543e: $ff
    rst $38                                       ; $543f: $ff
    rst $38                                       ; $5440: $ff
    rst $38                                       ; $5441: $ff
    rst $38                                       ; $5442: $ff
    rst $38                                       ; $5443: $ff
    rst $38                                       ; $5444: $ff
    rst $38                                       ; $5445: $ff
    rst $38                                       ; $5446: $ff
    rst $38                                       ; $5447: $ff
    rst $38                                       ; $5448: $ff
    rst $38                                       ; $5449: $ff
    rst $38                                       ; $544a: $ff
    rst $38                                       ; $544b: $ff
    rst $38                                       ; $544c: $ff
    rst $38                                       ; $544d: $ff
    rst $38                                       ; $544e: $ff
    rst $38                                       ; $544f: $ff
    rst $38                                       ; $5450: $ff
    rst $38                                       ; $5451: $ff
    rst $38                                       ; $5452: $ff
    rst $38                                       ; $5453: $ff
    rst $38                                       ; $5454: $ff
    rst $38                                       ; $5455: $ff
    rst $38                                       ; $5456: $ff
    rst $38                                       ; $5457: $ff
    rst $38                                       ; $5458: $ff
    rst $38                                       ; $5459: $ff
    rst $38                                       ; $545a: $ff
    rst $38                                       ; $545b: $ff
    rst $38                                       ; $545c: $ff
    rst $38                                       ; $545d: $ff
    rst $38                                       ; $545e: $ff
    rst $38                                       ; $545f: $ff
    rst $38                                       ; $5460: $ff
    rst $38                                       ; $5461: $ff
    rst $38                                       ; $5462: $ff
    rst $38                                       ; $5463: $ff
    rst $38                                       ; $5464: $ff
    rst $38                                       ; $5465: $ff
    rst $38                                       ; $5466: $ff
    rst $38                                       ; $5467: $ff
    rst $38                                       ; $5468: $ff
    rst $38                                       ; $5469: $ff
    rst $38                                       ; $546a: $ff
    rst $38                                       ; $546b: $ff
    rst $38                                       ; $546c: $ff
    rst $38                                       ; $546d: $ff
    rst $38                                       ; $546e: $ff
    rst $38                                       ; $546f: $ff
    rst $38                                       ; $5470: $ff
    rst $38                                       ; $5471: $ff
    rst $38                                       ; $5472: $ff
    rst $38                                       ; $5473: $ff
    rst $38                                       ; $5474: $ff
    rst $38                                       ; $5475: $ff
    rst $38                                       ; $5476: $ff
    rst $38                                       ; $5477: $ff
    rst $38                                       ; $5478: $ff
    rst $38                                       ; $5479: $ff
    rst $38                                       ; $547a: $ff
    rst $38                                       ; $547b: $ff
    rst $38                                       ; $547c: $ff
    rst $38                                       ; $547d: $ff
    rst $38                                       ; $547e: $ff
    rst $38                                       ; $547f: $ff
    rst $38                                       ; $5480: $ff
    rst $38                                       ; $5481: $ff
    rst $38                                       ; $5482: $ff
    rst $38                                       ; $5483: $ff
    rst $38                                       ; $5484: $ff
    rst $38                                       ; $5485: $ff
    rst $38                                       ; $5486: $ff
    rst $38                                       ; $5487: $ff
    rst $38                                       ; $5488: $ff
    rst $38                                       ; $5489: $ff
    rst $38                                       ; $548a: $ff
    rst $38                                       ; $548b: $ff
    rst $38                                       ; $548c: $ff
    rst $38                                       ; $548d: $ff
    rst $38                                       ; $548e: $ff
    rst $38                                       ; $548f: $ff
    rst $38                                       ; $5490: $ff
    rst $38                                       ; $5491: $ff
    rst $38                                       ; $5492: $ff
    rst $38                                       ; $5493: $ff
    rst $38                                       ; $5494: $ff
    rst $38                                       ; $5495: $ff
    rst $38                                       ; $5496: $ff
    rst $38                                       ; $5497: $ff
    rst $38                                       ; $5498: $ff
    rst $38                                       ; $5499: $ff
    rst $38                                       ; $549a: $ff
    rst $38                                       ; $549b: $ff
    rst $38                                       ; $549c: $ff
    rst $38                                       ; $549d: $ff
    rst $38                                       ; $549e: $ff
    rst $38                                       ; $549f: $ff
    rst $38                                       ; $54a0: $ff
    rst $38                                       ; $54a1: $ff
    rst $38                                       ; $54a2: $ff
    rst $38                                       ; $54a3: $ff
    rst $38                                       ; $54a4: $ff
    rst $38                                       ; $54a5: $ff
    rst $38                                       ; $54a6: $ff
    rst $38                                       ; $54a7: $ff
    rst $38                                       ; $54a8: $ff
    rst $38                                       ; $54a9: $ff
    rst $38                                       ; $54aa: $ff
    rst $38                                       ; $54ab: $ff
    rst $38                                       ; $54ac: $ff
    rst $38                                       ; $54ad: $ff
    rst $38                                       ; $54ae: $ff
    rst $38                                       ; $54af: $ff
    rst $38                                       ; $54b0: $ff
    rst $38                                       ; $54b1: $ff
    rst $38                                       ; $54b2: $ff
    rst $38                                       ; $54b3: $ff
    rst $38                                       ; $54b4: $ff
    rst $38                                       ; $54b5: $ff
    rst $38                                       ; $54b6: $ff
    rst $38                                       ; $54b7: $ff
    rst $38                                       ; $54b8: $ff
    rst $38                                       ; $54b9: $ff
    rst $38                                       ; $54ba: $ff
    rst $38                                       ; $54bb: $ff
    rst $38                                       ; $54bc: $ff
    rst $38                                       ; $54bd: $ff
    rst $38                                       ; $54be: $ff
    rst $38                                       ; $54bf: $ff
    rst $38                                       ; $54c0: $ff
    rst $38                                       ; $54c1: $ff
    rst $38                                       ; $54c2: $ff
    rst $38                                       ; $54c3: $ff
    rst $38                                       ; $54c4: $ff
    rst $38                                       ; $54c5: $ff
    rst $38                                       ; $54c6: $ff
    rst $38                                       ; $54c7: $ff
    rst $38                                       ; $54c8: $ff
    rst $38                                       ; $54c9: $ff
    rst $38                                       ; $54ca: $ff
    rst $38                                       ; $54cb: $ff
    rst $38                                       ; $54cc: $ff
    rst $38                                       ; $54cd: $ff
    rst $38                                       ; $54ce: $ff
    rst $38                                       ; $54cf: $ff
    rst $38                                       ; $54d0: $ff
    rst $38                                       ; $54d1: $ff
    rst $38                                       ; $54d2: $ff
    rst $38                                       ; $54d3: $ff
    rst $38                                       ; $54d4: $ff
    rst $38                                       ; $54d5: $ff
    rst $38                                       ; $54d6: $ff
    rst $38                                       ; $54d7: $ff
    rst $38                                       ; $54d8: $ff
    rst $38                                       ; $54d9: $ff
    rst $38                                       ; $54da: $ff
    rst $38                                       ; $54db: $ff
    rst $38                                       ; $54dc: $ff
    rst $38                                       ; $54dd: $ff
    rst $38                                       ; $54de: $ff
    rst $38                                       ; $54df: $ff
    rst $38                                       ; $54e0: $ff
    rst $38                                       ; $54e1: $ff
    rst $38                                       ; $54e2: $ff
    rst $38                                       ; $54e3: $ff
    rst $38                                       ; $54e4: $ff
    rst $38                                       ; $54e5: $ff
    rst $38                                       ; $54e6: $ff
    rst $38                                       ; $54e7: $ff
    rst $38                                       ; $54e8: $ff
    rst $38                                       ; $54e9: $ff
    rst $38                                       ; $54ea: $ff
    rst $38                                       ; $54eb: $ff
    rst $38                                       ; $54ec: $ff
    rst $38                                       ; $54ed: $ff
    rst $38                                       ; $54ee: $ff
    rst $38                                       ; $54ef: $ff
    rst $38                                       ; $54f0: $ff
    rst $38                                       ; $54f1: $ff
    rst $38                                       ; $54f2: $ff
    rst $38                                       ; $54f3: $ff
    rst $38                                       ; $54f4: $ff
    rst $38                                       ; $54f5: $ff
    rst $38                                       ; $54f6: $ff
    rst $38                                       ; $54f7: $ff
    rst $38                                       ; $54f8: $ff
    rst $38                                       ; $54f9: $ff
    rst $38                                       ; $54fa: $ff
    rst $38                                       ; $54fb: $ff
    rst $38                                       ; $54fc: $ff
    rst $38                                       ; $54fd: $ff
    rst $38                                       ; $54fe: $ff
    rst $38                                       ; $54ff: $ff
    rst $38                                       ; $5500: $ff
    rst $38                                       ; $5501: $ff
    rst $38                                       ; $5502: $ff
    rst $38                                       ; $5503: $ff
    rst $38                                       ; $5504: $ff
    rst $38                                       ; $5505: $ff
    rst $38                                       ; $5506: $ff
    rst $38                                       ; $5507: $ff
    rst $38                                       ; $5508: $ff
    rst $38                                       ; $5509: $ff
    rst $38                                       ; $550a: $ff
    rst $38                                       ; $550b: $ff
    rst $38                                       ; $550c: $ff
    rst $38                                       ; $550d: $ff
    rst $38                                       ; $550e: $ff
    rst $38                                       ; $550f: $ff
    rst $38                                       ; $5510: $ff
    rst $38                                       ; $5511: $ff
    rst $38                                       ; $5512: $ff
    rst $38                                       ; $5513: $ff
    rst $38                                       ; $5514: $ff
    rst $38                                       ; $5515: $ff
    rst $38                                       ; $5516: $ff
    rst $38                                       ; $5517: $ff
    rst $38                                       ; $5518: $ff
    rst $38                                       ; $5519: $ff
    rst $38                                       ; $551a: $ff
    rst $38                                       ; $551b: $ff
    rst $38                                       ; $551c: $ff
    rst $38                                       ; $551d: $ff
    rst $38                                       ; $551e: $ff
    rst $38                                       ; $551f: $ff
    rst $38                                       ; $5520: $ff
    rst $38                                       ; $5521: $ff
    rst $38                                       ; $5522: $ff
    rst $38                                       ; $5523: $ff
    rst $38                                       ; $5524: $ff
    rst $38                                       ; $5525: $ff
    rst $38                                       ; $5526: $ff
    rst $38                                       ; $5527: $ff
    rst $38                                       ; $5528: $ff
    rst $38                                       ; $5529: $ff
    rst $38                                       ; $552a: $ff
    rst $38                                       ; $552b: $ff
    rst $38                                       ; $552c: $ff
    rst $38                                       ; $552d: $ff
    rst $38                                       ; $552e: $ff
    rst $38                                       ; $552f: $ff
    rst $38                                       ; $5530: $ff
    rst $38                                       ; $5531: $ff
    rst $38                                       ; $5532: $ff
    rst $38                                       ; $5533: $ff
    rst $38                                       ; $5534: $ff
    rst $38                                       ; $5535: $ff
    rst $38                                       ; $5536: $ff
    rst $38                                       ; $5537: $ff
    rst $38                                       ; $5538: $ff
    rst $38                                       ; $5539: $ff
    rst $38                                       ; $553a: $ff
    rst $38                                       ; $553b: $ff
    rst $38                                       ; $553c: $ff
    rst $38                                       ; $553d: $ff
    rst $38                                       ; $553e: $ff
    rst $38                                       ; $553f: $ff
    rst $38                                       ; $5540: $ff
    rst $38                                       ; $5541: $ff
    rst $38                                       ; $5542: $ff
    rst $38                                       ; $5543: $ff
    rst $38                                       ; $5544: $ff
    rst $38                                       ; $5545: $ff
    rst $38                                       ; $5546: $ff
    rst $38                                       ; $5547: $ff
    rst $38                                       ; $5548: $ff
    rst $38                                       ; $5549: $ff
    rst $38                                       ; $554a: $ff
    rst $38                                       ; $554b: $ff
    rst $38                                       ; $554c: $ff
    rst $38                                       ; $554d: $ff
    rst $38                                       ; $554e: $ff
    rst $38                                       ; $554f: $ff
    rst $38                                       ; $5550: $ff
    rst $38                                       ; $5551: $ff
    rst $38                                       ; $5552: $ff
    rst $38                                       ; $5553: $ff
    rst $38                                       ; $5554: $ff
    rst $38                                       ; $5555: $ff
    rst $38                                       ; $5556: $ff
    rst $38                                       ; $5557: $ff
    rst $38                                       ; $5558: $ff

Call_032_5559:
    rst $38                                       ; $5559: $ff
    rst $38                                       ; $555a: $ff
    rst $38                                       ; $555b: $ff
    rst $38                                       ; $555c: $ff
    rst $38                                       ; $555d: $ff
    rst $38                                       ; $555e: $ff
    rst $38                                       ; $555f: $ff
    rst $38                                       ; $5560: $ff
    rst $38                                       ; $5561: $ff
    rst $38                                       ; $5562: $ff
    rst $38                                       ; $5563: $ff
    rst $38                                       ; $5564: $ff
    rst $38                                       ; $5565: $ff
    rst $38                                       ; $5566: $ff
    rst $38                                       ; $5567: $ff
    rst $38                                       ; $5568: $ff
    rst $38                                       ; $5569: $ff
    rst $38                                       ; $556a: $ff
    rst $38                                       ; $556b: $ff
    rst $38                                       ; $556c: $ff
    rst $38                                       ; $556d: $ff
    rst $38                                       ; $556e: $ff
    rst $38                                       ; $556f: $ff
    rst $38                                       ; $5570: $ff
    rst $38                                       ; $5571: $ff
    rst $38                                       ; $5572: $ff
    rst $38                                       ; $5573: $ff
    rst $38                                       ; $5574: $ff
    rst $38                                       ; $5575: $ff
    rst $38                                       ; $5576: $ff
    rst $38                                       ; $5577: $ff
    rst $38                                       ; $5578: $ff
    rst $38                                       ; $5579: $ff
    rst $38                                       ; $557a: $ff
    rst $38                                       ; $557b: $ff
    rst $38                                       ; $557c: $ff
    rst $38                                       ; $557d: $ff
    rst $38                                       ; $557e: $ff
    rst $38                                       ; $557f: $ff
    rst $38                                       ; $5580: $ff
    rst $38                                       ; $5581: $ff
    rst $38                                       ; $5582: $ff
    rst $38                                       ; $5583: $ff
    rst $38                                       ; $5584: $ff
    rst $38                                       ; $5585: $ff
    rst $38                                       ; $5586: $ff
    rst $38                                       ; $5587: $ff
    rst $38                                       ; $5588: $ff
    rst $38                                       ; $5589: $ff
    rst $38                                       ; $558a: $ff
    rst $38                                       ; $558b: $ff
    rst $38                                       ; $558c: $ff
    rst $38                                       ; $558d: $ff
    rst $38                                       ; $558e: $ff
    rst $38                                       ; $558f: $ff
    rst $38                                       ; $5590: $ff
    rst $38                                       ; $5591: $ff
    rst $38                                       ; $5592: $ff
    rst $38                                       ; $5593: $ff
    rst $38                                       ; $5594: $ff
    rst $38                                       ; $5595: $ff
    rst $38                                       ; $5596: $ff
    rst $38                                       ; $5597: $ff
    rst $38                                       ; $5598: $ff
    rst $38                                       ; $5599: $ff
    rst $38                                       ; $559a: $ff
    rst $38                                       ; $559b: $ff
    rst $38                                       ; $559c: $ff
    rst $38                                       ; $559d: $ff
    rst $38                                       ; $559e: $ff
    rst $38                                       ; $559f: $ff
    rst $38                                       ; $55a0: $ff
    rst $38                                       ; $55a1: $ff
    rst $38                                       ; $55a2: $ff
    rst $38                                       ; $55a3: $ff
    rst $38                                       ; $55a4: $ff
    rst $38                                       ; $55a5: $ff
    rst $38                                       ; $55a6: $ff
    rst $38                                       ; $55a7: $ff
    rst $38                                       ; $55a8: $ff
    rst $38                                       ; $55a9: $ff
    rst $38                                       ; $55aa: $ff
    rst $38                                       ; $55ab: $ff
    rst $38                                       ; $55ac: $ff
    rst $38                                       ; $55ad: $ff
    rst $38                                       ; $55ae: $ff
    rst $38                                       ; $55af: $ff
    rst $38                                       ; $55b0: $ff
    rst $38                                       ; $55b1: $ff
    rst $38                                       ; $55b2: $ff
    rst $38                                       ; $55b3: $ff
    rst $38                                       ; $55b4: $ff
    rst $38                                       ; $55b5: $ff
    rst $38                                       ; $55b6: $ff
    rst $38                                       ; $55b7: $ff
    rst $38                                       ; $55b8: $ff
    rst $38                                       ; $55b9: $ff
    rst $38                                       ; $55ba: $ff
    rst $38                                       ; $55bb: $ff
    rst $38                                       ; $55bc: $ff
    rst $38                                       ; $55bd: $ff
    rst $38                                       ; $55be: $ff
    rst $38                                       ; $55bf: $ff
    rst $38                                       ; $55c0: $ff
    rst $38                                       ; $55c1: $ff
    rst $38                                       ; $55c2: $ff
    rst $38                                       ; $55c3: $ff
    rst $38                                       ; $55c4: $ff
    rst $38                                       ; $55c5: $ff
    rst $38                                       ; $55c6: $ff
    rst $38                                       ; $55c7: $ff
    rst $38                                       ; $55c8: $ff
    rst $38                                       ; $55c9: $ff
    rst $38                                       ; $55ca: $ff
    rst $38                                       ; $55cb: $ff
    rst $38                                       ; $55cc: $ff
    rst $38                                       ; $55cd: $ff
    rst $38                                       ; $55ce: $ff
    rst $38                                       ; $55cf: $ff
    rst $38                                       ; $55d0: $ff
    rst $38                                       ; $55d1: $ff
    rst $38                                       ; $55d2: $ff
    rst $38                                       ; $55d3: $ff
    rst $38                                       ; $55d4: $ff
    rst $38                                       ; $55d5: $ff
    rst $38                                       ; $55d6: $ff
    rst $38                                       ; $55d7: $ff
    rst $38                                       ; $55d8: $ff
    rst $38                                       ; $55d9: $ff
    rst $38                                       ; $55da: $ff
    rst $38                                       ; $55db: $ff
    rst $38                                       ; $55dc: $ff
    rst $38                                       ; $55dd: $ff
    rst $38                                       ; $55de: $ff
    rst $38                                       ; $55df: $ff
    rst $38                                       ; $55e0: $ff
    rst $38                                       ; $55e1: $ff
    rst $38                                       ; $55e2: $ff
    rst $38                                       ; $55e3: $ff
    rst $38                                       ; $55e4: $ff
    rst $38                                       ; $55e5: $ff
    rst $38                                       ; $55e6: $ff
    rst $38                                       ; $55e7: $ff
    rst $38                                       ; $55e8: $ff
    rst $38                                       ; $55e9: $ff
    rst $38                                       ; $55ea: $ff
    rst $38                                       ; $55eb: $ff
    rst $38                                       ; $55ec: $ff
    rst $38                                       ; $55ed: $ff
    rst $38                                       ; $55ee: $ff
    rst $38                                       ; $55ef: $ff
    rst $38                                       ; $55f0: $ff
    rst $38                                       ; $55f1: $ff
    rst $38                                       ; $55f2: $ff
    rst $38                                       ; $55f3: $ff
    rst $38                                       ; $55f4: $ff
    rst $38                                       ; $55f5: $ff
    rst $38                                       ; $55f6: $ff
    rst $38                                       ; $55f7: $ff
    rst $38                                       ; $55f8: $ff
    rst $38                                       ; $55f9: $ff
    rst $38                                       ; $55fa: $ff
    rst $38                                       ; $55fb: $ff
    rst $38                                       ; $55fc: $ff
    rst $38                                       ; $55fd: $ff
    rst $38                                       ; $55fe: $ff
    rst $38                                       ; $55ff: $ff
    rst $38                                       ; $5600: $ff
    rst $38                                       ; $5601: $ff
    rst $38                                       ; $5602: $ff
    rst $38                                       ; $5603: $ff
    rst $38                                       ; $5604: $ff
    rst $38                                       ; $5605: $ff
    rst $38                                       ; $5606: $ff
    rst $38                                       ; $5607: $ff
    rst $38                                       ; $5608: $ff
    rst $38                                       ; $5609: $ff
    rst $38                                       ; $560a: $ff
    rst $38                                       ; $560b: $ff
    rst $38                                       ; $560c: $ff
    rst $38                                       ; $560d: $ff
    rst $38                                       ; $560e: $ff
    rst $38                                       ; $560f: $ff
    rst $38                                       ; $5610: $ff
    rst $38                                       ; $5611: $ff
    rst $38                                       ; $5612: $ff
    rst $38                                       ; $5613: $ff
    rst $38                                       ; $5614: $ff
    rst $38                                       ; $5615: $ff
    rst $38                                       ; $5616: $ff
    rst $38                                       ; $5617: $ff
    rst $38                                       ; $5618: $ff
    rst $38                                       ; $5619: $ff
    rst $38                                       ; $561a: $ff
    rst $38                                       ; $561b: $ff
    rst $38                                       ; $561c: $ff
    rst $38                                       ; $561d: $ff
    rst $38                                       ; $561e: $ff
    rst $38                                       ; $561f: $ff
    rst $38                                       ; $5620: $ff
    rst $38                                       ; $5621: $ff
    rst $38                                       ; $5622: $ff
    rst $38                                       ; $5623: $ff
    rst $38                                       ; $5624: $ff
    rst $38                                       ; $5625: $ff
    rst $38                                       ; $5626: $ff
    rst $38                                       ; $5627: $ff
    rst $38                                       ; $5628: $ff
    rst $38                                       ; $5629: $ff
    rst $38                                       ; $562a: $ff
    rst $38                                       ; $562b: $ff
    rst $38                                       ; $562c: $ff
    rst $38                                       ; $562d: $ff
    rst $38                                       ; $562e: $ff
    rst $38                                       ; $562f: $ff
    rst $38                                       ; $5630: $ff
    rst $38                                       ; $5631: $ff
    rst $38                                       ; $5632: $ff
    rst $38                                       ; $5633: $ff
    rst $38                                       ; $5634: $ff
    rst $38                                       ; $5635: $ff
    rst $38                                       ; $5636: $ff
    rst $38                                       ; $5637: $ff
    rst $38                                       ; $5638: $ff
    rst $38                                       ; $5639: $ff
    rst $38                                       ; $563a: $ff
    rst $38                                       ; $563b: $ff
    rst $38                                       ; $563c: $ff
    rst $38                                       ; $563d: $ff
    rst $38                                       ; $563e: $ff
    rst $38                                       ; $563f: $ff
    rst $38                                       ; $5640: $ff
    rst $38                                       ; $5641: $ff
    rst $38                                       ; $5642: $ff
    rst $38                                       ; $5643: $ff
    rst $38                                       ; $5644: $ff
    rst $38                                       ; $5645: $ff
    rst $38                                       ; $5646: $ff
    rst $38                                       ; $5647: $ff
    rst $38                                       ; $5648: $ff
    rst $38                                       ; $5649: $ff
    rst $38                                       ; $564a: $ff
    rst $38                                       ; $564b: $ff
    rst $38                                       ; $564c: $ff
    rst $38                                       ; $564d: $ff
    rst $38                                       ; $564e: $ff
    rst $38                                       ; $564f: $ff
    rst $38                                       ; $5650: $ff
    rst $38                                       ; $5651: $ff
    rst $38                                       ; $5652: $ff
    rst $38                                       ; $5653: $ff
    rst $38                                       ; $5654: $ff
    rst $38                                       ; $5655: $ff
    rst $38                                       ; $5656: $ff
    rst $38                                       ; $5657: $ff
    rst $38                                       ; $5658: $ff
    rst $38                                       ; $5659: $ff
    rst $38                                       ; $565a: $ff
    rst $38                                       ; $565b: $ff
    rst $38                                       ; $565c: $ff
    rst $38                                       ; $565d: $ff
    rst $38                                       ; $565e: $ff
    rst $38                                       ; $565f: $ff
    rst $38                                       ; $5660: $ff
    rst $38                                       ; $5661: $ff
    rst $38                                       ; $5662: $ff
    rst $38                                       ; $5663: $ff
    rst $38                                       ; $5664: $ff
    rst $38                                       ; $5665: $ff
    rst $38                                       ; $5666: $ff
    rst $38                                       ; $5667: $ff
    rst $38                                       ; $5668: $ff
    rst $38                                       ; $5669: $ff
    rst $38                                       ; $566a: $ff
    rst $38                                       ; $566b: $ff
    rst $38                                       ; $566c: $ff
    rst $38                                       ; $566d: $ff
    rst $38                                       ; $566e: $ff
    rst $38                                       ; $566f: $ff
    rst $38                                       ; $5670: $ff
    rst $38                                       ; $5671: $ff
    rst $38                                       ; $5672: $ff
    rst $38                                       ; $5673: $ff
    rst $38                                       ; $5674: $ff
    rst $38                                       ; $5675: $ff
    rst $38                                       ; $5676: $ff
    rst $38                                       ; $5677: $ff
    rst $38                                       ; $5678: $ff
    rst $38                                       ; $5679: $ff
    rst $38                                       ; $567a: $ff
    rst $38                                       ; $567b: $ff
    rst $38                                       ; $567c: $ff
    rst $38                                       ; $567d: $ff
    rst $38                                       ; $567e: $ff
    rst $38                                       ; $567f: $ff
    rst $38                                       ; $5680: $ff
    rst $38                                       ; $5681: $ff
    rst $38                                       ; $5682: $ff
    rst $38                                       ; $5683: $ff
    rst $38                                       ; $5684: $ff
    rst $38                                       ; $5685: $ff
    rst $38                                       ; $5686: $ff
    rst $38                                       ; $5687: $ff
    rst $38                                       ; $5688: $ff
    rst $38                                       ; $5689: $ff
    rst $38                                       ; $568a: $ff
    rst $38                                       ; $568b: $ff
    rst $38                                       ; $568c: $ff
    rst $38                                       ; $568d: $ff
    rst $38                                       ; $568e: $ff
    rst $38                                       ; $568f: $ff
    rst $38                                       ; $5690: $ff
    rst $38                                       ; $5691: $ff
    rst $38                                       ; $5692: $ff
    rst $38                                       ; $5693: $ff
    rst $38                                       ; $5694: $ff
    rst $38                                       ; $5695: $ff
    rst $38                                       ; $5696: $ff
    rst $38                                       ; $5697: $ff
    rst $38                                       ; $5698: $ff
    rst $38                                       ; $5699: $ff
    rst $38                                       ; $569a: $ff
    rst $38                                       ; $569b: $ff
    rst $38                                       ; $569c: $ff
    rst $38                                       ; $569d: $ff
    rst $38                                       ; $569e: $ff
    rst $38                                       ; $569f: $ff
    rst $38                                       ; $56a0: $ff
    rst $38                                       ; $56a1: $ff
    rst $38                                       ; $56a2: $ff
    rst $38                                       ; $56a3: $ff
    rst $38                                       ; $56a4: $ff
    rst $38                                       ; $56a5: $ff
    rst $38                                       ; $56a6: $ff
    rst $38                                       ; $56a7: $ff
    rst $38                                       ; $56a8: $ff
    rst $38                                       ; $56a9: $ff
    rst $38                                       ; $56aa: $ff
    rst $38                                       ; $56ab: $ff
    rst $38                                       ; $56ac: $ff
    rst $38                                       ; $56ad: $ff
    rst $38                                       ; $56ae: $ff
    rst $38                                       ; $56af: $ff
    rst $38                                       ; $56b0: $ff
    rst $38                                       ; $56b1: $ff
    rst $38                                       ; $56b2: $ff
    rst $38                                       ; $56b3: $ff
    rst $38                                       ; $56b4: $ff
    rst $38                                       ; $56b5: $ff
    rst $38                                       ; $56b6: $ff
    rst $38                                       ; $56b7: $ff
    rst $38                                       ; $56b8: $ff
    rst $38                                       ; $56b9: $ff
    rst $38                                       ; $56ba: $ff
    rst $38                                       ; $56bb: $ff
    rst $38                                       ; $56bc: $ff
    rst $38                                       ; $56bd: $ff
    rst $38                                       ; $56be: $ff
    rst $38                                       ; $56bf: $ff
    rst $38                                       ; $56c0: $ff
    rst $38                                       ; $56c1: $ff
    rst $38                                       ; $56c2: $ff
    rst $38                                       ; $56c3: $ff
    rst $38                                       ; $56c4: $ff
    rst $38                                       ; $56c5: $ff
    rst $38                                       ; $56c6: $ff
    rst $38                                       ; $56c7: $ff
    rst $38                                       ; $56c8: $ff
    rst $38                                       ; $56c9: $ff
    rst $38                                       ; $56ca: $ff
    rst $38                                       ; $56cb: $ff
    rst $38                                       ; $56cc: $ff
    rst $38                                       ; $56cd: $ff
    rst $38                                       ; $56ce: $ff
    rst $38                                       ; $56cf: $ff
    rst $38                                       ; $56d0: $ff
    rst $38                                       ; $56d1: $ff
    rst $38                                       ; $56d2: $ff
    rst $38                                       ; $56d3: $ff
    rst $38                                       ; $56d4: $ff
    rst $38                                       ; $56d5: $ff
    rst $38                                       ; $56d6: $ff
    rst $38                                       ; $56d7: $ff
    rst $38                                       ; $56d8: $ff
    rst $38                                       ; $56d9: $ff
    rst $38                                       ; $56da: $ff
    rst $38                                       ; $56db: $ff
    rst $38                                       ; $56dc: $ff
    rst $38                                       ; $56dd: $ff
    rst $38                                       ; $56de: $ff
    rst $38                                       ; $56df: $ff
    rst $38                                       ; $56e0: $ff
    rst $38                                       ; $56e1: $ff
    rst $38                                       ; $56e2: $ff
    rst $38                                       ; $56e3: $ff
    rst $38                                       ; $56e4: $ff
    rst $38                                       ; $56e5: $ff
    rst $38                                       ; $56e6: $ff
    rst $38                                       ; $56e7: $ff
    rst $38                                       ; $56e8: $ff
    rst $38                                       ; $56e9: $ff
    rst $38                                       ; $56ea: $ff
    rst $38                                       ; $56eb: $ff
    rst $38                                       ; $56ec: $ff
    rst $38                                       ; $56ed: $ff
    rst $38                                       ; $56ee: $ff
    rst $38                                       ; $56ef: $ff
    rst $38                                       ; $56f0: $ff
    rst $38                                       ; $56f1: $ff
    rst $38                                       ; $56f2: $ff
    rst $38                                       ; $56f3: $ff
    rst $38                                       ; $56f4: $ff
    rst $38                                       ; $56f5: $ff
    rst $38                                       ; $56f6: $ff
    rst $38                                       ; $56f7: $ff
    rst $38                                       ; $56f8: $ff
    rst $38                                       ; $56f9: $ff
    rst $38                                       ; $56fa: $ff
    rst $38                                       ; $56fb: $ff
    rst $38                                       ; $56fc: $ff
    rst $38                                       ; $56fd: $ff
    rst $38                                       ; $56fe: $ff
    rst $38                                       ; $56ff: $ff
    rst $38                                       ; $5700: $ff
    rst $38                                       ; $5701: $ff
    rst $38                                       ; $5702: $ff
    rst $38                                       ; $5703: $ff
    rst $38                                       ; $5704: $ff
    rst $38                                       ; $5705: $ff
    rst $38                                       ; $5706: $ff
    rst $38                                       ; $5707: $ff
    rst $38                                       ; $5708: $ff
    rst $38                                       ; $5709: $ff
    rst $38                                       ; $570a: $ff
    rst $38                                       ; $570b: $ff
    rst $38                                       ; $570c: $ff
    rst $38                                       ; $570d: $ff
    rst $38                                       ; $570e: $ff
    rst $38                                       ; $570f: $ff
    rst $38                                       ; $5710: $ff
    rst $38                                       ; $5711: $ff
    rst $38                                       ; $5712: $ff
    rst $38                                       ; $5713: $ff
    rst $38                                       ; $5714: $ff
    rst $38                                       ; $5715: $ff
    rst $38                                       ; $5716: $ff
    rst $38                                       ; $5717: $ff
    rst $38                                       ; $5718: $ff
    rst $38                                       ; $5719: $ff
    rst $38                                       ; $571a: $ff
    rst $38                                       ; $571b: $ff
    rst $38                                       ; $571c: $ff
    rst $38                                       ; $571d: $ff
    rst $38                                       ; $571e: $ff
    rst $38                                       ; $571f: $ff
    rst $38                                       ; $5720: $ff
    rst $38                                       ; $5721: $ff
    rst $38                                       ; $5722: $ff
    rst $38                                       ; $5723: $ff
    rst $38                                       ; $5724: $ff
    rst $38                                       ; $5725: $ff
    rst $38                                       ; $5726: $ff
    rst $38                                       ; $5727: $ff
    rst $38                                       ; $5728: $ff
    rst $38                                       ; $5729: $ff
    rst $38                                       ; $572a: $ff
    rst $38                                       ; $572b: $ff
    rst $38                                       ; $572c: $ff
    rst $38                                       ; $572d: $ff
    rst $38                                       ; $572e: $ff
    rst $38                                       ; $572f: $ff
    rst $38                                       ; $5730: $ff
    rst $38                                       ; $5731: $ff
    rst $38                                       ; $5732: $ff
    rst $38                                       ; $5733: $ff
    rst $38                                       ; $5734: $ff
    rst $38                                       ; $5735: $ff
    rst $38                                       ; $5736: $ff
    rst $38                                       ; $5737: $ff
    rst $38                                       ; $5738: $ff
    rst $38                                       ; $5739: $ff
    rst $38                                       ; $573a: $ff
    rst $38                                       ; $573b: $ff
    rst $38                                       ; $573c: $ff
    rst $38                                       ; $573d: $ff
    rst $38                                       ; $573e: $ff
    rst $38                                       ; $573f: $ff
    rst $38                                       ; $5740: $ff
    rst $38                                       ; $5741: $ff
    rst $38                                       ; $5742: $ff
    rst $38                                       ; $5743: $ff
    rst $38                                       ; $5744: $ff
    rst $38                                       ; $5745: $ff
    rst $38                                       ; $5746: $ff
    rst $38                                       ; $5747: $ff
    rst $38                                       ; $5748: $ff
    rst $38                                       ; $5749: $ff
    rst $38                                       ; $574a: $ff
    rst $38                                       ; $574b: $ff
    rst $38                                       ; $574c: $ff
    rst $38                                       ; $574d: $ff
    rst $38                                       ; $574e: $ff
    rst $38                                       ; $574f: $ff
    rst $38                                       ; $5750: $ff
    rst $38                                       ; $5751: $ff
    rst $38                                       ; $5752: $ff
    rst $38                                       ; $5753: $ff
    rst $38                                       ; $5754: $ff
    rst $38                                       ; $5755: $ff
    rst $38                                       ; $5756: $ff
    rst $38                                       ; $5757: $ff
    rst $38                                       ; $5758: $ff
    rst $38                                       ; $5759: $ff
    rst $38                                       ; $575a: $ff
    rst $38                                       ; $575b: $ff
    rst $38                                       ; $575c: $ff
    rst $38                                       ; $575d: $ff
    rst $38                                       ; $575e: $ff
    rst $38                                       ; $575f: $ff
    rst $38                                       ; $5760: $ff
    rst $38                                       ; $5761: $ff
    rst $38                                       ; $5762: $ff
    rst $38                                       ; $5763: $ff
    rst $38                                       ; $5764: $ff
    rst $38                                       ; $5765: $ff
    rst $38                                       ; $5766: $ff
    rst $38                                       ; $5767: $ff
    rst $38                                       ; $5768: $ff
    rst $38                                       ; $5769: $ff
    rst $38                                       ; $576a: $ff
    rst $38                                       ; $576b: $ff
    rst $38                                       ; $576c: $ff
    rst $38                                       ; $576d: $ff
    rst $38                                       ; $576e: $ff
    rst $38                                       ; $576f: $ff
    rst $38                                       ; $5770: $ff
    rst $38                                       ; $5771: $ff
    rst $38                                       ; $5772: $ff
    rst $38                                       ; $5773: $ff
    rst $38                                       ; $5774: $ff
    rst $38                                       ; $5775: $ff
    rst $38                                       ; $5776: $ff
    rst $38                                       ; $5777: $ff
    rst $38                                       ; $5778: $ff
    rst $38                                       ; $5779: $ff
    rst $38                                       ; $577a: $ff
    rst $38                                       ; $577b: $ff
    rst $38                                       ; $577c: $ff
    rst $38                                       ; $577d: $ff
    rst $38                                       ; $577e: $ff
    rst $38                                       ; $577f: $ff
    rst $38                                       ; $5780: $ff
    rst $38                                       ; $5781: $ff
    rst $38                                       ; $5782: $ff
    rst $38                                       ; $5783: $ff
    rst $38                                       ; $5784: $ff
    rst $38                                       ; $5785: $ff
    rst $38                                       ; $5786: $ff
    rst $38                                       ; $5787: $ff
    rst $38                                       ; $5788: $ff
    rst $38                                       ; $5789: $ff
    rst $38                                       ; $578a: $ff
    rst $38                                       ; $578b: $ff
    rst $38                                       ; $578c: $ff
    rst $38                                       ; $578d: $ff
    rst $38                                       ; $578e: $ff
    rst $38                                       ; $578f: $ff
    rst $38                                       ; $5790: $ff
    rst $38                                       ; $5791: $ff
    rst $38                                       ; $5792: $ff
    rst $38                                       ; $5793: $ff
    rst $38                                       ; $5794: $ff
    rst $38                                       ; $5795: $ff
    rst $38                                       ; $5796: $ff
    rst $38                                       ; $5797: $ff
    rst $38                                       ; $5798: $ff
    rst $38                                       ; $5799: $ff
    rst $38                                       ; $579a: $ff
    rst $38                                       ; $579b: $ff
    rst $38                                       ; $579c: $ff
    rst $38                                       ; $579d: $ff
    rst $38                                       ; $579e: $ff
    rst $38                                       ; $579f: $ff
    rst $38                                       ; $57a0: $ff
    rst $38                                       ; $57a1: $ff
    rst $38                                       ; $57a2: $ff
    rst $38                                       ; $57a3: $ff
    rst $38                                       ; $57a4: $ff
    rst $38                                       ; $57a5: $ff
    rst $38                                       ; $57a6: $ff
    rst $38                                       ; $57a7: $ff
    rst $38                                       ; $57a8: $ff
    rst $38                                       ; $57a9: $ff
    rst $38                                       ; $57aa: $ff
    rst $38                                       ; $57ab: $ff
    rst $38                                       ; $57ac: $ff
    rst $38                                       ; $57ad: $ff
    rst $38                                       ; $57ae: $ff
    rst $38                                       ; $57af: $ff
    rst $38                                       ; $57b0: $ff
    rst $38                                       ; $57b1: $ff
    rst $38                                       ; $57b2: $ff
    rst $38                                       ; $57b3: $ff
    rst $38                                       ; $57b4: $ff
    rst $38                                       ; $57b5: $ff
    rst $38                                       ; $57b6: $ff
    rst $38                                       ; $57b7: $ff
    rst $38                                       ; $57b8: $ff
    rst $38                                       ; $57b9: $ff
    rst $38                                       ; $57ba: $ff
    rst $38                                       ; $57bb: $ff
    rst $38                                       ; $57bc: $ff
    rst $38                                       ; $57bd: $ff
    rst $38                                       ; $57be: $ff
    rst $38                                       ; $57bf: $ff
    rst $38                                       ; $57c0: $ff
    rst $38                                       ; $57c1: $ff
    rst $38                                       ; $57c2: $ff
    rst $38                                       ; $57c3: $ff
    rst $38                                       ; $57c4: $ff
    rst $38                                       ; $57c5: $ff
    rst $38                                       ; $57c6: $ff
    rst $38                                       ; $57c7: $ff
    rst $38                                       ; $57c8: $ff
    rst $38                                       ; $57c9: $ff
    rst $38                                       ; $57ca: $ff
    rst $38                                       ; $57cb: $ff
    rst $38                                       ; $57cc: $ff
    rst $38                                       ; $57cd: $ff
    rst $38                                       ; $57ce: $ff
    rst $38                                       ; $57cf: $ff
    rst $38                                       ; $57d0: $ff
    rst $38                                       ; $57d1: $ff
    rst $38                                       ; $57d2: $ff
    rst $38                                       ; $57d3: $ff
    rst $38                                       ; $57d4: $ff
    rst $38                                       ; $57d5: $ff
    rst $38                                       ; $57d6: $ff
    rst $38                                       ; $57d7: $ff
    rst $38                                       ; $57d8: $ff
    rst $38                                       ; $57d9: $ff
    rst $38                                       ; $57da: $ff
    rst $38                                       ; $57db: $ff
    rst $38                                       ; $57dc: $ff
    rst $38                                       ; $57dd: $ff
    rst $38                                       ; $57de: $ff
    rst $38                                       ; $57df: $ff
    rst $38                                       ; $57e0: $ff
    rst $38                                       ; $57e1: $ff
    rst $38                                       ; $57e2: $ff
    rst $38                                       ; $57e3: $ff
    rst $38                                       ; $57e4: $ff
    rst $38                                       ; $57e5: $ff
    rst $38                                       ; $57e6: $ff
    rst $38                                       ; $57e7: $ff
    rst $38                                       ; $57e8: $ff
    rst $38                                       ; $57e9: $ff
    rst $38                                       ; $57ea: $ff
    rst $38                                       ; $57eb: $ff
    rst $38                                       ; $57ec: $ff
    rst $38                                       ; $57ed: $ff
    rst $38                                       ; $57ee: $ff
    rst $38                                       ; $57ef: $ff
    rst $38                                       ; $57f0: $ff
    rst $38                                       ; $57f1: $ff
    rst $38                                       ; $57f2: $ff
    rst $38                                       ; $57f3: $ff
    rst $38                                       ; $57f4: $ff
    rst $38                                       ; $57f5: $ff
    rst $38                                       ; $57f6: $ff
    rst $38                                       ; $57f7: $ff
    rst $38                                       ; $57f8: $ff
    rst $38                                       ; $57f9: $ff
    rst $38                                       ; $57fa: $ff
    rst $38                                       ; $57fb: $ff
    rst $38                                       ; $57fc: $ff
    rst $38                                       ; $57fd: $ff
    rst $38                                       ; $57fe: $ff
    rst $38                                       ; $57ff: $ff
    rst $38                                       ; $5800: $ff
    rst $38                                       ; $5801: $ff
    rst $38                                       ; $5802: $ff
    rst $38                                       ; $5803: $ff
    rst $38                                       ; $5804: $ff
    rst $38                                       ; $5805: $ff
    rst $38                                       ; $5806: $ff
    rst $38                                       ; $5807: $ff
    rst $38                                       ; $5808: $ff
    rst $38                                       ; $5809: $ff
    rst $38                                       ; $580a: $ff
    rst $38                                       ; $580b: $ff
    rst $38                                       ; $580c: $ff
    rst $38                                       ; $580d: $ff
    rst $38                                       ; $580e: $ff
    rst $38                                       ; $580f: $ff
    rst $38                                       ; $5810: $ff
    rst $38                                       ; $5811: $ff
    rst $38                                       ; $5812: $ff
    rst $38                                       ; $5813: $ff
    rst $38                                       ; $5814: $ff
    rst $38                                       ; $5815: $ff
    rst $38                                       ; $5816: $ff
    rst $38                                       ; $5817: $ff
    rst $38                                       ; $5818: $ff
    rst $38                                       ; $5819: $ff
    rst $38                                       ; $581a: $ff
    rst $38                                       ; $581b: $ff
    rst $38                                       ; $581c: $ff
    rst $38                                       ; $581d: $ff
    rst $38                                       ; $581e: $ff
    rst $38                                       ; $581f: $ff
    rst $38                                       ; $5820: $ff
    rst $38                                       ; $5821: $ff
    rst $38                                       ; $5822: $ff
    rst $38                                       ; $5823: $ff
    rst $38                                       ; $5824: $ff
    rst $38                                       ; $5825: $ff
    rst $38                                       ; $5826: $ff
    rst $38                                       ; $5827: $ff
    rst $38                                       ; $5828: $ff
    rst $38                                       ; $5829: $ff
    rst $38                                       ; $582a: $ff
    rst $38                                       ; $582b: $ff
    rst $38                                       ; $582c: $ff
    rst $38                                       ; $582d: $ff
    rst $38                                       ; $582e: $ff
    rst $38                                       ; $582f: $ff
    rst $38                                       ; $5830: $ff
    rst $38                                       ; $5831: $ff
    rst $38                                       ; $5832: $ff
    rst $38                                       ; $5833: $ff
    rst $38                                       ; $5834: $ff
    rst $38                                       ; $5835: $ff
    rst $38                                       ; $5836: $ff
    rst $38                                       ; $5837: $ff
    rst $38                                       ; $5838: $ff
    rst $38                                       ; $5839: $ff
    rst $38                                       ; $583a: $ff
    rst $38                                       ; $583b: $ff
    rst $38                                       ; $583c: $ff
    rst $38                                       ; $583d: $ff
    rst $38                                       ; $583e: $ff
    rst $38                                       ; $583f: $ff
    rst $38                                       ; $5840: $ff
    rst $38                                       ; $5841: $ff
    rst $38                                       ; $5842: $ff
    rst $38                                       ; $5843: $ff
    rst $38                                       ; $5844: $ff
    rst $38                                       ; $5845: $ff
    rst $38                                       ; $5846: $ff
    rst $38                                       ; $5847: $ff
    rst $38                                       ; $5848: $ff
    rst $38                                       ; $5849: $ff
    rst $38                                       ; $584a: $ff
    rst $38                                       ; $584b: $ff
    rst $38                                       ; $584c: $ff
    rst $38                                       ; $584d: $ff
    rst $38                                       ; $584e: $ff
    rst $38                                       ; $584f: $ff
    rst $38                                       ; $5850: $ff
    rst $38                                       ; $5851: $ff
    rst $38                                       ; $5852: $ff
    rst $38                                       ; $5853: $ff
    rst $38                                       ; $5854: $ff
    rst $38                                       ; $5855: $ff
    rst $38                                       ; $5856: $ff
    rst $38                                       ; $5857: $ff
    rst $38                                       ; $5858: $ff
    rst $38                                       ; $5859: $ff
    rst $38                                       ; $585a: $ff
    rst $38                                       ; $585b: $ff
    rst $38                                       ; $585c: $ff
    rst $38                                       ; $585d: $ff
    rst $38                                       ; $585e: $ff
    rst $38                                       ; $585f: $ff
    rst $38                                       ; $5860: $ff
    rst $38                                       ; $5861: $ff
    rst $38                                       ; $5862: $ff
    rst $38                                       ; $5863: $ff
    rst $38                                       ; $5864: $ff
    rst $38                                       ; $5865: $ff
    rst $38                                       ; $5866: $ff
    rst $38                                       ; $5867: $ff
    rst $38                                       ; $5868: $ff
    rst $38                                       ; $5869: $ff
    rst $38                                       ; $586a: $ff
    rst $38                                       ; $586b: $ff
    rst $38                                       ; $586c: $ff
    rst $38                                       ; $586d: $ff
    rst $38                                       ; $586e: $ff
    rst $38                                       ; $586f: $ff
    rst $38                                       ; $5870: $ff
    rst $38                                       ; $5871: $ff
    rst $38                                       ; $5872: $ff
    rst $38                                       ; $5873: $ff
    rst $38                                       ; $5874: $ff
    rst $38                                       ; $5875: $ff
    rst $38                                       ; $5876: $ff
    rst $38                                       ; $5877: $ff
    rst $38                                       ; $5878: $ff
    rst $38                                       ; $5879: $ff
    rst $38                                       ; $587a: $ff
    rst $38                                       ; $587b: $ff
    rst $38                                       ; $587c: $ff
    rst $38                                       ; $587d: $ff
    rst $38                                       ; $587e: $ff
    rst $38                                       ; $587f: $ff
    rst $38                                       ; $5880: $ff
    rst $38                                       ; $5881: $ff
    rst $38                                       ; $5882: $ff
    rst $38                                       ; $5883: $ff
    rst $38                                       ; $5884: $ff
    rst $38                                       ; $5885: $ff
    rst $38                                       ; $5886: $ff
    rst $38                                       ; $5887: $ff
    rst $38                                       ; $5888: $ff
    rst $38                                       ; $5889: $ff
    rst $38                                       ; $588a: $ff
    rst $38                                       ; $588b: $ff
    rst $38                                       ; $588c: $ff
    rst $38                                       ; $588d: $ff
    rst $38                                       ; $588e: $ff
    rst $38                                       ; $588f: $ff
    rst $38                                       ; $5890: $ff
    rst $38                                       ; $5891: $ff
    rst $38                                       ; $5892: $ff
    rst $38                                       ; $5893: $ff
    rst $38                                       ; $5894: $ff
    rst $38                                       ; $5895: $ff
    rst $38                                       ; $5896: $ff
    rst $38                                       ; $5897: $ff
    rst $38                                       ; $5898: $ff
    rst $38                                       ; $5899: $ff
    rst $38                                       ; $589a: $ff
    rst $38                                       ; $589b: $ff
    rst $38                                       ; $589c: $ff
    rst $38                                       ; $589d: $ff
    rst $38                                       ; $589e: $ff
    rst $38                                       ; $589f: $ff
    rst $38                                       ; $58a0: $ff
    rst $38                                       ; $58a1: $ff
    rst $38                                       ; $58a2: $ff
    rst $38                                       ; $58a3: $ff
    rst $38                                       ; $58a4: $ff
    rst $38                                       ; $58a5: $ff
    rst $38                                       ; $58a6: $ff
    rst $38                                       ; $58a7: $ff
    rst $38                                       ; $58a8: $ff
    rst $38                                       ; $58a9: $ff
    rst $38                                       ; $58aa: $ff
    rst $38                                       ; $58ab: $ff
    rst $38                                       ; $58ac: $ff
    rst $38                                       ; $58ad: $ff
    rst $38                                       ; $58ae: $ff
    rst $38                                       ; $58af: $ff
    rst $38                                       ; $58b0: $ff
    rst $38                                       ; $58b1: $ff
    rst $38                                       ; $58b2: $ff
    rst $38                                       ; $58b3: $ff
    rst $38                                       ; $58b4: $ff
    rst $38                                       ; $58b5: $ff
    rst $38                                       ; $58b6: $ff
    rst $38                                       ; $58b7: $ff
    rst $38                                       ; $58b8: $ff
    rst $38                                       ; $58b9: $ff
    rst $38                                       ; $58ba: $ff
    rst $38                                       ; $58bb: $ff
    rst $38                                       ; $58bc: $ff
    rst $38                                       ; $58bd: $ff
    rst $38                                       ; $58be: $ff
    rst $38                                       ; $58bf: $ff
    rst $38                                       ; $58c0: $ff
    rst $38                                       ; $58c1: $ff
    rst $38                                       ; $58c2: $ff
    rst $38                                       ; $58c3: $ff
    rst $38                                       ; $58c4: $ff
    rst $38                                       ; $58c5: $ff
    rst $38                                       ; $58c6: $ff
    rst $38                                       ; $58c7: $ff
    rst $38                                       ; $58c8: $ff
    rst $38                                       ; $58c9: $ff
    rst $38                                       ; $58ca: $ff
    rst $38                                       ; $58cb: $ff
    rst $38                                       ; $58cc: $ff
    rst $38                                       ; $58cd: $ff
    rst $38                                       ; $58ce: $ff
    rst $38                                       ; $58cf: $ff
    rst $38                                       ; $58d0: $ff
    rst $38                                       ; $58d1: $ff
    rst $38                                       ; $58d2: $ff
    rst $38                                       ; $58d3: $ff
    rst $38                                       ; $58d4: $ff
    rst $38                                       ; $58d5: $ff
    rst $38                                       ; $58d6: $ff
    rst $38                                       ; $58d7: $ff
    rst $38                                       ; $58d8: $ff
    rst $38                                       ; $58d9: $ff
    rst $38                                       ; $58da: $ff
    rst $38                                       ; $58db: $ff
    rst $38                                       ; $58dc: $ff
    rst $38                                       ; $58dd: $ff
    rst $38                                       ; $58de: $ff
    rst $38                                       ; $58df: $ff
    rst $38                                       ; $58e0: $ff
    rst $38                                       ; $58e1: $ff
    rst $38                                       ; $58e2: $ff
    rst $38                                       ; $58e3: $ff
    rst $38                                       ; $58e4: $ff
    rst $38                                       ; $58e5: $ff
    rst $38                                       ; $58e6: $ff
    rst $38                                       ; $58e7: $ff
    rst $38                                       ; $58e8: $ff
    rst $38                                       ; $58e9: $ff
    rst $38                                       ; $58ea: $ff
    rst $38                                       ; $58eb: $ff
    rst $38                                       ; $58ec: $ff
    rst $38                                       ; $58ed: $ff
    rst $38                                       ; $58ee: $ff
    rst $38                                       ; $58ef: $ff
    rst $38                                       ; $58f0: $ff
    rst $38                                       ; $58f1: $ff
    rst $38                                       ; $58f2: $ff
    rst $38                                       ; $58f3: $ff
    rst $38                                       ; $58f4: $ff
    rst $38                                       ; $58f5: $ff
    rst $38                                       ; $58f6: $ff
    rst $38                                       ; $58f7: $ff
    rst $38                                       ; $58f8: $ff
    rst $38                                       ; $58f9: $ff
    rst $38                                       ; $58fa: $ff
    rst $38                                       ; $58fb: $ff
    rst $38                                       ; $58fc: $ff
    rst $38                                       ; $58fd: $ff
    rst $38                                       ; $58fe: $ff
    rst $38                                       ; $58ff: $ff
    rst $38                                       ; $5900: $ff
    rst $38                                       ; $5901: $ff
    rst $38                                       ; $5902: $ff
    rst $38                                       ; $5903: $ff
    rst $38                                       ; $5904: $ff
    rst $38                                       ; $5905: $ff
    rst $38                                       ; $5906: $ff
    rst $38                                       ; $5907: $ff
    rst $38                                       ; $5908: $ff
    rst $38                                       ; $5909: $ff
    rst $38                                       ; $590a: $ff
    rst $38                                       ; $590b: $ff
    rst $38                                       ; $590c: $ff
    rst $38                                       ; $590d: $ff
    rst $38                                       ; $590e: $ff
    rst $38                                       ; $590f: $ff
    rst $38                                       ; $5910: $ff
    rst $38                                       ; $5911: $ff
    rst $38                                       ; $5912: $ff
    rst $38                                       ; $5913: $ff
    rst $38                                       ; $5914: $ff
    rst $38                                       ; $5915: $ff
    rst $38                                       ; $5916: $ff
    rst $38                                       ; $5917: $ff
    rst $38                                       ; $5918: $ff
    rst $38                                       ; $5919: $ff
    rst $38                                       ; $591a: $ff
    rst $38                                       ; $591b: $ff
    rst $38                                       ; $591c: $ff
    rst $38                                       ; $591d: $ff
    rst $38                                       ; $591e: $ff
    rst $38                                       ; $591f: $ff
    rst $38                                       ; $5920: $ff
    rst $38                                       ; $5921: $ff
    rst $38                                       ; $5922: $ff
    rst $38                                       ; $5923: $ff
    rst $38                                       ; $5924: $ff
    rst $38                                       ; $5925: $ff
    rst $38                                       ; $5926: $ff
    rst $38                                       ; $5927: $ff
    rst $38                                       ; $5928: $ff
    rst $38                                       ; $5929: $ff
    rst $38                                       ; $592a: $ff
    rst $38                                       ; $592b: $ff
    rst $38                                       ; $592c: $ff
    rst $38                                       ; $592d: $ff
    rst $38                                       ; $592e: $ff
    rst $38                                       ; $592f: $ff
    rst $38                                       ; $5930: $ff
    rst $38                                       ; $5931: $ff
    rst $38                                       ; $5932: $ff
    rst $38                                       ; $5933: $ff
    rst $38                                       ; $5934: $ff
    rst $38                                       ; $5935: $ff
    rst $38                                       ; $5936: $ff
    rst $38                                       ; $5937: $ff
    rst $38                                       ; $5938: $ff
    rst $38                                       ; $5939: $ff
    rst $38                                       ; $593a: $ff
    rst $38                                       ; $593b: $ff
    rst $38                                       ; $593c: $ff
    rst $38                                       ; $593d: $ff
    rst $38                                       ; $593e: $ff
    rst $38                                       ; $593f: $ff
    rst $38                                       ; $5940: $ff
    rst $38                                       ; $5941: $ff
    rst $38                                       ; $5942: $ff
    rst $38                                       ; $5943: $ff
    rst $38                                       ; $5944: $ff
    rst $38                                       ; $5945: $ff
    rst $38                                       ; $5946: $ff
    rst $38                                       ; $5947: $ff
    rst $38                                       ; $5948: $ff
    rst $38                                       ; $5949: $ff
    rst $38                                       ; $594a: $ff
    rst $38                                       ; $594b: $ff
    rst $38                                       ; $594c: $ff
    rst $38                                       ; $594d: $ff
    rst $38                                       ; $594e: $ff
    rst $38                                       ; $594f: $ff
    rst $38                                       ; $5950: $ff
    rst $38                                       ; $5951: $ff
    rst $38                                       ; $5952: $ff
    rst $38                                       ; $5953: $ff
    rst $38                                       ; $5954: $ff
    rst $38                                       ; $5955: $ff
    rst $38                                       ; $5956: $ff
    rst $38                                       ; $5957: $ff
    rst $38                                       ; $5958: $ff
    rst $38                                       ; $5959: $ff
    rst $38                                       ; $595a: $ff

Jump_032_595b:
    rst $38                                       ; $595b: $ff
    rst $38                                       ; $595c: $ff
    rst $38                                       ; $595d: $ff
    rst $38                                       ; $595e: $ff
    rst $38                                       ; $595f: $ff
    rst $38                                       ; $5960: $ff
    rst $38                                       ; $5961: $ff
    rst $38                                       ; $5962: $ff
    rst $38                                       ; $5963: $ff
    rst $38                                       ; $5964: $ff
    rst $38                                       ; $5965: $ff
    rst $38                                       ; $5966: $ff
    rst $38                                       ; $5967: $ff
    rst $38                                       ; $5968: $ff
    rst $38                                       ; $5969: $ff
    rst $38                                       ; $596a: $ff
    rst $38                                       ; $596b: $ff
    rst $38                                       ; $596c: $ff
    rst $38                                       ; $596d: $ff
    rst $38                                       ; $596e: $ff
    rst $38                                       ; $596f: $ff
    rst $38                                       ; $5970: $ff
    rst $38                                       ; $5971: $ff
    rst $38                                       ; $5972: $ff
    rst $38                                       ; $5973: $ff
    rst $38                                       ; $5974: $ff
    rst $38                                       ; $5975: $ff
    rst $38                                       ; $5976: $ff
    rst $38                                       ; $5977: $ff
    rst $38                                       ; $5978: $ff
    rst $38                                       ; $5979: $ff
    rst $38                                       ; $597a: $ff
    rst $38                                       ; $597b: $ff
    rst $38                                       ; $597c: $ff
    rst $38                                       ; $597d: $ff
    rst $38                                       ; $597e: $ff
    rst $38                                       ; $597f: $ff
    rst $38                                       ; $5980: $ff
    rst $38                                       ; $5981: $ff
    rst $38                                       ; $5982: $ff
    rst $38                                       ; $5983: $ff
    rst $38                                       ; $5984: $ff
    rst $38                                       ; $5985: $ff
    rst $38                                       ; $5986: $ff
    rst $38                                       ; $5987: $ff
    rst $38                                       ; $5988: $ff
    rst $38                                       ; $5989: $ff
    rst $38                                       ; $598a: $ff
    rst $38                                       ; $598b: $ff
    rst $38                                       ; $598c: $ff
    rst $38                                       ; $598d: $ff
    rst $38                                       ; $598e: $ff
    rst $38                                       ; $598f: $ff
    rst $38                                       ; $5990: $ff
    rst $38                                       ; $5991: $ff
    rst $38                                       ; $5992: $ff
    rst $38                                       ; $5993: $ff
    rst $38                                       ; $5994: $ff
    rst $38                                       ; $5995: $ff
    rst $38                                       ; $5996: $ff
    rst $38                                       ; $5997: $ff
    rst $38                                       ; $5998: $ff
    rst $38                                       ; $5999: $ff
    rst $38                                       ; $599a: $ff
    rst $38                                       ; $599b: $ff
    rst $38                                       ; $599c: $ff
    rst $38                                       ; $599d: $ff
    rst $38                                       ; $599e: $ff
    rst $38                                       ; $599f: $ff
    rst $38                                       ; $59a0: $ff
    rst $38                                       ; $59a1: $ff
    rst $38                                       ; $59a2: $ff
    rst $38                                       ; $59a3: $ff
    rst $38                                       ; $59a4: $ff
    rst $38                                       ; $59a5: $ff
    rst $38                                       ; $59a6: $ff
    rst $38                                       ; $59a7: $ff
    rst $38                                       ; $59a8: $ff
    rst $38                                       ; $59a9: $ff
    rst $38                                       ; $59aa: $ff
    rst $38                                       ; $59ab: $ff
    rst $38                                       ; $59ac: $ff
    rst $38                                       ; $59ad: $ff
    rst $38                                       ; $59ae: $ff
    rst $38                                       ; $59af: $ff
    rst $38                                       ; $59b0: $ff
    rst $38                                       ; $59b1: $ff
    rst $38                                       ; $59b2: $ff
    rst $38                                       ; $59b3: $ff
    rst $38                                       ; $59b4: $ff
    rst $38                                       ; $59b5: $ff
    rst $38                                       ; $59b6: $ff
    rst $38                                       ; $59b7: $ff
    rst $38                                       ; $59b8: $ff
    rst $38                                       ; $59b9: $ff
    rst $38                                       ; $59ba: $ff
    rst $38                                       ; $59bb: $ff
    rst $38                                       ; $59bc: $ff
    rst $38                                       ; $59bd: $ff
    rst $38                                       ; $59be: $ff
    rst $38                                       ; $59bf: $ff
    rst $38                                       ; $59c0: $ff
    rst $38                                       ; $59c1: $ff
    rst $38                                       ; $59c2: $ff
    rst $38                                       ; $59c3: $ff
    rst $38                                       ; $59c4: $ff
    rst $38                                       ; $59c5: $ff
    rst $38                                       ; $59c6: $ff
    rst $38                                       ; $59c7: $ff
    rst $38                                       ; $59c8: $ff
    rst $38                                       ; $59c9: $ff
    rst $38                                       ; $59ca: $ff
    rst $38                                       ; $59cb: $ff
    rst $38                                       ; $59cc: $ff
    rst $38                                       ; $59cd: $ff
    rst $38                                       ; $59ce: $ff
    rst $38                                       ; $59cf: $ff
    rst $38                                       ; $59d0: $ff
    rst $38                                       ; $59d1: $ff
    rst $38                                       ; $59d2: $ff
    rst $38                                       ; $59d3: $ff
    rst $38                                       ; $59d4: $ff
    rst $38                                       ; $59d5: $ff
    rst $38                                       ; $59d6: $ff
    rst $38                                       ; $59d7: $ff
    rst $38                                       ; $59d8: $ff
    rst $38                                       ; $59d9: $ff
    rst $38                                       ; $59da: $ff
    rst $38                                       ; $59db: $ff
    rst $38                                       ; $59dc: $ff
    rst $38                                       ; $59dd: $ff
    rst $38                                       ; $59de: $ff
    rst $38                                       ; $59df: $ff
    rst $38                                       ; $59e0: $ff
    rst $38                                       ; $59e1: $ff
    rst $38                                       ; $59e2: $ff
    rst $38                                       ; $59e3: $ff
    rst $38                                       ; $59e4: $ff
    rst $38                                       ; $59e5: $ff
    rst $38                                       ; $59e6: $ff
    rst $38                                       ; $59e7: $ff
    rst $38                                       ; $59e8: $ff
    rst $38                                       ; $59e9: $ff
    rst $38                                       ; $59ea: $ff
    rst $38                                       ; $59eb: $ff
    rst $38                                       ; $59ec: $ff
    rst $38                                       ; $59ed: $ff
    rst $38                                       ; $59ee: $ff
    rst $38                                       ; $59ef: $ff
    rst $38                                       ; $59f0: $ff
    rst $38                                       ; $59f1: $ff
    rst $38                                       ; $59f2: $ff
    rst $38                                       ; $59f3: $ff
    rst $38                                       ; $59f4: $ff
    rst $38                                       ; $59f5: $ff
    rst $38                                       ; $59f6: $ff
    rst $38                                       ; $59f7: $ff
    rst $38                                       ; $59f8: $ff
    rst $38                                       ; $59f9: $ff
    rst $38                                       ; $59fa: $ff
    rst $38                                       ; $59fb: $ff
    rst $38                                       ; $59fc: $ff
    rst $38                                       ; $59fd: $ff
    rst $38                                       ; $59fe: $ff
    rst $38                                       ; $59ff: $ff
    rst $38                                       ; $5a00: $ff
    rst $38                                       ; $5a01: $ff
    rst $38                                       ; $5a02: $ff
    rst $38                                       ; $5a03: $ff
    rst $38                                       ; $5a04: $ff
    rst $38                                       ; $5a05: $ff
    rst $38                                       ; $5a06: $ff
    rst $38                                       ; $5a07: $ff
    rst $38                                       ; $5a08: $ff
    rst $38                                       ; $5a09: $ff
    rst $38                                       ; $5a0a: $ff
    rst $38                                       ; $5a0b: $ff
    rst $38                                       ; $5a0c: $ff
    rst $38                                       ; $5a0d: $ff
    rst $38                                       ; $5a0e: $ff
    rst $38                                       ; $5a0f: $ff
    rst $38                                       ; $5a10: $ff
    rst $38                                       ; $5a11: $ff
    rst $38                                       ; $5a12: $ff
    rst $38                                       ; $5a13: $ff
    rst $38                                       ; $5a14: $ff
    rst $38                                       ; $5a15: $ff
    rst $38                                       ; $5a16: $ff
    rst $38                                       ; $5a17: $ff
    rst $38                                       ; $5a18: $ff
    rst $38                                       ; $5a19: $ff
    rst $38                                       ; $5a1a: $ff
    rst $38                                       ; $5a1b: $ff
    rst $38                                       ; $5a1c: $ff
    rst $38                                       ; $5a1d: $ff
    rst $38                                       ; $5a1e: $ff
    rst $38                                       ; $5a1f: $ff
    rst $38                                       ; $5a20: $ff
    rst $38                                       ; $5a21: $ff
    rst $38                                       ; $5a22: $ff
    rst $38                                       ; $5a23: $ff
    rst $38                                       ; $5a24: $ff
    rst $38                                       ; $5a25: $ff
    rst $38                                       ; $5a26: $ff
    rst $38                                       ; $5a27: $ff
    rst $38                                       ; $5a28: $ff
    rst $38                                       ; $5a29: $ff
    rst $38                                       ; $5a2a: $ff
    rst $38                                       ; $5a2b: $ff
    rst $38                                       ; $5a2c: $ff
    rst $38                                       ; $5a2d: $ff
    rst $38                                       ; $5a2e: $ff
    rst $38                                       ; $5a2f: $ff
    rst $38                                       ; $5a30: $ff
    rst $38                                       ; $5a31: $ff
    rst $38                                       ; $5a32: $ff
    rst $38                                       ; $5a33: $ff
    rst $38                                       ; $5a34: $ff
    rst $38                                       ; $5a35: $ff
    rst $38                                       ; $5a36: $ff
    rst $38                                       ; $5a37: $ff
    rst $38                                       ; $5a38: $ff
    rst $38                                       ; $5a39: $ff
    rst $38                                       ; $5a3a: $ff
    rst $38                                       ; $5a3b: $ff
    rst $38                                       ; $5a3c: $ff
    rst $38                                       ; $5a3d: $ff
    rst $38                                       ; $5a3e: $ff
    rst $38                                       ; $5a3f: $ff
    rst $38                                       ; $5a40: $ff
    rst $38                                       ; $5a41: $ff
    rst $38                                       ; $5a42: $ff
    rst $38                                       ; $5a43: $ff
    rst $38                                       ; $5a44: $ff
    rst $38                                       ; $5a45: $ff
    rst $38                                       ; $5a46: $ff
    rst $38                                       ; $5a47: $ff
    rst $38                                       ; $5a48: $ff
    rst $38                                       ; $5a49: $ff
    rst $38                                       ; $5a4a: $ff
    rst $38                                       ; $5a4b: $ff
    rst $38                                       ; $5a4c: $ff
    rst $38                                       ; $5a4d: $ff
    rst $38                                       ; $5a4e: $ff
    rst $38                                       ; $5a4f: $ff
    rst $38                                       ; $5a50: $ff
    rst $38                                       ; $5a51: $ff
    rst $38                                       ; $5a52: $ff
    rst $38                                       ; $5a53: $ff
    rst $38                                       ; $5a54: $ff
    rst $38                                       ; $5a55: $ff
    rst $38                                       ; $5a56: $ff
    rst $38                                       ; $5a57: $ff
    rst $38                                       ; $5a58: $ff
    rst $38                                       ; $5a59: $ff
    rst $38                                       ; $5a5a: $ff
    rst $38                                       ; $5a5b: $ff
    rst $38                                       ; $5a5c: $ff
    rst $38                                       ; $5a5d: $ff
    rst $38                                       ; $5a5e: $ff
    rst $38                                       ; $5a5f: $ff
    rst $38                                       ; $5a60: $ff
    rst $38                                       ; $5a61: $ff
    rst $38                                       ; $5a62: $ff
    rst $38                                       ; $5a63: $ff
    rst $38                                       ; $5a64: $ff
    rst $38                                       ; $5a65: $ff
    rst $38                                       ; $5a66: $ff
    rst $38                                       ; $5a67: $ff
    rst $38                                       ; $5a68: $ff
    rst $38                                       ; $5a69: $ff
    rst $38                                       ; $5a6a: $ff
    rst $38                                       ; $5a6b: $ff
    rst $38                                       ; $5a6c: $ff
    rst $38                                       ; $5a6d: $ff
    rst $38                                       ; $5a6e: $ff
    rst $38                                       ; $5a6f: $ff
    rst $38                                       ; $5a70: $ff
    rst $38                                       ; $5a71: $ff
    rst $38                                       ; $5a72: $ff
    rst $38                                       ; $5a73: $ff
    rst $38                                       ; $5a74: $ff
    rst $38                                       ; $5a75: $ff
    rst $38                                       ; $5a76: $ff
    rst $38                                       ; $5a77: $ff
    rst $38                                       ; $5a78: $ff
    rst $38                                       ; $5a79: $ff
    rst $38                                       ; $5a7a: $ff
    rst $38                                       ; $5a7b: $ff
    rst $38                                       ; $5a7c: $ff
    rst $38                                       ; $5a7d: $ff
    rst $38                                       ; $5a7e: $ff
    rst $38                                       ; $5a7f: $ff
    rst $38                                       ; $5a80: $ff
    rst $38                                       ; $5a81: $ff
    rst $38                                       ; $5a82: $ff
    rst $38                                       ; $5a83: $ff
    rst $38                                       ; $5a84: $ff
    rst $38                                       ; $5a85: $ff
    rst $38                                       ; $5a86: $ff
    rst $38                                       ; $5a87: $ff
    rst $38                                       ; $5a88: $ff
    rst $38                                       ; $5a89: $ff
    rst $38                                       ; $5a8a: $ff
    rst $38                                       ; $5a8b: $ff
    rst $38                                       ; $5a8c: $ff
    rst $38                                       ; $5a8d: $ff
    rst $38                                       ; $5a8e: $ff
    rst $38                                       ; $5a8f: $ff
    rst $38                                       ; $5a90: $ff
    rst $38                                       ; $5a91: $ff
    rst $38                                       ; $5a92: $ff
    rst $38                                       ; $5a93: $ff
    rst $38                                       ; $5a94: $ff
    rst $38                                       ; $5a95: $ff
    rst $38                                       ; $5a96: $ff
    rst $38                                       ; $5a97: $ff
    rst $38                                       ; $5a98: $ff
    rst $38                                       ; $5a99: $ff
    rst $38                                       ; $5a9a: $ff
    rst $38                                       ; $5a9b: $ff
    rst $38                                       ; $5a9c: $ff
    rst $38                                       ; $5a9d: $ff
    rst $38                                       ; $5a9e: $ff
    rst $38                                       ; $5a9f: $ff
    rst $38                                       ; $5aa0: $ff
    rst $38                                       ; $5aa1: $ff
    rst $38                                       ; $5aa2: $ff
    rst $38                                       ; $5aa3: $ff
    rst $38                                       ; $5aa4: $ff
    rst $38                                       ; $5aa5: $ff
    rst $38                                       ; $5aa6: $ff
    rst $38                                       ; $5aa7: $ff
    rst $38                                       ; $5aa8: $ff
    rst $38                                       ; $5aa9: $ff
    rst $38                                       ; $5aaa: $ff
    rst $38                                       ; $5aab: $ff
    rst $38                                       ; $5aac: $ff
    rst $38                                       ; $5aad: $ff
    rst $38                                       ; $5aae: $ff
    rst $38                                       ; $5aaf: $ff
    rst $38                                       ; $5ab0: $ff
    rst $38                                       ; $5ab1: $ff
    rst $38                                       ; $5ab2: $ff
    rst $38                                       ; $5ab3: $ff
    rst $38                                       ; $5ab4: $ff
    rst $38                                       ; $5ab5: $ff
    rst $38                                       ; $5ab6: $ff
    rst $38                                       ; $5ab7: $ff
    rst $38                                       ; $5ab8: $ff
    rst $38                                       ; $5ab9: $ff
    rst $38                                       ; $5aba: $ff
    rst $38                                       ; $5abb: $ff
    rst $38                                       ; $5abc: $ff
    rst $38                                       ; $5abd: $ff
    rst $38                                       ; $5abe: $ff
    rst $38                                       ; $5abf: $ff
    rst $38                                       ; $5ac0: $ff
    rst $38                                       ; $5ac1: $ff
    rst $38                                       ; $5ac2: $ff
    rst $38                                       ; $5ac3: $ff
    rst $38                                       ; $5ac4: $ff
    rst $38                                       ; $5ac5: $ff
    rst $38                                       ; $5ac6: $ff
    rst $38                                       ; $5ac7: $ff
    rst $38                                       ; $5ac8: $ff
    rst $38                                       ; $5ac9: $ff
    rst $38                                       ; $5aca: $ff
    rst $38                                       ; $5acb: $ff
    rst $38                                       ; $5acc: $ff
    rst $38                                       ; $5acd: $ff
    rst $38                                       ; $5ace: $ff
    rst $38                                       ; $5acf: $ff
    rst $38                                       ; $5ad0: $ff
    rst $38                                       ; $5ad1: $ff
    rst $38                                       ; $5ad2: $ff
    rst $38                                       ; $5ad3: $ff
    rst $38                                       ; $5ad4: $ff
    rst $38                                       ; $5ad5: $ff
    rst $38                                       ; $5ad6: $ff
    rst $38                                       ; $5ad7: $ff
    rst $38                                       ; $5ad8: $ff
    rst $38                                       ; $5ad9: $ff
    rst $38                                       ; $5ada: $ff
    rst $38                                       ; $5adb: $ff
    rst $38                                       ; $5adc: $ff
    rst $38                                       ; $5add: $ff
    rst $38                                       ; $5ade: $ff
    rst $38                                       ; $5adf: $ff
    rst $38                                       ; $5ae0: $ff
    rst $38                                       ; $5ae1: $ff
    rst $38                                       ; $5ae2: $ff
    rst $38                                       ; $5ae3: $ff
    rst $38                                       ; $5ae4: $ff
    rst $38                                       ; $5ae5: $ff
    rst $38                                       ; $5ae6: $ff
    rst $38                                       ; $5ae7: $ff
    rst $38                                       ; $5ae8: $ff
    rst $38                                       ; $5ae9: $ff
    rst $38                                       ; $5aea: $ff
    rst $38                                       ; $5aeb: $ff
    rst $38                                       ; $5aec: $ff
    rst $38                                       ; $5aed: $ff
    rst $38                                       ; $5aee: $ff
    rst $38                                       ; $5aef: $ff
    rst $38                                       ; $5af0: $ff
    rst $38                                       ; $5af1: $ff
    rst $38                                       ; $5af2: $ff
    rst $38                                       ; $5af3: $ff
    rst $38                                       ; $5af4: $ff
    rst $38                                       ; $5af5: $ff
    rst $38                                       ; $5af6: $ff
    rst $38                                       ; $5af7: $ff
    rst $38                                       ; $5af8: $ff
    rst $38                                       ; $5af9: $ff
    rst $38                                       ; $5afa: $ff
    rst $38                                       ; $5afb: $ff
    rst $38                                       ; $5afc: $ff
    rst $38                                       ; $5afd: $ff
    rst $38                                       ; $5afe: $ff
    rst $38                                       ; $5aff: $ff
    rst $38                                       ; $5b00: $ff
    rst $38                                       ; $5b01: $ff
    rst $38                                       ; $5b02: $ff
    rst $38                                       ; $5b03: $ff
    rst $38                                       ; $5b04: $ff
    rst $38                                       ; $5b05: $ff
    rst $38                                       ; $5b06: $ff
    rst $38                                       ; $5b07: $ff
    rst $38                                       ; $5b08: $ff
    rst $38                                       ; $5b09: $ff
    rst $38                                       ; $5b0a: $ff
    rst $38                                       ; $5b0b: $ff
    rst $38                                       ; $5b0c: $ff
    rst $38                                       ; $5b0d: $ff
    rst $38                                       ; $5b0e: $ff
    rst $38                                       ; $5b0f: $ff
    rst $38                                       ; $5b10: $ff
    rst $38                                       ; $5b11: $ff
    rst $38                                       ; $5b12: $ff
    rst $38                                       ; $5b13: $ff
    rst $38                                       ; $5b14: $ff
    rst $38                                       ; $5b15: $ff
    rst $38                                       ; $5b16: $ff
    rst $38                                       ; $5b17: $ff
    rst $38                                       ; $5b18: $ff
    rst $38                                       ; $5b19: $ff
    rst $38                                       ; $5b1a: $ff
    rst $38                                       ; $5b1b: $ff
    rst $38                                       ; $5b1c: $ff
    rst $38                                       ; $5b1d: $ff
    rst $38                                       ; $5b1e: $ff
    rst $38                                       ; $5b1f: $ff
    rst $38                                       ; $5b20: $ff
    rst $38                                       ; $5b21: $ff
    rst $38                                       ; $5b22: $ff
    rst $38                                       ; $5b23: $ff
    rst $38                                       ; $5b24: $ff
    rst $38                                       ; $5b25: $ff
    rst $38                                       ; $5b26: $ff
    rst $38                                       ; $5b27: $ff
    rst $38                                       ; $5b28: $ff
    rst $38                                       ; $5b29: $ff
    rst $38                                       ; $5b2a: $ff
    rst $38                                       ; $5b2b: $ff
    rst $38                                       ; $5b2c: $ff
    rst $38                                       ; $5b2d: $ff
    rst $38                                       ; $5b2e: $ff
    rst $38                                       ; $5b2f: $ff
    rst $38                                       ; $5b30: $ff
    rst $38                                       ; $5b31: $ff
    rst $38                                       ; $5b32: $ff
    rst $38                                       ; $5b33: $ff
    rst $38                                       ; $5b34: $ff
    rst $38                                       ; $5b35: $ff
    rst $38                                       ; $5b36: $ff
    rst $38                                       ; $5b37: $ff
    rst $38                                       ; $5b38: $ff
    rst $38                                       ; $5b39: $ff
    rst $38                                       ; $5b3a: $ff
    rst $38                                       ; $5b3b: $ff
    rst $38                                       ; $5b3c: $ff
    rst $38                                       ; $5b3d: $ff
    rst $38                                       ; $5b3e: $ff
    rst $38                                       ; $5b3f: $ff
    rst $38                                       ; $5b40: $ff
    rst $38                                       ; $5b41: $ff
    rst $38                                       ; $5b42: $ff

Jump_032_5b43:
    rst $38                                       ; $5b43: $ff
    rst $38                                       ; $5b44: $ff
    rst $38                                       ; $5b45: $ff
    rst $38                                       ; $5b46: $ff
    rst $38                                       ; $5b47: $ff
    rst $38                                       ; $5b48: $ff
    rst $38                                       ; $5b49: $ff
    rst $38                                       ; $5b4a: $ff
    rst $38                                       ; $5b4b: $ff
    rst $38                                       ; $5b4c: $ff
    rst $38                                       ; $5b4d: $ff
    rst $38                                       ; $5b4e: $ff
    rst $38                                       ; $5b4f: $ff
    rst $38                                       ; $5b50: $ff
    rst $38                                       ; $5b51: $ff
    rst $38                                       ; $5b52: $ff
    rst $38                                       ; $5b53: $ff
    rst $38                                       ; $5b54: $ff
    rst $38                                       ; $5b55: $ff
    rst $38                                       ; $5b56: $ff
    rst $38                                       ; $5b57: $ff
    rst $38                                       ; $5b58: $ff
    rst $38                                       ; $5b59: $ff
    rst $38                                       ; $5b5a: $ff
    rst $38                                       ; $5b5b: $ff
    rst $38                                       ; $5b5c: $ff
    rst $38                                       ; $5b5d: $ff
    rst $38                                       ; $5b5e: $ff
    rst $38                                       ; $5b5f: $ff
    rst $38                                       ; $5b60: $ff
    rst $38                                       ; $5b61: $ff
    rst $38                                       ; $5b62: $ff
    rst $38                                       ; $5b63: $ff
    rst $38                                       ; $5b64: $ff
    rst $38                                       ; $5b65: $ff
    rst $38                                       ; $5b66: $ff
    rst $38                                       ; $5b67: $ff
    rst $38                                       ; $5b68: $ff
    rst $38                                       ; $5b69: $ff
    rst $38                                       ; $5b6a: $ff
    rst $38                                       ; $5b6b: $ff
    rst $38                                       ; $5b6c: $ff
    rst $38                                       ; $5b6d: $ff
    rst $38                                       ; $5b6e: $ff
    rst $38                                       ; $5b6f: $ff
    rst $38                                       ; $5b70: $ff
    rst $38                                       ; $5b71: $ff
    rst $38                                       ; $5b72: $ff
    rst $38                                       ; $5b73: $ff
    rst $38                                       ; $5b74: $ff
    rst $38                                       ; $5b75: $ff
    rst $38                                       ; $5b76: $ff
    rst $38                                       ; $5b77: $ff
    rst $38                                       ; $5b78: $ff
    rst $38                                       ; $5b79: $ff
    rst $38                                       ; $5b7a: $ff
    rst $38                                       ; $5b7b: $ff
    rst $38                                       ; $5b7c: $ff
    rst $38                                       ; $5b7d: $ff
    rst $38                                       ; $5b7e: $ff
    rst $38                                       ; $5b7f: $ff
    rst $38                                       ; $5b80: $ff
    rst $38                                       ; $5b81: $ff
    rst $38                                       ; $5b82: $ff
    rst $38                                       ; $5b83: $ff
    rst $38                                       ; $5b84: $ff
    rst $38                                       ; $5b85: $ff
    rst $38                                       ; $5b86: $ff
    rst $38                                       ; $5b87: $ff
    rst $38                                       ; $5b88: $ff
    rst $38                                       ; $5b89: $ff
    rst $38                                       ; $5b8a: $ff
    rst $38                                       ; $5b8b: $ff
    rst $38                                       ; $5b8c: $ff
    rst $38                                       ; $5b8d: $ff
    rst $38                                       ; $5b8e: $ff
    rst $38                                       ; $5b8f: $ff
    rst $38                                       ; $5b90: $ff
    rst $38                                       ; $5b91: $ff
    rst $38                                       ; $5b92: $ff
    rst $38                                       ; $5b93: $ff
    rst $38                                       ; $5b94: $ff
    rst $38                                       ; $5b95: $ff
    rst $38                                       ; $5b96: $ff
    rst $38                                       ; $5b97: $ff
    rst $38                                       ; $5b98: $ff
    rst $38                                       ; $5b99: $ff
    rst $38                                       ; $5b9a: $ff
    rst $38                                       ; $5b9b: $ff
    rst $38                                       ; $5b9c: $ff
    rst $38                                       ; $5b9d: $ff
    rst $38                                       ; $5b9e: $ff
    rst $38                                       ; $5b9f: $ff
    rst $38                                       ; $5ba0: $ff
    rst $38                                       ; $5ba1: $ff
    rst $38                                       ; $5ba2: $ff
    rst $38                                       ; $5ba3: $ff
    rst $38                                       ; $5ba4: $ff
    rst $38                                       ; $5ba5: $ff
    rst $38                                       ; $5ba6: $ff
    rst $38                                       ; $5ba7: $ff
    rst $38                                       ; $5ba8: $ff
    rst $38                                       ; $5ba9: $ff
    rst $38                                       ; $5baa: $ff
    rst $38                                       ; $5bab: $ff
    rst $38                                       ; $5bac: $ff
    rst $38                                       ; $5bad: $ff
    rst $38                                       ; $5bae: $ff
    rst $38                                       ; $5baf: $ff
    rst $38                                       ; $5bb0: $ff
    rst $38                                       ; $5bb1: $ff
    rst $38                                       ; $5bb2: $ff
    rst $38                                       ; $5bb3: $ff
    rst $38                                       ; $5bb4: $ff
    rst $38                                       ; $5bb5: $ff
    rst $38                                       ; $5bb6: $ff
    rst $38                                       ; $5bb7: $ff
    rst $38                                       ; $5bb8: $ff
    rst $38                                       ; $5bb9: $ff
    rst $38                                       ; $5bba: $ff
    rst $38                                       ; $5bbb: $ff
    rst $38                                       ; $5bbc: $ff
    rst $38                                       ; $5bbd: $ff
    rst $38                                       ; $5bbe: $ff
    rst $38                                       ; $5bbf: $ff
    rst $38                                       ; $5bc0: $ff
    rst $38                                       ; $5bc1: $ff
    rst $38                                       ; $5bc2: $ff
    rst $38                                       ; $5bc3: $ff
    rst $38                                       ; $5bc4: $ff
    rst $38                                       ; $5bc5: $ff
    rst $38                                       ; $5bc6: $ff
    rst $38                                       ; $5bc7: $ff
    rst $38                                       ; $5bc8: $ff
    rst $38                                       ; $5bc9: $ff
    rst $38                                       ; $5bca: $ff
    rst $38                                       ; $5bcb: $ff
    rst $38                                       ; $5bcc: $ff
    rst $38                                       ; $5bcd: $ff
    rst $38                                       ; $5bce: $ff
    rst $38                                       ; $5bcf: $ff
    rst $38                                       ; $5bd0: $ff
    rst $38                                       ; $5bd1: $ff
    rst $38                                       ; $5bd2: $ff
    rst $38                                       ; $5bd3: $ff
    rst $38                                       ; $5bd4: $ff
    rst $38                                       ; $5bd5: $ff
    rst $38                                       ; $5bd6: $ff
    rst $38                                       ; $5bd7: $ff
    rst $38                                       ; $5bd8: $ff
    rst $38                                       ; $5bd9: $ff
    rst $38                                       ; $5bda: $ff
    rst $38                                       ; $5bdb: $ff
    rst $38                                       ; $5bdc: $ff
    rst $38                                       ; $5bdd: $ff
    rst $38                                       ; $5bde: $ff
    rst $38                                       ; $5bdf: $ff
    rst $38                                       ; $5be0: $ff
    rst $38                                       ; $5be1: $ff
    rst $38                                       ; $5be2: $ff
    rst $38                                       ; $5be3: $ff
    rst $38                                       ; $5be4: $ff
    rst $38                                       ; $5be5: $ff
    rst $38                                       ; $5be6: $ff
    rst $38                                       ; $5be7: $ff
    rst $38                                       ; $5be8: $ff
    rst $38                                       ; $5be9: $ff
    rst $38                                       ; $5bea: $ff
    rst $38                                       ; $5beb: $ff
    rst $38                                       ; $5bec: $ff
    rst $38                                       ; $5bed: $ff
    rst $38                                       ; $5bee: $ff
    rst $38                                       ; $5bef: $ff
    rst $38                                       ; $5bf0: $ff
    rst $38                                       ; $5bf1: $ff
    rst $38                                       ; $5bf2: $ff
    rst $38                                       ; $5bf3: $ff
    rst $38                                       ; $5bf4: $ff
    rst $38                                       ; $5bf5: $ff
    rst $38                                       ; $5bf6: $ff
    rst $38                                       ; $5bf7: $ff
    rst $38                                       ; $5bf8: $ff
    rst $38                                       ; $5bf9: $ff
    rst $38                                       ; $5bfa: $ff
    rst $38                                       ; $5bfb: $ff
    rst $38                                       ; $5bfc: $ff
    rst $38                                       ; $5bfd: $ff
    rst $38                                       ; $5bfe: $ff
    rst $38                                       ; $5bff: $ff
    rst $38                                       ; $5c00: $ff
    rst $38                                       ; $5c01: $ff
    rst $38                                       ; $5c02: $ff
    rst $38                                       ; $5c03: $ff
    rst $38                                       ; $5c04: $ff
    rst $38                                       ; $5c05: $ff
    rst $38                                       ; $5c06: $ff
    rst $38                                       ; $5c07: $ff
    rst $38                                       ; $5c08: $ff
    rst $38                                       ; $5c09: $ff
    rst $38                                       ; $5c0a: $ff
    rst $38                                       ; $5c0b: $ff
    rst $38                                       ; $5c0c: $ff
    rst $38                                       ; $5c0d: $ff
    rst $38                                       ; $5c0e: $ff
    rst $38                                       ; $5c0f: $ff
    rst $38                                       ; $5c10: $ff
    rst $38                                       ; $5c11: $ff
    rst $38                                       ; $5c12: $ff
    rst $38                                       ; $5c13: $ff
    rst $38                                       ; $5c14: $ff
    rst $38                                       ; $5c15: $ff
    rst $38                                       ; $5c16: $ff
    rst $38                                       ; $5c17: $ff
    rst $38                                       ; $5c18: $ff
    rst $38                                       ; $5c19: $ff
    rst $38                                       ; $5c1a: $ff
    rst $38                                       ; $5c1b: $ff
    rst $38                                       ; $5c1c: $ff
    rst $38                                       ; $5c1d: $ff
    rst $38                                       ; $5c1e: $ff
    rst $38                                       ; $5c1f: $ff
    rst $38                                       ; $5c20: $ff
    rst $38                                       ; $5c21: $ff
    rst $38                                       ; $5c22: $ff
    rst $38                                       ; $5c23: $ff
    rst $38                                       ; $5c24: $ff
    rst $38                                       ; $5c25: $ff
    rst $38                                       ; $5c26: $ff
    rst $38                                       ; $5c27: $ff
    rst $38                                       ; $5c28: $ff
    rst $38                                       ; $5c29: $ff
    rst $38                                       ; $5c2a: $ff
    rst $38                                       ; $5c2b: $ff
    rst $38                                       ; $5c2c: $ff
    rst $38                                       ; $5c2d: $ff
    rst $38                                       ; $5c2e: $ff
    rst $38                                       ; $5c2f: $ff
    rst $38                                       ; $5c30: $ff
    rst $38                                       ; $5c31: $ff
    rst $38                                       ; $5c32: $ff
    rst $38                                       ; $5c33: $ff
    rst $38                                       ; $5c34: $ff
    rst $38                                       ; $5c35: $ff
    rst $38                                       ; $5c36: $ff
    rst $38                                       ; $5c37: $ff
    rst $38                                       ; $5c38: $ff
    rst $38                                       ; $5c39: $ff
    rst $38                                       ; $5c3a: $ff
    rst $38                                       ; $5c3b: $ff
    rst $38                                       ; $5c3c: $ff
    rst $38                                       ; $5c3d: $ff
    rst $38                                       ; $5c3e: $ff
    rst $38                                       ; $5c3f: $ff
    rst $38                                       ; $5c40: $ff
    rst $38                                       ; $5c41: $ff
    rst $38                                       ; $5c42: $ff
    rst $38                                       ; $5c43: $ff
    rst $38                                       ; $5c44: $ff
    rst $38                                       ; $5c45: $ff
    rst $38                                       ; $5c46: $ff
    rst $38                                       ; $5c47: $ff
    rst $38                                       ; $5c48: $ff
    rst $38                                       ; $5c49: $ff
    rst $38                                       ; $5c4a: $ff
    rst $38                                       ; $5c4b: $ff
    rst $38                                       ; $5c4c: $ff
    rst $38                                       ; $5c4d: $ff
    rst $38                                       ; $5c4e: $ff
    rst $38                                       ; $5c4f: $ff
    rst $38                                       ; $5c50: $ff
    rst $38                                       ; $5c51: $ff
    rst $38                                       ; $5c52: $ff
    rst $38                                       ; $5c53: $ff
    rst $38                                       ; $5c54: $ff
    rst $38                                       ; $5c55: $ff
    rst $38                                       ; $5c56: $ff
    rst $38                                       ; $5c57: $ff
    rst $38                                       ; $5c58: $ff
    rst $38                                       ; $5c59: $ff
    rst $38                                       ; $5c5a: $ff
    rst $38                                       ; $5c5b: $ff
    rst $38                                       ; $5c5c: $ff
    rst $38                                       ; $5c5d: $ff
    rst $38                                       ; $5c5e: $ff
    rst $38                                       ; $5c5f: $ff
    rst $38                                       ; $5c60: $ff
    rst $38                                       ; $5c61: $ff
    rst $38                                       ; $5c62: $ff
    rst $38                                       ; $5c63: $ff
    rst $38                                       ; $5c64: $ff
    rst $38                                       ; $5c65: $ff
    rst $38                                       ; $5c66: $ff
    rst $38                                       ; $5c67: $ff
    rst $38                                       ; $5c68: $ff
    rst $38                                       ; $5c69: $ff
    rst $38                                       ; $5c6a: $ff
    rst $38                                       ; $5c6b: $ff
    rst $38                                       ; $5c6c: $ff
    rst $38                                       ; $5c6d: $ff
    rst $38                                       ; $5c6e: $ff
    rst $38                                       ; $5c6f: $ff
    rst $38                                       ; $5c70: $ff
    rst $38                                       ; $5c71: $ff
    rst $38                                       ; $5c72: $ff
    rst $38                                       ; $5c73: $ff
    rst $38                                       ; $5c74: $ff
    rst $38                                       ; $5c75: $ff
    rst $38                                       ; $5c76: $ff
    rst $38                                       ; $5c77: $ff
    rst $38                                       ; $5c78: $ff
    rst $38                                       ; $5c79: $ff
    rst $38                                       ; $5c7a: $ff
    rst $38                                       ; $5c7b: $ff
    rst $38                                       ; $5c7c: $ff
    rst $38                                       ; $5c7d: $ff
    rst $38                                       ; $5c7e: $ff
    rst $38                                       ; $5c7f: $ff
    rst $38                                       ; $5c80: $ff
    rst $38                                       ; $5c81: $ff
    rst $38                                       ; $5c82: $ff
    rst $38                                       ; $5c83: $ff
    rst $38                                       ; $5c84: $ff
    rst $38                                       ; $5c85: $ff
    rst $38                                       ; $5c86: $ff
    rst $38                                       ; $5c87: $ff
    rst $38                                       ; $5c88: $ff
    rst $38                                       ; $5c89: $ff
    rst $38                                       ; $5c8a: $ff
    rst $38                                       ; $5c8b: $ff
    rst $38                                       ; $5c8c: $ff
    rst $38                                       ; $5c8d: $ff
    rst $38                                       ; $5c8e: $ff
    rst $38                                       ; $5c8f: $ff
    rst $38                                       ; $5c90: $ff
    rst $38                                       ; $5c91: $ff
    rst $38                                       ; $5c92: $ff
    rst $38                                       ; $5c93: $ff
    rst $38                                       ; $5c94: $ff
    rst $38                                       ; $5c95: $ff
    rst $38                                       ; $5c96: $ff
    rst $38                                       ; $5c97: $ff
    rst $38                                       ; $5c98: $ff
    rst $38                                       ; $5c99: $ff
    rst $38                                       ; $5c9a: $ff
    rst $38                                       ; $5c9b: $ff
    rst $38                                       ; $5c9c: $ff
    rst $38                                       ; $5c9d: $ff
    rst $38                                       ; $5c9e: $ff
    rst $38                                       ; $5c9f: $ff
    rst $38                                       ; $5ca0: $ff
    rst $38                                       ; $5ca1: $ff
    rst $38                                       ; $5ca2: $ff
    rst $38                                       ; $5ca3: $ff
    rst $38                                       ; $5ca4: $ff
    rst $38                                       ; $5ca5: $ff
    rst $38                                       ; $5ca6: $ff
    rst $38                                       ; $5ca7: $ff
    rst $38                                       ; $5ca8: $ff
    rst $38                                       ; $5ca9: $ff
    rst $38                                       ; $5caa: $ff
    rst $38                                       ; $5cab: $ff
    rst $38                                       ; $5cac: $ff
    rst $38                                       ; $5cad: $ff
    rst $38                                       ; $5cae: $ff
    rst $38                                       ; $5caf: $ff
    rst $38                                       ; $5cb0: $ff
    rst $38                                       ; $5cb1: $ff
    rst $38                                       ; $5cb2: $ff
    rst $38                                       ; $5cb3: $ff
    rst $38                                       ; $5cb4: $ff
    rst $38                                       ; $5cb5: $ff
    rst $38                                       ; $5cb6: $ff
    rst $38                                       ; $5cb7: $ff
    rst $38                                       ; $5cb8: $ff
    rst $38                                       ; $5cb9: $ff
    rst $38                                       ; $5cba: $ff
    rst $38                                       ; $5cbb: $ff
    rst $38                                       ; $5cbc: $ff
    rst $38                                       ; $5cbd: $ff
    rst $38                                       ; $5cbe: $ff
    rst $38                                       ; $5cbf: $ff
    rst $38                                       ; $5cc0: $ff
    rst $38                                       ; $5cc1: $ff
    rst $38                                       ; $5cc2: $ff
    rst $38                                       ; $5cc3: $ff
    rst $38                                       ; $5cc4: $ff
    rst $38                                       ; $5cc5: $ff
    rst $38                                       ; $5cc6: $ff
    rst $38                                       ; $5cc7: $ff
    rst $38                                       ; $5cc8: $ff
    rst $38                                       ; $5cc9: $ff
    rst $38                                       ; $5cca: $ff
    rst $38                                       ; $5ccb: $ff
    rst $38                                       ; $5ccc: $ff
    rst $38                                       ; $5ccd: $ff
    rst $38                                       ; $5cce: $ff
    rst $38                                       ; $5ccf: $ff
    rst $38                                       ; $5cd0: $ff
    rst $38                                       ; $5cd1: $ff
    rst $38                                       ; $5cd2: $ff
    rst $38                                       ; $5cd3: $ff
    rst $38                                       ; $5cd4: $ff
    rst $38                                       ; $5cd5: $ff
    rst $38                                       ; $5cd6: $ff
    rst $38                                       ; $5cd7: $ff
    rst $38                                       ; $5cd8: $ff
    rst $38                                       ; $5cd9: $ff
    rst $38                                       ; $5cda: $ff
    rst $38                                       ; $5cdb: $ff
    rst $38                                       ; $5cdc: $ff
    rst $38                                       ; $5cdd: $ff
    rst $38                                       ; $5cde: $ff
    rst $38                                       ; $5cdf: $ff
    rst $38                                       ; $5ce0: $ff
    rst $38                                       ; $5ce1: $ff
    rst $38                                       ; $5ce2: $ff
    rst $38                                       ; $5ce3: $ff
    rst $38                                       ; $5ce4: $ff
    rst $38                                       ; $5ce5: $ff
    rst $38                                       ; $5ce6: $ff
    rst $38                                       ; $5ce7: $ff
    rst $38                                       ; $5ce8: $ff
    rst $38                                       ; $5ce9: $ff
    rst $38                                       ; $5cea: $ff
    rst $38                                       ; $5ceb: $ff
    rst $38                                       ; $5cec: $ff
    rst $38                                       ; $5ced: $ff
    rst $38                                       ; $5cee: $ff
    rst $38                                       ; $5cef: $ff
    rst $38                                       ; $5cf0: $ff
    rst $38                                       ; $5cf1: $ff
    rst $38                                       ; $5cf2: $ff
    rst $38                                       ; $5cf3: $ff
    rst $38                                       ; $5cf4: $ff
    rst $38                                       ; $5cf5: $ff
    rst $38                                       ; $5cf6: $ff
    rst $38                                       ; $5cf7: $ff
    rst $38                                       ; $5cf8: $ff
    rst $38                                       ; $5cf9: $ff
    rst $38                                       ; $5cfa: $ff
    rst $38                                       ; $5cfb: $ff
    rst $38                                       ; $5cfc: $ff
    rst $38                                       ; $5cfd: $ff
    rst $38                                       ; $5cfe: $ff
    rst $38                                       ; $5cff: $ff
    rst $38                                       ; $5d00: $ff
    rst $38                                       ; $5d01: $ff
    rst $38                                       ; $5d02: $ff
    rst $38                                       ; $5d03: $ff
    rst $38                                       ; $5d04: $ff
    rst $38                                       ; $5d05: $ff
    rst $38                                       ; $5d06: $ff
    rst $38                                       ; $5d07: $ff
    rst $38                                       ; $5d08: $ff
    rst $38                                       ; $5d09: $ff
    rst $38                                       ; $5d0a: $ff
    rst $38                                       ; $5d0b: $ff
    rst $38                                       ; $5d0c: $ff
    rst $38                                       ; $5d0d: $ff
    rst $38                                       ; $5d0e: $ff
    rst $38                                       ; $5d0f: $ff
    rst $38                                       ; $5d10: $ff
    rst $38                                       ; $5d11: $ff
    rst $38                                       ; $5d12: $ff
    rst $38                                       ; $5d13: $ff
    rst $38                                       ; $5d14: $ff
    rst $38                                       ; $5d15: $ff
    rst $38                                       ; $5d16: $ff
    rst $38                                       ; $5d17: $ff

Call_032_5d18:
    rst $38                                       ; $5d18: $ff
    rst $38                                       ; $5d19: $ff
    rst $38                                       ; $5d1a: $ff
    rst $38                                       ; $5d1b: $ff
    rst $38                                       ; $5d1c: $ff
    rst $38                                       ; $5d1d: $ff
    rst $38                                       ; $5d1e: $ff
    rst $38                                       ; $5d1f: $ff
    rst $38                                       ; $5d20: $ff
    rst $38                                       ; $5d21: $ff
    rst $38                                       ; $5d22: $ff
    rst $38                                       ; $5d23: $ff
    rst $38                                       ; $5d24: $ff
    rst $38                                       ; $5d25: $ff
    rst $38                                       ; $5d26: $ff
    rst $38                                       ; $5d27: $ff
    rst $38                                       ; $5d28: $ff
    rst $38                                       ; $5d29: $ff
    rst $38                                       ; $5d2a: $ff
    rst $38                                       ; $5d2b: $ff
    rst $38                                       ; $5d2c: $ff
    rst $38                                       ; $5d2d: $ff
    rst $38                                       ; $5d2e: $ff
    rst $38                                       ; $5d2f: $ff
    rst $38                                       ; $5d30: $ff
    rst $38                                       ; $5d31: $ff
    rst $38                                       ; $5d32: $ff
    rst $38                                       ; $5d33: $ff
    rst $38                                       ; $5d34: $ff
    rst $38                                       ; $5d35: $ff
    rst $38                                       ; $5d36: $ff
    rst $38                                       ; $5d37: $ff
    rst $38                                       ; $5d38: $ff
    rst $38                                       ; $5d39: $ff
    rst $38                                       ; $5d3a: $ff
    rst $38                                       ; $5d3b: $ff
    rst $38                                       ; $5d3c: $ff
    rst $38                                       ; $5d3d: $ff
    rst $38                                       ; $5d3e: $ff
    rst $38                                       ; $5d3f: $ff
    rst $38                                       ; $5d40: $ff
    rst $38                                       ; $5d41: $ff
    rst $38                                       ; $5d42: $ff
    rst $38                                       ; $5d43: $ff
    rst $38                                       ; $5d44: $ff
    rst $38                                       ; $5d45: $ff
    rst $38                                       ; $5d46: $ff
    rst $38                                       ; $5d47: $ff
    rst $38                                       ; $5d48: $ff
    rst $38                                       ; $5d49: $ff
    rst $38                                       ; $5d4a: $ff
    rst $38                                       ; $5d4b: $ff
    rst $38                                       ; $5d4c: $ff
    rst $38                                       ; $5d4d: $ff
    rst $38                                       ; $5d4e: $ff
    rst $38                                       ; $5d4f: $ff
    rst $38                                       ; $5d50: $ff
    rst $38                                       ; $5d51: $ff
    rst $38                                       ; $5d52: $ff
    rst $38                                       ; $5d53: $ff
    rst $38                                       ; $5d54: $ff
    rst $38                                       ; $5d55: $ff
    rst $38                                       ; $5d56: $ff
    rst $38                                       ; $5d57: $ff
    rst $38                                       ; $5d58: $ff
    rst $38                                       ; $5d59: $ff
    rst $38                                       ; $5d5a: $ff
    rst $38                                       ; $5d5b: $ff
    rst $38                                       ; $5d5c: $ff
    rst $38                                       ; $5d5d: $ff
    rst $38                                       ; $5d5e: $ff
    rst $38                                       ; $5d5f: $ff
    rst $38                                       ; $5d60: $ff
    rst $38                                       ; $5d61: $ff
    rst $38                                       ; $5d62: $ff
    rst $38                                       ; $5d63: $ff
    rst $38                                       ; $5d64: $ff
    rst $38                                       ; $5d65: $ff
    rst $38                                       ; $5d66: $ff
    rst $38                                       ; $5d67: $ff
    rst $38                                       ; $5d68: $ff
    rst $38                                       ; $5d69: $ff
    rst $38                                       ; $5d6a: $ff
    rst $38                                       ; $5d6b: $ff
    rst $38                                       ; $5d6c: $ff
    rst $38                                       ; $5d6d: $ff
    rst $38                                       ; $5d6e: $ff
    rst $38                                       ; $5d6f: $ff
    rst $38                                       ; $5d70: $ff
    rst $38                                       ; $5d71: $ff
    rst $38                                       ; $5d72: $ff
    rst $38                                       ; $5d73: $ff
    rst $38                                       ; $5d74: $ff
    rst $38                                       ; $5d75: $ff
    rst $38                                       ; $5d76: $ff
    rst $38                                       ; $5d77: $ff
    rst $38                                       ; $5d78: $ff
    rst $38                                       ; $5d79: $ff
    rst $38                                       ; $5d7a: $ff
    rst $38                                       ; $5d7b: $ff
    rst $38                                       ; $5d7c: $ff
    rst $38                                       ; $5d7d: $ff
    rst $38                                       ; $5d7e: $ff
    rst $38                                       ; $5d7f: $ff
    rst $38                                       ; $5d80: $ff
    rst $38                                       ; $5d81: $ff
    rst $38                                       ; $5d82: $ff
    rst $38                                       ; $5d83: $ff
    rst $38                                       ; $5d84: $ff
    rst $38                                       ; $5d85: $ff
    rst $38                                       ; $5d86: $ff
    rst $38                                       ; $5d87: $ff
    rst $38                                       ; $5d88: $ff
    rst $38                                       ; $5d89: $ff
    rst $38                                       ; $5d8a: $ff
    rst $38                                       ; $5d8b: $ff
    rst $38                                       ; $5d8c: $ff
    rst $38                                       ; $5d8d: $ff
    rst $38                                       ; $5d8e: $ff
    rst $38                                       ; $5d8f: $ff
    rst $38                                       ; $5d90: $ff
    rst $38                                       ; $5d91: $ff
    rst $38                                       ; $5d92: $ff
    rst $38                                       ; $5d93: $ff
    rst $38                                       ; $5d94: $ff
    rst $38                                       ; $5d95: $ff
    rst $38                                       ; $5d96: $ff
    rst $38                                       ; $5d97: $ff
    rst $38                                       ; $5d98: $ff
    rst $38                                       ; $5d99: $ff
    rst $38                                       ; $5d9a: $ff
    rst $38                                       ; $5d9b: $ff
    rst $38                                       ; $5d9c: $ff
    rst $38                                       ; $5d9d: $ff
    rst $38                                       ; $5d9e: $ff
    rst $38                                       ; $5d9f: $ff
    rst $38                                       ; $5da0: $ff
    rst $38                                       ; $5da1: $ff
    rst $38                                       ; $5da2: $ff
    rst $38                                       ; $5da3: $ff
    rst $38                                       ; $5da4: $ff
    rst $38                                       ; $5da5: $ff
    rst $38                                       ; $5da6: $ff
    rst $38                                       ; $5da7: $ff
    rst $38                                       ; $5da8: $ff
    rst $38                                       ; $5da9: $ff
    rst $38                                       ; $5daa: $ff
    rst $38                                       ; $5dab: $ff
    rst $38                                       ; $5dac: $ff
    rst $38                                       ; $5dad: $ff
    rst $38                                       ; $5dae: $ff
    rst $38                                       ; $5daf: $ff
    rst $38                                       ; $5db0: $ff
    rst $38                                       ; $5db1: $ff
    rst $38                                       ; $5db2: $ff
    rst $38                                       ; $5db3: $ff
    rst $38                                       ; $5db4: $ff
    rst $38                                       ; $5db5: $ff
    rst $38                                       ; $5db6: $ff
    rst $38                                       ; $5db7: $ff
    rst $38                                       ; $5db8: $ff
    rst $38                                       ; $5db9: $ff
    rst $38                                       ; $5dba: $ff
    rst $38                                       ; $5dbb: $ff
    rst $38                                       ; $5dbc: $ff
    rst $38                                       ; $5dbd: $ff
    rst $38                                       ; $5dbe: $ff
    rst $38                                       ; $5dbf: $ff
    rst $38                                       ; $5dc0: $ff
    rst $38                                       ; $5dc1: $ff
    rst $38                                       ; $5dc2: $ff
    rst $38                                       ; $5dc3: $ff
    rst $38                                       ; $5dc4: $ff
    rst $38                                       ; $5dc5: $ff
    rst $38                                       ; $5dc6: $ff
    rst $38                                       ; $5dc7: $ff
    rst $38                                       ; $5dc8: $ff
    rst $38                                       ; $5dc9: $ff
    rst $38                                       ; $5dca: $ff
    rst $38                                       ; $5dcb: $ff
    rst $38                                       ; $5dcc: $ff
    rst $38                                       ; $5dcd: $ff
    rst $38                                       ; $5dce: $ff
    rst $38                                       ; $5dcf: $ff
    rst $38                                       ; $5dd0: $ff
    rst $38                                       ; $5dd1: $ff
    rst $38                                       ; $5dd2: $ff
    rst $38                                       ; $5dd3: $ff
    rst $38                                       ; $5dd4: $ff
    rst $38                                       ; $5dd5: $ff
    rst $38                                       ; $5dd6: $ff
    rst $38                                       ; $5dd7: $ff
    rst $38                                       ; $5dd8: $ff
    rst $38                                       ; $5dd9: $ff
    rst $38                                       ; $5dda: $ff
    rst $38                                       ; $5ddb: $ff
    rst $38                                       ; $5ddc: $ff
    rst $38                                       ; $5ddd: $ff
    rst $38                                       ; $5dde: $ff
    rst $38                                       ; $5ddf: $ff
    rst $38                                       ; $5de0: $ff
    rst $38                                       ; $5de1: $ff
    rst $38                                       ; $5de2: $ff
    rst $38                                       ; $5de3: $ff
    rst $38                                       ; $5de4: $ff
    rst $38                                       ; $5de5: $ff
    rst $38                                       ; $5de6: $ff
    rst $38                                       ; $5de7: $ff
    rst $38                                       ; $5de8: $ff
    rst $38                                       ; $5de9: $ff
    rst $38                                       ; $5dea: $ff
    rst $38                                       ; $5deb: $ff
    rst $38                                       ; $5dec: $ff
    rst $38                                       ; $5ded: $ff
    rst $38                                       ; $5dee: $ff
    rst $38                                       ; $5def: $ff
    rst $38                                       ; $5df0: $ff
    rst $38                                       ; $5df1: $ff
    rst $38                                       ; $5df2: $ff
    rst $38                                       ; $5df3: $ff
    rst $38                                       ; $5df4: $ff
    rst $38                                       ; $5df5: $ff
    rst $38                                       ; $5df6: $ff
    rst $38                                       ; $5df7: $ff
    rst $38                                       ; $5df8: $ff
    rst $38                                       ; $5df9: $ff
    rst $38                                       ; $5dfa: $ff
    rst $38                                       ; $5dfb: $ff
    rst $38                                       ; $5dfc: $ff
    rst $38                                       ; $5dfd: $ff
    rst $38                                       ; $5dfe: $ff
    rst $38                                       ; $5dff: $ff
    rst $38                                       ; $5e00: $ff
    rst $38                                       ; $5e01: $ff
    rst $38                                       ; $5e02: $ff
    rst $38                                       ; $5e03: $ff
    rst $38                                       ; $5e04: $ff
    rst $38                                       ; $5e05: $ff
    rst $38                                       ; $5e06: $ff
    rst $38                                       ; $5e07: $ff
    rst $38                                       ; $5e08: $ff
    rst $38                                       ; $5e09: $ff
    rst $38                                       ; $5e0a: $ff
    rst $38                                       ; $5e0b: $ff
    rst $38                                       ; $5e0c: $ff
    rst $38                                       ; $5e0d: $ff
    rst $38                                       ; $5e0e: $ff
    rst $38                                       ; $5e0f: $ff
    rst $38                                       ; $5e10: $ff
    rst $38                                       ; $5e11: $ff
    rst $38                                       ; $5e12: $ff
    rst $38                                       ; $5e13: $ff
    rst $38                                       ; $5e14: $ff
    rst $38                                       ; $5e15: $ff
    rst $38                                       ; $5e16: $ff
    rst $38                                       ; $5e17: $ff
    rst $38                                       ; $5e18: $ff
    rst $38                                       ; $5e19: $ff
    rst $38                                       ; $5e1a: $ff
    rst $38                                       ; $5e1b: $ff
    rst $38                                       ; $5e1c: $ff
    rst $38                                       ; $5e1d: $ff
    rst $38                                       ; $5e1e: $ff
    rst $38                                       ; $5e1f: $ff
    rst $38                                       ; $5e20: $ff
    rst $38                                       ; $5e21: $ff
    rst $38                                       ; $5e22: $ff
    rst $38                                       ; $5e23: $ff
    rst $38                                       ; $5e24: $ff
    rst $38                                       ; $5e25: $ff
    rst $38                                       ; $5e26: $ff
    rst $38                                       ; $5e27: $ff
    rst $38                                       ; $5e28: $ff
    rst $38                                       ; $5e29: $ff
    rst $38                                       ; $5e2a: $ff
    rst $38                                       ; $5e2b: $ff
    rst $38                                       ; $5e2c: $ff
    rst $38                                       ; $5e2d: $ff
    rst $38                                       ; $5e2e: $ff
    rst $38                                       ; $5e2f: $ff
    rst $38                                       ; $5e30: $ff
    rst $38                                       ; $5e31: $ff
    rst $38                                       ; $5e32: $ff
    rst $38                                       ; $5e33: $ff
    rst $38                                       ; $5e34: $ff
    rst $38                                       ; $5e35: $ff
    rst $38                                       ; $5e36: $ff
    rst $38                                       ; $5e37: $ff
    rst $38                                       ; $5e38: $ff
    rst $38                                       ; $5e39: $ff
    rst $38                                       ; $5e3a: $ff
    rst $38                                       ; $5e3b: $ff
    rst $38                                       ; $5e3c: $ff
    rst $38                                       ; $5e3d: $ff
    rst $38                                       ; $5e3e: $ff
    rst $38                                       ; $5e3f: $ff
    rst $38                                       ; $5e40: $ff
    rst $38                                       ; $5e41: $ff
    rst $38                                       ; $5e42: $ff
    rst $38                                       ; $5e43: $ff
    rst $38                                       ; $5e44: $ff
    rst $38                                       ; $5e45: $ff
    rst $38                                       ; $5e46: $ff
    rst $38                                       ; $5e47: $ff
    rst $38                                       ; $5e48: $ff
    rst $38                                       ; $5e49: $ff
    rst $38                                       ; $5e4a: $ff
    rst $38                                       ; $5e4b: $ff
    rst $38                                       ; $5e4c: $ff
    rst $38                                       ; $5e4d: $ff
    rst $38                                       ; $5e4e: $ff
    rst $38                                       ; $5e4f: $ff
    rst $38                                       ; $5e50: $ff
    rst $38                                       ; $5e51: $ff
    rst $38                                       ; $5e52: $ff
    rst $38                                       ; $5e53: $ff
    rst $38                                       ; $5e54: $ff
    rst $38                                       ; $5e55: $ff
    rst $38                                       ; $5e56: $ff
    rst $38                                       ; $5e57: $ff
    rst $38                                       ; $5e58: $ff
    rst $38                                       ; $5e59: $ff
    rst $38                                       ; $5e5a: $ff
    rst $38                                       ; $5e5b: $ff
    rst $38                                       ; $5e5c: $ff
    rst $38                                       ; $5e5d: $ff
    rst $38                                       ; $5e5e: $ff
    rst $38                                       ; $5e5f: $ff
    rst $38                                       ; $5e60: $ff
    rst $38                                       ; $5e61: $ff
    rst $38                                       ; $5e62: $ff
    rst $38                                       ; $5e63: $ff
    rst $38                                       ; $5e64: $ff
    rst $38                                       ; $5e65: $ff
    rst $38                                       ; $5e66: $ff
    rst $38                                       ; $5e67: $ff
    rst $38                                       ; $5e68: $ff
    rst $38                                       ; $5e69: $ff
    rst $38                                       ; $5e6a: $ff
    rst $38                                       ; $5e6b: $ff
    rst $38                                       ; $5e6c: $ff
    rst $38                                       ; $5e6d: $ff
    rst $38                                       ; $5e6e: $ff
    rst $38                                       ; $5e6f: $ff
    rst $38                                       ; $5e70: $ff
    rst $38                                       ; $5e71: $ff
    rst $38                                       ; $5e72: $ff
    rst $38                                       ; $5e73: $ff
    rst $38                                       ; $5e74: $ff
    rst $38                                       ; $5e75: $ff
    rst $38                                       ; $5e76: $ff
    rst $38                                       ; $5e77: $ff
    rst $38                                       ; $5e78: $ff
    rst $38                                       ; $5e79: $ff
    rst $38                                       ; $5e7a: $ff
    rst $38                                       ; $5e7b: $ff
    rst $38                                       ; $5e7c: $ff
    rst $38                                       ; $5e7d: $ff
    rst $38                                       ; $5e7e: $ff
    rst $38                                       ; $5e7f: $ff
    rst $38                                       ; $5e80: $ff
    rst $38                                       ; $5e81: $ff
    rst $38                                       ; $5e82: $ff
    rst $38                                       ; $5e83: $ff
    rst $38                                       ; $5e84: $ff
    rst $38                                       ; $5e85: $ff
    rst $38                                       ; $5e86: $ff
    rst $38                                       ; $5e87: $ff
    rst $38                                       ; $5e88: $ff
    rst $38                                       ; $5e89: $ff
    rst $38                                       ; $5e8a: $ff
    rst $38                                       ; $5e8b: $ff
    rst $38                                       ; $5e8c: $ff
    rst $38                                       ; $5e8d: $ff
    rst $38                                       ; $5e8e: $ff
    rst $38                                       ; $5e8f: $ff
    rst $38                                       ; $5e90: $ff
    rst $38                                       ; $5e91: $ff
    rst $38                                       ; $5e92: $ff
    rst $38                                       ; $5e93: $ff
    rst $38                                       ; $5e94: $ff
    rst $38                                       ; $5e95: $ff
    rst $38                                       ; $5e96: $ff
    rst $38                                       ; $5e97: $ff
    rst $38                                       ; $5e98: $ff
    rst $38                                       ; $5e99: $ff
    rst $38                                       ; $5e9a: $ff
    rst $38                                       ; $5e9b: $ff
    rst $38                                       ; $5e9c: $ff
    rst $38                                       ; $5e9d: $ff
    rst $38                                       ; $5e9e: $ff
    rst $38                                       ; $5e9f: $ff
    rst $38                                       ; $5ea0: $ff
    rst $38                                       ; $5ea1: $ff
    rst $38                                       ; $5ea2: $ff
    rst $38                                       ; $5ea3: $ff
    rst $38                                       ; $5ea4: $ff
    rst $38                                       ; $5ea5: $ff
    rst $38                                       ; $5ea6: $ff
    rst $38                                       ; $5ea7: $ff
    rst $38                                       ; $5ea8: $ff
    rst $38                                       ; $5ea9: $ff
    rst $38                                       ; $5eaa: $ff
    rst $38                                       ; $5eab: $ff
    rst $38                                       ; $5eac: $ff
    rst $38                                       ; $5ead: $ff
    rst $38                                       ; $5eae: $ff
    rst $38                                       ; $5eaf: $ff
    rst $38                                       ; $5eb0: $ff
    rst $38                                       ; $5eb1: $ff
    rst $38                                       ; $5eb2: $ff
    rst $38                                       ; $5eb3: $ff
    rst $38                                       ; $5eb4: $ff
    rst $38                                       ; $5eb5: $ff
    rst $38                                       ; $5eb6: $ff
    rst $38                                       ; $5eb7: $ff
    rst $38                                       ; $5eb8: $ff
    rst $38                                       ; $5eb9: $ff
    rst $38                                       ; $5eba: $ff
    rst $38                                       ; $5ebb: $ff
    rst $38                                       ; $5ebc: $ff
    rst $38                                       ; $5ebd: $ff
    rst $38                                       ; $5ebe: $ff
    rst $38                                       ; $5ebf: $ff
    rst $38                                       ; $5ec0: $ff
    rst $38                                       ; $5ec1: $ff
    rst $38                                       ; $5ec2: $ff
    rst $38                                       ; $5ec3: $ff
    rst $38                                       ; $5ec4: $ff
    rst $38                                       ; $5ec5: $ff
    rst $38                                       ; $5ec6: $ff
    rst $38                                       ; $5ec7: $ff
    rst $38                                       ; $5ec8: $ff
    rst $38                                       ; $5ec9: $ff
    rst $38                                       ; $5eca: $ff
    rst $38                                       ; $5ecb: $ff
    rst $38                                       ; $5ecc: $ff
    rst $38                                       ; $5ecd: $ff
    rst $38                                       ; $5ece: $ff
    rst $38                                       ; $5ecf: $ff
    rst $38                                       ; $5ed0: $ff
    rst $38                                       ; $5ed1: $ff
    rst $38                                       ; $5ed2: $ff
    rst $38                                       ; $5ed3: $ff
    rst $38                                       ; $5ed4: $ff
    rst $38                                       ; $5ed5: $ff
    rst $38                                       ; $5ed6: $ff
    rst $38                                       ; $5ed7: $ff
    rst $38                                       ; $5ed8: $ff
    rst $38                                       ; $5ed9: $ff
    rst $38                                       ; $5eda: $ff
    rst $38                                       ; $5edb: $ff
    rst $38                                       ; $5edc: $ff
    rst $38                                       ; $5edd: $ff
    rst $38                                       ; $5ede: $ff
    rst $38                                       ; $5edf: $ff
    rst $38                                       ; $5ee0: $ff
    rst $38                                       ; $5ee1: $ff
    rst $38                                       ; $5ee2: $ff
    rst $38                                       ; $5ee3: $ff
    rst $38                                       ; $5ee4: $ff
    rst $38                                       ; $5ee5: $ff
    rst $38                                       ; $5ee6: $ff
    rst $38                                       ; $5ee7: $ff
    rst $38                                       ; $5ee8: $ff
    rst $38                                       ; $5ee9: $ff
    rst $38                                       ; $5eea: $ff
    rst $38                                       ; $5eeb: $ff
    rst $38                                       ; $5eec: $ff
    rst $38                                       ; $5eed: $ff
    rst $38                                       ; $5eee: $ff
    rst $38                                       ; $5eef: $ff
    rst $38                                       ; $5ef0: $ff
    rst $38                                       ; $5ef1: $ff
    rst $38                                       ; $5ef2: $ff
    rst $38                                       ; $5ef3: $ff
    rst $38                                       ; $5ef4: $ff
    rst $38                                       ; $5ef5: $ff
    rst $38                                       ; $5ef6: $ff
    rst $38                                       ; $5ef7: $ff
    rst $38                                       ; $5ef8: $ff
    rst $38                                       ; $5ef9: $ff
    rst $38                                       ; $5efa: $ff
    rst $38                                       ; $5efb: $ff
    rst $38                                       ; $5efc: $ff
    rst $38                                       ; $5efd: $ff
    rst $38                                       ; $5efe: $ff
    rst $38                                       ; $5eff: $ff
    rst $38                                       ; $5f00: $ff
    rst $38                                       ; $5f01: $ff
    rst $38                                       ; $5f02: $ff
    rst $38                                       ; $5f03: $ff
    rst $38                                       ; $5f04: $ff
    rst $38                                       ; $5f05: $ff
    rst $38                                       ; $5f06: $ff
    rst $38                                       ; $5f07: $ff
    rst $38                                       ; $5f08: $ff
    rst $38                                       ; $5f09: $ff
    rst $38                                       ; $5f0a: $ff
    rst $38                                       ; $5f0b: $ff
    rst $38                                       ; $5f0c: $ff
    rst $38                                       ; $5f0d: $ff
    rst $38                                       ; $5f0e: $ff
    rst $38                                       ; $5f0f: $ff
    rst $38                                       ; $5f10: $ff
    rst $38                                       ; $5f11: $ff
    rst $38                                       ; $5f12: $ff
    rst $38                                       ; $5f13: $ff
    rst $38                                       ; $5f14: $ff
    rst $38                                       ; $5f15: $ff
    rst $38                                       ; $5f16: $ff
    rst $38                                       ; $5f17: $ff
    rst $38                                       ; $5f18: $ff
    rst $38                                       ; $5f19: $ff
    rst $38                                       ; $5f1a: $ff
    rst $38                                       ; $5f1b: $ff
    rst $38                                       ; $5f1c: $ff
    rst $38                                       ; $5f1d: $ff
    rst $38                                       ; $5f1e: $ff
    rst $38                                       ; $5f1f: $ff
    rst $38                                       ; $5f20: $ff
    rst $38                                       ; $5f21: $ff
    rst $38                                       ; $5f22: $ff
    rst $38                                       ; $5f23: $ff
    rst $38                                       ; $5f24: $ff
    rst $38                                       ; $5f25: $ff
    rst $38                                       ; $5f26: $ff
    rst $38                                       ; $5f27: $ff
    rst $38                                       ; $5f28: $ff
    rst $38                                       ; $5f29: $ff
    rst $38                                       ; $5f2a: $ff
    rst $38                                       ; $5f2b: $ff
    rst $38                                       ; $5f2c: $ff
    rst $38                                       ; $5f2d: $ff
    rst $38                                       ; $5f2e: $ff
    rst $38                                       ; $5f2f: $ff
    rst $38                                       ; $5f30: $ff
    rst $38                                       ; $5f31: $ff
    rst $38                                       ; $5f32: $ff
    rst $38                                       ; $5f33: $ff
    rst $38                                       ; $5f34: $ff
    rst $38                                       ; $5f35: $ff
    rst $38                                       ; $5f36: $ff
    rst $38                                       ; $5f37: $ff
    rst $38                                       ; $5f38: $ff
    rst $38                                       ; $5f39: $ff
    rst $38                                       ; $5f3a: $ff
    rst $38                                       ; $5f3b: $ff
    rst $38                                       ; $5f3c: $ff
    rst $38                                       ; $5f3d: $ff
    rst $38                                       ; $5f3e: $ff
    rst $38                                       ; $5f3f: $ff
    rst $38                                       ; $5f40: $ff
    rst $38                                       ; $5f41: $ff
    rst $38                                       ; $5f42: $ff
    rst $38                                       ; $5f43: $ff
    rst $38                                       ; $5f44: $ff
    rst $38                                       ; $5f45: $ff
    rst $38                                       ; $5f46: $ff
    rst $38                                       ; $5f47: $ff
    rst $38                                       ; $5f48: $ff
    rst $38                                       ; $5f49: $ff
    rst $38                                       ; $5f4a: $ff
    rst $38                                       ; $5f4b: $ff
    rst $38                                       ; $5f4c: $ff
    rst $38                                       ; $5f4d: $ff
    rst $38                                       ; $5f4e: $ff
    rst $38                                       ; $5f4f: $ff
    rst $38                                       ; $5f50: $ff
    rst $38                                       ; $5f51: $ff
    rst $38                                       ; $5f52: $ff
    rst $38                                       ; $5f53: $ff
    rst $38                                       ; $5f54: $ff
    rst $38                                       ; $5f55: $ff
    rst $38                                       ; $5f56: $ff
    rst $38                                       ; $5f57: $ff
    rst $38                                       ; $5f58: $ff
    rst $38                                       ; $5f59: $ff
    rst $38                                       ; $5f5a: $ff
    rst $38                                       ; $5f5b: $ff
    rst $38                                       ; $5f5c: $ff
    rst $38                                       ; $5f5d: $ff
    rst $38                                       ; $5f5e: $ff
    rst $38                                       ; $5f5f: $ff
    rst $38                                       ; $5f60: $ff
    rst $38                                       ; $5f61: $ff
    rst $38                                       ; $5f62: $ff
    rst $38                                       ; $5f63: $ff
    rst $38                                       ; $5f64: $ff
    rst $38                                       ; $5f65: $ff
    rst $38                                       ; $5f66: $ff
    rst $38                                       ; $5f67: $ff
    rst $38                                       ; $5f68: $ff
    rst $38                                       ; $5f69: $ff
    rst $38                                       ; $5f6a: $ff
    rst $38                                       ; $5f6b: $ff
    rst $38                                       ; $5f6c: $ff
    rst $38                                       ; $5f6d: $ff
    rst $38                                       ; $5f6e: $ff
    rst $38                                       ; $5f6f: $ff
    rst $38                                       ; $5f70: $ff
    rst $38                                       ; $5f71: $ff
    rst $38                                       ; $5f72: $ff
    rst $38                                       ; $5f73: $ff
    rst $38                                       ; $5f74: $ff
    rst $38                                       ; $5f75: $ff
    rst $38                                       ; $5f76: $ff
    rst $38                                       ; $5f77: $ff
    rst $38                                       ; $5f78: $ff
    rst $38                                       ; $5f79: $ff
    rst $38                                       ; $5f7a: $ff
    rst $38                                       ; $5f7b: $ff
    rst $38                                       ; $5f7c: $ff
    rst $38                                       ; $5f7d: $ff
    rst $38                                       ; $5f7e: $ff
    rst $38                                       ; $5f7f: $ff
    rst $38                                       ; $5f80: $ff
    rst $38                                       ; $5f81: $ff
    rst $38                                       ; $5f82: $ff
    rst $38                                       ; $5f83: $ff
    rst $38                                       ; $5f84: $ff
    rst $38                                       ; $5f85: $ff
    rst $38                                       ; $5f86: $ff
    rst $38                                       ; $5f87: $ff
    rst $38                                       ; $5f88: $ff
    rst $38                                       ; $5f89: $ff
    rst $38                                       ; $5f8a: $ff
    rst $38                                       ; $5f8b: $ff
    rst $38                                       ; $5f8c: $ff
    rst $38                                       ; $5f8d: $ff
    rst $38                                       ; $5f8e: $ff
    rst $38                                       ; $5f8f: $ff
    rst $38                                       ; $5f90: $ff
    rst $38                                       ; $5f91: $ff
    rst $38                                       ; $5f92: $ff
    rst $38                                       ; $5f93: $ff
    rst $38                                       ; $5f94: $ff
    rst $38                                       ; $5f95: $ff
    rst $38                                       ; $5f96: $ff
    rst $38                                       ; $5f97: $ff
    rst $38                                       ; $5f98: $ff
    rst $38                                       ; $5f99: $ff
    rst $38                                       ; $5f9a: $ff
    rst $38                                       ; $5f9b: $ff
    rst $38                                       ; $5f9c: $ff
    rst $38                                       ; $5f9d: $ff
    rst $38                                       ; $5f9e: $ff
    rst $38                                       ; $5f9f: $ff
    rst $38                                       ; $5fa0: $ff
    rst $38                                       ; $5fa1: $ff
    rst $38                                       ; $5fa2: $ff
    rst $38                                       ; $5fa3: $ff
    rst $38                                       ; $5fa4: $ff
    rst $38                                       ; $5fa5: $ff
    rst $38                                       ; $5fa6: $ff
    rst $38                                       ; $5fa7: $ff
    rst $38                                       ; $5fa8: $ff
    rst $38                                       ; $5fa9: $ff
    rst $38                                       ; $5faa: $ff
    rst $38                                       ; $5fab: $ff
    rst $38                                       ; $5fac: $ff
    rst $38                                       ; $5fad: $ff
    rst $38                                       ; $5fae: $ff
    rst $38                                       ; $5faf: $ff
    rst $38                                       ; $5fb0: $ff
    rst $38                                       ; $5fb1: $ff
    rst $38                                       ; $5fb2: $ff
    rst $38                                       ; $5fb3: $ff
    rst $38                                       ; $5fb4: $ff
    rst $38                                       ; $5fb5: $ff
    rst $38                                       ; $5fb6: $ff
    rst $38                                       ; $5fb7: $ff
    rst $38                                       ; $5fb8: $ff
    rst $38                                       ; $5fb9: $ff
    rst $38                                       ; $5fba: $ff
    rst $38                                       ; $5fbb: $ff
    rst $38                                       ; $5fbc: $ff
    rst $38                                       ; $5fbd: $ff
    rst $38                                       ; $5fbe: $ff
    rst $38                                       ; $5fbf: $ff
    rst $38                                       ; $5fc0: $ff
    rst $38                                       ; $5fc1: $ff
    rst $38                                       ; $5fc2: $ff
    rst $38                                       ; $5fc3: $ff
    rst $38                                       ; $5fc4: $ff
    rst $38                                       ; $5fc5: $ff
    rst $38                                       ; $5fc6: $ff
    rst $38                                       ; $5fc7: $ff
    rst $38                                       ; $5fc8: $ff
    rst $38                                       ; $5fc9: $ff
    rst $38                                       ; $5fca: $ff
    rst $38                                       ; $5fcb: $ff
    rst $38                                       ; $5fcc: $ff
    rst $38                                       ; $5fcd: $ff
    rst $38                                       ; $5fce: $ff
    rst $38                                       ; $5fcf: $ff
    rst $38                                       ; $5fd0: $ff
    rst $38                                       ; $5fd1: $ff
    rst $38                                       ; $5fd2: $ff
    rst $38                                       ; $5fd3: $ff
    rst $38                                       ; $5fd4: $ff
    rst $38                                       ; $5fd5: $ff
    rst $38                                       ; $5fd6: $ff
    rst $38                                       ; $5fd7: $ff
    rst $38                                       ; $5fd8: $ff
    rst $38                                       ; $5fd9: $ff
    rst $38                                       ; $5fda: $ff
    rst $38                                       ; $5fdb: $ff
    rst $38                                       ; $5fdc: $ff
    rst $38                                       ; $5fdd: $ff
    rst $38                                       ; $5fde: $ff
    rst $38                                       ; $5fdf: $ff
    rst $38                                       ; $5fe0: $ff
    rst $38                                       ; $5fe1: $ff
    rst $38                                       ; $5fe2: $ff
    rst $38                                       ; $5fe3: $ff
    rst $38                                       ; $5fe4: $ff
    rst $38                                       ; $5fe5: $ff
    rst $38                                       ; $5fe6: $ff
    rst $38                                       ; $5fe7: $ff
    rst $38                                       ; $5fe8: $ff
    rst $38                                       ; $5fe9: $ff
    rst $38                                       ; $5fea: $ff
    rst $38                                       ; $5feb: $ff
    rst $38                                       ; $5fec: $ff
    rst $38                                       ; $5fed: $ff
    rst $38                                       ; $5fee: $ff
    rst $38                                       ; $5fef: $ff
    rst $38                                       ; $5ff0: $ff
    rst $38                                       ; $5ff1: $ff
    rst $38                                       ; $5ff2: $ff
    rst $38                                       ; $5ff3: $ff
    rst $38                                       ; $5ff4: $ff
    rst $38                                       ; $5ff5: $ff
    rst $38                                       ; $5ff6: $ff
    rst $38                                       ; $5ff7: $ff
    rst $38                                       ; $5ff8: $ff
    rst $38                                       ; $5ff9: $ff
    rst $38                                       ; $5ffa: $ff
    rst $38                                       ; $5ffb: $ff
    rst $38                                       ; $5ffc: $ff
    rst $38                                       ; $5ffd: $ff
    rst $38                                       ; $5ffe: $ff
    rst $38                                       ; $5fff: $ff
    rst $38                                       ; $6000: $ff
    rst $38                                       ; $6001: $ff
    rst $38                                       ; $6002: $ff
    rst $38                                       ; $6003: $ff
    rst $38                                       ; $6004: $ff
    rst $38                                       ; $6005: $ff
    rst $38                                       ; $6006: $ff
    rst $38                                       ; $6007: $ff
    rst $38                                       ; $6008: $ff
    rst $38                                       ; $6009: $ff
    rst $38                                       ; $600a: $ff
    rst $38                                       ; $600b: $ff
    rst $38                                       ; $600c: $ff
    rst $38                                       ; $600d: $ff
    rst $38                                       ; $600e: $ff
    rst $38                                       ; $600f: $ff
    rst $38                                       ; $6010: $ff
    rst $38                                       ; $6011: $ff
    rst $38                                       ; $6012: $ff
    rst $38                                       ; $6013: $ff
    rst $38                                       ; $6014: $ff
    rst $38                                       ; $6015: $ff
    rst $38                                       ; $6016: $ff
    rst $38                                       ; $6017: $ff
    rst $38                                       ; $6018: $ff
    rst $38                                       ; $6019: $ff
    rst $38                                       ; $601a: $ff
    rst $38                                       ; $601b: $ff
    rst $38                                       ; $601c: $ff
    rst $38                                       ; $601d: $ff
    rst $38                                       ; $601e: $ff
    rst $38                                       ; $601f: $ff
    rst $38                                       ; $6020: $ff
    rst $38                                       ; $6021: $ff
    rst $38                                       ; $6022: $ff
    rst $38                                       ; $6023: $ff
    rst $38                                       ; $6024: $ff
    rst $38                                       ; $6025: $ff
    rst $38                                       ; $6026: $ff
    rst $38                                       ; $6027: $ff
    rst $38                                       ; $6028: $ff
    rst $38                                       ; $6029: $ff
    rst $38                                       ; $602a: $ff
    rst $38                                       ; $602b: $ff
    rst $38                                       ; $602c: $ff
    rst $38                                       ; $602d: $ff
    rst $38                                       ; $602e: $ff
    rst $38                                       ; $602f: $ff
    rst $38                                       ; $6030: $ff
    rst $38                                       ; $6031: $ff
    rst $38                                       ; $6032: $ff
    rst $38                                       ; $6033: $ff
    rst $38                                       ; $6034: $ff
    rst $38                                       ; $6035: $ff
    rst $38                                       ; $6036: $ff
    rst $38                                       ; $6037: $ff
    rst $38                                       ; $6038: $ff
    rst $38                                       ; $6039: $ff
    rst $38                                       ; $603a: $ff
    rst $38                                       ; $603b: $ff
    rst $38                                       ; $603c: $ff
    rst $38                                       ; $603d: $ff
    rst $38                                       ; $603e: $ff
    rst $38                                       ; $603f: $ff
    rst $38                                       ; $6040: $ff
    rst $38                                       ; $6041: $ff
    rst $38                                       ; $6042: $ff
    rst $38                                       ; $6043: $ff
    rst $38                                       ; $6044: $ff
    rst $38                                       ; $6045: $ff
    rst $38                                       ; $6046: $ff
    rst $38                                       ; $6047: $ff
    rst $38                                       ; $6048: $ff
    rst $38                                       ; $6049: $ff
    rst $38                                       ; $604a: $ff
    rst $38                                       ; $604b: $ff
    rst $38                                       ; $604c: $ff
    rst $38                                       ; $604d: $ff
    rst $38                                       ; $604e: $ff
    rst $38                                       ; $604f: $ff
    rst $38                                       ; $6050: $ff
    rst $38                                       ; $6051: $ff
    rst $38                                       ; $6052: $ff
    rst $38                                       ; $6053: $ff
    rst $38                                       ; $6054: $ff
    rst $38                                       ; $6055: $ff
    rst $38                                       ; $6056: $ff
    rst $38                                       ; $6057: $ff
    rst $38                                       ; $6058: $ff
    rst $38                                       ; $6059: $ff
    rst $38                                       ; $605a: $ff
    rst $38                                       ; $605b: $ff
    rst $38                                       ; $605c: $ff
    rst $38                                       ; $605d: $ff
    rst $38                                       ; $605e: $ff
    rst $38                                       ; $605f: $ff
    rst $38                                       ; $6060: $ff
    rst $38                                       ; $6061: $ff
    rst $38                                       ; $6062: $ff
    rst $38                                       ; $6063: $ff
    rst $38                                       ; $6064: $ff
    rst $38                                       ; $6065: $ff
    rst $38                                       ; $6066: $ff
    rst $38                                       ; $6067: $ff
    rst $38                                       ; $6068: $ff
    rst $38                                       ; $6069: $ff
    rst $38                                       ; $606a: $ff
    rst $38                                       ; $606b: $ff
    rst $38                                       ; $606c: $ff
    rst $38                                       ; $606d: $ff
    rst $38                                       ; $606e: $ff
    rst $38                                       ; $606f: $ff
    rst $38                                       ; $6070: $ff
    rst $38                                       ; $6071: $ff
    rst $38                                       ; $6072: $ff
    rst $38                                       ; $6073: $ff
    rst $38                                       ; $6074: $ff
    rst $38                                       ; $6075: $ff
    rst $38                                       ; $6076: $ff
    rst $38                                       ; $6077: $ff
    rst $38                                       ; $6078: $ff
    rst $38                                       ; $6079: $ff
    rst $38                                       ; $607a: $ff
    rst $38                                       ; $607b: $ff
    rst $38                                       ; $607c: $ff
    rst $38                                       ; $607d: $ff
    rst $38                                       ; $607e: $ff
    rst $38                                       ; $607f: $ff
    rst $38                                       ; $6080: $ff
    rst $38                                       ; $6081: $ff
    rst $38                                       ; $6082: $ff
    rst $38                                       ; $6083: $ff
    rst $38                                       ; $6084: $ff
    rst $38                                       ; $6085: $ff
    rst $38                                       ; $6086: $ff
    rst $38                                       ; $6087: $ff
    rst $38                                       ; $6088: $ff
    rst $38                                       ; $6089: $ff
    rst $38                                       ; $608a: $ff
    rst $38                                       ; $608b: $ff
    rst $38                                       ; $608c: $ff
    rst $38                                       ; $608d: $ff
    rst $38                                       ; $608e: $ff
    rst $38                                       ; $608f: $ff
    rst $38                                       ; $6090: $ff
    rst $38                                       ; $6091: $ff
    rst $38                                       ; $6092: $ff
    rst $38                                       ; $6093: $ff
    rst $38                                       ; $6094: $ff
    rst $38                                       ; $6095: $ff
    rst $38                                       ; $6096: $ff
    rst $38                                       ; $6097: $ff
    rst $38                                       ; $6098: $ff
    rst $38                                       ; $6099: $ff
    rst $38                                       ; $609a: $ff
    rst $38                                       ; $609b: $ff
    rst $38                                       ; $609c: $ff
    rst $38                                       ; $609d: $ff
    rst $38                                       ; $609e: $ff
    rst $38                                       ; $609f: $ff
    rst $38                                       ; $60a0: $ff
    rst $38                                       ; $60a1: $ff
    rst $38                                       ; $60a2: $ff
    rst $38                                       ; $60a3: $ff
    rst $38                                       ; $60a4: $ff
    rst $38                                       ; $60a5: $ff
    rst $38                                       ; $60a6: $ff
    rst $38                                       ; $60a7: $ff
    rst $38                                       ; $60a8: $ff
    rst $38                                       ; $60a9: $ff
    rst $38                                       ; $60aa: $ff
    rst $38                                       ; $60ab: $ff
    rst $38                                       ; $60ac: $ff
    rst $38                                       ; $60ad: $ff
    rst $38                                       ; $60ae: $ff
    rst $38                                       ; $60af: $ff
    rst $38                                       ; $60b0: $ff
    rst $38                                       ; $60b1: $ff
    rst $38                                       ; $60b2: $ff
    rst $38                                       ; $60b3: $ff
    rst $38                                       ; $60b4: $ff
    rst $38                                       ; $60b5: $ff
    rst $38                                       ; $60b6: $ff
    rst $38                                       ; $60b7: $ff
    rst $38                                       ; $60b8: $ff
    rst $38                                       ; $60b9: $ff
    rst $38                                       ; $60ba: $ff
    rst $38                                       ; $60bb: $ff
    rst $38                                       ; $60bc: $ff
    rst $38                                       ; $60bd: $ff
    rst $38                                       ; $60be: $ff
    rst $38                                       ; $60bf: $ff
    rst $38                                       ; $60c0: $ff
    rst $38                                       ; $60c1: $ff
    rst $38                                       ; $60c2: $ff
    rst $38                                       ; $60c3: $ff
    rst $38                                       ; $60c4: $ff
    rst $38                                       ; $60c5: $ff
    rst $38                                       ; $60c6: $ff
    rst $38                                       ; $60c7: $ff
    rst $38                                       ; $60c8: $ff
    rst $38                                       ; $60c9: $ff
    rst $38                                       ; $60ca: $ff
    rst $38                                       ; $60cb: $ff
    rst $38                                       ; $60cc: $ff
    rst $38                                       ; $60cd: $ff
    rst $38                                       ; $60ce: $ff
    rst $38                                       ; $60cf: $ff
    rst $38                                       ; $60d0: $ff
    rst $38                                       ; $60d1: $ff
    rst $38                                       ; $60d2: $ff
    rst $38                                       ; $60d3: $ff
    rst $38                                       ; $60d4: $ff
    rst $38                                       ; $60d5: $ff
    rst $38                                       ; $60d6: $ff
    rst $38                                       ; $60d7: $ff
    rst $38                                       ; $60d8: $ff
    rst $38                                       ; $60d9: $ff
    rst $38                                       ; $60da: $ff
    rst $38                                       ; $60db: $ff
    rst $38                                       ; $60dc: $ff
    rst $38                                       ; $60dd: $ff
    rst $38                                       ; $60de: $ff
    rst $38                                       ; $60df: $ff
    rst $38                                       ; $60e0: $ff
    rst $38                                       ; $60e1: $ff
    rst $38                                       ; $60e2: $ff
    rst $38                                       ; $60e3: $ff
    rst $38                                       ; $60e4: $ff
    rst $38                                       ; $60e5: $ff
    rst $38                                       ; $60e6: $ff
    rst $38                                       ; $60e7: $ff
    rst $38                                       ; $60e8: $ff
    rst $38                                       ; $60e9: $ff
    rst $38                                       ; $60ea: $ff
    rst $38                                       ; $60eb: $ff
    rst $38                                       ; $60ec: $ff
    rst $38                                       ; $60ed: $ff
    rst $38                                       ; $60ee: $ff
    rst $38                                       ; $60ef: $ff
    rst $38                                       ; $60f0: $ff
    rst $38                                       ; $60f1: $ff
    rst $38                                       ; $60f2: $ff
    rst $38                                       ; $60f3: $ff
    rst $38                                       ; $60f4: $ff
    rst $38                                       ; $60f5: $ff
    rst $38                                       ; $60f6: $ff
    rst $38                                       ; $60f7: $ff
    rst $38                                       ; $60f8: $ff
    rst $38                                       ; $60f9: $ff
    rst $38                                       ; $60fa: $ff
    rst $38                                       ; $60fb: $ff
    rst $38                                       ; $60fc: $ff
    rst $38                                       ; $60fd: $ff
    rst $38                                       ; $60fe: $ff
    rst $38                                       ; $60ff: $ff
    rst $38                                       ; $6100: $ff
    rst $38                                       ; $6101: $ff
    rst $38                                       ; $6102: $ff
    rst $38                                       ; $6103: $ff
    rst $38                                       ; $6104: $ff
    rst $38                                       ; $6105: $ff
    rst $38                                       ; $6106: $ff
    rst $38                                       ; $6107: $ff
    rst $38                                       ; $6108: $ff
    rst $38                                       ; $6109: $ff
    rst $38                                       ; $610a: $ff
    rst $38                                       ; $610b: $ff
    rst $38                                       ; $610c: $ff
    rst $38                                       ; $610d: $ff
    rst $38                                       ; $610e: $ff
    rst $38                                       ; $610f: $ff
    rst $38                                       ; $6110: $ff
    rst $38                                       ; $6111: $ff
    rst $38                                       ; $6112: $ff
    rst $38                                       ; $6113: $ff
    rst $38                                       ; $6114: $ff
    rst $38                                       ; $6115: $ff
    rst $38                                       ; $6116: $ff
    rst $38                                       ; $6117: $ff
    rst $38                                       ; $6118: $ff
    rst $38                                       ; $6119: $ff
    rst $38                                       ; $611a: $ff
    rst $38                                       ; $611b: $ff
    rst $38                                       ; $611c: $ff
    rst $38                                       ; $611d: $ff
    rst $38                                       ; $611e: $ff
    rst $38                                       ; $611f: $ff
    rst $38                                       ; $6120: $ff
    rst $38                                       ; $6121: $ff
    rst $38                                       ; $6122: $ff
    rst $38                                       ; $6123: $ff
    rst $38                                       ; $6124: $ff
    rst $38                                       ; $6125: $ff
    rst $38                                       ; $6126: $ff
    rst $38                                       ; $6127: $ff
    rst $38                                       ; $6128: $ff
    rst $38                                       ; $6129: $ff
    rst $38                                       ; $612a: $ff
    rst $38                                       ; $612b: $ff
    rst $38                                       ; $612c: $ff
    rst $38                                       ; $612d: $ff
    rst $38                                       ; $612e: $ff
    rst $38                                       ; $612f: $ff
    rst $38                                       ; $6130: $ff
    rst $38                                       ; $6131: $ff
    rst $38                                       ; $6132: $ff
    rst $38                                       ; $6133: $ff
    rst $38                                       ; $6134: $ff
    rst $38                                       ; $6135: $ff
    rst $38                                       ; $6136: $ff
    rst $38                                       ; $6137: $ff
    rst $38                                       ; $6138: $ff
    rst $38                                       ; $6139: $ff
    rst $38                                       ; $613a: $ff
    rst $38                                       ; $613b: $ff
    rst $38                                       ; $613c: $ff
    rst $38                                       ; $613d: $ff
    rst $38                                       ; $613e: $ff
    rst $38                                       ; $613f: $ff
    rst $38                                       ; $6140: $ff
    rst $38                                       ; $6141: $ff
    rst $38                                       ; $6142: $ff
    rst $38                                       ; $6143: $ff
    rst $38                                       ; $6144: $ff
    rst $38                                       ; $6145: $ff
    rst $38                                       ; $6146: $ff
    rst $38                                       ; $6147: $ff
    rst $38                                       ; $6148: $ff
    rst $38                                       ; $6149: $ff
    rst $38                                       ; $614a: $ff
    rst $38                                       ; $614b: $ff
    rst $38                                       ; $614c: $ff
    rst $38                                       ; $614d: $ff
    rst $38                                       ; $614e: $ff
    rst $38                                       ; $614f: $ff
    rst $38                                       ; $6150: $ff
    rst $38                                       ; $6151: $ff
    rst $38                                       ; $6152: $ff
    rst $38                                       ; $6153: $ff
    rst $38                                       ; $6154: $ff
    rst $38                                       ; $6155: $ff

Call_032_6156:
    rst $38                                       ; $6156: $ff
    rst $38                                       ; $6157: $ff
    rst $38                                       ; $6158: $ff
    rst $38                                       ; $6159: $ff
    rst $38                                       ; $615a: $ff
    rst $38                                       ; $615b: $ff
    rst $38                                       ; $615c: $ff
    rst $38                                       ; $615d: $ff
    rst $38                                       ; $615e: $ff
    rst $38                                       ; $615f: $ff
    rst $38                                       ; $6160: $ff
    rst $38                                       ; $6161: $ff
    rst $38                                       ; $6162: $ff
    rst $38                                       ; $6163: $ff
    rst $38                                       ; $6164: $ff
    rst $38                                       ; $6165: $ff
    rst $38                                       ; $6166: $ff
    rst $38                                       ; $6167: $ff
    rst $38                                       ; $6168: $ff
    rst $38                                       ; $6169: $ff
    rst $38                                       ; $616a: $ff
    rst $38                                       ; $616b: $ff
    rst $38                                       ; $616c: $ff
    rst $38                                       ; $616d: $ff
    rst $38                                       ; $616e: $ff
    rst $38                                       ; $616f: $ff
    rst $38                                       ; $6170: $ff
    rst $38                                       ; $6171: $ff
    rst $38                                       ; $6172: $ff
    rst $38                                       ; $6173: $ff
    rst $38                                       ; $6174: $ff
    rst $38                                       ; $6175: $ff
    rst $38                                       ; $6176: $ff
    rst $38                                       ; $6177: $ff
    rst $38                                       ; $6178: $ff
    rst $38                                       ; $6179: $ff
    rst $38                                       ; $617a: $ff
    rst $38                                       ; $617b: $ff
    rst $38                                       ; $617c: $ff
    rst $38                                       ; $617d: $ff
    rst $38                                       ; $617e: $ff
    rst $38                                       ; $617f: $ff
    rst $38                                       ; $6180: $ff
    rst $38                                       ; $6181: $ff
    rst $38                                       ; $6182: $ff
    rst $38                                       ; $6183: $ff
    rst $38                                       ; $6184: $ff
    rst $38                                       ; $6185: $ff
    rst $38                                       ; $6186: $ff
    rst $38                                       ; $6187: $ff
    rst $38                                       ; $6188: $ff
    rst $38                                       ; $6189: $ff
    rst $38                                       ; $618a: $ff
    rst $38                                       ; $618b: $ff
    rst $38                                       ; $618c: $ff
    rst $38                                       ; $618d: $ff
    rst $38                                       ; $618e: $ff
    rst $38                                       ; $618f: $ff
    rst $38                                       ; $6190: $ff
    rst $38                                       ; $6191: $ff
    rst $38                                       ; $6192: $ff
    rst $38                                       ; $6193: $ff
    rst $38                                       ; $6194: $ff
    rst $38                                       ; $6195: $ff
    rst $38                                       ; $6196: $ff
    rst $38                                       ; $6197: $ff
    rst $38                                       ; $6198: $ff
    rst $38                                       ; $6199: $ff
    rst $38                                       ; $619a: $ff
    rst $38                                       ; $619b: $ff
    rst $38                                       ; $619c: $ff
    rst $38                                       ; $619d: $ff
    rst $38                                       ; $619e: $ff
    rst $38                                       ; $619f: $ff
    rst $38                                       ; $61a0: $ff
    rst $38                                       ; $61a1: $ff
    rst $38                                       ; $61a2: $ff
    rst $38                                       ; $61a3: $ff
    rst $38                                       ; $61a4: $ff
    rst $38                                       ; $61a5: $ff
    rst $38                                       ; $61a6: $ff
    rst $38                                       ; $61a7: $ff
    rst $38                                       ; $61a8: $ff
    rst $38                                       ; $61a9: $ff
    rst $38                                       ; $61aa: $ff
    rst $38                                       ; $61ab: $ff
    rst $38                                       ; $61ac: $ff
    rst $38                                       ; $61ad: $ff
    rst $38                                       ; $61ae: $ff
    rst $38                                       ; $61af: $ff
    rst $38                                       ; $61b0: $ff
    rst $38                                       ; $61b1: $ff
    rst $38                                       ; $61b2: $ff
    rst $38                                       ; $61b3: $ff
    rst $38                                       ; $61b4: $ff
    rst $38                                       ; $61b5: $ff
    rst $38                                       ; $61b6: $ff
    rst $38                                       ; $61b7: $ff
    rst $38                                       ; $61b8: $ff
    rst $38                                       ; $61b9: $ff
    rst $38                                       ; $61ba: $ff
    rst $38                                       ; $61bb: $ff
    rst $38                                       ; $61bc: $ff
    rst $38                                       ; $61bd: $ff
    rst $38                                       ; $61be: $ff
    rst $38                                       ; $61bf: $ff
    rst $38                                       ; $61c0: $ff
    rst $38                                       ; $61c1: $ff
    rst $38                                       ; $61c2: $ff
    rst $38                                       ; $61c3: $ff
    rst $38                                       ; $61c4: $ff
    rst $38                                       ; $61c5: $ff
    rst $38                                       ; $61c6: $ff
    rst $38                                       ; $61c7: $ff
    rst $38                                       ; $61c8: $ff
    rst $38                                       ; $61c9: $ff
    rst $38                                       ; $61ca: $ff
    rst $38                                       ; $61cb: $ff
    rst $38                                       ; $61cc: $ff
    rst $38                                       ; $61cd: $ff
    rst $38                                       ; $61ce: $ff
    rst $38                                       ; $61cf: $ff
    rst $38                                       ; $61d0: $ff
    rst $38                                       ; $61d1: $ff
    rst $38                                       ; $61d2: $ff
    rst $38                                       ; $61d3: $ff
    rst $38                                       ; $61d4: $ff
    rst $38                                       ; $61d5: $ff
    rst $38                                       ; $61d6: $ff
    rst $38                                       ; $61d7: $ff
    rst $38                                       ; $61d8: $ff
    rst $38                                       ; $61d9: $ff
    rst $38                                       ; $61da: $ff
    rst $38                                       ; $61db: $ff
    rst $38                                       ; $61dc: $ff
    rst $38                                       ; $61dd: $ff
    rst $38                                       ; $61de: $ff
    rst $38                                       ; $61df: $ff
    rst $38                                       ; $61e0: $ff
    rst $38                                       ; $61e1: $ff
    rst $38                                       ; $61e2: $ff
    rst $38                                       ; $61e3: $ff
    rst $38                                       ; $61e4: $ff
    rst $38                                       ; $61e5: $ff
    rst $38                                       ; $61e6: $ff
    rst $38                                       ; $61e7: $ff
    rst $38                                       ; $61e8: $ff
    rst $38                                       ; $61e9: $ff
    rst $38                                       ; $61ea: $ff
    rst $38                                       ; $61eb: $ff
    rst $38                                       ; $61ec: $ff
    rst $38                                       ; $61ed: $ff
    rst $38                                       ; $61ee: $ff
    rst $38                                       ; $61ef: $ff
    rst $38                                       ; $61f0: $ff
    rst $38                                       ; $61f1: $ff
    rst $38                                       ; $61f2: $ff
    rst $38                                       ; $61f3: $ff
    rst $38                                       ; $61f4: $ff
    rst $38                                       ; $61f5: $ff
    rst $38                                       ; $61f6: $ff
    rst $38                                       ; $61f7: $ff
    rst $38                                       ; $61f8: $ff
    rst $38                                       ; $61f9: $ff
    rst $38                                       ; $61fa: $ff
    rst $38                                       ; $61fb: $ff
    rst $38                                       ; $61fc: $ff
    rst $38                                       ; $61fd: $ff
    rst $38                                       ; $61fe: $ff
    rst $38                                       ; $61ff: $ff
    rst $38                                       ; $6200: $ff
    rst $38                                       ; $6201: $ff
    rst $38                                       ; $6202: $ff
    rst $38                                       ; $6203: $ff
    rst $38                                       ; $6204: $ff
    rst $38                                       ; $6205: $ff
    rst $38                                       ; $6206: $ff
    rst $38                                       ; $6207: $ff
    rst $38                                       ; $6208: $ff
    rst $38                                       ; $6209: $ff
    rst $38                                       ; $620a: $ff
    rst $38                                       ; $620b: $ff
    rst $38                                       ; $620c: $ff
    rst $38                                       ; $620d: $ff
    rst $38                                       ; $620e: $ff
    rst $38                                       ; $620f: $ff
    rst $38                                       ; $6210: $ff
    rst $38                                       ; $6211: $ff
    rst $38                                       ; $6212: $ff
    rst $38                                       ; $6213: $ff
    rst $38                                       ; $6214: $ff
    rst $38                                       ; $6215: $ff
    rst $38                                       ; $6216: $ff
    rst $38                                       ; $6217: $ff
    rst $38                                       ; $6218: $ff
    rst $38                                       ; $6219: $ff
    rst $38                                       ; $621a: $ff
    rst $38                                       ; $621b: $ff
    rst $38                                       ; $621c: $ff
    rst $38                                       ; $621d: $ff
    rst $38                                       ; $621e: $ff
    rst $38                                       ; $621f: $ff
    rst $38                                       ; $6220: $ff
    rst $38                                       ; $6221: $ff
    rst $38                                       ; $6222: $ff
    rst $38                                       ; $6223: $ff
    rst $38                                       ; $6224: $ff
    rst $38                                       ; $6225: $ff
    rst $38                                       ; $6226: $ff
    rst $38                                       ; $6227: $ff
    rst $38                                       ; $6228: $ff
    rst $38                                       ; $6229: $ff
    rst $38                                       ; $622a: $ff
    rst $38                                       ; $622b: $ff
    rst $38                                       ; $622c: $ff
    rst $38                                       ; $622d: $ff
    rst $38                                       ; $622e: $ff
    rst $38                                       ; $622f: $ff
    rst $38                                       ; $6230: $ff
    rst $38                                       ; $6231: $ff
    rst $38                                       ; $6232: $ff
    rst $38                                       ; $6233: $ff
    rst $38                                       ; $6234: $ff
    rst $38                                       ; $6235: $ff
    rst $38                                       ; $6236: $ff
    rst $38                                       ; $6237: $ff
    rst $38                                       ; $6238: $ff
    rst $38                                       ; $6239: $ff
    rst $38                                       ; $623a: $ff
    rst $38                                       ; $623b: $ff
    rst $38                                       ; $623c: $ff
    rst $38                                       ; $623d: $ff
    rst $38                                       ; $623e: $ff
    rst $38                                       ; $623f: $ff
    rst $38                                       ; $6240: $ff
    rst $38                                       ; $6241: $ff
    rst $38                                       ; $6242: $ff
    rst $38                                       ; $6243: $ff
    rst $38                                       ; $6244: $ff
    rst $38                                       ; $6245: $ff
    rst $38                                       ; $6246: $ff
    rst $38                                       ; $6247: $ff
    rst $38                                       ; $6248: $ff
    rst $38                                       ; $6249: $ff
    rst $38                                       ; $624a: $ff
    rst $38                                       ; $624b: $ff
    rst $38                                       ; $624c: $ff
    rst $38                                       ; $624d: $ff
    rst $38                                       ; $624e: $ff
    rst $38                                       ; $624f: $ff
    rst $38                                       ; $6250: $ff
    rst $38                                       ; $6251: $ff
    rst $38                                       ; $6252: $ff
    rst $38                                       ; $6253: $ff
    rst $38                                       ; $6254: $ff
    rst $38                                       ; $6255: $ff
    rst $38                                       ; $6256: $ff
    rst $38                                       ; $6257: $ff
    rst $38                                       ; $6258: $ff
    rst $38                                       ; $6259: $ff
    rst $38                                       ; $625a: $ff
    rst $38                                       ; $625b: $ff
    rst $38                                       ; $625c: $ff
    rst $38                                       ; $625d: $ff
    rst $38                                       ; $625e: $ff
    rst $38                                       ; $625f: $ff
    rst $38                                       ; $6260: $ff
    rst $38                                       ; $6261: $ff
    rst $38                                       ; $6262: $ff
    rst $38                                       ; $6263: $ff
    rst $38                                       ; $6264: $ff
    rst $38                                       ; $6265: $ff
    rst $38                                       ; $6266: $ff
    rst $38                                       ; $6267: $ff
    rst $38                                       ; $6268: $ff
    rst $38                                       ; $6269: $ff
    rst $38                                       ; $626a: $ff
    rst $38                                       ; $626b: $ff
    rst $38                                       ; $626c: $ff
    rst $38                                       ; $626d: $ff
    rst $38                                       ; $626e: $ff
    rst $38                                       ; $626f: $ff
    rst $38                                       ; $6270: $ff
    rst $38                                       ; $6271: $ff
    rst $38                                       ; $6272: $ff
    rst $38                                       ; $6273: $ff
    rst $38                                       ; $6274: $ff
    rst $38                                       ; $6275: $ff
    rst $38                                       ; $6276: $ff
    rst $38                                       ; $6277: $ff
    rst $38                                       ; $6278: $ff
    rst $38                                       ; $6279: $ff
    rst $38                                       ; $627a: $ff
    rst $38                                       ; $627b: $ff
    rst $38                                       ; $627c: $ff
    rst $38                                       ; $627d: $ff
    rst $38                                       ; $627e: $ff
    rst $38                                       ; $627f: $ff
    rst $38                                       ; $6280: $ff
    rst $38                                       ; $6281: $ff
    rst $38                                       ; $6282: $ff
    rst $38                                       ; $6283: $ff
    rst $38                                       ; $6284: $ff
    rst $38                                       ; $6285: $ff
    rst $38                                       ; $6286: $ff
    rst $38                                       ; $6287: $ff
    rst $38                                       ; $6288: $ff
    rst $38                                       ; $6289: $ff
    rst $38                                       ; $628a: $ff
    rst $38                                       ; $628b: $ff
    rst $38                                       ; $628c: $ff
    rst $38                                       ; $628d: $ff
    rst $38                                       ; $628e: $ff
    rst $38                                       ; $628f: $ff

Call_032_6290:
    rst $38                                       ; $6290: $ff
    rst $38                                       ; $6291: $ff
    rst $38                                       ; $6292: $ff
    rst $38                                       ; $6293: $ff
    rst $38                                       ; $6294: $ff
    rst $38                                       ; $6295: $ff
    rst $38                                       ; $6296: $ff
    rst $38                                       ; $6297: $ff
    rst $38                                       ; $6298: $ff
    rst $38                                       ; $6299: $ff
    rst $38                                       ; $629a: $ff
    rst $38                                       ; $629b: $ff
    rst $38                                       ; $629c: $ff
    rst $38                                       ; $629d: $ff
    rst $38                                       ; $629e: $ff
    rst $38                                       ; $629f: $ff
    rst $38                                       ; $62a0: $ff
    rst $38                                       ; $62a1: $ff
    rst $38                                       ; $62a2: $ff
    rst $38                                       ; $62a3: $ff
    rst $38                                       ; $62a4: $ff
    rst $38                                       ; $62a5: $ff
    rst $38                                       ; $62a6: $ff
    rst $38                                       ; $62a7: $ff
    rst $38                                       ; $62a8: $ff
    rst $38                                       ; $62a9: $ff
    rst $38                                       ; $62aa: $ff
    rst $38                                       ; $62ab: $ff
    rst $38                                       ; $62ac: $ff
    rst $38                                       ; $62ad: $ff
    rst $38                                       ; $62ae: $ff
    rst $38                                       ; $62af: $ff
    rst $38                                       ; $62b0: $ff
    rst $38                                       ; $62b1: $ff
    rst $38                                       ; $62b2: $ff
    rst $38                                       ; $62b3: $ff
    rst $38                                       ; $62b4: $ff
    rst $38                                       ; $62b5: $ff
    rst $38                                       ; $62b6: $ff
    rst $38                                       ; $62b7: $ff
    rst $38                                       ; $62b8: $ff
    rst $38                                       ; $62b9: $ff
    rst $38                                       ; $62ba: $ff
    rst $38                                       ; $62bb: $ff
    rst $38                                       ; $62bc: $ff
    rst $38                                       ; $62bd: $ff
    rst $38                                       ; $62be: $ff
    rst $38                                       ; $62bf: $ff
    rst $38                                       ; $62c0: $ff
    rst $38                                       ; $62c1: $ff
    rst $38                                       ; $62c2: $ff
    rst $38                                       ; $62c3: $ff
    rst $38                                       ; $62c4: $ff
    rst $38                                       ; $62c5: $ff
    rst $38                                       ; $62c6: $ff
    rst $38                                       ; $62c7: $ff
    rst $38                                       ; $62c8: $ff
    rst $38                                       ; $62c9: $ff
    rst $38                                       ; $62ca: $ff
    rst $38                                       ; $62cb: $ff
    rst $38                                       ; $62cc: $ff
    rst $38                                       ; $62cd: $ff
    rst $38                                       ; $62ce: $ff
    rst $38                                       ; $62cf: $ff
    rst $38                                       ; $62d0: $ff
    rst $38                                       ; $62d1: $ff
    rst $38                                       ; $62d2: $ff
    rst $38                                       ; $62d3: $ff
    rst $38                                       ; $62d4: $ff
    rst $38                                       ; $62d5: $ff
    rst $38                                       ; $62d6: $ff
    rst $38                                       ; $62d7: $ff
    rst $38                                       ; $62d8: $ff
    rst $38                                       ; $62d9: $ff
    rst $38                                       ; $62da: $ff
    rst $38                                       ; $62db: $ff
    rst $38                                       ; $62dc: $ff
    rst $38                                       ; $62dd: $ff
    rst $38                                       ; $62de: $ff
    rst $38                                       ; $62df: $ff
    rst $38                                       ; $62e0: $ff
    rst $38                                       ; $62e1: $ff
    rst $38                                       ; $62e2: $ff
    rst $38                                       ; $62e3: $ff
    rst $38                                       ; $62e4: $ff
    rst $38                                       ; $62e5: $ff
    rst $38                                       ; $62e6: $ff
    rst $38                                       ; $62e7: $ff
    rst $38                                       ; $62e8: $ff
    rst $38                                       ; $62e9: $ff
    rst $38                                       ; $62ea: $ff
    rst $38                                       ; $62eb: $ff
    rst $38                                       ; $62ec: $ff
    rst $38                                       ; $62ed: $ff
    rst $38                                       ; $62ee: $ff
    rst $38                                       ; $62ef: $ff
    rst $38                                       ; $62f0: $ff
    rst $38                                       ; $62f1: $ff
    rst $38                                       ; $62f2: $ff
    rst $38                                       ; $62f3: $ff
    rst $38                                       ; $62f4: $ff
    rst $38                                       ; $62f5: $ff
    rst $38                                       ; $62f6: $ff
    rst $38                                       ; $62f7: $ff
    rst $38                                       ; $62f8: $ff
    rst $38                                       ; $62f9: $ff
    rst $38                                       ; $62fa: $ff
    rst $38                                       ; $62fb: $ff
    rst $38                                       ; $62fc: $ff
    rst $38                                       ; $62fd: $ff
    rst $38                                       ; $62fe: $ff
    rst $38                                       ; $62ff: $ff
    rst $38                                       ; $6300: $ff
    rst $38                                       ; $6301: $ff
    rst $38                                       ; $6302: $ff
    rst $38                                       ; $6303: $ff
    rst $38                                       ; $6304: $ff
    rst $38                                       ; $6305: $ff
    rst $38                                       ; $6306: $ff
    rst $38                                       ; $6307: $ff
    rst $38                                       ; $6308: $ff
    rst $38                                       ; $6309: $ff
    rst $38                                       ; $630a: $ff
    rst $38                                       ; $630b: $ff
    rst $38                                       ; $630c: $ff
    rst $38                                       ; $630d: $ff
    rst $38                                       ; $630e: $ff
    rst $38                                       ; $630f: $ff
    rst $38                                       ; $6310: $ff
    rst $38                                       ; $6311: $ff
    rst $38                                       ; $6312: $ff
    rst $38                                       ; $6313: $ff
    rst $38                                       ; $6314: $ff
    rst $38                                       ; $6315: $ff
    rst $38                                       ; $6316: $ff
    rst $38                                       ; $6317: $ff
    rst $38                                       ; $6318: $ff
    rst $38                                       ; $6319: $ff
    rst $38                                       ; $631a: $ff
    rst $38                                       ; $631b: $ff
    rst $38                                       ; $631c: $ff
    rst $38                                       ; $631d: $ff
    rst $38                                       ; $631e: $ff
    rst $38                                       ; $631f: $ff
    rst $38                                       ; $6320: $ff
    rst $38                                       ; $6321: $ff
    rst $38                                       ; $6322: $ff
    rst $38                                       ; $6323: $ff
    rst $38                                       ; $6324: $ff
    rst $38                                       ; $6325: $ff
    rst $38                                       ; $6326: $ff
    rst $38                                       ; $6327: $ff
    rst $38                                       ; $6328: $ff
    rst $38                                       ; $6329: $ff
    rst $38                                       ; $632a: $ff
    rst $38                                       ; $632b: $ff
    rst $38                                       ; $632c: $ff
    rst $38                                       ; $632d: $ff
    rst $38                                       ; $632e: $ff
    rst $38                                       ; $632f: $ff
    rst $38                                       ; $6330: $ff
    rst $38                                       ; $6331: $ff
    rst $38                                       ; $6332: $ff
    rst $38                                       ; $6333: $ff
    rst $38                                       ; $6334: $ff
    rst $38                                       ; $6335: $ff
    rst $38                                       ; $6336: $ff
    rst $38                                       ; $6337: $ff
    rst $38                                       ; $6338: $ff
    rst $38                                       ; $6339: $ff
    rst $38                                       ; $633a: $ff
    rst $38                                       ; $633b: $ff
    rst $38                                       ; $633c: $ff
    rst $38                                       ; $633d: $ff
    rst $38                                       ; $633e: $ff
    rst $38                                       ; $633f: $ff
    rst $38                                       ; $6340: $ff
    rst $38                                       ; $6341: $ff
    rst $38                                       ; $6342: $ff
    rst $38                                       ; $6343: $ff
    rst $38                                       ; $6344: $ff
    rst $38                                       ; $6345: $ff
    rst $38                                       ; $6346: $ff
    rst $38                                       ; $6347: $ff
    rst $38                                       ; $6348: $ff
    rst $38                                       ; $6349: $ff
    rst $38                                       ; $634a: $ff
    rst $38                                       ; $634b: $ff
    rst $38                                       ; $634c: $ff
    rst $38                                       ; $634d: $ff
    rst $38                                       ; $634e: $ff
    rst $38                                       ; $634f: $ff
    rst $38                                       ; $6350: $ff
    rst $38                                       ; $6351: $ff
    rst $38                                       ; $6352: $ff
    rst $38                                       ; $6353: $ff
    rst $38                                       ; $6354: $ff
    rst $38                                       ; $6355: $ff
    rst $38                                       ; $6356: $ff
    rst $38                                       ; $6357: $ff

Jump_032_6358:
    rst $38                                       ; $6358: $ff
    rst $38                                       ; $6359: $ff
    rst $38                                       ; $635a: $ff
    rst $38                                       ; $635b: $ff
    rst $38                                       ; $635c: $ff
    rst $38                                       ; $635d: $ff
    rst $38                                       ; $635e: $ff
    rst $38                                       ; $635f: $ff
    rst $38                                       ; $6360: $ff
    rst $38                                       ; $6361: $ff
    rst $38                                       ; $6362: $ff
    rst $38                                       ; $6363: $ff
    rst $38                                       ; $6364: $ff
    rst $38                                       ; $6365: $ff
    rst $38                                       ; $6366: $ff
    rst $38                                       ; $6367: $ff
    rst $38                                       ; $6368: $ff
    rst $38                                       ; $6369: $ff
    rst $38                                       ; $636a: $ff
    rst $38                                       ; $636b: $ff
    rst $38                                       ; $636c: $ff
    rst $38                                       ; $636d: $ff
    rst $38                                       ; $636e: $ff
    rst $38                                       ; $636f: $ff
    rst $38                                       ; $6370: $ff
    rst $38                                       ; $6371: $ff
    rst $38                                       ; $6372: $ff
    rst $38                                       ; $6373: $ff
    rst $38                                       ; $6374: $ff
    rst $38                                       ; $6375: $ff
    rst $38                                       ; $6376: $ff
    rst $38                                       ; $6377: $ff
    rst $38                                       ; $6378: $ff
    rst $38                                       ; $6379: $ff
    rst $38                                       ; $637a: $ff
    rst $38                                       ; $637b: $ff
    rst $38                                       ; $637c: $ff
    rst $38                                       ; $637d: $ff
    rst $38                                       ; $637e: $ff
    rst $38                                       ; $637f: $ff
    rst $38                                       ; $6380: $ff
    rst $38                                       ; $6381: $ff
    rst $38                                       ; $6382: $ff
    rst $38                                       ; $6383: $ff
    rst $38                                       ; $6384: $ff
    rst $38                                       ; $6385: $ff
    rst $38                                       ; $6386: $ff
    rst $38                                       ; $6387: $ff
    rst $38                                       ; $6388: $ff
    rst $38                                       ; $6389: $ff
    rst $38                                       ; $638a: $ff
    rst $38                                       ; $638b: $ff
    rst $38                                       ; $638c: $ff
    rst $38                                       ; $638d: $ff
    rst $38                                       ; $638e: $ff
    rst $38                                       ; $638f: $ff
    rst $38                                       ; $6390: $ff
    rst $38                                       ; $6391: $ff
    rst $38                                       ; $6392: $ff
    rst $38                                       ; $6393: $ff
    rst $38                                       ; $6394: $ff
    rst $38                                       ; $6395: $ff
    rst $38                                       ; $6396: $ff
    rst $38                                       ; $6397: $ff
    rst $38                                       ; $6398: $ff
    rst $38                                       ; $6399: $ff
    rst $38                                       ; $639a: $ff
    rst $38                                       ; $639b: $ff
    rst $38                                       ; $639c: $ff
    rst $38                                       ; $639d: $ff
    rst $38                                       ; $639e: $ff
    rst $38                                       ; $639f: $ff
    rst $38                                       ; $63a0: $ff
    rst $38                                       ; $63a1: $ff
    rst $38                                       ; $63a2: $ff
    rst $38                                       ; $63a3: $ff
    rst $38                                       ; $63a4: $ff
    rst $38                                       ; $63a5: $ff
    rst $38                                       ; $63a6: $ff
    rst $38                                       ; $63a7: $ff
    rst $38                                       ; $63a8: $ff
    rst $38                                       ; $63a9: $ff
    rst $38                                       ; $63aa: $ff
    rst $38                                       ; $63ab: $ff
    rst $38                                       ; $63ac: $ff
    rst $38                                       ; $63ad: $ff
    rst $38                                       ; $63ae: $ff
    rst $38                                       ; $63af: $ff
    rst $38                                       ; $63b0: $ff
    rst $38                                       ; $63b1: $ff
    rst $38                                       ; $63b2: $ff
    rst $38                                       ; $63b3: $ff
    rst $38                                       ; $63b4: $ff
    rst $38                                       ; $63b5: $ff
    rst $38                                       ; $63b6: $ff
    rst $38                                       ; $63b7: $ff
    rst $38                                       ; $63b8: $ff
    rst $38                                       ; $63b9: $ff
    rst $38                                       ; $63ba: $ff
    rst $38                                       ; $63bb: $ff
    rst $38                                       ; $63bc: $ff
    rst $38                                       ; $63bd: $ff
    rst $38                                       ; $63be: $ff
    rst $38                                       ; $63bf: $ff
    rst $38                                       ; $63c0: $ff
    rst $38                                       ; $63c1: $ff
    rst $38                                       ; $63c2: $ff
    rst $38                                       ; $63c3: $ff
    rst $38                                       ; $63c4: $ff
    rst $38                                       ; $63c5: $ff
    rst $38                                       ; $63c6: $ff
    rst $38                                       ; $63c7: $ff
    rst $38                                       ; $63c8: $ff
    rst $38                                       ; $63c9: $ff
    rst $38                                       ; $63ca: $ff
    rst $38                                       ; $63cb: $ff
    rst $38                                       ; $63cc: $ff
    rst $38                                       ; $63cd: $ff
    rst $38                                       ; $63ce: $ff
    rst $38                                       ; $63cf: $ff
    rst $38                                       ; $63d0: $ff
    rst $38                                       ; $63d1: $ff
    rst $38                                       ; $63d2: $ff
    rst $38                                       ; $63d3: $ff
    rst $38                                       ; $63d4: $ff
    rst $38                                       ; $63d5: $ff
    rst $38                                       ; $63d6: $ff
    rst $38                                       ; $63d7: $ff
    rst $38                                       ; $63d8: $ff
    rst $38                                       ; $63d9: $ff
    rst $38                                       ; $63da: $ff
    rst $38                                       ; $63db: $ff
    rst $38                                       ; $63dc: $ff
    rst $38                                       ; $63dd: $ff
    rst $38                                       ; $63de: $ff
    rst $38                                       ; $63df: $ff
    rst $38                                       ; $63e0: $ff
    rst $38                                       ; $63e1: $ff
    rst $38                                       ; $63e2: $ff
    rst $38                                       ; $63e3: $ff
    rst $38                                       ; $63e4: $ff
    rst $38                                       ; $63e5: $ff
    rst $38                                       ; $63e6: $ff
    rst $38                                       ; $63e7: $ff
    rst $38                                       ; $63e8: $ff
    rst $38                                       ; $63e9: $ff
    rst $38                                       ; $63ea: $ff
    rst $38                                       ; $63eb: $ff
    rst $38                                       ; $63ec: $ff
    rst $38                                       ; $63ed: $ff
    rst $38                                       ; $63ee: $ff
    rst $38                                       ; $63ef: $ff
    rst $38                                       ; $63f0: $ff
    rst $38                                       ; $63f1: $ff
    rst $38                                       ; $63f2: $ff
    rst $38                                       ; $63f3: $ff
    rst $38                                       ; $63f4: $ff
    rst $38                                       ; $63f5: $ff
    rst $38                                       ; $63f6: $ff
    rst $38                                       ; $63f7: $ff
    rst $38                                       ; $63f8: $ff
    rst $38                                       ; $63f9: $ff
    rst $38                                       ; $63fa: $ff
    rst $38                                       ; $63fb: $ff
    rst $38                                       ; $63fc: $ff
    rst $38                                       ; $63fd: $ff
    rst $38                                       ; $63fe: $ff
    rst $38                                       ; $63ff: $ff
    rst $38                                       ; $6400: $ff
    rst $38                                       ; $6401: $ff
    rst $38                                       ; $6402: $ff
    rst $38                                       ; $6403: $ff
    rst $38                                       ; $6404: $ff
    rst $38                                       ; $6405: $ff
    rst $38                                       ; $6406: $ff
    rst $38                                       ; $6407: $ff
    rst $38                                       ; $6408: $ff
    rst $38                                       ; $6409: $ff
    rst $38                                       ; $640a: $ff
    rst $38                                       ; $640b: $ff
    rst $38                                       ; $640c: $ff
    rst $38                                       ; $640d: $ff
    rst $38                                       ; $640e: $ff
    rst $38                                       ; $640f: $ff
    rst $38                                       ; $6410: $ff
    rst $38                                       ; $6411: $ff
    rst $38                                       ; $6412: $ff
    rst $38                                       ; $6413: $ff
    rst $38                                       ; $6414: $ff
    rst $38                                       ; $6415: $ff
    rst $38                                       ; $6416: $ff
    rst $38                                       ; $6417: $ff
    rst $38                                       ; $6418: $ff
    rst $38                                       ; $6419: $ff
    rst $38                                       ; $641a: $ff
    rst $38                                       ; $641b: $ff
    rst $38                                       ; $641c: $ff
    rst $38                                       ; $641d: $ff
    rst $38                                       ; $641e: $ff
    rst $38                                       ; $641f: $ff
    rst $38                                       ; $6420: $ff
    rst $38                                       ; $6421: $ff
    rst $38                                       ; $6422: $ff
    rst $38                                       ; $6423: $ff
    rst $38                                       ; $6424: $ff
    rst $38                                       ; $6425: $ff
    rst $38                                       ; $6426: $ff
    rst $38                                       ; $6427: $ff
    rst $38                                       ; $6428: $ff
    rst $38                                       ; $6429: $ff
    rst $38                                       ; $642a: $ff
    rst $38                                       ; $642b: $ff
    rst $38                                       ; $642c: $ff
    rst $38                                       ; $642d: $ff
    rst $38                                       ; $642e: $ff
    rst $38                                       ; $642f: $ff
    rst $38                                       ; $6430: $ff
    rst $38                                       ; $6431: $ff
    rst $38                                       ; $6432: $ff
    rst $38                                       ; $6433: $ff
    rst $38                                       ; $6434: $ff
    rst $38                                       ; $6435: $ff
    rst $38                                       ; $6436: $ff
    rst $38                                       ; $6437: $ff
    rst $38                                       ; $6438: $ff
    rst $38                                       ; $6439: $ff
    rst $38                                       ; $643a: $ff
    rst $38                                       ; $643b: $ff
    rst $38                                       ; $643c: $ff
    rst $38                                       ; $643d: $ff
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

Jump_032_65c4:
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

Call_032_6960:
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

Call_032_6b02:
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

Call_032_6df8:
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

Jump_032_71c3:
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

Call_032_7b15:
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

Call_032_7de2:
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

Jump_032_7e9f:
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

Jump_032_7ef5:
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

Jump_032_7f78:
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
