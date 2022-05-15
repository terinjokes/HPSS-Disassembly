; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $068", ROMX[$4000], BANK[$68]

    ld l, b                                       ; $4000: $68
    sub a                                         ; $4001: $97
    cp c                                          ; $4002: $b9
    ld h, [hl]                                    ; $4003: $66
    ld b, h                                       ; $4004: $44
    dec l                                         ; $4005: $2d
    inc [hl]                                      ; $4006: $34
    inc sp                                        ; $4007: $33
    ld c, h                                       ; $4008: $4c
    jp $6620                                      ; $4009: $c3 $20 $66


    call c, Call_000_284d                         ; $400c: $dc $4d $28
    ld e, h                                       ; $400f: $5c
    db $fd                                        ; $4010: $fd
    ld d, c                                       ; $4011: $51
    sbc l                                         ; $4012: $9d
    ld a, d                                       ; $4013: $7a
    cp c                                          ; $4014: $b9
    db $eb                                        ; $4015: $eb
    ret nz                                        ; $4016: $c0

    adc l                                         ; $4017: $8d
    swap h                                        ; $4018: $cb $34
    dec bc                                        ; $401a: $0b
    and a                                         ; $401b: $a7
    ld e, $c8                                     ; $401c: $1e $c8
    adc [hl]                                      ; $401e: $8e
    xor e                                         ; $401f: $ab
    call nz, $1c92                                ; $4020: $c4 $92 $1c
    ld l, e                                       ; $4023: $6b
    jp z, $d9a1                                   ; $4024: $ca $a1 $d9

    db $dd                                        ; $4027: $dd
    rra                                           ; $4028: $1f
    add hl, bc                                    ; $4029: $09
    sbc d                                         ; $402a: $9a
    rst $10                                       ; $402b: $d7
    ld a, [de]                                    ; $402c: $1a
    ldh a, [$bf]                                  ; $402d: $f0 $bf
    ldh a, [$c2]                                  ; $402f: $f0 $c2
    db $f4                                        ; $4031: $f4
    ld e, h                                       ; $4032: $5c
    xor b                                         ; $4033: $a8
    rst $08                                       ; $4034: $cf
    ccf                                           ; $4035: $3f
    ret                                           ; $4036: $c9


    adc l                                         ; $4037: $8d
    add hl, de                                    ; $4038: $19
    and d                                         ; $4039: $a2
    ld l, [hl]                                    ; $403a: $6e
    add c                                         ; $403b: $81
    ret                                           ; $403c: $c9


    scf                                           ; $403d: $37
    ld de, $07f7                                  ; $403e: $11 $f7 $07
    ld h, a                                       ; $4041: $67
    sub h                                         ; $4042: $94
    jp hl                                         ; $4043: $e9


    ld sp, $ba8a                                  ; $4044: $31 $8a $ba
    add l                                         ; $4047: $85
    ld l, c                                       ; $4048: $69
    ld a, e                                       ; $4049: $7b
    pop hl                                        ; $404a: $e1
    cp $00                                        ; $404b: $fe $00
    ld [c], a                                     ; $404d: $e2
    ld h, [hl]                                    ; $404e: $66
    adc h                                         ; $404f: $8c
    ld [bc], a                                    ; $4050: $02
    ldh a, [$36]                                  ; $4051: $f0 $36
    ld l, $49                                     ; $4053: $2e $49
    db $f4                                        ; $4055: $f4
    ld c, c                                       ; $4056: $49
    ld b, h                                       ; $4057: $44
    ld h, l                                       ; $4058: $65
    rst $38                                       ; $4059: $ff
    sub c                                         ; $405a: $91
    cpl                                           ; $405b: $2f
    or b                                          ; $405c: $b0
    ld a, $8d                                     ; $405d: $3e $8d
    ld h, l                                       ; $405f: $65
    ld d, a                                       ; $4060: $57
    adc a                                         ; $4061: $8f
    ld l, c                                       ; $4062: $69
    ret z                                         ; $4063: $c8

    cp e                                          ; $4064: $bb
    add hl, bc                                    ; $4065: $09
    push af                                       ; $4066: $f5
    sbc l                                         ; $4067: $9d
    ld [hl], $53                                  ; $4068: $36 $53
    ld a, d                                       ; $406a: $7a
    sub $c9                                       ; $406b: $d6 $c9
    ld c, [hl]                                    ; $406d: $4e
    sbc l                                         ; $406e: $9d
    jp hl                                         ; $406f: $e9


    adc e                                         ; $4070: $8b
    ret                                           ; $4071: $c9


    ld l, c                                       ; $4072: $69
    ld b, b                                       ; $4073: $40
    ld a, l                                       ; $4074: $7d
    inc l                                         ; $4075: $2c
    xor $4f                                       ; $4076: $ee $4f
    ld b, d                                       ; $4078: $42
    ld d, h                                       ; $4079: $54
    sbc a                                         ; $407a: $9f
    add $4e                                       ; $407b: $c6 $4e
    ld a, a                                       ; $407d: $7f
    ld [$a034], a                                 ; $407e: $ea $34 $a0
    adc d                                         ; $4081: $8a
    ld a, [hl+]                                   ; $4082: $2a
    ld h, d                                       ; $4083: $62
    ld a, [hl]                                    ; $4084: $7e
    ld d, [hl]                                    ; $4085: $56
    sbc l                                         ; $4086: $9d
    ld e, l                                       ; $4087: $5d
    cpl                                           ; $4088: $2f
    ld h, $e7                                     ; $4089: $26 $e7
    cp $00                                        ; $408b: $fe $00
    db $db                                        ; $408d: $db
    dec hl                                        ; $408e: $2b
    ld sp, hl                                     ; $408f: $f9
    or h                                          ; $4090: $b4
    ccf                                           ; $4091: $3f
    inc l                                         ; $4092: $2c
    ld c, a                                       ; $4093: $4f
    rst $10                                       ; $4094: $d7
    push af                                       ; $4095: $f5
    rra                                           ; $4096: $1f
    add hl, bc                                    ; $4097: $09
    xor e                                         ; $4098: $ab
    ld l, a                                       ; $4099: $6f
    ld c, a                                       ; $409a: $4f
    ld [c], a                                     ; $409b: $e2
    reti                                          ; $409c: $d9


    ld [hl], h                                    ; $409d: $74
    ld [$5f4c], a                                 ; $409e: $ea $4c $5f
    ld c, h                                       ; $40a1: $4c
    adc $fd                                       ; $40a2: $ce $fd
    ld bc, $2bdb                                  ; $40a4: $01 $db $2b
    or c                                          ; $40a7: $b1
    inc h                                         ; $40a8: $24
    rst $00                                       ; $40a9: $c7
    cp d                                          ; $40aa: $ba
    xor [hl]                                      ; $40ab: $ae
    adc d                                         ; $40ac: $8a
    or h                                          ; $40ad: $b4
    ld a, e                                       ; $40ae: $7b
    ld d, [hl]                                    ; $40af: $56
    ret z                                         ; $40b0: $c8

    ld a, d                                       ; $40b1: $7a
    dec c                                         ; $40b2: $0d
    ld sp, $3ea3                                  ; $40b3: $31 $a3 $3e
    adc l                                         ; $40b6: $8d
    ld e, l                                       ; $40b7: $5d
    pop bc                                        ; $40b8: $c1
    xor d                                         ; $40b9: $aa
    add sp, -$61                                  ; $40ba: $e8 $9f
    ld b, h                                       ; $40bc: $44
    sbc d                                         ; $40bd: $9a
    ld [hl], d                                    ; $40be: $72
    or h                                          ; $40bf: $b4
    sbc h                                         ; $40c0: $9c
    cp $4f                                        ; $40c1: $fe $4f
    ld c, [hl]                                    ; $40c3: $4e
    inc bc                                        ; $40c4: $03
    sbc e                                         ; $40c5: $9b
    rst $00                                       ; $40c6: $c7
    inc c                                         ; $40c7: $0c
    ld h, l                                       ; $40c8: $65
    inc sp                                        ; $40c9: $33
    and h                                         ; $40ca: $a4
    ccf                                           ; $40cb: $3f
    rst $30                                       ; $40cc: $f7
    rlca                                          ; $40cd: $07
    ld [c], a                                     ; $40ce: $e2
    ld bc, $454e                                  ; $40cf: $01 $4e $45
    db $dd                                        ; $40d2: $dd
    ld [hl], $e6                                  ; $40d3: $36 $e6
    add c                                         ; $40d5: $81
    push hl                                       ; $40d6: $e5
    dec c                                         ; $40d7: $0d
    db $dd                                        ; $40d8: $dd
    and $e2                                       ; $40d9: $e6 $e2
    rst $08                                       ; $40db: $cf
    and $c3                                       ; $40dc: $e6 $c3
    and c                                         ; $40de: $a1
    add hl, hl                                    ; $40df: $29
    add a                                         ; $40e0: $87
    rra                                           ; $40e1: $1f
    add [hl]                                      ; $40e2: $86
    or a                                          ; $40e3: $b7
    pop hl                                        ; $40e4: $e1
    inc bc                                        ; $40e5: $03
    sbc e                                         ; $40e6: $9b
    xor c                                         ; $40e7: $a9
    ld sp, hl                                     ; $40e8: $f9
    and l                                         ; $40e9: $a5
    and a                                         ; $40ea: $a7
    add sp, $71                                   ; $40eb: $e8 $71
    rst $00                                       ; $40ed: $c7
    call nc, $989f                                ; $40ee: $d4 $9f $98
    ld b, a                                       ; $40f1: $47
    ld l, e                                       ; $40f2: $6b
    ret z                                         ; $40f3: $c8

    rst $08                                       ; $40f4: $cf
    jr @+$48                                      ; $40f5: $18 $46

    set 5, [hl]                                   ; $40f7: $cb $ee
    ld e, b                                       ; $40f9: $58
    halt                                          ; $40fa: $76
    and $24                                       ; $40fb: $e6 $24
    db $ec                                        ; $40fd: $ec
    ld b, l                                       ; $40fe: $45
    ld d, c                                       ; $40ff: $51
    db $fd                                        ; $4100: $fd
    or c                                          ; $4101: $b1
    ld [hl-], a                                   ; $4102: $32
    ld b, $1a                                     ; $4103: $06 $1a
    or h                                          ; $4105: $b4
    cp $58                                        ; $4106: $fe $58
    cp c                                          ; $4108: $b9
    ld e, e                                       ; $4109: $5b
    ld e, c                                       ; $410a: $59
    adc c                                         ; $410b: $89
    scf                                           ; $410c: $37
    dec c                                         ; $410d: $0d
    ld l, h                                       ; $410e: $6c
    sbc h                                         ; $410f: $9c
    sub a                                         ; $4110: $97
    or c                                          ; $4111: $b1
    pop hl                                        ; $4112: $e1
    inc bc                                        ; $4113: $03
    ld e, e                                       ; $4114: $5b
    xor c                                         ; $4115: $a9
    and d                                         ; $4116: $a2
    ld h, $da                                     ; $4117: $26 $da
    ld a, b                                       ; $4119: $78
    and c                                         ; $411a: $a1
    ld a, [hl-]                                   ; $411b: $3a
    ld b, [hl]                                    ; $411c: $46
    ld d, c                                       ; $411d: $51
    and e                                         ; $411e: $a3
    ld [hl], b                                    ; $411f: $70
    ld a, [$f48f]                                 ; $4120: $fa $8f $f4
    dec c                                         ; $4123: $0d
    adc b                                         ; $4124: $88
    ld bc, $b777                                  ; $4125: $01 $77 $b7
    ld [hl], a                                    ; $4128: $77
    dec bc                                        ; $4129: $0b
    call $3676                                    ; $412a: $cd $76 $36
    ld [hl], c                                    ; $412d: $71
    ld [hl], d                                    ; $412e: $72
    add [hl]                                      ; $412f: $86
    ld [hl], l                                    ; $4130: $75
    dec b                                         ; $4131: $05
    ld e, c                                       ; $4132: $59
    xor $56                                       ; $4133: $ee $56
    inc [hl]                                      ; $4135: $34
    ld b, e                                       ; $4136: $43
    sub $c9                                       ; $4137: $d6 $c9
    ld b, $63                                     ; $4139: $06 $63
    ld e, d                                       ; $413b: $5a
    jr c, jr_068_4159                             ; $413c: $38 $1b

    ld a, $97                                     ; $413e: $3e $97
    cp [hl]                                       ; $4140: $be
    or b                                          ; $4141: $b0
    db $db                                        ; $4142: $db
    rst $28                                       ; $4143: $ef
    sub [hl]                                      ; $4144: $96
    reti                                          ; $4145: $d9


    ret nc                                        ; $4146: $d0

    db $ed                                        ; $4147: $ed
    ld c, l                                       ; $4148: $4d
    or h                                          ; $4149: $b4
    pop af                                        ; $414a: $f1
    ld b, d                                       ; $414b: $42
    ld [hl], l                                    ; $414c: $75
    xor h                                         ; $414d: $ac
    dec sp                                        ; $414e: $3b
    ld [hl+], a                                   ; $414f: $22
    ld a, l                                       ; $4150: $7d
    inc [hl]                                      ; $4151: $34
    cp c                                          ; $4152: $b9
    or [hl]                                       ; $4153: $b6
    ld sp, $e3a0                                  ; $4154: $31 $a0 $e3
    ld d, [hl]                                    ; $4157: $56
    rst $08                                       ; $4158: $cf

jr_068_4159:
    ld a, [bc]                                    ; $4159: $0a
    call $f26c                                    ; $415a: $cd $6c $f2
    ld l, c                                       ; $415d: $69
    sbc $dd                                       ; $415e: $de $dd
    ld e, $37                                     ; $4160: $1e $37
    ld a, h                                       ; $4162: $7c
    ld [c], a                                     ; $4163: $e2
    sra e                                         ; $4164: $cb $2b
    inc [hl]                                      ; $4166: $34
    dec bc                                        ; $4167: $0b
    and a                                         ; $4168: $a7
    ld e, b                                       ; $4169: $58
    and b                                         ; $416a: $a0
    dec de                                        ; $416b: $1b
    ld a, $09                                     ; $416c: $3e $09
    sbc d                                         ; $416e: $9a
    add hl, hl                                    ; $416f: $29
    ld b, a                                       ; $4170: $47
    res 2, h                                      ; $4171: $cb $94
    ld a, e                                       ; $4173: $7b
    add l                                         ; $4174: $85
    xor h                                         ; $4175: $ac
    add a                                         ; $4176: $87
    ld c, a                                       ; $4177: $4f
    ldh a, [$6c]                                  ; $4178: $f0 $6c
    ld hl, sp+$00                                 ; $417a: $f8 $00
    ld [c], a                                     ; $417c: $e2
    ld a, c                                       ; $417d: $79
    ld e, l                                       ; $417e: $5d
    ld d, e                                       ; $417f: $53
    ld c, $45                                     ; $4180: $0e $45
    db $f4                                        ; $4182: $f4
    ld a, $d9                                     ; $4183: $3e $d9
    sub h                                         ; $4185: $94
    ld b, e                                       ; $4186: $43
    dec b                                         ; $4187: $05
    xor h                                         ; $4188: $ac
    sub l                                         ; $4189: $95
    ccf                                           ; $418a: $3f
    dec a                                         ; $418b: $3d
    db $e3                                        ; $418c: $e3
    xor $0f                                       ; $418d: $ee $0f
    ld [c], a                                     ; $418f: $e2
    cpl                                           ; $4190: $2f
    ld b, $36                                     ; $4191: $06 $36
    ld a, [bc]                                    ; $4193: $0a
    and a                                         ; $4194: $a7
    db $fc                                        ; $4195: $fc
    jp hl                                         ; $4196: $e9


    add hl, de                                    ; $4197: $19
    ld [hl], a                                    ; $4198: $77
    rst $30                                       ; $4199: $f7
    ld [hl-], a                                   ; $419a: $32
    ret z                                         ; $419b: $c8

    pop de                                        ; $419c: $d1
    ld b, $d4                                     ; $419d: $06 $d4
    sub b                                         ; $419f: $90
    ld [hl], $a8                                  ; $41a0: $36 $a8
    jp nc, $9eca                                  ; $41a2: $d2 $ca $9e

    ld l, a                                       ; $41a5: $6f
    dec sp                                        ; $41a6: $3b
    cp l                                          ; $41a7: $bd
    sbc $17                                       ; $41a8: $de $17
    jp $fdd8                                      ; $41aa: $c3 $d8 $fd


    ld bc, $605b                                  ; $41ad: $01 $5b $60
    ld a, [c]                                     ; $41b0: $f2
    ld c, l                                       ; $41b1: $4d
    call nz, $df7d                                ; $41b2: $c4 $7d $df
    ld bc, $304f                                  ; $41b5: $01 $4f $30
    ld e, [hl]                                    ; $41b8: $5e
    and a                                         ; $41b9: $a7
    ld [de], a                                    ; $41ba: $12
    xor [hl]                                      ; $41bb: $ae
    ld e, e                                       ; $41bc: $5b
    add hl, de                                    ; $41bd: $19
    di                                            ; $41be: $f3
    inc [hl]                                      ; $41bf: $34
    and b                                         ; $41c0: $a0
    rla                                           ; $41c1: $17
    call nz, $d3d5                                ; $41c2: $c4 $d5 $d3
    rst $20                                       ; $41c5: $e7
    ld a, c                                       ; $41c6: $79
    rrc e                                         ; $41c7: $cb $0b
    inc c                                         ; $41c9: $0c
    jr z, @+$66                                   ; $41ca: $28 $64

    rst $38                                       ; $41cc: $ff
    daa                                           ; $41cd: $27
    reti                                          ; $41ce: $d9


    ret nz                                        ; $41cf: $c0

    and $31                                       ; $41d0: $e6 $31
    jp $0f86                                      ; $41d2: $c3 $86 $0f


    ld [c], a                                     ; $41d5: $e2
    ld a, $63                                     ; $41d6: $3e $63
    ld [de], a                                    ; $41d8: $12
    ld l, a                                       ; $41d9: $6f
    ld h, e                                       ; $41da: $63
    add $86                                       ; $41db: $c6 $86
    rrca                                          ; $41dd: $0f
    ld [c], a                                     ; $41de: $e2
    ld a, c                                       ; $41df: $79
    ld e, l                                       ; $41e0: $5d
    ld d, e                                       ; $41e1: $53
    ld c, $45                                     ; $41e2: $0e $45
    db $f4                                        ; $41e4: $f4
    ld a, $29                                     ; $41e5: $3e $29
    ld a, [hl+]                                   ; $41e7: $2a
    ld a, a                                       ; $41e8: $7f
    ld a, d                                       ; $41e9: $7a
    ld l, b                                       ; $41ea: $68
    sub h                                         ; $41eb: $94
    dec e                                         ; $41ec: $1d
    dec l                                         ; $41ed: $2d
    inc b                                         ; $41ee: $04
    ld d, e                                       ; $41ef: $53
    ld b, d                                       ; $41f0: $42
    scf                                           ; $41f1: $37
    db $f4                                        ; $41f2: $f4
    ld [hl-], a                                   ; $41f3: $32
    ld e, d                                       ; $41f4: $5a
    ld h, b                                       ; $41f5: $60
    inc hl                                        ; $41f6: $23
    inc bc                                        ; $41f7: $03
    ei                                            ; $41f8: $fb
    daa                                           ; $41f9: $27
    sub c                                         ; $41fa: $91
    ld h, [hl]                                    ; $41fb: $66
    and a                                         ; $41fc: $a7
    ld d, a                                       ; $41fd: $57
    ret nz                                        ; $41fe: $c0

    add h                                         ; $41ff: $84
    ld d, e                                       ; $4200: $53
    sub h                                         ; $4201: $94
    ld e, d                                       ; $4202: $5a
    rst $28                                       ; $4203: $ef
    ld a, [hl-]                                   ; $4204: $3a
    ld a, e                                       ; $4205: $7b
    call nc, $1f0d                                ; $4206: $d4 $0d $1f
    dec sp                                        ; $4209: $3b
    sbc [hl]                                      ; $420a: $9e
    inc d                                         ; $420b: $14
    push af                                       ; $420c: $f5
    ld l, c                                       ; $420d: $69
    sbc [hl]                                      ; $420e: $9e
    xor [hl]                                      ; $420f: $ae
    ld hl, sp+$0a                                 ; $4210: $f8 $0a
    call $fab4                                    ; $4212: $cd $b4 $fa
    add $fc                                       ; $4215: $c6 $fc
    ld a, [hl]                                    ; $4217: $7e
    ld c, d                                       ; $4218: $4a
    call nz, $ae8c                                ; $4219: $c4 $8c $ae
    cp b                                          ; $421c: $b8
    db $eb                                        ; $421d: $eb
    call $33dd                                    ; $421e: $cd $dd $33
    ld a, [hl+]                                   ; $4221: $2a
    and c                                         ; $4222: $a1
    ld [hl], d                                    ; $4223: $72
    ld a, [de]                                    ; $4224: $1a
    sbc [hl]                                      ; $4225: $9e
    ld [$e534], a                                 ; $4226: $ea $34 $e5
    ret nc                                        ; $4229: $d0

    jp hl                                         ; $422a: $e9


    adc [hl]                                      ; $422b: $8e
    ld c, b                                       ; $422c: $48
    rra                                           ; $422d: $1f
    add l                                         ; $422e: $85
    and $b5                                       ; $422f: $e6 $b5
    xor $5f                                       ; $4231: $ee $5f
    xor b                                         ; $4233: $a8
    rrca                                          ; $4234: $0f
    db $e3                                        ; $4235: $e3
    db $fd                                        ; $4236: $fd
    ld bc, $685b                                  ; $4237: $01 $5b $68
    or [hl]                                       ; $423a: $b6
    ld d, e                                       ; $423b: $53
    call nc, $5908                                ; $423c: $d4 $08 $59
    or $87                                        ; $423f: $f6 $87
    ld h, l                                       ; $4241: $65
    db $ec                                        ; $4242: $ec
    ld h, d                                       ; $4243: $62
    inc sp                                        ; $4244: $33
    db $e4                                        ; $4245: $e4
    ld l, b                                       ; $4246: $68
    inc bc                                        ; $4247: $03
    sbc d                                         ; $4248: $9a
    ld [hl], d                                    ; $4249: $72
    jr z, jr_068_4262                             ; $424a: $28 $16

    ld d, h                                       ; $424c: $54
    jp hl                                         ; $424d: $e9


    ld b, c                                       ; $424e: $41
    ld a, l                                       ; $424f: $7d
    xor d                                         ; $4250: $aa
    jp nc, Jump_068_63ea                          ; $4251: $d2 $ea $63

    sbc c                                         ; $4254: $99
    sbc [hl]                                      ; $4255: $9e
    or a                                          ; $4256: $b7
    jr c, @-$4f                                   ; $4257: $38 $af

    ld [hl], a                                    ; $4259: $77
    rst $20                                       ; $425a: $e7
    db $fd                                        ; $425b: $fd
    ld bc, $a95b                                  ; $425c: $01 $5b $a9
    ld h, l                                       ; $425f: $65
    push hl                                       ; $4260: $e5
    adc e                                         ; $4261: $8b

jr_068_4262:
    ld c, c                                       ; $4262: $49
    or $7f                                        ; $4263: $f6 $7f
    ccf                                           ; $4265: $3f
    or e                                          ; $4266: $b3
    cp l                                          ; $4267: $bd
    ld e, l                                       ; $4268: $5d
    dec c                                         ; $4269: $0d
    cp e                                          ; $426a: $bb
    cp a                                          ; $426b: $bf
    cp $0c                                        ; $426c: $fe $0c
    db $ec                                        ; $426e: $ec
    ld a, [bc]                                    ; $426f: $0a
    cp e                                          ; $4270: $bb
    ld a, [hl+]                                   ; $4271: $2a
    ld sp, hl                                     ; $4272: $f9
    db $f4                                        ; $4273: $f4

jr_068_4274:
    xor [hl]                                      ; $4274: $ae
    ld hl, sp-$61                                 ; $4275: $f8 $9f
    sbc h                                         ; $4277: $9c
    and [hl]                                      ; $4278: $a6
    inc e                                         ; $4279: $1c
    cp d                                          ; $427a: $ba
    xor [hl]                                      ; $427b: $ae
    ld c, [hl]                                    ; $427c: $4e
    ld d, [hl]                                    ; $427d: $56
    ld e, a                                       ; $427e: $5f
    db $e4                                        ; $427f: $e4

Call_068_4280:
    jp nc, $fa80                                  ; $4280: $d2 $80 $fa

    or b                                          ; $4283: $b0
    sub a                                         ; $4284: $97
    sbc [hl]                                      ; $4285: $9e
    ld b, d                                       ; $4286: $42
    cp [hl]                                       ; $4287: $be
    adc b                                         ; $4288: $88
    sbc b                                         ; $4289: $98
    ld [hl], c                                    ; $428a: $71
    ld a, a                                       ; $428b: $7f
    db $db                                        ; $428c: $db
    sub a                                         ; $428d: $97
    or l                                          ; $428e: $b5
    dec c                                         ; $428f: $0d
    dec a                                         ; $4290: $3d
    db $fc                                        ; $4291: $fc
    ld [hl-], a                                   ; $4292: $32
    pop hl                                        ; $4293: $e1
    ld [hl], h                                    ; $4294: $74
    ld a, a                                       ; $4295: $7f
    sbc a                                         ; $4296: $9f
    ld sp, $ab49                                  ; $4297: $31 $49 $ab
    adc $f2                                       ; $429a: $ce $f2
    ld h, d                                       ; $429c: $62
    ld a, [c]                                     ; $429d: $f2
    ld [hl], b                                    ; $429e: $70
    add $0c                                       ; $429f: $c6 $0c
    ld l, l                                       ; $42a1: $6d
    jr c, @-$02                                   ; $42a2: $38 $fc

    ld e, c                                       ; $42a4: $59
    ld a, l                                       ; $42a5: $7d
    ld h, e                                       ; $42a6: $63
    ld a, a                                       ; $42a7: $7f
    ld a, [hl+]                                   ; $42a8: $2a
    scf                                           ; $42a9: $37
    ld a, l                                       ; $42aa: $7d
    ld e, e                                       ; $42ab: $5b
    sbc b                                         ; $42ac: $98
    or [hl]                                       ; $42ad: $b6
    rla                                           ; $42ae: $17
    ld b, h                                       ; $42af: $44
    ld d, l                                       ; $42b0: $55
    sub h                                         ; $42b1: $94
    ld c, e                                       ; $42b2: $4b
    jp c, $93ad                                   ; $42b3: $da $ad $93

    ld c, l                                       ; $42b6: $4d
    cp c                                          ; $42b7: $b9
    and a                                         ; $42b8: $a7
    ld d, b                                       ; $42b9: $50
    ld b, l                                       ; $42ba: $45
    ld a, l                                       ; $42bb: $7d
    xor d                                         ; $42bc: $aa

Jump_068_42bd:
    jp nc, Jump_068_63ea                          ; $42bd: $d2 $ea $63

    sbc c                                         ; $42c0: $99
    sbc [hl]                                      ; $42c1: $9e
    or a                                          ; $42c2: $b7
    jr c, jr_068_4274                             ; $42c3: $38 $af

    ld [hl], a                                    ; $42c5: $77

Call_068_42c6:
    and a                                         ; $42c6: $a7
    xor b                                         ; $42c7: $a8
    db $d3                                        ; $42c8: $d3
    sub h                                         ; $42c9: $94
    ld b, e                                       ; $42ca: $43
    dec d                                         ; $42cb: $15
    or $58                                        ; $42cc: $f6 $58
    rst $18                                       ; $42ce: $df
    ldh a, [$3f]                                  ; $42cf: $f0 $3f
    sbc l                                         ; $42d1: $9d
    ld a, d                                       ; $42d2: $7a
    cp c                                          ; $42d3: $b9
    dec bc                                        ; $42d4: $0b
    or [hl]                                       ; $42d5: $b6
    jp hl                                         ; $42d6: $e9


    inc bc                                        ; $42d7: $03
    sub a                                         ; $42d8: $97
    ld [hl], c                                    ; $42d9: $71
    jp hl                                         ; $42da: $e9


    ccf                                           ; $42db: $3f
    ld a, [c]                                     ; $42dc: $f2
    ld [hl], b                                    ; $42dd: $70
    cp b                                          ; $42de: $b8
    add [hl]                                      ; $42df: $86
    and a                                         ; $42e0: $a7
    ld a, d                                       ; $42e1: $7a
    ld hl, sp-$02                                 ; $42e2: $f8 $fe
    add hl, hl                                    ; $42e4: $29
    add a                                         ; $42e5: $87
    dec b                                         ; $42e6: $05
    add l                                         ; $42e7: $85
    ld h, [hl]                                    ; $42e8: $66
    ld h, e                                       ; $42e9: $63
    ld c, h                                       ; $42ea: $4c
    adc [hl]                                      ; $42eb: $8e
    xor b                                         ; $42ec: $a8
    ld e, $6a                                     ; $42ed: $1e $6a
    ld h, [hl]                                    ; $42ef: $66
    di                                            ; $42f0: $f3
    db $fc                                        ; $42f1: $fc
    or h                                          ; $42f2: $b4
    ld a, [hl-]                                   ; $42f3: $3a
    ret                                           ; $42f4: $c9


    ld c, d                                       ; $42f5: $4a
    and a                                         ; $42f6: $a7
    cpl                                           ; $42f7: $2f
    push hl                                       ; $42f8: $e5
    ld e, [hl]                                    ; $42f9: $5e
    ld c, h                                       ; $42fa: $4c
    or d                                          ; $42fb: $b2
    add sp, -$0c                                  ; $42fc: $e8 $f4
    cp h                                          ; $42fe: $bc
    push bc                                       ; $42ff: $c5
    ld a, c                                       ; $4300: $79
    cp l                                          ; $4301: $bd
    dec sp                                        ; $4302: $3b
    swap b                                        ; $4303: $cb $30
    ld h, $f1                                     ; $4305: $26 $f1
    and e                                         ; $4307: $a3
    res 4, h                                      ; $4308: $cb $a4
    rst $20                                       ; $430a: $e7
    xor $25                                       ; $430b: $ee $25
    xor $70                                       ; $430d: $ee $70
    call nz, Call_068_71b4                        ; $430f: $c4 $b4 $71
    dec a                                         ; $4312: $3d
    jp $8a88                                      ; $4313: $c3 $88 $8a


    push hl                                       ; $4316: $e5
    ld [hl], b                                    ; $4317: $70
    ld a, [$fc34]                                 ; $4318: $fa $34 $fc
    or b                                          ; $431b: $b0
    cp $87                                        ; $431c: $fe $87
    ld c, a                                       ; $431e: $4f
    ld h, a                                       ; $431f: $67
    dec [hl]                                      ; $4320: $35

Jump_068_4321:
    ld c, l                                       ; $4321: $4d
    cp c                                          ; $4322: $b9
    jp $9ae1                                      ; $4323: $c3 $e1 $9a


    ld [hl], d                                    ; $4326: $72
    or b                                          ; $4327: $b0
    rst $00                                       ; $4328: $c7
    ld h, [hl]                                    ; $4329: $66
    add $3c                                       ; $432a: $c6 $3c
    rst $30                                       ; $432c: $f7
    rlca                                          ; $432d: $07
    ld [c], a                                     ; $432e: $e2
    jp hl                                         ; $432f: $e9


    ld sp, $4336                                  ; $4330: $31 $36 $43
    adc [hl]                                      ; $4333: $8e
    ld [hl], $a0                                  ; $4334: $36 $a0
    rst $38                                       ; $4336: $ff
    call nz, Call_000_2b4c                        ; $4337: $c4 $4c $2b
    and a                                         ; $433a: $a7
    rst $20                                       ; $433b: $e7
    ld a, [hl-]                                   ; $433c: $3a
    jp hl                                         ; $433d: $e9


    ld e, c                                       ; $433e: $59
    db $10                                        ; $433f: $10
    add $70                                       ; $4340: $c6 $70
    rst $30                                       ; $4342: $f7
    cp h                                          ; $4343: $bc
    ld a, c                                       ; $4344: $79
    sbc l                                         ; $4345: $9d
    xor $88                                       ; $4346: $ee $88
    db $f4                                        ; $4348: $f4
    pop de                                        ; $4349: $d1
    sub h                                         ; $434a: $94
    ld b, e                                       ; $434b: $43
    ld d, a                                       ; $434c: $57
    adc b                                         ; $434d: $88
    ld bc, $d3ae                                  ; $434e: $01 $ae $d3
    ld l, l                                       ; $4351: $6d
    ld h, e                                       ; $4352: $63
    ld e, $58                                     ; $4353: $1e $58
    ld l, $a7                                     ; $4355: $2e $a7
    ld e, e                                       ; $4357: $5b
    sbc b                                         ; $4358: $98
    or [hl]                                       ; $4359: $b6
    rla                                           ; $435a: $17
    xor $0f                                       ; $435b: $ee $0f
    ld e, e                                       ; $435d: $5b
    xor c                                         ; $435e: $a9
    adc l                                         ; $435f: $8d
    jp nz, $d2a9                                  ; $4360: $c2 $a9 $d2

    inc bc                                        ; $4363: $03
    add hl, sp                                    ; $4364: $39
    jp c, $0189                                   ; $4365: $da $89 $01

    ld e, l                                       ; $4368: $5d
    rst $10                                       ; $4369: $d7
    add hl, hl                                    ; $436a: $29
    db $f4                                        ; $436b: $f4
    or a                                          ; $436c: $b7
    sub a                                         ; $436d: $97
    ld [hl], a                                    ; $436e: $77
    or a                                          ; $436f: $b7
    scf                                           ; $4370: $37
    dec c                                         ; $4371: $0d
    db $d3                                        ; $4372: $d3
    ld [hl], e                                    ; $4373: $73
    sbc l                                         ; $4374: $9d
    db $f4                                        ; $4375: $f4
    inc l                                         ; $4376: $2c
    ld [$b863], sp                                ; $4377: $08 $63 $b8
    ccf                                           ; $437a: $3f
    add hl, bc                                    ; $437b: $09
    ld sp, $a70b                                  ; $437c: $31 $0b $a7
    add hl, de                                    ; $437f: $19
    ld [hl], d                                    ; $4380: $72
    or h                                          ; $4381: $b4
    ld bc, $6df5                                  ; $4382: $01 $f5 $6d
    ld a, [hl]                                    ; $4385: $7e
    ld h, a                                       ; $4386: $67
    or h                                          ; $4387: $b4
    cp e                                          ; $4388: $bb
    cp l                                          ; $4389: $bd
    add d                                         ; $438a: $82
    ld [hl], d                                    ; $438b: $72
    or h                                          ; $438c: $b4
    ld a, [bc]                                    ; $438d: $0a
    sbc a                                         ; $438e: $9f
    ld b, [hl]                                    ; $438f: $46
    db $db                                        ; $4390: $db
    jr @+$49                                      ; $4391: $18 $47

    adc e                                         ; $4393: $8b

Jump_068_4394:
    ld [hl+], a                                   ; $4394: $22
    cp $13                                        ; $4395: $fe $13
    or e                                          ; $4397: $b3
    ld d, c                                       ; $4398: $51
    adc $c6                                       ; $4399: $ce $c6
    jr c, jr_068_43f7                             ; $439b: $38 $5a

    ret z                                         ; $439d: $c8

    sbc [hl]                                      ; $439e: $9e
    ld l, a                                       ; $439f: $6f
    dec sp                                        ; $43a0: $3b
    cp l                                          ; $43a1: $bd
    sbc $17                                       ; $43a2: $de $17
    jp $fdd8                                      ; $43a4: $c3 $d8 $fd


    ld bc, $e83b                                  ; $43a7: $01 $3b $e8
    add c                                         ; $43aa: $81

jr_068_43ab:
    halt                                          ; $43ab: $76
    ld h, d                                       ; $43ac: $62
    ld b, b                                       ; $43ad: $40
    and c                                         ; $43ae: $a1
    ld a, c                                       ; $43af: $79
    xor l                                         ; $43b0: $ad
    db $d3                                        ; $43b1: $d3
    ld [hl], e                                    ; $43b2: $73
    sbc l                                         ; $43b3: $9d
    db $f4                                        ; $43b4: $f4
    inc l                                         ; $43b5: $2c
    ld [$d863], sp                                ; $43b6: $08 $63 $d8
    db $f4                                        ; $43b9: $f4
    ld bc, $84db                                  ; $43ba: $01 $db $84
    inc hl                                        ; $43bd: $23
    ld a, [hl+]                                   ; $43be: $2a
    ld e, a                                       ; $43bf: $5f
    inc c                                         ; $43c0: $0c
    ld l, h                                       ; $43c1: $6c
    inc d                                         ; $43c2: $14
    ld c, [hl]                                    ; $43c3: $4e
    and a                                         ; $43c4: $a7
    xor e                                         ; $43c5: $ab
    rst $10                                       ; $43c6: $d7
    db $e4                                        ; $43c7: $e4
    ld [$fdc0], sp                                ; $43c8: $08 $c0 $fd
    ld bc, $dddb                                  ; $43cb: $01 $db $dd
    ld [$bc35], a                                 ; $43ce: $ea $35 $bc
    ld e, l                                       ; $43d1: $5d
    or b                                          ; $43d2: $b0
    and [hl]                                      ; $43d3: $a6
    inc e                                         ; $43d4: $1c
    sbc d                                         ; $43d5: $9a
    ld e, a                                       ; $43d6: $5f
    ld c, h                                       ; $43d7: $4c
    or d                                          ; $43d8: $b2
    ld a, [$f4c2]                                 ; $43d9: $fa $c2 $f4
    ld c, a                                       ; $43dc: $4f
    ld d, d                                       ; $43dd: $52
    ld [hl-], a                                   ; $43de: $32
    ld c, h                                       ; $43df: $4c
    ld a, l                                       ; $43e0: $7d
    ld a, [de]                                    ; $43e1: $1a
    sbc e                                         ; $43e2: $9b
    ld [hl], d                                    ; $43e3: $72
    ld e, h                                       ; $43e4: $5c
    ld d, d                                       ; $43e5: $52
    ld c, $d6                                     ; $43e6: $0e $d6
    ld a, a                                       ; $43e8: $7f
    sbc [hl]                                      ; $43e9: $9e
    or d                                          ; $43ea: $b2
    adc $d2                                       ; $43eb: $ce $d2
    adc b                                         ; $43ed: $88
    add hl, de                                    ; $43ee: $19
    rst $30                                       ; $43ef: $f7
    rlca                                          ; $43f0: $07
    dec sp                                        ; $43f1: $3b
    add sp, -$7f                                  ; $43f2: $e8 $81
    halt                                          ; $43f4: $76
    ld h, d                                       ; $43f5: $62
    ld b, b                                       ; $43f6: $40

jr_068_43f7:
    db $fd                                        ; $43f7: $fd
    ld d, c                                       ; $43f8: $51
    sbc l                                         ; $43f9: $9d
    ld [hl+], a                                   ; $43fa: $22
    cp $13                                        ; $43fb: $fe $13
    or e                                          ; $43fd: $b3
    pop de                                        ; $43fe: $d1
    ld a, [hl-]                                   ; $43ff: $3a
    push af                                       ; $4400: $f5
    ld l, l                                       ; $4401: $6d
    cp h                                          ; $4402: $bc
    ld [hl], a                                    ; $4403: $77
    rst $08                                       ; $4404: $cf
    ld [hl], l                                    ; $4405: $75
    jp nc, Jump_000_20b3                          ; $4406: $d2 $b3 $20

    adc h                                         ; $4409: $8c
    ld h, c                                       ; $440a: $61
    db $d3                                        ; $440b: $d3
    rlca                                          ; $440c: $07
    db $db                                        ; $440d: $db
    jr nz, jr_068_43ab                            ; $440e: $20 $9b

    ld [hl], d                                    ; $4410: $72
    xor b                                         ; $4411: $a8
    adc [hl]                                      ; $4412: $8e
    di                                            ; $4413: $f3
    ld b, b                                       ; $4414: $40
    dec d                                         ; $4415: $15
    call Call_068_7868                            ; $4416: $cd $68 $78
    cp e                                          ; $4419: $bb
    ld e, $ef                                     ; $441a: $1e $ef
    sbc [hl]                                      ; $441c: $9e
    ld d, c                                       ; $441d: $51
    daa                                           ; $441e: $27
    ld e, c                                       ; $441f: $59
    rra                                           ; $4420: $1f
    xor d                                         ; $4421: $aa
    jp $efce                                      ; $4422: $c3 $ce $ef


    ld a, h                                       ; $4425: $7c
    ld b, $de                                     ; $4426: $06 $de
    rra                                           ; $4428: $1f
    adc c                                         ; $4429: $89
    ld [hl], $5e                                  ; $442a: $36 $5e
    xor b                                         ; $442c: $a8
    adc [hl]                                      ; $442d: $8e
    adc c                                         ; $442e: $89
    xor d                                         ; $442f: $aa
    db $f4                                        ; $4430: $f4
    and b                                         ; $4431: $a0
    inc de                                        ; $4432: $13
    inc bc                                        ; $4433: $03
    ld [$ea8f], a                                 ; $4434: $ea $8f $ea
    inc d                                         ; $4437: $14
    pop af                                        ; $4438: $f1
    sbc a                                         ; $4439: $9f
    sbc b                                         ; $443a: $98
    adc l                                         ; $443b: $8d
    sub $a9                                       ; $443c: $d6 $a9
    ld l, a                                       ; $443e: $6f
    db $e3                                        ; $443f: $e3
    cp l                                          ; $4440: $bd
    ld a, e                                       ; $4441: $7b
    xor [hl]                                      ; $4442: $ae
    sub e                                         ; $4443: $93
    sbc [hl]                                      ; $4444: $9e
    dec b                                         ; $4445: $05
    ld h, c                                       ; $4446: $61
    inc c                                         ; $4447: $0c
    sbc e                                         ; $4448: $9b
    ld a, $db                                     ; $4449: $3e $db
    db $dd                                        ; $444b: $dd
    ld [$bc35], a                                 ; $444c: $ea $35 $bc
    ld e, l                                       ; $444f: $5d
    or b                                          ; $4450: $b0
    and [hl]                                      ; $4451: $a6
    inc e                                         ; $4452: $1c
    sbc d                                         ; $4453: $9a
    ld e, a                                       ; $4454: $5f
    ld c, h                                       ; $4455: $4c
    or d                                          ; $4456: $b2
    ld a, [$f4c2]                                 ; $4457: $fa $c2 $f4
    ld c, a                                       ; $445a: $4f
    ld d, d                                       ; $445b: $52
    ld [hl-], a                                   ; $445c: $32
    ld c, h                                       ; $445d: $4c
    inc bc                                        ; $445e: $03
    ld [$e31d], a                                 ; $445f: $ea $1d $e3
    db $dd                                        ; $4462: $dd
    ld l, l                                       ; $4463: $6d
    jp nz, $e2a9                                  ; $4464: $c2 $a9 $e2

    ld d, l                                       ; $4467: $55
    ld d, c                                       ; $4468: $51
    call nz, $c86c                                ; $4469: $c4 $6c $c8
    adc h                                         ; $446c: $8c
    ld a, c                                       ; $446d: $79
    ld a, [hl+]                                   ; $446e: $2a
    ld h, b                                       ; $446f: $60
    xor l                                         ; $4470: $ad
    jp z, $eee7                                   ; $4471: $ca $e7 $ee

    rrca                                          ; $4474: $0f
    adc c                                         ; $4475: $89
    add [hl]                                      ; $4476: $86
    rst $38                                       ; $4477: $ff
    jp hl                                         ; $4478: $e9


    inc [hl]                                      ; $4479: $34
    and b                                         ; $447a: $a0
    ld e, [hl]                                    ; $447b: $5e
    ld l, $b4                                     ; $447c: $2e $b4
    cp $23                                        ; $447e: $fe $23
    dec sp                                        ; $4480: $3b
    push af                                       ; $4481: $f5
    ld l, l                                       ; $4482: $6d
    cp h                                          ; $4483: $bc
    ld [hl], a                                    ; $4484: $77
    rst $08                                       ; $4485: $cf
    ld [hl], l                                    ; $4486: $75
    jp nc, Jump_000_20b3                          ; $4487: $d2 $b3 $20

    adc h                                         ; $448a: $8c
    pop hl                                        ; $448b: $e1
    xor $19                                       ; $448c: $ee $19
    ld [hl], l                                    ; $448e: $75
    sub d                                         ; $448f: $92
    add l                                         ; $4490: $85
    add h                                         ; $4491: $84
    and l                                         ; $4492: $a5
    rrca                                          ; $4493: $0f
    adc h                                         ; $4494: $8c
    rst $38                                       ; $4495: $ff
    db $e3                                        ; $4496: $e3
    add [hl]                                      ; $4497: $86
    rrca                                          ; $4498: $0f
    db $db                                        ; $4499: $db
    sbc e                                         ; $449a: $9b
    ld l, b                                       ; $449b: $68
    db $e3                                        ; $449c: $e3
    add l                                         ; $449d: $85
    ld [$cf58], a                                 ; $449e: $ea $58 $cf
    ld [hl], l                                    ; $44a1: $75
    jp nc, Jump_000_20b3                          ; $44a2: $d2 $b3 $20

    adc h                                         ; $44a5: $8c
    and c                                         ; $44a6: $a1
    ret nc                                        ; $44a7: $d0

    cp h                                          ; $44a8: $bc

Jump_068_44a9:
    ld d, [hl]                                    ; $44a9: $56
    ret z                                         ; $44aa: $c8

    ld e, [hl]                                    ; $44ab: $5e
    inc a                                         ; $44ac: $3c
    ld sp, $f418                                  ; $44ad: $31 $18 $f4
    xor $79                                       ; $44b0: $ee $79
    di                                            ; $44b2: $f3
    ld a, [$5c4f]                                 ; $44b3: $fa $4f $5c
    call $30cf                                    ; $44b6: $cd $cf $30
    dec c                                         ; $44b9: $0d
    xor b                                         ; $44ba: $a8
    or e                                          ; $44bb: $b3
    db $f4                                        ; $44bc: $f4
    add c                                         ; $44bd: $81
    pop af                                        ; $44be: $f1
    ld a, a                                       ; $44bf: $7f
    xor h                                         ; $44c0: $ac
    adc a                                         ; $44c1: $8f
    ld h, l                                       ; $44c2: $65
    cp d                                          ; $44c3: $ba
    push af                                       ; $44c4: $f5
    push bc                                       ; $44c5: $c5
    and a                                         ; $44c6: $a7
    ld a, c                                       ; $44c7: $79
    sbc l                                         ; $44c8: $9d
    cp l                                          ; $44c9: $bd
    ld l, c                                       ; $44ca: $69
    ld h, b                                       ; $44cb: $60
    or a                                          ; $44cc: $b7
    ld [hl-], a                                   ; $44cd: $32
    db $fd                                        ; $44ce: $fd
    ld a, b                                       ; $44cf: $78
    ld [hl], a                                    ; $44d0: $77
    ld a, e                                       ; $44d1: $7b
    ld d, e                                       ; $44d2: $53
    ld c, $5d                                     ; $44d3: $0e $5d
    rst $10                                       ; $44d5: $d7
    sub h                                         ; $44d6: $94
    ld b, e                                       ; $44d7: $43
    ld d, e                                       ; $44d8: $53
    ld c, $f6                                     ; $44d9: $0e $f6
    xor b                                         ; $44db: $a8
    db $fd                                        ; $44dc: $fd
    ld b, a                                       ; $44dd: $47
    ld d, $0b                                     ; $44de: $16 $0b
    ld [hl], $7d                                  ; $44e0: $36 $7d
    ld h, a                                       ; $44e2: $67
    call c, Call_068_5df7                         ; $44e3: $dc $f7 $5d

jr_068_44e6:
    ld a, a                                       ; $44e6: $7f
    xor h                                         ; $44e7: $ac
    ccf                                           ; $44e8: $3f
    sbc l                                         ; $44e9: $9d
    or d                                          ; $44ea: $b2
    add c                                         ; $44eb: $81
    ld c, l                                       ; $44ec: $4d
    ld b, h                                       ; $44ed: $44
    jr nc, jr_068_44e6                            ; $44ee: $30 $f6

    cp h                                          ; $44f0: $bc
    or a                                          ; $44f1: $b7
    adc h                                         ; $44f2: $8c
    adc [hl]                                      ; $44f3: $8e
    sub a                                         ; $44f4: $97
    set 7, l                                      ; $44f5: $cb $fd
    ld bc, $3897                                  ; $44f7: $01 $97 $38
    ld d, h                                       ; $44fa: $54
    jp hl                                         ; $44fb: $e9


    add c                                         ; $44fc: $81
    ld [hl], $bb                                  ; $44fd: $36 $bb
    add [hl]                                      ; $44ff: $86
    and a                                         ; $4500: $a7
    ld a, [hl-]                                   ; $4501: $3a
    sbc e                                         ; $4502: $9b
    ld [hl], $7c                                  ; $4503: $36 $7c
    rla                                           ; $4505: $17
    xor b                                         ; $4506: $a8
    ld c, [hl]                                    ; $4507: $4e
    sbc c                                         ; $4508: $99
    ld e, $63                                     ; $4509: $1e $63
    and e                                         ; $450b: $a3
    ld [hl], b                                    ; $450c: $70
    ld a, [$8662]                                 ; $450d: $fa $62 $86
    ld b, c                                       ; $4510: $41
    sub l                                         ; $4511: $95
    ld [hl], a                                    ; $4512: $77
    or a                                          ; $4513: $b7
    ld [hl], a                                    ; $4514: $77

jr_068_4515:
    ld b, a                                       ; $4515: $47
    db $e4                                        ; $4516: $e4
    ld a, l                                       ; $4517: $7d
    rst $18                                       ; $4518: $df
    sub l                                         ; $4519: $95
    ld d, d                                       ; $451a: $52
    adc d                                         ; $451b: $8a
    jp z, $ed25                                   ; $451c: $ca $25 $ed

    sub $c9                                       ; $451f: $d6 $c9
    ld b, d                                       ; $4521: $42
    di                                            ; $4522: $f3
    ld e, d                                       ; $4523: $5a
    reti                                          ; $4524: $d9


    adc h                                         ; $4525: $8c
    sbc b                                         ; $4526: $98
    ld l, c                                       ; $4527: $69
    or l                                          ; $4528: $b5
    ld [hl], c                                    ; $4529: $71
    sbc [hl]                                      ; $452a: $9e
    or l                                          ; $452b: $b5
    adc l                                         ; $452c: $8d
    dec bc                                        ; $452d: $0b
    rst $28                                       ; $452e: $ef
    rrca                                          ; $452f: $0f

jr_068_4530:
    ld h, a                                       ; $4530: $67
    db $f4                                        ; $4531: $f4
    ld c, c                                       ; $4532: $49
    ld a, a                                       ; $4533: $7f
    ld d, h                                       ; $4534: $54
    ld [hl], a                                    ; $4535: $77
    ld e, e                                       ; $4536: $5b
    ld h, c                                       ; $4537: $61
    xor c                                         ; $4538: $a9
    adc l                                         ; $4539: $8d
    di                                            ; $453a: $f3
    ret nc                                        ; $453b: $d0

    jp z, $2226                                   ; $453c: $ca $26 $22

    jr jr_068_4530                                ; $453f: $18 $ef

    ld l, [hl]                                    ; $4541: $6e
    xor a                                         ; $4542: $af
    ld l, a                                       ; $4543: $6f
    db $e3                                        ; $4544: $e3
    cp l                                          ; $4545: $bd

Jump_068_4546:
    ld a, e                                       ; $4546: $7b
    xor [hl]                                      ; $4547: $ae
    sub e                                         ; $4548: $93
    sbc [hl]                                      ; $4549: $9e
    dec b                                         ; $454a: $05
    ld h, c                                       ; $454b: $61
    inc c                                         ; $454c: $0c
    dec [hl]                                      ; $454d: $35
    and h                                         ; $454e: $a4
    dec c                                         ; $454f: $0d
    xor d                                         ; $4550: $aa
    inc l                                         ; $4551: $2c
    dec h                                         ; $4552: $25
    ld h, e                                       ; $4553: $63
    ld d, d                                       ; $4554: $52
    ld a, b                                       ; $4555: $78
    ld [hl], a                                    ; $4556: $77
    di                                            ; $4557: $f3
    ret z                                         ; $4558: $c8

    cp $b0                                        ; $4559: $fe $b0
    adc h                                         ; $455b: $8c
    ld e, l                                       ; $455c: $5d
    db $ec                                        ; $455d: $ec
    adc d                                         ; $455e: $8a
    xor a                                         ; $455f: $af
    add hl, hl                                    ; $4560: $29
    rlca                                          ; $4561: $07
    add e                                         ; $4562: $83
    dec [hl]                                      ; $4563: $35
    jp $24ea                                      ; $4564: $c3 $ea $24


    cp e                                          ; $4567: $bb
    ld c, h                                       ; $4568: $4c
    ld c, h                                       ; $4569: $4c
    or e                                          ; $456a: $b3
    rst $38                                       ; $456b: $ff
    call nz, Call_068_4c15                        ; $456c: $c4 $15 $4c
    reti                                          ; $456f: $d9


    ld a, a                                       ; $4570: $7f
    ld h, d                                       ; $4571: $62
    ld a, [hl]                                    ; $4572: $7e
    jp hl                                         ; $4573: $e9


    xor c                                         ; $4574: $a9
    ccf                                           ; $4575: $3f
    sub $9f                                       ; $4576: $d6 $9f
    ld c, [hl]                                    ; $4578: $4e
    reti                                          ; $4579: $d9


    ldh a, [$34]                                  ; $457a: $f0 $34
    rst $08                                       ; $457c: $cf
    db $fd                                        ; $457d: $fd
    ld bc, $503b                                  ; $457e: $01 $3b $50
    inc l                                         ; $4581: $2c
    xor h                                         ; $4582: $ac
    jp nc, $a683                                  ; $4583: $d2 $83 $a6

    inc e                                         ; $4586: $1c
    ld a, [hl-]                                   ; $4587: $3a
    dec a                                         ; $4588: $3d
    rst $10                                       ; $4589: $d7
    ld c, c                                       ; $458a: $49
    rst $08                                       ; $458b: $cf
    add d                                         ; $458c: $82
    jr nc, jr_068_4515                            ; $458d: $30 $86

    ld b, [hl]                                    ; $458f: $46
    pop hl                                        ; $4590: $e1
    inc d                                         ; $4591: $14
    sbc d                                         ; $4592: $9a
    rst $10                                       ; $4593: $d7
    ld a, [$89af]                                 ; $4594: $fa $af $89
    ld a, [hl-]                                   ; $4597: $3a
    db $dd                                        ; $4598: $dd
    ld de, $a3e9                                  ; $4599: $11 $e9 $a3
    sbc c                                         ; $459c: $99
    jp nc, Jump_068_4eb3                          ; $459d: $d2 $b3 $4e

    ld d, [hl]                                    ; $45a0: $56
    jp hl                                         ; $45a1: $e9


    pop bc                                        ; $45a2: $c1
    db $dd                                        ; $45a3: $dd
    dec hl                                        ; $45a4: $2b
    ld hl, sp-$66                                 ; $45a5: $f8 $9a
    ld de, $ad33                                  ; $45a7: $11 $33 $ad
    ld [hl], $ce                                  ; $45aa: $36 $ce
    ld b, e                                       ; $45ac: $43
    dec hl                                        ; $45ad: $2b
    sbc e                                         ; $45ae: $9b
    adc b                                         ; $45af: $88
    ld h, b                                       ; $45b0: $60
    inc l                                         ; $45b1: $2c
    inc [hl]                                      ; $45b2: $34
    or e                                          ; $45b3: $b3
    ld [hl], c                                    ; $45b4: $71
    ld e, [hl]                                    ; $45b5: $5e
    add $86                                       ; $45b6: $c6 $86
    rrca                                          ; $45b8: $0f
    add hl, bc                                    ; $45b9: $09
    ld sp, $a70b                                  ; $45ba: $31 $0b $a7
    add hl, de                                    ; $45bd: $19
    ld [hl], d                                    ; $45be: $72
    or h                                          ; $45bf: $b4
    ld bc, $5855                                  ; $45c0: $01 $55 $58
    db $e3                                        ; $45c3: $e3
    xor $5a                                       ; $45c4: $ee $5a
    or $4f                                        ; $45c6: $f6 $4f
    ld [hl+], a                                   ; $45c8: $22
    ld c, l                                       ; $45c9: $4d
    db $eb                                        ; $45ca: $eb
    cp $4d                                        ; $45cb: $fe $4d
    ld b, h                                       ; $45cd: $44
    jr nc, @-$28                                  ; $45ce: $30 $d6

    or a                                          ; $45d0: $b7
    daa                                           ; $45d1: $27
    pop af                                        ; $45d2: $f1
    ld l, h                                       ; $45d3: $6c
    xor $0f                                       ; $45d4: $ee $0f
    db $db                                        ; $45d6: $db
    ld e, h                                       ; $45d7: $5c
    db $fc                                        ; $45d8: $fc
    ld e, c                                       ; $45d9: $59
    add l                                         ; $45da: $85
    xor h                                         ; $45db: $ac
    ld a, h                                       ; $45dc: $7c
    ld a, [c]                                     ; $45dd: $f2
    cp $00                                        ; $45de: $fe $00
    db $db                                        ; $45e0: $db
    jr nz, @-$53                                  ; $45e1: $20 $ab

    sub b                                         ; $45e3: $90
    sub l                                         ; $45e4: $95
    ld c, a                                       ; $45e5: $4f
    ld l, [hl]                                    ; $45e6: $6e
    ld hl, sp+$00                                 ; $45e7: $f8 $00
    sbc e                                         ; $45e9: $9b
    sub e                                         ; $45ea: $93
    ld c, b                                       ; $45eb: $48
    adc a                                         ; $45ec: $8f
    dec hl                                        ; $45ed: $2b
    sbc e                                         ; $45ee: $9b
    inc e                                         ; $45ef: $1c
    db $e3                                        ; $45f0: $e3
    db $dd                                        ; $45f1: $dd
    inc b                                         ; $45f2: $04
    ld h, e                                       ; $45f3: $63
    dec h                                         ; $45f4: $25
    sub [hl]                                      ; $45f5: $96
    db $e4                                        ; $45f6: $e4
    ld e, b                                       ; $45f7: $58
    ld d, a                                       ; $45f8: $57
    ret nc                                        ; $45f9: $d0

    db $fc                                        ; $45fa: $fc
    ld c, h                                       ; $45fb: $4c
    adc [hl]                                      ; $45fc: $8e
    halt                                          ; $45fd: $76
    ld a, [hl+]                                   ; $45fe: $2a
    add hl, de                                    ; $45ff: $19
    di                                            ; $4600: $f3
    inc d                                         ; $4601: $14
    rst $30                                       ; $4602: $f7
    ld a, l                                       ; $4603: $7d
    ld a, a                                       ; $4604: $7f
    sub a                                         ; $4605: $97
    add hl, de                                    ; $4606: $19
    ld d, [hl]                                    ; $4607: $56
    ld h, e                                       ; $4608: $63
    sbc e                                         ; $4609: $9b
    sbc d                                         ; $460a: $9a
    and b                                         ; $460b: $a0
    ld a, c                                       ; $460c: $79
    ld c, l                                       ; $460d: $4d
    res 2, h                                      ; $460e: $cb $94
    ld a, e                                       ; $4610: $7b
    sbc e                                         ; $4611: $9b
    xor $fb                                       ; $4612: $ee $fb
    ld c, [hl]                                    ; $4614: $4e
    ld a, b                                       ; $4615: $78
    and d                                         ; $4616: $a2
    and [hl]                                      ; $4617: $a6
    inc e                                         ; $4618: $1c
    ld [$2ee5], a                                 ; $4619: $ea $e5 $2e
    ret z                                         ; $461c: $c8

    xor [hl]                                      ; $461d: $ae
    and $3f                                       ; $461e: $e6 $3f
    ld d, b                                       ; $4620: $50
    scf                                           ; $4621: $37
    ld a, l                                       ; $4622: $7d
    db $db                                        ; $4623: $db
    jr jr_068_464e                                ; $4624: $18 $28

    ld [$ac36], a                                 ; $4626: $ea $36 $ac
    sbc $b2                                       ; $4629: $de $b2
    ldh [$fe], a                                  ; $462b: $e0 $fe
    nop                                           ; $462d: $00
    db $db                                        ; $462e: $db
    add h                                         ; $462f: $84
    db $d3                                        ; $4630: $d3
    sub l                                         ; $4631: $95
    ld [hl], b                                    ; $4632: $70
    xor d                                         ; $4633: $aa
    ld a, h                                       ; $4634: $7c
    sub $71                                       ; $4635: $d6 $71
    reti                                          ; $4637: $d9


    ret c                                         ; $4638: $d8

    dec d                                         ; $4639: $15
    halt                                          ; $463a: $76
    adc c                                         ; $463b: $89
    ld [$d3cf], a                                 ; $463c: $ea $cf $d3
    ld b, [hl]                                    ; $463f: $46
    pop hl                                        ; $4640: $e1
    ld a, h                                       ; $4641: $7c
    db $db                                        ; $4642: $db
    add h                                         ; $4643: $84
    inc hl                                        ; $4644: $23
    ld l, d                                       ; $4645: $6a
    inc d                                         ; $4646: $14
    ld c, [hl]                                    ; $4647: $4e
    ld d, a                                       ; $4648: $57

Jump_068_4649:
    sub h                                         ; $4649: $94
    and e                                         ; $464a: $a3
    ld [hl], a                                    ; $464b: $77
    ld a, e                                       ; $464c: $7b
    dec b                                         ; $464d: $05

jr_068_464e:
    ld e, a                                       ; $464e: $5f
    ld a, l                                       ; $464f: $7d
    ld a, [de]                                    ; $4650: $1a
    set 7, [hl]                                   ; $4651: $cb $fe
    sub h                                         ; $4653: $94
    inc d                                         ; $4654: $14
    ld [hl], l                                    ; $4655: $75
    dec de                                        ; $4656: $1b
    ld d, [hl]                                    ; $4657: $56
    ld l, a                                       ; $4658: $6f
    ld e, c                                       ; $4659: $59
    or b                                          ; $465a: $b0
    pop hl                                        ; $465b: $e1
    inc bc                                        ; $465c: $03
    ld e, e                                       ; $465d: $5b
    xor c                                         ; $465e: $a9
    ld e, l                                       ; $465f: $5d
    call $a07f                                    ; $4660: $cd $7f $a0
    ld [hl], $0a                                  ; $4663: $36 $0a
    and a                                         ; $4665: $a7
    cp $04                                        ; $4666: $fe $04
    ret z                                         ; $4668: $c8

Jump_068_4669:
    ld a, [hl+]                                   ; $4669: $2a
    sbc a                                         ; $466a: $9f
    db $dd                                        ; $466b: $dd
    cp l                                          ; $466c: $bd
    ld b, d                                       ; $466d: $42
    jr c, jr_068_46c5                             ; $466e: $38 $55

    ld e, b                                       ; $4670: $58
    db $e3                                        ; $4671: $e3
    xor h                                         ; $4672: $ac
    jr z, jr_068_4686                             ; $4673: $28 $11

    inc sp                                        ; $4675: $33
    ld c, d                                       ; $4676: $4a
    sbc a                                         ; $4677: $9f

Call_068_4678:
    ld sp, $30c9                                  ; $4678: $31 $c9 $30
    ld e, d                                       ; $467b: $5a
    call nc, Call_000_0587                        ; $467c: $d4 $87 $05
    ld e, b                                       ; $467f: $58
    db $fd                                        ; $4680: $fd
    adc c                                         ; $4681: $89
    ld a, c                                       ; $4682: $79
    db $f4                                        ; $4683: $f4
    cp $00                                        ; $4684: $fe $00

jr_068_4686:
    db $db                                        ; $4686: $db
    add h                                         ; $4687: $84
    ld d, e                                       ; $4688: $53
    rra                                           ; $4689: $1f
    or $c3                                        ; $468a: $f6 $c3
    inc bc                                        ; $468c: $03
    dec d                                         ; $468d: $15
    push af                                       ; $468e: $f5
    ld l, c                                       ; $468f: $69
    sbc [hl]                                      ; $4690: $9e
    xor [hl]                                      ; $4691: $ae
    db $eb                                        ; $4692: $eb
    sub e                                         ; $4693: $93
    cp $58                                        ; $4694: $fe $58
    ld h, [hl]                                    ; $4696: $66
    call z, Call_000_3fb8                         ; $4697: $cc $b8 $3f
    add hl, bc                                    ; $469a: $09
    xor [hl]                                      ; $469b: $ae
    ld d, c                                       ; $469c: $51
    jr c, jr_068_46fc                             ; $469d: $38 $5d

    adc l                                         ; $469f: $8d
    ld [hl], $e0                                  ; $46a0: $36 $e0
    add hl, bc                                    ; $46a2: $09
    sbc [hl]                                      ; $46a3: $9e
    cp e                                          ; $46a4: $bb
    rst $20                                       ; $46a5: $e7
    adc l                                         ; $46a6: $8d
    ld d, c                                       ; $46a7: $51
    halt                                          ; $46a8: $76
    dec [hl]                                      ; $46a9: $35
    rst $38                                       ; $46aa: $ff
    add c                                         ; $46ab: $81
    jp c, Jump_068_4394                           ; $46ac: $da $94 $43

    dec h                                         ; $46af: $25
    adc d                                         ; $46b0: $8a
    xor b                                         ; $46b1: $a8
    cpl                                           ; $46b2: $2f
    jp nc, $cb28                                  ; $46b3: $d2 $28 $cb

    ld a, d                                       ; $46b6: $7a
    cp c                                          ; $46b7: $b9
    dec bc                                        ; $46b8: $0b
    ld d, [hl]                                    ; $46b9: $56
    xor a                                         ; $46ba: $af
    ld hl, $7466                                  ; $46bb: $21 $66 $74
    ld a, a                                       ; $46be: $7f
    xor l                                         ; $46bf: $ad
    rrca                                          ; $46c0: $0f
    push de                                       ; $46c1: $d5
    and c                                         ; $46c2: $a1
    sbc $4d                                       ; $46c3: $de $4d

jr_068_46c5:
    cp b                                          ; $46c5: $b8
    rst $28                                       ; $46c6: $ef
    cp e                                          ; $46c7: $bb
    cp b                                          ; $46c8: $b8
    rst $28                                       ; $46c9: $ef
    cp e                                          ; $46ca: $bb
    or e                                          ; $46cb: $b3
    inc h                                         ; $46cc: $24
    ld hl, $729b                                  ; $46cd: $21 $9b $72
    jr z, jr_068_472e                             ; $46d0: $28 $5c

    rla                                           ; $46d2: $17
    sub a                                         ; $46d3: $97
    ld h, a                                       ; $46d4: $67
    jp $1707                                      ; $46d5: $c3 $07 $17


    ld d, e                                       ; $46d8: $53
    ld [hl+], a                                   ; $46d9: $22
    and $69                                       ; $46da: $e6 $69
    add [hl]                                      ; $46dc: $86
    dec [hl]                                      ; $46dd: $35
    and b                                         ; $46de: $a0
    ld e, [hl]                                    ; $46df: $5e
    xor $82                                       ; $46e0: $ee $82
    push af                                       ; $46e2: $f5
    ld l, c                                       ; $46e3: $69
    ld e, $51                                     ; $46e4: $1e $51
    or a                                          ; $46e6: $b7
    ld h, c                                       ; $46e7: $61
    push af                                       ; $46e8: $f5
    sub [hl]                                      ; $46e9: $96
    dec b                                         ; $46ea: $05
    ld [hl], a                                    ; $46eb: $77
    inc de                                        ; $46ec: $13
    sub c                                         ; $46ed: $91
    db $ed                                        ; $46ee: $ed
    ld a, c                                       ; $46ef: $79
    rst $18                                       ; $46f0: $df
    rst $28                                       ; $46f1: $ef
    or h                                          ; $46f2: $b4
    sub a                                         ; $46f3: $97
    ld c, l                                       ; $46f4: $4d
    and $e2                                       ; $46f5: $e6 $e2
    ld [hl], h                                    ; $46f7: $74
    jp Jump_068_5b07                              ; $46f8: $c3 $07 $5b


    ld sp, hl                                     ; $46fb: $f9

jr_068_46fc:
    or h                                          ; $46fc: $b4
    sbc c                                         ; $46fd: $99
    ld d, $d0                                     ; $46fe: $16 $d0
    ld a, a                                       ; $4700: $7f
    and h                                         ; $4701: $a4
    ld l, a                                       ; $4702: $6f
    ld b, b                                       ; $4703: $40
    inc c                                         ; $4704: $0c
    or b                                          ; $4705: $b0
    dec [hl]                                      ; $4706: $35
    dec d                                         ; $4707: $15
    ld [hl], l                                    ; $4708: $75
    dec de                                        ; $4709: $1b
    ld d, [hl]                                    ; $470a: $56
    ld l, a                                       ; $470b: $6f
    ld e, c                                       ; $470c: $59
    ld [hl], b                                    ; $470d: $70
    ld a, a                                       ; $470e: $7f
    add hl, bc                                    ; $470f: $09
    sbc d                                         ; $4710: $9a
    rst $10                                       ; $4711: $d7

jr_068_4712:
    ld c, d                                       ; $4712: $4a
    rrca                                          ; $4713: $0f
    inc l                                         ; $4714: $2c
    ld [hl], e                                    ; $4715: $73
    ld b, e                                       ; $4716: $43
    or a                                          ; $4717: $b7
    ld [hl], a                                    ; $4718: $77
    ld b, a                                       ; $4719: $47
    and h                                         ; $471a: $a4
    adc a                                         ; $471b: $8f
    ld a, [bc]                                    ; $471c: $0a
    ld e, b                                       ; $471d: $58
    db $eb                                        ; $471e: $eb
    or d                                          ; $471f: $b2
    sub $80                                       ; $4720: $d6 $80
    dec d                                         ; $4722: $15
    ld a, [bc]                                    ; $4723: $0a
    call $fbb4                                    ; $4724: $cd $b4 $fb
    inc bc                                        ; $4727: $03
    ld [c], a                                     ; $4728: $e2
    ld a, a                                       ; $4729: $7f
    ld [hl], d                                    ; $472a: $72
    sbc d                                         ; $472b: $9a
    ld [hl], d                                    ; $472c: $72
    ld l, b                                       ; $472d: $68

jr_068_472e:
    inc d                                         ; $472e: $14
    ld c, [hl]                                    ; $472f: $4e
    db $e3                                        ; $4730: $e3
    ld l, b                                       ; $4731: $68
    ld d, a                                       ; $4732: $57
    rlca                                          ; $4733: $07
    sbc $1f                                       ; $4734: $de $1f
    rst $20                                       ; $4736: $e7
    jp nz, $a837                                  ; $4737: $c2 $37 $a8

    ld d, d                                       ; $473a: $52
    call nc, $342d                                ; $473b: $d4 $2d $34
    db $db                                        ; $473e: $db
    add hl, hl                                    ; $473f: $29
    ld l, d                                       ; $4740: $6a
    sbc [hl]                                      ; $4741: $9e
    sbc a                                         ; $4742: $9f
    ld h, l                                       ; $4743: $65
    cp l                                          ; $4744: $bd
    dec bc                                        ; $4745: $0b
    ld e, l                                       ; $4746: $5d
    and $fd                                       ; $4747: $e6 $fd
    ld bc, $84db                                  ; $4749: $01 $db $84
    ld d, e                                       ; $474c: $53
    ld [hl], $db                                  ; $474d: $36 $db
    jr c, jr_068_4712                             ; $474f: $38 $c1

    ret c                                         ; $4751: $d8

    ret nc                                        ; $4752: $d0

    sla b                                         ; $4753: $cb $20
    ld b, a                                       ; $4755: $47
    dec de                                        ; $4756: $1b
    ld d, b                                       ; $4757: $50
    ld b, e                                       ; $4758: $43
    jp c, $4aa0                                   ; $4759: $da $a0 $4a

    db $db                                        ; $475c: $db
    ldh a, [rSB]                                  ; $475d: $f0 $01
    add hl, bc                                    ; $475f: $09
    sbc d                                         ; $4760: $9a
    rst $10                                       ; $4761: $d7
    jp z, Jump_000_3186                           ; $4762: $ca $86 $31

    ld sp, hl                                     ; $4765: $f9
    db $ec                                        ; $4766: $ec
    xor $15                                       ; $4767: $ee $15
    sub h                                         ; $4769: $94
    and e                                         ; $476a: $a3
    dec de                                        ; $476b: $1b
    ld a, $e2                                     ; $476c: $3e $e2
    ld c, l                                       ; $476e: $4d
    or h                                          ; $476f: $b4
    pop af                                        ; $4770: $f1
    ld b, d                                       ; $4771: $42
    ld [hl], l                                    ; $4772: $75
    adc h                                         ; $4773: $8c

Jump_068_4774:
    db $dd                                        ; $4774: $dd
    ld a, [$3f9f]                                 ; $4775: $fa $9f $3f
    sub c                                         ; $4778: $91
    ld l, c                                       ; $4779: $69
    ld l, $4b                                     ; $477a: $2e $4b
    jp $d5db                                      ; $477c: $c3 $db $d5


    sub h                                         ; $477f: $94
    ld b, e                                       ; $4780: $43
    and a                                         ; $4781: $a7
    rst $20                                       ; $4782: $e7
    ld a, [hl-]                                   ; $4783: $3a
    jp hl                                         ; $4784: $e9


    ld e, c                                       ; $4785: $59
    db $10                                        ; $4786: $10
    add $50                                       ; $4787: $c6 $50
    ld l, b                                       ; $4789: $68
    ld e, [hl]                                    ; $478a: $5e
    dec hl                                        ; $478b: $2b
    ld h, h                                       ; $478c: $64
    cpl                                           ; $478d: $2f
    sbc [hl]                                      ; $478e: $9e
    jr jr_068_479d                                ; $478f: $18 $0c

    ld a, d                                       ; $4791: $7a
    ld a, a                                       ; $4792: $7f
    dec sp                                        ; $4793: $3b
    add sp, -$7f                                  ; $4794: $e8 $81
    halt                                          ; $4796: $76
    ld h, d                                       ; $4797: $62
    ld b, b                                       ; $4798: $40
    and c                                         ; $4799: $a1
    ld a, c                                       ; $479a: $79
    xor l                                         ; $479b: $ad
    db $d3                                        ; $479c: $d3

jr_068_479d:
    ld [hl], e                                    ; $479d: $73
    sbc l                                         ; $479e: $9d
    db $f4                                        ; $479f: $f4
    inc l                                         ; $47a0: $2c
    ld [$d863], sp                                ; $47a1: $08 $63 $d8
    db $f4                                        ; $47a4: $f4
    ld bc, $dddb                                  ; $47a5: $01 $db $dd
    ld [$bc35], a                                 ; $47a8: $ea $35 $bc
    ld e, l                                       ; $47ab: $5d
    or b                                          ; $47ac: $b0
    and [hl]                                      ; $47ad: $a6
    inc e                                         ; $47ae: $1c
    sbc d                                         ; $47af: $9a
    ld e, a                                       ; $47b0: $5f
    ld c, h                                       ; $47b1: $4c
    or d                                          ; $47b2: $b2
    cpl                                           ; $47b3: $2f
    ld c, h                                       ; $47b4: $4c
    inc bc                                        ; $47b5: $03
    cp d                                          ; $47b6: $ba
    ld a, d                                       ; $47b7: $7a
    ld c, h                                       ; $47b8: $4c
    ld b, e                                       ; $47b9: $43
    sbc $1f                                       ; $47ba: $de $1f
    adc c                                         ; $47bc: $89
    inc de                                        ; $47bd: $13
    ld e, $0b                                     ; $47be: $1e $0b
    call $42b4                                    ; $47c0: $cd $b4 $42
    ld [hl], $e5                                  ; $47c3: $36 $e5
    cp b                                          ; $47c5: $b8
    and h                                         ; $47c6: $a4
    inc e                                         ; $47c7: $1c
    xor h                                         ; $47c8: $ac
    dec bc                                        ; $47c9: $0b
    jp Jump_000_1fdc                              ; $47ca: $c3 $dc $1f


    db $db                                        ; $47cd: $db
    add h                                         ; $47ce: $84
    ld [hl], e                                    ; $47cf: $73
    ld [hl], a                                    ; $47d0: $77
    dec hl                                        ; $47d1: $2b
    or l                                          ; $47d2: $b5
    rst $38                                       ; $47d3: $ff
    ld l, b                                       ; $47d4: $68
    halt                                          ; $47d5: $76
    ld [hl], d                                    ; $47d6: $72
    cp d                                          ; $47d7: $ba
    ld a, [hl-]                                   ; $47d8: $3a
    ld [hl], b                                    ; $47d9: $70
    db $e3                                        ; $47da: $e3
    ld [hl-], a                                   ; $47db: $32
    sub l                                         ; $47dc: $95
    xor $65                                       ; $47dd: $ee $65
    ld l, d                                       ; $47df: $6a
    ld d, a                                       ; $47e0: $57
    ret c                                         ; $47e1: $d8

    dec b                                         ; $47e2: $05
    ld l, l                                       ; $47e3: $6d
    sbc h                                         ; $47e4: $9c
    sbc [hl]                                      ; $47e5: $9e
    cp b                                          ; $47e6: $b8
    ld h, a                                       ; $47e7: $67
    add hl, de                                    ; $47e8: $19
    inc bc                                        ; $47e9: $03
    db $ed                                        ; $47ea: $ed
    cp $00                                        ; $47eb: $fe $00
    db $db                                        ; $47ed: $db
    add h                                         ; $47ee: $84
    db $d3                                        ; $47ef: $d3
    jp hl                                         ; $47f0: $e9


    ld [$b215], a                                 ; $47f1: $ea $15 $b2
    ld a, c                                       ; $47f4: $79
    jp nz, Jump_000_1a74                          ; $47f5: $c2 $74 $1a

    ld e, $ef                                     ; $47f8: $1e $ef
    rrca                                          ; $47fa: $0f
    ld d, a                                       ; $47fb: $57
    cp h                                          ; $47fc: $bc
    ld [hl], d                                    ; $47fd: $72
    ld c, c                                       ; $47fe: $49
    cp e                                          ; $47ff: $bb
    ld [hl], l                                    ; $4800: $75
    or d                                          ; $4801: $b2
    db $ec                                        ; $4802: $ec
    ld l, d                                       ; $4803: $6a
    ld l, b                                       ; $4804: $68
    ld [hl], a                                    ; $4805: $77
    inc de                                        ; $4806: $13
    daa                                           ; $4807: $27
    inc a                                         ; $4808: $3c
    ld d, [hl]                                    ; $4809: $56
    ld h, c                                       ; $480a: $61
    push bc                                       ; $480b: $c5
    add d                                         ; $480c: $82
    ei                                            ; $480d: $fb
    inc bc                                        ; $480e: $03
    adc c                                         ; $480f: $89
    or b                                          ; $4810: $b0
    or h                                          ; $4811: $b4
    adc e                                         ; $4812: $8b
    add hl, de                                    ; $4813: $19
    or d                                          ; $4814: $b2
    ei                                            ; $4815: $fb
    ld [hl], a                                    ; $4816: $77
    db $eb                                        ; $4817: $eb
    ld a, a                                       ; $4818: $7f
    cp $44                                        ; $4819: $fe $44
    and [hl]                                      ; $481b: $a6
    cp c                                          ; $481c: $b9
    inc l                                         ; $481d: $2c
    ld [hl], a                                    ; $481e: $77
    xor a                                         ; $481f: $af
    ld a, b                                       ; $4820: $78
    dec de                                        ; $4821: $1b
    ld b, a                                       ; $4822: $47
    bit 7, d                                      ; $4823: $cb $7a
    cp c                                          ; $4825: $b9
    ret nc                                        ; $4826: $d0

    xor $0f                                       ; $4827: $ee $0f
    ld e, e                                       ; $4829: $5b
    ld b, [hl]                                    ; $482a: $46
    nop                                           ; $482b: $00
    ld a, [de]                                    ; $482c: $1a
    add l                                         ; $482d: $85
    db $d3                                        ; $482e: $d3
    ld [hl], l                                    ; $482f: $75
    ld h, l                                       ; $4830: $65
    push hl                                       ; $4831: $e5
    adc e                                         ; $4832: $8b
    ld c, c                                       ; $4833: $49
    halt                                          ; $4834: $76
    add l                                         ; $4835: $85
    ld e, l                                       ; $4836: $5d
    dec c                                         ; $4837: $0d
    add sp, $74                                   ; $4838: $e8 $74
    push af                                       ; $483a: $f5
    jp nc, Jump_068_768f                          ; $483b: $d2 $8f $76

    ld a, a                                       ; $483e: $7f
    sub a                                         ; $483f: $97
    ld [hl], c                                    ; $4840: $71
    ld e, c                                       ; $4841: $59
    ld h, c                                       ; $4842: $61
    ld d, a                                       ; $4843: $57
    cp l                                          ; $4844: $bd
    and e                                         ; $4845: $a3
    adc d                                         ; $4846: $8a
    xor [hl]                                      ; $4847: $ae
    ld h, b                                       ; $4848: $60
    sbc l                                         ; $4849: $9d
    ld l, [hl]                                    ; $484a: $6e
    ld h, c                                       ; $484b: $61
    jp c, $b85e                                   ; $484c: $da $5e $b8

    sbc e                                         ; $484f: $9b
    or b                                          ; $4850: $b0
    ld b, b                                       ; $4851: $40
    db $eb                                        ; $4852: $eb
    and l                                         ; $4853: $a5
    ld h, l                                       ; $4854: $65
    jp z, $8a8d                                   ; $4855: $ca $8d $8a

    ld b, $d4                                     ; $4858: $06 $d4
    res 0, l                                      ; $485a: $cb $85
    halt                                          ; $485c: $76
    ld a, a                                       ; $485d: $7f
    db $db                                        ; $485e: $db
    db $dd                                        ; $485f: $dd
    ld [$45d5], a                                 ; $4860: $ea $d5 $45
    xor l                                         ; $4863: $ad
    add hl, sp                                    ; $4864: $39
    add hl, sp                                    ; $4865: $39
    ld b, $6d                                     ; $4866: $06 $6d
    ld b, b                                       ; $4868: $40
    ld d, e                                       ; $4869: $53
    ld c, $7d                                     ; $486a: $0e $7d

Call_068_486c:
    ld l, h                                       ; $486c: $6c
    ld b, b                                       ; $486d: $40
    cp l                                          ; $486e: $bd
    db $eb                                        ; $486f: $eb
    db $ec                                        ; $4870: $ec
    ld d, c                                       ; $4871: $51
    rst $28                                       ; $4872: $ef
    rrca                                          ; $4873: $0f
    db $db                                        ; $4874: $db
    db $dd                                        ; $4875: $dd
    ld [$9c6d], a                                 ; $4876: $ea $6d $9c
    add [hl]                                      ; $4879: $86
    or a                                          ; $487a: $b7
    dec bc                                        ; $487b: $0b
    sub $94                                       ; $487c: $d6 $94
    db $e3                                        ; $487e: $e3
    sub d                                         ; $487f: $92
    ld [hl], d                                    ; $4880: $72
    or b                                          ; $4881: $b0
    cp $f3                                        ; $4882: $fe $f3
    sub h                                         ; $4884: $94
    push hl                                       ; $4885: $e5
    rrca                                          ; $4886: $0f
    ei                                            ; $4887: $fb
    reti                                          ; $4888: $d9


    add b                                         ; $4889: $80
    ld a, [hl-]                                   ; $488a: $3a
    ret                                           ; $488b: $c9


    ld a, [de]                                    ; $488c: $1a
    ld e, h                                       ; $488d: $5c
    ld a, h                                       ; $488e: $7c
    jp nz, $93e9                                  ; $488f: $c2 $e9 $93

    cp $58                                        ; $4892: $fe $58
    ld h, [hl]                                    ; $4894: $66
    call z, Call_000_3fb8                         ; $4895: $cc $b8 $3f
    db $db                                        ; $4898: $db
    add h                                         ; $4899: $84
    db $d3                                        ; $489a: $d3
    jp hl                                         ; $489b: $e9


    ld a, [bc]                                    ; $489c: $0a
    ld [bc], a                                    ; $489d: $02
    and [hl]                                      ; $489e: $a6
    ld bc, $d01a                                  ; $489f: $01 $1a $d0
    adc c                                         ; $48a2: $89
    add hl, de                                    ; $48a3: $19
    or d                                          ; $48a4: $b2
    sbc h                                         ; $48a5: $9c
    ld a, [bc]                                    ; $48a6: $0a
    ld h, b                                       ; $48a7: $60
    call z, $fbb4                                 ; $48a8: $cc $b4 $fb
    inc bc                                        ; $48ab: $03
    sub a                                         ; $48ac: $97
    ld sp, $69e6                                  ; $48ad: $31 $e6 $69
    jp z, $e631                                   ; $48b0: $ca $31 $e6

    add hl, hl                                    ; $48b3: $29
    ld e, h                                       ; $48b4: $5c
    dec d                                         ; $48b5: $15
    ld c, a                                       ; $48b6: $4f
    ld d, h                                       ; $48b7: $54
    and $75                                       ; $48b8: $e6 $75
    cp l                                          ; $48ba: $bd
    db $ec                                        ; $48bb: $ec
    ld a, [c]                                     ; $48bc: $f2
    ld a, [$1e13]                                 ; $48bd: $fa $13 $1e
    or l                                          ; $48c0: $b5
    ld a, [bc]                                    ; $48c1: $0a
    db $eb                                        ; $48c2: $eb
    db $f4                                        ; $48c3: $f4
    ld e, h                                       ; $48c4: $5c
    daa                                           ; $48c5: $27
    dec a                                         ; $48c6: $3d
    dec bc                                        ; $48c7: $0b
    jp nz, $ee18                                  ; $48c8: $c2 $18 $ee

    rrca                                          ; $48cb: $0f
    db $db                                        ; $48cc: $db
    add h                                         ; $48cd: $84
    ld [hl], e                                    ; $48ce: $73
    ld [hl], a                                    ; $48cf: $77
    sbc e                                         ; $48d0: $9b
    ld [hl], b                                    ; $48d1: $70
    ld a, [hl+]                                   ; $48d2: $2a
    ld d, c                                       ; $48d3: $51

jr_068_48d4:
    jp $163f                                      ; $48d4: $c3 $3f $16


    and [hl]                                      ; $48d7: $a6
    ld bc, $ae9d                                  ; $48d8: $01 $9d $ae
    ld h, b                                       ; $48db: $60
    push hl                                       ; $48dc: $e5
    call nc, $ca47                                ; $48dd: $d4 $47 $ca
    ld hl, $46ce                                  ; $48e0: $21 $ce $46
    ld l, $72                                     ; $48e3: $2e $72
    sub $cf                                       ; $48e5: $d6 $cf
    db $fd                                        ; $48e7: $fd
    ld bc, $bc57                                  ; $48e8: $01 $57 $bc
    adc l                                         ; $48eb: $8d
    ld d, e                                       ; $48ec: $53
    ret                                           ; $48ed: $c9


    and a                                         ; $48ee: $a7
    db $dd                                        ; $48ef: $dd
    cp a                                          ; $48f0: $bf
    dec hl                                        ; $48f1: $2b
    xor d                                         ; $48f2: $aa
    adc [hl]                                      ; $48f3: $8e
    inc sp                                        ; $48f4: $33
    sbc $bd                                       ; $48f5: $de $bd
    adc h                                         ; $48f7: $8c
    rrc d                                         ; $48f8: $cb $0a
    cp e                                          ; $48fa: $bb
    ld a, [bc]                                    ; $48fb: $0a
    call $c010                                    ; $48fc: $cd $10 $c0
    or d                                          ; $48ff: $b2
    dec hl                                        ; $4900: $2b
    sbc d                                         ; $4901: $9a
    pop bc                                        ; $4902: $c1
    xor $0f                                       ; $4903: $ee $0f
    db $db                                        ; $4905: $db
    jr nz, jr_068_4943                            ; $4906: $20 $3b

    add l                                         ; $4908: $85
    cp $f6                                        ; $4909: $fe $f6
    ld a, [c]                                     ; $490b: $f2
    xor $f6                                       ; $490c: $ee $f6
    and [hl]                                      ; $490e: $a6
    ld bc, $aa0b                                  ; $490f: $01 $0b $aa
    ld a, b                                       ; $4912: $78
    sbc l                                         ; $4913: $9d
    jr @-$2e                                      ; $4914: $18 $d0

    ld [hl], l                                    ; $4916: $75
    rst $30                                       ; $4917: $f7
    rlca                                          ; $4918: $07
    db $db                                        ; $4919: $db
    add h                                         ; $491a: $84
    ld [hl], e                                    ; $491b: $73
    ld d, a                                       ; $491c: $57
    call c, $cd1f                                 ; $491d: $dc $1f $cd
    db $d3                                        ; $4920: $d3
    sub h                                         ; $4921: $94
    ld b, e                                       ; $4922: $43
    sbc l                                         ; $4923: $9d
    ld l, h                                       ; $4924: $6c
    jr jr_068_48d4                                ; $4925: $18 $ad

    ld l, a                                       ; $4927: $6f
    db $e3                                        ; $4928: $e3
    add l                                         ; $4929: $85
    ld [$b418], a                                 ; $492a: $ea $18 $b4
    ld bc, $542b                                  ; $492d: $01 $2b $54
    jp hl                                         ; $4930: $e9


    add c                                         ; $4931: $81
    db $dd                                        ; $4932: $dd
    rra                                           ; $4933: $1f
    ld d, a                                       ; $4934: $57
    cp h                                          ; $4935: $bc
    adc l                                         ; $4936: $8d
    ld d, e                                       ; $4937: $53
    sub $cb                                       ; $4938: $d6 $cb
    add l                                         ; $493a: $85
    sub $7f                                       ; $493b: $d6 $7f
    ld h, h                                       ; $493d: $64
    reti                                          ; $493e: $d9


    xor l                                         ; $493f: $ad
    rst $38                                       ; $4940: $ff
    ld sp, hl                                     ; $4941: $f9
    inc de                                        ; $4942: $13

jr_068_4943:
    sbc c                                         ; $4943: $99
    and $b2                                       ; $4944: $e6 $b2
    inc d                                         ; $4946: $14
    call Call_000_262f                            ; $4947: $cd $2f $26
    add hl, hl                                    ; $494a: $29
    db $eb                                        ; $494b: $eb
    ld h, h                                       ; $494c: $64
    ld l, c                                       ; $494d: $69
    sub l                                         ; $494e: $95
    xor $e5                                       ; $494f: $ee $e5
    xor c                                         ; $4951: $a9
    xor [hl]                                      ; $4952: $ae
    or e                                          ; $4953: $b3
    scf                                           ; $4954: $37
    ld [hl], a                                    ; $4955: $77
    cpl                                           ; $4956: $2f
    db $e3                                        ; $4957: $e3
    or d                                          ; $4958: $b2
    jp nz, $62ae                                  ; $4959: $c2 $ae $62

    ld h, c                                       ; $495c: $61
    sub l                                         ; $495d: $95
    rst $08                                       ; $495e: $cf
    jp $03fb                                      ; $495f: $c3 $fb $03


    ld [c], a                                     ; $4962: $e2
    sub l                                         ; $4963: $95
    ld a, h                                       ; $4964: $7c
    ld h, e                                       ; $4965: $63
    adc a                                         ; $4966: $8f
    dec c                                         ; $4967: $0d
    call nc, $b0ae                                ; $4968: $d4 $ae $b0
    dec bc                                        ; $496b: $0b
    jp c, $5908                                   ; $496c: $da $08 $59

    push bc                                       ; $496f: $c5
    db $eb                                        ; $4970: $eb
    call nz, Call_068_4280                        ; $4971: $c4 $80 $42
    di                                            ; $4974: $f3
    cp b                                          ; $4975: $b8
    ei                                            ; $4976: $fb
    inc bc                                        ; $4977: $03
    sub a                                         ; $4978: $97
    ld [hl], c                                    ; $4979: $71
    ld e, c                                       ; $497a: $59
    ld h, c                                       ; $497b: $61
    ld d, a                                       ; $497c: $57
    and c                                         ; $497d: $a1
    add hl, de                                    ; $497e: $19
    ld [bc], a                                    ; $497f: $02
    ret c                                         ; $4980: $d8

    jr c, @-$21                                   ; $4981: $38 $dd

    pop bc                                        ; $4983: $c1
    ld b, l                                       ; $4984: $45
    jr c, jr_068_49ec                             ; $4985: $38 $65

    ld a, l                                       ; $4987: $7d
    ld h, e                                       ; $4988: $63

jr_068_4989:
    ld a, [hl]                                    ; $4989: $7e
    ccf                                           ; $498a: $3f

Jump_068_498b:
    xor l                                         ; $498b: $ad
    db $d3                                        ; $498c: $d3
    ldh a, [$f4]                                  ; $498d: $f0 $f4
    ld [hl], a                                    ; $498f: $77
    and [hl]                                      ; $4990: $a6
    db $d3                                        ; $4991: $d3
    jr nc, jr_068_4989                            ; $4992: $30 $f5

    ld a, $d9                                     ; $4994: $3e $d9
    jr nc, jr_068_49fd                            ; $4996: $30 $65

    sbc h                                         ; $4998: $9c
    ei                                            ; $4999: $fb
    inc bc                                        ; $499a: $03
    db $db                                        ; $499b: $db
    ld h, e                                       ; $499c: $63
    ld b, b                                       ; $499d: $40
    sub a                                         ; $499e: $97
    inc h                                         ; $499f: $24
    ld c, d                                       ; $49a0: $4a
    rra                                           ; $49a1: $1f
    add hl, de                                    ; $49a2: $19
    ccf                                           ; $49a3: $3f
    ld c, h                                       ; $49a4: $4c
    ld d, h                                       ; $49a5: $54
    sbc a                                         ; $49a6: $9f
    add [hl]                                      ; $49a7: $86
    rra                                           ; $49a8: $1f
    dec de                                        ; $49a9: $1b
    dec h                                         ; $49aa: $25
    xor $0f                                       ; $49ab: $ee $0f
    ld e, e                                       ; $49ad: $5b
    sub $1a                                       ; $49ae: $d6 $1a
    ld e, $b5                                     ; $49b0: $1e $b5
    add hl, hl                                    ; $49b2: $29
    add a                                         ; $49b3: $87
    ld b, [hl]                                    ; $49b4: $46
    pop hl                                        ; $49b5: $e1
    ld [hl], h                                    ; $49b6: $74
    cp d                                          ; $49b7: $ba
    add d                                         ; $49b8: $82
    add b                                         ; $49b9: $80
    cp c                                          ; $49ba: $b9
    ccf                                           ; $49bb: $3f
    adc c                                         ; $49bc: $89
    or b                                          ; $49bd: $b0
    or h                                          ; $49be: $b4
    adc e                                         ; $49bf: $8b
    add hl, de                                    ; $49c0: $19
    or d                                          ; $49c1: $b2
    xor h                                         ; $49c2: $ac
    sub e                                         ; $49c3: $93
    push af                                       ; $49c4: $f5
    ld l, l                                       ; $49c5: $6d
    cp h                                          ; $49c6: $bc
    ld d, b                                       ; $49c7: $50
    dec e                                         ; $49c8: $1d
    cp e                                          ; $49c9: $bb
    sbc e                                         ; $49ca: $9b
    or b                                          ; $49cb: $b0
    ld b, b                                       ; $49cc: $40
    xor e                                         ; $49cd: $ab
    db $f4                                        ; $49ce: $f4
    ld b, b                                       ; $49cf: $40
    ld d, [hl]                                    ; $49d0: $56
    ld hl, $437d                                  ; $49d1: $21 $7d $43
    ld e, l                                       ; $49d4: $5d

Jump_068_49d5:
    call nc, $d186                                ; $49d5: $d4 $86 $d1
    adc [hl]                                      ; $49d8: $8e
    swap [hl]                                     ; $49d9: $cb $36
    ld a, d                                       ; $49db: $7a
    ld a, a                                       ; $49dc: $7f
    ld [c], a                                     ; $49dd: $e2
    add hl, hl                                    ; $49de: $29
    rst $30                                       ; $49df: $f7
    adc d                                         ; $49e0: $8a
    ld [hl], d                                    ; $49e1: $72
    ld a, c                                       ; $49e2: $79
    and d                                         ; $49e3: $a2
    ld a, [$f634]                                 ; $49e4: $fa $34 $f6
    ld a, a                                       ; $49e7: $7f
    sub d                                         ; $49e8: $92
    ld b, l                                       ; $49e9: $45
    ld a, l                                       ; $49ea: $7d
    ld a, [de]                                    ; $49eb: $1a

jr_068_49ec:
    db $eb                                        ; $49ec: $eb
    pop hl                                        ; $49ed: $e1
    inc de                                        ; $49ee: $13
    inc a                                         ; $49ef: $3c
    and d                                         ; $49f0: $a2
    ld b, $d4                                     ; $49f1: $06 $d4
    ret                                           ; $49f3: $c9


    ld l, $0c                                     ; $49f4: $2e $0c
    ld d, e                                       ; $49f6: $53
    sbc a                                         ; $49f7: $9f
    add $4e                                       ; $49f8: $c6 $4e
    rst $00                                       ; $49fa: $c7
    ld h, l                                       ; $49fb: $65
    sbc e                                         ; $49fc: $9b

jr_068_49fd:
    cp e                                          ; $49fd: $bb
    add hl, bc                                    ; $49fe: $09
    ld a, [$92cf]                                 ; $49ff: $fa $cf $92
    call nz, Call_000_01fd                        ; $4a02: $c4 $fd $01
    db $db                                        ; $4a05: $db
    db $dd                                        ; $4a06: $dd
    ld [$bc35], a                                 ; $4a07: $ea $35 $bc
    ld e, l                                       ; $4a0a: $5d
    or b                                          ; $4a0b: $b0
    and [hl]                                      ; $4a0c: $a6
    inc e                                         ; $4a0d: $1c
    xor d                                         ; $4a0e: $aa
    add sp, $63                                   ; $4a0f: $e8 $63
    ld hl, $633d                                  ; $4a11: $21 $3d $63
    xor h                                         ; $4a14: $ac
    ccf                                           ; $4a15: $3f
    ld d, [hl]                                    ; $4a16: $56
    rla                                           ; $4a17: $17
    or l                                          ; $4a18: $b5
    add hl, de                                    ; $4a19: $19
    jp nc, $bd1f                                  ; $4a1a: $d2 $1f $bd

    ccf                                           ; $4a1d: $3f
    adc c                                         ; $4a1e: $89
    inc de                                        ; $4a1f: $13
    ld d, b                                       ; $4a20: $50
    ld l, b                                       ; $4a21: $68
    and [hl]                                      ; $4a22: $a6
    dec d                                         ; $4a23: $15
    or d                                          ; $4a24: $b2
    add hl, hl                                    ; $4a25: $29
    rst $00                                       ; $4a26: $c7
    dec h                                         ; $4a27: $25
    push hl                                       ; $4a28: $e5
    ld h, b                                       ; $4a29: $60
    ld e, l                                       ; $4a2a: $5d
    jr @-$18                                      ; $4a2b: $18 $e6

    xor [hl]                                      ; $4a2d: $ae
    ld a, b                                       ; $4a2e: $78
    ld e, [hl]                                    ; $4a2f: $5e
    ld d, a                                       ; $4a30: $57
    ld a, a                                       ; $4a31: $7f
    jp nz, $a163                                  ; $4a32: $c2 $63 $a1

    sbc c                                         ; $4a35: $99
    ld d, [hl]                                    ; $4a36: $56
    ret z                                         ; $4a37: $c8

    and $09                                       ; $4a38: $e6 $09
    db $d3                                        ; $4a3a: $d3
    jp hl                                         ; $4a3b: $e9


    jp nz, $a230                                  ; $4a3c: $c2 $30 $a2

    ld a, [hl+]                                   ; $4a3f: $2a
    ld l, d                                       ; $4a40: $6a
    ldh [rNR43], a                                ; $4a41: $e0 $22
    ld de, $9a33                                  ; $4a43: $11 $33 $9a
    ld [hl], d                                    ; $4a46: $72
    ld c, a                                       ; $4a47: $4f
    and c                                         ; $4a48: $a1
    adc d                                         ; $4a49: $8a
    ei                                            ; $4a4a: $fb
    inc bc                                        ; $4a4b: $03
    sub a                                         ; $4a4c: $97
    ld [hl], c                                    ; $4a4d: $71
    ld e, c                                       ; $4a4e: $59
    ld h, c                                       ; $4a4f: $61
    ld d, a                                       ; $4a50: $57
    and a                                         ; $4a51: $a7
    db $db                                        ; $4a52: $db
    or b                                          ; $4a53: $b0
    ld a, d                                       ; $4a54: $7a
    res 0, d                                      ; $4a55: $cb $82
    ld e, [hl]                                    ; $4a57: $5e
    inc a                                         ; $4a58: $3c
    ld sp, $99ed                                  ; $4a59: $31 $ed $99
    sbc h                                         ; $4a5c: $9c
    ld b, a                                       ; $4a5d: $47

jr_068_4a5e:
    halt                                          ; $4a5e: $76
    ld c, c                                       ; $4a5f: $49
    and d                                         ; $4a60: $a2
    add hl, de                                    ; $4a61: $19
    ld sp, $fac9                                  ; $4a62: $31 $c9 $fa
    ld [$4c2f], sp                                ; $4a65: $08 $2f $4c
    ld a, l                                       ; $4a68: $7d
    ld a, [de]                                    ; $4a69: $1a
    db $eb                                        ; $4a6a: $eb
    db $db                                        ; $4a6b: $db
    db $fc                                        ; $4a6c: $fc
    adc $68                                       ; $4a6d: $ce $68
    sbc l                                         ; $4a6f: $9d
    ld a, [hl+]                                   ; $4a70: $2a
    db $fd                                        ; $4a71: $fd
    cp c                                          ; $4a72: $b9
    ccf                                           ; $4a73: $3f
    ld d, a                                       ; $4a74: $57
    cp h                                          ; $4a75: $bc
    adc l                                         ; $4a76: $8d
    ld d, e                                       ; $4a77: $53
    sub $cb                                       ; $4a78: $d6 $cb
    add l                                         ; $4a7a: $85
    ld d, [hl]                                    ; $4a7b: $56
    jp hl                                         ; $4a7c: $e9


    ld e, [hl]                                    ; $4a7d: $5e
    sbc [hl]                                      ; $4a7e: $9e
    ld a, d                                       ; $4a7f: $7a
    ld hl, sp+$04                                 ; $4a80: $f8 $04
    cp a                                          ; $4a82: $bf
    sbc b                                         ; $4a83: $98
    sbc h                                         ; $4a84: $9c
    cp $23                                        ; $4a85: $fe $23
    bit 5, [hl]                                   ; $4a87: $cb $6e
    db $fd                                        ; $4a89: $fd
    rst $08                                       ; $4a8a: $cf
    sbc a                                         ; $4a8b: $9f
    ret z                                         ; $4a8c: $c8

    inc [hl]                                      ; $4a8d: $34
    sub a                                         ; $4a8e: $97
    cp e                                          ; $4a8f: $bb
    adc c                                         ; $4a90: $89
    or b                                          ; $4a91: $b0
    or h                                          ; $4a92: $b4
    adc e                                         ; $4a93: $8b
    sbc c                                         ; $4a94: $99
    dec de                                        ; $4a95: $1b
    sub a                                         ; $4a96: $97
    inc h                                         ; $4a97: $24
    jp z, $e162                                   ; $4a98: $ca $62 $e1

    db $fd                                        ; $4a9b: $fd
    ld bc, $dddb                                  ; $4a9c: $01 $db $dd
    ld [$bc35], a                                 ; $4a9f: $ea $35 $bc
    ld e, l                                       ; $4aa2: $5d
    or b                                          ; $4aa3: $b0
    and [hl]                                      ; $4aa4: $a6
    inc e                                         ; $4aa5: $1c
    adc d                                         ; $4aa6: $8a
    dec b                                         ; $4aa7: $05
    ld c, l                                       ; $4aa8: $4d
    adc a                                         ; $4aa9: $8f
    ld h, [hl]                                    ; $4aaa: $66
    ld [hl], $a0                                  ; $4aab: $36 $a0
    ld e, [hl]                                    ; $4aad: $5e
    xor $82                                       ; $4aae: $ee $82
    ld d, l                                       ; $4ab0: $55
    sbc l                                         ; $4ab1: $9d
    ld a, c                                       ; $4ab2: $79
    dec de                                        ; $4ab3: $1b
    and a                                         ; $4ab4: $a7
    dec bc                                        ; $4ab5: $0b
    db $d3                                        ; $4ab6: $d3
    ld [hl], e                                    ; $4ab7: $73
    ld [hl], a                                    ; $4ab8: $77
    cp e                                          ; $4ab9: $bb
    xor e                                         ; $4aba: $ab
    jp nz, Jump_000_3b1e                          ; $4abb: $c2 $1e $3b

    dec a                                         ; $4abe: $3d
    rst $28                                       ; $4abf: $ef
    dec l                                         ; $4ac0: $2d
    ld a, a                                       ; $4ac1: $7f
    ld [hl], d                                    ; $4ac2: $72
    db $d3                                        ; $4ac3: $d3
    rlca                                          ; $4ac4: $07
    db $db                                        ; $4ac5: $db
    sub a                                         ; $4ac6: $97
    inc h                                         ; $4ac7: $24
    ld b, l                                       ; $4ac8: $45

Jump_068_4ac9:
    ld h, l                                       ; $4ac9: $65
    jp z, Jump_068_42bd                           ; $4aca: $ca $bd $42

    or $7f                                        ; $4acd: $f6 $7f
    sub d                                         ; $4acf: $92
    ld e, l                                       ; $4ad0: $5d
    rst $10                                       ; $4ad1: $d7
    sub h                                         ; $4ad2: $94
    ld b, e                                       ; $4ad3: $43
    or c                                          ; $4ad4: $b1
    and b                                         ; $4ad5: $a0
    ld d, c                                       ; $4ad6: $51
    jr c, jr_068_4a5e                             ; $4ad7: $38 $85

    and $b5                                       ; $4ad9: $e6 $b5
    ei                                            ; $4adb: $fb
    inc bc                                        ; $4adc: $03

Call_068_4add:
    ld [c], a                                     ; $4add: $e2
    db $dd                                        ; $4ade: $dd
    ld a, [$3f9f]                                 ; $4adf: $fa $9f $3f
    sub c                                         ; $4ae2: $91
    ld l, c                                       ; $4ae3: $69
    ld l, $4b                                     ; $4ae4: $2e $4b
    rst $10                                       ; $4ae6: $d7
    sub l                                         ; $4ae7: $95
    ld d, l                                       ; $4ae8: $55
    rst $20                                       ; $4ae9: $e7
    add hl, bc                                    ; $4aea: $09
    rst $08                                       ; $4aeb: $cf
    ldh a, [$e7]                                  ; $4aec: $f0 $e7
    ld sp, $4dde                                  ; $4aee: $31 $de $4d
    ld e, b                                       ; $4af1: $58
    ld e, b                                       ; $4af2: $58
    and l                                         ; $4af3: $a5
    rlca                                          ; $4af4: $07
    db $fd                                        ; $4af5: $fd
    ld b, a                                       ; $4af6: $47
    or $87                                        ; $4af7: $f6 $87
    ld h, l                                       ; $4af9: $65
    db $ec                                        ; $4afa: $ec
    ld [c], a                                     ; $4afb: $e2
    db $fd                                        ; $4afc: $fd
    ld bc, $465b                                  ; $4afd: $01 $5b $46
    nop                                           ; $4b00: $00
    ld a, [de]                                    ; $4b01: $1a
    add l                                         ; $4b02: $85
    db $d3                                        ; $4b03: $d3
    jp hl                                         ; $4b04: $e9


    ld [$1fdd], a                                 ; $4b05: $ea $dd $1f
    ld [c], a                                     ; $4b08: $e2
    ld e, l                                       ; $4b09: $5d
    pop bc                                        ; $4b0a: $c1
    ld [bc], a                                    ; $4b0b: $02
    inc bc                                        ; $4b0c: $03
    cp d                                          ; $4b0d: $ba
    xor [hl]                                      ; $4b0e: $ae
    add hl, hl                                    ; $4b0f: $29
    add a                                         ; $4b10: $87
    ld b, [hl]                                    ; $4b11: $46
    pop hl                                        ; $4b12: $e1
    db $f4                                        ; $4b13: $f4
    rra                                           ; $4b14: $1f
    call Call_068_4e4e                            ; $4b15: $cd $4e $4e
    ld d, a                                       ; $4b18: $57
    rlca                                          ; $4b19: $07
    ld l, [hl]                                    ; $4b1a: $6e
    ld e, h                                       ; $4b1b: $5c
    and $fe                                       ; $4b1c: $e6 $fe
    nop                                           ; $4b1e: $00
    ei                                            ; $4b1f: $fb
    ld c, h                                       ; $4b20: $4c
    add l                                         ; $4b21: $85
    or e                                          ; $4b22: $b3
    pop hl                                        ; $4b23: $e1
    inc bc                                        ; $4b24: $03
    db $db                                        ; $4b25: $db
    add h                                         ; $4b26: $84
    db $d3                                        ; $4b27: $d3
    db $e4                                        ; $4b28: $e4
    ld e, d                                       ; $4b29: $5a
    push af                                       ; $4b2a: $f5
    ld b, l                                       ; $4b2b: $45
    ld a, $6d                                     ; $4b2c: $3e $6d
    sbc b                                         ; $4b2e: $98
    xor $88                                       ; $4b2f: $ee $88
    db $f4                                        ; $4b31: $f4
    ld [hl], c                                    ; $4b32: $71
    ld a, a                                       ; $4b33: $7f
    db $db                                        ; $4b34: $db
    add h                                         ; $4b35: $84
    ld d, e                                       ; $4b36: $53
    adc c                                         ; $4b37: $89
    cp $13                                        ; $4b38: $fe $13
    push af                                       ; $4b3a: $f5
    and l                                         ; $4b3b: $a5
    and a                                         ; $4b3c: $a7
    ld [de], a                                    ; $4b3d: $12
    add d                                         ; $4b3e: $82
    ld h, c                                       ; $4b3f: $61
    dec de                                        ; $4b40: $1b
    ld a, $db                                     ; $4b41: $3e $db
    jr nz, jr_068_4b50                            ; $4b43: $20 $0b

    or a                                          ; $4b45: $b7
    and c                                         ; $4b46: $a1
    add hl, bc                                    ; $4b47: $09
    sbc d                                         ; $4b48: $9a
    xor c                                         ; $4b49: $a9
    push af                                       ; $4b4a: $f5
    rla                                           ; $4b4b: $17
    add $4c                                       ; $4b4c: $c6 $4c
    dec l                                         ; $4b4e: $2d
    and d                                         ; $4b4f: $a2

jr_068_4b50:
    call $a342                                    ; $4b50: $cd $42 $a3
    call c, $e8a8                                 ; $4b53: $dc $a8 $e8
    cp $8d                                        ; $4b56: $fe $8d
    and e                                         ; $4b58: $a3
    jp z, Jump_068_66ae                           ; $4b59: $ca $ae $66

    ret                                           ; $4b5c: $c9


    cp h                                          ; $4b5d: $bc
    ld a, e                                       ; $4b5e: $7b
    ld l, $56                                     ; $4b5f: $2e $56
    xor b                                         ; $4b61: $a8
    jp nz, $fbee                                  ; $4b62: $c2 $ee $fb

    ld l, $2b                                     ; $4b65: $2e $2b
    ld l, [hl]                                    ; $4b67: $6e
    sub d                                         ; $4b68: $92
    pop hl                                        ; $4b69: $e1
    dec l                                         ; $4b6a: $2d
    ld c, c                                       ; $4b6b: $49
    ld [hl], $4c                                  ; $4b6c: $36 $4c
    rst $08                                       ; $4b6e: $cf
    ld a, l                                       ; $4b6f: $7d
    db $f4                                        ; $4b70: $f4
    call z, Call_068_5e86                         ; $4b71: $cc $86 $5e
    cp b                                          ; $4b74: $b8
    sub $e5                                       ; $4b75: $d6 $e5
    ld d, l                                       ; $4b77: $55
    rst $00                                       ; $4b78: $c7
    ld h, e                                       ; $4b79: $63
    jr z, @+$18                                   ; $4b7a: $28 $16

    ld [$5e86], a                                 ; $4b7c: $ea $86 $5e
    xor [hl]                                      ; $4b7f: $ae
    db $ec                                        ; $4b80: $ec
    ld [c], a                                     ; $4b81: $e2
    halt                                          ; $4b82: $76
    ld [hl], l                                    ; $4b83: $75
    ld e, h                                       ; $4b84: $5c
    cp l                                          ; $4b85: $bd
    sub e                                         ; $4b86: $93
    ld e, $51                                     ; $4b87: $1e $51
    or a                                          ; $4b89: $b7
    ret nc                                        ; $4b8a: $d0

    ld l, h                                       ; $4b8b: $6c
    rst $20                                       ; $4b8c: $e7
    add [hl]                                      ; $4b8d: $86
    rrca                                          ; $4b8e: $0f
    db $db                                        ; $4b8f: $db
    dec a                                         ; $4b90: $3d
    or $d2                                        ; $4b91: $f6 $d2
    inc c                                         ; $4b93: $0c
    inc hl                                        ; $4b94: $23
    ld [$9a16], a                                 ; $4b95: $ea $16 $9a
    db $ed                                        ; $4b98: $ed
    inc d                                         ; $4b99: $14
    dec d                                         ; $4b9a: $15
    sbc d                                         ; $4b9b: $9a
    cp c                                          ; $4b9c: $b9
    ld h, d                                       ; $4b9d: $62
    dec h                                         ; $4b9e: $25
    ld d, h                                       ; $4b9f: $54
    ld c, [hl]                                    ; $4ba0: $4e
    ld e, c                                       ; $4ba1: $59
    ld l, b                                       ; $4ba2: $68
    ld [hl], $c6                                  ; $4ba3: $36 $c6
    or h                                          ; $4ba5: $b4
    ld e, e                                       ; $4ba6: $5b
    ld l, b                                       ; $4ba7: $68
    dec de                                        ; $4ba8: $1b
    dec h                                         ; $4ba9: $25
    xor $0f                                       ; $4baa: $ee $0f
    ld d, a                                       ; $4bac: $57
    ld d, b                                       ; $4bad: $50
    adc [hl]                                      ; $4bae: $8e
    ld d, $d2                                     ; $4baf: $16 $d2
    inc sp                                        ; $4bb1: $33
    add $bb                                       ; $4bb2: $c6 $bb
    db $db                                        ; $4bb4: $db
    cp e                                          ; $4bb5: $bb
    inc hl                                        ; $4bb6: $23
    jp nc, $0547                                  ; $4bb7: $d2 $47 $05

    xor h                                         ; $4bba: $ac
    ld [hl], l                                    ; $4bbb: $75
    push bc                                       ; $4bbc: $c5
    ld d, a                                       ; $4bbd: $57
    rrca                                          ; $4bbe: $0f
    ld h, h                                       ; $4bbf: $64
    rst $30                                       ; $4bc0: $f7
    ld l, a                                       ; $4bc1: $6f
    inc e                                         ; $4bc2: $1c
    ld d, l                                       ; $4bc3: $55
    sub $6b                                       ; $4bc4: $d6 $6b
    adc b                                         ; $4bc6: $88
    add hl, de                                    ; $4bc7: $19
    rst $30                                       ; $4bc8: $f7
    rlca                                          ; $4bc9: $07
    ld [c], a                                     ; $4bca: $e2
    cpl                                           ; $4bcb: $2f
    ld b, $16                                     ; $4bcc: $06 $16
    sbc d                                         ; $4bce: $9a
    add hl, hl                                    ; $4bcf: $29
    ld b, a                                       ; $4bd0: $47
    db $eb                                        ; $4bd1: $eb
    dec de                                        ; $4bd2: $1b

Call_068_4bd3:
    ld [hl], h                                    ; $4bd3: $74
    ld d, h                                       ; $4bd4: $54
    call nc, $342d                                ; $4bd5: $d4 $2d $34
    db $db                                        ; $4bd8: $db
    cp c                                          ; $4bd9: $b9
    and c                                         ; $4bda: $a1
    cp l                                          ; $4bdb: $bd
    inc c                                         ; $4bdc: $0c
    ld sp, $e3b3                                  ; $4bdd: $31 $b3 $e3
    or d                                          ; $4be0: $b2
    or c                                          ; $4be1: $b1
    dec hl                                        ; $4be2: $2b
    db $ec                                        ; $4be3: $ec
    jp c, Jump_000_01f0                           ; $4be4: $da $f0 $01

    adc c                                         ; $4be7: $89
    ld l, e                                       ; $4be8: $6b
    xor d                                         ; $4be9: $aa
    or h                                          ; $4bea: $b4
    pop de                                        ; $4beb: $d1
    dec c                                         ; $4bec: $0d
    db $dd                                        ; $4bed: $dd
    ld a, [$2496]                                 ; $4bee: $fa $96 $24
    dec c                                         ; $4bf1: $0d
    jp c, $fa80                                   ; $4bf2: $da $80 $fa

    ld l, e                                       ; $4bf5: $6b
    xor d                                         ; $4bf6: $aa
    or h                                          ; $4bf7: $b4
    pop de                                        ; $4bf8: $d1
    dec c                                         ; $4bf9: $0d
    db $dd                                        ; $4bfa: $dd
    ld e, [hl]                                    ; $4bfb: $5e
    ret                                           ; $4bfc: $c9


    and a                                         ; $4bfd: $a7
    db $fd                                        ; $4bfe: $fd
    ld h, c                                       ; $4bff: $61
    ld a, c                                       ; $4c00: $79
    cp d                                          ; $4c01: $ba
    xor [hl]                                      ; $4c02: $ae
    call z, Call_068_69fc                         ; $4c03: $cc $fc $69
    sub b                                         ; $4c06: $90
    dec de                                        ; $4c07: $1b
    db $e3                                        ; $4c08: $e3
    ld l, b                                       ; $4c09: $68
    dec d                                         ; $4c0a: $15
    ld h, l                                       ; $4c0b: $65
    ld [hl], $ae                                  ; $4c0c: $36 $ae
    and b                                         ; $4c0e: $a0
    ld c, d                                       ; $4c0f: $4a
    sub e                                         ; $4c10: $93
    and e                                         ; $4c11: $a3
    ld h, l                                       ; $4c12: $65
    sub l                                         ; $4c13: $95
    dec bc                                        ; $4c14: $0b

Call_068_4c15:
    rst $28                                       ; $4c15: $ef
    rrca                                          ; $4c16: $0f
    ld e, e                                       ; $4c17: $5b
    xor c                                         ; $4c18: $a9
    adc l                                         ; $4c19: $8d
    jp nz, Jump_000_0aa9                          ; $4c1a: $c2 $a9 $0a

    and a                                         ; $4c1d: $a7
    cp $9a                                        ; $4c1e: $fe $9a
    ld a, [hl+]                                   ; $4c20: $2a
    ld l, l                                       ; $4c21: $6d
    db $f4                                        ; $4c22: $f4
    cp [hl]                                       ; $4c23: $be
    rst $28                                       ; $4c24: $ef
    xor d                                         ; $4c25: $aa
    ld [hl], b                                    ; $4c26: $70
    ld a, [$b927]                                 ; $4c27: $fa $27 $b9
    add d                                         ; $4c2a: $82
    sub [hl]                                      ; $4c2b: $96
    dec bc                                        ; $4c2c: $0b
    inc bc                                        ; $4c2d: $03
    ld [hl], l                                    ; $4c2e: $75
    jp $9707                                      ; $4c2f: $c3 $07 $97


    add hl, de                                    ; $4c32: $19
    db $e3                                        ; $4c33: $e3
    rst $08                                       ; $4c34: $cf
    ret nz                                        ; $4c35: $c0

    cp e                                          ; $4c36: $bb
    sub a                                         ; $4c37: $97
    ld c, e                                       ; $4c38: $4b
    ld [hl], $50                                  ; $4c39: $36 $50
    ei                                            ; $4c3b: $fb
    daa                                           ; $4c3c: $27
    cp c                                          ; $4c3d: $b9
    add d                                         ; $4c3e: $82
    ld [hl], $60                                  ; $4c3f: $36 $60
    add l                                         ; $4c41: $85
    ld a, [hl+]                                   ; $4c42: $2a
    ld l, h                                       ; $4c43: $6c
    push af                                       ; $4c44: $f5
    xor h                                         ; $4c45: $ac
    ld a, $8d                                     ; $4c46: $3e $8d
    ld h, l                                       ; $4c48: $65
    jp hl                                         ; $4c49: $e9


    or c                                          ; $4c4a: $b1
    ld h, a                                       ; $4c4b: $67
    rst $30                                       ; $4c4c: $f7
    rlca                                          ; $4c4d: $07
    ld e, e                                       ; $4c4e: $5b
    xor c                                         ; $4c4f: $a9
    ld c, l                                       ; $4c50: $4d
    add hl, sp                                    ; $4c51: $39
    ld l, $0d                                     ; $4c52: $2e $0d
    ld e, b                                       ; $4c54: $58
    xor b                                         ; $4c55: $a8
    sbc e                                         ; $4c56: $9b
    ld a, $e2                                     ; $4c57: $3e $e2
    add hl, hl                                    ; $4c59: $29
    add a                                         ; $4c5a: $87
    add l                                         ; $4c5b: $85
    sub l                                         ; $4c5c: $95
    ld d, b                                       ; $4c5d: $50

Jump_068_4c5e:
    add hl, sp                                    ; $4c5e: $39
    ld e, l                                       ; $4c5f: $5d
    sub $0a                                       ; $4c60: $d6 $0a
    reti                                          ; $4c62: $d9


    rst $38                                       ; $4c63: $ff
    ld c, c                                       ; $4c64: $49
    halt                                          ; $4c65: $76
    ld e, l                                       ; $4c66: $5d
    jp $c2f3                                      ; $4c67: $c3 $f3 $c2


    db $10                                        ; $4c6a: $10
    inc sp                                        ; $4c6b: $33
    ld a, [de]                                    ; $4c6c: $1a
    xor b                                         ; $4c6d: $a8
    dec e                                         ; $4c6e: $1d
    sub a                                         ; $4c6f: $97
    adc l                                         ; $4c70: $8d
    jp c, $813c                                   ; $4c71: $da $3c $81

    ld a, d                                       ; $4c74: $7a
    ld a, a                                       ; $4c75: $7f
    ld [c], a                                     ; $4c76: $e2
    add hl, hl                                    ; $4c77: $29
    add a                                         ; $4c78: $87
    add l                                         ; $4c79: $85
    dec c                                         ; $4c7a: $0d
    db $e3                                        ; $4c7b: $e3
    adc h                                         ; $4c7c: $8c
    add c                                         ; $4c7d: $81
    db $fd                                        ; $4c7e: $fd
    ld b, a                                       ; $4c7f: $47
    sub [hl]                                      ; $4c80: $96
    jp c, $c93f                                   ; $4c81: $da $3f $c9

    dec d                                         ; $4c84: $15
    or h                                          ; $4c85: $b4
    cp [hl]                                       ; $4c86: $be
    ld sp, $8183                                  ; $4c87: $31 $83 $81
    ld e, d                                       ; $4c8a: $5a
    halt                                          ; $4c8b: $76
    dec [hl]                                      ; $4c8c: $35
    or h                                          ; $4c8d: $b4
    ld b, $d4                                     ; $4c8e: $06 $d4
    ld h, $b0                                     ; $4c90: $26 $b0
    ld bc, $370b                                  ; $4c92: $01 $0b $37
    ld a, l                                       ; $4c95: $7d
    add hl, bc                                    ; $4c96: $09
    xor d                                         ; $4c97: $aa
    xor h                                         ; $4c98: $ac
    add h                                         ; $4c99: $84
    jp z, Jump_068_7bb9                           ; $4c9a: $ca $b9 $7b

    add hl, de                                    ; $4c9d: $19
    sub a                                         ; $4c9e: $97
    dec d                                         ; $4c9f: $15
    halt                                          ; $4ca0: $76
    ld d, l                                       ; $4ca1: $55
    sbc a                                         ; $4ca2: $9f
    xor l                                         ; $4ca3: $ad
    ld e, b                                       ; $4ca4: $58
    sbc a                                         ; $4ca5: $9f
    add $d2                                       ; $4ca6: $c6 $d2
    ld h, e                                       ; $4ca8: $63
    rst $08                                       ; $4ca9: $cf
    jp z, Jump_068_63fa                           ; $4caa: $ca $fa $63

    sbc c                                         ; $4cad: $99
    rst $30                                       ; $4cae: $f7
    rlca                                          ; $4caf: $07
    ld d, a                                       ; $4cb0: $57
    ldh a, [$d5]                                  ; $4cb1: $f0 $d5
    db $e3                                        ; $4cb3: $e3
    db $f4                                        ; $4cb4: $f4
    ld e, a                                       ; $4cb5: $5f
    db $db                                        ; $4cb6: $db
    cp b                                          ; $4cb7: $b8
    ld d, b                                       ; $4cb8: $50
    ld d, h                                       ; $4cb9: $54
    ld b, l                                       ; $4cba: $45
    and e                                         ; $4cbb: $a3
    ld [hl], b                                    ; $4cbc: $70
    ld a, [de]                                    ; $4cbd: $1a
    ld e, l                                       ; $4cbe: $5d
    db $fc                                        ; $4cbf: $fc
    ld e, c                                       ; $4cc0: $59
    ret                                           ; $4cc1: $c9


    and a                                         ; $4cc2: $a7
    push af                                       ; $4cc3: $f5
    xor c                                         ; $4cc4: $a9
    ld c, d                                       ; $4cc5: $4a
    add hl, sp                                    ; $4cc6: $39
    ld e, d                                       ; $4cc7: $5a
    rra                                           ; $4cc8: $1f
    dec bc                                        ; $4cc9: $0b
    db $eb                                        ; $4cca: $eb
    adc a                                         ; $4ccb: $8f
    ld h, l                                       ; $4ccc: $65
    sbc $1f                                       ; $4ccd: $de $1f
    ld e, e                                       ; $4ccf: $5b
    xor c                                         ; $4cd0: $a9
    add l                                         ; $4cd1: $85
    ld l, e                                       ; $4cd2: $6b
    inc d                                         ; $4cd3: $14
    ld c, [hl]                                    ; $4cd4: $4e
    or e                                          ; $4cd5: $b3
    adc l                                         ; $4cd6: $8d
    inc de                                        ; $4cd7: $13
    adc h                                         ; $4cd8: $8c
    or d                                          ; $4cd9: $b2
    dec hl                                        ; $4cda: $2b
    xor d                                         ; $4cdb: $aa
    adc [hl]                                      ; $4cdc: $8e
    inc sp                                        ; $4cdd: $33
    sbc $1f                                       ; $4cde: $de $1f
    rla                                           ; $4ce0: $17
    ld h, e                                       ; $4ce1: $63
    push bc                                       ; $4ce2: $c5
    or d                                          ; $4ce3: $b2

Call_068_4ce4:
    ld a, [c]                                     ; $4ce4: $f2
    push bc                                       ; $4ce5: $c5
    inc h                                         ; $4ce6: $24
    rst $28                                       ; $4ce7: $ef
    sbc [hl]                                      ; $4ce8: $9e
    ld d, c                                       ; $4ce9: $51
    daa                                           ; $4cea: $27
    ld e, c                                       ; $4ceb: $59
    add hl, bc                                    ; $4cec: $09
    ld h, e                                       ; $4ced: $63
    ld d, a                                       ; $4cee: $57
    ld d, h                                       ; $4cef: $54
    dec e                                         ; $4cf0: $1d
    ld h, a                                       ; $4cf1: $67
    ld l, h                                       ; $4cf2: $6c
    ld b, b                                       ; $4cf3: $40
    ld a, l                                       ; $4cf4: $7d
    ld a, e                                       ; $4cf5: $7b
    pop af                                        ; $4cf6: $f1
    ld a, a                                       ; $4cf7: $7f
    cp $63                                        ; $4cf8: $fe $63
    call z, Call_068_5510                         ; $4cfa: $cc $10 $55
    ld d, d                                       ; $4cfd: $52
    dec de                                        ; $4cfe: $1b
    add l                                         ; $4cff: $85
    db $d3                                        ; $4d00: $d3
    inc c                                         ; $4d01: $0c
    add hl, sp                                    ; $4d02: $39
    jp c, $d971                                   ; $4d03: $da $71 $d9

    and [hl]                                      ; $4d06: $a6
    ld b, $b9                                     ; $4d07: $06 $b9
    ld l, $bc                                     ; $4d09: $2e $bc
    cp c                                          ; $4d0b: $b9
    ccf                                           ; $4d0c: $3f
    rla                                           ; $4d0d: $17
    xor [hl]                                      ; $4d0e: $ae
    dec [hl]                                      ; $4d0f: $35
    inc hl                                        ; $4d10: $23
    ld h, $a7                                     ; $4d11: $26 $a7
    db $ec                                        ; $4d13: $ec
    sbc a                                         ; $4d14: $9f
    db $e4                                        ; $4d15: $e4
    ld a, [bc]                                    ; $4d16: $0a
    ld [hl], a                                    ; $4d17: $77
    ld a, e                                       ; $4d18: $7b
    dec b                                         ; $4d19: $05
    push hl                                       ; $4d1a: $e5
    add sp, -$03                                  ; $4d1b: $e8 $fd
    ld bc, $6389                                  ; $4d1d: $01 $89 $63
    ccf                                           ; $4d20: $3f
    db $ed                                        ; $4d21: $ed
    ld d, c                                       ; $4d22: $51
    call nc, $9c28                                ; $4d23: $d4 $28 $9c
    ld l, $49                                     ; $4d26: $2e $49
    sub h                                         ; $4d28: $94
    ccf                                           ; $4d29: $3f
    inc l                                         ; $4d2a: $2c
    db $e3                                        ; $4d2b: $e3
    ld l, l                                       ; $4d2c: $6d
    ld l, b                                       ; $4d2d: $68
    xor a                                         ; $4d2e: $af
    jr @-$27                                      ; $4d2f: $18 $d7

    inc c                                         ; $4d31: $0c
    ld l, e                                       ; $4d32: $6b
    ld b, b                                       ; $4d33: $40
    inc sp                                        ; $4d34: $33
    ld h, d                                       ; $4d35: $62
    and [hl]                                      ; $4d36: $a6
    ld [hl], l                                    ; $4d37: $75

Jump_068_4d38:
    ld e, h                                       ; $4d38: $5c
    ld [hl], $76                                  ; $4d39: $36 $76
    add l                                         ; $4d3b: $85
    ld e, l                                       ; $4d3c: $5d
    dec de                                        ; $4d3d: $1b
    ld a, $89                                     ; $4d3e: $3e $89
    ld e, b                                       ; $4d40: $58
    ld c, a                                       ; $4d41: $4f
    ld l, l                                       ; $4d42: $6d
    ld b, b                                       ; $4d43: $40
    dec b                                         ; $4d44: $05
    inc sp                                        ; $4d45: $33
    jr jr_068_4dbe                                ; $4d46: $18 $76

    ld l, l                                       ; $4d48: $6d
    add sp, $56                                   ; $4d49: $e8 $56
    ld [$df7d], a                                 ; $4d4b: $ea $7d $df
    call Call_068_69c2                            ; $4d4e: $cd $c2 $69
    jp c, $0318                                   ; $4d51: $da $18 $03

    ld [hl], h                                    ; $4d54: $74
    jp $9b07                                      ; $4d55: $c3 $07 $9b


    ld b, a                                       ; $4d58: $47
    halt                                          ; $4d59: $76
    sbc d                                         ; $4d5a: $9a
    add hl, hl                                    ; $4d5b: $29
    add hl, de                                    ; $4d5c: $19
    sub e                                         ; $4d5d: $93
    db $d3                                        ; $4d5e: $d3
    sub h                                         ; $4d5f: $94
    ld b, e                                       ; $4d60: $43
    di                                            ; $4d61: $f3
    add c                                         ; $4d62: $81
    ld d, d                                       ; $4d63: $52
    ld d, h                                       ; $4d64: $54
    ret z                                         ; $4d65: $c8

    xor [hl]                                      ; $4d66: $ae
    or b                                          ; $4d67: $b0
    xor e                                         ; $4d68: $ab
    ld bc, $7455                                  ; $4d69: $01 $55 $74
    ld a, c                                       ; $4d6c: $79
    ld a, [c]                                     ; $4d6d: $f2
    ld h, l                                       ; $4d6e: $65
    ld a, [de]                                    ; $4d6f: $1a
    ld h, h                                       ; $4d70: $64
    reti                                          ; $4d71: $d9


    ldh a, [rPCM12]                               ; $4d72: $f0 $76
    pop bc                                        ; $4d74: $c1
    ld [hl], $c6                                  ; $4d75: $36 $c6
    pop de                                        ; $4d77: $d1
    ld c, [hl]                                    ; $4d78: $4e
    ld d, e                                       ; $4d79: $53
    ld c, $f5                                     ; $4d7a: $0e $f5
    ld [hl], d                                    ; $4d7c: $72
    rla                                           ; $4d7d: $17
    xor h                                         ; $4d7e: $ac

jr_068_4d7f:
    ld a, [hl+]                                   ; $4d7f: $2a
    sbc h                                         ; $4d80: $9c
    ld a, d                                       ; $4d81: $7a
    jr nz, jr_068_4d7f                            ; $4d82: $20 $fb

    db $d3                                        ; $4d84: $d3
    rst $20                                       ; $4d85: $e7
    ld l, $68                                     ; $4d86: $2e $68
    inc bc                                        ; $4d88: $03
    ld a, [de]                                    ; $4d89: $1a
    ld b, a                                       ; $4d8a: $47
    dec hl                                        ; $4d8b: $2b
    sbc c                                         ; $4d8c: $99
    ld e, $da                                     ; $4d8d: $1e $da
    db $fd                                        ; $4d8f: $fd
    ld bc, $95e2                                  ; $4d90: $01 $e2 $95
    ld a, h                                       ; $4d93: $7c
    ld h, e                                       ; $4d94: $63

jr_068_4d95:
    adc a                                         ; $4d95: $8f
    add l                                         ; $4d96: $85
    and $b5                                       ; $4d97: $e6 $b5
    ld a, d                                       ; $4d99: $7a
    rst $00                                       ; $4d9a: $c7
    ret c                                         ; $4d9b: $d8

    jr nc, @-$31                                  ; $4d9c: $30 $cd

    db $f4                                        ; $4d9e: $f4
    cp b                                          ; $4d9f: $b8
    dec b                                         ; $4da0: $05

jr_068_4da1:
    rst $08                                       ; $4da1: $cf
    and $6e                                       ; $4da2: $e6 $6e
    ld [hl+], a                                   ; $4da4: $22
    dec c                                         ; $4da5: $0d
    ccf                                           ; $4da6: $3f
    ld a, [hl+]                                   ; $4da7: $2a
    ld sp, hl                                     ; $4da8: $f9
    or h                                          ; $4da9: $b4
    ld c, [hl]                                    ; $4daa: $4e
    or d                                          ; $4dab: $b2
    inc [hl]                                      ; $4dac: $34
    ret                                           ; $4dad: $c9


    ldh a, [$96]                                  ; $4dae: $f0 $96
    inc h                                         ; $4db0: $24
    sbc e                                         ; $4db1: $9b
    ld [hl], d                                    ; $4db2: $72
    xor b                                         ; $4db3: $a8
    sub e                                         ; $4db4: $93
    dec d                                         ; $4db5: $15
    jr nc, jr_068_4da1                            ; $4db6: $30 $e9

    cp c                                          ; $4db8: $b9
    ccf                                           ; $4db9: $3f
    sub a                                         ; $4dba: $97
    ld c, [hl]                                    ; $4dbb: $4e
    inc d                                         ; $4dbc: $14
    dec [hl]                                      ; $4dbd: $35

jr_068_4dbe:
    ld a, [bc]                                    ; $4dbe: $0a
    ld h, a                                       ; $4dbf: $67
    jp $9707                                      ; $4dc0: $c3 $07 $97


    ld b, c                                       ; $4dc3: $41
    or $77                                        ; $4dc4: $f6 $77
    cpl                                           ; $4dc6: $2f
    jr nc, jr_068_4d95                            ; $4dc7: $30 $cc

    ld a, l                                       ; $4dc9: $7d
    rst $18                                       ; $4dca: $df
    rra                                           ; $4dcb: $1f
    add hl, bc                                    ; $4dcc: $09
    ld h, l                                       ; $4dcd: $65
    ld b, [hl]                                    ; $4dce: $46
    ld e, h                                       ; $4dcf: $5c
    cpl                                           ; $4dd0: $2f
    sbc h                                         ; $4dd1: $9c
    xor $5f                                       ; $4dd2: $ee $5f
    db $e3                                        ; $4dd4: $e3
    adc e                                         ; $4dd5: $8b
    ld c, c                                       ; $4dd6: $49
    adc d                                         ; $4dd7: $8a
    cp d                                          ; $4dd8: $ba
    xor [hl]                                      ; $4dd9: $ae
    xor h                                         ; $4dda: $ac
    adc a                                         ; $4ddb: $8f
    push af                                       ; $4ddc: $f5
    xor h                                         ; $4ddd: $ac
    db $e4                                        ; $4dde: $e4
    db $d3                                        ; $4ddf: $d3
    ld a, [$6013]                                 ; $4de0: $fa $13 $60
    and e                                         ; $4de3: $a3
    cp h                                          ; $4de4: $bc
    ccf                                           ; $4de5: $3f
    sbc e                                         ; $4de6: $9b
    db $dd                                        ; $4de7: $dd
    dec bc                                        ; $4de8: $0b
    inc c                                         ; $4de9: $0c
    inc hl                                        ; $4dea: $23
    ld [$9a16], a                                 ; $4deb: $ea $16 $9a
    db $ed                                        ; $4dee: $ed
    call c, Call_000_01f0                         ; $4def: $dc $f0 $01
    sbc e                                         ; $4df2: $9b
    ld b, a                                       ; $4df3: $47
    ld c, [hl]                                    ; $4df4: $4e
    and c                                         ; $4df5: $a1
    ld a, c                                       ; $4df6: $79
    xor l                                         ; $4df7: $ad
    db $d3                                        ; $4df8: $d3
    ld c, e                                       ; $4df9: $4b
    daa                                           ; $4dfa: $27
    ld l, [hl]                                    ; $4dfb: $6e
    ld a, [$e200]                                 ; $4dfc: $fa $00 $e2
    ld a, a                                       ; $4dff: $7f
    ld [hl], d                                    ; $4e00: $72
    xor $fb                                       ; $4e01: $ee $fb
    ld l, $ff                                     ; $4e03: $2e $ff
    db $e4                                        ; $4e05: $e4
    inc [hl]                                      ; $4e06: $34
    push hl                                       ; $4e07: $e5
    ret nc                                        ; $4e08: $d0

    dec d                                         ; $4e09: $15
    ld e, a                                       ; $4e0a: $5f
    cp l                                          ; $4e0b: $bd
    rst $28                                       ; $4e0c: $ef
    and a                                         ; $4e0d: $a7
    push de                                       ; $4e0e: $d5
    inc bc                                        ; $4e0f: $03
    ld a, c                                       ; $4e10: $79
    ld [hl], a                                    ; $4e11: $77
    dec hl                                        ; $4e12: $2b
    or l                                          ; $4e13: $b5
    ld a, h                                       ; $4e14: $7c
    ld sp, $d0b0                                  ; $4e15: $31 $b0 $d0
    cp h                                          ; $4e18: $bc
    sub $17                                       ; $4e19: $d6 $17
    rst $38                                       ; $4e1b: $ff
    adc c                                         ; $4e1c: $89
    ld a, [$c43f]                                 ; $4e1d: $fa $3f $c4
    adc h                                         ; $4e20: $8c
    ei                                            ; $4e21: $fb
    inc bc                                        ; $4e22: $03
    db $db                                        ; $4e23: $db
    add h                                         ; $4e24: $84
    ld d, e                                       ; $4e25: $53
    ld a, a                                       ; $4e26: $7f
    ld [bc], a                                    ; $4e27: $02
    db $e4                                        ; $4e28: $e4
    ld l, b                                       ; $4e29: $68
    ld a, l                                       ; $4e2a: $7d
    ld a, [de]                                    ; $4e2b: $1a
    xor l                                         ; $4e2c: $ad
    ld c, h                                       ; $4e2d: $4c
    adc a                                         ; $4e2e: $8f
    ld d, c                                       ; $4e2f: $51
    ld d, h                                       ; $4e30: $54
    inc [hl]                                      ; $4e31: $34
    ld a, [bc]                                    ; $4e32: $0a
    and a                                         ; $4e33: $a7
    ld a, [hl-]                                   ; $4e34: $3a
    ld e, $63                                     ; $4e35: $1e $63
    inc hl                                        ; $4e37: $23
    inc bc                                        ; $4e38: $03
    db $eb                                        ; $4e39: $eb
    db $d3                                        ; $4e3a: $d3
    ret c                                         ; $4e3b: $d8

    xor c                                         ; $4e3c: $a9
    ld h, h                                       ; $4e3d: $64
    ld a, d                                       ; $4e3e: $7a
    ld l, b                                       ; $4e3f: $68
    ld [hl], a                                    ; $4e40: $77
    xor a                                         ; $4e41: $af
    and b                                         ; $4e42: $a0
    inc e                                         ; $4e43: $1c
    xor l                                         ; $4e44: $ad
    ld c, a                                       ; $4e45: $4f
    ld h, e                                       ; $4e46: $63
    ld e, c                                       ; $4e47: $59
    push hl                                       ; $4e48: $e5
    jp nz, $d22a                                  ; $4e49: $c2 $2a $d2

    xor $c5                                       ; $4e4c: $ee $c5

Call_068_4e4e:
    adc h                                         ; $4e4e: $8c
    ei                                            ; $4e4f: $fb
    inc bc                                        ; $4e50: $03
    sub a                                         ; $4e51: $97
    res 4, [hl]                                   ; $4e52: $cb $a6
    ld e, a                                       ; $4e54: $5f
    sbc d                                         ; $4e55: $9a
    ld sp, $4363                                  ; $4e56: $31 $63 $43
    or a                                          ; $4e59: $b7
    cp e                                          ; $4e5a: $bb
    ld l, h                                       ; $4e5b: $6c
    db $ec                                        ; $4e5c: $ec
    ld a, [bc]                                    ; $4e5d: $0a
    cp e                                          ; $4e5e: $bb
    ld a, [de]                                    ; $4e5f: $1a
    add l                                         ; $4e60: $85
    or e                                          ; $4e61: $b3
    pop hl                                        ; $4e62: $e1
    inc bc                                        ; $4e63: $03
    db $db                                        ; $4e64: $db
    add h                                         ; $4e65: $84
    db $d3                                        ; $4e66: $d3
    adc h                                         ; $4e67: $8c
    sbc b                                         ; $4e68: $98
    and h                                         ; $4e69: $a4
    ld d, [hl]                                    ; $4e6a: $56
    ld [hl+], a                                   ; $4e6b: $22
    call z, $df7d                                 ; $4e6c: $cc $7d $df
    push hl                                       ; $4e6f: $e5
    sbc a                                         ; $4e70: $9f
    sbc h                                         ; $4e71: $9c
    and [hl]                                      ; $4e72: $a6
    inc e                                         ; $4e73: $1c
    ld a, [bc]                                    ; $4e74: $0a
    call $7d6b                                    ; $4e75: $cd $6b $7d
    pop af                                        ; $4e78: $f1
    sbc a                                         ; $4e79: $9f
    xor b                                         ; $4e7a: $a8
    rst $38                                       ; $4e7b: $ff
    ld b, e                                       ; $4e7c: $43
    call z, Call_068_7bb8                         ; $4e7d: $cc $b8 $7b
    add hl, de                                    ; $4e80: $19
    ld h, h                                       ; $4e81: $64
    sbc l                                         ; $4e82: $9d
    ld l, h                                       ; $4e83: $6c
    sbc d                                         ; $4e84: $9a
    swap h                                        ; $4e85: $cb $34
    or d                                          ; $4e87: $b2
    ccf                                           ; $4e88: $3f
    dec a                                         ; $4e89: $3d
    ld e, b                                       ; $4e8a: $58
    rst $08                                       ; $4e8b: $cf
    cp $23                                        ; $4e8c: $fe $23
    dec hl                                        ; $4e8e: $2b
    jp hl                                         ; $4e8f: $e9


    ld c, d                                       ; $4e90: $4a
    push af                                       ; $4e91: $f5
    pop af                                        ; $4e92: $f1
    rst $20                                       ; $4e93: $e7
    cp c                                          ; $4e94: $b9
    ccf                                           ; $4e95: $3f
    sub a                                         ; $4e96: $97
    ld b, c                                       ; $4e97: $41
    ld d, [hl]                                    ; $4e98: $56

jr_068_4e99:
    cp d                                          ; $4e99: $ba
    sub a                                         ; $4e9a: $97
    reti                                          ; $4e9b: $d9


    ld a, a                                       ; $4e9c: $7f
    sbc [hl]                                      ; $4e9d: $9e
    or d                                          ; $4e9e: $b2
    sub c                                         ; $4e9f: $91
    db $fd                                        ; $4ea0: $fd
    jp hl                                         ; $4ea1: $e9


    pop bc                                        ; $4ea2: $c1
    ld a, d                                       ; $4ea3: $7a
    or $1f                                        ; $4ea4: $f6 $1f
    ld e, c                                       ; $4ea6: $59
    ld c, c                                       ; $4ea7: $49
    ld d, a                                       ; $4ea8: $57
    xor d                                         ; $4ea9: $aa
    adc a                                         ; $4eaa: $8f
    ccf                                           ; $4eab: $3f
    rst $08                                       ; $4eac: $cf
    db $fd                                        ; $4ead: $fd
    ld bc, $4b97                                  ; $4eae: $01 $97 $4b
    ld [hl], $71                                  ; $4eb1: $36 $71

Jump_068_4eb3:
    sub $0b                                       ; $4eb3: $d6 $0b
    and a                                         ; $4eb5: $a7
    ld d, a                                       ; $4eb6: $57
    cp [hl]                                       ; $4eb7: $be
    ld [hl], h                                    ; $4eb8: $74
    ld a, [de]                                    ; $4eb9: $1a
    ld d, c                                       ; $4eba: $51
    db $10                                        ; $4ebb: $10
    sub [hl]                                      ; $4ebc: $96
    or b                                          ; $4ebd: $b0
    and c                                         ; $4ebe: $a1
    ld [c], a                                     ; $4ebf: $e2
    cpl                                           ; $4ec0: $2f
    ld b, $d6                                     ; $4ec1: $06 $d6
    inc bc                                        ; $4ec3: $03
    reti                                          ; $4ec4: $d9


    sub h                                         ; $4ec5: $94
    ld b, e                                       ; $4ec6: $43
    or c                                          ; $4ec7: $b1
    and b                                         ; $4ec8: $a0
    ld d, c                                       ; $4ec9: $51
    jr c, jr_068_4e99                             ; $4eca: $38 $cd

    ld e, b                                       ; $4ecc: $58
    and c                                         ; $4ecd: $a1

jr_068_4ece:
    ret                                           ; $4ece: $c9


    rst $20                                       ; $4ecf: $e7
    rst $28                                       ; $4ed0: $ef
    sbc [hl]                                      ; $4ed1: $9e
    and c                                         ; $4ed2: $a1
    ld l, b                                       ; $4ed3: $68
    ld b, b                                       ; $4ed4: $40
    ld e, c                                       ; $4ed5: $59
    and a                                         ; $4ed6: $a7
    or h                                          ; $4ed7: $b4
    dec c                                         ; $4ed8: $0d
    rra                                           ; $4ed9: $1f
    db $db                                        ; $4eda: $db
    sbc e                                         ; $4edb: $9b
    ld [hl], d                                    ; $4edc: $72
    xor b                                         ; $4edd: $a8
    sub a                                         ; $4ede: $97
    cp e                                          ; $4edf: $bb
    jr nz, jr_068_4f29                            ; $4ee0: $20 $47

    set 6, h                                      ; $4ee2: $cb $f4
    jr @+$39                                      ; $4ee4: $18 $37

    ld a, l                                       ; $4ee6: $7d
    db $db                                        ; $4ee7: $db
    cp e                                          ; $4ee8: $bb
    add l                                         ; $4ee9: $85
    ld l, c                                       ; $4eea: $69
    ld a, e                                       ; $4eeb: $7b
    and c                                         ; $4eec: $a1
    pop hl                                        ; $4eed: $e1
    xor c                                         ; $4eee: $a9
    and d                                         ; $4eef: $a2
    add hl, hl                                    ; $4ef0: $29
    add a                                         ; $4ef1: $87
    or d                                          ; $4ef2: $b2
    ld a, $82                                     ; $4ef3: $3e $82
    or c                                          ; $4ef5: $b1
    jr nc, jr_068_4ece                            ; $4ef6: $30 $d6

    or a                                          ; $4ef8: $b7
    ret                                           ; $4ef9: $c9


    ld c, b                                       ; $4efa: $48
    cp a                                          ; $4efb: $bf
    ret nz                                        ; $4efc: $c0

    ld a, [$5d63]                                 ; $4efd: $fa $63 $5d
    xor l                                         ; $4f00: $ad
    reti                                          ; $4f01: $d9


    dec de                                        ; $4f02: $1b
    xor l                                         ; $4f03: $ad
    ld l, a                                       ; $4f04: $6f
    db $e3                                        ; $4f05: $e3
    add l                                         ; $4f06: $85
    ld [$f418], a                                 ; $4f07: $ea $18 $f4
    xor $f6                                       ; $4f0a: $ee $f6
    xor $f0                                       ; $4f0c: $ee $f0
    ld l, l                                       ; $4f0e: $6d
    ld e, h                                       ; $4f0f: $5c
    ld l, [hl]                                    ; $4f10: $6e
    ret nz                                        ; $4f11: $c0

    ld a, [bc]                                    ; $4f12: $0a
    call Call_000_06b0                            ; $4f13: $cd $b0 $06
    inc a                                         ; $4f16: $3c
    pop bc                                        ; $4f17: $c1
    inc c                                         ; $4f18: $0c
    ld d, e                                       ; $4f19: $53
    ld d, [hl]                                    ; $4f1a: $56
    call c, $c324                                 ; $4f1b: $dc $24 $c3
    ld e, e                                       ; $4f1e: $5b
    sub d                                         ; $4f1f: $92
    ld l, h                                       ; $4f20: $6c
    sbc b                                         ; $4f21: $98
    sbc [hl]                                      ; $4f22: $9e
    ei                                            ; $4f23: $fb
    add sp, $19                                   ; $4f24: $e8 $19
    ld d, c                                       ; $4f26: $51
    and a                                         ; $4f27: $a7
    rst $20                                       ; $4f28: $e7

jr_068_4f29:
    dec l                                         ; $4f29: $2d
    cpl                                           ; $4f2a: $2f
    dec bc                                        ; $4f2b: $0b
    ld a, d                                       ; $4f2c: $7a
    cp a                                          ; $4f2d: $bf
    ret nz                                        ; $4f2e: $c0

    ld [hl+], a                                   ; $4f2f: $22
    cp $8c                                        ; $4f30: $fe $8c
    ld a, c                                       ; $4f32: $79
    ld e, h                                       ; $4f33: $5c
    xor c                                         ; $4f34: $a9
    db $fd                                        ; $4f35: $fd
    sub e                                         ; $4f36: $93
    ld e, h                                       ; $4f37: $5c
    ld b, c                                       ; $4f38: $41
    adc e                                         ; $4f39: $8b
    or d                                          ; $4f3a: $b2
    ld e, e                                       ; $4f3b: $5b
    rst $38                                       ; $4f3c: $ff
    di                                            ; $4f3d: $f3
    daa                                           ; $4f3e: $27
    ld [hl-], a                                   ; $4f3f: $32
    call Call_068_6965                            ; $4f40: $cd $65 $69
    ld [hl], $46                                  ; $4f43: $36 $46
    push af                                       ; $4f45: $f5
    cp [hl]                                       ; $4f46: $be
    or h                                          ; $4f47: $b4
    or e                                          ; $4f48: $b3
    ld [hl], c                                    ; $4f49: $71
    and l                                         ; $4f4a: $a5
    sub $c7                                       ; $4f4b: $d6 $c7
    ld a, d                                       ; $4f4d: $7a
    ld l, d                                       ; $4f4e: $6a
    inc bc                                        ; $4f4f: $03
    ld a, [hl+]                                   ; $4f50: $2a
    sbc b                                         ; $4f51: $98
    pop bc                                        ; $4f52: $c1
    or b                                          ; $4f53: $b0
    db $eb                                        ; $4f54: $eb
    ld l, [hl]                                    ; $4f55: $6e
    add d                                         ; $4f56: $82
    ld h, [hl]                                    ; $4f57: $66
    inc [hl]                                      ; $4f58: $34
    ld h, b                                       ; $4f59: $60
    add l                                         ; $4f5a: $85
    ld a, [hl+]                                   ; $4f5b: $2a
    xor h                                         ; $4f5c: $ac
    db $d3                                        ; $4f5d: $d3
    nop                                           ; $4f5e: $00
    and l                                         ; $4f5f: $a5
    rst $30                                       ; $4f60: $f7
    ld c, l                                       ; $4f61: $4d
    jp Jump_068_4774                              ; $4f62: $c3 $74 $47


    and h                                         ; $4f65: $a4
    adc a                                         ; $4f66: $8f
    cp e                                          ; $4f67: $bb
    adc c                                         ; $4f68: $89
    ld h, e                                       ; $4f69: $63
    ld a, l                                       ; $4f6a: $7d
    xor d                                         ; $4f6b: $aa
    inc hl                                        ; $4f6c: $23
    ld a, [hl+]                                   ; $4f6d: $2a
    inc [hl]                                      ; $4f6e: $34
    adc a                                         ; $4f6f: $8f
    xor e                                         ; $4f70: $ab
    add h                                         ; $4f71: $84
    jp z, $bb29                                   ; $4f72: $ca $29 $bb

    add d                                         ; $4f75: $82
    dec [hl]                                      ; $4f76: $35
    push hl                                       ; $4f77: $e5
    ret nc                                        ; $4f78: $d0

    inc c                                         ; $4f79: $0c
    add hl, sp                                    ; $4f7a: $39
    jp c, $fa80                                   ; $4f7b: $da $80 $fa

    ld b, $9f                                     ; $4f7e: $06 $9f
    ld b, [hl]                                    ; $4f80: $46
    xor e                                         ; $4f81: $ab
    sub e                                         ; $4f82: $93
    xor h                                         ; $4f83: $ac
    ccf                                           ; $4f84: $3f
    db $eb                                        ; $4f85: $eb
    add l                                         ; $4f86: $85
    ld [hl], e                                    ; $4f87: $73
    rst $18                                       ; $4f88: $df
    rst $30                                       ; $4f89: $f7
    rlca                                          ; $4f8a: $07
    add hl, bc                                    ; $4f8b: $09
    push af                                       ; $4f8c: $f5
    ld l, c                                       ; $4f8d: $69
    ld l, h                                       ; $4f8e: $6c
    jp z, $0aa1                                   ; $4f8f: $ca $a1 $0a

    ld e, e                                       ; $4f92: $5b
    and c                                         ; $4f93: $a1
    ld c, a                                       ; $4f94: $4f
    ld [hl], l                                    ; $4f95: $75
    ld [hl], $7d                                  ; $4f96: $36 $7d
    db $db                                        ; $4f98: $db
    add h                                         ; $4f99: $84
    ld d, e                                       ; $4f9a: $53
    push bc                                       ; $4f9b: $c5
    cp e                                          ; $4f9c: $bb
    ld a, e                                       ; $4f9d: $7b
    add hl, de                                    ; $4f9e: $19
    sub a                                         ; $4f9f: $97
    dec d                                         ; $4fa0: $15
    halt                                          ; $4fa1: $76
    sub l                                         ; $4fa2: $95
    push af                                       ; $4fa3: $f5
    ld h, a                                       ; $4fa4: $67
    cp l                                          ; $4fa5: $bd
    ld [hl], b                                    ; $4fa6: $70
    ld [$64db], a                                 ; $4fa7: $ea $db $64
    ld [$c360], sp                                ; $4faa: $08 $60 $c3
    call nc, $e93b                                ; $4fad: $d4 $3b $e9
    cp c                                          ; $4fb0: $b9
    ld a, e                                       ; $4fb1: $7b
    add hl, de                                    ; $4fb2: $19
    db $e4                                        ; $4fb3: $e4
    ld l, b                                       ; $4fb4: $68
    inc bc                                        ; $4fb5: $03
    ld a, [de]                                    ; $4fb6: $1a
    and b                                         ; $4fb7: $a0
    rst $38                                       ; $4fb8: $ff
    ld a, b                                       ; $4fb9: $78
    db $ec                                        ; $4fba: $ec
    reti                                          ; $4fbb: $d9


    db $fd                                        ; $4fbc: $fd
    ld bc, $f5e2                                  ; $4fbd: $01 $e2 $f5
    ld h, a                                       ; $4fc0: $67
    cp l                                          ; $4fc1: $bd
    ld [hl], b                                    ; $4fc2: $70
    xor d                                         ; $4fc3: $aa
    cp e                                          ; $4fc4: $bb
    rst $30                                       ; $4fc5: $f7
    ld c, a                                       ; $4fc6: $4f
    ld [hl+], a                                   ; $4fc7: $22
    call Call_000_34fa                            ; $4fc8: $cd $fa $34
    ld [hl], $bf                                  ; $4fcb: $36 $bf
    cp e                                          ; $4fcd: $bb
    ld d, a                                       ; $4fce: $57
    ldh a, [$9d]                                  ; $4fcf: $f0 $9d
    ld e, [hl]                                    ; $4fd1: $5e
    cp b                                          ; $4fd2: $b8
    xor [hl]                                      ; $4fd3: $ae
    add $35                                       ; $4fd4: $c6 $35
    dec de                                        ; $4fd6: $1b
    inc sp                                        ; $4fd7: $33
    xor l                                         ; $4fd8: $ad
    ld h, c                                       ; $4fd9: $61
    ld a, d                                       ; $4fda: $7a
    jp hl                                         ; $4fdb: $e9


    call nz, $1ea2                                ; $4fdc: $c4 $a2 $1e
    and a                                         ; $4fdf: $a7
    ccf                                           ; $4fe0: $3f
    xor l                                         ; $4fe1: $ad
    inc d                                         ; $4fe2: $14
    ldh [rSC], a                                  ; $4fe3: $e0 $02
    rst $28                                       ; $4fe5: $ef
    or $9c                                        ; $4fe6: $f6 $9c
    ld h, c                                       ; $4fe8: $61
    ld [hl], l                                    ; $4fe9: $75
    inc l                                         ; $4fea: $2c
    ld b, e                                       ; $4feb: $43
    call nc, $342d                                ; $4fec: $d4 $2d $34
    db $db                                        ; $4fef: $db
    ld a, c                                       ; $4ff0: $79
    rst $18                                       ; $4ff1: $df
    rst $30                                       ; $4ff2: $f7
    ld a, [hl-]                                   ; $4ff3: $3a
    xor l                                         ; $4ff4: $ad
    sub e                                         ; $4ff5: $93
    ld c, l                                       ; $4ff6: $4d
    dec de                                        ; $4ff7: $1b
    ld h, e                                       ; $4ff8: $63

jr_068_4ff9:
    ld b, b                                       ; $4ff9: $40
    cp l                                          ; $4ffa: $bd
    ld a, b                                       ; $4ffb: $78
    ld sp, hl                                     ; $4ffc: $f9
    db $fd                                        ; $4ffd: $fd
    ld a, b                                       ; $4ffe: $78
    ld [hl], $f7                                  ; $4fff: $36 $f7
    rlca                                          ; $5001: $07
    db $db                                        ; $5002: $db
    add h                                         ; $5003: $84
    ld d, e                                       ; $5004: $53
    xor a                                         ; $5005: $af
    adc e                                         ; $5006: $8b
    rst $38                                       ; $5007: $ff
    sbc e                                         ; $5008: $9b
    jr c, jr_068_4ff9                             ; $5009: $38 $ee

    ld l, [hl]                                    ; $500b: $6e
    or a                                          ; $500c: $b7
    daa                                           ; $500d: $27
    ld b, l                                       ; $500e: $45
    adc l                                         ; $500f: $8d
    jp nz, Jump_068_7511                          ; $5010: $c2 $11 $75

    dec [hl]                                      ; $5013: $35
    xor [hl]                                      ; $5014: $ae
    add hl, de                                    ; $5015: $19
    sub $80                                       ; $5016: $d6 $80
    cp $23                                        ; $5018: $fe $23
    or c                                          ; $501a: $b1
    sbc [hl]                                      ; $501b: $9e
    sub $30                                       ; $501c: $d6 $30
    push af                                       ; $501e: $f5
    db $ed                                        ; $501f: $ed
    push bc                                       ; $5020: $c5
    ld a, a                                       ; $5021: $7f
    scf                                           ; $5022: $37
    rst $38                                       ; $5023: $ff
    call $0f86                                    ; $5024: $cd $86 $0f
    add hl, bc                                    ; $5027: $09
    ld [$b8c3], a                                 ; $5028: $ea $c3 $b8
    ld h, d                                       ; $502b: $62
    ld d, e                                       ; $502c: $53
    ld c, $fd                                     ; $502d: $0e $fd
    daa                                           ; $502f: $27
    ld a, [hl+]                                   ; $5030: $2a
    jp nc, $a9ee                                  ; $5031: $d2 $ee $a9

    ld b, d                                       ; $5034: $42
    adc e                                         ; $5035: $8b
    ld hl, sp+$4f                                 ; $5036: $f8 $4f
    call z, Call_000_2b46                         ; $5038: $cc $46 $2b
    inc [hl]                                      ; $503b: $34
    and e                                         ; $503c: $a3
    adc e                                         ; $503d: $8b
    ld c, e                                       ; $503e: $4b
    db $d3                                        ; $503f: $d3
    ld b, h                                       ; $5040: $44
    ld c, l                                       ; $5041: $4d
    sbc h                                         ; $5042: $9c
    sbc h                                         ; $5043: $9c
    ld h, c                                       ; $5044: $61
    rst $30                                       ; $5045: $f7
    rlca                                          ; $5046: $07
    adc c                                         ; $5047: $89
    adc b                                         ; $5048: $88
    adc d                                         ; $5049: $8a
    rst $10                                       ; $504a: $d7
    sub h                                         ; $504b: $94
    ld b, e                                       ; $504c: $43
    cp l                                          ; $504d: $bd
    and e                                         ; $504e: $a3
    adc d                                         ; $504f: $8a
    ld c, [hl]                                    ; $5050: $4e
    ld [hl], a                                    ; $5051: $77
    ld b, h                                       ; $5052: $44
    ld a, [$bbb8]                                 ; $5053: $fa $b8 $bb
    inc bc                                        ; $5056: $03
    jp nc, $d437                                  ; $5057: $d2 $37 $d4

    and a                                         ; $505a: $a7
    pop hl                                        ; $505b: $e1
    add a                                         ; $505c: $87
    db $eb                                        ; $505d: $eb
    add h                                         ; $505e: $84
    ld b, a                                       ; $505f: $47
    db $db                                        ; $5060: $db
    jr z, jr_068_50d4                             ; $5061: $28 $71

    ld a, a                                       ; $5063: $7f
    add hl, bc                                    ; $5064: $09
    sbc l                                         ; $5065: $9d
    add b                                         ; $5066: $80
    rst $00                                       ; $5067: $c7
    cp e                                          ; $5068: $bb
    sub a                                         ; $5069: $97

Jump_068_506a:
    ld d, c                                       ; $506a: $51
    ld a, d                                       ; $506b: $7a
    sub $c9                                       ; $506c: $d6 $c9
    ld c, [hl]                                    ; $506e: $4e
    ld a, b                                       ; $506f: $78
    ld e, h                                       ; $5070: $5c
    or c                                          ; $5071: $b1
    db $d3                                        ; $5072: $d3
    inc c                                         ; $5073: $0c
    ld d, a                                       ; $5074: $57
    sbc a                                         ; $5075: $9f
    xor a                                         ; $5076: $af
    sub c                                         ; $5077: $91
    push hl                                       ; $5078: $e5
    sub d                                         ; $5079: $92
    sbc l                                         ; $507a: $9d
    or c                                          ; $507b: $b1
    sub b                                         ; $507c: $90
    ld c, l                                       ; $507d: $4d
    add hl, sp                                    ; $507e: $39
    sub h                                         ; $507f: $94
    ld sp, $4570                                  ; $5080: $31 $70 $45
    reti                                          ; $5083: $d9


    pop de                                        ; $5084: $d1
    add [hl]                                      ; $5085: $86
    ld a, c                                       ; $5086: $79
    ld e, d                                       ; $5087: $5a
    ret z                                         ; $5088: $c8

    ld l, [hl]                                    ; $5089: $6e
    sbc c                                         ; $508a: $99
    or h                                          ; $508b: $b4
    jr nz, jr_068_50e8                            ; $508c: $20 $5a

    sub $fb                                       ; $508e: $d6 $fb
    inc bc                                        ; $5090: $03
    add hl, bc                                    ; $5091: $09
    xor [hl]                                      ; $5092: $ae
    xor e                                         ; $5093: $ab
    or a                                          ; $5094: $b7
    ld [hl], c                                    ; $5095: $71
    ld a, [$ec8f]                                 ; $5096: $fa $8f $ec
    ld [hl], h                                    ; $5099: $74
    ld b, a                                       ; $509a: $47
    and h                                         ; $509b: $a4
    adc a                                         ; $509c: $8f
    cp e                                          ; $509d: $bb
    dec sp                                        ; $509e: $3b
    ld d, b                                       ; $509f: $50
    inc l                                         ; $50a0: $2c
    ld l, b                                       ; $50a1: $68
    inc d                                         ; $50a2: $14
    ld c, [hl]                                    ; $50a3: $4e
    add hl, de                                    ; $50a4: $19
    inc bc                                        ; $50a5: $03
    ld d, a                                       ; $50a6: $57
    inc l                                         ; $50a7: $2c
    or e                                          ; $50a8: $b3
    xor l                                         ; $50a9: $ad
    ld l, c                                       ; $50aa: $69
    inc bc                                        ; $50ab: $03
    ld a, [hl+]                                   ; $50ac: $2a
    sbc a                                         ; $50ad: $9f
    cp h                                          ; $50ae: $bc
    rst $28                                       ; $50af: $ef
    cp e                                          ; $50b0: $bb
    ld bc, $c7ab                                  ; $50b1: $01 $ab $c7
    ld [hl-], a                                   ; $50b4: $32
    ld b, $5a                                     ; $50b5: $06 $5a
    sbc c                                         ; $50b7: $99
    ld l, l                                       ; $50b8: $6d
    ld c, l                                       ; $50b9: $4d
    dec de                                        ; $50ba: $1b
    ld d, b                                       ; $50bb: $50
    ld a, l                                       ; $50bc: $7d
    dec de                                        ; $50bd: $1b
    ld a, $09                                     ; $50be: $3e $09
    ld h, l                                       ; $50c0: $65
    inc c                                         ; $50c1: $0c
    ld e, h                                       ; $50c2: $5c
    pop af                                        ; $50c3: $f1
    ld l, [hl]                                    ; $50c4: $6e
    ld [hl+], a                                   ; $50c5: $22
    ld [hl+], a                                   ; $50c6: $22
    dec sp                                        ; $50c7: $3b
    dec a                                         ; $50c8: $3d
    ld l, a                                       ; $50c9: $6f
    ld [hl], c                                    ; $50ca: $71
    ld e, [hl]                                    ; $50cb: $5e
    rst $28                                       ; $50cc: $ef
    adc $46                                       ; $50cd: $ce $46
    pop hl                                        ; $50cf: $e1
    ld [hl], h                                    ; $50d0: $74
    ld c, c                                       ; $50d1: $49
    and d                                         ; $50d2: $a2
    add hl, de                                    ; $50d3: $19

jr_068_50d4:
    ld d, [hl]                                    ; $50d4: $56
    sbc d                                         ; $50d5: $9a
    ld sp, $0cfe                                  ; $50d6: $31 $fe $0c
    ld d, e                                       ; $50d9: $53
    sub $87                                       ; $50da: $d6 $87
    ld b, l                                       ; $50dc: $45
    ld [hl], $b0                                  ; $50dd: $36 $b0
    cp [hl]                                       ; $50df: $be
    dec a                                         ; $50e0: $3d
    adc c                                         ; $50e1: $89
    ld h, a                                       ; $50e2: $67
    db $ec                                        ; $50e3: $ec
    ld a, [bc]                                    ; $50e4: $0a
    cp e                                          ; $50e5: $bb
    sbc d                                         ; $50e6: $9a
    ld [hl], d                                    ; $50e7: $72

jr_068_50e8:
    jr z, jr_068_5100                             ; $50e8: $28 $16

    ld d, h                                       ; $50ea: $54
    and d                                         ; $50eb: $a2
    db $f4                                        ; $50ec: $f4
    add hl, de                                    ; $50ed: $19
    sub e                                         ; $50ee: $93
    db $e3                                        ; $50ef: $e3
    xor $0f                                       ; $50f0: $ee $0f
    ld e, e                                       ; $50f2: $5b
    xor c                                         ; $50f3: $a9
    ld d, l                                       ; $50f4: $55
    inc d                                         ; $50f5: $14
    dec bc                                        ; $50f6: $0b
    ld a, [de]                                    ; $50f7: $1a
    add l                                         ; $50f8: $85
    db $d3                                        ; $50f9: $d3
    add hl, hl                                    ; $50fa: $29
    dec h                                         ; $50fb: $25
    cp b                                          ; $50fc: $b8
    ld a, [hl]                                    ; $50fd: $7e
    sbc h                                         ; $50fe: $9c
    xor b                                         ; $50ff: $a8

jr_068_5100:
    add hl, hl                                    ; $5100: $29
    rlca                                          ; $5101: $07
    reti                                          ; $5102: $d9


    xor c                                         ; $5103: $a9
    rla                                           ; $5104: $17
    cp e                                          ; $5105: $bb
    ld [hl], $7d                                  ; $5106: $36 $7d
    db $db                                        ; $5108: $db
    dec hl                                        ; $5109: $2b
    pop hl                                        ; $510a: $e1
    ld a, [hl+]                                   ; $510b: $2a
    and c                                         ; $510c: $a1
    reti                                          ; $510d: $d9


    ld [hl], b                                    ; $510e: $70
    scf                                           ; $510f: $37
    ld h, c                                       ; $5110: $61
    ld b, c                                       ; $5111: $41
    rst $30                                       ; $5112: $f7
    rst $10                                       ; $5113: $d7
    xor [hl]                                      ; $5114: $ae
    or b                                          ; $5115: $b0
    dec bc                                        ; $5116: $0b
    jp c, $d90c                                   ; $5117: $da $0c $d9

    add b                                         ; $511a: $80
    ld c, d                                       ; $511b: $4a
    sub h                                         ; $511c: $94
    ld [de], a                                    ; $511d: $12
    ld e, h                                       ; $511e: $5c
    ld c, a                                       ; $511f: $4f
    cp e                                          ; $5120: $bb
    ld a, e                                       ; $5121: $7b
    ld b, [hl]                                    ; $5122: $46
    or e                                          ; $5123: $b3
    ld [hl], b                                    ; $5124: $70
    ld [$cb1d], a                                 ; $5125: $ea $1d $cb
    jr z, jr_068_5134                             ; $5128: $28 $0a

    ld d, a                                       ; $512a: $57
    dec e                                         ; $512b: $1d
    ld d, a                                       ; $512c: $57
    daa                                           ; $512d: $27
    db $eb                                        ; $512e: $eb
    dec [hl]                                      ; $512f: $35
    cp $73                                        ; $5130: $fe $73
    rst $18                                       ; $5132: $df

Jump_068_5133:
    rst $30                                       ; $5133: $f7

jr_068_5134:
    rlca                                          ; $5134: $07
    add hl, bc                                    ; $5135: $09
    sbc d                                         ; $5136: $9a
    cp c                                          ; $5137: $b9
    ld h, d                                       ; $5138: $62
    sbc c                                         ; $5139: $99
    ld [hl], d                                    ; $513a: $72
    ld c, a                                       ; $513b: $4f
    ld d, h                                       ; $513c: $54
    ret z                                         ; $513d: $c8

    ld l, [hl]                                    ; $513e: $6e
    sbc c                                         ; $513f: $99
    or h                                          ; $5140: $b4
    jr nz, jr_068_519d                            ; $5141: $20 $5a

    ld d, [hl]                                    ; $5143: $56

jr_068_5144:
    ld d, c                                       ; $5144: $51
    rst $38                                       ; $5145: $ff
    adc c                                         ; $5146: $89
    ld a, [$b3d2]                                 ; $5147: $fa $d2 $b3
    ld l, c                                       ; $514a: $69
    jp Jump_000_0907                              ; $514b: $c3 $07 $09


    dec bc                                        ; $514e: $0b
    ld a, [bc]                                    ; $514f: $0a
    call $556b                                    ; $5150: $cd $6b $55
    ld c, b                                       ; $5153: $48
    rst $18                                       ; $5154: $df
    ret nc                                        ; $5155: $d0

    ld a, a                                       ; $5156: $7f
    db $e4                                        ; $5157: $e4
    ld c, e                                       ; $5158: $4b
    rst $08                                       ; $5159: $cf
    db $fd                                        ; $515a: $fd
    ld bc, $6867                                  ; $515b: $01 $67 $68
    inc bc                                        ; $515e: $03
    inc h                                         ; $515f: $24
    push af                                       ; $5160: $f5
    ld sp, $3d4c                                  ; $5161: $31 $4c $3d
    ld c, a                                       ; $5164: $4f
    dec a                                         ; $5165: $3d
    ld l, a                                       ; $5166: $6f
    ld c, c                                       ; $5167: $49
    ld c, [hl]                                    ; $5168: $4e
    add $b3                                       ; $5169: $c6 $b3
    ld de, $7135                                  ; $516b: $11 $35 $71
    ld [hl], d                                    ; $516e: $72
    add [hl]                                      ; $516f: $86
    db $dd                                        ; $5170: $dd
    cp l                                          ; $5171: $bd
    ld [hl], b                                    ; $5172: $70
    xor l                                         ; $5173: $ad
    reti                                          ; $5174: $d9


    sbc b                                         ; $5175: $98
    and a                                         ; $5176: $a7
    ld bc, $afcd                                  ; $5177: $01 $cd $af
    ld bc, $3cfe                                  ; $517a: $01 $fe $3c
    ld l, l                                       ; $517d: $6d
    ld b, b                                       ; $517e: $40
    ld hl, $f298                                  ; $517f: $21 $98 $f2
    ld b, l                                       ; $5182: $45
    ld e, d                                       ; $5183: $5a
    and c                                         ; $5184: $a1
    add hl, de                                    ; $5185: $19
    add l                                         ; $5186: $85
    ld a, [$9258]                                 ; $5187: $fa $58 $92
    db $d3                                        ; $518a: $d3
    inc l                                         ; $518b: $2c

Jump_068_518c:
    sbc h                                         ; $518c: $9c
    cp [hl]                                       ; $518d: $be
    sbc b                                         ; $518e: $98
    ld h, c                                       ; $518f: $61
    ld d, b                                       ; $5190: $50
    ld h, l                                       ; $5191: $65
    call z, Call_000_2bb8                         ; $5192: $cc $b8 $2b
    cp $27                                        ; $5195: $fe $27
    and a                                         ; $5197: $a7
    add hl, hl                                    ; $5198: $29
    add a                                         ; $5199: $87
    ld b, d                                       ; $519a: $42
    di                                            ; $519b: $f3
    ld e, d                                       ; $519c: $5a

jr_068_519d:
    sbc c                                         ; $519d: $99
    ld [hl], d                                    ; $519e: $72
    xor a                                         ; $519f: $af
    db $ec                                        ; $51a0: $ec
    sbc a                                         ; $51a1: $9f
    db $e4                                        ; $51a2: $e4
    ld a, [bc]                                    ; $51a3: $0a
    push af                                       ; $51a4: $f5
    ld l, c                                       ; $51a5: $69
    inc l                                         ; $51a6: $2c
    ld [c], a                                     ; $51a7: $e2
    ccf                                           ; $51a8: $3f
    ld sp, $ad1b                                  ; $51a9: $31 $1b $ad
    ld l, h                                       ; $51ac: $6c
    ld [hl+], a                                   ; $51ad: $22
    add d                                         ; $51ae: $82
    pop af                                        ; $51af: $f1
    cp $00                                        ; $51b0: $fe $00
    ld d, a                                       ; $51b2: $57
    ld b, b                                       ; $51b3: $40
    ret nz                                        ; $51b4: $c0

    sub h                                         ; $51b5: $94
    ld c, l                                       ; $51b6: $4d
    ld b, h                                       ; $51b7: $44
    jr nc, jr_068_5144                            ; $51b8: $30 $8a

    ld a, [hl+]                                   ; $51ba: $2a
    xor c                                         ; $51bb: $a9
    adc l                                         ; $51bc: $8d
    jp nz, Jump_000_3fe9                          ; $51bd: $c2 $e9 $3f

    jp nc, Jump_000_2037                          ; $51c0: $d2 $37 $20

    add [hl]                                      ; $51c3: $86
    cp c                                          ; $51c4: $b9
    sbc e                                         ; $51c5: $9b
    and b                                         ; $51c6: $a0
    sbc c                                         ; $51c7: $99
    or [hl]                                       ; $51c8: $b6
    sub $80                                       ; $51c9: $d6 $80
    sbc b                                         ; $51cb: $98
    ld l, l                                       ; $51cc: $6d
    ld a, [de]                                    ; $51cd: $1a
    and [hl]                                      ; $51ce: $a6
    add hl, bc                                    ; $51cf: $09
    ld [$4963], a                                 ; $51d0: $ea $63 $49
    adc $a6                                       ; $51d3: $ce $a6
    ld l, [hl]                                    ; $51d5: $6e
    ld e, $39                                     ; $51d6: $1e $39
    push af                                       ; $51d8: $f5
    cp d                                          ; $51d9: $ba
    ld hl, sp-$41                                 ; $51da: $f8 $bf
    adc c                                         ; $51dc: $89
    call c, $7154                                 ; $51dd: $dc $54 $71
    ld bc, $602e                                  ; $51e0: $01 $2e $60
    and e                                         ; $51e3: $a3
    add h                                         ; $51e4: $84
    xor b                                         ; $51e5: $a8
    ld e, e                                       ; $51e6: $5b
    and c                                         ; $51e7: $a1
    reti                                          ; $51e8: $d9


    or b                                          ; $51e9: $b0
    pop hl                                        ; $51ea: $e1
    inc bc                                        ; $51eb: $03
    sub a                                         ; $51ec: $97
    rst $28                                       ; $51ed: $ef
    db $10                                        ; $51ee: $10
    rst $28                                       ; $51ef: $ef
    or $5e                                        ; $51f0: $f6 $5e
    ld a, [hl+]                                   ; $51f2: $2a
    sbc [hl]                                      ; $51f3: $9e
    jr z, @+$80                                   ; $51f4: $28 $7e

    call Call_000_01fd                            ; $51f6: $cd $fd $01
    dec sp                                        ; $51f9: $3b
    sbc [hl]                                      ; $51fa: $9e
    cp h                                          ; $51fb: $bc
    rst $28                                       ; $51fc: $ef
    cp e                                          ; $51fd: $bb
    adc h                                         ; $51fe: $8c
    add c                                         ; $51ff: $81
    db $fd                                        ; $5200: $fd
    rst $10                                       ; $5201: $d7
    ld b, h                                       ; $5202: $44
    dec [hl]                                      ; $5203: $35
    ld a, [$f5dc]                                 ; $5204: $fa $dc $f5
    ld h, d                                       ; $5207: $62
    ld [hl], d                                    ; $5208: $72
    ld b, h                                       ; $5209: $44
    ld b, l                                       ; $520a: $45
    jp $b5db                                      ; $520b: $c3 $db $b5


    ld d, c                                       ; $520e: $51
    and d                                         ; $520f: $a2
    db $d3                                        ; $5210: $d3
    sub h                                         ; $5211: $94
    ld b, e                                       ; $5212: $43
    ld d, a                                       ; $5213: $57
    rlca                                          ; $5214: $07
    ld [$01fd], a                                 ; $5215: $ea $fd $01
    ld h, a                                       ; $5218: $67
    ld [hl], h                                    ; $5219: $74
    dec b                                         ; $521a: $05
    dec bc                                        ; $521b: $0b
    inc c                                         ; $521c: $0c
    cp b                                          ; $521d: $b8
    rst $28                                       ; $521e: $ef
    cp e                                          ; $521f: $bb
    ld [hl], c                                    ; $5220: $71
    ld a, [hl+]                                   ; $5221: $2a
    pop hl                                        ; $5222: $e1
    ld [$4599], a                                 ; $5223: $ea $99 $45
    rst $20                                       ; $5226: $e7
    cp [hl]                                       ; $5227: $be
    rst $28                                       ; $5228: $ef
    ld [$c2b8], a                                 ; $5229: $ea $b8 $c2
    dec [hl]                                      ; $522c: $35
    push hl                                       ; $522d: $e5
    ld d, b                                       ; $522e: $50
    ld [hl], $23                                  ; $522f: $36 $23
    ld h, $e7                                     ; $5231: $26 $e7
    cp [hl]                                       ; $5233: $be
    rst $28                                       ; $5234: $ef
    rrca                                          ; $5235: $0f
    db $db                                        ; $5236: $db
    sbc e                                         ; $5237: $9b
    ld [hl], d                                    ; $5238: $72
    rlca                                          ; $5239: $07
    ld l, [hl]                                    ; $523a: $6e
    ld a, [$5700]                                 ; $523b: $fa $00 $57
    ld b, b                                       ; $523e: $40
    ret nz                                        ; $523f: $c0

    ld l, h                                       ; $5240: $6c
    sub h                                         ; $5241: $94
    add sp, $3f                                   ; $5242: $e8 $3f
    or d                                          ; $5244: $b2
    ld l, h                                       ; $5245: $6c
    and $7a                                       ; $5246: $e6 $7a
    ld [hl], $a0                                  ; $5248: $36 $a0
    sub a                                         ; $524a: $97
    cp b                                          ; $524b: $b8
    rla                                           ; $524c: $17
    jp nz, Jump_068_7fcb                          ; $524d: $c2 $cb $7f

    ld a, [c]                                     ; $5250: $f2
    cp $00                                        ; $5251: $fe $00
    add hl, bc                                    ; $5253: $09
    rla                                           ; $5254: $17
    daa                                           ; $5255: $27
    ld [hl], h                                    ; $5256: $74
    ld l, e                                       ; $5257: $6b
    jp nz, $cbb6                                  ; $5258: $c2 $b6 $cb

    ld [de], a                                    ; $525b: $12
    xor $5e                                       ; $525c: $ee $5e
    sub [hl]                                      ; $525e: $96
    or b                                          ; $525f: $b0
    or l                                          ; $5260: $b5
    ld [c], a                                     ; $5261: $e2
    ld c, l                                       ; $5262: $4d
    ld c, h                                       ; $5263: $4c
    jr c, @-$07                                   ; $5264: $38 $f7

    ld d, d                                       ; $5266: $52
    pop af                                        ; $5267: $f1
    ld l, [hl]                                    ; $5268: $6e
    db $db                                        ; $5269: $db
    sbc $73                                       ; $526a: $de $73
    or [hl]                                       ; $526c: $b6
    ld e, a                                       ; $526d: $5f
    cp h                                          ; $526e: $bc
    ld h, e                                       ; $526f: $63
    ei                                            ; $5270: $fb
    db $fd                                        ; $5271: $fd
    ld bc, $ec57                                  ; $5272: $01 $57 $ec
    or a                                          ; $5275: $b7
    and e                                         ; $5276: $a3
    db $db                                        ; $5277: $db
    ld a, e                                       ; $5278: $7b
    ret                                           ; $5279: $c9


    push hl                                       ; $527a: $e5
    add hl, bc                                    ; $527b: $09
    db $dd                                        ; $527c: $dd
    sbc d                                         ; $527d: $9a
    ret nc                                        ; $527e: $d0

    res 6, [hl]                                   ; $527f: $cb $b6
    ld e, a                                       ; $5281: $5f
    cp d                                          ; $5282: $ba
    dec l                                         ; $5283: $2d
    pop hl                                        ; $5284: $e1
    add d                                         ; $5285: $82
    ld c, l                                       ; $5286: $4d
    db $dd                                        ; $5287: $dd
    or [hl]                                       ; $5288: $b6
    rst $08                                       ; $5289: $cf
    or $5e                                        ; $528a: $f6 $5e
    sub [hl]                                      ; $528c: $96
    or b                                          ; $528d: $b0
    ld l, l                                       ; $528e: $6d
    set 6, [hl]                                   ; $528f: $cb $f6
    xor $b8                                       ; $5291: $ee $b8
    db $fc                                        ; $5293: $fc
    sbc h                                         ; $5294: $9c
    dec e                                         ; $5295: $1d
    sub a                                         ; $5296: $97
    db $ed                                        ; $5297: $ed
    cp e                                          ; $5298: $bb
    ld l, l                                       ; $5299: $6d
    di                                            ; $529a: $f3
    dec b                                         ; $529b: $05
    ld [c], a                                     ; $529c: $e2
    db $dd                                        ; $529d: $dd
    sub c                                         ; $529e: $91
    ret nc                                        ; $529f: $d0

    ld l, l                                       ; $52a0: $6d
    ei                                            ; $52a1: $fb
    ld l, h                                       ; $52a2: $6c
    ld l, a                                       ; $52a3: $6f
    and d                                         ; $52a4: $a2
    ld hl, sp-$5b                                 ; $52a5: $f8 $a5
    sub a                                         ; $52a7: $97
    ld e, l                                       ; $52a8: $5d
    ld [hl], b                                    ; $52a9: $70
    pop af                                        ; $52aa: $f1
    ld d, $f1                                     ; $52ab: $16 $f1
    ld c, e                                       ; $52ad: $4b
    cp e                                          ; $52ae: $bb
    cp l                                          ; $52af: $bd
    sbc e                                         ; $52b0: $9b
    or a                                          ; $52b1: $b7
    ld e, a                                       ; $52b2: $5f
    sbc d                                         ; $52b3: $9a
    cp b                                          ; $52b4: $b8
    cp l                                          ; $52b5: $bd
    sbc e                                         ; $52b6: $9b
    or a                                          ; $52b7: $b7
    ld l, a                                       ; $52b8: $6f
    db $ed                                        ; $52b9: $ed
    or $cb                                        ; $52ba: $f6 $cb
    cpl                                           ; $52bc: $2f
    cp e                                          ; $52bd: $bb
    ld d, h                                       ; $52be: $54
    cp h                                          ; $52bf: $bc
    adc c                                         ; $52c0: $89
    add hl, bc                                    ; $52c1: $09
    dec sp                                        ; $52c2: $3b
    halt                                          ; $52c3: $76
    ld l, h                                       ; $52c4: $6c
    rla                                           ; $52c5: $17
    cp a                                          ; $52c6: $bf
    cp e                                          ; $52c7: $bb
    ld d, l                                       ; $52c8: $55
    ld a, h                                       ; $52c9: $7c
    ld b, a                                       ; $52ca: $47
    cpl                                           ; $52cb: $2f
    cp c                                          ; $52cc: $b9
    ld e, h                                       ; $52cd: $5c
    ld a, h                                       ; $52ce: $7c
    db $db                                        ; $52cf: $db
    cp c                                          ; $52d0: $b9
    db $db                                        ; $52d1: $db
    ld a, e                                       ; $52d2: $7b
    sbc $05                                       ; $52d3: $de $05
    rst $10                                       ; $52d5: $d7
    inc h                                         ; $52d6: $24
    ld e, h                                       ; $52d7: $5c
    jp c, $4ded                                   ; $52d8: $da $ed $4d

    cp b                                          ; $52db: $b8
    ld hl, sp-$7e                                 ; $52dc: $f8 $82
    xor e                                         ; $52de: $ab
    ld l, $b8                                     ; $52df: $2e $b8
    or h                                          ; $52e1: $b4
    rst $20                                       ; $52e2: $e7
    adc d                                         ; $52e3: $8a
    rst $30                                       ; $52e4: $f7
    adc d                                         ; $52e5: $8a
    dec bc                                        ; $52e6: $0b
    adc $15                                       ; $52e7: $ce $15
    rla                                           ; $52e9: $17
    ld [hl], l                                    ; $52ea: $75
    di                                            ; $52eb: $f3
    and l                                         ; $52ec: $a5
    rla                                           ; $52ed: $17
    adc b                                         ; $52ee: $88
    ld e, a                                       ; $52ef: $5f
    sbc d                                         ; $52f0: $9a
    ld [hl], b                                    ; $52f1: $70
    ld b, c                                       ; $52f2: $41
    cpl                                           ; $52f3: $2f

Jump_068_52f4:
    rst $18                                       ; $52f4: $df
    jp c, $dbcd                                   ; $52f5: $da $cd $db

    cpl                                           ; $52f8: $2f
    ld c, l                                       ; $52f9: $4d
    call c, Call_068_6dde                         ; $52fa: $dc $de $6d
    db $db                                        ; $52fd: $db
    xor a                                         ; $52fe: $af
    ret c                                         ; $52ff: $d8

    sbc $44                                       ; $5300: $de $44
    pop af                                        ; $5302: $f1
    ld c, e                                       ; $5303: $4b
    push bc                                       ; $5304: $c5
    cp e                                          ; $5305: $bb
    push af                                       ; $5306: $f5
    add d                                         ; $5307: $82
    xor l                                         ; $5308: $ad
    ld [hl], a                                    ; $5309: $77
    rst $08                                       ; $530a: $cf
    dec a                                         ; $530b: $3d
    ld [hl], h                                    ; $530c: $74
    db $e3                                        ; $530d: $e3
    sub $84                                       ; $530e: $d6 $84
    adc d                                         ; $5310: $8a
    scf                                           ; $5311: $37
    ld sp, $dce1                                  ; $5312: $31 $e1 $dc
    ld c, e                                       ; $5315: $4b
    push bc                                       ; $5316: $c5
    cp e                                          ; $5317: $bb
    db $fd                                        ; $5318: $fd
    ld a, [c]                                     ; $5319: $f2
    ld l, [hl]                                    ; $531a: $6e
    db $dd                                        ; $531b: $dd
    ld a, [hl]                                    ; $531c: $7e
    jp hl                                         ; $531d: $e9


    and l                                         ; $531e: $a5
    add hl, bc                                    ; $531f: $09

jr_068_5320:
    db $dd                                        ; $5320: $dd

Jump_068_5321:
    cp h                                          ; $5321: $bc
    ld a, l                                       ; $5322: $7d
    db $eb                                        ; $5323: $eb
    or $6e                                        ; $5324: $f6 $6e
    rst $18                                       ; $5326: $df
    pop de                                        ; $5327: $d1
    rl d                                          ; $5328: $cb $12
    ld l, $df                                     ; $532a: $2e $df
    pop de                                        ; $532c: $d1
    ld b, h                                       ; $532d: $44
    pop af                                        ; $532e: $f1
    dec bc                                        ; $532f: $0b
    halt                                          ; $5330: $76
    call c, Call_068_5df7                         ; $5331: $dc $f7 $5d
    pop af                                        ; $5334: $f1
    xor $b8                                       ; $5335: $ee $b8
    inc a                                         ; $5337: $3c
    pop af                                        ; $5338: $f1
    ld [c], a                                     ; $5339: $e2
    dec bc                                        ; $533a: $0b
    ld [hl], $8b                                  ; $533b: $36 $8b
    ld e, a                                       ; $533d: $5f
    ld a, d                                       ; $533e: $7a
    ld a, a                                       ; $533f: $7f
    ld e, e                                       ; $5340: $5b
    ld de, $b3f3                                  ; $5341: $11 $f3 $b3
    pop de                                        ; $5344: $d1
    reti                                          ; $5345: $d9


    ldh a, [rSB]                                  ; $5346: $f0 $01
    rst $20                                       ; $5348: $e7
    inc c                                         ; $5349: $0c
    sbc e                                         ; $534a: $9b
    ld l, c                                       ; $534b: $69
    ld bc, $6ea2                                  ; $534c: $01 $a2 $6e
    and c                                         ; $534f: $a1
    reti                                          ; $5350: $d9


    adc $fb                                       ; $5351: $ce $fb
    inc bc                                        ; $5353: $03
    ld [c], a                                     ; $5354: $e2
    ld c, l                                       ; $5355: $4d
    ld b, h                                       ; $5356: $44
    jr nc, jr_068_53c7                            ; $5357: $30 $6e

    ld l, b                                       ; $5359: $68
    add d                                         ; $535a: $82
    and $b5                                       ; $535b: $e6 $b5
    cp $23                                        ; $535d: $fe $23
    dec sp                                        ; $535f: $3b
    push af                                       ; $5360: $f5
    ld l, l                                       ; $5361: $6d
    cp h                                          ; $5362: $bc
    ld [hl], a                                    ; $5363: $77
    cpl                                           ; $5364: $2f
    ld [hl], c                                    ; $5365: $71
    rst $08                                       ; $5366: $cf
    inc c                                         ; $5367: $0c
    res 6, d                                      ; $5368: $cb $b2
    pop hl                                        ; $536a: $e1
    inc bc                                        ; $536b: $03
    db $db                                        ; $536c: $db
    add h                                         ; $536d: $84
    inc hl                                        ; $536e: $23
    ld a, [hl+]                                   ; $536f: $2a
    ld e, h                                       ; $5370: $5c
    rst $38                                       ; $5371: $ff
    inc h                                         ; $5372: $24
    jp nc, $af0e                                  ; $5373: $d2 $0e $af

    ld l, h                                       ; $5376: $6c
    add [hl]                                      ; $5377: $86
    db $f4                                        ; $5378: $f4
    and a                                         ; $5379: $a7
    ld bc, $629d                                  ; $537a: $01 $9d $62
    push af                                       ; $537d: $f5
    ld [hl-], a                                   ; $537e: $32
    ld c, l                                       ; $537f: $4d
    ld d, h                                       ; $5380: $54
    ld c, b                                       ; $5381: $48
    rst $08                                       ; $5382: $cf
    jr jr_068_5320                                ; $5383: $18 $9b

    ld e, l                                       ; $5385: $5d

jr_068_5386:
    inc sp                                        ; $5386: $33
    ld a, [bc]                                    ; $5387: $0a
    call $056f                                    ; $5388: $cd $6f $05
    ld d, l                                       ; $538b: $55
    ld l, b                                       ; $538c: $68
    ld e, c                                       ; $538d: $59
    and l                                         ; $538e: $a5
    sub a                                         ; $538f: $97
    ld d, [hl]                                    ; $5390: $56
    jp hl                                         ; $5391: $e9


    ld e, [hl]                                    ; $5392: $5e
    sbc [hl]                                      ; $5393: $9e
    ld a, d                                       ; $5394: $7a
    jr nz, jr_068_5386                            ; $5395: $20 $ef

    rrca                                          ; $5397: $0f
    sub a                                         ; $5398: $97
    ld hl, $a726                                  ; $5399: $21 $26 $a7
    ld e, h                                       ; $539c: $5c
    jp nc, $524e                                  ; $539d: $d2 $4e $52

    db $eb                                        ; $53a0: $eb
    jp $2ed2                                      ; $53a1: $c3 $d2 $2e


    ld h, [hl]                                    ; $53a4: $66
    ld l, d                                       ; $53a5: $6a
    ld e, c                                       ; $53a6: $59
    cpl                                           ; $53a7: $2f
    ld [hl], a                                    ; $53a8: $77
    pop bc                                        ; $53a9: $c1
    xor $6e                                       ; $53aa: $ee $6e
    rst $28                                       ; $53ac: $ef
    dec d                                         ; $53ad: $15
    or e                                          ; $53ae: $b3
    inc b                                         ; $53af: $04
    ret z                                         ; $53b0: $c8

    or c                                          ; $53b1: $b1
    ld e, h                                       ; $53b2: $5c
    ld l, b                                       ; $53b3: $68
    ld e, [hl]                                    ; $53b4: $5e
    xor e                                         ; $53b5: $ab
    inc e                                         ; $53b6: $1c
    res 6, e                                      ; $53b7: $cb $b3
    jp hl                                         ; $53b9: $e9


    inc bc                                        ; $53ba: $03
    db $db                                        ; $53bb: $db
    add h                                         ; $53bc: $84
    ld [hl], e                                    ; $53bd: $73
    ld [hl], a                                    ; $53be: $77
    di                                            ; $53bf: $f3
    ret z                                         ; $53c0: $c8

    ld l, c                                       ; $53c1: $69
    inc d                                         ; $53c2: $14
    ld c, [hl]                                    ; $53c3: $4e
    and c                                         ; $53c4: $a1
    ld a, c                                       ; $53c5: $79
    xor l                                         ; $53c6: $ad

jr_068_53c7:
    cp [hl]                                       ; $53c7: $be
    adc l                                         ; $53c8: $8d
    ld l, a                                       ; $53c9: $6f
    adc a                                         ; $53ca: $8f
    ld [de], a                                    ; $53cb: $12
    ld sp, $aba3                                  ; $53cc: $31 $a3 $ab
    or a                                          ; $53cf: $b7
    ld a, [de]                                    ; $53d0: $1a
    ld d, c                                       ; $53d1: $51
    and e                                         ; $53d2: $a3
    ld [hl], b                                    ; $53d3: $70
    ld [$404f], a                                 ; $53d4: $ea $4f $40
    dec d                                         ; $53d7: $15
    ld d, [hl]                                    ; $53d8: $56
    add hl, sp                                    ; $53d9: $39
    sub [hl]                                      ; $53da: $96
    rst $20                                       ; $53db: $e7
    xor [hl]                                      ; $53dc: $ae
    ld hl, sp-$75                                 ; $53dd: $f8 $8b
    add c                                         ; $53df: $81
    ld h, l                                       ; $53e0: $65
    inc c                                         ; $53e1: $0c
    inc l                                         ; $53e2: $2c
    sub a                                         ; $53e3: $97
    or h                                          ; $53e4: $b4
    inc sp                                        ; $53e5: $33
    ld l, b                                       ; $53e6: $68
    db $fd                                        ; $53e7: $fd
    or c                                          ; $53e8: $b1
    ld [hl], d                                    ; $53e9: $72
    or a                                          ; $53ea: $b7
    ei                                            ; $53eb: $fb
    cp [hl]                                       ; $53ec: $be
    ccf                                           ; $53ed: $3f
    add hl, bc                                    ; $53ee: $09
    sbc l                                         ; $53ef: $9d
    ld l, [hl]                                    ; $53f0: $6e
    ld h, l                                       ; $53f1: $65
    call z, $80d3                                 ; $53f2: $cc $d3 $80
    ld e, [hl]                                    ; $53f5: $5e
    db $10                                        ; $53f6: $10
    ld d, a                                       ; $53f7: $57
    ld c, a                                       ; $53f8: $4f
    sbc a                                         ; $53f9: $9f
    rst $20                                       ; $53fa: $e7
    dec l                                         ; $53fb: $2d
    cpl                                           ; $53fc: $2f
    jr nc, jr_068_543f                            ; $53fd: $30 $40

    ld d, h                                       ; $53ff: $54
    and l                                         ; $5400: $a5
    rlca                                          ; $5401: $07
    ld c, l                                       ; $5402: $4d
    add hl, sp                                    ; $5403: $39
    ret z                                         ; $5404: $c8

    jp z, $e229                                   ; $5405: $ca $29 $e2

    ld [$db8d], a                                 ; $5408: $ea $8d $db
    db $f4                                        ; $540b: $f4
    ld bc, $9bdb                                  ; $540c: $01 $db $9b
    pop hl                                        ; $540f: $e1
    ld [$35f3], a                                 ; $5410: $ea $f3 $35
    ldh [$09], a                                  ; $5413: $e0 $09
    ld e, $b7                                     ; $5415: $1e $b7
    ld [hl], c                                    ; $5417: $71
    ld a, [$7c8f]                                 ; $5418: $fa $8f $7c
    jp hl                                         ; $541b: $e9


    cp c                                          ; $541c: $b9
    dec hl                                        ; $541d: $2b
    cp $27                                        ; $541e: $fe $27
    pop af                                        ; $5420: $f1
    sbc d                                         ; $5421: $9a
    ld [hl], d                                    ; $5422: $72
    add sp, -$5d                                  ; $5423: $e8 $a3
    ld [hl], $3d                                  ; $5425: $36 $3d
    sbc d                                         ; $5427: $9a
    ld l, c                                       ; $5428: $69
    dec c                                         ; $5429: $0d
    add sp, $34                                   ; $542a: $e8 $34
    jp Jump_000_0fee                              ; $542c: $c3 $ee $0f


    add hl, bc                                    ; $542f: $09
    push hl                                       ; $5430: $e5
    adc e                                         ; $5431: $8b

jr_068_5432:
    add c                                         ; $5432: $81
    ld c, l                                       ; $5433: $4d
    xor [hl]                                      ; $5434: $ae
    ld [hl], l                                    ; $5435: $75
    ld e, h                                       ; $5436: $5c
    ld [hl], $f6                                  ; $5437: $36 $f6
    sbc a                                         ; $5439: $9f
    and a                                         ; $543a: $a7
    cp h                                          ; $543b: $bc
    rst $28                                       ; $543c: $ef

jr_068_543d:
    ei                                            ; $543d: $fb
    inc bc                                        ; $543e: $03

jr_068_543f:
    adc c                                         ; $543f: $89
    or b                                          ; $5440: $b0
    or h                                          ; $5441: $b4
    adc e                                         ; $5442: $8b
    sbc c                                         ; $5443: $99
    db $dd                                        ; $5444: $dd
    cp a                                          ; $5445: $bf
    xor e                                         ; $5446: $ab
    adc c                                         ; $5447: $89
    sbc c                                         ; $5448: $99
    ld bc, $07f7                                  ; $5449: $01 $f7 $07
    adc c                                         ; $544c: $89
    ld h, e                                       ; $544d: $63
    add hl, hl                                    ; $544e: $29
    add a                                         ; $544f: $87
    xor [hl]                                      ; $5450: $ae
    ld l, e                                       ; $5451: $6b
    jp z, $d3a1                                   ; $5452: $ca $a1 $d3

    ld b, h                                       ; $5455: $44
    dec de                                        ; $5456: $1b
    cpl                                           ; $5457: $2f
    ld d, h                                       ; $5458: $54
    rst $00                                       ; $5459: $c7
    cp d                                          ; $545a: $ba
    inc hl                                        ; $545b: $23
    jp nc, Jump_068_7d47                          ; $545c: $d2 $47 $7d

    ld a, [de]                                    ; $545f: $1a
    ld a, [hl]                                    ; $5460: $7e
    ld [hl], h                                    ; $5461: $74
    jp nz, $6da3                                  ; $5462: $c2 $a3 $6d

    sub h                                         ; $5465: $94
    ret c                                         ; $5466: $d8

    db $f4                                        ; $5467: $f4
    ld bc, $9bdb                                  ; $5468: $01 $db $9b
    pop hl                                        ; $546b: $e1
    ld [$55f3], a                                 ; $546c: $ea $f3 $55
    cp c                                          ; $546f: $b9
    xor h                                         ; $5470: $ac
    add $6d                                       ; $5471: $c6 $6d
    ld e, h                                       ; $5473: $5c
    sub d                                         ; $5474: $92
    jr z, jr_068_5432                             ; $5475: $28 $bb

    ld a, d                                       ; $5477: $7a
    add c                                         ; $5478: $81
    and d                                         ; $5479: $a2
    and d                                         ; $547a: $a2
    ld e, b                                       ; $547b: $58
    ret nc                                        ; $547c: $d0

    add hl, bc                                    ; $547d: $09
    ld a, b                                       ; $547e: $78
    inc l                                         ; $547f: $2c
    ld d, h                                       ; $5480: $54
    reti                                          ; $5481: $d9


    or b                                          ; $5482: $b0
    db $db                                        ; $5483: $db
    ld [$de05], a                                 ; $5484: $ea $05 $de
    dec d                                         ; $5487: $15
    rst $38                                       ; $5488: $ff
    sub e                                         ; $5489: $93
    db $d3                                        ; $548a: $d3
    sub h                                         ; $548b: $94
    ld b, e                                       ; $548c: $43
    cp l                                          ; $548d: $bd
    di                                            ; $548e: $f3
    ld [$f58f], a                                 ; $548f: $ea $8f $f5
    xor c                                         ; $5492: $a9
    ld c, [hl]                                    ; $5493: $4e
    ld d, e                                       ; $5494: $53
    ld c, $cd                                     ; $5495: $0e $cd
    xor b                                         ; $5497: $a8
    ld l, a                                       ; $5498: $6f
    sub e                                         ; $5499: $93
    sub c                                         ; $549a: $91
    add [hl]                                      ; $549b: $86
    ld l, e                                       ; $549c: $6b
    sbc [hl]                                      ; $549d: $9e
    jr nc, jr_068_543d                            ; $549e: $30 $9d

    ld [hl-], a                                   ; $54a0: $32
    adc $dd                                       ; $54a1: $ce $dd
    ld l, l                                       ; $54a3: $6d
    db $ec                                        ; $54a4: $ec
    ld c, a                                       ; $54a5: $4f
    rrca                                          ; $54a6: $0f
    sub $b3                                       ; $54a7: $d6 $b3
    ld bc, $440b                                  ; $54a9: $01 $0b $44
    ld a, l                                       ; $54ac: $7d
    xor d                                         ; $54ad: $aa
    ld d, e                                       ; $54ae: $53
    push hl                                       ; $54af: $e5
    ld [de], a                                    ; $54b0: $12
    cp b                                          ; $54b1: $b8
    ld h, d                                       ; $54b2: $62
    reti                                          ; $54b3: $d9


    or b                                          ; $54b4: $b0
    db $db                                        ; $54b5: $db
    ld [$1605], a                                 ; $54b6: $ea $05 $16
    ld sp, $8a1b                                  ; $54b9: $31 $1b $8a
    dec b                                         ; $54bc: $05
    ld b, l                                       ; $54bd: $45
    and a                                         ; $54be: $a7
    add hl, de                                    ; $54bf: $19
    xor [hl]                                      ; $54c0: $ae
    ld a, $df                                     ; $54c1: $3e $df
    db $fd                                        ; $54c3: $fd
    ld bc, $479b                                  ; $54c4: $01 $9b $47
    ld c, [hl]                                    ; $54c7: $4e
    rst $10                                       ; $54c8: $d7
    dec [hl]                                      ; $54c9: $35
    push hl                                       ; $54ca: $e5
    ret nc                                        ; $54cb: $d0

    ld a, a                                       ; $54cc: $7f
    and d                                         ; $54cd: $a2
    ld [hl+], a                                   ; $54ce: $22
    db $ed                                        ; $54cf: $ed
    ld e, [hl]                                    ; $54d0: $5e
    di                                            ; $54d1: $f3
    inc sp                                        ; $54d2: $33
    ld e, d                                       ; $54d3: $5a
    reti                                          ; $54d4: $d9


    ld b, h                                       ; $54d5: $44
    inc b                                         ; $54d6: $04
    ld h, e                                       ; $54d7: $63
    jp $ea14                                      ; $54d8: $c3 $14 $ea


    ld h, e                                       ; $54db: $63
    ld c, c                                       ; $54dc: $49
    adc $a6                                       ; $54dd: $ce $a6
    rrca                                          ; $54df: $0f
    add hl, bc                                    ; $54e0: $09
    pop af                                        ; $54e1: $f1
    ld h, a                                       ; $54e2: $67
    call z, $9d78                                 ; $54e3: $cc $78 $9d
    ld b, d                                       ; $54e6: $42
    ld a, l                                       ; $54e7: $7d
    inc l                                         ; $54e8: $2c
    ret                                           ; $54e9: $c9


    xor c                                         ; $54ea: $a9
    ld c, a                                       ; $54eb: $4f
    ld h, e                                       ; $54ec: $63
    ld d, e                                       ; $54ed: $53
    ld c, $d5                                     ; $54ee: $0e $d5
    db $dd                                        ; $54f0: $dd
    sla l                                         ; $54f1: $cb $25
    db $ed                                        ; $54f3: $ed
    sub $c9                                       ; $54f4: $d6 $c9

jr_068_54f6:
    and [hl]                                      ; $54f6: $a6
    inc e                                         ; $54f7: $1c
    sbc d                                         ; $54f8: $9a
    ld [hl], d                                    ; $54f9: $72
    ld c, a                                       ; $54fa: $4f
    and c                                         ; $54fb: $a1
    adc d                                         ; $54fc: $8a
    ld [hl+], a                                   ; $54fd: $22
    cp $13                                        ; $54fe: $fe $13
    or e                                          ; $5500: $b3
    pop de                                        ; $5501: $d1
    jp z, $2226                                   ; $5502: $ca $26 $22

    jr jr_068_554c                                ; $5505: $18 $45

    ld d, l                                       ; $5507: $55
    ret z                                         ; $5508: $c8

    cp [hl]                                       ; $5509: $be
    sbc b                                         ; $550a: $98
    ld de, $1fd7                                  ; $550b: $11 $d7 $1f
    inc c                                         ; $550e: $0c
    ld l, l                                       ; $550f: $6d

Call_068_5510:
    ld b, b                                       ; $5510: $40
    ld e, c                                       ; $5511: $59
    sub a                                         ; $5512: $97
    rst $18                                       ; $5513: $df
    ld a, [c]                                     ; $5514: $f2
    halt                                          ; $5515: $76
    pop de                                        ; $5516: $d1
    ld b, h                                       ; $5517: $44
    sbc l                                         ; $5518: $9d
    cp $13                                        ; $5519: $fe $13
    dec d                                         ; $551b: $15
    ld l, c                                       ; $551c: $69
    rst $30                                       ; $551d: $f7
    ld d, h                                       ; $551e: $54
    ld [hl], c                                    ; $551f: $71
    ld d, a                                       ; $5520: $57
    inc a                                         ; $5521: $3c
    dec a                                         ; $5522: $3d
    add $06                                       ; $5523: $c6 $06
    add sp, -$31                                  ; $5525: $e8 $cf
    xor b                                         ; $5527: $a8
    inc d                                         ; $5528: $14
    ld [hl], l                                    ; $5529: $75

jr_068_552a:
    dec bc                                        ; $552a: $0b
    call $de76                                    ; $552b: $cd $76 $de
    dec d                                         ; $552e: $15
    xor a                                         ; $552f: $af
    rla                                           ; $5530: $17
    sbc d                                         ; $5531: $9a
    reti                                          ; $5532: $d9


    jr nc, jr_068_552a                            ; $5533: $30 $f5

    ld a, $d9                                     ; $5535: $3e $d9
    jr nc, jr_068_559e                            ; $5537: $30 $65

    sbc h                                         ; $5539: $9c
    jp nc, Jump_000_11b7                          ; $553a: $d2 $b7 $11

    db $fc                                        ; $553d: $fc
    inc h                                         ; $553e: $24
    scf                                           ; $553f: $37
    ld a, [hl+]                                   ; $5540: $2a
    xor $0f                                       ; $5541: $ee $0f
    ld [c], a                                     ; $5543: $e2
    ld sp, $1b43                                  ; $5544: $31 $43 $1b
    ret nc                                        ; $5547: $d0

    ld a, a                                       ; $5548: $7f
    inc h                                         ; $5549: $24
    sub $d3                                       ; $554a: $d6 $d3

jr_068_554c:
    ld a, [hl-]                                   ; $554c: $3a
    push af                                       ; $554d: $f5
    jr nc, jr_068_54f6                            ; $554e: $30 $a6

    inc e                                         ; $5550: $1c
    ld [hl-], a                                   ; $5551: $32
    ld b, h                                       ; $5552: $44
    ld c, l                                       ; $5553: $4d
    xor [hl]                                      ; $5554: $ae
    dec [hl]                                      ; $5555: $35
    push hl                                       ; $5556: $e5
    ld d, b                                       ; $5557: $50
    call nz, Call_068_486c                        ; $5558: $c4 $6c $48
    db $d3                                        ; $555b: $d3
    jp z, $c65e                                   ; $555c: $ca $5e $c6

    push af                                       ; $555f: $f5
    ld l, h                                       ; $5560: $6c
    ld h, b                                       ; $5561: $60
    inc de                                        ; $5562: $13
    ld d, d                                       ; $5563: $52
    xor $f9                                       ; $5564: $ee $f9
    cp h                                          ; $5566: $bc
    cp e                                          ; $5567: $bb
    sub l                                         ; $5568: $95
    ld e, d                                       ; $5569: $5a
    add $0c                                       ; $556a: $c6 $0c
    ld l, l                                       ; $556c: $6d
    ld a, b                                       ; $556d: $78
    xor d                                         ; $556e: $aa
    db $d3                                        ; $556f: $d3
    db $e4                                        ; $5570: $e4
    ld e, d                                       ; $5571: $5a
    ld d, e                                       ; $5572: $53
    ld c, $cd                                     ; $5573: $0e $cd
    or b                                          ; $5575: $b0
    ld b, d                                       ; $5576: $42
    or $9f                                        ; $5577: $f6 $9f
    sbc b                                         ; $5579: $98
    ld e, c                                       ; $557a: $59
    cp $13                                        ; $557b: $fe $13
    inc sp                                        ; $557d: $33
    cp $27                                        ; $557e: $fe $27
    ld de, $68f3                                  ; $5580: $11 $f3 $68
    dec c                                         ; $5583: $0d
    ccf                                           ; $5584: $3f
    ld h, d                                       ; $5585: $62
    add [hl]                                      ; $5586: $86
    ld d, $65                                     ; $5587: $16 $65
    or [hl]                                       ; $5589: $b6
    rst $20                                       ; $558a: $e7
    ld [hl], c                                    ; $558b: $71
    rst $08                                       ; $558c: $cf
    ld [$cc4f], a                                 ; $558d: $ea $4f $cc
    and e                                         ; $5590: $a3
    rst $30                                       ; $5591: $f7
    rlca                                          ; $5592: $07
    ld [c], a                                     ; $5593: $e2
    ld sp, $1b43                                  ; $5594: $31 $43 $1b
    ret nc                                        ; $5597: $d0

    rla                                           ; $5598: $17
    rst $18                                       ; $5599: $df
    rst $38                                       ; $559a: $ff
    ld l, b                                       ; $559b: $68
    ld [hl], d                                    ; $559c: $72
    or h                                          ; $559d: $b4

jr_068_559e:
    ld d, e                                       ; $559e: $53
    rrca                                          ; $559f: $0f
    ld h, e                                       ; $55a0: $63
    jp z, Jump_068_4321                           ; $55a1: $ca $21 $43

    call nc, $5ae4                                ; $55a4: $d4 $e4 $5a
    ld d, e                                       ; $55a7: $53
    ld c, $45                                     ; $55a8: $0e $45
    call z, $3486                                 ; $55aa: $cc $86 $34
    xor l                                         ; $55ad: $ad
    db $ec                                        ; $55ae: $ec
    ld h, l                                       ; $55af: $65
    ld e, h                                       ; $55b0: $5c
    rst $08                                       ; $55b1: $cf
    ld b, $36                                     ; $55b2: $06 $36
    ld hl, $9ee5                                  ; $55b4: $21 $e5 $9e
    rst $08                                       ; $55b7: $cf
    cp e                                          ; $55b8: $bb
    db $db                                        ; $55b9: $db
    and b                                         ; $55ba: $a0
    add hl, de                                    ; $55bb: $19
    sub l                                         ; $55bc: $95
    inc hl                                        ; $55bd: $23
    ld de, $88f3                                  ; $55be: $11 $f3 $88
    cp d                                          ; $55c1: $ba
    ld h, e                                       ; $55c2: $63
    reti                                          ; $55c3: $d9


    sbc c                                         ; $55c4: $99
    sub e                                         ; $55c5: $93
    or b                                          ; $55c6: $b0
    rla                                           ; $55c7: $17
    dec bc                                        ; $55c8: $0b
    call $8d6b                                    ; $55c9: $cd $6b $8d
    db $ec                                        ; $55cc: $ec
    ld a, [c]                                     ; $55cd: $f2
    ld [bc], a                                    ; $55ce: $02
    adc h                                         ; $55cf: $8c
    ld [hl], c                                    ; $55d0: $71
    dec a                                         ; $55d1: $3d
    rst $28                                       ; $55d2: $ef
    ld l, [hl]                                    ; $55d3: $6e
    and l                                         ; $55d4: $a5
    ld [hl], $b9                                  ; $55d5: $36 $b9
    sub $94                                       ; $55d7: $d6 $94
    ld b, e                                       ; $55d9: $43
    inc sp                                        ; $55da: $33
    xor h                                         ; $55db: $ac
    sub b                                         ; $55dc: $90
    db $fd                                        ; $55dd: $fd
    daa                                           ; $55de: $27
    ld h, [hl]                                    ; $55df: $66
    sub [hl]                                      ; $55e0: $96
    rst $38                                       ; $55e1: $ff
    call nz, $ff8c                                ; $55e2: $c4 $8c $ff
    ld c, c                                       ; $55e5: $49
    call nz, Call_068_5a3c                        ; $55e6: $c4 $3c $5a
    jp $988f                                      ; $55e9: $c3 $8f $98


    and c                                         ; $55ec: $a1
    ld b, l                                       ; $55ed: $45
    sbc c                                         ; $55ee: $99
    db $ed                                        ; $55ef: $ed
    ld a, c                                       ; $55f0: $79
    call c, $fab3                                 ; $55f1: $dc $b3 $fa
    inc de                                        ; $55f4: $13
    di                                            ; $55f5: $f3
    add sp, -$03                                  ; $55f6: $e8 $fd
    ld bc, $31e2                                  ; $55f8: $01 $e2 $31
    ld b, e                                       ; $55fb: $43
    dec de                                        ; $55fc: $1b
    ret nc                                        ; $55fd: $d0

    rla                                           ; $55fe: $17
    rst $18                                       ; $55ff: $df
    rst $38                                       ; $5600: $ff
    ld l, b                                       ; $5601: $68
    ld [hl], d                                    ; $5602: $72
    or h                                          ; $5603: $b4
    ld d, e                                       ; $5604: $53
    rrca                                          ; $5605: $0f
    ld h, e                                       ; $5606: $63
    jp z, Jump_068_4321                           ; $5607: $ca $21 $43

    call nc, $b8d5                                ; $560a: $d4 $d5 $b8
    ld [hl+], a                                   ; $560d: $22
    ld h, [hl]                                    ; $560e: $66
    ld b, e                                       ; $560f: $43
    sbc d                                         ; $5610: $9a
    ld d, [hl]                                    ; $5611: $56
    or $32                                        ; $5612: $f6 $32
    xor [hl]                                      ; $5614: $ae
    ld h, a                                       ; $5615: $67
    inc bc                                        ; $5616: $03
    sbc e                                         ; $5617: $9b
    sub b                                         ; $5618: $90
    ld [hl], d                                    ; $5619: $72
    rst $08                                       ; $561a: $cf
    rst $20                                       ; $561b: $e7
    db $dd                                        ; $561c: $dd
    ld l, l                                       ; $561d: $6d
    ret nc                                        ; $561e: $d0

    adc h                                         ; $561f: $8c
    jp z, $8891                                   ; $5620: $ca $91 $88

    ld a, c                                       ; $5623: $79
    ld b, h                                       ; $5624: $44
    cp l                                          ; $5625: $bd
    sub h                                         ; $5626: $94
    dec hl                                        ; $5627: $2b
    call nz, $a17f                                ; $5628: $c4 $7f $a1
    and b                                         ; $562b: $a0
    ld b, d                                       ; $562c: $42
    di                                            ; $562d: $f3
    ld e, d                                       ; $562e: $5a
    inc hl                                        ; $562f: $23
    cp e                                          ; $5630: $bb
    cp h                                          ; $5631: $bc
    nop                                           ; $5632: $00
    ld h, e                                       ; $5633: $63
    ld e, h                                       ; $5634: $5c
    rst $08                                       ; $5635: $cf
    cp e                                          ; $5636: $bb
    ld e, e                                       ; $5637: $5b
    xor c                                         ; $5638: $a9
    ld c, l                                       ; $5639: $4d
    xor [hl]                                      ; $563a: $ae
    dec [hl]                                      ; $563b: $35
    push hl                                       ; $563c: $e5
    ret nc                                        ; $563d: $d0

    inc c                                         ; $563e: $0c
    dec hl                                        ; $563f: $2b
    ld h, h                                       ; $5640: $64
    rst $38                                       ; $5641: $ff
    adc c                                         ; $5642: $89
    sbc c                                         ; $5643: $99
    push hl                                       ; $5644: $e5
    ccf                                           ; $5645: $3f
    ld sp, $7fe3                                  ; $5646: $31 $e3 $7f
    ld [de], a                                    ; $5649: $12
    ld sp, $d68f                                  ; $564a: $31 $8f $d6
    ldh a, [rNR44]                                ; $564d: $f0 $23
    ld h, [hl]                                    ; $564f: $66
    add sp, -$03                                  ; $5650: $e8 $fd
    ld bc, $31e2                                  ; $5652: $01 $e2 $31
    ld b, e                                       ; $5655: $43
    dec de                                        ; $5656: $1b
    ret nc                                        ; $5657: $d0

    rla                                           ; $5658: $17
    rst $18                                       ; $5659: $df
    rst $38                                       ; $565a: $ff
    ld l, b                                       ; $565b: $68
    ld [hl], d                                    ; $565c: $72
    or h                                          ; $565d: $b4
    ld d, e                                       ; $565e: $53
    rrca                                          ; $565f: $0f
    ld h, e                                       ; $5660: $63
    jp z, Jump_068_4321                           ; $5661: $ca $21 $43

    call nc, $5ae4                                ; $5664: $d4 $e4 $5a
    ld d, e                                       ; $5667: $53
    ld c, $45                                     ; $5668: $0e $45
    call z, $3486                                 ; $566a: $cc $86 $34
    xor l                                         ; $566d: $ad
    db $ec                                        ; $566e: $ec
    ld h, l                                       ; $566f: $65
    ld e, h                                       ; $5670: $5c
    rst $08                                       ; $5671: $cf
    ld b, $36                                     ; $5672: $06 $36
    ld hl, $9ee5                                  ; $5674: $21 $e5 $9e
    rst $08                                       ; $5677: $cf
    cp e                                          ; $5678: $bb
    db $db                                        ; $5679: $db
    and b                                         ; $567a: $a0
    add hl, de                                    ; $567b: $19
    sub l                                         ; $567c: $95
    inc hl                                        ; $567d: $23
    ld de, $88f3                                  ; $567e: $11 $f3 $88
    cp d                                          ; $5681: $ba
    push bc                                       ; $5682: $c5
    ld a, c                                       ; $5683: $79
    cp l                                          ; $5684: $bd
    dec bc                                        ; $5685: $0b
    ld a, h                                       ; $5686: $7c
    rst $20                                       ; $5687: $e7
    push af                                       ; $5688: $f5
    ld d, $9a                                     ; $5689: $16 $9a
    rst $10                                       ; $568b: $d7
    ld a, [de]                                    ; $568c: $1a
    reti                                          ; $568d: $d9


    push hl                                       ; $568e: $e5
    dec b                                         ; $568f: $05
    jr @-$1b                                      ; $5690: $18 $e3

    ld a, d                                       ; $5692: $7a
    sbc $dd                                       ; $5693: $de $dd
    ld c, d                                       ; $5695: $4a
    ld l, l                                       ; $5696: $6d
    ld [hl], d                                    ; $5697: $72
    xor l                                         ; $5698: $ad
    add hl, hl                                    ; $5699: $29
    add a                                         ; $569a: $87
    ld h, [hl]                                    ; $569b: $66
    ld e, b                                       ; $569c: $58
    ld hl, $4ffb                                  ; $569d: $21 $fb $4f
    call z, $ff2c                                 ; $56a0: $cc $2c $ff
    adc c                                         ; $56a3: $89
    add hl, de                                    ; $56a4: $19
    rst $38                                       ; $56a5: $ff
    sub e                                         ; $56a6: $93
    adc b                                         ; $56a7: $88
    ld a, c                                       ; $56a8: $79
    or h                                          ; $56a9: $b4
    add [hl]                                      ; $56aa: $86
    rra                                           ; $56ab: $1f
    ld sp, $ef43                                  ; $56ac: $31 $43 $ef
    rrca                                          ; $56af: $0f
    adc c                                         ; $56b0: $89
    ld h, e                                       ; $56b1: $63
    cp l                                          ; $56b2: $bd
    ld [hl], h                                    ; $56b3: $74
    ld h, d                                       ; $56b4: $62
    xor a                                         ; $56b5: $af
    inc b                                         ; $56b6: $04
    ld [hl], l                                    ; $56b7: $75
    pop bc                                        ; $56b8: $c1
    ld c, [hl]                                    ; $56b9: $4e
    ld d, c                                       ; $56ba: $51
    inc bc                                        ; $56bb: $03
    ld d, [hl]                                    ; $56bc: $56
    cpl                                           ; $56bd: $2f
    ld c, h                                       ; $56be: $4c
    ld e, c                                       ; $56bf: $59
    daa                                           ; $56c0: $27
    ld e, c                                       ; $56c1: $59
    ld [$b1fe], sp                                ; $56c2: $08 $fe $b1
    jr nz, jr_068_572d                            ; $56c5: $20 $66

    inc d                                         ; $56c7: $14
    sbc d                                         ; $56c8: $9a
    adc l                                         ; $56c9: $8d
    ld a, c                                       ; $56ca: $79
    ld e, l                                       ; $56cb: $5d
    ld a, [$71b1]                                 ; $56cc: $fa $b1 $71
    ld a, [hl+]                                   ; $56cf: $2a
    ld h, b                                       ; $56d0: $60
    jp nc, $80d3                                  ; $56d1: $d2 $d3 $80

    ld a, [bc]                                    ; $56d4: $0a
    ld h, [hl]                                    ; $56d5: $66
    jr nc, @-$12                                  ; $56d6: $30 $ec

    ld [de], a                                    ; $56d8: $12
    push af                                       ; $56d9: $f5
    sbc a                                         ; $56da: $9f
    ld hl, sp+$23                                 ; $56db: $f8 $23
    ld c, h                                       ; $56dd: $4c
    reti                                          ; $56de: $d9


    di                                            ; $56df: $f3
    ld l, l                                       ; $56e0: $6d
    and a                                         ; $56e1: $a7
    rst $10                                       ; $56e2: $d7
    ei                                            ; $56e3: $fb
    ld h, d                                       ; $56e4: $62
    jr @-$13                                      ; $56e5: $18 $eb

    adc c                                         ; $56e7: $89
    rst $00                                       ; $56e8: $c7
    call nc, $989f                                ; $56e9: $d4 $9f $98
    ld b, a                                       ; $56ec: $47
    rst $28                                       ; $56ed: $ef
    rrca                                          ; $56ee: $0f
    adc c                                         ; $56ef: $89
    ld h, e                                       ; $56f0: $63
    db $dd                                        ; $56f1: $dd
    ld [bc], a                                    ; $56f2: $02

jr_068_56f3:
    sub e                                         ; $56f3: $93
    ld l, a                                       ; $56f4: $6f
    ld [hl+], a                                   ; $56f5: $22
    ld a, d                                       ; $56f6: $7a
    cp [hl]                                       ; $56f7: $be

Jump_068_56f8:
    ld sp, $61a6                                  ; $56f8: $31 $a6 $61
    and d                                         ; $56fb: $a2
    ld b, $ac                                     ; $56fc: $06 $ac
    ld e, [hl]                                    ; $56fe: $5e
    sbc b                                         ; $56ff: $98
    xor $5f                                       ; $5700: $ee $5f
    sub a                                         ; $5702: $97
    rst $18                                       ; $5703: $df
    ld a, [c]                                     ; $5704: $f2
    halt                                          ; $5705: $76
    ld [hl], c                                    ; $5706: $71
    cp l                                          ; $5707: $bd
    ld [hl], b                                    ; $5708: $70
    ld a, [de]                                    ; $5709: $1a
    ret nc                                        ; $570a: $d0

    ld h, l                                       ; $570b: $65
    rst $30                                       ; $570c: $f7
    db $f4                                        ; $570d: $f4
    ei                                            ; $570e: $fb
    ld e, c                                       ; $570f: $59
    xor a                                         ; $5710: $af
    dec a                                         ; $5711: $3d
    sub $cb                                       ; $5712: $d6 $cb
    rra                                           ; $5714: $1f
    ld h, l                                       ; $5715: $65
    sbc l                                         ; $5716: $9d
    ld h, h                                       ; $5717: $64
    db $d3                                        ; $5718: $d3
    add $18                                       ; $5719: $c6 $18
    ld d, b                                       ; $571b: $50
    ld c, d                                       ; $571c: $4a
    ld [hl], b                                    ; $571d: $70
    dec a                                         ; $571e: $3d
    ld b, l                                       ; $571f: $45
    db $fd                                        ; $5720: $fd
    daa                                           ; $5721: $27
    cp $08                                        ; $5722: $fe $08
    ld d, e                                       ; $5724: $53
    or $7c                                        ; $5725: $f6 $7c
    db $db                                        ; $5727: $db
    jp hl                                         ; $5728: $e9


    push af                                       ; $5729: $f5
    cp [hl]                                       ; $572a: $be
    jr jr_068_56f3                                ; $572b: $18 $c6

jr_068_572d:
    ld a, d                                       ; $572d: $7a
    ld [c], a                                     ; $572e: $e2
    ld sp, $27f5                                  ; $572f: $31 $f5 $27
    and $d1                                       ; $5732: $e6 $d1
    ei                                            ; $5734: $fb
    inc bc                                        ; $5735: $03
    adc c                                         ; $5736: $89
    ld h, e                                       ; $5737: $63
    db $dd                                        ; $5738: $dd
    ld b, d                                       ; $5739: $42
    or e                                          ; $573a: $b3
    sbc l                                         ; $573b: $9d
    ld c, l                                       ; $573c: $4d
    sbc h                                         ; $573d: $9c
    sbc h                                         ; $573e: $9c
    ld h, c                                       ; $573f: $61
    and d                                         ; $5740: $a2
    ld b, $ac                                     ; $5741: $06 $ac
    ld e, [hl]                                    ; $5743: $5e
    sbc b                                         ; $5744: $98
    xor $5f                                       ; $5745: $ee $5f
    ld [hl], l                                    ; $5747: $75
    db $ec                                        ; $5748: $ec
    adc e                                         ; $5749: $8b
    cp a                                          ; $574a: $bf
    db $ed                                        ; $574b: $ed
    or [hl]                                       ; $574c: $b6
    jp nz, Jump_068_7fd2                          ; $574d: $c2 $d2 $7f

    adc h                                         ; $5750: $8c
    ld l, c                                       ; $5751: $69
    ld c, b                                       ; $5752: $48
    ld d, c                                       ; $5753: $51
    rst $38                                       ; $5754: $ff
    adc c                                         ; $5755: $89
    ccf                                           ; $5756: $3f
    jp nz, $ff74                                  ; $5757: $c2 $74 $ff

    ld [hl+], a                                   ; $575a: $22
    push hl                                       ; $575b: $e5
    sbc [hl]                                      ; $575c: $9e
    rst $08                                       ; $575d: $cf
    ld b, $f4                                     ; $575e: $06 $f4
    ld a, h                                       ; $5760: $7c
    db $db                                        ; $5761: $db
    jp hl                                         ; $5762: $e9


    push af                                       ; $5763: $f5
    cp [hl]                                       ; $5764: $be
    jr jr_068_572d                                ; $5765: $18 $c6

    ld a, d                                       ; $5767: $7a
    jp nc, $f531                                  ; $5768: $d2 $31 $f5

    daa                                           ; $576b: $27
    and $d1                                       ; $576c: $e6 $d1
    ei                                            ; $576e: $fb
    inc bc                                        ; $576f: $03
    add hl, bc                                    ; $5770: $09
    ld [hl], l                                    ; $5771: $75
    sub d                                         ; $5772: $92
    ld e, l                                       ; $5773: $5d
    ld h, c                                       ; $5774: $61
    ld d, a                                       ; $5775: $57
    ld d, e                                       ; $5776: $53
    ld c, $5d                                     ; $5777: $0e $5d
    rst $10                                       ; $5779: $d7
    adc b                                         ; $577a: $88
    rra                                           ; $577b: $1f
    xor d                                         ; $577c: $aa
    ld l, e                                       ; $577d: $6b
    or $58                                        ; $577e: $f6 $58
    jp hl                                         ; $5780: $e9


    ld e, [hl]                                    ; $5781: $5e
    ld h, [hl]                                    ; $5782: $66
    rst $38                                       ; $5783: $ff
    ld sp, $21a6                                  ; $5784: $31 $a6 $21
    db $eb                                        ; $5787: $eb
    db $d3                                        ; $5788: $d3
    ld e, b                                       ; $5789: $58
    ld b, h                                       ; $578a: $44
    xor a                                         ; $578b: $af
    ld hl, $5a66                                  ; $578c: $21 $66 $5a
    ld b, a                                       ; $578f: $47
    ei                                            ; $5790: $fb
    ld [c], a                                     ; $5791: $e2
    sub e                                         ; $5792: $93
    cpl                                           ; $5793: $2f
    dec a                                         ; $5794: $3d
    ld a, [hl+]                                   ; $5795: $2a
    xor d                                         ; $5796: $aa
    and h                                         ; $5797: $a4
    sub [hl]                                      ; $5798: $96
    cpl                                           ; $5799: $2f
    ld b, $56                                     ; $579a: $06 $56
    ld a, [c]                                     ; $579c: $f2
    ld l, c                                       ; $579d: $69
    ld a, l                                       ; $579e: $7d
    ld a, [de]                                    ; $579f: $1a
    adc e                                         ; $57a0: $8b
    add sp, $35                                   ; $57a1: $e8 $35
    call nz, $eb4c                                ; $57a3: $c4 $4c $eb
    ld l, b                                       ; $57a6: $68
    add hl, hl                                    ; $57a7: $29
    ld e, a                                       ; $57a8: $5f
    ld a, d                                       ; $57a9: $7a
    ld d, h                                       ; $57aa: $54
    call nc, $e27f                                ; $57ab: $d4 $7f $e2
    adc a                                         ; $57ae: $8f
    jr nc, jr_068_57ee                            ; $57af: $30 $3d

    or $98                                        ; $57b1: $f6 $98
    ld a, [$f313]                                 ; $57b3: $fa $13 $f3
    ld l, b                                       ; $57b6: $68
    reti                                          ; $57b7: $d9


    ld l, l                                       ; $57b8: $6d
    ld e, b                                       ; $57b9: $58
    cp l                                          ; $57ba: $bd
    ld h, l                                       ; $57bb: $65

jr_068_57bc:
    ld b, c                                       ; $57bc: $41
    cpl                                           ; $57bd: $2f
    sbc [hl]                                      ; $57be: $9e
    sbc b                                         ; $57bf: $98
    or $4c                                        ; $57c0: $f6 $4c
    adc $23                                       ; $57c2: $ce $23
    rst $28                                       ; $57c4: $ef
    rrca                                          ; $57c5: $0f
    rst $20                                       ; $57c6: $e7
    db $db                                        ; $57c7: $db
    ld c, [hl]                                    ; $57c8: $4e
    xor a                                         ; $57c9: $af
    rst $30                                       ; $57ca: $f7
    push bc                                       ; $57cb: $c5
    jr nc, @-$28                                  ; $57cc: $30 $d6

    dec d                                         ; $57ce: $15
    ld [c], a                                     ; $57cf: $e2
    adc a                                         ; $57d0: $8f
    dec c                                         ; $57d1: $0d
    rra                                           ; $57d2: $1f
    db $db                                        ; $57d3: $db
    sbc e                                         ; $57d4: $9b
    ld [hl], d                                    ; $57d5: $72
    rlca                                          ; $57d6: $07

jr_068_57d7:
    ld l, [hl]                                    ; $57d7: $6e
    jp c, Jump_000_01f0                           ; $57d8: $da $f0 $01

    db $db                                        ; $57db: $db
    adc l                                         ; $57dc: $8d

jr_068_57dd:
    call Call_000_2923                            ; $57dd: $cd $23 $29
    ld [$2e56], a                                 ; $57e0: $ea $56 $2e
    sbc $d9                                       ; $57e3: $de $d9
    cp c                                          ; $57e5: $b9
    pop hl                                        ; $57e6: $e1
    inc bc                                        ; $57e7: $03
    add hl, bc                                    ; $57e8: $09
    ld [$a6c3], a                                 ; $57e9: $ea $c3 $a6
    add hl, hl                                    ; $57ec: $29
    add a                                         ; $57ed: $87

jr_068_57ee:
    ld h, [hl]                                    ; $57ee: $66
    call nz, $b524                                ; $57ef: $c4 $24 $b5
    sub d                                         ; $57f2: $92
    ld c, a                                       ; $57f3: $4f
    xor e                                         ; $57f4: $ab
    ld h, e                                       ; $57f5: $63
    add hl, de                                    ; $57f6: $19
    ld c, l                                       ; $57f7: $4d

jr_068_57f8:
    add hl, sp                                    ; $57f8: $39
    add $30                                       ; $57f9: $c6 $30
    ld h, l                                       ; $57fb: $65
    dec h                                         ; $57fc: $25
    inc c                                         ; $57fd: $0c
    ccf                                           ; $57fe: $3f
    inc c                                         ; $57ff: $0c
    ld a, [hl+]                                   ; $5800: $2a
    ld [$2e56], a                                 ; $5801: $ea $56 $2e
    sbc $d9                                       ; $5804: $de $d9
    cp c                                          ; $5806: $b9
    pop hl                                        ; $5807: $e1
    inc bc                                        ; $5808: $03
    adc c                                         ; $5809: $89
    inc [hl]                                      ; $580a: $34
    ld a, d                                       ; $580b: $7a
    sub $45                                       ; $580c: $d6 $45
    dec d                                         ; $580e: $15
    push af                                       ; $580f: $f5
    ld a, h                                       ; $5810: $7c
    db $db                                        ; $5811: $db
    jp hl                                         ; $5812: $e9


    push af                                       ; $5813: $f5
    cp [hl]                                       ; $5814: $be
    jr jr_068_57dd                                ; $5815: $18 $c6

    ld [hl], $7c                                  ; $5817: $36 $7c
    ld [c], a                                     ; $5819: $e2
    ld d, e                                       ; $581a: $53
    adc c                                         ; $581b: $89
    jr c, jr_068_57f8                             ; $581c: $38 $da

    jr z, jr_068_57bc                             ; $581e: $28 $9c

    ld a, d                                       ; $5820: $7a
    rst $20                                       ; $5821: $e7
    ld [hl], l                                    ; $5822: $75
    rst $00                                       ; $5823: $c7
    or d                                          ; $5824: $b2
    inc sp                                        ; $5825: $33
    daa                                           ; $5826: $27
    ld h, c                                       ; $5827: $61
    cpl                                           ; $5828: $2f
    sbc $1f                                       ; $5829: $de $1f
    ld e, e                                       ; $582b: $5b
    ld l, b                                       ; $582c: $68
    or [hl]                                       ; $582d: $b6
    ld d, e                                       ; $582e: $53
    call nc, $a27f                                ; $582f: $d4 $7f $a2
    ld [hl+], a                                   ; $5832: $22
    db $ed                                        ; $5833: $ed
    sbc [hl]                                      ; $5834: $9e
    ld h, [hl]                                    ; $5835: $66
    ld l, h                                       ; $5836: $6c
    ld hl, sp+$00                                 ; $5837: $f8 $00
    dec sp                                        ; $5839: $3b
    jr nz, jr_068_57d7                            ; $583a: $20 $9b

    ld e, a                                       ; $583c: $5f
    and e                                         ; $583d: $a3
    ld [hl], b                                    ; $583e: $70
    sbc d                                         ; $583f: $9a
    ld h, c                                       ; $5840: $61
    adc a                                         ; $5841: $8f
    push de                                       ; $5842: $d5
    rla                                           ; $5843: $17
    and [hl]                                      ; $5844: $a6
    cp $a8                                        ; $5845: $fe $a8
    xor $b6                                       ; $5847: $ee $b6
    jp nz, $ea22                                  ; $5849: $c2 $22 $ea

    ld [hl], $ac                                  ; $584c: $36 $ac
    sbc $b2                                       ; $584e: $de $b2
    ldh [$fe], a                                  ; $5850: $e0 $fe
    nop                                           ; $5852: $00
    sub a                                         ; $5853: $97
    ld hl, $d926                                  ; $5854: $21 $26 $d9
    rla                                           ; $5857: $17
    ld [hl], a                                    ; $5858: $77
    ei                                            ; $5859: $fb
    rst $18                                       ; $585a: $df
    ld [hl], h                                    ; $585b: $74
    ld [$4c61], a                                 ; $585c: $ea $61 $4c
    add hl, sp                                    ; $585f: $39
    ld h, h                                       ; $5860: $64
    ld l, h                                       ; $5861: $6c
    ld hl, sp+$00                                 ; $5862: $f8 $00
    db $db                                        ; $5864: $db
    add h                                         ; $5865: $84
    db $d3                                        ; $5866: $d3
    rla                                           ; $5867: $17
    rst $38                                       ; $5868: $ff
    sub c                                         ; $5869: $91
    inc de                                        ; $586a: $13
    ld l, b                                       ; $586b: $68
    ld [hl], a                                    ; $586c: $77
    cp e                                          ; $586d: $bb
    ld a, l                                       ; $586e: $7d
    ld c, c                                       ; $586f: $49
    ld c, [hl]                                    ; $5870: $4e
    reti                                          ; $5871: $d9


    ld a, a                                       ; $5872: $7f
    ld h, d                                       ; $5873: $62
    add [hl]                                      ; $5874: $86
    db $f4                                        ; $5875: $f4
    rla                                           ; $5876: $17
    jp c, Jump_000_01fd                           ; $5877: $da $fd $01

    db $db                                        ; $587a: $db
    and [hl]                                      ; $587b: $a6
    adc b                                         ; $587c: $88
    sbc c                                         ; $587d: $99
    ld sp, $a88f                                  ; $587e: $31 $8f $a8
    ld c, a                                       ; $5881: $4f
    di                                            ; $5882: $f3
    inc [hl]                                      ; $5883: $34
    ld a, [bc]                                    ; $5884: $0a
    and a                                         ; $5885: $a7
    ld l, [hl]                                    ; $5886: $6e
    ret                                           ; $5887: $c9


    ld b, [hl]                                    ; $5888: $46
    sbc a                                         ; $5889: $9f
    xor d                                         ; $588a: $aa
    inc l                                         ; $588b: $2c
    cp e                                          ; $588c: $bb
    cp h                                          ; $588d: $bc
    nop                                           ; $588e: $00
    ld h, e                                       ; $588f: $63
    ld e, h                                       ; $5890: $5c
    rst $08                                       ; $5891: $cf
    xor d                                         ; $5892: $aa
    di                                            ; $5893: $f3
    ld l, b                                       ; $5894: $68
    ld h, [hl]                                    ; $5895: $66
    db $fc                                        ; $5896: $fc
    rra                                           ; $5897: $1f
    sub a                                         ; $5898: $97
    ld b, $74                                     ; $5899: $06 $74
    adc e                                         ; $589b: $8b
    di                                            ; $589c: $f3
    ld a, d                                       ; $589d: $7a
    rla                                           ; $589e: $17
    ld hl, sp-$32                                 ; $589f: $f8 $ce
    db $eb                                        ; $58a1: $eb
    ld l, l                                       ; $58a2: $6d
    sbc h                                         ; $58a3: $9c
    and [hl]                                      ; $58a4: $a6
    inc e                                         ; $58a5: $1c
    sbc d                                         ; $58a6: $9a
    rst $20                                       ; $58a7: $e7
    ld h, a                                       ; $58a8: $67
    ld e, c                                       ; $58a9: $59
    ld a, a                                       ; $58aa: $7f
    ld h, d                                       ; $58ab: $62
    ld e, $dd                                     ; $58ac: $1e $dd
    ldh a, [rSB]                                  ; $58ae: $f0 $01
    db $db                                        ; $58b0: $db
    sbc e                                         ; $58b1: $9b
    ld [hl], d                                    ; $58b2: $72
    rlca                                          ; $58b3: $07
    ld l, [hl]                                    ; $58b4: $6e
    ld [$91e6], a                                 ; $58b5: $ea $e6 $91
    db $d3                                        ; $58b8: $d3
    ld [hl], l                                    ; $58b9: $75
    push af                                       ; $58ba: $f5
    ld b, a                                       ; $58bb: $47
    ld [hl], l                                    ; $58bc: $75
    or a                                          ; $58bd: $b7
    dec d                                         ; $58be: $15
    sub [hl]                                      ; $58bf: $96
    ld c, l                                       ; $58c0: $4d
    rra                                           ; $58c1: $1f
    rst $20                                       ; $58c2: $e7
    ld b, b                                       ; $58c3: $40
    adc d                                         ; $58c4: $8a
    jp z, Jump_068_44a9                           ; $58c5: $ca $a9 $44

    inc e                                         ; $58c8: $1c
    ld l, l                                       ; $58c9: $6d
    inc d                                         ; $58ca: $14
    ld c, [hl]                                    ; $58cb: $4e
    cp l                                          ; $58cc: $bd
    di                                            ; $58cd: $f3
    cp d                                          ; $58ce: $ba
    ld h, e                                       ; $58cf: $63
    reti                                          ; $58d0: $d9


    sbc c                                         ; $58d1: $99
    sub e                                         ; $58d2: $93
    or b                                          ; $58d3: $b0
    rla                                           ; $58d4: $17
    rst $28                                       ; $58d5: $ef
    rrca                                          ; $58d6: $0f
    adc c                                         ; $58d7: $89
    inc [hl]                                      ; $58d8: $34
    ld a, d                                       ; $58d9: $7a
    sub $45                                       ; $58da: $d6 $45
    cp l                                          ; $58dc: $bd
    ccf                                           ; $58dd: $3f
    db $db                                        ; $58de: $db
    dec a                                         ; $58df: $3d
    or $d2                                        ; $58e0: $f6 $d2
    inc c                                         ; $58e2: $0c
    inc hl                                        ; $58e3: $23
    ld [$9a16], a                                 ; $58e4: $ea $16 $9a
    db $ed                                        ; $58e7: $ed
    cp h                                          ; $58e8: $bc
    sbc e                                         ; $58e9: $9b
    and b                                         ; $58ea: $a0
    ld a, $6c                                     ; $58eb: $3e $6c
    sbc d                                         ; $58ed: $9a
    ld [hl], d                                    ; $58ee: $72
    ld l, b                                       ; $58ef: $68
    ld b, [hl]                                    ; $58f0: $46
    ld c, h                                       ; $58f1: $4c
    ld d, d                                       ; $58f2: $52
    ld d, [hl]                                    ; $58f3: $56
    ld a, [c]                                     ; $58f4: $f2
    ld l, c                                       ; $58f5: $69
    ld [hl], l                                    ; $58f6: $75
    inc l                                         ; $58f7: $2c
    and e                                         ; $58f8: $a3
    ld [hl], c                                    ; $58f9: $71
    jp z, Jump_068_4d38                           ; $58fa: $ca $38 $4d

    add hl, sp                                    ; $58fd: $39
    ld [hl], h                                    ; $58fe: $74
    dec b                                         ; $58ff: $05
    ld a, c                                       ; $5900: $79
    ld a, a                                       ; $5901: $7f
    db $db                                        ; $5902: $db
    and [hl]                                      ; $5903: $a6
    adc b                                         ; $5904: $88
    sbc c                                         ; $5905: $99
    ld sp, $a88f                                  ; $5906: $31 $8f $a8
    ld c, a                                       ; $5909: $4f
    di                                            ; $590a: $f3
    inc [hl]                                      ; $590b: $34
    ld a, [bc]                                    ; $590c: $0a
    and a                                         ; $590d: $a7
    ld l, [hl]                                    ; $590e: $6e
    ret                                           ; $590f: $c9


    ld b, [hl]                                    ; $5910: $46
    sbc a                                         ; $5911: $9f
    xor d                                         ; $5912: $aa
    inc l                                         ; $5913: $2c
    cp e                                          ; $5914: $bb

jr_068_5915:
    cp h                                          ; $5915: $bc
    nop                                           ; $5916: $00
    ld h, e                                       ; $5917: $63
    ld e, h                                       ; $5918: $5c
    rst $08                                       ; $5919: $cf
    xor d                                         ; $591a: $aa
    di                                            ; $591b: $f3
    ld l, b                                       ; $591c: $68
    ld h, [hl]                                    ; $591d: $66
    db $fc                                        ; $591e: $fc
    rra                                           ; $591f: $1f
    sub a                                         ; $5920: $97
    ld b, $f4                                     ; $5921: $06 $f4
    ld d, d                                       ; $5923: $52
    xor [hl]                                      ; $5924: $ae
    db $10                                        ; $5925: $10
    rst $38                                       ; $5926: $ff
    add l                                         ; $5927: $85
    add d                                         ; $5928: $82
    ld a, [de]                                    ; $5929: $1a
    and a                                         ; $592a: $a7
    add hl, hl                                    ; $592b: $29
    add a                                         ; $592c: $87
    and $f9                                       ; $592d: $e6 $f9
    ld e, c                                       ; $592f: $59
    sub $9f                                       ; $5930: $d6 $9f
    sbc b                                         ; $5932: $98
    ld b, a                                       ; $5933: $47
    scf                                           ; $5934: $37
    ld a, h                                       ; $5935: $7c
    sub a                                         ; $5936: $97
    ld [hl], d                                    ; $5937: $72
    add l                                         ; $5938: $85
    ld hl, sp+$2f                                 ; $5939: $f8 $2f
    inc d                                         ; $593b: $14
    or h                                          ; $593c: $b4
    xor c                                         ; $593d: $a9
    ld h, a                                       ; $593e: $67
    sub h                                         ; $593f: $94
    cpl                                           ; $5940: $2f
    ld b, $d6                                     ; $5941: $06 $d6
    ld a, a                                       ; $5943: $7f
    ld h, e                                       ; $5944: $63
    ld c, l                                       ; $5945: $4d
    add hl, sp                                    ; $5946: $39
    db $f4                                        ; $5947: $f4
    ld a, h                                       ; $5948: $7c
    db $db                                        ; $5949: $db
    jp hl                                         ; $594a: $e9


    push af                                       ; $594b: $f5
    cp [hl]                                       ; $594c: $be
    jr jr_068_5915                                ; $594d: $18 $c6

    xor $0f                                       ; $594f: $ee $0f
    ld [c], a                                     ; $5951: $e2
    db $fd                                        ; $5952: $fd
    db $dd                                        ; $5953: $dd
    ld [c], a                                     ; $5954: $e2
    or e                                          ; $5955: $b3
    db $eb                                        ; $5956: $eb
    sbc d                                         ; $5957: $9a
    daa                                           ; $5958: $27
    or b                                          ; $5959: $b0
    ld a, [c]                                     ; $595a: $f2
    push bc                                       ; $595b: $c5
    inc h                                         ; $595c: $24
    rst $28                                       ; $595d: $ef
    sbc [hl]                                      ; $595e: $9e
    adc e                                         ; $595f: $8b
    push de                                       ; $5960: $d5
    ld h, e                                       ; $5961: $63
    inc sp                                        ; $5962: $33
    ld l, h                                       ; $5963: $6c
    and e                                         ; $5964: $a3
    ld b, h                                       ; $5965: $44
    and c                                         ; $5966: $a1
    sbc $b1                                       ; $5967: $de $b1
    push af                                       ; $5969: $f5
    inc c                                         ; $596a: $0c
    ld d, e                                       ; $596b: $53
    cp [hl]                                       ; $596c: $be
    jr jr_068_59c7                                ; $596d: $18 $58

    ret                                           ; $596f: $c9


    and a                                         ; $5970: $a7
    push af                                       ; $5971: $f5
    ld l, c                                       ; $5972: $69
    db $ec                                        ; $5973: $ec
    ld l, d                                       ; $5974: $6a
    or h                                          ; $5975: $b4
    ld c, a                                       ; $5976: $4f
    ld a, [$cf08]                                 ; $5977: $fa $08 $cf
    ld a, [de]                                    ; $597a: $1a
    sbc c                                         ; $597b: $99
    ld [hl], d                                    ; $597c: $72
    ld e, b                                       ; $597d: $58
    ret c                                         ; $597e: $d8

    jr c, jr_068_59b0                             ; $597f: $38 $2f

    db $e3                                        ; $5981: $e3
    cp $00                                        ; $5982: $fe $00
    dec sp                                        ; $5984: $3b
    ret nc                                        ; $5985: $d0

    ld l, c                                       ; $5986: $69
    ld a, [hl]                                    ; $5987: $7e
    dec hl                                        ; $5988: $2b
    xor b                                         ; $5989: $a8
    ld b, d                                       ; $598a: $42
    db $eb                                        ; $598b: $eb
    push bc                                       ; $598c: $c5
    sla e                                         ; $598d: $cb $23
    xor d                                         ; $598f: $aa
    ccf                                           ; $5990: $3f
    ld h, c                                       ; $5991: $61
    scf                                           ; $5992: $37
    jp z, Jump_068_66d1                           ; $5993: $ca $d1 $66

    ld e, b                                       ; $5996: $58
    ld a, l                                       ; $5997: $7d
    ld e, b                                       ; $5998: $58
    ld a, b                                       ; $5999: $78
    ld h, c                                       ; $599a: $61
    jp z, $0317                                   ; $599b: $ca $17 $03

    dec hl                                        ; $599e: $2b
    ld sp, hl                                     ; $599f: $f9
    db $f4                                        ; $59a0: $f4
    cp $00                                        ; $59a1: $fe $00
    db $db                                        ; $59a3: $db
    and [hl]                                      ; $59a4: $a6
    adc b                                         ; $59a5: $88
    sbc c                                         ; $59a6: $99
    ld sp, $a88f                                  ; $59a7: $31 $8f $a8
    ld c, a                                       ; $59aa: $4f
    di                                            ; $59ab: $f3
    inc [hl]                                      ; $59ac: $34
    ld a, [bc]                                    ; $59ad: $0a
    and a                                         ; $59ae: $a7
    ld l, [hl]                                    ; $59af: $6e

jr_068_59b0:
    ret                                           ; $59b0: $c9


    ld b, [hl]                                    ; $59b1: $46
    sbc a                                         ; $59b2: $9f
    xor d                                         ; $59b3: $aa
    db $ec                                        ; $59b4: $ec
    ld l, b                                       ; $59b5: $68
    db $fd                                        ; $59b6: $fd
    adc c                                         ; $59b7: $89
    ld a, c                                       ; $59b8: $79
    or h                                          ; $59b9: $b4
    ld l, c                                       ; $59ba: $69
    add $e4                                       ; $59bb: $c6 $e4
    ld l, b                                       ; $59bd: $68
    ld a, l                                       ; $59be: $7d
    inc l                                         ; $59bf: $2c
    inc l                                         ; $59c0: $2c
    ld d, d                                       ; $59c1: $52
    xor $f9                                       ; $59c2: $ee $f9
    ld l, h                                       ; $59c4: $6c
    ld b, b                                       ; $59c5: $40
    ld [hl], a                                    ; $59c6: $77

jr_068_59c7:
    inc l                                         ; $59c7: $2c
    dec sp                                        ; $59c8: $3b
    ld [hl], e                                    ; $59c9: $73
    ld [de], a                                    ; $59ca: $12
    or $e2                                        ; $59cb: $f6 $e2
    ld e, l                                       ; $59cd: $5d
    ld [hl], c                                    ; $59ce: $71
    push de                                       ; $59cf: $d5
    daa                                           ; $59d0: $27
    ld b, l                                       ; $59d1: $45
    push af                                       ; $59d2: $f5
    or c                                          ; $59d3: $b1
    ld c, h                                       ; $59d4: $4c
    ld [hl], l                                    ; $59d5: $75
    ld e, l                                       ; $59d6: $5d
    ld a, [hl]                                    ; $59d7: $7e
    ld [hl], d                                    ; $59d8: $72
    jp z, $fd38                                   ; $59d9: $ca $38 $fd

    daa                                           ; $59dc: $27
    ld a, [hl+]                                   ; $59dd: $2a
    ld a, [hl]                                    ; $59de: $7e
    sub a                                         ; $59df: $97
    rst $18                                       ; $59e0: $df
    ld l, d                                       ; $59e1: $6a
    ld b, h                                       ; $59e2: $44
    db $dd                                        ; $59e3: $dd
    or c                                          ; $59e4: $b1
    db $ec                                        ; $59e5: $ec
    call z, $d849                                 ; $59e6: $cc $49 $d8
    adc e                                         ; $59e9: $8b
    ld e, l                                       ; $59ea: $5d
    ld hl, $28fe                                  ; $59eb: $21 $fe $28
    ld a, e                                       ; $59ee: $7b
    add hl, de                                    ; $59ef: $19
    rst $10                                       ; $59f0: $d7
    or e                                          ; $59f1: $b3
    add c                                         ; $59f2: $81
    ld c, l                                       ; $59f3: $4d
    ld c, b                                       ; $59f4: $48
    cp c                                          ; $59f5: $b9
    rst $20                                       ; $59f6: $e7
    di                                            ; $59f7: $f3
    cp $00                                        ; $59f8: $fe $00
    sbc e                                         ; $59fa: $9b
    daa                                           ; $59fb: $27
    and $b5                                       ; $59fc: $e6 $b5
    dec d                                         ; $59fe: $15
    push hl                                       ; $59ff: $e5
    ld l, b                                       ; $5a00: $68
    rst $38                                       ; $5a01: $ff
    adc c                                         ; $5a02: $89
    ld sp, hl                                     ; $5a03: $f9
    and l                                         ; $5a04: $a5
    ld b, a                                       ; $5a05: $47
    call nc, $342d                                ; $5a06: $d4 $2d $34
    db $db                                        ; $5a09: $db
    add hl, hl                                    ; $5a0a: $29
    ld a, [hl+]                                   ; $5a0b: $2a
    sbc d                                         ; $5a0c: $9a
    ld e, l                                       ; $5a0d: $5d
    inc bc                                        ; $5a0e: $03
    db $f4                                        ; $5a0f: $f4
    dec l                                         ; $5a10: $2d
    ld l, $3c                                     ; $5a11: $2e $3c
    call Call_000_18d8                            ; $5a13: $cd $d8 $18
    ld b, a                                       ; $5a16: $47
    scf                                           ; $5a17: $37
    ld a, h                                       ; $5a18: $7c
    db $db                                        ; $5a19: $db
    dec a                                         ; $5a1a: $3d
    or $d2                                        ; $5a1b: $f6 $d2
    inc c                                         ; $5a1d: $0c
    cpl                                           ; $5a1e: $2f
    ld h, $47                                     ; $5a1f: $26 $47
    call nc, $342d                                ; $5a21: $d4 $2d $34
    db $db                                        ; $5a24: $db
    ld a, c                                       ; $5a25: $79
    ld d, a                                       ; $5a26: $57
    inc a                                         ; $5a27: $3c
    dec a                                         ; $5a28: $3d
    add $f2                                       ; $5a29: $c6 $f2
    push bc                                       ; $5a2b: $c5
    ret nz                                        ; $5a2c: $c0

    xor [hl]                                      ; $5a2d: $ae
    add h                                         ; $5a2e: $84
    ld d, e                                       ; $5a2f: $53
    add l                                         ; $5a30: $85
    push de                                       ; $5a31: $d5
    ld a, a                                       ; $5a32: $7f
    ld h, e                                       ; $5a33: $63
    ret nc                                        ; $5a34: $d0

    add $29                                       ; $5a35: $c6 $29
    db $e3                                        ; $5a37: $e3
    inc [hl]                                      ; $5a38: $34
    push hl                                       ; $5a39: $e5
    ret nc                                        ; $5a3a: $d0

    dec d                                         ; $5a3b: $15

Call_068_5a3c:
    db $e4                                        ; $5a3c: $e4
    db $fd                                        ; $5a3d: $fd
    ld bc, $0ce7                                  ; $5a3e: $01 $e7 $0c
    sbc e                                         ; $5a41: $9b
    ld de, $f333                                  ; $5a42: $11 $33 $f3
    ld e, e                                       ; $5a45: $5b
    or c                                          ; $5a46: $b1
    ld c, h                                       ; $5a47: $4c
    adc a                                         ; $5a48: $8f
    or c                                          ; $5a49: $b1
    ld [hl], c                                    ; $5a4a: $71
    ld [$527d], a                                 ; $5a4b: $ea $7d $52
    call nc, $c9c4                                ; $5a4e: $d4 $c4 $c9
    add hl, de                                    ; $5a51: $19
    halt                                          ; $5a52: $76
    ld [hl], a                                    ; $5a53: $77
    dec hl                                        ; $5a54: $2b
    or l                                          ; $5a55: $b5
    ld c, a                                       ; $5a56: $4f
    di                                            ; $5a57: $f3
    inc d                                         ; $5a58: $14
    add $be                                       ; $5a59: $c6 $be
    adc b                                         ; $5a5b: $88
    push de                                       ; $5a5c: $d5
    bit 5, e                                      ; $5a5d: $cb $6b
    dec hl                                        ; $5a5f: $2b
    inc l                                         ; $5a60: $2c
    rst $30                                       ; $5a61: $f7
    rlca                                          ; $5a62: $07
    add hl, bc                                    ; $5a63: $09
    ld [$a6c3], a                                 ; $5a64: $ea $c3 $a6
    add hl, hl                                    ; $5a67: $29
    add a                                         ; $5a68: $87
    ld h, [hl]                                    ; $5a69: $66
    call nz, $b524                                ; $5a6a: $c4 $24 $b5
    sub d                                         ; $5a6d: $92
    ld c, a                                       ; $5a6e: $4f
    xor e                                         ; $5a6f: $ab
    ld h, e                                       ; $5a70: $63
    add hl, de                                    ; $5a71: $19
    adc l                                         ; $5a72: $8d
    ld d, e                                       ; $5a73: $53
    add $69                                       ; $5a74: $c6 $69
    jp z, Jump_000_2ba1                           ; $5a76: $ca $a1 $2b

    ld c, b                                       ; $5a79: $48
    ld d, c                                       ; $5a7a: $51
    or a                                          ; $5a7b: $b7
    ret nc                                        ; $5a7c: $d0

    ld l, h                                       ; $5a7d: $6c
    ld h, a                                       ; $5a7e: $67
    inc de                                        ; $5a7f: $13
    daa                                           ; $5a80: $27
    ld h, a                                       ; $5a81: $67
    ret c                                         ; $5a82: $d8

    db $dd                                        ; $5a83: $dd
    dec bc                                        ; $5a84: $0b
    inc [hl]                                      ; $5a85: $34
    ld c, a                                       ; $5a86: $4f
    rst $10                                       ; $5a87: $d7
    adc c                                         ; $5a88: $89
    xor d                                         ; $5a89: $aa
    xor b                                         ; $5a8a: $a8
    ld hl, $506d                                  ; $5a8b: $21 $6d $50
    and l                                         ; $5a8e: $a5
    ld b, c                                       ; $5a8f: $41
    rst $28                                       ; $5a90: $ef
    rrca                                          ; $5a91: $0f
    rst $20                                       ; $5a92: $e7
    ld b, b                                       ; $5a93: $40
    sbc $f7                                       ; $5a94: $de $f7
    ld e, l                                       ; $5a96: $5d
    rra                                           ; $5a97: $1f
    bit 2, h                                      ; $5a98: $cb $54
    ld [hl+], a                                   ; $5a9a: $22
    adc [hl]                                      ; $5a9b: $8e
    ld [hl], $23                                  ; $5a9c: $36 $23
    ld h, [hl]                                    ; $5a9e: $66
    cp h                                          ; $5a9f: $bc
    ei                                            ; $5aa0: $fb
    inc bc                                        ; $5aa1: $03
    db $db                                        ; $5aa2: $db
    sub a                                         ; $5aa3: $97
    dec [hl]                                      ; $5aa4: $35
    ld d, c                                       ; $5aa5: $51
    or a                                          ; $5aa6: $b7
    ret nc                                        ; $5aa7: $d0

    ld l, h                                       ; $5aa8: $6c
    rst $20                                       ; $5aa9: $e7
    db $fd                                        ; $5aaa: $fd
    ld bc, $4057                                  ; $5aab: $01 $57 $40
    ret nz                                        ; $5aae: $c0

    inc [hl]                                      ; $5aaf: $34
    push hl                                       ; $5ab0: $e5
    ld d, b                                       ; $5ab1: $50
    ld l, b                                       ; $5ab2: $68
    ld e, [hl]                                    ; $5ab3: $5e
    db $d3                                        ; $5ab4: $d3
    ld a, d                                       ; $5ab5: $7a
    ld h, c                                       ; $5ab6: $61
    cpl                                           ; $5ab7: $2f
    call z, $f3dd                                 ; $5ab8: $cc $dd $f3
    ld b, a                                       ; $5abb: $47
    inc sp                                        ; $5abc: $33
    db $ed                                        ; $5abd: $ed
    ld d, c                                       ; $5abe: $51
    sbc e                                         ; $5abf: $9b
    ld [hl], d                                    ; $5ac0: $72
    ld l, b                                       ; $5ac1: $68
    ld b, [hl]                                    ; $5ac2: $46
    ld a, a                                       ; $5ac3: $7f
    ld h, a                                       ; $5ac4: $67
    ld d, h                                       ; $5ac5: $54
    push bc                                       ; $5ac6: $c5
    and [hl]                                      ; $5ac7: $a6
    rrca                                          ; $5ac8: $0f
    dec sp                                        ; $5ac9: $3b
    sbc [hl]                                      ; $5aca: $9e
    inc d                                         ; $5acb: $14
    push de                                       ; $5acc: $d5
    rra                                           ; $5acd: $1f
    xor e                                         ; $5ace: $ab
    sub a                                         ; $5acf: $97
    xor e                                         ; $5ad0: $ab
    or c                                          ; $5ad1: $b1
    dec c                                         ; $5ad2: $0d
    rra                                           ; $5ad3: $1f
    db $db                                        ; $5ad4: $db
    adc l                                         ; $5ad5: $8d
    push hl                                       ; $5ad6: $e5
    ld l, [hl]                                    ; $5ad7: $6e
    add l                                         ; $5ad8: $85
    and $35                                       ; $5ad9: $e6 $35
    ld d, c                                       ; $5adb: $51
    xor c                                         ; $5adc: $a9
    ld a, [$0564]                                 ; $5add: $fa $64 $05
    xor h                                         ; $5ae0: $ac
    dec [hl]                                      ; $5ae1: $35
    and e                                         ; $5ae2: $a3
    ld bc, $682b                                  ; $5ae3: $01 $2b $68
    dec d                                         ; $5ae6: $15
    ld sp, $ab3f                                  ; $5ae7: $31 $3f $ab
    call nz, $1c92                                ; $5aea: $c4 $92 $1c

jr_068_5aed:
    cp e                                          ; $5aed: $bb
    ccf                                           ; $5aee: $3f
    db $db                                        ; $5aef: $db
    dec a                                         ; $5af0: $3d
    or $d2                                        ; $5af1: $f6 $d2
    inc c                                         ; $5af3: $0c
    inc hl                                        ; $5af4: $23
    ld [$0656], a                                 ; $5af5: $ea $56 $06
    ld c, d                                       ; $5af8: $4a
    inc [hl]                                      ; $5af9: $34
    ld [hl], c                                    ; $5afa: $71
    and h                                         ; $5afb: $a4
    rst $10                                       ; $5afc: $d7
    or b                                          ; $5afd: $b0
    di                                            ; $5afe: $f3
    cp $00                                        ; $5aff: $fe $00
    ld d, a                                       ; $5b01: $57
    ld b, b                                       ; $5b02: $40
    halt                                          ; $5b03: $76
    push af                                       ; $5b04: $f5
    db $f4                                        ; $5b05: $f4
    ld h, l                                       ; $5b06: $65

Jump_068_5b07:
    jp c, $8946                                   ; $5b07: $da $46 $89

    ld a, [hl+]                                   ; $5b0a: $2a
    and h                                         ; $5b0b: $a4
    ld l, a                                       ; $5b0c: $6f
    ld l, b                                       ; $5b0d: $68
    jp z, $29a1                                   ; $5b0e: $ca $a1 $29

    rst $30                                       ; $5b11: $f7
    inc d                                         ; $5b12: $14
    ld b, $bd                                     ; $5b13: $06 $bd
    ccf                                           ; $5b15: $3f
    sub a                                         ; $5b16: $97
    jr c, jr_068_5aed                             ; $5b17: $38 $d4

    inc sp                                        ; $5b19: $33
    or d                                          ; $5b1a: $b2
    add hl, de                                    ; $5b1b: $19
    ld b, $ed                                     ; $5b1c: $06 $ed
    cp a                                          ; $5b1e: $bf

Call_068_5b1f:
    sub $d5                                       ; $5b1f: $d6 $d5
    adc e                                         ; $5b21: $8b
    ld h, c                                       ; $5b22: $61
    xor $0f                                       ; $5b23: $ee $0f
    sub a                                         ; $5b25: $97
    ld [c], a                                     ; $5b26: $e2
    add a                                         ; $5b27: $87
    rlca                                          ; $5b28: $07
    jp c, $8fb3                                   ; $5b29: $da $b3 $8f

    db $ed                                        ; $5b2c: $ed
    push bc                                       ; $5b2d: $c5
    jr c, jr_068_5b48                             ; $5b2e: $38 $18

    cp d                                          ; $5b30: $ba
    pop hl                                        ; $5b31: $e1
    inc bc                                        ; $5b32: $03
    sub a                                         ; $5b33: $97
    ld [c], a                                     ; $5b34: $e2
    add a                                         ; $5b35: $87
    rlca                                          ; $5b36: $07
    ld a, d                                       ; $5b37: $7a
    jp c, Jump_000_0907                           ; $5b38: $da $07 $09

    sbc d                                         ; $5b3b: $9a
    rst $10                                       ; $5b3c: $d7
    or h                                          ; $5b3d: $b4
    rst $38                                       ; $5b3e: $ff
    ld c, b                                       ; $5b3f: $48
    ld a, a                                       ; $5b40: $7f
    ld b, c                                       ; $5b41: $41
    and [hl]                                      ; $5b42: $a6
    ld b, h                                       ; $5b43: $44
    call z, $efe8                                 ; $5b44: $cc $e8 $ef
    adc h                                         ; $5b47: $8c

jr_068_5b48:
    ld h, c                                       ; $5b48: $61
    ld [hl], $7c                                  ; $5b49: $36 $7c
    add hl, bc                                    ; $5b4b: $09
    sbc d                                         ; $5b4c: $9a
    add hl, de                                    ; $5b4d: $19
    and [hl]                                      ; $5b4e: $a6
    ld b, a                                       ; $5b4f: $47
    scf                                           ; $5b50: $37
    ld hl, $9ee5                                  ; $5b51: $21 $e5 $9e
    rst $38                                       ; $5b54: $ff
    ld bc, $6417                                  ; $5b55: $01 $17 $64
    ret z                                         ; $5b58: $c8

    rrca                                          ; $5b59: $0f
    add hl, bc                                    ; $5b5a: $09
    pop af                                        ; $5b5b: $f1
    ld a, a                                       ; $5b5c: $7f
    rst $38                                       ; $5b5d: $ff
    ld [hl-], a                                   ; $5b5e: $32
    cp $ba                                        ; $5b5f: $fe $ba
    ldh a, [$d8]                                  ; $5b61: $f0 $d8
    add b                                         ; $5b63: $80
    ld e, [hl]                                    ; $5b64: $5e
    db $10                                        ; $5b65: $10
    db $d3                                        ; $5b66: $d3
    add [hl]                                      ; $5b67: $86
    ldh a, [rNR10]                                ; $5b68: $f0 $10
    inc sp                                        ; $5b6a: $33
    db $f4                                        ; $5b6b: $f4
    inc bc                                        ; $5b6c: $03
    rst $20                                       ; $5b6d: $e7
    call $a6f2                                    ; $5b6e: $cd $f2 $a6
    ld e, e                                       ; $5b71: $5b
    sbc c                                         ; $5b72: $99
    ld a, [hl]                                    ; $5b73: $7e
    rra                                           ; $5b74: $1f
    rst $20                                       ; $5b75: $e7
    call $a6f2                                    ; $5b76: $cd $f2 $a6
    sub a                                         ; $5b79: $97
    reti                                          ; $5b7a: $d9


    di                                            ; $5b7b: $f3
    sub a                                         ; $5b7c: $97
    rst $30                                       ; $5b7d: $f7
    dec sp                                        ; $5b7e: $3b
    db $fd                                        ; $5b7f: $fd
    nop                                           ; $5b80: $00
    rst $20                                       ; $5b81: $e7
    dec sp                                        ; $5b82: $3b
    ld e, d                                       ; $5b83: $5a
    and b                                         ; $5b84: $a0
    push af                                       ; $5b85: $f5
    jp nz, $cf49                                  ; $5b86: $c2 $49 $cf

    rlca                                          ; $5b89: $07
    db $db                                        ; $5b8a: $db
    halt                                          ; $5b8b: $76

jr_068_5b8c:
    ld e, e                                       ; $5b8c: $5b
    ld h, c                                       ; $5b8d: $61
    ld sp, hl                                     ; $5b8e: $f9
    nop                                           ; $5b8f: $00
    add hl, bc                                    ; $5b90: $09
    add d                                         ; $5b91: $82
    ld a, l                                       ; $5b92: $7d
    ret c                                         ; $5b93: $d8

    dec sp                                        ; $5b94: $3b

jr_068_5b95:
    jr nc, jr_068_5b95                            ; $5b95: $30 $fe

    adc a                                         ; $5b97: $8f
    rra                                           ; $5b98: $1f
    db $db                                        ; $5b99: $db
    ld d, [hl]                                    ; $5b9a: $56
    ld c, e                                       ; $5b9b: $4b
    ld [hl], a                                    ; $5b9c: $77
    jr nz, jr_068_5b8c                            ; $5b9d: $20 $ed

    ld e, [hl]                                    ; $5b9f: $5e
    call z, $00f8                                 ; $5ba0: $cc $f8 $00
    rla                                           ; $5ba3: $17
    db $e3                                        ; $5ba4: $e3
    ld h, b                                       ; $5ba5: $60
    add sp, $07                                   ; $5ba6: $e8 $07
    sub a                                         ; $5ba8: $97
    ld b, d                                       ; $5ba9: $42
    sbc a                                         ; $5baa: $9f
    and $fb                                       ; $5bab: $e6 $fb
    inc bc                                        ; $5bad: $03
    ld e, e                                       ; $5bae: $5b
    sbc c                                         ; $5baf: $99
    ld a, [hl]                                    ; $5bb0: $7e
    db $fc                                        ; $5bb1: $fc
    nop                                           ; $5bb2: $00
    rst $20                                       ; $5bb3: $e7
    adc l                                         ; $5bb4: $8d
    xor l                                         ; $5bb5: $ad
    rst $20                                       ; $5bb6: $e7
    rlca                                          ; $5bb7: $07
    rst $20                                       ; $5bb8: $e7
    jp nz, $e50b                                  ; $5bb9: $c2 $0b $e5

    rlca                                          ; $5bbc: $07
    ld [c], a                                     ; $5bbd: $e2
    jp hl                                         ; $5bbe: $e9


    or a                                          ; $5bbf: $b7
    cp h                                          ; $5bc0: $bc
    ret nz                                        ; $5bc1: $c0

    add b                                         ; $5bc2: $80
    rrca                                          ; $5bc3: $0f
    rst $20                                       ; $5bc4: $e7
    reti                                          ; $5bc5: $d9


    ld a, [$5d6e]                                 ; $5bc6: $fa $6e $5d
    ld c, e                                       ; $5bc9: $4b
    cp a                                          ; $5bca: $bf
    sbc a                                         ; $5bcb: $9f
    rra                                           ; $5bcc: $1f
    rst $20                                       ; $5bcd: $e7
    jp nz, $addb                                  ; $5bce: $c2 $db $ad

    ld l, e                                       ; $5bd1: $6b
    jp hl                                         ; $5bd2: $e9


    rst $30                                       ; $5bd3: $f7
    di                                            ; $5bd4: $f3
    inc bc                                        ; $5bd5: $03
    ld h, a                                       ; $5bd6: $67
    rra                                           ; $5bd7: $1f
    ld a, e                                       ; $5bd8: $7b
    db $f4                                        ; $5bd9: $f4
    reti                                          ; $5bda: $d9


    rst $00                                       ; $5bdb: $c7
    push af                                       ; $5bdc: $f5
    inc bc                                        ; $5bdd: $03
    sub a                                         ; $5bde: $97
    dec a                                         ; $5bdf: $3d
    ld h, e                                       ; $5be0: $63
    xor c                                         ; $5be1: $a9
    cp l                                          ; $5be2: $bd
    ret c                                         ; $5be3: $d8

    xor l                                         ; $5be4: $ad
    xor b                                         ; $5be5: $a8
    rra                                           ; $5be6: $1f
    rla                                           ; $5be7: $17
    cp e                                          ; $5be8: $bb
    dec d                                         ; $5be9: $15
    or l                                          ; $5bea: $b5
    ld bc, $c44d                                  ; $5beb: $01 $4d $c4
    add d                                         ; $5bee: $82
    ld b, $f4                                     ; $5bef: $06 $f4
    ld e, h                                       ; $5bf1: $5c
    ld h, e                                       ; $5bf2: $63
    ld e, d                                       ; $5bf3: $5a
    jr c, jr_068_5c15                             ; $5bf4: $38 $1f

    rla                                           ; $5bf6: $17
    cp e                                          ; $5bf7: $bb
    dec d                                         ; $5bf8: $15
    or l                                          ; $5bf9: $b5
    dec sp                                        ; $5bfa: $3b
    sbc h                                         ; $5bfb: $9c
    rrca                                          ; $5bfc: $0f
    ld a, e                                       ; $5bfd: $7b
    ld h, e                                       ; $5bfe: $63
    ret nc                                        ; $5bff: $d0

    rrca                                          ; $5c00: $0f
    rla                                           ; $5c01: $17
    cp e                                          ; $5c02: $bb
    dec d                                         ; $5c03: $15
    or l                                          ; $5c04: $b5
    ld bc, $9f3d                                  ; $5c05: $01 $3d $9f
    ld h, [hl]                                    ; $5c08: $66
    ld l, h                                       ; $5c09: $6c
    ld b, b                                       ; $5c0a: $40
    rst $08                                       ; $5c0b: $cf
    dec [hl]                                      ; $5c0c: $35
    and [hl]                                      ; $5c0d: $a6
    add l                                         ; $5c0e: $85
    di                                            ; $5c0f: $f3
    ld bc, $bb17                                  ; $5c10: $01 $17 $bb
    dec d                                         ; $5c13: $15
    or l                                          ; $5c14: $b5

jr_068_5c15:
    add a                                         ; $5c15: $87
    and [hl]                                      ; $5c16: $a6
    pop af                                        ; $5c17: $f1
    db $f4                                        ; $5c18: $f4
    inc bc                                        ; $5c19: $03
    rla                                           ; $5c1a: $17
    cp e                                          ; $5c1b: $bb
    dec d                                         ; $5c1c: $15
    or l                                          ; $5c1d: $b5
    rst $20                                       ; $5c1e: $e7
    pop hl                                        ; $5c1f: $e1
    push hl                                       ; $5c20: $e5
    rst $30                                       ; $5c21: $f7
    db $e3                                        ; $5c22: $e3
    add hl, de                                    ; $5c23: $19
    push af                                       ; $5c24: $f5
    inc bc                                        ; $5c25: $03
    rla                                           ; $5c26: $17
    cp e                                          ; $5c27: $bb
    dec d                                         ; $5c28: $15
    or l                                          ; $5c29: $b5
    ld bc, $4f15                                  ; $5c2a: $01 $15 $4f
    cp a                                          ; $5c2d: $bf
    ld c, h                                       ; $5c2e: $4c
    dec hl                                        ; $5c2f: $2b
    ld a, e                                       ; $5c30: $7b
    dec b                                         ; $5c31: $05
    db $ed                                        ; $5c32: $ed
    push bc                                       ; $5c33: $c5
    inc h                                         ; $5c34: $24
    ccf                                           ; $5c35: $3f
    sub a                                         ; $5c36: $97
    dec a                                         ; $5c37: $3d
    ld h, e                                       ; $5c38: $63
    and a                                         ; $5c39: $a7
    sbc e                                         ; $5c3a: $9b
    sub e                                         ; $5c3b: $93
    db $f4                                        ; $5c3c: $f4
    rst $10                                       ; $5c3d: $d7
    cp c                                          ; $5c3e: $b9
    rrca                                          ; $5c3f: $0f
    sbc e                                         ; $5c40: $9b
    sub e                                         ; $5c41: $93
    db $f4                                        ; $5c42: $f4
    rst $10                                       ; $5c43: $d7
    cp c                                          ; $5c44: $b9
    ld h, $4e                                     ; $5c45: $26 $4e
    call z, Call_068_698f                         ; $5c47: $cc $8f $69
    rla                                           ; $5c4a: $17
    and $03                                       ; $5c4b: $e6 $03
    sbc e                                         ; $5c4d: $9b
    sub e                                         ; $5c4e: $93
    db $f4                                        ; $5c4f: $f4
    rst $10                                       ; $5c50: $d7
    cp c                                          ; $5c51: $b9
    ld h, $4e                                     ; $5c52: $26 $4e
    call z, Call_068_698f                         ; $5c54: $cc $8f $69
    rla                                           ; $5c57: $17
    and [hl]                                      ; $5c58: $a6
    dec sp                                        ; $5c59: $3b
    sbc h                                         ; $5c5a: $9c
    rrca                                          ; $5c5b: $0f
    ld a, e                                       ; $5c5c: $7b
    ld h, e                                       ; $5c5d: $63
    rra                                           ; $5c5e: $1f
    sbc e                                         ; $5c5f: $9b
    sub e                                         ; $5c60: $93
    db $f4                                        ; $5c61: $f4
    rst $10                                       ; $5c62: $d7
    cp c                                          ; $5c63: $b9
    sbc [hl]                                      ; $5c64: $9e
    dec bc                                        ; $5c65: $0b
    adc a                                         ; $5c66: $8f
    add hl, sp                                    ; $5c67: $39
    add [hl]                                      ; $5c68: $86
    ld sp, hl                                     ; $5c69: $f9
    nop                                           ; $5c6a: $00
    sbc e                                         ; $5c6b: $9b
    sub e                                         ; $5c6c: $93
    db $f4                                        ; $5c6d: $f4
    rst $10                                       ; $5c6e: $d7
    cp c                                          ; $5c6f: $b9
    xor $70                                       ; $5c70: $ee $70
    ld a, $6c                                     ; $5c72: $3e $6c
    ld h, c                                       ; $5c74: $61
    ld a, [hl]                                    ; $5c75: $7e
    xor e                                         ; $5c76: $ab
    ld sp, hl                                     ; $5c77: $f9
    nop                                           ; $5c78: $00
    sbc e                                         ; $5c79: $9b
    sub e                                         ; $5c7a: $93
    db $f4                                        ; $5c7b: $f4
    rst $10                                       ; $5c7c: $d7
    cp c                                          ; $5c7d: $b9
    adc d                                         ; $5c7e: $8a
    cpl                                           ; $5c7f: $2f
    ld a, c                                       ; $5c80: $79
    ld a, d                                       ; $5c81: $7a
    jp hl                                         ; $5c82: $e9


    ld l, [hl]                                    ; $5c83: $6e
    jp hl                                         ; $5c84: $e9


    rla                                           ; $5c85: $17
    and $03                                       ; $5c86: $e6 $03
    sbc e                                         ; $5c88: $9b
    sub e                                         ; $5c89: $93
    db $f4                                        ; $5c8a: $f4
    rst $10                                       ; $5c8b: $d7
    cp c                                          ; $5c8c: $b9
    sbc [hl]                                      ; $5c8d: $9e
    push hl                                       ; $5c8e: $e5
    rst $20                                       ; $5c8f: $e7
    daa                                           ; $5c90: $27
    rst $20                                       ; $5c91: $e7
    inc bc                                        ; $5c92: $03
    sub a                                         ; $5c93: $97
    dec a                                         ; $5c94: $3d
    ld h, e                                       ; $5c95: $63
    reti                                          ; $5c96: $d9


    call $f9f4                                    ; $5c97: $cd $f4 $f9
    ld bc, $195b                                  ; $5c9a: $01 $5b $19
    di                                            ; $5c9d: $f3
    inc [hl]                                      ; $5c9e: $34
    and b                                         ; $5c9f: $a0
    sub a                                         ; $5ca0: $97
    add hl, de                                    ; $5ca1: $19
    dec a                                         ; $5ca2: $3d
    ld e, h                                       ; $5ca3: $5c
    sub d                                         ; $5ca4: $92
    db $d3                                        ; $5ca5: $d3
    dec e                                         ; $5ca6: $1d
    ld c, a                                       ; $5ca7: $4f
    ld a, [$f40b]                                 ; $5ca8: $fa $0b $f4
    inc bc                                        ; $5cab: $03
    dec sp                                        ; $5cac: $3b
    add $63                                       ; $5cad: $c6 $63
    ret z                                         ; $5caf: $c8

    ld l, $4c                                     ; $5cb0: $2e $4c
    rst $08                                       ; $5cb2: $cf
    ld b, l                                       ; $5cb3: $45
    cpl                                           ; $5cb4: $2f
    adc b                                         ; $5cb5: $88
    dec hl                                        ; $5cb6: $2b
    ld e, b                                       ; $5cb7: $58
    sbc h                                         ; $5cb8: $9c
    rrca                                          ; $5cb9: $0f
    ld e, e                                       ; $5cba: $5b
    add hl, de                                    ; $5cbb: $19
    di                                            ; $5cbc: $f3
    inc [hl]                                      ; $5cbd: $34
    and b                                         ; $5cbe: $a0
    sub a                                         ; $5cbf: $97
    add hl, de                                    ; $5cc0: $19
    dec a                                         ; $5cc1: $3d
    ld e, h                                       ; $5cc2: $5c
    sub d                                         ; $5cc3: $92
    db $d3                                        ; $5cc4: $d3
    dec e                                         ; $5cc5: $1d
    adc $87                                       ; $5cc6: $ce $87
    cp l                                          ; $5cc8: $bd
    or c                                          ; $5cc9: $b1
    rrca                                          ; $5cca: $0f
    dec sp                                        ; $5ccb: $3b
    add $63                                       ; $5ccc: $c6 $63
    ret z                                         ; $5cce: $c8

    ld l, $4c                                     ; $5ccf: $2e $4c
    inc bc                                        ; $5cd1: $03
    ld a, d                                       ; $5cd2: $7a
    ld b, c                                       ; $5cd3: $41
    ld e, h                                       ; $5cd4: $5c
    pop bc                                        ; $5cd5: $c1
    ld [c], a                                     ; $5cd6: $e2
    ld [hl], h                                    ; $5cd7: $74
    add a                                         ; $5cd8: $87
    di                                            ; $5cd9: $f3
    ld h, c                                       ; $5cda: $61
    ld l, a                                       ; $5cdb: $6f
    db $ec                                        ; $5cdc: $ec
    inc bc                                        ; $5cdd: $03
    sbc e                                         ; $5cde: $9b
    jp hl                                         ; $5cdf: $e9


    or e                                          ; $5ce0: $b3
    rst $20                                       ; $5ce1: $e7
    cp b                                          ; $5ce2: $b8
    ld e, a                                       ; $5ce3: $5f
    and b                                         ; $5ce4: $a0
    ld d, c                                       ; $5ce5: $51
    ld a, [hl]                                    ; $5ce6: $7e
    dec sp                                        ; $5ce7: $3b
    add $63                                       ; $5ce8: $c6 $63
    ret z                                         ; $5cea: $c8

    ld l, $4c                                     ; $5ceb: $2e $4c
    inc bc                                        ; $5ced: $03
    ld a, d                                       ; $5cee: $7a
    add hl, de                                    ; $5cef: $19
    and h                                         ; $5cf0: $a4
    ccf                                           ; $5cf1: $3f
    add $e5                                       ; $5cf2: $c6 $e5
    inc bc                                        ; $5cf4: $03
    sub a                                         ; $5cf5: $97
    dec a                                         ; $5cf6: $3d
    ld h, e                                       ; $5cf7: $63
    and a                                         ; $5cf8: $a7
    sbc e                                         ; $5cf9: $9b
    ld e, a                                       ; $5cfa: $5f
    call z, Call_000_01f3                         ; $5cfb: $cc $f3 $01
    sbc e                                         ; $5cfe: $9b
    ld e, a                                       ; $5cff: $5f
    call z, $80d3                                 ; $5d00: $cc $d3 $80
    ld l, [hl]                                    ; $5d03: $6e
    and [hl]                                      ; $5d04: $a6
    rlca                                          ; $5d05: $07
    add c                                         ; $5d06: $81
    rlc a                                         ; $5d07: $cb $07
    sbc e                                         ; $5d09: $9b
    ld e, a                                       ; $5d0a: $5f
    call z, $c853                                 ; $5d0b: $cc $53 $c8
    sbc [hl]                                      ; $5d0e: $9e
    inc sp                                        ; $5d0f: $33
    or d                                          ; $5d10: $b2
    add hl, bc                                    ; $5d11: $09
    sbc d                                         ; $5d12: $9a
    add hl, de                                    ; $5d13: $19
    and $03                                       ; $5d14: $e6 $03
    sbc e                                         ; $5d16: $9b
    ld e, a                                       ; $5d17: $5f
    call z, $80d3                                 ; $5d18: $cc $d3 $80
    ld e, [hl]                                    ; $5d1b: $5e
    ld a, [bc]                                    ; $5d1c: $0a
    ld a, l                                       ; $5d1d: $7d
    sbc d                                         ; $5d1e: $9a
    rrca                                          ; $5d1f: $0f
    adc h                                         ; $5d20: $8c
    rst $38                                       ; $5d21: $ff
    db $e3                                        ; $5d22: $e3
    rlca                                          ; $5d23: $07
    sbc e                                         ; $5d24: $9b
    ld e, a                                       ; $5d25: $5f
    call z, $2bd3                                 ; $5d26: $cc $d3 $2b
    ld e, [hl]                                    ; $5d29: $5e
    ld a, d                                       ; $5d2a: $7a
    ld l, h                                       ; $5d2b: $6c
    ld [hl], h                                    ; $5d2c: $74
    ld a, $9b                                     ; $5d2d: $3e $9b
    ld e, a                                       ; $5d2f: $5f
    call z, Call_068_4bd3                         ; $5d30: $cc $d3 $4b
    rst $00                                       ; $5d33: $c7
    db $e3                                        ; $5d34: $e3

jr_068_5d35:
    inc [hl]                                      ; $5d35: $34
    rst $08                                       ; $5d36: $cf
    rlca                                          ; $5d37: $07
    sbc e                                         ; $5d38: $9b
    ld e, a                                       ; $5d39: $5f
    call z, Call_068_73d3                         ; $5d3a: $cc $d3 $73
    xor b                                         ; $5d3d: $a8
    ld sp, hl                                     ; $5d3e: $f9
    add hl, bc                                    ; $5d3f: $09
    rst $20                                       ; $5d40: $e7
    inc bc                                        ; $5d41: $03
    sub a                                         ; $5d42: $97
    dec a                                         ; $5d43: $3d
    ld h, e                                       ; $5d44: $63
    xor c                                         ; $5d45: $a9
    dec a                                         ; $5d46: $3d
    ld h, a                                       ; $5d47: $67
    ld [hl-], a                                   ; $5d48: $32
    push af                                       ; $5d49: $f5
    inc bc                                        ; $5d4a: $03
    rst $20                                       ; $5d4b: $e7
    ld c, h                                       ; $5d4c: $4c
    and [hl]                                      ; $5d4d: $a6
    halt                                          ; $5d4e: $76
    rst $00                                       ; $5d4f: $c7
    sub e                                         ; $5d50: $93
    cp $02                                        ; $5d51: $fe $02
    db $fd                                        ; $5d53: $fd
    nop                                           ; $5d54: $00
    rst $20                                       ; $5d55: $e7
    ld c, h                                       ; $5d56: $4c
    and [hl]                                      ; $5d57: $a6
    halt                                          ; $5d58: $76
    add a                                         ; $5d59: $87
    di                                            ; $5d5a: $f3
    ld h, c                                       ; $5d5b: $61
    ld l, a                                       ; $5d5c: $6f
    inc c                                         ; $5d5d: $0c
    ld a, [$e701]                                 ; $5d5e: $fa $01 $e7
    ld c, h                                       ; $5d61: $4c
    and [hl]                                      ; $5d62: $a6
    or $d2                                        ; $5d63: $f6 $d2
    pop af                                        ; $5d65: $f1
    jr c, jr_068_5d35                             ; $5d66: $38 $cd

    call nc, $e70f                                ; $5d68: $d4 $0f $e7
    ld c, h                                       ; $5d6b: $4c
    and [hl]                                      ; $5d6c: $a6
    halt                                          ; $5d6d: $76
    add a                                         ; $5d6e: $87
    di                                            ; $5d6f: $f3
    ld h, c                                       ; $5d70: $61
    dec bc                                        ; $5d71: $0b
    di                                            ; $5d72: $f3
    ld e, e                                       ; $5d73: $5b
    ld d, c                                       ; $5d74: $51
    ccf                                           ; $5d75: $3f
    rst $20                                       ; $5d76: $e7
    ld c, h                                       ; $5d77: $4c
    and [hl]                                      ; $5d78: $a6
    or $1c                                        ; $5d79: $f6 $1c
    or a                                          ; $5d7b: $b7
    ld [$09a2], sp                                ; $5d7c: $08 $a2 $09
    db $fc                                        ; $5d7f: $fc
    nop                                           ; $5d80: $00
    rst $20                                       ; $5d81: $e7
    ld c, h                                       ; $5d82: $4c
    and [hl]                                      ; $5d83: $a6
    or $2c                                        ; $5d84: $f6 $2c
    ccf                                           ; $5d86: $3f
    ccf                                           ; $5d87: $3f
    ld c, c                                       ; $5d88: $49
    db $fd                                        ; $5d89: $fd
    nop                                           ; $5d8a: $00
    rla                                           ; $5d8b: $17

Jump_068_5d8c:
    ccf                                           ; $5d8c: $3f
    call $406c                                    ; $5d8d: $cd $6c $40
    push bc                                       ; $5d90: $c5
    dec l                                         ; $5d91: $2d
    cp a                                          ; $5d92: $bf
    db $f4                                        ; $5d93: $f4
    ld l, b                                       ; $5d94: $68
    ld a, l                                       ; $5d95: $7d
    ld a, [de]                                    ; $5d96: $1a
    sla [hl]                                      ; $5d97: $cb $26
    add sp, $3f                                   ; $5d99: $e8 $3f
    dec bc                                        ; $5d9b: $0b
    ccf                                           ; $5d9c: $3f
    rla                                           ; $5d9d: $17
    ccf                                           ; $5d9e: $3f
    call Call_068_606c                            ; $5d9f: $cd $6c $60
    push bc                                       ; $5da2: $c5
    db $dd                                        ; $5da3: $dd
    jp nz, Jump_000_170f                          ; $5da4: $c2 $0f $17

    ccf                                           ; $5da7: $3f
    call $406c                                    ; $5da8: $cd $6c $40
    inc de                                        ; $5dab: $13
    rla                                           ; $5dac: $17
    add $4c                                       ; $5dad: $c6 $4c
    db $fd                                        ; $5daf: $fd
    nop                                           ; $5db0: $00
    rla                                           ; $5db1: $17
    cp l                                          ; $5db2: $bd

jr_068_5db3:
    call c, Call_068_5e80                         ; $5db3: $dc $80 $5e
    ld h, [hl]                                    ; $5db6: $66
    call z, $8894                                 ; $5db7: $cc $94 $88
    ld a, c                                       ; $5dba: $79
    ld a, [de]                                    ; $5dbb: $1a
    ret nc                                        ; $5dbc: $d0

    dec hl                                        ; $5dbd: $2b
    xor b                                         ; $5dbe: $a8
    ld a, [hl-]                                   ; $5dbf: $3a
    adc $a8                                       ; $5dc0: $ce $a8
    rra                                           ; $5dc2: $1f
    sbc e                                         ; $5dc3: $9b
    daa                                           ; $5dc4: $27
    ld a, [bc]                                    ; $5dc5: $0a
    ld [hl], b                                    ; $5dc6: $70
    ld sp, $034f                                  ; $5dc7: $31 $4f $03
    sbc d                                         ; $5dca: $9a
    sub b                                         ; $5dcb: $90
    ld e, a                                       ; $5dcc: $5f
    jp z, Jump_068_5321                           ; $5dcd: $ca $21 $53

    ei                                            ; $5dd0: $fb
    adc a                                         ; $5dd1: $8f
    db $ec                                        ; $5dd2: $ec
    ld [hl], h                                    ; $5dd3: $74
    db $db                                        ; $5dd4: $db
    ld c, b                                       ; $5dd5: $48
    ld a, h                                       ; $5dd6: $7c
    ld e, e                                       ; $5dd7: $5b
    jp hl                                         ; $5dd8: $e9


    or e                                          ; $5dd9: $b3
    add c                                         ; $5dda: $81
    jp c, $cd04                                   ; $5ddb: $da $04 $cd

    add [hl]                                      ; $5dde: $86
    add l                                         ; $5ddf: $85
    ld a, [$8901]                                 ; $5de0: $fa $01 $89
    or b                                          ; $5de3: $b0
    inc [hl]                                      ; $5de4: $34
    push hl                                       ; $5de5: $e5
    adc e                                         ; $5de6: $8b
    ret                                           ; $5de7: $c9


    ld sp, hl                                     ; $5de8: $f9
    nop                                           ; $5de9: $00
    ld [c], a                                     ; $5dea: $e2
    ld sp, $16ef                                  ; $5deb: $31 $ef $16
    ld h, $cf                                     ; $5dee: $26 $cf
    rlca                                          ; $5df0: $07

jr_068_5df1:
    adc c                                         ; $5df1: $89
    or e                                          ; $5df2: $b3
    ld e, [hl]                                    ; $5df3: $5e
    jr c, jr_068_5db3                             ; $5df4: $38 $bd

    ld a, [c]                                     ; $5df6: $f2

Call_068_5df7:
    and l                                         ; $5df7: $a5
    db $d3                                        ; $5df8: $d3
    adc b                                         ; $5df9: $88
    add d                                         ; $5dfa: $82
    or b                                          ; $5dfb: $b0
    add h                                         ; $5dfc: $84
    rrca                                          ; $5dfd: $0f
    rst $20                                       ; $5dfe: $e7
    dec de                                        ; $5dff: $1b
    ld h, e                                       ; $5e00: $63
    ld b, b                                       ; $5e01: $40
    inc de                                        ; $5e02: $13
    ld h, a                                       ; $5e03: $67
    cp l                                          ; $5e04: $bd
    ld [hl], b                                    ; $5e05: $70
    ld a, d                                       ; $5e06: $7a
    push hl                                       ; $5e07: $e5
    ld c, e                                       ; $5e08: $4b
    and a                                         ; $5e09: $a7
    ld de, $6105                                  ; $5e0a: $11 $05 $61
    add hl, bc                                    ; $5e0d: $09
    rra                                           ; $5e0e: $1f
    adc c                                         ; $5e0f: $89
    or e                                          ; $5e10: $b3
    ld e, [hl]                                    ; $5e11: $5e
    jr c, jr_068_5df1                             ; $5e12: $38 $dd

    ld [bc], a                                    ; $5e14: $02
    di                                            ; $5e15: $f3
    cp h                                          ; $5e16: $bc
    rst $38                                       ; $5e17: $ff
    dec b                                         ; $5e18: $05
    ld a, [hl]                                    ; $5e19: $7e
    adc c                                         ; $5e1a: $89
    or e                                          ; $5e1b: $b3
    ld e, [hl]                                    ; $5e1c: $5e
    jr c, @-$41                                   ; $5e1d: $38 $bd

    ld [c], a                                     ; $5e1f: $e2
    ld h, l                                       ; $5e20: $65
    jp z, $f827                                   ; $5e21: $ca $27 $f8

    inc bc                                        ; $5e24: $03
    adc c                                         ; $5e25: $89
    or e                                          ; $5e26: $b3
    ld e, [hl]                                    ; $5e27: $5e
    jr c, jr_068_5e3f                             ; $5e28: $38 $15

    rst $30                                       ; $5e2a: $f7
    sbc a                                         ; $5e2b: $9f
    ld b, h                                       ; $5e2c: $44
    call z, $fc0c                                 ; $5e2d: $cc $0c $fc
    nop                                           ; $5e30: $00
    rst $20                                       ; $5e31: $e7
    dec de                                        ; $5e32: $1b
    ld h, e                                       ; $5e33: $63
    ld b, b                                       ; $5e34: $40
    inc de                                        ; $5e35: $13
    ld h, a                                       ; $5e36: $67
    cp l                                          ; $5e37: $bd
    ld [hl], b                                    ; $5e38: $70
    ld a, [hl+]                                   ; $5e39: $2a
    xor $3f                                       ; $5e3a: $ee $3f
    adc c                                         ; $5e3c: $89
    sbc b                                         ; $5e3d: $98
    add hl, de                                    ; $5e3e: $19

jr_068_5e3f:
    ld hl, sp+$01                                 ; $5e3f: $f8 $01
    dec sp                                        ; $5e41: $3b
    ld hl, sp+$4f                                 ; $5e42: $f8 $4f
    scf                                           ; $5e44: $37
    adc a                                         ; $5e45: $8f
    db $ec                                        ; $5e46: $ec
    ld b, l                                       ; $5e47: $45
    cpl                                           ; $5e48: $2f
    rst $30                                       ; $5e49: $f7
    ld e, h                                       ; $5e4a: $5c
    inc [hl]                                      ; $5e4b: $34
    ld [hl], c                                    ; $5e4c: $71
    sub $1f                                       ; $5e4d: $d6 $1f
    inc c                                         ; $5e4f: $0c
    db $fd                                        ; $5e50: $fd
    nop                                           ; $5e51: $00
    sbc e                                         ; $5e52: $9b
    cp c                                          ; $5e53: $b9
    inc b                                         ; $5e54: $04
    inc a                                         ; $5e55: $3c
    inc de                                        ; $5e56: $13
    ld c, [hl]                                    ; $5e57: $4e
    rst $08                                       ; $5e58: $cf
    add l                                         ; $5e59: $85
    jp z, Jump_068_7989                           ; $5e5a: $ca $89 $79

    ld l, l                                       ; $5e5d: $6d
    add l                                         ; $5e5e: $85
    push hl                                       ; $5e5f: $e5
    inc bc                                        ; $5e60: $03
    sbc e                                         ; $5e61: $9b
    cp c                                          ; $5e62: $b9
    inc b                                         ; $5e63: $04
    inc a                                         ; $5e64: $3c
    inc de                                        ; $5e65: $13
    ld c, [hl]                                    ; $5e66: $4e
    inc bc                                        ; $5e67: $03
    cp d                                          ; $5e68: $ba
    ld a, c                                       ; $5e69: $79
    inc a                                         ; $5e6a: $3c
    add [hl]                                      ; $5e6b: $86
    rrca                                          ; $5e6c: $0f
    sbc e                                         ; $5e6d: $9b
    cp c                                          ; $5e6e: $b9
    inc b                                         ; $5e6f: $04
    inc a                                         ; $5e70: $3c
    inc de                                        ; $5e71: $13
    ld c, [hl]                                    ; $5e72: $4e
    inc bc                                        ; $5e73: $03
    ld a, d                                       ; $5e74: $7a
    adc [hl]                                      ; $5e75: $8e
    ld c, l                                       ; $5e76: $4d
    call c, $0f85                                 ; $5e77: $dc $85 $0f
    sbc e                                         ; $5e7a: $9b
    cp c                                          ; $5e7b: $b9
    inc b                                         ; $5e7c: $04
    inc a                                         ; $5e7d: $3c
    inc de                                        ; $5e7e: $13
    ld c, [hl]                                    ; $5e7f: $4e

Call_068_5e80:
Jump_068_5e80:
    inc bc                                        ; $5e80: $03
    sbc d                                         ; $5e81: $9a
    ld l, b                                       ; $5e82: $68
    call z, Call_000_00fc                         ; $5e83: $cc $fc $00

Call_068_5e86:
    sbc e                                         ; $5e86: $9b
    cp c                                          ; $5e87: $b9
    inc b                                         ; $5e88: $04
    inc a                                         ; $5e89: $3c
    inc de                                        ; $5e8a: $13
    ld c, [hl]                                    ; $5e8b: $4e
    push bc                                       ; $5e8c: $c5
    ld e, l                                       ; $5e8d: $5d
    ld e, $f9                                     ; $5e8e: $1e $f9

jr_068_5e90:
    inc [hl]                                      ; $5e90: $34
    dec sp                                        ; $5e91: $3b
    ld h, e                                       ; $5e92: $63
    jr jr_068_5e90                                ; $5e93: $18 $fb

    nop                                           ; $5e95: $00
    rla                                           ; $5e96: $17
    cp a                                          ; $5e97: $bf
    sub l                                         ; $5e98: $95
    ld c, l                                       ; $5e99: $4d
    inc bc                                        ; $5e9a: $03
    ld a, d                                       ; $5e9b: $7a
    ld e, $5e                                     ; $5e9c: $1e $5e
    ld a, [hl]                                    ; $5e9e: $7e
    db $eb                                        ; $5e9f: $eb
    ld l, c                                       ; $5ea0: $69
    adc a                                         ; $5ea1: $8f
    rra                                           ; $5ea2: $1f
    rla                                           ; $5ea3: $17
    cp a                                          ; $5ea4: $bf
    sub l                                         ; $5ea5: $95
    adc l                                         ; $5ea6: $8d
    ld [hl], $b0                                  ; $5ea7: $36 $b0
    add hl, bc                                    ; $5ea9: $09
    ld a, [$c2cf]                                 ; $5eaa: $fa $cf $c2
    rrca                                          ; $5ead: $0f
    rst $20                                       ; $5eae: $e7
    call $a6f2                                    ; $5eaf: $cd $f2 $a6
    sub a                                         ; $5eb2: $97
    reti                                          ; $5eb3: $d9


    di                                            ; $5eb4: $f3
    sub a                                         ; $5eb5: $97
    rst $30                                       ; $5eb6: $f7
    dec sp                                        ; $5eb7: $3b
    db $fd                                        ; $5eb8: $fd
    nop                                           ; $5eb9: $00
    rst $20                                       ; $5eba: $e7
    call $a6f2                                    ; $5ebb: $cd $f2 $a6
    ld e, e                                       ; $5ebe: $5b
    sbc c                                         ; $5ebf: $99
    ld a, [hl]                                    ; $5ec0: $7e
    rra                                           ; $5ec1: $1f
    sbc e                                         ; $5ec2: $9b
    add hl, de                                    ; $5ec3: $19

Jump_068_5ec4:
    ld h, b                                       ; $5ec4: $60
    ld [hl], c                                    ; $5ec5: $71
    ld a, $17                                     ; $5ec6: $3e $17
    cp a                                          ; $5ec8: $bf
    sub l                                         ; $5ec9: $95
    ld c, l                                       ; $5eca: $4d
    inc bc                                        ; $5ecb: $03
    cp d                                          ; $5ecc: $ba
    sub l                                         ; $5ecd: $95
    ld c, e                                       ; $5ece: $4b
    ld a, b                                       ; $5ecf: $78
    db $eb                                        ; $5ed0: $eb
    rrca                                          ; $5ed1: $0f
    add [hl]                                      ; $5ed2: $86
    ld a, [hl]                                    ; $5ed3: $7e
    ld d, a                                       ; $5ed4: $57
    ret nc                                        ; $5ed5: $d0

    ld e, [hl]                                    ; $5ed6: $5e
    ld c, h                                       ; $5ed7: $4c
    or d                                          ; $5ed8: $b2
    ld h, c                                       ; $5ed9: $61
    cp d                                          ; $5eda: $ba
    add l                                         ; $5edb: $85
    ld h, [hl]                                    ; $5edc: $66
    dec sp                                        ; $5edd: $3b
    ccf                                           ; $5ede: $3f
    ld d, a                                       ; $5edf: $57
    ld d, b                                       ; $5ee0: $50
    ld [hl], l                                    ; $5ee1: $75
    sbc h                                         ; $5ee2: $9c
    or c                                          ; $5ee3: $b1
    db $db                                        ; $5ee4: $db
    add $24                                       ; $5ee5: $c6 $24
    sub a                                         ; $5ee7: $97
    rrca                                          ; $5ee8: $0f
    sbc e                                         ; $5ee9: $9b
    ld b, a                                       ; $5eea: $47
    ld [hl+], a                                   ; $5eeb: $22
    or e                                          ; $5eec: $b3
    rst $00                                       ; $5eed: $c7

jr_068_5eee:
    sbc l                                         ; $5eee: $9d
    ld [hl], h                                    ; $5eef: $74
    call z, Call_000_0907                         ; $5ef0: $cc $07 $09
    sbc d                                         ; $5ef3: $9a
    dec c                                         ; $5ef4: $0d
    dec bc                                        ; $5ef5: $0b
    cp e                                          ; $5ef6: $bb
    sbc c                                         ; $5ef7: $99
    ld bc, $e331                                  ; $5ef8: $01 $31 $e3
    inc bc                                        ; $5efb: $03
    db $db                                        ; $5efc: $db
    sbc [hl]                                      ; $5efd: $9e
    db $f4                                        ; $5efe: $f4
    jr c, jr_068_5eee                             ; $5eff: $38 $ed

    cp c                                          ; $5f01: $b9
    di                                            ; $5f02: $f3
    or h                                          ; $5f03: $b4
    ld e, e                                       ; $5f04: $5b
    rst $18                                       ; $5f05: $df
    ld a, [c]                                     ; $5f06: $f2
    ld bc, $f297                                  ; $5f07: $01 $97 $f2
    db $ed                                        ; $5f0a: $ed
    ld l, d                                       ; $5f0b: $6a
    ld b, b                                       ; $5f0c: $40
    push bc                                       ; $5f0d: $c5
    push de                                       ; $5f0e: $d5
    cp e                                          ; $5f0f: $bb
    ld a, e                                       ; $5f10: $7b
    ret nz                                        ; $5f11: $c0

    ld [hl-], a                                   ; $5f12: $32
    rra                                           ; $5f13: $1f
    ld e, e                                       ; $5f14: $5b
    daa                                           ; $5f15: $27
    ld a, [bc]                                    ; $5f16: $0a
    call nc, Call_068_4ce4                        ; $5f17: $d4 $e4 $4c
    ld hl, sp+$00                                 ; $5f1a: $f8 $00
    sub a                                         ; $5f1c: $97
    ld e, e                                       ; $5f1d: $5b
    ld a, [hl]                                    ; $5f1e: $7e
    ld l, c                                       ; $5f1f: $69
    ld l, d                                       ; $5f20: $6a
    ld [hl], a                                    ; $5f21: $77
    ldh [$a7], a                                  ; $5f22: $e0 $a7
    ld a, [hl]                                    ; $5f24: $7e
    rst $20                                       ; $5f25: $e7
    xor $f6                                       ; $5f26: $ee $f6
    ld h, a                                       ; $5f28: $67
    jp z, Jump_000_00f9                           ; $5f29: $ca $f9 $00

    ld [c], a                                     ; $5f2c: $e2
    ld e, $7d                                     ; $5f2d: $1e $7d
    ld sp, $07cf                                  ; $5f2f: $31 $cf $07
    sub a                                         ; $5f32: $97
    ld a, [c]                                     ; $5f33: $f2
    db $ed                                        ; $5f34: $ed
    ld l, d                                       ; $5f35: $6a
    ld b, b                                       ; $5f36: $40
    or a                                          ; $5f37: $b7
    ld [hl-], a                                   ; $5f38: $32
    ld b, $5b                                     ; $5f39: $06 $5b
    ld c, e                                       ; $5f3b: $4b
    adc a                                         ; $5f3c: $8f
    pop af                                        ; $5f3d: $f1
    inc bc                                        ; $5f3e: $03
    adc c                                         ; $5f3f: $89
    ld e, b                                       ; $5f40: $58
    ret nc                                        ; $5f41: $d0

    add b                                         ; $5f42: $80
    sbc [hl]                                      ; $5f43: $9e
    inc sp                                        ; $5f44: $33
    inc hl                                        ; $5f45: $23
    ld [hl], l                                    ; $5f46: $75
    ld h, c                                       ; $5f47: $61
    ld c, h                                       ; $5f48: $4c
    ld a, a                                       ; $5f49: $7f
    add hl, bc                                    ; $5f4a: $09
    ld [$98bf], a                                 ; $5f4b: $ea $bf $98
    inc e                                         ; $5f4e: $1c
    ld l, l                                       ; $5f4f: $6d
    ld b, b                                       ; $5f50: $40
    inc de                                        ; $5f51: $13
    rst $00                                       ; $5f52: $c7
    cp $d9                                        ; $5f53: $fe $d9
    sbc b                                         ; $5f55: $98
    and b                                         ; $5f56: $a0
    cp $8b                                        ; $5f57: $fe $8b
    ret                                           ; $5f59: $c9


    ld sp, hl                                     ; $5f5a: $f9
    nop                                           ; $5f5b: $00
    adc c                                         ; $5f5c: $89
    cp e                                          ; $5f5d: $bb
    scf                                           ; $5f5e: $37
    and b                                         ; $5f5f: $a0
    adc c                                         ; $5f60: $89
    or e                                          ; $5f61: $b3
    xor h                                         ; $5f62: $ac
    and $03                                       ; $5f63: $e6 $03
    db $db                                        ; $5f65: $db
    sub a                                         ; $5f66: $97
    db $e4                                        ; $5f67: $e4
    ld l, b                                       ; $5f68: $68
    inc bc                                        ; $5f69: $03
    sbc d                                         ; $5f6a: $9a
    and b                                         ; $5f6b: $a0
    ccf                                           ; $5f6c: $3f
    adc l                                         ; $5f6d: $8d
    dec hl                                        ; $5f6e: $2b
    inc l                                         ; $5f6f: $2c
    ret                                           ; $5f70: $c9


    ld sp, hl                                     ; $5f71: $f9
    nop                                           ; $5f72: $00
    sbc e                                         ; $5f73: $9b
    rst $00                                       ; $5f74: $c7
    ld [c], a                                     ; $5f75: $e2
    inc [hl]                                      ; $5f76: $34
    and b                                         ; $5f77: $a0
    rst $20                                       ; $5f78: $e7
    cp h                                          ; $5f79: $bc
    ld a, a                                       ; $5f7a: $7f
    ld [hl], a                                    ; $5f7b: $77
    adc e                                         ; $5f7c: $8b
    ld l, a                                       ; $5f7d: $6f
    ld a, $e7                                     ; $5f7e: $3e $e7
    ld [hl+], a                                   ; $5f80: $22
    ld h, [hl]                                    ; $5f81: $66
    ld l, b                                       ; $5f82: $68
    inc bc                                        ; $5f83: $03
    cp d                                          ; $5f84: $ba
    ld a, c                                       ; $5f85: $79
    inc a                                         ; $5f86: $3c
    add $0f                                       ; $5f87: $c6 $0f
    adc c                                         ; $5f89: $89
    ld [$9ec6], sp                                ; $5f8a: $08 $c6 $9e
    add e                                         ; $5f8d: $83
    ld e, l                                       ; $5f8e: $5d
    ld b, e                                       ; $5f8f: $43
    ei                                            ; $5f90: $fb
    nop                                           ; $5f91: $00
    sbc e                                         ; $5f92: $9b
    rst $00                                       ; $5f93: $c7
    ld [c], a                                     ; $5f94: $e2
    inc [hl]                                      ; $5f95: $34
    and b                                         ; $5f96: $a0
    adc c                                         ; $5f97: $89
    add $cc                                       ; $5f98: $c6 $cc
    ld b, $f4                                     ; $5f9a: $06 $f4
    ld a, [c]                                     ; $5f9c: $f2
    ld hl, sp-$02                                 ; $5f9d: $f8 $fe
    db $dd                                        ; $5f9f: $dd
    dec l                                         ; $5fa0: $2d
    cp [hl]                                       ; $5fa1: $be
    ld sp, hl                                     ; $5fa2: $f9
    nop                                           ; $5fa3: $00
    ld d, a                                       ; $5fa4: $57
    adc $e2                                       ; $5fa5: $ce $e2
    push af                                       ; $5fa7: $f5
    jr nc, @-$1c                                  ; $5fa8: $30 $e2

    inc bc                                        ; $5faa: $03
    ld [c], a                                     ; $5fab: $e2
    rst $38                                       ; $5fac: $ff
    xor $f1                                       ; $5fad: $ee $f1
    push hl                                       ; $5faf: $e5
    ld sp, hl                                     ; $5fb0: $f9
    nop                                           ; $5fb1: $00
    rst $20                                       ; $5fb2: $e7
    pop hl                                        ; $5fb3: $e1
    add hl, bc                                    ; $5fb4: $09
    jr c, @+$1a                                   ; $5fb5: $38 $18

jr_068_5fb7:
    jp c, Jump_068_5e80                           ; $5fb7: $da $80 $5e

    ld [hl], $61                                  ; $5fba: $36 $61
    or h                                          ; $5fbc: $b4
    and e                                         ; $5fbd: $a3
    db $dd                                        ; $5fbe: $dd
    ld b, c                                       ; $5fbf: $41
    rst $08                                       ; $5fc0: $cf
    jr jr_068_5fb7                                ; $5fc1: $18 $f4

    inc bc                                        ; $5fc3: $03
    dec sp                                        ; $5fc4: $3b
    add sp, -$71                                  ; $5fc5: $e8 $8f
    ld [hl], $a0                                  ; $5fc7: $36 $a0
    sbc e                                         ; $5fc9: $9b
    sub e                                         ; $5fca: $93
    di                                            ; $5fcb: $f3
    rst $08                                       ; $5fcc: $cf
    jp nz, $0f8c                                  ; $5fcd: $c2 $8c $0f

    ld [c], a                                     ; $5fd0: $e2
    jp c, $58ad                                   ; $5fd1: $da $ad $58

    sub d                                         ; $5fd4: $92
    ld h, e                                       ; $5fd5: $63
    ret nc                                        ; $5fd6: $d0

    ld h, $52                                     ; $5fd7: $26 $52
    di                                            ; $5fd9: $f3
    ld e, e                                       ; $5fda: $5b
    sub d                                         ; $5fdb: $92
    call nc, Call_000_2c26                        ; $5fdc: $d4 $26 $2c
    ld l, e                                       ; $5fdf: $6b
    sbc d                                         ; $5fe0: $9a
    rst $18                                       ; $5fe1: $df
    ld c, a                                       ; $5fe2: $4f
    db $fd                                        ; $5fe3: $fd
    nop                                           ; $5fe4: $00
    adc c                                         ; $5fe5: $89
    call nc, $eebc                                ; $5fe6: $d4 $bc $ee
    ld l, c                                       ; $5fe9: $69
    inc bc                                        ; $5fea: $03
    ld a, [hl+]                                   ; $5feb: $2a
    xor $d9                                       ; $5fec: $ee $d9
    db $dd                                        ; $5fee: $dd
    inc sp                                        ; $5fef: $33
    add $0f                                       ; $5ff0: $c6 $0f
    rst $20                                       ; $5ff2: $e7
    call z, $da32                                 ; $5ff3: $cc $32 $da
    add b                                         ; $5ff6: $80
    ld l, [hl]                                    ; $5ff7: $6e
    and $12                                       ; $5ff8: $e6 $12
    ldh a, [$4c]                                  ; $5ffa: $f0 $4c
    jr c, jr_068_601d                             ; $5ffc: $38 $1f

    ld d, a                                       ; $5ffe: $57
    ret nc                                        ; $5fff: $d0

    ld e, [hl]                                    ; $6000: $5e
    ld c, h                                       ; $6001: $4c
    ld d, d                                       ; $6002: $52
    cp e                                          ; $6003: $bb
    ld [hl], l                                    ; $6004: $75
    dec l                                         ; $6005: $2d
    db $fd                                        ; $6006: $fd
    ld a, [hl]                                    ; $6007: $7e
    ld l, d                                       ; $6008: $6a
    inc bc                                        ; $6009: $03
    ld a, [hl+]                                   ; $600a: $2a
    cp [hl]                                       ; $600b: $be
    db $fc                                        ; $600c: $fc
    ld e, h                                       ; $600d: $5c
    rst $28                                       ; $600e: $ef
    halt                                          ; $600f: $76
    ld a, l                                       ; $6010: $7d
    ld e, e                                       ; $6011: $5b
    db $10                                        ; $6012: $10
    inc b                                         ; $6013: $04
    cp l                                          ; $6014: $bd
    or h                                          ; $6015: $b4
    xor b                                         ; $6016: $a8
    db $ec                                        ; $6017: $ec
    and $31                                       ; $6018: $e6 $31
    daa                                           ; $601a: $27
    add b                                         ; $601b: $80
    rra                                           ; $601c: $1f

jr_068_601d:
    adc c                                         ; $601d: $89
    ld d, h                                       ; $601e: $54
    ld b, l                                       ; $601f: $45
    ld a, l                                       ; $6020: $7d
    ld a, [de]                                    ; $6021: $1a
    res 3, [hl]                                   ; $6022: $cb $9e
    ei                                            ; $6024: $fb
    sbc b                                         ; $6025: $98
    sbc [hl]                                      ; $6026: $9e
    cp b                                          ; $6027: $b8
    ld d, c                                       ; $6028: $51
    ld a, h                                       ; $6029: $7c
    ld sp, hl                                     ; $602a: $f9
    nop                                           ; $602b: $00
    sbc e                                         ; $602c: $9b
    rlca                                          ; $602d: $07
    ld c, e                                       ; $602e: $4b
    ld [hl], d                                    ; $602f: $72
    ld a, d                                       ; $6030: $7a
    jp hl                                         ; $6031: $e9


    ld [$0f9e], sp                                ; $6032: $08 $9e $0f
    adc c                                         ; $6035: $89
    ld l, e                                       ; $6036: $6b
    rra                                           ; $6037: $1f
    sbc e                                         ; $6038: $9b
    ld l, c                                       ; $6039: $69
    dec hl                                        ; $603a: $2b
    pop hl                                        ; $603b: $e1
    ld a, h                                       ; $603c: $7c
    ld c, [hl]                                    ; $603d: $4e
    or d                                          ; $603e: $b2
    ld l, c                                       ; $603f: $69
    ld l, $2f                                     ; $6040: $2e $2f
    ld h, $f9                                     ; $6042: $26 $f9
    ld bc, $8889                                  ; $6044: $01 $89 $88
    ld l, h                                       ; $6047: $6c
    ld b, b                                       ; $6048: $40
    push bc                                       ; $6049: $c5
    ld d, a                                       ; $604a: $57
    ret nc                                        ; $604b: $d0

    ld l, h                                       ; $604c: $6c
    ld l, [hl]                                    ; $604d: $6e
    rst $10                                       ; $604e: $d7
    rlca                                          ; $604f: $07
    add hl, bc                                    ; $6050: $09
    sbc d                                         ; $6051: $9a
    cp c                                          ; $6052: $b9
    cp h                                          ; $6053: $bc
    sbc b                                         ; $6054: $98
    inc e                                         ; $6055: $1c
    ld l, l                                       ; $6056: $6d
    ld b, b                                       ; $6057: $40
    rst $08                                       ; $6058: $cf
    add e                                         ; $6059: $83
    ld h, [hl]                                    ; $605a: $66
    ld a, [hl]                                    ; $605b: $7e
    adc c                                         ; $605c: $89
    ld [hl], $5e                                  ; $605d: $36 $5e
    ld h, h                                       ; $605f: $64
    or $dc                                        ; $6060: $f6 $dc
    or a                                          ; $6062: $b7
    ld h, [hl]                                    ; $6063: $66
    ld l, a                                       ; $6064: $6f
    ld a, $e7                                     ; $6065: $3e $e7

jr_068_6067:
    dec de                                        ; $6067: $1b
    ld d, a                                       ; $6068: $57
    call z, Call_000_15ec                         ; $6069: $cc $ec $15

Call_068_606c:
Jump_068_606c:
    ld e, b                                       ; $606c: $58
    sub d                                         ; $606d: $92
    db $fc                                        ; $606e: $fc
    nop                                           ; $606f: $00
    rla                                           ; $6070: $17
    cp l                                          ; $6071: $bd
    ld e, h                                       ; $6072: $5c
    sbc a                                         ; $6073: $9f
    add $5e                                       ; $6074: $c6 $5e
    ld bc, $9733                                  ; $6076: $01 $33 $97
    and [hl]                                      ; $6079: $a6
    ld a, [hl]                                    ; $607a: $7e
    ld e, e                                       ; $607b: $5b
    rlca                                          ; $607c: $07
    add c                                         ; $607d: $81
    dec c                                         ; $607e: $0d
    add sp, $71                                   ; $607f: $e8 $71
    rst $00                                       ; $6081: $c7
    inc [hl]                                      ; $6082: $34
    ld b, c                                       ; $6083: $41
    ld a, a                                       ; $6084: $7f
    rla                                           ; $6085: $17
    ld b, [hl]                                    ; $6086: $46
    ccf                                           ; $6087: $3f

jr_068_6088:
    rst $20                                       ; $6088: $e7
    ld [hl], b                                    ; $6089: $70
    add hl, sp                                    ; $608a: $39
    jr jr_068_6067                                ; $608b: $18 $da

    adc e                                         ; $608d: $8b
    sbc l                                         ; $608e: $9d
    ld a, h                                       ; $608f: $7c
    ld [hl], c                                    ; $6090: $71
    ld [hl], h                                    ; $6091: $74
    db $f4                                        ; $6092: $f4
    inc bc                                        ; $6093: $03
    adc c                                         ; $6094: $89
    db $fc                                        ; $6095: $fc
    daa                                           ; $6096: $27
    and e                                         ; $6097: $a3
    ld bc, $c6dd                                  ; $6098: $01 $dd $c6
    call z, $03e5                                 ; $609b: $cc $e5 $03
    sbc e                                         ; $609e: $9b
    sub e                                         ; $609f: $93
    db $f4                                        ; $60a0: $f4
    rst $10                                       ; $60a1: $d7
    cp c                                          ; $60a2: $b9
    ld b, $74                                     ; $60a3: $06 $74
    ld [hl], e                                    ; $60a5: $73
    jp nc, $d8ad                                  ; $60a6: $d2 $ad $d8

    jr nc, jr_068_6088                            ; $60a9: $30 $dd

    jp nz, $bdb4                                  ; $60ab: $c2 $b4 $bd

    ldh a, [rSB]                                  ; $60ae: $f0 $01
    adc c                                         ; $60b0: $89
    ld [$9ec6], sp                                ; $60b1: $08 $c6 $9e
    rst $30                                       ; $60b4: $f7
    sub [hl]                                      ; $60b5: $96
    pop de                                        ; $60b6: $d1
    pop af                                        ; $60b7: $f1
    ld [hl], d                                    ; $60b8: $72
    ld sp, hl                                     ; $60b9: $f9
    nop                                           ; $60ba: $00
    rla                                           ; $60bb: $17
    ld b, e                                       ; $60bc: $43
    ld a, d                                       ; $60bd: $7a
    adc h                                         ; $60be: $8c
    ld h, c                                       ; $60bf: $61
    db $ec                                        ; $60c0: $ec
    inc bc                                        ; $60c1: $03
    add hl, bc                                    ; $60c2: $09
    pop af                                        ; $60c3: $f1
    ld a, a                                       ; $60c4: $7f
    rst $38                                       ; $60c5: $ff
    ld [hl-], a                                   ; $60c6: $32
    cp $ba                                        ; $60c7: $fe $ba
    ldh a, [$d8]                                  ; $60c9: $f0 $d8
    add b                                         ; $60cb: $80
    ld e, [hl]                                    ; $60cc: $5e
    db $10                                        ; $60cd: $10
    db $d3                                        ; $60ce: $d3
    add [hl]                                      ; $60cf: $86
    ldh a, [rNR10]                                ; $60d0: $f0 $10
    inc sp                                        ; $60d2: $33
    db $f4                                        ; $60d3: $f4
    inc bc                                        ; $60d4: $03
    rst $20                                       ; $60d5: $e7
    dec l                                         ; $60d6: $2d
    ld [hl], h                                    ; $60d7: $74
    sbc c                                         ; $60d8: $99
    rra                                           ; $60d9: $1f
    sbc e                                         ; $60da: $9b
    sub e                                         ; $60db: $93
    ld e, h                                       ; $60dc: $5c
    and c                                         ; $60dd: $a1
    ld [c], a                                     ; $60de: $e2
    dec bc                                        ; $60df: $0b
    inc bc                                        ; $60e0: $03
    ccf                                           ; $60e1: $3f
    rla                                           ; $60e2: $17
    db $e3                                        ; $60e3: $e3
    ld h, b                                       ; $60e4: $60
    add sp, $07                                   ; $60e5: $e8 $07
    rst $20                                       ; $60e7: $e7
    ld [hl], c                                    ; $60e8: $71
    scf                                           ; $60e9: $37
    db $fd                                        ; $60ea: $fd
    reti                                          ; $60eb: $d9


    call $18ce                                    ; $60ec: $cd $ce $18
    add $f8                                       ; $60ef: $c6 $f8
    ld bc, $195b                                  ; $60f1: $01 $5b $19
    di                                            ; $60f4: $f3
    inc [hl]                                      ; $60f5: $34
    and b                                         ; $60f6: $a0
    rla                                           ; $60f7: $17
    call nz, $d3d5                                ; $60f8: $c4 $d5 $d3
    rst $20                                       ; $60fb: $e7
    ld a, c                                       ; $60fc: $79
    rrc e                                         ; $60fd: $cb $0b
    inc c                                         ; $60ff: $0c
    ld hl, sp+$00                                 ; $6100: $f8 $00
    sbc e                                         ; $6102: $9b
    ld b, a                                       ; $6103: $47
    ld a, d                                       ; $6104: $7a
    ld e, [hl]                                    ; $6105: $5e
    db $e4                                        ; $6106: $e4
    ld a, d                                       ; $6107: $7a
    pop hl                                        ; $6108: $e1
    inc [hl]                                      ; $6109: $34
    and b                                         ; $610a: $a0
    sbc e                                         ; $610b: $9b
    ld l, l                                       ; $610c: $6d
    db $e4                                        ; $610d: $e4
    add sp, $07                                   ; $610e: $e8 $07
    db $db                                        ; $6110: $db
    add h                                         ; $6111: $84
    db $d3                                        ; $6112: $d3
    adc h                                         ; $6113: $8c
    xor b                                         ; $6114: $a8
    ld a, l                                       ; $6115: $7d
    add hl, de                                    ; $6116: $19
    ld d, c                                       ; $6117: $51
    scf                                           ; $6118: $37
    ld a, h                                       ; $6119: $7c
    sbc e                                         ; $611a: $9b
    ld l, l                                       ; $611b: $6d
    db $e4                                        ; $611c: $e4
    inc [hl]                                      ; $611d: $34
    and b                                         ; $611e: $a0
    rst $20                                       ; $611f: $e7
    pop hl                                        ; $6120: $e1
    push hl                                       ; $6121: $e5
    rst $30                                       ; $6122: $f7
    db $e3                                        ; $6123: $e3
    reti                                          ; $6124: $d9


    ld l, b                                       ; $6125: $68
    pop de                                        ; $6126: $d1
    ld [hl], e                                    ; $6127: $73
    call z, $a609                                 ; $6128: $cc $09 $a6
    or $3c                                        ; $612b: $f6 $3c
    jp z, $d1d1                                   ; $612d: $ca $d1 $d1

    rrca                                          ; $6130: $0f
    sub a                                         ; $6131: $97
    rst $20                                       ; $6132: $e7
    or a                                          ; $6133: $b7
    cp h                                          ; $6134: $bc
    ld e, l                                       ; $6135: $5d
    or h                                          ; $6136: $b4
    ld b, d                                       ; $6137: $42
    inc sp                                        ; $6138: $33
    ld a, d                                       ; $6139: $7a
    ld b, c                                       ; $613a: $41
    add [hl]                                      ; $613b: $86
    call c, $01f4                                 ; $613c: $dc $f4 $01
    add d                                         ; $613f: $82
    rst $08                                       ; $6140: $cf
    ld a, $b6                                     ; $6141: $3e $b6
    rra                                           ; $6143: $1f
    db $db                                        ; $6144: $db
    add h                                         ; $6145: $84
    ld d, e                                       ; $6146: $53
    cp $13                                        ; $6147: $fe $13
    inc sp                                        ; $6149: $33
    ld a, [hl]                                    ; $614a: $7e
    inc [hl]                                      ; $614b: $34
    ld [hl-], a                                   ; $614c: $32
    ld [hl], b                                    ; $614d: $70
    jp $e207                                      ; $614e: $c3 $07 $e2


    jp hl                                         ; $6151: $e9


    ld sp, $0a36                                  ; $6152: $31 $36 $0a
    and a                                         ; $6155: $a7
    ld d, e                                       ; $6156: $53
    ld a, a                                       ; $6157: $7f
    ld [bc], a                                    ; $6158: $02
    or h                                          ; $6159: $b4
    ld c, [hl]                                    ; $615a: $4e
    ld l, c                                       ; $615b: $69
    dec de                                        ; $615c: $1b
    ld a, $89                                     ; $615d: $3e $89
    or $24                                        ; $615f: $f6 $24
    sbc d                                         ; $6161: $9a
    ld [hl], d                                    ; $6162: $72
    ld e, h                                       ; $6163: $5c
    ld d, d                                       ; $6164: $52
    ld c, $56                                     ; $6165: $0e $56
    rst $08                                       ; $6167: $cf
    ld h, h                                       ; $6168: $64
    pop hl                                        ; $6169: $e1
    call nc, $b1a7                                ; $616a: $d4 $a7 $b1
    rst $38                                       ; $616d: $ff
    call nz, $a2fc                                ; $616e: $c4 $fc $a2
    and e                                         ; $6171: $a3
    db $dd                                        ; $6172: $dd

jr_068_6173:
    rra                                           ; $6173: $1f
    ld e, e                                       ; $6174: $5b
    ld l, b                                       ; $6175: $68
    or [hl]                                       ; $6176: $b6
    or e                                          ; $6177: $b3
    add [hl]                                      ; $6178: $86
    rst $18                                       ; $6179: $df
    ld sp, hl                                     ; $617a: $f9
    jr nc, jr_068_6173                            ; $617b: $30 $f6

    db $ec                                        ; $617d: $ec
    ld h, e                                       ; $617e: $63
    sbc e                                         ; $617f: $9b
    jr c, jr_068_61b3                             ; $6180: $38 $31

    rst $08                                       ; $6182: $cf
    ld de, $647a                                  ; $6183: $11 $7a $64
    inc bc                                        ; $6186: $03
    ld a, d                                       ; $6187: $7a
    add hl, hl                                    ; $6188: $29
    db $f4                                        ; $6189: $f4
    ld l, c                                       ; $618a: $69
    ld a, $30                                     ; $618b: $3e $30
    cp $8f                                        ; $618d: $fe $8f
    rst $30                                       ; $618f: $f7

jr_068_6190:
    rlca                                          ; $6190: $07
    ld e, e                                       ; $6191: $5b
    ld l, b                                       ; $6192: $68
    or [hl]                                       ; $6193: $b6
    or e                                          ; $6194: $b3
    add [hl]                                      ; $6195: $86
    rst $18                                       ; $6196: $df
    ld sp, hl                                     ; $6197: $f9
    jr nc, jr_068_6190                            ; $6198: $30 $f6

    db $ec                                        ; $619a: $ec
    ld h, e                                       ; $619b: $63
    sbc e                                         ; $619c: $9b
    jr c, jr_068_61d0                             ; $619d: $38 $31

    rst $08                                       ; $619f: $cf
    ld de, $647a                                  ; $61a0: $11 $7a $64
    inc bc                                        ; $61a3: $03
    cp d                                          ; $61a4: $ba
    sub l                                         ; $61a5: $95
    jp hl                                         ; $61a6: $e9


    rst $00                                       ; $61a7: $c7
    ei                                            ; $61a8: $fb
    inc bc                                        ; $61a9: $03
    adc c                                         ; $61aa: $89
    inc [hl]                                      ; $61ab: $34
    db $fc                                        ; $61ac: $fc
    ld l, b                                       ; $61ad: $68
    jp z, $d1a1                                   ; $61ae: $ca $a1 $d1

    push bc                                       ; $61b1: $c5
    sbc a                                         ; $61b2: $9f

jr_068_61b3:
    push af                                       ; $61b3: $f5
    ld h, c                                       ; $61b4: $61
    ld bc, $2a9d                                  ; $61b5: $01 $9d $2a
    dec a                                         ; $61b8: $3d
    ld h, e                                       ; $61b9: $63
    dec de                                        ; $61ba: $1b
    jp c, $8e23                                   ; $61bb: $da $23 $8e

    ld a, [hl-]                                   ; $61be: $3a
    ei                                            ; $61bf: $fb
    ret c                                         ; $61c0: $d8

    ld h, $5e                                     ; $61c1: $26 $5e
    ld a, d                                       ; $61c3: $7a
    db $e4                                        ; $61c4: $e4
    rlca                                          ; $61c5: $07
    ld e, e                                       ; $61c6: $5b
    or c                                          ; $61c7: $b1
    inc h                                         ; $61c8: $24
    rst $00                                       ; $61c9: $c7
    sbc d                                         ; $61ca: $9a
    ld [hl], d                                    ; $61cb: $72
    jr z, jr_068_61f9                             ; $61cc: $28 $2b

    or c                                          ; $61ce: $b1
    inc h                                         ; $61cf: $24

jr_068_61d0:
    rst $00                                       ; $61d0: $c7
    sbc d                                         ; $61d1: $9a
    ld l, c                                       ; $61d2: $69
    add hl, de                                    ; $61d3: $19
    dec c                                         ; $61d4: $0d
    jr z, @+$3f                                   ; $61d5: $28 $3d

    cp e                                          ; $61d7: $bb
    ld a, e                                       ; $61d8: $7b
    add $b8                                       ; $61d9: $c6 $b8
    and c                                         ; $61db: $a1
    dec a                                         ; $61dc: $3d
    ld [c], a                                     ; $61dd: $e2
    xor b                                         ; $61de: $a8
    or e                                          ; $61df: $b3
    adc a                                         ; $61e0: $8f
    ld l, l                                       ; $61e1: $6d
    ld [c], a                                     ; $61e2: $e2
    and l                                         ; $61e3: $a5
    ld b, a                                       ; $61e4: $47
    ld a, [hl]                                    ; $61e5: $7e
    sub a                                         ; $61e6: $97
    add hl, bc                                    ; $61e7: $09
    and a                                         ; $61e8: $a7
    sbc [hl]                                      ; $61e9: $9e
    sub c                                         ; $61ea: $91
    ld c, l                                       ; $61eb: $4d
    add hl, sp                                    ; $61ec: $39
    inc [hl]                                      ; $61ed: $34
    ld a, [bc]                                    ; $61ee: $0a
    and a                                         ; $61ef: $a7
    ld bc, $304f                                  ; $61f0: $01 $4f $30
    or l                                          ; $61f3: $b5
    adc d                                         ; $61f4: $8a
    sub h                                         ; $61f5: $94
    add e                                         ; $61f6: $83
    ld d, l                                       ; $61f7: $55
    cp [hl]                                       ; $61f8: $be

jr_068_61f9:
    inc [hl]                                      ; $61f9: $34
    sub a                                         ; $61fa: $97
    inc h                                         ; $61fb: $24
    ld [hl], l                                    ; $61fc: $75
    ld b, e                                       ; $61fd: $43
    ld a, e                                       ; $61fe: $7b
    call nz, Call_068_6751                        ; $61ff: $c4 $51 $67
    rra                                           ; $6202: $1f
    db $db                                        ; $6203: $db
    call nz, $8f4b                                ; $6204: $c4 $4b $8f
    db $fc                                        ; $6207: $fc
    nop                                           ; $6208: $00
    db $db                                        ; $6209: $db
    xor e                                         ; $620a: $ab
    db $f4                                        ; $620b: $f4
    adc h                                         ; $620c: $8c
    ld [hl], l                                    ; $620d: $75
    ld e, l                                       ; $620e: $5d
    ld de, $c67f                                  ; $620f: $11 $7f $c6
    call z, $b630                                 ; $6212: $cc $30 $b6

Call_068_6215:
    and c                                         ; $6215: $a1
    dec a                                         ; $6216: $3d
    ld [c], a                                     ; $6217: $e2
    xor b                                         ; $6218: $a8
    or e                                          ; $6219: $b3
    adc a                                         ; $621a: $8f
    ld l, l                                       ; $621b: $6d
    ld [c], a                                     ; $621c: $e2
    and l                                         ; $621d: $a5
    ld b, a                                       ; $621e: $47
    ld a, [hl]                                    ; $621f: $7e
    db $db                                        ; $6220: $db
    ld e, h                                       ; $6221: $5c
    db $fc                                        ; $6222: $fc
    ld e, c                                       ; $6223: $59
    rst $18                                       ; $6224: $df
    ld h, [hl]                                    ; $6225: $66
    add l                                         ; $6226: $85
    ld d, a                                       ; $6227: $57
    adc c                                         ; $6228: $89
    dec h                                         ; $6229: $25
    add hl, sp                                    ; $622a: $39
    or [hl]                                       ; $622b: $b6
    and c                                         ; $622c: $a1
    ld b, a                                       ; $622d: $47
    inc e                                         ; $622e: $1c
    ld [hl], l                                    ; $622f: $75
    or $b1                                        ; $6230: $f6 $b1
    ld c, l                                       ; $6232: $4d
    cp h                                          ; $6233: $bc
    db $f4                                        ; $6234: $f4
    ret z                                         ; $6235: $c8

    rrca                                          ; $6236: $0f
    db $db                                        ; $6237: $db
    ld e, h                                       ; $6238: $5c
    db $fc                                        ; $6239: $fc
    ld e, c                                       ; $623a: $59
    rst $18                                       ; $623b: $df
    ld h, [hl]                                    ; $623c: $66
    add l                                         ; $623d: $85
    ld d, a                                       ; $623e: $57
    adc c                                         ; $623f: $89
    dec h                                         ; $6240: $25
    add hl, sp                                    ; $6241: $39
    or [hl]                                       ; $6242: $b6
    and c                                         ; $6243: $a1
    ld b, a                                       ; $6244: $47
    inc e                                         ; $6245: $1c
    ld [hl], l                                    ; $6246: $75
    or $b1                                        ; $6247: $f6 $b1
    ld c, l                                       ; $6249: $4d
    cp h                                          ; $624a: $bc
    db $f4                                        ; $624b: $f4
    ret z                                         ; $624c: $c8

    rrca                                          ; $624d: $0f
    dec sp                                        ; $624e: $3b
    sbc [hl]                                      ; $624f: $9e

jr_068_6250:
    db $fc                                        ; $6250: $fc

jr_068_6251:
    nop                                           ; $6251: $00
    db $db                                        ; $6252: $db
    add h                                         ; $6253: $84
    di                                            ; $6254: $f3
    ld bc, $7b6d                                  ; $6255: $01 $6d $7b
    or $b1                                        ; $6258: $f6 $b1
    cp l                                          ; $625a: $bd
    jr jr_068_6250                                ; $625b: $18 $f3

    ld bc, $6317                                  ; $625d: $01 $17 $63
    ld a, $9b                                     ; $6260: $3e $9b
    ld b, a                                       ; $6262: $47
    ld a, [$fb46]                                 ; $6263: $fa $46 $fb
    nop                                           ; $6266: $00
    ld d, a                                       ; $6267: $57
    jr nz, jr_068_6270                            ; $6268: $20 $06

    ret c                                         ; $626a: $d8

    rlca                                          ; $626b: $07
    dec sp                                        ; $626c: $3b
    ld hl, sp-$14                                 ; $626d: $f8 $ec
    inc bc                                        ; $626f: $03

jr_068_6270:
    sbc e                                         ; $6270: $9b
    cp c                                          ; $6271: $b9
    inc b                                         ; $6272: $04
    inc a                                         ; $6273: $3c
    dec sp                                        ; $6274: $3b
    jr jr_068_6251                                ; $6275: $18 $da

    jr nc, jr_068_62c6                            ; $6277: $30 $4d

    sbc h                                         ; $6279: $9c
    call z, Call_000_3e34                         ; $627a: $cc $34 $3e
    rst $20                                       ; $627d: $e7
    ld b, b                                       ; $627e: $40
    ld l, [hl]                                    ; $627f: $6e
    ld e, h                                       ; $6280: $5c
    cp l                                          ; $6281: $bd
    jr jr_068_62ca                                ; $6282: $18 $46

    set 2, c                                      ; $6284: $cb $d1
    ld l, [hl]                                    ; $6286: $6e
    and $12                                       ; $6287: $e6 $12
    ldh a, [$ec]                                  ; $6289: $f0 $ec
    ld h, b                                       ; $628b: $60
    ld l, b                                       ; $628c: $68
    jp Jump_068_7134                              ; $628d: $c3 $34 $71


    ld [hl-], a                                   ; $6290: $32
    db $d3                                        ; $6291: $d3
    cp b                                          ; $6292: $b8
    ccf                                           ; $6293: $3f
    sbc e                                         ; $6294: $9b
    ld b, a                                       ; $6295: $47
    ld a, [$3946]                                 ; $6296: $fa $46 $39
    ld e, d                                       ; $6299: $5a
    add l                                         ; $629a: $85
    db $f4                                        ; $629b: $f4
    dec c                                         ; $629c: $0d
    sub l                                         ; $629d: $95
    or b                                          ; $629e: $b0
    sbc a                                         ; $629f: $9f
    ld h, c                                       ; $62a0: $61
    db $ec                                        ; $62a1: $ec
    ld d, c                                       ; $62a2: $51
    db $eb                                        ; $62a3: $eb
    sub h                                         ; $62a4: $94
    add c                                         ; $62a5: $81
    ld e, d                                       ; $62a6: $5a
    ret z                                         ; $62a7: $c8

    ld a, d                                       ; $62a8: $7a
    ld b, [hl]                                    ; $62a9: $46
    ld d, $9a                                     ; $62aa: $16 $9a
    add hl, de                                    ; $62ac: $19
    and $03                                       ; $62ad: $e6 $03
    db $db                                        ; $62af: $db
    sbc e                                         ; $62b0: $9b
    ld [hl], d                                    ; $62b1: $72
    xor b                                         ; $62b2: $a8
    ld l, a                                       ; $62b3: $6f
    ret z                                         ; $62b4: $c8

    adc b                                         ; $62b5: $88
    ld bc, $da9b                                  ; $62b6: $01 $9b $da
    rrca                                          ; $62b9: $0f
    sub a                                         ; $62ba: $97
    ld c, e                                       ; $62bb: $4b
    ld d, $fa                                     ; $62bc: $16 $fa
    rst $08                                       ; $62be: $cf
    sub d                                         ; $62bf: $92
    ld h, h                                       ; $62c0: $64
    inc bc                                        ; $62c1: $03
    ld a, [hl+]                                   ; $62c2: $2a
    sbc a                                         ; $62c3: $9f
    ld h, [hl]                                    ; $62c4: $66
    ld h, a                                       ; $62c5: $67

jr_068_62c6:
    cp h                                          ; $62c6: $bc
    cp e                                          ; $62c7: $bb
    sub l                                         ; $62c8: $95
    ld c, a                                       ; $62c9: $4f

jr_068_62ca:
    sla l                                         ; $62ca: $cb $25
    db $ed                                        ; $62cc: $ed
    inc h                                         ; $62cd: $24
    ei                                            ; $62ce: $fb
    rst $08                                       ; $62cf: $cf
    ld d, e                                       ; $62d0: $53
    ld l, [hl]                                    ; $62d1: $6e
    ld a, [$9700]                                 ; $62d2: $fa $00 $97
    jr c, @-$2a                                   ; $62d5: $38 $d4

    ld b, a                                       ; $62d7: $47
    db $e4                                        ; $62d8: $e4
    db $dd                                        ; $62d9: $dd
    xor l                                         ; $62da: $ad
    ld a, h                                       ; $62db: $7c
    ld e, d                                       ; $62dc: $5a
    ld l, $69                                     ; $62dd: $2e $69
    daa                                           ; $62df: $27
    reti                                          ; $62e0: $d9


    ld a, a                                       ; $62e1: $7f

jr_068_62e2:
    sbc [hl]                                      ; $62e2: $9e
    ld [hl], d                                    ; $62e3: $72
    db $d3                                        ; $62e4: $d3
    rlca                                          ; $62e5: $07
    add hl, bc                                    ; $62e6: $09
    xor d                                         ; $62e7: $aa
    add sp, -$31                                  ; $62e8: $e8 $cf
    dec h                                         ; $62ea: $25
    ldh [$99], a                                  ; $62eb: $e0 $99
    ld [hl], b                                    ; $62ed: $70
    ld a, [bc]                                    ; $62ee: $0a
    call $dd6b                                    ; $62ef: $cd $6b $dd
    cp a                                          ; $62f2: $bf
    dec hl                                        ; $62f3: $2b
    call nz, $fac0                                ; $62f4: $c4 $c0 $fa
    ld h, e                                       ; $62f7: $63
    dec a                                         ; $62f8: $3d
    ei                                            ; $62f9: $fb
    ret c                                         ; $62fa: $d8

    ld e, [hl]                                    ; $62fb: $5e
    adc h                                         ; $62fc: $8c
    cp c                                          ; $62fd: $b9
    ccf                                           ; $62fe: $3f
    sub a                                         ; $62ff: $97
    ld c, e                                       ; $6300: $4b
    halt                                          ; $6301: $76
    add l                                         ; $6302: $85
    ld e, l                                       ; $6303: $5d
    ld c, l                                       ; $6304: $4d
    add hl, sp                                    ; $6305: $39
    ld [hl], h                                    ; $6306: $74
    ld e, l                                       ; $6307: $5d
    sbc l                                         ; $6308: $9d
    ld [hl-], a                                   ; $6309: $32
    adc h                                         ; $630a: $8c
    xor b                                         ; $630b: $a8
    sbc $f7                                       ; $630c: $de $f7
    ld d, e                                       ; $630e: $53
    ei                                            ; $630f: $fb
    adc a                                         ; $6310: $8f
    inc l                                         ; $6311: $2c
    ld d, $d4                                     ; $6312: $16 $d4
    rra                                           ; $6314: $1f
    db $eb                                        ; $6315: $eb
    reti                                          ; $6316: $d9


    rst $00                                       ; $6317: $c7
    or $62                                        ; $6318: $f6 $62
    call z, Call_000_01fd                         ; $631a: $cc $fd $01
    add hl, bc                                    ; $631d: $09
    sbc d                                         ; $631e: $9a
    add hl, hl                                    ; $631f: $29
    ld b, a                                       ; $6320: $47
    ei                                            ; $6321: $fb
    adc a                                         ; $6322: $8f
    db $f4                                        ; $6323: $f4
    cp h                                          ; $6324: $bc
    ret z                                         ; $6325: $c8

    jr nc, jr_068_62e2                            ; $6326: $30 $ba

    jp hl                                         ; $6328: $e9


    inc bc                                        ; $6329: $03
    db $db                                        ; $632a: $db
    add h                                         ; $632b: $84
    db $d3                                        ; $632c: $d3
    adc h                                         ; $632d: $8c
    xor b                                         ; $632e: $a8
    push af                                       ; $632f: $f5

Call_068_6330:
    jr nz, jr_068_639c                            ; $6330: $20 $6a

    sub a                                         ; $6332: $97
    db $dd                                        ; $6333: $dd
    ld d, d                                       ; $6334: $52
    xor $85                                       ; $6335: $ee $85
    pop de                                        ; $6337: $d1
    xor d                                         ; $6338: $aa
    di                                            ; $6339: $f3
    cp [hl]                                       ; $633a: $be
    rst $38                                       ; $633b: $ff
    ld hl, $e866                                  ; $633c: $21 $66 $e8
    db $fd                                        ; $633f: $fd
    ld bc, $4ce7                                  ; $6340: $01 $e7 $4c
    ld a, [hl]                                    ; $6343: $7e
    rst $38                                       ; $6344: $ff
    sbc d                                         ; $6345: $9a
    cp l                                          ; $6346: $bd
    ld l, c                                       ; $6347: $69
    sbc b                                         ; $6348: $98
    ld l, [hl]                                    ; $6349: $6e
    ld [hl], l                                    ; $634a: $75
    adc e                                         ; $634b: $8b
    rrca                                          ; $634c: $0f
    rst $18                                       ; $634d: $df
    add a                                         ; $634e: $87
    ld a, l                                       ; $634f: $7d
    db $db                                        ; $6350: $db
    and b                                         ; $6351: $a0
    add hl, de                                    ; $6352: $19
    sub l                                         ; $6353: $95
    inc hl                                        ; $6354: $23
    ld de, $74f3                                  ; $6355: $11 $f3 $74
    xor d                                         ; $6358: $aa
    ld a, c                                       ; $6359: $79
    ld a, [hl]                                    ; $635a: $7e
    add c                                         ; $635b: $81
    ld e, l                                       ; $635c: $5d
    rst $10                                       ; $635d: $d7
    push hl                                       ; $635e: $e5
    ret                                           ; $635f: $c9


    sub a                                         ; $6360: $97
    add hl, de                                    ; $6361: $19
    and $be                                       ; $6362: $e6 $be
    rst $28                                       ; $6364: $ef
    rrca                                          ; $6365: $0f
    db $db                                        ; $6366: $db
    sbc e                                         ; $6367: $9b
    ld [hl], d                                    ; $6368: $72
    ld l, b                                       ; $6369: $68
    add [hl]                                      ; $636a: $86
    db $ec                                        ; $636b: $ec
    cp $5d                                        ; $636c: $fe $5d
    ld hl, $6e06                                  ; $636e: $21 $06 $6e
    ld a, [$db00]                                 ; $6371: $fa $00 $db
    and b                                         ; $6374: $a0
    add hl, de                                    ; $6375: $19
    sub l                                         ; $6376: $95
    inc hl                                        ; $6377: $23
    ld de, $74f3                                  ; $6378: $11 $f3 $74
    xor d                                         ; $637b: $aa
    ld a, c                                       ; $637c: $79
    ld a, [hl]                                    ; $637d: $7e
    add c                                         ; $637e: $81
    ld e, l                                       ; $637f: $5d
    rst $10                                       ; $6380: $d7
    push hl                                       ; $6381: $e5
    ret                                           ; $6382: $c9


    sub a                                         ; $6383: $97
    add hl, de                                    ; $6384: $19
    and $be                                       ; $6385: $e6 $be
    rst $28                                       ; $6387: $ef
    rrca                                          ; $6388: $0f
    ld [c], a                                     ; $6389: $e2
    cpl                                           ; $638a: $2f
    ld b, $d6                                     ; $638b: $06 $d6
    inc bc                                        ; $638d: $03
    reti                                          ; $638e: $d9


    sub h                                         ; $638f: $94
    ld b, e                                       ; $6390: $43
    ld a, l                                       ; $6391: $7d
    rla                                           ; $6392: $17
    ret nc                                        ; $6393: $d0

Call_068_6394:
Jump_068_6394:
    ld a, a                                       ; $6394: $7f
    and h                                         ; $6395: $a4
    ld l, a                                       ; $6396: $6f
    or h                                          ; $6397: $b4
    and [hl]                                      ; $6398: $a6
    inc e                                         ; $6399: $1c
    sub a                                         ; $639a: $97
    sub h                                         ; $639b: $94

jr_068_639c:
    add e                                         ; $639c: $83
    push af                                       ; $639d: $f5

Call_068_639e:
    sbc a                                         ; $639e: $9f
    and a                                         ; $639f: $a7
    cp h                                          ; $63a0: $bc
    ccf                                           ; $63a1: $3f
    db $db                                        ; $63a2: $db
    sub a                                         ; $63a3: $97
    inc h                                         ; $63a4: $24
    sbc e                                         ; $63a5: $9b
    ld [hl], d                                    ; $63a6: $72
    xor b                                         ; $63a7: $a8
    adc a                                         ; $63a8: $8f
    ret z                                         ; $63a9: $c8

    cp e                                          ; $63aa: $bb
    rst $20                                       ; $63ab: $e7
    and d                                         ; $63ac: $a2
    ccf                                           ; $63ad: $3f
    inc l                                         ; $63ae: $2c
    ld h, e                                       ; $63af: $63
    rla                                           ; $63b0: $17
    sbc e                                         ; $63b1: $9b
    ld [hl], d                                    ; $63b2: $72
    ld l, b                                       ; $63b3: $68
    inc d                                         ; $63b4: $14
    ld c, [hl]                                    ; $63b5: $4e

jr_068_63b6:
    and l                                         ; $63b6: $a5
    dec bc                                        ; $63b7: $0b
    call nc, $f406                                ; $63b8: $d4 $06 $f4
    dec b                                         ; $63bb: $05
    inc a                                         ; $63bc: $3c
    ld l, [hl]                                    ; $63bd: $6e
    ld a, [$db00]                                 ; $63be: $fa $00 $db
    db $eb                                        ; $63c1: $eb
    dec de                                        ; $63c2: $1b
    sub $4f                                       ; $63c3: $d6 $4f
    rst $10                                       ; $63c5: $d7
    dec [hl]                                      ; $63c6: $35
    and b                                         ; $63c7: $a0
    ld h, a                                       ; $63c8: $67
    rra                                           ; $63c9: $1f
    db $db                                        ; $63ca: $db
    adc e                                         ; $63cb: $8b
    ld sp, $07f7                                  ; $63cc: $31 $f7 $07
    db $db                                        ; $63cf: $db
    add h                                         ; $63d0: $84
    db $d3                                        ; $63d1: $d3
    ld [hl], l                                    ; $63d2: $75
    adc l                                         ; $63d3: $8d
    or e                                          ; $63d4: $b3
    sbc d                                         ; $63d5: $9a
    ei                                            ; $63d6: $fb
    cp [hl]                                       ; $63d7: $be
    ld a, e                                       ; $63d8: $7b
    xor $b8                                       ; $63d9: $ee $b8
    sbc [hl]                                      ; $63db: $9e
    ld a, l                                       ; $63dc: $7d
    ld l, h                                       ; $63dd: $6c
    cpl                                           ; $63de: $2f
    add $dc                                       ; $63df: $c6 $dc
    rra                                           ; $63e1: $1f
    sbc e                                         ; $63e2: $9b
    ld b, a                                       ; $63e3: $47
    ld a, d                                       ; $63e4: $7a
    ld e, [hl]                                    ; $63e5: $5e
    ld h, h                                       ; $63e6: $64
    sbc b                                         ; $63e7: $98
    ld c, l                                       ; $63e8: $4d
    rra                                           ; $63e9: $1f

Jump_068_63ea:
    db $db                                        ; $63ea: $db
    add h                                         ; $63eb: $84
    db $d3                                        ; $63ec: $d3
    adc h                                         ; $63ed: $8c
    sbc b                                         ; $63ee: $98
    sbc h                                         ; $63ef: $9c
    ld d, d                                       ; $63f0: $52
    push af                                       ; $63f1: $f5
    ret                                           ; $63f2: $c9


    ld h, [hl]                                    ; $63f3: $66
    add $3c                                       ; $63f4: $c6 $3c
    jp c, Jump_000_0705                           ; $63f6: $da $05 $07

    ld b, e                                       ; $63f9: $43

Jump_068_63fa:
    rst $28                                       ; $63fa: $ef
    rrca                                          ; $63fb: $0f
    rst $20                                       ; $63fc: $e7
    adc $0f                                       ; $63fd: $ce $0f
    ld l, l                                       ; $63ff: $6d
    sbc b                                         ; $6400: $98

jr_068_6401:
    xor $70                                       ; $6401: $ee $70
    ld l, c                                       ; $6403: $69
    sbc d                                         ; $6404: $9a
    cp a                                          ; $6405: $bf
    jr c, jr_068_6401                             ; $6406: $38 $f9

    ld bc, $40e7                                  ; $6408: $01 $e7 $40
    ld l, [hl]                                    ; $640b: $6e
    ld e, h                                       ; $640c: $5c
    cp l                                          ; $640d: $bd
    jr jr_068_63b6                                ; $640e: $18 $a6

    inc e                                         ; $6410: $1c
    db $ed                                        ; $6411: $ed
    cp c                                          ; $6412: $b9
    di                                            ; $6413: $f3
    ld b, e                                       ; $6414: $43
    adc e                                         ; $6415: $8b
    sbc [hl]                                      ; $6416: $9e
    inc sp                                        ; $6417: $33
    jp nc, Jump_068_5133                          ; $6418: $d2 $33 $51

    cp e                                          ; $641b: $bb
    ld [hl], l                                    ; $641c: $75
    dec l                                         ; $641d: $2d
    db $fd                                        ; $641e: $fd
    cp $d1                                        ; $641f: $fe $d1
    rrca                                          ; $6421: $0f
    db $db                                        ; $6422: $db
    add h                                         ; $6423: $84
    db $d3                                        ; $6424: $d3
    ld a, a                                       ; $6425: $7f
    inc [hl]                                      ; $6426: $34
    dec sp                                        ; $6427: $3b
    add hl, sp                                    ; $6428: $39
    ld e, l                                       ; $6429: $5d
    call $6992                                    ; $642a: $cd $92 $69
    ld h, l                                       ; $642d: $65
    rst $38                                       ; $642e: $ff
    sub c                                         ; $642f: $91
    cp [hl]                                       ; $6430: $be
    pop de                                        ; $6431: $d1
    ld a, [de]                                    ; $6432: $1a
    and $87                                       ; $6433: $e6 $87
    sbc $f7                                       ; $6435: $de $f7
    ld e, l                                       ; $6437: $5d
    ld c, c                                       ; $6438: $49
    db $ed                                        ; $6439: $ed
    inc [hl]                                      ; $643a: $34
    push hl                                       ; $643b: $e5
    ret nc                                        ; $643c: $d0

    adc h                                         ; $643d: $8c
    xor b                                         ; $643e: $a8
    push hl                                       ; $643f: $e5
    ld l, [hl]                                    ; $6440: $6e
    sbc e                                         ; $6441: $9b
    ld a, $db                                     ; $6442: $3e $db
    sbc e                                         ; $6444: $9b
    ld [hl], d                                    ; $6445: $72
    ld l, b                                       ; $6446: $68
    ld b, [hl]                                    ; $6447: $46
    db $fd                                        ; $6448: $fd
    ld d, c                                       ; $6449: $51
    sbc l                                         ; $644a: $9d
    jp nc, Jump_068_518c                          ; $644b: $d2 $8c $51

    nop                                           ; $644e: $00
    ld l, l                                       ; $644f: $6d
    ld d, e                                       ; $6450: $53
    ei                                            ; $6451: $fb
    ld bc, $cb97                                  ; $6452: $01 $97 $cb
    add [hl]                                      ; $6455: $86
    pop de                                        ; $6456: $d1
    ld c, d                                       ; $6457: $4a
    jr c, @-$51                                   ; $6458: $38 $ad

    sub a                                         ; $645a: $97
    xor e                                         ; $645b: $ab
    or c                                          ; $645c: $b1
    sub a                                         ; $645d: $97
    ld b, a                                       ; $645e: $47
    scf                                           ; $645f: $37
    ld [hl], h                                    ; $6460: $74
    dec hl                                        ; $6461: $2b
    sbc a                                         ; $6462: $9f
    sub [hl]                                      ; $6463: $96
    ld c, e                                       ; $6464: $4b
    jp c, $f649                                   ; $6465: $da $49 $f6

    sbc a                                         ; $6468: $9f
    and a                                         ; $6469: $a7
    call c, $01f4                                 ; $646a: $dc $f4 $01
    db $db                                        ; $646d: $db
    adc l                                         ; $646e: $8d
    and d                                         ; $646f: $a2
    and [hl]                                      ; $6470: $a6
    inc e                                         ; $6471: $1c
    ld a, [$53cf]                                 ; $6472: $fa $cf $53
    or $4f                                        ; $6475: $f6 $4f
    ld [hl-], a                                   ; $6477: $32
    di                                            ; $6478: $f3
    xor $56                                       ; $6479: $ee $56
    ld a, $2d                                     ; $647b: $3e $2d
    sub a                                         ; $647d: $97
    or h                                          ; $647e: $b4
    sub e                                         ; $647f: $93
    db $ec                                        ; $6480: $ec
    ccf                                           ; $6481: $3f
    ld c, a                                       ; $6482: $4f
    cp c                                          ; $6483: $b9
    jp hl                                         ; $6484: $e9


    inc bc                                        ; $6485: $03
    ld [c], a                                     ; $6486: $e2
    ld a, $22                                     ; $6487: $3e $22
    or l                                          ; $6489: $b5
    ld h, a                                       ; $648a: $67
    rra                                           ; $648b: $1f
    db $db                                        ; $648c: $db
    adc e                                         ; $648d: $8b
    ld sp, $07f7                                  ; $648e: $31 $f7 $07
    adc c                                         ; $6491: $89
    and e                                         ; $6492: $a3
    ld a, [hl-]                                   ; $6493: $3a
    dec c                                         ; $6494: $0d
    or h                                          ; $6495: $b4
    adc l                                         ; $6496: $8d
    add hl, de                                    ; $6497: $19
    dec a                                         ; $6498: $3d
    ei                                            ; $6499: $fb
    ret c                                         ; $649a: $d8

    ld b, $2c                                     ; $649b: $06 $2c
    rst $28                                       ; $649d: $ef
    ld a, a                                       ; $649e: $7f
    and e                                         ; $649f: $a3
    db $d3                                        ; $64a0: $d3
    adc e                                         ; $64a1: $8b
    ld sp, $07f7                                  ; $64a2: $31 $f7 $07
    adc c                                         ; $64a5: $89
    inc [hl]                                      ; $64a6: $34
    db $fc                                        ; $64a7: $fc
    ret c                                         ; $64a8: $d8

    sbc b                                         ; $64a9: $98
    ld d, c                                       ; $64aa: $51
    rrca                                          ; $64ab: $0f
    db $e4                                        ; $64ac: $e4

jr_068_64ad:
    and [hl]                                      ; $64ad: $a6
    rrca                                          ; $64ae: $0f
    ld [c], a                                     ; $64af: $e2
    ld a, a                                       ; $64b0: $7f
    ld [hl], d                                    ; $64b1: $72
    sbc d                                         ; $64b2: $9a
    ld [hl], d                                    ; $64b3: $72
    add sp, -$46                                  ; $64b4: $e8 $ba
    ld b, $48                                     ; $64b6: $06 $48
    ld [$9863], a                                 ; $64b8: $ea $63 $98
    xor d                                         ; $64bb: $aa
    di                                            ; $64bc: $f3
    ld l, b                                       ; $64bd: $68
    ld h, [hl]                                    ; $64be: $66
    db $fc                                        ; $64bf: $fc
    rra                                           ; $64c0: $1f
    sub a                                         ; $64c1: $97
    ld a, [$7634]                                 ; $64c2: $fa $34 $76
    sbc d                                         ; $64c5: $9a
    pop hl                                        ; $64c6: $e1
    sbc d                                         ; $64c7: $9a
    ld e, $cd                                     ; $64c8: $1e $cd
    ld [hl], e                                    ; $64ca: $73
    ld [hl], a                                    ; $64cb: $77
    dec hl                                        ; $64cc: $2b
    sbc a                                         ; $64cd: $9f
    sub [hl]                                      ; $64ce: $96
    ld c, e                                       ; $64cf: $4b
    jp c, $f649                                   ; $64d0: $da $49 $f6

    sbc a                                         ; $64d3: $9f
    and a                                         ; $64d4: $a7
    call c, $01f4                                 ; $64d5: $dc $f4 $01
    ld e, e                                       ; $64d8: $5b
    add hl, de                                    ; $64d9: $19
    jr z, jr_068_64ad                             ; $64da: $28 $d1

    xor l                                         ; $64dc: $ad
    ld e, h                                       ; $64dd: $5c
    inc b                                         ; $64de: $04
    cp [hl]                                       ; $64df: $be
    ld hl, sp+$01                                 ; $64e0: $f8 $01
    rst $20                                       ; $64e2: $e7
    ld b, b                                       ; $64e3: $40
    ld l, [hl]                                    ; $64e4: $6e
    ld e, h                                       ; $64e5: $5c
    cp l                                          ; $64e6: $bd
    jr @-$58                                      ; $64e7: $18 $a6

    ei                                            ; $64e9: $fb
    ld [hl], a                                    ; $64ea: $77
    add hl, de                                    ; $64eb: $19
    ld bc, $606c                                  ; $64ec: $01 $6c $60
    or a                                          ; $64ef: $b7
    ld [hl-], a                                   ; $64f0: $32
    ld d, b                                       ; $64f1: $50
    and d                                         ; $64f2: $a2
    ld e, e                                       ; $64f3: $5b
    cp c                                          ; $64f4: $b9
    ld [$f17c], sp                                ; $64f5: $08 $7c $f1
    or h                                          ; $64f8: $b4
    ld l, [hl]                                    ; $64f9: $6e
    and [hl]                                      ; $64fa: $a6
    ld c, a                                       ; $64fb: $4f
    xor l                                         ; $64fc: $ad
    ld c, a                                       ; $64fd: $4f
    ld h, e                                       ; $64fe: $63
    cpl                                           ; $64ff: $2f
    sbc e                                         ; $6500: $9b
    ld b, b                                       ; $6501: $40
    dec l                                         ; $6502: $2d
    or l                                          ; $6503: $b5
    db $db                                        ; $6504: $db
    ld a, a                                       ; $6505: $7f
    ld [$183b], a                                 ; $6506: $ea $3b $18
    ld a, d                                       ; $6509: $7a
    ld a, a                                       ; $650a: $7f
    sub a                                         ; $650b: $97
    ld hl, $b96a                                  ; $650c: $21 $6a $b9
    and h                                         ; $650f: $a4
    sbc l                                         ; $6510: $9d
    ld h, h                                       ; $6511: $64
    rst $38                                       ; $6512: $ff
    ld a, c                                       ; $6513: $79
    jp z, Jump_000_34fa                           ; $6514: $ca $fa $34

    halt                                          ; $6517: $76
    add l                                         ; $6518: $85
    jr jr_068_657b                                ; $6519: $18 $60

    and d                                         ; $651b: $a2
    and [hl]                                      ; $651c: $a6
    inc e                                         ; $651d: $1c
    db $ec                                        ; $651e: $ec
    add l                                         ; $651f: $85
    rla                                           ; $6520: $17
    sub e                                         ; $6521: $93
    or e                                          ; $6522: $b3
    xor c                                         ; $6523: $a9
    db $db                                        ; $6524: $db
    adc l                                         ; $6525: $8d
    dec c                                         ; $6526: $0d
    ld a, b                                       ; $6527: $78
    add d                                         ; $6528: $82
    reti                                          ; $6529: $d9


    dec d                                         ; $652a: $15
    db $ec                                        ; $652b: $ec
    cp $00                                        ; $652c: $fe $00
    rst $20                                       ; $652e: $e7
    and d                                         ; $652f: $a2
    add hl, hl                                    ; $6530: $29
    add a                                         ; $6531: $87
    ld a, [$ff86]                                 ; $6532: $fa $86 $ff
    add hl, hl                                    ; $6535: $29
    ld [hl], l                                    ; $6536: $75
    ld d, e                                       ; $6537: $53
    cpl                                           ; $6538: $2f
    ld b, e                                       ; $6539: $43
    ld c, h                                       ; $653a: $4c
    ld c, [hl]                                    ; $653b: $4e
    reti                                          ; $653c: $d9


    rra                                           ; $653d: $1f
    sub [hl]                                      ; $653e: $96
    or c                                          ; $653f: $b1
    adc e                                         ; $6540: $8b
    dec c                                         ; $6541: $0d
    ld l, b                                       ; $6542: $68

jr_068_6543:
    jp z, Jump_000_19a1                           ; $6543: $ca $a1 $19

    ld [hl], d                                    ; $6546: $72
    or h                                          ; $6547: $b4
    db $d3                                        ; $6548: $d3
    inc c                                         ; $6549: $0c
    rst $10                                       ; $654a: $d7
    ld c, h                                       ; $654b: $4c
    ret                                           ; $654c: $c9


    sbc b                                         ; $654d: $98
    sbc h                                         ; $654e: $9c
    ei                                            ; $654f: $fb
    inc bc                                        ; $6550: $03
    ld d, a                                       ; $6551: $57
    ldh a, [$d5]                                  ; $6552: $f0 $d5
    ei                                            ; $6554: $fb
    ld a, [hl]                                    ; $6555: $7e
    jp c, $8cc6                                   ; $6556: $da $c6 $8c

    ld c, d                                       ; $6559: $4a
    rst $30                                       ; $655a: $f7
    ld a, [c]                                     ; $655b: $f2
    call nc, Call_068_7903                        ; $655c: $d4 $03 $79
    ld [hl], a                                    ; $655f: $77
    dec hl                                        ; $6560: $2b
    sbc a                                         ; $6561: $9f
    sub [hl]                                      ; $6562: $96
    ld c, e                                       ; $6563: $4b
    jp c, $f649                                   ; $6564: $da $49 $f6

    sbc a                                         ; $6567: $9f
    and a                                         ; $6568: $a7
    call c, $01f4                                 ; $6569: $dc $f4 $01
    sub a                                         ; $656c: $97
    jr c, jr_068_6543                             ; $656d: $38 $d4

    ld b, a                                       ; $656f: $47
    and h                                         ; $6570: $a4
    xor b                                         ; $6571: $a8
    add hl, hl                                    ; $6572: $29
    rlca                                          ; $6573: $07
    ld a, e                                       ; $6574: $7b
    ld h, c                                       ; $6575: $61
    xor $6e                                       ; $6576: $ee $6e
    push hl                                       ; $6578: $e5
    db $d3                                        ; $6579: $d3
    ld [hl], d                                    ; $657a: $72

jr_068_657b:
    ld c, c                                       ; $657b: $49
    dec sp                                        ; $657c: $3b
    ret                                           ; $657d: $c9


    cp $f3                                        ; $657e: $fe $f3
    sub h                                         ; $6580: $94
    sbc e                                         ; $6581: $9b
    ld a, $57                                     ; $6582: $3e $57
    ldh a, [$f5]                                  ; $6584: $f0 $f5
    ld [hl], a                                    ; $6586: $77
    sbc d                                         ; $6587: $9a
    ld l, c                                       ; $6588: $69
    dec a                                         ; $6589: $3d
    ei                                            ; $658a: $fb
    ret c                                         ; $658b: $d8

    ld e, [hl]                                    ; $658c: $5e
    adc h                                         ; $658d: $8c
    cp c                                          ; $658e: $b9
    ccf                                           ; $658f: $3f
    ld [c], a                                     ; $6590: $e2
    ld a, a                                       ; $6591: $7f
    ld [hl], d                                    ; $6592: $72
    sbc d                                         ; $6593: $9a
    ld [hl], d                                    ; $6594: $72
    xor b                                         ; $6595: $a8
    ccf                                           ; $6596: $3f
    xor d                                         ; $6597: $aa
    db $d3                                        ; $6598: $d3
    ld b, b                                       ; $6599: $40
    db $db                                        ; $659a: $db
    sbc b                                         ; $659b: $98
    pop de                                        ; $659c: $d1
    or e                                          ; $659d: $b3
    adc a                                         ; $659e: $8f
    db $ed                                        ; $659f: $ed
    push bc                                       ; $65a0: $c5
    sbc b                                         ; $65a1: $98
    ei                                            ; $65a2: $fb
    inc bc                                        ; $65a3: $03
    dec sp                                        ; $65a4: $3b
    ld h, b                                       ; $65a5: $60
    dec hl                                        ; $65a6: $2b
    ld l, h                                       ; $65a7: $6c
    call z, $f4d8                                 ; $65a8: $cc $d8 $f4
    ld bc, $a95b                                  ; $65ab: $01 $5b $a9
    ld e, l                                       ; $65ae: $5d
    rst $10                                       ; $65af: $d7
    nop                                           ; $65b0: $00
    ld c, c                                       ; $65b1: $49
    ld a, l                                       ; $65b2: $7d
    inc c                                         ; $65b3: $0c
    db $d3                                        ; $65b4: $d3
    sbc a                                         ; $65b5: $9f
    ld [hl], $a2                                  ; $65b6: $36 $a2
    ld b, [hl]                                    ; $65b8: $46
    pop hl                                        ; $65b9: $e1
    ld [hl], h                                    ; $65ba: $74
    db $dd                                        ; $65bb: $dd
    and [hl]                                      ; $65bc: $a6
    ld l, [hl]                                    ; $65bd: $6e
    push hl                                       ; $65be: $e5
    db $d3                                        ; $65bf: $d3
    ld [hl], d                                    ; $65c0: $72
    ld c, c                                       ; $65c1: $49
    dec sp                                        ; $65c2: $3b
    ret                                           ; $65c3: $c9


    cp $f3                                        ; $65c4: $fe $f3
    sub h                                         ; $65c6: $94
    sbc e                                         ; $65c7: $9b
    ld a, $9b                                     ; $65c8: $3e $9b
    ld l, c                                       ; $65ca: $69
    or $62                                        ; $65cb: $f6 $62
    ld [hl], d                                    ; $65cd: $72
    ld a, [de]                                    ; $65ce: $1a
    ret nc                                        ; $65cf: $d0

    ld [hl], e                                    ; $65d0: $73
    rst $20                                       ; $65d1: $e7
    add a                                         ; $65d2: $87
    ld a, [hl]                                    ; $65d3: $7e
    add hl, bc                                    ; $65d4: $09
    ld sp, $a70b                                  ; $65d5: $31 $0b $a7
    add hl, hl                                    ; $65d8: $29
    rlca                                          ; $65d9: $07
    add e                                         ; $65da: $83
    ld [hl], $cc                                  ; $65db: $36 $cc
    rrca                                          ; $65dd: $0f
    dec d                                         ; $65de: $15
    ld [hl], l                                    ; $65df: $75
    db $dd                                        ; $65e0: $dd
    and [hl]                                      ; $65e1: $a6
    halt                                          ; $65e2: $76
    xor e                                         ; $65e3: $ab
    ld a, e                                       ; $65e4: $7b
    ld a, c                                       ; $65e5: $79
    ld [$bc81], a                                 ; $65e6: $ea $81 $bc
    ccf                                           ; $65e9: $3f
    rst $20                                       ; $65ea: $e7
    ld [c], a                                     ; $65eb: $e2
    add hl, bc                                    ; $65ec: $09
    ld b, [hl]                                    ; $65ed: $46
    rst $38                                       ; $65ee: $ff
    or l                                          ; $65ef: $b5
    xor [hl]                                      ; $65f0: $ae
    ld h, b                                       ; $65f1: $60
    sbc l                                         ; $65f2: $9d
    and [hl]                                      ; $65f3: $a6
    inc e                                         ; $65f4: $1c
    sbc d                                         ; $65f5: $9a
    ld hl, $d3eb                                  ; $65f6: $21 $eb $d3
    ret c                                         ; $65f9: $d8

    pop af                                        ; $65fa: $f1
    jp nz, $c3f0                                  ; $65fb: $c2 $f0 $c3

    xor $0f                                       ; $65fe: $ee $0f
    add hl, bc                                    ; $6600: $09
    ld sp, $470b                                  ; $6601: $31 $0b $47
    call nc, $8394                                ; $6604: $d4 $94 $83
    cp l                                          ; $6607: $bd
    jr nc, @-$5c                                  ; $6608: $30 $a2

    ld c, [hl]                                    ; $660a: $4e
    ld d, e                                       ; $660b: $53
    ld c, $5d                                     ; $660c: $0e $5d
    pop af                                        ; $660e: $f1
    ld d, l                                       ; $660f: $55
    ld h, c                                       ; $6610: $61
    sbc e                                         ; $6611: $9b
    ld a, $57                                     ; $6612: $3e $57
    ldh a, [rBCPD]                                ; $6614: $f0 $69
    ld d, a                                       ; $6616: $57
    or b                                          ; $6617: $b0
    and [hl]                                      ; $6618: $a6
    inc e                                         ; $6619: $1c
    ld a, [$4f34]                                 ; $661a: $fa $34 $4f
    dec h                                         ; $661d: $25
    inc sp                                        ; $661e: $33
    res 4, [hl]                                   ; $661f: $cb $a6
    db $dd                                        ; $6621: $dd
    ld [hl-], a                                   ; $6622: $32
    pop hl                                        ; $6623: $e1
    db $fd                                        ; $6624: $fd
    cp b                                          ; $6625: $b8
    db $db                                        ; $6626: $db
    xor l                                         ; $6627: $ad
    ld a, h                                       ; $6628: $7c
    ld e, d                                       ; $6629: $5a
    ld l, $69                                     ; $662a: $2e $69
    daa                                           ; $662c: $27
    reti                                          ; $662d: $d9


    ld a, a                                       ; $662e: $7f
    sbc [hl]                                      ; $662f: $9e
    ld [hl], d                                    ; $6630: $72
    db $d3                                        ; $6631: $d3
    rlca                                          ; $6632: $07
    db $db                                        ; $6633: $db
    sub a                                         ; $6634: $97
    inc h                                         ; $6635: $24
    sbc e                                         ; $6636: $9b
    ld [hl], d                                    ; $6637: $72
    xor b                                         ; $6638: $a8
    adc a                                         ; $6639: $8f
    ret z                                         ; $663a: $c8

    cp e                                          ; $663b: $bb
    db $dd                                        ; $663c: $dd
    jp z, $e5a7                                   ; $663d: $ca $a7 $e5

    sub d                                         ; $6640: $92
    halt                                          ; $6641: $76
    sub d                                         ; $6642: $92
    db $fd                                        ; $6643: $fd
    rst $20                                       ; $6644: $e7
    add hl, hl                                    ; $6645: $29
    scf                                           ; $6646: $37
    ld a, l                                       ; $6647: $7d
    ld e, e                                       ; $6648: $5b
    db $dd                                        ; $6649: $dd
    bit 2, e                                      ; $664a: $cb $53
    and l                                         ; $664c: $a5
    ld h, a                                       ; $664d: $67
    ld l, h                                       ; $664e: $6c
    ld [hl], h                                    ; $664f: $74
    ld b, h                                       ; $6650: $44
    push af                                       ; $6651: $f5

jr_068_6652:
    rst $00                                       ; $6652: $c7
    ld c, d                                       ; $6653: $4a
    rra                                           ; $6654: $1f
    sub c                                         ; $6655: $91
    jp c, $8fb3                                   ; $6656: $da $b3 $8f

    db $ed                                        ; $6659: $ed
    push bc                                       ; $665a: $c5
    sbc b                                         ; $665b: $98
    ei                                            ; $665c: $fb
    inc bc                                        ; $665d: $03
    sbc e                                         ; $665e: $9b
    ld b, a                                       ; $665f: $47
    ld a, [$f536]                                 ; $6660: $fa $36 $f5
    rst $00                                       ; $6663: $c7
    ld a, d                                       ; $6664: $7a
    or $b1                                        ; $6665: $f6 $b1
    cp l                                          ; $6667: $bd
    jr jr_068_66dd                                ; $6668: $18 $73

    ld a, a                                       ; $666a: $7f
    add hl, bc                                    ; $666b: $09
    ld sp, $470b                                  ; $666c: $31 $0b $47
    ld d, h                                       ; $666f: $54
    ld l, b                                       ; $6670: $68
    and [hl]                                      ; $6671: $a6
    inc e                                         ; $6672: $1c
    db $ed                                        ; $6673: $ed
    ccf                                           ; $6674: $3f
    jp nc, Jump_000_22f3                          ; $6675: $d2 $f3 $22

    jp $a6e8                                      ; $6678: $c3 $e8 $a6


    rrca                                          ; $667b: $0f
    db $db                                        ; $667c: $db
    sub e                                         ; $667d: $93
    and d                                         ; $667e: $a2
    ld a, [c]                                     ; $667f: $f2
    ld c, a                                       ; $6680: $4f
    ld c, [hl]                                    ; $6681: $4e
    ld d, e                                       ; $6682: $53
    ld c, $8d                                     ; $6683: $0e $8d
    jp nz, Jump_068_4669                          ; $6685: $c2 $69 $46

    ld c, h                                       ; $6688: $4c
    ld c, [hl]                                    ; $6689: $4e
    jp Jump_068_498b                              ; $668a: $c3 $8b $49


    inc a                                         ; $668d: $3c
    sbc e                                         ; $668e: $9b
    xor d                                         ; $668f: $aa
    di                                            ; $6690: $f3
    cp [hl]                                       ; $6691: $be
    rst $38                                       ; $6692: $ff
    ld hl, $dc66                                  ; $6693: $21 $66 $dc
    rra                                           ; $6696: $1f
    ld [c], a                                     ; $6697: $e2
    ld h, $b9                                     ; $6698: $26 $b9
    ld l, e                                       ; $669a: $6b
    sbc l                                         ; $669b: $9d
    ld l, h                                       ; $669c: $6c
    jr @-$11                                      ; $669d: $18 $ed

    sub l                                         ; $669f: $95
    and b                                         ; $66a0: $a0
    ld l, $d8                                     ; $66a1: $2e $d8
    ld sp, hl                                     ; $66a3: $f9
    ld bc, $40e7                                  ; $66a4: $01 $e7 $40
    ld l, [hl]                                    ; $66a7: $6e
    ld e, h                                       ; $66a8: $5c
    cp l                                          ; $66a9: $bd
    jr jr_068_6652                                ; $66aa: $18 $a6

    sbc h                                         ; $66ac: $9c
    adc d                                         ; $66ad: $8a

Jump_068_66ae:
    sbc e                                         ; $66ae: $9b
    db $e4                                        ; $66af: $e4

Call_068_66b0:
    xor [hl]                                      ; $66b0: $ae
    ld [hl], l                                    ; $66b1: $75
    or d                                          ; $66b2: $b2
    ld bc, $773d                                  ; $66b3: $01 $3d $77
    ld a, [hl]                                    ; $66b6: $7e
    ld l, b                                       ; $66b7: $68
    jp $af68                                      ; $66b8: $c3 $68 $af


    inc b                                         ; $66bb: $04
    ld [hl], l                                    ; $66bc: $75
    pop bc                                        ; $66bd: $c1
    adc $fb                                       ; $66be: $ce $fb
    inc bc                                        ; $66c0: $03
    db $db                                        ; $66c1: $db
    sbc e                                         ; $66c2: $9b
    ld [hl], d                                    ; $66c3: $72
    ld l, b                                       ; $66c4: $68
    ld a, $50                                     ; $66c5: $3e $50
    sub $1f                                       ; $66c7: $d6 $1f
    db $eb                                        ; $66c9: $eb
    cp a                                          ; $66ca: $bf
    or [hl]                                       ; $66cb: $b6
    jp hl                                         ; $66cc: $e9


    inc bc                                        ; $66cd: $03
    db $db                                        ; $66ce: $db
    sbc e                                         ; $66cf: $9b
    ld [hl], d                                    ; $66d0: $72

Jump_068_66d1:
    xor b                                         ; $66d1: $a8
    ld l, a                                       ; $66d2: $6f
    di                                            ; $66d3: $f3
    dec sp                                        ; $66d4: $3b
    and e                                         ; $66d5: $a3
    ld l, [hl]                                    ; $66d6: $6e
    ld a, [$6700]                                 ; $66d7: $fa $00 $67
    call nc, $bec9                                ; $66da: $d4 $c9 $be

jr_068_66dd:
    inc c                                         ; $66dd: $0c
    ld e, c                                       ; $66de: $59
    add l                                         ; $66df: $85
    db $f4                                        ; $66e0: $f4
    dec c                                         ; $66e1: $0d
    sub l                                         ; $66e2: $95
    xor $e5                                       ; $66e3: $ee $e5
    xor c                                         ; $66e5: $a9
    ccf                                           ; $66e6: $3f
    cp [hl]                                       ; $66e7: $be
    ld e, e                                       ; $66e8: $5b
    ld l, b                                       ; $66e9: $68
    ld [hl], a                                    ; $66ea: $77
    cp e                                          ; $66eb: $bb
    sub l                                         ; $66ec: $95
    ld c, a                                       ; $66ed: $4f
    sla l                                         ; $66ee: $cb $25
    db $ed                                        ; $66f0: $ed
    inc h                                         ; $66f1: $24
    ei                                            ; $66f2: $fb
    rst $08                                       ; $66f3: $cf
    ld d, e                                       ; $66f4: $53
    ld l, [hl]                                    ; $66f5: $6e
    ld a, [$9700]                                 ; $66f6: $fa $00 $97
    ld [hl], c                                    ; $66f9: $71
    ld e, c                                       ; $66fa: $59
    ld h, c                                       ; $66fb: $61
    ld d, a                                       ; $66fc: $57
    and l                                         ; $66fd: $a5
    dec bc                                        ; $66fe: $0b
    ret nc                                        ; $66ff: $d0

    ld b, $f4                                     ; $6700: $06 $f4
    dec b                                         ; $6702: $05
    inc a                                         ; $6703: $3c
    ld l, d                                       ; $6704: $6a

jr_068_6705:
    dec h                                         ; $6705: $25
    sbc a                                         ; $6706: $9f
    ld [hl], $d3                                  ; $6707: $36 $d3
    ld [bc], a                                    ; $6709: $02
    xor $76                                       ; $670a: $ee $76
    dec hl                                        ; $670c: $2b
    sbc a                                         ; $670d: $9f
    sub [hl]                                      ; $670e: $96
    ld c, e                                       ; $670f: $4b
    jp c, $f649                                   ; $6710: $da $49 $f6

    sbc a                                         ; $6713: $9f
    and a                                         ; $6714: $a7
    call c, $01f4                                 ; $6715: $dc $f4 $01
    add hl, bc                                    ; $6718: $09
    xor d                                         ; $6719: $aa
    add sp, -$35                                  ; $671a: $e8 $cb
    sub b                                         ; $671c: $90
    db $fd                                        ; $671d: $fd
    sbc l                                         ; $671e: $9d
    ld h, [hl]                                    ; $671f: $66
    or $ec                                        ; $6720: $f6 $ec
    ld h, e                                       ; $6722: $63
    ld a, e                                       ; $6723: $7b
    ld sp, $fee6                                  ; $6724: $31 $e6 $fe
    nop                                           ; $6727: $00
    sub a                                         ; $6728: $97
    ld c, e                                       ; $6729: $4b
    halt                                          ; $672a: $76
    add l                                         ; $672b: $85
    ld e, l                                       ; $672c: $5d
    ld c, l                                       ; $672d: $4d
    add hl, sp                                    ; $672e: $39
    ld [hl], h                                    ; $672f: $74
    ld e, l                                       ; $6730: $5d
    sbc l                                         ; $6731: $9d
    ld [hl-], a                                   ; $6732: $32
    adc h                                         ; $6733: $8c
    xor b                                         ; $6734: $a8
    ld h, c                                       ; $6735: $61
    call c, $8cc6                                 ; $6736: $dc $c6 $8c
    sbc [hl]                                      ; $6739: $9e
    ld a, l                                       ; $673a: $7d
    ld l, h                                       ; $673b: $6c
    cpl                                           ; $673c: $2f
    add $dc                                       ; $673d: $c6 $dc
    rra                                           ; $673f: $1f
    add hl, bc                                    ; $6740: $09
    sbc d                                         ; $6741: $9a
    add hl, hl                                    ; $6742: $29
    ld b, a                                       ; $6743: $47
    ei                                            ; $6744: $fb
    adc a                                         ; $6745: $8f
    db $f4                                        ; $6746: $f4
    cp h                                          ; $6747: $bc
    ret z                                         ; $6748: $c8

    jr nc, jr_068_6705                            ; $6749: $30 $ba

    jp hl                                         ; $674b: $e9


    inc bc                                        ; $674c: $03
    db $db                                        ; $674d: $db
    add h                                         ; $674e: $84
    db $d3                                        ; $674f: $d3
    adc h                                         ; $6750: $8c

Call_068_6751:
    xor b                                         ; $6751: $a8
    dec c                                         ; $6752: $0d
    cpl                                           ; $6753: $2f
    ld h, $f1                                     ; $6754: $26 $f1
    ld l, h                                       ; $6756: $6c
    ld [$6e1f], a                                 ; $6757: $ea $1f $6e
    db $ec                                        ; $675a: $ec
    ld d, e                                       ; $675b: $53
    dec e                                         ; $675c: $1d
    ld d, c                                       ; $675d: $51
    or a                                          ; $675e: $b7
    ret nc                                        ; $675f: $d0

    ld l, h                                       ; $6760: $6c
    rst $20                                       ; $6761: $e7
    db $fd                                        ; $6762: $fd
    ld bc, $f889                                  ; $6763: $01 $89 $f8
    sub e                                         ; $6766: $93
    cpl                                           ; $6767: $2f
    cp $49                                        ; $6768: $fe $49
    ld l, d                                       ; $676a: $6a
    jp $cf68                                      ; $676b: $c3 $68 $cf


    ld e, a                                       ; $676e: $5f
    daa                                           ; $676f: $27
    ld sp, $2bda                                  ; $6770: $31 $da $2b
    ld b, c                                       ; $6773: $41
    ld e, l                                       ; $6774: $5d
    or b                                          ; $6775: $b0
    di                                            ; $6776: $f3
    inc bc                                        ; $6777: $03
    rst $20                                       ; $6778: $e7
    ld b, b                                       ; $6779: $40
    ld l, [hl]                                    ; $677a: $6e
    ld e, h                                       ; $677b: $5c
    cp l                                          ; $677c: $bd
    jr @-$58                                      ; $677d: $18 $a6

    sbc h                                         ; $677f: $9c
    adc d                                         ; $6780: $8a
    sbc e                                         ; $6781: $9b
    db $e4                                        ; $6782: $e4
    xor [hl]                                      ; $6783: $ae
    ld [hl], l                                    ; $6784: $75
    or d                                          ; $6785: $b2
    ld bc, $c44d                                  ; $6786: $01 $4d $c4
    sbc a                                         ; $6789: $9f
    ld a, h                                       ; $678a: $7c
    pop af                                        ; $678b: $f1
    ld c, a                                       ; $678c: $4f
    ld d, d                                       ; $678d: $52
    dec de                                        ; $678e: $1b
    ld b, [hl]                                    ; $678f: $46
    ld a, e                                       ; $6790: $7b
    dec h                                         ; $6791: $25
    xor b                                         ; $6792: $a8
    dec bc                                        ; $6793: $0b
    halt                                          ; $6794: $76
    sbc $1f                                       ; $6795: $de $1f
    db $db                                        ; $6797: $db
    sbc e                                         ; $6798: $9b
    ld [hl], d                                    ; $6799: $72
    ld l, b                                       ; $679a: $68
    add [hl]                                      ; $679b: $86
    xor h                                         ; $679c: $ac
    ccf                                           ; $679d: $3f
    sub $7f                                       ; $679e: $d6 $7f
    ld l, l                                       ; $67a0: $6d
    db $d3                                        ; $67a1: $d3
    rlca                                          ; $67a2: $07
    db $db                                        ; $67a3: $db
    sbc e                                         ; $67a4: $9b
    ld [hl], d                                    ; $67a5: $72
    xor b                                         ; $67a6: $a8
    ld l, a                                       ; $67a7: $6f
    ret z                                         ; $67a8: $c8

    adc b                                         ; $67a9: $88
    ld bc, $3e9b                                  ; $67aa: $01 $9b $3e
    add hl, bc                                    ; $67ad: $09
    xor d                                         ; $67ae: $aa
    add sp, -$35                                  ; $67af: $e8 $cb
    sub b                                         ; $67b1: $90
    ld e, l                                       ; $67b2: $5d
    ld d, a                                       ; $67b3: $57
    add l                                         ; $67b4: $85
    db $f4                                        ; $67b5: $f4
    dec c                                         ; $67b6: $0d
    sub l                                         ; $67b7: $95
    xor $e5                                       ; $67b8: $ee $e5
    xor c                                         ; $67ba: $a9
    ccf                                           ; $67bb: $3f
    cp [hl]                                       ; $67bc: $be
    ld e, e                                       ; $67bd: $5b
    ld l, b                                       ; $67be: $68
    ld [hl], a                                    ; $67bf: $77
    cp e                                          ; $67c0: $bb
    sub l                                         ; $67c1: $95
    ld c, a                                       ; $67c2: $4f
    sla l                                         ; $67c3: $cb $25
    db $ed                                        ; $67c5: $ed
    inc h                                         ; $67c6: $24
    ei                                            ; $67c7: $fb
    rst $08                                       ; $67c8: $cf
    ld d, e                                       ; $67c9: $53
    ld l, [hl]                                    ; $67ca: $6e
    ld a, [$9700]                                 ; $67cb: $fa $00 $97
    cp c                                          ; $67ce: $b9
    xor [hl]                                      ; $67cf: $ae

jr_068_67d0:
    ld l, e                                       ; $67d0: $6b
    jp z, $4aa1                                   ; $67d1: $ca $a1 $4a

    rrca                                          ; $67d4: $0f
    db $f4                                        ; $67d5: $f4
    ld l, [hl]                                    ; $67d6: $6e
    or a                                          ; $67d7: $b7
    ld a, [c]                                     ; $67d8: $f2
    ld l, c                                       ; $67d9: $69
    cp c                                          ; $67da: $b9
    and h                                         ; $67db: $a4
    sbc l                                         ; $67dc: $9d
    ld h, h                                       ; $67dd: $64
    rst $38                                       ; $67de: $ff
    ld a, c                                       ; $67df: $79
    jp z, Jump_000_1f4d                           ; $67e0: $ca $4d $1f

    add hl, bc                                    ; $67e3: $09
    xor d                                         ; $67e4: $aa
    add sp, -$35                                  ; $67e5: $e8 $cb
    sub b                                         ; $67e7: $90
    db $fd                                        ; $67e8: $fd
    sbc l                                         ; $67e9: $9d
    ld h, [hl]                                    ; $67ea: $66
    or $ec                                        ; $67eb: $f6 $ec
    ld h, e                                       ; $67ed: $63
    ld a, e                                       ; $67ee: $7b
    ld sp, $fee6                                  ; $67ef: $31 $e6 $fe
    nop                                           ; $67f2: $00
    sub a                                         ; $67f3: $97
    ld c, e                                       ; $67f4: $4b
    halt                                          ; $67f5: $76
    add l                                         ; $67f6: $85
    ld e, l                                       ; $67f7: $5d
    ld c, l                                       ; $67f8: $4d
    add hl, sp                                    ; $67f9: $39
    ld [hl], h                                    ; $67fa: $74
    ld e, l                                       ; $67fb: $5d
    sbc l                                         ; $67fc: $9d
    ld [hl-], a                                   ; $67fd: $32
    adc h                                         ; $67fe: $8c
    xor b                                         ; $67ff: $a8
    ld h, c                                       ; $6800: $61
    call c, $8cc6                                 ; $6801: $dc $c6 $8c
    sbc [hl]                                      ; $6804: $9e
    ld a, l                                       ; $6805: $7d
    ld l, h                                       ; $6806: $6c
    cpl                                           ; $6807: $2f
    add $dc                                       ; $6808: $c6 $dc
    rra                                           ; $680a: $1f
    add hl, bc                                    ; $680b: $09
    sbc d                                         ; $680c: $9a
    add hl, hl                                    ; $680d: $29
    ld b, a                                       ; $680e: $47
    ei                                            ; $680f: $fb
    adc a                                         ; $6810: $8f
    db $f4                                        ; $6811: $f4
    cp h                                          ; $6812: $bc
    ret z                                         ; $6813: $c8

    jr nc, jr_068_67d0                            ; $6814: $30 $ba

    jp hl                                         ; $6816: $e9


    inc bc                                        ; $6817: $03
    db $db                                        ; $6818: $db
    add h                                         ; $6819: $84
    db $d3                                        ; $681a: $d3
    ld b, b                                       ; $681b: $40
    add hl, sp                                    ; $681c: $39
    jp c, $d6df                                   ; $681d: $da $df $d6

    add l                                         ; $6820: $85
    sub a                                         ; $6821: $97
    rst $20                                       ; $6822: $e7
    cp [hl]                                       ; $6823: $be
    rst $28                                       ; $6824: $ef
    ld [$0959], sp                                ; $6825: $08 $59 $09
    sub l                                         ; $6828: $95
    ld d, e                                       ; $6829: $53
    sub $c9                                       ; $682a: $d6 $c9
    sbc [hl]                                      ; $682c: $9e
    ld l, a                                       ; $682d: $6f
    dec sp                                        ; $682e: $3b
    cp l                                          ; $682f: $bd
    sbc $17                                       ; $6830: $de $17
    jp $86d8                                      ; $6832: $c3 $d8 $86


    rrca                                          ; $6835: $0f
    sub a                                         ; $6836: $97
    ld d, c                                       ; $6837: $51
    ld a, d                                       ; $6838: $7a
    sub $c9                                       ; $6839: $d6 $c9
    cp $13                                        ; $683b: $fe $13
    sub e                                         ; $683d: $93
    ld hl, sp+$5f                                 ; $683e: $f8 $5f
    sbc b                                         ; $6840: $98
    ld a, [$bd63]                                 ; $6841: $fa $63 $bd
    ld [hl], h                                    ; $6844: $74
    halt                                          ; $6845: $76
    ld [hl], d                                    ; $6846: $72
    jp hl                                         ; $6847: $e9


    adc [hl]                                      ; $6848: $8e
    ld c, h                                       ; $6849: $4c
    xor a                                         ; $684a: $af
    rst $30                                       ; $684b: $f7
    ld l, [hl]                                    ; $684c: $6e
    ld b, d                                       ; $684d: $42
    db $fc                                        ; $684e: $fc
    daa                                           ; $684f: $27
    ld h, [hl]                                    ; $6850: $66
    db $e3                                        ; $6851: $e3
    ld b, [hl]                                    ; $6852: $46
    ld b, l                                       ; $6853: $45
    ld hl, $279b                                  ; $6854: $21 $9b $27
    ld c, h                                       ; $6857: $4c
    and a                                         ; $6858: $a7
    jp nc, Jump_000_30c5                          ; $6859: $d2 $c5 $30

    ld b, l                                       ; $685c: $45
    inc sp                                        ; $685d: $33
    ld h, h                                       ; $685e: $64
    jp $c15b                                      ; $685f: $c3 $5b $c1


    sub h                                         ; $6862: $94
    ld e, d                                       ; $6863: $5a
    sub a                                         ; $6864: $97
    rst $18                                       ; $6865: $df
    ld a, [c]                                     ; $6866: $f2
    halt                                          ; $6867: $76
    ld [hl], c                                    ; $6868: $71
    db $fd                                        ; $6869: $fd
    pop bc                                        ; $686a: $c1
    ret nc                                        ; $686b: $d0

    ld b, [hl]                                    ; $686c: $46
    pop hl                                        ; $686d: $e1
    ld d, h                                       ; $686e: $54
    xor [hl]                                      ; $686f: $ae
    and l                                         ; $6870: $a5
    rst $18                                       ; $6871: $df
    ld c, a                                       ; $6872: $4f
    cp l                                          ; $6873: $bd
    ccf                                           ; $6874: $3f
    add hl, bc                                    ; $6875: $09
    sbc d                                         ; $6876: $9a
    ld e, c                                       ; $6877: $59
    ld a, a                                       ; $6878: $7f
    ld h, c                                       ; $6879: $61
    call z, $c06c                                 ; $687a: $cc $6c $c0
    ld a, [bc]                                    ; $687d: $0a
    ld d, l                                       ; $687e: $55
    ld e, b                                       ; $687f: $58
    or e                                          ; $6880: $b3
    ld sp, $b033                                  ; $6881: $31 $33 $b0
    xor b                                         ; $6884: $a8
    ld l, a                                       ; $6885: $6f
    ldh a, [rBCPD]                                ; $6886: $f0 $69
    inc c                                         ; $6888: $0c
    db $ec                                        ; $6889: $ec
    ccf                                           ; $688a: $3f
    or d                                          ; $688b: $b2
    cp a                                          ; $688c: $bf
    ld a, e                                       ; $688d: $7b
    add c                                         ; $688e: $81
    ld h, c                                       ; $688f: $61
    ld b, h                                       ; $6890: $44
    ld [hl], l                                    ; $6891: $75
    sub d                                         ; $6892: $92
    ld e, l                                       ; $6893: $5d
    ld h, c                                       ; $6894: $61
    ld d, a                                       ; $6895: $57
    ld d, e                                       ; $6896: $53
    ld c, $f5                                     ; $6897: $0e $f5
    daa                                           ; $6899: $27
    and b                                         ; $689a: $a0
    ld a, [bc]                                    ; $689b: $0a
    db $eb                                        ; $689c: $eb
    ld a, [bc]                                    ; $689d: $0a
    ld de, $9471                                  ; $689e: $11 $71 $94
    rst $30                                       ; $68a1: $f7
    rlca                                          ; $68a2: $07
    sub a                                         ; $68a3: $97
    ld c, e                                       ; $68a4: $4b
    sub $5f                                       ; $68a5: $d6 $5f
    jr jr_068_68dc                                ; $68a7: $18 $33

    sbc e                                         ; $68a9: $9b
    ld b, [hl]                                    ; $68aa: $46
    add h                                         ; $68ab: $84
    ld [hl], c                                    ; $68ac: $71
    ld a, c                                       ; $68ad: $79
    cp e                                          ; $68ae: $bb
    jr @+$5a                                      ; $68af: $18 $58

    cpl                                           ; $68b1: $2f
    push hl                                       ; $68b2: $e5
    jr z, @-$13                                   ; $68b3: $28 $eb

    ld h, e                                       ; $68b5: $63
    add hl, de                                    ; $68b6: $19
    xor l                                         ; $68b7: $ad
    ld a, a                                       ; $68b8: $7f
    ldh [$32], a                                  ; $68b9: $e0 $32
    ld e, d                                       ; $68bb: $5a
    ret z                                         ; $68bc: $c8

    ld a, d                                       ; $68bd: $7a
    rst $00                                       ; $68be: $c7
    inc h                                         ; $68bf: $24
    dec de                                        ; $68c0: $1b
    ld d, b                                       ; $68c1: $50
    rst $38                                       ; $68c2: $ff
    db $fd                                        ; $68c3: $fd
    db $d3                                        ; $68c4: $d3
    sub h                                         ; $68c5: $94
    ld b, e                                       ; $68c6: $43
    inc sp                                        ; $68c7: $33
    ld h, h                                       ; $68c8: $64
    inc hl                                        ; $68c9: $23
    or l                                          ; $68ca: $b5
    sbc $59                                       ; $68cb: $de $59
    sub d                                         ; $68cd: $92
    call nc, $03fb                                ; $68ce: $d4 $fb $03
    sub a                                         ; $68d1: $97
    ld d, c                                       ; $68d2: $51
    ld a, d                                       ; $68d3: $7a
    sub $c9                                       ; $68d4: $d6 $c9
    cp $13                                        ; $68d6: $fe $13
    sub e                                         ; $68d8: $93
    ld hl, sp+$5f                                 ; $68d9: $f8 $5f
    ld h, b                                       ; $68db: $60

jr_068_68dc:
    db $fd                                        ; $68dc: $fd
    or c                                          ; $68dd: $b1
    sbc [hl]                                      ; $68de: $9e
    db $e3                                        ; $68df: $e3
    inc l                                         ; $68e0: $2c
    cp [hl]                                       ; $68e1: $be
    sbc b                                         ; $68e2: $98
    xor $39                                       ; $68e3: $ee $39
    ld c, [hl]                                    ; $68e5: $4e
    sub e                                         ; $68e6: $93
    and d                                         ; $68e7: $a2
    ld a, [$5d63]                                 ; $68e8: $fa $63 $5d
    ld h, c                                       ; $68eb: $61
    rla                                           ; $68ec: $17
    or h                                          ; $68ed: $b4
    set 6, e                                      ; $68ee: $cb $f3
    ret nz                                        ; $68f0: $c0

    ld [hl-], a                                   ; $68f1: $32
    cp e                                          ; $68f2: $bb
    and d                                         ; $68f3: $a2
    ccf                                           ; $68f4: $3f
    ld b, $ed                                     ; $68f5: $06 $ed
    adc e                                         ; $68f7: $8b
    sbc $85                                       ; $68f8: $de $85
    ld [hl], d                                    ; $68fa: $72
    ld l, l                                       ; $68fb: $6d
    add l                                         ; $68fc: $85
    and a                                         ; $68fd: $a7
    ld [hl], a                                    ; $68fe: $77
    inc de                                        ; $68ff: $13
    rst $00                                       ; $6900: $c7
    ld a, [$a754]                                 ; $6901: $fa $54 $a7
    ld bc, $542b                                  ; $6904: $01 $2b $54
    ld h, c                                       ; $6907: $61
    call $ccc6                                    ; $6908: $cd $c6 $cc
    ret nz                                        ; $690b: $c0

    cp $23                                        ; $690c: $fe $23
    ei                                            ; $690e: $fb
    cp e                                          ; $690f: $bb
    rla                                           ; $6910: $17
    jr @-$18                                      ; $6911: $18 $e6

    cp $00                                        ; $6913: $fe $00
    sub a                                         ; $6915: $97
    ld c, e                                       ; $6916: $4b
    sub $5f                                       ; $6917: $d6 $5f
    jr jr_068_694e                                ; $6919: $18 $33

    dec hl                                        ; $691b: $2b
    db $dd                                        ; $691c: $dd
    bit 2, e                                      ; $691d: $cb $53
    ld c, d                                       ; $691f: $4a
    ld e, d                                       ; $6920: $5a
    sbc d                                         ; $6921: $9a
    ld c, l                                       ; $6922: $4d
    add hl, sp                                    ; $6923: $39
    ld d, h                                       ; $6924: $54
    ld d, c                                       ; $6925: $51
    and a                                         ; $6926: $a7
    ld l, h                                       ; $6927: $6c
    add b                                         ; $6928: $80
    ld b, $74                                     ; $6929: $06 $74
    or h                                          ; $692b: $b4
    add hl, de                                    ; $692c: $19
    jp nc, Jump_000_2d1f                          ; $692d: $d2 $1f $2d

    ld h, e                                       ; $6930: $63
    ld a, [hl]                                    ; $6931: $7e
    jp hl                                         ; $6932: $e9


    pop de                                        ; $6933: $d1
    ei                                            ; $6934: $fb
    inc bc                                        ; $6935: $03
    sub a                                         ; $6936: $97
    ld c, e                                       ; $6937: $4b
    sub $5f                                       ; $6938: $d6 $5f
    jr @+$35                                      ; $693a: $18 $33

    db $eb                                        ; $693c: $eb
    ld c, a                                       ; $693d: $4f
    add b                                         ; $693e: $80
    adc l                                         ; $693f: $8d
    or d                                          ; $6940: $b2
    add hl, hl                                    ; $6941: $29
    add a                                         ; $6942: $87
    xor [hl]                                      ; $6943: $ae
    db $eb                                        ; $6944: $eb
    ld a, b                                       ; $6945: $78
    inc b                                         ; $6946: $04
    ldh [$cf], a                                  ; $6947: $e0 $cf
    db $d3                                        ; $6949: $d3
    add b                                         ; $694a: $80
    add [hl]                                      ; $694b: $86
    or a                                          ; $694c: $b7
    add d                                         ; $694d: $82

jr_068_694e:
    add hl, hl                                    ; $694e: $29
    or l                                          ; $694f: $b5
    ld [$987c], a                                 ; $6950: $ea $7c $98
    and $b7                                       ; $6953: $e6 $b7
    cp $60                                        ; $6955: $fe $60
    ld l, b                                       ; $6957: $68
    jp $b768                                      ; $6958: $c3 $68 $b7


    cp d                                          ; $695b: $ba
    ld [hl], h                                    ; $695c: $74
    ld a, d                                       ; $695d: $7a
    add c                                         ; $695e: $81
    sbc $1f                                       ; $695f: $de $1f
    ld [c], a                                     ; $6961: $e2
    dec a                                         ; $6962: $3d
    ld h, a                                       ; $6963: $67
    ld b, [hl]                                    ; $6964: $46

Call_068_6965:
    ld [$98c2], a                                 ; $6965: $ea $c2 $98
    xor $ba                                       ; $6968: $ee $ba
    ld a, [hl-]                                   ; $696a: $3a
    ret                                           ; $696b: $c9


    cp $e3                                        ; $696c: $fe $e3
    ld sp, $5036                                  ; $696e: $31 $36 $50
    cp e                                          ; $6971: $bb
    ld h, [hl]                                    ; $6972: $66
    xor e                                         ; $6973: $ab
    ld sp, $5768                                  ; $6974: $31 $68 $57
    adc b                                         ; $6977: $88
    adc b                                         ; $6978: $88
    and e                                         ; $6979: $a3
    ld l, h                                       ; $697a: $6c
    ld b, b                                       ; $697b: $40
    rrca                                          ; $697c: $0f
    push af                                       ; $697d: $f5
    jp c, Jump_068_79fb                           ; $697e: $da $fb $79

    ld d, a                                       ; $6981: $57
    cp h                                          ; $6982: $bc
    ld a, $16                                     ; $6983: $3e $16
    inc [hl]                                      ; $6985: $34
    ld h, b                                       ; $6986: $60
    add l                                         ; $6987: $85
    ld a, [hl+]                                   ; $6988: $2a
    xor h                                         ; $6989: $ac
    db $f4                                        ; $698a: $f4
    add hl, de                                    ; $698b: $19
    sub e                                         ; $698c: $93
    inc c                                         ; $698d: $0c
    db $ec                                        ; $698e: $ec

Call_068_698f:
    sub e                                         ; $698f: $93
    ld [$998f], sp                                ; $6990: $08 $8f $99
    ld [de], a                                    ; $6993: $12
    ld sp, $f4a3                                  ; $6994: $31 $a3 $f4
    ld [hl], a                                    ; $6997: $77
    rst $10                                       ; $6998: $d7
    ld a, [hl+]                                   ; $6999: $2a
    xor h                                         ; $699a: $ac
    set 6, e                                      ; $699b: $cb $f3
    ret nz                                        ; $699d: $c0

    ld [hl-], a                                   ; $699e: $32
    rst $28                                       ; $699f: $ef
    rrca                                          ; $69a0: $0f
    db $db                                        ; $69a1: $db
    or l                                          ; $69a2: $b5
    ld d, b                                       ; $69a3: $50
    rst $38                                       ; $69a4: $ff
    push bc                                       ; $69a5: $c5
    db $e4                                        ; $69a6: $e4
    ld l, b                                       ; $69a7: $68
    jp Jump_000_1fd4                              ; $69a8: $c3 $d4 $1f


    ei                                            ; $69ab: $fb
    ld h, a                                       ; $69ac: $67
    inc hl                                        ; $69ad: $23
    call nc, Call_000_317f                        ; $69ae: $d4 $7f $31
    add hl, sp                                    ; $69b1: $39
    and l                                         ; $69b2: $a5
    rst $00                                       ; $69b3: $c7
    push bc                                       ; $69b4: $c5
    ld b, b                                       ; $69b5: $40
    add hl, hl                                    ; $69b6: $29
    xor d                                         ; $69b7: $aa
    sub e                                         ; $69b8: $93
    db $ec                                        ; $69b9: $ec
    ld a, [bc]                                    ; $69ba: $0a
    cp e                                          ; $69bb: $bb
    sbc d                                         ; $69bc: $9a
    ld [hl], d                                    ; $69bd: $72
    add sp, $6a                                   ; $69be: $e8 $6a
    sub [hl]                                      ; $69c0: $96
    ld c, h                                       ; $69c1: $4c

Call_068_69c2:
    add hl, hl                                    ; $69c2: $29
    set 7, [hl]                                   ; $69c3: $cb $fe
    ld b, $fd                                     ; $69c5: $06 $fd
    ld h, c                                       ; $69c7: $61
    ld [hl], a                                    ; $69c8: $77
    or a                                          ; $69c9: $b7
    ld l, e                                       ; $69ca: $6b
    and c                                         ; $69cb: $a1
    cp $8b                                        ; $69cc: $fe $8b
    ret                                           ; $69ce: $c9


    pop de                                        ; $69cf: $d1
    and [hl]                                      ; $69d0: $a6
    inc e                                         ; $69d1: $1c
    ld a, [de]                                    ; $69d2: $1a
    add l                                         ; $69d3: $85
    ld d, e                                       ; $69d4: $53
    ret                                           ; $69d5: $c9


    db $f4                                        ; $69d6: $f4
    ret nc                                        ; $69d7: $d0

    jr z, jr_068_69f5                             ; $69d8: $28 $1b

    add hl, de                                    ; $69da: $19
    ret c                                         ; $69db: $d8

    ld [$f8d9], sp                                ; $69dc: $08 $d9 $f8
    ld h, d                                       ; $69df: $62
    jp c, $93ad                                   ; $69e0: $da $ad $93

    ld d, l                                       ; $69e3: $55
    pop hl                                        ; $69e4: $e1
    db $f4                                        ; $69e5: $f4
    sbc a                                         ; $69e6: $9f
    xor b                                         ; $69e7: $a8
    cpl                                           ; $69e8: $2f
    ret nz                                        ; $69e9: $c0

    jr jr_068_6a32                                ; $69ea: $18 $46

    dec sp                                        ; $69ec: $3b
    ld e, d                                       ; $69ed: $5a
    adc c                                         ; $69ee: $89
    dec h                                         ; $69ef: $25
    add hl, sp                                    ; $69f0: $39
    ld b, $bd                                     ; $69f1: $06 $bd
    ccf                                           ; $69f3: $3f
    rst $20                                       ; $69f4: $e7

jr_068_69f5:
    pop hl                                        ; $69f5: $e1
    push hl                                       ; $69f6: $e5
    add hl, hl                                    ; $69f7: $29
    db $eb                                        ; $69f8: $eb
    db $d3                                        ; $69f9: $d3
    ld a, [c]                                     ; $69fa: $f2
    or e                                          ; $69fb: $b3

Call_068_69fc:
    ld b, $d6                                     ; $69fc: $06 $d6
    rst $00                                       ; $69fe: $c7
    add d                                         ; $69ff: $82
    ld a, [hl+]                                   ; $6a00: $2a
    ld a, [hl]                                    ; $6a01: $7e
    ld [hl], $a0                                  ; $6a02: $36 $a0
    ld c, [hl]                                    ; $6a04: $4e
    sub $9f                                       ; $6a05: $d6 $9f
    ld h, l                                       ; $6a07: $65
    dec [hl]                                      ; $6a08: $35
    ld [hl], a                                    ; $6a09: $77
    rst $08                                       ; $6a0a: $cf
    ld a, l                                       ; $6a0b: $7d
    cp e                                          ; $6a0c: $bb
    ld [hl], $2a                                  ; $6a0d: $36 $2a
    sbc d                                         ; $6a0f: $9a
    ld [hl], d                                    ; $6a10: $72
    jr z, @-$61                                   ; $6a11: $28 $9d

    ld b, h                                       ; $6a13: $44
    call z, $eb2c                                 ; $6a14: $cc $2c $eb
    dec e                                         ; $6a17: $1d
    ld e, e                                       ; $6a18: $5b
    rst $08                                       ; $6a19: $cf
    ld b, $d6                                     ; $6a1a: $06 $d6
    sbc a                                         ; $6a1c: $9f
    push af                                       ; $6a1d: $f5
    jp nz, Jump_000_3fb9                          ; $6a1e: $c2 $b9 $3f

    db $db                                        ; $6a21: $db
    or l                                          ; $6a22: $b5
    add hl, bc                                    ; $6a23: $09
    ld a, [$b8d3]                                 ; $6a24: $fa $d3 $b8
    jp nz, $1c92                                  ; $6a27: $c2 $92 $1c

    ld l, l                                       ; $6a2a: $6d
    sbc b                                         ; $6a2b: $98
    ld h, $a4                                     ; $6a2c: $26 $a4
    sbc a                                         ; $6a2e: $9f
    sbc a                                         ; $6a2f: $9f
    and a                                         ; $6a30: $a7
    ld sp, hl                                     ; $6a31: $f9

jr_068_6a32:
    ld b, b                                       ; $6a32: $40
    reti                                          ; $6a33: $d9


    ld e, c                                       ; $6a34: $59
    sub d                                         ; $6a35: $92
    and e                                         ; $6a36: $a3
    add l                                         ; $6a37: $85
    ld a, [$1ff8]                                 ; $6a38: $fa $f8 $1f
    rla                                           ; $6a3b: $17
    adc c                                         ; $6a3c: $89
    sbc b                                         ; $6a3d: $98
    pop de                                        ; $6a3e: $d1
    rla                                           ; $6a3f: $17
    jp $19fb                                      ; $6a40: $c3 $fb $19


    ld b, [hl]                                    ; $6a43: $46
    db $eb                                        ; $6a44: $eb
    db $d3                                        ; $6a45: $d3
    ld e, b                                       ; $6a46: $58
    or $9f                                        ; $6a47: $f6 $9f
    ld hl, sp-$3d                                 ; $6a49: $f8 $c3
    ld e, a                                       ; $6a4b: $5f
    cpl                                           ; $6a4c: $2f
    sbc h                                         ; $6a4d: $9c
    ld b, $d4                                     ; $6a4e: $06 $d4
    sbc a                                         ; $6a50: $9f
    push af                                       ; $6a51: $f5
    rlca                                          ; $6a52: $07
    ld b, e                                       ; $6a53: $43
    rst $28                                       ; $6a54: $ef
    rrca                                          ; $6a55: $0f
    db $db                                        ; $6a56: $db
    or l                                          ; $6a57: $b5
    sbc [hl]                                      ; $6a58: $9e
    rst $30                                       ; $6a59: $f7
    rst $28                                       ; $6a5a: $ef
    ld l, [hl]                                    ; $6a5b: $6e
    pop af                                        ; $6a5c: $f1
    adc l                                         ; $6a5d: $8d
    ld d, [hl]                                    ; $6a5e: $56
    add l                                         ; $6a5f: $85
    db $d3                                        ; $6a60: $d3
    rst $18                                       ; $6a61: $df
    ld e, $b3                                     ; $6a62: $1e $b3
    inc sp                                        ; $6a64: $33
    ld l, d                                       ; $6a65: $6a
    push hl                                       ; $6a66: $e5
    ld e, d                                       ; $6a67: $5a
    ld a, [$d4fd]                                 ; $6a68: $fa $fd $d4
    ld a, [$97b0]                                 ; $6a6b: $fa $b0 $97
    ld e, $a5                                     ; $6a6e: $1e $a5
    sub $a7                                       ; $6a70: $d6 $a7
    pop hl                                        ; $6a72: $e1
    ld a, a                                       ; $6a73: $7f
    ld h, c                                       ; $6a74: $61
    or h                                          ; $6a75: $b4
    rst $38                                       ; $6a76: $ff
    ret z                                         ; $6a77: $c8

    ld d, d                                       ; $6a78: $52
    cp e                                          ; $6a79: $bb
    ld [c], a                                     ; $6a7a: $e2
    ld c, a                                       ; $6a7b: $4f
    cp l                                          ; $6a7c: $bd
    ld a, e                                       ; $6a7d: $7b
    add hl, hl                                    ; $6a7e: $29
    ld [c], a                                     ; $6a7f: $e2
    xor h                                         ; $6a80: $ac
    jr z, jr_068_6abe                             ; $6a81: $28 $3b

    jp c, $2c7f                                   ; $6a83: $da $7f $2c

    adc [hl]                                      ; $6a86: $8e
    sub [hl]                                      ; $6a87: $96
    pop de                                        ; $6a88: $d1
    ld [hl], c                                    ; $6a89: $71
    sub c                                         ; $6a8a: $91
    adc b                                         ; $6a8b: $88
    add hl, de                                    ; $6a8c: $19
    and d                                         ; $6a8d: $a2
    ld a, [hl+]                                   ; $6a8e: $2a
    ld h, d                                       ; $6a8f: $62
    sbc b                                         ; $6a90: $98
    ld b, d                                       ; $6a91: $42
    inc sp                                        ; $6a92: $33
    or h                                          ; $6a93: $b4
    add [hl]                                      ; $6a94: $86
    ld a, a                                       ; $6a95: $7f
    sub [hl]                                      ; $6a96: $96
    db $e4                                        ; $6a97: $e4
    dec bc                                        ; $6a98: $0b
    and e                                         ; $6a99: $a3
    ld c, l                                       ; $6a9a: $4d
    add hl, sp                                    ; $6a9b: $39
    add $30                                       ; $6a9c: $c6 $30
    sbc l                                         ; $6a9e: $9d
    sbc [hl]                                      ; $6a9f: $9e
    di                                            ; $6aa0: $f3
    cp $dd                                        ; $6aa1: $fe $dd
    dec l                                         ; $6aa3: $2d
    cp [hl]                                       ; $6aa4: $be
    ld l, c                                       ; $6aa5: $69
    inc d                                         ; $6aa6: $14
    ld c, [hl]                                    ; $6aa7: $4e
    and c                                         ; $6aa8: $a1
    ld a, c                                       ; $6aa9: $79
    xor l                                         ; $6aaa: $ad
    db $ec                                        ; $6aab: $ec
    ld a, [bc]                                    ; $6aac: $0a
    halt                                          ; $6aad: $76
    ld a, a                                       ; $6aae: $7f
    sub a                                         ; $6aaf: $97
    res 7, [hl]                                   ; $6ab0: $cb $be
    sbc b                                         ; $6ab2: $98
    ld [hl], $84                                  ; $6ab3: $36 $84
    add a                                         ; $6ab5: $87
    sbc b                                         ; $6ab6: $98
    ld d, c                                       ; $6ab7: $51
    ld a, d                                       ; $6ab8: $7a
    ld e, h                                       ; $6ab9: $5c
    inc c                                         ; $6aba: $0c
    adc h                                         ; $6abb: $8c
    add hl, de                                    ; $6abc: $19
    ld c, l                                       ; $6abd: $4d

jr_068_6abe:
    add hl, sp                                    ; $6abe: $39
    inc [hl]                                      ; $6abf: $34
    ld a, [bc]                                    ; $6ac0: $0a
    and a                                         ; $6ac1: $a7
    ld bc, $742b                                  ; $6ac2: $01 $2b $74
    push af                                       ; $6ac5: $f5
    xor h                                         ; $6ac6: $ac
    ld bc, $c7fd                                  ; $6ac7: $01 $fd $c7
    ld h, e                                       ; $6aca: $63
    call nc, Call_000_10ae                        ; $6acb: $d4 $ae $10
    ld de, $a947                                  ; $6ace: $11 $47 $a9
    rst $30                                       ; $6ad1: $f7
    rlca                                          ; $6ad2: $07
    ld [c], a                                     ; $6ad3: $e2
    jp c, Jump_000_0444                           ; $6ad4: $da $44 $04

    and e                                         ; $6ad7: $a3
    or $1c                                        ; $6ad8: $f6 $1c
    db $ec                                        ; $6ada: $ec
    ld a, [de]                                    ; $6adb: $1a
    ld e, d                                       ; $6adc: $5a

jr_068_6add:
    ld d, l                                       ; $6add: $55
    jr c, jr_068_6add                             ; $6ade: $38 $fd

    db $ed                                        ; $6ae0: $ed
    ld sp, $1b50                                  ; $6ae1: $31 $50 $1b
    and a                                         ; $6ae4: $a7
    ld a, [$4334]                                 ; $6ae5: $fa $34 $43
    or d                                          ; $6ae8: $b2
    pop hl                                        ; $6ae9: $e1
    and l                                         ; $6aea: $a5
    and c                                         ; $6aeb: $a1
    ld sp, hl                                     ; $6aec: $f9
    xor l                                         ; $6aed: $ad
    and [hl]                                      ; $6aee: $a6
    add c                                         ; $6aef: $81
    jp c, $1e9f                                   ; $6af0: $da $9f $1e

    and e                                         ; $6af3: $a3
    sbc $3d                                       ; $6af4: $de $3d
    rst $30                                       ; $6af6: $f7
    db $ed                                        ; $6af7: $ed
    jp c, $68a8                                   ; $6af8: $da $a8 $68

    jp z, Jump_000_2aa1                           ; $6afb: $ca $a1 $2a

    sbc h                                         ; $6afe: $9c
    ld a, [hl-]                                   ; $6aff: $3a
    ld e, c                                       ; $6b00: $59
    add $bc                                       ; $6b01: $c6 $bc
    ld e, e                                       ; $6b03: $5b
    sbc b                                         ; $6b04: $98
    inc a                                         ; $6b05: $3c
    dec c                                         ; $6b06: $0d
    add sp, $0a                                   ; $6b07: $e8 $0a
    ld de, $f471                                  ; $6b09: $11 $71 $f4
    cp $00                                        ; $6b0c: $fe $00
    ld e, e                                       ; $6b0e: $5b
    db $dd                                        ; $6b0f: $dd
    bit 2, e                                      ; $6b10: $cb $53
    and e                                         ; $6b12: $a3
    adc l                                         ; $6b13: $8d
    adc d                                         ; $6b14: $8a
    ld [$bb24], a                                 ; $6b15: $ea $24 $bb
    jp nz, $a6ae                                  ; $6b18: $c2 $ae $a6

    inc e                                         ; $6b1b: $1c
    xor d                                         ; $6b1c: $aa
    cp e                                          ; $6b1d: $bb
    ld [hl], a                                    ; $6b1e: $77

Call_068_6b1f:
    or h                                          ; $6b1f: $b4
    ld l, $be                                     ; $6b20: $2e $be
    ld a, a                                       ; $6b22: $7f
    ld [hl], a                                    ; $6b23: $77
    adc e                                         ; $6b24: $8b
    ld l, a                                       ; $6b25: $6f
    or h                                          ; $6b26: $b4
    sub d                                         ; $6b27: $92
    ld c, a                                       ; $6b28: $4f
    res 3, b                                      ; $6b29: $cb $98
    ld e, a                                       ; $6b2b: $5f
    ld a, d                                       ; $6b2c: $7a
    or h                                          ; $6b2d: $b4
    and e                                         ; $6b2e: $a3
    call $ca07                                    ; $6b2f: $cd $07 $ca
    and d                                         ; $6b32: $a2
    ld a, [hl+]                                   ; $6b33: $2a
    sbc h                                         ; $6b34: $9c
    ld a, [de]                                    ; $6b35: $1a
    ld [c], a                                     ; $6b36: $e2
    xor h                                         ; $6b37: $ac
    jr jr_068_6b80                                ; $6b38: $18 $46

    ei                                            ; $6b3a: $fb
    adc a                                         ; $6b3b: $8f
    xor h                                         ; $6b3c: $ac
    ccf                                           ; $6b3d: $3f
    ld l, $e5                                     ; $6b3e: $2e $e5
    halt                                          ; $6b40: $76
    ld d, e                                       ; $6b41: $53
    ld a, l                                       ; $6b42: $7d
    sub d                                         ; $6b43: $92
    push af                                       ; $6b44: $f5
    ld a, [de]                                    ; $6b45: $1a
    ld d, d                                       ; $6b46: $52
    xor $c0                                       ; $6b47: $ee $c0
    ld hl, sp+$3f                                 ; $6b49: $f8 $3f
    sbc $1f                                       ; $6b4b: $de $1f
    sub a                                         ; $6b4d: $97
    ld c, e                                       ; $6b4e: $4b
    sub $5f                                       ; $6b4f: $d6 $5f
    jr jr_068_6b86                                ; $6b51: $18 $33

    ld l, e                                       ; $6b53: $6b
    inc [hl]                                      ; $6b54: $34
    ld [hl], $e5                                  ; $6b55: $36 $e5
    ld d, b                                       ; $6b57: $50
    db $dd                                        ; $6b58: $dd
    cp l                                          ; $6b59: $bd
    cp a                                          ; $6b5a: $bf
    ld b, c                                       ; $6b5b: $41

jr_068_6b5c:
    ld a, a                                       ; $6b5c: $7f
    inc d                                         ; $6b5d: $14
    or d                                          ; $6b5e: $b2
    ld l, e                                       ; $6b5f: $6b
    ld b, $6a                                     ; $6b60: $06 $6a
    ld l, l                                       ; $6b62: $6d
    cp $e4                                        ; $6b63: $fe $e4
    jr z, jr_068_6b5c                             ; $6b65: $28 $f5

    xor $36                                       ; $6b67: $ee $36
    pop hl                                        ; $6b69: $e1
    ld d, h                                       ; $6b6a: $54
    pop de                                        ; $6b6b: $d1
    ld a, a                                       ; $6b6c: $7f
    and d                                         ; $6b6d: $a2
    ld [hl+], a                                   ; $6b6e: $22
    db $ed                                        ; $6b6f: $ed
    sbc [hl]                                      ; $6b70: $9e
    dec hl                                        ; $6b71: $2b
    ld e, a                                       ; $6b72: $5f
    inc c                                         ; $6b73: $0c
    xor h                                         ; $6b74: $ac
    ld l, a                                       ; $6b75: $6f
    or e                                          ; $6b76: $b3
    and d                                         ; $6b77: $a2
    dec [hl]                                      ; $6b78: $35
    push hl                                       ; $6b79: $e5
    ret nc                                        ; $6b7a: $d0

    add b                                         ; $6b7b: $80
    ld a, d                                       ; $6b7c: $7a
    ld sp, hl                                     ; $6b7d: $f9
    rst $20                                       ; $6b7e: $e7
    xor c                                         ; $6b7f: $a9

jr_068_6b80:
    ld h, h                                       ; $6b80: $64
    ld h, [hl]                                    ; $6b81: $66
    sub a                                         ; $6b82: $97
    pop af                                        ; $6b83: $f1
    inc a                                         ; $6b84: $3c
    dec e                                         ; $6b85: $1d

jr_068_6b86:
    adc c                                         ; $6b86: $89
    xor b                                         ; $6b87: $a8
    rst $30                                       ; $6b88: $f7
    rlca                                          ; $6b89: $07
    rla                                           ; $6b8a: $17
    xor [hl]                                      ; $6b8b: $ae
    push de                                       ; $6b8c: $d5
    dec sp                                        ; $6b8d: $3b
    xor a                                         ; $6b8e: $af
    ld e, $6a                                     ; $6b8f: $1e $6a
    ld h, [hl]                                    ; $6b91: $66
    call z, Call_000_3fe8                         ; $6b92: $cc $e8 $3f
    jp nc, Jump_068_4ac9                          ; $6b95: $d2 $c9 $4a

    ld l, d                                       ; $6b98: $6a
    sbc c                                         ; $6b99: $99
    ld e, $63                                     ; $6b9a: $1e $63
    ld [hl], l                                    ; $6b9c: $75
    rst $30                                       ; $6b9d: $f7
    ld a, [hl+]                                   ; $6b9e: $2a
    adc d                                         ; $6b9f: $8a
    ld hl, sp+$4f                                 ; $6ba0: $f8 $4f
    call z, Call_068_42c6                         ; $6ba2: $cc $c6 $42
    halt                                          ; $6ba5: $76
    ld [hl], c                                    ; $6ba6: $71
    ld l, c                                       ; $6ba7: $69
    ld a, [de]                                    ; $6ba8: $1a
    or h                                          ; $6ba9: $b4
    adc d                                         ; $6baa: $8a
    ld h, l                                       ; $6bab: $65
    push bc                                       ; $6bac: $c5
    inc [hl]                                      ; $6bad: $34
    and d                                         ; $6bae: $a2
    sbc $15                                       ; $6baf: $de $15
    rst $10                                       ; $6bb1: $d7
    ld a, d                                       ; $6bb2: $7a
    sub a                                         ; $6bb3: $97
    ld sp, $5568                                  ; $6bb4: $31 $68 $55
    jr c, @-$21                                   ; $6bb7: $38 $dd

    inc hl                                        ; $6bb9: $23
    db $e3                                        ; $6bba: $e3
    ld l, c                                       ; $6bbb: $69
    inc hl                                        ; $6bbc: $23
    or l                                          ; $6bbd: $b5
    cp $ac                                        ; $6bbe: $fe $ac

jr_068_6bc0:
    ccf                                           ; $6bc0: $3f
    jr jr_068_6c1d                                ; $6bc1: $18 $5a

    ld c, c                                       ; $6bc3: $49
    dec l                                         ; $6bc4: $2d
    or l                                          ; $6bc5: $b5
    sbc $59                                       ; $6bc6: $de $59
    sub d                                         ; $6bc8: $92
    call nc, Call_068_70aa                        ; $6bc9: $d4 $aa $70
    ld a, [hl+]                                   ; $6bcc: $2a
    db $dd                                        ; $6bcd: $dd
    set 2, e                                      ; $6bce: $cb $d3
    cp h                                          ; $6bd0: $bc
    cp e                                          ; $6bd1: $bb
    ldh [$f7], a                                  ; $6bd2: $e0 $f7
    ld d, e                                       ; $6bd4: $53
    rst $28                                       ; $6bd5: $ef
    rrca                                          ; $6bd6: $0f
    ld e, e                                       ; $6bd7: $5b
    and b                                         ; $6bd8: $a0
    ld a, $ac                                     ; $6bd9: $3e $ac
    dec sp                                        ; $6bdb: $3b
    ld [hl-], a                                   ; $6bdc: $32
    ld c, l                                       ; $6bdd: $4d
    jr nz, jr_068_6c56                            ; $6bde: $20 $76

    ld a, [hl]                                    ; $6be0: $7e
    adc c                                         ; $6be1: $89
    inc [hl]                                      ; $6be2: $34
    cp $58                                        ; $6be3: $fe $58
    call nc, Call_000_07e9                        ; $6be5: $d4 $e9 $07
    ld [c], a                                     ; $6be8: $e2
    or $27                                        ; $6be9: $f6 $27
    sbc a                                         ; $6beb: $9f
    add a                                         ; $6bec: $87
    ld c, e                                       ; $6bed: $4b
    xor b                                         ; $6bee: $a8
    ld hl, sp+$12                                 ; $6bef: $f8 $12
    ld h, b                                       ; $6bf1: $60
    ld a, c                                       ; $6bf2: $79
    ld [c], a                                     ; $6bf3: $e2
    rlca                                          ; $6bf4: $07
    add hl, bc                                    ; $6bf5: $09
    set 0, d                                      ; $6bf6: $cb $c2
    jr nc, jr_068_6bc0                            ; $6bf8: $30 $c6

    ld e, [hl]                                    ; $6bfa: $5e
    add h                                         ; $6bfb: $84
    sbc h                                         ; $6bfc: $9c
    ld h, c                                       ; $6bfd: $61
    cpl                                           ; $6bfe: $2f
    and h                                         ; $6bff: $a4
    pop af                                        ; $6c00: $f1
    ld bc, $53e7                                  ; $6c01: $01 $e7 $53
    ld a, l                                       ; $6c04: $7d
    ld e, d                                       ; $6c05: $5a
    add sp, -$72                                  ; $6c06: $e8 $8e
    db $e4                                        ; $6c08: $e4
    adc e                                         ; $6c09: $8b
    jp hl                                         ; $6c0a: $e9


    dec b                                         ; $6c0b: $05
    ld a, c                                       ; $6c0c: $79
    ld [c], a                                     ; $6c0d: $e2
    rlca                                          ; $6c0e: $07
    rst $20                                       ; $6c0f: $e7
    cpl                                           ; $6c10: $2f
    or e                                          ; $6c11: $b3
    add d                                         ; $6c12: $82
    ld [hl], l                                    ; $6c13: $75
    set 6, e                                      ; $6c14: $cb $f3
    dec b                                         ; $6c16: $05
    adc l                                         ; $6c17: $8d
    push hl                                       ; $6c18: $e5
    db $e4                                        ; $6c19: $e4
    rlca                                          ; $6c1a: $07
    rst $20                                       ; $6c1b: $e7
    dec de                                        ; $6c1c: $1b

jr_068_6c1d:
    jp nc, $3b63                                  ; $6c1d: $d2 $63 $3b

    dec sp                                        ; $6c20: $3b
    dec a                                         ; $6c21: $3d
    add a                                         ; $6c22: $87
    ld [bc], a                                    ; $6c23: $02
    call c, Call_000_30c2                         ; $6c24: $dc $c2 $30
    or $01                                        ; $6c27: $f6 $01
    rla                                           ; $6c29: $17
    ld [hl], e                                    ; $6c2a: $73
    dec b                                         ; $6c2b: $05
    adc e                                         ; $6c2c: $8b
    add sp, -$47                                  ; $6c2d: $e8 $b9
    ret c                                         ; $6c2f: $d8

    ld a, [hl-]                                   ; $6c30: $3a
    ld sp, $31cb                                  ; $6c31: $31 $cb $31
    call nz, $e77f                                ; $6c34: $c4 $7f $e7
    rlca                                          ; $6c37: $07
    rla                                           ; $6c38: $17
    and h                                         ; $6c39: $a4
    inc hl                                        ; $6c3a: $23
    di                                            ; $6c3b: $f3
    ld h, e                                       ; $6c3c: $63
    xor a                                         ; $6c3d: $af
    ld a, h                                       ; $6c3e: $7c
    ld c, e                                       ; $6c3f: $4b
    ld d, b                                       ; $6c40: $50
    ld sp, hl                                     ; $6c41: $f9
    ld [hl], d                                    ; $6c42: $72
    ld a, [c]                                     ; $6c43: $f2
    inc bc                                        ; $6c44: $03
    dec sp                                        ; $6c45: $3b
    ld hl, sp+$27                                 ; $6c46: $f8 $27
    ld l, c                                       ; $6c48: $69
    ld c, a                                       ; $6c49: $4f
    sub l                                         ; $6c4a: $95
    cp l                                          ; $6c4b: $bd
    call z, Call_000_05a5                         ; $6c4c: $cc $a5 $05
    call Call_000_0f84                            ; $6c4f: $cd $84 $0f
    rst $20                                       ; $6c52: $e7
    cpl                                           ; $6c53: $2f
    adc h                                         ; $6c54: $8c
    ld [hl], d                                    ; $6c55: $72

jr_068_6c56:
    inc c                                         ; $6c56: $0c
    ld c, l                                       ; $6c57: $4d
    inc b                                         ; $6c58: $04
    dec b                                         ; $6c59: $05
    ld b, d                                       ; $6c5a: $42
    ccf                                           ; $6c5b: $3f
    rst $20                                       ; $6c5c: $e7
    ld [hl], b                                    ; $6c5d: $70
    pop af                                        ; $6c5e: $f1
    adc [hl]                                      ; $6c5f: $8e
    or e                                          ; $6c60: $b3
    sbc [hl]                                      ; $6c61: $9e
    or e                                          ; $6c62: $b3
    jr nc, @-$1c                                  ; $6c63: $30 $e2

    inc bc                                        ; $6c65: $03
    rst $20                                       ; $6c66: $e7
    ld h, c                                       ; $6c67: $61
    ld a, c                                       ; $6c68: $79
    add d                                         ; $6c69: $82
    cp e                                          ; $6c6a: $bb
    jp $0949                                      ; $6c6b: $c3 $49 $09


    di                                            ; $6c6e: $f3
    nop                                           ; $6c6f: $00
    rra                                           ; $6c70: $1f
    rst $20                                       ; $6c71: $e7
    dec de                                        ; $6c72: $1b
    ld [hl-], a                                   ; $6c73: $32
    cp e                                          ; $6c74: $bb
    sbc c                                         ; $6c75: $99
    ld sp, hl                                     ; $6c76: $f9
    ld c, a                                       ; $6c77: $4f
    ld l, $b3                                     ; $6c78: $2e $b3
    jp nz, Jump_068_5b07                          ; $6c7a: $c2 $07 $5b

    ld h, $8e                                     ; $6c7d: $26 $8e
    or e                                          ; $6c7f: $b3
    rst $00                                       ; $6c80: $c7
    ld l, [hl]                                    ; $6c81: $6e
    ld [hl], e                                    ; $6c82: $73
    ld sp, hl                                     ; $6c83: $f9
    rra                                           ; $6c84: $1f
    jp hl                                         ; $6c85: $e9


    pop bc                                        ; $6c86: $c1
    rlca                                          ; $6c87: $07
    rst $20                                       ; $6c88: $e7
    ccf                                           ; $6c89: $3f
    xor a                                         ; $6c8a: $af
    ld [hl], a                                    ; $6c8b: $77
    inc l                                         ; $6c8c: $2c
    ld [hl], h                                    ; $6c8d: $74
    ei                                            ; $6c8e: $fb
    or d                                          ; $6c8f: $b2
    ret nz                                        ; $6c90: $c0

    ld a, [c]                                     ; $6c91: $f2
    call nz, Call_000_170f                        ; $6c92: $c4 $0f $17
    adc $ef                                       ; $6c95: $ce $ef
    ld h, d                                       ; $6c97: $62
    ld h, b                                       ; $6c98: $60
    ld [hl], a                                    ; $6c99: $77
    db $ec                                        ; $6c9a: $ec
    inc d                                         ; $6c9b: $14
    ld [$00fd], sp                                ; $6c9c: $08 $fd $00
    sub a                                         ; $6c9f: $97
    cp b                                          ; $6ca0: $b8
    adc c                                         ; $6ca1: $89
    jp hl                                         ; $6ca2: $e9


    ld h, $ce                                     ; $6ca3: $26 $ce
    rlca                                          ; $6ca5: $07
    rst $20                                       ; $6ca6: $e7
    adc [hl]                                      ; $6ca7: $8e
    db $fd                                        ; $6ca8: $fd
    call nc, $895e                                ; $6ca9: $d4 $5e $89
    ld h, l                                       ; $6cac: $65
    pop af                                        ; $6cad: $f1
    ld h, b                                       ; $6cae: $60
    sbc c                                         ; $6caf: $99
    dec d                                         ; $6cb0: $15
    jp nz, Jump_068_5b07                          ; $6cb1: $c2 $07 $5b

    ld h, c                                       ; $6cb4: $61
    add d                                         ; $6cb5: $82
    halt                                          ; $6cb6: $76
    add $4e                                       ; $6cb7: $c6 $4e
    or a                                          ; $6cb9: $b7
    ld [hl], d                                    ; $6cba: $72
    ld a, c                                       ; $6cbb: $79
    rst $38                                       ; $6cbc: $ff
    dec de                                        ; $6cbd: $1b
    sbc l                                         ; $6cbe: $9d
    rrca                                          ; $6cbf: $0f
    ld e, e                                       ; $6cc0: $5b
    rst $00                                       ; $6cc1: $c7
    jp nc, Jump_068_5d8c                          ; $6cc2: $d2 $8c $5d

    ret nc                                        ; $6cc5: $d0

    di                                            ; $6cc6: $f3
    cp b                                          ; $6cc7: $b8
    di                                            ; $6cc8: $f3
    inc bc                                        ; $6cc9: $03
    sbc e                                         ; $6cca: $9b
    db $ed                                        ; $6ccb: $ed
    xor c                                         ; $6ccc: $a9
    rst $38                                       ; $6ccd: $ff
    ld h, d                                       ; $6cce: $62
    scf                                           ; $6ccf: $37
    db $db                                        ; $6cd0: $db
    ld b, h                                       ; $6cd1: $44
    add c                                         ; $6cd2: $81
    rra                                           ; $6cd3: $1f
    add hl, bc                                    ; $6cd4: $09
    add hl, sp                                    ; $6cd5: $39
    adc c                                         ; $6cd6: $89
    push bc                                       ; $6cd7: $c5
    db $10                                        ; $6cd8: $10
    ld a, [hl-]                                   ; $6cd9: $3a
    db $dd                                        ; $6cda: $dd
    ld bc, $1be9                                  ; $6cdb: $01 $e9 $1b
    sbc d                                         ; $6cde: $9a
    ld l, b                                       ; $6cdf: $68
    inc de                                        ; $6ce0: $13
    di                                            ; $6ce1: $f3
    ld a, h                                       ; $6ce2: $7c
    rst $20                                       ; $6ce3: $e7
    add b                                         ; $6ce4: $80
    reti                                          ; $6ce5: $d9


    sbc [hl]                                      ; $6ce6: $9e
    ldh [$9e], a                                  ; $6ce7: $e0 $9e
    or e                                          ; $6ce9: $b3
    adc h                                         ; $6cea: $8c
    ld h, b                                       ; $6ceb: $60
    jp z, $e20f                                   ; $6cec: $ca $0f $e2

    adc e                                         ; $6cef: $8b
    rlca                                          ; $6cf0: $07
    sub [hl]                                      ; $6cf1: $96
    reti                                          ; $6cf2: $d9


    bit 4, [hl]                                   ; $6cf3: $cb $66
    ld [hl], d                                    ; $6cf5: $72
    ld a, [c]                                     ; $6cf6: $f2
    dec l                                         ; $6cf7: $2d
    rlc a                                         ; $6cf8: $cb $07
    ld d, a                                       ; $6cfa: $57
    ld [hl], c                                    ; $6cfb: $71
    push af                                       ; $6cfc: $f5
    ld h, b                                       ; $6cfd: $60
    cp l                                          ; $6cfe: $bd
    sub h                                         ; $6cff: $94
    sbc d                                         ; $6d00: $9a
    db $ed                                        ; $6d01: $ed
    db $fd                                        ; $6d02: $fd
    ld [bc], a                                    ; $6d03: $02
    ccf                                           ; $6d04: $3f
    ld d, a                                       ; $6d05: $57
    db $d3                                        ; $6d06: $d3
    jp nz, $9d82                                  ; $6d07: $c2 $82 $9d

    ld c, l                                       ; $6d0a: $4d
    ld e, h                                       ; $6d0b: $5c
    sbc b                                         ; $6d0c: $98
    di                                            ; $6d0d: $f3
    rlca                                          ; $6d0e: $07
    rst $20                                       ; $6d0f: $e7
    xor $94                                       ; $6d10: $ee $94
    ld a, [hl]                                    ; $6d12: $7e
    ld [hl-], a                                   ; $6d13: $32
    or d                                          ; $6d14: $b2
    rst $20                                       ; $6d15: $e7
    add hl, sp                                    ; $6d16: $39
    sub e                                         ; $6d17: $93
    ld c, h                                       ; $6d18: $4c
    db $e3                                        ; $6d19: $e3
    inc bc                                        ; $6d1a: $03
    rst $20                                       ; $6d1b: $e7
    cp c                                          ; $6d1c: $b9
    push bc                                       ; $6d1d: $c5
    inc bc                                        ; $6d1e: $03
    res 3, l                                      ; $6d1f: $cb $9d
    ld e, [hl]                                    ; $6d21: $5e
    ld b, $09                                     ; $6d22: $06 $09
    dec de                                        ; $6d24: $1b
    sbc l                                         ; $6d25: $9d
    rrca                                          ; $6d26: $0f
    ld d, a                                       ; $6d27: $57
    ld [hl+], a                                   ; $6d28: $22
    ld b, $2c                                     ; $6d29: $06 $2c
    cpl                                           ; $6d2b: $2f
    sub [hl]                                      ; $6d2c: $96
    ld c, l                                       ; $6d2d: $4d
    ret nc                                        ; $6d2e: $d0

    ld l, h                                       ; $6d2f: $6c
    adc h                                         ; $6d30: $8c
    ld c, c                                       ; $6d31: $49
    ld a, [hl]                                    ; $6d32: $7e
    sub a                                         ; $6d33: $97
    cp l                                          ; $6d34: $bd
    ld h, l                                       ; $6d35: $65
    reti                                          ; $6d36: $d9


    reti                                          ; $6d37: $d9


    bit 0, [hl]                                   ; $6d38: $cb $46
    jr nz, jr_068_6d7a                            ; $6d3a: $20 $3e

    sbc e                                         ; $6d3c: $9b
    ld l, c                                       ; $6d3d: $69
    set 4, h                                      ; $6d3e: $cb $e4
    call z, $be26                                 ; $6d40: $cc $26 $be
    jr z, jr_068_6d95                             ; $6d43: $28 $50

    di                                            ; $6d45: $f3
    ld b, h                                       ; $6d46: $44
    ld a, h                                       ; $6d47: $7c
    add hl, bc                                    ; $6d48: $09
    ld hl, $eb4d                                  ; $6d49: $21 $4d $eb
    adc [hl]                                      ; $6d4c: $8e
    ld l, h                                       ; $6d4d: $6c
    db $e3                                        ; $6d4e: $e3
    sub [hl]                                      ; $6d4f: $96
    inc [hl]                                      ; $6d50: $34
    db $ec                                        ; $6d51: $ec
    inc bc                                        ; $6d52: $03
    ld e, e                                       ; $6d53: $5b
    cp b                                          ; $6d54: $b8
    jp nz, $bf32                                  ; $6d55: $c2 $32 $bf

    ret nz                                        ; $6d58: $c0

    xor $10                                       ; $6d59: $ee $10
    inc b                                         ; $6d5b: $04
    db $e4                                        ; $6d5c: $e4
    rla                                           ; $6d5d: $17
    db $d3                                        ; $6d5e: $d3
    rra                                           ; $6d5f: $1f
    rst $20                                       ; $6d60: $e7
    dec l                                         ; $6d61: $2d
    ld e, h                                       ; $6d62: $5c
    dec a                                         ; $6d63: $3d
    and a                                         ; $6d64: $a7
    dec a                                         ; $6d65: $3d
    rlca                                          ; $6d66: $07
    adc e                                         ; $6d67: $8b
    ld h, a                                       ; $6d68: $67
    rst $20                                       ; $6d69: $e7
    rlca                                          ; $6d6a: $07
    rla                                           ; $6d6b: $17
    ld a, [hl-]                                   ; $6d6c: $3a
    call $9b4e                                    ; $6d6d: $cd $4e $9b
    ld hl, sp-$6a                                 ; $6d70: $f8 $96
    push hl                                       ; $6d72: $e5
    add hl, bc                                    ; $6d73: $09
    ld a, d                                       ; $6d74: $7a
    cp a                                          ; $6d75: $bf
    ret nz                                        ; $6d76: $c0

    dec b                                         ; $6d77: $05
    rra                                           ; $6d78: $1f
    db $db                                        ; $6d79: $db

jr_068_6d7a:
    add $56                                       ; $6d7a: $c6 $56
    ld e, b                                       ; $6d7c: $58
    ld a, d                                       ; $6d7d: $7a
    sbc c                                         ; $6d7e: $99
    and b                                         ; $6d7f: $a0
    adc c                                         ; $6d80: $89
    ld [bc], a                                    ; $6d81: $02
    ccf                                           ; $6d82: $3f
    db $db                                        ; $6d83: $db
    ld d, l                                       ; $6d84: $55
    db $10                                        ; $6d85: $10
    sub a                                         ; $6d86: $97
    ret nc                                        ; $6d87: $d0

    ld [hl], e                                    ; $6d88: $73
    ld b, b                                       ; $6d89: $40
    ld sp, hl                                     ; $6d8a: $f9
    inc [hl]                                      ; $6d8b: $34
    ld sp, hl                                     ; $6d8c: $f9
    ld bc, $c79b                                  ; $6d8d: $01 $9b $c7
    ld [hl+], a                                   ; $6d90: $22
    sub [hl]                                      ; $6d91: $96
    rst $20                                       ; $6d92: $e7
    or h                                          ; $6d93: $b4
    ld [c], a                                     ; $6d94: $e2

jr_068_6d95:
    ld l, c                                       ; $6d95: $69
    ld a, e                                       ; $6d96: $7b
    cp [hl]                                       ; $6d97: $be
    rst $08                                       ; $6d98: $cf
    rrca                                          ; $6d99: $0f
    rst $20                                       ; $6d9a: $e7
    cp e                                          ; $6d9b: $bb
    ld h, l                                       ; $6d9c: $65
    ld a, c                                       ; $6d9d: $79
    dec hl                                        ; $6d9e: $2b
    ld e, b                                       ; $6d9f: $58
    inc de                                        ; $6da0: $13
    ld b, a                                       ; $6da1: $47
    jr nz, @+$3e                                  ; $6da2: $20 $3c

    dec sp                                        ; $6da4: $3b
    ccf                                           ; $6da5: $3f
    db $db                                        ; $6da6: $db
    jr nz, @+$2a                                  ; $6da7: $20 $28

    ld [hl], a                                    ; $6da9: $77
    rst $00                                       ; $6daa: $c7
    ld c, a                                       ; $6dab: $4f
    ret                                           ; $6dac: $c9


    jr jr_068_6e0f                                ; $6dad: $18 $60

    rra                                           ; $6daf: $1f
    rst $20                                       ; $6db0: $e7
    cpl                                           ; $6db1: $2f
    adc b                                         ; $6db2: $88
    add c                                         ; $6db3: $81
    db $dd                                        ; $6db4: $dd
    sbc h                                         ; $6db5: $9c
    ld a, h                                       ; $6db6: $7c
    add hl, sp                                    ; $6db7: $39
    rst $08                                       ; $6db8: $cf
    cpl                                           ; $6db9: $2f
    ldh a, [$03]                                  ; $6dba: $f0 $03
    ld [c], a                                     ; $6dbc: $e2
    add c                                         ; $6dbd: $81
    adc e                                         ; $6dbe: $8b
    rlca                                          ; $6dbf: $07
    sub [hl]                                      ; $6dc0: $96
    ld a, e                                       ; $6dc1: $7b
    dec h                                         ; $6dc2: $25
    cp l                                          ; $6dc3: $bd
    sbc $e5                                       ; $6dc4: $de $e5
    push bc                                       ; $6dc6: $c5
    db $f4                                        ; $6dc7: $f4
    rlca                                          ; $6dc8: $07
    adc c                                         ; $6dc9: $89
    jr nc, jr_068_6deb                            ; $6dca: $30 $1f

    reti                                          ; $6dcc: $d9


    or c                                          ; $6dcd: $b1
    rst $20                                       ; $6dce: $e7
    ld sp, $e3fe                                  ; $6dcf: $31 $fe $e3
    inc l                                         ; $6dd2: $2c
    ld a, a                                       ; $6dd3: $7f
    sbc e                                         ; $6dd4: $9b
    xor c                                         ; $6dd5: $a9
    jp z, $8c18                                   ; $6dd6: $ca $18 $8c

    cp l                                          ; $6dd9: $bd
    add d                                         ; $6dda: $82
    sbc [hl]                                      ; $6ddb: $9e
    add l                                         ; $6ddc: $85
    ld e, c                                       ; $6ddd: $59

Call_068_6dde:
    dec b                                         ; $6dde: $05
    xor $fc                                       ; $6ddf: $ee $fc
    nop                                           ; $6de1: $00
    ld e, e                                       ; $6de2: $5b
    rst $00                                       ; $6de3: $c7
    ld d, a                                       ; $6de4: $57
    and a                                         ; $6de5: $a7
    rra                                           ; $6de6: $1f
    rst $20                                       ; $6de7: $e7
    inc l                                         ; $6de8: $2c
    adc b                                         ; $6de9: $88
    ld c, c                                       ; $6dea: $49

jr_068_6deb:
    inc a                                         ; $6deb: $3c
    reti                                          ; $6dec: $d9


    dec e                                         ; $6ded: $1d
    sbc c                                         ; $6dee: $99
    adc e                                         ; $6def: $8b
    ret nz                                        ; $6df0: $c0

    rrca                                          ; $6df1: $0f
    ld [c], a                                     ; $6df2: $e2
    adc e                                         ; $6df3: $8b
    rlca                                          ; $6df4: $07
    or $fe                                        ; $6df5: $f6 $fe
    sbc [hl]                                      ; $6df7: $9e
    ld l, a                                       ; $6df8: $6f
    ld l, $c6                                     ; $6df9: $2e $c6
    scf                                           ; $6dfb: $37
    pop af                                        ; $6dfc: $f1
    inc bc                                        ; $6dfd: $03
    ld e, e                                       ; $6dfe: $5b
    ld h, c                                       ; $6dff: $61
    res 1, e                                      ; $6e00: $cb $8b
    rra                                           ; $6e02: $1f
    add hl, bc                                    ; $6e03: $09
    adc e                                         ; $6e04: $8b
    rst $10                                       ; $6e05: $d7
    ld e, [hl]                                    ; $6e06: $5e
    ld h, b                                       ; $6e07: $60
    scf                                           ; $6e08: $37
    cpl                                           ; $6e09: $2f
    ld c, h                                       ; $6e0a: $4c
    and a                                         ; $6e0b: $a7
    ccf                                           ; $6e0c: $3f
    rst $20                                       ; $6e0d: $e7
    db $db                                        ; $6e0e: $db

jr_068_6e0f:
    and h                                         ; $6e0f: $a4
    add hl, de                                    ; $6e10: $19
    cp e                                          ; $6e11: $bb
    inc hl                                        ; $6e12: $23
    dec sp                                        ; $6e13: $3b
    jp hl                                         ; $6e14: $e9


    ld a, a                                       ; $6e15: $7f
    rst $20                                       ; $6e16: $e7
    jr c, jr_068_6e24                             ; $6e17: $38 $0b

    di                                            ; $6e19: $f3
    dec bc                                        ; $6e1a: $0b
    db $ec                                        ; $6e1b: $ec
    ld d, [hl]                                    ; $6e1c: $56
    or a                                          ; $6e1d: $b7
    add h                                         ; $6e1e: $84
    sbc c                                         ; $6e1f: $99
    ld hl, sp+$01                                 ; $6e20: $f8 $01
    ld [c], a                                     ; $6e22: $e2
    adc e                                         ; $6e23: $8b

jr_068_6e24:
    add h                                         ; $6e24: $84
    cp l                                          ; $6e25: $bd
    ld e, a                                       ; $6e26: $5f
    ld h, b                                       ; $6e27: $60
    ld [hl], a                                    ; $6e28: $77
    ld d, b                                       ; $6e29: $50
    sub b                                         ; $6e2a: $90
    rst $00                                       ; $6e2b: $c7
    ld e, [hl]                                    ; $6e2c: $5e
    ld c, b                                       ; $6e2d: $48
    db $e3                                        ; $6e2e: $e3
    inc bc                                        ; $6e2f: $03
    ld [c], a                                     ; $6e30: $e2
    sub [hl]                                      ; $6e31: $96
    ld hl, $3e9f                                  ; $6e32: $21 $9f $3e
    or $62                                        ; $6e35: $f6 $62
    rst $20                                       ; $6e37: $e7
    dec d                                         ; $6e38: $15
    ld hl, sp-$1e                                 ; $6e39: $f8 $e2
    rlca                                          ; $6e3b: $07
    rst $20                                       ; $6e3c: $e7
    ld c, a                                       ; $6e3d: $4f
    inc c                                         ; $6e3e: $0c
    or e                                          ; $6e3f: $b3
    cp h                                          ; $6e40: $bc
    adc b                                         ; $6e41: $88
    ld l, [hl]                                    ; $6e42: $6e
    ld e, a                                       ; $6e43: $5f
    sbc [hl]                                      ; $6e44: $9e
    sbc a                                         ; $6e45: $9f
    ld h, h                                       ; $6e46: $64
    call z, Call_068_5b1f                         ; $6e47: $cc $1f $5b
    daa                                           ; $6e4a: $27
    ld h, [hl]                                    ; $6e4b: $66
    and [hl]                                      ; $6e4c: $a6
    dec e                                         ; $6e4d: $1d
    ld a, d                                       ; $6e4e: $7a
    ld d, c                                       ; $6e4f: $51
    ld a, h                                       ; $6e50: $7c
    jp hl                                         ; $6e51: $e9


    ld h, h                                       ; $6e52: $64
    ld e, [hl]                                    ; $6e53: $5e
    or b                                          ; $6e54: $b0
    di                                            ; $6e55: $f3
    inc bc                                        ; $6e56: $03
    ld e, e                                       ; $6e57: $5b
    ld l, b                                       ; $6e58: $68
    or [hl]                                       ; $6e59: $b6
    or e                                          ; $6e5a: $b3
    adc c                                         ; $6e5b: $89
    sub e                                         ; $6e5c: $93
    inc sp                                        ; $6e5d: $33
    db $ec                                        ; $6e5e: $ec
    cp $00                                        ; $6e5f: $fe $00
    rst $20                                       ; $6e61: $e7
    jp nz, $2104                                  ; $6e62: $c2 $04 $21

    and $ee                                       ; $6e65: $e6 $ee
    ld c, b                                       ; $6e67: $48
    ld a, $e9                                     ; $6e68: $3e $e9
    cpl                                           ; $6e6a: $2f
    cpl                                           ; $6e6b: $2f
    and [hl]                                      ; $6e6c: $a6
    ccf                                           ; $6e6d: $3f
    rst $20                                       ; $6e6e: $e7
    cp e                                          ; $6e6f: $bb
    sbc b                                         ; $6e70: $98
    ld a, h                                       ; $6e71: $7c
    ld c, e                                       ; $6e72: $4b
    ld h, b                                       ; $6e73: $60
    inc bc                                        ; $6e74: $03
    ld a, d                                       ; $6e75: $7a
    cp $98                                        ; $6e76: $fe $98
    ld b, d                                       ; $6e78: $42
    adc $d8                                       ; $6e79: $ce $d8
    rlca                                          ; $6e7b: $07
    sbc e                                         ; $6e7c: $9b
    sub a                                         ; $6e7d: $97
    scf                                           ; $6e7e: $37
    ld hl, $03e2                                  ; $6e7f: $21 $e2 $03

jr_068_6e82:
    rst $20                                       ; $6e82: $e7
    add b                                         ; $6e83: $80
    ld c, [hl]                                    ; $6e84: $4e
    ld c, [hl]                                    ; $6e85: $4e
    call z, Call_068_4add                         ; $6e86: $cc $dd $4a
    inc de                                        ; $6e89: $13
    jr nc, jr_068_6e82                            ; $6e8a: $30 $f6

    inc a                                         ; $6e8c: $3c
    adc h                                         ; $6e8d: $8c
    ld [bc], a                                    ; $6e8e: $02
    push af                                       ; $6e8f: $f5
    inc bc                                        ; $6e90: $03
    sbc e                                         ; $6e91: $9b

jr_068_6e92:
    sub e                                         ; $6e92: $93
    ld [hl], h                                    ; $6e93: $74
    pop af                                        ; $6e94: $f1
    rst $00                                       ; $6e95: $c7
    adc $6e                                       ; $6e96: $ce $6e
    ld e, a                                       ; $6e98: $5f
    add d                                         ; $6e99: $82
    cp l                                          ; $6e9a: $bd
    sub b                                         ; $6e9b: $90
    add $07                                       ; $6e9c: $c6 $07
    ld e, e                                       ; $6e9e: $5b
    ld e, l                                       ; $6e9f: $5d
    ld c, h                                       ; $6ea0: $4c
    ld c, a                                       ; $6ea1: $4f
    rst $08                                       ; $6ea2: $cf
    sbc c                                         ; $6ea3: $99
    sbc b                                         ; $6ea4: $98
    and h                                         ; $6ea5: $a4
    db $fc                                        ; $6ea6: $fc
    nop                                           ; $6ea7: $00
    ld d, a                                       ; $6ea8: $57
    cp [hl]                                       ; $6ea9: $be
    push bc                                       ; $6eaa: $c5
    ld l, e                                       ; $6eab: $6b
    ld [$584d], sp                                ; $6eac: $08 $4d $58
    db $fc                                        ; $6eaf: $fc
    db $e4                                        ; $6eb0: $e4
    ei                                            ; $6eb1: $fb
    dec b                                         ; $6eb2: $05
    ld a, [hl]                                    ; $6eb3: $7e
    rst $20                                       ; $6eb4: $e7
    ret c                                         ; $6eb5: $d8

    dec bc                                        ; $6eb6: $0b
    ld l, c                                       ; $6eb7: $69
    db $e4                                        ; $6eb8: $e4
    ld e, [hl]                                    ; $6eb9: $5e
    adc c                                         ; $6eba: $89
    cp b                                          ; $6ebb: $b8
    call z, $f02f                                 ; $6ebc: $cc $2f $f0
    inc bc                                        ; $6ebf: $03
    rst $20                                       ; $6ec0: $e7
    ld c, a                                       ; $6ec1: $4f
    or b                                          ; $6ec2: $b0
    rst $30                                       ; $6ec3: $f7
    rst $30                                       ; $6ec4: $f7
    ld a, h                                       ; $6ec5: $7c
    db $db                                        ; $6ec6: $db
    jp hl                                         ; $6ec7: $e9


    push af                                       ; $6ec8: $f5
    cp [hl]                                       ; $6ec9: $be
    jr jr_068_6e92                                ; $6eca: $18 $c6

    ld a, $5b                                     ; $6ecc: $3e $5b
    sbc a                                         ; $6ece: $9f
    ld sp, $f606                                  ; $6ecf: $31 $06 $f6
    db $fc                                        ; $6ed2: $fc
    pop de                                        ; $6ed3: $d1
    inc h                                         ; $6ed4: $24
    dec b                                         ; $6ed5: $05
    add hl, bc                                    ; $6ed6: $09
    db $fc                                        ; $6ed7: $fc
    nop                                           ; $6ed8: $00
    dec sp                                        ; $6ed9: $3b
    cp b                                          ; $6eda: $b8
    ld [hl], b                                    ; $6edb: $70
    rla                                           ; $6edc: $17
    xor l                                         ; $6edd: $ad
    dec sp                                        ; $6ede: $3b
    sub [hl]                                      ; $6edf: $96
    sbc l                                         ; $6ee0: $9d
    add hl, sp                                    ; $6ee1: $39
    add hl, bc                                    ; $6ee2: $09
    ld a, e                                       ; $6ee3: $7b
    pop af                                        ; $6ee4: $f1
    inc bc                                        ; $6ee5: $03
    sub a                                         ; $6ee6: $97
    jr c, jr_068_6f09                             ; $6ee7: $38 $20

    halt                                          ; $6ee9: $76
    dec hl                                        ; $6eea: $2b
    or c                                          ; $6eeb: $b1
    jp nz, Jump_068_5b07                          ; $6eec: $c2 $07 $5b

    or b                                          ; $6eef: $b0
    and h                                         ; $6ef0: $a4
    reti                                          ; $6ef1: $d9


    dec l                                         ; $6ef2: $2d
    adc $eb                                       ; $6ef3: $ce $eb
    ld e, l                                       ; $6ef5: $5d
    ldh [$3b], a                                  ; $6ef6: $e0 $3b
    xor a                                         ; $6ef8: $af
    rst $30                                       ; $6ef9: $f7
    inc bc                                        ; $6efa: $03
    sub a                                         ; $6efb: $97
    adc [hl]                                      ; $6efc: $8e
    jr nz, jr_068_6f43                            ; $6efd: $20 $44

    or $52                                        ; $6eff: $f6 $52
    xor [hl]                                      ; $6f01: $ae
    db $10                                        ; $6f02: $10
    rst $38                                       ; $6f03: $ff

jr_068_6f04:
    add l                                         ; $6f04: $85
    add d                                         ; $6f05: $82
    ld a, $5b                                     ; $6f06: $3e $5b
    db $10                                        ; $6f08: $10

jr_068_6f09:
    db $d3                                        ; $6f09: $d3
    ld c, a                                       ; $6f0a: $4f
    ld [hl], e                                    ; $6f0b: $73
    rst $00                                       ; $6f0c: $c7
    db $db                                        ; $6f0d: $db
    dec hl                                        ; $6f0e: $2b
    ld h, a                                       ; $6f0f: $67
    jp nz, $e36f                                  ; $6f10: $c2 $6f $e3

    call $e71f                                    ; $6f13: $cd $1f $e7
    ld a, [c]                                     ; $6f16: $f2
    jp hl                                         ; $6f17: $e9


    adc $9e                                       ; $6f18: $ce $9e
    dec sp                                        ; $6f1a: $3b
    ld hl, $5ec0                                  ; $6f1b: $21 $c0 $5e
    ld c, b                                       ; $6f1e: $48
    db $e3                                        ; $6f1f: $e3
    inc bc                                        ; $6f20: $03
    ld [c], a                                     ; $6f21: $e2
    adc e                                         ; $6f22: $8b
    rst $00                                       ; $6f23: $c7
    ld l, c                                       ; $6f24: $69
    rst $08                                       ; $6f25: $cf
    ld [hl], l                                    ; $6f26: $75
    jp nc, Jump_000_20b3                          ; $6f27: $d2 $b3 $20

    adc h                                         ; $6f2a: $8c

jr_068_6f2b:
    pop hl                                        ; $6f2b: $e1
    inc bc                                        ; $6f2c: $03
    rst $20                                       ; $6f2d: $e7
    ld c, [hl]                                    ; $6f2e: $4e
    ld h, h                                       ; $6f2f: $64
    ld a, [hl-]                                   ; $6f30: $3a
    ret                                           ; $6f31: $c9


    ret c                                         ; $6f32: $d8

    rrc h                                         ; $6f33: $cb $0c
    ld [hl], d                                    ; $6f35: $72
    ld b, c                                       ; $6f36: $41
    adc $1f                                       ; $6f37: $ce $1f
    ld e, e                                       ; $6f39: $5b
    sbc l                                         ; $6f3a: $9d
    cp [hl]                                       ; $6f3b: $be
    jr nc, jr_068_6f04                            ; $6f3c: $30 $c6

    sbc [hl]                                      ; $6f3e: $9e
    ld b, e                                       ; $6f3f: $43
    inc de                                        ; $6f40: $13
    jr z, jr_068_6f2b                             ; $6f41: $28 $e8

jr_068_6f43:
    push hl                                       ; $6f43: $e5
    db $e4                                        ; $6f44: $e4
    rlca                                          ; $6f45: $07
    rst $20                                       ; $6f46: $e7
    cp a                                          ; $6f47: $bf
    add b                                         ; $6f48: $80
    adc c                                         ; $6f49: $89
    db $dd                                        ; $6f4a: $dd
    ld l, h                                       ; $6f4b: $6c
    ld c, [hl]                                    ; $6f4c: $4e
    ld a, d                                       ; $6f4d: $7a
    ld a, $5b                                     ; $6f4e: $3e $5b
    ld h, b                                       ; $6f50: $60
    sub d                                         ; $6f51: $92
    or c                                          ; $6f52: $b1
    ld d, a                                       ; $6f53: $57
    cp [hl]                                       ; $6f54: $be
    sbc b                                         ; $6f55: $98
    db $ed                                        ; $6f56: $ed
    push bc                                       ; $6f57: $c5
    ld [hl], h                                    ; $6f58: $74
    sub d                                         ; $6f59: $92
    ld a, [c]                                     ; $6f5a: $f2
    inc bc                                        ; $6f5b: $03
    rla                                           ; $6f5c: $17
    dec a                                         ; $6f5d: $3d
    ld e, e                                       ; $6f5e: $5b
    or b                                          ; $6f5f: $b0
    or e                                          ; $6f60: $b3
    rst $20                                       ; $6f61: $e7
    ld a, [hl-]                                   ; $6f62: $3a
    add c                                         ; $6f63: $81
    ld hl, sp+$00                                 ; $6f64: $f8 $00
    ld e, e                                       ; $6f66: $5b
    ld [hl], a                                    ; $6f67: $77
    jp c, Jump_068_5ec4                           ; $6f68: $da $c4 $5e

    ret                                           ; $6f6b: $c9


    ld [hl], h                                    ; $6f6c: $74
    and $5b                                       ; $6f6d: $e6 $5b
    ld a, $db                                     ; $6f6f: $3e $db
    ld c, l                                       ; $6f71: $4d
    ld e, a                                       ; $6f72: $5f
    sbc h                                         ; $6f73: $9c
    ld e, [hl]                                    ; $6f74: $5e
    sub [hl]                                      ; $6f75: $96
    inc [hl]                                      ; $6f76: $34
    and a                                         ; $6f77: $a7
    ld a, c                                       ; $6f78: $79
    ld [c], a                                     ; $6f79: $e2
    rlca                                          ; $6f7a: $07
    sbc e                                         ; $6f7b: $9b
    or c                                          ; $6f7c: $b1
    ld b, b                                       ; $6f7d: $40
    di                                            ; $6f7e: $f3
    adc e                                         ; $6f7f: $8b
    db $ec                                        ; $6f80: $ec
    sub l                                         ; $6f81: $95
    inc [hl]                                      ; $6f82: $34
    rrca                                          ; $6f83: $0f
    ld a, [hl]                                    ; $6f84: $7e
    add c                                         ; $6f85: $81
    rra                                           ; $6f86: $1f
    ld e, e                                       ; $6f87: $5b
    ret nz                                        ; $6f88: $c0

    sbc h                                         ; $6f89: $9c
    db $fc                                        ; $6f8a: $fc
    daa                                           ; $6f8b: $27
    and e                                         ; $6f8c: $a3
    rst $20                                       ; $6f8d: $e7
    ret nc                                        ; $6f8e: $d0

    inc a                                         ; $6f8f: $3c
    or h                                          ; $6f90: $b4
    sbc l                                         ; $6f91: $9d
    rra                                           ; $6f92: $1f
    ld e, e                                       ; $6f93: $5b
    ld h, c                                       ; $6f94: $61

Call_068_6f95:
    ld a, c                                       ; $6f95: $79
    ld h, d                                       ; $6f96: $62
    rst $08                                       ; $6f97: $cf
    scf                                           ; $6f98: $37
    xor [hl]                                      ; $6f99: $ae
    and b                                         ; $6f9a: $a0
    rra                                           ; $6f9b: $1f
    rst $20                                       ; $6f9c: $e7
    adc h                                         ; $6f9d: $8c
    jr nz, @-$35                                  ; $6f9e: $20 $c9

    ret c                                         ; $6fa0: $d8

    dec hl                                        ; $6fa1: $2b
    db $ed                                        ; $6fa2: $ed
    and l                                         ; $6fa3: $a5
    sub e                                         ; $6fa4: $93
    ld sp, hl                                     ; $6fa5: $f9
    inc bc                                        ; $6fa6: $03
    rla                                           ; $6fa7: $17
    adc [hl]                                      ; $6fa8: $8e
    cp $58                                        ; $6fa9: $fe $58
    ld e, [hl]                                    ; $6fab: $5e
    inc c                                         ; $6fac: $0c
    cp l                                          ; $6fad: $bd
    sub d                                         ; $6fae: $92
    pop hl                                        ; $6faf: $e1
    sbc a                                         ; $6fb0: $9f
    ld e, a                                       ; $6fb1: $5f
    ldh [rTAC], a                                 ; $6fb2: $e0 $07
    rst $20                                       ; $6fb4: $e7
    dec bc                                        ; $6fb5: $0b
    ld b, d                                       ; $6fb6: $42
    sbc h                                         ; $6fb7: $9c
    ld [hl], h                                    ; $6fb8: $74
    cpl                                           ; $6fb9: $2f
    sbc h                                         ; $6fba: $9c
    ld [$00fd], sp                                ; $6fbb: $08 $fd $00
    sbc e                                         ; $6fbe: $9b
    ld [hl], a                                    ; $6fbf: $77
    ld a, [$18f6]                                 ; $6fc0: $fa $f6 $18
    ld a, e                                       ; $6fc3: $7b
    push af                                       ; $6fc4: $f5
    cp b                                          ; $6fc5: $b8
    or b                                          ; $6fc6: $b0
    ldh [$03], a                                  ; $6fc7: $e0 $03
    rst $20                                       ; $6fc9: $e7
    ld h, d                                       ; $6fca: $62
    or l                                          ; $6fcb: $b5
    cp h                                          ; $6fcc: $bc
    ret c                                         ; $6fcd: $d8

    dec hl                                        ; $6fce: $2b
    sub e                                         ; $6fcf: $93
    cpl                                           ; $6fd0: $2f
    inc hl                                        ; $6fd1: $23
    add hl, sp                                    ; $6fd2: $39
    ld d, $3f                                     ; $6fd3: $16 $3f
    rst $20                                       ; $6fd5: $e7
    cp d                                          ; $6fd6: $ba
    add sp, -$5f                                  ; $6fd7: $e8 $a1
    ld [hl], l                                    ; $6fd9: $75
    ld a, e                                       ; $6fda: $7b
    ld a, d                                       ; $6fdb: $7a
    ld b, c                                       ; $6fdc: $41
    ld c, [hl]                                    ; $6fdd: $4e
    adc [hl]                                      ; $6fde: $8e
    ld sp, hl                                     ; $6fdf: $f9
    ld hl, sp+$00                                 ; $6fe0: $f8 $00
    rla                                           ; $6fe2: $17
    ld h, e                                       ; $6fe3: $63
    db $fc                                        ; $6fe4: $fc
    ld e, c                                       ; $6fe5: $59
    jp nz, $ec8b                                  ; $6fe6: $c2 $8b $ec

    ld c, $89                                     ; $6fe9: $0e $89
    sbc h                                         ; $6feb: $9c
    inc d                                         ; $6fec: $14
    or h                                          ; $6fed: $b4
    di                                            ; $6fee: $f3
    rla                                           ; $6fef: $17
    ld hl, sp+$01                                 ; $6ff0: $f8 $01
    sub a                                         ; $6ff2: $97
    ld c, [hl]                                    ; $6ff3: $4e
    add b                                         ; $6ff4: $80
    cp l                                          ; $6ff5: $bd
    ld e, a                                       ; $6ff6: $5f
    ld h, b                                       ; $6ff7: $60
    inc de                                        ; $6ff8: $13
    rla                                           ; $6ff9: $17
    daa                                           ; $6ffa: $27
    db $fd                                        ; $6ffb: $fd
    inc a                                         ; $6ffc: $3c
    pop af                                        ; $6ffd: $f1
    inc bc                                        ; $6ffe: $03
    sub a                                         ; $6fff: $97
    adc $c2                                       ; $7000: $ce $c2
    jr jr_068_707e                                ; $7002: $18 $7a

    ld de, $e9d2                                  ; $7004: $11 $d2 $e9
    rrca                                          ; $7007: $0f
    ld e, e                                       ; $7008: $5b
    ld h, b                                       ; $7009: $60
    cp $34                                        ; $700a: $fe $34
    daa                                           ; $700c: $27
    pop de                                        ; $700d: $d1
    di                                            ; $700e: $f3
    add $2d                                       ; $700f: $c6 $2d
    rra                                           ; $7011: $1f
    ld [c], a                                     ; $7012: $e2
    ld sp, $a8d8                                  ; $7013: $31 $d8 $a8
    xor b                                         ; $7016: $a8
    db $d3                                        ; $7017: $d3
    dec bc                                        ; $7018: $0b
    ld [c], a                                     ; $7019: $e2
    ld a, [bc]                                    ; $701a: $0a
    pop af                                        ; $701b: $f1
    rst $18                                       ; $701c: $df
    ld l, l                                       ; $701d: $6d
    add l                                         ; $701e: $85
    push hl                                       ; $701f: $e5
    inc bc                                        ; $7020: $03
    sub a                                         ; $7021: $97
    db $db                                        ; $7022: $db
    ei                                            ; $7023: $fb
    ld b, l                                       ; $7024: $45
    sbc l                                         ; $7025: $9d
    ld e, [hl]                                    ; $7026: $5e
    db $10                                        ; $7027: $10
    rst $38                                       ; $7028: $ff
    sub c                                         ; $7029: $91
    ld a, $6d                                     ; $702a: $3e $6d
    ld l, l                                       ; $702c: $6d
    add l                                         ; $702d: $85
    and l                                         ; $702e: $a5
    sbc e                                         ; $702f: $9b
    db $ed                                        ; $7030: $ed
    add b                                         ; $7031: $80
    adc b                                         ; $7032: $88
    ld sp, hl                                     ; $7033: $f9
    nop                                           ; $7034: $00
    rla                                           ; $7035: $17
    adc a                                         ; $7036: $8f
    add l                                         ; $7037: $85
    xor $c8                                       ; $7038: $ee $c8
    inc de                                        ; $703a: $13
    ld [bc], a                                    ; $703b: $02
    dec l                                         ; $703c: $2d
    db $f4                                        ; $703d: $f4
    jp z, $9397                                   ; $703e: $ca $97 $93

    jr nc, @-$01                                  ; $7041: $30 $fd

    nop                                           ; $7043: $00
    sbc e                                         ; $7044: $9b
    sbc a                                         ; $7045: $9f
    db $fd                                        ; $7046: $fd
    ld hl, sp+$00                                 ; $7047: $f8 $00
    ld e, e                                       ; $7049: $5b
    sbc a                                         ; $704a: $9f
    pop de                                        ; $704b: $d1
    add e                                         ; $704c: $83
    ld h, l                                       ; $704d: $65
    ld h, c                                       ; $704e: $61
    inc de                                        ; $704f: $13
    rla                                           ; $7050: $17
    rla                                           ; $7051: $17
    dec b                                         ; $7052: $05
    ld [hl+], a                                   ; $7053: $22
    rst $20                                       ; $7054: $e7
    rrca                                          ; $7055: $0f
    rst $20                                       ; $7056: $e7
    ret nz                                        ; $7057: $c0

    ld a, [c]                                     ; $7058: $f2
    ld b, e                                       ; $7059: $43
    rst $08                                       ; $705a: $cf
    sbc c                                         ; $705b: $99
    sbc h                                         ; $705c: $9c
    ccf                                           ; $705d: $3f
    sub a                                         ; $705e: $97

jr_068_705f:
    dec h                                         ; $705f: $25
    add hl, de                                    ; $7060: $19
    ld [bc], a                                    ; $7061: $02
    sbc h                                         ; $7062: $9c
    or $b2                                        ; $7063: $f6 $b2
    and h                                         ; $7065: $a4
    inc sp                                        ; $7066: $33
    add c                                         ; $7067: $81
    ld e, b                                       ; $7068: $58
    sub [hl]                                      ; $7069: $96
    rrca                                          ; $706a: $0f
    rst $20                                       ; $706b: $e7
    ld b, d                                       ; $706c: $42
    rst $38                                       ; $706d: $ff
    adc c                                         ; $706e: $89
    ld c, c                                       ; $706f: $49
    db $fc                                        ; $7070: $fc
    cpl                                           ; $7071: $2f
    call z, $fd07                                 ; $7072: $cc $07 $fd
    nop                                           ; $7075: $00
    add hl, bc                                    ; $7076: $09
    add d                                         ; $7077: $82
    pop af                                        ; $7078: $f1
    cp e                                          ; $7079: $bb
    ld c, h                                       ; $707a: $4c
    xor e                                         ; $707b: $ab
    ld a, b                                       ; $707c: $78
    ld h, [hl]                                    ; $707d: $66

jr_068_707e:
    jp z, Jump_000_03e1                           ; $707e: $ca $e1 $03

    db $ed                                        ; $7081: $ed
    ld [hl], l                                    ; $7082: $75
    add hl, bc                                    ; $7083: $09
    sbc d                                         ; $7084: $9a
    ld e, l                                       ; $7085: $5d
    jr jr_068_705f                                ; $7086: $18 $d7

    pop de                                        ; $7088: $d1
    jp nz, $978b                                  ; $7089: $c2 $8b $97

    ld b, a                                       ; $708c: $47
    dec de                                        ; $708d: $1b
    xor b                                         ; $708e: $a8
    push af                                       ; $708f: $f5
    ld d, d                                       ; $7090: $52
    and c                                         ; $7091: $a1
    dec c                                         ; $7092: $0d
    db $ec                                        ; $7093: $ec
    ld [c], a                                     ; $7094: $e2
    ret c                                         ; $7095: $d8

    ret z                                         ; $7096: $c8

    ld h, d                                       ; $7097: $62
    and c                                         ; $7098: $a1
    ld h, a                                       ; $7099: $67
    adc h                                         ; $709a: $8c
    db $eb                                        ; $709b: $eb
    add l                                         ; $709c: $85
    db $d3                                        ; $709d: $d3
    add b                                         ; $709e: $80
    ld a, [$feb3]                                 ; $709f: $fa $b3 $fe
    ld h, b                                       ; $70a2: $60
    add sp, -$03                                  ; $70a3: $e8 $fd
    ld bc, $75ed                                  ; $70a5: $01 $ed $75
    db $db                                        ; $70a8: $db
    dec hl                                        ; $70a9: $2b

Call_068_70aa:
    ld sp, hl                                     ; $70aa: $f9
    add $1a                                       ; $70ab: $c6 $1a
    ret nc                                        ; $70ad: $d0

    inc a                                         ; $70ae: $3c
    ld h, c                                       ; $70af: $61
    or h                                          ; $70b0: $b4
    and e                                         ; $70b1: $a3
    push hl                                       ; $70b2: $e5
    sub d                                         ; $70b3: $92
    ld [hl], d                                    ; $70b4: $72
    ld c, a                                       ; $70b5: $4f
    ld a, $cd                                     ; $70b6: $3e $cd
    call nc, $844a                                ; $70b8: $d4 $4a $84
    add a                                         ; $70bb: $87
    dec d                                         ; $70bc: $15
    sbc a                                         ; $70bd: $9f
    sbc $1f                                       ; $70be: $de $1f
    db $ed                                        ; $70c0: $ed
    ld [hl], l                                    ; $70c1: $75
    ld e, e                                       ; $70c2: $5b
    add hl, de                                    ; $70c3: $19
    jp $b2b8                                      ; $70c4: $c3 $b8 $b2


    ld e, h                                       ; $70c7: $5c
    ld [bc], a                                    ; $70c8: $02
    ld e, $7b                                     ; $70c9: $1e $7b
    pop af                                        ; $70cb: $f1
    bit 7, c                                      ; $70cc: $cb $79
    ld b, c                                       ; $70ce: $41
    rst $08                                       ; $70cf: $cf
    or l                                          ; $70d0: $b5
    pop af                                        ; $70d1: $f1
    db $fd                                        ; $70d2: $fd
    rla                                           ; $70d3: $17
    db $d3                                        ; $70d4: $d3
    push af                                       ; $70d5: $f5
    or c                                          ; $70d6: $b1
    adc h                                         ; $70d7: $8c
    sub [hl]                                      ; $70d8: $96
    ld b, $2d                                     ; $70d9: $06 $2d
    ld h, d                                       ; $70db: $62
    jp z, $e631                                   ; $70dc: $ca $31 $e6

    xor c                                         ; $70df: $a9
    sub a                                         ; $70e0: $97
    cp e                                          ; $70e1: $bb
    ld e, $eb                                     ; $70e2: $1e $eb
    ld h, h                                       ; $70e4: $64
    dec a                                         ; $70e5: $3d
    or e                                          ; $70e6: $b3
    ld c, h                                       ; $70e7: $4c
    inc bc                                        ; $70e8: $03
    jp z, Jump_068_56f8                           ; $70e9: $ca $f8 $56

    jr nc, jr_068_714b                            ; $70ec: $30 $5d

    or e                                          ; $70ee: $b3
    scf                                           ; $70ef: $37
    push af                                       ; $70f0: $f5
    rst $00                                       ; $70f1: $c7
    ld a, [hl+]                                   ; $70f2: $2a
    sbc c                                         ; $70f3: $99
    ld a, [hl]                                    ; $70f4: $7e
    cp h                                          ; $70f5: $bc
    ccf                                           ; $70f6: $3f
    db $ed                                        ; $70f7: $ed
    ld [hl], l                                    ; $70f8: $75
    rst $20                                       ; $70f9: $e7
    ld b, d                                       ; $70fa: $42
    rst $38                                       ; $70fb: $ff
    pop af                                        ; $70fc: $f1
    ret c                                         ; $70fd: $d8

    ld [hl], e                                    ; $70fe: $73
    ld h, l                                       ; $70ff: $65
    jp hl                                         ; $7100: $e9


    cpl                                           ; $7101: $2f
    rst $28                                       ; $7102: $ef
    rst $20                                       ; $7103: $e7
    ld a, d                                       ; $7104: $7a
    pop hl                                        ; $7105: $e1
    inc [hl]                                      ; $7106: $34
    and b                                         ; $7107: $a0
    rst $20                                       ; $7108: $e7
    dec sp                                        ; $7109: $3b
    inc l                                         ; $710a: $2c
    add $3f                                       ; $710b: $c6 $3f
    add hl, sp                                    ; $710d: $39
    ld c, l                                       ; $710e: $4d
    add hl, sp                                    ; $710f: $39
    add $30                                       ; $7110: $c6 $30
    ld b, l                                       ; $7112: $45
    db $f4                                        ; $7113: $f4
    cp [hl]                                       ; $7114: $be
    ld [hl], c                                    ; $7115: $71
    ld h, l                                       ; $7116: $65
    ld a, a                                       ; $7117: $7f
    ld a, d                                       ; $7118: $7a
    or b                                          ; $7119: $b0
    sbc [hl]                                      ; $711a: $9e
    adc l                                         ; $711b: $8d
    ld c, [hl]                                    ; $711c: $4e
    sub $c3                                       ; $711d: $d6 $c3
    dec h                                         ; $711f: $25
    and b                                         ; $7120: $a0
    ld bc, $4b5d                                  ; $7121: $01 $5d $4b
    dec sp                                        ; $7124: $3b
    sbc $1f                                       ; $7125: $de $1f
    db $ed                                        ; $7127: $ed
    ld [hl], l                                    ; $7128: $75
    sbc e                                         ; $7129: $9b
    rst $10                                       ; $712a: $d7
    dec l                                         ; $712b: $2d
    ldh a, [rNR23]                                ; $712c: $f0 $18
    ld a, [$0ae2]                                 ; $712e: $fa $e2 $0a
    ld sp, $358f                                  ; $7131: $31 $8f $35

Jump_068_7134:
    ld c, h                                       ; $7134: $4c
    scf                                           ; $7135: $37
    ld [hl], e                                    ; $7136: $73
    add hl, bc                                    ; $7137: $09
    ld a, b                                       ; $7138: $78
    ld h, $9c                                     ; $7139: $26 $9c
    adc d                                         ; $713b: $8a
    cp e                                          ; $713c: $bb
    inc a                                         ; $713d: $3c
    ld a, [c]                                     ; $713e: $f2
    ld l, c                                       ; $713f: $69
    halt                                          ; $7140: $76
    add $30                                       ; $7141: $c6 $30
    halt                                          ; $7143: $76

jr_068_7144:
    ld a, a                                       ; $7144: $7f
    db $ed                                        ; $7145: $ed
    ld [hl], l                                    ; $7146: $75
    rla                                           ; $7147: $17
    call nz, Call_068_6215                        ; $7148: $c4 $15 $62

jr_068_714b:
    ld e, $6b                                     ; $714b: $1e $6b
    ld h, b                                       ; $714d: $60
    inc de                                        ; $714e: $13
    ld h, a                                       ; $714f: $67
    cp l                                          ; $7150: $bd
    ld [hl], b                                    ; $7151: $70
    ld a, [hl+]                                   ; $7152: $2a
    xor $3f                                       ; $7153: $ee $3f
    adc c                                         ; $7155: $89
    sbc b                                         ; $7156: $98
    add hl, de                                    ; $7157: $19
    jr z, jr_068_7144                             ; $7158: $28 $ea

    rst $28                                       ; $715a: $ef
    adc h                                         ; $715b: $8c
    dec c                                         ; $715c: $0d
    db $ec                                        ; $715d: $ec
    ccf                                           ; $715e: $3f
    ld d, c                                       ; $715f: $51
    di                                            ; $7160: $f3
    di                                            ; $7161: $f3
    cp c                                          ; $7162: $b9
    ld e, [hl]                                    ; $7163: $5e
    jr c, @+$5f                                   ; $7164: $38 $5d

    cp c                                          ; $7166: $b9
    dec h                                         ; $7167: $25
    ld c, l                                       ; $7168: $4d
    cp e                                          ; $7169: $bb
    ccf                                           ; $716a: $3f
    db $ed                                        ; $716b: $ed
    ld [hl], l                                    ; $716c: $75
    ld [c], a                                     ; $716d: $e2
    ld e, [hl]                                    ; $716e: $5e
    ld c, d                                       ; $716f: $4a
    add [hl]                                      ; $7170: $86
    add hl, hl                                    ; $7171: $29
    ld e, l                                       ; $7172: $5d
    ld e, $6b                                     ; $7173: $1e $6b
    ld h, b                                       ; $7175: $60
    cpl                                           ; $7176: $2f
    adc a                                         ; $7177: $8f
    db $eb                                        ; $7178: $eb
    add l                                         ; $7179: $85
    db $d3                                        ; $717a: $d3
    bit 4, e                                      ; $717b: $cb $63
    halt                                          ; $717d: $76
    and e                                         ; $717e: $a3
    ld l, h                                       ; $717f: $6c
    ld b, b                                       ; $7180: $40
    rst $08                                       ; $7181: $cf
    scf                                           ; $7182: $37
    and h                                         ; $7183: $a4
    rst $00                                       ; $7184: $c7
    halt                                          ; $7185: $76
    sbc $1f                                       ; $7186: $de $1f
    db $ed                                        ; $7188: $ed
    ld [hl], l                                    ; $7189: $75
    rla                                           ; $718a: $17
    call nz, Call_068_6215                        ; $718b: $c4 $15 $62
    ld e, $63                                     ; $718e: $1e $63
    inc bc                                        ; $7190: $03
    ld a, [hl+]                                   ; $7191: $2a
    db $dd                                        ; $7192: $dd
    set 2, h                                      ; $7193: $cb $d4
    ld h, $ce                                     ; $7195: $26 $ce
    ld a, [$a183]                                 ; $7197: $fa $83 $a1
    dec c                                         ; $719a: $0d
    xor b                                         ; $719b: $a8
    cp b                                          ; $719c: $b8
    inc e                                         ; $719d: $1c
    cp e                                          ; $719e: $bb
    ccf                                           ; $719f: $3f
    db $ed                                        ; $71a0: $ed
    ld [hl], l                                    ; $71a1: $75
    ld [c], a                                     ; $71a2: $e2
    push af                                       ; $71a3: $f5
    sbc b                                         ; $71a4: $98
    inc de                                        ; $71a5: $13
    call z, Call_000_1ca6                         ; $71a6: $cc $a6 $1c
    ld a, [$0ae2]                                 ; $71a9: $fa $e2 $0a
    ld sp, $eb8f                                  ; $71ac: $31 $8f $eb
    inc [hl]                                      ; $71af: $34
    ld [hl], c                                    ; $71b0: $71
    rst $30                                       ; $71b1: $f7
    ld b, $f4                                     ; $71b2: $06 $f4

Call_068_71b4:
    cp h                                          ; $71b4: $bc
    ld h, l                                       ; $71b5: $65
    and $fe                                       ; $71b6: $e6 $fe
    nop                                           ; $71b8: $00
    db $ed                                        ; $71b9: $ed
    ld [hl], l                                    ; $71ba: $75
    rst $20                                       ; $71bb: $e7
    ld b, d                                       ; $71bc: $42
    rst $38                                       ; $71bd: $ff
    pop af                                        ; $71be: $f1
    ret c                                         ; $71bf: $d8

    ld [hl], e                                    ; $71c0: $73
    and l                                         ; $71c1: $a5
    sub $b7                                       ; $71c2: $d6 $b7
    pop af                                        ; $71c4: $f1
    db $ed                                        ; $71c5: $ed
    ld hl, $4030                                  ; $71c6: $21 $30 $40
    ei                                            ; $71c9: $fb
    dec sp                                        ; $71ca: $3b
    ld h, e                                       ; $71cb: $63
    ld a, [hl]                                    ; $71cc: $7e
    dec hl                                        ; $71cd: $2b
    ld l, d                                       ; $71ce: $6a
    inc bc                                        ; $71cf: $03
    ld [$f319], a                                 ; $71d0: $ea $19 $f3
    cp b                                          ; $71d3: $b8
    dec h                                         ; $71d4: $25
    ld c, c                                       ; $71d5: $49
    ld l, l                                       ; $71d6: $6d
    sbc b                                         ; $71d7: $98

jr_068_71d8:
    ld h, $3a                                     ; $71d8: $26 $3a
    ld l, l                                       ; $71da: $6d
    ld b, b                                       ; $71db: $40
    xor a                                         ; $71dc: $af
    jr jr_068_71d8                                ; $71dd: $18 $f9

    inc a                                         ; $71df: $3c
    db $eb                                        ; $71e0: $eb
    db $ec                                        ; $71e1: $ec
    ld [hl], a                                    ; $71e2: $77
    set 3, h                                      ; $71e3: $cb $dc
    rra                                           ; $71e5: $1f
    db $ed                                        ; $71e6: $ed
    ld [hl], l                                    ; $71e7: $75
    rst $20                                       ; $71e8: $e7
    ld d, c                                       ; $71e9: $51
    adc [hl]                                      ; $71ea: $8e
    ld c, [hl]                                    ; $71eb: $4e
    push hl                                       ; $71ec: $e5
    ld e, d                                       ; $71ed: $5a
    ld a, [$d3fd]                                 ; $71ee: $fa $fd $d3
    sub h                                         ; $71f1: $94
    ld b, e                                       ; $71f2: $43
    dec h                                         ; $71f3: $25
    di                                            ; $71f4: $f3
    cp b                                          ; $71f5: $b8
    or d                                          ; $71f6: $b2
    dec sp                                        ; $71f7: $3b
    ld h, b                                       ; $71f8: $60
    ld a, $62                                     ; $71f9: $3e $62
    ld b, [hl]                                    ; $71fb: $46
    or a                                          ; $71fc: $b7
    jp nc, Jump_068_4c5e                          ; $71fd: $d2 $5e $4c

    or d                                          ; $7200: $b2
    ld bc, $6cdd                                  ; $7201: $01 $dd $6c
    inc hl                                        ; $7204: $23
    ld h, c                                       ; $7205: $61
    rst $30                                       ; $7206: $f7
    rlca                                          ; $7207: $07
    db $ed                                        ; $7208: $ed
    ld [hl], l                                    ; $7209: $75
    add hl, bc                                    ; $720a: $09
    sbc d                                         ; $720b: $9a
    jp hl                                         ; $720c: $e9


    pop bc                                        ; $720d: $c1
    add d                                         ; $720e: $82
    rra                                           ; $720f: $1f
    xor [hl]                                      ; $7210: $ae
    db $d3                                        ; $7211: $d3
    call $5f23                                    ; $7212: $cd $23 $5f
    ld e, [hl]                                    ; $7215: $5e
    rst $10                                       ; $7216: $d7
    add b                                         ; $7217: $80
    ld h, $c4                                     ; $7218: $26 $c4
    sbc a                                         ; $721a: $9f
    ld sp, $2253                                  ; $721b: $31 $53 $22
    and $d1                                       ; $721e: $e6 $d1
    ld h, $08                                     ; $7220: $26 $08
    or $61                                        ; $7222: $f6 $61
    ld c, a                                       ; $7224: $4f
    ld [hl+], a                                   ; $7225: $22
    ld h, [hl]                                    ; $7226: $66
    ld a, $bd                                     ; $7227: $3e $bd
    ccf                                           ; $7229: $3f
    db $ed                                        ; $722a: $ed
    ld [hl], l                                    ; $722b: $75
    rla                                           ; $722c: $17
    call nz, Call_068_6215                        ; $722d: $c4 $15 $62
    ld e, $6b                                     ; $7230: $1e $6b
    jr jr_068_72a1                                ; $7232: $18 $6d

    ld b, d                                       ; $7234: $42
    db $fc                                        ; $7235: $fc

jr_068_7236:
    add hl, de                                    ; $7236: $19
    inc sp                                        ; $7237: $33
    dec h                                         ; $7238: $25
    ld h, d                                       ; $7239: $62
    ld e, $6d                                     ; $723a: $1e $6d
    ld b, b                                       ; $723c: $40
    rst $08                                       ; $723d: $cf
    add hl, de                                    ; $723e: $19
    or $dc                                        ; $723f: $f6 $dc
    and a                                         ; $7241: $a7
    cp $e8                                        ; $7242: $fe $e8
    ld e, e                                       ; $7244: $5b
    cpl                                           ; $7245: $2f
    sbc h                                         ; $7246: $9c
    ei                                            ; $7247: $fb
    inc bc                                        ; $7248: $03
    db $ed                                        ; $7249: $ed
    ld [hl], l                                    ; $724a: $75
    ld [c], a                                     ; $724b: $e2
    ld l, $8f                                     ; $724c: $2e $8f
    or c                                          ; $724e: $b1
    ld bc, $3c3d                                  ; $724f: $01 $3d $3c
    ld hl, $8cfe                                  ; $7252: $21 $fe $8c
    add hl, de                                    ; $7255: $19
    cp l                                          ; $7256: $bd
    ld h, d                                       ; $7257: $62
    cp $03                                        ; $7258: $fe $03
    cp e                                          ; $725a: $bb
    dec d                                         ; $725b: $15
    ld a, [hl+]                                   ; $725c: $2a
    and a                                         ; $725d: $a7
    db $d3                                        ; $725e: $d3
    ld c, e                                       ; $725f: $4b
    inc e                                         ; $7260: $1c
    sbc [hl]                                      ; $7261: $9e
    add b                                         ; $7262: $80
    add hl, sp                                    ; $7263: $39
    db $fc                                        ; $7264: $fc
    cp $00                                        ; $7265: $fe $00
    db $ed                                        ; $7267: $ed
    ld [hl], l                                    ; $7268: $75
    rst $20                                       ; $7269: $e7
    cp c                                          ; $726a: $b9
    jr @-$38                                      ; $726b: $18 $c6

    sub l                                         ; $726d: $95
    db $dd                                        ; $726e: $dd
    ld sp, $43ff                                  ; $726f: $31 $ff $43
    ld h, b                                       ; $7272: $60
    ld b, b                                       ; $7273: $40
    inc bc                                        ; $7274: $03
    ld a, d                                       ; $7275: $7a
    add hl, hl                                    ; $7276: $29
    cp h                                          ; $7277: $bc
    ld h, e                                       ; $7278: $63
    sub d                                         ; $7279: $92
    dec c                                         ; $727a: $0d
    call nc, Call_068_639e                        ; $727b: $d4 $9e $63
    ld c, [hl]                                    ; $727e: $4e
    jr nc, jr_068_7236                            ; $727f: $30 $b5

    ld d, a                                       ; $7281: $57
    ld h, b                                       ; $7282: $60
    ld c, c                                       ; $7283: $49
    ld d, d                                       ; $7284: $52
    rst $28                                       ; $7285: $ef
    rrca                                          ; $7286: $0f
    db $ed                                        ; $7287: $ed
    ld [hl], l                                    ; $7288: $75
    rst $20                                       ; $7289: $e7
    ld d, c                                       ; $728a: $51
    adc [hl]                                      ; $728b: $8e
    ld c, [hl]                                    ; $728c: $4e
    xor c                                         ; $728d: $a9
    ld c, d                                       ; $728e: $4a
    push de                                       ; $728f: $d5
    rla                                           ; $7290: $17
    and a                                         ; $7291: $a7
    ld bc, $bf4d                                  ; $7292: $01 $4d $bf
    inc [hl]                                      ; $7295: $34
    ld h, e                                       ; $7296: $63
    add [hl]                                      ; $7297: $86
    sbc $dd                                       ; $7298: $de $dd

Jump_068_729a:
    jp z, $ae3c                                   ; $729a: $ca $3c $ae

    db $d3                                        ; $729d: $d3
    db $f4                                        ; $729e: $f4
    ld c, e                                       ; $729f: $4b
    inc sp                                        ; $72a0: $33

jr_068_72a1:
    ld h, [hl]                                    ; $72a1: $66
    ld [hl], h                                    ; $72a2: $74
    dec bc                                        ; $72a3: $0b
    ld h, d                                       ; $72a4: $62
    ld a, [$6e69]                                 ; $72a5: $fa $69 $6e
    ld b, b                                       ; $72a8: $40
    cpl                                           ; $72a9: $2f
    rst $30                                       ; $72aa: $f7
    ld a, l                                       ; $72ab: $7d
    ld e, b                                       ; $72ac: $58
    rst $08                                       ; $72ad: $cf
    and c                                         ; $72ae: $a1
    push bc                                       ; $72af: $c5
    inc a                                         ; $72b0: $3c
    pop af                                        ; $72b1: $f1
    cp $00                                        ; $72b2: $fe $00
    db $ed                                        ; $72b4: $ed
    ld [hl], l                                    ; $72b5: $75
    adc c                                         ; $72b6: $89
    or $24                                        ; $72b7: $f6 $24
    sbc [hl]                                      ; $72b9: $9e
    or c                                          ; $72ba: $b1
    ld a, $54                                     ; $72bb: $3e $54
    add a                                         ; $72bd: $87
    ld h, l                                       ; $72be: $65
    sbc c                                         ; $72bf: $99
    adc l                                         ; $72c0: $8d
    dec hl                                        ; $72c1: $2b
    xor b                                         ; $72c2: $a8
    jp nc, $153a                                  ; $72c3: $d2 $3a $15

    rst $08                                       ; $72c6: $cf
    rlc c                                         ; $72c7: $cb $01
    ld sp, $7fbf                                  ; $72c9: $31 $bf $7f
    ld a, [de]                                    ; $72cc: $1a
    ret nc                                        ; $72cd: $d0

    dec d                                         ; $72ce: $15

Call_068_72cf:
    ld d, l                                       ; $72cf: $55
    rst $00                                       ; $72d0: $c7
    add hl, de                                    ; $72d1: $19
    rst $28                                       ; $72d2: $ef
    rrca                                          ; $72d3: $0f
    db $ed                                        ; $72d4: $ed
    ld [hl], l                                    ; $72d5: $75
    rst $20                                       ; $72d6: $e7
    pop hl                                        ; $72d7: $e1
    push hl                                       ; $72d8: $e5
    rst $30                                       ; $72d9: $f7
    db $e3                                        ; $72da: $e3
    reti                                          ; $72db: $d9


    db $f4                                        ; $72dc: $f4
    ld c, a                                       ; $72dd: $4f
    cp [hl]                                       ; $72de: $be
    ld a, b                                       ; $72df: $78
    and b                                         ; $72e0: $a0
    ld [hl], $e5                                  ; $72e1: $36 $e5
    ret nc                                        ; $72e3: $d0

    nop                                           ; $72e4: $00
    db $fd                                        ; $72e5: $fd
    rst $00                                       ; $72e6: $c7
    ld h, e                                       ; $72e7: $63
    rst $08                                       ; $72e8: $cf
    sub l                                         ; $72e9: $95
    ld e, d                                       ; $72ea: $5a
    ld a, [$fbcb]                                 ; $72eb: $fa $cb $fb
    cp c                                          ; $72ee: $b9
    cp $60                                        ; $72ef: $fe $60
    ld l, b                                       ; $72f1: $68
    jp $b768                                      ; $72f2: $c3 $68 $b7


    xor a                                         ; $72f5: $af
    ld b, [hl]                                    ; $72f6: $46
    dec de                                        ; $72f7: $1b
    ret nc                                        ; $72f8: $d0

    ld [hl], e                                    ; $72f9: $73
    ld h, [hl]                                    ; $72fa: $66
    and c                                         ; $72fb: $a1
    ld [hl], $a0                                  ; $72fc: $36 $a0
    rst $20                                       ; $72fe: $e7
    ld c, l                                       ; $72ff: $4d
    ld a, d                                       ; $7300: $7a
    ld a, [bc]                                    ; $7301: $0a
    reti                                          ; $7302: $d9


    call nz, $efdd                                ; $7303: $c4 $dd $ef
    rrca                                          ; $7306: $0f
    db $ed                                        ; $7307: $ed
    ld [hl], l                                    ; $7308: $75
    rst $20                                       ; $7309: $e7
    cp c                                          ; $730a: $b9
    jr jr_068_7325                                ; $730b: $18 $18

    add $d8                                       ; $730d: $c6 $d8
    ret nz                                        ; $730f: $c0

    xor $98                                       ; $7310: $ee $98
    rst $38                                       ; $7312: $ff
    ld hl, $a030                                  ; $7313: $21 $30 $a0
    ld bc, $c73d                                  ; $7316: $01 $3d $c7
    sbc h                                         ; $7319: $9c

jr_068_731a:
    ld h, b                                       ; $731a: $60
    ld l, d                                       ; $731b: $6a
    push bc                                       ; $731c: $c5
    cp l                                          ; $731d: $bd
    set 1, e                                      ; $731e: $cb $cb
    call nc, $03fb                                ; $7320: $d4 $fb $03
    db $ed                                        ; $7323: $ed
    ld [hl], l                                    ; $7324: $75

jr_068_7325:
    ld [c], a                                     ; $7325: $e2
    reti                                          ; $7326: $d9


    sbc [hl]                                      ; $7327: $9e
    rst $00                                       ; $7328: $c7

jr_068_7329:
    cp l                                          ; $7329: $bd
    adc l                                         ; $732a: $8d
    adc d                                         ; $732b: $8a
    adc l                                         ; $732c: $8d
    ld c, e                                       ; $732d: $4b
    ld [de], a                                    ; $732e: $12
    ld h, l                                       ; $732f: $65
    ld e, a                                       ; $7330: $5f
    ld e, h                                       ; $7331: $5c
    ld hl, $17ae                                  ; $7332: $21 $ae $17
    ld c, [hl]                                    ; $7335: $4e
    inc bc                                        ; $7336: $03
    ld a, [de]                                    ; $7337: $1a
    sbc $0a                                       ; $7338: $de $0a
    and [hl]                                      ; $733a: $a6
    and e                                         ; $733b: $a3
    push af                                       ; $733c: $f5
    ld [c], a                                     ; $733d: $e2
    push hl                                       ; $733e: $e5
    or a                                          ; $733f: $b7
    ld a, [hl]                                    ; $7340: $7e
    or h                                          ; $7341: $b4
    xor b                                         ; $7342: $a8
    and h                                         ; $7343: $a4
    db $d3                                        ; $7344: $d3
    adc $92                                       ; $7345: $ce $92
    ld h, h                                       ; $7347: $64
    jr jr_068_73b7                                ; $7348: $18 $6d

    add b                                         ; $734a: $80
    ld [hl-], a                                   ; $734b: $32
    ld l, l                                       ; $734c: $6d
    inc c                                         ; $734d: $0c
    ld l, e                                       ; $734e: $6b
    dec hl                                        ; $734f: $2b
    inc a                                         ; $7350: $3c
    cp l                                          ; $7351: $bd
    ccf                                           ; $7352: $3f
    db $ed                                        ; $7353: $ed
    ld [hl], l                                    ; $7354: $75
    ld e, e                                       ; $7355: $5b
    pop af                                        ; $7356: $f1
    ret c                                         ; $7357: $d8

    ld h, a                                       ; $7358: $67
    ld d, d                                       ; $7359: $52
    ret c                                         ; $735a: $d8

    jr nc, jr_068_731a                            ; $735b: $30 $bd

    inc d                                         ; $735d: $14
    xor a                                         ; $735e: $af
    ld [c], a                                     ; $735f: $e2
    sub [hl]                                      ; $7360: $96
    sbc l                                         ; $7361: $9d
    db $dd                                        ; $7362: $dd
    dec a                                         ; $7363: $3d
    rrca                                          ; $7364: $0f
    cpl                                           ; $7365: $2f
    cp a                                          ; $7366: $bf
    rra                                           ; $7367: $1f
    rst $08                                       ; $7368: $cf
    ret c                                         ; $7369: $d8

    ld b, b                                       ; $736a: $40
    ld l, l                                       ; $736b: $6d
    ld [hl], $ac                                  ; $736c: $36 $ac
    xor b                                         ; $736e: $a8
    ld b, l                                       ; $736f: $45
    ld e, a                                       ; $7370: $5f
    ld a, h                                       ; $7371: $7c
    ld a, [c]                                     ; $7372: $f2
    and l                                         ; $7373: $a5
    reti                                          ; $7374: $d9


    add b                                         ; $7375: $80
    ld l, [hl]                                    ; $7376: $6e
    add l                                         ; $7377: $85
    dec l                                         ; $7378: $2d
    cpl                                           ; $7379: $2f
    sbc $1f                                       ; $737a: $de $1f
    db $ed                                        ; $737c: $ed
    ld [hl], l                                    ; $737d: $75
    add hl, bc                                    ; $737e: $09
    ld [hl], c                                    ; $737f: $71
    push af                                       ; $7380: $f5
    jr jr_068_7329                                ; $7381: $18 $a6

    ld a, $8d                                     ; $7383: $3e $8d
    dec d                                         ; $7385: $15
    rst $18                                       ; $7386: $df
    dec h                                         ; $7387: $25
    sub b                                         ; $7388: $90
    ld e, $c6                                     ; $7389: $1e $c6
    ld a, [$9563]                                 ; $738b: $fa $63 $95
    adc h                                         ; $738e: $8c
    add hl, de                                    ; $738f: $19
    sub $04                                       ; $7390: $d6 $04
    push af                                       ; $7392: $f5
    cp [hl]                                       ; $7393: $be
    sbc b                                         ; $7394: $98
    add [hl]                                      ; $7395: $86
    ld [hl], $52                                  ; $7396: $36 $52
    sbc e                                         ; $7398: $9b
    adc l                                         ; $7399: $8d
    adc d                                         ; $739a: $8a
    ld h, a                                       ; $739b: $67
    call nc, $03fb                                ; $739c: $d4 $fb $03
    db $ed                                        ; $739f: $ed
    ld [hl], l                                    ; $73a0: $75
    sbc e                                         ; $73a1: $9b
    daa                                           ; $73a2: $27
    ld h, $f1                                     ; $73a3: $26 $f1
    cp a                                          ; $73a5: $bf
    jr nc, @-$09                                  ; $73a6: $30 $f5

    rst $00                                       ; $73a8: $c7
    xor d                                         ; $73a9: $aa
    add sp, $78                                   ; $73aa: $e8 $78
    ld de, $ac03                                  ; $73ac: $11 $03 $ac
    cp $58                                        ; $73af: $fe $58
    or e                                          ; $73b1: $b3
    dec bc                                        ; $73b2: $0b
    ld d, e                                       ; $73b3: $53
    call nc, Call_068_6b1f                        ; $73b4: $d4 $1f $6b

jr_068_73b7:
    ld h, h                                       ; $73b7: $64
    ld h, b                                       ; $73b8: $60
    ld d, c                                       ; $73b9: $51
    ld c, d                                       ; $73ba: $4a
    ld l, $e1                                     ; $73bb: $2e $e1
    xor l                                         ; $73bd: $ad
    rra                                           ; $73be: $1f
    ld e, d                                       ; $73bf: $5a
    or e                                          ; $73c0: $b3
    ld sp, $5c2a                                  ; $73c1: $31 $2a $5c
    call z, $bed0                                 ; $73c4: $cc $d0 $be
    jr c, jr_068_7408                             ; $73c7: $38 $3f

    ld h, d                                       ; $73c9: $62
    add [hl]                                      ; $73ca: $86
    sbc $1f                                       ; $73cb: $de $1f
    db $ed                                        ; $73cd: $ed
    ld [hl], l                                    ; $73ce: $75
    add hl, bc                                    ; $73cf: $09
    ld a, [$561b]                                 ; $73d0: $fa $1b $56

Call_068_73d3:
    ld [hl], b                                    ; $73d3: $70
    dec e                                         ; $73d4: $1d
    db $ed                                        ; $73d5: $ed
    and $89                                       ; $73d6: $e6 $89
    ld a, c                                       ; $73d8: $79
    or h                                          ; $73d9: $b4
    ld bc, $6cbd                                  ; $73da: $01 $bd $6c
    jr jr_068_7413                                ; $73dd: $18 $34

    rst $08                                       ; $73df: $cf
    inc l                                         ; $73e0: $2c
    and d                                         ; $73e1: $a2
    ld l, $6f                                     ; $73e2: $2e $6f
    ld h, l                                       ; $73e4: $65
    and e                                         ; $73e5: $a3
    push af                                       ; $73e6: $f5
    ld l, c                                       ; $73e7: $69
    db $ec                                        ; $73e8: $ec
    ld l, a                                       ; $73e9: $6f
    adc a                                         ; $73ea: $8f
    ld [hl], c                                    ; $73eb: $71
    dec a                                         ; $73ec: $3d
    or l                                          ; $73ed: $b5
    db $fc                                        ; $73ee: $fc
    or e                                          ; $73ef: $b3
    db $e3                                        ; $73f0: $e3
    ld [hl+], a                                   ; $73f1: $22
    ld de, $ea33                                  ; $73f2: $11 $33 $ea
    ld h, c                                       ; $73f5: $61
    ld a, h                                       ; $73f6: $7c
    ld h, c                                       ; $73f7: $61
    or h                                          ; $73f8: $b4
    cp $58                                        ; $73f9: $fe $58
    ld a, a                                       ; $73fb: $7f
    ld a, [hl-]                                   ; $73fc: $3a
    and l                                         ; $73fd: $a5
    ld b, c                                       ; $73fe: $41
    halt                                          ; $73ff: $76
    or l                                          ; $7400: $b5
    cp e                                          ; $7401: $bb
    ld a, h                                       ; $7402: $7c
    ld a, c                                       ; $7403: $79
    db $f4                                        ; $7404: $f4
    cp $00                                        ; $7405: $fe $00
    db $ed                                        ; $7407: $ed

jr_068_7408:
    ld [hl], l                                    ; $7408: $75
    ld d, a                                       ; $7409: $57

jr_068_740a:
    jr nz, jr_068_740a                            ; $740a: $20 $fe

    ld [$0d63], sp                                ; $740c: $08 $63 $0d
    db $d3                                        ; $740f: $d3
    call $7f13                                    ; $7410: $cd $13 $7f

jr_068_7413:
    ld h, a                                       ; $7413: $67
    ld a, [hl-]                                   ; $7414: $3a
    dec c                                         ; $7415: $0d
    add sp, -$47                                  ; $7416: $e8 $b9
    ld c, $cb                                     ; $7418: $0e $cb
    inc [hl]                                      ; $741a: $34
    and b                                         ; $741b: $a0
    rst $20                                       ; $741c: $e7
    pop hl                                        ; $741d: $e1
    push hl                                       ; $741e: $e5
    rst $30                                       ; $741f: $f7
    db $e3                                        ; $7420: $e3
    reti                                          ; $7421: $d9


    ld l, b                                       ; $7422: $68
    inc bc                                        ; $7423: $03
    ld a, d                                       ; $7424: $7a
    ld b, c                                       ; $7425: $41
    ld c, h                                       ; $7426: $4c
    cpl                                           ; $7427: $2f
    call z, Call_068_6330                         ; $7428: $cc $30 $63
    ld hl, $ec7b                                  ; $742b: $21 $7b $ec
    add hl, bc                                    ; $742e: $09
    rst $00                                       ; $742f: $c7
    rra                                           ; $7430: $1f
    ld [hl], e                                    ; $7431: $73
    ld a, a                                       ; $7432: $7f
    db $ed                                        ; $7433: $ed
    ld [hl], l                                    ; $7434: $75
    add hl, bc                                    ; $7435: $09
    ld sp, $32c3                                  ; $7436: $31 $c3 $32
    ld e, a                                       ; $7439: $5f
    add h                                         ; $743a: $84
    push de                                       ; $743b: $d5
    adc e                                         ; $743c: $8b
    sub a                                         ; $743d: $97
    rst $18                                       ; $743e: $df
    adc a                                         ; $743f: $8f
    ld h, a                                       ; $7440: $67
    ld d, e                                       ; $7441: $53
    adc a                                         ; $7442: $8f
    cp l                                          ; $7443: $bd
    dec h                                         ; $7444: $25
    ret                                           ; $7445: $c9


    sbc b                                         ; $7446: $98
    pop de                                        ; $7447: $d1
    sub h                                         ; $7448: $94
    ld b, e                                       ; $7449: $43
    inc bc                                        ; $744a: $03
    sub h                                         ; $744b: $94
    ld a, $0d                                     ; $744c: $3e $0d
    ccf                                           ; $744e: $3f
    ld e, h                                       ; $744f: $5c
    ld e, a                                       ; $7450: $5f
    add h                                         ; $7451: $84
    ld a, [$0630]                                 ; $7452: $fa $30 $06
    ld c, d                                       ; $7455: $4a
    call nz, $068c                                ; $7456: $c4 $8c $06
    ld h, a                                       ; $7459: $67
    adc h                                         ; $745a: $8c
    add hl, de                                    ; $745b: $19
    ld [hl], l                                    ; $745c: $75
    or d                                          ; $745d: $b2
    ld c, d                                       ; $745e: $4a
    sbc a                                         ; $745f: $9f
    add hl, de                                    ; $7460: $19
    inc c                                         ; $7461: $0c
    ld [hl], e                                    ; $7462: $73
    ld a, a                                       ; $7463: $7f
    db $ed                                        ; $7464: $ed
    ld [hl], l                                    ; $7465: $75
    ld [c], a                                     ; $7466: $e2
    xor d                                         ; $7467: $aa
    ld d, h                                       ; $7468: $54
    ld a, l                                       ; $7469: $7d
    ld [hl], c                                    ; $746a: $71
    ld a, [de]                                    ; $746b: $1a
    ret nc                                        ; $746c: $d0

    ldh [rNR10], a                                ; $746d: $e0 $10
    inc bc                                        ; $746f: $03
    or h                                          ; $7470: $b4
    sub b                                         ; $7471: $90
    push de                                       ; $7472: $d5
    ld [hl], l                                    ; $7473: $75
    or $70                                        ; $7474: $f6 $70
    ld a, a                                       ; $7476: $7f
    db $ed                                        ; $7477: $ed
    ld [hl], l                                    ; $7478: $75
    db $db                                        ; $7479: $db
    add h                                         ; $747a: $84
    db $d3                                        ; $747b: $d3
    ld a, a                                       ; $747c: $7f
    and d                                         ; $747d: $a2
    ld [hl+], a                                   ; $747e: $22
    db $ed                                        ; $747f: $ed
    sbc [hl]                                      ; $7480: $9e
    xor e                                         ; $7481: $ab
    rrca                                          ; $7482: $0f
    ld d, e                                       ; $7483: $53
    rst $00                                       ; $7484: $c7
    ldh a, [$ac]                                  ; $7485: $f0 $ac
    db $d3                                        ; $7487: $d3
    xor l                                         ; $7488: $ad
    cpl                                           ; $7489: $2f
    ld a, $cd                                     ; $748a: $3e $cd
    db $eb                                        ; $748c: $eb
    db $ec                                        ; $748d: $ec
    ld c, l                                       ; $748e: $4d
    inc bc                                        ; $748f: $03
    cp e                                          ; $7490: $bb
    sub l                                         ; $7491: $95
    jp hl                                         ; $7492: $e9


    rst $00                                       ; $7493: $c7
    or d                                          ; $7494: $b2
    ld bc, $cd9a                                  ; $7495: $01 $9a $cd
    dec a                                         ; $7498: $3d
    ld l, e                                       ; $7499: $6b
    jp nc, Jump_068_4649                          ; $749a: $d2 $49 $46

    ld c, d                                       ; $749d: $4a
    call nz, $e68c                                ; $749e: $c4 $8c $e6
    add hl, bc                                    ; $74a1: $09
    and e                                         ; $74a2: $a3
    dec e                                         ; $74a3: $1d
    ld l, l                                       ; $74a4: $6d
    ld [hl], b                                    ; $74a5: $70
    adc b                                         ; $74a6: $88
    ld bc, $6cda                                  ; $74a7: $01 $da $6c
    ld e, h                                       ; $74aa: $5c
    ld b, c                                       ; $74ab: $41
    ld [hl], l                                    ; $74ac: $75
    db $f4                                        ; $74ad: $f4

jr_068_74ae:
    cp $00                                        ; $74ae: $fe $00
    db $ed                                        ; $74b0: $ed
    ld [hl], l                                    ; $74b1: $75
    sbc e                                         ; $74b2: $9b
    daa                                           ; $74b3: $27
    ld h, $f1                                     ; $74b4: $26 $f1
    cp a                                          ; $74b6: $bf
    jr nc, jr_068_74ae                            ; $74b7: $30 $f5

    rst $00                                       ; $74b9: $c7
    ld a, [de]                                    ; $74ba: $1a
    ld e, l                                       ; $74bb: $5d
    db $fc                                        ; $74bc: $fc
    ld e, c                                       ; $74bd: $59
    push hl                                       ; $74be: $e5
    or e                                          ; $74bf: $b3
    ld b, $f4                                     ; $74c0: $06 $f4
    and a                                         ; $74c2: $a7
    or d                                          ; $74c3: $b2
    adc h                                         ; $74c4: $8c
    add hl, de                                    ; $74c5: $19
    jp c, Jump_000_3a80                           ; $74c6: $da $80 $3a

    reti                                          ; $74c9: $d9


    di                                            ; $74ca: $f3
    ldh a, [$f2]                                  ; $74cb: $f0 $f2
    ld e, e                                       ; $74cd: $5b
    ccf                                           ; $74ce: $3f
    push af                                       ; $74cf: $f5
    ld [hl], d                                    ; $74d0: $72
    rla                                           ; $74d1: $17
    xor h                                         ; $74d2: $ac
    or $fe                                        ; $74d3: $f6 $fe
    ld sp, hl                                     ; $74d5: $f9
    sub e                                         ; $74d6: $93
    ret z                                         ; $74d7: $c8

    jr z, jr_068_7514                             ; $74d8: $28 $3a

    call $f3f8                                    ; $74da: $cd $f8 $f3
    db $f4                                        ; $74dd: $f4
    rst $20                                       ; $74de: $e7
    or e                                          ; $74df: $b3
    ei                                            ; $74e0: $fb
    inc bc                                        ; $74e1: $03
    db $ed                                        ; $74e2: $ed
    ld [hl], l                                    ; $74e3: $75
    rst $20                                       ; $74e4: $e7
    adc a                                         ; $74e5: $8f
    ld h, [hl]                                    ; $74e6: $66
    xor [hl]                                      ; $74e7: $ae
    ret c                                         ; $74e8: $d8

    call z, $a798                                 ; $74e9: $cc $98 $a7
    ld bc, $05a5                                  ; $74ec: $01 $a5 $05
    ld e, b                                       ; $74ef: $58
    inc hl                                        ; $74f0: $23
    db $eb                                        ; $74f1: $eb
    sbc l                                         ; $74f2: $9d
    or h                                          ; $74f3: $b4
    jp Jump_000_3633                              ; $74f4: $c3 $33 $36


    push hl                                       ; $74f7: $e5
    ret nc                                        ; $74f8: $d0

    ld a, a                                       ; $74f9: $7f
    and d                                         ; $74fa: $a2
    ld [hl+], a                                   ; $74fb: $22
    db $ed                                        ; $74fc: $ed
    sbc [hl]                                      ; $74fd: $9e
    xor e                                         ; $74fe: $ab
    jp nz, Jump_068_729a                          ; $74ff: $c2 $9a $72

    ld a, b                                       ; $7502: $78
    sub d                                         ; $7503: $92
    add c                                         ; $7504: $81
    dec a                                         ; $7505: $3d
    pop hl                                        ; $7506: $e1
    db $e4                                        ; $7507: $e4
    xor [hl]                                      ; $7508: $ae
    or b                                          ; $7509: $b0
    dec bc                                        ; $750a: $0b
    ld a, d                                       ; $750b: $7a
    ld a, a                                       ; $750c: $7f
    db $ed                                        ; $750d: $ed
    ld [hl], l                                    ; $750e: $75
    dec sp                                        ; $750f: $3b
    cp b                                          ; $7510: $b8

Jump_068_7511:
    xor h                                         ; $7511: $ac
    add $55                                       ; $7512: $c6 $55

jr_068_7514:
    cp d                                          ; $7514: $ba
    sub a                                         ; $7515: $97
    ld b, a                                       ; $7516: $47
    cp e                                          ; $7517: $bb
    push de                                       ; $7518: $d5
    and l                                         ; $7519: $a5
    db $d3                                        ; $751a: $d3
    dec bc                                        ; $751b: $0b
    or h                                          ; $751c: $b4
    add hl, hl                                    ; $751d: $29
    rst $00                                       ; $751e: $c7
    jr @-$58                                      ; $751f: $18 $a6

    ld c, [hl]                                    ; $7521: $4e
    ld [hl], $18                                  ; $7522: $36 $18
    db $d3                                        ; $7524: $d3
    jp nz, Jump_000_3329                          ; $7525: $c2 $29 $33

    rst $38                                       ; $7528: $ff
    ld [hl], c                                    ; $7529: $71
    ld [hl], l                                    ; $752a: $75
    sub d                                         ; $752b: $92
    push af                                       ; $752c: $f5
    adc l                                         ; $752d: $8d
    adc a                                         ; $752e: $8f
    db $fd                                        ; $752f: $fd
    sub e                                         ; $7530: $93
    ld a, b                                       ; $7531: $78
    ld l, h                                       ; $7532: $6c
    ld b, b                                       ; $7533: $40
    db $d3                                        ; $7534: $d3
    adc b                                         ; $7535: $88
    add hl, de                                    ; $7536: $19
    rst $30                                       ; $7537: $f7
    rlca                                          ; $7538: $07
    db $ed                                        ; $7539: $ed
    ld [hl], l                                    ; $753a: $75
    rst $20                                       ; $753b: $e7
    ld h, c                                       ; $753c: $61
    ld d, a                                       ; $753d: $57
    ld a, a                                       ; $753e: $7f
    ld c, d                                       ; $753f: $4a
    sbc a                                         ; $7540: $9f
    ld sp, $fac9                                  ; $7541: $31 $c9 $fa
    inc [hl]                                      ; $7544: $34
    ld d, $cb                                     ; $7545: $16 $cb

jr_068_7547:
    sub e                                         ; $7547: $93
    cpl                                           ; $7548: $2f
    jp nc, $4d3a                                  ; $7549: $d2 $3a $4d

    ret nc                                        ; $754c: $d0

    call z, $f2ec                                 ; $754d: $cc $ec $f2
    inc [hl]                                      ; $7550: $34
    and b                                         ; $7551: $a0
    dec sp                                        ; $7552: $3b
    sub b                                         ; $7553: $90
    ld [hl], $84                                  ; $7554: $36 $84
    add hl, hl                                    ; $7556: $29
    ld a, [de]                                    ; $7557: $1a
    sbc $2e                                       ; $7558: $de $2e
    ld e, b                                       ; $755a: $58
    add hl, sp                                    ; $755b: $39
    jp c, Jump_000_2ead                           ; $755c: $da $ad $2e

    sbc l                                         ; $755f: $9d
    ld e, [hl]                                    ; $7560: $5e
    and b                                         ; $7561: $a0
    ld c, l                                       ; $7562: $4d
    add hl, sp                                    ; $7563: $39
    inc d                                         ; $7564: $14
    add d                                         ; $7565: $82
    sbc a                                         ; $7566: $9f
    ld h, [hl]                                    ; $7567: $66
    ret z                                         ; $7568: $c8

    ld a, d                                       ; $7569: $7a
    pop af                                        ; $756a: $f1
    ld a, [c]                                     ; $756b: $f2
    ei                                            ; $756c: $fb
    pop af                                        ; $756d: $f1
    ld l, h                                       ; $756e: $6c
    db $f4                                        ; $756f: $f4
    cp $00                                        ; $7570: $fe $00
    db $ed                                        ; $7572: $ed
    ld [hl], l                                    ; $7573: $75
    rla                                           ; $7574: $17
    call nz, Call_068_6215                        ; $7575: $c4 $15 $62
    ld e, $6b                                     ; $7578: $1e $6b
    sbc b                                         ; $757a: $98
    adc d                                         ; $757b: $8a
    xor a                                         ; $757c: $af
    sbc [hl]                                      ; $757d: $9e
    adc [hl]                                      ; $757e: $8e
    cp $bb                                        ; $757f: $fe $bb
    ei                                            ; $7581: $fb
    ld l, a                                       ; $7582: $6f
    xor $0f                                       ; $7583: $ee $0f
    db $ed                                        ; $7585: $ed
    ld [hl], l                                    ; $7586: $75
    adc c                                         ; $7587: $89
    or b                                          ; $7588: $b0
    sub a                                         ; $7589: $97
    and a                                         ; $758a: $a7
    sub b                                         ; $758b: $90
    ld [hl], l                                    ; $758c: $75
    pop af                                        ; $758d: $f1
    db $fd                                        ; $758e: $fd
    cp e                                          ; $758f: $bb
    ld e, e                                       ; $7590: $5b
    ld a, h                                       ; $7591: $7c
    and e                                         ; $7592: $a3
    ld [hl], a                                    ; $7593: $77
    push bc                                       ; $7594: $c5
    dec b                                         ; $7595: $05
    cp b                                          ; $7596: $b8
    jr nc, jr_068_7547                            ; $7597: $30 $ae

    xor h                                         ; $7599: $ac
    ld [hl], a                                    ; $759a: $77
    ld c, h                                       ; $759b: $4c
    jp nc, Jump_068_506a                          ; $759c: $d2 $6a $50

    ret c                                         ; $759f: $d8

    adc d                                         ; $75a0: $8a
    jp c, $ba80                                   ; $75a1: $da $80 $ba

    ld hl, sp-$02                                 ; $75a4: $f8 $fe
    db $dd                                        ; $75a6: $dd
    dec l                                         ; $75a7: $2d
    cp [hl]                                       ; $75a8: $be
    pop de                                        ; $75a9: $d1
    ld b, d                                       ; $75aa: $42
    ld [hl], $4f                                  ; $75ab: $36 $4f
    ld h, b                                       ; $75ad: $60
    reti                                          ; $75ae: $d9


    di                                            ; $75af: $f3
    ld c, l                                       ; $75b0: $4d
    cp b                                          ; $75b1: $b8
    pop af                                        ; $75b2: $f1
    inc e                                         ; $75b3: $1c
    ld b, e                                       ; $75b4: $43
    ld h, [hl]                                    ; $75b5: $66
    ld c, h                                       ; $75b6: $4c
    ld a, [c]                                     ; $75b7: $f2
    cp $00                                        ; $75b8: $fe $00
    db $ed                                        ; $75ba: $ed
    ld [hl], l                                    ; $75bb: $75
    db $db                                        ; $75bc: $db
    cp e                                          ; $75bd: $bb
    ld b, a                                       ; $75be: $47
    ld a, h                                       ; $75bf: $7c
    rst $38                                       ; $75c0: $ff
    call nc, $978b                                ; $75c1: $d4 $8b $97
    rst $18                                       ; $75c4: $df
    adc a                                         ; $75c5: $8f
    ld h, a                                       ; $75c6: $67
    db $d3                                        ; $75c7: $d3
    sub h                                         ; $75c8: $94
    ld b, e                                       ; $75c9: $43
    dec b                                         ; $75ca: $05
    ld d, b                                       ; $75cb: $50
    ld a, [c]                                     ; $75cc: $f2
    ld l, c                                       ; $75cd: $69
    and c                                         ; $75ce: $a1
    ccf                                           ; $75cf: $3f
    db $fd                                        ; $75d0: $fd
    ld [hl], c                                    ; $75d1: $71
    dec c                                         ; $75d2: $0d
    xor b                                         ; $75d3: $a8
    sub e                                         ; $75d4: $93
    ld h, l                                       ; $75d5: $65
    ld h, [hl]                                    ; $75d6: $66
    jp z, $01a1                                   ; $75d7: $ca $a1 $01

    cp l                                          ; $75da: $bd
    jr jr_068_7616                                ; $75db: $18 $39

    ld sp, hl                                     ; $75dd: $f9
    cp h                                          ; $75de: $bc
    or e                                          ; $75df: $b3
    add h                                         ; $75e0: $84
    ei                                            ; $75e1: $fb
    inc bc                                        ; $75e2: $03
    db $ed                                        ; $75e3: $ed
    ld [hl], l                                    ; $75e4: $75
    db $db                                        ; $75e5: $db
    ld h, $af                                     ; $75e6: $26 $af
    xor l                                         ; $75e8: $ad
    or b                                          ; $75e9: $b0
    ld [hl], h                                    ; $75ea: $74
    ld [hl], e                                    ; $75eb: $73
    ld [de], a                                    ; $75ec: $12
    ld e, [hl]                                    ; $75ed: $5e
    inc [hl]                                      ; $75ee: $34
    ld c, h                                       ; $75ef: $4c
    rst $08                                       ; $75f0: $cf
    add l                                         ; $75f1: $85
    ld c, a                                       ; $75f2: $4f
    res 2, h                                      ; $75f3: $cb $94
    adc b                                         ; $75f5: $88
    ld a, c                                       ; $75f6: $79
    ld a, [de]                                    ; $75f7: $1a
    ret nc                                        ; $75f8: $d0

    ld c, e                                       ; $75f9: $4b
    pop hl                                        ; $75fa: $e1
    dec e                                         ; $75fb: $1d
    ld e, e                                       ; $75fc: $5b
    ccf                                           ; $75fd: $3f
    dec c                                         ; $75fe: $0d
    db $ec                                        ; $75ff: $ec
    push bc                                       ; $7600: $c5
    ld a, b                                       ; $7601: $78
    db $dd                                        ; $7602: $dd
    cp d                                          ; $7603: $ba
    sub [hl]                                      ; $7604: $96
    ld a, [hl]                                    ; $7605: $7e
    ccf                                           ; $7606: $3f
    rst $28                                       ; $7607: $ef
    rrca                                          ; $7608: $0f
    db $ed                                        ; $7609: $ed
    ld [hl], l                                    ; $760a: $75
    ld e, e                                       ; $760b: $5b
    rst $00                                       ; $760c: $c7
    inc c                                         ; $760d: $0c
    xor [hl]                                      ; $760e: $ae
    sbc h                                         ; $760f: $9c
    ld a, [hl+]                                   ; $7610: $2a
    sub a                                         ; $7611: $97
    dec d                                         ; $7612: $15
    xor l                                         ; $7613: $ad
    ld c, [hl]                                    ; $7614: $4e
    or d                                          ; $7615: $b2

jr_068_7616:
    cp a                                          ; $7616: $bf
    dec a                                         ; $7617: $3d
    add $f5                                       ; $7618: $c6 $f5
    db $ec                                        ; $761a: $ec
    ld d, [hl]                                    ; $761b: $56
    sub a                                         ; $761c: $97
    ld c, [hl]                                    ; $761d: $4e
    cpl                                           ; $761e: $2f
    ld l, b                                       ; $761f: $68
    ld b, b                                       ; $7620: $40
    sbc l                                         ; $7621: $9d
    db $ec                                        ; $7622: $ec
    ld d, [hl]                                    ; $7623: $56
    add $fc                                       ; $7624: $c6 $fc
    cp $31                                        ; $7626: $fe $31
    inc d                                         ; $7628: $14
    or d                                          ; $7629: $b2
    ld e, [hl]                                    ; $762a: $5e
    sub a                                         ; $762b: $97
    and $fd                                       ; $762c: $e6 $fd
    ld bc, $75ed                                  ; $762e: $01 $ed $75
    adc c                                         ; $7631: $89
    ld l, a                                       ; $7632: $6f
    ld [hl+], a                                   ; $7633: $22
    sbc [hl]                                      ; $7634: $9e
    ld c, l                                       ; $7635: $4d
    jp $cf68                                      ; $7636: $c3 $68 $cf


    ld a, l                                       ; $7639: $7d
    add [hl]                                      ; $763a: $86
    sub a                                         ; $763b: $97
    ld b, a                                       ; $763c: $47
    dec de                                        ; $763d: $1b
    ld b, [hl]                                    ; $763e: $46
    ld a, e                                       ; $763f: $7b
    xor [hl]                                      ; $7640: $ae
    ld b, e                                       ; $7641: $43
    inc c                                         ; $7642: $0c
    ret nc                                        ; $7643: $d0

    ei                                            ; $7644: $fb
    inc bc                                        ; $7645: $03
    db $ed                                        ; $7646: $ed

jr_068_7647:
    ld [hl], l                                    ; $7647: $75
    rst $20                                       ; $7648: $e7
    pop hl                                        ; $7649: $e1
    push hl                                       ; $764a: $e5
    rst $30                                       ; $764b: $f7
    db $e3                                        ; $764c: $e3
    reti                                          ; $764d: $d9


    sub h                                         ; $764e: $94
    ld e, [hl]                                    ; $764f: $5e
    ld c, d                                       ; $7650: $4a
    add [hl]                                      ; $7651: $86
    xor c                                         ; $7652: $a9
    ld l, a                                       ; $7653: $6f
    ret nc                                        ; $7654: $d0

    xor c                                         ; $7655: $a9
    ccf                                           ; $7656: $3f
    sub $ad                                       ; $7657: $d6 $ad
    ld l, $9d                                     ; $7659: $2e $9d
    ld e, [hl]                                    ; $765b: $5e
    and b                                         ; $765c: $a0
    dec c                                         ; $765d: $0d
    ld e, b                                       ; $765e: $58
    cp l                                          ; $765f: $bd
    jr nc, jr_068_7647                            ; $7660: $30 $e5

    ld l, b                                       ; $7662: $68
    dec d                                         ; $7663: $15
    ld c, [hl]                                    ; $7664: $4e
    dec bc                                        ; $7665: $0b
    db $fd                                        ; $7666: $fd
    db $ed                                        ; $7667: $ed
    push hl                                       ; $7668: $e5
    pop de                                        ; $7669: $d1
    ei                                            ; $766a: $fb
    inc bc                                        ; $766b: $03
    db $ed                                        ; $766c: $ed
    ld [hl], l                                    ; $766d: $75
    adc c                                         ; $766e: $89
    or b                                          ; $766f: $b0
    sub a                                         ; $7670: $97
    and a                                         ; $7671: $a7
    sub b                                         ; $7672: $90
    push hl                                       ; $7673: $e5
    ld a, [bc]                                    ; $7674: $0a
    ld e, d                                       ; $7675: $5a
    cp c                                          ; $7676: $b9
    sub [hl]                                      ; $7677: $96
    ld a, [hl]                                    ; $7678: $7e
    ccf                                           ; $7679: $3f
    push af                                       ; $767a: $f5
    ld l, [hl]                                    ; $767b: $6e
    and d                                         ; $767c: $a2
    dec a                                         ; $767d: $3d
    adc c                                         ; $767e: $89
    ld h, a                                       ; $767f: $67
    ld d, e                                       ; $7680: $53
    or $05                                        ; $7681: $f6 $05
    call nz, $bcfc                                ; $7683: $c4 $fc $bc
    rst $28                                       ; $7686: $ef
    and a                                         ; $7687: $a7
    ld [hl], l                                    ; $7688: $75
    xor d                                         ; $7689: $aa
    cpl                                           ; $768a: $2f
    dec e                                         ; $768b: $1d
    sbc a                                         ; $768c: $9f
    rst $30                                       ; $768d: $f7
    db $fd                                        ; $768e: $fd

Jump_068_768f:
    inc c                                         ; $768f: $0c

jr_068_7690:
    db $d3                                        ; $7690: $d3
    jr nc, jr_068_7690                            ; $7691: $30 $fd

    add hl, de                                    ; $7693: $19
    di                                            ; $7694: $f3
    inc [hl]                                      ; $7695: $34
    ld c, h                                       ; $7696: $4c
    push bc                                       ; $7697: $c5
    ld e, l                                       ; $7698: $5d
    jp c, $ced9                                   ; $7699: $da $d9 $ce

    ei                                            ; $769c: $fb
    inc bc                                        ; $769d: $03
    db $ed                                        ; $769e: $ed
    ld [hl], l                                    ; $769f: $75
    rst $20                                       ; $76a0: $e7
    ld d, c                                       ; $76a1: $51
    adc [hl]                                      ; $76a2: $8e
    ld c, [hl]                                    ; $76a3: $4e
    jp hl                                         ; $76a4: $e9


    ld a, [c]                                     ; $76a5: $f2
    ld e, b                                       ; $76a6: $58
    inc bc                                        ; $76a7: $03
    ld a, d                                       ; $76a8: $7a
    cp b                                          ; $76a9: $b8
    ld a, b                                       ; $76aa: $78
    ld a, h                                       ; $76ab: $7c
    sub d                                         ; $76ac: $92
    ld c, a                                       ; $76ad: $4f
    ld a, e                                       ; $76ae: $7b
    ld e, $63                                     ; $76af: $1e $63
    ld e, [hl]                                    ; $76b1: $5e
    db $d3                                        ; $76b2: $d3
    db $fc                                        ; $76b3: $fc
    cp $d1                                        ; $76b4: $fe $d1
    and d                                         ; $76b6: $a2
    db $db                                        ; $76b7: $db
    ld h, e                                       ; $76b8: $63
    ld b, b                                       ; $76b9: $40
    inc de                                        ; $76ba: $13
    ld [c], a                                     ; $76bb: $e2
    ccf                                           ; $76bc: $3f
    ld sp, $dadb                                  ; $76bd: $31 $db $da
    add $65                                       ; $76c0: $c6 $65
    db $f4                                        ; $76c2: $f4
    ldh a, [$fb]                                  ; $76c3: $f0 $fb
    inc bc                                        ; $76c5: $03
    db $ed                                        ; $76c6: $ed
    ld [hl], l                                    ; $76c7: $75
    rla                                           ; $76c8: $17
    rst $08                                       ; $76c9: $cf
    rst $28                                       ; $76ca: $ef
    ld a, [c]                                     ; $76cb: $f2
    jr @+$1d                                      ; $76cc: $18 $1b

    and [hl]                                      ; $76ce: $a6
    cp [hl]                                       ; $76cf: $be
    ld c, l                                       ; $76d0: $4d
    jp c, $d928                                   ; $76d1: $da $28 $d9

    jp $8cb7                                      ; $76d4: $c3 $b7 $8c


    or c                                          ; $76d7: $b1
    add c                                         ; $76d8: $81
    jp c, $cc73                                   ; $76d9: $da $73 $cc

    add hl, bc                                    ; $76dc: $09
    and [hl]                                      ; $76dd: $a6
    ld e, $de                                     ; $76de: $1e $de
    ret z                                         ; $76e0: $c8

    ld e, [hl]                                    ; $76e1: $5e
    ld a, c                                       ; $76e2: $79
    ld e, a                                       ; $76e3: $5f
    ld a, c                                       ; $76e4: $79
    ld l, a                                       ; $76e5: $6f
    cp e                                          ; $76e6: $bb
    ld a, e                                       ; $76e7: $7b
    call nz, Call_068_6f95                        ; $76e8: $c4 $95 $6f
    rla                                           ; $76eb: $17
    dec l                                         ; $76ec: $2d
    cp h                                          ; $76ed: $bc
    sbc b                                         ; $76ee: $98
    xor $95                                       ; $76ef: $ee $95
    rst $08                                       ; $76f1: $cf
    or b                                          ; $76f2: $b0
    ld b, b                                       ; $76f3: $40
    or l                                          ; $76f4: $b5
    db $db                                        ; $76f5: $db
    sub b                                         ; $76f6: $90
    dec b                                         ; $76f7: $05
    adc l                                         ; $76f8: $8d
    add hl, bc                                    ; $76f9: $09
    inc d                                         ; $76fa: $14
    sub l                                         ; $76fb: $95
    or l                                          ; $76fc: $b5
    or l                                          ; $76fd: $b5
    ldh a, [$a6]                                  ; $76fe: $f0 $a6
    ld h, c                                       ; $7700: $61
    or h                                          ; $7701: $b4
    ld e, [hl]                                    ; $7702: $5e
    cp h                                          ; $7703: $bc
    db $fc                                        ; $7704: $fc
    ld a, [hl]                                    ; $7705: $7e
    inc a                                         ; $7706: $3c
    dec de                                        ; $7707: $1b
    dec a                                         ; $7708: $3d
    ld a, [c]                                     ; $7709: $f2
    cp $00                                        ; $770a: $fe $00
    db $ed                                        ; $770c: $ed
    ld [hl], l                                    ; $770d: $75
    rst $20                                       ; $770e: $e7
    ld d, c                                       ; $770f: $51
    adc [hl]                                      ; $7710: $8e
    ld c, [hl]                                    ; $7711: $4e
    inc sp                                        ; $7712: $33
    halt                                          ; $7713: $76
    or a                                          ; $7714: $b7
    rst $30                                       ; $7715: $f7
    ld c, a                                       ; $7716: $4f
    inc bc                                        ; $7717: $03
    dec hl                                        ; $7718: $2b
    sbc c                                         ; $7719: $99
    ld a, [hl]                                    ; $771a: $7e
    cp h                                          ; $771b: $bc
    ccf                                           ; $771c: $3f
    db $ed                                        ; $771d: $ed
    ld [hl], l                                    ; $771e: $75
    ld [c], a                                     ; $771f: $e2
    push af                                       ; $7720: $f5
    sbc b                                         ; $7721: $98
    inc de                                        ; $7722: $13
    call z, Call_000_1ca6                         ; $7723: $cc $a6 $1c
    ld a, [$0ae2]                                 ; $7726: $fa $e2 $0a
    ld sp, $eb8f                                  ; $7729: $31 $8f $eb
    db $f4                                        ; $772c: $f4
    ld h, d                                       ; $772d: $62
    rla                                           ; $772e: $17
    xor c                                         ; $772f: $a9
    rst $38                                       ; $7730: $ff
    xor $fe                                       ; $7731: $ee $fe
    sbc e                                         ; $7733: $9b
    ei                                            ; $7734: $fb
    inc bc                                        ; $7735: $03
    db $ed                                        ; $7736: $ed
    ld [hl], l                                    ; $7737: $75
    ld d, a                                       ; $7738: $57
    cp h                                          ; $7739: $bc
    add b                                         ; $773a: $80
    sbc b                                         ; $773b: $98
    pop de                                        ; $773c: $d1
    jr c, @+$7b                                   ; $773d: $38 $79

    ld l, l                                       ; $773f: $6d
    add l                                         ; $7740: $85
    and l                                         ; $7741: $a5
    jr z, @+$5f                                   ; $7742: $28 $5d

    ld e, $63                                     ; $7744: $1e $63
    jp Jump_068_7974                              ; $7746: $c3 $74 $79


    dec hl                                        ; $7749: $2b
    sbc e                                         ; $774a: $9b
    ld e, $2e                                     ; $774b: $1e $2e
    cp $2f                                        ; $774d: $fe $2f
    inc [hl]                                      ; $774f: $34
    add $30                                       ; $7750: $c6 $30
    sbc l                                         ; $7752: $9d
    sbc [hl]                                      ; $7753: $9e
    rst $20                                       ; $7754: $e7
    or d                                          ; $7755: $b2
    or e                                          ; $7756: $b3
    add hl, sp                                    ; $7757: $39
    db $fc                                        ; $7758: $fc
    cp $00                                        ; $7759: $fe $00
    db $ed                                        ; $775b: $ed
    ld [hl], l                                    ; $775c: $75
    ld [c], a                                     ; $775d: $e2
    ld sp, $f4bf                                  ; $775e: $31 $bf $f4
    call nc, $f1b7                                ; $7761: $d4 $b7 $f1
    ld [hl+], a                                   ; $7764: $22
    or e                                          ; $7765: $b3
    add hl, hl                                    ; $7766: $29
    add a                                         ; $7767: $87
    xor [hl]                                      ; $7768: $ae
    db $10                                        ; $7769: $10
    ld a, a                                       ; $776a: $7f
    cp b                                          ; $776b: $b8
    ld c, [hl]                                    ; $776c: $4e
    xor a                                         ; $776d: $af
    ld a, b                                       ; $776e: $78
    ld bc, $a331                                  ; $776f: $01 $31 $a3
    sbc e                                         ; $7772: $9b
    cp c                                          ; $7773: $b9
    db $fc                                        ; $7774: $fc
    ld c, c                                       ; $7775: $49
    ld l, d                                       ; $7776: $6a
    and e                                         ; $7777: $a3
    sub e                                         ; $7778: $93
    db $fd                                        ; $7779: $fd
    daa                                           ; $777a: $27
    cp $ce                                        ; $777b: $fe $ce
    ld [hl], h                                    ; $777d: $74
    xor $0f                                       ; $777e: $ee $0f
    db $ed                                        ; $7780: $ed
    ld [hl], l                                    ; $7781: $75
    adc c                                         ; $7782: $89
    or b                                          ; $7783: $b0
    sub a                                         ; $7784: $97
    and a                                         ; $7785: $a7
    sub b                                         ; $7786: $90
    db $dd                                        ; $7787: $dd
    ld [$e9d2], a                                 ; $7788: $ea $d2 $e9
    dec b                                         ; $778b: $05
    ld e, d                                       ; $778c: $5a
    sub h                                         ; $778d: $94
    ld l, $8f                                     ; $778e: $2e $8f
    dec [hl]                                      ; $7790: $35
    and b                                         ; $7791: $a0
    pop hl                                        ; $7792: $e1
    xor l                                         ; $7793: $ad
    ld h, b                                       ; $7794: $60
    ld a, [hl-]                                   ; $7795: $3a
    jp c, $ade5                                   ; $7796: $da $e5 $ad

    ld l, h                                       ; $7799: $6c
    ld d, h                                       ; $779a: $54
    call nc, $ff17                                ; $779b: $d4 $17 $ff
    push bc                                       ; $779e: $c5
    cp l                                          ; $779f: $bd
    jr @-$58                                      ; $77a0: $18 $a6

    add a                                         ; $77a2: $87
    ld l, a                                       ; $77a3: $6f
    ld [hl], l                                    ; $77a4: $75
    jp hl                                         ; $77a5: $e9


    db $f4                                        ; $77a6: $f4
    ld [bc], a                                    ; $77a7: $02
    db $ed                                        ; $77a8: $ed
    dec h                                         ; $77a9: $25
    ld c, $bd                                     ; $77aa: $0e $bd
    inc d                                         ; $77ac: $14
    ld a, $8d                                     ; $77ad: $3e $8d
    ld a, [c]                                     ; $77af: $f2
    ldh a, [$fb]                                  ; $77b0: $f0 $fb
    inc bc                                        ; $77b2: $03
    db $ed                                        ; $77b3: $ed
    ld [hl], l                                    ; $77b4: $75
    rla                                           ; $77b5: $17
    call nz, Call_068_6215                        ; $77b6: $c4 $15 $62
    ld e, $6b                                     ; $77b9: $1e $6b
    ld h, b                                       ; $77bb: $60
    rst $08                                       ; $77bc: $cf
    add hl, de                                    ; $77bd: $19
    jp hl                                         ; $77be: $e9


    ld h, c                                       ; $77bf: $61
    inc bc                                        ; $77c0: $03
    cp d                                          ; $77c1: $ba
    sub l                                         ; $77c2: $95
    ld l, [hl]                                    ; $77c3: $6e
    db $e3                                        ; $77c4: $e3
    and $24                                       ; $77c5: $e6 $24
    sbc [hl]                                      ; $77c7: $9e
    call Call_000_01fd                            ; $77c8: $cd $fd $01
    db $ed                                        ; $77cb: $ed
    ld [hl], l                                    ; $77cc: $75
    db $db                                        ; $77cd: $db
    dec hl                                        ; $77ce: $2b
    ld sp, hl                                     ; $77cf: $f9
    or h                                          ; $77d0: $b4
    ld e, [hl]                                    ; $77d1: $5e
    jp z, $a9d1                                   ; $77d2: $ca $d1 $a9

    rla                                           ; $77d5: $17
    cpl                                           ; $77d6: $2f
    cp a                                          ; $77d7: $bf
    rra                                           ; $77d8: $1f
    rst $08                                       ; $77d9: $cf
    and [hl]                                      ; $77da: $a6
    ld bc, $13cd                                  ; $77db: $01 $cd $13
    ld b, [hl]                                    ; $77de: $46
    dec sp                                        ; $77df: $3b
    jp c, $e90c                                   ; $77e0: $da $0c $e9

    adc a                                         ; $77e3: $8f
    sbc $4d                                       ; $77e4: $de $4d
    add h                                         ; $77e6: $84
    ld h, l                                       ; $77e7: $65
    call nz, $ae1f                                ; $77e8: $c4 $1f $ae
    ei                                            ; $77eb: $fb
    ld [hl], a                                    ; $77ec: $77
    di                                            ; $77ed: $f3
    ld e, b                                       ; $77ee: $58
    ld b, [hl]                                    ; $77ef: $46
    jp Jump_068_52f4                              ; $77f0: $c3 $f4 $52


    cp h                                          ; $77f3: $bc
    adc d                                         ; $77f4: $8a
    ld e, e                                       ; $77f5: $5b
    halt                                          ; $77f6: $76
    halt                                          ; $77f7: $76
    ld a, a                                       ; $77f8: $7f
    db $ed                                        ; $77f9: $ed
    ld [hl], l                                    ; $77fa: $75
    sbc e                                         ; $77fb: $9b
    sub e                                         ; $77fc: $93
    ldh a, [$a2]                                  ; $77fd: $f0 $a2
    ld h, c                                       ; $77ff: $61
    cp d                                          ; $7800: $ba
    ld a, c                                       ; $7801: $79
    and d                                         ; $7802: $a2
    ld h, d                                       ; $7803: $62
    ld c, c                                       ; $7804: $49

jr_068_7805:
    ld c, [hl]                                    ; $7805: $4e
    jp $cf68                                      ; $7806: $c3 $68 $cf


    jp $efcb                                      ; $7809: $c3 $cb $ef


    rst $00                                       ; $780c: $c7
    or e                                          ; $780d: $b3
    pop de                                        ; $780e: $d1
    ld [hl+], a                                   ; $780f: $22
    ld h, [hl]                                    ; $7810: $66
    ld b, e                                       ; $7811: $43
    adc a                                         ; $7812: $8f
    dec a                                         ; $7813: $3d
    jp hl                                         ; $7814: $e9


    ret c                                         ; $7815: $d8

    db $e3                                        ; $7816: $e3
    adc d                                         ; $7817: $8a
    ld e, $7b                                     ; $7818: $1e $7b
    jp nc, Jump_000_2729                          ; $781a: $d2 $29 $27

    rst $18                                       ; $781d: $df
    rra                                           ; $781e: $1f
    db $ed                                        ; $781f: $ed
    ld [hl], l                                    ; $7820: $75
    sbc e                                         ; $7821: $9b
    daa                                           ; $7822: $27
    ld h, $f1                                     ; $7823: $26 $f1
    cp a                                          ; $7825: $bf
    jr nc, jr_068_7805                            ; $7826: $30 $dd

    ld a, [$d3e2]                                 ; $7828: $fa $e2 $d3
    ld l, h                                       ; $782b: $6c
    db $d3                                        ; $782c: $d3
    ret nz                                        ; $782d: $c0

    ld l, [hl]                                    ; $782e: $6e
    ld h, l                                       ; $782f: $65
    ld a, [$d451]                                 ; $7830: $fa $51 $d4
    jr c, jr_068_7847                             ; $7833: $38 $12

    inc c                                         ; $7835: $0c
    ld d, e                                       ; $7836: $53
    ret z                                         ; $7837: $c8

    ld e, $7b                                     ; $7838: $1e $7b
    jp z, $c7b1                                   ; $783a: $ca $b1 $c7

    sbc $1f                                       ; $783d: $de $1f
    db $ed                                        ; $783f: $ed
    ld [hl], l                                    ; $7840: $75
    sbc e                                         ; $7841: $9b
    sub e                                         ; $7842: $93
    ldh a, [$a2]                                  ; $7843: $f0 $a2
    ld h, c                                       ; $7845: $61
    cp d                                          ; $7846: $ba

jr_068_7847:
    ld a, c                                       ; $7847: $79
    and d                                         ; $7848: $a2
    ld h, d                                       ; $7849: $62
    ld c, c                                       ; $784a: $49
    ld c, [hl]                                    ; $784b: $4e
    jp $cf68                                      ; $784c: $c3 $68 $cf


    jp $efcb                                      ; $784f: $c3 $cb $ef


    rst $00                                       ; $7852: $c7
    or e                                          ; $7853: $b3
    pop de                                        ; $7854: $d1
    ld [hl+], a                                   ; $7855: $22
    ld h, [hl]                                    ; $7856: $66
    ld b, e                                       ; $7857: $43
    adc a                                         ; $7858: $8f
    dec a                                         ; $7859: $3d
    pop hl                                        ; $785a: $e1
    add h                                         ; $785b: $84
    ld d, e                                       ; $785c: $53
    adc d                                         ; $785d: $8a
    ld e, $7b                                     ; $785e: $1e $7b
    jp nz, $c789                                  ; $7860: $c2 $89 $c7

    call c, $ed1f                                 ; $7863: $dc $1f $ed
    ld [hl], l                                    ; $7866: $75
    rst $20                                       ; $7867: $e7

Call_068_7868:
    ld d, c                                       ; $7868: $51
    adc [hl]                                      ; $7869: $8e
    ld c, [hl]                                    ; $786a: $4e
    db $fd                                        ; $786b: $fd
    or c                                          ; $786c: $b1
    ld b, $98                                     ; $786d: $06 $98
    ld c, l                                       ; $786f: $4d
    and [hl]                                      ; $7870: $a6
    push de                                       ; $7871: $d5
    ret                                           ; $7872: $c9


    sbc [hl]                                      ; $7873: $9e
    rst $38                                       ; $7874: $ff
    jp nc, $198c                                  ; $7875: $d2 $8c $19

    ld c, l                                       ; $7878: $4d
    add hl, sp                                    ; $7879: $39
    sub h                                         ; $787a: $94
    add hl, de                                    ; $787b: $19
    ld h, [hl]                                    ; $787c: $66
    ld h, e                                       ; $787d: $63
    ld l, a                                       ; $787e: $6f
    rla                                           ; $787f: $17
    ld d, a                                       ; $7880: $57
    ld l, h                                       ; $7881: $6c
    jp z, $d641                                   ; $7882: $ca $41 $d6

    and a                                         ; $7885: $a7
    ld a, [hl+]                                   ; $7886: $2a
    ld d, l                                       ; $7887: $55
    ld d, c                                       ; $7888: $51
    rra                                           ; $7889: $1f
    set 6, h                                      ; $788a: $cb $f4
    jp nc, $bd37                                  ; $788c: $d2 $37 $bd

    ld [hl], d                                    ; $788f: $72
    daa                                           ; $7890: $27
    xor $0f                                       ; $7891: $ee $0f
    db $ed                                        ; $7893: $ed
    ld [hl], l                                    ; $7894: $75
    adc c                                         ; $7895: $89
    or $24                                        ; $7896: $f6 $24
    sbc [hl]                                      ; $7898: $9e
    or c                                          ; $7899: $b1
    ld e, $73                                     ; $789a: $1e $73
    add d                                         ; $789c: $82
    ld e, c                                       ; $789d: $59
    ld [hl], $8f                                  ; $789e: $36 $8f
    ld b, l                                       ; $78a0: $45
    jp c, Jump_068_4546                           ; $78a1: $da $46 $45

    or a                                          ; $78a4: $b7
    cp [hl]                                       ; $78a5: $be
    ld hl, sp+$34                                 ; $78a6: $f8 $34
    dec de                                        ; $78a8: $1b
    dec de                                        ; $78a9: $1b
    ret c                                         ; $78aa: $d8

    xor l                                         ; $78ab: $ad
    ld c, h                                       ; $78ac: $4c
    ccf                                           ; $78ad: $3f
    sbc $1f                                       ; $78ae: $de $1f
    db $ed                                        ; $78b0: $ed
    ld [hl], l                                    ; $78b1: $75
    rst $20                                       ; $78b2: $e7
    ld d, c                                       ; $78b3: $51
    adc [hl]                                      ; $78b4: $8e
    or d                                          ; $78b5: $b2
    ld a, $96                                     ; $78b6: $3e $96
    pop de                                        ; $78b8: $d1
    ld b, d                                       ; $78b9: $42
    or e                                          ; $78ba: $b3
    dec bc                                        ; $78bb: $0b
    and e                                         ; $78bc: $a3
    dec c                                         ; $78bd: $0d
    ld l, b                                       ; $78be: $68
    ld a, [$19a5]                                 ; $78bf: $fa $a5 $19
    inc sp                                        ; $78c2: $33
    db $f4                                        ; $78c3: $f4
    xor $d6                                       ; $78c4: $ee $d6
    ld sp, $2b83                                  ; $78c6: $31 $83 $2b
    call nc, $fc67                                ; $78c9: $d4 $67 $fc
    add hl, de                                    ; $78cc: $19
    ld e, b                                       ; $78cd: $58
    call nz, Call_068_6394                        ; $78ce: $c4 $94 $63
    call z, Call_000_00d3                         ; $78d1: $cc $d3 $00
    ld b, l                                       ; $78d4: $45
    ld c, h                                       ; $78d5: $4c
    ld [hl], d                                    ; $78d6: $72
    push bc                                       ; $78d7: $c5
    ld a, [hl-]                                   ; $78d8: $3a
    reti                                          ; $78d9: $d9


    db $f4                                        ; $78da: $f4
    ld c, e                                       ; $78db: $4b
    inc sp                                        ; $78dc: $33
    ld h, [hl]                                    ; $78dd: $66
    call c, $ed1f                                 ; $78de: $dc $1f $ed
    ld [hl], l                                    ; $78e1: $75
    sbc e                                         ; $78e2: $9b
    add hl, hl                                    ; $78e3: $29
    ld a, l                                       ; $78e4: $7d
    ld [$01a7], sp                                ; $78e5: $08 $a7 $01
    cp l                                          ; $78e8: $bd
    adc d                                         ; $78e9: $8a
    pop bc                                        ; $78ea: $c1
    ld c, $d4                                     ; $78eb: $0e $d4
    add [hl]                                      ; $78ed: $86
    pop de                                        ; $78ee: $d1
    sbc [hl]                                      ; $78ef: $9e
    add a                                         ; $78f0: $87
    sub a                                         ; $78f1: $97
    rst $18                                       ; $78f2: $df
    adc a                                         ; $78f3: $8f
    ld h, a                                       ; $78f4: $67
    and e                                         ; $78f5: $a3
    ld b, l                                       ; $78f6: $45
    call z, $1e86                                 ; $78f7: $cc $86 $1e
    ld a, e                                       ; $78fa: $7b
    ld [c], a                                     ; $78fb: $e2
    ld sp, $1527                                  ; $78fc: $31 $27 $15
    dec a                                         ; $78ff: $3d
    or $c4                                        ; $7900: $f6 $c4
    ld d, e                                       ; $7902: $53

Call_068_7903:
    ld c, [hl]                                    ; $7903: $4e
    cp c                                          ; $7904: $b9
    ccf                                           ; $7905: $3f
    db $ed                                        ; $7906: $ed
    ld [hl], l                                    ; $7907: $75
    db $db                                        ; $7908: $db
    ld l, e                                       ; $7909: $6b
    db $f4                                        ; $790a: $f4
    cp c                                          ; $790b: $b9
    xor e                                         ; $790c: $ab
    add hl, hl                                    ; $790d: $29
    add a                                         ; $790e: $87
    ld [$0c78], a                                 ; $790f: $ea $78 $0c
    xor e                                         ; $7912: $ab
    or a                                          ; $7913: $b7
    add d                                         ; $7914: $82
    cp e                                          ; $7915: $bb
    ccf                                           ; $7916: $3f
    db $ed                                        ; $7917: $ed
    ld [hl], l                                    ; $7918: $75
    sbc e                                         ; $7919: $9b
    ld b, a                                       ; $791a: $47
    jp nz, Jump_068_49d5                          ; $791b: $c2 $d5 $49

    or $32                                        ; $791e: $f6 $32
    call nz, $dfcc                                ; $7920: $c4 $cc $df
    dec l                                         ; $7923: $2d
    db $ec                                        ; $7924: $ec
    dec d                                         ; $7925: $15
    adc b                                         ; $7926: $88
    adc b                                         ; $7927: $88
    and e                                         ; $7928: $a3
    db $ec                                        ; $7929: $ec
    adc e                                         ; $792a: $8b
    add hl, de                                    ; $792b: $19
    rst $08                                       ; $792c: $cf
    ld e, b                                       ; $792d: $58
    ld d, h                                       ; $792e: $54
    rst $00                                       ; $792f: $c7
    ld h, e                                       ; $7930: $63
    ld e, b                                       ; $7931: $58
    cp l                                          ; $7932: $bd
    dec d                                         ; $7933: $15
    sbc h                                         ; $7934: $9c
    xor b                                         ; $7935: $a8
    sub b                                         ; $7936: $90
    sbc [hl]                                      ; $7937: $9e
    ld sp, $2f96                                  ; $7938: $31 $96 $2f
    ld b, $16                                     ; $793b: $06 $16
    sbc d                                         ; $793d: $9a
    ld hl, $b580                                  ; $793e: $21 $80 $b5
    ld de, $f73c                                  ; $7941: $11 $3c $f7
    rlca                                          ; $7944: $07
    db $ed                                        ; $7945: $ed
    ld [hl], l                                    ; $7946: $75
    rst $20                                       ; $7947: $e7
    sbc b                                         ; $7948: $98
    inc de                                        ; $7949: $13
    call z, $63fe                                 ; $794a: $cc $fe $63
    cp a                                          ; $794d: $bf
    adc e                                         ; $794e: $8b
    add c                                         ; $794f: $81
    ld b, l                                       ; $7950: $45
    ld [hl], l                                    ; $7951: $75
    rst $30                                       ; $7952: $f7
    cp $23                                        ; $7953: $fe $23
    db $eb                                        ; $7955: $eb
    ld h, h                                       ; $7956: $64
    ld h, a                                       ; $7957: $67
    ld c, c                                       ; $7958: $49
    ld c, [hl]                                    ; $7959: $4e
    ld d, e                                       ; $795a: $53
    ld c, $e5                                     ; $795b: $0e $e5
    sbc a                                         ; $795d: $9f
    inc e                                         ; $795e: $1c
    ld d, a                                       ; $795f: $57
    daa                                           ; $7960: $27
    reti                                          ; $7961: $d9


    rst $18                                       ; $7962: $df
    add hl, de                                    ; $7963: $19
    db $eb                                        ; $7964: $eb
    db $d3                                        ; $7965: $d3
    ret c                                         ; $7966: $d8

    jp hl                                         ; $7967: $e9


    ld c, $1a                                     ; $7968: $0e $1a
    and l                                         ; $796a: $a5
    ccf                                           ; $796b: $3f
    dec c                                         ; $796c: $0d
    add sp, -$47                                  ; $796d: $e8 $b9
    add $b4                                       ; $796f: $c6 $b4
    ld [hl], b                                    ; $7971: $70
    xor $0f                                       ; $7972: $ee $0f

Jump_068_7974:
    db $ed                                        ; $7974: $ed
    ld [hl], l                                    ; $7975: $75
    dec sp                                        ; $7976: $3b
    ld hl, sp-$3d                                 ; $7977: $f8 $c3
    jp nz, $a7e4                                  ; $7979: $c2 $e4 $a7

    db $ec                                        ; $797c: $ec
    cp c                                          ; $797d: $b9
    and $5e                                       ; $797e: $e6 $5e
    ld h, b                                       ; $7980: $60
    cpl                                           ; $7981: $2f
    or b                                          ; $7982: $b0
    add l                                         ; $7983: $85
    ld sp, $d940                                  ; $7984: $31 $40 $d9
    sub h                                         ; $7987: $94
    ld b, e                                       ; $7988: $43

Jump_068_7989:
    inc bc                                        ; $7989: $03
    db $f4                                        ; $798a: $f4
    rra                                           ; $798b: $1f
    adc a                                         ; $798c: $8f
    dec a                                         ; $798d: $3d
    ld d, a                                       ; $798e: $57
    ld l, d                                       ; $798f: $6a
    ld a, l                                       ; $7990: $7d
    dec de                                        ; $7991: $1b
    rst $18                                       ; $7992: $df
    ld e, $02                                     ; $7993: $1e $02
    inc bc                                        ; $7995: $03
    or h                                          ; $7996: $b4
    ld h, c                                       ; $7997: $61
    cp d                                          ; $7998: $ba
    db $dd                                        ; $7999: $dd
    ld d, [hl]                                    ; $799a: $56
    ld e, h                                       ; $799b: $5c
    sub d                                         ; $799c: $92
    db $d3                                        ; $799d: $d3
    ld l, l                                       ; $799e: $6d
    di                                            ; $799f: $f3
    ld h, a                                       ; $79a0: $67
    ld h, a                                       ; $79a1: $67
    ld [hl], c                                    ; $79a2: $71
    xor $0f                                       ; $79a3: $ee $0f
    db $ed                                        ; $79a5: $ed
    ld [hl], l                                    ; $79a6: $75
    adc c                                         ; $79a7: $89
    ld l, a                                       ; $79a8: $6f
    ld [hl+], a                                   ; $79a9: $22
    sbc [hl]                                      ; $79aa: $9e
    or c                                          ; $79ab: $b1
    add c                                         ; $79ac: $81
    db $dd                                        ; $79ad: $dd
    ld [bc], a                                    ; $79ae: $02
    di                                            ; $79af: $f3
    call z, $e932                                 ; $79b0: $cc $32 $e9
    rst $00                                       ; $79b3: $c7
    and [hl]                                      ; $79b4: $a6
    inc e                                         ; $79b5: $1c
    ld l, d                                       ; $79b6: $6a
    ld hl, sp+$67                                 ; $79b7: $f8 $67
    ld c, c                                       ; $79b9: $49
    jp nz, $bc35                                  ; $79ba: $c2 $35 $bc

    dec d                                         ; $79bd: $15
    ld c, h                                       ; $79be: $4c
    xor c                                         ; $79bf: $a9
    push af                                       ; $79c0: $f5
    ld l, $63                                     ; $79c1: $2e $63
    ret nc                                        ; $79c3: $d0

    jp z, $f4b5                                   ; $79c4: $ca $b5 $f4

    ei                                            ; $79c7: $fb
    xor c                                         ; $79c8: $a9
    rra                                           ; $79c9: $1f
    db $ed                                        ; $79ca: $ed
    ld [hl], l                                    ; $79cb: $75
    adc c                                         ; $79cc: $89
    or $24                                        ; $79cd: $f6 $24
    sbc [hl]                                      ; $79cf: $9e
    or c                                          ; $79d0: $b1
    xor e                                         ; $79d1: $ab
    db $dd                                        ; $79d2: $dd
    ld a, [c]                                     ; $79d3: $f2
    sub e                                         ; $79d4: $93
    db $ec                                        ; $79d5: $ec
    ccf                                           ; $79d6: $3f
    ld sp, $ff89                                  ; $79d7: $31 $89 $ff
    dec b                                         ; $79da: $05
    ld [hl], $4c                                  ; $79db: $36 $4c
    ld [hl], a                                    ; $79dd: $77

jr_068_79de:
    ret nc                                        ; $79de: $d0

    jr z, jr_068_79de                             ; $79df: $28 $fd

    ld l, c                                       ; $79e1: $69
    ld b, b                                       ; $79e2: $40
    rst $08                                       ; $79e3: $cf
    dec [hl]                                      ; $79e4: $35
    and [hl]                                      ; $79e5: $a6
    add l                                         ; $79e6: $85
    ld [hl], e                                    ; $79e7: $73
    ld a, a                                       ; $79e8: $7f
    db $ed                                        ; $79e9: $ed
    ld [hl], l                                    ; $79ea: $75
    rst $20                                       ; $79eb: $e7
    cp c                                          ; $79ec: $b9
    jr jr_068_7a07                                ; $79ed: $18 $18

    add $1a                                       ; $79ef: $c6 $1a
    and [hl]                                      ; $79f1: $a6
    ld e, e                                       ; $79f2: $5b
    ld b, [hl]                                    ; $79f3: $46
    db $fd                                        ; $79f4: $fd
    sub a                                         ; $79f5: $97
    cp c                                          ; $79f6: $b9
    inc [hl]                                      ; $79f7: $34
    and b                                         ; $79f8: $a0
    dec sp                                        ; $79f9: $3b
    add h                                         ; $79fa: $84

Jump_068_79fb:
    db $d3                                        ; $79fb: $d3
    xor l                                         ; $79fc: $ad
    ld l, $a6                                     ; $79fd: $2e $a6
    and a                                         ; $79ff: $a7
    adc c                                         ; $7a00: $89
    inc [hl]                                      ; $7a01: $34
    or $dc                                        ; $7a02: $f6 $dc
    ld b, c                                       ; $7a04: $41
    ld e, h                                       ; $7a05: $5c
    ld c, a                                       ; $7a06: $4f

jr_068_7a07:
    dec l                                         ; $7a07: $2d
    cp d                                          ; $7a08: $ba
    sub l                                         ; $7a09: $95
    dec bc                                        ; $7a0a: $0b
    ld e, [hl]                                    ; $7a0b: $5e
    and [hl]                                      ; $7a0c: $a6
    halt                                          ; $7a0d: $76
    db $eb                                        ; $7a0e: $eb
    ld e, d                                       ; $7a0f: $5a
    ld a, [$d4fd]                                 ; $7a10: $fa $fd $d4
    ei                                            ; $7a13: $fb
    inc bc                                        ; $7a14: $03
    db $ed                                        ; $7a15: $ed
    ld [hl], l                                    ; $7a16: $75
    adc c                                         ; $7a17: $89
    or $24                                        ; $7a18: $f6 $24
    sbc [hl]                                      ; $7a1a: $9e
    ld c, l                                       ; $7a1b: $4d
    cp l                                          ; $7a1c: $bd
    ld a, b                                       ; $7a1d: $78
    ld sp, hl                                     ; $7a1e: $f9
    db $fd                                        ; $7a1f: $fd
    ld a, b                                       ; $7a20: $78
    ld [hl], $65                                  ; $7a21: $36 $65
    dec d                                         ; $7a23: $15
    ld d, [hl]                                    ; $7a24: $56
    cpl                                           ; $7a25: $2f
    db $ec                                        ; $7a26: $ec
    add l                                         ; $7a27: $85
    xor c                                         ; $7a28: $a9
    ccf                                           ; $7a29: $3f
    ld d, [hl]                                    ; $7a2a: $56
    daa                                           ; $7a2b: $27
    sbc e                                         ; $7a2c: $9b
    ld h, b                                       ; $7a2d: $60
    ld c, [hl]                                    ; $7a2e: $4e
    ld a, [$b988]                                 ; $7a2f: $fa $88 $b9
    ld [c], a                                     ; $7a32: $e2
    ld e, [hl]                                    ; $7a33: $5e
    ld a, e                                       ; $7a34: $7b
    ccf                                           ; $7a35: $3f
    db $e3                                        ; $7a36: $e3
    call c, $ed1f                                 ; $7a37: $dc $1f $ed
    ld [hl], l                                    ; $7a3a: $75
    adc c                                         ; $7a3b: $89
    or $24                                        ; $7a3c: $f6 $24
    sbc [hl]                                      ; $7a3e: $9e
    or c                                          ; $7a3f: $b1
    ld [c], a                                     ; $7a40: $e2
    or $b2                                        ; $7a41: $f6 $b2
    inc a                                         ; $7a43: $3c

jr_068_7a44:
    jr nz, jr_068_7a44                            ; $7a44: $20 $fe

    adc a                                         ; $7a46: $8f
    ld h, l                                       ; $7a47: $65
    and c                                         ; $7a48: $a1
    sbc c                                         ; $7a49: $99
    ld e, $2c                                     ; $7a4a: $1e $2c
    ld hl, sp+$61                                 ; $7a4c: $f8 $61
    and l                                         ; $7a4e: $a5
    sub $b7                                       ; $7a4f: $d6 $b7
    pop af                                        ; $7a51: $f1
    db $ed                                        ; $7a52: $ed
    ld hl, $4030                                  ; $7a53: $21 $30 $40
    dec hl                                        ; $7a56: $2b
    rst $10                                       ; $7a57: $d7
    jp nc, $a7ef                                  ; $7a58: $d2 $ef $a7

    ld [hl], $4c                                  ; $7a5b: $36 $4c
    db $e3                                        ; $7a5d: $e3
    ld e, $12                                     ; $7a5e: $1e $12
    ld [hl], $55                                  ; $7a60: $36 $55
    ld h, h                                       ; $7a62: $64
    call c, $ed1f                                 ; $7a63: $dc $1f $ed
    ld [hl], l                                    ; $7a66: $75
    sbc e                                         ; $7a67: $9b
    ld h, a                                       ; $7a68: $67
    and e                                         ; $7a69: $a3
    rst $10                                       ; $7a6a: $d7
    push bc                                       ; $7a6b: $c5
    ret nz                                        ; $7a6c: $c0

    jr nc, @-$28                                  ; $7a6d: $30 $d6

    add b                                         ; $7a6f: $80
    ld l, [hl]                                    ; $7a70: $6e
    sbc c                                         ; $7a71: $99
    or h                                          ; $7a72: $b4
    jr nz, jr_068_7acf                            ; $7a73: $20 $5a

    sub $bb                                       ; $7a75: $d6 $bb
    rst $20                                       ; $7a77: $e7
    jp nz, $1a75                                  ; $7a78: $c2 $75 $1a

    ld b, a                                       ; $7a7b: $47
    and d                                         ; $7a7c: $a2
    xor h                                         ; $7a7d: $ac
    sub e                                         ; $7a7e: $93
    ld l, h                                       ; $7a7f: $6c
    and b                                         ; $7a80: $a0
    ld [hl], $e5                                  ; $7a81: $36 $e5
    sbc b                                         ; $7a83: $98
    ld l, l                                       ; $7a84: $6d
    sbc d                                         ; $7a85: $9a
    sub b                                         ; $7a86: $90
    ld [hl], d                                    ; $7a87: $72
    rst $08                                       ; $7a88: $cf
    and a                                         ; $7a89: $a7
    ld [hl], $a0                                  ; $7a8a: $36 $a0
    ld e, e                                       ; $7a8c: $5b
    ld h, $2d                                     ; $7a8d: $26 $2d
    adc b                                         ; $7a8f: $88
    sub [hl]                                      ; $7a90: $96
    push af                                       ; $7a91: $f5
    cp $00                                        ; $7a92: $fe $00
    db $ed                                        ; $7a94: $ed
    ld [hl], l                                    ; $7a95: $75
    rst $20                                       ; $7a96: $e7
    ld d, c                                       ; $7a97: $51
    adc [hl]                                      ; $7a98: $8e
    or d                                          ; $7a99: $b2
    ret nc                                        ; $7a9a: $d0

    rst $18                                       ; $7a9b: $df
    ld e, [hl]                                    ; $7a9c: $5e
    ld e, $63                                     ; $7a9d: $1e $63
    inc bc                                        ; $7a9f: $03
    cp d                                          ; $7aa0: $ba
    cp h                                          ; $7aa1: $bc
    sub l                                         ; $7aa2: $95
    adc l                                         ; $7aa3: $8d
    ld [hl], $a0                                  ; $7aa4: $36 $a0
    ld e, [hl]                                    ; $7aa6: $5e
    cp h                                          ; $7aa7: $bc
    db $fc                                        ; $7aa8: $fc
    sub $d3                                       ; $7aa9: $d6 $d3
    ld e, $ef                                     ; $7aab: $1e $ef
    rrca                                          ; $7aad: $0f
    db $ed                                        ; $7aae: $ed
    ld [hl], l                                    ; $7aaf: $75
    sbc e                                         ; $7ab0: $9b
    ld h, a                                       ; $7ab1: $67

Call_068_7ab2:
    and e                                         ; $7ab2: $a3
    rst $10                                       ; $7ab3: $d7
    push bc                                       ; $7ab4: $c5
    ret nz                                        ; $7ab5: $c0

    jr nc, @-$28                                  ; $7ab6: $30 $d6

    add b                                         ; $7ab8: $80
    ld l, [hl]                                    ; $7ab9: $6e
    sbc c                                         ; $7aba: $99
    or h                                          ; $7abb: $b4
    jr nz, jr_068_7b18                            ; $7abc: $20 $5a

    sub $bb                                       ; $7abe: $d6 $bb
    rst $20                                       ; $7ac0: $e7
    jp nz, $1a75                                  ; $7ac1: $c2 $75 $1a

    ld b, a                                       ; $7ac4: $47
    and d                                         ; $7ac5: $a2
    xor h                                         ; $7ac6: $ac
    sub e                                         ; $7ac7: $93
    ld l, h                                       ; $7ac8: $6c
    and b                                         ; $7ac9: $a0
    ld [hl], $e5                                  ; $7aca: $36 $e5
    sbc b                                         ; $7acc: $98
    ld l, l                                       ; $7acd: $6d
    sbc d                                         ; $7ace: $9a

Call_068_7acf:
jr_068_7acf:
    sub b                                         ; $7acf: $90

jr_068_7ad0:
    ld [hl], d                                    ; $7ad0: $72
    rst $08                                       ; $7ad1: $cf
    and a                                         ; $7ad2: $a7
    ld [hl], $a0                                  ; $7ad3: $36 $a0
    ld e, e                                       ; $7ad5: $5b
    ld h, $2d                                     ; $7ad6: $26 $2d
    adc b                                         ; $7ad8: $88
    sub [hl]                                      ; $7ad9: $96
    push af                                       ; $7ada: $f5
    cp $00                                        ; $7adb: $fe $00
    db $ed                                        ; $7add: $ed
    ld [hl], l                                    ; $7ade: $75
    rst $20                                       ; $7adf: $e7
    sbc b                                         ; $7ae0: $98
    inc de                                        ; $7ae1: $13
    call z, $882e                                 ; $7ae2: $cc $2e $88
    ld h, c                                       ; $7ae5: $61
    call $9b1e                                    ; $7ae6: $cd $1e $9b
    ld [hl], d                                    ; $7ae9: $72
    ld l, b                                       ; $7aea: $68
    ld [hl], $bc                                  ; $7aeb: $36 $bc
    ret z                                         ; $7aed: $c8

    dec d                                         ; $7aee: $15
    dec hl                                        ; $7aef: $2b
    ld h, b                                       ; $7af0: $60
    ld d, [hl]                                    ; $7af1: $56
    adc b                                         ; $7af2: $88
    ld e, d                                       ; $7af3: $5a
    adc a                                         ; $7af4: $8f
    add hl, sp                                    ; $7af5: $39
    pop bc                                        ; $7af6: $c1

jr_068_7af7:
    and e                                         ; $7af7: $a3
    adc l                                         ; $7af8: $8d
    db $ec                                        ; $7af9: $ec
    dec b                                         ; $7afa: $05
    or [hl]                                       ; $7afb: $b6
    jr nc, jr_068_7b04                            ; $7afc: $30 $06

    sbc $1f                                       ; $7afe: $de $1f
    db $ed                                        ; $7b00: $ed
    ld [hl], l                                    ; $7b01: $75
    sbc e                                         ; $7b02: $9b
    ld h, a                                       ; $7b03: $67

jr_068_7b04:
    and e                                         ; $7b04: $a3
    rst $10                                       ; $7b05: $d7
    push bc                                       ; $7b06: $c5
    ret nz                                        ; $7b07: $c0

    jr nc, jr_068_7ad0                            ; $7b08: $30 $c6

    ld b, $74                                     ; $7b0a: $06 $74
    res 4, h                                      ; $7b0c: $cb $a4
    dec b                                         ; $7b0e: $05
    pop de                                        ; $7b0f: $d1
    or d                                          ; $7b10: $b2
    sbc $3d                                       ; $7b11: $de $3d
    rla                                           ; $7b13: $17
    xor [hl]                                      ; $7b14: $ae
    db $d3                                        ; $7b15: $d3
    jr c, jr_068_7b2a                             ; $7b16: $38 $12

jr_068_7b18:
    ld h, l                                       ; $7b18: $65
    sbc l                                         ; $7b19: $9d
    ld h, h                                       ; $7b1a: $64
    inc bc                                        ; $7b1b: $03
    or l                                          ; $7b1c: $b5
    add hl, hl                                    ; $7b1d: $29
    rst $00                                       ; $7b1e: $c7
    ld l, h                                       ; $7b1f: $6c
    db $d3                                        ; $7b20: $d3
    add h                                         ; $7b21: $84
    sub h                                         ; $7b22: $94
    ld a, e                                       ; $7b23: $7b
    ld a, $b5                                     ; $7b24: $3e $b5
    ld bc, $32dd                                  ; $7b26: $01 $dd $32
    ld l, c                                       ; $7b29: $69

jr_068_7b2a:
    ld b, c                                       ; $7b2a: $41
    or h                                          ; $7b2b: $b4

jr_068_7b2c:
    xor h                                         ; $7b2c: $ac
    rst $30                                       ; $7b2d: $f7
    rlca                                          ; $7b2e: $07
    db $ed                                        ; $7b2f: $ed
    ld [hl], l                                    ; $7b30: $75
    sbc e                                         ; $7b31: $9b
    ld h, a                                       ; $7b32: $67
    and e                                         ; $7b33: $a3
    rst $10                                       ; $7b34: $d7
    push bc                                       ; $7b35: $c5
    ret nz                                        ; $7b36: $c0

    jr nc, @-$38                                  ; $7b37: $30 $c6

    ld b, $74                                     ; $7b39: $06 $74
    res 4, h                                      ; $7b3b: $cb $a4
    dec b                                         ; $7b3d: $05
    pop de                                        ; $7b3e: $d1
    or d                                          ; $7b3f: $b2
    sbc $3d                                       ; $7b40: $de $3d
    rla                                           ; $7b42: $17
    xor [hl]                                      ; $7b43: $ae
    ld d, e                                       ; $7b44: $53
    add l                                         ; $7b45: $85
    ld l, e                                       ; $7b46: $6b
    inc e                                         ; $7b47: $1c
    adc c                                         ; $7b48: $89
    or d                                          ; $7b49: $b2
    ld c, [hl]                                    ; $7b4a: $4e
    or d                                          ; $7b4b: $b2
    add c                                         ; $7b4c: $81
    jp c, Jump_068_6394                           ; $7b4d: $da $94 $63

    or [hl]                                       ; $7b50: $b6
    ld l, c                                       ; $7b51: $69

jr_068_7b52:
    ld b, d                                       ; $7b52: $42
    jp z, $9f3d                                   ; $7b53: $ca $3d $9f

    jp c, $6e80                                   ; $7b56: $da $80 $6e

    sbc c                                         ; $7b59: $99
    or h                                          ; $7b5a: $b4
    jr nz, jr_068_7af7                            ; $7b5b: $20 $9a

    and $fb                                       ; $7b5d: $e6 $fb
    inc bc                                        ; $7b5f: $03
    db $ed                                        ; $7b60: $ed
    ld [hl], l                                    ; $7b61: $75
    rst $20                                       ; $7b62: $e7
    cp c                                          ; $7b63: $b9
    jr jr_068_7b2c                                ; $7b64: $18 $c6

    sub l                                         ; $7b66: $95
    push hl                                       ; $7b67: $e5
    ld [de], a                                    ; $7b68: $12
    ldh a, [$d8]                                  ; $7b69: $f0 $d8
    add b                                         ; $7b6b: $80
    ld l, [hl]                                    ; $7b6c: $6e
    sbc c                                         ; $7b6d: $99
    or h                                          ; $7b6e: $b4
    ld c, d                                       ; $7b6f: $4a
    jr nc, jr_068_7b52                            ; $7b70: $30 $e0

    cp $00                                        ; $7b72: $fe $00
    db $ed                                        ; $7b74: $ed
    ld [hl], l                                    ; $7b75: $75
    adc c                                         ; $7b76: $89
    or $24                                        ; $7b77: $f6 $24
    sbc [hl]                                      ; $7b79: $9e
    or c                                          ; $7b7a: $b1
    adc d                                         ; $7b7b: $8a
    sbc b                                         ; $7b7c: $98
    inc e                                         ; $7b7d: $1c
    ld a, e                                       ; $7b7e: $7b
    ld l, h                                       ; $7b7f: $6c
    sbc b                                         ; $7b80: $98
    ld l, [hl]                                    ; $7b81: $6e
    and $12                                       ; $7b82: $e6 $12
    ldh a, [$4c]                                  ; $7b84: $f0 $4c
    jr c, jr_068_7bd5                             ; $7b86: $38 $4d

    ret nc                                        ; $7b88: $d0

    ld a, a                                       ; $7b89: $7f
    jr @+$35                                      ; $7b8a: $18 $33

    xor $0f                                       ; $7b8c: $ee $0f
    db $ed                                        ; $7b8e: $ed
    ld [hl], l                                    ; $7b8f: $75
    rst $20                                       ; $7b90: $e7
    ld a, $c3                                     ; $7b91: $3e $c3
    sbc a                                         ; $7b93: $9f
    rst $00                                       ; $7b94: $c7
    ld a, [de]                                    ; $7b95: $1a
    ret nc                                        ; $7b96: $d0

    dec l                                         ; $7b97: $2d
    sub e                                         ; $7b98: $93
    ld d, $44                                     ; $7b99: $16 $44
    bit 7, d                                      ; $7b9b: $cb $7a
    ld d, a                                       ; $7b9d: $57
    ld e, h                                       ; $7b9e: $5c
    cp [hl]                                       ; $7b9f: $be
    db $f4                                        ; $7ba0: $f4
    inc [hl]                                      ; $7ba1: $34
    and b                                         ; $7ba2: $a0
    db $db                                        ; $7ba3: $db
    sbc $3f                                       ; $7ba4: $de $3f
    dec bc                                        ; $7ba6: $0b
    or l                                          ; $7ba7: $b5
    rst $20                                       ; $7ba8: $e7
    dec l                                         ; $7ba9: $2d
    sub h                                         ; $7baa: $94
    ld e, b                                       ; $7bab: $58
    ld b, h                                       ; $7bac: $44
    ld a, l                                       ; $7bad: $7d
    ld [hl], c                                    ; $7bae: $71
    add l                                         ; $7baf: $85
    sbc b                                         ; $7bb0: $98
    rst $00                                       ; $7bb1: $c7
    ld a, [de]                                    ; $7bb2: $1a
    ret c                                         ; $7bb3: $d8

    ld b, h                                       ; $7bb4: $44
    inc b                                         ; $7bb5: $04
    ld h, e                                       ; $7bb6: $63
    rst $08                                       ; $7bb7: $cf

Call_068_7bb8:
    ld a, e                                       ; $7bb8: $7b

Jump_068_7bb9:
    set 5, b                                      ; $7bb9: $cb $e8
    ld a, b                                       ; $7bbb: $78
    cp c                                          ; $7bbc: $b9
    call c, $ed1f                                 ; $7bbd: $dc $1f $ed
    ld [hl], l                                    ; $7bc0: $75
    sub a                                         ; $7bc1: $97
    call Call_068_7acf                            ; $7bc2: $cd $cf $7a
    ld hl, sp+$04                                 ; $7bc5: $f8 $04
    ld c, a                                       ; $7bc7: $4f
    inc hl                                        ; $7bc8: $23
    db $eb                                        ; $7bc9: $eb
    and l                                         ; $7bca: $a5
    inc e                                         ; $7bcb: $1c
    ld h, l                                       ; $7bcc: $65
    dec a                                         ; $7bcd: $3d
    adc h                                         ; $7bce: $8c
    add c                                         ; $7bcf: $81
    dec c                                         ; $7bd0: $0d
    xor b                                         ; $7bd1: $a8
    rla                                           ; $7bd2: $17
    cpl                                           ; $7bd3: $2f
    cp a                                          ; $7bd4: $bf

jr_068_7bd5:
    rra                                           ; $7bd5: $1f
    rst $08                                       ; $7bd6: $cf
    xor b                                         ; $7bd7: $a8
    cp l                                          ; $7bd8: $bd
    inc l                                         ; $7bd9: $2c
    adc c                                         ; $7bda: $89
    ld e, [hl]                                    ; $7bdb: $5e
    adc c                                         ; $7bdc: $89
    ld h, a                                       ; $7bdd: $67
    and c                                         ; $7bde: $a1
    dec sp                                        ; $7bdf: $3b
    sbc [hl]                                      ; $7be0: $9e
    ld h, [hl]                                    ; $7be1: $66
    sbc b                                         ; $7be2: $98
    sbc $1f                                       ; $7be3: $de $1f
    db $ed                                        ; $7be5: $ed
    ld [hl], l                                    ; $7be6: $75
    sbc e                                         ; $7be7: $9b
    ld b, a                                       ; $7be8: $47
    ld a, [$2fa3]                                 ; $7be9: $fa $a3 $2f
    adc a                                         ; $7bec: $8f
    or c                                          ; $7bed: $b1
    add c                                         ; $7bee: $81
    db $dd                                        ; $7bef: $dd
    pop hl                                        ; $7bf0: $e1
    ld e, [hl]                                    ; $7bf1: $5e
    ld b, [hl]                                    ; $7bf2: $46
    inc bc                                        ; $7bf3: $03
    ld a, d                                       ; $7bf4: $7a
    ld e, $5e                                     ; $7bf5: $1e $5e
    ld a, [hl]                                    ; $7bf7: $7e
    db $eb                                        ; $7bf8: $eb
    ld l, c                                       ; $7bf9: $69
    adc a                                         ; $7bfa: $8f
    and d                                         ; $7bfb: $a2
    cp [hl]                                       ; $7bfc: $be
    ret z                                         ; $7bfd: $c8

    sbc a                                         ; $7bfe: $9f
    ld e, $06                                     ; $7bff: $1e $06
    adc d                                         ; $7c01: $8a
    sbc d                                         ; $7c02: $9a
    ld [hl], d                                    ; $7c03: $72
    add sp, -$75                                  ; $7c04: $e8 $8b
    rst $38                                       ; $7c06: $ff
    ld [c], a                                     ; $7c07: $e2
    ld e, [hl]                                    ; $7c08: $5e
    sbc l                                         ; $7c09: $9d
    ld h, h                                       ; $7c0a: $64
    or e                                          ; $7c0b: $b3
    di                                            ; $7c0c: $f3
    or b                                          ; $7c0d: $b0
    sub b                                         ; $7c0e: $90
    add l                                         ; $7c0f: $85
    ld h, b                                       ; $7c10: $60
    ld a, a                                       ; $7c11: $7f
    add hl, de                                    ; $7c12: $19
    dec d                                         ; $7c13: $15
    adc $fd                                       ; $7c14: $ce $fd
    ld bc, $75ed                                  ; $7c16: $01 $ed $75
    sub a                                         ; $7c19: $97
    call $a6cf                                    ; $7c1a: $cd $cf $a6
    ld sp, hl                                     ; $7c1d: $f9
    ld [hl-], a                                   ; $7c1e: $32
    dec de                                        ; $7c1f: $1b
    ld d, b                                       ; $7c20: $50
    rst $28                                       ; $7c21: $ef
    inc l                                         ; $7c22: $2c
    ret nc                                        ; $7c23: $d0

    ld b, [hl]                                    ; $7c24: $46
    sub $4b                                       ; $7c25: $d6 $4b
    add hl, sp                                    ; $7c27: $39
    jp z, Jump_000_187a                           ; $7c28: $ca $7a $18

    inc bc                                        ; $7c2b: $03
    dec de                                        ; $7c2c: $1b
    ld d, b                                       ; $7c2d: $50
    cpl                                           ; $7c2e: $2f
    ld e, [hl]                                    ; $7c2f: $5e
    ld a, [hl]                                    ; $7c30: $7e
    ccf                                           ; $7c31: $3f
    sbc [hl]                                      ; $7c32: $9e
    ld d, c                                       ; $7c33: $51
    ld a, e                                       ; $7c34: $7b
    ld e, c                                       ; $7c35: $59
    ld [de], a                                    ; $7c36: $12
    cp l                                          ; $7c37: $bd
    ld [de], a                                    ; $7c38: $12
    rst $08                                       ; $7c39: $cf
    ld b, d                                       ; $7c3a: $42
    ld [hl], a                                    ; $7c3b: $77
    inc a                                         ; $7c3c: $3c
    call $bd30                                    ; $7c3d: $cd $30 $bd
    ccf                                           ; $7c40: $3f
    db $ed                                        ; $7c41: $ed
    ld [hl], l                                    ; $7c42: $75
    sub a                                         ; $7c43: $97
    call Call_068_72cf                            ; $7c44: $cd $cf $72
    pop hl                                        ; $7c47: $e1
    ld e, $01                                     ; $7c48: $1e $01
    adc l                                         ; $7c4a: $8d
    xor h                                         ; $7c4b: $ac
    sub a                                         ; $7c4c: $97
    ld [hl], d                                    ; $7c4d: $72
    sub h                                         ; $7c4e: $94
    push af                                       ; $7c4f: $f5
    jr nc, jr_068_7c58                            ; $7c50: $30 $06

    ld [hl], $a0                                  ; $7c52: $36 $a0
    ld e, [hl]                                    ; $7c54: $5e
    cp h                                          ; $7c55: $bc
    db $fc                                        ; $7c56: $fc
    ld a, [hl]                                    ; $7c57: $7e

jr_068_7c58:
    inc a                                         ; $7c58: $3c
    and e                                         ; $7c59: $a3
    or $b2                                        ; $7c5a: $f6 $b2
    inc h                                         ; $7c5c: $24
    ld a, d                                       ; $7c5d: $7a
    dec h                                         ; $7c5e: $25
    sbc [hl]                                      ; $7c5f: $9e
    add l                                         ; $7c60: $85
    xor $78                                       ; $7c61: $ee $78
    sbc d                                         ; $7c63: $9a
    ld h, c                                       ; $7c64: $61
    ld a, d                                       ; $7c65: $7a
    ld a, a                                       ; $7c66: $7f
    db $ed                                        ; $7c67: $ed
    ld [hl], l                                    ; $7c68: $75
    sub a                                         ; $7c69: $97
    call $a6cf                                    ; $7c6a: $cd $cf $a6
    db $dd                                        ; $7c6d: $dd
    swap h                                        ; $7c6e: $cb $34
    ld h, e                                       ; $7c70: $63
    inc hl                                        ; $7c71: $23
    db $eb                                        ; $7c72: $eb
    and l                                         ; $7c73: $a5
    inc e                                         ; $7c74: $1c
    ld h, l                                       ; $7c75: $65
    dec a                                         ; $7c76: $3d
    adc h                                         ; $7c77: $8c
    add c                                         ; $7c78: $81
    dec c                                         ; $7c79: $0d
    xor b                                         ; $7c7a: $a8
    rla                                           ; $7c7b: $17
    cpl                                           ; $7c7c: $2f
    cp a                                          ; $7c7d: $bf
    rra                                           ; $7c7e: $1f
    rst $08                                       ; $7c7f: $cf
    xor b                                         ; $7c80: $a8
    cp l                                          ; $7c81: $bd
    inc l                                         ; $7c82: $2c
    adc c                                         ; $7c83: $89
    ld e, [hl]                                    ; $7c84: $5e
    adc c                                         ; $7c85: $89
    ld h, a                                       ; $7c86: $67
    and c                                         ; $7c87: $a1
    dec sp                                        ; $7c88: $3b
    sbc [hl]                                      ; $7c89: $9e
    ld h, [hl]                                    ; $7c8a: $66
    sbc b                                         ; $7c8b: $98
    sbc $1f                                       ; $7c8c: $de $1f
    db $ed                                        ; $7c8e: $ed
    ld [hl], l                                    ; $7c8f: $75
    ld d, a                                       ; $7c90: $57
    call z, $e5cf                                 ; $7c91: $cc $cf $e5
    ld l, c                                       ; $7c94: $69
    ld h, [hl]                                    ; $7c95: $66
    inc bc                                        ; $7c96: $03
    db $eb                                        ; $7c97: $eb
    and l                                         ; $7c98: $a5
    inc e                                         ; $7c99: $1c
    ld h, l                                       ; $7c9a: $65
    dec a                                         ; $7c9b: $3d
    adc h                                         ; $7c9c: $8c
    add c                                         ; $7c9d: $81
    dec c                                         ; $7c9e: $0d
    xor b                                         ; $7c9f: $a8
    rla                                           ; $7ca0: $17
    cpl                                           ; $7ca1: $2f
    cp a                                          ; $7ca2: $bf
    rra                                           ; $7ca3: $1f
    rst $08                                       ; $7ca4: $cf
    xor b                                         ; $7ca5: $a8
    cp l                                          ; $7ca6: $bd
    inc l                                         ; $7ca7: $2c
    adc c                                         ; $7ca8: $89
    ld e, [hl]                                    ; $7ca9: $5e
    adc c                                         ; $7caa: $89
    ld h, a                                       ; $7cab: $67
    and c                                         ; $7cac: $a1
    dec sp                                        ; $7cad: $3b
    sbc [hl]                                      ; $7cae: $9e
    ld h, [hl]                                    ; $7caf: $66
    sbc b                                         ; $7cb0: $98
    sbc $1f                                       ; $7cb1: $de $1f
    db $ed                                        ; $7cb3: $ed
    ld [hl], l                                    ; $7cb4: $75
    sub a                                         ; $7cb5: $97
    call Call_068_7acf                            ; $7cb6: $cd $cf $7a
    sbc b                                         ; $7cb9: $98
    ld h, c                                       ; $7cba: $61
    adc a                                         ; $7cbb: $8f
    adc l                                         ; $7cbc: $8d
    xor h                                         ; $7cbd: $ac
    sub a                                         ; $7cbe: $97
    ld [hl], d                                    ; $7cbf: $72
    sub h                                         ; $7cc0: $94
    push af                                       ; $7cc1: $f5
    jr nc, jr_068_7cca                            ; $7cc2: $30 $06

    ld [hl], $a0                                  ; $7cc4: $36 $a0
    ld e, [hl]                                    ; $7cc6: $5e
    cp h                                          ; $7cc7: $bc
    db $fc                                        ; $7cc8: $fc
    ld a, [hl]                                    ; $7cc9: $7e

jr_068_7cca:
    inc a                                         ; $7cca: $3c
    and e                                         ; $7ccb: $a3
    or $b2                                        ; $7ccc: $f6 $b2
    inc h                                         ; $7cce: $24
    ld a, d                                       ; $7ccf: $7a
    dec h                                         ; $7cd0: $25
    sbc [hl]                                      ; $7cd1: $9e
    add l                                         ; $7cd2: $85
    xor $78                                       ; $7cd3: $ee $78
    sbc d                                         ; $7cd5: $9a
    ld h, c                                       ; $7cd6: $61
    ld a, d                                       ; $7cd7: $7a
    ld a, a                                       ; $7cd8: $7f
    db $ed                                        ; $7cd9: $ed
    ld [hl], l                                    ; $7cda: $75
    rst $20                                       ; $7cdb: $e7
    ld d, c                                       ; $7cdc: $51
    adc [hl]                                      ; $7cdd: $8e
    or d                                          ; $7cde: $b2
    ld e, [hl]                                    ; $7cdf: $5e
    cp h                                          ; $7ce0: $bc
    db $fc                                        ; $7ce1: $fc
    ld a, [hl]                                    ; $7ce2: $7e
    inc a                                         ; $7ce3: $3c
    ld h, e                                       ; $7ce4: $63
    ld a, a                                       ; $7ce5: $7f
    add $3c                                       ; $7ce6: $c6 $3c
    add $fb                                       ; $7ce8: $c6 $fb
    inc bc                                        ; $7cea: $03
    db $ed                                        ; $7ceb: $ed
    ld [hl], l                                    ; $7cec: $75
    sub a                                         ; $7ced: $97
    call $a6cf                                    ; $7cee: $cd $cf $a6
    db $dd                                        ; $7cf1: $dd
    swap h                                        ; $7cf2: $cb $34
    ld h, e                                       ; $7cf4: $63
    db $ed                                        ; $7cf5: $ed
    ld h, l                                       ; $7cf6: $65
    add hl, sp                                    ; $7cf7: $39
    adc l                                         ; $7cf8: $8d
    xor h                                         ; $7cf9: $ac
    sub a                                         ; $7cfa: $97
    ld [hl], d                                    ; $7cfb: $72
    sub h                                         ; $7cfc: $94
    push af                                       ; $7cfd: $f5
    jr nc, jr_068_7d06                            ; $7cfe: $30 $06

    ld [hl], $a0                                  ; $7d00: $36 $a0
    ld e, [hl]                                    ; $7d02: $5e
    cp h                                          ; $7d03: $bc
    db $fc                                        ; $7d04: $fc
    ld a, [hl]                                    ; $7d05: $7e

jr_068_7d06:
    inc a                                         ; $7d06: $3c
    and e                                         ; $7d07: $a3
    or $b2                                        ; $7d08: $f6 $b2
    inc h                                         ; $7d0a: $24
    ld a, d                                       ; $7d0b: $7a
    dec h                                         ; $7d0c: $25
    sbc [hl]                                      ; $7d0d: $9e
    add l                                         ; $7d0e: $85
    xor $78                                       ; $7d0f: $ee $78
    sbc d                                         ; $7d11: $9a
    ld h, c                                       ; $7d12: $61
    ld a, d                                       ; $7d13: $7a
    ld a, a                                       ; $7d14: $7f
    db $ed                                        ; $7d15: $ed
    ld [hl], l                                    ; $7d16: $75
    sub a                                         ; $7d17: $97
    call $aecf                                    ; $7d18: $cd $cf $ae
    sbc $2c                                       ; $7d1b: $de $2c
    inc de                                        ; $7d1d: $13
    ld a, a                                       ; $7d1e: $7f
    inc l                                         ; $7d1f: $2c
    db $d3                                        ; $7d20: $d3
    ret z                                         ; $7d21: $c8

    ld a, d                                       ; $7d22: $7a
    add hl, hl                                    ; $7d23: $29
    ld b, a                                       ; $7d24: $47
    ld e, c                                       ; $7d25: $59
    rrca                                          ; $7d26: $0f
    ld h, e                                       ; $7d27: $63
    ld h, b                                       ; $7d28: $60
    inc bc                                        ; $7d29: $03
    ld [$cbc5], a                                 ; $7d2a: $ea $c5 $cb
    rst $28                                       ; $7d2d: $ef
    rst $00                                       ; $7d2e: $c7
    inc sp                                        ; $7d2f: $33
    ld l, d                                       ; $7d30: $6a
    cpl                                           ; $7d31: $2f
    ld c, e                                       ; $7d32: $4b
    and d                                         ; $7d33: $a2
    ld d, a                                       ; $7d34: $57
    ld [c], a                                     ; $7d35: $e2
    ld e, c                                       ; $7d36: $59
    add sp, -$72                                  ; $7d37: $e8 $8e
    and a                                         ; $7d39: $a7
    add hl, de                                    ; $7d3a: $19
    and [hl]                                      ; $7d3b: $a6
    rst $30                                       ; $7d3c: $f7
    rlca                                          ; $7d3d: $07
    db $ed                                        ; $7d3e: $ed
    ld [hl], l                                    ; $7d3f: $75
    rst $20                                       ; $7d40: $e7
    ld d, c                                       ; $7d41: $51
    adc [hl]                                      ; $7d42: $8e
    ld c, [hl]                                    ; $7d43: $4e
    ld a, l                                       ; $7d44: $7d
    inc l                                         ; $7d45: $2c
    db $d3                                        ; $7d46: $d3

Jump_068_7d47:
    nop                                           ; $7d47: $00
    ld b, l                                       ; $7d48: $45
    ld e, h                                       ; $7d49: $5c
    call Call_068_7ab2                            ; $7d4a: $cd $b2 $7a
    ld [de], a                                    ; $7d4d: $12
    ld sp, $034f                                  ; $7d4e: $31 $4f $03
    cp e                                          ; $7d51: $bb
    inc hl                                        ; $7d52: $23
    cp [hl]                                       ; $7d53: $be
    db $fc                                        ; $7d54: $fc
    daa                                           ; $7d55: $27
    dec de                                        ; $7d56: $1b
    ret nc                                        ; $7d57: $d0

    ld [hl], c                                    ; $7d58: $71
    ld [hl], $f7                                  ; $7d59: $36 $f7
    rlca                                          ; $7d5b: $07
    db $ed                                        ; $7d5c: $ed
    ld [hl], l                                    ; $7d5d: $75
    rst $20                                       ; $7d5e: $e7
    ld [hl+], a                                   ; $7d5f: $22
    xor a                                         ; $7d60: $af
    sub e                                         ; $7d61: $93
    sbc l                                         ; $7d62: $9d
    ld a, [de]                                    ; $7d63: $1a
    cp $b1                                        ; $7d64: $fe $b1
    add b                                         ; $7d66: $80
    add [hl]                                      ; $7d67: $86
    ld l, c                                       ; $7d68: $69
    call c, $c243                                 ; $7d69: $dc $43 $c2
    and [hl]                                      ; $7d6c: $a6
    ld bc, $cf4d                                  ; $7d6d: $01 $4d $cf
    ld [hl-], a                                   ; $7d70: $32
    jp c, Jump_068_5e80                           ; $7d71: $da $80 $5e

    ld [c], a                                     ; $7d74: $e2
    ld e, [hl]                                    ; $7d75: $5e
    ld [$ff2f], sp                                ; $7d76: $08 $2f $ff
    ret                                           ; $7d79: $c9


    ld b, $67                                     ; $7d7a: $06 $67
    adc h                                         ; $7d7c: $8c
    add hl, de                                    ; $7d7d: $19
    ld [hl], l                                    ; $7d7e: $75
    sub d                                         ; $7d7f: $92
    ld e, l                                       ; $7d80: $5d
    rst $20                                       ; $7d81: $e7
    rst $08                                       ; $7d82: $cf
    rst $08                                       ; $7d83: $cf
    ld b, [hl]                                    ; $7d84: $46
    or $82                                        ; $7d85: $f6 $82
    sbc b                                         ; $7d87: $98
    ld e, [hl]                                    ; $7d88: $5e
    sbc b                                         ; $7d89: $98
    ld h, c                                       ; $7d8a: $61
    add $46                                       ; $7d8b: $c6 $46
    ld l, b                                       ; $7d8d: $68
    ld b, [hl]                                    ; $7d8e: $46
    ld [hl], l                                    ; $7d8f: $75
    db $dd                                        ; $7d90: $dd
    rst $28                                       ; $7d91: $ef
    sub [hl]                                      ; $7d92: $96
    cp c                                          ; $7d93: $b9
    ccf                                           ; $7d94: $3f
    db $ed                                        ; $7d95: $ed
    ld [hl], l                                    ; $7d96: $75
    sbc e                                         ; $7d97: $9b
    jp hl                                         ; $7d98: $e9


    cp a                                          ; $7d99: $bf
    inc l                                         ; $7d9a: $2c
    ld l, h                                       ; $7d9b: $6c
    ld h, b                                       ; $7d9c: $60
    rst $30                                       ; $7d9d: $f7
    adc b                                         ; $7d9e: $88
    rst $28                                       ; $7d9f: $ef
    ld h, a                                       ; $7da0: $67
    sub c                                         ; $7da1: $91
    ld [hl], d                                    ; $7da2: $72
    rst $08                                       ; $7da3: $cf
    ld h, a                                       ; $7da4: $67
    inc hl                                        ; $7da5: $23
    rst $38                                       ; $7da6: $ff
    scf                                           ; $7da7: $37
    sub c                                         ; $7da8: $91
    ld c, e                                       ; $7da9: $4b
    ld e, a                                       ; $7daa: $5f
    call z, Call_068_4678                         ; $7dab: $cc $78 $46
    adc c                                         ; $7dae: $89
    sbc b                                         ; $7daf: $98
    ld d, c                                       ; $7db0: $51
    cpl                                           ; $7db1: $2f
    db $e4                                        ; $7db2: $e4
    adc e                                         ; $7db3: $8b
    cpl                                           ; $7db4: $2f
    or d                                          ; $7db5: $b2
    ld bc, $c4bd                                  ; $7db6: $01 $bd $c4
    cp l                                          ; $7db9: $bd
    db $10                                        ; $7dba: $10
    ld e, [hl]                                    ; $7dbb: $5e
    cp $93                                        ; $7dbc: $fe $93
    and d                                         ; $7dbe: $a2
    ld d, d                                       ; $7dbf: $52
    cp e                                          ; $7dc0: $bb
    ld h, l                                       ; $7dc1: $65
    sub [hl]                                      ; $7dc2: $96
    sbc l                                         ; $7dc3: $9d
    ld c, c                                       ; $7dc4: $49
    jr nc, jr_068_7e3b                            ; $7dc5: $30 $74

    dec bc                                        ; $7dc7: $0b
    call $d07f                                    ; $7dc8: $cd $7f $d0
    ei                                            ; $7dcb: $fb
    inc bc                                        ; $7dcc: $03
    db $ed                                        ; $7dcd: $ed
    ld [hl], l                                    ; $7dce: $75
    rst $10                                       ; $7dcf: $d7
    add $f7                                       ; $7dd0: $c6 $f7
    ld c, a                                       ; $7dd2: $4f
    rst $10                                       ; $7dd3: $d7
    call z, $b2f3                                 ; $7dd4: $cc $f3 $b2
    ld c, l                                       ; $7dd7: $4d
    inc bc                                        ; $7dd8: $03
    ld a, d                                       ; $7dd9: $7a
    adc c                                         ; $7dda: $89
    ld a, e                                       ; $7ddb: $7b
    ld hl, $fcbc                                  ; $7ddc: $21 $bc $fc
    daa                                           ; $7ddf: $27
    set 1, d                                      ; $7de0: $cb $ca
    ld sp, $3583                                  ; $7de2: $31 $83 $35
    jr c, jr_068_7e4a                             ; $7de5: $38 $63

    call z, $93a8                                 ; $7de7: $cc $a8 $93
    dec d                                         ; $7dea: $15
    jr nc, @-$15                                  ; $7deb: $30 $e9

    cp c                                          ; $7ded: $b9
    ccf                                           ; $7dee: $3f
    db $ed                                        ; $7def: $ed
    ld [hl], l                                    ; $7df0: $75
    rst $20                                       ; $7df1: $e7
    cp c                                          ; $7df2: $b9
    jr @+$1a                                      ; $7df3: $18 $18

    add $1a                                       ; $7df5: $c6 $1a
    ld e, b                                       ; $7df7: $58
    ld c, b                                       ; $7df8: $48
    rst $18                                       ; $7df9: $df
    and b                                         ; $7dfa: $a0
    ld l, h                                       ; $7dfb: $6c
    ld b, b                                       ; $7dfc: $40
    ld d, a                                       ; $7dfd: $57
    ld d, h                                       ; $7dfe: $54
    dec e                                         ; $7dff: $1d
    ld h, a                                       ; $7e00: $67
    call nc, $f406                                ; $7e01: $d4 $06 $f4
    rra                                           ; $7e04: $1f
    or e                                          ; $7e05: $b3
    rla                                           ; $7e06: $17
    ret c                                         ; $7e07: $d8

    ld l, l                                       ; $7e08: $6d
    ld c, a                                       ; $7e09: $4f
    ld a, d                                       ; $7e0a: $7a
    sbc h                                         ; $7e0b: $9c
    sbc $1f                                       ; $7e0c: $de $1f
    db $ed                                        ; $7e0e: $ed
    ld [hl], l                                    ; $7e0f: $75
    ld [c], a                                     ; $7e10: $e2
    ld a, a                                       ; $7e11: $7f
    halt                                          ; $7e12: $76
    ld e, h                                       ; $7e13: $5c
    cp d                                          ; $7e14: $ba
    add hl, sp                                    ; $7e15: $39
    add hl, bc                                    ; $7e16: $09
    cpl                                           ; $7e17: $2f
    ld a, [de]                                    ; $7e18: $1a
    and [hl]                                      ; $7e19: $a6
    rst $38                                       ; $7e1a: $ff
    sbc b                                         ; $7e1b: $98
    ccf                                           ; $7e1c: $3f
    ld c, l                                       ; $7e1d: $4d
    rst $08                                       ; $7e1e: $cf
    ld a, [bc]                                    ; $7e1f: $0a
    ld d, $19                                     ; $7e20: $16 $19
    inc sp                                        ; $7e22: $33
    ld a, [de]                                    ; $7e23: $1a
    ret nc                                        ; $7e24: $d0

    ld c, e                                       ; $7e25: $4b
    call c, $e10b                                 ; $7e26: $dc $0b $e1
    push hl                                       ; $7e29: $e5
    ccf                                           ; $7e2a: $3f
    reti                                          ; $7e2b: $d9


    ld c, e                                       ; $7e2c: $4b
    ld l, $17                                     ; $7e2d: $2e $17
    ccf                                           ; $7e2f: $3f
    rst $20                                       ; $7e30: $e7
    sbc h                                         ; $7e31: $9c
    adc e                                         ; $7e32: $8b
    inc de                                        ; $7e33: $13
    xor $0f                                       ; $7e34: $ee $0f
    db $ed                                        ; $7e36: $ed
    ld [hl], l                                    ; $7e37: $75
    adc c                                         ; $7e38: $89
    or $24                                        ; $7e39: $f6 $24

jr_068_7e3b:
    sbc [hl]                                      ; $7e3b: $9e
    or c                                          ; $7e3c: $b1
    ld e, $73                                     ; $7e3d: $1e $73
    add d                                         ; $7e3f: $82
    ld e, c                                       ; $7e40: $59
    adc a                                         ; $7e41: $8f
    cp l                                          ; $7e42: $bd
    ld a, h                                       ; $7e43: $7c
    ld b, b                                       ; $7e44: $40
    ld a, h                                       ; $7e45: $7c
    ccf                                           ; $7e46: $3f
    set 2, d                                      ; $7e47: $cb $d2
    inc a                                         ; $7e49: $3c

jr_068_7e4a:
    cpl                                           ; $7e4a: $2f
    dec de                                        ; $7e4b: $1b
    xor l                                         ; $7e4c: $ad
    ld c, [hl]                                    ; $7e4d: $4e
    ld d, [hl]                                    ; $7e4e: $56
    ret nz                                        ; $7e4f: $c0

    and h                                         ; $7e50: $a4
    and a                                         ; $7e51: $a7
    ld bc, $c4bd                                  ; $7e52: $01 $bd $c4
    cp l                                          ; $7e55: $bd
    db $10                                        ; $7e56: $10
    ld e, [hl]                                    ; $7e57: $5e
    cp $93                                        ; $7e58: $fe $93
    rst $30                                       ; $7e5a: $f7
    rlca                                          ; $7e5b: $07
    db $ed                                        ; $7e5c: $ed
    ld [hl], l                                    ; $7e5d: $75
    rst $20                                       ; $7e5e: $e7
    ld [hl+], a                                   ; $7e5f: $22
    xor a                                         ; $7e60: $af
    sub e                                         ; $7e61: $93
    sbc l                                         ; $7e62: $9d
    ld a, [de]                                    ; $7e63: $1a
    cp $b1                                        ; $7e64: $fe $b1
    add b                                         ; $7e66: $80
    ld b, $f6                                     ; $7e67: $06 $f6
    ld a, h                                       ; $7e69: $7c
    inc de                                        ; $7e6a: $13
    ld l, [hl]                                    ; $7e6b: $6e
    inc a                                         ; $7e6c: $3c
    rst $00                                       ; $7e6d: $c7
    sub b                                         ; $7e6e: $90
    add hl, de                                    ; $7e6f: $19
    sub e                                         ; $7e70: $93
    xor h                                         ; $7e71: $ac
    adc a                                         ; $7e72: $8f
    add l                                         ; $7e73: $85
    sub l                                         ; $7e74: $95
    ld a, h                                       ; $7e75: $7c
    ld e, d                                       ; $7e76: $5a
    ld e, e                                       ; $7e77: $5b
    di                                            ; $7e78: $f3
    ld e, a                                       ; $7e79: $5f
    ld h, b                                       ; $7e7a: $60
    ld a, a                                       ; $7e7b: $7f
    ld a, [$19d9]                                 ; $7e7c: $fa $d9 $19
    dec de                                        ; $7e7f: $1b
    ret c                                         ; $7e80: $d8

    dec e                                         ; $7e81: $1d
    pop af                                        ; $7e82: $f1
    push hl                                       ; $7e83: $e5
    ccf                                           ; $7e84: $3f
    ld a, c                                       ; $7e85: $79
    ld e, d                                       ; $7e86: $5a
    or e                                          ; $7e87: $b3
    dec e                                         ; $7e88: $1d
    xor b                                         ; $7e89: $a8
    ld d, l                                       ; $7e8a: $55
    and h                                         ; $7e8b: $a4
    ld e, l                                       ; $7e8c: $5d
    inc c                                         ; $7e8d: $0c
    and e                                         ; $7e8e: $a3
    ld b, l                                       ; $7e8f: $45
    dec h                                         ; $7e90: $25
    sbc $dc                                       ; $7e91: $de $dc
    rra                                           ; $7e93: $1f
    db $ed                                        ; $7e94: $ed
    ld [hl], l                                    ; $7e95: $75
    ld [c], a                                     ; $7e96: $e2
    ld a, a                                       ; $7e97: $7f
    halt                                          ; $7e98: $76
    ld e, h                                       ; $7e99: $5c
    sbc d                                         ; $7e9a: $9a
    ld l, b                                       ; $7e9b: $68
    ret nc                                        ; $7e9c: $d0

    rla                                           ; $7e9d: $17
    db $10                                        ; $7e9e: $10
    inc sp                                        ; $7e9f: $33
    ld a, [de]                                    ; $7ea0: $1a
    ld e, b                                       ; $7ea1: $58
    and h                                         ; $7ea2: $a4
    call c, $d9f3                                 ; $7ea3: $dc $f3 $d9
    add b                                         ; $7ea6: $80
    ld e, [hl]                                    ; $7ea7: $5e
    ld [c], a                                     ; $7ea8: $e2
    ld e, [hl]                                    ; $7ea9: $5e
    ld [$ff2f], sp                                ; $7eaa: $08 $2f $ff
    ret                                           ; $7ead: $c9


    ld h, $c4                                     ; $7eae: $26 $c4
    db $f4                                        ; $7eb0: $f4
    ld a, [c]                                     ; $7eb1: $f2
    inc [hl]                                      ; $7eb2: $34
    reti                                          ; $7eb3: $d9


    di                                            ; $7eb4: $f3
    rst $00                                       ; $7eb5: $c7
    and e                                         ; $7eb6: $a3
    ld a, c                                       ; $7eb7: $79
    ld [hl+], a                                   ; $7eb8: $22
    db $f4                                        ; $7eb9: $f4
    cp $00                                        ; $7eba: $fe $00
    db $ed                                        ; $7ebc: $ed
    ld [hl], l                                    ; $7ebd: $75
    adc c                                         ; $7ebe: $89
    or $24                                        ; $7ebf: $f6 $24
    sbc [hl]                                      ; $7ec1: $9e
    ld c, l                                       ; $7ec2: $4d
    ld a, a                                       ; $7ec3: $7f
    ld a, e                                       ; $7ec4: $7b
    inc c                                         ; $7ec5: $0c
    ld h, e                                       ; $7ec6: $63
    db $fd                                        ; $7ec7: $fd
    daa                                           ; $7ec8: $27
    ld h, $f1                                     ; $7ec9: $26 $f1
    cp a                                          ; $7ecb: $bf
    jr nc, jr_068_7edb                            ; $7ecc: $30 $0d

    db $d3                                        ; $7ece: $d3
    ld [hl], e                                    ; $7ecf: $73
    xor b                                         ; $7ed0: $a8
    ld l, a                                       ; $7ed1: $6f
    ld a, c                                       ; $7ed2: $79
    ld a, [$fdcf]                                 ; $7ed3: $fa $cf $fd
    ld bc, $75ed                                  ; $7ed6: $01 $ed $75
    ld [c], a                                     ; $7ed9: $e2
    dec bc                                        ; $7eda: $0b

jr_068_7edb:
    jp nc, $940c                                  ; $7edb: $d2 $0c $94

    adc b                                         ; $7ede: $88
    add hl, de                                    ; $7edf: $19
    sbc l                                         ; $7ee0: $9d
    xor $11                                       ; $7ee1: $ee $11
    rst $18                                       ; $7ee3: $df
    ccf                                           ; $7ee4: $3f
    push af                                       ; $7ee5: $f5
    ld [c], a                                     ; $7ee6: $e2
    push hl                                       ; $7ee7: $e5
    rst $30                                       ; $7ee8: $f7
    db $e3                                        ; $7ee9: $e3
    reti                                          ; $7eea: $d9


    sub h                                         ; $7eeb: $94
    push af                                       ; $7eec: $f5
    ld l, l                                       ; $7eed: $6d
    add d                                         ; $7eee: $82
    db $db                                        ; $7eef: $db
    push af                                       ; $7ef0: $f5
    xor h                                         ; $7ef1: $ac
    ld c, [hl]                                    ; $7ef2: $4e
    ld [hl], $91                                  ; $7ef3: $36 $91
    reti                                          ; $7ef5: $d9


    ld h, $3a                                     ; $7ef6: $26 $3a
    ld l, l                                       ; $7ef8: $6d
    ld b, b                                       ; $7ef9: $40
    inc sp                                        ; $7efa: $33
    dec h                                         ; $7efb: $25
    ld h, e                                       ; $7efc: $63
    ld [hl], d                                    ; $7efd: $72
    sbc d                                         ; $7efe: $9a
    ld a, [hl]                                    ; $7eff: $7e
    ld l, c                                       ; $7f00: $69
    add $8c                                       ; $7f01: $c6 $8c
    ei                                            ; $7f03: $fb
    inc bc                                        ; $7f04: $03
    db $ed                                        ; $7f05: $ed
    ld [hl], l                                    ; $7f06: $75
    rst $20                                       ; $7f07: $e7
    pop hl                                        ; $7f08: $e1
    push hl                                       ; $7f09: $e5
    rst $30                                       ; $7f0a: $f7
    db $e3                                        ; $7f0b: $e3
    reti                                          ; $7f0c: $d9


    sub h                                         ; $7f0d: $94
    ld c, e                                       ; $7f0e: $4b
    and [hl]                                      ; $7f0f: $a6
    ld b, h                                       ; $7f10: $44
    call z, $fe28                                 ; $7f11: $cc $28 $fe
    ld h, l                                       ; $7f14: $65
    db $dd                                        ; $7f15: $dd
    sbc a                                         ; $7f16: $9f
    rst $18                                       ; $7f17: $df
    ccf                                           ; $7f18: $3f
    push af                                       ; $7f19: $f5
    ld d, d                                       ; $7f1a: $52
    adc [hl]                                      ; $7f1b: $8e
    ld c, [hl]                                    ; $7f1c: $4e
    db $fd                                        ; $7f1d: $fd
    or c                                          ; $7f1e: $b1
    ld a, [hl-]                                   ; $7f1f: $3a
    and l                                         ; $7f20: $a5
    push de                                       ; $7f21: $d5
    ld c, c                                       ; $7f22: $49
    sub [hl]                                      ; $7f23: $96
    adc e                                         ; $7f24: $8b
    ld [hl], a                                    ; $7f25: $77
    call z, $b3f0                                 ; $7f26: $cc $f0 $b3
    xor h                                         ; $7f29: $ac
    sub a                                         ; $7f2a: $97
    cp e                                          ; $7f2b: $bb
    ld h, b                                       ; $7f2c: $60
    dec c                                         ; $7f2d: $0d
    add sp, -$61                                  ; $7f2e: $e8 $9f
    and h                                         ; $7f30: $a4
    cp a                                          ; $7f31: $bf
    adc $dd                                       ; $7f32: $ce $dd
    rra                                           ; $7f34: $1f
    db $ed                                        ; $7f35: $ed
    ld [hl], l                                    ; $7f36: $75
    sbc e                                         ; $7f37: $9b
    db $ed                                        ; $7f38: $ed
    ld sp, $358c                                  ; $7f39: $31 $8c $35
    and b                                         ; $7f3c: $a0
    ccf                                           ; $7f3d: $3f
    ld d, a                                       ; $7f3e: $57
    ld e, h                                       ; $7f3f: $5c
    ld b, [hl]                                    ; $7f40: $46
    cp e                                          ; $7f41: $bb
    ld a, [de]                                    ; $7f42: $1a
    add [hl]                                      ; $7f43: $86
    ld sp, $fde8                                  ; $7f44: $31 $e8 $fd
    ld bc, $75ed                                  ; $7f47: $01 $ed $75
    rst $20                                       ; $7f4a: $e7
    dec de                                        ; $7f4b: $1b
    jp nc, Jump_068_606c                          ; $7f4c: $d2 $6c $60

    add hl, de                                    ; $7f4f: $19
    di                                            ; $7f50: $f3
    ld c, e                                       ; $7f51: $4b
    cp e                                          ; $7f52: $bb
    rla                                           ; $7f53: $17
    jr jr_068_7fc6                                ; $7f54: $18 $70

    rst $30                                       ; $7f56: $f7
    adc d                                         ; $7f57: $8a
    or a                                          ; $7f58: $b7
    ld a, d                                       ; $7f59: $7a
    ld l, h                                       ; $7f5a: $6c
    ld h, h                                       ; $7f5b: $64
    cpl                                           ; $7f5c: $2f
    ld e, b                                       ; $7f5d: $58
    sub d                                         ; $7f5e: $92
    ld l, h                                       ; $7f5f: $6c
    ld b, b                                       ; $7f60: $40
    inc de                                        ; $7f61: $13
    ld a, b                                       ; $7f62: $78
    scf                                           ; $7f63: $37
    ld de, $32f6                                  ; $7f64: $11 $f6 $32
    dec bc                                        ; $7f67: $0b
    reti                                          ; $7f68: $d9


    ld l, h                                       ; $7f69: $6c
    adc h                                         ; $7f6a: $8c
    ld [$931d], a                                 ; $7f6b: $ea $1d $93
    or h                                          ; $7f6e: $b4
    ld c, d                                       ; $7f6f: $4a
    jp c, Jump_068_498b                           ; $7f70: $da $8b $49

    inc a                                         ; $7f73: $3c
    dec de                                        ; $7f74: $1b
    xor l                                         ; $7f75: $ad
    rrca                                          ; $7f76: $0f
    dec bc                                        ; $7f77: $0b
    cpl                                           ; $7f78: $2f
    adc h                                         ; $7f79: $8c
    ld d, $b2                                     ; $7f7a: $16 $b2
    cp $d8                                        ; $7f7c: $fe $d8
    ccf                                           ; $7f7e: $3f
    ld a, d                                       ; $7f7f: $7a
    ld a, a                                       ; $7f80: $7f
    db $ed                                        ; $7f81: $ed
    ld [hl], l                                    ; $7f82: $75
    rst $20                                       ; $7f83: $e7
    ld d, c                                       ; $7f84: $51
    adc [hl]                                      ; $7f85: $8e
    or d                                          ; $7f86: $b2
    cp $58                                        ; $7f87: $fe $58
    dec d                                         ; $7f89: $15
    call $d2b0                                    ; $7f8a: $cd $b0 $d2
    rst $20                                       ; $7f8d: $e7
    inc de                                        ; $7f8e: $13
    inc a                                         ; $7f8f: $3c
    sub c                                         ; $7f90: $91
    ld h, c                                       ; $7f91: $61
    ld [$d58f], a                                 ; $7f92: $ea $8f $d5
    ret                                           ; $7f95: $c9


    ld h, [hl]                                    ; $7f96: $66
    ld a, e                                       ; $7f97: $7b
    ld e, c                                       ; $7f98: $59
    jr c, jr_068_7fe0                             ; $7f99: $38 $45

    dec d                                         ; $7f9b: $15
    call Call_068_66b0                            ; $7f9c: $cd $b0 $66
    ld h, e                                       ; $7f9f: $63
    ld d, h                                       ; $7fa0: $54
    rst $28                                       ; $7fa1: $ef
    sbc b                                         ; $7fa2: $98
    ld h, h                                       ; $7fa3: $64
    sbc b                                         ; $7fa4: $98
    ld b, [hl]                                    ; $7fa5: $46
    daa                                           ; $7fa6: $27
    adc e                                         ; $7fa7: $8b
    db $f4                                        ; $7fa8: $f4
    ld [bc], a                                    ; $7fa9: $02
    rst $28                                       ; $7faa: $ef
    sub e                                         ; $7fab: $93
    rst $30                                       ; $7fac: $f7
    rlca                                          ; $7fad: $07
    db $ed                                        ; $7fae: $ed
    ld [hl], l                                    ; $7faf: $75
    rla                                           ; $7fb0: $17

jr_068_7fb1:
    call nz, Call_068_6215                        ; $7fb1: $c4 $15 $62
    ld e, $63                                     ; $7fb4: $1e $63
    rst $08                                       ; $7fb6: $cf
    dec e                                         ; $7fb7: $1d
    db $ed                                        ; $7fb8: $ed
    ld a, c                                       ; $7fb9: $79
    ld a, b                                       ; $7fba: $78
    ld [bc], a                                    ; $7fbb: $02
    ld c, $86                                     ; $7fbc: $0e $86
    ld [hl], $a0                                  ; $7fbe: $36 $a0
    sub a                                         ; $7fc0: $97
    ld c, l                                       ; $7fc1: $4d
    jr jr_068_7fb1                                ; $7fc2: $18 $ed

    ld l, b                                       ; $7fc4: $68
    ld [hl], a                                    ; $7fc5: $77

jr_068_7fc6:
    ret nc                                        ; $7fc6: $d0

    inc sp                                        ; $7fc7: $33
    ld b, $6d                                     ; $7fc8: $06 $6d
    ld h, b                                       ; $7fca: $60

Jump_068_7fcb:
    rst $08                                       ; $7fcb: $cf
    add c                                         ; $7fcc: $81
    push hl                                       ; $7fcd: $e5
    add a                                         ; $7fce: $87
    sbc [hl]                                      ; $7fcf: $9e
    inc sp                                        ; $7fd0: $33
    add hl, sp                                    ; $7fd1: $39

Jump_068_7fd2:
    rst $18                                       ; $7fd2: $df
    rra                                           ; $7fd3: $1f
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

jr_068_7fe0:
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
