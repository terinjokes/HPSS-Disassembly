; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

    ld l, $fd                                     ; $4000: $2e $fd
    xor l                                         ; $4002: $ad
    ld a, c                                       ; $4003: $79
    ld hl, sp+$29                                 ; $4004: $f8 $29
    add $b5                                       ; $4006: $c6 $b5
    ld [$8fe1], a                                 ; $4008: $ea $e1 $8f
    db $e4                                        ; $400b: $e4
    ld a, [hl-]                                   ; $400c: $3a
    db $e4                                        ; $400d: $e4
    db $eb                                        ; $400e: $eb
    ld hl, sp-$78                                 ; $400f: $f8 $88
    db $e4                                        ; $4011: $e4
    ret                                           ; $4012: $c9


    dec [hl]                                      ; $4013: $35
    rrca                                          ; $4014: $0f
    ld a, h                                       ; $4015: $7c
    add $3c                                       ; $4016: $c6 $3c
    db $f4                                        ; $4018: $f4
    add hl, de                                    ; $4019: $19
    sub c                                         ; $401a: $91
    call c, $1771                                 ; $401b: $dc $71 $17
    ld e, e                                       ; $401e: $5b
    rst $20                                       ; $401f: $e7
    xor a                                         ; $4020: $af
    ld a, d                                       ; $4021: $7a
    ld e, b                                       ; $4022: $58
    sbc e                                         ; $4023: $9b
    ret c                                         ; $4024: $d8

    ld [bc], a                                    ; $4025: $02
    ld b, a                                       ; $4026: $47
    ld [hl+], a                                   ; $4027: $22
    add hl, hl                                    ; $4028: $29
    sub [hl]                                      ; $4029: $96
    ld a, d                                       ; $402a: $7a
    ccf                                           ; $402b: $3f
    ei                                            ; $402c: $fb
    add c                                         ; $402d: $81
    xor a                                         ; $402e: $af
    adc $8e                                       ; $402f: $ce $8e
    dec [hl]                                      ; $4031: $35
    rst $30                                       ; $4032: $f7
    sbc d                                         ; $4033: $9a
    ld a, h                                       ; $4034: $7c
    ld b, a                                       ; $4035: $47
    pop de                                        ; $4036: $d1
    sbc b                                         ; $4037: $98
    rlca                                          ; $4038: $07
    or c                                          ; $4039: $b1
    ld h, e                                       ; $403a: $63
    call Call_000_26bd                            ; $403b: $cd $bd $26
    add hl, sp                                    ; $403e: $39
    adc [hl]                                      ; $403f: $8e
    and h                                         ; $4040: $a4
    sbc b                                         ; $4041: $98
    pop bc                                        ; $4042: $c1
    ld e, h                                       ; $4043: $5c
    call z, Call_02e_5f43                         ; $4044: $cc $43 $5f
    sbc l                                         ; $4047: $9d
    push af                                       ; $4048: $f5
    or a                                          ; $4049: $b7
    and $e1                                       ; $404a: $e6 $e1
    and a                                         ; $404c: $a7
    ld e, b                                       ; $404d: $58
    di                                            ; $404e: $f3
    ret nz                                        ; $404f: $c0

    ld h, a                                       ; $4050: $67
    call z, $1f43                                 ; $4051: $cc $43 $1f
    cp a                                          ; $4054: $bf
    cp c                                          ; $4055: $b9
    ld a, l                                       ; $4056: $7d
    sub $6d                                       ; $4057: $d6 $6d
    push bc                                       ; $4059: $c5
    halt                                          ; $405a: $76
    dec d                                         ; $405b: $15
    adc e                                         ; $405c: $8b
    ld d, b                                       ; $405d: $50
    sbc $02                                       ; $405e: $de $02
    sbc l                                         ; $4060: $9d
    xor $8a                                       ; $4061: $ee $8a
    pop de                                        ; $4063: $d1
    inc bc                                        ; $4064: $03

Jump_02e_4065:
    ld a, [de]                                    ; $4065: $1a
    inc hl                                        ; $4066: $23
    and a                                         ; $4067: $a7
    db $e4                                        ; $4068: $e4
    adc [hl]                                      ; $4069: $8e
    dec [hl]                                      ; $406a: $35
    rst $30                                       ; $406b: $f7
    sbc d                                         ; $406c: $9a
    cp h                                          ; $406d: $bc
    dec b                                         ; $406e: $05
    rst $00                                       ; $406f: $c7
    sbc d                                         ; $4070: $9a
    ld a, e                                       ; $4071: $7b
    ld c, l                                       ; $4072: $4d
    ld [hl], d                                    ; $4073: $72
    inc b                                         ; $4074: $04
    inc hl                                        ; $4075: $23
    dec l                                         ; $4076: $2d
    db $f4                                        ; $4077: $f4
    ld h, e                                       ; $4078: $63
    add hl, hl                                    ; $4079: $29
    call nc, Call_000_3daf                        ; $407a: $d4 $af $3d
    or h                                          ; $407d: $b4
    dec b                                         ; $407e: $05
    sbc l                                         ; $407f: $9d
    ld l, h                                       ; $4080: $6c
    sub l                                         ; $4081: $95
    sub l                                         ; $4082: $95
    dec de                                        ; $4083: $1b
    rst $00                                       ; $4084: $c7
    adc e                                         ; $4085: $8b
    ldh a, [$fd]                                  ; $4086: $f0 $fd
    push bc                                       ; $4088: $c5
    ld e, l                                       ; $4089: $5d
    ld b, c                                       ; $408a: $41
    db $d3                                        ; $408b: $d3
    ld h, a                                       ; $408c: $67
    ld e, [hl]                                    ; $408d: $5e
    cp c                                          ; $408e: $b9
    xor c                                         ; $408f: $a9
    ld [hl], $b1                                  ; $4090: $36 $b1
    dec b                                         ; $4092: $05
    sbc l                                         ; $4093: $9d
    ld h, b                                       ; $4094: $60
    ld e, a                                       ; $4095: $5f
    inc hl                                        ; $4096: $23
    dec l                                         ; $4097: $2d
    db $f4                                        ; $4098: $f4
    ld h, e                                       ; $4099: $63
    adc l                                         ; $409a: $8d
    push bc                                       ; $409b: $c5
    ld d, d                                       ; $409c: $52
    xor b                                         ; $409d: $a8
    sbc a                                         ; $409e: $9f
    call c, $e6b1                                 ; $409f: $dc $b1 $e6
    ld e, [hl]                                    ; $40a2: $5e
    ld d, e                                       ; $40a3: $53
    ld a, e                                       ; $40a4: $7b
    ld l, b                                       ; $40a5: $68
    dec bc                                        ; $40a6: $0b
    ld b, a                                       ; $40a7: $47

jr_02e_40a8:
    or c                                          ; $40a8: $b1
    sub a                                         ; $40a9: $97
    ld b, d                                       ; $40aa: $42
    db $fd                                        ; $40ab: $fd
    db $e4                                        ; $40ac: $e4
    ld [c], a                                     ; $40ad: $e2
    ld h, e                                       ; $40ae: $63
    ld a, [hl-]                                   ; $40af: $3a
    cp c                                          ; $40b0: $b9
    ld hl, sp+$0f                                 ; $40b1: $f8 $0f
    jp nc, $3af9                                  ; $40b3: $d2 $f9 $3a

    ld c, d                                       ; $40b6: $4a
    adc h                                         ; $40b7: $8c
    ld h, d                                       ; $40b8: $62
    push de                                       ; $40b9: $d5
    db $dd                                        ; $40ba: $dd
    sub [hl]                                      ; $40bb: $96
    dec l                                         ; $40bc: $2d
    cp d                                          ; $40bd: $ba
    dec c                                         ; $40be: $0d
    cp [hl]                                       ; $40bf: $be
    ld d, [hl]                                    ; $40c0: $56
    ld e, c                                       ; $40c1: $59
    cp c                                          ; $40c2: $b9
    ld [hl], c                                    ; $40c3: $71
    cp h                                          ; $40c4: $bc
    ld [$5fdf], sp                                ; $40c5: $08 $df $5f
    ld b, $70                                     ; $40c8: $06 $70
    push de                                       ; $40ca: $d5
    db $dd                                        ; $40cb: $dd
    and $fa                                       ; $40cc: $e6 $fa
    inc e                                         ; $40ce: $1c
    ld d, [hl]                                    ; $40cf: $56
    ld e, c                                       ; $40d0: $59
    ld sp, $bcae                                  ; $40d1: $31 $ae $bc
    dec b                                         ; $40d4: $05
    daa                                           ; $40d5: $27
    nop                                           ; $40d6: $00
    ld h, $87                                     ; $40d7: $26 $87
    ld h, l                                       ; $40d9: $65
    xor [hl]                                      ; $40da: $ae
    rst $08                                       ; $40db: $cf
    ld b, a                                       ; $40dc: $47
    rrca                                          ; $40dd: $0f
    ld l, b                                       ; $40de: $68
    ld b, l                                       ; $40df: $45
    xor e                                         ; $40e0: $ab
    sbc $e7                                       ; $40e1: $de $e7
    ld e, d                                       ; $40e3: $5a
    ld h, l                                       ; $40e4: $65
    push bc                                       ; $40e5: $c5
    cp b                                          ; $40e6: $b8
    ld a, [c]                                     ; $40e7: $f2
    xor l                                         ; $40e8: $ad
    db $e3                                        ; $40e9: $e3
    inc bc                                        ; $40ea: $03
    ld e, a                                       ; $40eb: $5f
    push af                                       ; $40ec: $f5
    jr nc, jr_02e_40a8                            ; $40ed: $30 $b9

    db $eb                                        ; $40ef: $eb
    xor [hl]                                      ; $40f0: $ae
    and b                                         ; $40f1: $a0
    dec d                                         ; $40f2: $15
    ret nz                                        ; $40f3: $c0

    dec d                                         ; $40f4: $15
    ld e, e                                       ; $40f5: $5b
    ld h, l                                       ; $40f6: $65
    push hl                                       ; $40f7: $e5
    add $f1                                       ; $40f8: $c6 $f1
    ld [hl+], a                                   ; $40fa: $22
    ld a, h                                       ; $40fb: $7c
    ccf                                           ; $40fc: $3f
    rst $18                                       ; $40fd: $df
    jp hl                                         ; $40fe: $e9


    ld [hl], $e6                                  ; $40ff: $36 $e6
    and c                                         ; $4101: $a1
    xor a                                         ; $4102: $af
    ld l, b                                       ; $4103: $68
    adc l                                         ; $4104: $8d
    cp a                                          ; $4105: $bf
    or h                                          ; $4106: $b4
    ld [hl+], a                                   ; $4107: $22
    inc b                                         ; $4108: $04
    cp [hl]                                       ; $4109: $be
    sub e                                         ; $410a: $93
    ld bc, $55dd                                  ; $410b: $01 $dd $55
    jp z, Jump_02e_460c                           ; $410e: $ca $0c $46

    cp $30                                        ; $4111: $fe $30
    or b                                          ; $4113: $b0
    ld l, [hl]                                    ; $4114: $6e
    and l                                         ; $4115: $a5
    db $dd                                        ; $4116: $dd
    ret z                                         ; $4117: $c8

    ld e, b                                       ; $4118: $58
    jp z, Jump_02e_7597                           ; $4119: $ca $97 $75

    ld d, a                                       ; $411c: $57
    ret nc                                        ; $411d: $d0

    ld a, [bc]                                    ; $411e: $0a
    ldh [$ca], a                                  ; $411f: $e0 $ca
    ld e, l                                       ; $4121: $5d
    sbc l                                         ; $4122: $9d
    dec de                                        ; $4123: $1b
    add hl, sp                                    ; $4124: $39
    ld c, l                                       ; $4125: $4d
    ld a, a                                       ; $4126: $7f
    push bc                                       ; $4127: $c5
    ld d, [hl]                                    ; $4128: $56
    add hl, de                                    ; $4129: $19
    ld h, c                                       ; $412a: $61
    ld e, l                                       ; $412b: $5d
    ld d, a                                       ; $412c: $57
    sbc $02                                       ; $412d: $de $02
    sbc l                                         ; $412f: $9d
    ld h, b                                       ; $4130: $60
    ld e, h                                       ; $4131: $5c
    adc h                                         ; $4132: $8c
    dec de                                        ; $4133: $1b
    add $ac                                       ; $4134: $c6 $ac
    inc d                                         ; $4136: $14
    ld sp, hl                                     ; $4137: $f9
    sbc b                                         ; $4138: $98
    add a                                         ; $4139: $87
    cp [hl]                                       ; $413a: $be
    and d                                         ; $413b: $a2
    dec [hl]                                      ; $413c: $35
    cp $d2                                        ; $413d: $fe $d2
    adc d                                         ; $413f: $8a
    db $10                                        ; $4140: $10
    ld hl, sp+$4e                                 ; $4141: $f8 $4e

jr_02e_4143:
    ld b, $74                                     ; $4143: $06 $74
    ld d, a                                       ; $4145: $57
    add hl, hl                                    ; $4146: $29
    inc sp                                        ; $4147: $33
    jr jr_02e_4143                                ; $4148: $18 $f9

    jp $bac0                                      ; $414a: $c3 $c0 $ba


    sub l                                         ; $414d: $95
    halt                                          ; $414e: $76
    inc hl                                        ; $414f: $23
    ld h, e                                       ; $4150: $63
    add hl, hl                                    ; $4151: $29
    ld e, a                                       ; $4152: $5f
    sub $5d                                       ; $4153: $d6 $5d
    ld b, c                                       ; $4155: $41
    dec hl                                        ; $4156: $2b
    add b                                         ; $4157: $80
    dec hl                                        ; $4158: $2b
    ld [hl], a                                    ; $4159: $77
    ld [hl], l                                    ; $415a: $75
    ld l, [hl]                                    ; $415b: $6e
    db $e4                                        ; $415c: $e4

Jump_02e_415d:
    inc [hl]                                      ; $415d: $34
    db $fd                                        ; $415e: $fd
    dec d                                         ; $415f: $15
    ld e, e                                       ; $4160: $5b
    ld h, l                                       ; $4161: $65
    add h                                         ; $4162: $84
    ld [hl], l                                    ; $4163: $75
    ld e, l                                       ; $4164: $5d
    ld a, c                                       ; $4165: $79
    dec bc                                        ; $4166: $0b
    push af                                       ; $4167: $f5
    rst $28                                       ; $4168: $ef
    add [hl]                                      ; $4169: $86
    or e                                          ; $416a: $b3
    ld [$ba0c], sp                                ; $416b: $08 $0c $ba
    call $d760                                    ; $416e: $cd $60 $d7
    inc bc                                        ; $4171: $03
    adc a                                         ; $4172: $8f
    pop af                                        ; $4173: $f1
    cp e                                          ; $4174: $bb
    cp $c5                                        ; $4175: $fe $c5
    or [hl]                                       ; $4177: $b6
    ld c, a                                       ; $4178: $4f
    xor d                                         ; $4179: $aa
    db $f4                                        ; $417a: $f4
    add hl, hl                                    ; $417b: $29
    add $ed                                       ; $417c: $c6 $ed
    rst $00                                       ; $417e: $c7
    ld a, [hl+]                                   ; $417f: $2a
    ld e, e                                       ; $4180: $5b
    or [hl]                                       ; $4181: $b6
    ldh [$2b], a                                  ; $4182: $e0 $2b
    ld b, d                                       ; $4184: $42
    ret                                           ; $4185: $c9


    ld d, l                                       ; $4186: $55
    add [hl]                                      ; $4187: $86
    or c                                          ; $4188: $b1
    ld c, e                                       ; $4189: $4b
    ei                                            ; $418a: $fb
    rst $30                                       ; $418b: $f7
    dec de                                        ; $418c: $1b
    add hl, de                                    ; $418d: $19
    jp nc, $8b1a                                  ; $418e: $d2 $1a $8b

    ld e, l                                       ; $4191: $5d
    xor a                                         ; $4192: $af
    xor d                                         ; $4193: $aa
    or h                                          ; $4194: $b4
    ld e, $2d                                     ; $4195: $1e $2d
    ld l, a                                       ; $4197: $6f
    ld bc, $6c1d                                  ; $4198: $01 $1d $6c
    ld d, l                                       ; $419b: $55
    ld e, l                                       ; $419c: $5d
    rst $10                                       ; $419d: $d7
    ld a, [hl+]                                   ; $419e: $2a
    adc l                                         ; $419f: $8d
    inc hl                                        ; $41a0: $23
    dec l                                         ; $41a1: $2d
    inc bc                                        ; $41a2: $03
    ld e, d                                       ; $41a3: $5a
    or [hl]                                       ; $41a4: $b6
    ld d, $80                                     ; $41a5: $16 $80
    ld sp, $d3f8                                  ; $41a7: $31 $f8 $d3
    cp a                                          ; $41aa: $bf
    ret c                                         ; $41ab: $d8

    or $49                                        ; $41ac: $f6 $49
    sub l                                         ; $41ae: $95
    ld a, $25                                     ; $41af: $3e $25
    ld d, a                                       ; $41b1: $57
    add hl, de                                    ; $41b2: $19
    add $b2                                       ; $41b3: $c6 $b2
    or l                                          ; $41b5: $b5
    rr a                                          ; $41b6: $cb $1f
    add $32                                       ; $41b8: $c6 $32
    and b                                         ; $41ba: $a0
    push af                                       ; $41bb: $f5
    ld l, b                                       ; $41bc: $68
    ei                                            ; $41bd: $fb
    ld e, d                                       ; $41be: $5a
    ld b, b                                       ; $41bf: $40
    ld a, [hl-]                                   ; $41c0: $3a
    adc l                                         ; $41c1: $8d
    or h                                          ; $41c2: $b4
    add $62                                       ; $41c3: $c6 $62
    call $df03                                    ; $41c5: $cd $03 $df
    and l                                         ; $41c8: $a5
    ld e, l                                       ; $41c9: $5d
    rrca                                          ; $41ca: $0f
    inc a                                         ; $41cb: $3c
    ld a, [c]                                     ; $41cc: $f2
    ld d, $f5                                     ; $41cd: $16 $f5
    dec [hl]                                      ; $41cf: $35
    and $61                                       ; $41d0: $e6 $61
    inc l                                         ; $41d2: $2c
    inc bc                                        ; $41d3: $03
    ld a, [de]                                    ; $41d4: $1a
    pop bc                                        ; $41d5: $c1
    cp $dd                                        ; $41d6: $fe $dd
    ld h, d                                       ; $41d8: $62
    adc l                                         ; $41d9: $8d
    push bc                                       ; $41da: $c5
    add b                                         ; $41db: $80
    or b                                          ; $41dc: $b0
    ld h, b                                       ; $41dd: $60
    call c, $b456                                 ; $41de: $dc $56 $b4
    add d                                         ; $41e1: $82
    adc h                                         ; $41e2: $8c
    ld l, e                                       ; $41e3: $6b
    call Call_02e_5f03                            ; $41e4: $cd $03 $5f
    ld b, b                                       ; $41e7: $40
    db $d3                                        ; $41e8: $d3
    jr c, jr_02e_4241                             ; $41e9: $38 $56

    ld a, [c]                                     ; $41eb: $f2
    dec d                                         ; $41ec: $15
    ld e, e                                       ; $41ed: $5b
    ld h, l                                       ; $41ee: $65
    push hl                                       ; $41ef: $e5
    add $f1                                       ; $41f0: $c6 $f1
    ld [hl+], a                                   ; $41f2: $22
    ld a, h                                       ; $41f3: $7c
    ccf                                           ; $41f4: $3f
    rst $18                                       ; $41f5: $df
    ld [$8c6b], a                                 ; $41f6: $ea $6b $8c
    ld h, c                                       ; $41f9: $61
    xor h                                         ; $41fa: $ac
    ld l, b                                       ; $41fb: $68
    ld l, c                                       ; $41fc: $69
    ld b, e                                       ; $41fd: $43
    rst $10                                       ; $41fe: $d7
    sbc d                                         ; $41ff: $9a
    rlca                                          ; $4200: $07
    ld a, $7a                                     ; $4201: $3e $7a
    sbc b                                         ; $4203: $98
    or a                                          ; $4204: $b7
    daa                                           ; $4205: $27
    cp [hl]                                       ; $4206: $be
    sbc a                                         ; $4207: $9f
    sbc h                                         ; $4208: $9c
    ld l, b                                       ; $4209: $68
    inc b                                         ; $420a: $04
    ld d, e                                       ; $420b: $53
    xor h                                         ; $420c: $ac
    ld [hl], c                                    ; $420d: $71
    cp h                                          ; $420e: $bc
    adc l                                         ; $420f: $8d
    ld l, e                                       ; $4210: $6b
    ld e, a                                       ; $4211: $5f
    ld l, e                                       ; $4212: $6b
    inc l                                         ; $4213: $2c
    ld d, [hl]                                    ; $4214: $56
    ld l, h                                       ; $4215: $6c
    ld l, [hl]                                    ; $4216: $6e
    sub l                                         ; $4217: $95
    cp [hl]                                       ; $4218: $be
    ld a, h                                       ; $4219: $7c
    ld [hl], l                                    ; $421a: $75
    halt                                          ; $421b: $76
    adc h                                         ; $421c: $8c
    rst $10                                       ; $421d: $d7
    and h                                         ; $421e: $a4
    db $d3                                        ; $421f: $d3
    rst $28                                       ; $4220: $ef
    di                                            ; $4221: $f3
    rst $20                                       ; $4222: $e7
    inc sp                                        ; $4223: $33
    ld b, [hl]                                    ; $4224: $46
    rst $10                                       ; $4225: $d7
    add sp, $61                                   ; $4226: $e8 $61
    sbc $02                                       ; $4228: $de $02
    ld e, c                                       ; $422a: $59
    ld [hl+], a                                   ; $422b: $22
    jp nc, $a032                                  ; $422c: $d2 $32 $a0

    jr nz, jr_02e_42ad                            ; $422f: $20 $7c

    ccf                                           ; $4231: $3f
    add hl, sp                                    ; $4232: $39
    inc l                                         ; $4233: $2c
    ld c, e                                       ; $4234: $4b
    dec de                                        ; $4235: $1b
    ret nc                                        ; $4236: $d0

    adc d                                         ; $4237: $8a
    xor l                                         ; $4238: $ad
    ld a, c                                       ; $4239: $79
    ld hl, $9d5f                                  ; $423a: $21 $5f $9d
    pop bc                                        ; $423d: $c1
    ld e, a                                       ; $423e: $5f
    db $e3                                        ; $423f: $e3
    cpl                                           ; $4240: $2f

jr_02e_4241:
    xor l                                         ; $4241: $ad
    ld [$e781], sp                                ; $4242: $08 $81 $e7
    dec l                                         ; $4245: $2d
    rst $00                                       ; $4246: $c7
    sub l                                         ; $4247: $95
    and l                                         ; $4248: $a5
    dec c                                         ; $4249: $0d
    ld l, b                                       ; $424a: $68
    push hl                                       ; $424b: $e5
    xor [hl]                                      ; $424c: $ae
    adc $cd                                       ; $424d: $ce $cd
    dec bc                                        ; $424f: $0b
    ld sp, hl                                     ; $4250: $f9
    ld [$d8ac], a                                 ; $4251: $ea $ac $d8
    sbc d                                         ; $4254: $9a
    ld [hl+], a                                   ; $4255: $22
    db $fc                                        ; $4256: $fc
    ld e, d                                       ; $4257: $5a

jr_02e_4258:
    add c                                         ; $4258: $81
    xor a                                         ; $4259: $af
    ld a, h                                       ; $425a: $7c
    add a                                         ; $425b: $87
    or e                                          ; $425c: $b3
    rst $30                                       ; $425d: $f7
    rst $18                                       ; $425e: $df
    ld c, a                                       ; $425f: $4f
    xor [hl]                                      ; $4260: $ae
    ld b, a                                       ; $4261: $47
    db $db                                        ; $4262: $db
    ld [hl], l                                    ; $4263: $75
    ld d, a                                       ; $4264: $57
    ret nc                                        ; $4265: $d0

    sbc d                                         ; $4266: $9a
    rlca                                          ; $4267: $07
    ld a, $fd                                     ; $4268: $3e $fd
    ld [hl+], a                                   ; $426a: $22
    ld b, [hl]                                    ; $426b: $46
    cp [hl]                                       ; $426c: $be
    and d                                         ; $426d: $a2
    jr jr_02e_4293                                ; $426e: $18 $23

    ld [hl], a                                    ; $4270: $77
    ld d, b                                       ; $4271: $50
    db $e4                                        ; $4272: $e4
    dec l                                         ; $4273: $2d
    ld b, a                                       ; $4274: $47
    sbc $e2                                       ; $4275: $de $e2
    sub l                                         ; $4277: $95
    ld e, e                                       ; $4278: $5b
    ld [hl], d                                    ; $4279: $72
    reti                                          ; $427a: $d9


    ld [hl], a                                    ; $427b: $77
    db $fd                                        ; $427c: $fd
    add l                                         ; $427d: $85
    ld h, c                                       ; $427e: $61
    call z, Call_000_3f51                         ; $427f: $cc $51 $3f
    ld l, a                                       ; $4282: $6f
    ld bc, $c387                                  ; $4283: $01 $87 $c3
    dec b                                         ; $4286: $05
    ld e, a                                       ; $4287: $5f
    ld b, e                                       ; $4288: $43
    ld a, [hl]                                    ; $4289: $7e
    ld d, e                                       ; $428a: $53
    sbc $02                                       ; $428b: $de $02
    sbc l                                         ; $428d: $9d
    xor $16                                       ; $428e: $ee $16
    ld d, e                                       ; $4290: $53
    add h                                         ; $4291: $84
    push de                                       ; $4292: $d5

jr_02e_4293:
    call c, $8c66                                 ; $4293: $dc $66 $8c
    xor [hl]                                      ; $4296: $ae
    ld [hl], c                                    ; $4297: $71
    xor l                                         ; $4298: $ad
    call c, Call_000_3065                         ; $4299: $dc $65 $30
    pop de                                        ; $429c: $d1
    jr c, jr_02e_42cb                             ; $429d: $38 $2c

    adc h                                         ; $429f: $8c
    ld a, c                                       ; $42a0: $79
    cp a                                          ; $42a1: $bf
    or $d0                                        ; $42a2: $f6 $d0
    ld d, $27                                     ; $42a4: $16 $27
    cp [hl]                                       ; $42a6: $be
    sbc a                                         ; $42a7: $9f
    ld e, h                                       ; $42a8: $5c
    ld h, l                                       ; $42a9: $65
    jr jr_02e_42cf                                ; $42aa: $18 $23

    ld e, b                                       ; $42ac: $58

jr_02e_42ad:
    di                                            ; $42ad: $f3
    ret nz                                        ; $42ae: $c0

    db $dd                                        ; $42af: $dd
    jr nc, jr_02e_4258                            ; $42b0: $30 $a6

    ld [$91ab], sp                                ; $42b2: $08 $ab $91
    adc a                                         ; $42b5: $8f
    ld l, e                                       ; $42b6: $6b
    ld [hl], h                                    ; $42b7: $74
    ld h, a                                       ; $42b8: $67
    ld e, e                                       ; $42b9: $5b
    ld a, [bc]                                    ; $42ba: $0a
    add hl, bc                                    ; $42bb: $09
    db $e4                                        ; $42bc: $e4
    ld a, c                                       ; $42bd: $79
    dec bc                                        ; $42be: $0b
    push af                                       ; $42bf: $f5
    or l                                          ; $42c0: $b5
    xor a                                         ; $42c1: $af
    add l                                         ; $42c2: $85
    ld h, c                                       ; $42c3: $61
    xor h                                         ; $42c4: $ac
    ld [$d2ba], a                                 ; $42c5: $ea $ba $d2
    ld a, [de]                                    ; $42c8: $1a
    adc e                                         ; $42c9: $8b
    dec b                                         ; $42ca: $05

jr_02e_42cb:
    inc [hl]                                      ; $42cb: $34
    adc l                                         ; $42cc: $8d
    ld h, e                                       ; $42cd: $63
    dec h                                         ; $42ce: $25

jr_02e_42cf:
    rra                                           ; $42cf: $1f
    ld a, h                                       ; $42d0: $7c
    adc l                                         ; $42d1: $8d
    db $ec                                        ; $42d2: $ec
    ld h, d                                       ; $42d3: $62
    ld l, e                                       ; $42d4: $6b
    ld e, h                                       ; $42d5: $5c
    cp e                                          ; $42d6: $bb
    sbc $4f                                       ; $42d7: $de $4f
    inc hl                                        ; $42d9: $23
    add c                                         ; $42da: $81
    dec hl                                        ; $42db: $2b
    ld l, a                                       ; $42dc: $6f
    ld bc, $0847                                  ; $42dd: $01 $47 $08
    add b                                         ; $42e0: $80
    sbc l                                         ; $42e1: $9d
    rst $28                                       ; $42e2: $ef
    ld d, h                                       ; $42e3: $54
    inc e                                         ; $42e4: $1c
    pop bc                                        ; $42e5: $c1
    inc l                                         ; $42e6: $2c
    and $ea                                       ; $42e7: $e6 $ea
    ld de, $7f06                                  ; $42e9: $11 $06 $7f
    pop af                                        ; $42ec: $f1
    sbc h                                         ; $42ed: $9c
    sub d                                         ; $42ee: $92
    cp e                                          ; $42ef: $bb
    sub l                                         ; $42f0: $95
    add a                                         ; $42f1: $87
    xor h                                         ; $42f2: $ac

jr_02e_42f3:
    xor a                                         ; $42f3: $af
    ld a, d                                       ; $42f4: $7a
    db $f4                                        ; $42f5: $f4
    ld [hl], b                                    ; $42f6: $70
    ld e, h                                       ; $42f7: $5c
    xor e                                         ; $42f8: $ab
    ld e, $d6                                     ; $42f9: $1e $d6
    ld h, $b6                                     ; $42fb: $26 $b6
    ld b, a                                       ; $42fd: $47
    ld b, l                                       ; $42fe: $45
    jr jr_02e_436b                                ; $42ff: $18 $6a

    ld e, h                                       ; $4301: $5c
    ld c, e                                       ; $4302: $4b
    and c                                         ; $4303: $a1
    cp $d2                                        ; $4304: $fe $d2
    cp $88                                        ; $4306: $fe $88
    db $e4                                        ; $4308: $e4
    ld a, c                                       ; $4309: $79
    dec bc                                        ; $430a: $0b
    dec e                                         ; $430b: $1d
    ld e, $26                                     ; $430c: $1e $26
    ld d, a                                       ; $430e: $57
    inc d                                         ; $430f: $14
    xor e                                         ; $4310: $ab
    xor h                                         ; $4311: $ac
    call c, Call_02e_5e38                         ; $4312: $dc $38 $5e
    add h                                         ; $4315: $84
    rst $28                                       ; $4316: $ef
    rst $00                                       ; $4317: $c7

Call_02e_4318:
    or d                                          ; $4318: $b2

jr_02e_4319:
    or l                                          ; $4319: $b5
    and d                                         ; $431a: $a2
    ret c                                         ; $431b: $d8

    adc l                                         ; $431c: $8d
    ld b, c                                       ; $431d: $41
    ld d, d                                       ; $431e: $52
    sbc $02                                       ; $431f: $de $02
    daa                                           ; $4321: $27
    cp [hl]                                       ; $4322: $be
    sbc a                                         ; $4323: $9f
    ld e, h                                       ; $4324: $5c
    ld h, l                                       ; $4325: $65
    jr jr_02e_42f3                                ; $4326: $18 $cb

jr_02e_4328:
    sub $1a                                       ; $4328: $d6 $1a
    ld [hl], e                                    ; $432a: $73
    call nc, Call_02e_7032                        ; $432b: $d4 $32 $70
    rst $00                                       ; $432e: $c7
    or d                                          ; $432f: $b2
    sbc d                                         ; $4330: $9a
    reti                                          ; $4331: $d9


    ldh [$af], a                                  ; $4332: $e0 $af
    jr nz, jr_02e_4319                            ; $4334: $20 $e3

    jp c, Jump_02e_7eeb                           ; $4336: $da $eb $7e

    rst $28                                       ; $4339: $ef
    adc a                                         ; $433a: $8f
    or h                                          ; $433b: $b4
    ld [hl], d                                    ; $433c: $72
    ld d, a                                       ; $433d: $57
    rst $20                                       ; $433e: $e7
    and [hl]                                      ; $433f: $a6
    ld h, b                                       ; $4340: $60
    ld b, $94                                     ; $4341: $06 $94
    or a                                          ; $4343: $b7
    sbc l                                         ; $4344: $9d
    ld h, b                                       ; $4345: $60
    ld d, $73                                     ; $4346: $16 $73
    push af                                       ; $4348: $f5
    ld [$af83], sp                                ; $4349: $08 $83 $af
    ld d, l                                       ; $434c: $55
    ld d, [hl]                                    ; $434d: $56
    ld l, [hl]                                    ; $434e: $6e
    inc e                                         ; $434f: $1c
    cpl                                           ; $4350: $2f
    jp nz, Jump_02e_6bf7                          ; $4351: $c2 $f7 $6b

    rrca                                          ; $4354: $0f
    ld e, l                                       ; $4355: $5d
    sub $7b                                       ; $4356: $d6 $7b
    and l                                         ; $4358: $a5
    ld [hl], $71                                  ; $4359: $36 $71
    push af                                       ; $435b: $f5
    rst $28                                       ; $435c: $ef
    add [hl]                                      ; $435d: $86
    sub l                                         ; $435e: $95
    call c, $9630                                 ; $435f: $dc $30 $96
    ld b, d                                       ; $4362: $42
    db $fd                                        ; $4363: $fd
    jp hl                                         ; $4364: $e9


    rst $08                                       ; $4365: $cf
    sbc b                                         ; $4366: $98
    add a                                         ; $4367: $87
    ld a, $f8                                     ; $4368: $3e $f8
    xor d                                         ; $436a: $aa

jr_02e_436b:
    ld c, l                                       ; $436b: $4d
    ld l, h                                       ; $436c: $6c
    ld bc, $b5f5                                  ; $436d: $01 $f5 $b5
    ld a, a                                       ; $4370: $7f
    scf                                           ; $4371: $37
    ld e, h                                       ; $4372: $5c
    ld h, e                                       ; $4373: $63
    ld sp, $ebfd                                  ; $4374: $31 $fd $eb
    cp c                                          ; $4377: $b9
    ld h, [hl]                                    ; $4378: $66
    ld c, l                                       ; $4379: $4d
    db $e3                                        ; $437a: $e3
    jr jr_02e_4328                                ; $437b: $18 $ab

    or e                                          ; $437d: $b3
    and d                                         ; $437e: $a2
    and l                                         ; $437f: $a5
    dec c                                         ; $4380: $0d
    ld e, l                                       ; $4381: $5d
    ld a, c                                       ; $4382: $79
    dec bc                                        ; $4383: $0b
    dec e                                         ; $4384: $1d
    sbc $1f                                       ; $4385: $de $1f
    cp l                                          ; $4387: $bd
    ld c, a                                       ; $4388: $4f

jr_02e_4389:
    rst $28                                       ; $4389: $ef
    ld c, a                                       ; $438a: $4f
    ld a, a                                       ; $438b: $7f
    ld [hl], $57                                  ; $438c: $36 $57
    adc a                                         ; $438e: $8f
    jr nc, jr_02e_4389                            ; $438f: $30 $f8

    jp z, Jump_02e_5c77                           ; $4391: $ca $77 $5c

    reti                                          ; $4394: $d9


    cp a                                          ; $4395: $bf
    db $db                                        ; $4396: $db
    or d                                          ; $4397: $b2
    xor l                                         ; $4398: $ad
    ld [hl-], a                                   ; $4399: $32
    adc h                                         ; $439a: $8c
    dec [hl]                                      ; $439b: $35
    or b                                          ; $439c: $b0
    cp b                                          ; $439d: $b8
    db $eb                                        ; $439e: $eb
    adc a                                         ; $439f: $8f
    rst $18                                       ; $43a0: $df
    ld d, d                                       ; $43a1: $52
    and $6e                                       ; $43a2: $e6 $6e
    ld de, $bcf2                                  ; $43a4: $11 $f2 $bc
    dec b                                         ; $43a7: $05
    push af                                       ; $43a8: $f5
    rst $28                                       ; $43a9: $ef
    dec [hl]                                      ; $43aa: $35
    cp e                                          ; $43ab: $bb
    sbc $ff                                       ; $43ac: $de $ff
    add [hl]                                      ; $43ae: $86
    ld sp, $fd47                                  ; $43af: $31 $47 $fd
    jp hl                                         ; $43b2: $e9


    xor a                                         ; $43b3: $af
    or d                                          ; $43b4: $b2
    ld [hl], d                                    ; $43b5: $72
    db $e3                                        ; $43b6: $e3
    ld a, b                                       ; $43b7: $78
    ld de, $1fbe                                  ; $43b8: $11 $be $1f
    ld a, c                                       ; $43bb: $79
    dec bc                                        ; $43bc: $0b
    daa                                           ; $43bd: $27
    ld l, b                                       ; $43be: $68
    adc l                                         ; $43bf: $8d
    cp a                                          ; $43c0: $bf
    or h                                          ; $43c1: $b4
    ld [hl+], a                                   ; $43c2: $22
    inc b                                         ; $43c3: $04
    cp [hl]                                       ; $43c4: $be
    sub e                                         ; $43c5: $93
    ld bc, $55dd                                  ; $43c6: $01 $dd $55
    jp z, $168a                                   ; $43c9: $ca $8a $16

    add [hl]                                      ; $43cc: $86
    or h                                          ; $43cd: $b4
    add sp, -$3f                                  ; $43ce: $e8 $c1
    ld d, l                                       ; $43d0: $55
    jp hl                                         ; $43d1: $e9


    ld d, e                                       ; $43d2: $53
    sbc $02                                       ; $43d3: $de $02
    sbc l                                         ; $43d5: $9d
    ld e, $26                                     ; $43d6: $1e $26
    ld b, a                                       ; $43d8: $47
    or b                                          ; $43d9: $b0
    rst $38                                       ; $43da: $ff
    jr nz, jr_02e_4453                            ; $43db: $20 $76

    ei                                            ; $43dd: $fb
    ld [hl], d                                    ; $43de: $72
    ld b, [hl]                                    ; $43df: $46
    ld sp, $7463                                  ; $43e0: $31 $63 $74
    adc l                                         ; $43e3: $8d
    ld l, h                                       ; $43e4: $6c
    sub l                                         ; $43e5: $95
    sub l                                         ; $43e6: $95
    dec de                                        ; $43e7: $1b
    rst $00                                       ; $43e8: $c7
    adc e                                         ; $43e9: $8b
    ldh a, [$fd]                                  ; $43ea: $f0 $fd
    jp c, $16c4                                   ; $43ec: $da $c4 $16

    dec e                                         ; $43ef: $1d
    dec l                                         ; $43f0: $2d
    ld d, [hl]                                    ; $43f1: $56
    ld l, h                                       ; $43f2: $6c
    push de                                       ; $43f3: $d5
    jp Jump_02e_5dcf                              ; $43f4: $c3 $cf $5d


    ld b, e                                       ; $43f7: $43
    ld a, [hl]                                    ; $43f8: $7e
    ld d, e                                       ; $43f9: $53
    sbc $02                                       ; $43fa: $de $02
    daa                                           ; $43fc: $27
    db $fd                                        ; $43fd: $fd
    dec [hl]                                      ; $43fe: $35
    ld [bc], a                                    ; $43ff: $02
    ld e, d                                       ; $4400: $5a
    ld d, c                                       ; $4401: $51
    inc l                                         ; $4402: $2c
    and b                                         ; $4403: $a0
    ld l, c                                       ; $4404: $69
    inc e                                         ; $4405: $1c
    dec hl                                        ; $4406: $2b
    ld a, c                                       ; $4407: $79
    db $ed                                        ; $4408: $ed
    and c                                         ; $4409: $a1
    db $eb                                        ; $440a: $eb
    db $e4                                        ; $440b: $e4
    ld [hl], l                                    ; $440c: $75
    ld h, e                                       ; $440d: $63
    ld hl, sp-$17                                 ; $440e: $f8 $e9
    and $8a                                       ; $4410: $e6 $8a
    or b                                          ; $4412: $b0
    ld c, a                                       ; $4413: $4f
    ld a, c                                       ; $4414: $79
    dec bc                                        ; $4415: $0b
    and a                                         ; $4416: $a7
    db $db                                        ; $4417: $db
    sbc b                                         ; $4418: $98
    add a                                         ; $4419: $87
    ld a, $6e                                     ; $441a: $3e $6e
    ccf                                           ; $441c: $3f
    ld d, [hl]                                    ; $441d: $56
    ld l, h                                       ; $441e: $6c
    add hl, hl                                    ; $441f: $29
    ld c, h                                       ; $4420: $4c
    dec d                                         ; $4421: $15
    ld a, h                                       ; $4422: $7c
    call nz, $9bae                                ; $4423: $c4 $ae $9b
    ld bc, $3be5                                  ; $4426: $01 $e5 $3b
    xor [hl]                                      ; $4429: $ae
    xor h                                         ; $442a: $ac
    ld h, [hl]                                    ; $442b: $66
    ld [hl], $ae                                  ; $442c: $36 $ae
    ld e, b                                       ; $442e: $58
    ld b, c                                       ; $442f: $41
    add $15                                       ; $4430: $c6 $15
    dec bc                                        ; $4432: $0b
    ldh a, [$d1]                                  ; $4433: $f0 $d1
    inc bc                                        ; $4435: $03
    jp z, $9d5b                                   ; $4436: $ca $5b $9d

    ld h, b                                       ; $4439: $60
    call Call_02e_7703                            ; $443a: $cd $03 $77
    jp $d158                                      ; $443d: $c3 $58 $d1


    jp nc, $ae86                                  ; $4440: $d2 $86 $ae

    pop de                                        ; $4443: $d1
    jp $557a                                      ; $4444: $c3 $7a $55


    rst $10                                       ; $4447: $d7
    sub l                                         ; $4448: $95
    sub d                                         ; $4449: $92
    ld l, e                                       ; $444a: $6b
    ld e, $f8                                     ; $444b: $1e $f8
    add sp, -$52                                  ; $444d: $e8 $ae
    ld c, a                                       ; $444f: $4f
    ld l, [hl]                                    ; $4450: $6e
    db $dd                                        ; $4451: $dd
    ld a, [hl]                                    ; $4452: $7e

jr_02e_4453:
    ld a, c                                       ; $4453: $79
    sbc $02                                       ; $4454: $de $02
    ld b, a                                       ; $4456: $47
    dec de                                        ; $4457: $1b
    add $ae                                       ; $4458: $c6 $ae
    ld d, a                                       ; $445a: $57
    ld d, l                                       ; $445b: $55
    ld e, d                                       ; $445c: $5a
    ldh [$b8], a                                  ; $445d: $e0 $b8
    and $a8                                       ; $445f: $e6 $a8
    cp a                                          ; $4461: $bf
    ld a, a                                       ; $4462: $7f
    cp a                                          ; $4463: $bf
    sub c                                         ; $4464: $91
    ld hl, $a725                                  ; $4465: $21 $25 $a7
    ld d, d                                       ; $4468: $52
    or h                                          ; $4469: $b4
    add $9c                                       ; $446a: $c6 $9c
    ret nc                                        ; $446c: $d0

    ld l, l                                       ; $446d: $6d
    adc l                                         ; $446e: $8d
    add b                                         ; $446f: $80
    ld [$4d75], a                                 ; $4470: $ea $75 $4d
    xor [hl]                                      ; $4473: $ae
    pop de                                        ; $4474: $d1
    inc bc                                        ; $4475: $03
    jp nc, Jump_02e_5042                          ; $4476: $d2 $42 $50

    sub h                                         ; $4479: $94
    or a                                          ; $447a: $b7
    dec e                                         ; $447b: $1d

jr_02e_447c:
    inc d                                         ; $447c: $14
    ld l, e                                       ; $447d: $6b
    call z, $29f5                                 ; $447e: $cc $f5 $29
    ld d, [hl]                                    ; $4481: $56
    db $dd                                        ; $4482: $dd
    rst $18                                       ; $4483: $df
    and a                                         ; $4484: $a7
    pop de                                        ; $4485: $d1
    add e                                         ; $4486: $83
    db $ec                                        ; $4487: $ec
    rlca                                          ; $4488: $07
    ld e, $c3                                     ; $4489: $1e $c3
    ld c, a                                       ; $448b: $4f
    ld [hl], d                                    ; $448c: $72
    adc [hl]                                      ; $448d: $8e
    inc [hl]                                      ; $448e: $34
    xor [hl]                                      ; $448f: $ae
    ld h, l                                       ; $4490: $65
    adc e                                         ; $4491: $8b

jr_02e_4492:
    db $e4                                        ; $4492: $e4
    db $e3                                        ; $4493: $e3
    adc d                                         ; $4494: $8a
    ld d, l                                       ; $4495: $55
    ld d, [hl]                                    ; $4496: $56
    ld l, [hl]                                    ; $4497: $6e
    inc e                                         ; $4498: $1c
    cpl                                           ; $4499: $2f
    jp nz, Jump_000_23f7                          ; $449a: $c2 $f7 $23

    cp c                                          ; $449d: $b9
    db $ec                                        ; $449e: $ec
    ld a, e                                       ; $449f: $7b
    call $f7ae                                    ; $44a0: $cd $ae $f7
    cp a                                          ; $44a3: $bf
    ld h, c                                       ; $44a4: $61
    call z, Call_000_3f51                         ; $44a5: $cc $51 $3f
    ld l, a                                       ; $44a8: $6f
    ld bc, $be27                                  ; $44a9: $01 $27 $be
    sbc a                                         ; $44ac: $9f
    ld e, h                                       ; $44ad: $5c
    ld h, l                                       ; $44ae: $65
    jr jr_02e_447c                                ; $44af: $18 $cb

    cp [hl]                                       ; $44b1: $be
    dec de                                        ; $44b2: $1b
    ld d, [hl]                                    ; $44b3: $56
    ld [hl], d                                    ; $44b4: $72
    jp Jump_000_0a58                              ; $44b5: $c3 $58 $0a


    push af                                       ; $44b8: $f5
    rla                                           ; $44b9: $17
    add $3c                                       ; $44ba: $c6 $3c
    db $f4                                        ; $44bc: $f4
    jp hl                                         ; $44bd: $e9


    cpl                                           ; $44be: $2f
    ld e, e                                       ; $44bf: $5b
    inc h                                         ; $44c0: $24
    rst $08                                       ; $44c1: $cf
    sub a                                         ; $44c2: $97
    and l                                         ; $44c3: $a5
    add l                                         ; $44c4: $85
    call c, $c690                                 ; $44c5: $dc $90 $c6
    cp b                                          ; $44c8: $b8
    ld h, c                                       ; $44c9: $61
    and l                                         ; $44ca: $a5
    ld c, a                                       ; $44cb: $4f
    cp e                                          ; $44cc: $bb
    sbc $2b                                       ; $44cd: $de $2b
    or l                                          ; $44cf: $b5
    adc c                                         ; $44d0: $89
    dec l                                         ; $44d1: $2d
    ld b, a                                       ; $44d2: $47
    xor d                                         ; $44d3: $aa
    or d                                          ; $44d4: $b2
    rst $08                                       ; $44d5: $cf
    or l                                          ; $44d6: $b5
    ld a, [hl-]                                   ; $44d7: $3a
    dec hl                                        ; $44d8: $2b
    or [hl]                                       ; $44d9: $b6
    inc d                                         ; $44da: $14
    and [hl]                                      ; $44db: $a6
    ld a, [bc]                                    ; $44dc: $0a
    ld a, $62                                     ; $44dd: $3e $62
    rst $18                                       ; $44df: $df
    ld l, $43                                     ; $44e0: $2e $43
    ld d, a                                       ; $44e2: $57
    ld [hl], d                                    ; $44e3: $72
    dec e                                         ; $44e4: $1d
    adc h                                         ; $44e5: $8c
    ld e, e                                       ; $44e6: $5b
    and l                                         ; $44e7: $a5
    ld [hl], l                                    ; $44e8: $75
    call nz, Call_000_297f                        ; $44e9: $c4 $7f $29
    rst $18                                       ; $44ec: $df
    ld d, c                                       ; $44ed: $51
    and l                                         ; $44ee: $a5
    ld l, b                                       ; $44ef: $68
    and h                                         ; $44f0: $a4
    or c                                          ; $44f1: $b1
    nop                                           ; $44f2: $00
    cp c                                          ; $44f3: $b9
    call c, $16f2                                 ; $44f4: $dc $f2 $16
    dec e                                         ; $44f7: $1d
    inc d                                         ; $44f8: $14
    ld l, e                                       ; $44f9: $6b
    call z, $29f5                                 ; $44fa: $cc $f5 $29
    add $31                                       ; $44fd: $c6 $31
    inc c                                         ; $44ff: $0c

jr_02e_4500:
    push af                                       ; $4500: $f5
    ld l, c                                       ; $4501: $69
    db $f4                                        ; $4502: $f4
    jr nz, jr_02e_4500                            ; $4503: $20 $fb

    add c                                         ; $4505: $81
    rst $00                                       ; $4506: $c7
    ld [hl-], a                                   ; $4507: $32
    and b                                         ; $4508: $a0
    ld h, l                                       ; $4509: $65
    rst $18                                       ; $450a: $df
    ld l, a                                       ; $450b: $6f
    ld h, h                                       ; $450c: $64
    jr jr_02e_4492                                ; $450d: $18 $83

    xor a                                         ; $450f: $af
    ld d, l                                       ; $4510: $55
    ld d, [hl]                                    ; $4511: $56
    ld l, [hl]                                    ; $4512: $6e
    inc e                                         ; $4513: $1c
    cpl                                           ; $4514: $2f
    jp nz, $f3f7                                  ; $4515: $c2 $f7 $f3

    dec e                                         ; $4518: $1d
    ld d, a                                       ; $4519: $57
    ld h, d                                       ; $451a: $62
    ld [hl], c                                    ; $451b: $71
    rst $10                                       ; $451c: $d7
    ld e, a                                       ; $451d: $5f
    cp h                                          ; $451e: $bc
    ld c, a                                       ; $451f: $4f
    db $e3                                        ; $4520: $e3
    or a                                          ; $4521: $b7

jr_02e_4522:
    sub h                                         ; $4522: $94
    cp c                                          ; $4523: $b9
    ld e, e                                       ; $4524: $5b
    call nz, $fa6d                                ; $4525: $c4 $6d $fa
    xor e                                         ; $4528: $ab
    xor $fa                                       ; $4529: $ee $fa
    call z, $b1ab                                 ; $452b: $cc $ab $b1
    ld c, a                                       ; $452e: $4f
    jp $f30b                                      ; $452f: $c3 $0b $f3


    ld d, $27                                     ; $4532: $16 $27
    cp [hl]                                       ; $4534: $be
    sbc a                                         ; $4535: $9f
    ld e, h                                       ; $4536: $5c
    or [hl]                                       ; $4537: $b6
    ld d, $80                                     ; $4538: $16 $80
    ld sp, $e3f8                                  ; $453a: $31 $f8 $e3
    or a                                          ; $453d: $b7
    inc d                                         ; $453e: $14
    sub b                                         ; $453f: $90
    ld a, l                                       ; $4540: $7d
    jp c, $aaf5                                   ; $4541: $da $f5 $aa

    ld c, d                                       ; $4544: $4a
    and e                                         ; $4545: $a3
    add a                                         ; $4546: $87
    ld a, c                                       ; $4547: $79
    dec bc                                        ; $4548: $0b
    add a                                         ; $4549: $87
    xor a                                         ; $454a: $af
    ld a, d                                       ; $454b: $7a
    ld a, a                                       ; $454c: $7f
    add $60                                       ; $454d: $c6 $60
    inc h                                         ; $454f: $24
    sub a                                         ; $4550: $97
    ld [hl], $e0                                  ; $4551: $36 $e0
    ld l, [hl]                                    ; $4553: $6e
    res 0, b                                      ; $4554: $cb $80
    ld b, [hl]                                    ; $4556: $46
    or b                                          ; $4557: $b0
    or h                                          ; $4558: $b4
    ld b, l                                       ; $4559: $45
    jr z, jr_02e_4522                             ; $455a: $28 $c6

    or l                                          ; $455c: $b5
    cp b                                          ; $455d: $b8
    add hl, sp                                    ; $455e: $39
    ld a, [bc]                                    ; $455f: $0a
    ld b, d                                       ; $4560: $42
    ld sp, $c5d7                                  ; $4561: $31 $d7 $c5
    sub [hl]                                      ; $4564: $96
    ld e, a                                       ; $4565: $5f
    ld l, h                                       ; $4566: $6c
    push bc                                       ; $4567: $c5
    sbc d                                         ; $4568: $9a
    rlca                                          ; $4569: $07
    cp [hl]                                       ; $456a: $be
    sbc d                                         ; $456b: $9a
    sbc c                                         ; $456c: $99

Call_02e_456d:
    dec sp                                        ; $456d: $3b
    ld [hl-], a                                   ; $456e: $32
    ld a, [c]                                     ; $456f: $f2

Call_02e_4570:
    cp h                                          ; $4570: $bc
    dec b                                         ; $4571: $05
    ld b, a                                       ; $4572: $47
    sbc $e2                                       ; $4573: $de $e2
    sub l                                         ; $4575: $95
    ld e, e                                       ; $4576: $5b
    ld [hl], d                                    ; $4577: $72
    reti                                          ; $4578: $d9


    jp c, Jump_000_1bbf                           ; $4579: $da $bf $1b

    xor [hl]                                      ; $457c: $ae
    or c                                          ; $457d: $b1
    sbc b                                         ; $457e: $98
    cp $f5                                        ; $457f: $fe $f5
    ld e, h                                       ; $4581: $5c
    cp e                                          ; $4582: $bb
    ld de, $bc70                                  ; $4583: $11 $70 $bc
    db $ed                                        ; $4586: $ed
    jp nc, $b62e                                  ; $4587: $d2 $2e $b6

    dec [hl]                                      ; $458a: $35
    ld c, b                                       ; $458b: $48
    xor [hl]                                      ; $458c: $ae
    cp h                                          ; $458d: $bc

jr_02e_458e:
    dec b                                         ; $458e: $05
    daa                                           ; $458f: $27
    jp Jump_02e_415d                              ; $4590: $c3 $5d $41


    push af                                       ; $4593: $f5
    ld l, $2d                                     ; $4594: $2e $2d
    inc bc                                        ; $4596: $03
    ld a, [de]                                    ; $4597: $1a
    pop bc                                        ; $4598: $c1
    inc l                                         ; $4599: $2c
    ld d, [hl]                                    ; $459a: $56
    ld [$7724], a                                 ; $459b: $ea $24 $77
    and d                                         ; $459e: $a2
    jr jr_02e_45cd                                ; $459f: $18 $2c

    ld b, l                                       ; $45a1: $45
    or l                                          ; $45a2: $b5
    add a                                         ; $45a3: $87
    or [hl]                                       ; $45a4: $b6
    and a                                         ; $45a5: $a7
    db $fd                                        ; $45a6: $fd
    sbc l                                         ; $45a7: $9d
    ld h, d                                       ; $45a8: $62
    adc l                                         ; $45a9: $8d
    ld a, [bc]                                    ; $45aa: $0a
    dec a                                         ; $45ab: $3d
    and b                                         ; $45ac: $a0
    ld [hl], c                                    ; $45ad: $71
    xor l                                         ; $45ae: $ad
    or d                                          ; $45af: $b2
    or c                                          ; $45b0: $b1
    call c, $af3e                                 ; $45b1: $dc $3e $af
    ld d, a                                       ; $45b4: $57
    push de                                       ; $45b5: $d5
    ld [hl], l                                    ; $45b6: $75
    push hl                                       ; $45b7: $e5
    dec sp                                        ; $45b8: $3b
    xor d                                         ; $45b9: $aa
    inc d                                         ; $45ba: $14
    dec l                                         ; $45bb: $2d
    inc c                                         ; $45bc: $0c
    ld l, c                                       ; $45bd: $69
    add hl, de                                    ; $45be: $19
    ret nc                                        ; $45bf: $d0

    or d                                          ; $45c0: $b2
    rst $28                                       ; $45c1: $ef
    rrca                                          ; $45c2: $0f
    ld d, d                                       ; $45c3: $52
    dec b                                         ; $45c4: $05
    dec [hl]                                      ; $45c5: $35
    ld a, d                                       ; $45c6: $7a
    ld b, b                                       ; $45c7: $40
    ld a, c                                       ; $45c8: $79
    dec bc                                        ; $45c9: $0b
    dec e                                         ; $45ca: $1d

jr_02e_45cb:
    ld b, h                                       ; $45cb: $44
    and h                                         ; $45cc: $a4

jr_02e_45cd:
    di                                            ; $45cd: $f3
    db $eb                                        ; $45ce: $eb
    ld sp, $620f                                  ; $45cf: $31 $0f $62
    ld [hl], l                                    ; $45d2: $75
    halt                                          ; $45d3: $76
    ld [hl], l                                    ; $45d4: $75
    ld b, a                                       ; $45d5: $47
    or a                                          ; $45d6: $b7
    ld [hl], c                                    ; $45d7: $71
    adc l                                         ; $45d8: $8d
    ld a, c                                       ; $45d9: $79
    or c                                          ; $45da: $b1
    sub h                                         ; $45db: $94
    dec d                                         ; $45dc: $15
    jp Jump_02e_4da8                              ; $45dd: $c3 $a8 $4d


    ld l, h                                       ; $45e0: $6c
    ld bc, $f49d                                  ; $45e1: $01 $9d $f4
    cp c                                          ; $45e4: $b9
    adc $5f                                       ; $45e5: $ce $5f
    or c                                          ; $45e7: $b1
    ld d, l                                       ; $45e8: $55
    add [hl]                                      ; $45e9: $86
    ld a, a                                       ; $45ea: $7f
    call c, $921f                                 ; $45eb: $dc $1f $92
    ld h, [hl]                                    ; $45ee: $66
    ld d, b                                       ; $45ef: $50
    adc a                                         ; $45f0: $8f
    dec hl                                        ; $45f1: $2b
    ld [bc], a                                    ; $45f2: $02
    ld h, d                                       ; $45f3: $62
    inc e                                         ; $45f4: $1c
    sub [hl]                                      ; $45f5: $96
    or d                                          ; $45f6: $b2
    ld h, d                                       ; $45f7: $62
    jr c, jr_02e_45cb                             ; $45f8: $38 $d1

    jr c, jr_02e_458e                             ; $45fa: $38 $92

    ld h, d                                       ; $45fc: $62
    rst $30                                       ; $45fd: $f7
    inc hl                                        ; $45fe: $23
    sub l                                         ; $45ff: $95
    ld a, d                                       ; $4600: $7a
    ld b, b                                       ; $4601: $40
    rst $30                                       ; $4602: $f7
    jp c, $16c4                                   ; $4603: $da $c4 $16

    ld b, a                                       ; $4606: $47
    ld a, [hl+]                                   ; $4607: $2a
    push af                                       ; $4608: $f5
    add b                                         ; $4609: $80
    ld l, d                                       ; $460a: $6a
    inc de                                        ; $460b: $13

Jump_02e_460c:
    ld e, e                                       ; $460c: $5b
    ld b, a                                       ; $460d: $47
    ld a, [hl+]                                   ; $460e: $2a
    push af                                       ; $460f: $f5
    add b                                         ; $4610: $80
    ld l, d                                       ; $4611: $6a
    inc de                                        ; $4612: $13
    ld e, e                                       ; $4613: $5b
    ld b, a                                       ; $4614: $47
    ld a, [hl+]                                   ; $4615: $2a
    push af                                       ; $4616: $f5
    add b                                         ; $4617: $80
    ld l, d                                       ; $4618: $6a
    inc de                                        ; $4619: $13
    ld e, e                                       ; $461a: $5b
    and a                                         ; $461b: $a7
    adc b                                         ; $461c: $88
    ld b, c                                       ; $461d: $41
    db $fd                                        ; $461e: $fd
    jr @+$60                                      ; $461f: $18 $5e

    sbc b                                         ; $4621: $98
    ld e, h                                       ; $4622: $5c
    push af                                       ; $4623: $f5
    cp $58                                        ; $4624: $fe $58
    and $3d                                       ; $4626: $e6 $3d
    cp [hl]                                       ; $4628: $be
    ld e, a                                       ; $4629: $5f
    sbc e                                         ; $462a: $9b
    ret c                                         ; $462b: $d8

    ld [bc], a                                    ; $462c: $02
    add a                                         ; $462d: $87
    ld [hl], a                                    ; $462e: $77
    db $d3                                        ; $462f: $d3
    adc l                                         ; $4630: $8d
    sub h                                         ; $4631: $94
    rst $20                                       ; $4632: $e7
    ld a, c                                       ; $4633: $79
    dec bc                                        ; $4634: $0b
    daa                                           ; $4635: $27
    db $fd                                        ; $4636: $fd
    ld [hl], c                                    ; $4637: $71
    ld [hl], h                                    ; $4638: $74
    ld b, e                                       ; $4639: $43
    ld e, d                                       ; $463a: $5a
    ld b, $34                                     ; $463b: $06 $34
    ld a, d                                       ; $463d: $7a
    ld a, a                                       ; $463e: $7f
    call $d643                                    ; $463f: $cd $43 $d6
    rla                                           ; $4642: $17
    ld c, l                                       ; $4643: $4d
    ld b, c                                       ; $4644: $41
    cp e                                          ; $4645: $bb
    inc l                                         ; $4646: $2c
    ld [c], a                                     ; $4647: $e2
    sub [hl]                                      ; $4648: $96
    xor a                                         ; $4649: $af
    and e                                         ; $464a: $a3
    inc a                                         ; $464b: $3c
    sbc $ff                                       ; $464c: $de $ff
    jp c, $52d7                                   ; $464e: $da $d7 $52

    rrca                                          ; $4651: $0f
    ld e, b                                       ; $4652: $58
    ld e, d                                       ; $4653: $5a
    and e                                         ; $4654: $a3
    rst $08                                       ; $4655: $cf
    db $ed                                        ; $4656: $ed
    db $d3                                        ; $4657: $d3
    ld [hl-], a                                   ; $4658: $32
    and b                                         ; $4659: $a0
    ld h, l                                       ; $465a: $65
    rst $18                                       ; $465b: $df
    ld d, l                                       ; $465c: $55
    ld d, l                                       ; $465d: $55
    ld [hl], l                                    ; $465e: $75
    cp a                                          ; $465f: $bf
    halt                                          ; $4660: $76
    ld l, c                                       ; $4661: $69
    inc l                                         ; $4662: $2c
    di                                            ; $4663: $f3
    ld e, $df                                     ; $4664: $1e $df
    ld e, a                                       ; $4666: $5f
    sbc l                                         ; $4667: $9d
    sub l                                         ; $4668: $95
    dec sp                                        ; $4669: $3b
    cp $34                                        ; $466a: $fe $34
    ld a, d                                       ; $466c: $7a
    dec h                                         ; $466d: $25
    ld b, a                                       ; $466e: $47
    push hl                                       ; $466f: $e5
    dec l                                         ; $4670: $2d
    rst $00                                       ; $4671: $c7
    jp c, Jump_000_36d8                           ; $4672: $da $d8 $36

    or [hl]                                       ; $4675: $b6
    push de                                       ; $4676: $d5
    ld h, $ee                                     ; $4677: $26 $ee
    db $f4                                        ; $4679: $f4
    rlca                                          ; $467a: $07
    ld sp, $7463                                  ; $467b: $31 $63 $74
    cp $18                                        ; $467e: $fe $18
    ld e, b                                       ; $4680: $58
    ret c                                         ; $4681: $d8

    xor b                                         ; $4682: $a8
    ld l, e                                       ; $4683: $6b
    ld d, d                                       ; $4684: $52
    ld [hl], d                                    ; $4685: $72
    ld [hl], l                                    ; $4686: $75
    halt                                          ; $4687: $76
    ld l, c                                       ; $4688: $69
    push de                                       ; $4689: $d5
    dec hl                                        ; $468a: $2b
    push bc                                       ; $468b: $c5
    ld [hl+], a                                   ; $468c: $22
    sbc $af                                       ; $468d: $de $af
    dec a                                         ; $468f: $3d
    or h                                          ; $4690: $b4
    dec b                                         ; $4691: $05
    sbc l                                         ; $4692: $9d
    inc c                                         ; $4693: $0c
    and e                                         ; $4694: $a3
    ld e, $3d                                     ; $4695: $1e $3d
    ld c, h                                       ; $4697: $4c
    xor [hl]                                      ; $4698: $ae
    add e                                         ; $4699: $83
    dec d                                         ; $469a: $15
    and l                                         ; $469b: $a5
    ld e, a                                       ; $469c: $5f
    ld c, l                                       ; $469d: $4d
    ld l, l                                       ; $469e: $6d
    ld h, d                                       ; $469f: $62
    dec bc                                        ; $46a0: $0b
    daa                                           ; $46a1: $27
    jp Jump_02e_415d                              ; $46a2: $c3 $5d $41


    push af                                       ; $46a5: $f5
    ld l, $2d                                     ; $46a6: $2e $2d
    inc bc                                        ; $46a8: $03
    jp c, Jump_02e_5775                           ; $46a9: $da $75 $57

    ld d, b                                       ; $46ac: $50
    db $ed                                        ; $46ad: $ed
    and c                                         ; $46ae: $a1
    dec l                                         ; $46af: $2d
    ld e, c                                       ; $46b0: $59
    ld [hl], a                                    ; $46b1: $77
    dec b                                         ; $46b2: $05
    db $ed                                        ; $46b3: $ed
    jp nc, $e1c8                                  ; $46b4: $d2 $c8 $e1

    ld a, [de]                                    ; $46b7: $1a
    ld [hl], d                                    ; $46b8: $72
    ld a, h                                       ; $46b9: $7c
    inc [hl]                                      ; $46ba: $34
    ld a, l                                       ; $46bb: $7d
    and $d5                                       ; $46bc: $e6 $d5
    call c, $98d6                                 ; $46be: $dc $d6 $98
    xor a                                         ; $46c1: $af
    ret c                                         ; $46c2: $d8

    ld e, b                                       ; $46c3: $58
    ld l, [hl]                                    ; $46c4: $6e
    sbc a                                         ; $46c5: $9f
    rst $10                                       ; $46c6: $d7
    xor e                                         ; $46c7: $ab
    ld [$c6ba], a                                 ; $46c8: $ea $ba $c6
    or l                                          ; $46cb: $b5
    inc de                                        ; $46cc: $13
    sbc $e7                                       ; $46cd: $de $e7
    sub b                                         ; $46cf: $90
    ld [hl-], a                                   ; $46d0: $32
    jp z, Jump_02e_595b                           ; $46d1: $ca $5b $59

    ld [hl], a                                    ; $46d4: $77
    dec b                                         ; $46d5: $05
    xor l                                         ; $46d6: $ad
    ld l, b                                       ; $46d7: $68
    and a                                         ; $46d8: $a7
    ld e, b                                       ; $46d9: $58
    and e                                         ; $46da: $a3
    ld b, d                                       ; $46db: $42
    rrca                                          ; $46dc: $0f
    ld l, b                                       ; $46dd: $68
    ld e, h                                       ; $46de: $5c
    dec sp                                        ; $46df: $3b
    ld d, c                                       ; $46e0: $51
    inc c                                         ; $46e1: $0c
    sub [hl]                                      ; $46e2: $96
    and d                                         ; $46e3: $a2
    jp c, Jump_000_1dc4                           ; $46e4: $da $c4 $1d

    ld sp, hl                                     ; $46e7: $f9
    cp $d7                                        ; $46e8: $fe $d7
    ld a, d                                       ; $46ea: $7a
    or h                                          ; $46eb: $b4
    jp c, $16c4                                   ; $46ec: $da $c4 $16

    and a                                         ; $46ef: $a7
    and e                                         ; $46f0: $a3
    ld a, [hl]                                    ; $46f1: $7e
    xor h                                         ; $46f2: $ac
    ld l, b                                       ; $46f3: $68
    rla                                           ; $46f4: $17
    ld e, e                                       ; $46f5: $5b
    ld a, [hl]                                    ; $46f6: $7e
    or c                                          ; $46f7: $b1
    push hl                                       ; $46f8: $e5
    ret                                           ; $46f9: $c9


    ld [hl], l                                    ; $46fa: $75
    ld a, h                                       ; $46fb: $7c

jr_02e_46fc:
    ld b, h                                       ; $46fc: $44
    ld a, [c]                                     ; $46fd: $f2
    jp c, $16c4                                   ; $46fe: $da $c4 $16

    and a                                         ; $4701: $a7
    ld e, e                                       ; $4702: $5b
    call nc, $d9ab                                ; $4703: $d4 $ab $d9
    or c                                          ; $4706: $b1
    and $5e                                       ; $4707: $e6 $5e
    ld d, e                                       ; $4709: $53
    sbc e                                         ; $470a: $9b
    ret c                                         ; $470b: $d8

    ld [bc], a                                    ; $470c: $02
    rst $00                                       ; $470d: $c7
    sbc d                                         ; $470e: $9a
    ld a, e                                       ; $470f: $7b
    ld c, l                                       ; $4710: $4d
    ld [hl], d                                    ; $4711: $72
    inc b                                         ; $4712: $04
    inc sp                                        ; $4713: $33
    ld [hl], b                                    ; $4714: $70
    jp Jump_000_0358                              ; $4715: $c3 $58 $03


    ei                                            ; $4718: $fb
    rrca                                          ; $4719: $0f
    ld h, d                                       ; $471a: $62
    sub $34                                       ; $471b: $d6 $34
    rst $08                                       ; $471d: $cf
    ld c, c                                       ; $471e: $49
    ld a, $ae                                     ; $471f: $3e $ae
    sbc b                                         ; $4721: $98
    cp $07                                        ; $4722: $fe $07
    adc h                                         ; $4724: $8c
    push de                                       ; $4725: $d5
    add hl, de                                    ; $4726: $19
    dec a                                         ; $4727: $3d
    adc b                                         ; $4728: $88
    jp c, $16c4                                   ; $4729: $da $c4 $16

    daa                                           ; $472c: $27
    adc d                                         ; $472d: $8a
    pop bc                                        ; $472e: $c1
    ld d, d                                       ; $472f: $52
    ld d, h                                       ; $4730: $54
    sbc e                                         ; $4731: $9b
    cp b                                          ; $4732: $b8
    ld c, [hl]                                    ; $4733: $4e
    jr nc, jr_02e_46fc                            ; $4734: $30 $c6

    ld h, d                                       ; $4736: $62
    add hl, hl                                    ; $4737: $29
    call nc, Call_000_3daf                        ; $4738: $d4 $af $3d
    or h                                          ; $473b: $b4
    dec b                                         ; $473c: $05
    daa                                           ; $473d: $27
    ld bc, $d726                                  ; $473e: $01 $26 $d7
    pop bc                                        ; $4741: $c1
    cp b                                          ; $4742: $b8
    ld d, l                                       ; $4743: $55
    ld e, d                                       ; $4744: $5a
    rst $00                                       ; $4745: $c7
    ld d, a                                       ; $4746: $57
    and l                                         ; $4747: $a5
    ld e, l                                       ; $4748: $5d
    pop bc                                        ; $4749: $c1
    ld e, [hl]                                    ; $474a: $5e
    ld [hl], l                                    ; $474b: $75
    or a                                          ; $474c: $b7
    pop de                                        ; $474d: $d1
    inc bc                                        ; $474e: $03
    ld a, [de]                                    ; $474f: $1a
    rst $10                                       ; $4750: $d7
    ld [bc], a                                    ; $4751: $02
    sub b                                         ; $4752: $90
    inc [hl]                                      ; $4753: $34
    ld d, $dc                                     ; $4754: $16 $dc
    inc e                                         ; $4756: $1c
    di                                            ; $4757: $f3
    ld d, $f5                                     ; $4758: $16 $f5
    rst $28                                       ; $475a: $ef

Jump_02e_475b:
    add [hl]                                      ; $475b: $86
    ld h, e                                       ; $475c: $63
    ld h, b                                       ; $475d: $60
    ld h, h                                       ; $475e: $64
    ld l, e                                       ; $475f: $6b
    ld b, h                                       ; $4760: $44
    ld c, b                                       ; $4761: $48
    sbc d                                         ; $4762: $9a
    ld sp, $04fa                                  ; $4763: $31 $fa $04
    xor [hl]                                      ; $4766: $ae
    db $e4                                        ; $4767: $e4
    adc [hl]                                      ; $4768: $8e
    dec [hl]                                      ; $4769: $35
    rst $30                                       ; $476a: $f7
    sbc d                                         ; $476b: $9a
    cp h                                          ; $476c: $bc
    dec b                                         ; $476d: $05
    daa                                           ; $476e: $27
    ld bc, $79e6                                  ; $476f: $01 $e6 $79
    ld a, $01                                     ; $4772: $3e $01
    dec sp                                        ; $4774: $3b
    rst $08                                       ; $4775: $cf
    di                                            ; $4776: $f3
    ld e, l                                       ; $4777: $5d
    ld [hl], a                                    ; $4778: $77
    dec b                                         ; $4779: $05
    push de                                       ; $477a: $d5
    xor e                                         ; $477b: $ab
    ld d, e                                       ; $477c: $53
    adc a                                         ; $477d: $8f
    and e                                         ; $477e: $a3
    dec hl                                        ; $477f: $2b
    rst $08                                       ; $4780: $cf
    di                                            ; $4781: $f3
    ld d, $27                                     ; $4782: $16 $27
    ld l, d                                       ; $4784: $6a

jr_02e_4785:
    xor [hl]                                      ; $4785: $ae
    db $eb                                        ; $4786: $eb
    ld d, l                                       ; $4787: $55
    sub l                                         ; $4788: $95
    cp $a5                                        ; $4789: $fe $a5
    ld h, l                                       ; $478b: $65
    ld e, e                                       ; $478c: $5b
    ld h, l                                       ; $478d: $65
    jr jr_02e_47fb                                ; $478e: $18 $6b

    ld a, [bc]                                    ; $4790: $0a
    ld b, h                                       ; $4791: $44
    cp [hl]                                       ; $4792: $be

jr_02e_4793:
    sub e                                         ; $4793: $93
    cp $f4                                        ; $4794: $fe $f4
    rst $20                                       ; $4796: $e7
    ld l, d                                       ; $4797: $6a
    call z, $dc8b                                 ; $4798: $cc $8b $dc
    ld a, [c]                                     ; $479b: $f2
    sbc l                                         ; $479c: $9d
    and b                                         ; $479d: $a0
    ld e, l                                       ; $479e: $5d
    rrca                                          ; $479f: $0f
    inc a                                         ; $47a0: $3c
    and [hl]                                      ; $47a1: $a6
    and b                                         ; $47a2: $a0
    sub c                                         ; $47a3: $91
    cp h                                          ; $47a4: $bc
    jp nz, $cb7f                                  ; $47a5: $c2 $7f $cb

    ld e, e                                       ; $47a8: $5b
    and a                                         ; $47a9: $a7
    ld e, d                                       ; $47aa: $5a
    ld bc, $ee4a                                  ; $47ab: $01 $4a $ee
    sub h                                         ; $47ae: $94
    rst $30                                       ; $47af: $f7
    di                                            ; $47b0: $f3
    ld d, $1d                                     ; $47b1: $16 $1d
    inc hl                                        ; $47b3: $23
    jr z, jr_02e_4785                             ; $47b4: $28 $cf

    di                                            ; $47b6: $f3
    sbc l                                         ; $47b7: $9d
    xor b                                         ; $47b8: $a8
    pop de                                        ; $47b9: $d1
    db $dd                                        ; $47ba: $dd
    ld [hl+], a                                   ; $47bb: $22
    ld d, b                                       ; $47bc: $50
    inc a                                         ; $47bd: $3c
    sub $58                                       ; $47be: $d6 $58
    xor h                                         ; $47c0: $ac
    adc $ae                                       ; $47c1: $ce $ae
    xor $e8                                       ; $47c3: $ee $e8
    ld [hl], $7e                                  ; $47c5: $36 $7e
    ccf                                           ; $47c7: $3f
    ld d, [hl]                                    ; $47c8: $56
    ld e, [hl]                                    ; $47c9: $5e
    pop hl                                        ; $47ca: $e1
    ei                                            ; $47cb: $fb
    ld c, d                                       ; $47cc: $4a
    xor $ba                                       ; $47cd: $ee $ba
    dec hl                                        ; $47cf: $2b

jr_02e_47d0:
    ld l, b                                       ; $47d0: $68
    ldh a, [$b5]                                  ; $47d1: $f0 $b5
    ld a, [bc]                                    ; $47d3: $0a
    inc hl                                        ; $47d4: $23
    sub [hl]                                      ; $47d5: $96
    xor l                                         ; $47d6: $ad
    ld a, d                                       ; $47d7: $7a
    ld h, c                                       ; $47d8: $61
    jr jr_02e_47d0                                ; $47d9: $18 $f5

    add sp, $01                                   ; $47db: $e8 $01
    push hl                                       ; $47dd: $e5
    dec l                                         ; $47de: $2d
    rst $00                                       ; $47df: $c7
    ld a, [bc]                                    ; $47e0: $0a
    ld a, a                                       ; $47e1: $7f
    ld [hl], d                                    ; $47e2: $72
    ld a, [$73d7]                                 ; $47e3: $fa $d7 $73
    adc l                                         ; $47e6: $8d
    ld e, $d6                                     ; $47e7: $1e $d6
    ld e, $da                                     ; $47e9: $1e $da
    ld [bc], a                                    ; $47eb: $02
    rst $00                                       ; $47ec: $c7
    sbc d                                         ; $47ed: $9a
    ld a, e                                       ; $47ee: $7b
    ld c, l                                       ; $47ef: $4d
    ld [hl], d                                    ; $47f0: $72
    inc c                                         ; $47f1: $0c
    ld [$e8c7], a                                 ; $47f2: $ea $c7 $e8
    ld l, [hl]                                    ; $47f5: $6e
    ld de, $e87a                                  ; $47f6: $11 $7a $e8
    xor e                                         ; $47f9: $ab
    or e                                          ; $47fa: $b3

jr_02e_47fb:
    xor e                                         ; $47fb: $ab
    dec sp                                        ; $47fc: $3b
    cp d                                          ; $47fd: $ba
    adc l                                         ; $47fe: $8d
    ld l, e                                       ; $47ff: $6b
    push de                                       ; $4800: $d5
    jp $f57c                                      ; $4801: $c3 $7c $f5


    or l                                          ; $4804: $b5
    jr nc, jr_02e_4793                            ; $4805: $30 $8c

    pop de                                        ; $4807: $d1
    inc bc                                        ; $4808: $03
    ld e, d                                       ; $4809: $5a
    add b                                         ; $480a: $80
    xor a                                         ; $480b: $af
    ret c                                         ; $480c: $d8

    ld d, d                                       ; $480d: $52
    adc a                                         ; $480e: $8f
    db $ec                                        ; $480f: $ec

jr_02e_4810:
    ld h, e                                       ; $4810: $63
    ld b, $94                                     ; $4811: $06 $94
    or a                                          ; $4813: $b7
    add a                                         ; $4814: $87
    ld b, a                                       ; $4815: $47
    xor b                                         ; $4816: $a8
    ld b, [hl]                                    ; $4817: $46
    rst $20                                       ; $4818: $e7
    rst $10                                       ; $4819: $d7
    ld h, e                                       ; $481a: $63
    ld e, $c4                                     ; $481b: $1e $c4
    add sp, $41                                   ; $481d: $e8 $41
    db $e4                                        ; $481f: $e4
    dec l                                         ; $4820: $2d
    daa                                           ; $4821: $27
    ld b, c                                       ; $4822: $41
    ld a, [hl-]                                   ; $4823: $3a
    cp c                                          ; $4824: $b9
    db $ec                                        ; $4825: $ec
    cp e                                          ; $4826: $bb
    pop hl                                        ; $4827: $e1
    inc b                                         ; $4828: $04
    cp e                                          ; $4829: $bb
    ret c                                         ; $482a: $d8

    ld b, $3c                                     ; $482b: $06 $3c
    ld l, a                                       ; $482d: $6f
    ld bc, $d827                                  ; $482e: $01 $27 $d8
    ld a, [de]                                    ; $4831: $1a
    ld d, a                                       ; $4832: $57
    add l                                         ; $4833: $85
    ld [hl], l                                    ; $4834: $75
    ld e, l                                       ; $4835: $5d
    dec hl                                        ; $4836: $2b
    ld [$fdf1], a                                 ; $4837: $ea $f1 $fd
    ld [hl], c                                    ; $483a: $71
    dec l                                         ; $483b: $2d
    push af                                       ; $483c: $f5
    ret z                                         ; $483d: $c8

    ld a, $66                                     ; $483e: $3e $66
    ld b, b                                       ; $4840: $40
    cp e                                          ; $4841: $bb
    sbc $0f                                       ; $4842: $de $0f
    inc c                                         ; $4844: $0c
    jp nc, $0cea                                  ; $4845: $d2 $ea $0c

    cp c                                          ; $4848: $b9
    ld a, $61                                     ; $4849: $3e $61
    ld a, [de]                                    ; $484b: $1a
    push hl                                       ; $484c: $e5
    dec hl                                        ; $484d: $2b
    adc d                                         ; $484e: $8a
    dec [hl]                                      ; $484f: $35
    push bc                                       ; $4850: $c5
    ld a, $29                                     ; $4851: $3e $29
    ld a, [c]                                     ; $4853: $f2
    sbc l                                         ; $4854: $9d
    and b                                         ; $4855: $a0
    ld e, b                                       ; $4856: $58
    ld d, e                                       ; $4857: $53
    db $ec                                        ; $4858: $ec
    sub e                                         ; $4859: $93
    ld h, d                                       ; $485a: $62
    pop af                                        ; $485b: $f1
    ld a, $8d                                     ; $485c: $3e $8d
    dec hl                                        ; $485e: $2b
    add [hl]                                      ; $485f: $86
    sbc a                                         ; $4860: $9f
    push hl                                       ; $4861: $e5
    scf                                           ; $4862: $37
    adc [hl]                                      ; $4863: $8e
    ld a, [$2314]                                 ; $4864: $fa $14 $23
    xor a                                         ; $4867: $af
    dec de                                        ; $4868: $1b
    jp Jump_02e_79aa                              ; $4869: $c3 $aa $79


    ld c, [hl]                                    ; $486c: $4e
    or $29                                        ; $486d: $f6 $29
    add $ed                                       ; $486f: $c6 $ed
    rst $00                                       ; $4871: $c7
    cp b                                          ; $4872: $b8
    or $5f                                        ; $4873: $f6 $5f
    sub l                                         ; $4875: $95
    ld [hl], d                                    ; $4876: $72
    ld b, c                                       ; $4877: $41
    jr z, jr_02e_4810                             ; $4878: $28 $96

    ld a, [hl]                                    ; $487a: $7e
    ld e, [hl]                                    ; $487b: $5e
    ld b, c                                       ; $487c: $41
    ld d, c                                       ; $487d: $51
    adc h                                         ; $487e: $8c
    ld l, e                                       ; $487f: $6b
    call Call_02e_7c23                            ; $4880: $cd $23 $7c
    ccf                                           ; $4883: $3f
    sub d                                         ; $4884: $92
    jp $b4b2                                      ; $4885: $c3 $b2 $b4


    ld bc, $bf8d                                  ; $4888: $01 $8d $bf
    ld a, a                                       ; $488b: $7f
    dec l                                         ; $488c: $2d
    add l                                         ; $488d: $85
    ld a, [$8a2b]                                 ; $488e: $fa $2b $8a
    ld e, l                                       ; $4891: $5d
    rst $28                                       ; $4892: $ef
    ld a, a                                       ; $4893: $7f
    db $eb                                        ; $4894: $eb
    sub [hl]                                      ; $4895: $96
    ld e, h                                       ; $4896: $5c
    ld a, c                                       ; $4897: $79
    dec bc                                        ; $4898: $0b
    push af                                       ; $4899: $f5
    or l                                          ; $489a: $b5
    and d                                         ; $489b: $a2
    ret c                                         ; $489c: $d8

    push af                                       ; $489d: $f5
    cp $37                                        ; $489e: $fe $37
    adc h                                         ; $48a0: $8c
    pop af                                        ; $48a1: $f1
    ld e, e                                       ; $48a2: $5b
    halt                                          ; $48a3: $76
    sbc l                                         ; $48a4: $9d
    jp c, $16c4                                   ; $48a5: $da $c4 $16

    rst $00                                       ; $48a8: $c7
    cp b                                          ; $48a9: $b8
    cp e                                          ; $48aa: $bb
    rst $20                                       ; $48ab: $e7
    dec l                                         ; $48ac: $2d
    ld e, l                                       ; $48ad: $5d
    ret c                                         ; $48ae: $d8

    ld a, [bc]                                    ; $48af: $0a
    ldh [$5c], a                                  ; $48b0: $e0 $5c
    ld de, $52aa                                  ; $48b2: $11 $aa $52
    ld b, l                                       ; $48b5: $45
    ld c, e                                       ; $48b6: $4b
    and c                                         ; $48b7: $a1
    ld a, [hl]                                    ; $48b8: $7e
    sbc $02                                       ; $48b9: $de $02
    push af                                       ; $48bb: $f5
    dec [hl]                                      ; $48bc: $35
    add $30                                       ; $48bd: $c6 $30
    add $3c                                       ; $48bf: $c6 $3c
    adc b                                         ; $48c1: $88
    pop af                                        ; $48c2: $f1
    rst $30                                       ; $48c3: $f7
    cp a                                          ; $48c4: $bf
    ld a, h                                       ; $48c5: $7c
    ldh a, [$35]                                  ; $48c6: $f0 $35
    db $fd                                        ; $48c8: $fd
    xor e                                         ; $48c9: $ab
    and $2a                                       ; $48ca: $e6 $2a
    xor a                                         ; $48cc: $af
    cp c                                          ; $48cd: $b9
    ld [hl], c                                    ; $48ce: $71
    call nc, Call_02e_62b8                        ; $48cf: $d4 $b8 $62
    ld hl, sp+$59                                 ; $48d2: $f8 $59
    ld a, [hl]                                    ; $48d4: $7e
    db $e3                                        ; $48d5: $e3
    xor b                                         ; $48d6: $a8
    ld c, a                                       ; $48d7: $4f
    sub c                                         ; $48d8: $91
    rst $28                                       ; $48d9: $ef
    db $f4                                        ; $48da: $f4
    rlca                                          ; $48db: $07
    or c                                          ; $48dc: $b1
    ld a, a                                       ; $48dd: $7f
    scf                                           ; $48de: $37
    ld [hl], b                                    ; $48df: $70
    sbc l                                         ; $48e0: $9d
    cp a                                          ; $48e1: $bf
    inc c                                         ; $48e2: $0c
    call c, $aceb                                 ; $48e3: $dc $eb $ac
    ret c                                         ; $48e6: $d8

    xor [hl]                                      ; $48e7: $ae
    rst $30                                       ; $48e8: $f7
    inc bc                                        ; $48e9: $03
    ld a, [bc]                                    ; $48ea: $0a
    ret                                           ; $48eb: $c9


    daa                                           ; $48ec: $27
    ld a, [de]                                    ; $48ed: $1a
    di                                            ; $48ee: $f3
    jr nz, @-$28                                  ; $48ef: $20 $d6

    inc a                                         ; $48f1: $3c
    ld [hl], b                                    ; $48f2: $70
    rst $10                                       ; $48f3: $d7
    ld sp, hl                                     ; $48f4: $f9
    ld b, e                                       ; $48f5: $43
    xor [hl]                                      ; $48f6: $ae
    ld c, a                                       ; $48f7: $4f
    sbc b                                         ; $48f8: $98

jr_02e_48f9:
    ld b, [hl]                                    ; $48f9: $46
    ld sp, hl                                     ; $48fa: $f9
    cp $1d                                        ; $48fb: $fe $1d
    xor e                                         ; $48fd: $ab
    and $39                                       ; $48fe: $e6 $39
    ld l, c                                       ; $4900: $69
    add hl, de                                    ; $4901: $19
    ld d, b                                       ; $4902: $50
    add hl, hl                                    ; $4903: $29
    ld e, d                                       ; $4904: $5a
    ld d, e                                       ; $4905: $53
    db $ec                                        ; $4906: $ec
    sub e                                         ; $4907: $93
    ld a, [c]                                     ; $4908: $f2
    ld d, $27                                     ; $4909: $16 $27
    add e                                         ; $490b: $83
    ld a, l                                       ; $490c: $7d
    ld a, $e6                                     ; $490d: $3e $e6
    ld b, c                                       ; $490f: $41
    adc h                                         ; $4910: $8c
    db $fc                                        ; $4911: $fc
    ld bc, $d723                                  ; $4912: $01 $23 $d7
    ld sp, hl                                     ; $4915: $f9
    dec de                                        ; $4916: $1b

jr_02e_4917:
    ld a, h                                       ; $4917: $7c
    xor l                                         ; $4918: $ad
    add hl, hl                                    ; $4919: $29
    or $49                                        ; $491a: $f6 $49
    ld a, e                                       ; $491c: $7b
    jr nc, jr_02e_4917                            ; $491d: $30 $f8

    inc sp                                        ; $491f: $33
    jr nz, jr_02e_48f9                            ; $4920: $20 $d7

    ldh a, [$b3]                                  ; $4922: $f0 $b3
    db $fc                                        ; $4924: $fc
    add $51                                       ; $4925: $c6 $51
    sbc a                                         ; $4927: $9f
    sub [hl]                                      ; $4928: $96
    ld bc, $798d                                  ; $4929: $01 $8d $79
    db $10                                        ; $492c: $10
    ei                                            ; $492d: $fb
    jp c, $fef5                                   ; $492e: $da $f5 $fe

    scf                                           ; $4931: $37
    adc h                                         ; $4932: $8c
    ret nc                                        ; $4933: $d0

    ld sp, hl                                     ; $4934: $f9
    ld l, e                                       ; $4935: $6b
    inc l                                         ; $4936: $2c
    sub d                                         ; $4937: $92
    ld l, e                                       ; $4938: $6b
    ld e, h                                       ; $4939: $5c
    ld de, $bf3a                                  ; $493a: $11 $3a $bf
    ld e, [hl]                                    ; $493d: $5e
    or c                                          ; $493e: $b1
    ld [hl], c                                    ; $493f: $71
    ei                                            ; $4940: $fb
    ld sp, $91e6                                  ; $4941: $31 $e6 $91
    ld l, e                                       ; $4944: $6b
    ld a, [$cd57]                                 ; $4945: $fa $57 $cd
    ld d, l                                       ; $4948: $55
    ld e, [hl]                                    ; $4949: $5e
    ld [hl], e                                    ; $494a: $73
    db $e3                                        ; $494b: $e3
    xor b                                         ; $494c: $a8
    ld a, h                                       ; $494d: $7c
    ld b, a                                       ; $494e: $47
    sub l                                         ; $494f: $95
    and d                                         ; $4950: $a2
    push de                                       ; $4951: $d5
    inc l                                         ; $4952: $2c
    db $e4                                        ; $4953: $e4
    ld [hl], $ac                                  ; $4954: $36 $ac
    xor d                                         ; $4956: $aa
    dec de                                        ; $4957: $1b
    ld b, a                                       ; $4958: $47
    inc hl                                        ; $4959: $23
    ld d, l                                       ; $495a: $55
    ld a, [$e434]                                 ; $495b: $fa $34 $e4
    ld a, [$6984]                                 ; $495e: $fa $84 $69
    cp h                                          ; $4961: $bc
    ld l, c                                       ; $4962: $69
    and d                                         ; $4963: $a2
    ld e, l                                       ; $4964: $5d
    push bc                                       ; $4965: $c5
    ld [hl+], a                                   ; $4966: $22
    ld l, [hl]                                    ; $4967: $6e
    jp z, $d1d7                                   ; $4968: $ca $d7 $d1

    push af                                       ; $496b: $f5
    ld [hl], l                                    ; $496c: $75
    cp $98                                        ; $496d: $fe $98
    ld b, a                                       ; $496f: $47
    xor [hl]                                      ; $4970: $ae
    jp hl                                         ; $4971: $e9


    ld e, a                                       ; $4972: $5f
    dec [hl]                                      ; $4973: $35
    ld d, a                                       ; $4974: $57
    ld a, c                                       ; $4975: $79
    call $a38d                                    ; $4976: $cd $8d $a3
    ld h, $5a                                     ; $4979: $26 $5a
    ld h, e                                       ; $497b: $63
    ld c, [hl]                                    ; $497c: $4e
    ld a, [hl-]                                   ; $497d: $3a
    ld a, a                                       ; $497e: $7f
    ld [hl], l                                    ; $497f: $75
    ld d, [hl]                                    ; $4980: $56
    ld l, h                                       ; $4981: $6c
    xor [hl]                                      ; $4982: $ae
    adc e                                         ; $4983: $8b
    dec l                                         ; $4984: $2d
    cp a                                          ; $4985: $bf
    ret c                                         ; $4986: $d8

    ld a, [de]                                    ; $4987: $1a
    rst $10                                       ; $4988: $d7
    sbc d                                         ; $4989: $9a
    ld h, d                                       ; $498a: $62
    sbc a                                         ; $498b: $9f
    inc d                                         ; $498c: $14
    dec bc                                        ; $498d: $0b

jr_02e_498e:
    ldh a, [$15]                                  ; $498e: $f0 $15
    adc l                                         ; $4990: $8d
    cp a                                          ; $4991: $bf
    jp z, Jump_02e_6bf0                           ; $4992: $ca $f0 $6b

    ld e, h                                       ; $4995: $5c
    dec hl                                        ; $4996: $2b
    rst $30                                       ; $4997: $f7
    db $db                                        ; $4998: $db
    push af                                       ; $4999: $f5
    adc d                                         ; $499a: $8a
    ld a, [c]                                     ; $499b: $f2

jr_02e_499c:
    ld [hl], l                                    ; $499c: $75
    jr nc, @-$72                                  ; $499d: $30 $8c

    ld a, l                                       ; $499f: $7d
    db $ed                                        ; $49a0: $ed
    ccf                                           ; $49a1: $3f
    adc b                                         ; $49a2: $88
    add hl, de                                    ; $49a3: $19
    and e                                         ; $49a4: $a3
    ld c, a                                       ; $49a5: $4f
    ldh [$3a], a                                  ; $49a6: $e0 $3a
    ld a, a                                       ; $49a8: $7f
    ld bc, $0f4e                                  ; $49a9: $01 $4e $0f
    ld l, b                                       ; $49ac: $68
    adc l                                         ; $49ad: $8d
    push bc                                       ; $49ae: $c5
    cp b                                          ; $49af: $b8
    db $fd                                        ; $49b0: $fd
    ld e, b                                       ; $49b1: $58
    or c                                          ; $49b2: $b1
    dec e                                         ; $49b3: $1d
    db $fd                                        ; $49b4: $fd
    cp h                                          ; $49b5: $bc
    ld l, e                                       ; $49b6: $6b
    ld a, [de]                                    ; $49b7: $1a
    ld a, [hl]                                    ; $49b8: $7e
    sub d                                         ; $49b9: $92
    ld [hl], e                                    ; $49ba: $73
    inc h                                         ; $49bb: $24
    push hl                                       ; $49bc: $e5
    dec sp                                        ; $49bd: $3b
    adc d                                         ; $49be: $8a
    or $35                                        ; $49bf: $f6 $35
    rla                                           ; $49c1: $17
    and e                                         ; $49c2: $a3
    xor a                                         ; $49c3: $af
    di                                            ; $49c4: $f3
    rst $10                                       ; $49c5: $d7
    ld e, b                                       ; $49c6: $58
    call z, $fb18                                 ; $49c7: $cc $18 $fb
    inc [hl]                                      ; $49ca: $34
    ld a, [hl]                                    ; $49cb: $7e
    scf                                           ; $49cc: $37
    and $a1                                       ; $49cd: $e6 $a1

Jump_02e_49cf:
    rst $08                                       ; $49cf: $cf
    ld l, a                                       ; $49d0: $6f
    rla                                           ; $49d1: $17
    inc [hl]                                      ; $49d2: $34
    scf                                           ; $49d3: $37
    cp a                                          ; $49d4: $bf
    xor l                                         ; $49d5: $ad
    jr z, jr_02e_49ee                             ; $49d6: $28 $16

    ret c                                         ; $49d8: $d8

    ld a, c                                       ; $49d9: $79
    ld c, l                                       ; $49da: $4d
    or c                                          ; $49db: $b1
    ld c, a                                       ; $49dc: $4f
    adc d                                         ; $49dd: $8a
    pop hl                                        ; $49de: $e1
    rst $20                                       ; $49df: $e7
    sbc b                                         ; $49e0: $98
    add c                                         ; $49e1: $81
    sbc e                                         ; $49e2: $9b
    ld h, d                                       ; $49e3: $62
    ld bc, $62be                                  ; $49e4: $01 $be $62
    dec hl                                        ; $49e7: $2b
    jr jr_02e_498e                                ; $49e8: $18 $a4

    ld h, l                                       ; $49ea: $65
    ld b, b                                       ; $49eb: $40
    set 2, [hl]                                   ; $49ec: $cb $d6

jr_02e_49ee:
    sbc b                                         ; $49ee: $98
    rlca                                          ; $49ef: $07
    ld sp, $f1c3                                  ; $49f0: $31 $c3 $f1
    rst $30                                       ; $49f3: $f7
    rst $38                                       ; $49f4: $ff
    ld c, l                                       ; $49f5: $4d
    ld a, c                                       ; $49f6: $79
    dec bc                                        ; $49f7: $0b
    and a                                         ; $49f8: $a7
    ccf                                           ; $49f9: $3f
    adc b                                         ; $49fa: $88
    dec [hl]                                      ; $49fb: $35
    rrca                                          ; $49fc: $0f
    jr jr_02e_499c                                ; $49fd: $18 $9d

    ccf                                           ; $49ff: $3f
    ld b, [hl]                                    ; $4a00: $46
    rra                                           ; $4a01: $1f
    ld a, l                                       ; $4a02: $7d
    add $e8                                       ; $4a03: $c6 $e8
    ld e, d                                       ; $4a05: $5a
    push af                                       ; $4a06: $f5
    ld [hl], b                                    ; $4a07: $70
    add c                                         ; $4a08: $81
    ld h, e                                       ; $4a09: $63
    ld e, $c4                                     ; $4a0a: $1e $c4
    sbc b                                         ; $4a0c: $98
    rlca                                          ; $4a0d: $07
    ld b, l                                       ; $4a0e: $45
    rst $20                                       ; $4a0f: $e7
    rst $20                                       ; $4a10: $e7
    xor e                                         ; $4a11: $ab
    xor a                                         ; $4a12: $af
    ld e, l                                       ; $4a13: $5d
    rst $28                                       ; $4a14: $ef
    ld a, a                                       ; $4a15: $7f
    jp $e358                                      ; $4a16: $c3 $58 $e3


    adc d                                         ; $4a19: $8a
    inc c                                         ; $4a1a: $0c
    ld l, b                                       ; $4a1b: $68
    db $f4                                        ; $4a1c: $f4
    add b                                         ; $4a1d: $80
    inc d                                         ; $4a1e: $14
    dec hl                                        ; $4a1f: $2b
    adc d                                         ; $4a20: $8a
    dec [hl]                                      ; $4a21: $35
    push bc                                       ; $4a22: $c5
    ld a, $29                                     ; $4a23: $3e $29
    ld a, [c]                                     ; $4a25: $f2
    ld d, $27                                     ; $4a26: $16 $27
    cp [hl]                                       ; $4a28: $be
    sbc a                                         ; $4a29: $9f
    inc e                                         ; $4a2a: $1c
    sub [hl]                                      ; $4a2b: $96
    ld sp, $b406                                  ; $4a2c: $31 $06 $b4
    ld a, [bc]                                    ; $4a2f: $0a
    dec b                                         ; $4a30: $05
    sbc l                                         ; $4a31: $9d
    sub a                                         ; $4a32: $97
    ld bc, $fb2d                                  ; $4a33: $01 $2d $fb
    ld l, [hl]                                    ; $4a36: $6e
    ld c, l                                       ; $4a37: $4d
    db $e3                                        ; $4a38: $e3
    ld a, [$a35f]                                 ; $4a39: $fa $5f $a3
    rlca                                          ; $4a3c: $07
    or h                                          ; $4a3d: $b4
    db $10                                        ; $4a3e: $10
    sub h                                         ; $4a3f: $94
    cp h                                          ; $4a40: $bc
    dec b                                         ; $4a41: $05
    daa                                           ; $4a42: $27
    ld l, d                                       ; $4a43: $6a
    ld l, [hl]                                    ; $4a44: $6e
    sub l                                         ; $4a45: $95
    ld b, l                                       ; $4a46: $45
    ld l, b                                       ; $4a47: $68
    adc l                                         ; $4a48: $8d
    push bc                                       ; $4a49: $c5
    adc d                                         ; $4a4a: $8a
    ld h, d                                       ; $4a4b: $62
    or a                                          ; $4a4c: $b7
    ld b, $bf                                     ; $4a4d: $06 $bf
    and d                                         ; $4a4f: $a2
    ld [hl], $b1                                  ; $4a50: $36 $b1
    dec b                                         ; $4a52: $05
    ld e, c                                       ; $4a53: $59
    xor a                                         ; $4a54: $af
    xor d                                         ; $4a55: $aa
    inc [hl]                                      ; $4a56: $34
    and $41                                       ; $4a57: $e6 $41
    adc h                                         ; $4a59: $8c
    ld a, c                                       ; $4a5a: $79
    ld d, b                                       ; $4a5b: $50
    ld [hl], h                                    ; $4a5c: $74
    ld a, [hl]                                    ; $4a5d: $7e
    sbc $02                                       ; $4a5e: $de $02
    add a                                         ; $4a60: $87
    adc a                                         ; $4a61: $8f
    ld e, $d0                                     ; $4a62: $1e $d0
    ld [$dcac], a                                 ; $4a64: $ea $ac $dc
    reti                                          ; $4a67: $d9


    ld [bc], a                                    ; $4a68: $02
    ld d, a                                       ; $4a69: $57
    ld [hl], d                                    ; $4a6a: $72
    rst $00                                       ; $4a6b: $c7
    sbc d                                         ; $4a6c: $9a
    ld a, e                                       ; $4a6d: $7b
    ld c, l                                       ; $4a6e: $4d
    sbc $02                                       ; $4a6f: $de $02
    rst $00                                       ; $4a71: $c7
    sub l                                         ; $4a72: $95
    and l                                         ; $4a73: $a5
    dec c                                         ; $4a74: $0d
    cp b                                          ; $4a75: $b8
    dec de                                        ; $4a76: $1b
    jp nc, $b62e                                  ; $4a77: $d2 $2e $b6

    db $fc                                        ; $4a7a: $fc
    ld h, d                                       ; $4a7b: $62
    set 0, a                                      ; $4a7c: $cb $c7
    push bc                                       ; $4a7e: $c5
    ld a, [hl]                                    ; $4a7f: $7e
    ld e, $c9                                     ; $4a80: $1e $c9
    dec e                                         ; $4a82: $1d
    ld l, e                                       ; $4a83: $6b
    xor $35                                       ; $4a84: $ee $35
    ld a, c                                       ; $4a86: $79
    dec bc                                        ; $4a87: $0b
    rst $00                                       ; $4a88: $c7
    sub l                                         ; $4a89: $95
    db $fd                                        ; $4a8a: $fd
    ld a, e                                       ; $4a8b: $7b
    call $8d6c                                    ; $4a8c: $cd $6c $8d
    push bc                                       ; $4a8f: $c5
    cp b                                          ; $4a90: $b8
    sub $14                                       ; $4a91: $d6 $14
    ei                                            ; $4a93: $fb
    and h                                         ; $4a94: $a4
    jr @+$60                                      ; $4a95: $18 $5e

    sbc b                                         ; $4a97: $98
    call c, $e6b1                                 ; $4a98: $dc $b1 $e6
    ld e, [hl]                                    ; $4a9b: $5e
    sub e                                         ; $4a9c: $93
    or a                                          ; $4a9d: $b7
    ld e, c                                       ; $4a9e: $59
    ld [hl], a                                    ; $4a9f: $77
    dec b                                         ; $4aa0: $05
    dec c                                         ; $4aa1: $0d
    cp $b8                                        ; $4aa2: $fe $b8
    sbc b                                         ; $4aa4: $98
    add a                                         ; $4aa5: $87
    ld a, $ae                                     ; $4aa6: $3e $ae
    dec [hl]                                      ; $4aa8: $35
    ld b, l                                       ; $4aa9: $45
    ld hl, sp+$67                                 ; $4aaa: $f8 $67
    add sp, -$37                                  ; $4aac: $e8 $c9
    dec e                                         ; $4aae: $1d
    ld l, e                                       ; $4aaf: $6b
    xor $35                                       ; $4ab0: $ee $35
    ld a, c                                       ; $4ab2: $79
    dec bc                                        ; $4ab3: $0b
    sbc l                                         ; $4ab4: $9d
    ld h, b                                       ; $4ab5: $60
    rst $10                                       ; $4ab6: $d7
    ei                                            ; $4ab7: $fb
    rst $18                                       ; $4ab8: $df
    jr nc, jr_02e_4ac1                            ; $4ab9: $30 $06

    ld a, a                                       ; $4abb: $7f
    xor c                                         ; $4abc: $a9
    rst $30                                       ; $4abd: $f7
    and a                                         ; $4abe: $a7
    rst $08                                       ; $4abf: $cf
    db $fd                                        ; $4ac0: $fd

jr_02e_4ac1:
    ld hl, $79ad                                  ; $4ac1: $21 $ad $79
    ldh [rNR44], a                                ; $4ac4: $e0 $23
    ld a, a                                       ; $4ac6: $7f
    ret nz                                        ; $4ac7: $c0

    ret z                                         ; $4ac8: $c8

    rst $00                                       ; $4ac9: $c7
    dec d                                         ; $4aca: $15
    ld l, e                                       ; $4acb: $6b
    adc d                                         ; $4acc: $8a
    ld a, l                                       ; $4acd: $7d
    ld d, d                                       ; $4ace: $52
    call nc, $da1e                                ; $4acf: $d4 $1e $da
    ld [bc], a                                    ; $4ad2: $02
    and a                                         ; $4ad3: $a7
    xor b                                         ; $4ad4: $a8
    xor c                                         ; $4ad5: $a9
    db $eb                                        ; $4ad6: $eb
    ld e, d                                       ; $4ad7: $5a
    ld d, c                                       ; $4ad8: $51
    adc h                                         ; $4ad9: $8c
    ld e, $a4                                     ; $4ada: $1e $a4
    db $d3                                        ; $4adc: $d3
    adc d                                         ; $4add: $8a
    pop af                                        ; $4ade: $f1
    dec sp                                        ; $4adf: $3b
    ld e, e                                       ; $4ae0: $5b
    sbc [hl]                                      ; $4ae1: $9e
    jp nc, $afe0                                  ; $4ae2: $d2 $e0 $af

    ld de, $852c                                  ; $4ae5: $11 $2c $85
    rst $20                                       ; $4ae8: $e7
    sbc e                                         ; $4ae9: $9b
    cp e                                          ; $4aea: $bb
    ld [hl+], a                                   ; $4aeb: $22
    rst $18                                       ; $4aec: $df
    ld d, c                                       ; $4aed: $51
    and l                                         ; $4aee: $a5
    jr z, jr_02e_4b57                             ; $4aef: $28 $66

    add hl, hl                                    ; $4af1: $29
    ld b, a                                       ; $4af2: $47
    jp nc, $c5a7                                  ; $4af3: $d2 $a7 $c5

    inc bc                                        ; $4af6: $03
    ld b, [hl]                                    ; $4af7: $46
    sbc a                                         ; $4af8: $9f
    add $15                                       ; $4af9: $c6 $15
    ld l, e                                       ; $4afb: $6b
    adc d                                         ; $4afc: $8a
    ld a, l                                       ; $4afd: $7d
    ld d, d                                       ; $4afe: $52
    db $ec                                        ; $4aff: $ec
    pop bc                                        ; $4b00: $c1
    ld hl, sp-$23                                 ; $4b01: $f8 $dd
    add b                                         ; $4b03: $80
    ld e, h                                       ; $4b04: $5c
    ld sp, $2cfc                                  ; $4b05: $31 $fc $2c
    cp a                                          ; $4b08: $bf
    ld [hl], c                                    ; $4b09: $71
    call nc, Call_000_18a7                        ; $4b0a: $d4 $a7 $18
    rst $10                                       ; $4b0d: $d7
    sbc d                                         ; $4b0e: $9a
    ld b, a                                       ; $4b0f: $47
    ld hl, sp+$7e                                 ; $4b10: $f8 $7e
    sbc $02                                       ; $4b12: $de $02
    dec e                                         ; $4b14: $1d
    inc c                                         ; $4b15: $0c
    ld h, e                                       ; $4b16: $63
    rst $38                                       ; $4b17: $ff
    cp $20                                        ; $4b18: $fe $20
    ld d, l                                       ; $4b1a: $55
    ld d, b                                       ; $4b1b: $50
    ld l, e                                       ; $4b1c: $6b
    inc l                                         ; $4b1d: $2c
    add $b5                                       ; $4b1e: $c6 $b5
    ld c, d                                       ; $4b20: $4a
    ld b, h                                       ; $4b21: $44
    xor [hl]                                      ; $4b22: $ae
    sub c                                         ; $4b23: $91
    ld h, d                                       ; $4b24: $62
    inc l                                         ; $4b25: $2c
    ei                                            ; $4b26: $fb
    inc d                                         ; $4b27: $14
    db $d3                                        ; $4b28: $d3
    rst $18                                       ; $4b29: $df
    dec b                                         ; $4b2a: $05
    add sp, -$1d                                  ; $4b2b: $e8 $e3
    ld a, [de]                                    ; $4b2d: $1a
    ld [hl], a                                    ; $4b2e: $77
    ld h, e                                       ; $4b2f: $63
    cp l                                          ; $4b30: $bd
    ccf                                           ; $4b31: $3f
    ld h, e                                       ; $4b32: $63
    db $ec                                        ; $4b33: $ec
    db $d3                                        ; $4b34: $d3
    cp b                                          ; $4b35: $b8
    ld d, [hl]                                    ; $4b36: $56
    inc d                                         ; $4b37: $14
    ld [hl], e                                    ; $4b38: $73
    xor e                                         ; $4b39: $ab
    inc l                                         ; $4b3a: $2c
    ld b, d                                       ; $4b3b: $42
    sbc [hl]                                      ; $4b3c: $9e
    cpl                                           ; $4b3d: $2f

Call_02e_4b3e:
    ld c, e                                       ; $4b3e: $4b
    ld c, [hl]                                    ; $4b3f: $4e
    add [hl]                                      ; $4b40: $86
    ld e, a                                       ; $4b41: $5f
    or c                                          ; $4b42: $b1
    and [hl]                                      ; $4b43: $a6
    ret c                                         ; $4b44: $d8

    daa                                           ; $4b45: $27
    push bc                                       ; $4b46: $c5
    inc e                                         ; $4b47: $1c
    inc hl                                        ; $4b48: $23
    inc bc                                        ; $4b49: $03
    ld [hl], d                                    ; $4b4a: $72
    ld b, e                                       ; $4b4b: $43
    ld a, l                                       ; $4b4c: $7d
    ld a, [de]                                    ; $4b4d: $1a
    rst $10                                       ; $4b4e: $d7
    ld c, b                                       ; $4b4f: $48
    ld c, e                                       ; $4b50: $4b
    dec d                                         ; $4b51: $15
    ld b, l                                       ; $4b52: $45
    ret z                                         ; $4b53: $c8

    di                                            ; $4b54: $f3
    ld d, $c7                                     ; $4b55: $16 $c7

jr_02e_4b57:
    ld a, [de]                                    ; $4b57: $1a
    res 2, c                                      ; $4b58: $cb $91
    daa                                           ; $4b5a: $27
    rst $00                                       ; $4b5b: $c7
    inc a                                         ; $4b5c: $3c
    adc b                                         ; $4b5d: $88
    ld e, l                                       ; $4b5e: $5d
    rst $28                                       ; $4b5f: $ef
    ld a, a                                       ; $4b60: $7f
    jp $9d08                                      ; $4b61: $c3 $08 $9d


    ccf                                           ; $4b64: $3f
    ld hl, sp-$2d                                 ; $4b65: $f8 $d3
    rst $20                                       ; $4b67: $e7
    cp $90                                        ; $4b68: $fe $90
    or $ba                                        ; $4b6a: $f6 $ba
    rra                                           ; $4b6c: $1f
    ld sp, hl                                     ; $4b6d: $f9
    inc bc                                        ; $4b6e: $03
    ld b, [hl]                                    ; $4b6f: $46
    ld a, $ae                                     ; $4b70: $3e $ae
    ld e, b                                       ; $4b72: $58
    ld d, e                                       ; $4b73: $53
    db $ec                                        ; $4b74: $ec
    sub e                                         ; $4b75: $93
    and d                                         ; $4b76: $a2
    or $d0                                        ; $4b77: $f6 $d0
    ld d, $87                                     ; $4b79: $16 $87
    or e                                          ; $4b7b: $b3
    sub e                                         ; $4b7c: $93
    inc hl                                        ; $4b7d: $23
    sbc b                                         ; $4b7e: $98
    xor e                                         ; $4b7f: $ab
    ld l, d                                       ; $4b80: $6a
    ld a, [bc]                                    ; $4b81: $0a
    add $e8                                       ; $4b82: $c6 $e8
    db $fd                                        ; $4b84: $fd
    jp hl                                         ; $4b85: $e9


    ld e, a                                       ; $4b86: $5f
    dec [hl]                                      ; $4b87: $35
    ld d, a                                       ; $4b88: $57
    ld a, c                                       ; $4b89: $79
    call $a38d                                    ; $4b8a: $cd $8d $a3
    sub d                                         ; $4b8d: $92
    cp e                                          ; $4b8e: $bb
    xor $0a                                       ; $4b8f: $ee $0a
    ld e, d                                       ; $4b91: $5a
    adc a                                         ; $4b92: $8f
    ld d, [hl]                                    ; $4b93: $56
    ld a, e                                       ; $4b94: $7b
    add sp, -$4e                                  ; $4b95: $e8 $b2
    ret c                                         ; $4b97: $d8

    ld a, [c]                                     ; $4b98: $f2
    adc e                                         ; $4b99: $8b
    xor l                                         ; $4b9a: $ad
    and l                                         ; $4b9b: $a5
    ld d, b                                       ; $4b9c: $50
    ld a, a                                       ; $4b9d: $7f
    call c, $ac7e                                 ; $4b9e: $dc $7e $ac
    jr z, @+$48                                   ; $4ba1: $28 $46

    rrca                                          ; $4ba3: $0f
    jp nc, $c569                                  ; $4ba4: $d2 $69 $c5

    ld hl, sp-$63                                 ; $4ba7: $f8 $9d
    dec l                                         ; $4ba9: $2d
    ld c, a                                       ; $4baa: $4f
    add hl, hl                                    ; $4bab: $29
    ld b, $7f                                     ; $4bac: $06 $7f
    adc l                                         ; $4bae: $8d
    ld h, b                                       ; $4baf: $60
    scf                                           ; $4bb0: $37
    ld [hl], d                                    ; $4bb1: $72
    ei                                            ; $4bb2: $fb
    inc l                                         ; $4bb3: $2c
    ld b, l                                       ; $4bb4: $45
    ld [hl], d                                    ; $4bb5: $72
    inc b                                         ; $4bb6: $04
    ld h, e                                       ; $4bb7: $63
    ld e, $46                                     ; $4bb8: $1e $46
    ld [hl], d                                    ; $4bba: $72
    ld a, b                                       ; $4bbb: $78
    pop hl                                        ; $4bbc: $e1
    ld b, h                                       ; $4bbd: $44
    dec hl                                        ; $4bbe: $2b
    ld [hl], l                                    ; $4bbf: $75
    ld a, [c]                                     ; $4bc0: $f2
    inc a                                         ; $4bc1: $3c
    ld e, a                                       ; $4bc2: $5f
    db $fd                                        ; $4bc3: $fd
    cp e                                          ; $4bc4: $bb
    pop hl                                        ; $4bc5: $e1
    jr @+$1a                                      ; $4bc6: $18 $18

    add a                                         ; $4bc8: $87
    ld [hl], c                                    ; $4bc9: $71
    cp h                                          ; $4bca: $bc
    ret z                                         ; $4bcb: $c8

    ld a, [hl+]                                   ; $4bcc: $2a
    adc l                                         ; $4bcd: $8d
    db $db                                        ; $4bce: $db
    adc a                                         ; $4bcf: $8f
    dec d                                         ; $4bd0: $15
    db $ed                                        ; $4bd1: $ed
    ld a, d                                       ; $4bd2: $7a
    ld hl, sp-$6d                                 ; $4bd3: $f8 $93
    xor e                                         ; $4bd5: $ab
    inc c                                         ; $4bd6: $0c
    ld h, e                                       ; $4bd7: $63
    rst $10                                       ; $4bd8: $d7
    xor e                                         ; $4bd9: $ab
    ld a, [hl+]                                   ; $4bda: $2a
    xor l                                         ; $4bdb: $ad
    ld b, a                                       ; $4bdc: $47
    ld e, e                                       ; $4bdd: $5b
    jp c, Jump_02e_7690                           ; $4bde: $da $90 $76

    inc hl                                        ; $4be1: $23
    ld sp, hl                                     ; $4be2: $f9
    rlca                                          ; $4be3: $07
    ld sp, hl                                     ; $4be4: $f9
    adc d                                         ; $4be5: $8a
    ld h, d                                       ; $4be6: $62
    call c, $f58d                                 ; $4be7: $dc $8d $f5
    ld a, [hl]                                    ; $4bea: $7e
    inc h                                         ; $4beb: $24
    sub a                                         ; $4bec: $97
    xor l                                         ; $4bed: $ad
    sub l                                         ; $4bee: $95
    cp e                                          ; $4bef: $bb
    pop hl                                        ; $4bf0: $e1
    call z, $2edd                                 ; $4bf1: $cc $dd $2e
    or $2d                                        ; $4bf4: $f6 $2d
    ld l, a                                       ; $4bf6: $6f
    ld bc, $2a47                                  ; $4bf7: $01 $47 $2a
    add $dd                                       ; $4bfa: $c6 $dd
    ld e, b                                       ; $4bfc: $58
    rst $28                                       ; $4bfd: $ef
    ld b, a                                       ; $4bfe: $47
    db $ed                                        ; $4bff: $ed
    and c                                         ; $4c00: $a1
    dec l                                         ; $4c01: $2d
    ld b, a                                       ; $4c02: $47
    ld bc, $cf3b                                  ; $4c03: $01 $3b $cf
    di                                            ; $4c06: $f3
    ld h, l                                       ; $4c07: $65
    rst $18                                       ; $4c08: $df
    dec c                                         ; $4c09: $0d
    rst $00                                       ; $4c0a: $c7
    sub c                                         ; $4c0b: $91
    add $dd                                       ; $4c0c: $c6 $dd
    ld e, b                                       ; $4c0e: $58
    rst $28                                       ; $4c0f: $ef
    ld b, a                                       ; $4c10: $47
    db $ed                                        ; $4c11: $ed
    and c                                         ; $4c12: $a1
    dec sp                                        ; $4c13: $3b
    ld [$f1a7], a                                 ; $4c14: $ea $a7 $f1
    daa                                           ; $4c17: $27
    sub a                                         ; $4c18: $97
    xor l                                         ; $4c19: $ad
    ld sp, $8a0f                                  ; $4c1a: $31 $0f $8a
    ld h, c                                       ; $4c1d: $61
    xor h                                         ; $4c1e: $ac
    ld sp, $f22f                                  ; $4c1f: $31 $2f $f2
    ld [hl], c                                    ; $4c22: $71
    push hl                                       ; $4c23: $e5
    ld a, c                                       ; $4c24: $79
    cp [hl]                                       ; $4c25: $be
    inc l                                         ; $4c26: $2c
    ld a, a                                       ; $4c27: $7f
    rst $10                                       ; $4c28: $d7
    cp c                                          ; $4c29: $b9
    inc e                                         ; $4c2a: $1c
    inc a                                         ; $4c2b: $3c
    cp c                                          ; $4c2c: $b9
    ld [$5dfd], a                                 ; $4c2d: $ea $fd $5d
    ld l, h                                       ; $4c30: $6c
    call nc, $f3cf                                ; $4c31: $d4 $cf $f3
    ld a, h                                       ; $4c34: $7c
    dec a                                         ; $4c35: $3d
    jp c, $86d2                                   ; $4c36: $da $d2 $86

    or h                                          ; $4c39: $b4
    dec de                                        ; $4c3a: $1b
    ret                                           ; $4c3b: $c9


    ccf                                           ; $4c3c: $3f
    ret z                                         ; $4c3d: $c8

    sub a                                         ; $4c3e: $97
    push hl                                       ; $4c3f: $e5
    rst $28                                       ; $4c40: $ef
    ld a, [hl-]                                   ; $4c41: $3a
    sub a                                         ; $4c42: $97
    add e                                         ; $4c43: $83
    rst $20                                       ; $4c44: $e7
    dec sp                                        ; $4c45: $3b
    jp hl                                         ; $4c46: $e9


    cpl                                           ; $4c47: $2f
    inc [hl]                                      ; $4c48: $34
    ld b, [hl]                                    ; $4c49: $46
    xor $b6                                       ; $4c4a: $ee $b6
    and [hl]                                      ; $4c4c: $a6
    ld b, b                                       ; $4c4d: $40
    adc h                                         ; $4c4e: $8c
    call z, Call_02e_7279                         ; $4c4f: $cc $79 $72
    rst $00                                       ; $4c52: $c7
    sbc d                                         ; $4c53: $9a
    ld a, e                                       ; $4c54: $7b
    ld c, l                                       ; $4c55: $4d
    sbc $02                                       ; $4c56: $de $02
    ld b, a                                       ; $4c58: $47
    cp h                                          ; $4c59: $bc
    sbc a                                         ; $4c5a: $9f
    db $fd                                        ; $4c5b: $fd
    ret nz                                        ; $4c5c: $c0

    sub e                                         ; $4c5d: $93
    dec sp                                        ; $4c5e: $3b
    sub $dc                                       ; $4c5f: $d6 $dc
    ld l, e                                       ; $4c61: $6b
    sub d                                         ; $4c62: $92
    set 0, b                                      ; $4c63: $cb $c0
    ld e, l                                       ; $4c65: $5d
    ld b, c                                       ; $4c66: $41
    push af                                       ; $4c67: $f5
    ld l, $2d                                     ; $4c68: $2e $2d
    inc bc                                        ; $4c6a: $03
    ld a, [de]                                    ; $4c6b: $1a
    pop bc                                        ; $4c6c: $c1
    inc l                                         ; $4c6d: $2c
    ld d, [hl]                                    ; $4c6e: $56
    ld [$1ed4], a                                 ; $4c6f: $ea $d4 $1e
    jp c, $1d02                                   ; $4c72: $da $02 $1d

    sbc $9f                                       ; $4c75: $de $9f
    cp $55                                        ; $4c77: $fe $55
    ld [hl], e                                    ; $4c79: $73
    sub l                                         ; $4c7a: $95
    rst $10                                       ; $4c7b: $d7
    call c, Call_02e_6a38                         ; $4c7c: $dc $38 $6a
    ld e, h                                       ; $4c7f: $5c
    ld sp, $2cfc                                  ; $4c80: $31 $fc $2c
    cp a                                          ; $4c83: $bf
    ld [hl], c                                    ; $4c84: $71
    call nc, $48a7                                ; $4c85: $d4 $a7 $48
    xor [hl]                                      ; $4c88: $ae
    ld a, c                                       ; $4c89: $79
    ldh [$2b], a                                  ; $4c8a: $e0 $2b
    jp c, $c0f5                                   ; $4c8c: $da $f5 $c0

    ld h, e                                       ; $4c8f: $63
    ld e, h                                       ; $4c90: $5c
    ld c, e                                       ; $4c91: $4b
    dec a                                         ; $4c92: $3d
    or d                                          ; $4c93: $b2
    adc a                                         ; $4c94: $8f
    add hl, de                                    ; $4c95: $19
    ld d, b                                       ; $4c96: $50
    sbc $02                                       ; $4c97: $de $02
    add a                                         ; $4c99: $87

jr_02e_4c9a:
    or e                                          ; $4c9a: $b3
    sub e                                         ; $4c9b: $93
    inc hl                                        ; $4c9c: $23
    ret c                                         ; $4c9d: $d8

    push bc                                       ; $4c9e: $c5
    sub [hl]                                      ; $4c9f: $96
    ld e, a                                       ; $4ca0: $5f
    ld l, h                                       ; $4ca1: $6c
    push bc                                       ; $4ca2: $c5
    cp b                                          ; $4ca3: $b8
    ld h, d                                       ; $4ca4: $62
    ld c, l                                       ; $4ca5: $4d
    or c                                          ; $4ca6: $b1
    ld c, a                                       ; $4ca7: $4f
    adc d                                         ; $4ca8: $8a
    ld a, h                                       ; $4ca9: $7c
    dec sp                                        ; $4caa: $3b
    xor [hl]                                      ; $4cab: $ae
    adc h                                         ; $4cac: $8c
    ld sp, $55a0                                  ; $4cad: $31 $a0 $55
    jr z, jr_02e_4c9a                             ; $4cb0: $28 $e8

    inc a                                         ; $4cb2: $3c
    ld d, a                                       ; $4cb3: $57
    sub b                                         ; $4cb4: $90
    ld a, h                                       ; $4cb5: $7c
    ld e, h                                       ; $4cb6: $5c

jr_02e_4cb7:
    db $ec                                        ; $4cb7: $ec
    rst $20                                       ; $4cb8: $e7
    or c                                          ; $4cb9: $b1
    ret nz                                        ; $4cba: $c0

    ld de, $118c                                  ; $4cbb: $11 $8c $11
    ld [hl], h                                    ; $4cbe: $74
    sbc [hl]                                      ; $4cbf: $9e
    cp $c8                                        ; $4cc0: $fe $c8
    rra                                           ; $4cc2: $1f
    jr nc, jr_02e_4cb7                            ; $4cc3: $30 $f2

    cp h                                          ; $4cc5: $bc
    dec b                                         ; $4cc6: $05
    push af                                       ; $4cc7: $f5
    or l                                          ; $4cc8: $b5
    add $1c                                       ; $4cc9: $c6 $1c
    or l                                          ; $4ccb: $b5
    inc c                                         ; $4ccc: $0c
    ld l, b                                       ; $4ccd: $68
    rst $10                                       ; $4cce: $d7
    ld e, l                                       ; $4ccf: $5d
    ld a, a                                       ; $4cd0: $7f
    ld a, [bc]                                    ; $4cd1: $0a
    ld a, [de]                                    ; $4cd2: $1a
    ld a, h                                       ; $4cd3: $7c
    push hl                                       ; $4cd4: $e5
    dec l                                         ; $4cd5: $2d
    push af                                       ; $4cd6: $f5
    rst $28                                       ; $4cd7: $ef
    add $18                                       ; $4cd8: $c6 $18
    add $dc                                       ; $4cda: $c6 $dc
    jr nc, @-$20                                  ; $4cdc: $30 $de

    ld c, a                                       ; $4cde: $4f
    xor $ba                                       ; $4cdf: $ee $ba
    dec hl                                        ; $4ce1: $2b
    ld l, b                                       ; $4ce2: $68
    ld e, h                                       ; $4ce3: $5c
    dec hl                                        ; $4ce4: $2b
    ld [hl], a                                    ; $4ce5: $77
    cp e                                          ; $4ce6: $bb
    sbc $47                                       ; $4ce7: $de $47
    jp z, $f55b                                   ; $4ce9: $ca $5b $f5

    or l                                          ; $4cec: $b5
    ld c, d                                       ; $4ced: $4a
    db $e3                                        ; $4cee: $e3
    xor d                                         ; $4cef: $aa
    db $ec                                        ; $4cf0: $ec
    ld [hl], e                                    ; $4cf1: $73
    db $ed                                        ; $4cf2: $ed
    jp nc, $a032                                  ; $4cf3: $d2 $32 $a0

    sub l                                         ; $4cf6: $95
    cp e                                          ; $4cf7: $bb
    cp $55                                        ; $4cf8: $fe $55
    ld [hl], e                                    ; $4cfa: $73
    sub l                                         ; $4cfb: $95
    rst $10                                       ; $4cfc: $d7
    call c, Call_02e_6a38                         ; $4cfd: $dc $38 $6a
    adc l                                         ; $4d00: $8d
    ld a, [hl]                                    ; $4d01: $7e
    ld l, b                                       ; $4d02: $68
    ld e, h                                       ; $4d03: $5c
    cp e                                          ; $4d04: $bb
    ld d, h                                       ; $4d05: $54
    adc d                                         ; $4d06: $8a
    ld [$985d], a                                 ; $4d07: $ea $5d $98
    or a                                          ; $4d0a: $b7
    add a                                         ; $4d0b: $87
    ld [hl], a                                    ; $4d0c: $77
    and e                                         ; $4d0d: $a3
    jp c, Jump_000_1dc4                           ; $4d0e: $da $c4 $1d

    ld d, l                                       ; $4d11: $55
    adc d                                         ; $4d12: $8a
    sub [hl]                                      ; $4d13: $96
    ld a, [c]                                     ; $4d14: $f2
    ld e, $8a                                     ; $4d15: $1e $8a
    ld l, d                                       ; $4d17: $6a
    inc de                                        ; $4d18: $13
    ld e, e                                       ; $4d19: $5b
    ld e, c                                       ; $4d1a: $59
    ld [hl], a                                    ; $4d1b: $77
    dec b                                         ; $4d1c: $05
    adc l                                         ; $4d1d: $8d
    jp Jump_02e_5e38                              ; $4d1e: $c3 $38 $5e


    ld h, h                                       ; $4d21: $64
    sub l                                         ; $4d22: $95
    ld a, [c]                                     ; $4d23: $f2
    ld d, $f5                                     ; $4d24: $16 $f5
    or l                                          ; $4d26: $b5
    rr a                                          ; $4d27: $cb $1f
    add $32                                       ; $4d29: $c6 $32
    and b                                         ; $4d2b: $a0
    ld e, l                                       ; $4d2c: $5d
    ld a, [hl+]                                   ; $4d2d: $2a
    ld b, l                                       ; $4d2e: $45
    push af                                       ; $4d2f: $f5
    ld c, d                                       ; $4d30: $4a
    sbc l                                         ; $4d31: $9d
    ld h, l                                       ; $4d32: $65
    ld l, e                                       ; $4d33: $6b
    push bc                                       ; $4d34: $c5
    halt                                          ; $4d35: $76
    cp l                                          ; $4d36: $bd
    rst $38                                       ; $4d37: $ff
    dec c                                         ; $4d38: $0d
    inc hl                                        ; $4d39: $23
    ld l, a                                       ; $4d3a: $6f
    ld bc, $0127                                  ; $4d3b: $01 $27 $01
    sub [hl]                                      ; $4d3e: $96
    and d                                         ; $4d3f: $a2
    db $e4                                        ; $4d40: $e4
    ld d, h                                       ; $4d41: $54
    adc d                                         ; $4d42: $8a
    sub $60                                       ; $4d43: $d6 $60
    ld b, $94                                     ; $4d45: $06 $94
    or a                                          ; $4d47: $b7
    ld e, c                                       ; $4d48: $59
    ld [hl], a                                    ; $4d49: $77
    dec b                                         ; $4d4a: $05
    db $ed                                        ; $4d4b: $ed
    jp nc, $a032                                  ; $4d4c: $d2 $32 $a0

    ld h, l                                       ; $4d4f: $65
    ld l, e                                       ; $4d50: $6b
    adc l                                         ; $4d51: $8d
    ld a, [hl]                                    ; $4d52: $7e
    jr jr_02e_4d9b                                ; $4d53: $18 $46

    sbc [hl]                                      ; $4d55: $9e
    rst $20                                       ; $4d56: $e7
    db $e3                                        ; $4d57: $e3
    adc d                                         ; $4d58: $8a
    dec a                                         ; $4d59: $3d
    daa                                           ; $4d5a: $27
    ld d, h                                       ; $4d5b: $54
    db $e4                                        ; $4d5c: $e4
    dec sp                                        ; $4d5d: $3b
    xor [hl]                                      ; $4d5e: $ae
    xor h                                         ; $4d5f: $ac
    ld h, [hl]                                    ; $4d60: $66
    ld a, [$c633]                                 ; $4d61: $fa $33 $c6
    sub b                                         ; $4d64: $90
    sub $14                                       ; $4d65: $d6 $14
    pop hl                                        ; $4d67: $e1
    rra                                           ; $4d68: $1f
    or a                                          ; $4d69: $b7
    rra                                           ; $4d6a: $1f
    dec hl                                        ; $4d6b: $2b
    ld e, d                                       ; $4d6c: $5a
    or [hl]                                       ; $4d6d: $b6
    add hl, sp                                    ; $4d6e: $39
    rst $00                                       ; $4d6f: $c7

jr_02e_4d70:
    ccf                                           ; $4d70: $3f
    xor [hl]                                      ; $4d71: $ae
    ret c                                         ; $4d72: $d8

    sub c                                         ; $4d73: $91
    ldh [rHDMA1], a                               ; $4d74: $e0 $51
    ld d, h                                       ; $4d76: $54
    sub e                                         ; $4d77: $93
    or a                                          ; $4d78: $b7
    ld e, c                                       ; $4d79: $59
    xor a                                         ; $4d7a: $af
    xor d                                         ; $4d7b: $aa
    inc [hl]                                      ; $4d7c: $34
    sub l                                         ; $4d7d: $95
    and d                                         ; $4d7e: $a2
    add hl, hl                                    ; $4d7f: $29
    ld l, b                                       ; $4d80: $68
    scf                                           ; $4d81: $37
    ld [hl], d                                    ; $4d82: $72
    ei                                            ; $4d83: $fb
    inc l                                         ; $4d84: $2c
    push hl                                       ; $4d85: $e5
    xor e                                         ; $4d86: $ab
    xor a                                         ; $4d87: $af
    ld d, l                                       ; $4d88: $55
    ld a, [de]                                    ; $4d89: $1a
    ld d, a                                       ; $4d8a: $57
    ld h, l                                       ; $4d8b: $65
    sbc a                                         ; $4d8c: $9f
    ld l, e                                       ; $4d8d: $6b
    sub a                                         ; $4d8e: $97
    sub [hl]                                      ; $4d8f: $96
    ld bc, $baed                                  ; $4d90: $01 $ed $ba
    dec hl                                        ; $4d93: $2b
    jr z, jr_02e_4e05                             ; $4d94: $28 $6f

    ld bc, $6827                                  ; $4d96: $01 $27 $68
    dec b                                         ; $4d99: $05
    add hl, de                                    ; $4d9a: $19

jr_02e_4d9b:
    rst $10                                       ; $4d9b: $d7
    jr c, jr_02e_4d70                             ; $4d9c: $38 $d2

    ld [hl-], a                                   ; $4d9e: $32
    and b                                         ; $4d9f: $a0
    ld e, l                                       ; $4da0: $5d
    ld [hl], a                                    ; $4da1: $77
    dec b                                         ; $4da2: $05
    adc l                                         ; $4da3: $8d
    ld l, e                                       ; $4da4: $6b
    push bc                                       ; $4da5: $c5
    and $76                                       ; $4da6: $e6 $76

Jump_02e_4da8:
    pop hl                                        ; $4da8: $e1
    rst $10                                       ; $4da9: $d7
    cp b                                          ; $4daa: $b8
    ld d, [hl]                                    ; $4dab: $56
    reti                                          ; $4dac: $d9


    rst $20                                       ; $4dad: $e7
    ld l, [hl]                                    ; $4dae: $6e
    xor h                                         ; $4daf: $ac
    rst $20                                       ; $4db0: $e7
    jp z, Jump_02e_475b                           ; $4db1: $ca $5b $47

    jp nz, Jump_000_35be                          ; $4db4: $c2 $be $35

    ld a, [hl+]                                   ; $4db7: $2a
    ld sp, hl                                     ; $4db8: $f9
    or d                                          ; $4db9: $b2
    ld l, h                                       ; $4dba: $6c
    ld l, c                                       ; $4dbb: $69
    ld b, e                                       ; $4dbc: $43
    ld a, [de]                                    ; $4dbd: $1a
    ld a, h                                       ; $4dbe: $7c
    xor l                                         ; $4dbf: $ad
    add hl, hl                                    ; $4dc0: $29
    or $49                                        ; $4dc1: $f6 $49
    db $e3                                        ; $4dc3: $e3
    ld e, d                                       ; $4dc4: $5a
    ld d, e                                       ; $4dc5: $53
    jr nz, jr_02e_4e32                            ; $4dc6: $20 $6a

    inc de                                        ; $4dc8: $13
    ld e, e                                       ; $4dc9: $5b
    add a                                         ; $4dca: $87
    ld a, e                                       ; $4dcb: $7b
    push af                                       ; $4dcc: $f5
    jr nc, @-$6a                                  ; $4dcd: $30 $94

    rst $28                                       ; $4dcf: $ef
    ld [$df3c], sp                                ; $4dd0: $08 $3c $df
    call c, $dc95                                 ; $4dd3: $dc $95 $dc
    and l                                         ; $4dd6: $a5
    db $fd                                        ; $4dd7: $fd
    ld d, a                                       ; $4dd8: $57
    push hl                                       ; $4dd9: $e5
    dec l                                         ; $4dda: $2d
    ld e, c                                       ; $4ddb: $59
    ld [hl], a                                    ; $4ddc: $77
    db $fd                                        ; $4ddd: $fd
    add hl, hl                                    ; $4dde: $29
    ld l, b                                       ; $4ddf: $68
    pop de                                        ; $4de0: $d1
    add e                                         ; $4de1: $83
    xor e                                         ; $4de2: $ab
    jp nc, $c1a7                                  ; $4de3: $d2 $a7 $c1

    ld d, a                                       ; $4de6: $57
    sbc $02                                       ; $4de7: $de $02
    dec e                                         ; $4de9: $1d
    inc c                                         ; $4dea: $0c
    ccf                                           ; $4deb: $3f
    jp hl                                         ; $4dec: $e9


    db $db                                        ; $4ded: $db
    and a                                         ; $4dee: $a7
    db $e4                                        ; $4def: $e4
    or d                                          ; $4df0: $b2
    rst $28                                       ; $4df1: $ef
    add [hl]                                      ; $4df2: $86
    db $e3                                        ; $4df3: $e3
    ld e, d                                       ; $4df4: $5a
    or c                                          ; $4df5: $b1
    cp c                                          ; $4df6: $b9
    ld e, l                                       ; $4df7: $5d
    ld hl, sp+$35                                 ; $4df8: $f8 $35
    ld a, [hl]                                    ; $4dfa: $7e
    or a                                          ; $4dfb: $b7
    ld l, b                                       ; $4dfc: $68
    ret c                                         ; $4dfd: $d8

    adc a                                         ; $4dfe: $8f
    rst $10                                       ; $4dff: $d7
    dec l                                         ; $4e00: $2d
    jp z, $a75b                                   ; $4e01: $ca $5b $a7

    ccf                                           ; $4e04: $3f

jr_02e_4e05:
    adc b                                         ; $4e05: $88
    db $fd                                        ; $4e06: $fd
    cp e                                          ; $4e07: $bb
    ld sp, $7f3a                                  ; $4e08: $31 $3a $7f
    adc l                                         ; $4e0b: $8d
    push bc                                       ; $4e0c: $c5
    db $f4                                        ; $4e0d: $f4
    xor a                                         ; $4e0e: $af
    rst $20                                       ; $4e0f: $e7
    ld e, d                                       ; $4e10: $5a
    ld a, [de]                                    ; $4e11: $1a
    ccf                                           ; $4e12: $3f
    ld h, $77                                     ; $4e13: $26 $77
    xor h                                         ; $4e15: $ac
    cp c                                          ; $4e16: $b9
    rst $10                                       ; $4e17: $d7
    db $e4                                        ; $4e18: $e4
    dec sp                                        ; $4e19: $3b
    ld b, l                                       ; $4e1a: $45
    db $f4                                        ; $4e1b: $f4
    ret nz                                        ; $4e1c: $c0

    cp a                                          ; $4e1d: $bf
    adc $1f                                       ; $4e1e: $ce $1f
    rla                                           ; $4e20: $17
    ei                                            ; $4e21: $fb
    ld a, c                                       ; $4e22: $79
    db $e4                                        ; $4e23: $e4

jr_02e_4e24:
    dec l                                         ; $4e24: $2d
    and a                                         ; $4e25: $a7
    ccf                                           ; $4e26: $3f
    ld [hl], d                                    ; $4e27: $72
    adc l                                         ; $4e28: $8d
    call c, $c318                                 ; $4e29: $dc $18 $c3
    or d                                          ; $4e2c: $b2
    ld a, a                                       ; $4e2d: $7f
    ld d, a                                       ; $4e2e: $57
    ret nc                                        ; $4e2f: $d0

    ld a, [de]                                    ; $4e30: $1a
    adc e                                         ; $4e31: $8b

jr_02e_4e32:
    add l                                         ; $4e32: $85
    ld de, $da46                                  ; $4e33: $11 $46 $da
    jr nc, jr_02e_4e24                            ; $4e36: $30 $ec

    ld d, e                                       ; $4e38: $53
    ld [hl], d                                    ; $4e39: $72
    dec e                                         ; $4e3a: $1d
    rra                                           ; $4e3b: $1f
    sub c                                         ; $4e3c: $91
    inc a                                         ; $4e3d: $3c
    rst $18                                       ; $4e3e: $df
    ld d, c                                       ; $4e3f: $51
    ld de, $a356                                  ; $4e40: $11 $56 $a3
    di                                            ; $4e43: $f3
    and a                                         ; $4e44: $a7
    ld a, a                                       ; $4e45: $7f
    dec a                                         ; $4e46: $3d
    ld d, a                                       ; $4e47: $57
    sbc $02                                       ; $4e48: $de $02
    ld e, c                                       ; $4e4a: $59
    ld [hl], a                                    ; $4e4b: $77
    dec b                                         ; $4e4c: $05
    xor l                                         ; $4e4d: $ad
    ret c                                         ; $4e4e: $d8

    ret z                                         ; $4e4f: $c8

    rra                                           ; $4e50: $1f
    ld b, $d6                                     ; $4e51: $06 $d6
    xor l                                         ; $4e53: $ad
    or h                                          ; $4e54: $b4
    db $f4                                        ; $4e55: $f4
    jp $0658                                      ; $4e56: $c3 $58 $06


    inc [hl]                                      ; $4e59: $34
    and $41                                       ; $4e5a: $e6 $41
    xor h                                         ; $4e5c: $ac
    jp nc, $9f5c                                  ; $4e5d: $d2 $5c $9f

    db $eb                                        ; $4e60: $eb
    db $fc                                        ; $4e61: $fc
    pop bc                                        ; $4e62: $c1
    rra                                           ; $4e63: $1f
    cp c                                          ; $4e64: $b9
    ld sp, $6586                                  ; $4e65: $31 $86 $65
    ld hl, sp-$13                                 ; $4e68: $f8 $ed
    ld h, d                                       ; $4e6a: $62
    adc e                                         ; $4e6b: $8b
    cp c                                          ; $4e6c: $b9
    push hl                                       ; $4e6d: $e5
    dec sp                                        ; $4e6e: $3b
    adc d                                         ; $4e6f: $8a
    sub [hl]                                      ; $4e70: $96
    xor l                                         ; $4e71: $ad
    ld e, l                                       ; $4e72: $5d
    xor a                                         ; $4e73: $af
    xor d                                         ; $4e74: $aa
    db $f4                                        ; $4e75: $f4
    cpl                                           ; $4e76: $2f
    xor l                                         ; $4e77: $ad
    adc $f4                                       ; $4e78: $ce $f4
    ld h, a                                       ; $4e7a: $67
    call z, $9f43                                 ; $4e7b: $cc $43 $9f
    ld b, l                                       ; $4e7e: $45
    add sp, -$04                                  ; $4e7f: $e8 $fc
    dec e                                         ; $4e81: $1d
    or d                                          ; $4e82: $b2
    adc e                                         ; $4e83: $8b
    ld l, l                                       ; $4e84: $6d
    add hl, de                                    ; $4e85: $19
    ret nc                                        ; $4e86: $d0

    jp nc, Jump_02e_630f                          ; $4e87: $d2 $0f $63

    add hl, de                                    ; $4e8a: $19
    ret nc                                        ; $4e8b: $d0

    sbc b                                         ; $4e8c: $98
    rlca                                          ; $4e8d: $07
    or c                                          ; $4e8e: $b1
    ld c, d                                       ; $4e8f: $4a
    db $e3                                        ; $4e90: $e3
    scf                                           ; $4e91: $37
    or a                                          ; $4e92: $b7
    rst $08                                       ; $4e93: $cf
    sub d                                         ; $4e94: $92
    db $eb                                        ; $4e95: $eb

jr_02e_4e96:
    db $fc                                        ; $4e96: $fc
    ld e, c                                       ; $4e97: $59
    ld a, c                                       ; $4e98: $79
    ld e, $cb                                     ; $4e99: $1e $cb
    add b                                         ; $4e9b: $80
    add $3c                                       ; $4e9c: $c6 $3c
    adc b                                         ; $4e9e: $88
    db $fd                                        ; $4e9f: $fd
    cp e                                          ; $4ea0: $bb
    ld sp, $7f3a                                  ; $4ea1: $31 $3a $7f
    adc l                                         ; $4ea4: $8d
    push bc                                       ; $4ea5: $c5
    jp nc, Jump_02e_71f8                          ; $4ea6: $d2 $f8 $71

    call z, $d723                                 ; $4ea9: $cc $23 $d7
    cp b                                          ; $4eac: $b8
    sbc b                                         ; $4ead: $98
    add a                                         ; $4eae: $87
    sbc [hl]                                      ; $4eaf: $9e
    ld e, h                                       ; $4eb0: $5c
    or [hl]                                       ; $4eb1: $b6
    and $22                                       ; $4eb2: $e6 $22
    ld [hl], h                                    ; $4eb4: $74
    cp c                                          ; $4eb5: $b9
    pop hl                                        ; $4eb6: $e1
    ld a, [$f35a]                                 ; $4eb7: $fa $5a $f3
    ldh a, [$d3]                                  ; $4eba: $f0 $d3
    ld [$798c], a                                 ; $4ebc: $ea $8c $79
    db $e4                                        ; $4ebf: $e4
    ld e, d                                       ; $4ec0: $5a
    ld h, l                                       ; $4ec1: $65
    jr @-$0f                                      ; $4ec2: $18 $ef

    rst $10                                       ; $4ec4: $d7
    ld h, $b6                                     ; $4ec5: $26 $b6
    ld b, a                                       ; $4ec7: $47
    ld [hl], l                                    ; $4ec8: $75
    cp [hl]                                       ; $4ec9: $be
    ld d, h                                       ; $4eca: $54
    adc d                                         ; $4ecb: $8a
    ld a, $8d                                     ; $4ecc: $3e $8d
    call c, $c318                                 ; $4ece: $dc $18 $c3
    sub d                                         ; $4ed1: $92
    call c, $e6b1                                 ; $4ed2: $dc $b1 $e6
    ld e, [hl]                                    ; $4ed5: $5e
    sub e                                         ; $4ed6: $93
    rst $28                                       ; $4ed7: $ef
    db $f4                                        ; $4ed8: $f4
    rlca                                          ; $4ed9: $07
    or c                                          ; $4eda: $b1
    xor [hl]                                      ; $4edb: $ae
    ld c, c                                       ; $4edc: $49
    or c                                          ; $4edd: $b1
    and d                                         ; $4ede: $a2
    dec [hl]                                      ; $4edf: $35
    xor [hl]                                      ; $4ee0: $ae
    ld a, [bc]                                    ; $4ee1: $0a
    push hl                                       ; $4ee2: $e5
    xor e                                         ; $4ee3: $ab
    inc sp                                        ; $4ee4: $33
    ld h, e                                       ; $4ee5: $63
    ld e, $fa                                     ; $4ee6: $1e $fa
    ld c, b                                       ; $4ee8: $48
    ld e, [hl]                                    ; $4ee9: $5e
    pop hl                                        ; $4eea: $e1
    cp a                                          ; $4eeb: $bf
    adc l                                         ; $4eec: $8d
    ld a, c                                       ; $4eed: $79
    db $e4                                        ; $4eee: $e4
    ld a, [de]                                    ; $4eef: $1a
    rla                                           ; $4ef0: $17
    di                                            ; $4ef1: $f3
    ret nc                                        ; $4ef2: $d0

    di                                            ; $4ef3: $f3
    dec e                                         ; $4ef4: $1d
    push af                                       ; $4ef5: $f5
    rst $20                                       ; $4ef6: $e7
    or a                                          ; $4ef7: $b7
    db $eb                                        ; $4ef8: $eb
    ld d, l                                       ; $4ef9: $55
    adc l                                         ; $4efa: $8d
    ld a, [hl]                                    ; $4efb: $7e
    jr z, @+$3b                                   ; $4efc: $28 $39

    and $41                                       ; $4efe: $e6 $41
    call z, Call_02e_75c0                         ; $4f00: $cc $c0 $75
    cp $b8                                        ; $4f03: $fe $b8
    and b                                         ; $4f05: $a0
    di                                            ; $4f06: $f3
    jp nc, Jump_000_2bcf                          ; $4f07: $d2 $cf $2b

    jr z, jr_02e_4e96                             ; $4f0a: $28 $8a

    ld [hl], c                                    ; $4f0c: $71
    xor l                                         ; $4f0d: $ad
    ld a, c                                       ; $4f0e: $79
    add h                                         ; $4f0f: $84
    rst $28                                       ; $4f10: $ef
    ld b, a                                       ; $4f11: $47
    cp [hl]                                       ; $4f12: $be
    jp $d14b                                      ; $4f13: $c3 $4b $d1


    ld sp, hl                                     ; $4f16: $f9
    ld h, e                                       ; $4f17: $63
    ld e, $fa                                     ; $4f18: $1e $fa
    adc d                                         ; $4f1a: $8a
    sub $f8                                       ; $4f1b: $d6 $f8
    ld c, e                                       ; $4f1d: $4b
    dec hl                                        ; $4f1e: $2b
    ld b, d                                       ; $4f1f: $42
    ldh [$3b], a                                  ; $4f20: $e0 $3b
    push hl                                       ; $4f22: $e5
    or c                                          ; $4f23: $b1
    ld b, b                                       ; $4f24: $40
    inc de                                        ; $4f25: $13
    adc l                                         ; $4f26: $8d
    inc hl                                        ; $4f27: $23
    add hl, hl                                    ; $4f28: $29
    ld [$c015], a                                 ; $4f29: $ea $15 $c0
    ld h, l                                       ; $4f2c: $65
    ld b, b                                       ; $4f2d: $40
    cp e                                          ; $4f2e: $bb
    xor $0a                                       ; $4f2f: $ee $0a
    ld e, d                                       ; $4f31: $5a
    push af                                       ; $4f32: $f5
    ld [hl], b                                    ; $4f33: $70
    add hl, de                                    ; $4f34: $19
    ret nz                                        ; $4f35: $c0

    ld sp, $620f                                  ; $4f36: $31 $0f $62
    ld a, [$43cc]                                 ; $4f39: $fa $cc $43
    push hl                                       ; $4f3c: $e5
    dec l                                         ; $4f3d: $2d
    daa                                           ; $4f3e: $27
    ld l, b                                       ; $4f3f: $68
    adc l                                         ; $4f40: $8d
    cp a                                          ; $4f41: $bf
    or h                                          ; $4f42: $b4

Call_02e_4f43:
    ld [hl+], a                                   ; $4f43: $22
    inc b                                         ; $4f44: $04
    cp [hl]                                       ; $4f45: $be
    ld d, e                                       ; $4f46: $53
    ld e, $0b                                     ; $4f47: $1e $0b
    ld d, h                                       ; $4f49: $54
    ld a, e                                       ; $4f4a: $7b
    ld l, b                                       ; $4f4b: $68
    ld h, d                                       ; $4f4c: $62
    dec bc                                        ; $4f4d: $0b
    ld b, a                                       ; $4f4e: $47
    pop de                                        ; $4f4f: $d1
    ld l, $b6                                     ; $4f50: $2e $b6
    adc $5f                                       ; $4f52: $ce $5f
    ld b, $70                                     ; $4f54: $06 $70
    call z, $a283                                 ; $4f56: $cc $83 $a2
    di                                            ; $4f59: $f3
    db $eb                                        ; $4f5a: $eb
    ld sp, $620f                                  ; $4f5b: $31 $0f $62
    sub $34                                       ; $4f5e: $d6 $34
    xor [hl]                                      ; $4f60: $ae
    rst $08                                       ; $4f61: $cf
    ld e, l                                       ; $4f62: $5d
    dec hl                                        ; $4f63: $2b
    adc d                                         ; $4f64: $8a

jr_02e_4f65:
    cp c                                          ; $4f65: $b9
    ld l, $11                                     ; $4f66: $2e $11
    add hl, hl                                    ; $4f68: $29
    add $15                                       ; $4f69: $c6 $15
    ld l, e                                       ; $4f6b: $6b
    ld e, $e1                                     ; $4f6c: $1e $e1
    ei                                            ; $4f6e: $fb
    ld [hl], c                                    ; $4f6f: $71
    add sp, -$72                                  ; $4f70: $e8 $8e
    dec hl                                        ; $4f72: $2b
    db $e3                                        ; $4f73: $e3
    rrca                                          ; $4f74: $0f
    ld l, c                                       ; $4f75: $69
    ld e, l                                       ; $4f76: $5d
    sub e                                         ; $4f77: $93
    ld l, e                                       ; $4f78: $6b
    call c, $2c7e                                 ; $4f79: $dc $7e $2c
    sbc $5f                                       ; $4f7c: $de $5f
    ld a, [bc]                                    ; $4f7e: $0a
    ld e, h                                       ; $4f7f: $5c
    ld b, $d3                                     ; $4f80: $06 $d3
    rst $18                                       ; $4f82: $df
    and l                                         ; $4f83: $a5
    ld d, l                                       ; $4f84: $55
    xor a                                         ; $4f85: $af
    jp nc, Jump_02e_7ca7                          ; $4f86: $d2 $a7 $7c

    add a                                         ; $4f89: $87
    sub a                                         ; $4f8a: $97
    and d                                         ; $4f8b: $a2
    di                                            ; $4f8c: $f3
    ld d, a                                       ; $4f8d: $57
    inc [hl]                                      ; $4f8e: $34
    and $a1                                       ; $4f8f: $e6 $a1
    rst $20                                       ; $4f91: $e7
    dec l                                         ; $4f92: $2d
    daa                                           ; $4f93: $27
    jp Jump_02e_415d                              ; $4f94: $c3 $5d $41


    push af                                       ; $4f97: $f5
    ld l, $2d                                     ; $4f98: $2e $2d
    inc bc                                        ; $4f9a: $03
    ld a, [de]                                    ; $4f9b: $1a
    di                                            ; $4f9c: $f3
    jr nz, jr_02e_4f65                            ; $4f9d: $20 $c6

    inc a                                         ; $4f9f: $3c
    jr z, @+$3c                                   ; $4fa0: $28 $3a

    ccf                                           ; $4fa2: $3f
    cp c                                          ; $4fa3: $b9
    adc [hl]                                      ; $4fa4: $8e
    adc a                                         ; $4fa5: $8f
    ld c, b                                       ; $4fa6: $48
    ld e, [hl]                                    ; $4fa7: $5e
    ld a, e                                       ; $4fa8: $7b
    ld l, b                                       ; $4fa9: $68
    dec bc                                        ; $4faa: $0b
    push af                                       ; $4fab: $f5
    rst $28                                       ; $4fac: $ef
    add [hl]                                      ; $4fad: $86
    ld c, e                                       ; $4fae: $4b
    db $e3                                        ; $4faf: $e3
    rst $00                                       ; $4fb0: $c7
    ld d, l                                       ; $4fb1: $55
    rst $28                                       ; $4fb2: $ef
    adc a                                         ; $4fb3: $8f
    adc e                                         ; $4fb4: $8b
    ld a, c                                       ; $4fb5: $79
    add sp, -$1d                                  ; $4fb6: $e8 $e3
    ld e, d                                       ; $4fb8: $5a
    ld [$7d91], a                                 ; $4fb9: $ea $91 $7d
    call z, Call_02e_5680                         ; $4fbc: $cc $80 $56
    or h                                          ; $4fbf: $b4
    add $55                                       ; $4fc0: $c6 $55
    and c                                         ; $4fc2: $a1

Call_02e_4fc3:
    ld a, h                                       ; $4fc3: $7c
    and d                                         ; $4fc4: $a2
    jp hl                                         ; $4fc5: $e9


    rst $08                                       ; $4fc6: $cf
    ld l, a                                       ; $4fc7: $6f
    rst $10                                       ; $4fc8: $d7
    xor e                                         ; $4fc9: $ab
    ld a, [de]                                    ; $4fca: $1a
    db $fd                                        ; $4fcb: $fd
    ret nc                                        ; $4fcc: $d0

    adc d                                         ; $4fcd: $8a
    sub $f8                                       ; $4fce: $d6 $f8
    ld c, e                                       ; $4fd0: $4b
    dec hl                                        ; $4fd1: $2b
    ld b, d                                       ; $4fd2: $42
    ldh [$cb], a                                  ; $4fd3: $e0 $cb
    ld h, d                                       ; $4fd5: $62
    ccf                                           ; $4fd6: $3f
    ld [hl], b                                    ; $4fd7: $70
    ld h, e                                       ; $4fd8: $63
    or h                                          ; $4fd9: $b4
    ld [$d36e], a                                 ; $4fda: $ea $6e $d3
    ld h, a                                       ; $4fdd: $67
    ld e, [hl]                                    ; $4fde: $5e
    call $cd6d                                    ; $4fdf: $cd $6d $cd
    inc bc                                        ; $4fe2: $03
    ld e, a                                       ; $4fe3: $5f
    db $e3                                        ; $4fe4: $e3
    ld a, [$35dc]                                 ; $4fe5: $fa $dc $35
    ld l, $e8                                     ; $4fe8: $2e $e8
    inc a                                         ; $4fea: $3c
    rst $10                                       ; $4feb: $d7
    dec h                                         ; $4fec: $25
    ld [hl+], a                                   ; $4fed: $22
    push bc                                       ; $4fee: $c5
    cp b                                          ; $4fef: $b8
    sub $3c                                       ; $4ff0: $d6 $3c
    jp nz, Jump_000_23f7                          ; $4ff2: $c2 $f7 $23

    ld l, a                                       ; $4ff5: $6f
    ld bc, $9547                                  ; $4ff6: $01 $47 $95
    and d                                         ; $4ff9: $a2
    reti                                          ; $4ffa: $d9


    add sp, $41                                   ; $4ffb: $e8 $41
    or $03                                        ; $4ffd: $f6 $03
    adc a                                         ; $4fff: $8f
    db $dd                                        ; $5000: $dd
    add sp, $36                                   ; $5001: $e8 $36
    ld a, [c]                                     ; $5003: $f2
    rst $10                                       ; $5004: $d7
    adc h                                         ; $5005: $8c
    ld [hl], l                                    ; $5006: $75
    ei                                            ; $5007: $fb
    scf                                           ; $5008: $37
    rla                                           ; $5009: $17
    add h                                         ; $500a: $84
    ld a, [c]                                     ; $500b: $f2
    dec e                                         ; $500c: $1d
    ld sp, hl                                     ; $500d: $f9
    cp $d7                                        ; $500e: $fe $d7
    ld sp, hl                                     ; $5010: $f9
    ld h, e                                       ; $5011: $63
    ld e, $b9                                     ; $5012: $1e $b9
    and [hl]                                      ; $5014: $a6
    ld a, a                                       ; $5015: $7f
    push de                                       ; $5016: $d5
    ld e, h                                       ; $5017: $5c
    push hl                                       ; $5018: $e5
    dec [hl]                                      ; $5019: $35
    scf                                           ; $501a: $37
    adc [hl]                                      ; $501b: $8e
    ld c, d                                       ; $501c: $4a
    xor [hl]                                      ; $501d: $ae
    db $e3                                        ; $501e: $e3
    inc hl                                        ; $501f: $23
    sub d                                         ; $5020: $92
    rst $20                                       ; $5021: $e7
    dec l                                         ; $5022: $2d
    and a                                         ; $5023: $a7
    ccf                                           ; $5024: $3f
    cp h                                          ; $5025: $bc
    ld [hl], b                                    ; $5026: $70
    call z, $a58b                                 ; $5027: $cc $8b $a5
    sbc a                                         ; $502a: $9f
    ld d, a                                       ; $502b: $57
    ld d, b                                       ; $502c: $50
    inc d                                         ; $502d: $14
    ret                                           ; $502e: $c9


    ld [hl], l                                    ; $502f: $75
    ld a, h                                       ; $5030: $7c
    ld b, h                                       ; $5031: $44
    ld a, [c]                                     ; $5032: $f2
    ld a, h                                       ; $5033: $7c
    dec sp                                        ; $5034: $3b
    adc d                                         ; $5035: $8a
    ld d, [hl]                                    ; $5036: $56
    add hl, de                                    ; $5037: $19
    ld a, [hl]                                    ; $5038: $7e
    jp nc, $4fb7                                  ; $5039: $d2 $b7 $4f

    ret                                           ; $503c: $c9


    dec [hl]                                      ; $503d: $35
    and $a4                                       ; $503e: $e6 $a4
    di                                            ; $5040: $f3
    di                                            ; $5041: $f3

Jump_02e_5042:
    ld d, $f5                                     ; $5042: $16 $f5
    rst $28                                       ; $5044: $ef
    add [hl]                                      ; $5045: $86
    and e                                         ; $5046: $a3
    rlca                                          ; $5047: $07
    ld d, h                                       ; $5048: $54
    sbc e                                         ; $5049: $9b
    cp b                                          ; $504a: $b8
    ld a, [$005a]                                 ; $504b: $fa $5a $00
    ld b, [hl]                                    ; $504e: $46
    sbc [hl]                                      ; $504f: $9e
    rst $20                                       ; $5050: $e7
    ld a, e                                       ; $5051: $7b
    db $ec                                        ; $5052: $ec
    db $e4                                        ; $5053: $e4
    adc [hl]                                      ; $5054: $8e
    dec [hl]                                      ; $5055: $35
    rst $30                                       ; $5056: $f7
    sbc d                                         ; $5057: $9a
    ld a, h                                       ; $5058: $7c
    push af                                       ; $5059: $f5
    or l                                          ; $505a: $b5
    bit 3, a                                      ; $505b: $cb $5f
    adc l                                         ; $505d: $8d
    ld h, c                                       ; $505e: $61
    inc l                                         ; $505f: $2c
    inc bc                                        ; $5060: $03
    ld e, d                                       ; $5061: $5a
    or $fd                                        ; $5062: $f6 $fd
    ld b, [hl]                                    ; $5064: $46
    add [hl]                                      ; $5065: $86
    or c                                          ; $5066: $b1
    ld h, d                                       ; $5067: $62
    ld l, e                                       ; $5068: $6b
    ld e, h                                       ; $5069: $5c
    dec d                                         ; $506a: $15
    sub $75                                       ; $506b: $d6 $75
    push hl                                       ; $506d: $e5
    dec l                                         ; $506e: $2d
    daa                                           ; $506f: $27
    cp [hl]                                       ; $5070: $be
    sbc a                                         ; $5071: $9f
    call c, Call_02e_5775                         ; $5072: $dc $75 $57
    ret nc                                        ; $5075: $d0

    adc [hl]                                      ; $5076: $8e
    dec [hl]                                      ; $5077: $35
    rst $30                                       ; $5078: $f7
    sbc d                                         ; $5079: $9a
    adc c                                         ; $507a: $89
    add [hl]                                      ; $507b: $86
    ld h, l                                       ; $507c: $65
    ld [hl], $c1                                  ; $507d: $36 $c1
    ldh [rOCPD], a                                ; $507f: $e0 $6b
    ld a, [hl]                                    ; $5081: $7e
    cp e                                          ; $5082: $bb
    ld e, [hl]                                    ; $5083: $5e
    push de                                       ; $5084: $d5
    add sp, -$79                                  ; $5085: $e8 $87
    ld d, $cd                                     ; $5087: $16 $cd
    db $ed                                        ; $5089: $ed
    ld b, d                                       ; $508a: $42
    dec hl                                        ; $508b: $2b
    jp z, $875b                                   ; $508c: $ca $5b $87

    sub a                                         ; $508f: $97
    rst $20                                       ; $5090: $e7
    sub c                                         ; $5091: $91
    sbc h                                         ; $5092: $9c
    add d                                         ; $5093: $82
    ld [$5a5d], a                                 ; $5094: $ea $5d $5a
    ld b, $b4                                     ; $5097: $06 $b4
    db $ec                                        ; $5099: $ec
    cp e                                          ; $509a: $bb
    pop hl                                        ; $509b: $e1
    cp b                                          ; $509c: $b8
    ccf                                           ; $509d: $3f
    and h                                         ; $509e: $a4
    push de                                       ; $509f: $d5
    ld e, c                                       ; $50a0: $59
    ld b, $54                                     ; $50a1: $06 $54
    ld [hl-], a                                   ; $50a3: $32
    and b                                         ; $50a4: $a0
    ld e, l                                       ; $50a5: $5d
    db $ec                                        ; $50a6: $ec
    rla                                           ; $50a7: $17
    ld e, d                                       ; $50a8: $5a
    ld h, e                                       ; $50a9: $63
    ld a, [hl]                                    ; $50aa: $7e
    ld l, c                                       ; $50ab: $69
    add hl, de                                    ; $50ac: $19
    ret nc                                        ; $50ad: $d0

    or d                                          ; $50ae: $b2
    or l                                          ; $50af: $b5
    nop                                           ; $50b0: $00
    adc h                                         ; $50b1: $8c
    ld [hl], c                                    ; $50b2: $71
    ld b, c                                       ; $50b3: $41
    ld h, a                                       ; $50b4: $67
    xor h                                         ; $50b5: $ac
    ld e, e                                       ; $50b6: $5b
    xor c                                         ; $50b7: $a9
    or $d0                                        ; $50b8: $f6 $d0
    ld d, $47                                     ; $50ba: $16 $47
    or c                                          ; $50bc: $b1
    sub a                                         ; $50bd: $97
    ld b, d                                       ; $50be: $42
    db $fd                                        ; $50bf: $fd
    db $e4                                        ; $50c0: $e4
    xor [hl]                                      ; $50c1: $ae
    ld d, a                                       ; $50c2: $57
    ld d, l                                       ; $50c3: $55
    ld a, [de]                                    ; $50c4: $1a
    di                                            ; $50c5: $f3
    jr nz, jr_02e_513e                            ; $50c6: $20 $76

    cp l                                          ; $50c8: $bd
    rst $38                                       ; $50c9: $ff
    dec c                                         ; $50ca: $0d
    inc hl                                        ; $50cb: $23
    ld [hl], h                                    ; $50cc: $74
    cp $02                                        ; $50cd: $fe $02
    sub a                                         ; $50cf: $97
    ld b, d                                       ; $50d0: $42
    db $fd                                        ; $50d1: $fd
    dec d                                         ; $50d2: $15
    ld e, e                                       ; $50d3: $5b
    ld [$7d91], a                                 ; $50d4: $ea $91 $7d
    call z, $9280                                 ; $50d7: $cc $80 $92
    ld h, e                                       ; $50da: $63
    ld e, $c4                                     ; $50db: $1e $c4
    xor h                                         ; $50dd: $ac
    inc d                                         ; $50de: $14
    sbc l                                         ; $50df: $9d
    ccf                                           ; $50e0: $3f
    ld a, [hl]                                    ; $50e1: $7e
    dec bc                                        ; $50e2: $0b
    or [hl]                                       ; $50e3: $b6
    inc a                                         ; $50e4: $3c
    dec h                                         ; $50e5: $25
    ld e, a                                       ; $50e6: $5f
    pop de                                        ; $50e7: $d1
    or d                                          ; $50e8: $b2
    call $fe39                                    ; $50e9: $cd $39 $fe
    ld a, h                                       ; $50ec: $7c
    push af                                       ; $50ed: $f5
    or l                                          ; $50ee: $b5
    nop                                           ; $50ef: $00
    adc h                                         ; $50f0: $8c
    ld b, l                                       ; $50f1: $45
    rrca                                          ; $50f2: $0f
    xor [hl]                                      ; $50f3: $ae
    ld h, l                                       ; $50f4: $65
    ld b, b                                       ; $50f5: $40
    ld h, e                                       ; $50f6: $63
    ld e, $c4                                     ; $50f7: $1e $c4
    xor h                                         ; $50f9: $ac
    inc d                                         ; $50fa: $14
    sbc l                                         ; $50fb: $9d
    ccf                                           ; $50fc: $3f
    db $e3                                        ; $50fd: $e3
    rst $08                                       ; $50fe: $cf
    push hl                                       ; $50ff: $e5
    or l                                          ; $5100: $b5
    adc c                                         ; $5101: $89
    dec l                                         ; $5102: $2d
    dec e                                         ; $5103: $1d
    inc c                                         ; $5104: $0c
    inc hl                                        ; $5105: $23
    rst $08                                       ; $5106: $cf
    di                                            ; $5107: $f3
    ld d, $47                                     ; $5108: $16 $47
    rst $18                                       ; $510a: $df
    ld a, [bc]                                    ; $510b: $0a
    ld e, [hl]                                    ; $510c: $5e
    ld c, b                                       ; $510d: $48
    ld b, [hl]                                    ; $510e: $46
    ld hl, sp+$7e                                 ; $510f: $f8 $7e
    inc h                                         ; $5111: $24
    ld [hl], a                                    ; $5112: $77
    xor h                                         ; $5113: $ac
    cp h                                          ; $5114: $bc
    jp nz, $95f7                                  ; $5115: $c2 $f7 $95

    or a                                          ; $5118: $b7
    push af                                       ; $5119: $f5
    rst $28                                       ; $511a: $ef
    adc d                                         ; $511b: $8a
    and [hl]                                      ; $511c: $a6
    xor [hl]                                      ; $511d: $ae
    ld l, e                                       ; $511e: $6b
    add hl, de                                    ; $511f: $19
    ret nc                                        ; $5120: $d0

    or d                                          ; $5121: $b2
    or l                                          ; $5122: $b5
    xor a                                         ; $5123: $af
    dec b                                         ; $5124: $05
    ld h, b                                       ; $5125: $60
    xor h                                         ; $5126: $ac
    or c                                          ; $5127: $b1
    sbc b                                         ; $5128: $98
    sub l                                         ; $5129: $95
    ld [hl+], a                                   ; $512a: $22
    ld h, a                                       ; $512b: $67
    ld h, c                                       ; $512c: $61
    ld b, $b4                                     ; $512d: $06 $b4
    ld a, [hl-]                                   ; $512f: $3a
    cp e                                          ; $5130: $bb
    inc d                                         ; $5131: $14
    ld l, e                                       ; $5132: $6b
    adc d                                         ; $5133: $8a
    ld a, l                                       ; $5134: $7d
    ld d, d                                       ; $5135: $52
    db $e4                                        ; $5136: $e4
    dec l                                         ; $5137: $2d
    ld e, c                                       ; $5138: $59
    xor a                                         ; $5139: $af
    xor d                                         ; $513a: $aa
    db $f4                                        ; $513b: $f4
    ld l, c                                       ; $513c: $69
    inc b                                         ; $513d: $04

jr_02e_513e:
    ld c, e                                       ; $513e: $4b
    dec de                                        ; $513f: $1b
    add $9a                                       ; $5140: $c6 $9a
    rlca                                          ; $5142: $07
    ld a, $d7                                     ; $5143: $3e $d7
    push af                                       ; $5145: $f5
    cp $b7                                        ; $5146: $fe $b7
    ld l, [hl]                                    ; $5148: $6e
    ret                                           ; $5149: $c9


    or l                                          ; $514a: $b5
    and d                                         ; $514b: $a2
    jr jr_02e_518b                                ; $514c: $18 $3d

    ld c, b                                       ; $514e: $48
    and a                                         ; $514f: $a7
    dec d                                         ; $5150: $15
    db $e3                                        ; $5151: $e3
    ld [hl], a                                    ; $5152: $77
    or [hl]                                       ; $5153: $b6
    inc a                                         ; $5154: $3c
    and l                                         ; $5155: $a5
    pop bc                                        ; $5156: $c1
    ld e, a                                       ; $5157: $5f
    inc hl                                        ; $5158: $23
    ret c                                         ; $5159: $d8

    adc l                                         ; $515a: $8d
    call c, Call_02e_4b3e                         ; $515b: $dc $3e $4b
    ld d, c                                       ; $515e: $51
    ld a, e                                       ; $515f: $7b
    ld l, b                                       ; $5160: $68
    dec bc                                        ; $5161: $0b
    dec e                                         ; $5162: $1d
    ld l, h                                       ; $5163: $6c
    inc l                                         ; $5164: $2c
    or a                                          ; $5165: $b7
    rst $08                                       ; $5166: $cf
    db $eb                                        ; $5167: $eb
    ld d, l                                       ; $5168: $55
    ld [hl], l                                    ; $5169: $75
    ld e, l                                       ; $516a: $5d
    db $d3                                        ; $516b: $d3
    ld e, a                                       ; $516c: $5f
    jp c, Jump_000_0c30                           ; $516d: $da $30 $0c

    ld l, c                                       ; $5170: $69
    ld e, h                                       ; $5171: $5c
    dec hl                                        ; $5172: $2b
    or [hl]                                       ; $5173: $b6
    ld a, b                                       ; $5174: $78
    ret nc                                        ; $5175: $d0

    jr z, jr_02e_51e7                             ; $5176: $28 $6f

    ld bc, $b5f5                                  ; $5178: $01 $f5 $b5
    rr a                                          ; $517b: $cb $1f
    add $32                                       ; $517d: $c6 $32
    ld [hl], b                                    ; $517f: $70
    rst $00                                       ; $5180: $c7
    or d                                          ; $5181: $b2
    sbc d                                         ; $5182: $9a
    reti                                          ; $5183: $d9


    ld [hl-], a                                   ; $5184: $32
    ld h, b                                       ; $5185: $60
    db $e4                                        ; $5186: $e4
    ld a, [de]                                    ; $5187: $1a
    dec a                                         ; $5188: $3d
    ld c, b                                       ; $5189: $48
    and a                                         ; $518a: $a7

jr_02e_518b:
    dec d                                         ; $518b: $15
    db $e3                                        ; $518c: $e3
    ld [hl], a                                    ; $518d: $77
    or [hl]                                       ; $518e: $b6
    inc a                                         ; $518f: $3c
    and l                                         ; $5190: $a5
    ld h, l                                       ; $5191: $65
    nop                                           ; $5192: $00
    ld h, a                                       ; $5193: $67
    add hl, hl                                    ; $5194: $29
    ld b, a                                       ; $5195: $47
    jp nc, Jump_02e_71a7                          ; $5196: $d2 $a7 $71

    push bc                                       ; $5199: $c5
    ldh a, [$b3]                                  ; $519a: $f0 $b3
    db $fc                                        ; $519c: $fc
    add $51                                       ; $519d: $c6 $51
    sbc a                                         ; $519f: $9f
    ld [hl+], a                                   ; $51a0: $22
    cp c                                          ; $51a1: $b9
    jp z, $9630                                   ; $51a2: $ca $30 $96

    xor l                                         ; $51a5: $ad
    ld d, l                                       ; $51a6: $55
    ld a, [de]                                    ; $51a7: $1a
    ld sp, hl                                     ; $51a8: $f9
    xor e                                         ; $51a9: $ab
    ld a, [de]                                    ; $51aa: $1a
    xor l                                         ; $51ab: $ad
    ld de, $bd50                                  ; $51ac: $11 $50 $bd
    xor [hl]                                      ; $51af: $ae
    ret                                           ; $51b0: $c9


    sub l                                         ; $51b1: $95
    rst $20                                       ; $51b2: $e7
    ld a, c                                       ; $51b3: $79
    dec bc                                        ; $51b4: $0b
    push af                                       ; $51b5: $f5
    or l                                          ; $51b6: $b5
    add $1c                                       ; $51b7: $c6 $1c
    or l                                          ; $51b9: $b5
    inc c                                         ; $51ba: $0c
    call c, $1fdf                                 ; $51bb: $dc $df $1f
    ld sp, hl                                     ; $51be: $f9
    inc bc                                        ; $51bf: $03
    ld b, [hl]                                    ; $51c0: $46
    ld l, [hl]                                    ; $51c1: $6e
    db $e3                                        ; $51c2: $e3
    adc d                                         ; $51c3: $8a
    dec [hl]                                      ; $51c4: $35
    push bc                                       ; $51c5: $c5
    ld a, $29                                     ; $51c6: $3e $29
    add $ed                                       ; $51c8: $c6 $ed
    rst $00                                       ; $51ca: $c7
    adc d                                         ; $51cb: $8a
    sub [hl]                                      ; $51cc: $96
    ld l, l                                       ; $51cd: $6d
    adc $f1                                       ; $51ce: $ce $f1
    rst $20                                       ; $51d0: $e7
    dec l                                         ; $51d1: $2d
    and a                                         ; $51d2: $a7
    ld e, d                                       ; $51d3: $5a
    ld bc, $ee4a                                  ; $51d4: $01 $4a $ee
    ld b, h                                       ; $51d7: $44
    ld sp, $8a58                                  ; $51d8: $31 $58 $8a
    ld a, [c]                                     ; $51db: $f2
    ld d, $59                                     ; $51dc: $16 $59
    ld l, h                                       ; $51de: $6c
    and b                                         ; $51df: $a0
    jp c, Jump_000_1dc4                           ; $51e0: $da $c4 $1d

    ld d, a                                       ; $51e3: $57
    add $9f                                       ; $51e4: $c6 $9f
    ld d, e                                       ; $51e6: $53

jr_02e_51e7:
    sbc $02                                       ; $51e7: $de $02
    dec e                                         ; $51e9: $1d
    dec l                                         ; $51ea: $2d
    add $61                                       ; $51eb: $c6 $61
    db $f4                                        ; $51ed: $f4
    add b                                         ; $51ee: $80
    sub d                                         ; $51ef: $92
    jp Jump_000_0532                              ; $51f0: $c3 $32 $05


    dec c                                         ; $51f3: $0d
    cpl                                           ; $51f4: $2f
    sbc h                                         ; $51f5: $9c
    ld l, b                                       ; $51f6: $68
    ld e, b                                       ; $51f7: $58
    ld d, [hl]                                    ; $51f8: $56
    ld l, c                                       ; $51f9: $69
    ld l, $96                                     ; $51fa: $2e $96
    add hl, sp                                    ; $51fc: $39
    ld d, a                                       ; $51fd: $57
    sbc $02                                       ; $51fe: $de $02
    dec e                                         ; $5200: $1d
    dec l                                         ; $5201: $2d
    halt                                          ; $5202: $76
    and d                                         ; $5203: $a2
    jr @+$2e                                      ; $5204: $18 $2c

    ld b, l                                       ; $5206: $45
    ret                                           ; $5207: $c9


    dec d                                         ; $5208: $15
    xor l                                         ; $5209: $ad
    pop af                                        ; $520a: $f1
    sub a                                         ; $520b: $97
    ld d, [hl]                                    ; $520c: $56
    add h                                         ; $520d: $84
    ret nz                                        ; $520e: $c0

    ld [hl], a                                    ; $520f: $77
    inc b                                         ; $5210: $04
    cp $1f                                        ; $5211: $fe $1f
    or l                                          ; $5213: $b5
    adc c                                         ; $5214: $89
    dec l                                         ; $5215: $2d
    ld h, a                                       ; $5216: $67
    sbc a                                         ; $5217: $9f
    ld a, a                                       ; $5218: $7f
    cp $f9                                        ; $5219: $fe $f9
    rst $20                                       ; $521b: $e7
    sbc a                                         ; $521c: $9f
    ld a, a                                       ; $521d: $7f
    cp $f9                                        ; $521e: $fe $f9
    ld a, c                                       ; $5220: $79
    sbc [hl]                                      ; $5221: $9e
    or a                                          ; $5222: $b7
    sbc l                                         ; $5223: $9d
    ld h, b                                       ; $5224: $60
    sub a                                         ; $5225: $97
    ccf                                           ; $5226: $3f
    adc h                                         ; $5227: $8c
    ld h, l                                       ; $5228: $65
    ldh [$fe], a                                  ; $5229: $e0 $fe
    cp $b8                                        ; $522b: $fe $b8
    jr jr_02e_5266                                ; $522d: $18 $37

    and h                                         ; $522f: $a4
    dec d                                         ; $5230: $15
    call $8c6f                                    ; $5231: $cd $6f $8c
    or b                                          ; $5234: $b0
    inc d                                         ; $5235: $14
    ld a, c                                       ; $5236: $79
    db $ed                                        ; $5237: $ed
    and c                                         ; $5238: $a1
    dec l                                         ; $5239: $2d
    push af                                       ; $523a: $f5
    or l                                          ; $523b: $b5
    xor a                                         ; $523c: $af
    add l                                         ; $523d: $85
    ld h, c                                       ; $523e: $61
    xor h                                         ; $523f: $ac
    or c                                          ; $5240: $b1
    ld e, b                                       ; $5241: $58
    ldh [$de], a                                  ; $5242: $e0 $de
    ld e, a                                       ; $5244: $5f
    rst $00                                       ; $5245: $c7
    and e                                         ; $5246: $a3
    ld c, [hl]                                    ; $5247: $4e
    db $eb                                        ; $5248: $eb
    inc [hl]                                      ; $5249: $34
    cp a                                          ; $524a: $bf
    ld sp, $52c2                                  ; $524b: $31 $c2 $52
    db $e4                                        ; $524e: $e4
    add e                                         ; $524f: $83
    cp a                                          ; $5250: $bf
    or h                                          ; $5251: $b4
    ld a, l                                       ; $5252: $7d
    ld [$52ae], a                                 ; $5253: $ea $ae $52
    cp [hl]                                       ; $5256: $be
    ld d, e                                       ; $5257: $53
    ld [hl], c                                    ; $5258: $71
    inc b                                         ; $5259: $04
    ld d, e                                       ; $525a: $53
    add h                                         ; $525b: $84
    and c                                         ; $525c: $a1
    ld h, d                                       ; $525d: $62
    ld e, h                                       ; $525e: $5c
    dec hl                                        ; $525f: $2b
    ld e, d                                       ; $5260: $5a
    add sp, $7a                                   ; $5261: $e8 $7a
    jr nz, jr_02e_52b4                            ; $5263: $20 $4f

    adc [hl]                                      ; $5265: $8e

jr_02e_5266:
    ld l, h                                       ; $5266: $6c
    sub l                                         ; $5267: $95
    pop hl                                        ; $5268: $e1
    sbc a                                         ; $5269: $9f
    ld h, e                                       ; $526a: $63
    ld h, h                                       ; $526b: $64
    ld b, b                                       ; $526c: $40
    db $e3                                        ; $526d: $e3
    ld e, d                                       ; $526e: $5a
    ld h, e                                       ; $526f: $63
    ld de, $d5f2                                  ; $5270: $11 $f2 $d5
    add hl, de                                    ; $5273: $19
    cp c                                          ; $5274: $b9
    ld sp, $c8f2                                  ; $5275: $31 $f2 $c8
    ld e, e                                       ; $5278: $5b
    ld h, a                                       ; $5279: $67
    sbc a                                         ; $527a: $9f
    ld a, a                                       ; $527b: $7f
    cp $f9                                        ; $527c: $fe $f9
    ld a, c                                       ; $527e: $79
    sbc [hl]                                      ; $527f: $9e
    ld c, a                                       ; $5280: $4f
    or h                                          ; $5281: $b4
    ld a, [hl-]                                   ; $5282: $3a
    dec hl                                        ; $5283: $2b
    or [hl]                                       ; $5284: $b6
    inc [hl]                                      ; $5285: $34
    cp $71                                        ; $5286: $fe $71
    ld e, b                                       ; $5288: $58
    ld e, a                                       ; $5289: $5f
    rlca                                          ; $528a: $07
    call nc, $b4ad                                ; $528b: $d4 $ad $b4
    ret nz                                        ; $528e: $c0

    cp d                                          ; $528f: $ba
    ld d, a                                       ; $5290: $57
    ld d, c                                       ; $5291: $51
    ld [hl], d                                    ; $5292: $72
    rst $28                                       ; $5293: $ef
    cpl                                           ; $5294: $2f
    xor $fa                                       ; $5295: $ee $fa
    xor e                                         ; $5297: $ab
    ld e, [hl]                                    ; $5298: $5e
    ld b, $b4                                     ; $5299: $06 $b4
    db $eb                                        ; $529b: $eb
    ld d, l                                       ; $529c: $55
    ld c, l                                       ; $529d: $4d
    xor c                                         ; $529e: $a9

jr_02e_529f:
    ld c, e                                       ; $529f: $4b
    xor d                                         ; $52a0: $aa
    db $f4                                        ; $52a1: $f4
    add hl, hl                                    ; $52a2: $29
    rst $08                                       ; $52a3: $cf
    di                                            ; $52a4: $f3
    ld [hl], l                                    ; $52a5: $75
    ld b, d                                       ; $52a6: $42
    db $fd                                        ; $52a7: $fd
    ret c                                         ; $52a8: $d8

    or c                                          ; $52a9: $b1
    and $5e                                       ; $52aa: $e6 $5e
    or e                                          ; $52ac: $b3
    adc [hl]                                      ; $52ad: $8e
    adc a                                         ; $52ae: $8f
    ld c, b                                       ; $52af: $48
    ld e, [hl]                                    ; $52b0: $5e
    sbc e                                         ; $52b1: $9b
    cp b                                          ; $52b2: $b8
    sub e                                         ; $52b3: $93

jr_02e_52b4:
    ld b, c                                       ; $52b4: $41
    ld h, l                                       ; $52b5: $65
    ld c, l                                       ; $52b6: $4d
    ld sp, $f40c                                  ; $52b7: $31 $0c $f4
    ld [hl], c                                    ; $52ba: $71
    adc l                                         ; $52bb: $8d
    ld a, c                                       ; $52bc: $79
    db $10                                        ; $52bd: $10
    ld h, e                                       ; $52be: $63
    ld e, $fa                                     ; $52bf: $1e $fa
    cp b                                          ; $52c1: $b8
    db $fd                                        ; $52c2: $fd
    ld e, b                                       ; $52c3: $58
    ld h, l                                       ; $52c4: $65
    cp e                                          ; $52c5: $bb
    adc d                                         ; $52c6: $8a
    ld b, l                                       ; $52c7: $45
    jr z, jr_02e_5329                             ; $52c8: $28 $5f

    ld a, l                                       ; $52ca: $7d
    xor l                                         ; $52cb: $ad
    jp nc, $01e2                                  ; $52cc: $d2 $e2 $01

    add e                                         ; $52cf: $83
    ld a, [$f231]                                 ; $52d0: $fa $31 $f2
    cp d                                          ; $52d3: $ba
    or c                                          ; $52d4: $b1
    inc d                                         ; $52d5: $14
    ld [$6b8f], a                                 ; $52d6: $ea $8f $6b
    call z, $d723                                 ; $52d9: $cc $23 $d7
    sbc d                                         ; $52dc: $9a
    cp d                                          ; $52dd: $ba
    xor [hl]                                      ; $52de: $ae
    cp h                                          ; $52df: $bc
    dec b                                         ; $52e0: $05
    dec e                                         ; $52e1: $1d
    db $e4                                        ; $52e2: $e4
    rla                                           ; $52e3: $17
    ld h, $d7                                     ; $52e4: $26 $d7
    ld hl, sp+$4b                                 ; $52e6: $f8 $4b
    dec hl                                        ; $52e8: $2b
    ld b, d                                       ; $52e9: $42
    ldh [$3b], a                                  ; $52ea: $e0 $3b
    ld [bc], a                                    ; $52ec: $02
    rst $38                                       ; $52ed: $ff
    adc a                                         ; $52ee: $8f
    jp c, $16c4                                   ; $52ef: $da $c4 $16

    and a                                         ; $52f2: $a7
    ccf                                           ; $52f3: $3f
    adc b                                         ; $52f4: $88
    ld e, l                                       ; $52f5: $5d
    xor a                                         ; $52f6: $af
    inc d                                         ; $52f7: $14
    ld e, l                                       ; $52f8: $5d
    add h                                         ; $52f9: $84
    rst $28                                       ; $52fa: $ef
    ld a, a                                       ; $52fb: $7f
    sbc l                                         ; $52fc: $9d
    cp a                                          ; $52fd: $bf
    and d                                         ; $52fe: $a2
    ret c                                         ; $52ff: $d8

    ld h, l                                       ; $5300: $65
    ld c, [hl]                                    ; $5301: $4e
    adc d                                         ; $5302: $8a
    ld [hl], c                                    ; $5303: $71
    dec l                                         ; $5304: $2d
    sbc [hl]                                      ; $5305: $9e
    ld e, a                                       ; $5306: $5f
    ld e, b                                       ; $5307: $58
    rst $10                                       ; $5308: $d7
    dec d                                         ; $5309: $15
    inc de                                        ; $530a: $13
    dec l                                         ; $530b: $2d
    sbc [hl]                                      ; $530c: $9e
    ld e, a                                       ; $530d: $5f
    jr z, jr_02e_529f                             ; $530e: $28 $8f

    ld e, l                                       ; $5310: $5d
    or a                                          ; $5311: $b7
    ld d, d                                       ; $5312: $52
    scf                                           ; $5313: $37
    push hl                                       ; $5314: $e5
    adc d                                         ; $5315: $8a
    db $e4                                        ; $5316: $e4
    adc [hl]                                      ; $5317: $8e
    dec [hl]                                      ; $5318: $35
    rst $30                                       ; $5319: $f7
    sbc d                                         ; $531a: $9a
    jp c, Jump_02e_7743                           ; $531b: $da $43 $77

    ld a, [$d723]                                 ; $531e: $fa $23 $d7
    sbc d                                         ; $5321: $9a
    cp d                                          ; $5322: $ba
    xor [hl]                                      ; $5323: $ae
    add hl, de                                    ; $5324: $19
    ld b, h                                       ; $5325: $44
    ld h, b                                       ; $5326: $60
    cp [hl]                                       ; $5327: $be
    db $d3                                        ; $5328: $d3

jr_02e_5329:
    cp $b2                                        ; $5329: $fe $b2
    rra                                           ; $532b: $1f
    ld a, b                                       ; $532c: $78
    ld [hl], d                                    ; $532d: $72
    reti                                          ; $532e: $d9


    ld e, d                                       ; $532f: $5a
    ld bc, $e19c                                  ; $5330: $01 $9c $e1
    ld hl, sp-$05                                 ; $5333: $f8 $fb
    rst $38                                       ; $5335: $ff
    or [hl]                                       ; $5336: $b6
    ld h, d                                       ; $5337: $62
    cp e                                          ; $5338: $bb
    call z, $e349                                 ; $5339: $cc $49 $e3
    ld e, d                                       ; $533c: $5a
    ld d, $fa                                     ; $533d: $16 $fa
    ld [hl], l                                    ; $533f: $75
    ld c, e                                       ; $5340: $4b
    ld c, $cb                                     ; $5341: $0e $cb
    ld l, d                                       ; $5343: $6a
    ld b, [hl]                                    ; $5344: $46
    ld a, [$b486]                                 ; $5345: $fa $86 $b4
    sub h                                         ; $5348: $94
    inc c                                         ; $5349: $0c
    xor [hl]                                      ; $534a: $ae
    rlca                                          ; $534b: $07
    ld c, l                                       ; $534c: $4d
    cp [hl]                                       ; $534d: $be
    ld a, [$a55a]                                 ; $534e: $fa $5a $a5
    ld [hl], c                                    ; $5351: $71
    ld d, l                                       ; $5352: $55
    or $b9                                        ; $5353: $f6 $b9
    halt                                          ; $5355: $76
    ld l, c                                       ; $5356: $69
    add hl, de                                    ; $5357: $19
    cp b                                          ; $5358: $b8
    xor e                                         ; $5359: $ab
    inc d                                         ; $535a: $14
    ld c, l                                       ; $535b: $4d
    ld b, c                                       ; $535c: $41
    db $e3                                        ; $535d: $e3
    ld h, d                                       ; $535e: $62
    db $f4                                        ; $535f: $f4
    ld b, c                                       ; $5360: $41
    ld a, c                                       ; $5361: $79
    sbc [hl]                                      ; $5362: $9e
    or a                                          ; $5363: $b7
    push af                                       ; $5364: $f5
    or l                                          ; $5365: $b5
    ld c, d                                       ; $5366: $4a
    adc e                                         ; $5367: $8b
    rlca                                          ; $5368: $07
    inc c                                         ; $5369: $0c
    ld [$8cc7], a                                 ; $536a: $ea $c7 $8c
    ld a, c                                       ; $536d: $79
    add sp, $6b                                   ; $536e: $e8 $6b
    call z, $6dcb                                 ; $5370: $cc $cb $6d
    ld [hl], l                                    ; $5373: $75
    sub [hl]                                      ; $5374: $96
    ld bc, $0c95                                  ; $5375: $01 $95 $0c
    call c, $8fe1                                 ; $5378: $dc $e1 $8f
    db $db                                        ; $537b: $db
    adc a                                         ; $537c: $8f
    dec d                                         ; $537d: $15
    dec l                                         ; $537e: $2d
    adc e                                         ; $537f: $8b
    xor l                                         ; $5380: $ad

jr_02e_5381:
    ld a, [bc]                                    ; $5381: $0a
    rst $38                                       ; $5382: $ff
    cp b                                          ; $5383: $b8
    sub $c9                                       ; $5384: $d6 $c9
    adc l                                         ; $5386: $8d
    sub c                                         ; $5387: $91
    add a                                         ; $5388: $87
    sub d                                         ; $5389: $92
    inc de                                        ; $538a: $13
    dec c                                         ; $538b: $0d
    rl h                                          ; $538c: $cb $14
    ld h, c                                       ; $538e: $61
    dec [hl]                                      ; $538f: $35
    add [hl]                                      ; $5390: $86
    inc [hl]                                      ; $5391: $34
    xor [hl]                                      ; $5392: $ae
    ld d, l                                       ; $5393: $55
    ld e, d                                       ; $5394: $5a
    or c                                          ; $5395: $b1
    ld sp, $dcfa                                  ; $5396: $31 $fa $dc
    sub l                                         ; $5399: $95
    or a                                          ; $539a: $b7
    dec e                                         ; $539b: $1d
    dec l                                         ; $539c: $2d
    sub $bc                                       ; $539d: $d6 $bc
    ld [$154c], sp                                ; $539f: $08 $4c $15
    push de                                       ; $53a2: $d5
    ld h, $6e                                     ; $53a3: $26 $6e
    ld e, c                                       ; $53a5: $59
    rst $30                                       ; $53a6: $f7
    dec de                                        ; $53a7: $1b
    add hl, de                                    ; $53a8: $19
    jp nc, $011a                                  ; $53a9: $d2 $1a $01

    push de                                       ; $53ac: $d5
    db $eb                                        ; $53ad: $eb
    sbc d                                         ; $53ae: $9a
    ld e, h                                       ; $53af: $5c
    dec hl                                        ; $53b0: $2b
    or [hl]                                       ; $53b1: $b6
    xor d                                         ; $53b2: $aa
    db $eb                                        ; $53b3: $eb
    ld c, d                                       ; $53b4: $4a
    ld sp, hl                                     ; $53b5: $f9
    ld c, [hl]                                    ; $53b6: $4e
    push bc                                       ; $53b7: $c5
    ld h, l                                       ; $53b8: $65
    ld l, e                                       ; $53b9: $6b
    call $c603                                    ; $53ba: $cd $03 $c6
    jr nc, jr_02e_5415                            ; $53bd: $30 $56

    ld l, h                                       ; $53bf: $6c
    call z, Call_02e_4f43                         ; $53c0: $cc $43 $4f
    ld l, $5b                                     ; $53c3: $2e $5b
    dec hl                                        ; $53c5: $2b
    ld e, d                                       ; $53c6: $5a
    jr jr_02e_5381                                ; $53c7: $18 $b8

    ld h, c                                       ; $53c9: $61
    db $e4                                        ; $53ca: $e4
    dec l                                         ; $53cb: $2d
    and a                                         ; $53cc: $a7
    ccf                                           ; $53cd: $3f
    adc b                                         ; $53ce: $88
    ld sp, $8a0f                                  ; $53cf: $31 $0f $8a
    adc $5f                                       ; $53d2: $ce $5f
    ld b, $b4                                     ; $53d4: $06 $b4
    ld l, h                                       ; $53d6: $6c
    adc l                                         ; $53d7: $8d
    ld a, c                                       ; $53d8: $79
    db $10                                        ; $53d9: $10

jr_02e_53da:
    dec hl                                        ; $53da: $2b
    or [hl]                                       ; $53db: $b6
    add $df                                       ; $53dc: $c6 $df
    dec b                                         ; $53de: $05
    xor [hl]                                      ; $53df: $ae
    jp c, $5b43                                   ; $53e0: $da $43 $5b

    ld b, a                                       ; $53e3: $47
    cp h                                          ; $53e4: $bc
    rst $38                                       ; $53e5: $ff
    dec [hl]                                      ; $53e6: $35
    db $e4                                        ; $53e7: $e4
    scf                                           ; $53e8: $37
    push hl                                       ; $53e9: $e5
    dec sp                                        ; $53ea: $3b
    ld b, c                                       ; $53eb: $41
    ld sp, $2ec6                                  ; $53ec: $31 $c6 $2e
    ei                                            ; $53ef: $fb
    sub a                                         ; $53f0: $97
    ld h, d                                       ; $53f1: $62
    rst $10                                       ; $53f2: $d7
    xor e                                         ; $53f3: $ab
    ld a, [hl+]                                   ; $53f4: $2a
    db $fd                                        ; $53f5: $fd
    ld c, e                                       ; $53f6: $4b
    sbc a                                         ; $53f7: $9f
    ld h, [hl]                                    ; $53f8: $66
    sub b                                         ; $53f9: $90
    db $fd                                        ; $53fa: $fd
    ret nz                                        ; $53fb: $c0

    ld sp, hl                                     ; $53fc: $f9
    sbc l                                         ; $53fd: $9d
    dec c                                         ; $53fe: $0d
    sbc b                                         ; $53ff: $98
    inc e                                         ; $5400: $1c
    di                                            ; $5401: $f3
    jr nz, jr_02e_53da                            ; $5402: $20 $d6

    dec [hl]                                      ; $5404: $35
    add hl, hl                                    ; $5405: $29
    ld d, [hl]                                    ; $5406: $56
    jr nc, @-$19                                  ; $5407: $30 $e5

    ld a, [de]                                    ; $5409: $1a
    cp a                                          ; $540a: $bf
    ld e, e                                       ; $540b: $5b
    add hl, hl                                    ; $540c: $29
    ld a, [c]                                     ; $540d: $f2
    dec b                                         ; $540e: $05
    ld hl, sp-$76                                 ; $540f: $f8 $8a
    sub [hl]                                      ; $5411: $96
    push bc                                       ; $5412: $c5
    ld d, [hl]                                    ; $5413: $56
    add l                                         ; $5414: $85

jr_02e_5415:
    ld a, a                                       ; $5415: $7f
    ld e, h                                       ; $5416: $5c
    db $eb                                        ; $5417: $eb
    db $e4                                        ; $5418: $e4
    add $c8                                       ; $5419: $c6 $c8
    ld b, e                                       ; $541b: $43
    ld sp, hl                                     ; $541c: $f9
    ld c, $6f                                     ; $541d: $0e $6f
    sbc d                                         ; $541f: $9a
    rst $20                                       ; $5420: $e7
    and h                                         ; $5421: $a4
    di                                            ; $5422: $f3
    ld [hl], a                                    ; $5423: $77
    adc c                                         ; $5424: $89
    ld c, b                                       ; $5425: $48
    inc sp                                        ; $5426: $33
    and b                                         ; $5427: $a0
    rst $20                                       ; $5428: $e7
    jr @+$48                                      ; $5429: $18 $46

    ld hl, sp-$02                                 ; $542b: $f8 $fe
    ld [$58ec], a                                 ; $542d: $ea $ec $58
    ld h, e                                       ; $5430: $63
    add hl, sp                                    ; $5431: $39
    ld a, [c]                                     ; $5432: $f2
    adc c                                         ; $5433: $89
    add [hl]                                      ; $5434: $86
    ld h, l                                       ; $5435: $65
    call z, $9883                                 ; $5436: $cc $83 $98
    ld e, l                                       ; $5439: $5d
    rst $10                                       ; $543a: $d7
    xor e                                         ; $543b: $ab
    ld a, [de]                                    ; $543c: $1a
    ld h, e                                       ; $543d: $63
    ld a, l                                       ; $543e: $7d
    cp c                                          ; $543f: $b9
    push hl                                       ; $5440: $e5
    res 7, d                                      ; $5441: $cb $ba
    dec hl                                        ; $5443: $2b
    ld l, b                                       ; $5444: $68
    add hl, de                                    ; $5445: $19
    ld a, b                                       ; $5446: $78
    jr c, @-$18                                   ; $5447: $38 $e6

    sub c                                         ; $5449: $91
    ld l, e                                       ; $544a: $6b
    rst $38                                       ; $544b: $ff
    ld d, l                                       ; $544c: $55
    db $e3                                        ; $544d: $e3
    or a                                          ; $544e: $b7
    db $ec                                        ; $544f: $ec
    ld a, [hl-]                                   ; $5450: $3a
    or l                                          ; $5451: $b5
    add a                                         ; $5452: $87
    or [hl]                                       ; $5453: $b6
    rst $00                                       ; $5454: $c7
    sbc d                                         ; $5455: $9a
    ld a, e                                       ; $5456: $7b
    call Call_000_3e3a                            ; $5457: $cd $3a $3e
    ld [hl+], a                                   ; $545a: $22
    ld a, c                                       ; $545b: $79
    sbc $02                                       ; $545c: $de $02
    daa                                           ; $545e: $27
    ld bc, $7726                                  ; $545f: $01 $26 $77
    xor h                                         ; $5462: $ac
    cp c                                          ; $5463: $b9
    rst $10                                       ; $5464: $d7
    xor h                                         ; $5465: $ac
    db $e3                                        ; $5466: $e3
    inc hl                                        ; $5467: $23
    sub d                                         ; $5468: $92
    rst $20                                       ; $5469: $e7
    dec sp                                        ; $546a: $3b
    db $ed                                        ; $546b: $ed
    rst $28                                       ; $546c: $ef
    ld h, d                                       ; $546d: $62
    sbc e                                         ; $546e: $9b
    ld d, a                                       ; $546f: $57
    or $69                                        ; $5470: $f6 $69
    inc l                                         ; $5472: $2c
    di                                            ; $5473: $f3
    ld e, $df                                     ; $5474: $1e $df
    ld c, a                                       ; $5476: $4f
    ld l, $5b                                     ; $5477: $2e $5b
    ld h, e                                       ; $5479: $63
    ld d, b                                       ; $547a: $50
    ccf                                           ; $547b: $3f
    add $b5                                       ; $547c: $c6 $b5
    ld [bc], a                                    ; $547e: $02
    cp b                                          ; $547f: $b8
    add $bc                                       ; $5480: $c6 $bc
    ret z                                         ; $5482: $c8

Call_02e_5483:
    di                                            ; $5483: $f3
    ld d, $c7                                     ; $5484: $16 $c7
    ld a, [de]                                    ; $5486: $1a
    res 2, c                                      ; $5487: $cb $91
    rst $10                                       ; $5489: $d7
    ld h, $ae                                     ; $548a: $26 $ae
    cp $dd                                        ; $548c: $fe $dd
    ld c, d                                       ; $548e: $4a
    ld sp, $658c                                  ; $548f: $31 $8c $65
    ld b, e                                       ; $5492: $43
    sub b                                         ; $5493: $90
    ld a, [hl+]                                   ; $5494: $2a
    ld a, l                                       ; $5495: $7d
    ld a, [de]                                    ; $5496: $1a
    di                                            ; $5497: $f3
    jr nz, jr_02e_5510                            ; $5498: $20 $76

    or c                                          ; $549a: $b1
    push hl                                       ; $549b: $e5
    rla                                           ; $549c: $17
    ld e, e                                       ; $549d: $5b
    sbc [hl]                                      ; $549e: $9e
    or a                                          ; $549f: $b7
    ld b, a                                       ; $54a0: $47
    cp h                                          ; $54a1: $bc
    sbc a                                         ; $54a2: $9f
    db $fd                                        ; $54a3: $fd
    ret nz                                        ; $54a4: $c0

    ld [hl], a                                    ; $54a5: $77
    xor h                                         ; $54a6: $ac
    cp c                                          ; $54a7: $b9
    rst $10                                       ; $54a8: $d7
    db $e4                                        ; $54a9: $e4
    xor e                                         ; $54aa: $ab
    xor a                                         ; $54ab: $af
    ld e, l                                       ; $54ac: $5d
    ld l, h                                       ; $54ad: $6c
    ld sp, hl                                     ; $54ae: $f9
    push bc                                       ; $54af: $c5
    sub $b8                                       ; $54b0: $d6 $b8
    ld h, d                                       ; $54b2: $62
    rla                                           ; $54b3: $17
    db $db                                        ; $54b4: $db
    xor d                                         ; $54b5: $aa
    ld b, $59                                     ; $54b6: $06 $59
    rst $38                                       ; $54b8: $ff
    ld d, l                                       ; $54b9: $55
    adc d                                         ; $54ba: $8a
    ld a, h                                       ; $54bb: $7c
    rst $00                                       ; $54bc: $c7
    sub l                                         ; $54bd: $95
    dec [hl]                                      ; $54be: $35
    and $d6                                       ; $54bf: $e6 $d6
    dec l                                         ; $54c1: $2d
    dec l                                         ; $54c2: $2d
    inc bc                                        ; $54c3: $03
    ld [hl], a                                    ; $54c4: $77
    inc l                                         ; $54c5: $2c
    xor e                                         ; $54c6: $ab
    sbc c                                         ; $54c7: $99
    dec c                                         ; $54c8: $0d
    cp $3e                                        ; $54c9: $fe $3e
    ld a, [c]                                     ; $54cb: $f2
    ld [hl], c                                    ; $54cc: $71
    ei                                            ; $54cd: $fb
    or c                                          ; $54ce: $b1
    and d                                         ; $54cf: $a2
    and l                                         ; $54d0: $a5
    cp d                                          ; $54d1: $ba
    inc h                                         ; $54d2: $24
    xor h                                         ; $54d3: $ac
    db $f4                                        ; $54d4: $f4
    add hl, hl                                    ; $54d5: $29
    ld l, a                                       ; $54d6: $6f
    ld bc, $6827                                  ; $54d7: $01 $27 $68
    adc l                                         ; $54da: $8d
    cp a                                          ; $54db: $bf
    or h                                          ; $54dc: $b4
    ld [hl+], a                                   ; $54dd: $22
    inc b                                         ; $54de: $04
    cp [hl]                                       ; $54df: $be
    inc hl                                        ; $54e0: $23
    ldh a, [rIE]                                  ; $54e1: $f0 $ff
    ld e, b                                       ; $54e3: $58
    ld [hl], l                                    ; $54e4: $75
    or a                                          ; $54e5: $b7
    pop af                                        ; $54e6: $f1
    rst $30                                       ; $54e7: $f7
    rst $38                                       ; $54e8: $ff
    ld l, l                                       ; $54e9: $6d
    ldh a, [$35]                                  ; $54ea: $f0 $35
    inc bc                                        ; $54ec: $03
    ld a, d                                       ; $54ed: $7a
    adc [hl]                                      ; $54ee: $8e
    ld h, c                                       ; $54ef: $61
    add h                                         ; $54f0: $84
    rst $28                                       ; $54f1: $ef
    xor a                                         ; $54f2: $af
    ld a, c                                       ; $54f3: $79
    ldh [$b3], a                                  ; $54f4: $e0 $b3
    ld d, d                                       ; $54f6: $52
    db $e4                                        ; $54f7: $e4
    inc sp                                        ; $54f8: $33
    ld e, b                                       ; $54f9: $58
    ld d, $5b                                     ; $54fa: $16 $5b
    dec d                                         ; $54fc: $15
    cp $71                                        ; $54fd: $fe $71
    xor l                                         ; $54ff: $ad
    sub e                                         ; $5500: $93
    dec de                                        ; $5501: $1b
    inc hl                                        ; $5502: $23
    rrca                                          ; $5503: $0f
    ld c, l                                       ; $5504: $4d
    or h                                          ; $5505: $b4
    ld [$e36e], a                                 ; $5506: $ea $6e $e3
    ld c, b                                       ; $5509: $48
    db $e3                                        ; $550a: $e3
    ld a, [de]                                    ; $550b: $1a
    di                                            ; $550c: $f3
    jr nz, jr_02e_5565                            ; $550d: $20 $56

    ld l, h                                       ; $550f: $6c

jr_02e_5510:
    db $fc                                        ; $5510: $fc
    db $fd                                        ; $5511: $fd
    cpl                                           ; $5512: $2f
    rst $08                                       ; $5513: $cf
    ld d, a                                       ; $5514: $57
    ld e, a                                       ; $5515: $5f
    ld h, e                                       ; $5516: $63
    inc b                                         ; $5517: $04
    sbc l                                         ; $5518: $9d
    ld b, a                                       ; $5519: $47
    cp $80                                        ; $551a: $fe $80
    sub c                                         ; $551c: $91
    rrca                                          ; $551d: $0f
    cp [hl]                                       ; $551e: $be
    halt                                          ; $551f: $76
    sbc c                                         ; $5520: $99
    sub e                                         ; $5521: $93
    add $b5                                       ; $5522: $c6 $b5
    ld a, b                                       ; $5524: $78
    ld a, [hl]                                    ; $5525: $7e
    ld h, c                                       ; $5526: $61
    ld e, l                                       ; $5527: $5d
    ld d, a                                       ; $5528: $57
    ld c, h                                       ; $5529: $4c
    or h                                          ; $552a: $b4
    ld a, b                                       ; $552b: $78
    ld a, [hl]                                    ; $552c: $7e
    and c                                         ; $552d: $a1
    inc a                                         ; $552e: $3c
    halt                                          ; $552f: $76
    db $dd                                        ; $5530: $dd
    ld c, d                                       ; $5531: $4a
    db $dd                                        ; $5532: $dd
    sub h                                         ; $5533: $94
    dec hl                                        ; $5534: $2b
    sub [hl]                                      ; $5535: $96
    ld bc, $08ed                                  ; $5536: $01 $ed $08
    db $fc                                        ; $5539: $fc
    ccf                                           ; $553a: $3f
    ld h, [hl]                                    ; $553b: $66
    ld l, e                                       ; $553c: $6b
    inc b                                         ; $553d: $04
    ld d, h                                       ; $553e: $54
    xor a                                         ; $553f: $af
    ld l, e                                       ; $5540: $6b
    ld [hl], d                                    ; $5541: $72
    adc l                                         ; $5542: $8d
    cp a                                          ; $5543: $bf
    rst $38                                       ; $5544: $ff
    ld l, a                                       ; $5545: $6f
    ld e, d                                       ; $5546: $5a
    sbc l                                         ; $5547: $9d
    ld d, l                                       ; $5548: $55
    rst $28                                       ; $5549: $ef
    xor a                                         ; $554a: $af
    xor c                                         ; $554b: $a9
    db $eb                                        ; $554c: $eb
    jp z, $f55b                                   ; $554d: $ca $5b $f5

    dec [hl]                                      ; $5550: $35
    ld a, [c]                                     ; $5551: $f2
    rlca                                          ; $5552: $07
    adc h                                         ; $5553: $8c
    call c, Call_02e_4570                         ; $5554: $dc $70 $45
    or c                                          ; $5557: $b1
    adc e                                         ; $5558: $8b
    ld l, l                                       ; $5559: $6d
    ld d, l                                       ; $555a: $55
    add e                                         ; $555b: $83
    xor h                                         ; $555c: $ac
    rst $38                                       ; $555d: $ff
    ld a, [hl+]                                   ; $555e: $2a
    push bc                                       ; $555f: $c5
    sbc d                                         ; $5560: $9a
    ld [bc], a                                    ; $5561: $02
    ld sp, $e732                                  ; $5562: $31 $32 $e7

jr_02e_5565:
    ld sp, hl                                     ; $5565: $f9
    halt                                          ; $5566: $76
    jp nc, $cd5f                                  ; $5567: $d2 $5f $cd

    jr jr_02e_55b7                                ; $556a: $18 $4b

    xor $58                                       ; $556c: $ee $58
    ld [hl], e                                    ; $556e: $73
    xor a                                         ; $556f: $af
    xor c                                         ; $5570: $a9
    ld c, l                                       ; $5571: $4d
    ld l, h                                       ; $5572: $6c
    ld bc, $35f5                                  ; $5573: $01 $f5 $35
    cp d                                          ; $5576: $ba
    dec de                                        ; $5577: $1b
    sub c                                         ; $5578: $91
    ld a, $8f                                     ; $5579: $3e $8f
    pop hl                                        ; $557b: $e1
    add l                                         ; $557c: $85
    ret                                           ; $557d: $c9


    dec e                                         ; $557e: $1d
    ld l, e                                       ; $557f: $6b
    xor $35                                       ; $5580: $ee $35
    ld sp, hl                                     ; $5582: $f9
    ld a, [hl-]                                   ; $5583: $3a
    pop bc                                        ; $5584: $c1
    cp $dd                                        ; $5585: $fe $dd
    ld h, d                                       ; $5587: $62
    adc l                                         ; $5588: $8d
    push bc                                       ; $5589: $c5
    ld d, d                                       ; $558a: $52
    adc d                                         ; $558b: $8a
    add a                                         ; $558c: $87
    ld a, a                                       ; $558d: $7f
    ld e, h                                       ; $558e: $5c
    xor e                                         ; $558f: $ab
    ld e, $ae                                     ; $5590: $1e $ae
    ld a, c                                       ; $5592: $79
    ldh [$bb], a                                  ; $5593: $e0 $bb
    ld b, h                                       ; $5595: $44
    and h                                         ; $5596: $a4
    dec [hl]                                      ; $5597: $35
    ld [hl+], a                                   ; $5598: $22
    inc h                                         ; $5599: $24
    call Call_02e_69d2                            ; $559a: $cd $d2 $69
    ld b, e                                       ; $559d: $43
    ld d, a                                       ; $559e: $57
    sbc $02                                       ; $559f: $de $02
    and a                                         ; $55a1: $a7
    ccf                                           ; $55a2: $3f
    adc b                                         ; $55a3: $88
    add hl, de                                    ; $55a4: $19
    and e                                         ; $55a5: $a3
    di                                            ; $55a6: $f3
    rst $00                                       ; $55a7: $c7
    ret nz                                        ; $55a8: $c0

    ldh [$8f], a                                  ; $55a9: $e0 $8f
    db $fd                                        ; $55ab: $fd
    xor d                                         ; $55ac: $aa
    ld c, d                                       ; $55ad: $4a
    ld l, e                                       ; $55ae: $6b
    db $fc                                        ; $55af: $fc
    dec [hl]                                      ; $55b0: $35
    cpl                                           ; $55b1: $2f
    db $ec                                        ; $55b2: $ec
    db $d3                                        ; $55b3: $d3
    ldh [rOCPD], a                                ; $55b4: $e0 $6b
    sub a                                         ; $55b6: $97

jr_02e_55b7:
    add hl, sp                                    ; $55b7: $39
    ld l, c                                       ; $55b8: $69
    ld e, h                                       ; $55b9: $5c
    adc e                                         ; $55ba: $8b
    rst $20                                       ; $55bb: $e7
    rla                                           ; $55bc: $17
    sub $75                                       ; $55bd: $d6 $75
    push bc                                       ; $55bf: $c5
    ld b, h                                       ; $55c0: $44
    adc e                                         ; $55c1: $8b
    rst $20                                       ; $55c2: $e7
    rla                                           ; $55c3: $17
    jp z, $d763                                   ; $55c4: $ca $63 $d7

    xor l                                         ; $55c7: $ad
    call nc, $b94d                                ; $55c8: $d4 $4d $b9
    and d                                         ; $55cb: $a2
    or $d0                                        ; $55cc: $f6 $d0
    ld d, $f5                                     ; $55ce: $16 $f5
    or l                                          ; $55d0: $b5
    rr a                                          ; $55d1: $cb $1f
    add $32                                       ; $55d3: $c6 $32
    ld [hl], b                                    ; $55d5: $70
    rst $00                                       ; $55d6: $c7
    or d                                          ; $55d7: $b2
    ret nc                                        ; $55d8: $d0

    ret z                                         ; $55d9: $c8

    rra                                           ; $55da: $1f
    jr nc, jr_02e_5637                            ; $55db: $30 $5a

    db $e3                                        ; $55dd: $e3
    ld [hl], l                                    ; $55de: $75
    ld h, e                                       ; $55df: $63
    ld e, h                                       ; $55e0: $5c
    cp e                                          ; $55e1: $bb
    ret c                                         ; $55e2: $d8

    ld a, [hl-]                                   ; $55e3: $3a
    ld a, a                                       ; $55e4: $7f
    rst $00                                       ; $55e5: $c7
    jr c, jr_02e_5666                             ; $55e6: $38 $7e

    sub $23                                       ; $55e8: $d6 $23
    adc d                                         ; $55ea: $8a
    cp h                                          ; $55eb: $bc
    dec b                                         ; $55ec: $05
    daa                                           ; $55ed: $27
    cp [hl]                                       ; $55ee: $be
    sbc a                                         ; $55ef: $9f
    or a                                          ; $55f0: $b7
    push af                                       ; $55f1: $f5
    or l                                          ; $55f2: $b5
    xor a                                         ; $55f3: $af
    dec b                                         ; $55f4: $05
    ld h, b                                       ; $55f5: $60
    xor h                                         ; $55f6: $ac
    or c                                          ; $55f7: $b1
    sbc b                                         ; $55f8: $98
    pop bc                                        ; $55f9: $c1
    xor [hl]                                      ; $55fa: $ae
    rlca                                          ; $55fb: $07
    ld l, [hl]                                    ; $55fc: $6e
    sbc a                                         ; $55fd: $9f
    ld a, [c]                                     ; $55fe: $f2
    ld d, $f5                                     ; $55ff: $16 $f5
    dec [hl]                                      ; $5601: $35
    and $61                                       ; $5602: $e6 $61
    inc l                                         ; $5604: $2c
    dec h                                         ; $5605: $25
    add e                                         ; $5606: $83
    db $eb                                        ; $5607: $eb
    ld b, c                                       ; $5608: $41
    inc sp                                        ; $5609: $33
    xor [hl]                                      ; $560a: $ae
    or c                                          ; $560b: $b1
    db $f4                                        ; $560c: $f4
    ld h, e                                       ; $560d: $63
    add $e8                                       ; $560e: $c6 $e8
    ld a, [de]                                    ; $5610: $1a
    ld d, a                                       ; $5611: $57
    db $ec                                        ; $5612: $ec
    ld [hl-], a                                   ; $5613: $32
    daa                                           ; $5614: $27
    push bc                                       ; $5615: $c5
    cp b                                          ; $5616: $b8
    ld d, $cf                                     ; $5617: $16 $cf
    cpl                                           ; $5619: $2f
    xor h                                         ; $561a: $ac
    db $eb                                        ; $561b: $eb

jr_02e_561c:
    adc d                                         ; $561c: $8a
    adc c                                         ; $561d: $89
    ld d, $cf                                     ; $561e: $16 $cf
    cpl                                           ; $5620: $2f
    sub h                                         ; $5621: $94
    rst $00                                       ; $5622: $c7
    xor [hl]                                      ; $5623: $ae
    ld e, e                                       ; $5624: $5b
    xor c                                         ; $5625: $a9
    sbc e                                         ; $5626: $9b
    ld [hl], d                                    ; $5627: $72
    push bc                                       ; $5628: $c5
    ld [$d18c], a                                 ; $5629: $ea $8c $d1
    rst $20                                       ; $562c: $e7
    xor [hl]                                      ; $562d: $ae
    cp h                                          ; $562e: $bc
    dec b                                         ; $562f: $05

Jump_02e_5630:
    ld e, c                                       ; $5630: $59
    jp c, Jump_000_2bbf                           ; $5631: $da $bf $2b

    ld l, b                                       ; $5634: $68
    adc l                                         ; $5635: $8d
    push bc                                       ; $5636: $c5

jr_02e_5637:
    adc d                                         ; $5637: $8a
    add $d2                                       ; $5638: $c6 $d2
    ld [hl], a                                    ; $563a: $77
    adc l                                         ; $563b: $8d
    ld l, e                                       ; $563c: $6b
    db $e4                                        ; $563d: $e4
    ld [hl], b                                    ; $563e: $70
    dec l                                         ; $563f: $2d
    inc bc                                        ; $5640: $03
    ld e, d                                       ; $5641: $5a
    or [hl]                                       ; $5642: $b6
    and $aa                                       ; $5643: $e6 $aa
    call z, $a033                                 ; $5645: $cc $33 $a0
    cp h                                          ; $5648: $bc
    dec b                                         ; $5649: $05
    daa                                           ; $564a: $27
    cp [hl]                                       ; $564b: $be
    sbc a                                         ; $564c: $9f
    ld e, h                                       ; $564d: $5c
    ld h, l                                       ; $564e: $65
    jr jr_02e_561c                                ; $564f: $18 $cb

    sub $fe                                       ; $5651: $d6 $fe
    db $dd                                        ; $5653: $dd
    ld [hl], b                                    ; $5654: $70
    adc l                                         ; $5655: $8d
    push bc                                       ; $5656: $c5
    jp nc, $3486                                  ; $5657: $d2 $86 $34

    inc hl                                        ; $565a: $23
    jp nc, Jump_02e_7c27                          ; $565b: $d2 $27 $7c

    ccf                                           ; $565e: $3f
    ld l, a                                       ; $565f: $6f
    ld bc, $95c7                                  ; $5660: $01 $c7 $95
    ld d, l                                       ; $5663: $55
    ld e, d                                       ; $5664: $5a
    xor b                                         ; $5665: $a8

jr_02e_5666:
    ld c, d                                       ; $5666: $4a
    dec d                                         ; $5667: $15
    xor l                                         ; $5668: $ad
    call c, Call_02e_798d                         ; $5669: $dc $8d $79
    add sp, $63                                   ; $566c: $e8 $63
    ld h, b                                       ; $566e: $60
    ld [hl], l                                    ; $566f: $75
    halt                                          ; $5670: $76
    ld [hl], l                                    ; $5671: $75
    ld b, a                                       ; $5672: $47
    or a                                          ; $5673: $b7
    ld [hl], c                                    ; $5674: $71
    xor l                                         ; $5675: $ad
    ret c                                         ; $5676: $d8

    ld d, d                                       ; $5677: $52
    or $33                                        ; $5678: $f6 $33
    and b                                         ; $567a: $a0
    cp h                                          ; $567b: $bc
    dec b                                         ; $567c: $05
    ld e, c                                       ; $567d: $59
    ld [hl], a                                    ; $567e: $77
    dec b                                         ; $567f: $05

Call_02e_5680:
    xor l                                         ; $5680: $ad
    jp $c749                                      ; $5681: $c3 $49 $c7


    dec l                                         ; $5684: $2d
    inc bc                                        ; $5685: $03
    jr c, jr_02e_56ce                             ; $5686: $38 $46

    sbc a                                         ; $5688: $9f
    rst $00                                       ; $5689: $c7
    ldh [rOCPD], a                                ; $568a: $e0 $6b
    sub a                                         ; $568c: $97
    add hl, sp                                    ; $568d: $39
    ld l, c                                       ; $568e: $69
    ld e, h                                       ; $568f: $5c
    adc e                                         ; $5690: $8b
    rst $20                                       ; $5691: $e7
    rla                                           ; $5692: $17
    sub $75                                       ; $5693: $d6 $75
    push bc                                       ; $5695: $c5
    ld b, h                                       ; $5696: $44
    adc e                                         ; $5697: $8b
    rst $20                                       ; $5698: $e7
    rla                                           ; $5699: $17
    jp z, $d763                                   ; $569a: $ca $63 $d7

    xor l                                         ; $569d: $ad
    call nc, $b94d                                ; $569e: $d4 $4d $b9
    ld [hl+], a                                   ; $56a1: $22
    rst $18                                       ; $56a2: $df
    ld d, c                                       ; $56a3: $51
    and l                                         ; $56a4: $a5
    ld l, b                                       ; $56a5: $68
    ld a, [bc]                                    ; $56a6: $0a
    ld a, [de]                                    ; $56a7: $1a
    or a                                          ; $56a8: $b7
    rra                                           ; $56a9: $1f
    xor e                                         ; $56aa: $ab
    ld l, h                                       ; $56ab: $6c
    rla                                           ; $56ac: $17
    db $db                                        ; $56ad: $db
    xor d                                         ; $56ae: $aa
    sub h                                         ; $56af: $94
    ld l, e                                       ; $56b0: $6b
    jp hl                                         ; $56b1: $e9


    rst $20                                       ; $56b2: $e7
    and h                                         ; $56b3: $a4
    ld e, l                                       ; $56b4: $5d
    ld l, h                                       ; $56b5: $6c
    sbc l                                         ; $56b6: $9d
    cp a                                          ; $56b7: $bf
    ld h, e                                       ; $56b8: $63
    inc e                                         ; $56b9: $1c
    ccf                                           ; $56ba: $3f
    db $eb                                        ; $56bb: $eb
    ld de, $be45                                  ; $56bc: $11 $45 $be
    ld d, e                                       ; $56bf: $53
    ld [hl], c                                    ; $56c0: $71
    inc b                                         ; $56c1: $04
    ld h, e                                       ; $56c2: $63
    inc l                                         ; $56c3: $2c
    ld d, [hl]                                    ; $56c4: $56
    ld l, h                                       ; $56c5: $6c
    rla                                           ; $56c6: $17
    ld e, e                                       ; $56c7: $5b
    ld a, [hl]                                    ; $56c8: $7e
    or c                                          ; $56c9: $b1
    push hl                                       ; $56ca: $e5
    and e                                         ; $56cb: $a3
    add a                                         ; $56cc: $87
    push af                                       ; $56cd: $f5

jr_02e_56ce:
    xor d                                         ; $56ce: $aa
    xor [hl]                                      ; $56cf: $ae
    dec hl                                        ; $56d0: $2b
    dec h                                         ; $56d1: $25
    sub a                                         ; $56d2: $97
    xor l                                         ; $56d3: $ad
    sub c                                         ; $56d4: $91
    sub [hl]                                      ; $56d5: $96
    sub [hl]                                      ; $56d6: $96
    dec de                                        ; $56d7: $1b
    ld c, $be                                     ; $56d8: $0e $be
    and $37                                       ; $56da: $e6 $37
    ld c, $17                                     ; $56dc: $0e $17
    pop hl                                        ; $56de: $e1
    ei                                            ; $56df: $fb
    db $e3                                        ; $56e0: $e3
    ld e, d                                       ; $56e1: $5a
    db $e3                                        ; $56e2: $e3
    ret c                                         ; $56e3: $d8

    ld a, c                                       ; $56e4: $79
    rlca                                          ; $56e5: $07
    rst $08                                       ; $56e6: $cf
    ld h, b                                       ; $56e7: $60
    dec b                                         ; $56e8: $05
    dec b                                         ; $56e9: $05
    db $e3                                        ; $56ea: $e3
    ld [hl], a                                    ; $56eb: $77
    ld hl, sp+$4b                                 ; $56ec: $f8 $4b
    db $dd                                        ; $56ee: $dd
    adc $7f                                       ; $56ef: $ce $7f
    and $3c                                       ; $56f1: $e6 $3c
    add hl, sp                                    ; $56f3: $39
    sub l                                         ; $56f4: $95
    and d                                         ; $56f5: $a2
    ld e, l                                       ; $56f6: $5d
    xor a                                         ; $56f7: $af
    rlca                                          ; $56f8: $07
    sub d                                         ; $56f9: $92
    db $db                                        ; $56fa: $db
    ld a, [$73ea]                                 ; $56fb: $fa $ea $73
    dec e                                         ; $56fe: $1d
    sbc [hl]                                      ; $56ff: $9e
    ld a, a                                       ; $5700: $7f
    inc l                                         ; $5701: $2c
    ld b, l                                       ; $5702: $45
    sub c                                         ; $5703: $91
    or a                                          ; $5704: $b7
    daa                                           ; $5705: $27
    jr z, jr_02e_56ce                             ; $5706: $28 $c6

    inc a                                         ; $5708: $3c
    cp h                                          ; $5709: $bc
    jr nc, jr_02e_577b                            ; $570a: $30 $6f

    ld bc, $cd1d                                  ; $570c: $01 $1d $cd
    db $d3                                        ; $570f: $d3
    add [hl]                                      ; $5710: $86
    sub h                                         ; $5711: $94
    rst $28                                       ; $5712: $ef
    ldh a, [rHDMA2]                               ; $5713: $f0 $52
    sbc $8f                                       ; $5715: $de $8f
    ld e, l                                       ; $5717: $5d
    ld l, h                                       ; $5718: $6c
    sbc l                                         ; $5719: $9d
    cp a                                          ; $571a: $bf
    ld h, e                                       ; $571b: $63
    inc e                                         ; $571c: $1c
    ccf                                           ; $571d: $3f
    db $eb                                        ; $571e: $eb
    ld de, $44c5                                  ; $571f: $11 $c5 $44
    set 2, [hl]                                   ; $5722: $cb $d6
    add sp, $6e                                   ; $5724: $e8 $6e
    ld b, b                                       ; $5726: $40
    rst $08                                       ; $5727: $cf
    ld sp, $86e4                                  ; $5728: $31 $e4 $86
    xor e                                         ; $572b: $ab
    or e                                          ; $572c: $b3
    and $f6                                       ; $572d: $e6 $f6
    ld l, a                                       ; $572f: $6f
    db $e4                                        ; $5730: $e4
    ld a, [c]                                     ; $5731: $f2
    ld [hl], c                                    ; $5732: $71
    ei                                            ; $5733: $fb
    or c                                          ; $5734: $b1
    jp z, $b176                                   ; $5735: $ca $76 $b1

    xor l                                         ; $5738: $ad
    ld c, d                                       ; $5739: $4a
    cp c                                          ; $573a: $b9
    sub [hl]                                      ; $573b: $96
    ld a, [hl]                                    ; $573c: $7e
    ld c, [hl]                                    ; $573d: $4e
    jp z, $f55b                                   ; $573e: $ca $5b $f5

    or l                                          ; $5741: $b5
    rr a                                          ; $5742: $cb $1f
    add $32                                       ; $5744: $c6 $32
    and b                                         ; $5746: $a0
    ld h, l                                       ; $5747: $65
    ld l, e                                       ; $5748: $6b
    rst $38                                       ; $5749: $ff
    ld l, [hl]                                    ; $574a: $6e
    cp b                                          ; $574b: $b8
    add $62                                       ; $574c: $c6 $62
    sub a                                         ; $574e: $97
    adc b                                         ; $574f: $88
    or h                                          ; $5750: $b4
    ld a, b                                       ; $5751: $78
    ld d, l                                       ; $5752: $55
    and l                                         ; $5753: $a5
    cp h                                          ; $5754: $bc
    dec b                                         ; $5755: $05
    daa                                           ; $5756: $27
    add e                                         ; $5757: $83

jr_02e_5758:
    ld c, d                                       ; $5758: $4a
    pop de                                        ; $5759: $d1

jr_02e_575a:
    ret c                                         ; $575a: $d8

    rst $28                                       ; $575b: $ef
    sub e                                         ; $575c: $93
    ld a, [c]                                     ; $575d: $f2
    sbc l                                         ; $575e: $9d
    ld [hl+], a                                   ; $575f: $22
    ld b, $f5                                     ; $5760: $06 $f5
    ld h, e                                       ; $5762: $63
    add hl, de                                    ; $5763: $19
    or b                                          ; $5764: $b0
    rst $08                                       ; $5765: $cf
    ld b, a                                       ; $5766: $47
    or b                                          ; $5767: $b0
    ld [hl], d                                    ; $5768: $72
    scf                                           ; $5769: $37
    ld [hl], b                                    ; $576a: $70
    adc e                                         ; $576b: $8b
    db $e4                                        ; $576c: $e4
    or d                                          ; $576d: $b2
    or l                                          ; $576e: $b5
    nop                                           ; $576f: $00
    adc h                                         ; $5770: $8c
    pop de                                        ; $5771: $d1
    add e                                         ; $5772: $83
    db $ec                                        ; $5773: $ec
    rlca                                          ; $5774: $07

Call_02e_5775:
Jump_02e_5775:
    ld e, $c3                                     ; $5775: $1e $c3
    dec bc                                        ; $5777: $0b
    di                                            ; $5778: $f3
    ld d, $27                                     ; $5779: $16 $27

jr_02e_577b:
    ret c                                         ; $577b: $d8

    ld l, $73                                     ; $577c: $2e $73
    jp nc, $d7ae                                  ; $577e: $d2 $ae $d7

    inc bc                                        ; $5781: $03
    ld l, c                                       ; $5782: $69
    ld a, l                                       ; $5783: $7d
    push af                                       ; $5784: $f5
    cp c                                          ; $5785: $b9
    ld c, $cf                                     ; $5786: $0e $cf
    ccf                                           ; $5788: $3f
    sub [hl]                                      ; $5789: $96
    and d                                         ; $578a: $a2
    ld e, b                                       ; $578b: $58
    ld h, l                                       ; $578c: $65
    jr jr_02e_575a                                ; $578d: $18 $cb

    sub $fe                                       ; $578f: $d6 $fe
    db $dd                                        ; $5791: $dd
    ld [hl], b                                    ; $5792: $70
    adc [hl]                                      ; $5793: $8e
    ld a, [$76f9]                                 ; $5794: $fa $f9 $76
    ld d, h                                       ; $5797: $54
    ld d, b                                       ; $5798: $50
    cp l                                          ; $5799: $bd
    ld c, e                                       ; $579a: $4b
    res 0, b                                      ; $579b: $cb $80
    sub [hl]                                      ; $579d: $96
    xor l                                         ; $579e: $ad
    dec [hl]                                      ; $579f: $35
    add d                                         ; $57a0: $82
    adc $33                                       ; $57a1: $ce $33
    and $a1                                       ; $57a3: $e6 $a1
    xor a                                         ; $57a5: $af
    xor a                                         ; $57a6: $af
    ld a, $d7                                     ; $57a7: $3e $d7
    pop hl                                        ; $57a9: $e1
    ld sp, hl                                     ; $57aa: $f9
    rst $00                                       ; $57ab: $c7
    ld d, d                                       ; $57ac: $52
    inc d                                         ; $57ad: $14
    or l                                          ; $57ae: $b5
    add a                                         ; $57af: $87
    or [hl]                                       ; $57b0: $b6
    dec e                                         ; $57b1: $1d
    inc c                                         ; $57b2: $0c
    ld h, e                                       ; $57b3: $63
    rrca                                          ; $57b4: $0f
    or b                                          ; $57b5: $b0
    dec b                                         ; $57b6: $05
    daa                                           ; $57b7: $27
    add e                                         ; $57b8: $83
    sub $00                                       ; $57b9: $d6 $00
    ld b, [hl]                                    ; $57bb: $46
    cp l                                          ; $57bc: $bd
    ld l, h                                       ; $57bd: $6c
    dec l                                         ; $57be: $2d
    ld l, l                                       ; $57bf: $6d
    add sp, $5a                                   ; $57c0: $e8 $5a
    di                                            ; $57c2: $f3
    ret nz                                        ; $57c3: $c0

    rst $00                                       ; $57c4: $c7
    inc a                                         ; $57c5: $3c
    adc b                                         ; $57c6: $88
    jp c, $5b43                                   ; $57c7: $da $43 $5b

    dec e                                         ; $57ca: $1d
    ld a, [c]                                     ; $57cb: $f2
    ld [hl], l                                    ; $57cc: $75
    ld a, h                                       ; $57cd: $7c
    ld b, h                                       ; $57ce: $44
    ld a, [c]                                     ; $57cf: $f2
    reti                                          ; $57d0: $d9


    adc d                                         ; $57d1: $8a
    xor l                                         ; $57d2: $ad
    sub c                                         ; $57d3: $91
    ld d, a                                       ; $57d4: $57
    jr jr_02e_5758                                ; $57d5: $18 $81

    rst $28                                       ; $57d7: $ef
    adc a                                         ; $57d8: $8f
    rst $18                                       ; $57d9: $df
    push af                                       ; $57da: $f5
    ret                                           ; $57db: $c9


    push hl                                       ; $57dc: $e5
    db $e3                                        ; $57dd: $e3
    or $63                                        ; $57de: $f6 $63
    sub l                                         ; $57e0: $95
    db $ed                                        ; $57e1: $ed
    ld h, d                                       ; $57e2: $62
    ld e, e                                       ; $57e3: $5b
    sub l                                         ; $57e4: $95
    ld [hl], d                                    ; $57e5: $72
    dec l                                         ; $57e6: $2d
    db $fd                                        ; $57e7: $fd
    sbc h                                         ; $57e8: $9c
    sub h                                         ; $57e9: $94
    ld e, h                                       ; $57ea: $5c
    or c                                          ; $57eb: $b1
    dec e                                         ; $57ec: $1d
    ld [hl], h                                    ; $57ed: $74
    ret nc                                        ; $57ee: $d0

    add c                                         ; $57ef: $81
    ret                                           ; $57f0: $c9


    adc c                                         ; $57f1: $89
    add $ef                                       ; $57f2: $c6 $ef
    dec [hl]                                      ; $57f4: $35
    ld l, e                                       ; $57f5: $6b
    ld e, h                                       ; $57f6: $5c
    sbc a                                         ; $57f7: $9f
    cp e                                          ; $57f8: $bb
    ld b, $5f                                     ; $57f9: $06 $5f
    cp e                                          ; $57fb: $bb

jr_02e_57fc:
    call z, $e349                                 ; $57fc: $cc $49 $e3
    ld e, d                                       ; $57ff: $5a
    inc a                                         ; $5800: $3c
    cp a                                          ; $5801: $bf
    or b                                          ; $5802: $b0
    xor [hl]                                      ; $5803: $ae
    dec hl                                        ; $5804: $2b
    ld h, $5a                                     ; $5805: $26 $5a
    inc a                                         ; $5807: $3c
    cp a                                          ; $5808: $bf
    ld d, b                                       ; $5809: $50
    ld e, $bb                                     ; $580a: $1e $bb
    ld l, [hl]                                    ; $580c: $6e
    and l                                         ; $580d: $a5
    ld l, [hl]                                    ; $580e: $6e
    jp z, Jump_02e_7915                           ; $580f: $ca $15 $79

    dec bc                                        ; $5812: $0b
    dec e                                         ; $5813: $1d
    ld bc, $5ea3                                  ; $5814: $01 $a3 $5e
    or [hl]                                       ; $5817: $b6
    add $3c                                       ; $5818: $c6 $3c
    db $f4                                        ; $581a: $f4
    ld sp, $5c8f                                  ; $581b: $31 $8f $5c
    cp e                                          ; $581e: $bb
    jp z, $b92d                                   ; $581f: $ca $2d $b9

    ld [$40fd], a                                 ; $5822: $ea $fd $40
    add c                                         ; $5825: $81
    rst $10                                       ; $5826: $d7
    ld e, $da                                     ; $5827: $1e $da
    ld [bc], a                                    ; $5829: $02
    daa                                           ; $582a: $27
    ret c                                         ; $582b: $d8

    sbc b                                         ; $582c: $98
    add a                                         ; $582d: $87
    rla                                           ; $582e: $17
    and $eb                                       ; $582f: $e6 $eb
    sub b                                         ; $5831: $90
    xor a                                         ; $5832: $af
    db $e3                                        ; $5833: $e3
    inc hl                                        ; $5834: $23
    sub d                                         ; $5835: $92
    ld c, a                                       ; $5836: $4f
    sbc a                                         ; $5837: $9f
    ld e, h                                       ; $5838: $5c
    ld l, [hl]                                    ; $5839: $6e
    and e                                         ; $583a: $a3
    rlca                                          ; $583b: $07
    or h                                          ; $583c: $b4
    db $10                                        ; $583d: $10
    sub h                                         ; $583e: $94
    ld a, h                                       ; $583f: $7c
    add a                                         ; $5840: $87
    adc a                                         ; $5841: $8f
    ld e, $d0                                     ; $5842: $1e $d0
    ld [$dcac], a                                 ; $5844: $ea $ac $dc
    reti                                          ; $5847: $d9


    ld [bc], a                                    ; $5848: $02
    ld d, a                                       ; $5849: $57
    ld [hl], d                                    ; $584a: $72
    rst $00                                       ; $584b: $c7
    sbc d                                         ; $584c: $9a
    ld a, e                                       ; $584d: $7b
    ld c, l                                       ; $584e: $4d
    sbc $02                                       ; $584f: $de $02
    sbc l                                         ; $5851: $9d
    cp h                                          ; $5852: $bc
    ld l, [hl]                                    ; $5853: $6e
    inc l                                         ; $5854: $2c
    add l                                         ; $5855: $85
    ld a, [$4ef9]                                 ; $5856: $fa $f9 $4e
    ld a, h                                       ; $5859: $7c
    db $10                                        ; $585a: $10
    or e                                          ; $585b: $b3
    ld d, d                                       ; $585c: $52
    sbc $8f                                       ; $585d: $de $8f
    ld [hl], c                                    ; $585f: $71
    ei                                            ; $5860: $fb
    or c                                          ; $5861: $b1
    ld h, d                                       ; $5862: $62
    ei                                            ; $5863: $fb
    rrca                                          ; $5864: $0f
    jr jr_02e_57fc                                ; $5865: $18 $95

    and d                                         ; $5867: $a2
    sbc l                                         ; $5868: $9d
    rst $38                                       ; $5869: $ff
    cp [hl]                                       ; $586a: $be
    add $15                                       ; $586b: $c6 $15
    cp e                                          ; $586d: $bb
    ret c                                         ; $586e: $d8

    ld d, [hl]                                    ; $586f: $56
    and l                                         ; $5870: $a5
    ld e, h                                       ; $5871: $5c
    or c                                          ; $5872: $b1
    db $f4                                        ; $5873: $f4
    ld [hl], e                                    ; $5874: $73
    ld d, d                                       ; $5875: $52
    db $e4                                        ; $5876: $e4
    dec sp                                        ; $5877: $3b
    ld e, l                                       ; $5878: $5d
    add b                                         ; $5879: $80
    and l                                         ; $587a: $a5
    add sp, -$04                                  ; $587b: $e8 $fc
    ld d, l                                       ; $587d: $55
    ld e, d                                       ; $587e: $5a
    nop                                           ; $587f: $00
    ld [hl-], a                                   ; $5880: $32
    xor [hl]                                      ; $5881: $ae
    cp h                                          ; $5882: $bc

Call_02e_5883:
jr_02e_5883:
    dec b                                         ; $5883: $05
    daa                                           ; $5884: $27
    ret c                                         ; $5885: $d8

    ld a, $54                                     ; $5886: $3e $54
    scf                                           ; $5888: $37
    ld a, a                                       ; $5889: $7f
    dec sp                                        ; $588a: $3b
    add sp, -$60                                  ; $588b: $e8 $a0
    inc bc                                        ; $588d: $03
    and a                                         ; $588e: $a7
    and b                                         ; $588f: $a0
    dec [hl]                                      ; $5890: $35
    and $2b                                       ; $5891: $e6 $2b
    ld [hl], l                                    ; $5893: $75
    ld a, [c]                                     ; $5894: $f2
    sbc l                                         ; $5895: $9d
    ld l, $c0                                     ; $5896: $2e $c0
    ld d, d                                       ; $5898: $52
    ld [hl], h                                    ; $5899: $74
    cp $be                                        ; $589a: $fe $be
    sub $dc                                       ; $589c: $d6 $dc
    cp $8d                                        ; $589e: $fe $8d
    ld e, h                                       ; $58a0: $5c
    cp [hl]                                       ; $58a1: $be
    inc c                                         ; $58a2: $0c
    ld l, b                                       ; $58a3: $68
    call c, $ac7e                                 ; $58a4: $dc $7e $ac
    ret c                                         ; $58a7: $d8

    ld l, $b6                                     ; $58a8: $2e $b6
    ld d, l                                       ; $58aa: $55
    add hl, hl                                    ; $58ab: $29
    rst $10                                       ; $58ac: $d7
    jp nc, Jump_02e_49cf                          ; $58ad: $d2 $cf $49

    inc sp                                        ; $58b0: $33
    and b                                         ; $58b1: $a0
    rst $20                                       ; $58b2: $e7
    jr jr_02e_58ec                                ; $58b3: $18 $37

    push hl                                       ; $58b5: $e5
    dec sp                                        ; $58b6: $3b
    pop bc                                        ; $58b7: $c1
    sub [hl]                                      ; $58b8: $96
    or d                                          ; $58b9: $b2
    sbc a                                         ; $58ba: $9f
    ld bc, $dfed                                  ; $58bb: $01 $ed $df
    dec d                                         ; $58be: $15
    or h                                          ; $58bf: $b4
    add $62                                       ; $58c0: $c6 $62
    xor [hl]                                      ; $58c2: $ae
    ld l, b                                       ; $58c3: $68
    sbc $0f                                       ; $58c4: $de $0f
    ld c, e                                       ; $58c6: $4b
    dec d                                         ; $58c7: $15
    adc l                                         ; $58c8: $8d
    dec hl                                        ; $58c9: $2b
    or $52                                        ; $58ca: $f6 $52
    reti                                          ; $58cc: $d9


    and d                                         ; $58cd: $a2
    ld e, b                                       ; $58ce: $58
    inc hl                                        ; $58cf: $23
    rst $20                                       ; $58d0: $e7
    db $10                                        ; $58d1: $10
    ei                                            ; $58d2: $fb
    jr c, jr_02e_5883                             ; $58d3: $38 $ae

    ld e, b                                       ; $58d5: $58
    and l                                         ; $58d6: $a5
    ld a, [hl+]                                   ; $58d7: $2a
    push hl                                       ; $58d8: $e5
    adc d                                         ; $58d9: $8a
    sbc c                                         ; $58da: $99
    cp e                                          ; $58db: $bb
    ld e, l                                       ; $58dc: $5d
    db $ec                                        ; $58dd: $ec
    ld e, e                                       ; $58de: $5b
    db $e4                                        ; $58df: $e4
    dec l                                         ; $58e0: $2d
    push af                                       ; $58e1: $f5
    or l                                          ; $58e2: $b5
    nop                                           ; $58e3: $00
    adc h                                         ; $58e4: $8c
    ld a, l                                       ; $58e5: $7d
    ld h, e                                       ; $58e6: $63
    db $fc                                        ; $58e7: $fc
    or [hl]                                       ; $58e8: $b6
    ld [$40fd], a                                 ; $58e9: $ea $fd $40

jr_02e_58ec:
    add c                                         ; $58ec: $81
    daa                                           ; $58ed: $27
    sub a                                         ; $58ee: $97
    xor l                                         ; $58ef: $ad
    pop af                                        ; $58f0: $f1
    add a                                         ; $58f1: $87
    ld sp, $3d17                                  ; $58f2: $31 $17 $3d
    ldh a, [$2f]                                  ; $58f5: $f0 $2f
    rra                                           ; $58f7: $1f
    or a                                          ; $58f8: $b7
    rra                                           ; $58f9: $1f
    dec hl                                        ; $58fa: $2b
    ld a, [de]                                    ; $58fb: $1a
    db $db                                        ; $58fc: $db
    ld c, d                                       ; $58fd: $4a
    ret                                           ; $58fe: $c9


    ld e, e                                       ; $58ff: $5b
    ld b, a                                       ; $5900: $47
    sbc $e2                                       ; $5901: $de $e2
    sub l                                         ; $5903: $95
    ld e, e                                       ; $5904: $5b
    ld [hl], d                                    ; $5905: $72
    sub a                                         ; $5906: $97
    add $02                                       ; $5907: $c6 $02
    cp h                                          ; $5909: $bc
    ret c                                         ; $590a: $d8

    and d                                         ; $590b: $a2
    add hl, hl                                    ; $590c: $29
    ld l, b                                       ; $590d: $68
    ld l, c                                       ; $590e: $69
    ld a, c                                       ; $590f: $79
    ld [hl], l                                    ; $5910: $75
    bit 3, e                                      ; $5911: $cb $5b
    and a                                         ; $5913: $a7
    cp a                                          ; $5914: $bf
    ld a, [de]                                    ; $5915: $1a
    sbc l                                         ; $5916: $9d
    ccf                                           ; $5917: $3f
    add e                                         ; $5918: $83
    or c                                          ; $5919: $b1
    nop                                           ; $591a: $00
    cpl                                           ; $591b: $2f
    or [hl]                                       ; $591c: $b6
    ld l, b                                       ; $591d: $68
    ld bc, $d8c8                                  ; $591e: $01 $c8 $d8
    and a                                         ; $5921: $a7
    cp h                                          ; $5922: $bc
    dec b                                         ; $5923: $05
    and a                                         ; $5924: $a7
    cp a                                          ; $5925: $bf
    ld a, [de]                                    ; $5926: $1a
    sbc l                                         ; $5927: $9d
    ccf                                           ; $5928: $3f
    add e                                         ; $5929: $83
    or c                                          ; $592a: $b1
    nop                                           ; $592b: $00
    cpl                                           ; $592c: $2f
    or [hl]                                       ; $592d: $b6
    ld l, b                                       ; $592e: $68
    adc l                                         ; $592f: $8d
    rst $18                                       ; $5930: $df
    xor [hl]                                      ; $5931: $ae
    dec de                                        ; $5932: $1b
    rst $10                                       ; $5933: $d7
    and a                                         ; $5934: $a7
    cp h                                          ; $5935: $bc
    dec b                                         ; $5936: $05
    ld b, a                                       ; $5937: $47
    sbc $e2                                       ; $5938: $de $e2
    sub l                                         ; $593a: $95
    ld e, e                                       ; $593b: $5b
    ld [hl], d                                    ; $593c: $72
    push de                                       ; $593d: $d5
    ei                                            ; $593e: $fb
    add c                                         ; $593f: $81
    ld [bc], a                                    ; $5940: $02
    ld c, a                                       ; $5941: $4f
    xor [hl]                                      ; $5942: $ae
    ld a, d                                       ; $5943: $7a
    ld a, a                                       ; $5944: $7f
    add h                                         ; $5945: $84
    cp $d0                                        ; $5946: $fe $d0
    db $eb                                        ; $5948: $eb
    ld e, l                                       ; $5949: $5d
    add [hl]                                      ; $594a: $86
    ld de, $829a                                  ; $594b: $11 $9a $82
    halt                                          ; $594e: $76
    ld e, c                                       ; $594f: $59
    call nz, Call_02e_6f2d                        ; $5950: $c4 $2d $6f
    ld bc, $bea7                                  ; $5953: $01 $a7 $be
    ld a, [de]                                    ; $5956: $1a
    sbc l                                         ; $5957: $9d
    cp a                                          ; $5958: $bf
    add $81                                       ; $5959: $c6 $81

Jump_02e_595b:
    db $eb                                        ; $595b: $eb
    ld d, e                                       ; $595c: $53
    ld [hl], d                                    ; $595d: $72
    push de                                       ; $595e: $d5
    ei                                            ; $595f: $fb
    add c                                         ; $5960: $81
    ld [bc], a                                    ; $5961: $02
    ld c, a                                       ; $5962: $4f
    xor $3f                                       ; $5963: $ee $3f
    ld [hl], d                                    ; $5965: $72
    db $ed                                        ; $5966: $ed
    ccf                                           ; $5967: $3f
    ld h, b                                       ; $5968: $60
    ld h, h                                       ; $5969: $64
    jr nc, jr_02e_5983                            ; $596a: $30 $17

    db $d3                                        ; $596c: $d3
    dec [hl]                                      ; $596d: $35
    xor c                                         ; $596e: $a9
    jp nc, $29a7                                  ; $596f: $d2 $a7 $29

    ld l, b                                       ; $5972: $68
    xor h                                         ; $5973: $ac
    add d                                         ; $5974: $82
    ld de, $29f6                                  ; $5975: $11 $f6 $29
    ld l, a                                       ; $5978: $6f
    ld bc, $609d                                  ; $5979: $01 $9d $60
    ld d, $2b                                     ; $597c: $16 $2b
    or [hl]                                       ; $597e: $b6
    res 3, h                                      ; $597f: $cb $9c
    ld d, h                                       ; $5981: $54
    ld a, e                                       ; $5982: $7b

jr_02e_5983:
    ld l, b                                       ; $5983: $68
    dec bc                                        ; $5984: $0b
    daa                                           ; $5985: $27
    cp [hl]                                       ; $5986: $be
    rst $18                                       ; $5987: $df
    ld [bc], a                                    ; $5988: $02
    ld b, a                                       ; $5989: $47
    or c                                          ; $598a: $b1
    sub a                                         ; $598b: $97
    ld b, d                                       ; $598c: $42
    db $fd                                        ; $598d: $fd
    db $e4                                        ; $598e: $e4
    jr jr_02e_59ec                                ; $598f: $18 $5b

    or c                                          ; $5991: $b1
    ld e, l                                       ; $5992: $5d
    ld l, h                                       ; $5993: $6c
    ld sp, hl                                     ; $5994: $f9
    push bc                                       ; $5995: $c5
    sub [hl]                                      ; $5996: $96
    rst $08                                       ; $5997: $cf
    xor l                                         ; $5998: $ad
    ld b, c                                       ; $5999: $41
    xor [hl]                                      ; $599a: $ae
    ld c, d                                       ; $599b: $4a
    sbc a                                         ; $599c: $9f
    ld a, [c]                                     ; $599d: $f2
    push de                                       ; $599e: $d5
    rst $10                                       ; $599f: $d7
    cp $dd                                        ; $59a0: $fe $dd
    ld [hl], b                                    ; $59a2: $70
    adc l                                         ; $59a3: $8d
    push bc                                       ; $59a4: $c5
    cp b                                          ; $59a5: $b8
    ld b, [hl]                                    ; $59a6: $46
    xor d                                         ; $59a7: $aa
    sbc d                                         ; $59a8: $9a
    ld e, b                                       ; $59a9: $58
    sbc l                                         ; $59aa: $9d
    dec [hl]                                      ; $59ab: $35
    ld [hl], d                                    ; $59ac: $72
    xor $ca                                       ; $59ad: $ee $ca
    ld e, e                                       ; $59af: $5b
    ld b, a                                       ; $59b0: $47
    sub $8d                                       ; $59b1: $d6 $8d
    ld h, l                                       ; $59b3: $65
    ld b, b                                       ; $59b4: $40
    inc hl                                        ; $59b5: $23
    sbc b                                         ; $59b6: $98
    add c                                         ; $59b7: $81
    ld e, e                                       ; $59b8: $5b
    inc l                                         ; $59b9: $2c
    adc l                                         ; $59ba: $8d
    rra                                           ; $59bb: $1f
    sub e                                         ; $59bc: $93
    dec sp                                        ; $59bd: $3b
    sub $dc                                       ; $59be: $d6 $dc
    ld l, e                                       ; $59c0: $6b
    sub d                                         ; $59c1: $92
    ld a, e                                       ; $59c2: $7b
    ld a, a                                       ; $59c3: $7f
    xor [hl]                                      ; $59c4: $ae
    ld c, a                                       ; $59c5: $4f
    xor [hl]                                      ; $59c6: $ae
    push de                                       ; $59c7: $d5
    ld e, c                                       ; $59c8: $59
    rst $00                                       ; $59c9: $c7
    rlca                                          ; $59ca: $07
    cp h                                          ; $59cb: $bc
    sbc b                                         ; $59cc: $98
    di                                            ; $59cd: $f3
    cp h                                          ; $59ce: $bc
    dec b                                         ; $59cf: $05
    sbc l                                         ; $59d0: $9d
    ld h, b                                       ; $59d1: $60
    ld d, $bb                                     ; $59d2: $16 $bb
    pop de                                        ; $59d4: $d1

Call_02e_59d5:
    ld l, l                                       ; $59d5: $6d
    inc l                                         ; $59d6: $2c
    scf                                           ; $59d7: $37
    ld b, [hl]                                    ; $59d8: $46
    sub l                                         ; $59d9: $95
    ld a, $2d                                     ; $59da: $3e $2d
    ld d, l                                       ; $59dc: $55
    inc d                                         ; $59dd: $14
    ld [hl], c                                    ; $59de: $71
    ld c, e                                       ; $59df: $4b
    xor [hl]                                      ; $59e0: $ae
    ld [hl-], a                                   ; $59e1: $32
    adc h                                         ; $59e2: $8c
    push de                                       ; $59e3: $d5
    ld e, c                                       ; $59e4: $59
    db $e3                                        ; $59e5: $e3
    or a                                          ; $59e6: $b7
    ret nc                                        ; $59e7: $d0

    and a                                         ; $59e8: $a7
    ld de, $314c                                  ; $59e9: $11 $4c $31

jr_02e_59ec:
    ld d, $dc                                     ; $59ec: $16 $dc
    inc e                                         ; $59ee: $1c
    di                                            ; $59ef: $f3
    ld d, $a7                                     ; $59f0: $16 $a7
    ccf                                           ; $59f2: $3f
    adc b                                         ; $59f3: $88
    ld [hl], l                                    ; $59f4: $75
    ld c, l                                       ; $59f5: $4d
    adc d                                         ; $59f6: $8a
    ld e, c                                       ; $59f7: $59
    add hl, hl                                    ; $59f8: $29
    or a                                          ; $59f9: $b7
    ld e, l                                       ; $59fa: $5d
    ld l, h                                       ; $59fb: $6c
    sbc l                                         ; $59fc: $9d
    cp a                                          ; $59fd: $bf
    and d                                         ; $59fe: $a2
    or c                                          ; $59ff: $b1
    ldh [$e6], a                                  ; $5a00: $e0 $e6
    jr jr_02e_5a25                                ; $5a02: $18 $21

    ldh a, [$bd]                                  ; $5a04: $f0 $bd
    ccf                                           ; $5a06: $3f
    adc [hl]                                      ; $5a07: $8e
    ld l, [hl]                                    ; $5a08: $6e
    ld c, b                                       ; $5a09: $48
    ld a, c                                       ; $5a0a: $79
    dec bc                                        ; $5a0b: $0b
    and a                                         ; $5a0c: $a7
    ccf                                           ; $5a0d: $3f
    adc b                                         ; $5a0e: $88
    add hl, de                                    ; $5a0f: $19
    and e                                         ; $5a10: $a3
    di                                            ; $5a11: $f3
    sub a                                         ; $5a12: $97
    ld b, d                                       ; $5a13: $42
    db $fd                                        ; $5a14: $fd
    ld d, l                                       ; $5a15: $55
    jp nz, $0452                                  ; $5a16: $c2 $52 $04

    xor [hl]                                      ; $5a19: $ae
    ld d, l                                       ; $5a1a: $55
    ld hl, sp-$4b                                 ; $5a1b: $f8 $b5
    inc c                                         ; $5a1d: $0c
    ld l, b                                       ; $5a1e: $68
    push bc                                       ; $5a1f: $c5
    add $e5                                       ; $5a20: $c6 $e5
    rra                                           ; $5a22: $1f
    db $eb                                        ; $5a23: $eb
    cp d                                          ; $5a24: $ba

jr_02e_5a25:
    sub [hl]                                      ; $5a25: $96
    ld a, [hl]                                    ; $5a26: $7e
    jr jr_02e_5aa2                                ; $5a27: $18 $79

    dec bc                                        ; $5a29: $0b
    push af                                       ; $5a2a: $f5
    rst $28                                       ; $5a2b: $ef
    adc d                                         ; $5a2c: $8a
    and [hl]                                      ; $5a2d: $a6
    xor [hl]                                      ; $5a2e: $ae
    ld l, e                                       ; $5a2f: $6b
    add hl, de                                    ; $5a30: $19
    ret nc                                        ; $5a31: $d0

    adc d                                         ; $5a32: $8a
    halt                                          ; $5a33: $76
    cp l                                          ; $5a34: $bd
    ld a, [hl+]                                   ; $5a35: $2a
    ld h, l                                       ; $5a36: $65
    or h                                          ; $5a37: $b4
    ret nc                                        ; $5a38: $d0

    ld a, [de]                                    ; $5a39: $1a
    adc e                                         ; $5a3a: $8b
    sub b                                         ; $5a3b: $90
    db $db                                        ; $5a3c: $db
    ld a, [hl+]                                   ; $5a3d: $2a
    inc d                                         ; $5a3e: $14
    ld [hl], h                                    ; $5a3f: $74
    ld e, [hl]                                    ; $5a40: $5e
    di                                            ; $5a41: $f3
    ret nz                                        ; $5a42: $c0

    rst $00                                       ; $5a43: $c7
    inc a                                         ; $5a44: $3c
    adc b                                         ; $5a45: $88
    ld e, l                                       ; $5a46: $5d
    ld [hl+], a                                   ; $5a47: $22
    jp nc, $0fd2                                  ; $5a48: $d2 $d2 $0f

    and e                                         ; $5a4b: $a3
    sbc $85                                       ; $5a4c: $de $85
    ret                                           ; $5a4e: $c9


    ld d, l                                       ; $5a4f: $55
    rst $28                                       ; $5a50: $ef
    rlca                                          ; $5a51: $07
    ld a, [bc]                                    ; $5a52: $0a
    inc a                                         ; $5a53: $3c
    ld l, a                                       ; $5a54: $6f
    ld bc, $3e27                                  ; $5a55: $01 $27 $3e
    adc b                                         ; $5a58: $88
    and l                                         ; $5a59: $a5
    db $dd                                        ; $5a5a: $dd
    sbc d                                         ; $5a5b: $9a
    ld b, [hl]                                    ; $5a5c: $46
    cp $7e                                        ; $5a5d: $fe $7e
    inc c                                         ; $5a5f: $0c
    cp [hl]                                       ; $5a60: $be
    sub $60                                       ; $5a61: $d6 $60
    db $dd                                        ; $5a63: $dd
    ld c, e                                       ; $5a64: $4b
    cp e                                          ; $5a65: $bb
    ld e, [hl]                                    ; $5a66: $5e
    ld d, l                                       ; $5a67: $55
    db $dd                                        ; $5a68: $dd
    xor d                                         ; $5a69: $aa
    rst $20                                       ; $5a6a: $e7
    ld b, [hl]                                    ; $5a6b: $46
    ret z                                         ; $5a6c: $c8

    ld l, b                                       ; $5a6d: $68
    ld a, [$1e63]                                 ; $5a6e: $fa $63 $1e
    cp c                                          ; $5a71: $b9
    add $7e                                       ; $5a72: $c6 $7e
    rst $38                                       ; $5a74: $ff
    dec bc                                        ; $5a75: $0b
    ld a, h                                       ; $5a76: $7c
    add c                                         ; $5a77: $81
    ld h, e                                       ; $5a78: $63
    ld e, $c4                                     ; $5a79: $1e $c4
    xor [hl]                                      ; $5a7b: $ae
    rst $30                                       ; $5a7c: $f7
    add hl, bc                                    ; $5a7d: $09
    ccf                                           ; $5a7e: $3f
    add sp, -$04                                  ; $5a7f: $e8 $fc
    push de                                       ; $5a81: $d5
    ld e, c                                       ; $5a82: $59
    inc hl                                        ; $5a83: $23
    rst $20                                       ; $5a84: $e7
    xor [hl]                                      ; $5a85: $ae
    cp h                                          ; $5a86: $bc
    dec b                                         ; $5a87: $05
    daa                                           ; $5a88: $27
    ret c                                         ; $5a89: $d8

    ld l, $b6                                     ; $5a8a: $2e $b6
    db $fd                                        ; $5a8c: $fd
    ld c, e                                       ; $5a8d: $4b
    or e                                          ; $5a8e: $b3
    pop de                                        ; $5a8f: $d1
    inc bc                                        ; $5a90: $03
    rst $38                                       ; $5a91: $ff
    or a                                          ; $5a92: $b7
    db $e4                                        ; $5a93: $e4
    xor d                                         ; $5a94: $aa
    rst $30                                       ; $5a95: $f7
    inc bc                                        ; $5a96: $03
    dec b                                         ; $5a97: $05
    sbc [hl]                                      ; $5a98: $9e
    or a                                          ; $5a99: $b7
    push af                                       ; $5a9a: $f5
    rst $28                                       ; $5a9b: $ef
    adc d                                         ; $5a9c: $8a
    and [hl]                                      ; $5a9d: $a6
    xor [hl]                                      ; $5a9e: $ae
    ld l, e                                       ; $5a9f: $6b
    add hl, de                                    ; $5aa0: $19
    ret nc                                        ; $5aa1: $d0

jr_02e_5aa2:
    sbc b                                         ; $5aa2: $98
    rlca                                          ; $5aa3: $07
    or c                                          ; $5aa4: $b1
    ld a, a                                       ; $5aa5: $7f
    rst $28                                       ; $5aa6: $ef
    sbc d                                         ; $5aa7: $9a
    inc d                                         ; $5aa8: $14
    ld l, e                                       ; $5aa9: $6b
    inc l                                         ; $5aaa: $2c
    ld h, [hl]                                    ; $5aab: $66
    db $10                                        ; $5aac: $10
    add c                                         ; $5aad: $81
    ld h, e                                       ; $5aae: $63
    cp c                                          ; $5aaf: $b9
    ld sp, $f4aa                                  ; $5ab0: $31 $aa $f4
    ld l, c                                       ; $5ab3: $69
    xor c                                         ; $5ab4: $a9
    and d                                         ; $5ab5: $a2
    adc b                                         ; $5ab6: $88
    ld e, e                                       ; $5ab7: $5b
    ld [hl], d                                    ; $5ab8: $72
    sub a                                         ; $5ab9: $97
    adc b                                         ; $5aba: $88
    or h                                          ; $5abb: $b4
    db $f4                                        ; $5abc: $f4
    jp $77a8                                      ; $5abd: $c3 $a8 $77


    ld h, c                                       ; $5ac0: $61
    sbc $02                                       ; $5ac1: $de $02
    and a                                         ; $5ac3: $a7
    ccf                                           ; $5ac4: $3f

jr_02e_5ac5:
    adc b                                         ; $5ac5: $88
    ld [hl], l                                    ; $5ac6: $75
    ld c, l                                       ; $5ac7: $4d
    adc d                                         ; $5ac8: $8a
    sub c                                         ; $5ac9: $91
    rst $10                                       ; $5aca: $d7
    adc l                                         ; $5acb: $8d
    and l                                         ; $5acc: $a5
    call c, Call_000_2518                         ; $5acd: $dc $18 $25
    ld d, a                                       ; $5ad0: $57
    cp l                                          ; $5ad1: $bd
    rra                                           ; $5ad2: $1f
    jr z, jr_02e_5ac5                             ; $5ad3: $28 $f0

    cp h                                          ; $5ad5: $bc
    dec b                                         ; $5ad6: $05
    ld b, a                                       ; $5ad7: $47
    cp b                                          ; $5ad8: $b8
    ld sp, $fc6f                                  ; $5ad9: $31 $6f $fc
    sbc $35                                       ; $5adc: $de $35
    cp c                                          ; $5ade: $b9
    and $62                                       ; $5adf: $e6 $62
    db $f4                                        ; $5ae1: $f4
    ld h, c                                       ; $5ae2: $61
    call $1f03                                    ; $5ae3: $cd $03 $1f
    db $fc                                        ; $5ae6: $fc
    add hl, de                                    ; $5ae7: $19
    sub b                                         ; $5ae8: $90
    ld l, e                                       ; $5ae9: $6b
    rst $10                                       ; $5aea: $d7
    xor e                                         ; $5aeb: $ab
    ld d, d                                       ; $5aec: $52
    ld b, [hl]                                    ; $5aed: $46
    ret                                           ; $5aee: $c9


    ld d, l                                       ; $5aef: $55
    rst $28                                       ; $5af0: $ef
    rlca                                          ; $5af1: $07
    ld a, [bc]                                    ; $5af2: $0a
    inc a                                         ; $5af3: $3c
    ld l, a                                       ; $5af4: $6f
    ld bc, $3fa7                                  ; $5af5: $01 $a7 $3f
    adc b                                         ; $5af8: $88
    db $fd                                        ; $5af9: $fd
    ld a, e                                       ; $5afa: $7b
    rst $10                                       ; $5afb: $d7

jr_02e_5afc:
    and h                                         ; $5afc: $a4
    ld e, b                                       ; $5afd: $58
    ld h, e                                       ; $5afe: $63
    ld sp, $2bf8                                  ; $5aff: $31 $f8 $2b
    ld e, l                                       ; $5b02: $5d
    ld e, [hl]                                    ; $5b03: $5e
    ld l, h                                       ; $5b04: $6c
    add c                                         ; $5b05: $81
    daa                                           ; $5b06: $27
    ld d, a                                       ; $5b07: $57
    cp l                                          ; $5b08: $bd
    rra                                           ; $5b09: $1f
    jr z, jr_02e_5afc                             ; $5b0a: $28 $f0

    cp h                                          ; $5b0c: $bc
    dec b                                         ; $5b0d: $05
    daa                                           ; $5b0e: $27
    ld l, b                                       ; $5b0f: $68
    inc l                                         ; $5b10: $2c
    cp b                                          ; $5b11: $b8
    add hl, sp                                    ; $5b12: $39
    ld b, [hl]                                    ; $5b13: $46
    ld [$cc7c], sp                                ; $5b14: $08 $7c $cc
    add e                                         ; $5b17: $83
    ret c                                         ; $5b18: $d8

    push af                                       ; $5b19: $f5
    cp $b7                                        ; $5b1a: $fe $b7
    ld l, [hl]                                    ; $5b1c: $6e
    ld l, c                                       ; $5b1d: $69
    add hl, hl                                    ; $5b1e: $29
    call nc, $ae4f                                ; $5b1f: $d4 $4f $ae
    ld [hl-], a                                   ; $5b22: $32
    db $fc                                        ; $5b23: $fc
    and h                                         ; $5b24: $a4
    ld l, a                                       ; $5b25: $6f
    sbc a                                         ; $5b26: $9f
    sub d                                         ; $5b27: $92
    xor e                                         ; $5b28: $ab
    sbc $0f                                       ; $5b29: $de $0f
    inc d                                         ; $5b2b: $14
    ld a, b                                       ; $5b2c: $78
    sbc $02                                       ; $5b2d: $de $02
    and a                                         ; $5b2f: $a7
    ccf                                           ; $5b30: $3f
    adc b                                         ; $5b31: $88
    ld [hl], l                                    ; $5b32: $75
    ld c, l                                       ; $5b33: $4d
    adc d                                         ; $5b34: $8a
    ld [hl], c                                    ; $5b35: $71
    ld sp, $b0fa                                  ; $5b36: $31 $fa $b0
    rst $38                                       ; $5b39: $ff
    ret z                                         ; $5b3a: $c8

    or l                                          ; $5b3b: $b5
    xor e                                         ; $5b3c: $ab
    and b                                         ; $5b3d: $a0
    ld a, $ad                                     ; $5b3e: $3e $ad
    pop af                                        ; $5b40: $f1
    ld e, e                                       ; $5b41: $5b
    ld a, [$b7e6]                                 ; $5b42: $fa $e6 $b7
    db $e4                                        ; $5b45: $e4
    xor d                                         ; $5b46: $aa
    rst $30                                       ; $5b47: $f7
    inc bc                                        ; $5b48: $03
    dec b                                         ; $5b49: $05
    sbc [hl]                                      ; $5b4a: $9e
    or a                                          ; $5b4b: $b7
    add a                                         ; $5b4c: $87
    sub a                                         ; $5b4d: $97
    rst $20                                       ; $5b4e: $e7
    sub c                                         ; $5b4f: $91
    inc e                                         ; $5b50: $1c
    pop bc                                        ; $5b51: $c1
    inc l                                         ; $5b52: $2c
    ld d, [hl]                                    ; $5b53: $56
    ld l, h                                       ; $5b54: $6c
    sub a                                         ; $5b55: $97
    add hl, sp                                    ; $5b56: $39
    xor c                                         ; $5b57: $a9
    or $d0                                        ; $5b58: $f6 $d0
    ld d, $27                                     ; $5b5a: $16 $27
    ld bc, $3be6                                  ; $5b5c: $01 $e6 $3b
    db $fd                                        ; $5b5f: $fd
    pop hl                                        ; $5b60: $e1
    add l                                         ; $5b61: $85
    ld h, e                                       ; $5b62: $63
    ld e, $b9                                     ; $5b63: $1e $b9
    halt                                          ; $5b65: $76
    sub l                                         ; $5b66: $95
    ld e, e                                       ; $5b67: $5b
    cp [hl]                                       ; $5b68: $be
    ld d, e                                       ; $5b69: $53
    adc l                                         ; $5b6a: $8d
    ld b, c                                       ; $5b6b: $41
    sbc l                                         ; $5b6c: $9d
    ld e, a                                       ; $5b6d: $5f
    adc a                                         ; $5b6e: $8f
    ld a, c                                       ; $5b6f: $79
    db $10                                        ; $5b70: $10
    set 0, b                                      ; $5b71: $cb $c0
    dec e                                         ; $5b73: $1d
    bit 5, d                                      ; $5b74: $cb $6a
    ld h, [hl]                                    ; $5b76: $66
    adc h                                         ; $5b77: $8c
    ld hl, $fe0d                                  ; $5b78: $21 $0d $fe
    xor d                                         ; $5b7b: $aa
    rst $30                                       ; $5b7c: $f7

jr_02e_5b7d:
    add e                                         ; $5b7d: $83
    ld e, h                                       ; $5b7e: $5c
    db $e3                                        ; $5b7f: $e3
    or $63                                        ; $5b80: $f6 $63
    push bc                                       ; $5b82: $c5
    halt                                          ; $5b83: $76
    or c                                          ; $5b84: $b1
    xor l                                         ; $5b85: $ad

jr_02e_5b86:
    ld c, d                                       ; $5b86: $4a
    cp c                                          ; $5b87: $b9
    sub [hl]                                      ; $5b88: $96
    ld a, [hl]                                    ; $5b89: $7e
    ld c, [hl]                                    ; $5b8a: $4e
    xor d                                         ; $5b8b: $aa
    dec a                                         ; $5b8c: $3d
    or h                                          ; $5b8d: $b4
    dec b                                         ; $5b8e: $05
    ld b, a                                       ; $5b8f: $47
    or c                                          ; $5b90: $b1
    sub a                                         ; $5b91: $97
    ld b, d                                       ; $5b92: $42
    db $fd                                        ; $5b93: $fd
    db $e4                                        ; $5b94: $e4
    cp $fb                                        ; $5b95: $fe $fb
    ld sp, hl                                     ; $5b97: $f9
    ld [$d56b], a                                 ; $5b98: $ea $6b $d5
    db $dd                                        ; $5b9b: $dd
    adc b                                         ; $5b9c: $88
    db $f4                                        ; $5b9d: $f4
    cp c                                          ; $5b9e: $b9
    ld h, c                                       ; $5b9f: $61
    xor h                                         ; $5ba0: $ac
    adc $e0                                       ; $5ba1: $ce $e0
    ld l, e                                       ; $5ba3: $6b
    sub l                                         ; $5ba4: $95
    or b                                          ; $5ba5: $b0
    inc d                                         ; $5ba6: $14
    add c                                         ; $5ba7: $81
    ld l, e                                       ; $5ba8: $6b
    ld bc, $08ce                                  ; $5ba9: $01 $ce $08
    ld c, e                                       ; $5bac: $4b
    or c                                          ; $5bad: $b1
    ld a, a                                       ; $5bae: $7f
    ld l, c                                       ; $5baf: $69
    rla                                           ; $5bb0: $17
    ld e, e                                       ; $5bb1: $5b
    rst $20                                       ; $5bb2: $e7

jr_02e_5bb3:
    rst $28                                       ; $5bb3: $ef
    jr jr_02e_5b7d                                ; $5bb4: $18 $c7

    rst $08                                       ; $5bb6: $cf
    ld a, d                                       ; $5bb7: $7a
    ld b, h                                       ; $5bb8: $44
    sub c                                         ; $5bb9: $91
    rst $28                                       ; $5bba: $ef
    jr z, jr_02e_5bb3                             ; $5bbb: $28 $f6

    ld d, d                                       ; $5bbd: $52
    xor b                                         ; $5bbe: $a8
    sbc a                                         ; $5bbf: $9f
    call c, Call_000_107f                         ; $5bc0: $dc $7f $10
    db $d3                                        ; $5bc3: $d3
    sbc a                                         ; $5bc4: $9f
    ld sp, $c7ef                                  ; $5bc5: $31 $ef $c7
    ld c, b                                       ; $5bc8: $48

Call_02e_5bc9:
    ld e, [hl]                                    ; $5bc9: $5e
    pop hl                                        ; $5bca: $e1
    cp a                                          ; $5bcb: $bf
    dec h                                         ; $5bcc: $25
    sub a                                         ; $5bcd: $97
    ld a, d                                       ; $5bce: $7a
    ld a, a                                       ; $5bcf: $7f
    ld l, $7a                                     ; $5bd0: $2e $7a
    ldh [$ab], a                                  ; $5bd2: $e0 $ab
    or e                                          ; $5bd4: $b3
    adc [hl]                                      ; $5bd5: $8e
    rrca                                          ; $5bd6: $0f
    ld a, b                                       ; $5bd7: $78
    ld sp, $79e7                                  ; $5bd8: $31 $e7 $79
    dec bc                                        ; $5bdb: $0b
    add a                                         ; $5bdc: $87
    sub a                                         ; $5bdd: $97
    rst $20                                       ; $5bde: $e7
    ld sp, $5982                                  ; $5bdf: $31 $82 $59
    inc l                                         ; $5be2: $2c
    adc l                                         ; $5be3: $8d
    rra                                           ; $5be4: $1f
    sub e                                         ; $5be5: $93
    dec sp                                        ; $5be6: $3b
    sub $dc                                       ; $5be7: $d6 $dc
    ld l, e                                       ; $5be9: $6b
    ld l, d                                       ; $5bea: $6a
    rrca                                          ; $5beb: $0f
    ld l, l                                       ; $5bec: $6d
    ld bc, $0127                                  ; $5bed: $01 $27 $01
    ld h, $97                                     ; $5bf0: $26 $97
    xor l                                         ; $5bf2: $ad
    ld e, l                                       ; $5bf3: $5d
    cp $30                                        ; $5bf4: $fe $30
    ld a, [c]                                     ; $5bf6: $f2
    ld [hl], l                                    ; $5bf7: $75
    jr nc, jr_02e_5b86                            ; $5bf8: $30 $8c

    ld h, c                                       ; $5bfa: $61
    ld e, c                                       ; $5bfb: $59
    call $196c                                    ; $5bfc: $cd $6c $19
    ld d, b                                       ; $5bff: $50
    ret                                           ; $5c00: $c9


    add b                                         ; $5c01: $80
    halt                                          ; $5c02: $76
    or c                                          ; $5c03: $b1
    ld e, a                                       ; $5c04: $5f
    ld l, b                                       ; $5c05: $68
    db $fc                                        ; $5c06: $fc
    ld a, [hl]                                    ; $5c07: $7e
    inc hl                                        ; $5c08: $23
    or a                                          ; $5c09: $b7
    rst $08                                       ; $5c0a: $cf
    ld d, d                                       ; $5c0b: $52

Call_02e_5c0c:
    sbc [hl]                                      ; $5c0c: $9e
    rst $20                                       ; $5c0d: $e7
    dec l                                         ; $5c0e: $2d
    dec e                                         ; $5c0f: $1d
    sbc $5f                                       ; $5c10: $de $5f
    add e                                         ; $5c12: $83
    ld [hl], l                                    ; $5c13: $75
    ld e, c                                       ; $5c14: $59
    jp c, $dbbf                                   ; $5c15: $da $bf $db

    ld a, [de]                                    ; $5c18: $1a
    adc e                                         ; $5c19: $8b
    ld sp, hl                                     ; $5c1a: $f9
    dec c                                         ; $5c1b: $0d
    ld [hl+], a                                   ; $5c1c: $22
    jr nc, jr_02e_5c7e                            ; $5c1d: $30 $5f

    daa                                           ; $5c1f: $27
    sbc b                                         ; $5c20: $98
    ld h, d                                       ; $5c21: $62
    ld c, l                                       ; $5c22: $4d
    add c                                         ; $5c23: $81
    ld e, b                                       ; $5c24: $58
    ld a, [$2d39]                                 ; $5c25: $fa $39 $2d
    inc bc                                        ; $5c28: $03
    ld e, d                                       ; $5c29: $5a
    or [hl]                                       ; $5c2a: $b6
    ld d, [hl]                                    ; $5c2b: $56
    or h                                          ; $5c2c: $b4
    ld b, [hl]                                    ; $5c2d: $46
    ccf                                           ; $5c2e: $3f
    inc c                                         ; $5c2f: $0c
    inc hl                                        ; $5c30: $23
    cp c                                          ; $5c31: $b9
    ld h, e                                       ; $5c32: $63
    call Call_02e_66bd                            ; $5c33: $cd $bd $66
    dec e                                         ; $5c36: $1d
    rra                                           ; $5c37: $1f
    sub c                                         ; $5c38: $91
    inc a                                         ; $5c39: $3c
    ld l, a                                       ; $5c3a: $6f
    ld bc, $de47                                  ; $5c3b: $01 $47 $de
    ld a, [bc]                                    ; $5c3e: $0a
    ld e, [hl]                                    ; $5c3f: $5e
    jr z, jr_02e_5c4a                             ; $5c40: $28 $08

    dec l                                         ; $5c42: $2d

jr_02e_5c43:
    ei                                            ; $5c43: $fb
    add c                                         ; $5c44: $81
    rst $38                                       ; $5c45: $ff
    sbc e                                         ; $5c46: $9b
    sub d                                         ; $5c47: $92
    ei                                            ; $5c48: $fb
    ld [hl], a                                    ; $5c49: $77

jr_02e_5c4a:
    dec b                                         ; $5c4a: $05
    push de                                       ; $5c4b: $d5
    cp e                                          ; $5c4c: $bb
    or h                                          ; $5c4d: $b4
    add $a2                                       ; $5c4e: $c6 $a2
    or $d0                                        ; $5c50: $f6 $d0
    ld d, $f5                                     ; $5c52: $16 $f5
    or l                                          ; $5c54: $b5
    ld c, d                                       ; $5c55: $4a
    adc e                                         ; $5c56: $8b
    rlca                                          ; $5c57: $07
    inc c                                         ; $5c58: $0c
    ld [$b8c7], a                                 ; $5c59: $ea $c7 $b8
    ld d, [hl]                                    ; $5c5c: $56
    add hl, hl                                    ; $5c5d: $29
    halt                                          ; $5c5e: $76
    inc hl                                        ; $5c5f: $23
    ldh [$8a], a                                  ; $5c60: $e0 $8a
    push de                                       ; $5c62: $d5
    ld e, c                                       ; $5c63: $59
    rst $00                                       ; $5c64: $c7
    rlca                                          ; $5c65: $07
    cp h                                          ; $5c66: $bc
    sbc b                                         ; $5c67: $98
    di                                            ; $5c68: $f3
    ld a, h                                       ; $5c69: $7c
    daa                                           ; $5c6a: $27
    jr z, jr_02e_5c43                             ; $5c6b: $28 $d6

    ld e, b                                       ; $5c6d: $58
    add h                                         ; $5c6e: $84
    or c                                          ; $5c6f: $b1
    inc d                                         ; $5c70: $14
    dec bc                                        ; $5c71: $0b
    ld e, l                                       ; $5c72: $5d
    ld l, $8a                                     ; $5c73: $2e $8a
    ld d, l                                       ; $5c75: $55
    ld e, d                                       ; $5c76: $5a

Jump_02e_5c77:
    inc hl                                        ; $5c77: $23
    xor a                                         ; $5c78: $af
    ld b, h                                       ; $5c79: $44
    ld h, h                                       ; $5c7a: $64
    xor b                                         ; $5c7b: $a8
    ld c, a                                       ; $5c7c: $4f
    db $e3                                        ; $5c7d: $e3

jr_02e_5c7e:
    ld [hl], a                                    ; $5c7e: $77
    dec hl                                        ; $5c7f: $2b
    ld b, l                                       ; $5c80: $45
    ld a, $fd                                     ; $5c81: $3e $fd
    ld e, l                                       ; $5c83: $5d
    push bc                                       ; $5c84: $c5
    ld [hl+], a                                   ; $5c85: $22
    or h                                          ; $5c86: $b4
    and [hl]                                      ; $5c87: $a6
    ld b, b                                       ; $5c88: $40
    adc h                                         ; $5c89: $8c
    ld b, c                                       ; $5c8a: $41
    ld d, d                                       ; $5c8b: $52
    sbc $02                                       ; $5c8c: $de $02
    daa                                           ; $5c8e: $27
    inc bc                                        ; $5c8f: $03
    cp d                                          ; $5c90: $ba
    xor e                                         ; $5c91: $ab
    sub h                                         ; $5c92: $94
    add hl, hl                                    ; $5c93: $29
    xor b                                         ; $5c94: $a8
    ld e, $96                                     ; $5c95: $1e $96
    pop bc                                        ; $5c97: $c1
    rra                                           ; $5c98: $1f
    rst $10                                       ; $5c99: $d7
    sbc b                                         ; $5c9a: $98
    rla                                           ; $5c9b: $17
    ld l, e                                       ; $5c9c: $6b
    db $fc                                        ; $5c9d: $fc
    and l                                         ; $5c9e: $a5
    dec d                                         ; $5c9f: $15
    ld hl, $a8f0                                  ; $5ca0: $21 $f0 $a8
    dec a                                         ; $5ca3: $3d
    ld [hl], h                                    ; $5ca4: $74
    rst $00                                       ; $5ca5: $c7
    sub l                                         ; $5ca6: $95
    add l                                         ; $5ca7: $85
    xor d                                         ; $5ca8: $aa
    ld d, h                                       ; $5ca9: $54
    ld sp, $dda4                                  ; $5caa: $31 $a4 $dd
    ret z                                         ; $5cad: $c8

    db $ed                                        ; $5cae: $ed
    or e                                          ; $5caf: $b3
    or h                                          ; $5cb0: $b4
    ld h, d                                       ; $5cb1: $62
    db $e3                                        ; $5cb2: $e3

jr_02e_5cb3:
    ld a, [c]                                     ; $5cb3: $f2
    adc a                                         ; $5cb4: $8f
    ld [hl], l                                    ; $5cb5: $75
    ld e, l                                       ; $5cb6: $5d
    ld c, e                                       ; $5cb7: $4b

jr_02e_5cb8:
    ccf                                           ; $5cb8: $3f
    adc h                                         ; $5cb9: $8c
    ld h, l                                       ; $5cba: $65
    ld b, b                                       ; $5cbb: $40
    set 2, [hl]                                   ; $5cbc: $cb $d6
    jp z, Jump_02e_70dd                           ; $5cbe: $ca $dd $70

    inc c                                         ; $5cc1: $0c
    db $e4                                        ; $5cc2: $e4
    dec l                                         ; $5cc3: $2d
    push af                                       ; $5cc4: $f5
    rst $28                                       ; $5cc5: $ef
    add [hl]                                      ; $5cc6: $86
    ld h, e                                       ; $5cc7: $63
    ld h, b                                       ; $5cc8: $60
    ldh a, [$b5]                                  ; $5cc9: $f0 $b5
    ret nz                                        ; $5ccb: $c0

    jp nz, Jump_000_207e                          ; $5ccc: $c2 $7e $20

    ld [hl+], a                                   ; $5ccf: $22
    dec l                                         ; $5cd0: $2d
    ldh a, [$63]                                  ; $5cd1: $f0 $63
    sub b                                         ; $5cd3: $90
    ld l, e                                       ; $5cd4: $6b
    sbc $1d                                       ; $5cd5: $de $1d

Jump_02e_5cd7:
    sub a                                         ; $5cd7: $97
    xor a                                         ; $5cd8: $af
    ld sp, $5e1f                                  ; $5cd9: $31 $1f $5e
    cp b                                          ; $5cdc: $b8
    ld [hl], d                                    ; $5cdd: $72
    scf                                           ; $5cde: $37
    jr nz, jr_02e_5cb8                            ; $5cdf: $20 $d7

    ld a, $20                                     ; $5ce1: $3e $20
    push hl                                       ; $5ce3: $e5
    db $eb                                        ; $5ce4: $eb
    ld h, b                                       ; $5ce5: $60
    jr jr_02e_5cb3                                ; $5ce6: $18 $cb

    cp [hl]                                       ; $5ce8: $be
    dec de                                        ; $5ce9: $1b
    ld h, e                                       ; $5cea: $63
    jr jr_02e_5d58                                ; $5ceb: $18 $6b

    inc b                                         ; $5ced: $04
    ld d, h                                       ; $5cee: $54
    xor a                                         ; $5cef: $af
    ld l, e                                       ; $5cf0: $6b
    ld [hl], d                                    ; $5cf1: $72
    adc l                                         ; $5cf2: $8d
    dec hl                                        ; $5cf3: $2b
    add $60                                       ; $5cf4: $c6 $60
    ldh [$fb], a                                  ; $5cf6: $e0 $fb
    sub c                                         ; $5cf8: $91
    or a                                          ; $5cf9: $b7
    daa                                           ; $5cfa: $27
    call c, $c80d                                 ; $5cfb: $dc $0d $c8
    or l                                          ; $5cfe: $b5
    ld a, b                                       ; $5cff: $78
    add sp, -$37                                  ; $5d00: $e8 $c9
    ld h, l                                       ; $5d02: $65
    ld l, e                                       ; $5d03: $6b
    dec b                                         ; $5d04: $05
    jp Jump_02e_5630                              ; $5d05: $c3 $30 $56


    cp l                                          ; $5d08: $bd
    ccf                                           ; $5d09: $3f
    ld b, $05                                     ; $5d0a: $06 $05
    sbc l                                         ; $5d0c: $9d
    ld [hl], a                                    ; $5d0d: $77
    db $f4                                        ; $5d0e: $f4
    dec hl                                        ; $5d0f: $2b
    ld hl, sp-$2a                                 ; $5d10: $f8 $d6
    pop bc                                        ; $5d12: $c1
    ld e, b                                       ; $5d13: $58
    sbc b                                         ; $5d14: $98
    xor a                                         ; $5d15: $af
    cp $dd                                        ; $5d16: $fe $dd
    ld [hl], b                                    ; $5d18: $70
    rrca                                          ; $5d19: $0f
    ld d, d                                       ; $5d1a: $52
    dec b                                         ; $5d1b: $05
    ld l, a                                       ; $5d1c: $6f
    and e                                         ; $5d1d: $a3
    rlca                                          ; $5d1e: $07
    and h                                         ; $5d1f: $a4
    ld e, b                                       ; $5d20: $58
    ld d, c                                       ; $5d21: $51
    db $ec                                        ; $5d22: $ec
    ld a, d                                       ; $5d23: $7a
    ld d, l                                       ; $5d24: $55
    ld a, [bc]                                    ; $5d25: $0a
    cp a                                          ; $5d26: $bf
    ld h, c                                       ; $5d27: $61
    cp h                                          ; $5d28: $bc
    rra                                           ; $5d29: $1f
    xor e                                         ; $5d2a: $ab
    adc h                                         ; $5d2b: $8c
    add l                                         ; $5d2c: $85
    add hl, de                                    ; $5d2d: $19
    ld d, b                                       ; $5d2e: $50
    adc h                                         ; $5d2f: $8c
    dec hl                                        ; $5d30: $2b
    halt                                          ; $5d31: $76
    sbc c                                         ; $5d32: $99
    sub e                                         ; $5d33: $93
    ld [hl+], a                                   ; $5d34: $22
    ld l, a                                       ; $5d35: $6f
    ld bc, $6a47                                  ; $5d36: $01 $47 $6a
    ld l, $7a                                     ; $5d39: $2e $7a
    ldh [$3b], a                                  ; $5d3b: $e0 $3b
    sub $dc                                       ; $5d3d: $d6 $dc
    ld l, e                                       ; $5d3f: $6b
    ld l, d                                       ; $5d40: $6a
    rrca                                          ; $5d41: $0f
    ld e, l                                       ; $5d42: $5d
    rla                                           ; $5d43: $17
    or [hl]                                       ; $5d44: $b6
    or h                                          ; $5d45: $b4
    ld hl, $29ad                                  ; $5d46: $21 $ad $29
    add [hl]                                      ; $5d49: $86
    add c                                         ; $5d4a: $81
    ld a, $ae                                     ; $5d4b: $3e $ae
    ld sp, $7d0f                                  ; $5d4d: $31 $0f $7d
    ldh a, [$d7]                                  ; $5d50: $f0 $d7
    pop af                                        ; $5d52: $f1
    ld de, $17c9                                  ; $5d53: $11 $c9 $17
    ldh [$2b], a                                  ; $5d56: $e0 $2b

jr_02e_5d58:
    ld e, d                                       ; $5d58: $5a
    ld d, $5b                                     ; $5d59: $16 $5b
    dec d                                         ; $5d5b: $15
    cp $71                                        ; $5d5c: $fe $71
    xor l                                         ; $5d5e: $ad
    sub e                                         ; $5d5f: $93
    dec de                                        ; $5d60: $1b
    inc hl                                        ; $5d61: $23
    rrca                                          ; $5d62: $0f
    push hl                                       ; $5d63: $e5
    dec l                                         ; $5d64: $2d
    dec e                                         ; $5d65: $1d
    dec l                                         ; $5d66: $2d
    ld b, d                                       ; $5d67: $42
    dec hl                                        ; $5d68: $2b
    ld e, d                                       ; $5d69: $5a
    ld [$ecfd], a                                 ; $5d6a: $ea $fd $ec
    rlca                                          ; $5d6d: $07
    cp [hl]                                       ; $5d6e: $be
    ld a, [hl-]                                   ; $5d6f: $3a
    dec sp                                        ; $5d70: $3b
    ld [de], a                                    ; $5d71: $12
    xor d                                         ; $5d72: $aa

jr_02e_5d73:
    ld d, h                                       ; $5d73: $54
    ld de, $ae7f                                  ; $5d74: $11 $7f $ae
    ld [hl], c                                    ; $5d77: $71
    xor l                                         ; $5d78: $ad
    or d                                          ; $5d79: $b2
    dec [hl]                                      ; $5d7a: $35
    and $94                                       ; $5d7b: $e6 $94
    call c, $e6b1                                 ; $5d7d: $dc $b1 $e6
    ld e, [hl]                                    ; $5d80: $5e
    sub e                                         ; $5d81: $93

jr_02e_5d82:
    or a                                          ; $5d82: $b7
    dec e                                         ; $5d83: $1d
    dec l                                         ; $5d84: $2d
    and [hl]                                      ; $5d85: $a6
    ld a, a                                       ; $5d86: $7f
    dec a                                         ; $5d87: $3d
    ld d, a                                       ; $5d88: $57
    ld [hl], d                                    ; $5d89: $72
    reti                                          ; $5d8a: $d9


    ld a, [de]                                    ; $5d8b: $1a
    ld a, a                                       ; $5d8c: $7f
    jr jr_02e_5e02                                ; $5d8d: $18 $73

    ld a, l                                       ; $5d8f: $7d
    xor $da                                       ; $5d90: $ee $da
    dec h                                         ; $5d92: $25
    ld [hl+], a                                   ; $5d93: $22
    db $ed                                        ; $5d94: $ed
    ld a, [hl+]                                   ; $5d95: $2a
    or a                                          ; $5d96: $b7
    cp h                                          ; $5d97: $bc
    dec b                                         ; $5d98: $05
    dec e                                         ; $5d99: $1d
    db $fd                                        ; $5d9a: $fd
    and l                                         ; $5d9b: $a5
    dec d                                         ; $5d9c: $15
    ld hl, $1df0                                  ; $5d9d: $21 $f0 $1d
    add c                                         ; $5da0: $81
    rst $38                                       ; $5da1: $ff
    ld b, a                                       ; $5da2: $47
    db $ed                                        ; $5da3: $ed
    and c                                         ; $5da4: $a1
    dec l                                         ; $5da5: $2d
    ld h, a                                       ; $5da6: $67
    sbc a                                         ; $5da7: $9f
    ld a, a                                       ; $5da8: $7f
    ld a, [hl]                                    ; $5da9: $7e
    sbc [hl]                                      ; $5daa: $9e
    rst $20                                       ; $5dab: $e7
    inc de                                        ; $5dac: $13
    dec c                                         ; $5dad: $0d
    ld c, e                                       ; $5dae: $4b
    db $ec                                        ; $5daf: $ec
    rst $18                                       ; $5db0: $df
    rst $18                                       ; $5db1: $df
    and a                                         ; $5db2: $a7
    ld h, l                                       ; $5db3: $65
    ld e, e                                       ; $5db4: $5b
    ld h, l                                       ; $5db5: $65
    jr jr_02e_5d73                                ; $5db6: $18 $bb

    ld e, [hl]                                    ; $5db8: $5e
    push de                                       ; $5db9: $d5
    jr c, jr_02e_5d82                             ; $5dba: $38 $c6

    ld [hl-], a                                   ; $5dbc: $32
    and b                                         ; $5dbd: $a0
    dec d                                         ; $5dbe: $15
    db $ed                                        ; $5dbf: $ed
    ld h, d                                       ; $5dc0: $62
    db $eb                                        ; $5dc1: $eb
    inc a                                         ; $5dc2: $3c
    db $fc                                        ; $5dc3: $fc
    xor h                                         ; $5dc4: $ac
    ld a, d                                       ; $5dc5: $7a
    inc l                                         ; $5dc6: $2c
    xor b                                         ; $5dc7: $a8
    halt                                          ; $5dc8: $76
    inc hl                                        ; $5dc9: $23
    ld b, e                                       ; $5dca: $43
    sbc d                                         ; $5dcb: $9a
    cp $d2                                        ; $5dcc: $fe $d2
    add [hl]                                      ; $5dce: $86

Jump_02e_5dcf:
    sub h                                         ; $5dcf: $94
    ld e, h                                       ; $5dd0: $5c
    ld h, l                                       ; $5dd1: $65
    inc l                                         ; $5dd2: $2c
    call z, $f280                                 ; $5dd3: $cc $80 $f2
    inc a                                         ; $5dd6: $3c
    rst $18                                       ; $5dd7: $df
    ld c, c                                       ; $5dd8: $49
    db $ec                                        ; $5dd9: $ec
    db $e4                                        ; $5dda: $e4
    ld d, d                                       ; $5ddb: $52
    rst $28                                       ; $5ddc: $ef
    ld h, a                                       ; $5ddd: $67
    ccf                                           ; $5dde: $3f
    ldh a, [rNR33]                                ; $5ddf: $f0 $1d
    ld l, e                                       ; $5de1: $6b
    xor $35                                       ; $5de2: $ee $35
    ld a, c                                       ; $5de4: $79
    dec bc                                        ; $5de5: $0b
    push af                                       ; $5de6: $f5
    rst $28                                       ; $5de7: $ef
    add [hl]                                      ; $5de8: $86
    dec hl                                        ; $5de9: $2b
    or [hl]                                       ; $5dea: $b6
    res 3, h                                      ; $5deb: $cb $9c
    inc [hl]                                      ; $5ded: $34
    xor [hl]                                      ; $5dee: $ae
    ld e, b                                       ; $5def: $58
    inc a                                         ; $5df0: $3c
    cp a                                          ; $5df1: $bf
    or b                                          ; $5df2: $b0
    xor [hl]                                      ; $5df3: $ae
    dec hl                                        ; $5df4: $2b
    ld h, $5a                                     ; $5df5: $26 $5a
    inc a                                         ; $5df7: $3c
    cp a                                          ; $5df8: $bf
    ld d, b                                       ; $5df9: $50
    ld e, $bb                                     ; $5dfa: $1e $bb
    ld l, [hl]                                    ; $5dfc: $6e
    and l                                         ; $5dfd: $a5

jr_02e_5dfe:
    ld l, [hl]                                    ; $5dfe: $6e
    jp z, Jump_000_3315                           ; $5dff: $ca $15 $33

jr_02e_5e02:
    ld b, [hl]                                    ; $5e02: $46
    rst $10                                       ; $5e03: $d7
    or d                                          ; $5e04: $b2
    ret nc                                        ; $5e05: $d0

    xor a                                         ; $5e06: $af
    db $db                                        ; $5e07: $db
    cp b                                          ; $5e08: $b8
    ld [hl+], a                                   ; $5e09: $22
    jr nz, jr_02e_5dfe                            ; $5e0a: $20 $f2

    ld d, $27                                     ; $5e0c: $16 $27
    ld bc, $8726                                  ; $5e0e: $01 $26 $87
    ld h, l                                       ; $5e11: $65
    sub l                                         ; $5e12: $95
    ld d, $aa                                     ; $5e13: $16 $aa
    ld d, d                                       ; $5e15: $52
    ld b, l                                       ; $5e16: $45
    res 0, b                                      ; $5e17: $cb $80
    halt                                          ; $5e19: $76
    db $dd                                        ; $5e1a: $dd
    dec d                                         ; $5e1b: $15
    or h                                          ; $5e1c: $b4
    ld h, d                                       ; $5e1d: $62
    xor e                                         ; $5e1e: $ab
    cp d                                          ; $5e1f: $ba
    xor [hl]                                      ; $5e20: $ae
    or h                                          ; $5e21: $b4
    res 3, h                                      ; $5e22: $cb $9c
    sub h                                         ; $5e24: $94
    sbc h                                         ; $5e25: $9c
    ld l, b                                       ; $5e26: $68
    reti                                          ; $5e27: $d9


    jp c, Jump_000_0fe5                           ; $5e28: $da $e5 $0f

    ld h, e                                       ; $5e2b: $63
    add hl, de                                    ; $5e2c: $19
    ret nc                                        ; $5e2d: $d0

    sbc b                                         ; $5e2e: $98
    ld b, a                                       ; $5e2f: $47
    xor [hl]                                      ; $5e30: $ae
    dec [hl]                                      ; $5e31: $35
    ld [hl], l                                    ; $5e32: $75
    ld e, l                                       ; $5e33: $5d
    inc sp                                        ; $5e34: $33
    ld [hl], b                                    ; $5e35: $70
    ld b, e                                       ; $5e36: $43
    sbc d                                         ; $5e37: $9a

Call_02e_5e38:
Jump_02e_5e38:
    ld h, c                                       ; $5e38: $61
    ld [hl], l                                    ; $5e39: $75
    ld e, e                                       ; $5e3a: $5b
    ld b, $34                                     ; $5e3b: $06 $34
    and $41                                       ; $5e3d: $e6 $41
    xor h                                         ; $5e3f: $ac
    ret c                                         ; $5e40: $d8

    sbc d                                         ; $5e41: $9a
    rla                                           ; $5e42: $17
    ld [hl], c                                    ; $5e43: $71
    db $e3                                        ; $5e44: $e3
    xor b                                         ; $5e45: $a8
    di                                            ; $5e46: $f3
    di                                            ; $5e47: $f3
    ld d, $1d                                     ; $5e48: $16 $1d
    db $e4                                        ; $5e4a: $e4
    rla                                           ; $5e4b: $17
    ld h, $d7                                     ; $5e4c: $26 $d7
    ld hl, sp+$4b                                 ; $5e4e: $f8 $4b
    dec hl                                        ; $5e50: $2b
    ld b, d                                       ; $5e51: $42
    ldh [$3b], a                                  ; $5e52: $e0 $3b
    ld [bc], a                                    ; $5e54: $02
    rst $38                                       ; $5e55: $ff
    adc a                                         ; $5e56: $8f
    jp c, $16c4                                   ; $5e57: $da $c4 $16

    daa                                           ; $5e5a: $27
    ld l, b                                       ; $5e5b: $68
    rst $10                                       ; $5e5c: $d7
    inc bc                                        ; $5e5d: $03
    adc a                                         ; $5e5e: $8f
    add hl, hl                                    ; $5e5f: $29
    ld l, b                                       ; $5e60: $68
    inc h                                         ; $5e61: $24
    xor a                                         ; $5e62: $af
    ldh a, [$df]                                  ; $5e63: $f0 $df
    ld a, [c]                                     ; $5e65: $f2
    inc a                                         ; $5e66: $3c
    rst $18                                       ; $5e67: $df
    reti                                          ; $5e68: $d9


    rst $20                                       ; $5e69: $e7
    sbc a                                         ; $5e6a: $9f
    ld a, a                                       ; $5e6b: $7f
    ld a, [hl]                                    ; $5e6c: $7e
    sbc [hl]                                      ; $5e6d: $9e
    rst $20                                       ; $5e6e: $e7
    dec l                                         ; $5e6f: $2d
    ld h, a                                       ; $5e70: $67
    sbc a                                         ; $5e71: $9f
    ld a, a                                       ; $5e72: $7f
    cp $f9                                        ; $5e73: $fe $f9
    ld a, c                                       ; $5e75: $79
    sbc [hl]                                      ; $5e76: $9e
    or a                                          ; $5e77: $b7
    ld e, c                                       ; $5e78: $59
    ld [hl], a                                    ; $5e79: $77
    dec b                                         ; $5e7a: $05
    dec c                                         ; $5e7b: $0d
    cp $ae                                        ; $5e7c: $fe $ae
    rlca                                          ; $5e7e: $07
    ld e, $7b                                     ; $5e7f: $1e $7b
    or b                                          ; $5e81: $b0
    db $eb                                        ; $5e82: $eb
    xor [hl]                                      ; $5e83: $ae
    and b                                         ; $5e84: $a0
    sub l                                         ; $5e85: $95
    dec sp                                        ; $5e86: $3b
    ld e, e                                       ; $5e87: $5b
    ldh [rNR30], a                                ; $5e88: $e0 $1a
    rst $10                                       ; $5e8a: $d7
    adc d                                         ; $5e8b: $8a
    dec l                                         ; $5e8c: $2d
    ld d, b                                       ; $5e8d: $50
    ld b, c                                       ; $5e8e: $41
    xor d                                         ; $5e8f: $aa
    dec a                                         ; $5e90: $3d
    or h                                          ; $5e91: $b4
    dec b                                         ; $5e92: $05
    daa                                           ; $5e93: $27
    add e                                         ; $5e94: $83
    jp z, Jump_000_07ae                           ; $5e95: $ca $ae $07

    ld e, $d3                                     ; $5e98: $1e $d3
    rst $38                                       ; $5e9a: $ff
    ld d, b                                       ; $5e9b: $50
    inc hl                                        ; $5e9c: $23
    add sp, -$64                                  ; $5e9d: $e8 $9c
    xor a                                         ; $5e9f: $af
    cp $dd                                        ; $5ea0: $fe $dd
    ret nz                                        ; $5ea2: $c0

    dec c                                         ; $5ea3: $0d
    ld h, e                                       ; $5ea4: $63
    cp h                                          ; $5ea5: $bc
    add a                                         ; $5ea6: $87
    dec [hl]                                      ; $5ea7: $35
    xor [hl]                                      ; $5ea8: $ae
    rst $08                                       ; $5ea9: $cf
    ld e, l                                       ; $5eaa: $5d
    add e                                         ; $5eab: $83
    ccf                                           ; $5eac: $3f
    ld [hl], d                                    ; $5ead: $72
    cp b                                          ; $5eae: $b8
    ld d, [hl]                                    ; $5eaf: $56
    ld h, a                                       ; $5eb0: $67
    dec b                                         ; $5eb1: $05
    ld e, l                                       ; $5eb2: $5d
    ld a, c                                       ; $5eb3: $79
    dec bc                                        ; $5eb4: $0b
    ld b, a                                       ; $5eb5: $47
    cp h                                          ; $5eb6: $bc
    sbc a                                         ; $5eb7: $9f
    db $fd                                        ; $5eb8: $fd
    ret nz                                        ; $5eb9: $c0

    sub e                                         ; $5eba: $93
    ld l, e                                       ; $5ebb: $6b
    db $fc                                        ; $5ebc: $fc
    and l                                         ; $5ebd: $a5
    dec d                                         ; $5ebe: $15

jr_02e_5ebf:
    ld hl, $1df0                                  ; $5ebf: $21 $f0 $1d
    ld e, l                                       ; $5ec2: $5d
    sub b                                         ; $5ec3: $90
    adc $c3                                       ; $5ec4: $ce $c3
    db $eb                                        ; $5ec6: $eb
    call c, $05bc                                 ; $5ec7: $dc $bc $05
    daa                                           ; $5eca: $27
    call c, Call_02e_59d5                         ; $5ecb: $dc $d5 $59
    ld a, [hl]                                    ; $5ece: $7e
    pop hl                                        ; $5ecf: $e1
    and l                                         ; $5ed0: $a5
    pop af                                        ; $5ed1: $f1
    cp e                                          ; $5ed2: $bb
    ld b, c                                       ; $5ed3: $41
    or $03                                        ; $5ed4: $f6 $03
    rst $20                                       ; $5ed6: $e7
    ld [hl], a                                    ; $5ed7: $77
    ld [hl], $e0                                  ; $5ed8: $36 $e0
    xor [hl]                                      ; $5eda: $ae
    rst $30                                       ; $5edb: $f7
    inc bc                                        ; $5edc: $03
    add e                                         ; $5edd: $83
    or h                                          ; $5ede: $b4
    ld a, [hl-]                                   ; $5edf: $3a
    db $d3                                        ; $5ee0: $d3
    cp a                                          ; $5ee1: $bf
    ret c                                         ; $5ee2: $d8

    or $49                                        ; $5ee3: $f6 $49
    ld a, $f8                                     ; $5ee5: $3e $f8
    ld e, d                                       ; $5ee7: $5a
    ld d, e                                       ; $5ee8: $53
    and b                                         ; $5ee9: $a0
    jp nc, Jump_000_079a                          ; $5eea: $d2 $9a $07

    cp [hl]                                       ; $5eed: $be
    ld h, d                                       ; $5eee: $62
    ld c, e                                       ; $5eef: $4b
    dec de                                        ; $5ef0: $1b
    cp d                                          ; $5ef1: $ba
    add $bc                                       ; $5ef2: $c6 $bc
    ld [hl+], a                                   ; $5ef4: $22
    rst $08                                       ; $5ef5: $cf
    or a                                          ; $5ef6: $b7
    adc [hl]                                      ; $5ef7: $8e
    add b                                         ; $5ef8: $80
    sub c                                         ; $5ef9: $91
    ld bc, $798d                                  ; $5efa: $01 $8d $79
    db $10                                        ; $5efd: $10
    db $eb                                        ; $5efe: $eb
    sbc d                                         ; $5eff: $9a
    inc d                                         ; $5f00: $14
    dec hl                                        ; $5f01: $2b
    ld [hl], l                                    ; $5f02: $75

Call_02e_5f03:
    sub d                                         ; $5f03: $92
    dec sp                                        ; $5f04: $3b
    sub $dc                                       ; $5f05: $d6 $dc
    ld l, e                                       ; $5f07: $6b
    sub d                                         ; $5f08: $92
    ld h, e                                       ; $5f09: $63
    ld e, $c4                                     ; $5f0a: $1e $c4
    xor h                                         ; $5f0c: $ac
    inc d                                         ; $5f0d: $14
    sbc l                                         ; $5f0e: $9d
    cp a                                          ; $5f0f: $bf
    or h                                          ; $5f10: $b4
    and c                                         ; $5f11: $a1
    ld l, e                                       ; $5f12: $6b
    push bc                                       ; $5f13: $c5
    add $6f                                       ; $5f14: $c6 $6f

jr_02e_5f16:
    push de                                       ; $5f16: $d5
    ei                                            ; $5f17: $fb
    ld b, c                                       ; $5f18: $41
    ld l, [hl]                                    ; $5f19: $6e
    add h                                         ; $5f1a: $84
    rst $28                                       ; $5f1b: $ef
    rst $20                                       ; $5f1c: $e7
    dec l                                         ; $5f1d: $2d
    rst $00                                       ; $5f1e: $c7
    sub l                                         ; $5f1f: $95
    add hl, de                                    ; $5f20: $19
    cp b                                          ; $5f21: $b8

Call_02e_5f22:
    ld hl, $f78d                                  ; $5f22: $21 $8d $f7
    or b                                          ; $5f25: $b0
    ld c, d                                       ; $5f26: $4a
    cp e                                          ; $5f27: $bb
    ret c                                         ; $5f28: $d8

    rrca                                          ; $5f29: $0f
    inc bc                                        ; $5f2a: $03
    ld a, l                                       ; $5f2b: $7d
    push de                                       ; $5f2c: $d5
    jp $f57c                                      ; $5f2d: $c3 $7c $f5


    or l                                          ; $5f30: $b5
    jr nc, jr_02e_5ebf                            ; $5f31: $30 $8c

    pop af                                        ; $5f33: $f1
    ld e, e                                       ; $5f34: $5b
    halt                                          ; $5f35: $76
    sbc l                                         ; $5f36: $9d
    and l                                         ; $5f37: $a5
    dec c                                         ; $5f38: $0d
    ld e, l                                       ; $5f39: $5d
    ld h, e                                       ; $5f3a: $63
    ld e, [hl]                                    ; $5f3b: $5e
    sub c                                         ; $5f3c: $91
    xor a                                         ; $5f3d: $af
    jr z, jr_02e_5f16                             ; $5f3e: $28 $d6

    inc d                                         ; $5f40: $14
    xor b                                         ; $5f41: $a8
    inc d                                         ; $5f42: $14

Call_02e_5f43:
    ld a, c                                       ; $5f43: $79
    dec bc                                        ; $5f44: $0b
    daa                                           ; $5f45: $27
    cp l                                          ; $5f46: $bd
    rst $00                                       ; $5f47: $c7
    ld c, [hl]                                    ; $5f48: $4e
    ld l, $03                                     ; $5f49: $2e $03
    ld a, [hl+]                                   ; $5f4b: $2a
    ld b, l                                       ; $5f4c: $45
    ld l, e                                       ; $5f4d: $6b
    nop                                           ; $5f4e: $00
    inc hl                                        ; $5f4f: $23
    db $ec                                        ; $5f50: $ec
    sub e                                         ; $5f51: $93
    ld d, $cf                                     ; $5f52: $16 $cf
    cpl                                           ; $5f54: $2f
    xor h                                         ; $5f55: $ac
    db $eb                                        ; $5f56: $eb

Jump_02e_5f57:
    jp z, $8a77                                   ; $5f57: $ca $77 $8a

    ld e, b                                       ; $5f5a: $58
    and $5c                                       ; $5f5b: $e6 $5c
    ret                                           ; $5f5d: $c9


    ld de, $d2ac                                  ; $5f5e: $11 $ac $d2
    jp nc, Jump_000_3186                          ; $5f61: $d2 $86 $31

    ld a, [hl]                                    ; $5f64: $7e
    res 5, [hl]                                   ; $5f65: $cb $ae
    or e                                          ; $5f67: $b3
    sub h                                         ; $5f68: $94
    ld de, $c6b9                                  ; $5f69: $11 $b9 $c6
    dec d                                         ; $5f6c: $15
    cp e                                          ; $5f6d: $bb
    or b                                          ; $5f6e: $b0
    ld b, h                                       ; $5f6f: $44
    ld l, l                                       ; $5f70: $6d
    ld h, d                                       ; $5f71: $62
    dec bc                                        ; $5f72: $0b
    sbc l                                         ; $5f73: $9d
    cp h                                          ; $5f74: $bc
    ld l, [hl]                                    ; $5f75: $6e
    inc l                                         ; $5f76: $2c
    add l                                         ; $5f77: $85
    ld a, [$1dc9]                                 ; $5f78: $fa $c9 $1d
    ld l, e                                       ; $5f7b: $6b
    xor $35                                       ; $5f7c: $ee $35
    ld sp, hl                                     ; $5f7e: $f9
    ld a, [$f35b]                                 ; $5f7f: $fa $5b $f3
    ldh a, [rHDMA3]                               ; $5f82: $f0 $53
    xor h                                         ; $5f84: $ac
    ld a, c                                       ; $5f85: $79
    ldh [rWX], a                                  ; $5f86: $e0 $4b
    xor c                                         ; $5f88: $a9
    inc d                                         ; $5f89: $14
    xor l                                         ; $5f8a: $ad
    sub c                                         ; $5f8b: $91
    and a                                         ; $5f8c: $a7
    sbc a                                         ; $5f8d: $9f
    ld d, a                                       ; $5f8e: $57
    or $2f                                        ; $5f8f: $f6 $2f
    push hl                                       ; $5f91: $e5
    dec l                                         ; $5f92: $2d
    ld b, a                                       ; $5f93: $47
    ld [hl], l                                    ; $5f94: $75
    ld h, $b7                                     ; $5f95: $26 $b7
    rst $20                                       ; $5f97: $e7
    inc e                                         ; $5f98: $1c
    cp a                                          ; $5f99: $bf
    and c                                         ; $5f9a: $a1
    xor e                                         ; $5f9b: $ab
    ld [hl], $71                                  ; $5f9c: $36 $71
    and a                                         ; $5f9e: $a7
    ccf                                           ; $5f9f: $3f
    adc b                                         ; $5fa0: $88
    ld [hl], l                                    ; $5fa1: $75
    ld c, l                                       ; $5fa2: $4d
    adc d                                         ; $5fa3: $8a
    ld b, l                                       ; $5fa4: $45
    rrca                                          ; $5fa5: $0f
    cp [hl]                                       ; $5fa6: $be
    inc c                                         ; $5fa7: $0c
    ld l, b                                       ; $5fa8: $68
    call z, $d883                                 ; $5fa9: $cc $83 $d8
    cp a                                          ; $5fac: $bf
    dec de                                        ; $5fad: $1b
    and e                                         ; $5fae: $a3
    di                                            ; $5faf: $f3
    rst $10                                       ; $5fb0: $d7
    ld e, b                                       ; $5fb1: $58
    inc l                                         ; $5fb2: $2c
    ld l, l                                       ; $5fb3: $6d
    ld c, b                                       ; $5fb4: $48
    ld h, e                                       ; $5fb5: $63
    ld e, [hl]                                    ; $5fb6: $5e
    sub c                                         ; $5fb7: $91
    adc a                                         ; $5fb8: $8f
    dec hl                                        ; $5fb9: $2b
    sub $14                                       ; $5fba: $d6 $14
    xor b                                         ; $5fbc: $a8
    inc d                                         ; $5fbd: $14
    inc sp                                        ; $5fbe: $33
    add $3e                                       ; $5fbf: $c6 $3e
    push de                                       ; $5fc1: $d5
    ld e, $ba                                     ; $5fc2: $1e $ba
    cp [hl]                                       ; $5fc4: $be
    ld a, [$f35c]                                 ; $5fc5: $fa $5c $f3
    ldh a, [rHDMA3]                               ; $5fc8: $f0 $53
    xor h                                         ; $5fca: $ac
    ld a, c                                       ; $5fcb: $79
    ldh [$bb], a                                  ; $5fcc: $e0 $bb
    or h                                          ; $5fce: $b4
    add b                                         ; $5fcf: $80
    ld b, [hl]                                    ; $5fd0: $46
    ld a, $72                                     ; $5fd1: $3e $72

Call_02e_5fd3:
    ld h, e                                       ; $5fd3: $63
    inc c                                         ; $5fd4: $0c
    ld c, e                                       ; $5fd5: $4b
    ld l, l                                       ; $5fd6: $6d
    ld h, d                                       ; $5fd7: $62
    dec bc                                        ; $5fd8: $0b
    and a                                         ; $5fd9: $a7
    ccf                                           ; $5fda: $3f
    ld [hl], d                                    ; $5fdb: $72
    ld c, l                                       ; $5fdc: $4d
    sbc l                                         ; $5fdd: $9d
    push hl                                       ; $5fde: $e5
    rla                                           ; $5fdf: $17
    ld e, [hl]                                    ; $5fe0: $5e
    jp c, Jump_000_0c8d                           ; $5fe1: $da $8d $0c

    ld l, c                                       ; $5fe4: $69
    adc l                                         ; $5fe5: $8d
    ld a, c                                       ; $5fe6: $79
    jp c, $9290                                   ; $5fe7: $da $90 $92

    dec sp                                        ; $5fea: $3b
    sub $dc                                       ; $5feb: $d6 $dc
    ld l, e                                       ; $5fed: $6b
    ld l, d                                       ; $5fee: $6a
    inc de                                        ; $5fef: $13
    rst $10                                       ; $5ff0: $d7
    ld d, a                                       ; $5ff1: $57
    ld a, a                                       ; $5ff2: $7f
    ld l, e                                       ; $5ff3: $6b
    ld e, $7e                                     ; $5ff4: $1e $7e
    adc d                                         ; $5ff6: $8a
    dec [hl]                                      ; $5ff7: $35
    rrca                                          ; $5ff8: $0f
    ld a, h                                       ; $5ff9: $7c
    push bc                                       ; $5ffa: $c5

Call_02e_5ffb:
    sub $b8                                       ; $5ffb: $d6 $b8
    add d                                         ; $5ffd: $82
    adc h                                         ; $5ffe: $8c
    ldh a, [$fd]                                  ; $5fff: $f0 $fd
    dec [hl]                                      ; $6001: $35
    and $69                                       ; $6002: $e6 $69
    ld b, e                                       ; $6004: $43
    ld d, d                                       ; $6005: $52
    ld l, l                                       ; $6006: $6d
    ld h, d                                       ; $6007: $62
    dec bc                                        ; $6008: $0b
    push af                                       ; $6009: $f5
    or l                                          ; $600a: $b5
    rr a                                          ; $600b: $cb $1f
    add $32                                       ; $600d: $c6 $32
    and b                                         ; $600f: $a0
    dec d                                         ; $6010: $15
    ld e, e                                       ; $6011: $5b
    ld d, e                                       ; $6012: $53
    and b                                         ; $6013: $a0
    jp nc, $c6be                                  ; $6014: $d2 $be $c6

    inc a                                         ; $6017: $3c
    adc b                                         ; $6018: $88
    db $dd                                        ; $6019: $dd
    xor [hl]                                      ; $601a: $ae
    rlca                                          ; $601b: $07
    and h                                         ; $601c: $a4
    ld d, l                                       ; $601d: $55
    ld e, l                                       ; $601e: $5d
    ld d, a                                       ; $601f: $57
    ld e, d                                       ; $6020: $5a
    ld h, e                                       ; $6021: $63
    sub c                                         ; $6022: $91
    rst $28                                       ; $6023: $ef
    ld l, b                                       ; $6024: $68
    ld b, e                                       ; $6025: $43
    ld d, d                                       ; $6026: $52
    inc c                                         ; $6027: $0c
    cp $fe                                        ; $6028: $fe $fe
    inc bc                                        ; $602a: $03
    ld b, [hl]                                    ; $602b: $46
    ld h, l                                       ; $602c: $65
    adc d                                         ; $602d: $8a
    jr nc, @-$32                                  ; $602e: $30 $cc

    ld e, e                                       ; $6030: $5b
    dec e                                         ; $6031: $1d
    inc c                                         ; $6032: $0c
    ccf                                           ; $6033: $3f
    jp hl                                         ; $6034: $e9


    db $db                                        ; $6035: $db
    and a                                         ; $6036: $a7
    dec e                                         ; $6037: $1d
    ld l, e                                       ; $6038: $6b
    xor $35                                       ; $6039: $ee $35
    ret                                           ; $603b: $c9


    ld sp, $620f                                  ; $603c: $31 $0f $62
    ld d, [hl]                                    ; $603f: $56
    adc d                                         ; $6040: $8a
    adc $1f                                       ; $6041: $ce $1f
    ld d, [hl]                                    ; $6043: $56
    ld c, b                                       ; $6044: $48
    ld a, [c]                                     ; $6045: $f2
    dec d                                         ; $6046: $15
    push bc                                       ; $6047: $c5
    xor d                                         ; $6048: $aa
    rlca                                          ; $6049: $07
    adc h                                         ; $604a: $8c
    ld a, [hl+]                                   ; $604b: $2a
    ld a, l                                       ; $604c: $7d
    adc d                                         ; $604d: $8a
    ld [hl], c                                    ; $604e: $71
    xor l                                         ; $604f: $ad
    or d                                          ; $6050: $b2
    and l                                         ; $6051: $a5
    adc h                                         ; $6052: $8c
    dec b                                         ; $6053: $05
    ld [hl+], a                                   ; $6054: $22
    jp nc, Jump_02e_632a                          ; $6055: $d2 $2a $63

    ld h, c                                       ; $6058: $61
    ld b, $94                                     ; $6059: $06 $94
    rst $28                                       ; $605b: $ef
    inc b                                         ; $605c: $04
    push bc                                       ; $605d: $c5
    inc c                                         ; $605e: $0c
    ret z                                         ; $605f: $c8

    dec d                                         ; $6060: $15
    ret                                           ; $6061: $c9


    cp c                                          ; $6062: $b9
    ld e, b                                       ; $6063: $58
    and $5c                                       ; $6064: $e6 $5c
    rst $20                                       ; $6066: $e7
    rst $08                                       ; $6067: $cf
    adc b                                         ; $6068: $88
    db $f4                                        ; $6069: $f4
    add hl, bc                                    ; $606a: $09
    add hl, de                                    ; $606b: $19
    ld d, l                                       ; $606c: $55
    ld a, [$b794]                                 ; $606d: $fa $94 $b7
    ld b, a                                       ; $6070: $47
    cp h                                          ; $6071: $bc
    ccf                                           ; $6072: $3f
    ld [hl], d                                    ; $6073: $72
    ld h, e                                       ; $6074: $63
    inc c                                         ; $6075: $0c
    ld c, e                                       ; $6076: $4b
    ld [hl], d                                    ; $6077: $72
    rst $00                                       ; $6078: $c7
    sbc d                                         ; $6079: $9a
    ld a, e                                       ; $607a: $7b
    ld c, l                                       ; $607b: $4d
    ld l, l                                       ; $607c: $6d
    ld [c], a                                     ; $607d: $e2
    adc [hl]                                      ; $607e: $8e
    pop af                                        ; $607f: $f1
    sbc d                                         ; $6080: $9a
    ld [hl], h                                    ; $6081: $74
    ld a, [$fe7d]                                 ; $6082: $fa $7d $fe
    ld a, h                                       ; $6085: $7c
    adc l                                         ; $6086: $8d
    add b                                         ; $6087: $80
    sub $35                                       ; $6088: $d6 $35
    cp c                                          ; $608a: $b9
    sub [hl]                                      ; $608b: $96
    ld b, [hl]                                    ; $608c: $46
    ld sp, hl                                     ; $608d: $f9
    cp b                                          ; $608e: $b8
    add $3c                                       ; $608f: $c6 $3c
    adc b                                         ; $6091: $88
    jp c, $16c4                                   ; $6092: $da $c4 $16

    daa                                           ; $6095: $27
    ld bc, $5726                                  ; $6096: $01 $26 $57
    ld [hl], l                                    ; $6099: $75
    ld e, l                                       ; $609a: $5d
    ld l, c                                       ; $609b: $69
    push de                                       ; $609c: $d5
    jp $b2e4                                      ; $609d: $c3 $e4 $b2


    or l                                          ; $60a0: $b5
    ld a, a                                       ; $60a1: $7f
    scf                                           ; $60a2: $37
    ld [hl], b                                    ; $60a3: $70
    jp Jump_02e_6358                              ; $60a4: $c3 $58 $63


    or c                                          ; $60a7: $b1
    or h                                          ; $60a8: $b4
    ld hl, $42ad                                  ; $60a9: $21 $ad $42
    ld b, c                                       ; $60ac: $41
    rst $20                                       ; $60ad: $e7
    cp h                                          ; $60ae: $bc
    dec b                                         ; $60af: $05
    daa                                           ; $60b0: $27
    add e                                         ; $60b1: $83
    ld b, [hl]                                    ; $60b2: $46
    rrca                                          ; $60b3: $0f
    ld h, d                                       ; $60b4: $62
    ld b, l                                       ; $60b5: $45
    or c                                          ; $60b6: $b1
    ld e, e                                       ; $60b7: $5b
    xor c                                         ; $60b8: $a9
    sra b                                         ; $60b9: $cb $28
    ld d, $77                                     ; $60bb: $16 $77
    ld a, l                                       ; $60bd: $7d
    ld [hl], d                                    ; $60be: $72
    db $eb                                        ; $60bf: $eb
    or $eb                                        ; $60c0: $f6 $eb
    db $d3                                        ; $60c2: $d3
    inc c                                         ; $60c3: $0c
    ld a, [hl-]                                   ; $60c4: $3a
    xor a                                         ; $60c5: $af
    ld a, d                                       ; $60c6: $7a
    ret nz                                        ; $60c7: $c0

    xor b                                         ; $60c8: $a8
    jp nc, Jump_000_18a7                          ; $60c9: $d2 $a7 $18

    rst $10                                       ; $60cc: $d7
    adc d                                         ; $60cd: $8a
    dec l                                         ; $60ce: $2d
    ld h, l                                       ; $60cf: $65
    inc l                                         ; $60d0: $2c
    db $10                                        ; $60d1: $10
    sub c                                         ; $60d2: $91
    ld d, [hl]                                    ; $60d3: $56
    add hl, de                                    ; $60d4: $19
    dec bc                                        ; $60d5: $0b
    inc sp                                        ; $60d6: $33
    and b                                         ; $60d7: $a0
    ld h, l                                       ; $60d8: $65
    ld b, b                                       ; $60d9: $40
    ei                                            ; $60da: $fb
    rrca                                          ; $60db: $0f
    ld h, d                                       ; $60dc: $62
    call z, $9883                                 ; $60dd: $cc $83 $98
    ld sp, $c7ef                                  ; $60e0: $31 $ef $c7
    xor d                                         ; $60e3: $aa
    rst $30                                       ; $60e4: $f7
    ret                                           ; $60e5: $c9


    ld l, a                                       ; $60e6: $6f
    or c                                          ; $60e7: $b1
    ld h, e                                       ; $60e8: $63
    call Call_02e_66bd                            ; $60e9: $cd $bd $66
    and d                                         ; $60ec: $a2
    ld d, l                                       ; $60ed: $55
    rrca                                          ; $60ee: $0f
    sub e                                         ; $60ef: $93
    inc de                                        ; $60f0: $13
    call $c69a                                    ; $60f1: $cd $9a $c6
    cp e                                          ; $60f4: $bb
    ld h, $9d                                     ; $60f5: $26 $9d
    ld e, a                                       ; $60f7: $5f
    adc a                                         ; $60f8: $8f
    ld a, c                                       ; $60f9: $79
    db $10                                        ; $60fa: $10
    xor e                                         ; $60fb: $ab
    or e                                          ; $60fc: $b3
    or h                                          ; $60fd: $b4
    and c                                         ; $60fe: $a1
    ld l, e                                       ; $60ff: $6b
    call z, $f22b                                 ; $6100: $cc $2b $f2
    pop bc                                        ; $6103: $c1
    rst $10                                       ; $6104: $d7
    sbc d                                         ; $6105: $9a
    ld [bc], a                                    ; $6106: $02
    sub l                                         ; $6107: $95
    ld h, [hl]                                    ; $6108: $66
    or b                                          ; $6109: $b0
    add $df                                       ; $610a: $c6 $df
    push bc                                       ; $610c: $c5
    ld [hl], $fc                                  ; $610d: $36 $fc
    cp e                                          ; $610f: $bb
    ld e, $78                                     ; $6110: $1e $78
    db $e4                                        ; $6112: $e4
    dec sp                                        ; $6113: $3b
    ld b, c                                       ; $6114: $41
    cp e                                          ; $6115: $bb
    ld e, $78                                     ; $6116: $1e $78
    ld c, h                                       ; $6118: $4c
    ld b, c                                       ; $6119: $41
    inc hl                                        ; $611a: $23
    ld a, c                                       ; $611b: $79
    add l                                         ; $611c: $85
    rst $38                                       ; $611d: $ff

jr_02e_611e:
    sub [hl]                                      ; $611e: $96
    or a                                          ; $611f: $b7
    ld b, a                                       ; $6120: $47
    sbc $9a                                       ; $6121: $de $9a
    xor [hl]                                      ; $6123: $ae
    cpl                                           ; $6124: $2f
    or [hl]                                       ; $6125: $b6
    ld [$c3d1], a                                 ; $6126: $ea $d1 $c3
    db $e4                                        ; $6129: $e4
    adc [hl]                                      ; $612a: $8e
    dec [hl]                                      ; $612b: $35
    rst $30                                       ; $612c: $f7
    sbc d                                         ; $612d: $9a
    ld a, h                                       ; $612e: $7c
    and a                                         ; $612f: $a7
    ld [c], a                                     ; $6130: $e2
    ld [$98a6], sp                                ; $6131: $08 $a6 $98
    cp $5c                                        ; $6134: $fe $5c
    ld h, h                                       ; $6136: $64
    adc $93                                       ; $6137: $ce $93
    inc hl                                        ; $6139: $23
    ld e, b                                       ; $613a: $58
    inc hl                                        ; $613b: $23
    rst $20                                       ; $613c: $e7
    ld l, [hl]                                    ; $613d: $6e
    or c                                          ; $613e: $b1
    and d                                         ; $613f: $a2
    ld e, b                                       ; $6140: $58
    di                                            ; $6141: $f3
    ldh a, [rHDMA3]                               ; $6142: $f0 $53
    inc l                                         ; $6144: $2c
    inc bc                                        ; $6145: $03
    ld a, [de]                                    ; $6146: $1a
    pop bc                                        ; $6147: $c1
    jr jr_02e_611e                                ; $6148: $18 $d4

    adc a                                         ; $614a: $8f
    ld [hl], c                                    ; $614b: $71
    adc l                                         ; $614c: $8d
    ld h, l                                       ; $614d: $65
    xor h                                         ; $614e: $ac
    cpl                                           ; $614f: $2f
    rst $08                                       ; $6150: $cf
    ld e, e                                       ; $6151: $5b
    ld b, a                                       ; $6152: $47
    db $fd                                        ; $6153: $fd
    ld sp, hl                                     ; $6154: $f9
    inc bc                                        ; $6155: $03
    jp nc, Jump_000_079a                          ; $6156: $d2 $9a $07

    cp [hl]                                       ; $6159: $be
    and d                                         ; $615a: $a2
    dec [hl]                                      ; $615b: $35
    cp $2e                                        ; $615c: $fe $2e
    or [hl]                                       ; $615e: $b6
    pop hl                                        ; $615f: $e1
    rst $18                                       ; $6160: $df
    push af                                       ; $6161: $f5
    ret nz                                        ; $6162: $c0

    inc hl                                        ; $6163: $23
    cp c                                          ; $6164: $b9
    ld h, e                                       ; $6165: $63
    call Call_000_26bd                            ; $6166: $cd $bd $26
    ld l, a                                       ; $6169: $6f
    ld bc, $7dc7                                  ; $616a: $01 $c7 $7d
    jr nz, jr_02e_619b                            ; $616d: $20 $2c

    ld a, [de]                                    ; $616f: $1a
    rst $10                                       ; $6170: $d7
    ld e, h                                       ; $6171: $5c
    ld b, c                                       ; $6172: $41
    ld a, [c]                                     ; $6173: $f2
    ld h, l                                       ; $6174: $65
    ret nz                                        ; $6175: $c0

    ld a, $5f                                     ; $6176: $3e $5f
    pop de                                        ; $6178: $d1
    xor [hl]                                      ; $6179: $ae
    rlca                                          ; $617a: $07
    ld e, $53                                     ; $617b: $1e $53
    ret nc                                        ; $617d: $d0

    jp nc, Jump_000_31f8                          ; $617e: $d2 $f8 $31

    rst $18                                       ; $6181: $df
    ld [hl], c                                    ; $6182: $71
    ld h, l                                       ; $6183: $65
    dec [hl]                                      ; $6184: $35
    or e                                          ; $6185: $b3
    ld [hl], c                                    ; $6186: $71
    push bc                                       ; $6187: $c5
    ld l, $f6                                     ; $6188: $2e $f6
    dec bc                                        ; $618a: $0b
    push bc                                       ; $618b: $c5
    ld [$9acc], a                                 ; $618c: $ea $cc $9a
    add $f5                                       ; $618f: $c6 $f5
    cp c                                          ; $6191: $b9
    ld l, e                                       ; $6192: $6b
    add [hl]                                      ; $6193: $86
    and l                                         ; $6194: $a5
    ld [$f23c], sp                                ; $6195: $08 $3c $f2
    ld d, $1d                                     ; $6198: $16 $1d
    rra                                           ; $619a: $1f

jr_02e_619b:
    ld a, b                                       ; $619b: $78
    ld b, $1e                                     ; $619c: $06 $1e
    xor [hl]                                      ; $619e: $ae
    ld l, b                                       ; $619f: $68
    adc l                                         ; $61a0: $8d
    cp a                                          ; $61a1: $bf
    or h                                          ; $61a2: $b4
    ld [hl+], a                                   ; $61a3: $22
    inc b                                         ; $61a4: $04
    cp [hl]                                       ; $61a5: $be
    sub e                                         ; $61a6: $93
    ld bc, $55dd                                  ; $61a7: $01 $dd $55
    jp z, $1eac                                   ; $61aa: $ca $ac $1e

    push de                                       ; $61ad: $d5
    jp $72b2                                      ; $61ae: $c3 $b2 $72


    scf                                           ; $61b1: $37
    db $f4                                        ; $61b2: $f4
    dec b                                         ; $61b3: $05
    xor $cb                                       ; $61b4: $ee $cb
    add hl, de                                    ; $61b6: $19
    ld b, c                                       ; $61b7: $41
    rst $20                                       ; $61b8: $e7
    jp c, $5b43                                   ; $61b9: $da $43 $5b

    daa                                           ; $61bc: $27
    inc bc                                        ; $61bd: $03
    cp d                                          ; $61be: $ba
    xor e                                         ; $61bf: $ab
    sub h                                         ; $61c0: $94

jr_02e_61c1:
    add hl, hl                                    ; $61c1: $29
    ld l, b                                       ; $61c2: $68
    db $f4                                        ; $61c3: $f4
    jr nz, jr_02e_61c1                            ; $61c4: $20 $fb

    add c                                         ; $61c6: $81
    rst $00                                       ; $61c7: $c7
    inc c                                         ; $61c8: $0c
    halt                                          ; $61c9: $76
    dec a                                         ; $61ca: $3d
    ld [hl], b                                    ; $61cb: $70
    ei                                            ; $61cc: $fb
    inc [hl]                                      ; $61cd: $34
    xor [hl]                                      ; $61ce: $ae
    pop de                                        ; $61cf: $d1
    inc bc                                        ; $61d0: $03
    jp z, $d277                                   ; $61d1: $ca $77 $d2

    rra                                           ; $61d4: $1f
    ld b, a                                       ; $61d5: $47
    scf                                           ; $61d6: $37
    and h                                         ; $61d7: $a4
    dec [hl]                                      ; $61d8: $35
    xor [hl]                                      ; $61d9: $ae
    ret z                                         ; $61da: $c8

    add b                                         ; $61db: $80
    sub [hl]                                      ; $61dc: $96
    add c                                         ; $61dd: $81
    dec sp                                        ; $61de: $3b
    sub [hl]                                      ; $61df: $96
    reti                                          ; $61e0: $d9


    cp b                                          ; $61e1: $b8
    ld h, d                                       ; $61e2: $62
    dec [hl]                                      ; $61e3: $35
    add d                                         ; $61e4: $82
    adc $e3                                       ; $61e5: $ce $e3
    ld [hl], d                                    ; $61e7: $72
    rst $00                                       ; $61e8: $c7
    cp d                                          ; $61e9: $ba
    xor [hl]                                      ; $61ea: $ae
    dec d                                         ; $61eb: $15
    dec de                                        ; $61ec: $1b
    ld [hl], l                                    ; $61ed: $75
    ld c, l                                       ; $61ee: $4d
    jp z, $f55b                                   ; $61ef: $ca $5b $f5

    or l                                          ; $61f2: $b5
    ld c, d                                       ; $61f3: $4a
    db $e3                                        ; $61f4: $e3
    xor d                                         ; $61f5: $aa
    db $ec                                        ; $61f6: $ec
    ld [hl], e                                    ; $61f7: $73
    xor l                                         ; $61f8: $ad
    call c, $14ad                                 ; $61f9: $dc $ad $14
    ld [hl], b                                    ; $61fc: $70
    dec l                                         ; $61fd: $2d
    inc bc                                        ; $61fe: $03
    ld e, d                                       ; $61ff: $5a
    or $dd                                        ; $6200: $f6 $dd
    ret nz                                        ; $6202: $c0

    dec c                                         ; $6203: $0d
    ld h, e                                       ; $6204: $63
    add $e8                                       ; $6205: $c6 $e8
    ld a, [de]                                    ; $6207: $1a
    db $fc                                        ; $6208: $fc
    ld de, $ca78                                  ; $6209: $11 $78 $ca
    ld a, [hl]                                    ; $620c: $7e
    db $ed                                        ; $620d: $ed
    and c                                         ; $620e: $a1
    dec l                                         ; $620f: $2d
    ld e, c                                       ; $6210: $59
    ld [hl+], a                                   ; $6211: $22
    jp nc, $4ac2                                  ; $6212: $d2 $c2 $4a

    pop de                                        ; $6215: $d1
    inc d                                         ; $6216: $14
    inc [hl]                                      ; $6217: $34
    add $0d                                       ; $6218: $c6 $0d
    dec hl                                        ; $621a: $2b
    ld a, l                                       ; $621b: $7d
    jp c, $dc8d                                   ; $621c: $da $8d $dc

    ld a, $4b                                     ; $621f: $3e $4b
    ld a, c                                       ; $6221: $79
    dec bc                                        ; $6222: $0b
    rst $00                                       ; $6223: $c7
    sbc d                                         ; $6224: $9a
    ld a, e                                       ; $6225: $7b
    call Call_000_3e3a                            ; $6226: $cd $3a $3e
    ld [hl+], a                                   ; $6229: $22
    ld a, c                                       ; $622a: $79
    ld l, l                                       ; $622b: $6d
    ld [c], a                                     ; $622c: $e2
    ld c, [hl]                                    ; $622d: $4e
    ret nc                                        ; $622e: $d0

    ld l, $54                                     ; $622f: $2e $54
    ld e, c                                       ; $6231: $59
    inc a                                         ; $6232: $3c
    and h                                         ; $6233: $a4
    sub l                                         ; $6234: $95
    rlca                                          ; $6235: $07
    or a                                          ; $6236: $b7
    db $e4                                        ; $6237: $e4
    sbc b                                         ; $6238: $98
    rlca                                          ; $6239: $07
    or c                                          ; $623a: $b1
    xor [hl]                                      ; $623b: $ae
    ld c, c                                       ; $623c: $49
    or c                                          ; $623d: $b1
    ld d, d                                       ; $623e: $52
    and a                                         ; $623f: $a7
    ld [hl], $b1                                  ; $6240: $36 $b1
    dec b                                         ; $6242: $05
    rst $00                                       ; $6243: $c7
    sub l                                         ; $6244: $95
    push de                                       ; $6245: $d5
    call z, $1826                                 ; $6246: $cc $26 $18
    db $fc                                        ; $6249: $fc
    reti                                          ; $624a: $d9


    ld [hl], l                                    ; $624b: $75
    ld hl, $a7d7                                  ; $624c: $21 $d7 $a7
    db $e4                                        ; $624f: $e4
    ldh [rOCPD], a                                ; $6250: $e0 $6b
    xor c                                         ; $6252: $a9
    rlca                                          ; $6253: $07
    inc l                                         ; $6254: $2c
    call nc, $376c                                ; $6255: $d4 $6c $37
    cp d                                          ; $6258: $ba
    adc l                                         ; $6259: $8d
    call c, $a47e                                 ; $625a: $dc $7e $a4
    sbc a                                         ; $625d: $9f
    ld d, a                                       ; $625e: $57
    scf                                           ; $625f: $37
    ld c, l                                       ; $6260: $4d
    ld a, a                                       ; $6261: $7f
    push bc                                       ; $6262: $c5
    ld a, [de]                                    ; $6263: $1a
    db $fc                                        ; $6264: $fc
    ld a, c                                       ; $6265: $79
    dec bc                                        ; $6266: $0b
    daa                                           ; $6267: $27
    ld bc, $d726                                  ; $6268: $01 $26 $d7
    and e                                         ; $626b: $a3
    call Call_000_0f46                            ; $626c: $cd $46 $0f
    ld l, b                                       ; $626f: $68
    push hl                                       ; $6270: $e5
    ld l, [hl]                                    ; $6271: $6e
    add sp, -$1d                                  ; $6272: $e8 $e3
    ld [hl], a                                    ; $6274: $77
    ld hl, sp-$4d                                 ; $6275: $f8 $b3
    db $eb                                        ; $6277: $eb
    ld b, d                                       ; $6278: $42
    xor [hl]                                      ; $6279: $ae
    ld c, a                                       ; $627a: $4f
    ld a, c                                       ; $627b: $79
    dec bc                                        ; $627c: $0b
    daa                                           ; $627d: $27
    ret c                                         ; $627e: $d8

    ld d, d                                       ; $627f: $52
    rrca                                          ; $6280: $0f
    ld e, b                                       ; $6281: $58
    xor b                                         ; $6282: $a8
    db $dd                                        ; $6283: $dd
    ret z                                         ; $6284: $c8

    sub b                                         ; $6285: $90
    ld h, [hl]                                    ; $6286: $66
    and l                                         ; $6287: $a5
    ld b, b                                       ; $6288: $40
    ld [hl], l                                    ; $6289: $75
    ld d, e                                       ; $628a: $53
    sbc [hl]                                      ; $628b: $9e
    rst $20                                       ; $628c: $e7
    inc de                                        ; $628d: $13
    dec c                                         ; $628e: $0d
    set 4, d                                      ; $628f: $cb $e2
    xor [hl]                                      ; $6291: $ae
    and b                                         ; $6292: $a0
    db $dd                                        ; $6293: $dd
    ld l, $b6                                     ; $6294: $2e $b6
    dec [hl]                                      ; $6296: $35
    call Call_000_36ad                            ; $6297: $cd $ad $36
    ld [hl], c                                    ; $629a: $71
    ld e, e                                       ; $629b: $5b
    db $fd                                        ; $629c: $fd
    cp e                                          ; $629d: $bb
    pop hl                                        ; $629e: $e1
    ld a, [de]                                    ; $629f: $1a
    add c                                         ; $62a0: $81
    cpl                                           ; $62a1: $2f
    inc bc                                        ; $62a2: $03
    ld [hl], a                                    ; $62a3: $77
    sub l                                         ; $62a4: $95
    and d                                         ; $62a5: $a2
    ld a, l                                       ; $62a6: $7d
    xor l                                         ; $62a7: $ad
    ld [de], a                                    ; $62a8: $12
    sub c                                         ; $62a9: $91
    ld d, [hl]                                    ; $62aa: $56
    or h                                          ; $62ab: $b4
    or h                                          ; $62ac: $b4
    ld h, b                                       ; $62ad: $60
    adc l                                         ; $62ae: $8d
    add hl, sp                                    ; $62af: $39
    dec a                                         ; $62b0: $3d
    and b                                         ; $62b1: $a0
    ld a, h                                       ; $62b2: $7c
    rst $00                                       ; $62b3: $c7
    sub l                                         ; $62b4: $95
    and l                                         ; $62b5: $a5
    dec c                                         ; $62b6: $0d
    ld l, b                                       ; $62b7: $68

Call_02e_62b8:
    add hl, de                                    ; $62b8: $19
    ret nc                                        ; $62b9: $d0

    ld [hl-], a                                   ; $62ba: $32
    and b                                         ; $62bb: $a0
    sub d                                         ; $62bc: $92
    add c                                         ; $62bd: $81
    dec sp                                        ; $62be: $3b
    db $fc                                        ; $62bf: $fc
    sub l                                         ; $62c0: $95
    cp e                                          ; $62c1: $bb
    ld de, $35b9                                  ; $62c2: $11 $b9 $35
    ld c, d                                       ; $62c5: $4a
    ld c, [hl]                                    ; $62c6: $4e
    or h                                          ; $62c7: $b4
    ld c, e                                       ; $62c8: $4b
    dec bc                                        ; $62c9: $0b
    cp c                                          ; $62ca: $b9
    adc l                                         ; $62cb: $8d
    ld a, c                                       ; $62cc: $79
    db $10                                        ; $62cd: $10
    ld a, c                                       ; $62ce: $79
    dec bc                                        ; $62cf: $0b
    ld b, a                                       ; $62d0: $47
    pop de                                        ; $62d1: $d1
    xor [hl]                                      ; $62d2: $ae
    ld d, a                                       ; $62d3: $57
    ld d, l                                       ; $62d4: $55
    ld a, [$d734]                                 ; $62d5: $fa $34 $d7
    push af                                       ; $62d8: $f5
    cp $b7                                        ; $62d9: $fe $b7
    ld l, [hl]                                    ; $62db: $6e
    ret                                           ; $62dc: $c9


Call_02e_62dd:
    dec c                                         ; $62dd: $0d
    and e                                         ; $62de: $a3
    ld e, [hl]                                    ; $62df: $5e
    or [hl]                                       ; $62e0: $b6
    ld d, [hl]                                    ; $62e1: $56
    or h                                          ; $62e2: $b4
    ld h, d                                       ; $62e3: $62
    dec c                                         ; $62e4: $0d
    cp $da                                        ; $62e5: $fe $da
    ld b, e                                       ; $62e7: $43
    ld e, e                                       ; $62e8: $5b
    rst $00                                       ; $62e9: $c7
    sub l                                         ; $62ea: $95
    add hl, hl                                    ; $62eb: $29
    ld l, b                                       ; $62ec: $68
    inc c                                         ; $62ed: $0c
    cp [hl]                                       ; $62ee: $be
    ld [hl+], a                                   ; $62ef: $22
    jp z, Jump_02e_7597                           ; $62f0: $ca $97 $75

    ld d, a                                       ; $62f3: $57
    ret nc                                        ; $62f4: $d0

    ldh a, [$b3]                                  ; $62f5: $f0 $b3
    dec l                                         ; $62f7: $2d
    add l                                         ; $62f8: $85
    inc b                                         ; $62f9: $04
    ld a, [hl+]                                   ; $62fa: $2a
    ret                                           ; $62fb: $c9


    ld d, l                                       ; $62fc: $55
    ld e, l                                       ; $62fd: $5d
    ld d, a                                       ; $62fe: $57
    ld e, d                                       ; $62ff: $5a
    sbc l                                         ; $6300: $9d
    ld [hl], l                                    ; $6301: $75
    ld a, h                                       ; $6302: $7c
    ret nz                                        ; $6303: $c0

    adc e                                         ; $6304: $8b
    add hl, sp                                    ; $6305: $39
    rst $08                                       ; $6306: $cf
    ld [hl], a                                    ; $6307: $77
    ld a, [hl+]                                   ; $6308: $2a
    adc [hl]                                      ; $6309: $8e
    ld a, c                                       ; $630a: $79
    db $10                                        ; $630b: $10
    di                                            ; $630c: $f3
    dec de                                        ; $630d: $1b
    ld b, h                                       ; $630e: $44

Jump_02e_630f:
    ld h, b                                       ; $630f: $60
    add h                                         ; $6310: $84
    adc $5f                                       ; $6311: $ce $5f
    sbc l                                         ; $6313: $9d
    sub l                                         ; $6314: $95
    cp e                                          ; $6315: $bb
    ld de, $35b9                                  ; $6316: $11 $b9 $35
    ld a, [c]                                     ; $6319: $f2
    adc c                                         ; $631a: $89
    ld d, [hl]                                    ; $631b: $56
    ld h, a                                       ; $631c: $67
    ld b, l                                       ; $631d: $45
    ld [hl], e                                    ; $631e: $73
    xor e                                         ; $631f: $ab
    db $f4                                        ; $6320: $f4
    push hl                                       ; $6321: $e5
    ret                                           ; $6322: $c9


    ld h, l                                       ; $6323: $65
    ld l, e                                       ; $6324: $6b
    call z, $9883                                 ; $6325: $cc $83 $98
    dec [hl]                                      ; $6328: $35
    adc l                                         ; $6329: $8d

Jump_02e_632a:
    db $eb                                        ; $632a: $eb
    ld [hl], e                                    ; $632b: $73
    scf                                           ; $632c: $37
    inc e                                         ; $632d: $1c
    db $fc                                        ; $632e: $fc
    db $fd                                        ; $632f: $fd
    rlca                                          ; $6330: $07
    adc h                                         ; $6331: $8c
    inc c                                         ; $6332: $0c
    ld d, $cf                                     ; $6333: $16 $cf
    add hl, hl                                    ; $6335: $29
    ld l, a                                       ; $6336: $6f
    ld bc, $b5f5                                  ; $6337: $01 $f5 $b5
    add $1c                                       ; $633a: $c6 $1c
    or l                                          ; $633c: $b5
    inc c                                         ; $633d: $0c
    call c, $4cb1                                 ; $633e: $dc $b1 $4c
    ld de, $7286                                  ; $6341: $11 $86 $72
    dec de                                        ; $6344: $1b
    rst $10                                       ; $6345: $d7
    ld [c], a                                     ; $6346: $e2
    add hl, sp                                    ; $6347: $39
    and c                                         ; $6348: $a1
    rst $20                                       ; $6349: $e7
    dec l                                         ; $634a: $2d
    ld b, a                                       ; $634b: $47
    cp h                                          ; $634c: $bc
    rst $38                                       ; $634d: $ff
    or l                                          ; $634e: $b5
    adc e                                         ; $634f: $8b
    ld l, l                                       ; $6350: $6d
    rst $38                                       ; $6351: $ff
    ld d, d                                       ; $6352: $52
    ld [hl], d                                    ; $6353: $72
    rst $00                                       ; $6354: $c7
    sbc d                                         ; $6355: $9a
    ld a, e                                       ; $6356: $7b
    ld c, l                                       ; $6357: $4d

Jump_02e_6358:
    cp [hl]                                       ; $6358: $be
    and e                                         ; $6359: $a3
    dec c                                         ; $635a: $0d
    ld h, e                                       ; $635b: $63
    ld b, [hl]                                    ; $635c: $46
    and h                                         ; $635d: $a4
    ld c, a                                       ; $635e: $4f
    ld hl, sp-$02                                 ; $635f: $f8 $fe
    ld [$6bec], a                                 ; $6361: $ea $ec $6b
    adc l                                         ; $6364: $8d
    push bc                                       ; $6365: $c5
    ld c, b                                       ; $6366: $48
    ld c, e                                       ; $6367: $4b
    ld a, c                                       ; $6368: $79
    rrca                                          ; $6369: $0f
    ld b, l                                       ; $636a: $45
    sbc [hl]                                      ; $636b: $9e
    or a                                          ; $636c: $b7
    daa                                           ; $636d: $27
    ld l, b                                       ; $636e: $68
    push bc                                       ; $636f: $c5
    ld a, [de]                                    ; $6370: $1a
    db $fc                                        ; $6371: $fc
    ei                                            ; $6372: $fb
    ld [hl], a                                    ; $6373: $77
    dec b                                         ; $6374: $05
    xor l                                         ; $6375: $ad
    or c                                          ; $6376: $b1
    jr @+$60                                      ; $6377: $18 $5e

    sbc b                                         ; $6379: $98
    call c, $e6b1                                 ; $637a: $dc $b1 $e6
    ld e, [hl]                                    ; $637d: $5e
    ld d, e                                       ; $637e: $53
    sbc e                                         ; $637f: $9b
    cp b                                          ; $6380: $b8
    inc hl                                        ; $6381: $23
    ld l, a                                       ; $6382: $6f
    ld c, l                                       ; $6383: $4d
    rst $10                                       ; $6384: $d7
    rla                                           ; $6385: $17
    ld e, e                                       ; $6386: $5b
    rst $20                                       ; $6387: $e7
    rst $10                                       ; $6388: $d7
    ld h, e                                       ; $6389: $63
    ld e, $c4                                     ; $638a: $1e $c4
    cp b                                          ; $638c: $b8
    ld d, [hl]                                    ; $638d: $56
    inc [hl]                                      ; $638e: $34
    ld a, [c]                                     ; $638f: $f2
    rlca                                          ; $6390: $07
    adc h                                         ; $6391: $8c
    cp h                                          ; $6392: $bc
    ld [hl], $b1                                  ; $6393: $36 $b1
    dec b                                         ; $6395: $05
    sbc l                                         ; $6396: $9d
    ld h, b                                       ; $6397: $60
    ld d, $63                                     ; $6398: $16 $63
    ld h, b                                       ; $639a: $60
    ldh a, [$57]                                  ; $639b: $f0 $57
    xor h                                         ; $639d: $ac
    pop bc                                        ; $639e: $c1
    ccf                                           ; $639f: $3f
    ld b, $5f                                     ; $63a0: $06 $5f
    ld de, $1ed5                                  ; $63a2: $11 $d5 $1e
    jp c, Jump_000_2702                           ; $63a5: $da $02 $27

    ld bc, $8726                                  ; $63a8: $01 $26 $87
    ld h, l                                       ; $63ab: $65
    rst $10                                       ; $63ac: $d7
    inc bc                                        ; $63ad: $03
    scf                                           ; $63ae: $37

jr_02e_63af:
    and h                                         ; $63af: $a4
    jp hl                                         ; $63b0: $e9


    adc a                                         ; $63b1: $8f
    and e                                         ; $63b2: $a3
    db $eb                                        ; $63b3: $eb
    ld [hl+], a                                   ; $63b4: $22
    ld a, h                                       ; $63b5: $7c
    ld a, a                                       ; $63b6: $7f
    ld e, h                                       ; $63b7: $5c
    dec hl                                        ; $63b8: $2b
    ld [hl], a                                    ; $63b9: $77
    push bc                                       ; $63ba: $c5
    ld h, l                                       ; $63bb: $65
    dec b                                         ; $63bc: $05
    push hl                                       ; $63bd: $e5
    ld a, c                                       ; $63be: $79
    dec bc                                        ; $63bf: $0b
    push af                                       ; $63c0: $f5
    rst $28                                       ; $63c1: $ef
    add [hl]                                      ; $63c2: $86
    ld h, e                                       ; $63c3: $63
    ld h, b                                       ; $63c4: $60
    ldh a, [$57]                                  ; $63c5: $f0 $57
    xor h                                         ; $63c7: $ac
    pop bc                                        ; $63c8: $c1
    cp a                                          ; $63c9: $bf
    nop                                           ; $63ca: $00
    ld e, a                                       ; $63cb: $5f
    cp c                                          ; $63cc: $b9
    dec hl                                        ; $63cd: $2b
    ld l, $2b                                     ; $63ce: $2e $2b
    jr z, jr_02e_6431                             ; $63d0: $28 $5f

    and l                                         ; $63d2: $a5
    ld l, a                                       ; $63d3: $6f
    sbc a                                         ; $63d4: $9f
    ld h, [hl]                                    ; $63d5: $66
    jr nc, jr_02e_63af                            ; $63d6: $30 $d7

    ld sp, hl                                     ; $63d8: $f9
    push af                                       ; $63d9: $f5
    cp b                                          ; $63da: $b8
    ld [$6c5d], a                                 ; $63db: $ea $5d $6c
    add e                                         ; $63de: $83
    adc b                                         ; $63df: $88
    sbc e                                         ; $63e0: $9b
    sub d                                         ; $63e1: $92
    xor e                                         ; $63e2: $ab
    inc c                                         ; $63e3: $0c
    ld h, e                                       ; $63e4: $63
    reti                                          ; $63e5: $d9


    jp c, Jump_000_2ad7                           ; $63e6: $da $d7 $2a

    dec l                                         ; $63e9: $2d
    ld e, $30                                     ; $63ea: $1e $30
    xor b                                         ; $63ec: $a8
    rra                                           ; $63ed: $1f
    ld l, e                                       ; $63ee: $6b
    ld a, [bc]                                    ; $63ef: $0a
    call nz, $16b8                                ; $63f0: $c4 $b8 $16
    or [hl]                                       ; $63f3: $b6
    db $eb                                        ; $63f4: $eb
    ld b, c                                       ; $63f5: $41
    ld de, $de78                                  ; $63f6: $11 $78 $de
    ld [bc], a                                    ; $63f9: $02
    daa                                           ; $63fa: $27
    db $fd                                        ; $63fb: $fd
    ld [hl], c                                    ; $63fc: $71
    ld [hl], h                                    ; $63fd: $74
    ld b, e                                       ; $63fe: $43
    ld e, d                                       ; $63ff: $5a
    ld b, $34                                     ; $6400: $06 $34
    add d                                         ; $6402: $82
    ld a, l                                       ; $6403: $7d
    xor l                                         ; $6404: $ad
    or c                                          ; $6405: $b1
    ld [$1ac5], sp                                ; $6406: $08 $c5 $1a
    adc e                                         ; $6409: $8b
    and l                                         ; $640a: $a5
    ld h, h                                       ; $640b: $64
    ld [hl], b                                    ; $640c: $70
    dec a                                         ; $640d: $3d
    ld l, b                                       ; $640e: $68
    add $35                                       ; $640f: $c6 $35
    ld d, d                                       ; $6411: $52
    push de                                       ; $6412: $d5
    call nz, Call_02e_77f4                        ; $6413: $c4 $f4 $77
    dec a                                         ; $6416: $3d
    ldh a, [rOBP0]                                ; $6417: $f0 $48
    xor $58                                       ; $6419: $ee $58
    ld [hl], e                                    ; $641b: $73
    xor a                                         ; $641c: $af
    ret                                           ; $641d: $c9


    ld e, e                                       ; $641e: $5b
    dec e                                         ; $641f: $1d
    push hl                                       ; $6420: $e5
    ld d, a                                       ; $6421: $57
    ld c, l                                       ; $6422: $4d
    ld [hl], d                                    ; $6423: $72
    inc b                                         ; $6424: $04
    or e                                          ; $6425: $b3
    jr jr_02e_642b                                ; $6426: $18 $03

    add e                                         ; $6428: $83
    cp a                                          ; $6429: $bf
    ld h, d                                       ; $642a: $62

jr_02e_642b:
    dec c                                         ; $642b: $0d
    cp $31                                        ; $642c: $fe $31
    ld hl, sp-$76                                 ; $642e: $f8 $8a
    ld l, b                                       ; $6430: $68

jr_02e_6431:
    adc l                                         ; $6431: $8d
    ld sp, hl                                     ; $6432: $f9
    ldh a, [$c2]                                  ; $6433: $f0 $c2
    jp c, $5b43                                   ; $6435: $da $43 $5b

    daa                                           ; $6438: $27
    ld bc, $8726                                  ; $6439: $01 $26 $87
    ld h, l                                       ; $643c: $65
    or [hl]                                       ; $643d: $b6
    call nc, Call_000_1cfb                        ; $643e: $d4 $fb $1c
    rst $10                                       ; $6441: $d7
    sbc b                                         ; $6442: $98
    xor a                                         ; $6443: $af
    ret c                                         ; $6444: $d8

    sbc d                                         ; $6445: $9a
    rst $20                                       ; $6446: $e7
    and h                                         ; $6447: $a4
    adc c                                         ; $6448: $89
    add [hl]                                      ; $6449: $86
    ld h, l                                       ; $644a: $65
    ld a, [bc]                                    ; $644b: $0a
    ld e, d                                       ; $644c: $5a
    inc a                                         ; $644d: $3c
    daa                                           ; $644e: $27
    call z, $f1d7                                 ; $644f: $cc $d7 $f1
    add c                                         ; $6452: $81
    ld h, a                                       ; $6453: $67
    ldh [$e1], a                                  ; $6454: $e0 $e1
    or b                                          ; $6456: $b0
    ld c, h                                       ; $6457: $4c
    ld b, c                                       ; $6458: $41
    ld h, e                                       ; $6459: $63
    ldh a, [$15]                                  ; $645a: $f0 $15
    ld d, c                                       ; $645c: $51
    db $ed                                        ; $645d: $ed
    and c                                         ; $645e: $a1
    dec l                                         ; $645f: $2d
    ld b, a                                       ; $6460: $47
    db $fd                                        ; $6461: $fd
    and l                                         ; $6462: $a5
    dec c                                         ; $6463: $0d
    ld l, c                                       ; $6464: $69
    rst $10                                       ; $6465: $d7
    ld e, l                                       ; $6466: $5d
    ld b, c                                       ; $6467: $41
    add e                                         ; $6468: $83
    xor a                                         ; $6469: $af
    and l                                         ; $646a: $a5
    ld e, $b0                                     ; $646b: $1e $b0
    ld d, b                                       ; $646d: $50
    or e                                          ; $646e: $b3
    ld d, d                                       ; $646f: $52
    and b                                         ; $6470: $a0
    cp d                                          ; $6471: $ba
    ld l, c                                       ; $6472: $69
    add hl, de                                    ; $6473: $19
    ret nz                                        ; $6474: $c0

    reti                                          ; $6475: $d9


    ld l, [hl]                                    ; $6476: $6e
    ld [hl], h                                    ; $6477: $74
    ld e, e                                       ; $6478: $5b
    ld [hl], l                                    ; $6479: $75
    inc hl                                        ; $647a: $23
    xor e                                         ; $647b: $ab
    sbc [hl]                                      ; $647c: $9e
    scf                                           ; $647d: $37
    db $ec                                        ; $647e: $ec
    rla                                           ; $647f: $17
    scf                                           ; $6480: $37
    ld c, l                                       ; $6481: $4d
    ld a, a                                       ; $6482: $7f
    push bc                                       ; $6483: $c5
    ld a, [de]                                    ; $6484: $1a
    db $fc                                        ; $6485: $fc
    ld a, c                                       ; $6486: $79
    dec bc                                        ; $6487: $0b
    and a                                         ; $6488: $a7
    ccf                                           ; $6489: $3f
    inc l                                         ; $648a: $2c
    ld [hl], l                                    ; $648b: $75
    sub $3c                                       ; $648c: $d6 $3c
    ldh a, [$0c]                                  ; $648e: $f0 $0c
    inc a                                         ; $6490: $3c
    inc e                                         ; $6491: $1c
    sub [hl]                                      ; $6492: $96
    push de                                       ; $6493: $d5
    call z, Call_02e_4318                         ; $6494: $cc $18 $43
    ld a, [de]                                    ; $6497: $1a
    rst $10                                       ; $6498: $d7
    adc d                                         ; $6499: $8a
    db $ed                                        ; $649a: $ed
    ld b, d                                       ; $649b: $42
    rst $10                                       ; $649c: $d7
    ld a, [de]                                    ; $649d: $1a
    di                                            ; $649e: $f3
    sub c                                         ; $649f: $91
    call c, $b795                                 ; $64a0: $dc $95 $b7
    dec e                                         ; $64a3: $1d
    xor [hl]                                      ; $64a4: $ae
    ld h, e                                       ; $64a5: $63
    sbc $37                                       ; $64a6: $de $37
    sub [hl]                                      ; $64a8: $96
    sub l                                         ; $64a9: $95
    ld [hl-], a                                   ; $64aa: $32
    ld b, [hl]                                    ; $64ab: $46
    ld b, b                                       ; $64ac: $40
    res 0, b                                      ; $64ad: $cb $80
    sub [hl]                                      ; $64af: $96
    xor l                                         ; $64b0: $ad
    sub l                                         ; $64b1: $95
    cp e                                          ; $64b2: $bb
    ld de, $35b9                                  ; $64b3: $11 $b9 $35
    jp z, $f55b                                   ; $64b6: $ca $5b $f5

    dec [hl]                                      ; $64b9: $35
    ld b, $f5                                     ; $64ba: $06 $f5
    ld h, e                                       ; $64bc: $63
    db $fc                                        ; $64bd: $fc
    xor [hl]                                      ; $64be: $ae
    ccf                                           ; $64bf: $3f
    and $a1                                       ; $64c0: $e6 $a1
    rrca                                          ; $64c2: $0f
    cp $b8                                        ; $64c3: $fe $b8
    ret c                                         ; $64c5: $d8

    rst $08                                       ; $64c6: $cf
    ld h, e                                       ; $64c7: $63
    ld [hl], l                                    ; $64c8: $75
    ld d, [hl]                                    ; $64c9: $56
    xor $f8                                       ; $64ca: $ee $f8
    add e                                         ; $64cc: $83
    db $ec                                        ; $64cd: $ec
    ld d, e                                       ; $64ce: $53
    sbc $02                                       ; $64cf: $de $02
    daa                                           ; $64d1: $27
    cp [hl]                                       ; $64d2: $be
    sbc a                                         ; $64d3: $9f
    sbc h                                         ; $64d4: $9c
    ld l, b                                       ; $64d5: $68
    db $f4                                        ; $64d6: $f4
    or b                                          ; $64d7: $b0
    or $d0                                        ; $64d8: $f6 $d0
    ld d, $f5                                     ; $64da: $16 $f5
    or l                                          ; $64dc: $b5
    xor a                                         ; $64dd: $af
    dec b                                         ; $64de: $05
    ld h, b                                       ; $64df: $60
    xor h                                         ; $64e0: $ac
    or c                                          ; $64e1: $b1
    sbc b                                         ; $64e2: $98
    pop bc                                        ; $64e3: $c1
    xor [hl]                                      ; $64e4: $ae
    rlca                                          ; $64e5: $07
    ld l, [hl]                                    ; $64e6: $6e
    sbc a                                         ; $64e7: $9f
    ld a, [c]                                     ; $64e8: $f2
    ld d, $27                                     ; $64e9: $16 $27
    cp [hl]                                       ; $64eb: $be
    sbc a                                         ; $64ec: $9f
    ld e, h                                       ; $64ed: $5c
    or $dd                                        ; $64ee: $f6 $dd
    ret nz                                        ; $64f0: $c0

    dec c                                         ; $64f1: $0d
    ld h, e                                       ; $64f2: $63
    cp h                                          ; $64f3: $bc
    add a                                         ; $64f4: $87
    jp c, $5b43                                   ; $64f5: $da $43 $5b

    dec e                                         ; $64f8: $1d
    cp d                                          ; $64f9: $ba
    xor [hl]                                      ; $64fa: $ae
    or h                                          ; $64fb: $b4
    add $62                                       ; $64fc: $c6 $62
    push bc                                       ; $64fe: $c5
    sub [hl]                                      ; $64ff: $96
    ld bc, $c681                                  ; $6500: $01 $81 $c6
    rst $28                                       ; $6503: $ef
    ldh a, [$f3]                                  ; $6504: $f0 $f3
    ld d, $9d                                     ; $6506: $16 $9d
    ld h, b                                       ; $6508: $60
    adc d                                         ; $6509: $8a
    ld b, l                                       ; $650a: $45
    rrca                                          ; $650b: $0f
    cp [hl]                                       ; $650c: $be
    inc c                                         ; $650d: $0c

jr_02e_650e:
    ld l, b                                       ; $650e: $68
    inc b                                         ; $650f: $04
    ld h, e                                       ; $6510: $63
    inc l                                         ; $6511: $2c
    sub [hl]                                      ; $6512: $96
    ld b, d                                       ; $6513: $42
    db $fd                                        ; $6514: $fd
    db $e4                                        ; $6515: $e4
    adc [hl]                                      ; $6516: $8e
    dec [hl]                                      ; $6517: $35
    rst $30                                       ; $6518: $f7
    sbc d                                         ; $6519: $9a
    jp c, $5b43                                   ; $651a: $da $43 $5b

    and a                                         ; $651d: $a7
    db $db                                        ; $651e: $db
    sbc d                                         ; $651f: $9a
    rla                                           ; $6520: $17
    ld a, [c]                                     ; $6521: $f2
    sub c                                         ; $6522: $91
    ld h, d                                       ; $6523: $62
    add hl, de                                    ; $6524: $19
    ld d, b                                       ; $6525: $50
    db $10                                        ; $6526: $10
    cp [hl]                                       ; $6527: $be
    rra                                           ; $6528: $1f
    dec bc                                        ; $6529: $0b
    add d                                         ; $652a: $82
    ld b, $b9                                     ; $652b: $06 $b9
    ld h, d                                       ; $652d: $62
    add [hl]                                      ; $652e: $86
    and l                                         ; $652f: $a5
    ld [$6a3c], sp                                ; $6530: $08 $3c $6a
    inc de                                        ; $6533: $13
    ld e, e                                       ; $6534: $5b
    ld b, a                                       ; $6535: $47
    and a                                         ; $6536: $a7
    db $d3                                        ; $6537: $d3
    jp hl                                         ; $6538: $e9


    ld [hl], h                                    ; $6539: $74
    sbc $02                                       ; $653a: $de $02
    daa                                           ; $653c: $27
    cp [hl]                                       ; $653d: $be
    sbc a                                         ; $653e: $9f
    ld e, h                                       ; $653f: $5c
    ld h, l                                       ; $6540: $65
    jr jr_02e_650e                                ; $6541: $18 $cb

    cp [hl]                                       ; $6543: $be
    dec de                                        ; $6544: $1b
    ld d, [hl]                                    ; $6545: $56
    ld [hl], d                                    ; $6546: $72
    jp Jump_000_0a58                              ; $6547: $c3 $58 $0a


    push af                                       ; $654a: $f5
    and a                                         ; $654b: $a7
    ccf                                           ; $654c: $3f
    and $a1                                       ; $654d: $e6 $a1
    rrca                                          ; $654f: $0f
    ld a, [hl]                                    ; $6550: $7e
    sbc $02                                       ; $6551: $de $02
    daa                                           ; $6553: $27
    ld l, d                                       ; $6554: $6a
    sub l                                         ; $6555: $95
    sub [hl]                                      ; $6556: $96
    ld [hl], $24                                  ; $6557: $36 $24
    push bc                                       ; $6559: $c5
    ld a, [de]                                    ; $655a: $1a
    adc e                                         ; $655b: $8b
    dec [hl]                                      ; $655c: $35
    ld [hl], d                                    ; $655d: $72
    xor $5a                                       ; $655e: $ee $5a
    push af                                       ; $6560: $f5
    cp $48                                        ; $6561: $fe $48
    ld d, l                                       ; $6563: $55
    inc de                                        ; $6564: $13
    inc sp                                        ; $6565: $33
    ld b, [hl]                                    ; $6566: $46
    rst $10                                       ; $6567: $d7
    cp b                                          ; $6568: $b8
    ld h, d                                       ; $6569: $62
    ld e, h                                       ; $656a: $5c
    inc c                                         ; $656b: $0c
    ld a, [hl]                                    ; $656c: $7e
    ld de, $9229                                  ; $656d: $11 $29 $92
    db $eb                                        ; $6570: $eb
    ld hl, sp-$78                                 ; $6571: $f8 $88
    db $e4                                        ; $6573: $e4
    ld a, c                                       ; $6574: $79
    dec bc                                        ; $6575: $0b
    rst $00                                       ; $6576: $c7
    sub l                                         ; $6577: $95
    and l                                         ; $6578: $a5
    dec c                                         ; $6579: $0d
    ld l, b                                       ; $657a: $68
    ld e, h                                       ; $657b: $5c
    sub l                                         ; $657c: $95
    ld a, l                                       ; $657d: $7d
    ld l, $5f                                     ; $657e: $2e $5f
    sbc l                                         ; $6580: $9d
    dec e                                         ; $6581: $1d
    ld l, e                                       ; $6582: $6b
    inc l                                         ; $6583: $2c
    ld b, a                                       ; $6584: $47
    sbc [hl]                                      ; $6585: $9e
    rst $28                                       ; $6586: $ef
    cp b                                          ; $6587: $b8
    or d                                          ; $6588: $b2
    db $eb                                        ; $6589: $eb
    db $fd                                        ; $658a: $fd
    ld l, a                                       ; $658b: $6f
    db $dd                                        ; $658c: $dd
    jp nc, Jump_000_01e8                          ; $658d: $d2 $e8 $01

    add hl, hl                                    ; $6590: $29
    ld d, [hl]                                    ; $6591: $56
    inc d                                         ; $6592: $14
    or e                                          ; $6593: $b3
    ld d, d                                       ; $6594: $52
    ld l, [hl]                                    ; $6595: $6e
    adc d                                         ; $6596: $8a
    adc c                                         ; $6597: $89
    add $e8                                       ; $6598: $c6 $e8
    add e                                         ; $659a: $83
    ld h, d                                       ; $659b: $62
    ld e, h                                       ; $659c: $5c
    ld sp, $58fb                                  ; $659d: $31 $fb $58
    add hl, de                                    ; $65a0: $19
    ld [hl], h                                    ; $65a1: $74
    ld e, [hl]                                    ; $65a2: $5e
    add b                                         ; $65a3: $80
    xor a                                         ; $65a4: $af
    ld l, b                                       ; $65a5: $68
    inc h                                         ; $65a6: $24
    ld [hl], a                                    ; $65a7: $77
    and h                                         ; $65a8: $a4
    add a                                         ; $65a9: $87
    xor [hl]                                      ; $65aa: $ae
    ld [hl], c                                    ; $65ab: $71
    xor l                                         ; $65ac: $ad
    call c, $d76f                                 ; $65ad: $dc $6f $d7
    dec hl                                        ; $65b0: $2b
    jp z, Jump_02e_595b                           ; $65b1: $ca $5b $59

    ld [hl], a                                    ; $65b4: $77
    dec b                                         ; $65b5: $05
    adc l                                         ; $65b6: $8d
    ld a, e                                       ; $65b7: $7b
    ld [hl], a                                    ; $65b8: $77
    ld b, l                                       ; $65b9: $45
    res 0, b                                      ; $65ba: $cb $80
    ld b, [hl]                                    ; $65bc: $46
    or b                                          ; $65bd: $b0
    ld c, d                                       ; $65be: $4a
    db $e3                                        ; $65bf: $e3
    xor d                                         ; $65c0: $aa
    db $ec                                        ; $65c1: $ec
    ld [hl], e                                    ; $65c2: $73
    push bc                                       ; $65c3: $c5

Jump_02e_65c4:
    ld a, d                                       ; $65c4: $7a
    or h                                          ; $65c5: $b4
    ld a, h                                       ; $65c6: $7c
    push af                                       ; $65c7: $f5
    dec [hl]                                      ; $65c8: $35
    ld b, $f5                                     ; $65c9: $06 $f5
    ld h, e                                       ; $65cb: $63
    db $fc                                        ; $65cc: $fc
    xor [hl]                                      ; $65cd: $ae
    ccf                                           ; $65ce: $3f
    and $a1                                       ; $65cf: $e6 $a1
    xor a                                         ; $65d1: $af
    or c                                          ; $65d2: $b1
    ld [$e0f9], sp                                ; $65d3: $08 $f9 $e0
    rst $20                                       ; $65d6: $e7
    dec sp                                        ; $65d7: $3b
    ld a, [c]                                     ; $65d8: $f2
    adc $b6                                       ; $65d9: $ce $b6
    inc d                                         ; $65db: $14
    ld [de], a                                    ; $65dc: $12
    ld [hl], b                                    ; $65dd: $70
    dec h                                         ; $65de: $25
    sub a                                         ; $65df: $97
    push hl                                       ; $65e0: $e5
    rst $28                                       ; $65e1: $ef
    ld a, [hl-]                                   ; $65e2: $3a
    sub a                                         ; $65e3: $97
    add e                                         ; $65e4: $83
    rst $28                                       ; $65e5: $ef
    ld a, d                                       ; $65e6: $7a
    ldh [$34], a                                  ; $65e7: $e0 $34
    ld l, e                                       ; $65e9: $6b
    cp h                                          ; $65ea: $bc
    ld l, [hl]                                    ; $65eb: $6e
    xor h                                         ; $65ec: $ac
    jr z, jr_02e_6645                             ; $65ed: $28 $56

    xor h                                         ; $65ef: $ac
    pop bc                                        ; $65f0: $c1
    rra                                           ; $65f1: $1f
    ret                                           ; $65f2: $c9


    ld d, l                                       ; $65f3: $55
    add [hl]                                      ; $65f4: $86
    or c                                          ; $65f5: $b1
    ld c, e                                       ; $65f6: $4b
    dec b                                         ; $65f7: $05
    or b                                          ; $65f8: $b0
    ld e, [hl]                                    ; $65f9: $5e
    xor c                                         ; $65fa: $a9
    inc sp                                        ; $65fb: $33
    inc l                                         ; $65fc: $2c
    dec hl                                        ; $65fd: $2b
    ld [hl], a                                    ; $65fe: $77
    ld e, e                                       ; $65ff: $5b
    ld sp, $b88c                                  ; $6600: $31 $8c $b8
    dec l                                         ; $6603: $2d
    adc l                                         ; $6604: $8d
    ld b, l                                       ; $6605: $45
    sbc [hl]                                      ; $6606: $9e
    or a                                          ; $6607: $b7
    ld e, c                                       ; $6608: $59
    rst $30                                       ; $6609: $f7
    dec de                                        ; $660a: $1b
    add hl, de                                    ; $660b: $19
    jp nc, $8b1a                                  ; $660c: $d2 $1a $8b

    pop bc                                        ; $660f: $c1
    rra                                           ; $6610: $1f
    db $e3                                        ; $6611: $e3
    add [hl]                                      ; $6612: $86
    dec hl                                        ; $6613: $2b
    sub $e0                                       ; $6614: $d6 $e0
    ld c, a                                       ; $6616: $4f
    xor $ba                                       ; $6617: $ee $ba
    rst $18                                       ; $6619: $df
    ret z                                         ; $661a: $c8

    sub b                                         ; $661b: $90
    ld b, $5f                                     ; $661c: $06 $5f
    ld c, e                                       ; $661e: $4b
    dec a                                         ; $661f: $3d
    ld h, b                                       ; $6620: $60
    and c                                         ; $6621: $a1
    ld h, [hl]                                    ; $6622: $66
    and l                                         ; $6623: $a5
    ld b, b                                       ; $6624: $40
    ld [hl], l                                    ; $6625: $75
    db $d3                                        ; $6626: $d3
    ld [hl-], a                                   ; $6627: $32
    add b                                         ; $6628: $80
    or e                                          ; $6629: $b3
    db $dd                                        ; $662a: $dd
    add sp, -$4a                                  ; $662b: $e8 $b6
    ld [$5646], a                                 ; $662d: $ea $46 $56
    dec a                                         ; $6630: $3d
    ld l, a                                       ; $6631: $6f
    ret c                                         ; $6632: $d8

    cpl                                           ; $6633: $2f
    ld l, [hl]                                    ; $6634: $6e
    xor d                                         ; $6635: $aa
    ld c, l                                       ; $6636: $4d
    ld l, h                                       ; $6637: $6c
    ld bc, $3fa7                                  ; $6638: $01 $a7 $3f
    inc l                                         ; $663b: $2c
    ld [hl], l                                    ; $663c: $75
    sub $3c                                       ; $663d: $d6 $3c
    ldh a, [$0c]                                  ; $663f: $f0 $0c
    inc a                                         ; $6641: $3c
    ld e, h                                       ; $6642: $5c
    adc a                                         ; $6643: $8f
    or [hl]                                       ; $6644: $b6

jr_02e_6645:
    ret nc                                        ; $6645: $d0

    daa                                           ; $6646: $27
    ld b, e                                       ; $6647: $43
    ld e, d                                       ; $6648: $5a
    or c                                          ; $6649: $b1
    and l                                         ; $664a: $a5
    rra                                           ; $664b: $1f
    cp b                                          ; $664c: $b8
    add e                                         ; $664d: $83
    ld l, e                                       ; $664e: $6b
    add hl, hl                                    ; $664f: $29
    rst $28                                       ; $6650: $ef
    and c                                         ; $6651: $a1
    call c, $b794                                 ; $6652: $dc $94 $b7
    daa                                           ; $6655: $27
    ld [hl], l                                    ; $6656: $75
    ccf                                           ; $6657: $3f
    dec b                                         ; $6658: $05
    push de                                       ; $6659: $d5
    jp Jump_000_2b32                              ; $665a: $c3 $32 $2b


    push hl                                       ; $665d: $e5
    ld d, [hl]                                    ; $665e: $56
    ld a, e                                       ; $665f: $7b
    ld l, b                                       ; $6660: $68
    dec bc                                        ; $6661: $0b
    and a                                         ; $6662: $a7
    bit 4, e                                      ; $6663: $cb $63
    ld b, l                                       ; $6665: $45
    or c                                          ; $6666: $b1
    sub b                                         ; $6667: $90
    cp e                                          ; $6668: $bb
    ld [hl+], a                                   ; $6669: $22
    cp c                                          ; $666a: $b9
    ld a, [hl-]                                   ; $666b: $3a
    dec hl                                        ; $666c: $2b
    ld [hl], $d7                                  ; $666d: $36 $d7
    push bc                                       ; $666f: $c5
    sub [hl]                                      ; $6670: $96
    ld e, a                                       ; $6671: $5f
    ld l, h                                       ; $6672: $6c
    adc l                                         ; $6673: $8d
    ld l, e                                       ; $6674: $6b
    push hl                                       ; $6675: $e5
    add $82                                       ; $6676: $c6 $82
    ld c, d                                       ; $6678: $4a
    ld sp, $5dfd                                  ; $6679: $31 $fd $5d
    add sp, $5a                                   ; $667c: $e8 $5a
    db $e3                                        ; $667e: $e3
    cpl                                           ; $667f: $2f
    ld h, l                                       ; $6680: $65
    xor c                                         ; $6681: $a9
    and d                                         ; $6682: $a2
    ld c, d                                       ; $6683: $4a
    sbc a                                         ; $6684: $9f
    ld a, [c]                                     ; $6685: $f2
    ld d, $a7                                     ; $6686: $16 $a7
    dec de                                        ; $6688: $1b
    ret nc                                        ; $6689: $d0

    ld a, [hl+]                                   ; $668a: $2a
    inc d                                         ; $668b: $14
    ld [hl], h                                    ; $668c: $74
    ld e, $69                                     ; $668d: $1e $69
    db $fc                                        ; $668f: $fc
    sub $74                                       ; $6690: $d6 $74
    ld a, l                                       ; $6692: $7d
    or c                                          ; $6693: $b1
    push hl                                       ; $6694: $e5
    db $e3                                        ; $6695: $e3
    ld e, d                                       ; $6696: $5a
    pop de                                        ; $6697: $d1
    ret z                                         ; $6698: $c8

    rra                                           ; $6699: $1f
    jr nc, @-$0c                                  ; $669a: $30 $f2

    db $e4                                        ; $669c: $e4
    adc [hl]                                      ; $669d: $8e
    dec [hl]                                      ; $669e: $35
    rst $30                                       ; $669f: $f7
    sbc d                                         ; $66a0: $9a
    ld a, h                                       ; $66a1: $7c
    xor e                                         ; $66a2: $ab
    xor a                                         ; $66a3: $af
    ld a, l                                       ; $66a4: $7d
    adc l                                         ; $66a5: $8d
    ld d, b                                       ; $66a6: $50
    ccf                                           ; $66a7: $3f
    sub $58                                       ; $66a8: $d6 $58
    xor h                                         ; $66aa: $ac
    adc $8c                                       ; $66ab: $ce $8c
    ld a, c                                       ; $66ad: $79
    add sp, -$7d                                  ; $66ae: $e8 $83
    ccf                                           ; $66b0: $3f
    db $fc                                        ; $66b1: $fc
    sub a                                         ; $66b2: $97
    ld a, $47                                     ; $66b3: $3e $47
    adc l                                         ; $66b5: $8d
    ld l, e                                       ; $66b6: $6b
    jp hl                                         ; $66b7: $e9


    rst $20                                       ; $66b8: $e7
    ld e, l                                       ; $66b9: $5d
    ld d, e                                       ; $66ba: $53
    sbc $02                                       ; $66bb: $de $02

Call_02e_66bd:
    add a                                         ; $66bd: $87
    sub a                                         ; $66be: $97
    rst $20                                       ; $66bf: $e7
    or c                                          ; $66c0: $b1
    db $eb                                        ; $66c1: $eb
    ld a, [hl]                                    ; $66c2: $7e
    inc hl                                        ; $66c3: $23
    ld b, e                                       ; $66c4: $43
    ld e, d                                       ; $66c5: $5a
    inc hl                                        ; $66c6: $23
    and b                                         ; $66c7: $a0
    ld a, d                                       ; $66c8: $7a
    ld e, l                                       ; $66c9: $5d
    sub e                                         ; $66ca: $93
    ld l, e                                       ; $66cb: $6b
    sub a                                         ; $66cc: $97
    adc b                                         ; $66cd: $88
    or h                                          ; $66ce: $b4
    adc e                                         ; $66cf: $8b
    db $fd                                        ; $66d0: $fd
    ld b, d                                       ; $66d1: $42
    ld h, e                                       ; $66d2: $63
    ldh a, [$15]                                  ; $66d3: $f0 $15
    ld de, $1969                                  ; $66d5: $11 $69 $19
    ret nc                                        ; $66d8: $d0

    or d                                          ; $66d9: $b2
    rst $28                                       ; $66da: $ef
    add [hl]                                      ; $66db: $86
    ld h, e                                       ; $66dc: $63
    ld b, b                                       ; $66dd: $40
    ld c, e                                       ; $66de: $4b
    ld h, e                                       ; $66df: $63
    sub c                                         ; $66e0: $91
    adc a                                         ; $66e1: $8f
    adc e                                         ; $66e2: $8b
    db $fd                                        ; $66e3: $fd
    inc a                                         ; $66e4: $3c
    ld a, [c]                                     ; $66e5: $f2
    ld h, l                                       ; $66e6: $65
    db $dd                                        ; $66e7: $dd
    dec d                                         ; $66e8: $15
    or h                                          ; $66e9: $b4
    ld a, [hl-]                                   ; $66ea: $3a
    ld h, e                                       ; $66eb: $63
    ld e, $44                                     ; $66ec: $1e $44
    db $ed                                        ; $66ee: $ed
    and c                                         ; $66ef: $a1
    dec l                                         ; $66f0: $2d
    daa                                           ; $66f1: $27
    cp [hl]                                       ; $66f2: $be
    sbc a                                         ; $66f3: $9f
    call c, Call_02e_5775                         ; $66f4: $dc $75 $57
    ret nc                                        ; $66f7: $d0

    ldh [rOCPD], a                                ; $66f8: $e0 $6b
    ld [hl], d                                    ; $66fa: $72
    rla                                           ; $66fb: $17
    ld hl, sp-$48                                 ; $66fc: $f8 $b8
    ld d, [hl]                                    ; $66fe: $56
    add hl, de                                    ; $66ff: $19
    dec bc                                        ; $6700: $0b
    sub l                                         ; $6701: $95
    ld e, h                                       ; $6702: $5c
    pop de                                        ; $6703: $d1
    ld a, [de]                                    ; $6704: $1a
    ld a, a                                       ; $6705: $7f
    ld l, c                                       ; $6706: $69
    ld b, l                                       ; $6707: $45
    ld [$1d7c], sp                                ; $6708: $08 $7c $1d
    xor [hl]                                      ; $670b: $ae
    ld h, e                                       ; $670c: $63
    sbc $37                                       ; $670d: $de $37
    sub [hl]                                      ; $670f: $96
    sub l                                         ; $6710: $95
    or d                                          ; $6711: $b2
    ld [$d36e], a                                 ; $6712: $ea $6e $d3
    ld h, a                                       ; $6715: $67
    ld e, [hl]                                    ; $6716: $5e
    call Call_02e_456d                            ; $6717: $cd $6d $45
    di                                            ; $671a: $f3
    db $db                                        ; $671b: $db
    dec b                                         ; $671c: $05
    call $e5cd                                    ; $671d: $cd $cd $e5
    ld a, c                                       ; $6720: $79
    dec bc                                        ; $6721: $0b
    ld b, a                                       ; $6722: $47
    or c                                          ; $6723: $b1
    sub a                                         ; $6724: $97
    ld b, d                                       ; $6725: $42
    db $fd                                        ; $6726: $fd
    db $e4                                        ; $6727: $e4
    ld d, d                                       ; $6728: $52
    rst $28                                       ; $6729: $ef
    ld a, a                                       ; $672a: $7f
    db $ed                                        ; $672b: $ed
    ld h, d                                       ; $672c: $62
    db $db                                        ; $672d: $db
    cp a                                          ; $672e: $bf
    sub h                                         ; $672f: $94
    xor a                                         ; $6730: $af
    cp [hl]                                       ; $6731: $be
    add $3c                                       ; $6732: $c6 $3c
    adc b                                         ; $6734: $88
    add hl, de                                    ; $6735: $19
    ld [hl], d                                    ; $6736: $72
    cp c                                          ; $6737: $b9
    ld h, c                                       ; $6738: $61
    adc h                                         ; $6739: $8c
    ld a, c                                       ; $673a: $79
    push hl                                       ; $673b: $e5
    ld a, l                                       ; $673c: $7d
    ld b, d                                       ; $673d: $42
    ld a, c                                       ; $673e: $79
    inc h                                         ; $673f: $24
    ld d, a                                       ; $6740: $57
    add hl, de                                    ; $6741: $19
    add $b2                                       ; $6742: $c6 $b2
    or l                                          ; $6744: $b5
    nop                                           ; $6745: $00
    adc h                                         ; $6746: $8c
    cp l                                          ; $6747: $bd
    db $eb                                        ; $6748: $eb
    add d                                         ; $6749: $82
    and $a6                                       ; $674a: $e6 $a6
    push de                                       ; $674c: $d5
    add hl, de                                    ; $674d: $19
    ld a, a                                       ; $674e: $7f
    ld d, l                                       ; $674f: $55
    ld b, e                                       ; $6750: $43
    ld a, [c]                                     ; $6751: $f2
    ld [hl], c                                    ; $6752: $71
    sbc b                                         ; $6753: $98
    db $e3                                        ; $6754: $e3
    ld sp, hl                                     ; $6755: $f9
    dec bc                                        ; $6756: $0b
    inc bc                                        ; $6757: $03
    add $58                                       ; $6758: $c6 $58
    jp z, Jump_02e_595b                           ; $675a: $ca $5b $59

    ld [hl], a                                    ; $675d: $77
    dec b                                         ; $675e: $05
    dec l                                         ; $675f: $2d
    ld a, d                                       ; $6760: $7a
    ld [hl], b                                    ; $6761: $70
    ld d, l                                       ; $6762: $55
    ld a, [$02b4]                                 ; $6763: $fa $b4 $02
    ld e, b                                       ; $6766: $58
    sbc e                                         ; $6767: $9b
    ret c                                         ; $6768: $d8

    ld [bc], a                                    ; $6769: $02
    and a                                         ; $676a: $a7
    ccf                                           ; $676b: $3f
    inc l                                         ; $676c: $2c
    ld [hl], l                                    ; $676d: $75
    halt                                          ; $676e: $76
    xor h                                         ; $676f: $ac
    cp c                                          ; $6770: $b9
    rst $10                                       ; $6771: $d7
    inc h                                         ; $6772: $24
    ld b, a                                       ; $6773: $47
    rrca                                          ; $6774: $0f
    ld l, b                                       ; $6775: $68
    ld a, [bc]                                    ; $6776: $0a
    sbc d                                         ; $6777: $9a
    cp c                                          ; $6778: $b9
    db $db                                        ; $6779: $db
    ld h, a                                       ; $677a: $67
    db $dd                                        ; $677b: $dd
    ld a, [c]                                     ; $677c: $f2
    ld d, $59                                     ; $677d: $16 $59
    ld [hl], a                                    ; $677f: $77
    dec b                                         ; $6780: $05
    xor l                                         ; $6781: $ad

jr_02e_6782:
    ld l, b                                       ; $6782: $68
    ld hl, $2b28                                  ; $6783: $21 $28 $2b
    sub $e0                                       ; $6786: $d6 $e0
    rra                                           ; $6788: $1f
    add e                                         ; $6789: $83
    xor a                                         ; $678a: $af
    adc b                                         ; $678b: $88
    sub [hl]                                      ; $678c: $96
    ld bc, $fb2d                                  ; $678d: $01 $2d $fb
    ld l, [hl]                                    ; $6790: $6e
    xor b                                         ; $6791: $a8
    dec [hl]                                      ; $6792: $35
    jr nc, @-$0c                                  ; $6793: $30 $f2

    rlca                                          ; $6795: $07
    adc h                                         ; $6796: $8c
    inc a                                         ; $6797: $3c
    ld l, a                                       ; $6798: $6f
    ld bc, $bc47                                  ; $6799: $01 $47 $bc
    ccf                                           ; $679c: $3f
    ld [hl], d                                    ; $679d: $72
    ld h, e                                       ; $679e: $63
    inc c                                         ; $679f: $0c
    ld c, e                                       ; $67a0: $4b
    ld [hl], d                                    ; $67a1: $72
    rst $00                                       ; $67a2: $c7
    sbc d                                         ; $67a3: $9a
    ld a, e                                       ; $67a4: $7b
    ld c, l                                       ; $67a5: $4d
    ld e, [hl]                                    ; $67a6: $5e
    sbc e                                         ; $67a7: $9b
    cp b                                          ; $67a8: $b8
    db $d3                                        ; $67a9: $d3
    rra                                           ; $67aa: $1f
    call nz, Call_02e_5c0c                        ; $67ab: $c4 $0c $5c
    rst $20                                       ; $67ae: $e7
    xor a                                         ; $67af: $af
    rst $28                                       ; $67b0: $ef
    cp $d6                                        ; $67b1: $fe $d6
    inc a                                         ; $67b3: $3c
    db $fc                                        ; $67b4: $fc
    inc d                                         ; $67b5: $14
    ld l, e                                       ; $67b6: $6b
    ld e, $f8                                     ; $67b7: $1e $f8
    adc [hl]                                      ; $67b9: $8e
    pop af                                        ; $67ba: $f1
    sbc d                                         ; $67bb: $9a
    ld [hl], h                                    ; $67bc: $74
    ld a, [$fe7d]                                 ; $67bd: $fa $7d $fe
    ld a, h                                       ; $67c0: $7c
    and d                                         ; $67c1: $a2
    ld sp, $620f                                  ; $67c2: $31 $0f $62
    db $e4                                        ; $67c5: $e4
    rrca                                          ; $67c6: $0f
    jr jr_02e_6782                                ; $67c7: $18 $b9

    adc $1f                                       ; $67c9: $ce $1f
    db $fc                                        ; $67cb: $fc
    db $fd                                        ; $67cc: $fd
    rlca                                          ; $67cd: $07
    adc h                                         ; $67ce: $8c
    inc c                                         ; $67cf: $0c
    ld d, $cf                                     ; $67d0: $16 $cf
    ld l, c                                       ; $67d2: $69
    call c, $8c7e                                 ; $67d3: $dc $7e $8c
    ld a, c                                       ; $67d6: $79
    db $e4                                        ; $67d7: $e4
    ld e, d                                       ; $67d8: $5a
    ld b, c                                       ; $67d9: $41
    add $35                                       ; $67da: $c6 $35
    xor [hl]                                      ; $67dc: $ae
    push bc                                       ; $67dd: $c5
    ld [hl], e                                    ; $67de: $73
    adc d                                         ; $67df: $8a
    cp h                                          ; $67e0: $bc

jr_02e_67e1:
    dec b                                         ; $67e1: $05
    and a                                         ; $67e2: $a7
    ccf                                           ; $67e3: $3f
    adc b                                         ; $67e4: $88
    add hl, de                                    ; $67e5: $19
    and e                                         ; $67e6: $a3
    di                                            ; $67e7: $f3
    ld d, a                                       ; $67e8: $57
    or h                                          ; $67e9: $b4
    ld h, d                                       ; $67ea: $62
    dec c                                         ; $67eb: $0d
    cp $e4                                        ; $67ec: $fe $e4
    adc [hl]                                      ; $67ee: $8e
    dec [hl]                                      ; $67ef: $35
    rst $30                                       ; $67f0: $f7
    sbc d                                         ; $67f1: $9a
    jp c, $5b43                                   ; $67f2: $da $43 $5b

    dec e                                         ; $67f5: $1d
    xor h                                         ; $67f6: $ac
    or b                                          ; $67f7: $b0
    dec b                                         ; $67f8: $05
    ld l, $08                                     ; $67f9: $2e $08
    ld d, l                                       ; $67fb: $55
    ld a, [$ffb4]                                 ; $67fc: $fa $b4 $ff
    ld a, [hl]                                    ; $67ff: $7e
    sbc $02                                       ; $6800: $de $02
    ld b, a                                       ; $6802: $47
    or c                                          ; $6803: $b1
    sub a                                         ; $6804: $97
    ld b, d                                       ; $6805: $42
    db $fd                                        ; $6806: $fd
    db $e4                                        ; $6807: $e4
    or b                                          ; $6808: $b0
    inc l                                         ; $6809: $2c
    ld l, l                                       ; $680a: $6d
    ld b, b                                       ; $680b: $40
    cp e                                          ; $680c: $bb
    sbc $27                                       ; $680d: $de $27
    db $fc                                        ; $680f: $fc
    jr nz, jr_02e_67e1                            ; $6810: $20 $cf

    ld [hl], a                                    ; $6812: $77
    ld e, h                                       ; $6813: $5c
    reti                                          ; $6814: $d9


    rst $10                                       ; $6815: $d7
    jp nc, $b406                                  ; $6816: $d2 $06 $b4

    add $62                                       ; $6819: $c6 $62
    adc [hl]                                      ; $681b: $8e
    sub c                                         ; $681c: $91
    ld bc, $caf9                                  ; $681d: $01 $f9 $ca
    dec e                                         ; $6820: $1d
    rst $38                                       ; $6821: $ff
    and l                                         ; $6822: $a5
    rst $08                                       ; $6823: $cf
    ld d, c                                       ; $6824: $51
    or l                                          ; $6825: $b5
    adc c                                         ; $6826: $89
    dec l                                         ; $6827: $2d
    and a                                         ; $6828: $a7
    ccf                                           ; $6829: $3f
    adc b                                         ; $682a: $88
    sub l                                         ; $682b: $95
    cp e                                          ; $682c: $bb
    ld sp, $7f3a                                  ; $682d: $31 $3a $7f
    db $e4                                        ; $6830: $e4
    rrca                                          ; $6831: $0f
    sbc b                                         ; $6832: $98
    db $db                                        ; $6833: $db
    ld l, $11                                     ; $6834: $2e $11
    ld l, c                                       ; $6836: $69
    jp hl                                         ; $6837: $e9


    add a                                         ; $6838: $87
    sub c                                         ; $6839: $91
    call c, $e6b1                                 ; $683a: $dc $b1 $e6
    ld e, [hl]                                    ; $683d: $5e
    ld d, e                                       ; $683e: $53

jr_02e_683f:
    ld a, e                                       ; $683f: $7b
    ld l, b                                       ; $6840: $68
    dec bc                                        ; $6841: $0b
    daa                                           ; $6842: $27
    cp [hl]                                       ; $6843: $be
    sbc a                                         ; $6844: $9f
    inc e                                         ; $6845: $1c
    sub [hl]                                      ; $6846: $96
    ld e, l                                       ; $6847: $5d
    rrca                                          ; $6848: $0f
    sbc h                                         ; $6849: $9c
    ld b, [hl]                                    ; $684a: $46
    rrca                                          ; $684b: $0f
    or d                                          ; $684c: $b2
    rra                                           ; $684d: $1f
    ld a, b                                       ; $684e: $78
    db $e4                                        ; $684f: $e4
    dec l                                         ; $6850: $2d
    rst $00                                       ; $6851: $c7
    sub l                                         ; $6852: $95
    and l                                         ; $6853: $a5
    dec c                                         ; $6854: $0d
    ld l, b                                       ; $6855: $68
    sub [hl]                                      ; $6856: $96
    adc d                                         ; $6857: $8a
    ld d, a                                       ; $6858: $57
    and b                                         ; $6859: $a0
    jp nc, $15a7                                  ; $685a: $d2 $a7 $15

    adc l                                         ; $685d: $8d
    db $fc                                        ; $685e: $fc
    ld bc, $cf23                                  ; $685f: $01 $23 $cf
    ld d, a                                       ; $6862: $57
    ld e, a                                       ; $6863: $5f
    ei                                            ; $6864: $fb
    ld a, [de]                                    ; $6865: $1a
    di                                            ; $6866: $f3
    add b                                         ; $6867: $80
    cp e                                          ; $6868: $bb
    ld h, c                                       ; $6869: $61

jr_02e_686a:
    xor h                                         ; $686a: $ac
    or c                                          ; $686b: $b1
    ld e, b                                       ; $686c: $58
    rst $10                                       ; $686d: $d7
    db $e4                                        ; $686e: $e4
    ld a, [de]                                    ; $686f: $1a
    cp a                                          ; $6870: $bf
    push af                                       ; $6871: $f5
    ld [$7c1a], sp                                ; $6872: $08 $1a $7c
    dec l                                         ; $6875: $2d
    db $fd                                        ; $6876: $fd
    jr nc, jr_02e_683f                            ; $6877: $30 $c6

    or l                                          ; $6879: $b5
    and [hl]                                      ; $687a: $a6
    ld b, b                                       ; $687b: $40
    call nc, $b626                                ; $687c: $d4 $26 $b6
    and a                                         ; $687f: $a7
    ccf                                           ; $6880: $3f
    adc b                                         ; $6881: $88
    db $fd                                        ; $6882: $fd
    cp e                                          ; $6883: $bb
    ld sp, $7f3a                                  ; $6884: $31 $3a $7f
    adc l                                         ; $6887: $8d
    push bc                                       ; $6888: $c5
    db $fc                                        ; $6889: $fc
    ld b, $11                                     ; $688a: $06 $11
    sbc b                                         ; $688c: $98
    xor a                                         ; $688d: $af
    cp [hl]                                       ; $688e: $be
    add $6f                                       ; $688f: $c6 $6f
    inc e                                         ; $6891: $1c
    jr nc, jr_02e_686a                            ; $6892: $30 $d6

    rst $10                                       ; $6894: $d7
    sbc d                                         ; $6895: $9a
    add a                                         ; $6896: $87
    sbc a                                         ; $6897: $9f
    ld d, [hl]                                    ; $6898: $56
    ld h, a                                       ; $6899: $67
    rst $00                                       ; $689a: $c7
    ld a, b                                       ; $689b: $78
    ld c, l                                       ; $689c: $4d
    ld a, [hl-]                                   ; $689d: $3a
    db $fd                                        ; $689e: $fd
    ld a, $7f                                     ; $689f: $3e $7f
    sbc [hl]                                      ; $68a1: $9e
    or a                                          ; $68a2: $b7
    ld a, c                                       ; $68a3: $79
    sbc [hl]                                      ; $68a4: $9e
    rst $08                                       ; $68a5: $cf
    ld h, b                                       ; $68a6: $60
    ld a, l                                       ; $68a7: $7d
    push af                                       ; $68a8: $f5
    ld e, e                                       ; $68a9: $5b
    or a                                          ; $68aa: $b7
    jp nc, $eb02                                  ; $68ab: $d2 $02 $eb

    ld e, [hl]                                    ; $68ae: $5e
    ld b, l                                       ; $68af: $45
    ret                                           ; $68b0: $c9


    dec d                                         ; $68b1: $15
    db $ed                                        ; $68b2: $ed
    ld a, d                                       ; $68b3: $7a
    sbc a                                         ; $68b4: $9f
    call nc, $b499                                ; $68b5: $d4 $99 $b4
    db $db                                        ; $68b8: $db
    push af                                       ; $68b9: $f5
    cp $ab                                        ; $68ba: $fe $ab
    jr nc, jr_02e_68c1                            ; $68bc: $30 $03

    jp c, $dfbf                                   ; $68be: $da $bf $df

jr_02e_68c1:
    ret z                                         ; $68c1: $c8

    sub b                                         ; $68c2: $90
    sub $14                                       ; $68c3: $d6 $14
    adc b                                         ; $68c5: $88
    add hl, de                                    ; $68c6: $19
    ld b, h                                       ; $68c7: $44
    ldh [rDIV], a                                 ; $68c8: $e0 $04
    dec c                                         ; $68ca: $0d
    ei                                            ; $68cb: $fb
    add hl, sp                                    ; $68cc: $39
    ld h, [hl]                                    ; $68cd: $66
    ld b, b                                       ; $68ce: $40
    or e                                          ; $68cf: $b3
    add $eb                                       ; $68d0: $c6 $eb
    add $8a                                       ; $68d2: $c6 $8a
    sub [hl]                                      ; $68d4: $96
    ld a, [hl+]                                   ; $68d5: $2a
    ld a, b                                       ; $68d6: $78
    cp $f9                                        ; $68d7: $fe $f9
    and $7c                                       ; $68d9: $e6 $7c
    ld h, c                                       ; $68db: $61
    call z, Call_02e_5ffb                         ; $68dc: $cc $fb $5f
    ret nc                                        ; $68df: $d0

    ld a, c                                       ; $68e0: $79
    add hl, de                                    ; $68e1: $19
    ret nz                                        ; $68e2: $c0

    push bc                                       ; $68e3: $c5
    adc l                                         ; $68e4: $8d
    ld b, c                                       ; $68e5: $41
    sbc d                                         ; $68e6: $9a
    cp $fa                                        ; $68e7: $fe $fa
    ld [$80e7], a                                 ; $68e9: $ea $e7 $80
    inc bc                                        ; $68ec: $03
    di                                            ; $68ed: $f3
    inc a                                         ; $68ee: $3c
    ld l, a                                       ; $68ef: $6f
    ld bc, $9ac7                                  ; $68f0: $01 $c7 $9a
    ld a, e                                       ; $68f3: $7b
    ld c, l                                       ; $68f4: $4d
    ld [hl], d                                    ; $68f5: $72
    call z, Call_02e_5883                         ; $68f6: $cc $83 $58
    ld [hl], l                                    ; $68f9: $75
    scf                                           ; $68fa: $37
    ld b, [hl]                                    ; $68fb: $46
    rst $20                                       ; $68fc: $e7
    ld c, a                                       ; $68fd: $4f
    jp hl                                         ; $68fe: $e9


    or h                                          ; $68ff: $b4
    ld e, e                                       ; $6900: $5b
    call Call_000_36ad                            ; $6901: $cd $ad $36
    ld [hl], c                                    ; $6904: $71
    push af                                       ; $6905: $f5
    or l                                          ; $6906: $b5
    xor a                                         ; $6907: $af
    pop af                                        ; $6908: $f1
    dec de                                        ; $6909: $1b
    rlca                                          ; $690a: $07
    ld [hl], h                                    ; $690b: $74
    jp $1635                                      ; $690c: $c3 $35 $16


    db $e3                                        ; $690f: $e3
    ld e, d                                       ; $6910: $5a
    di                                            ; $6911: $f3
    ldh a, [rHDMA3]                               ; $6912: $f0 $53
    inc l                                         ; $6914: $2c
    and b                                         ; $6915: $a0
    ld l, c                                       ; $6916: $69
    jp z, $d2ad                                   ; $6917: $ca $ad $d2

    daa                                           ; $691a: $27
    ld b, e                                       ; $691b: $43
    ld d, a                                       ; $691c: $57
    inc h                                         ; $691d: $24
    rla                                           ; $691e: $17
    add d                                         ; $691f: $82
    and d                                         ; $6920: $a2
    ld c, d                                       ; $6921: $4a
    sbc a                                         ; $6922: $9f
    sub $df                                       ; $6923: $d6 $df
    sbc d                                         ; $6925: $9a
    rlca                                          ; $6926: $07
    cp [hl]                                       ; $6927: $be
    ld [$cc6e], a                                 ; $6928: $ea $6e $cc
    ld b, e                                       ; $692b: $43
    rra                                           ; $692c: $1f
    cp a                                          ; $692d: $bf
    cp c                                          ; $692e: $b9
    ld a, l                                       ; $692f: $7d
    sub $2d                                       ; $6930: $d6 $2d
    ld l, a                                       ; $6932: $6f
    ld bc, $7759                                  ; $6933: $01 $59 $77
    dec b                                         ; $6936: $05
    dec c                                         ; $6937: $0d
    cp $d8                                        ; $6938: $fe $d8
    rst $28                                       ; $693a: $ef
    ld a, a                                       ; $693b: $7f
    add c                                         ; $693c: $81
    adc a                                         ; $693d: $8f
    ld l, e                                       ; $693e: $6b
    call z, $9883                                 ; $693f: $cc $83 $98
    cp c                                          ; $6942: $b9
    ld [hl], a                                    ; $6943: $77
    ld c, l                                       ; $6944: $4d
    ld a, [c]                                     ; $6945: $f2
    ld [hl], c                                    ; $6946: $71
    ei                                            ; $6947: $fb
    or c                                          ; $6948: $b1
    jp z, Jump_000_1576                           ; $6949: $ca $76 $15

    adc e                                         ; $694c: $8b
    ld d, b                                       ; $694d: $50
    cp [hl]                                       ; $694e: $be
    inc hl                                        ; $694f: $23
    ld l, a                                       ; $6950: $6f
    pop af                                        ; $6951: $f1
    jp z, $b92d                                   ; $6952: $ca $2d $b9

    jp z, $9630                                   ; $6955: $ca $30 $96

    xor l                                         ; $6958: $ad
    pop af                                        ; $6959: $f1
    add a                                         ; $695a: $87
    ld sp, $41e6                                  ; $695b: $31 $e6 $41
    inc c                                         ; $695e: $0c
    ld a, a                                       ; $695f: $7f
    cp d                                          ; $6960: $ba
    jr nz, jr_02e_69ae                            ; $6961: $20 $4b

    cp [hl]                                       ; $6963: $be
    cp $d6                                        ; $6964: $fe $d6
    inc a                                         ; $6966: $3c
    db $fc                                        ; $6967: $fc
    inc d                                         ; $6968: $14
    db $e3                                        ; $6969: $e3
    ld e, d                                       ; $696a: $5a
    ld [hl], e                                    ; $696b: $73
    ei                                            ; $696c: $fb
    ld d, [hl]                                    ; $696d: $56
    sub b                                         ; $696e: $90
    ld l, [hl]                                    ; $696f: $6e
    ld l, e                                       ; $6970: $6b
    ld e, $f8                                     ; $6971: $1e $f8
    jp z, $98dd                                   ; $6973: $ca $dd $98

    add a                                         ; $6976: $87
    ld a, $fc                                     ; $6977: $3e $fc
    inc h                                         ; $6979: $24
    rst $30                                       ; $697a: $f7
    ld d, a                                       ; $697b: $57
    dec [hl]                                      ; $697c: $35
    and b                                         ; $697d: $a0
    cp h                                          ; $697e: $bc
    dec b                                         ; $697f: $05
    push af                                       ; $6980: $f5
    rst $28                                       ; $6981: $ef
    add [hl]                                      ; $6982: $86
    ld h, e                                       ; $6983: $63
    ld h, b                                       ; $6984: $60
    ldh a, [$57]                                  ; $6985: $f0 $57
    xor h                                         ; $6987: $ac
    pop bc                                        ; $6988: $c1

jr_02e_6989:
    cp a                                          ; $6989: $bf
    ld a, b                                       ; $698a: $78
    ld c, [hl]                                    ; $698b: $4e
    add sp, $6b                                   ; $698c: $e8 $6b
    call z, Call_02e_6c57                         ; $698e: $cc $57 $6c
    call $d273                                    ; $6991: $cd $73 $d2
    cp b                                          ; $6994: $b8
    add $c5                                       ; $6995: $c6 $c5
    ret c                                         ; $6997: $d8

    and a                                         ; $6998: $a7
    db $e4                                        ; $6999: $e4
    ld a, [hl+]                                   ; $699a: $2a
    jp $f658                                      ; $699b: $c3 $58 $f6


    db $dd                                        ; $699e: $dd
    ld [hl], b                                    ; $699f: $70
    sub a                                         ; $69a0: $97
    jp $a032                                      ; $69a1: $c3 $32 $a0


    ld e, l                                       ; $69a4: $5d
    rst $30                                       ; $69a5: $f7
    dec de                                        ; $69a6: $1b
    add hl, de                                    ; $69a7: $19
    jp nc, Jump_000_2fe0                          ; $69a8: $d2 $e0 $2f

    push af                                       ; $69ab: $f5
    jr nz, jr_02e_69b1                            ; $69ac: $20 $03

jr_02e_69ae:
    and d                                         ; $69ae: $a2
    ld [hl], c                                    ; $69af: $71
    xor l                                         ; $69b0: $ad

jr_02e_69b1:
    jr jr_02e_6a16                                ; $69b1: $18 $63

    sbc a                                         ; $69b3: $9f
    dec hl                                        ; $69b4: $2b
    ld l, a                                       ; $69b5: $6f
    ld bc, $be27                                  ; $69b6: $01 $27 $be
    sbc a                                         ; $69b9: $9f
    ld e, h                                       ; $69ba: $5c

jr_02e_69bb:
    ld h, l                                       ; $69bb: $65
    jr jr_02e_6989                                ; $69bc: $18 $cb

    sub $fe                                       ; $69be: $d6 $fe
    db $dd                                        ; $69c0: $dd
    ld [hl], b                                    ; $69c1: $70
    adc l                                         ; $69c2: $8d
    push bc                                       ; $69c3: $c5
    jr jr_02e_69fd                                ; $69c4: $18 $37

    xor h                                         ; $69c6: $ac
    db $f4                                        ; $69c7: $f4

jr_02e_69c8:
    ld l, c                                       ; $69c8: $69
    ld l, c                                       ; $69c9: $69
    ld b, e                                       ; $69ca: $43
    sbc d                                         ; $69cb: $9a
    ld de, $13e9                                  ; $69cc: $11 $e9 $13
    cp [hl]                                       ; $69cf: $be
    sbc a                                         ; $69d0: $9f
    or a                                          ; $69d1: $b7

Call_02e_69d2:
    daa                                           ; $69d2: $27
    cp [hl]                                       ; $69d3: $be
    sbc a                                         ; $69d4: $9f
    ld e, h                                       ; $69d5: $5c
    ld h, l                                       ; $69d6: $65
    jr @-$3b                                      ; $69d7: $18 $c3

    or d                                          ; $69d9: $b2
    sbc d                                         ; $69da: $9a
    jp hl                                         ; $69db: $e9


    rst $08                                       ; $69dc: $cf
    ld b, $7f                                     ; $69dd: $06 $7f
    ld [hl], l                                    ; $69df: $75
    ld d, [hl]                                    ; $69e0: $56
    xor $f8                                       ; $69e1: $ee $f8
    jp hl                                         ; $69e3: $e9


    and $28                                       ; $69e4: $e6 $28
    ldh a, [$89]                                  ; $69e6: $f0 $89
    sub [hl]                                      ; $69e8: $96
    xor l                                         ; $69e9: $ad
    dec [hl]                                      ; $69ea: $35
    and $a8                                       ; $69eb: $e6 $a8
    ld h, l                                       ; $69ed: $65
    ldh [$8e], a                                  ; $69ee: $e0 $8e
    ld h, l                                       ; $69f0: $65
    adc d                                         ; $69f1: $8a
    jr nc, jr_02e_69c8                            ; $69f2: $30 $d4

    cp b                                          ; $69f4: $b8
    ld d, $cf                                     ; $69f5: $16 $cf
    add hl, bc                                    ; $69f7: $09
    dec a                                         ; $69f8: $3d
    ld l, a                                       ; $69f9: $6f
    ld bc, $b5f5                                  ; $69fa: $01 $f5 $b5

jr_02e_69fd:
    ld a, a                                       ; $69fd: $7f
    scf                                           ; $69fe: $37
    ld e, h                                       ; $69ff: $5c
    ld h, e                                       ; $6a00: $63
    ld sp, $c606                                  ; $6a01: $31 $06 $c6
    or l                                          ; $6a04: $b5
    ld h, d                                       ; $6a05: $62
    dec c                                         ; $6a06: $0d
    cp $31                                        ; $6a07: $fe $31
    ld hl, sp-$76                                 ; $6a09: $f8 $8a
    ld l, b                                       ; $6a0b: $68
    and d                                         ; $6a0c: $a2
    ld h, l                                       ; $6a0d: $65
    rst $18                                       ; $6a0e: $df
    dec d                                         ; $6a0f: $15
    ld c, l                                       ; $6a10: $4d
    ld e, l                                       ; $6a11: $5d
    rst $10                                       ; $6a12: $d7
    ld [hl-], a                                   ; $6a13: $32
    and b                                         ; $6a14: $a0
    ld h, l                                       ; $6a15: $65

jr_02e_6a16:
    ld l, e                                       ; $6a16: $6b
    rst $38                                       ; $6a17: $ff
    xor [hl]                                      ; $6a18: $ae
    ccf                                           ; $6a19: $3f
    ld b, [hl]                                    ; $6a1a: $46
    xor $86                                       ; $6a1b: $ee $86
    res 6, [hl]                                   ; $6a1d: $cb $b6
    jp z, $f230                                   ; $6a1f: $ca $30 $f2

    ld d, $a7                                     ; $6a22: $16 $a7
    ld a, l                                       ; $6a24: $7d
    dec l                                         ; $6a25: $2d
    db $fd                                        ; $6a26: $fd
    jr nc, jr_02e_69bb                            ; $6a27: $30 $92

    res 7, [hl]                                   ; $6a29: $cb $be
    db $eb                                        ; $6a2b: $eb
    rst $08                                       ; $6a2c: $cf
    ld [hl], b                                    ; $6a2d: $70
    inc c                                         ; $6a2e: $0c
    inc c                                         ; $6a2f: $0c
    cp $f4                                        ; $6a30: $fe $f4
    rst $20                                       ; $6a32: $e7
    ld e, l                                       ; $6a33: $5d
    inc sp                                        ; $6a34: $33
    sbc d                                         ; $6a35: $9a

jr_02e_6a36:
    dec [hl]                                      ; $6a36: $35
    ld e, [hl]                                    ; $6a37: $5e

Call_02e_6a38:
    scf                                           ; $6a38: $37
    ld h, [hl]                                    ; $6a39: $66
    call z, Call_02e_5f43                         ; $6a3a: $cc $43 $5f
    ld h, l                                       ; $6a3d: $65
    sbc a                                         ; $6a3e: $9f
    ld [hl], l                                    ; $6a3f: $75
    dec de                                        ; $6a40: $1b
    ld sp, hl                                     ; $6a41: $f9
    ld l, e                                       ; $6a42: $6b
    add $b5                                       ; $6a43: $c6 $b5
    adc [hl]                                      ; $6a45: $8e
    ld b, [hl]                                    ; $6a46: $46
    halt                                          ; $6a47: $76
    ld hl, $03f9                                  ; $6a48: $21 $f9 $03
    inc l                                         ; $6a4b: $2c
    ld b, l                                       ; $6a4c: $45
    sub c                                         ; $6a4d: $91
    or a                                          ; $6a4e: $b7
    daa                                           ; $6a4f: $27
    cp [hl]                                       ; $6a50: $be
    sbc a                                         ; $6a51: $9f
    ld e, h                                       ; $6a52: $5c
    ld [$2a8a], sp                                ; $6a53: $08 $8a $2a
    ld a, l                                       ; $6a56: $7d
    ld a, [de]                                    ; $6a57: $1a
    ld d, a                                       ; $6a58: $57
    db $ec                                        ; $6a59: $ec
    ld [hl], d                                    ; $6a5a: $72
    ld l, e                                       ; $6a5b: $6b
    inc c                                         ; $6a5c: $0c
    ld a, b                                       ; $6a5d: $78
    adc h                                         ; $6a5e: $8c
    pop bc                                        ; $6a5f: $c1
    ld d, a                                       ; $6a60: $57
    ld b, h                                       ; $6a61: $44
    sub c                                         ; $6a62: $91
    or a                                          ; $6a63: $b7
    daa                                           ; $6a64: $27
    cp [hl]                                       ; $6a65: $be
    sbc a                                         ; $6a66: $9f
    ld e, h                                       ; $6a67: $5c
    ld h, l                                       ; $6a68: $65
    jr jr_02e_6a36                                ; $6a69: $18 $cb

    cp [hl]                                       ; $6a6b: $be
    dec de                                        ; $6a6c: $1b
    adc [hl]                                      ; $6a6d: $8e
    rst $18                                       ; $6a6e: $df
    or d                                          ; $6a6f: $b2
    db $eb                                        ; $6a70: $eb
    adc h                                         ; $6a71: $8c
    add c                                         ; $6a72: $81
    pop bc                                        ; $6a73: $c1
    rst $10                                       ; $6a74: $d7
    inc c                                         ; $6a75: $0c
    ld d, d                                       ; $6a76: $52
    ld [hl], d                                    ; $6a77: $72
    ld d, $7e                                     ; $6a78: $16 $7e
    ld c, l                                       ; $6a7a: $4d
    ld a, a                                       ; $6a7b: $7f
    jp hl                                         ; $6a7c: $e9


    rst $20                                       ; $6a7d: $e7
    sub l                                         ; $6a7e: $95
    add $b5                                       ; $6a7f: $c6 $b5
    ld h, d                                       ; $6a81: $62
    dec c                                         ; $6a82: $0d
    cp $bc                                        ; $6a83: $fe $bc
    dec b                                         ; $6a85: $05
    push af                                       ; $6a86: $f5
    or l                                          ; $6a87: $b5
    xor a                                         ; $6a88: $af
    ld sp, $630f                                  ; $6a89: $31 $0f $63
    adc l                                         ; $6a8c: $8d
    push bc                                       ; $6a8d: $c5
    cp b                                          ; $6a8e: $b8
    sub [hl]                                      ; $6a8f: $96
    add c                                         ; $6a90: $81
    add a                                         ; $6a91: $87
    inc hl                                        ; $6a92: $23
    ld e, b                                       ; $6a93: $58
    ld h, e                                       ; $6a94: $63
    ld e, [hl]                                    ; $6a95: $5e
    inc d                                         ; $6a96: $14
    ld a, c                                       ; $6a97: $79
    dec bc                                        ; $6a98: $0b
    sbc l                                         ; $6a99: $9d
    ld h, b                                       ; $6a9a: $60
    ld d, $63                                     ; $6a9b: $16 $63
    ld h, b                                       ; $6a9d: $60
    ldh a, [$57]                                  ; $6a9e: $f0 $57
    xor h                                         ; $6aa0: $ac
    pop bc                                        ; $6aa1: $c1
    ccf                                           ; $6aa2: $3f
    ld b, $5f                                     ; $6aa3: $06 $5f
    ld de, $1ed5                                  ; $6aa5: $11 $d5 $1e
    jp c, Jump_000_2702                           ; $6aa8: $da $02 $27

    cp [hl]                                       ; $6aab: $be
    sbc a                                         ; $6aac: $9f
    ld e, h                                       ; $6aad: $5c
    ld h, l                                       ; $6aae: $65
    jr jr_02e_6ad4                                ; $6aaf: $18 $23

    ld e, b                                       ; $6ab1: $58
    inc hl                                        ; $6ab2: $23
    add sp, -$44                                  ; $6ab3: $e8 $bc
    ld b, [hl]                                    ; $6ab5: $46
    ld b, b                                       ; $6ab6: $40
    push af                                       ; $6ab7: $f5
    cp d                                          ; $6ab8: $ba
    ld h, $d7                                     ; $6ab9: $26 $d7
    jp z, $88dd                                   ; $6abb: $ca $dd $88

    call c, $f91a                                 ; $6abe: $dc $1a $f9
    adc h                                         ; $6ac1: $8c
    pop de                                        ; $6ac2: $d1
    dec [hl]                                      ; $6ac3: $35
    ld hl, sp-$26                                 ; $6ac4: $f8 $da
    ld h, l                                       ; $6ac6: $65
    cp $88                                        ; $6ac7: $fe $88
    inc [hl]                                      ; $6ac9: $34
    ld b, $5f                                     ; $6aca: $06 $5f
    ld de, $f291                                  ; $6acc: $11 $91 $f2
    ld d, $a7                                     ; $6acf: $16 $a7
    db $fd                                        ; $6ad1: $fd
    ld h, l                                       ; $6ad2: $65
    ccf                                           ; $6ad3: $3f

jr_02e_6ad4:
    ldh a, [$65]                                  ; $6ad4: $f0 $65
    rst $18                                       ; $6ad6: $df
    push af                                       ; $6ad7: $f5
    ld h, a                                       ; $6ad8: $67
    jr c, jr_02e_6ae1                             ; $6ad9: $38 $06

    ld b, $7f                                     ; $6adb: $06 $7f
    add hl, de                                    ; $6add: $19
    ret nz                                        ; $6ade: $c0

    db $dd                                        ; $6adf: $dd
    ret z                                         ; $6ae0: $c8

jr_02e_6ae1:
    sub b                                         ; $6ae1: $90
    add $c8                                       ; $6ae2: $c6 $c8
    ld l, c                                       ; $6ae4: $69
    ld e, h                                       ; $6ae5: $5c
    ld l, e                                       ; $6ae6: $6b
    inc b                                         ; $6ae7: $04
    sbc [hl]                                      ; $6ae8: $9e
    ld e, h                                       ; $6ae9: $5c
    ld h, l                                       ; $6aea: $65
    jr jr_02e_6b58                                ; $6aeb: $18 $6b

    inc l                                         ; $6aed: $2c
    add $e0                                       ; $6aee: $c6 $e0
    dec hl                                        ; $6af0: $2b
    and d                                         ; $6af1: $a2
    cp h                                          ; $6af2: $bc
    dec b                                         ; $6af3: $05
    daa                                           ; $6af4: $27
    cp [hl]                                       ; $6af5: $be
    sbc a                                         ; $6af6: $9f
    ld e, h                                       ; $6af7: $5c
    ld h, l                                       ; $6af8: $65
    jr jr_02e_6b1e                                ; $6af9: $18 $23

    ld e, b                                       ; $6afb: $58
    di                                            ; $6afc: $f3
    ret nz                                        ; $6afd: $c0

    db $dd                                        ; $6afe: $dd
    jr nc, @-$58                                  ; $6aff: $30 $a6

    ld [$91ab], sp                                ; $6b01: $08 $ab $91
    adc a                                         ; $6b04: $8f
    ld l, e                                       ; $6b05: $6b
    call z, $1f43                                 ; $6b06: $cc $43 $1f
    rla                                           ; $6b09: $17
    ei                                            ; $6b0a: $fb
    ld a, c                                       ; $6b0b: $79
    db $e4                                        ; $6b0c: $e4
    dec sp                                        ; $6b0d: $3b
    ld b, c                                       ; $6b0e: $41
    or c                                          ; $6b0f: $b1
    ld h, d                                       ; $6b10: $62
    dec c                                         ; $6b11: $0d
    cp $18                                        ; $6b12: $fe $18
    cp a                                          ; $6b14: $bf
    sub c                                         ; $6b15: $91
    add d                                         ; $6b16: $82
    db $f4                                        ; $6b17: $f4
    ld l, c                                       ; $6b18: $69
    push de                                       ; $6b19: $d5
    ei                                            ; $6b1a: $fb
    inc h                                         ; $6b1b: $24
    ld e, a                                       ; $6b1c: $5f
    ld d, c                                       ; $6b1d: $51

jr_02e_6b1e:
    ld c, h                                       ; $6b1e: $4c

Jump_02e_6b1f:
    ld [hl], c                                    ; $6b1f: $71
    ld e, c                                       ; $6b20: $59
    ld b, c                                       ; $6b21: $41
    ld a, c                                       ; $6b22: $79
    db $e4                                        ; $6b23: $e4
    dec l                                         ; $6b24: $2d
    daa                                           ; $6b25: $27
    cp [hl]                                       ; $6b26: $be
    sbc a                                         ; $6b27: $9f
    ld e, h                                       ; $6b28: $5c
    or $dd                                        ; $6b29: $f6 $dd
    ret nz                                        ; $6b2b: $c0

    dec c                                         ; $6b2c: $0d
    ld h, e                                       ; $6b2d: $63
    cp h                                          ; $6b2e: $bc
    add a                                         ; $6b2f: $87
    jp c, $5b43                                   ; $6b30: $da $43 $5b

    daa                                           ; $6b33: $27
    cp [hl]                                       ; $6b34: $be
    sbc a                                         ; $6b35: $9f
    ld e, h                                       ; $6b36: $5c
    ld h, l                                       ; $6b37: $65
    jr jr_02e_6b45                                ; $6b38: $18 $0b

    ld e, h                                       ; $6b3a: $5c
    or [hl]                                       ; $6b3b: $b6
    ld d, [hl]                                    ; $6b3c: $56
    inc [hl]                                      ; $6b3d: $34
    and $61                                       ; $6b3e: $e6 $61
    inc h                                         ; $6b40: $24
    sub a                                         ; $6b41: $97
    xor l                                         ; $6b42: $ad
    dec d                                         ; $6b43: $15
    ret nz                                        ; $6b44: $c0

jr_02e_6b45:
    ld [hl], c                                    ; $6b45: $71
    ld [hl], h                                    ; $6b46: $74
    jp Jump_02e_4065                              ; $6b47: $c3 $65 $40


    inc hl                                        ; $6b4a: $23
    ld e, b                                       ; $6b4b: $58
    pop de                                        ; $6b4c: $d1
    ld l, $b6                                     ; $6b4d: $2e $b6
    db $fc                                        ; $6b4f: $fc
    ld h, d                                       ; $6b50: $62
    dec hl                                        ; $6b51: $2b
    ld a, [c]                                     ; $6b52: $f2
    ld d, $f5                                     ; $6b53: $16 $f5
    dec [hl]                                      ; $6b55: $35
    adc [hl]                                      ; $6b56: $8e
    ld l, [hl]                                    ; $6b57: $6e

jr_02e_6b58:
    jr jr_02e_6bc5                                ; $6b58: $18 $6b

    ld a, [bc]                                    ; $6b5a: $0a
    ld d, b                                       ; $6b5b: $50
    ld [hl], a                                    ; $6b5c: $77

Jump_02e_6b5d:
    or h                                          ; $6b5d: $b4
    rst $38                                       ; $6b5e: $ff
    ld a, [hl]                                    ; $6b5f: $7e
    ld l, l                                       ; $6b60: $6d
    ld h, d                                       ; $6b61: $62
    dec bc                                        ; $6b62: $0b
    ld b, a                                       ; $6b63: $47
    pop de                                        ; $6b64: $d1
    ld [hl-], a                                   ; $6b65: $32
    ld [hl], b                                    ; $6b66: $70
    ld d, a                                       ; $6b67: $57
    ld d, b                                       ; $6b68: $50
    cp l                                          ; $6b69: $bd
    ld c, e                                       ; $6b6a: $4b
    set 0, b                                      ; $6b6b: $cb $c0
    dec e                                         ; $6b6d: $1d
    cp $8a                                        ; $6b6e: $fe $8a
    dec [hl]                                      ; $6b70: $35
    ld hl, sp-$69                                 ; $6b71: $f8 $97
    sub [hl]                                      ; $6b73: $96
    dec de                                        ; $6b74: $1b
    jp nc, $9d4a                                  ; $6b75: $d2 $4a $9d

    or c                                          ; $6b78: $b1
    dec c                                         ; $6b79: $0d
    xor b                                         ; $6b7a: $a8
    or $d0                                        ; $6b7b: $f6 $d0
    ld d, $1d                                     ; $6b7d: $16 $1d
    cp d                                          ; $6b7f: $ba
    xor [hl]                                      ; $6b80: $ae
    or h                                          ; $6b81: $b4
    add $62                                       ; $6b82: $c6 $62
    push bc                                       ; $6b84: $c5
    sub [hl]                                      ; $6b85: $96
    ld bc, $c681                                  ; $6b86: $01 $81 $c6
    rst $28                                       ; $6b89: $ef
    ldh a, [$f3]                                  ; $6b8a: $f0 $f3
    ld d, $27                                     ; $6b8c: $16 $27
    cp [hl]                                       ; $6b8e: $be
    sbc a                                         ; $6b8f: $9f
    ld e, h                                       ; $6b90: $5c
    ld h, l                                       ; $6b91: $65
    jr @+$3d                                      ; $6b92: $18 $3b

    push hl                                       ; $6b94: $e5
    db $fd                                        ; $6b95: $fd
    sbc l                                         ; $6b96: $9d
    ld hl, $a28b                                  ; $6b97: $21 $8b $a2
    sbc d                                         ; $6b9a: $9a
    reti                                          ; $6b9b: $d9


    ldh [rOCPD], a                                ; $6b9c: $e0 $6b
    adc d                                         ; $6b9e: $8a
    and [hl]                                      ; $6b9f: $a6
    xor $a5                                       ; $6ba0: $ee $a5
    ld [hl], c                                    ; $6ba2: $71
    call $968d                                    ; $6ba3: $cd $8d $96
    ld l, l                                       ; $6ba6: $6d
    ldh a, [$bb]                                  ; $6ba7: $f0 $bb
    inc h                                         ; $6ba9: $24
    ld d, a                                       ; $6baa: $57
    cp [hl]                                       ; $6bab: $be
    ld c, [hl]                                    ; $6bac: $4e
    or b                                          ; $6bad: $b0
    rr a                                          ; $6bae: $cb $1f
    add $32                                       ; $6bb0: $c6 $32
    and b                                         ; $6bb2: $a0
    push af                                       ; $6bb3: $f5
    ld l, b                                       ; $6bb4: $68
    ld b, e                                       ; $6bb5: $43
    or a                                          ; $6bb6: $b7
    jp c, $5b43                                   ; $6bb7: $da $43 $5b

    sbc l                                         ; $6bba: $9d
    ld h, b                                       ; $6bbb: $60
    ld e, h                                       ; $6bbc: $5c
    adc h                                         ; $6bbd: $8c
    dec de                                        ; $6bbe: $1b
    add $ac                                       ; $6bbf: $c6 $ac
    inc d                                         ; $6bc1: $14
    ld sp, hl                                     ; $6bc2: $f9
    cp b                                          ; $6bc3: $b8
    ret c                                         ; $6bc4: $d8

jr_02e_6bc5:
    rst $08                                       ; $6bc5: $cf
    inc hl                                        ; $6bc6: $23
    add hl, sp                                    ; $6bc7: $39
    add d                                         ; $6bc8: $82
    add l                                         ; $6bc9: $85
    xor d                                         ; $6bca: $aa
    ld d, h                                       ; $6bcb: $54
    ld d, c                                       ; $6bcc: $51
    call z, $8798                                 ; $6bcd: $cc $98 $87
    cp [hl]                                       ; $6bd0: $be
    sub h                                         ; $6bd1: $94
    ld [c], a                                     ; $6bd2: $e2
    pop hl                                        ; $6bd3: $e1
    rra                                           ; $6bd4: $1f
    cp a                                          ; $6bd5: $bf
    dec de                                        ; $6bd6: $1b
    ld a, [$6ed2]                                 ; $6bd7: $fa $d2 $6e
    jr jr_02e_6c55                                ; $6bda: $18 $79

    dec bc                                        ; $6bdc: $0b
    sbc l                                         ; $6bdd: $9d
    ld h, b                                       ; $6bde: $60
    adc d                                         ; $6bdf: $8a
    ld b, l                                       ; $6be0: $45
    rrca                                          ; $6be1: $0f
    cp [hl]                                       ; $6be2: $be
    inc c                                         ; $6be3: $0c
    ld l, b                                       ; $6be4: $68
    inc b                                         ; $6be5: $04
    ld h, e                                       ; $6be6: $63
    inc l                                         ; $6be7: $2c
    sub [hl]                                      ; $6be8: $96
    ld b, d                                       ; $6be9: $42
    db $fd                                        ; $6bea: $fd
    db $e4                                        ; $6beb: $e4
    adc [hl]                                      ; $6bec: $8e
    dec [hl]                                      ; $6bed: $35
    rst $30                                       ; $6bee: $f7
    sbc d                                         ; $6bef: $9a

Jump_02e_6bf0:
    jp c, $5b43                                   ; $6bf0: $da $43 $5b

    push af                                       ; $6bf3: $f5
    dec [hl]                                      ; $6bf4: $35
    ld b, $f5                                     ; $6bf5: $06 $f5

Jump_02e_6bf7:
    ld h, e                                       ; $6bf7: $63
    ld e, h                                       ; $6bf8: $5c
    ld [hl], e                                    ; $6bf9: $73
    or c                                          ; $6bfa: $b1
    call z, Call_02e_7cb9                         ; $6bfb: $cc $b9 $7c
    adc l                                         ; $6bfe: $8d
    ld sp, hl                                     ; $6bff: $f9
    adc d                                         ; $6c00: $8a
    dec l                                         ; $6c01: $2d
    xor l                                         ; $6c02: $ad
    rst $18                                       ; $6c03: $df
    dec [hl]                                      ; $6c04: $35
    cp c                                          ; $6c05: $b9
    ld h, $5a                                     ; $6c06: $26 $5a
    or $dd                                        ; $6c08: $f6 $dd
    ld [hl], b                                    ; $6c0a: $70
    inc c                                         ; $6c0b: $0c
    inc c                                         ; $6c0c: $0c
    cp $c8                                        ; $6c0d: $fe $c8
    pop hl                                        ; $6c0f: $e1
    ld a, [de]                                    ; $6c10: $1a
    add e                                         ; $6c11: $83
    xor a                                         ; $6c12: $af
    adc b                                         ; $6c13: $88
    add $b2                                       ; $6c14: $c6 $b2
    ld a, [hl+]                                   ; $6c16: $2a
    ld h, l                                       ; $6c17: $65
    ld e, h                                       ; $6c18: $5c
    ld a, $2e                                     ; $6c19: $3e $2e
    or $f3                                        ; $6c1b: $f6 $f3
    ret z                                         ; $6c1d: $c8

    ld e, e                                       ; $6c1e: $5b
    ld e, c                                       ; $6c1f: $59
    ld [hl], d                                    ; $6c20: $72
    ld [hl-], a                                   ; $6c21: $32
    db $fc                                        ; $6c22: $fc
    xor d                                         ; $6c23: $aa
    db $f4                                        ; $6c24: $f4
    ld l, c                                       ; $6c25: $69
    adc l                                         ; $6c26: $8d
    ld b, l                                       ; $6c27: $45
    ld l, l                                       ; $6c28: $6d
    ld h, d                                       ; $6c29: $62
    dec bc                                        ; $6c2a: $0b
    ld e, c                                       ; $6c2b: $59
    ld l, h                                       ; $6c2c: $6c
    and b                                         ; $6c2d: $a0
    jp c, $d5c4                                   ; $6c2e: $da $c4 $d5

    cp a                                          ; $6c31: $bf
    dec hl                                        ; $6c32: $2b
    jp nz, $e350                                  ; $6c33: $c2 $50 $e3

    rst $30                                       ; $6c36: $f7
    db $db                                        ; $6c37: $db
    push af                                       ; $6c38: $f5
    add b                                         ; $6c39: $80
    db $e4                                        ; $6c3a: $e4
    dec hl                                        ; $6c3b: $2b
    ld e, d                                       ; $6c3c: $5a
    db $e3                                        ; $6c3d: $e3
    cpl                                           ; $6c3e: $2f
    xor l                                         ; $6c3f: $ad
    ld [$d781], sp                                ; $6c40: $08 $81 $d7
    ld h, $b6                                     ; $6c43: $26 $b6
    and a                                         ; $6c45: $a7
    ld [c], a                                     ; $6c46: $e2
    ld [$08c6], sp                                ; $6c47: $08 $c6 $08
    ld a, [hl-]                                   ; $6c4a: $3a
    daa                                           ; $6c4b: $27
    sub a                                         ; $6c4c: $97
    xor l                                         ; $6c4d: $ad
    dec [hl]                                      ; $6c4e: $35
    add d                                         ; $6c4f: $82
    adc $6b                                       ; $6c50: $ce $6b
    ld e, h                                       ; $6c52: $5c
    sbc a                                         ; $6c53: $9f
    cp e                                          ; $6c54: $bb

jr_02e_6c55:
    add $15                                       ; $6c55: $c6 $15

Call_02e_6c57:
    ei                                            ; $6c57: $fb
    adc a                                         ; $6c58: $8f
    inc d                                         ; $6c59: $14
    inc de                                        ; $6c5a: $13
    dec l                                         ; $6c5b: $2d
    ld e, e                                       ; $6c5c: $5b
    and e                                         ; $6c5d: $a3
    cp e                                          ; $6c5e: $bb
    ld a, [hl-]                                   ; $6c5f: $3a
    scf                                           ; $6c60: $37
    dec b                                         ; $6c61: $05
    inc sp                                        ; $6c62: $33

jr_02e_6c63:
    jr nz, jr_02e_6c9c                            ; $6c63: $20 $37

    sbc h                                         ; $6c65: $9c
    dec [hl]                                      ; $6c66: $35
    ld e, [hl]                                    ; $6c67: $5e
    scf                                           ; $6c68: $37
    ld a, [c]                                     ; $6c69: $f2
    ld d, $a7                                     ; $6c6a: $16 $a7
    ld [c], a                                     ; $6c6c: $e2
    ld [$08c6], sp                                ; $6c6d: $08 $c6 $08
    ld a, [hl-]                                   ; $6c70: $3a
    cpl                                           ; $6c71: $2f
    inc bc                                        ; $6c72: $03
    ld e, d                                       ; $6c73: $5a
    or [hl]                                       ; $6c74: $b6
    ld b, [hl]                                    ; $6c75: $46
    ld [hl], a                                    ; $6c76: $77
    ld [hl], l                                    ; $6c77: $75
    ld l, [hl]                                    ; $6c78: $6e
    ld a, [bc]                                    ; $6c79: $0a
    ld h, [hl]                                    ; $6c7a: $66

jr_02e_6c7b:
    ld b, b                                       ; $6c7b: $40
    res 0, b                                      ; $6c7c: $cb $80
    ld c, d                                       ; $6c7e: $4a
    ld b, $b4                                     ; $6c7f: $06 $b4
    adc e                                         ; $6c81: $8b
    db $fd                                        ; $6c82: $fd
    ld b, d                                       ; $6c83: $42
    ret                                           ; $6c84: $c9


    add hl, de                                    ; $6c85: $19
    sub c                                         ; $6c86: $91
    ld a, $8f                                     ; $6c87: $3e $8f
    dec d                                         ; $6c89: $15
    ld e, e                                       ; $6c8a: $5b
    ld a, [de]                                    ; $6c8b: $1a
    rst $38                                       ; $6c8c: $ff
    jr c, jr_02e_6c7b                             ; $6c8d: $38 $ec

    ld a, d                                       ; $6c8f: $7a
    ldh [rHDMA1], a                               ; $6c90: $e0 $51
    sbc e                                         ; $6c92: $9b
    ret c                                         ; $6c93: $d8

    ld [bc], a                                    ; $6c94: $02
    ld e, c                                       ; $6c95: $59
    ld l, h                                       ; $6c96: $6c
    and b                                         ; $6c97: $a0
    jp c, $9dc4                                   ; $6c98: $da $c4 $9d

    and b                                         ; $6c9b: $a0

jr_02e_6c9c:
    dec [hl]                                      ; $6c9c: $35
    cp $d2                                        ; $6c9d: $fe $d2
    adc d                                         ; $6c9f: $8a
    db $10                                        ; $6ca0: $10
    ld hl, sp+$1c                                 ; $6ca1: $f8 $1c
    inc hl                                        ; $6ca3: $23
    inc bc                                        ; $6ca4: $03
    ld a, [de]                                    ; $6ca5: $1a
    rst $10                                       ; $6ca6: $d7
    jr c, jr_02e_6c63                             ; $6ca7: $38 $ba

    sub [hl]                                      ; $6ca9: $96
    ld bc, $0c95                                  ; $6caa: $01 $95 $0c
    ld l, b                                       ; $6cad: $68
    rla                                           ; $6cae: $17
    ei                                            ; $6caf: $fb
    add l                                         ; $6cb0: $85
    add $ef                                       ; $6cb1: $c6 $ef
    ld e, b                                       ; $6cb3: $58
    dec [hl]                                      ; $6cb4: $35
    rst $08                                       ; $6cb5: $cf
    ret                                           ; $6cb6: $c9


    ld a, $4d                                     ; $6cb7: $3e $4d
    or h                                          ; $6cb9: $b4
    ld l, h                                       ; $6cba: $6c
    db $ed                                        ; $6cbb: $ed
    ld l, e                                       ; $6cbc: $6b
    adc h                                         ; $6cbd: $8c
    and b                                         ; $6cbe: $a0
    di                                            ; $6cbf: $f3
    ld a, [de]                                    ; $6cc0: $1a
    adc e                                         ; $6cc1: $8b
    dec d                                         ; $6cc2: $15
    call $e48d                                    ; $6cc3: $cd $8d $e4
    ld a, c                                       ; $6cc6: $79
    dec bc                                        ; $6cc7: $0b
    ld e, c                                       ; $6cc8: $59
    ld l, h                                       ; $6cc9: $6c
    and b                                         ; $6cca: $a0
    jp c, Jump_000_1dc4                           ; $6ccb: $da $c4 $1d

    xor $de                                       ; $6cce: $ee $de
    dec [hl]                                      ; $6cd0: $35
    jp hl                                         ; $6cd1: $e9


    db $fc                                        ; $6cd2: $fc
    ld [hl], c                                    ; $6cd3: $71
    xor l                                         ; $6cd4: $ad
    jp nc, $cdf8                                  ; $6cd5: $d2 $f8 $cd

    db $ed                                        ; $6cd8: $ed
    or e                                          ; $6cd9: $b3
    db $e4                                        ; $6cda: $e4
    or l                                          ; $6cdb: $b5
    adc c                                         ; $6cdc: $89
    dec l                                         ; $6cdd: $2d
    push af                                       ; $6cde: $f5
    or l                                          ; $6cdf: $b5
    rr a                                          ; $6ce0: $cb $1f
    add $32                                       ; $6ce2: $c6 $32
    ld [hl], b                                    ; $6ce4: $70
    ld a, a                                       ; $6ce5: $7f
    ld a, a                                       ; $6ce6: $7f
    rst $38                                       ; $6ce7: $ff
    ld l, [hl]                                    ; $6ce8: $6e
    ld l, e                                       ; $6ce9: $6b
    inc l                                         ; $6cea: $2c
    ld d, [hl]                                    ; $6ceb: $56
    inc [hl]                                      ; $6cec: $34
    xor $0f                                       ; $6ced: $ee $0f
    ld l, c                                       ; $6cef: $69
    ld e, h                                       ; $6cf0: $5c
    ld l, e                                       ; $6cf1: $6b
    call z, Call_02e_7c8b                         ; $6cf2: $cc $8b $7c
    adc l                                         ; $6cf5: $8d
    ld a, $b7                                     ; $6cf6: $3e $b7
    ld c, a                                       ; $6cf8: $4f
    dec hl                                        ; $6cf9: $2b
    jp c, $c0f5                                   ; $6cfa: $da $f5 $c0

    inc hl                                        ; $6cfd: $23
    ld l, a                                       ; $6cfe: $6f
    ld bc, $609d                                  ; $6cff: $01 $9d $60
    ld l, c                                       ; $6d02: $69
    cp c                                          ; $6d03: $b9
    ld h, c                                       ; $6d04: $61
    xor h                                         ; $6d05: $ac
    ld b, d                                       ; $6d06: $42

jr_02e_6d07:
    ld b, c                                       ; $6d07: $41
    rst $20                                       ; $6d08: $e7
    pop af                                        ; $6d09: $f1
    cp e                                          ; $6d0a: $bb
    cp c                                          ; $6d0b: $b9
    ld [hl], a                                    ; $6d0c: $77
    ld c, l                                       ; $6d0d: $4d
    ld a, [c]                                     ; $6d0e: $f2
    dec b                                         ; $6d0f: $05
    adc [hl]                                      ; $6d10: $8e
    ld h, b                                       ; $6d11: $60
    ld e, a                                       ; $6d12: $5f
    ld h, e                                       ; $6d13: $63
    inc b                                         ; $6d14: $04
    sbc l                                         ; $6d15: $9d
    rst $10                                       ; $6d16: $d7
    ld e, b                                       ; $6d17: $58
    call z, $8798                                 ; $6d18: $cc $98 $87
    ld a, $ae                                     ; $6d1b: $3e $ae
    sbc b                                         ; $6d1d: $98
    cp $07                                        ; $6d1e: $fe $07
    adc h                                         ; $6d20: $8c
    cp h                                          ; $6d21: $bc
    dec b                                         ; $6d22: $05
    ld e, c                                       ; $6d23: $59
    ld l, h                                       ; $6d24: $6c
    and b                                         ; $6d25: $a0
    jp c, $9dc4                                   ; $6d26: $da $c4 $9d

    and b                                         ; $6d29: $a0
    dec [hl]                                      ; $6d2a: $35
    cp $d2                                        ; $6d2b: $fe $d2
    ei                                            ; $6d2d: $fb
    rrca                                          ; $6d2e: $0f
    ld h, d                                       ; $6d2f: $62
    ld l, $96                                     ; $6d30: $2e $96
    add hl, sp                                    ; $6d32: $39
    ld d, a                                       ; $6d33: $57
    sbc $02                                       ; $6d34: $de $02
    daa                                           ; $6d36: $27
    db $fd                                        ; $6d37: $fd
    and l                                         ; $6d38: $a5
    push hl                                       ; $6d39: $e5
    add [hl]                                      ; $6d3a: $86
    or h                                          ; $6d3b: $b4
    ld a, [bc]                                    ; $6d3c: $0a
    dec b                                         ; $6d3d: $05
    sbc l                                         ; $6d3e: $9d
    rst $00                                       ; $6d3f: $c7
    or l                                          ; $6d40: $b5
    xor a                                         ; $6d41: $af
    dec [hl]                                      ; $6d42: $35
    ld d, $6b                                     ; $6d43: $16 $6b
    call z, Call_02e_7c8b                         ; $6d45: $cc $8b $7c
    ld a, [$8abb]                                 ; $6d48: $fa $bb $8a
    ld b, l                                       ; $6d4b: $45
    jr z, jr_02e_6d07                             ; $6d4c: $28 $b9

    rst $30                                       ; $6d4e: $f7
    rst $20                                       ; $6d4f: $e7
    jr jr_02e_6d6b                                ; $6d50: $18 $19

    ret nc                                        ; $6d52: $d0

    ldh [rOCPD], a                                ; $6d53: $e0 $6b
    ld l, $d2                                     ; $6d55: $2e $d2
    rlca                                          ; $6d57: $07
    push hl                                       ; $6d58: $e5
    dec l                                         ; $6d59: $2d
    and a                                         ; $6d5a: $a7
    ld e, e                                       ; $6d5b: $5b
    dec a                                         ; $6d5c: $3d
    cp d                                          ; $6d5d: $ba
    db $eb                                        ; $6d5e: $eb
    rst $10                                       ; $6d5f: $d7
    ld h, $ae                                     ; $6d60: $26 $ae
    cp [hl]                                       ; $6d62: $be
    or $35                                        ; $6d63: $f6 $35
    ld b, [hl]                                    ; $6d65: $46
    ret nc                                        ; $6d66: $d0

    ld a, c                                       ; $6d67: $79
    adc l                                         ; $6d68: $8d
    push bc                                       ; $6d69: $c5
    ld [hl-], a                                   ; $6d6a: $32

jr_02e_6d6b:
    and b                                         ; $6d6b: $a0
    dec d                                         ; $6d6c: $15
    xor l                                         ; $6d6d: $ad
    pop af                                        ; $6d6e: $f1
    sub a                                         ; $6d6f: $97
    ld e, [hl]                                    ; $6d70: $5e
    ld l, b                                       ; $6d71: $68
    jp hl                                         ; $6d72: $e9


jr_02e_6d73:
    ld l, $2f                                     ; $6d73: $2e $2f
    or [hl]                                       ; $6d75: $b6
    ld a, [c]                                     ; $6d76: $f2
    ld d, $f5                                     ; $6d77: $16 $f5
    rst $28                                       ; $6d79: $ef
    add [hl]                                      ; $6d7a: $86
    sub l                                         ; $6d7b: $95
    call c, $9630                                 ; $6d7c: $dc $30 $96
    ld b, d                                       ; $6d7f: $42
    db $fd                                        ; $6d80: $fd
    pop de                                        ; $6d81: $d1
    db $dd                                        ; $6d82: $dd
    sub b                                         ; $6d83: $90
    res 2, e                                      ; $6d84: $cb $93
    xor e                                         ; $6d86: $ab
    inc c                                         ; $6d87: $0c
    ld h, e                                       ; $6d88: $63
    reti                                          ; $6d89: $d9


    ld a, [de]                                    ; $6d8a: $1a
    ld a, a                                       ; $6d8b: $7f
    jr jr_02e_6e01                                ; $6d8c: $18 $73

    dec b                                         ; $6d8e: $05
    ret                                           ; $6d8f: $c9


    add a                                         ; $6d90: $87
    rla                                           ; $6d91: $17
    and $2d                                       ; $6d92: $e6 $2d
    ld b, a                                       ; $6d94: $47
    cp h                                          ; $6d95: $bc
    rst $38                                       ; $6d96: $ff
    or l                                          ; $6d97: $b5
    adc e                                         ; $6d98: $8b
    ld l, l                                       ; $6d99: $6d
    rst $38                                       ; $6d9a: $ff
    ld d, d                                       ; $6d9b: $52
    ld [hl], d                                    ; $6d9c: $72
    rst $00                                       ; $6d9d: $c7
    sbc d                                         ; $6d9e: $9a
    ld a, e                                       ; $6d9f: $7b
    ld c, l                                       ; $6da0: $4d
    cp [hl]                                       ; $6da1: $be
    ld c, [hl]                                    ; $6da2: $4e
    or b                                          ; $6da3: $b0
    ld c, d                                       ; $6da4: $4a
    ld [hl], e                                    ; $6da5: $73
    cp e                                          ; $6da6: $bb
    sbc $27                                       ; $6da7: $de $27
    cp c                                          ; $6da9: $b9
    push bc                                       ; $6daa: $c5
    ld l, $2d                                     ; $6dab: $2e $2d
    inc bc                                        ; $6dad: $03
    cp b                                          ; $6dae: $b8
    cp b                                          ; $6daf: $b8
    dec hl                                        ; $6db0: $2b
    ld l, b                                       ; $6db1: $68
    adc l                                         ; $6db2: $8d
    ld b, l                                       ; $6db3: $45
    call c, $16f2                                 ; $6db4: $dc $f2 $16
    sbc l                                         ; $6db7: $9d
    ld h, b                                       ; $6db8: $60
    ld l, c                                       ; $6db9: $69
    cp c                                          ; $6dba: $b9
    ld h, c                                       ; $6dbb: $61
    xor h                                         ; $6dbc: $ac
    ld b, d                                       ; $6dbd: $42
    ld b, c                                       ; $6dbe: $41
    rst $20                                       ; $6dbf: $e7
    ld [hl], c                                    ; $6dc0: $71
    xor l                                         ; $6dc1: $ad
    ld sp, $f427                                  ; $6dc2: $31 $27 $f4
    add hl, de                                    ; $6dc5: $19
    ld h, e                                       ; $6dc6: $63
    sbc a                                         ; $6dc7: $9f
    sub [hl]                                      ; $6dc8: $96
    ld bc, $68ad                                  ; $6dc9: $01 $ad $68
    adc l                                         ; $6dcc: $8d
    cp a                                          ; $6dcd: $bf
    db $f4                                        ; $6dce: $f4
    ld [c], a                                     ; $6dcf: $e2
    ld a, [hl]                                    ; $6dd0: $7e
    ei                                            ; $6dd1: $fb
    ld [hl], d                                    ; $6dd2: $72
    ld b, [hl]                                    ; $6dd3: $46
    ld a, c                                       ; $6dd4: $79
    dec bc                                        ; $6dd5: $0b
    ld b, a                                       ; $6dd6: $47
    cp h                                          ; $6dd7: $bc
    rst $38                                       ; $6dd8: $ff
    or l                                          ; $6dd9: $b5
    adc e                                         ; $6dda: $8b
    ld l, l                                       ; $6ddb: $6d
    rst $38                                       ; $6ddc: $ff
    jp nc, Jump_000_358e                          ; $6ddd: $d2 $8e $35

    rst $30                                       ; $6de0: $f7
    sbc d                                         ; $6de1: $9a
    db $e4                                        ; $6de2: $e4
    or d                                          ; $6de3: $b2
    or l                                          ; $6de4: $b5
    jr nc, jr_02e_6d73                            ; $6de5: $30 $8c

    ld h, l                                       ; $6de7: $65
    ld b, b                                       ; $6de8: $40
    and e                                         ; $6de9: $a3
    rlca                                          ; $6dea: $07
    inc [hl]                                      ; $6deb: $34
    ld [hl], h                                    ; $6dec: $74
    ld e, e                                       ; $6ded: $5b
    ld a, [bc]                                    ; $6dee: $0a
    push af                                       ; $6def: $f5
    di                                            ; $6df0: $f3
    ld d, $9d                                     ; $6df1: $16 $9d
    ld h, b                                       ; $6df3: $60
    ld l, c                                       ; $6df4: $69
    cp c                                          ; $6df5: $b9
    ld h, c                                       ; $6df6: $61
    xor h                                         ; $6df7: $ac
    ld b, d                                       ; $6df8: $42
    ld b, c                                       ; $6df9: $41
    rst $20                                       ; $6dfa: $e7
    pop af                                        ; $6dfb: $f1
    ld a, e                                       ; $6dfc: $7b
    call Call_000_14ac                            ; $6dfd: $cd $ac $14
    ld a, c                                       ; $6e00: $79

jr_02e_6e01:
    ld [hl], d                                    ; $6e01: $72
    ld b, l                                       ; $6e02: $45
    ld l, e                                       ; $6e03: $6b
    db $fc                                        ; $6e04: $fc
    and l                                         ; $6e05: $a5
    ld b, a                                       ; $6e06: $47
    sbc d                                         ; $6e07: $9a
    adc e                                         ; $6e08: $8b
    ld h, l                                       ; $6e09: $65
    adc $95                                       ; $6e0a: $ce $95
    or a                                          ; $6e0c: $b7
    and a                                         ; $6e0d: $a7
    jp z, $b15d                                   ; $6e0e: $ca $5d $b1

    add e                                         ; $6e11: $83
    rst $30                                       ; $6e12: $f7
    sbc a                                         ; $6e13: $9f
    di                                            ; $6e14: $f3
    ld a, d                                       ; $6e15: $7a
    rrca                                          ; $6e16: $0f
    inc d                                         ; $6e17: $14
    sub h                                         ; $6e18: $94
    ld l, a                                       ; $6e19: $6f
    ld e, c                                       ; $6e1a: $59
    sub [hl]                                      ; $6e1b: $96
    or d                                          ; $6e1c: $b2
    xor a                                         ; $6e1d: $af
    ld [hl], c                                    ; $6e1e: $71
    db $ed                                        ; $6e1f: $ed
    ld e, b                                       ; $6e20: $58
    ld h, e                                       ; $6e21: $63
    add hl, sp                                    ; $6e22: $39
    ld a, [c]                                     ; $6e23: $f2
    dec e                                         ; $6e24: $1d
    cp h                                          ; $6e25: $bc
    nop                                           ; $6e26: $00
    ld e, [hl]                                    ; $6e27: $5e
    rst $28                                       ; $6e28: $ef
    add c                                         ; $6e29: $81
    add d                                         ; $6e2a: $82
    ld a, [c]                                     ; $6e2b: $f2
    ld d, $27                                     ; $6e2c: $16 $27
    jr z, @+$78                                   ; $6e2e: $28 $76

    dec a                                         ; $6e30: $3d
    ldh a, [$58]                                  ; $6e31: $f0 $58
    cp h                                          ; $6e33: $bc
    ld c, a                                       ; $6e34: $4f
    inc hl                                        ; $6e35: $23
    ld a, c                                       ; $6e36: $79
    add l                                         ; $6e37: $85
    rst $38                                       ; $6e38: $ff
    ld d, $6b                                     ; $6e39: $16 $6b
    ld e, $f8                                     ; $6e3b: $1e $f8
    inc c                                         ; $6e3d: $0c
    or d                                          ; $6e3e: $b2
    rra                                           ; $6e3f: $1f
    jr c, jr_02e_6e01                             ; $6e40: $38 $bf

    or e                                          ; $6e42: $b3
    ld bc, $edf3                                  ; $6e43: $01 $f3 $ed
    ldh a, [rHDMA2]                               ; $6e46: $f0 $52
    ld [hl], h                                    ; $6e48: $74
    cp $e8                                        ; $6e49: $fe $e8
    ld b, c                                       ; $6e4b: $41
    adc h                                         ; $6e4c: $8c
    db $db                                        ; $6e4d: $db
    adc a                                         ; $6e4e: $8f
    dec d                                         ; $6e4f: $15
    db $db                                        ; $6e50: $db
    ld sp, $9f6e                                  ; $6e51: $31 $6e $9f
    ld l, e                                       ; $6e54: $6b
    and a                                         ; $6e55: $a7
    ld e, d                                       ; $6e56: $5a
    add hl, hl                                    ; $6e57: $29
    ld c, d                                       ; $6e58: $4a
    xor [hl]                                      ; $6e59: $ae
    ld l, b                                       ; $6e5a: $68
    cp h                                          ; $6e5b: $bc
    db $db                                        ; $6e5c: $db
    cpl                                           ; $6e5d: $2f
    rra                                           ; $6e5e: $1f
    ld h, e                                       ; $6e5f: $63
    db $eb                                        ; $6e60: $eb
    sbc d                                         ; $6e61: $9a
    ld e, h                                       ; $6e62: $5c
    dec bc                                        ; $6e63: $0b
    add hl, sp                                    ; $6e64: $39
    add e                                         ; $6e65: $83
    ld a, c                                       ; $6e66: $79
    dec bc                                        ; $6e67: $0b
    sbc l                                         ; $6e68: $9d
    ld h, b                                       ; $6e69: $60
    ld e, a                                       ; $6e6a: $5f
    and e                                         ; $6e6b: $a3
    cp e                                          ; $6e6c: $bb
    cp $08                                        ; $6e6d: $fe $08
    ld e, l                                       ; $6e6f: $5d
    ld l, [hl]                                    ; $6e70: $6e
    or c                                          ; $6e71: $b1
    add $62                                       ; $6e72: $c6 $62
    rst $10                                       ; $6e74: $d7
    xor e                                         ; $6e75: $ab
    ld a, [hl+]                                   ; $6e76: $2a
    xor l                                         ; $6e77: $ad
    ld b, a                                       ; $6e78: $47
    ld c, e                                       ; $6e79: $4b
    xor [hl]                                      ; $6e7a: $ae
    db $e3                                        ; $6e7b: $e3
    inc hl                                        ; $6e7c: $23
    sub d                                         ; $6e7d: $92
    daa                                           ; $6e7e: $27
    ld h, a                                       ; $6e7f: $67
    adc l                                         ; $6e80: $8d
    rst $10                                       ; $6e81: $d7
    adc l                                         ; $6e82: $8d
    ld e, l                                       ; $6e83: $5d
    ld e, d                                       ; $6e84: $5a
    ld b, $70                                     ; $6e85: $06 $70
    ld [hl], c                                    ; $6e87: $71
    ld d, a                                       ; $6e88: $57
    ret nc                                        ; $6e89: $d0

    ld a, [de]                                    ; $6e8a: $1a
    adc e                                         ; $6e8b: $8b
    cp b                                          ; $6e8c: $b8
    ld c, l                                       ; $6e8d: $4d
    ld a, a                                       ; $6e8e: $7f
    ld d, a                                       ; $6e8f: $57
    or c                                          ; $6e90: $b1
    ld [$6b8d], sp                                ; $6e91: $08 $8d $6b
    call z, Call_02e_792b                         ; $6e94: $cc $2b $79
    dec bc                                        ; $6e97: $0b
    sbc l                                         ; $6e98: $9d
    xor $8a                                       ; $6e99: $ee $8a
    and l                                         ; $6e9b: $a5
    ld d, b                                       ; $6e9c: $50
    ld a, a                                       ; $6e9d: $7f
    ld c, l                                       ; $6e9e: $4d
    add c                                         ; $6e9f: $81
    ret c                                         ; $6ea0: $d8

    push af                                       ; $6ea1: $f5
    ret nz                                        ; $6ea2: $c0

    adc l                                         ; $6ea3: $8d
    dec h                                         ; $6ea4: $25
    add sp, -$44                                  ; $6ea5: $e8 $bc
    inc c                                         ; $6ea7: $0c
    ret c                                         ; $6ea8: $d8

    rst $20                                       ; $6ea9: $e7
    inc hl                                        ; $6eaa: $23
    push bc                                       ; $6eab: $c5
    ld a, [de]                                    ; $6eac: $1a
    ld de, $ec52                                  ; $6ead: $11 $52 $ec
    ld a, d                                       ; $6eb0: $7a
    adc l                                         ; $6eb1: $8d
    pop hl                                        ; $6eb2: $e1
    adc a                                         ; $6eb3: $8f
    push bc                                       ; $6eb4: $c5
    ei                                            ; $6eb5: $fb
    inc [hl]                                      ; $6eb6: $34
    ld h, e                                       ; $6eb7: $63
    ld [hl], h                                    ; $6eb8: $74
    adc l                                         ; $6eb9: $8d
    ld e, $e6                                     ; $6eba: $1e $e6
    dec l                                         ; $6ebc: $2d
    ld e, c                                       ; $6ebd: $59
    ld [hl], a                                    ; $6ebe: $77
    dec b                                         ; $6ebf: $05
    dec c                                         ; $6ec0: $0d
    cp $9a                                        ; $6ec1: $fe $9a
    ld h, d                                       ; $6ec3: $62
    jr @-$16                                      ; $6ec4: $18 $e8

    db $e3                                        ; $6ec6: $e3
    ld e, d                                       ; $6ec7: $5a
    and l                                         ; $6ec8: $a5
    and l                                         ; $6ec9: $a5
    adc h                                         ; $6eca: $8c
    ret z                                         ; $6ecb: $c8

    dec [hl]                                      ; $6ecc: $35
    ld h, e                                       ; $6ecd: $63

jr_02e_6ece:
    ld [hl], h                                    ; $6ece: $74
    adc l                                         ; $6ecf: $8d
    ld e, $e6                                     ; $6ed0: $1e $e6
    dec sp                                        ; $6ed2: $3b
    add hl, de                                    ; $6ed3: $19
    inc [hl]                                      ; $6ed4: $34
    adc [hl]                                      ; $6ed5: $8e
    ld l, [hl]                                    ; $6ed6: $6e
    jr jr_02e_6ece                                ; $6ed7: $18 $f5

    ld [$efc6], sp                                ; $6ed9: $08 $c6 $ef
    ldh a, [$c7]                                  ; $6edc: $f0 $c7
    ld b, c                                       ; $6ede: $41
    ld h, l                                       ; $6edf: $65
    ld e, h                                       ; $6ee0: $5c
    adc e                                         ; $6ee1: $8b
    rst $20                                       ; $6ee2: $e7
    rla                                           ; $6ee3: $17
    jp z, $b923                                   ; $6ee4: $ca $23 $b9

    ld a, [hl-]                                   ; $6ee7: $3a
    xor e                                         ; $6ee8: $ab
    ldh a, [$03]                                  ; $6ee9: $f0 $03
    ld d, d                                       ; $6eeb: $52
    db $ed                                        ; $6eec: $ed
    and c                                         ; $6eed: $a1
    dec sp                                        ; $6eee: $3b
    jp nz, Jump_000_2058                          ; $6eef: $c2 $58 $20

    ld [hl+], a                                   ; $6ef2: $22
    push bc                                       ; $6ef3: $c5
    ld a, [hl+]                                   ; $6ef4: $2a
    ld h, e                                       ; $6ef5: $63
    ld h, c                                       ; $6ef6: $61

jr_02e_6ef7:
    ld b, $14                                     ; $6ef7: $06 $14
    add e                                         ; $6ef9: $83
    adc a                                         ; $6efa: $8f
    add hl, de                                    ; $6efb: $19
    ld d, b                                       ; $6efc: $50
    and l                                         ; $6efd: $a5
    ld c, a                                       ; $6efe: $4f
    ld a, c                                       ; $6eff: $79
    dec bc                                        ; $6f00: $0b
    and a                                         ; $6f01: $a7
    db $fd                                        ; $6f02: $fd
    ld h, l                                       ; $6f03: $65
    ldh [$61], a                                  ; $6f04: $e0 $61
    db $ed                                        ; $6f06: $ed
    and c                                         ; $6f07: $a1
    dec l                                         ; $6f08: $2d
    ld b, a                                       ; $6f09: $47
    sbc $ed                                       ; $6f0a: $de $ed
    cp d                                          ; $6f0c: $ba
    sbc [hl]                                      ; $6f0d: $9e
    di                                            ; $6f0e: $f3
    db $e4                                        ; $6f0f: $e4
    ld b, h                                       ; $6f10: $44
    xor e                                         ; $6f11: $ab
    ld e, $2e                                     ; $6f12: $1e $2e
    ld e, e                                       ; $6f14: $5b
    dec bc                                        ; $6f15: $0b
    cp c                                          ; $6f16: $b9
    pop hl                                        ; $6f17: $e1
    ld [c], a                                     ; $6f18: $e2
    db $fd                                        ; $6f19: $fd
    add l                                         ; $6f1a: $85
    xor [hl]                                      ; $6f1b: $ae
    rst $30                                       ; $6f1c: $f7
    ld a, c                                       ; $6f1d: $79
    sbc $02                                       ; $6f1e: $de $02
    dec e                                         ; $6f20: $1d
    sbc $5f                                       ; $6f21: $de $5f
    add sp, $7a                                   ; $6f23: $e8 $7a
    sbc a                                         ; $6f25: $9f
    rst $28                                       ; $6f26: $ef
    cp d                                          ; $6f27: $ba
    dec hl                                        ; $6f28: $2b
    ld l, b                                       ; $6f29: $68
    ld e, c                                       ; $6f2a: $59
    ld l, [hl]                                    ; $6f2b: $6e
    xor c                                         ; $6f2c: $a9

Call_02e_6f2d:
    sub h                                         ; $6f2d: $94
    ld a, [c]                                     ; $6f2e: $f2
    sbc l                                         ; $6f2f: $9d
    db $f4                                        ; $6f30: $f4
    rla                                           ; $6f31: $17
    sbc d                                         ; $6f32: $9a
    adc e                                         ; $6f33: $8b
    db $fc                                        ; $6f34: $fc
    ld bc, $71a3                                  ; $6f35: $01 $a3 $71
    ei                                            ; $6f38: $fb
    or c                                          ; $6f39: $b1
    ld h, d                                       ; $6f3a: $62
    dec bc                                        ; $6f3b: $0b
    dec hl                                        ; $6f3c: $2b
    ld b, l                                       ; $6f3d: $45
    db $e3                                        ; $6f3e: $e3
    adc d                                         ; $6f3f: $8a
    sub c                                         ; $6f40: $91
    cp a                                          ; $6f41: $bf
    add [hl]                                      ; $6f42: $86
    ld a, l                                       ; $6f43: $7d
    ld d, e                                       ; $6f44: $53
    inc h                                         ; $6f45: $24
    ld [hl], a                                    ; $6f46: $77
    adc c                                         ; $6f47: $89
    ld c, b                                       ; $6f48: $48
    ei                                            ; $6f49: $fb
    add b                                         ; $6f4a: $80
    sub h                                         ; $6f4b: $94
    or a                                          ; $6f4c: $b7
    daa                                           ; $6f4d: $27
    jp Jump_02e_415d                              ; $6f4e: $c3 $5d $41


    push af                                       ; $6f51: $f5
    ld l, $2d                                     ; $6f52: $2e $2d
    inc bc                                        ; $6f54: $03
    jp c, Jump_02e_5775                           ; $6f55: $da $75 $57

    ret nc                                        ; $6f58: $d0

    ld [hl-], a                                   ; $6f59: $32
    and b                                         ; $6f5a: $a0
    push af                                       ; $6f5b: $f5
    ld l, b                                       ; $6f5c: $68
    ret                                           ; $6f5d: $c9


    pop bc                                        ; $6f5e: $c1
    rra                                           ; $6f5f: $1f
    rlca                                          ; $6f60: $07
    sub l                                         ; $6f61: $95
    ld [hl], c                                    ; $6f62: $71
    dec l                                         ; $6f63: $2d
    sbc [hl]                                      ; $6f64: $9e
    ld e, a                                       ; $6f65: $5f
    jr z, jr_02e_6ef7                             ; $6f66: $28 $8f

    jp c, $5b43                                   ; $6f68: $da $43 $5b

    ld e, c                                       ; $6f6b: $59
    ld [hl], a                                    ; $6f6c: $77
    dec b                                         ; $6f6d: $05
    dec c                                         ; $6f6e: $0d
    cp $ae                                        ; $6f6f: $fe $ae
    ld d, a                                       ; $6f71: $57
    and l                                         ; $6f72: $a5
    adc h                                         ; $6f73: $8c
    or $ba                                        ; $6f74: $f6 $ba
    rst $18                                       ; $6f76: $df
    ei                                            ; $6f77: $fb
    rl [hl]                                       ; $6f78: $cb $16
    sub c                                         ; $6f7a: $91
    ld b, $1f                                     ; $6f7b: $06 $1f
    inc sp                                        ; $6f7d: $33
    and b                                         ; $6f7e: $a0
    ld c, d                                       ; $6f7f: $4a
    sbc a                                         ; $6f80: $9f
    add $15                                       ; $6f81: $c6 $15
    adc e                                         ; $6f83: $8b
    rst $20                                       ; $6f84: $e7
    inc d                                         ; $6f85: $14
    ld sp, hl                                     ; $6f86: $f9
    ld c, $87                                     ; $6f87: $0e $87
    dec bc                                        ; $6f89: $0b
    cp $f8                                        ; $6f8a: $fe $f8
    ld e, l                                       ; $6f8c: $5d
    sbc a                                         ; $6f8d: $9f
    ld e, h                                       ; $6f8e: $5c
    ld h, e                                       ; $6f8f: $63
    ld e, $c4                                     ; $6f90: $1e $c4
    cp [hl]                                       ; $6f92: $be
    halt                                          ; $6f93: $76
    cp l                                          ; $6f94: $bd
    rst $38                                       ; $6f95: $ff
    xor l                                         ; $6f96: $ad
    ld e, e                                       ; $6f97: $5b
    sbc d                                         ; $6f98: $9a
    ld b, l                                       ; $6f99: $45
    add sp, -$04                                  ; $6f9a: $e8 $fc
    ld [hl], c                                    ; $6f9c: $71
    xor l                                         ; $6f9d: $ad
    ld [hl-], a                                   ; $6f9e: $32
    ld d, $6a                                     ; $6f9f: $16 $6a
    call Call_02e_5f03                            ; $6fa1: $cd $03 $5f
    ld l, b                                       ; $6fa4: $68
    xor c                                         ; $6fa5: $a9
    and d                                         ; $6fa6: $a2
    ld [$be79], sp                                ; $6fa7: $08 $79 $be
    and e                                         ; $6faa: $a3
    cp $c8                                        ; $6fab: $fe $c8
    ld a, $2d                                     ; $6fad: $3e $2d
    inc bc                                        ; $6faf: $03
    ld e, d                                       ; $6fb0: $5a
    add sp, $7a                                   ; $6fb1: $e8 $7a
    sbc a                                         ; $6fb3: $9f
    daa                                           ; $6fb4: $27
    sub a                                         ; $6fb5: $97
    xor l                                         ; $6fb6: $ad
    sub c                                         ; $6fb7: $91
    ld d, $0f                                     ; $6fb8: $16 $0f
    ld [$23f5], sp                                ; $6fba: $08 $f5 $23
    ld l, a                                       ; $6fbd: $6f
    ld bc, $35f5                                  ; $6fbe: $01 $f5 $35
    and $41                                       ; $6fc1: $e6 $41
    call z, $fa70                                 ; $6fc3: $cc $70 $fa
    and h                                         ; $6fc6: $a4
    rst $08                                       ; $6fc7: $cf
    ld hl, $9df2                                  ; $6fc8: $21 $f2 $9d
    cp $20                                        ; $6fcb: $fe $20
    ld h, [hl]                                    ; $6fcd: $66
    and l                                         ; $6fce: $a5
    add sp, -$04                                  ; $6fcf: $e8 $fc
    cp c                                          ; $6fd1: $b9
    dec [hl]                                      ; $6fd2: $35
    call $9273                                    ; $6fd3: $cd $73 $92
    adc a                                         ; $6fd6: $8f
    dec hl                                        ; $6fd7: $2b
    and [hl]                                      ; $6fd8: $a6
    rst $38                                       ; $6fd9: $ff
    ld bc, $7563                                  ; $6fda: $01 $63 $75
    or $1f                                        ; $6fdd: $f6 $1f
    cp c                                          ; $6fdf: $b9
    ld d, [hl]                                    ; $6fe0: $56
    add hl, de                                    ; $6fe1: $19
    add $fb                                       ; $6fe2: $c6 $fb
    ld a, c                                       ; $6fe4: $79
    dec bc                                        ; $6fe5: $0b
    ld e, l                                       ; $6fe6: $5d
    ret c                                         ; $6fe7: $d8

    cp [hl]                                       ; $6fe8: $be
    ld b, [hl]                                    ; $6fe9: $46
    sbc d                                         ; $6fea: $9a
    adc e                                         ; $6feb: $8b
    ld h, l                                       ; $6fec: $65
    adc $b5                                       ; $6fed: $ce $b5
    add $22                                       ; $6fef: $c6 $22
    rst $18                                       ; $6ff1: $df
    ld c, c                                       ; $6ff2: $49
    ld a, a                                       ; $6ff3: $7f
    ld l, c                                       ; $6ff4: $69
    cp c                                          ; $6ff5: $b9
    ld hl, $42ad                                  ; $6ff6: $21 $ad $42
    ld b, c                                       ; $6ff9: $41
    rst $20                                       ; $6ffa: $e7
    ld [hl], c                                    ; $6ffb: $71
    xor l                                         ; $6ffc: $ad
    ld a, d                                       ; $6ffd: $7a
    sbc a                                         ; $6ffe: $9f
    db $e4                                        ; $6fff: $e4
    dec bc                                        ; $7000: $0b
    xor l                                         ; $7001: $ad
    pop af                                        ; $7002: $f1
    ld e, e                                       ; $7003: $5b
    ld h, e                                       ; $7004: $63
    ld l, $cf                                     ; $7005: $2e $cf
    ld e, e                                       ; $7007: $5b
    daa                                           ; $7008: $27
    db $fd                                        ; $7009: $fd
    di                                            ; $700a: $f3
    dec [hl]                                      ; $700b: $35
    or [hl]                                       ; $700c: $b6
    ret nz                                        ; $700d: $c0

    dec d                                         ; $700e: $15
    inc de                                        ; $700f: $13
    adc l                                         ; $7010: $8d
    xor e                                         ; $7011: $ab
    ld b, d                                       ; $7012: $42
    push hl                                       ; $7013: $e5
    dec sp                                        ; $7014: $3b
    jp c, $9680                                   ; $7015: $da $80 $96

    add c                                         ; $7018: $81
    ei                                            ; $7019: $fb
    ei                                            ; $701a: $fb
    dec bc                                        ; $701b: $0b
    adc l                                         ; $701c: $8d
    rst $18                                       ; $701d: $df
    sbc d                                         ; $701e: $9a
    xor [hl]                                      ; $701f: $ae
    cpl                                           ; $7020: $2f
    or [hl]                                       ; $7021: $b6
    ld a, [c]                                     ; $7022: $f2
    ld d, $f5                                     ; $7023: $16 $f5
    or l                                          ; $7025: $b5
    ld a, a                                       ; $7026: $7f
    scf                                           ; $7027: $37
    ld [hl], a                                    ; $7028: $77
    ld h, h                                       ; $7029: $64
    or h                                          ; $702a: $b4
    add $62                                       ; $702b: $c6 $62
    ld [hl], l                                    ; $702d: $75
    halt                                          ; $702e: $76
    ld sp, hl                                     ; $702f: $f9
    ld b, e                                       ; $7030: $43
    rst $10                                       ; $7031: $d7

Call_02e_7032:
Jump_02e_7032:
    ld [hl-], a                                   ; $7032: $32
    and b                                         ; $7033: $a0
    ld de, $01ac                                  ; $7034: $11 $ac $01
    adc h                                         ; $7037: $8c
    ld d, b                                       ; $7038: $50
    inc l                                         ; $7039: $2c
    ld l, l                                       ; $703a: $6d
    add sp, $1a                                   ; $703b: $e8 $1a
    ld a, h                                       ; $703d: $7c
    db $ed                                        ; $703e: $ed
    ld h, d                                       ; $703f: $62
    cp a                                          ; $7040: $bf
    ret nc                                        ; $7041: $d0

    ld a, [de]                                    ; $7042: $1a
    ld [hl], e                                    ; $7043: $73
    ld h, c                                       ; $7044: $61
    add hl, hl                                    ; $7045: $29
    ld c, d                                       ; $7046: $4a
    xor $58                                       ; $7047: $ee $58
    ld [hl], e                                    ; $7049: $73
    xor a                                         ; $704a: $af
    ret                                           ; $704b: $c9


    ld e, e                                       ; $704c: $5b
    sbc l                                         ; $704d: $9d
    ld e, $26                                     ; $704e: $1e $26
    rst $20                                       ; $7050: $e7
    and d                                         ; $7051: $a2
    rlca                                          ; $7052: $07
    cp $35                                        ; $7053: $fe $35
    jp nc, Jump_000_07ae                          ; $7055: $d2 $ae $07

    rla                                           ; $7058: $17
    ld e, e                                       ; $7059: $5b
    ld e, [hl]                                    ; $705a: $5e
    sbc e                                         ; $705b: $9b
    ret c                                         ; $705c: $d8

    ld [bc], a                                    ; $705d: $02
    daa                                           ; $705e: $27
    db $fd                                        ; $705f: $fd
    ld sp, $46b6                                  ; $7060: $31 $b6 $46
    adc $5d                                       ; $7063: $ce $5d
    and e                                         ; $7065: $a3
    rlca                                          ; $7066: $07
    or c                                          ; $7067: $b1
    rst $38                                       ; $7068: $ff
    ld h, d                                       ; $7069: $62
    call Call_02e_4fc3                            ; $706a: $cd $c3 $4f
    or c                                          ; $706d: $b1
    ret nz                                        ; $706e: $c0

    ld de, $b14c                                  ; $706f: $11 $4c $b1
    add $31                                       ; $7072: $c6 $31
    ld a, [c]                                     ; $7074: $f2
    ld d, $a7                                     ; $7075: $16 $a7
    ld e, e                                       ; $7077: $5b
    dec a                                         ; $7078: $3d
    cp d                                          ; $7079: $ba
    db $eb                                        ; $707a: $eb
    rst $10                                       ; $707b: $d7
    ld h, $b6                                     ; $707c: $26 $b6
    sbc l                                         ; $707e: $9d
    cp h                                          ; $707f: $bc
    ld l, [hl]                                    ; $7080: $6e
    inc l                                         ; $7081: $2c
    add l                                         ; $7082: $85
    ld a, [$55c9]                                 ; $7083: $fa $c9 $55
    add [hl]                                      ; $7086: $86
    or c                                          ; $7087: $b1
    ld l, h                                       ; $7088: $6c
    adc l                                         ; $7089: $8d
    ld a, c                                       ; $708a: $79
    db $10                                        ; $708b: $10
    inc sp                                        ; $708c: $33
    ld [hl], b                                    ; $708d: $70
    jp Jump_02e_7e35                              ; $708e: $c3 $35 $7e


    ld h, e                                       ; $7091: $63
    db $f4                                        ; $7092: $f4
    ld hl, $16f2                                  ; $7093: $21 $f2 $16
    daa                                           ; $7096: $27
    ret c                                         ; $7097: $d8

    ld e, b                                       ; $7098: $58
    cp $22                                        ; $7099: $fe $22
    inc [hl]                                      ; $709b: $34
    ld l, [hl]                                    ; $709c: $6e
    sub l                                         ; $709d: $95
    ld a, [c]                                     ; $709e: $f2
    inc a                                         ; $709f: $3c
    sbc a                                         ; $70a0: $9f
    ld c, d                                       ; $70a1: $4a
    pop de                                        ; $70a2: $d1
    cp $5d                                        ; $70a3: $fe $5d
    ld b, c                                       ; $70a5: $41
    ld l, e                                       ; $70a6: $6b
    inc l                                         ; $70a7: $2c
    ld d, [hl]                                    ; $70a8: $56
    ld [$26d4], a                                 ; $70a9: $ea $d4 $26
    xor $b8                                       ; $70ac: $ee $b8
    or d                                          ; $70ae: $b2
    add $dc                                       ; $70af: $c6 $dc
    cp d                                          ; $70b1: $ba
    and l                                         ; $70b2: $a5
    ld h, l                                       ; $70b3: $65

jr_02e_70b4:
    ldh [$ae], a                                  ; $70b4: $e0 $ae
    ld d, d                                       ; $70b6: $52
    inc [hl]                                      ; $70b7: $34
    add $16                                       ; $70b8: $c6 $16
    ld e, d                                       ; $70ba: $5a
    db $e3                                        ; $70bb: $e3
    xor a                                         ; $70bc: $af
    jp nc, $af97                                  ; $70bd: $d2 $97 $af

    ret c                                         ; $70c0: $d8

    ld a, $20                                     ; $70c1: $3e $20
    push hl                                       ; $70c3: $e5
    xor e                                         ; $70c4: $ab
    xor a                                         ; $70c5: $af
    ld a, l                                       ; $70c6: $7d
    xor l                                         ; $70c7: $ad
    ld de, $5e74                                  ; $70c8: $11 $74 $5e

jr_02e_70cb:
    ld d, e                                       ; $70cb: $53
    jr nz, jr_02e_70b4                            ; $70cc: $20 $e6

    ld a, [$f2e4]                                 ; $70ce: $fa $e4 $f2
    jp c, $16c4                                   ; $70d1: $da $c4 $16

    ld e, c                                       ; $70d4: $59
    ld [hl], $d2                                  ; $70d5: $36 $d2
    ld e, h                                       ; $70d7: $5c
    inc l                                         ; $70d8: $2c
    ld [hl], e                                    ; $70d9: $73
    xor [hl]                                      ; $70da: $ae
    cp h                                          ; $70db: $bc
    dec b                                         ; $70dc: $05

Jump_02e_70dd:
    and a                                         ; $70dd: $a7
    ld h, d                                       ; $70de: $62
    pop de                                        ; $70df: $d1
    cp a                                          ; $70e0: $bf
    ld d, h                                       ; $70e1: $54
    sbc e                                         ; $70e2: $9b
    cp b                                          ; $70e3: $b8
    ld a, [$c377]                                 ; $70e4: $fa $77 $c3
    jp hl                                         ; $70e7: $e9


    sub e                                         ; $70e8: $93
    ld a, $87                                     ; $70e9: $3e $87
    ld h, l                                       ; $70eb: $65
    ld b, b                                       ; $70ec: $40
    dec h                                         ; $70ed: $25
    inc bc                                        ; $70ee: $03
    jp c, Jump_02e_7ec5                           ; $70ef: $da $c5 $7e

    and c                                         ; $70f2: $a1

jr_02e_70f3:
    cp h                                          ; $70f3: $bc
    dec b                                         ; $70f4: $05
    ld e, l                                       ; $70f5: $5d
    ret c                                         ; $70f6: $d8

    jp nc, $3486                                  ; $70f7: $d2 $86 $34

    xor [hl]                                      ; $70fa: $ae
    jr jr_02e_7158                                ; $70fb: $18 $5b

    ldh [$8a], a                                  ; $70fd: $e0 $8a
    ld h, l                                       ; $70ff: $65
    ld b, b                                       ; $7100: $40
    set 2, [hl]                                   ; $7101: $cb $d6
    ld [bc], a                                    ; $7103: $02
    jr nc, jr_02e_715c                            ; $7104: $30 $56

    ld [$abe4], a                                 ; $7106: $ea $e4 $ab
    ld a, a                                       ; $7109: $7f
    scf                                           ; $710a: $37
    call c, Call_02e_5483                         ; $710b: $dc $83 $54
    pop bc                                        ; $710e: $c1
    db $db                                        ; $710f: $db
    adc d                                         ; $7110: $8a
    or $1f                                        ; $7111: $f6 $1f
    jr nc, jr_02e_7147                            ; $7113: $30 $32

    ld e, b                                       ; $7115: $58
    push af                                       ; $7116: $f5
    ld l, b                                       ; $7117: $68
    ld e, h                                       ; $7118: $5c
    ld l, e                                       ; $7119: $6b
    inc l                                         ; $711a: $2c
    ld b, d                                       ; $711b: $42
    ld a, c                                       ; $711c: $79
    dec bc                                        ; $711d: $0b
    ld e, c                                       ; $711e: $59
    ld [hl], a                                    ; $711f: $77
    dec b                                         ; $7120: $05
    db $ed                                        ; $7121: $ed
    ld a, [hl]                                    ; $7122: $7e
    adc h                                         ; $7123: $8c
    ccf                                           ; $7124: $3f
    db $fc                                        ; $7125: $fc
    db $e3                                        ; $7126: $e3
    ld e, d                                       ; $7127: $5a
    di                                            ; $7128: $f3
    db $fc                                        ; $7129: $fc
    cp d                                          ; $712a: $ba
    rst $20                                       ; $712b: $e7
    dec sp                                        ; $712c: $3b
    ld a, h                                       ; $712d: $7c
    ld c, l                                       ; $712e: $4d
    add c                                         ; $712f: $81
    jr jr_02e_70cb                                ; $7130: $18 $99

    di                                            ; $7132: $f3
    db $e4                                        ; $7133: $e4
    ld c, [hl]                                    ; $7134: $4e
    inc d                                         ; $7135: $14
    add e                                         ; $7136: $83
    and l                                         ; $7137: $a5
    jr z, jr_02e_70f3                             ; $7138: $28 $b9

    rst $30                                       ; $713a: $f7
    ld h, a                                       ; $713b: $67
    res 0, b                                      ; $713c: $cb $80
    ld c, d                                       ; $713e: $4a
    ld b, $b4                                     ; $713f: $06 $b4
    adc e                                         ; $7141: $8b
    db $fd                                        ; $7142: $fd
    ld b, d                                       ; $7143: $42

jr_02e_7144:
    xor e                                         ; $7144: $ab
    or e                                          ; $7145: $b3
    or h                                          ; $7146: $b4

jr_02e_7147:
    and c                                         ; $7147: $a1
    dec hl                                        ; $7148: $2b
    ld l, a                                       ; $7149: $6f
    ld bc, $6a27                                  ; $714a: $01 $27 $6a
    sub l                                         ; $714d: $95
    ld d, [hl]                                    ; $714e: $56
    inc c                                         ; $714f: $0c
    inc hl                                        ; $7150: $23
    ld [hl], h                                    ; $7151: $74
    cp $1a                                        ; $7152: $fe $1a
    adc e                                         ; $7154: $8b
    pop de                                        ; $7155: $d1
    inc bc                                        ; $7156: $03
    ld e, d                                       ; $7157: $5a

jr_02e_7158:
    ld [$6d4a], sp                                ; $7158: $08 $4a $6d
    ld h, d                                       ; $715b: $62

jr_02e_715c:
    dec bc                                        ; $715c: $0b
    dec e                                         ; $715d: $1d
    ld e, $ee                                     ; $715e: $1e $ee
    cp a                                          ; $7160: $bf
    cp a                                          ; $7161: $bf
    and [hl]                                      ; $7162: $a6
    ld b, b                                       ; $7163: $40
    call nc, $b626                                ; $7164: $d4 $26 $b6
    ld b, a                                       ; $7167: $47
    cp h                                          ; $7168: $bc
    ccf                                           ; $7169: $3f
    ld a, [hl]                                    ; $716a: $7e
    or a                                          ; $716b: $b7
    db $eb                                        ; $716c: $eb
    ld a, d                                       ; $716d: $7a
    adc $93                                       ; $716e: $ce $93
    ld h, e                                       ; $7170: $63
    ld e, $c4                                     ; $7171: $1e $c4
    sbc d                                         ; $7173: $9a
    rlca                                          ; $7174: $07
    adc h                                         ; $7175: $8c
    adc $1f                                       ; $7176: $ce $1f
    and e                                         ; $7178: $a3
    adc a                                         ; $7179: $8f

jr_02e_717a:
    sbc [hl]                                      ; $717a: $9e
    ld e, h                                       ; $717b: $5c
    ld h, l                                       ; $717c: $65
    jr jr_02e_717a                                ; $717d: $18 $fb

    ld e, d                                       ; $717f: $5a
    jp c, $1490                                   ; $7180: $da $90 $14

    ld l, e                                       ; $7183: $6b
    inc l                                         ; $7184: $2c
    add $b5                                       ; $7185: $c6 $b5
    sub h                                         ; $7187: $94
    inc bc                                        ; $7188: $03
    ld d, d                                       ; $7189: $52
    sbc $02                                       ; $718a: $de $02
    ld e, c                                       ; $718c: $59
    ld [hl], a                                    ; $718d: $77
    dec b                                         ; $718e: $05
    dec c                                         ; $718f: $0d
    cpl                                           ; $7190: $2f
    call z, $1277                                 ; $7191: $cc $77 $12
    jr nc, jr_02e_7144                            ; $7194: $30 $ae

    di                                            ; $7196: $f3
    ld d, a                                       ; $7197: $57
    xor $4f                                       ; $7198: $ee $4f
    ld e, b                                       ; $719a: $58
    sub $3c                                       ; $719b: $d6 $3c
    ldh a, [rNR33]                                ; $719d: $f0 $1d
    jp hl                                         ; $719f: $e9


    add $7a                                       ; $71a0: $c6 $7a
    inc de                                        ; $71a2: $13
    dec l                                         ; $71a3: $2d
    sra l                                         ; $71a4: $cb $2d

jr_02e_71a6:
    sub l                                         ; $71a6: $95

Jump_02e_71a7:
    ld d, d                                       ; $71a7: $52
    sbc $02                                       ; $71a8: $de $02
    ld e, c                                       ; $71aa: $59
    ld l, h                                       ; $71ab: $6c
    ld sp, hl                                     ; $71ac: $f9
    push bc                                       ; $71ad: $c5
    sub $52                                       ; $71ae: $d6 $52
    xor b                                         ; $71b0: $a8
    sbc a                                         ; $71b1: $9f
    ld e, h                                       ; $71b2: $5c
    ld h, l                                       ; $71b3: $65
    ld c, e                                       ; $71b4: $4b
    xor c                                         ; $71b5: $a9
    inc d                                         ; $71b6: $14
    dec h                                         ; $71b7: $25
    ld [hl], a                                    ; $71b8: $77
    db $dd                                        ; $71b9: $dd
    dec d                                         ; $71ba: $15
    inc [hl]                                      ; $71bb: $34
    cp h                                          ; $71bc: $bc
    ld [hl], b                                    ; $71bd: $70
    add hl, de                                    ; $71be: $19
    cp b                                          ; $71bf: $b8
    ld h, e                                       ; $71c0: $63
    adc c                                         ; $71c1: $89
    pop af                                        ; $71c2: $f1
    add a                                         ; $71c3: $87
    adc h                                         ; $71c4: $8c
    ld a, $ad                                     ; $71c5: $3e $ad
    ld l, e                                       ; $71c7: $6b
    ld [hl], d                                    ; $71c8: $72
    dec h                                         ; $71c9: $25
    rst $00                                       ; $71ca: $c7
    rst $28                                       ; $71cb: $ef
    sub $78                                       ; $71cc: $d6 $78
    db $dd                                        ; $71ce: $dd
    ret c                                         ; $71cf: $d8

    sub c                                         ; $71d0: $91
    ld l, [hl]                                    ; $71d1: $6e
    xor h                                         ; $71d2: $ac
    sub a                                         ; $71d3: $97
    or a                                          ; $71d4: $b7
    and a                                         ; $71d5: $a7
    cp b                                          ; $71d6: $b8
    db $db                                        ; $71d7: $db
    inc bc                                        ; $71d8: $03
    add b                                         ; $71d9: $80
    inc a                                         ; $71da: $3c
    rst $08                                       ; $71db: $cf
    ld e, e                                       ; $71dc: $5b
    daa                                           ; $71dd: $27
    jr z, jr_02e_71a6                             ; $71de: $28 $c6

    inc a                                         ; $71e0: $3c
    inc l                                         ; $71e1: $2c
    ld [hl], l                                    ; $71e2: $75
    sub d                                         ; $71e3: $92
    set 2, [hl]                                   ; $71e4: $cb $d6
    sbc b                                         ; $71e6: $98
    rlca                                          ; $71e7: $07
    ld sp, $5dc3                                  ; $71e8: $31 $c3 $5d
    rrca                                          ; $71eb: $0f
    rst $38                                       ; $71ec: $ff
    ld [hl], l                                    ; $71ed: $75
    adc e                                         ; $71ee: $8b
    jp c, $16c4                                   ; $71ef: $da $c4 $16

    ld b, a                                       ; $71f2: $47
    pop de                                        ; $71f3: $d1
    ld [hl-], a                                   ; $71f4: $32
    and b                                         ; $71f5: $a0
    and l                                         ; $71f6: $a5
    dec c                                         ; $71f7: $0d

Jump_02e_71f8:
    inc bc                                        ; $71f8: $03
    ld [hl], l                                    ; $71f9: $75
    ld a, [hl]                                    ; $71fa: $7e
    dec a                                         ; $71fb: $3d
    and $41                                       ; $71fc: $e6 $41
    adc h                                         ; $71fe: $8c
    ld e, $c4                                     ; $71ff: $1e $c4
    ret c                                         ; $7201: $d8

    rst $08                                       ; $7202: $cf
    ld h, e                                       ; $7203: $63
    ld e, h                                       ; $7204: $5c
    ld sp, $9cfe                                  ; $7205: $31 $fe $9c
    ld e, $7a                                     ; $7208: $1e $7a
    xor h                                         ; $720a: $ac
    adc $2e                                       ; $720b: $ce $2e
    ld de, $6c69                                  ; $720d: $11 $69 $6c
    add c                                         ; $7210: $81
    xor e                                         ; $7211: $ab
    or $d0                                        ; $7212: $f6 $d0
    ld d, $c7                                     ; $7214: $16 $c7
    ld a, [bc]                                    ; $7216: $0a
    sub d                                         ; $7217: $92
    res 7, [hl]                                   ; $7218: $cb $be
    dec de                                        ; $721a: $1b
    ld h, e                                       ; $721b: $63
    jr jr_02e_7299                                ; $721c: $18 $7b

    sub b                                         ; $721e: $90
    ld a, [hl+]                                   ; $721f: $2a
    ld a, b                                       ; $7220: $78
    ld e, e                                       ; $7221: $5b
    pop de                                        ; $7222: $d1
    xor d                                         ; $7223: $aa
    ld b, a                                       ; $7224: $47
    db $e3                                        ; $7225: $e3
    ld e, d                                       ; $7226: $5a
    ld h, e                                       ; $7227: $63
    ld de, $f3ca                                  ; $7228: $11 $ca $f3
    cp h                                          ; $722b: $bc
    dec b                                         ; $722c: $05
    and a                                         ; $722d: $a7
    ld h, d                                       ; $722e: $62
    pop de                                        ; $722f: $d1
    cp a                                          ; $7230: $bf
    ld d, h                                       ; $7231: $54
    sbc e                                         ; $7232: $9b
    cp b                                          ; $7233: $b8
    xor h                                         ; $7234: $ac
    cp e                                          ; $7235: $bb
    add d                                         ; $7236: $82
    ld b, $5f                                     ; $7237: $06 $5f
    jp Jump_02e_769f                              ; $7239: $c3 $9f $76


    cp e                                          ; $723c: $bb
    ld [$5fdf], sp                                ; $723d: $08 $df $5f
    ld h, l                                       ; $7240: $65
    reti                                          ; $7241: $d9


    ld [bc], a                                    ; $7242: $02
    ld d, a                                       ; $7243: $57
    cp [hl]                                       ; $7244: $be
    cp [hl]                                       ; $7245: $be
    ld a, [$f35c]                                 ; $7246: $fa $5c $f3
    ldh a, [rHDMA3]                               ; $7249: $f0 $53
    adc h                                         ; $724b: $8c
    ld l, e                                       ; $724c: $6b
    push de                                       ; $724d: $d5
    jp Jump_02e_6b1f                              ; $724e: $c3 $1f $6b


    ld e, $f8                                     ; $7251: $1e $f8
    adc [hl]                                      ; $7253: $8e
    pop af                                        ; $7254: $f1
    sbc d                                         ; $7255: $9a
    ld [hl], h                                    ; $7256: $74
    ld a, [$fe7d]                                 ; $7257: $fa $7d $fe
    ld a, h                                       ; $725a: $7c
    add [hl]                                      ; $725b: $86
    ccf                                           ; $725c: $3f
    ld [hl], b                                    ; $725d: $70
    add hl, de                                    ; $725e: $19
    cp b                                          ; $725f: $b8
    jp Jump_02e_5cd7                              ; $7260: $c3 $d7 $5c


    and h                                         ; $7263: $a4
    rrca                                          ; $7264: $0f
    jp z, Jump_02e_5f57                           ; $7265: $ca $57 $5f

    dec bc                                        ; $7268: $0b
    ret nz                                        ; $7269: $c0

    ld e, b                                       ; $726a: $58
    inc hl                                        ; $726b: $23
    rrca                                          ; $726c: $0f
    jr nc, jr_02e_72ed                            ; $726d: $30 $7e

    db $d3                                        ; $726f: $d3
    ld [hl-], a                                   ; $7270: $32
    and b                                         ; $7271: $a0
    ld [hl], l                                    ; $7272: $75
    jr nc, @+$70                                  ; $7273: $30 $6e

    sub l                                         ; $7275: $95
    sub $f1                                       ; $7276: $d6 $f1
    ld d, l                                       ; $7278: $55

Call_02e_7279:
    ld l, c                                       ; $7279: $69
    ld d, a                                       ; $727a: $57
    or b                                          ; $727b: $b0
    rla                                           ; $727c: $17
    ld [hl], d                                    ; $727d: $72
    db $db                                        ; $727e: $db
    push af                                       ; $727f: $f5
    ld a, $e9                                     ; $7280: $3e $e9
    sub e                                         ; $7282: $93
    add $ef                                       ; $7283: $c6 $ef
    add $3c                                       ; $7285: $c6 $3c
    db $f4                                        ; $7287: $f4
    ld [hl], c                                    ; $7288: $71
    xor l                                         ; $7289: $ad
    call c, $b90d                                 ; $728a: $dc $0d $b9
    sub $3c                                       ; $728d: $d6 $3c
    ldh a, [$7d]                                  ; $728f: $f0 $7d
    ld de, $1abd                                  ; $7291: $11 $bd $1a
    ld sp, hl                                     ; $7294: $f9
    adc d                                         ; $7295: $8a
    dec l                                         ; $7296: $2d
    xor h                                         ; $7297: $ac
    inc d                                         ; $7298: $14

jr_02e_7299:
    adc l                                         ; $7299: $8d
    dec hl                                        ; $729a: $2b
    sub $3c                                       ; $729b: $d6 $3c
    adc d                                         ; $729d: $8a
    ld [hl], c                                    ; $729e: $71
    db $ed                                        ; $729f: $ed
    ld h, d                                       ; $72a0: $62
    ld e, e                                       ; $72a1: $5b
    sub l                                         ; $72a2: $95
    ld [hl], d                                    ; $72a3: $72
    push hl                                       ; $72a4: $e5
    dec l                                         ; $72a5: $2d
    daa                                           ; $72a6: $27
    ret c                                         ; $72a7: $d8

    jp nz, $d14a                                  ; $72a8: $c2 $4a $d1

    cp b                                          ; $72ab: $b8
    ld h, d                                       ; $72ac: $62
    call Call_000_18a3                            ; $72ad: $cd $a3 $18
    rst $10                                       ; $72b0: $d7
    ld l, $b6                                     ; $72b1: $2e $b6
    ld d, l                                       ; $72b3: $55
    add hl, hl                                    ; $72b4: $29
    ld d, a                                       ; $72b5: $57
    ld l, l                                       ; $72b6: $6d
    ld h, d                                       ; $72b7: $62
    dec bc                                        ; $72b8: $0b
    ld b, a                                       ; $72b9: $47
    ld [$dcfc], sp                                ; $72ba: $08 $fc $dc
    jp c, $16c4                                   ; $72bd: $da $c4 $16

    ld b, a                                       ; $72c0: $47
    pop de                                        ; $72c1: $d1
    ld a, [hl+]                                   ; $72c2: $2a
    jp $fa4f                                      ; $72c3: $c3 $4f $fa


    or $29                                        ; $72c6: $f6 $29
    add hl, sp                                    ; $72c8: $39
    rla                                           ; $72c9: $17
    dec a                                         ; $72ca: $3d
    ldh a, [$af]                                  ; $72cb: $f0 $af
    di                                            ; $72cd: $f3
    rst $00                                       ; $72ce: $c7
    db $ed                                        ; $72cf: $ed
    rst $00                                       ; $72d0: $c7
    sbc b                                         ; $72d1: $98
    rla                                           ; $72d2: $17
    db $e3                                        ; $72d3: $e3
    rst $08                                       ; $72d4: $cf
    jp hl                                         ; $72d5: $e9


    and c                                         ; $72d6: $a1
    ld b, a                                       ; $72d7: $47
    sbc $02                                       ; $72d8: $de $02
    push af                                       ; $72da: $f5
    or l                                          ; $72db: $b5
    xor a                                         ; $72dc: $af
    ld sp, $ce82                                  ; $72dd: $31 $82 $ce
    ld l, e                                       ; $72e0: $6b
    ld a, [bc]                                    ; $72e1: $0a
    call nz, $a032                                ; $72e2: $c4 $32 $a0
    push af                                       ; $72e5: $f5
    ld l, b                                       ; $72e6: $68
    dec bc                                        ; $72e7: $0b
    call $f8d5                                    ; $72e8: $cd $d5 $f8
    db $e3                                        ; $72eb: $e3
    add b                                         ; $72ec: $80

jr_02e_72ed:
    and c                                         ; $72ed: $a1
    jp c, $adc4                                   ; $72ee: $da $c4 $ad

    xor a                                         ; $72f1: $af
    ld a, $d7                                     ; $72f2: $3e $d7
    inc a                                         ; $72f4: $3c
    db $fc                                        ; $72f5: $fc
    inc d                                         ; $72f6: $14
    db $e3                                        ; $72f7: $e3
    ld e, d                                       ; $72f8: $5a
    push af                                       ; $72f9: $f5
    ldh a, [$c7]                                  ; $72fa: $f0 $c7
    sbc d                                         ; $72fc: $9a
    rlca                                          ; $72fd: $07
    cp [hl]                                       ; $72fe: $be
    ld h, e                                       ; $72ff: $63
    cp h                                          ; $7300: $bc
    ld h, $9d                                     ; $7301: $26 $9d
    ld a, [hl]                                    ; $7303: $7e
    sbc a                                         ; $7304: $9f
    ccf                                           ; $7305: $3f
    rst $08                                       ; $7306: $cf
    or a                                          ; $7307: $b7
    and e                                         ; $7308: $a3
    ld l, b                                       ; $7309: $68
    sub l                                         ; $730a: $95
    pop hl                                        ; $730b: $e1
    daa                                           ; $730c: $27
    ld a, l                                       ; $730d: $7d
    ei                                            ; $730e: $fb
    sub h                                         ; $730f: $94
    sbc h                                         ; $7310: $9c
    adc e                                         ; $7311: $8b
    ld e, $f8                                     ; $7312: $1e $f8
    rst $10                                       ; $7314: $d7
    ld sp, hl                                     ; $7315: $f9
    db $e3                                        ; $7316: $e3
    or $63                                        ; $7317: $f6 $63
    call z, $f18b                                 ; $7319: $cc $8b $f1
    rst $20                                       ; $731c: $e7
    db $f4                                        ; $731d: $f4
    ret nc                                        ; $731e: $d0

    inc hl                                        ; $731f: $23
    ld l, a                                       ; $7320: $6f
    ld bc, $3387                                  ; $7321: $01 $87 $33
    ld a, [hl-]                                   ; $7324: $3a
    cp a                                          ; $7325: $bf
    ld e, $f3                                     ; $7326: $1e $f3
    jr nz, @+$48                                  ; $7328: $20 $46

    cp $80                                        ; $732a: $fe $80
    cp c                                          ; $732c: $b9
    xor l                                         ; $732d: $ad
    ld l, b                                       ; $732e: $68
    push de                                       ; $732f: $d5
    xor e                                         ; $7330: $ab
    pop de                                        ; $7331: $d1
    rra                                           ; $7332: $1f
    rst $10                                       ; $7333: $d7
    ld a, [de]                                    ; $7334: $1a
    ld [hl], e                                    ; $7335: $73
    ld b, [hl]                                    ; $7336: $46
    rra                                           ; $7337: $1f
    ld a, l                                       ; $7338: $7d
    reti                                          ; $7339: $d9


    db $10                                        ; $733a: $10
    add hl, de                                    ; $733b: $19
    cp b                                          ; $733c: $b8
    rst $10                                       ; $733d: $d7
    ld e, c                                       ; $733e: $59
    or c                                          ; $733f: $b1
    ld [hl], l                                    ; $7340: $75
    ld b, h                                       ; $7341: $44
    cp c                                          ; $7342: $b9
    ld l, e                                       ; $7343: $6b
    dec c                                         ; $7344: $0d
    dec de                                        ; $7345: $1b
    res 1, e                                      ; $7346: $cb $8b
    rst $10                                       ; $7348: $d7
    or b                                          ; $7349: $b0
    xor l                                         ; $734a: $ad
    xor b                                         ; $734b: $a8
    or $d0                                        ; $734c: $f6 $d0
    ld d, $f5                                     ; $734e: $16 $f5
    db $eb                                        ; $7350: $eb
    ld h, l                                       ; $7351: $65
    rst $10                                       ; $7352: $d7
    set 2, [hl]                                   ; $7353: $cb $d6
    cp [hl]                                       ; $7355: $be
    ld a, [c]                                     ; $7356: $f2
    inc a                                         ; $7357: $3c
    ld e, a                                       ; $7358: $5f
    halt                                          ; $7359: $76
    cp l                                          ; $735a: $bd
    db $ec                                        ; $735b: $ec
    ld a, d                                       ; $735c: $7a
    reti                                          ; $735d: $d9


    jp c, $1ad7                                   ; $735e: $da $d7 $1a

    ld b, c                                       ; $7361: $41
    rst $20                                       ; $7362: $e7
    inc a                                         ; $7363: $3c

jr_02e_7364:
    rst $08                                       ; $7364: $cf
    ld e, e                                       ; $7365: $5b
    ld b, a                                       ; $7366: $47
    ld [hl+], a                                   ; $7367: $22
    add hl, hl                                    ; $7368: $29
    ld [$0f55], a                                 ; $7369: $ea $55 $0f
    ld h, a                                       ; $736c: $67
    or b                                          ; $736d: $b0
    ld [$8fe1], a                                 ; $736e: $ea $e1 $8f
    ld sp, $5c8f                                  ; $7371: $31 $8f $5c
    ld l, e                                       ; $7374: $6b
    ld b, h                                       ; $7375: $44
    ld c, b                                       ; $7376: $48
    ld e, d                                       ; $7377: $5a
    ld a, [$0579]                                 ; $7378: $fa $79 $05
    ld b, l                                       ; $737b: $45
    xor e                                         ; $737c: $ab
    adc h                                         ; $737d: $8c
    add l                                         ; $737e: $85
    add hl, de                                    ; $737f: $19
    ld d, b                                       ; $7380: $50
    sbc $02                                       ; $7381: $de $02
    dec e                                         ; $7383: $1d
    ld [$f555], a                                 ; $7384: $ea $55 $f5
    ld a, [hl+]                                   ; $7387: $2a
    jp $a5d8                                      ; $7388: $c3 $d8 $a5


    add l                                         ; $738b: $85
    call c, Call_000_0690                         ; $738c: $dc $90 $06
    ld e, a                                       ; $738f: $5f
    and e                                         ; $7390: $a3
    ld a, d                                       ; $7391: $7a
    ld d, h                                       ; $7392: $54
    adc a                                         ; $7393: $8f
    call c, Call_000_18d8                         ; $7394: $dc $d8 $18
    rst $28                                       ; $7397: $ef
    rst $20                                       ; $7398: $e7
    ld a, c                                       ; $7399: $79
    sbc $02                                       ; $739a: $de $02
    daa                                           ; $739c: $27
    db $fd                                        ; $739d: $fd
    add hl, de                                    ; $739e: $19
    cp b                                          ; $739f: $b8
    dec c                                         ; $73a0: $0d
    cp [hl]                                       ; $73a1: $be
    ld h, [hl]                                    ; $73a2: $66
    ld b, b                                       ; $73a3: $40
    xor [hl]                                      ; $73a4: $ae
    dec [hl]                                      ; $73a5: $35
    ld [hl+], a                                   ; $73a6: $22
    inc h                                         ; $73a7: $24
    db $ed                                        ; $73a8: $ed
    ld a, d                                       ; $73a9: $7a
    sbc a                                         ; $73aa: $9f
    sub c                                         ; $73ab: $91
    add a                                         ; $73ac: $87
    ld de, $bfbe                                  ; $73ad: $11 $be $bf
    inc c                                         ; $73b0: $0c
    ret c                                         ; $73b1: $d8

    rst $20                                       ; $73b2: $e7
    ld h, e                                       ; $73b3: $63
    ld e, $c4                                     ; $73b4: $1e $c4
    inc c                                         ; $73b6: $0c
    ld e, h                                       ; $73b7: $5c
    rst $20                                       ; $73b8: $e7
    rst $28                                       ; $73b9: $ef
    ld h, d                                       ; $73ba: $62
    ccf                                           ; $73bb: $3f
    inc c                                         ; $73bc: $0c
    inc e                                         ; $73bd: $1c
    di                                            ; $73be: $f3
    ret z                                         ; $73bf: $c8

    or l                                          ; $73c0: $b5
    res 5, d                                      ; $73c1: $cb $aa

jr_02e_73c3:
    ld h, $6f                                     ; $73c3: $26 $6f
    ld bc, $7da7                                  ; $73c5: $01 $a7 $7d
    db $ed                                        ; $73c8: $ed
    ld h, d                                       ; $73c9: $62
    db $db                                        ; $73ca: $db
    cp a                                          ; $73cb: $bf
    or h                                          ; $73cc: $b4
    inc c                                         ; $73cd: $0c
    call c, $c4b1                                 ; $73ce: $dc $b1 $c4
    cp [hl]                                       ; $73d1: $be
    or $1f                                        ; $73d2: $f6 $1f
    call nz, $f50c                                ; $73d4: $c4 $0c $f5
    ld l, c                                       ; $73d7: $69
    adc l                                         ; $73d8: $8d
    push bc                                       ; $73d9: $c5
    jr jr_02e_7364                                ; $73da: $18 $88

    cp h                                          ; $73dc: $bc
    dec b                                         ; $73dd: $05
    ld e, c                                       ; $73de: $59
    ld [hl], a                                    ; $73df: $77
    dec b                                         ; $73e0: $05
    dec l                                         ; $73e1: $2d
    inc bc                                        ; $73e2: $03
    rrca                                          ; $73e3: $0f
    sub e                                         ; $73e4: $93
    dec hl                                        ; $73e5: $2b
    or [hl]                                       ; $73e6: $b6
    adc [hl]                                      ; $73e7: $8e
    jr z, jr_02e_7461                             ; $73e8: $28 $77

    xor l                                         ; $73ea: $ad
    ld h, c                                       ; $73eb: $61
    ld h, e                                       ; $73ec: $63
    ld a, c                                       ; $73ed: $79
    pop af                                        ; $73ee: $f1
    ld a, [de]                                    ; $73ef: $1a

jr_02e_73f0:
    or [hl]                                       ; $73f0: $b6
    dec d                                         ; $73f1: $15
    push de                                       ; $73f2: $d5
    ld e, $da                                     ; $73f3: $1e $da
    ld [bc], a                                    ; $73f5: $02
    push af                                       ; $73f6: $f5
    or l                                          ; $73f7: $b5
    ld a, a                                       ; $73f8: $7f
    rst $10                                       ; $73f9: $d7
    ld e, a                                       ; $73fa: $5f
    jr jr_02e_73c3                                ; $73fb: $18 $c6

    inc e                                         ; $73fd: $1c
    push af                                       ; $73fe: $f5
    sub e                                         ; $73ff: $93
    xor e                                         ; $7400: $ab
    inc c                                         ; $7401: $0c
    ld h, e                                       ; $7402: $63
    and a                                         ; $7403: $a7
    inc a                                         ; $7404: $3c
    ld d, $68                                     ; $7405: $16 $68
    adc h                                         ; $7407: $8c
    add b                                         ; $7408: $80
    ld d, [hl]                                    ; $7409: $56
    ld l, h                                       ; $740a: $6c
    call z, $f22b                                 ; $740b: $cc $2b $f2
    jp c, $16c4                                   ; $740e: $da $c4 $16

    and a                                         ; $7411: $a7
    ld b, b                                       ; $7412: $40
    sbc b                                         ; $7413: $98
    di                                            ; $7414: $f3
    jp c, $9dc4                                   ; $7415: $da $c4 $9d

    db $f4                                        ; $7418: $f4
    ld d, a                                       ; $7419: $57
    xor $c6                                       ; $741a: $ee $c6
    jr jr_02e_73f0                                ; $741c: $18 $d2

    ld e, $a4                                     ; $741e: $1e $a4
    ld a, [bc]                                    ; $7420: $0a
    sbc $6a                                       ; $7421: $de $6a
    inc de                                        ; $7423: $13
    ld e, e                                       ; $7424: $5b
    and a                                         ; $7425: $a7
    inc hl                                        ; $7426: $23
    add hl, hl                                    ; $7427: $29
    rst $08                                       ; $7428: $cf
    di                                            ; $7429: $f3
    ld e, l                                       ; $742a: $5d
    halt                                          ; $742b: $76
    or c                                          ; $742c: $b1
    ld [hl], l                                    ; $742d: $75
    ld a, [hl]                                    ; $742e: $7e
    dec a                                         ; $742f: $3d
    and $41                                       ; $7430: $e6 $41
    db $e4                                        ; $7432: $e4
    dec l                                         ; $7433: $2d
    and a                                         ; $7434: $a7
    call nc, $b173                                ; $7435: $d4 $73 $b1
    call z, $f2b9                                 ; $7438: $cc $b9 $f2
    inc a                                         ; $743b: $3c
    rst $18                                       ; $743c: $df
    or c                                          ; $743d: $b1
    push af                                       ; $743e: $f5
    adc [hl]                                      ; $743f: $8e
    dec [hl]                                      ; $7440: $35
    rst $30                                       ; $7441: $f7
    sbc d                                         ; $7442: $9a
    jp c, $16c4                                   ; $7443: $da $c4 $16

    sbc l                                         ; $7446: $9d
    ld h, b                                       ; $7447: $60
    ld e, a                                       ; $7448: $5f
    db $e3                                        ; $7449: $e3
    ld h, d                                       ; $744a: $62
    call c, $d630                                 ; $744b: $dc $30 $d6
    ld e, b                                       ; $744e: $58
    adc h                                         ; $744f: $8c
    or h                                          ; $7450: $b4
    ld [$4065], a                                 ; $7451: $ea $65 $40
    ld a, $ae                                     ; $7454: $3e $ae
    sbc l                                         ; $7456: $9d
    inc c                                         ; $7457: $0c
    add sp, -$52                                  ; $7458: $e8 $ae
    ld d, d                                       ; $745a: $52
    ld a, [c]                                     ; $745b: $f2
    ld d, $27                                     ; $745c: $16 $27
    cp [hl]                                       ; $745e: $be
    ld e, a                                       ; $745f: $5f
    sbc e                                         ; $7460: $9b

jr_02e_7461:
    cp b                                          ; $7461: $b8
    ld d, e                                       ; $7462: $53
    call nz, $e732                                ; $7463: $c4 $32 $e7
    xor d                                         ; $7466: $aa
    ld c, l                                       ; $7467: $4d
    ld l, h                                       ; $7468: $6c
    ld bc, $23a7                                  ; $7469: $01 $a7 $23
    ld l, c                                       ; $746c: $69
    ld e, h                                       ; $746d: $5c
    db $ec                                        ; $746e: $ec
    rst $20                                       ; $746f: $e7
    ld d, c                                       ; $7470: $51
    sbc e                                         ; $7471: $9b
    cp b                                          ; $7472: $b8
    adc [hl]                                      ; $7473: $8e
    dec b                                         ; $7474: $05
    xor b                                         ; $7475: $a8
    dec sp                                        ; $7476: $3b
    jp c, Jump_000_1029                           ; $7477: $da $29 $10

    and $7c                                       ; $747a: $e6 $7c
    add hl, de                                    ; $747c: $19
    ret nc                                        ; $747d: $d0

    ld l, $11                                     ; $747e: $2e $11
    ld l, c                                       ; $7480: $69
    db $ec                                        ; $7481: $ec
    rst $20                                       ; $7482: $e7
    ld l, $f0                                     ; $7483: $2e $f0
    jp c, $16c4                                   ; $7485: $da $c4 $16

    ld e, c                                       ; $7488: $59
    xor a                                         ; $7489: $af
    xor d                                         ; $748a: $aa
    db $f4                                        ; $748b: $f4
    ld l, c                                       ; $748c: $69
    adc l                                         ; $748d: $8d
    add b                                         ; $748e: $80
    pop de                                        ; $748f: $d1
    and a                                         ; $7490: $a7
    ld a, d                                       ; $7491: $7a
    ld e, b                                       ; $7492: $58
    ld h, d                                       ; $7493: $62
    inc l                                         ; $7494: $2c
    ld [hl], e                                    ; $7495: $73
    ld l, $1f                                     ; $7496: $2e $1f
    ld a, h                                       ; $7498: $7c
    db $ed                                        ; $7499: $ed
    ld h, d                                       ; $749a: $62
    cp a                                          ; $749b: $bf
    ret nc                                        ; $749c: $d0

    ld a, [de]                                    ; $749d: $1a
    ld [hl], e                                    ; $749e: $73
    ld h, c                                       ; $749f: $61
    add hl, hl                                    ; $74a0: $29
    sbc d                                         ; $74a1: $9a
    ld a, [hl]                                    ; $74a2: $7e
    ld e, d                                       ; $74a3: $5a
    ld e, [hl]                                    ; $74a4: $5e
    db $dd                                        ; $74a5: $dd
    inc [hl]                                      ; $74a6: $34
    ld l, [hl]                                    ; $74a7: $6e
    ccf                                           ; $74a8: $3f
    ld d, [hl]                                    ; $74a9: $56
    xor $b7                                       ; $74aa: $ee $b7
    db $eb                                        ; $74ac: $eb
    dec d                                         ; $74ad: $15
    push de                                       ; $74ae: $d5
    ld e, $da                                     ; $74af: $1e $da
    ld [bc], a                                    ; $74b1: $02
    and a                                         ; $74b2: $a7
    ccf                                           ; $74b3: $3f
    adc b                                         ; $74b4: $88
    db $fd                                        ; $74b5: $fd
    cp e                                          ; $74b6: $bb
    ld sp, $7f3a                                  ; $74b7: $31 $3a $7f
    adc l                                         ; $74ba: $8d
    push bc                                       ; $74bb: $c5
    jr jr_02e_7516                                ; $74bc: $18 $58

    or c                                          ; $74be: $b1
    sub c                                         ; $74bf: $91
    ld e, e                                       ; $74c0: $5b
    db $d3                                        ; $74c1: $d3
    ld l, b                                       ; $74c2: $68
    ld bc, $62be                                  ; $74c3: $01 $be $62
    add hl, de                                    ; $74c6: $19
    ld d, b                                       ; $74c7: $50
    add hl, hl                                    ; $74c8: $29
    ld a, [de]                                    ; $74c9: $1a
    sub [hl]                                      ; $74ca: $96
    db $dd                                        ; $74cb: $dd
    ret z                                         ; $74cc: $c8

    sub b                                         ; $74cd: $90
    ld h, [hl]                                    ; $74ce: $66
    ld de, $b518                                  ; $74cf: $11 $18 $b5
    add a                                         ; $74d2: $87
    xor $b8                                       ; $74d3: $ee $b8
    ld [hl-], a                                   ; $74d5: $32
    sub [hl]                                      ; $74d6: $96
    add hl, sp                                    ; $74d7: $39
    rst $10                                       ; $74d8: $d7
    ld [hl-], a                                   ; $74d9: $32
    and b                                         ; $74da: $a0
    sub d                                         ; $74db: $92
    ld bc, $62ed                                  ; $74dc: $01 $ed $62
    cp a                                          ; $74df: $bf
    ld d, b                                       ; $74e0: $50
    sbc $02                                       ; $74e1: $de $02
    push af                                       ; $74e3: $f5
    or l                                          ; $74e4: $b5
    add $1c                                       ; $74e5: $c6 $1c
    or l                                          ; $74e7: $b5
    inc c                                         ; $74e8: $0c
    ld l, b                                       ; $74e9: $68
    rst $10                                       ; $74ea: $d7
    ld e, l                                       ; $74eb: $5d
    ld b, c                                       ; $74ec: $41
    dec hl                                        ; $74ed: $2b
    or [hl]                                       ; $74ee: $b6
    adc [hl]                                      ; $74ef: $8e
    jr z, jr_02e_7569                             ; $74f0: $28 $77

    xor l                                         ; $74f2: $ad
    ld h, c                                       ; $74f3: $61
    ld h, e                                       ; $74f4: $63
    ld a, c                                       ; $74f5: $79
    pop af                                        ; $74f6: $f1
    ld a, [de]                                    ; $74f7: $1a
    or [hl]                                       ; $74f8: $b6
    dec d                                         ; $74f9: $15
    push de                                       ; $74fa: $d5
    ld h, $b6                                     ; $74fb: $26 $b6
    ld e, c                                       ; $74fd: $59
    ld [hl], a                                    ; $74fe: $77
    dec b                                         ; $74ff: $05
    adc l                                         ; $7500: $8d
    cp h                                          ; $7501: $bc
    ld l, [hl]                                    ; $7502: $6e
    adc h                                         ; $7503: $8c
    db $db                                        ; $7504: $db
    ld h, a                                       ; $7505: $67
    ret                                           ; $7506: $c9


    dec b                                         ; $7507: $05
    sbc l                                         ; $7508: $9d
    daa                                           ; $7509: $27
    sbc d                                         ; $750a: $9a
    cp $9a                                        ; $750b: $fe $9a
    ld [bc], a                                    ; $750d: $02
    ld sp, $0b2c                                  ; $750e: $31 $2c $0b
    dec l                                         ; $7511: $2d
    ld l, l                                       ; $7512: $6d
    ld c, b                                       ; $7513: $48
    inc hl                                        ; $7514: $23
    ld [hl], e                                    ; $7515: $73

jr_02e_7516:
    sbc [hl]                                      ; $7516: $9e
    rst $28                                       ; $7517: $ef
    ldh a, [rHDMA2]                               ; $7518: $f0 $52
    sbc $8f                                       ; $751a: $de $8f
    ld sp, $7d0f                                  ; $751c: $31 $0f $7d
    add c                                         ; $751f: $81
    dec hl                                        ; $7520: $2b
    ld [hl], $96                                  ; $7521: $36 $96
    cp a                                          ; $7523: $bf
    ld [$5b8d], sp                                ; $7524: $08 $8d $5b
    and l                                         ; $7527: $a5
    jp hl                                         ; $7528: $e9


    rst $08                                       ; $7529: $cf
    ld e, a                                       ; $752a: $5f
    ld c, d                                       ; $752b: $4a
    di                                            ; $752c: $f3
    rla                                           ; $752d: $17
    sbc d                                         ; $752e: $9a
    add d                                         ; $752f: $82
    add $35                                       ; $7530: $c6 $35
    rla                                           ; $7532: $17
    dec a                                         ; $7533: $3d
    ldh a, [$bc]                                  ; $7534: $f0 $bc
    dec b                                         ; $7536: $05
    dec e                                         ; $7537: $1d
    inc c                                         ; $7538: $0c
    ld h, e                                       ; $7539: $63
    xor a                                         ; $753a: $af
    ei                                            ; $753b: $fb
    pop af                                        ; $753c: $f1
    rst $30                                       ; $753d: $f7
    xor a                                         ; $753e: $af
    ld [hl], l                                    ; $753f: $75
    ld c, l                                       ; $7540: $4d
    adc d                                         ; $7541: $8a
    ld a, d                                       ; $7542: $7a
    call z, $9883                                 ; $7543: $cc $83 $98
    sub l                                         ; $7546: $95
    ld [hl], d                                    ; $7547: $72
    adc e                                         ; $7548: $8b
    jp c, $5b43                                   ; $7549: $da $43 $5b

    daa                                           ; $754c: $27
    ld l, d                                       ; $754d: $6a
    call z, $9883                                 ; $754e: $cc $83 $98
    cp $d2                                        ; $7551: $fe $d2
    add [hl]                                      ; $7553: $86
    and h                                         ; $7554: $a4

jr_02e_7555:
    ld e, b                                       ; $7555: $58
    ld h, e                                       ; $7556: $63
    ld d, c                                       ; $7557: $51
    sbc e                                         ; $7558: $9b
    cp b                                          ; $7559: $b8
    ld h, e                                       ; $755a: $63
    db $fc                                        ; $755b: $fc
    pop hl                                        ; $755c: $e1
    rra                                           ; $755d: $1f
    rst $10                                       ; $755e: $d7
    sbc d                                         ; $755f: $9a
    rst $20                                       ; $7560: $e7
    ld d, a                                       ; $7561: $57
    ld l, l                                       ; $7562: $6d
    ld h, d                                       ; $7563: $62
    dec bc                                        ; $7564: $0b
    rst $00                                       ; $7565: $c7
    sub l                                         ; $7566: $95
    and l                                         ; $7567: $a5
    dec c                                         ; $7568: $0d

jr_02e_7569:
    ld l, b                                       ; $7569: $68
    and $de                                       ; $756a: $e6 $de
    dec [hl]                                      ; $756c: $35
    ret                                           ; $756d: $c9


    rst $00                                       ; $756e: $c7
    or l                                          ; $756f: $b5
    add $f5                                       ; $7570: $c6 $f5
    cp c                                          ; $7572: $b9
    ld l, e                                       ; $7573: $6b
    sub a                                         ; $7574: $97
    ld h, d                                       ; $7575: $62
    adc [hl]                                      ; $7576: $8e
    sub c                                         ; $7577: $91
    ld bc, $f0c5                                  ; $7578: $01 $c5 $f0
    add a                                         ; $757b: $87
    ld a, [hl]                                    ; $757c: $7e
    call c, Call_02e_5f22                         ; $757d: $dc $22 $5f
    rlca                                          ; $7580: $07
    jp $fa4f                                      ; $7581: $c3 $4f $fa


    or $29                                        ; $7584: $f6 $29
    cp c                                          ; $7586: $b9
    ret nz                                        ; $7587: $c0

    push af                                       ; $7588: $f5
    ld l, b                                       ; $7589: $68
    ei                                            ; $758a: $fb
    ld a, [de]                                    ; $758b: $1a
    di                                            ; $758c: $f3
    jr nz, jr_02e_7555                            ; $758d: $20 $c6

    ld l, a                                       ; $758f: $6f
    ld l, [hl]                                    ; $7590: $6e
    sbc a                                         ; $7591: $9f
    and l                                         ; $7592: $a5
    dec [hl]                                      ; $7593: $35
    ld d, $c9                                     ; $7594: $16 $c9
    ld h, l                                       ; $7596: $65

Jump_02e_7597:
    ld l, e                                       ; $7597: $6b
    adc h                                         ; $7598: $8c
    ld h, c                                       ; $7599: $61
    xor h                                         ; $759a: $ac
    jp nc, Jump_000_07ae                          ; $759b: $d2 $ae $07

    rla                                           ; $759e: $17
    ld e, e                                       ; $759f: $5b
    sbc [hl]                                      ; $75a0: $9e
    or a                                          ; $75a1: $b7
    dec e                                         ; $75a2: $1d
    ld e, $ce                                     ; $75a3: $1e $ce
    jr nz, jr_02e_75a9                            ; $75a5: $20 $02

    di                                            ; $75a7: $f3
    ld [hl], l                                    ; $75a8: $75

jr_02e_75a9:
    ld [hl], d                                    ; $75a9: $72
    ld sp, $f7cf                                  ; $75aa: $31 $cf $f7
    or l                                          ; $75ad: $b5
    ld b, [hl]                                    ; $75ae: $46
    ld b, b                                       ; $75af: $40
    ld l, e                                       ; $75b0: $6b
    inc l                                         ; $75b1: $2c
    add $9f                                       ; $75b2: $c6 $9f
    ld d, a                                       ; $75b4: $57
    add sp, $0b                                   ; $75b5: $e8 $0b
    ei                                            ; $75b7: $fb
    or c                                          ; $75b8: $b1
    ld [$de61], a                                 ; $75b9: $ea $61 $de
    ld [bc], a                                    ; $75bc: $02
    daa                                           ; $75bd: $27
    db $fd                                        ; $75be: $fd
    ld [hl], c                                    ; $75bf: $71

Call_02e_75c0:
    ld sp, $486e                                  ; $75c0: $31 $6e $48
    ld l, e                                       ; $75c3: $6b
    call z, Call_02e_7c8b                         ; $75c4: $cc $8b $7c
    ld e, h                                       ; $75c7: $5c
    dec sp                                        ; $75c8: $3b
    push hl                                       ; $75c9: $e5
    or c                                          ; $75ca: $b1
    ld b, b                                       ; $75cb: $40
    xor e                                         ; $75cc: $ab
    or e                                          ; $75cd: $b3
    ld c, $d7                                     ; $75ce: $0e $d7
    ld sp, $1bef                                  ; $75d0: $31 $ef $1b
    bit 1, d                                      ; $75d3: $cb $4a
    ret                                           ; $75d5: $c9


    ld e, e                                       ; $75d6: $5b
    ld b, a                                       ; $75d7: $47
    sub l                                         ; $75d8: $95
    and d                                         ; $75d9: $a2
    ld a, l                                       ; $75da: $7d
    db $ed                                        ; $75db: $ed
    ccf                                           ; $75dc: $3f
    adc b                                         ; $75dd: $88
    ld e, l                                       ; $75de: $5d
    cp $d0                                        ; $75df: $fe $d0
    ld l, l                                       ; $75e1: $6d
    adc l                                         ; $75e2: $8d
    ld b, l                                       ; $75e3: $45
    cp [hl]                                       ; $75e4: $be
    and e                                         ; $75e5: $a3
    ld l, b                                       ; $75e6: $68
    ld d, l                                       ; $75e7: $55
    rst $10                                       ; $75e8: $d7
    sub l                                         ; $75e9: $95
    ld d, $38                                     ; $75ea: $16 $38
    sub l                                         ; $75ec: $95
    and d                                         ; $75ed: $a2
    db $fd                                        ; $75ee: $fd
    rlca                                          ; $75ef: $07
    or c                                          ; $75f0: $b1
    bit 3, a                                      ; $75f1: $cb $5f
    adc l                                         ; $75f3: $8d
    ld hl, $d725                                  ; $75f4: $21 $25 $d7
    and e                                         ; $75f7: $a3
    xor l                                         ; $75f8: $ad
    pop af                                        ; $75f9: $f1
    rlca                                          ; $75fa: $07
    adc h                                         ; $75fb: $8c
    call c, $9690                                 ; $75fc: $dc $90 $96
    add c                                         ; $75ff: $81
    ei                                            ; $7600: $fb
    ei                                            ; $7601: $fb
    dec bc                                        ; $7602: $0b
    dec l                                         ; $7603: $2d
    ld h, l                                       ; $7604: $65
    push bc                                       ; $7605: $c5
    cp b                                          ; $7606: $b8
    ld hl, $db8d                                  ; $7607: $21 $8d $db
    adc a                                         ; $760a: $8f
    dec d                                         ; $760b: $15
    push bc                                       ; $760c: $c5
    xor [hl]                                      ; $760d: $ae
    rlca                                          ; $760e: $07
    push hl                                       ; $760f: $e5
    and c                                         ; $7610: $a1
    rst $00                                       ; $7611: $c7
    adc d                                         ; $7612: $8a
    db $ed                                        ; $7613: $ed
    inc bc                                        ; $7614: $03
    jp nc, $fcb8                                  ; $7615: $d2 $b8 $fc

    ld h, e                                       ; $7618: $63
    ld e, l                                       ; $7619: $5d
    ld d, a                                       ; $761a: $57
    sbc $02                                       ; $761b: $de $02
    dec e                                         ; $761d: $1d
    ld e, a                                       ; $761e: $5f
    inc b                                         ; $761f: $04
    and [hl]                                      ; $7620: $a6
    adc d                                         ; $7621: $8a
    sub d                                         ; $7622: $92
    xor e                                         ; $7623: $ab
    inc c                                         ; $7624: $0c
    ld h, e                                       ; $7625: $63
    ld e, b                                       ; $7626: $58
    sub [hl]                                      ; $7627: $96
    ld [hl], $a0                                  ; $7628: $36 $a0
    ld h, l                                       ; $762a: $65
    ret nz                                        ; $762b: $c0

    ld a, $5f                                     ; $762c: $3e $5f
    push de                                       ; $762e: $d5
    ld [hl], l                                    ; $762f: $75
    and l                                         ; $7630: $a5
    and l                                         ; $7631: $a5
    dec c                                         ; $7632: $0d
    ld e, l                                       ; $7633: $5d
    res 0, b                                      ; $7634: $cb $80
    ld c, d                                       ; $7636: $4a
    ld b, $b4                                     ; $7637: $06 $b4
    adc e                                         ; $7639: $8b
    db $fd                                        ; $763a: $fd
    ld b, d                                       ; $763b: $42
    or l                                          ; $763c: $b5
    adc c                                         ; $763d: $89
    dec l                                         ; $763e: $2d
    rst $00                                       ; $763f: $c7
    sub l                                         ; $7640: $95
    db $fd                                        ; $7641: $fd
    rlca                                          ; $7642: $07
    or c                                          ; $7643: $b1
    or h                                          ; $7644: $b4
    ld bc, $29ad                                  ; $7645: $01 $ad $29
    db $10                                        ; $7648: $10
    db $e3                                        ; $7649: $e3
    ld e, d                                       ; $764a: $5a
    db $e3                                        ; $764b: $e3
    ld [bc], a                                    ; $764c: $02
    ld b, [hl]                                    ; $764d: $46
    or c                                          ; $764e: $b1
    ret nz                                        ; $764f: $c0

    cp l                                          ; $7650: $bd
    ccf                                           ; $7651: $3f
    ld b, [hl]                                    ; $7652: $46
    ld b, b                                       ; $7653: $40
    cp e                                          ; $7654: $bb
    sbc $67                                       ; $7655: $de $67
    inc c                                         ; $7657: $0c
    rst $38                                       ; $7658: $ff
    push hl                                       ; $7659: $e5
    ld e, d                                       ; $765a: $5a
    add a                                         ; $765b: $87
    db $eb                                        ; $765c: $eb
    sbc b                                         ; $765d: $98
    rst $30                                       ; $765e: $f7
    adc l                                         ; $765f: $8d
    ld h, l                                       ; $7660: $65
    and l                                         ; $7661: $a5
    db $e4                                        ; $7662: $e4
    dec sp                                        ; $7663: $3b
    xor [hl]                                      ; $7664: $ae
    inc l                                         ; $7665: $2c
    ld l, l                                       ; $7666: $6d
    ld b, b                                       ; $7667: $40
    set 0, b                                      ; $7668: $cb $c0
    db $fd                                        ; $766a: $fd
    db $fd                                        ; $766b: $fd
    sub c                                         ; $766c: $91
    ccf                                           ; $766d: $3f
    ld h, b                                       ; $766e: $60
    or h                                          ; $766f: $b4
    ld c, e                                       ; $7670: $4b
    set 0, b                                      ; $7671: $cb $c0
    ld e, l                                       ; $7673: $5d
    ld b, c                                       ; $7674: $41
    dec hl                                        ; $7675: $2b
    or [hl]                                       ; $7676: $b6
    adc [hl]                                      ; $7677: $8e
    jr z, jr_02e_76f1                             ; $7678: $28 $77

    xor l                                         ; $767a: $ad
    ld h, c                                       ; $767b: $61
    ld h, e                                       ; $767c: $63
    ld a, c                                       ; $767d: $79
    pop af                                        ; $767e: $f1
    ld a, [de]                                    ; $767f: $1a
    or [hl]                                       ; $7680: $b6
    dec d                                         ; $7681: $15
    push hl                                       ; $7682: $e5
    dec l                                         ; $7683: $2d
    ld b, a                                       ; $7684: $47
    cp h                                          ; $7685: $bc
    rst $38                                       ; $7686: $ff
    dec [hl]                                      ; $7687: $35
    db $e4                                        ; $7688: $e4
    scf                                           ; $7689: $37
    push hl                                       ; $768a: $e5
    db $eb                                        ; $768b: $eb
    ld h, b                                       ; $768c: $60
    jr jr_02e_770a                                ; $768d: $18 $7b

    ld a, a                                       ; $768f: $7f

Jump_02e_7690:
    adc h                                         ; $7690: $8c
    db $ed                                        ; $7691: $ed
    ld a, d                                       ; $7692: $7a
    ld d, l                                       ; $7693: $55
    and l                                         ; $7694: $a5
    ld a, a                                       ; $7695: $7f
    ret                                           ; $7696: $c9


    rst $00                                       ; $7697: $c7
    ld d, l                                       ; $7698: $55
    add hl, de                                    ; $7699: $19
    cp $e4                                        ; $769a: $fe $e4
    or d                                          ; $769c: $b2
    rst $28                                       ; $769d: $ef
    add [hl]                                      ; $769e: $86

Jump_02e_769f:
    xor e                                         ; $769f: $ab
    sbc $df                                       ; $76a0: $de $df
    push af                                       ; $76a2: $f5
    xor d                                         ; $76a3: $aa
    add [hl]                                      ; $76a4: $86
    inc [hl]                                      ; $76a5: $34
    ld a, [hl]                                    ; $76a6: $7e
    scf                                           ; $76a7: $37
    ld b, [hl]                                    ; $76a8: $46
    sbc a                                         ; $76a9: $9f
    ret nz                                        ; $76aa: $c0

    dec d                                         ; $76ab: $15
    ld l, e                                       ; $76ac: $6b
    ld e, $f8                                     ; $76ad: $1e $f8
    ld l, $11                                     ; $76af: $2e $11
    ld l, c                                       ; $76b1: $69
    rra                                           ; $76b2: $1f
    sub b                                         ; $76b3: $90
    ld a, [c]                                     ; $76b4: $f2
    dec e                                         ; $76b5: $1d
    pop af                                        ; $76b6: $f1
    cp $d7                                        ; $76b7: $fe $d7
    ld a, $20                                     ; $76b9: $3e $20
    dec h                                         ; $76bb: $25
    ld [hl], a                                    ; $76bc: $77
    xor h                                         ; $76bd: $ac
    cp c                                          ; $76be: $b9
    rst $10                                       ; $76bf: $d7
    db $e4                                        ; $76c0: $e4
    dec l                                         ; $76c1: $2d
    ld b, a                                       ; $76c2: $47
    cp h                                          ; $76c3: $bc
    rst $38                                       ; $76c4: $ff
    or l                                          ; $76c5: $b5
    rrca                                          ; $76c6: $0f
    ld c, b                                       ; $76c7: $48
    ret                                           ; $76c8: $c9


    sbc l                                         ; $76c9: $9d
    ld a, [c]                                     ; $76ca: $f2
    ld a, [hl]                                    ; $76cb: $7e
    sbc $02                                       ; $76cc: $de $02
    add a                                         ; $76ce: $87
    sub a                                         ; $76cf: $97
    and d                                         ; $76d0: $a2
    di                                            ; $76d1: $f3
    sub e                                         ; $76d2: $93
    jp $b4b2                                      ; $76d3: $c3 $b2 $b4


    ld bc, $032d                                  ; $76d6: $01 $2d $03
    rst $30                                       ; $76d9: $f7
    rst $30                                       ; $76da: $f7
    ld b, a                                       ; $76db: $47
    cp $80                                        ; $76dc: $fe $80
    pop de                                        ; $76de: $d1
    adc [hl]                                      ; $76df: $8e
    ld [hl], h                                    ; $76e0: $74
    ld h, e                                       ; $76e1: $63
    cp l                                          ; $76e2: $bd
    ld [hl], c                                    ; $76e3: $71
    ei                                            ; $76e4: $fb
    or c                                          ; $76e5: $b1
    ld h, d                                       ; $76e6: $62
    dec bc                                        ; $76e7: $0b
    dec hl                                        ; $76e8: $2b
    ld b, l                                       ; $76e9: $45
    db $e3                                        ; $76ea: $e3
    adc d                                         ; $76eb: $8a
    sub c                                         ; $76ec: $91
    cp a                                          ; $76ed: $bf
    add [hl]                                      ; $76ee: $86
    ld a, l                                       ; $76ef: $7d
    ld d, e                                       ; $76f0: $53

jr_02e_76f1:
    db $e4                                        ; $76f1: $e4
    dec l                                         ; $76f2: $2d
    daa                                           ; $76f3: $27
    db $fd                                        ; $76f4: $fd
    ld [hl], c                                    ; $76f5: $71
    ld sp, $486e                                  ; $76f6: $31 $6e $48
    ld [hl], e                                    ; $76f9: $73
    dec b                                         ; $76fa: $05
    ret                                           ; $76fb: $c9


    add a                                         ; $76fc: $87
    rla                                           ; $76fd: $17
    ld h, $77                                     ; $76fe: $26 $77
    xor h                                         ; $7700: $ac
    cp c                                          ; $7701: $b9
    rst $10                                       ; $7702: $d7

Call_02e_7703:
    db $e4                                        ; $7703: $e4
    db $db                                        ; $7704: $db
    add hl, bc                                    ; $7705: $09

jr_02e_7706:
    or [hl]                                       ; $7706: $b6
    or b                                          ; $7707: $b0
    ld d, d                                       ; $7708: $52
    inc [hl]                                      ; $7709: $34

jr_02e_770a:
    xor [hl]                                      ; $770a: $ae
    jr jr_02e_7706                                ; $770b: $18 $f9

    ld l, e                                       ; $770d: $6b
    ret c                                         ; $770e: $d8

    scf                                           ; $770f: $37
    push bc                                       ; $7710: $c5
    inc d                                         ; $7711: $14
    inc [hl]                                      ; $7712: $34
    add e                                         ; $7713: $83
    sub c                                         ; $7714: $91
    ccf                                           ; $7715: $3f
    inc c                                         ; $7716: $0c
    xor h                                         ; $7717: $ac
    ld e, e                                       ; $7718: $5b
    ld l, c                                       ; $7719: $69
    scf                                           ; $771a: $37
    ld [hl-], a                                   ; $771b: $32
    sub [hl]                                      ; $771c: $96
    ld a, [c]                                     ; $771d: $f2
    ld d, $5d                                     ; $771e: $16 $5d
    ret c                                         ; $7720: $d8

    ld l, d                                       ; $7721: $6a
    and [hl]                                      ; $7722: $a6
    and b                                         ; $7723: $a0
    db $e4                                        ; $7724: $e4
    adc [hl]                                      ; $7725: $8e
    dec [hl]                                      ; $7726: $35
    rst $30                                       ; $7727: $f7
    sbc d                                         ; $7728: $9a
    ld a, h                                       ; $7729: $7c
    dec sp                                        ; $772a: $3b
    jp hl                                         ; $772b: $e9


    adc a                                         ; $772c: $8f
    or c                                          ; $772d: $b1
    push de                                       ; $772e: $d5
    reti                                          ; $772f: $d9


    ld a, a                                       ; $7730: $7f
    db $e4                                        ; $7731: $e4
    ld a, [de]                                    ; $7732: $1a
    ld e, c                                       ; $7733: $59
    xor d                                         ; $7734: $aa
    jr z, @+$71                                   ; $7735: $28 $6f

    ld bc, $f8c7                                  ; $7737: $01 $c7 $f8
    jp $ae3f                                      ; $773a: $c3 $3f $ae


    dec [hl]                                      ; $773d: $35
    rst $08                                       ; $773e: $cf
    xor a                                         ; $773f: $af
    ld d, $f5                                     ; $7740: $16 $f5

jr_02e_7742:
    or l                                          ; $7742: $b5

Jump_02e_7743:
    rr a                                          ; $7743: $cb $1f
    add $32                                       ; $7745: $c6 $32
    ld [hl], b                                    ; $7747: $70
    rst $00                                       ; $7748: $c7
    ld [hl-], a                                   ; $7749: $32
    add $80                                       ; $774a: $c6 $80
    ld d, [hl]                                    ; $774c: $56
    and c                                         ; $774d: $a1
    and b                                         ; $774e: $a0
    di                                            ; $774f: $f3
    cp [hl]                                       ; $7750: $be
    sub $58                                       ; $7751: $d6 $58
    xor h                                         ; $7753: $ac
    ld h, [hl]                                    ; $7754: $66
    ld d, [hl]                                    ; $7755: $56
    adc d                                         ; $7756: $8a
    inc a                                         ; $7757: $3c
    rst $18                                       ; $7758: $df
    or d                                          ; $7759: $b2
    xor $0a                                       ; $775a: $ee $0a
    ld a, [de]                                    ; $775c: $1a
    ld a, [hl]                                    ; $775d: $7e
    sub d                                         ; $775e: $92
    ld [hl], e                                    ; $775f: $73
    and h                                         ; $7760: $a4
    cp h                                          ; $7761: $bc
    dec b                                         ; $7762: $05
    push af                                       ; $7763: $f5
    ld e, a                                       ; $7764: $5f
    adc l                                         ; $7765: $8d
    and b                                         ; $7766: $a0
    di                                            ; $7767: $f3
    ld c, [hl]                                    ; $7768: $4e
    ld a, h                                       ; $7769: $7c
    ld e, l                                       ; $776a: $5d
    sub l                                         ; $776b: $95
    db $e4                                        ; $776c: $e4
    adc [hl]                                      ; $776d: $8e
    dec [hl]                                      ; $776e: $35
    rst $30                                       ; $776f: $f7
    sbc d                                         ; $7770: $9a
    jp c, $16c4                                   ; $7771: $da $c4 $16

    push af                                       ; $7774: $f5
    ld e, a                                       ; $7775: $5f
    adc l                                         ; $7776: $8d
    and b                                         ; $7777: $a0
    di                                            ; $7778: $f3
    ld c, [hl]                                    ; $7779: $4e
    ld a, h                                       ; $777a: $7c
    ld e, l                                       ; $777b: $5d
    sub l                                         ; $777c: $95
    db $e4                                        ; $777d: $e4
    ld c, [hl]                                    ; $777e: $4e
    ld a, c                                       ; $777f: $79
    cp a                                          ; $7780: $bf
    ld [hl], $71                                  ; $7781: $36 $71
    sbc l                                         ; $7783: $9d
    ld h, b                                       ; $7784: $60
    ld d, $63                                     ; $7785: $16 $63
    jr nz, jr_02e_7742                            ; $7787: $20 $b9

    rst $30                                       ; $7789: $f7
    ld h, a                                       ; $778a: $67
    db $e3                                        ; $778b: $e3
    adc d                                         ; $778c: $8a
    ld e, l                                       ; $778d: $5d
    add $65                                       ; $778e: $c6 $65
    ret nc                                        ; $7790: $d0

    cp c                                          ; $7791: $b9
    ld [hl], $b1                                  ; $7792: $36 $b1
    dec b                                         ; $7794: $05
    dec e                                         ; $7795: $1d
    cp d                                          ; $7796: $ba
    xor [hl]                                      ; $7797: $ae
    or h                                          ; $7798: $b4
    ret nz                                        ; $7799: $c0

    dec d                                         ; $779a: $15
    push bc                                       ; $779b: $c5
    inc c                                         ; $779c: $0c
    ret z                                         ; $779d: $c8

    dec d                                         ; $779e: $15
    cp e                                          ; $779f: $bb
    sub l                                         ; $77a0: $95
    cp d                                          ; $77a1: $ba
    adc h                                         ; $77a2: $8c
    ld h, d                                       ; $77a3: $62
    pop af                                        ; $77a4: $f1
    ld a, $ad                                     ; $77a5: $3e $ad
    ld sp, $8c27                                  ; $77a7: $31 $27 $8c
    db $e4                                        ; $77aa: $e4
    sbc $5f                                       ; $77ab: $de $5f
    call c, $82ad                                 ; $77ad: $dc $ad $82
    sub b                                         ; $77b0: $90
    db $db                                        ; $77b1: $db
    ld [hl-], a                                   ; $77b2: $32
    ld h, b                                       ; $77b3: $60
    sbc a                                         ; $77b4: $9f
    xor a                                         ; $77b5: $af
    ld [$52ba], a                                 ; $77b6: $ea $ba $52
    ld l, l                                       ; $77b9: $6d
    ld h, d                                       ; $77ba: $62
    dec bc                                        ; $77bb: $0b
    ld b, a                                       ; $77bc: $47
    cp h                                          ; $77bd: $bc
    rst $38                                       ; $77be: $ff
    dec d                                         ; $77bf: $15
    ld h, e                                       ; $77c0: $63
    db $ec                                        ; $77c1: $ec
    or d                                          ; $77c2: $b2
    ld a, a                                       ; $77c3: $7f
    add hl, hl                                    ; $77c4: $29
    sub d                                         ; $77c5: $92
    xor e                                         ; $77c6: $ab
    inc d                                         ; $77c7: $14
    ld l, e                                       ; $77c8: $6b
    inc c                                         ; $77c9: $0c
    jr @+$59                                      ; $77ca: $18 $57

    xor h                                         ; $77cc: $ac
    ld de, $c521                                  ; $77cd: $11 $21 $c5
    cp $03                                        ; $77d0: $fe $03
    ld b, [hl]                                    ; $77d2: $46
    ld b, $9d                                     ; $77d3: $06 $9d
    di                                            ; $77d5: $f3
    ld d, $27                                     ; $77d6: $16 $27
    jp Jump_02e_415d                              ; $77d8: $c3 $5d $41


    push af                                       ; $77db: $f5
    ld l, $8d                                     ; $77dc: $2e $8d
    ld h, b                                       ; $77de: $60
    adc h                                         ; $77df: $8c
    and b                                         ; $77e0: $a0
    ld [hl], e                                    ; $77e1: $73
    ld [hl], d                                    ; $77e2: $72
    dec e                                         ; $77e3: $1d
    dec h                                         ; $77e4: $25
    ld b, [hl]                                    ; $77e5: $46
    ld d, c                                       ; $77e6: $51
    ld a, e                                       ; $77e7: $7b
    ld l, b                                       ; $77e8: $68
    dec bc                                        ; $77e9: $0b
    ld b, a                                       ; $77ea: $47
    ld a, [hl+]                                   ; $77eb: $2a
    halt                                          ; $77ec: $76
    add hl, de                                    ; $77ed: $19
    sub a                                         ; $77ee: $97
    ld b, c                                       ; $77ef: $41
    rst $20                                       ; $77f0: $e7
    db $e4                                        ; $77f1: $e4
    cp b                                          ; $77f2: $b8
    ld h, d                                       ; $77f3: $62

Call_02e_77f4:
    sub a                                         ; $77f4: $97
    ld [hl], c                                    ; $77f5: $71
    add hl, de                                    ; $77f6: $19
    ld [hl], h                                    ; $77f7: $74
    ld c, [hl]                                    ; $77f8: $4e
    adc [hl]                                      ; $77f9: $8e
    dec hl                                        ; $77fa: $2b
    halt                                          ; $77fb: $76
    add hl, de                                    ; $77fc: $19
    sub a                                         ; $77fd: $97
    ld b, c                                       ; $77fe: $41
    rst $20                                       ; $77ff: $e7
    jp c, Jump_02e_65c4                           ; $7800: $da $c4 $65

jr_02e_7803:
    add hl, bc                                    ; $7803: $09
    ld a, [hl-]                                   ; $7804: $3a
    rst $10                                       ; $7805: $d7
    dec hl                                        ; $7806: $2b
    ld [hl], l                                    ; $7807: $75
    or $3e                                        ; $7808: $f6 $3e
    xor l                                         ; $780a: $ad
    call c, Call_02e_7d0d                         ; $780b: $dc $0d $7d
    adc l                                         ; $780e: $8d
    push bc                                       ; $780f: $c5
    ld a, [hl+]                                   ; $7810: $2a
    dec hl                                        ; $7811: $2b
    ld a, c                                       ; $7812: $79
    dec bc                                        ; $7813: $0b
    and a                                         ; $7814: $a7
    add sp, -$0d                                  ; $7815: $e8 $f3
    xor b                                         ; $7817: $a8
    ld d, a                                       ; $7818: $57
    dec a                                         ; $7819: $3d
    ld e, h                                       ; $781a: $5c
    adc a                                         ; $781b: $8f
    sub [hl]                                      ; $781c: $96
    ld e, h                                       ; $781d: $5c
    ld b, a                                       ; $781e: $47
    adc c                                         ; $781f: $89
    ld d, c                                       ; $7820: $51
    call nc, $b626                                ; $7821: $d4 $26 $b6
    dec e                                         ; $7824: $1d
    ld d, b                                       ; $7825: $50
    ret nc                                        ; $7826: $d0

    ld a, c                                       ; $7827: $79
    adc h                                         ; $7828: $8c
    ld bc, $c8ed                                  ; $7829: $01 $ed $c8
    sub e                                         ; $782c: $93
    ld c, [hl]                                    ; $782d: $4e
    inc a                                         ; $782e: $3c
    pop af                                        ; $782f: $f1
    xor b                                         ; $7830: $a8
    ld d, e                                       ; $7831: $53
    sub [hl]                                      ; $7832: $96
    ld bc, $75cd                                  ; $7833: $01 $cd $75
    adc c                                         ; $7836: $89
    ld a, c                                       ; $7837: $79
    add sp, -$07                                  ; $7838: $e8 $f9
    ld a, [hl-]                                   ; $783a: $3a
    jr jr_02e_7803                                ; $783b: $18 $c6

    xor d                                         ; $783d: $aa
    add a                                         ; $783e: $87
    ret                                           ; $783f: $c9


    ld h, l                                       ; $7840: $65

jr_02e_7841:
    ld l, e                                       ; $7841: $6b
    adc l                                         ; $7842: $8d
    rst $18                                       ; $7843: $df
    jp nc, $5d75                                  ; $7844: $d2 $75 $5d

    db $d3                                        ; $7847: $d3
    cp a                                          ; $7848: $bf
    sbc [hl]                                      ; $7849: $9e
    ld l, e                                       ; $784a: $6b
    sub a                                         ; $784b: $97
    ld e, l                                       ; $784c: $5d
    ld l, h                                       ; $784d: $6c
    ld sp, hl                                     ; $784e: $f9
    adc d                                         ; $784f: $8a

jr_02e_7850:
    ld h, d                                       ; $7850: $62
    rla                                           ; $7851: $17
    ei                                            ; $7852: $fb
    add l                                         ; $7853: $85
    and d                                         ; $7854: $a2
    ld [hl], $71                                  ; $7855: $36 $71
    sbc l                                         ; $7857: $9d
    ld h, b                                       ; $7858: $60
    ld b, l                                       ; $7859: $45
    ld sp, $b703                                  ; $785a: $31 $03 $b7
    ld e, b                                       ; $785d: $58
    ldh [$08], a                                  ; $785e: $e0 $08
    ld h, [hl]                                    ; $7860: $66
    xor $c8                                       ; $7861: $ee $c8
    jr z, jr_02e_78bb                             ; $7863: $28 $56

    ld h, a                                       ; $7865: $67
    ld b, l                                       ; $7866: $45
    ld sp, $07f2                                  ; $7867: $31 $f2 $07

jr_02e_786a:
    adc h                                         ; $786a: $8c
    inc a                                         ; $786b: $3c
    ld l, a                                       ; $786c: $6f
    ld bc, $7759                                  ; $786d: $01 $59 $77
    dec b                                         ; $7870: $05
    xor l                                         ; $7871: $ad
    or c                                          ; $7872: $b1
    ld e, b                                       ; $7873: $58
    ld b, a                                       ; $7874: $47
    adc c                                         ; $7875: $89
    ld d, c                                       ; $7876: $51
    inc l                                         ; $7877: $2c
    inc bc                                        ; $7878: $03
    jr c, jr_02e_7841                             ; $7879: $38 $c6

    ld d, [hl]                                    ; $787b: $56
    ld l, c                                       ; $787c: $69
    xor h                                         ; $787d: $ac
    ld l, $2f                                     ; $787e: $2e $2f
    or [hl]                                       ; $7880: $b6
    ld a, h                                       ; $7881: $7c
    push de                                       ; $7882: $d5
    ei                                            ; $7883: $fb
    dec sp                                        ; $7884: $3b
    pop af                                        ; $7885: $f1
    ld [hl], l                                    ; $7886: $75
    ld d, l                                       ; $7887: $55
    ld a, [c]                                     ; $7888: $f2
    push de                                       ; $7889: $d5
    rst $10                                       ; $788a: $d7
    jr jr_02e_7850                                ; $788b: $18 $c3

    sbc b                                         ; $788d: $98
    sub l                                         ; $788e: $95
    ld [hl+], a                                   ; $788f: $22
    sbc a                                         ; $7890: $9f
    rst $18                                       ; $7891: $df
    ld l, $68                                     ; $7892: $2e $68
    ld l, [hl]                                    ; $7894: $6e
    ld l, $5f                                     ; $7895: $2e $5f
    and l                                         ; $7897: $a5
    ret c                                         ; $7898: $d8

    ld h, l                                       ; $7899: $65
    ld e, h                                       ; $789a: $5c
    ld b, $9d                                     ; $789b: $06 $9d
    ld l, e                                       ; $789d: $6b
    inc de                                        ; $789e: $13
    ld e, e                                       ; $789f: $5b
    rst $00                                       ; $78a0: $c7
    sub l                                         ; $78a1: $95
    ld e, b                                       ; $78a2: $58
    inc hl                                        ; $78a3: $23
    ld h, b                                       ; $78a4: $60
    db $f4                                        ; $78a5: $f4
    ld l, c                                       ; $78a6: $69
    ld e, l                                       ; $78a7: $5d
    sub e                                         ; $78a8: $93
    ld l, e                                       ; $78a9: $6b
    sub a                                         ; $78aa: $97
    ld e, l                                       ; $78ab: $5d
    db $ec                                        ; $78ac: $ec
    ld e, e                                       ; $78ad: $5b
    db $ec                                        ; $78ae: $ec
    rst $18                                       ; $78af: $df
    or c                                          ; $78b0: $b1
    ld l, d                                       ; $78b1: $6a
    sbc [hl]                                      ; $78b2: $9e
    sub e                                         ; $78b3: $93
    or $ba                                        ; $78b4: $f6 $ba
    rra                                           ; $78b6: $1f
    or a                                          ; $78b7: $b7
    rra                                           ; $78b8: $1f
    dec hl                                        ; $78b9: $2b
    rst $30                                       ; $78ba: $f7

jr_02e_78bb:
    db $db                                        ; $78bb: $db
    push af                                       ; $78bc: $f5
    adc d                                         ; $78bd: $8a
    sub d                                         ; $78be: $92
    db $d3                                        ; $78bf: $d3
    ld e, a                                       ; $78c0: $5f
    ld d, e                                       ; $78c1: $53
    jr nz, jr_02e_786a                            ; $78c2: $20 $a6

    ld d, d                                       ; $78c4: $52
    inc [hl]                                      ; $78c5: $34
    dec b                                         ; $78c6: $05
    adc l                                         ; $78c7: $8d
    ld b, c                                       ; $78c8: $41
    xor [hl]                                      ; $78c9: $ae
    ld a, h                                       ; $78ca: $7c
    dec e                                         ; $78cb: $1d
    ld e, $2e                                     ; $78cc: $1e $2e
    ld e, e                                       ; $78ce: $5b
    ld [hl], e                                    ; $78cf: $73
    dec b                                         ; $78d0: $05
    ld l, c                                       ; $78d1: $69
    ld a, b                                       ; $78d2: $78
    pop hl                                        ; $78d3: $e1
    sbc d                                         ; $78d4: $9a
    rlca                                          ; $78d5: $07
    cp [hl]                                       ; $78d6: $be
    xor [hl]                                      ; $78d7: $ae
    ret                                           ; $78d8: $c9


    or l                                          ; $78d9: $b5
    add sp, -$3f                                  ; $78da: $e8 $c1
    sub a                                         ; $78dc: $97
    add c                                         ; $78dd: $81
    dec sp                                        ; $78de: $3b
    sub [hl]                                      ; $78df: $96
    ld a, l                                       ; $78e0: $7d
    xor l                                         ; $78e1: $ad
    pop bc                                        ; $78e2: $c1
    inc c                                         ; $78e3: $0c
    ld l, b                                       ; $78e4: $68
    adc [hl]                                      ; $78e5: $8e
    ld a, [$77e3]                                 ; $78e6: $fa $e3 $77
    inc bc                                        ; $78e9: $03
    ld [hl], d                                    ; $78ea: $72
    push hl                                       ; $78eb: $e5
    dec l                                         ; $78ec: $2d
    sbc l                                         ; $78ed: $9d
    ld d, b                                       ; $78ee: $50
    ccf                                           ; $78ef: $3f
    sub d                                         ; $78f0: $92
    jp $9ab2                                      ; $78f1: $c3 $b2 $9a


    reti                                          ; $78f4: $d9


    ldh [$af], a                                  ; $78f5: $e0 $af
    ld a, d                                       ; $78f7: $7a
    sub h                                         ; $78f8: $94
    or a                                          ; $78f9: $b7
    ld b, a                                       ; $78fa: $47
    or c                                          ; $78fb: $b1
    sub a                                         ; $78fc: $97
    ld b, d                                       ; $78fd: $42
    db $fd                                        ; $78fe: $fd
    db $e4                                        ; $78ff: $e4
    ld a, [bc]                                    ; $7900: $0a
    ld b, [hl]                                    ; $7901: $46
    cp l                                          ; $7902: $bd
    and d                                         ; $7903: $a2
    add hl, de                                    ; $7904: $19
    ld h, e                                       ; $7905: $63
    sbc a                                         ; $7906: $9f
    add $ef                                       ; $7907: $c6 $ef
    dec [hl]                                      ; $7909: $35
    or e                                          ; $790a: $b3
    ld d, d                                       ; $790b: $52
    db $e4                                        ; $790c: $e4
    ld a, c                                       ; $790d: $79
    dec bc                                        ; $790e: $0b
    and a                                         ; $790f: $a7
    sbc $38                                       ; $7910: $de $38
    ld h, b                                       ; $7912: $60
    ret c                                         ; $7913: $d8

    and a                                         ; $7914: $a7

Jump_02e_7915:
    add hl, hl                                    ; $7915: $29
    ld a, [de]                                    ; $7916: $1a
    ld b, a                                       ; $7917: $47
    ld e, d                                       ; $7918: $5a
    jp c, $69ad                                   ; $7919: $da $ad $69

    inc b                                         ; $791c: $04
    cp [hl]                                       ; $791d: $be
    add $6f                                       ; $791e: $c6 $6f
    inc e                                         ; $7920: $1c
    ld l, c                                       ; $7921: $69
    add hl, de                                    ; $7922: $19

jr_02e_7923:
    ret nc                                        ; $7923: $d0

    adc d                                         ; $7924: $8a
    sub $ff                                       ; $7925: $d6 $ff
    inc d                                         ; $7927: $14
    or h                                          ; $7928: $b4
    and d                                         ; $7929: $a2
    ld a, l                                       ; $792a: $7d

Call_02e_792b:
    xor b                                         ; $792b: $a8
    ld l, [hl]                                    ; $792c: $6e
    cp $c6                                        ; $792d: $fe $c6
    ld [hl-], a                                   ; $792f: $32
    sub $b7                                       ; $7930: $d6 $b7
    ld c, a                                       ; $7932: $4f
    ld a, c                                       ; $7933: $79
    dec bc                                        ; $7934: $0b
    ld e, c                                       ; $7935: $59
    add $65                                       ; $7936: $c6 $65
    ret nc                                        ; $7938: $d0

    ld a, c                                       ; $7939: $79

jr_02e_793a:
    ld e, h                                       ; $793a: $5c
    dec sp                                        ; $793b: $3b
    pop af                                        ; $793c: $f1
    ld [hl], l                                    ; $793d: $75
    ld d, l                                       ; $793e: $55
    add $72                                       ; $793f: $c6 $72
    inc hl                                        ; $7941: $23
    ld b, b                                       ; $7942: $40
    adc d                                         ; $7943: $8a
    ld a, h                                       ; $7944: $7c
    ld b, a                                       ; $7945: $47
    ld d, l                                       ; $7946: $55
    add hl, hl                                    ; $7947: $29
    dec hl                                        ; $7948: $2b
    push bc                                       ; $7949: $c5
    ld e, b                                       ; $794a: $58
    ld a, [de]                                    ; $794b: $1a
    cp a                                          ; $794c: $bf
    ccf                                           ; $794d: $3f
    ld b, a                                       ; $794e: $47
    ld d, $7e                                     ; $794f: $16 $7e

jr_02e_7951:
    push hl                                       ; $7951: $e5
    dec sp                                        ; $7952: $3b
    push af                                       ; $7953: $f5
    ld l, [hl]                                    ; $7954: $6e
    call c, $2115                                 ; $7955: $dc $15 $21
    ld e, a                                       ; $7958: $5f
    sbc l                                         ; $7959: $9d
    ld [hl], l                                    ; $795a: $75
    sub h                                         ; $795b: $94
    jr jr_02e_7923                                ; $795c: $18 $c5

    sbc d                                         ; $795e: $9a
    rlca                                          ; $795f: $07
    ld a, $7a                                     ; $7960: $3e $7a
    ld b, b                                       ; $7962: $40
    ld [hl], e                                    ; $7963: $73
    db $fd                                        ; $7964: $fd
    db $10                                        ; $7965: $10
    or d                                          ; $7966: $b2
    cp [hl]                                       ; $7967: $be
    ld a, [hl+]                                   ; $7968: $2a
    ld a, l                                       ; $7969: $7d
    jp z, $875b                                   ; $796a: $ca $5b $87

    inc sp                                        ; $796d: $33
    ld a, [hl-]                                   ; $796e: $3a
    cp a                                          ; $796f: $bf
    ld e, $f3                                     ; $7970: $1e $f3
    jr nz, jr_02e_793a                            ; $7972: $20 $c6

    ret nz                                        ; $7974: $c0

    ld a, [hl-]                                   ; $7975: $3a
    ld c, d                                       ; $7976: $4a

jr_02e_7977:
    adc h                                         ; $7977: $8c
    and d                                         ; $7978: $a2
    or $d0                                        ; $7979: $f6 $d0
    dec e                                         ; $797b: $1d
    ld d, a                                       ; $797c: $57
    ld h, [hl]                                    ; $797d: $66

jr_02e_797e:
    ld h, e                                       ; $797e: $63
    ld e, [hl]                                    ; $797f: $5e
    cp c                                          ; $7980: $b9
    xor l                                         ; $7981: $ad
    ld d, d                                       ; $7982: $52
    db $ec                                        ; $7983: $ec
    ld [hl-], a                                   ; $7984: $32
    ld l, $83                                     ; $7985: $2e $83
    adc $e3                                       ; $7987: $ce $e3
    jp c, $af89                                   ; $7989: $da $89 $af

    xor e                                         ; $798c: $ab

Call_02e_798d:
    sub d                                         ; $798d: $92
    or a                                          ; $798e: $b7
    daa                                           ; $798f: $27
    cp [hl]                                       ; $7990: $be
    sbc a                                         ; $7991: $9f
    ld e, h                                       ; $7992: $5c
    or [hl]                                       ; $7993: $b6
    or $b5                                        ; $7994: $f6 $b5

jr_02e_7996:
    ld [hl], d                                    ; $7996: $72
    scf                                           ; $7997: $37
    ld e, h                                       ; $7998: $5c
    ld h, e                                       ; $7999: $63
    ld sp, $f206                                  ; $799a: $31 $06 $f2
    ld [hl], l                                    ; $799d: $75
    inc [hl]                                      ; $799e: $34
    rst $18                                       ; $799f: $df
    push af                                       ; $79a0: $f5
    ld a, $b9                                     ; $79a1: $3e $b9
    sub d                                         ; $79a3: $92
    set 2, [hl]                                   ; $79a4: $cb $d6
    jp nz, $9630                                  ; $79a6: $c2 $30 $96

    add c                                         ; $79a9: $81

Jump_02e_79aa:
    dec sp                                        ; $79aa: $3b
    sub [hl]                                      ; $79ab: $96
    add hl, de                                    ; $79ac: $19
    ld d, [hl]                                    ; $79ad: $56
    jp c, Jump_000_1765                           ; $79ae: $da $65 $17

    ld e, e                                       ; $79b1: $5b
    cp [hl]                                       ; $79b2: $be
    and d                                         ; $79b3: $a2
    ret c                                         ; $79b4: $d8

    push bc                                       ; $79b5: $c5
    ld a, [hl]                                    ; $79b6: $7e
    and c                                         ; $79b7: $a1
    jr jr_02e_7951                                ; $79b8: $18 $97

    dec sp                                        ; $79ba: $3b
    sub $75                                       ; $79bb: $d6 $75
    xor l                                         ; $79bd: $ad
    jr z, jr_02e_7996                             ; $79be: $28 $d6

    inc a                                         ; $79c0: $3c
    daa                                           ; $79c1: $27
    push bc                                       ; $79c2: $c5
    jr jr_02e_797e                                ; $79c3: $18 $b9

    ccf                                           ; $79c5: $3f
    ret nz                                        ; $79c6: $c0

    ld d, d                                       ; $79c7: $52
    ld l, [hl]                                    ; $79c8: $6e
    adc d                                         ; $79c9: $8a
    cp h                                          ; $79ca: $bc
    dec b                                         ; $79cb: $05
    daa                                           ; $79cc: $27
    cp [hl]                                       ; $79cd: $be
    sbc a                                         ; $79ce: $9f
    ld e, h                                       ; $79cf: $5c
    or [hl]                                       ; $79d0: $b6
    or $b5                                        ; $79d1: $f6 $b5
    ld [hl], d                                    ; $79d3: $72
    scf                                           ; $79d4: $37
    ld e, h                                       ; $79d5: $5c
    ld h, e                                       ; $79d6: $63
    ld sp, $f206                                  ; $79d7: $31 $06 $f2
    ld d, $1d                                     ; $79da: $16 $1d
    dec h                                         ; $79dc: $25
    ld b, [hl]                                    ; $79dd: $46
    ld d, c                                       ; $79de: $51
    sbc e                                         ; $79df: $9b
    cp b                                          ; $79e0: $b8
    inc de                                        ; $79e1: $13
    xor $f8                                       ; $79e2: $ee $f8
    add hl, sp                                    ; $79e4: $39
    ld [hl-], a                                   ; $79e5: $32
    ret z                                         ; $79e6: $c8

    ld h, c                                       ; $79e7: $61
    add hl, de                                    ; $79e8: $19
    ret nz                                        ; $79e9: $c0

    pop af                                        ; $79ea: $f1
    rst $30                                       ; $79eb: $f7
    cp a                                          ; $79ec: $bf
    ld d, [hl]                                    ; $79ed: $56
    add hl, de                                    ; $79ee: $19
    jr nc, jr_02e_7977                            ; $79ef: $30 $86

jr_02e_79f1:
    and c                                         ; $79f1: $a1
    ld sp, hl                                     ; $79f2: $f9
    xor l                                         ; $79f3: $ad
    ld bc, $c232                                  ; $79f4: $01 $32 $c2
    rst $30                                       ; $79f7: $f7
    ld h, a                                       ; $79f8: $67
    ret nc                                        ; $79f9: $d0

    ld a, c                                       ; $79fa: $79
    ld l, c                                       ; $79fb: $69
    ei                                            ; $79fc: $fb
    call nc, $a55d                                ; $79fd: $d4 $5d $a5
    ret z                                         ; $7a00: $c8

    ld [hl], a                                    ; $7a01: $77
    ld [c], a                                     ; $7a02: $e2
    ei                                            ; $7a03: $fb
    ret                                           ; $7a04: $c9


    ld h, l                                       ; $7a05: $65
    ld l, e                                       ; $7a06: $6b
    ld e, a                                       ; $7a07: $5f
    dec hl                                        ; $7a08: $2b
    ld [hl], a                                    ; $7a09: $77
    jp $1635                                      ; $7a0a: $c3 $35 $16


    ld h, e                                       ; $7a0d: $63
    ld h, b                                       ; $7a0e: $60
    sub a                                         ; $7a0f: $97
    ld h, d                                       ; $7a10: $62
    and h                                         ; $7a11: $a4
    xor d                                         ; $7a12: $aa
    adc c                                         ; $7a13: $89
    ld a, d                                       ; $7a14: $7a
    rla                                           ; $7a15: $17
    and $2d                                       ; $7a16: $e6 $2d
    daa                                           ; $7a18: $27
    cp [hl]                                       ; $7a19: $be
    sbc a                                         ; $7a1a: $9f
    call c, $15c7                                 ; $7a1b: $dc $c7 $15
    ret nz                                        ; $7a1e: $c0

    ld a, l                                       ; $7a1f: $7d
    inc e                                         ; $7a20: $1c
    cp l                                          ; $7a21: $bd
    cp a                                          ; $7a22: $bf
    add $32                                       ; $7a23: $c6 $32
    jr nz, jr_02e_79f1                            ; $7a25: $20 $ca

    ld d, a                                       ; $7a27: $57
    rst $38                                       ; $7a28: $ff
    xor [hl]                                      ; $7a29: $ae
    ld l, b                                       ; $7a2a: $68
    ld [$96ba], a                                 ; $7a2b: $ea $ba $96
    add c                                         ; $7a2e: $81
    dec sp                                        ; $7a2f: $3b
    sub [hl]                                      ; $7a30: $96
    db $fd                                        ; $7a31: $fd
    ld a, e                                       ; $7a32: $7b
    call Call_000_318c                            ; $7a33: $cd $8c $31
    and h                                         ; $7a36: $a4
    add hl, sp                                    ; $7a37: $39
    ld [$ceaf], a                                 ; $7a38: $ea $af $ce
    ld a, [hl+]                                   ; $7a3b: $2a
    ei                                            ; $7a3c: $fb
    inc l                                         ; $7a3d: $2c
    ld sp, hl                                     ; $7a3e: $f9
    cp b                                          ; $7a3f: $b8
    cp b                                          ; $7a40: $b8
    db $fd                                        ; $7a41: $fd
    ret z                                         ; $7a42: $c8

    ld e, e                                       ; $7a43: $5b
    push af                                       ; $7a44: $f5
    or l                                          ; $7a45: $b5
    ld c, d                                       ; $7a46: $4a
    db $e3                                        ; $7a47: $e3
    xor d                                         ; $7a48: $aa
    db $ec                                        ; $7a49: $ec
    ld [hl], e                                    ; $7a4a: $73
    db $ed                                        ; $7a4b: $ed
    jp nc, Jump_02e_7032                          ; $7a4c: $d2 $32 $70

    rst $00                                       ; $7a4f: $c7
    or d                                          ; $7a50: $b2
    sbc d                                         ; $7a51: $9a
    add hl, de                                    ; $7a52: $19
    ld h, e                                       ; $7a53: $63
    ld c, b                                       ; $7a54: $48
    db $e3                                        ; $7a55: $e3
    or $63                                        ; $7a56: $f6 $63
    sub a                                         ; $7a58: $97
    sub $58                                       ; $7a59: $d6 $58
    ld b, $44                                     ; $7a5b: $06 $44
    ld a, c                                       ; $7a5d: $79
    dec bc                                        ; $7a5e: $0b
    daa                                           ; $7a5f: $27
    db $fd                                        ; $7a60: $fd
    sub l                                         ; $7a61: $95
    cp e                                          ; $7a62: $bb
    adc l                                         ; $7a63: $8d
    add c                                         ; $7a64: $81
    sub c                                         ; $7a65: $91
    dec de                                        ; $7a66: $1b
    inc hl                                        ; $7a67: $23
    rrca                                          ; $7a68: $0f
    ld sp, hl                                     ; $7a69: $f9
    adc d                                         ; $7a6a: $8a
    xor l                                         ; $7a6b: $ad
    ld a, c                                       ; $7a6c: $79
    ld c, [hl]                                    ; $7a6d: $4e
    ld a, [de]                                    ; $7a6e: $1a
    inc hl                                        ; $7a6f: $23
    rst $30                                       ; $7a70: $f7
    rlca                                          ; $7a71: $07
    ld e, b                                       ; $7a72: $58
    jp z, $d34d                                   ; $7a73: $ca $4d $d3

    ld e, a                                       ; $7a76: $5f
    jp c, $8d2e                                   ; $7a77: $da $2e $8d

    ld l, e                                       ; $7a7a: $6b
    push bc                                       ; $7a7b: $c5
    halt                                          ; $7a7c: $76
    dec d                                         ; $7a7d: $15
    adc e                                         ; $7a7e: $8b
    ret nc                                        ; $7a7f: $d0

    ld hl, sp-$03                                 ; $7a80: $f8 $fd
    ld b, [hl]                                    ; $7a82: $46
    ret nz                                        ; $7a83: $c0

    dec [hl]                                      ; $7a84: $35
    xor [hl]                                      ; $7a85: $ae
    sbc b                                         ; $7a86: $98
    jp $e457                                      ; $7a87: $c3 $57 $e4


    dec l                                         ; $7a8a: $2d
    push af                                       ; $7a8b: $f5
    or l                                          ; $7a8c: $b5
    ld [hl], d                                    ; $7a8d: $72
    scf                                           ; $7a8e: $37
    inc e                                         ; $7a8f: $1c
    inc bc                                        ; $7a90: $03
    db $e3                                        ; $7a91: $e3
    adc d                                         ; $7a92: $8a
    ld c, e                                       ; $7a93: $4b
    sbc a                                         ; $7a94: $9f
    cp e                                          ; $7a95: $bb
    add $61                                       ; $7a96: $c6 $61
    add c                                         ; $7a98: $81
    sbc l                                         ; $7a99: $9d
    or c                                          ; $7a9a: $b1
    ld l, [hl]                                    ; $7a9b: $6e
    and l                                         ; $7a9c: $a5
    db $dd                                        ; $7a9d: $dd
    ret z                                         ; $7a9e: $c8

    ld e, b                                       ; $7a9f: $58
    ld c, d                                       ; $7aa0: $4a
    xor [hl]                                      ; $7aa1: $ae
    ld [hl-], a                                   ; $7aa2: $32
    adc h                                         ; $7aa3: $8c
    ld h, c                                       ; $7aa4: $61
    reti                                          ; $7aa5: $d9


    cp a                                          ; $7aa6: $bf
    dec de                                        ; $7aa7: $1b
    ld h, e                                       ; $7aa8: $63
    ld c, b                                       ; $7aa9: $48
    ld [hl], e                                    ; $7aaa: $73
    call nc, $b71f                                ; $7aab: $d4 $1f $b7
    rra                                           ; $7aae: $1f
    dec hl                                        ; $7aaf: $2b
    adc d                                         ; $7ab0: $8a
    ld d, l                                       ; $7ab1: $55
    add [hl]                                      ; $7ab2: $86
    ccf                                           ; $7ab3: $3f
    ld a, [c]                                     ; $7ab4: $f2
    ld d, $87                                     ; $7ab5: $16 $87
    inc de                                        ; $7ab7: $13
    cp c                                          ; $7ab8: $b9
    dec [hl]                                      ; $7ab9: $35
    or a                                          ; $7aba: $b7
    db $e4                                        ; $7abb: $e4
    xor d                                         ; $7abc: $aa
    rst $30                                       ; $7abd: $f7
    rst $00                                       ; $7abe: $c7
    ld [hl-], a                                   ; $7abf: $32
    inc l                                         ; $7ac0: $2c
    push bc                                       ; $7ac1: $c5
    sbc h                                         ; $7ac2: $9c
    rst $10                                       ; $7ac3: $d7
    ld h, $ae                                     ; $7ac4: $26 $ae
    inc de                                        ; $7ac6: $13
    ld c, h                                       ; $7ac7: $4c
    ld sp, $3bf8                                  ; $7ac8: $31 $f8 $3b
    add $6b                                       ; $7acb: $c6 $6b
    jp nc, $f7e9                                  ; $7acd: $d2 $e9 $f7

    ld sp, hl                                     ; $7ad0: $f9
    di                                            ; $7ad1: $f3
    db $e4                                        ; $7ad2: $e4
    xor h                                         ; $7ad3: $ac
    inc a                                         ; $7ad4: $3c
    adc a                                         ; $7ad5: $8f
    cp l                                          ; $7ad6: $bd
    ccf                                           ; $7ad7: $3f
    add $c6                                       ; $7ad8: $c6 $c6
    or l                                          ; $7ada: $b5
    ld c, e                                       ; $7adb: $4b
    ld l, e                                       ; $7adc: $6b
    inc l                                         ; $7add: $2c
    halt                                          ; $7ade: $76
    or c                                          ; $7adf: $b1
    ld [hl], l                                    ; $7ae0: $75
    cp $8a                                        ; $7ae1: $fe $8a
    sub $f8                                       ; $7ae3: $d6 $f8
    ld c, e                                       ; $7ae5: $4b
    dec hl                                        ; $7ae6: $2b
    ld b, d                                       ; $7ae7: $42
    ldh [$eb], a                                  ; $7ae8: $e0 $eb
    ld [hl], b                                    ; $7aea: $70
    dec e                                         ; $7aeb: $1d
    di                                            ; $7aec: $f3
    cp [hl]                                       ; $7aed: $be
    or c                                          ; $7aee: $b1
    xor h                                         ; $7aef: $ac
    sub h                                         ; $7af0: $94
    cp h                                          ; $7af1: $bc

jr_02e_7af2:
    dec b                                         ; $7af2: $05
    ld e, c                                       ; $7af3: $59
    ld [hl], a                                    ; $7af4: $77
    dec b                                         ; $7af5: $05
    dec c                                         ; $7af6: $0d
    cp [hl]                                       ; $7af7: $be
    sub [hl]                                      ; $7af8: $96
    ld [hl], $20                                  ; $7af9: $36 $20
    adc l                                         ; $7afb: $8d
    push hl                                       ; $7afc: $e5
    add $68                                       ; $7afd: $c6 $68
    db $fc                                        ; $7aff: $fc
    xor [hl]                                      ; $7b00: $ae
    ld c, a                                       ; $7b01: $4f
    ld l, $1f                                     ; $7b02: $2e $1f
    or a                                          ; $7b04: $b7
    rra                                           ; $7b05: $1f
    dec hl                                        ; $7b06: $2b
    ld a, [de]                                    ; $7b07: $1a
    cp a                                          ; $7b08: $bf

jr_02e_7b09:
    and l                                         ; $7b09: $a5
    call z, Call_02e_62dd                         ; $7b0a: $cc $dd $62
    ld e, h                                       ; $7b0d: $5c
    dec sp                                        ; $7b0e: $3b
    dec b                                         ; $7b0f: $05
    jp nz, Jump_000_279c                          ; $7b10: $c2 $9c $27

    ld [hl], a                                    ; $7b13: $77
    xor h                                         ; $7b14: $ac
    cp c                                          ; $7b15: $b9
    rst $10                                       ; $7b16: $d7
    db $e4                                        ; $7b17: $e4
    dec l                                         ; $7b18: $2d
    dec e                                         ; $7b19: $1d
    inc c                                         ; $7b1a: $0c
    inc hl                                        ; $7b1b: $23
    rst $08                                       ; $7b1c: $cf
    di                                            ; $7b1d: $f3
    dec [hl]                                      ; $7b1e: $35
    cp $d2                                        ; $7b1f: $fe $d2
    adc d                                         ; $7b21: $8a
    db $10                                        ; $7b22: $10
    ld hl, sp+$3a                                 ; $7b23: $f8 $3a
    ld e, h                                       ; $7b25: $5c
    rst $00                                       ; $7b26: $c7
    cp h                                          ; $7b27: $bc
    ld l, a                                       ; $7b28: $6f
    inc l                                         ; $7b29: $2c
    dec hl                                        ; $7b2a: $2b
    dec h                                         ; $7b2b: $25
    rst $08                                       ; $7b2c: $cf
    di                                            ; $7b2d: $f3
    ld d, $1d                                     ; $7b2e: $16 $1d
    dec l                                         ; $7b30: $2d
    add $ef                                       ; $7b31: $c6 $ef
    ld [$417c], a                                 ; $7b33: $ea $7c $41
    jr z, @+$6c                                   ; $7b36: $28 $6a

    inc de                                        ; $7b38: $13
    ld [hl], a                                    ; $7b39: $77
    inc d                                         ; $7b3a: $14
    reti                                          ; $7b3b: $d9


    and a                                         ; $7b3c: $a7
    pop af                                        ; $7b3d: $f1
    rst $30                                       ; $7b3e: $f7
    rst $38                                       ; $7b3f: $ff
    ld l, l                                       ; $7b40: $6d
    add hl, de                                    ; $7b41: $19
    ret nc                                        ; $7b42: $d0

    xor [hl]                                      ; $7b43: $ae
    cp e                                          ; $7b44: $bb
    add d                                         ; $7b45: $82
    halt                                          ; $7b46: $76
    ld [c], a                                     ; $7b47: $e2
    db $eb                                        ; $7b48: $eb
    xor d                                         ; $7b49: $aa
    inc h                                         ; $7b4a: $24
    sub a                                         ; $7b4b: $97
    xor l                                         ; $7b4c: $ad
    ld a, l                                       ; $7b4d: $7d
    adc l                                         ; $7b4e: $8d
    rst $18                                       ; $7b4f: $df
    jr c, jr_02e_7af2                             ; $7b50: $38 $a0

    dec de                                        ; $7b52: $1b
    ld l, $03                                     ; $7b53: $2e $03
    rst $30                                       ; $7b55: $f7
    cp [hl]                                       ; $7b56: $be
    sub $3c                                       ; $7b57: $d6 $3c
    db $fc                                        ; $7b59: $fc
    or h                                          ; $7b5a: $b4
    ld a, [hl-]                                   ; $7b5b: $3a
    dec sp                                        ; $7b5c: $3b
    add $6b                                       ; $7b5d: $c6 $6b
    jp nc, $f7e9                                  ; $7b5f: $d2 $e9 $f7

    ld sp, hl                                     ; $7b62: $f9
    di                                            ; $7b63: $f3
    ld a, h                                       ; $7b64: $7c
    and a                                         ; $7b65: $a7
    ccf                                           ; $7b66: $3f
    adc b                                         ; $7b67: $88
    dec [hl]                                      ; $7b68: $35
    rrca                                          ; $7b69: $0f
    jr jr_02e_7b09                                ; $7b6a: $18 $9d

    cp a                                          ; $7b6c: $bf
    add $9c                                       ; $7b6d: $c6 $9c
    ret nc                                        ; $7b6f: $d0

    ld l, e                                       ; $7b70: $6b
    inc de                                        ; $7b71: $13
    ld e, e                                       ; $7b72: $5b
    ld b, a                                       ; $7b73: $47
    pop de                                        ; $7b74: $d1
    cp [hl]                                       ; $7b75: $be
    and $aa                                       ; $7b76: $e6 $aa
    ld b, h                                       ; $7b78: $44
    or c                                          ; $7b79: $b1
    and [hl]                                      ; $7b7a: $a6
    ld b, b                                       ; $7b7b: $40
    xor h                                         ; $7b7c: $ac
    ld l, b                                       ; $7b7d: $68
    ld e, a                                       ; $7b7e: $5f
    rst $20                                       ; $7b7f: $e7
    adc a                                         ; $7b80: $8f
    db $db                                        ; $7b81: $db
    adc a                                         ; $7b82: $8f
    dec d                                         ; $7b83: $15
    push bc                                       ; $7b84: $c5
    inc l                                         ; $7b85: $2c
    sbc l                                         ; $7b86: $9d
    ld [hl], $74                                  ; $7b87: $36 $74
    push bc                                       ; $7b89: $c5
    cp b                                          ; $7b8a: $b8
    ld h, d                                       ; $7b8b: $62
    ld b, $e4                                     ; $7b8c: $06 $e4
    adc d                                         ; $7b8e: $8a
    jp c, $16c4                                   ; $7b8f: $da $c4 $16

    sbc l                                         ; $7b92: $9d
    ld h, b                                       ; $7b93: $60
    ld d, $73                                     ; $7b94: $16 $73
    sub c                                         ; $7b96: $91
    ccf                                           ; $7b97: $3f
    ld h, b                                       ; $7b98: $60
    ld l, [hl]                                    ; $7b99: $6e
    inc hl                                        ; $7b9a: $23
    push bc                                       ; $7b9b: $c5
    ld l, $e3                                     ; $7b9c: $2e $e3
    ld [hl-], a                                   ; $7b9e: $32
    add sp, -$64                                  ; $7b9f: $e8 $9c
    call c, $e6b1                                 ; $7ba1: $dc $b1 $e6
    ld e, [hl]                                    ; $7ba4: $5e
    ld d, e                                       ; $7ba5: $53
    ld a, e                                       ; $7ba6: $7b
    ld l, b                                       ; $7ba7: $68
    dec bc                                        ; $7ba8: $0b
    daa                                           ; $7ba9: $27
    cp [hl]                                       ; $7baa: $be
    rst $18                                       ; $7bab: $df
    ld [bc], a                                    ; $7bac: $02
    dec e                                         ; $7bad: $1d
    inc c                                         ; $7bae: $0c
    ld h, e                                       ; $7baf: $63
    rst $10                                       ; $7bb0: $d7
    ei                                            ; $7bb1: $fb
    add h                                         ; $7bb2: $84
    rra                                           ; $7bb3: $1f
    inc [hl]                                      ; $7bb4: $34
    xor [hl]                                      ; $7bb5: $ae
    ld e, l                                       ; $7bb6: $5d
    ld l, h                                       ; $7bb7: $6c
    ld sp, hl                                     ; $7bb8: $f9
    push bc                                       ; $7bb9: $c5
    sub [hl]                                      ; $7bba: $96
    rst $20                                       ; $7bbb: $e7
    xor e                                         ; $7bbc: $ab
    xor a                                         ; $7bbd: $af
    db $fd                                        ; $7bbe: $fd
    ei                                            ; $7bbf: $fb
    inc bc                                        ; $7bc0: $03
    add $d1                                       ; $7bc1: $c6 $d1
    dec c                                         ; $7bc3: $0d
    rst $10                                       ; $7bc4: $d7
    ld e, b                                       ; $7bc5: $58
    xor h                                         ; $7bc6: $ac
    jr z, jr_02e_7c1f                             ; $7bc7: $28 $56

    and c                                         ; $7bc9: $a1
    ld a, [hl]                                    ; $7bca: $7e
    adc h                                         ; $7bcb: $8c
    db $ec                                        ; $7bcc: $ec
    db $d3                                        ; $7bcd: $d3
    ld [hl-], a                                   ; $7bce: $32
    and b                                         ; $7bcf: $a0
    ld de, $6bec                                  ; $7bd0: $11 $ec $6b
    ld b, l                                       ; $7bd3: $45
    ld sp, $b703                                  ; $7bd4: $31 $03 $b7
    ld e, b                                       ; $7bd7: $58
    ld h, e                                       ; $7bd8: $63
    ld sp, $f917                                  ; $7bd9: $31 $17 $f9
    inc bc                                        ; $7bdc: $03
    and $16                                       ; $7bdd: $e6 $16
    ld a, c                                       ; $7bdf: $79
    dec bc                                        ; $7be0: $0b
    and a                                         ; $7be1: $a7
    cp h                                          ; $7be2: $bc
    ld e, a                                       ; $7be3: $5f
    sbc e                                         ; $7be4: $9b
    cp b                                          ; $7be5: $b8
    ld a, [$c377]                                 ; $7be6: $fa $77 $c3
    ld sp, hl                                     ; $7be9: $f9
    db $ed                                        ; $7bea: $ed
    add d                                         ; $7beb: $82
    and $e6                                       ; $7bec: $e6 $e6
    or a                                          ; $7bee: $b7
    ld d, l                                       ; $7bef: $55
    adc d                                         ; $7bf0: $8a
    ld e, l                                       ; $7bf1: $5d
    add $65                                       ; $7bf2: $c6 $65
    ret nc                                        ; $7bf4: $d0

    cp c                                          ; $7bf5: $b9
    ld [hl], $b1                                  ; $7bf6: $36 $b1
    dec b                                         ; $7bf8: $05
    and a                                         ; $7bf9: $a7
    ld b, d                                       ; $7bfa: $42

jr_02e_7bfb:
    inc hl                                        ; $7bfb: $23
    xor a                                         ; $7bfc: $af
    ld c, l                                       ; $7bfd: $4d
    call c, Call_02e_7f49                         ; $7bfe: $dc $49 $7f
    adc h                                         ; $7c01: $8c
    xor l                                         ; $7c02: $ad
    jr z, jr_02e_7bfb                             ; $7c03: $28 $f6

    add b                                         ; $7c05: $80
    ld [hl], c                                    ; $7c06: $71
    db $f4                                        ; $7c07: $f4
    cp h                                          ; $7c08: $bc
    dec b                                         ; $7c09: $05
    dec e                                         ; $7c0a: $1d
    rra                                           ; $7c0b: $1f
    ld hl, sp-$72                                 ; $7c0c: $f8 $8e
    dec [hl]                                      ; $7c0e: $35
    rst $30                                       ; $7c0f: $f7
    sbc d                                         ; $7c10: $9a
    db $e4                                        ; $7c11: $e4
    cp b                                          ; $7c12: $b8
    ld d, [hl]                                    ; $7c13: $56
    ld l, h                                       ; $7c14: $6c
    adc l                                         ; $7c15: $8d
    add hl, sp                                    ; $7c16: $39
    adc l                                         ; $7c17: $8d
    ld l, e                                       ; $7c18: $6b
    rst $00                                       ; $7c19: $c7
    ld a, [de]                                    ; $7c1a: $1a
    res 2, c                                      ; $7c1b: $cb $91
    rst $20                                       ; $7c1d: $e7
    dec l                                         ; $7c1e: $2d

jr_02e_7c1f:
    and a                                         ; $7c1f: $a7
    ld a, l                                       ; $7c20: $7d
    dec l                                         ; $7c21: $2d
    ld e, l                                       ; $7c22: $5d

Call_02e_7c23:
    ld a, d                                       ; $7c23: $7a
    jr nz, jr_02e_7c73                            ; $7c24: $20 $4d

    ld a, a                                       ; $7c26: $7f

Jump_02e_7c27:
    xor c                                         ; $7c27: $a9
    add a                                         ; $7c28: $87
    ld d, c                                       ; $7c29: $51
    sbc e                                         ; $7c2a: $9b
    cp b                                          ; $7c2b: $b8
    sub e                                         ; $7c2c: $93
    cp $38                                        ; $7c2d: $fe $38
    cp d                                          ; $7c2f: $ba
    ld hl, $032d                                  ; $7c30: $21 $2d $03
    jp c, Jump_02e_5775                           ; $7c33: $da $75 $57

    ret nc                                        ; $7c36: $d0

    ld a, [bc]                                    ; $7c37: $0a
    ldh [$32], a                                  ; $7c38: $e0 $32
    add b                                         ; $7c3a: $80
    dec hl                                        ; $7c3b: $2b
    ld [hl], a                                    ; $7c3c: $77
    ld e, e                                       ; $7c3d: $5b
    jp c, $9490                                   ; $7c3e: $da $90 $94

    or a                                          ; $7c41: $b7
    ld b, a                                       ; $7c42: $47
    sub l                                         ; $7c43: $95
    and d                                         ; $7c44: $a2
    push bc                                       ; $7c45: $c5
    ei                                            ; $7c46: $fb
    ld e, a                                       ; $7c47: $5f
    add e                                         ; $7c48: $83
    cp a                                          ; $7c49: $bf
    ld b, [hl]                                    ; $7c4a: $46
    or b                                          ; $7c4b: $b0
    db $eb                                        ; $7c4c: $eb
    ld d, l                                       ; $7c4d: $55
    sub l                                         ; $7c4e: $95
    ld d, [hl]                                    ; $7c4f: $56
    or h                                          ; $7c50: $b4
    bit 6, c                                      ; $7c51: $cb $71
    db $fc                                        ; $7c53: $fc
    ld c, $7f                                     ; $7c54: $0e $7f
    ld l, h                                       ; $7c56: $6c
    ld c, h                                       ; $7c57: $4c
    dec a                                         ; $7c58: $3d
    ret z                                         ; $7c59: $c8

    ld e, e                                       ; $7c5a: $5b
    daa                                           ; $7c5b: $27
    or c                                          ; $7c5c: $b1
    rst $30                                       ; $7c5d: $f7
    ret c                                         ; $7c5e: $d8

    ret                                           ; $7c5f: $c9


    jp hl                                         ; $7c60: $e9


    ld e, a                                       ; $7c61: $5f
    rst $08                                       ; $7c62: $cf
    dec [hl]                                      ; $7c63: $35
    ld hl, sp+$6b                                 ; $7c64: $f8 $6b
    and b                                         ; $7c66: $a0
    sub h                                         ; $7c67: $94
    ld d, l                                       ; $7c68: $55
    and $fe                                       ; $7c69: $e6 $fe
    ld a, [hl]                                    ; $7c6b: $7e
    cp [hl]                                       ; $7c6c: $be
    ld a, [$c377]                                 ; $7c6d: $fa $77 $c3
    or c                                          ; $7c70: $b1
    sbc a                                         ; $7c71: $9f
    cp e                                          ; $7c72: $bb

jr_02e_7c73:
    ret nz                                        ; $7c73: $c0

    rst $00                                       ; $7c74: $c7
    ld h, c                                       ; $7c75: $61
    sub l                                         ; $7c76: $95
    cp c                                          ; $7c77: $b9
    cp a                                          ; $7c78: $bf
    sbc a                                         ; $7c79: $9f
    or a                                          ; $7c7a: $b7
    sbc l                                         ; $7c7b: $9d
    ld d, b                                       ; $7c7c: $50
    ccf                                           ; $7c7d: $3f
    sub d                                         ; $7c7e: $92
    add e                                         ; $7c7f: $83
    xor a                                         ; $7c80: $af
    ld e, l                                       ; $7c81: $5d
    and $a4                                       ; $7c82: $e6 $a4
    cp h                                          ; $7c84: $bc
    dec b                                         ; $7c85: $05
    ld b, a                                       ; $7c86: $47
    ld l, d                                       ; $7c87: $6a
    push bc                                       ; $7c88: $c5
    sub $98                                       ; $7c89: $d6 $98

Call_02e_7c8b:
    db $d3                                        ; $7c8b: $d3
    ld hl, sp-$03                                 ; $7c8c: $f8 $fd
    db $fd                                        ; $7c8e: $fd
    xor e                                         ; $7c8f: $ab
    ld l, b                                       ; $7c90: $68
    and a                                         ; $7c91: $a7
    set 7, a                                      ; $7c92: $cb $ff
    ei                                            ; $7c94: $fb
    inc de                                        ; $7c95: $13
    adc l                                         ; $7c96: $8d
    ld l, e                                       ; $7c97: $6b
    ld h, h                                       ; $7c98: $64

jr_02e_7c99:
    sbc a                                         ; $7c99: $9f
    or h                                          ; $7c9a: $b4
    adc [hl]                                      ; $7c9b: $8e
    scf                                           ; $7c9c: $37
    add d                                         ; $7c9d: $82
    adc a                                         ; $7c9e: $8f
    sub [hl]                                      ; $7c9f: $96
    or a                                          ; $7ca0: $b7
    and a                                         ; $7ca1: $a7
    ld a, l                                       ; $7ca2: $7d
    xor l                                         ; $7ca3: $ad
    pop bc                                        ; $7ca4: $c1
    cp d                                          ; $7ca5: $ba
    sub a                                         ; $7ca6: $97

Jump_02e_7ca7:
    add $b5                                       ; $7ca7: $c6 $b5
    cp $fa                                        ; $7ca9: $fe $fa
    ld e, h                                       ; $7cab: $5c
    and e                                         ; $7cac: $a3
    ld a, a                                       ; $7cad: $7f
    add hl, hl                                    ; $7cae: $29
    ld e, a                                       ; $7caf: $5f
    rst $00                                       ; $7cb0: $c7
    rlca                                          ; $7cb1: $07
    ld a, $41                                     ; $7cb2: $3e $41
    rst $20                                       ; $7cb4: $e7
    db $e4                                        ; $7cb5: $e4
    xor [hl]                                      ; $7cb6: $ae
    cp e                                          ; $7cb7: $bb
    add d                                         ; $7cb8: $82

Call_02e_7cb9:
    ld b, [hl]                                    ; $7cb9: $46
    ld e, [hl]                                    ; $7cba: $5e
    scf                                           ; $7cbb: $37
    add $ba                                       ; $7cbc: $c6 $ba
    db $fd                                        ; $7cbe: $fd
    sbc e                                         ; $7cbf: $9b
    dec bc                                        ; $7cc0: $0b
    ld a, [hl-]                                   ; $7cc1: $3a
    rst $20                                       ; $7cc2: $e7
    dec l                                         ; $7cc3: $2d
    and a                                         ; $7cc4: $a7
    adc b                                         ; $7cc5: $88
    ld h, l                                       ; $7cc6: $65
    adc $95                                       ; $7cc7: $ce $95
    inc e                                         ; $7cc9: $1c
    db $fc                                        ; $7cca: $fc
    or c                                          ; $7ccb: $b1
    db $fc                                        ; $7ccc: $fc
    push bc                                       ; $7ccd: $c5
    ld a, [de]                                    ; $7cce: $1a
    res 0, b                                      ; $7ccf: $cb $80
    ld l, b                                       ; $7cd1: $68
    ld e, h                                       ; $7cd2: $5c
    bit 4, d                                      ; $7cd3: $cb $62
    cp a                                          ; $7cd5: $bf
    db $eb                                        ; $7cd6: $eb
    or c                                          ; $7cd7: $b1
    ld e, h                                       ; $7cd8: $5c
    rst $38                                       ; $7cd9: $ff
    ld bc, $a296                                  ; $7cda: $01 $96 $a2
    ret z                                         ; $7cdd: $c8

    sub a                                         ; $7cde: $97
    ld [hl], l                                    ; $7cdf: $75
    ld d, a                                       ; $7ce0: $57
    ret nc                                        ; $7ce1: $d0

    adc [hl]                                      ; $7ce2: $8e
    sub l                                         ; $7ce3: $95
    ld d, a                                       ; $7ce4: $57
    ld hl, sp-$42                                 ; $7ce5: $f8 $be
    sub [hl]                                      ; $7ce7: $96
    ld bc, $a55c                                  ; $7ce8: $01 $5c $a5
    sub l                                         ; $7ceb: $95
    cp e                                          ; $7cec: $bb
    ld a, $f3                                     ; $7ced: $3e $f3
    ld d, b                                       ; $7cef: $50
    ld sp, hl                                     ; $7cf0: $f9
    adc [hl]                                      ; $7cf1: $8e
    cp l                                          ; $7cf2: $bd
    dec h                                         ; $7cf3: $25
    add a                                         ; $7cf4: $87
    ld h, l                                       ; $7cf5: $65
    dec [hl]                                      ; $7cf6: $35
    or e                                          ; $7cf7: $b3
    dec d                                         ; $7cf8: $15
    db $db                                        ; $7cf9: $db
    ld h, l                                       ; $7cfa: $65
    ld c, [hl]                                    ; $7cfb: $4e
    ld a, [de]                                    ; $7cfc: $1a
    ld d, a                                       ; $7cfd: $57
    inc l                                         ; $7cfe: $2c
    sbc [hl]                                      ; $7cff: $9e
    ld e, a                                       ; $7d00: $5f
    ld e, b                                       ; $7d01: $58

jr_02e_7d02:
    rst $10                                       ; $7d02: $d7
    dec d                                         ; $7d03: $15
    inc de                                        ; $7d04: $13
    dec l                                         ; $7d05: $2d
    sbc [hl]                                      ; $7d06: $9e
    ld e, a                                       ; $7d07: $5f
    jr z, jr_02e_7c99                             ; $7d08: $28 $8f

    ld e, l                                       ; $7d0a: $5d
    or a                                          ; $7d0b: $b7
    ld d, d                                       ; $7d0c: $52

Call_02e_7d0d:
    scf                                           ; $7d0d: $37
    push hl                                       ; $7d0e: $e5
    adc d                                         ; $7d0f: $8a
    add hl, de                                    ; $7d10: $19
    and e                                         ; $7d11: $a3
    ld l, e                                       ; $7d12: $6b
    ld b, a                                       ; $7d13: $47
    ld b, d                                       ; $7d14: $42
    sub l                                         ; $7d15: $95
    ld a, [hl+]                                   ; $7d16: $2a
    ld [c], a                                     ; $7d17: $e2
    rst $08                                       ; $7d18: $cf
    dec [hl]                                      ; $7d19: $35
    xor [hl]                                      ; $7d1a: $ae
    ld [$da88], sp                                ; $7d1b: $08 $88 $da
    call nz, $4716                                ; $7d1e: $c4 $16 $47
    ld h, d                                       ; $7d21: $62
    adc h                                         ; $7d22: $8c
    cp a                                          ; $7d23: $bf
    ld a, a                                       ; $7d24: $7f
    dec h                                         ; $7d25: $25
    ld [hl], a                                    ; $7d26: $77
    adc c                                         ; $7d27: $89
    ld c, b                                       ; $7d28: $48
    cp e                                          ; $7d29: $bb
    call z, $c949                                 ; $7d2a: $cc $49 $c9
    xor c                                         ; $7d2d: $a9
    inc d                                         ; $7d2e: $14
    ld c, l                                       ; $7d2f: $4d
    ld b, c                                       ; $7d30: $41
    ld c, e                                       ; $7d31: $4b
    and c                                         ; $7d32: $a1
    ld a, [hl]                                    ; $7d33: $7e
    sbc $02                                       ; $7d34: $de $02
    ld b, a                                       ; $7d36: $47
    ld e, l                                       ; $7d37: $5d
    rrca                                          ; $7d38: $0f
    ld c, b                                       ; $7d39: $48
    db $eb                                        ; $7d3a: $eb
    pop de                                        ; $7d3b: $d1
    sub d                                         ; $7d3c: $92
    dec sp                                        ; $7d3d: $3b
    push hl                                       ; $7d3e: $e5
    db $fd                                        ; $7d3f: $fd
    dec e                                         ; $7d40: $1d
    cp h                                          ; $7d41: $bc
    ei                                            ; $7d42: $fb
    sub c                                         ; $7d43: $91
    add sp, -$46                                  ; $7d44: $e8 $ba
    ld c, b                                       ; $7d46: $48
    ldh [$e3], a                                  ; $7d47: $e0 $e3
    ld e, d                                       ; $7d49: $5a
    rst $00                                       ; $7d4a: $c7
    rlca                                          ; $7d4b: $07
    cp h                                          ; $7d4c: $bc
    sbc b                                         ; $7d4d: $98
    di                                            ; $7d4e: $f3
    ld a, h                                       ; $7d4f: $7c
    add a                                         ; $7d50: $87
    ld d, a                                       ; $7d51: $57
    jr c, jr_02e_7d02                             ; $7d52: $38 $ae

    sbc l                                         ; $7d54: $9d
    adc b                                         ; $7d55: $88
    rst $10                                       ; $7d56: $d7
    dec hl                                        ; $7d57: $2b
    ld d, $3b                                     ; $7d58: $16 $3b
    cp d                                          ; $7d5a: $ba
    ld e, b                                       ; $7d5b: $58
    and l                                         ; $7d5c: $a5
    sub d                                         ; $7d5d: $92
    inc e                                         ; $7d5e: $1c
    ld a, [hl]                                    ; $7d5f: $7e
    ld b, [hl]                                    ; $7d60: $46
    sbc a                                         ; $7d61: $9f
    inc b                                         ; $7d62: $04
    ld a, $ae                                     ; $7d63: $3e $ae
    dec d                                         ; $7d65: $15
    ld e, e                                       ; $7d66: $5b
    ld b, a                                       ; $7d67: $47
    sub h                                         ; $7d68: $94
    cp e                                          ; $7d69: $bb
    sub $b0                                       ; $7d6a: $d6 $b0
    or c                                          ; $7d6c: $b1
    cp h                                          ; $7d6d: $bc
    ld a, b                                       ; $7d6e: $78
    dec c                                         ; $7d6f: $0d
    db $db                                        ; $7d70: $db
    adc d                                         ; $7d71: $8a
    ld a, [c]                                     ; $7d72: $f2
    ei                                            ; $7d73: $fb
    ld a, [hl-]                                   ; $7d74: $3a
    jr jr_02e_7df5                                ; $7d75: $18 $7e

    jp nc, $4fb7                                  ; $7d77: $d2 $b7 $4f

    ld a, e                                       ; $7d7a: $7b
    ld a, a                                       ; $7d7b: $7f
    ld h, c                                       ; $7d7c: $61
    ld c, b                                       ; $7d7d: $48
    rlc b                                         ; $7d7e: $cb $00
    ld c, [hl]                                    ; $7d80: $4e
    ld b, c                                       ; $7d81: $41
    dec sp                                        ; $7d82: $3b
    ld de, $57af                                  ; $7d83: $11 $af $57
    inc l                                         ; $7d86: $2c
    halt                                          ; $7d87: $76
    ld [hl], h                                    ; $7d88: $74
    or c                                          ; $7d89: $b1
    ld c, d                                       ; $7d8a: $4a
    and l                                         ; $7d8b: $a5
    ld [hl], $b1                                  ; $7d8c: $36 $b1
    dec b                                         ; $7d8e: $05
    ld b, a                                       ; $7d8f: $47
    pop de                                        ; $7d90: $d1
    adc d                                         ; $7d91: $8a
    xor l                                         ; $7d92: $ad
    inc hl                                        ; $7d93: $23
    jp z, Jump_02e_6b5d                           ; $7d94: $ca $5d $6b

    ret c                                         ; $7d97: $d8

    ld e, b                                       ; $7d98: $58
    ld e, [hl]                                    ; $7d99: $5e
    cp h                                          ; $7d9a: $bc
    add [hl]                                      ; $7d9b: $86
    ld l, l                                       ; $7d9c: $6d
    ld b, l                                       ; $7d9d: $45
    ld a, c                                       ; $7d9e: $79
    sbc [hl]                                      ; $7d9f: $9e
    rst $28                                       ; $7da0: $ef
    cp d                                          ; $7da1: $ba
    dec hl                                        ; $7da2: $2b
    ld l, b                                       ; $7da3: $68
    adc l                                         ; $7da4: $8d
    add b                                         ; $7da5: $80
    ld [$4d75], a                                 ; $7da6: $ea $75 $4d
    xor [hl]                                      ; $7da9: $ae
    push af                                       ; $7daa: $f5
    ld l, b                                       ; $7dab: $68
    res 0, b                                      ; $7dac: $cb $80
    ld d, [hl]                                    ; $7dae: $56
    or h                                          ; $7daf: $b4
    adc e                                         ; $7db0: $8b
    adc l                                         ; $7db1: $8d
    ld a, [$700b]                                 ; $7db2: $fa $0b $70
    ld b, [hl]                                    ; $7db5: $46
    ld e, b                                       ; $7db6: $58
    adc d                                         ; $7db7: $8a
    ld a, [c]                                     ; $7db8: $f2
    ld d, $27                                     ; $7db9: $16 $27
    db $fd                                        ; $7dbb: $fd
    ld [hl], c                                    ; $7dbc: $71
    ld sp, $486e                                  ; $7dbd: $31 $6e $48
    ld d, e                                       ; $7dc0: $53
    add h                                         ; $7dc1: $84
    push de                                       ; $7dc2: $d5
    ret z                                         ; $7dc3: $c8

    rst $00                                       ; $7dc4: $c7
    rst $28                                       ; $7dc5: $ef
    ld a, [$630b]                                 ; $7dc6: $fa $0b $63
    ld e, $fa                                     ; $7dc9: $1e $fa
    sbc d                                         ; $7dcb: $9a
    ld [bc], a                                    ; $7dcc: $02
    sub c                                         ; $7dcd: $91
    rst $20                                       ; $7dce: $e7
    ld sp, hl                                     ; $7dcf: $f9
    ld a, [hl+]                                   ; $7dd0: $2a
    jp $bf18                                      ; $7dd1: $c3 $18 $bf


    ld e, e                                       ; $7dd4: $5b
    ld [$df39], a                                 ; $7dd5: $ea $39 $df
    ei                                            ; $7dd8: $fb
    ld a, e                                       ; $7dd9: $7b
    ret nz                                        ; $7dda: $c0

    cp b                                          ; $7ddb: $b8
    ld d, [hl]                                    ; $7ddc: $56
    inc d                                         ; $7ddd: $14
    cp e                                          ; $7dde: $bb
    adc h                                         ; $7ddf: $8c
    res 4, b                                      ; $7de0: $cb $a0
    ld [hl], e                                    ; $7de2: $73
    sbc $02                                       ; $7de3: $de $02
    daa                                           ; $7de5: $27
    ld bc, $dae3                                  ; $7de6: $01 $e3 $da
    and l                                         ; $7de9: $a5
    ld [bc], a                                    ; $7dea: $02
    ld e, b                                       ; $7deb: $58
    xor a                                         ; $7dec: $af
    call nc, Call_02e_5bc9                        ; $7ded: $d4 $c9 $5b
    and a                                         ; $7df0: $a7
    ld [c], a                                     ; $7df1: $e2
    xor [hl]                                      ; $7df2: $ae
    cp e                                          ; $7df3: $bb
    add d                                         ; $7df4: $82

jr_02e_7df5:
    halt                                          ; $7df5: $76
    ld l, c                                       ; $7df6: $69
    add hl, de                                    ; $7df7: $19
    ret nc                                        ; $7df8: $d0

    or d                                          ; $7df9: $b2
    or l                                          ; $7dfa: $b5
    ld b, [hl]                                    ; $7dfb: $46
    ccf                                           ; $7dfc: $3f
    sub h                                         ; $7dfd: $94
    call c, Call_02e_5775                         ; $7dfe: $dc $75 $57
    ret nc                                        ; $7e01: $d0

    ret z                                         ; $7e02: $c8

    db $eb                                        ; $7e03: $eb
    add $dc                                       ; $7e04: $c6 $dc
    ld e, h                                       ; $7e06: $5c
    inc de                                        ; $7e07: $13
    adc l                                         ; $7e08: $8d
    cp h                                          ; $7e09: $bc
    ld l, [hl]                                    ; $7e0a: $6e
    xor h                                         ; $7e0b: $ac
    pop af                                        ; $7e0c: $f1
    db $db                                        ; $7e0d: $db
    add l                                         ; $7e0e: $85
    add d                                         ; $7e0f: $82
    adc $79                                       ; $7e10: $ce $79
    dec bc                                        ; $7e12: $0b
    ld b, a                                       ; $7e13: $47
    pop de                                        ; $7e14: $d1
    xor [hl]                                      ; $7e15: $ae
    cp e                                          ; $7e16: $bb
    add d                                         ; $7e17: $82
    sub [hl]                                      ; $7e18: $96
    add c                                         ; $7e19: $81
    add a                                         ; $7e1a: $87
    or l                                          ; $7e1b: $b5
    add a                                         ; $7e1c: $87
    or [hl]                                       ; $7e1d: $b6
    ld e, c                                       ; $7e1e: $59
    ld [hl], a                                    ; $7e1f: $77
    dec b                                         ; $7e20: $05
    dec c                                         ; $7e21: $0d
    cp [hl]                                       ; $7e22: $be
    halt                                          ; $7e23: $76
    ld e, c                                       ; $7e24: $59
    and e                                         ; $7e25: $a3
    pop af                                        ; $7e26: $f1
    dec sp                                        ; $7e27: $3b
    ld a, [hl]                                    ; $7e28: $7e
    ld b, $03                                     ; $7e29: $06 $03
    ld d, e                                       ; $7e2b: $53
    ld e, b                                       ; $7e2c: $58
    sub b                                         ; $7e2d: $90
    ld l, [hl]                                    ; $7e2e: $6e
    ret                                           ; $7e2f: $c9


    ld h, l                                       ; $7e30: $65
    rst $18                                       ; $7e31: $df
    push af                                       ; $7e32: $f5
    rla                                           ; $7e33: $17
    add b                                         ; $7e34: $80

Jump_02e_7e35:
    or c                                          ; $7e35: $b1
    add sp, -$3f                                  ; $7e36: $e8 $c1
    di                                            ; $7e38: $f3
    dec e                                         ; $7e39: $1d
    dec d                                         ; $7e3a: $15
    ld h, c                                       ; $7e3b: $61
    xor b                                         ; $7e3c: $a8
    ld a, d                                       ; $7e3d: $7a
    push bc                                       ; $7e3e: $c5
    ld a, [c]                                     ; $7e3f: $f2
    ld d, $59                                     ; $7e40: $16 $59
    ld [hl], a                                    ; $7e42: $77
    db $fd                                        ; $7e43: $fd
    add hl, hl                                    ; $7e44: $29
    ld l, b                                       ; $7e45: $68
    ldh a, [rHDMA5]                               ; $7e46: $f0 $55
    sbc e                                         ; $7e48: $9b
    cp b                                          ; $7e49: $b8
    ld d, e                                       ; $7e4a: $53
    call nz, $e732                                ; $7e4b: $c4 $32 $e7
    xor d                                         ; $7e4e: $aa
    ld c, l                                       ; $7e4f: $4d
    ld l, h                                       ; $7e50: $6c
    ld bc, $b5f5                                  ; $7e51: $01 $f5 $b5
    nop                                           ; $7e54: $00
    adc h                                         ; $7e55: $8c
    pop hl                                        ; $7e56: $e1
    ld h, a                                       ; $7e57: $67
    jr nc, jr_02e_7e8a                            ; $7e58: $30 $30

    ld d, l                                       ; $7e5a: $55
    ld d, h                                       ; $7e5b: $54
    sbc e                                         ; $7e5c: $9b
    cp b                                          ; $7e5d: $b8
    ld c, [hl]                                    ; $7e5e: $4e
    xor b                                         ; $7e5f: $a8
    rra                                           ; $7e60: $1f
    ret                                           ; $7e61: $c9


    ld h, c                                       ; $7e62: $61
    ld e, c                                       ; $7e63: $59
    call $f06c                                    ; $7e64: $cd $6c $f0
    ld d, a                                       ; $7e67: $57
    dec a                                         ; $7e68: $3d
    jp z, $9d5b                                   ; $7e69: $ca $5b $9d

    sbc $5f                                       ; $7e6c: $de $5f
    ld d, e                                       ; $7e6e: $53
    rst $10                                       ; $7e6f: $d7
    or l                                          ; $7e70: $b5
    ld [$2b6e], a                                 ; $7e71: $ea $6e $2b
    add [hl]                                      ; $7e74: $86
    ld de, $5db7                                  ; $7e75: $11 $b7 $5d
    cp d                                          ; $7e78: $ba
    ld [hl], b                                    ; $7e79: $70
    add $d8                                       ; $7e7a: $c6 $d8
    and a                                         ; $7e7c: $a7
    ld [hl], c                                    ; $7e7d: $71
    xor l                                         ; $7e7e: $ad
    ld a, d                                       ; $7e7f: $7a
    ldh [$e8], a                                  ; $7e80: $e0 $e8
    ld sp, hl                                     ; $7e82: $f9
    adc [hl]                                      ; $7e83: $8e
    dec hl                                        ; $7e84: $2b
    ld d, e                                       ; $7e85: $53
    ret nc                                        ; $7e86: $d0

    ld c, b                                       ; $7e87: $48
    ld d, l                                       ; $7e88: $55
    inc de                                        ; $7e89: $13

jr_02e_7e8a:
    res 0, b                                      ; $7e8a: $cb $80

jr_02e_7e8c:
    ld b, [hl]                                    ; $7e8c: $46
    jr nc, jr_02e_7e8c                            ; $7e8d: $30 $fd

    or c                                          ; $7e8f: $b1
    ld l, a                                       ; $7e90: $6f
    adc [hl]                                      ; $7e91: $8e
    and h                                         ; $7e92: $a4
    ret z                                         ; $7e93: $c8

    ld [hl], a                                    ; $7e94: $77
    or h                                          ; $7e95: $b4
    ld h, c                                       ; $7e96: $61
    call nc, Call_02e_5fd3                        ; $7e97: $d4 $d3 $5f
    ld [$41fd], a                                 ; $7e9a: $ea $fd $41
    jr jr_02e_7eea                                ; $7e9d: $18 $4b

    ld sp, hl                                     ; $7e9f: $f9
    ld a, [hl-]                                   ; $7ea0: $3a
    ld a, c                                       ; $7ea1: $79
    db $dd                                        ; $7ea2: $dd
    ld e, b                                       ; $7ea3: $58
    or $ab                                        ; $7ea4: $f6 $ab
    ld de, $de74                                  ; $7ea6: $11 $74 $de
    adc c                                         ; $7ea9: $89
    xor a                                         ; $7eaa: $af
    xor e                                         ; $7eab: $ab
    sub d                                         ; $7eac: $92
    or a                                          ; $7ead: $b7
    push af                                       ; $7eae: $f5
    or l                                          ; $7eaf: $b5
    nop                                           ; $7eb0: $00
    adc h                                         ; $7eb1: $8c
    dec [hl]                                      ; $7eb2: $35
    sbc $35                                       ; $7eb3: $de $35
    xor l                                         ; $7eb5: $ad
    adc $f8                                       ; $7eb6: $ce $f8
    ei                                            ; $7eb8: $fb
    ld e, a                                       ; $7eb9: $5f
    cp [hl]                                       ; $7eba: $be
    ld a, a                                       ; $7ebb: $7f
    rst $00                                       ; $7ebc: $c7
    xor d                                         ; $7ebd: $aa
    ld a, c                                       ; $7ebe: $79
    ld c, [hl]                                    ; $7ebf: $4e
    ld e, d                                       ; $7ec0: $5a
    ld b, $1e                                     ; $7ec1: $06 $1e
    xor [hl]                                      ; $7ec3: $ae
    ld a, c                                       ; $7ec4: $79

Jump_02e_7ec5:
    ldh [$d3], a                                  ; $7ec5: $e0 $d3
    ld e, a                                       ; $7ec7: $5f
    di                                            ; $7ec8: $f3
    ld [hl+], a                                   ; $7ec9: $22
    ld l, [hl]                                    ; $7eca: $6e
    ld e, h                                       ; $7ecb: $5c
    ld a, $f8                                     ; $7ecc: $3e $f8
    xor d                                         ; $7ece: $aa
    ld c, l                                       ; $7ecf: $4d
    ld l, h                                       ; $7ed0: $6c
    ld bc, $0c1d                                  ; $7ed1: $01 $1d $0c
    inc hl                                        ; $7ed4: $23
    rst $08                                       ; $7ed5: $cf
    di                                            ; $7ed6: $f3
    ld h, l                                       ; $7ed7: $65
    nop                                           ; $7ed8: $00
    rst $10                                       ; $7ed9: $d7
    ld [$2968], sp                                ; $7eda: $08 $68 $29
    call nc, $a55f                                ; $7edd: $d4 $5f $a5
    sub l                                         ; $7ee0: $95
    cp e                                          ; $7ee1: $bb
    ld sp, $7d0f                                  ; $7ee2: $31 $0f $7d
    db $fc                                        ; $7ee5: $fc
    db $fd                                        ; $7ee6: $fd
    ld a, a                                       ; $7ee7: $7f
    ld d, e                                       ; $7ee8: $53
    db $ed                                        ; $7ee9: $ed

jr_02e_7eea:
    and c                                         ; $7eea: $a1

Jump_02e_7eeb:
    dec l                                         ; $7eeb: $2d
    push af                                       ; $7eec: $f5
    rst $28                                       ; $7eed: $ef
    add [hl]                                      ; $7eee: $86
    db $d3                                        ; $7eef: $d3
    ld h, a                                       ; $7ef0: $67
    ld d, b                                       ; $7ef1: $50
    db $e3                                        ; $7ef2: $e3
    ld [hl], a                                    ; $7ef3: $77
    ld b, l                                       ; $7ef4: $45
    ld e, b                                       ; $7ef5: $58
    adc l                                         ; $7ef6: $8d
    ld a, h                                       ; $7ef7: $7c
    sub l                                         ; $7ef8: $95
    db $ed                                        ; $7ef9: $ed
    or d                                          ; $7efa: $b2
    ld b, [hl]                                    ; $7efb: $46
    or l                                          ; $7efc: $b5
    adc c                                         ; $7efd: $89
    dec l                                         ; $7efe: $2d
    push af                                       ; $7eff: $f5
    or l                                          ; $7f00: $b5
    ld b, [hl]                                    ; $7f01: $46
    ret nc                                        ; $7f02: $d0

    ld a, c                                       ; $7f03: $79
    ld d, [hl]                                    ; $7f04: $56
    adc d                                         ; $7f05: $8a
    ld a, h                                       ; $7f06: $7c
    call c, $ac7e                                 ; $7f07: $dc $7e $ac
    ret c                                         ; $7f0a: $d8

    ld c, [hl]                                    ; $7f0b: $4e
    cp c                                          ; $7f0c: $b9
    add l                                         ; $7f0d: $85
    sbc h                                         ; $7f0e: $9c
    pop de                                        ; $7f0f: $d1
    jp nz, $ac7e                                  ; $7f10: $c2 $7e $ac

    ld l, e                                       ; $7f13: $6b
    ld [hl], d                                    ; $7f14: $72
    adc l                                         ; $7f15: $8d
    add c                                         ; $7f16: $81
    jp c, $16c4                                   ; $7f17: $da $c4 $16

    daa                                           ; $7f1a: $27
    inc bc                                        ; $7f1b: $03
    ld c, [hl]                                    ; $7f1c: $4e
    ld b, c                                       ; $7f1d: $41
    dec hl                                        ; $7f1e: $2b
    ld [hl], l                                    ; $7f1f: $75
    ld l, d                                       ; $7f20: $6a
    rrca                                          ; $7f21: $0f
    ld l, l                                       ; $7f22: $6d
    ld bc, $1d1d                                  ; $7f23: $01 $1d $1d
    ld h, e                                       ; $7f26: $63
    ld bc, $a2be                                  ; $7f27: $01 $be $a2
    and l                                         ; $7f2a: $a5
    dec c                                         ; $7f2b: $0d
    xor c                                         ; $7f2c: $a9
    ld [hl], $b1                                  ; $7f2d: $36 $b1
    dec b                                         ; $7f2f: $05
    rst $00                                       ; $7f30: $c7
    sbc d                                         ; $7f31: $9a
    ld a, e                                       ; $7f32: $7b
    call Call_000_3e3a                            ; $7f33: $cd $3a $3e
    ld [hl+], a                                   ; $7f36: $22
    ld a, c                                       ; $7f37: $79
    ld l, l                                       ; $7f38: $6d
    ld [c], a                                     ; $7f39: $e2
    adc [hl]                                      ; $7f3a: $8e

jr_02e_7f3b:
    inc d                                         ; $7f3b: $14
    ei                                            ; $7f3c: $fb
    ld a, c                                       ; $7f3d: $79
    inc h                                         ; $7f3e: $24
    ld d, a                                       ; $7f3f: $57
    ld l, h                                       ; $7f40: $6c
    rra                                           ; $7f41: $1f
    sub b                                         ; $7f42: $90
    sub d                                         ; $7f43: $92
    dec sp                                        ; $7f44: $3b
    xor d                                         ; $7f45: $aa
    db $d3                                        ; $7f46: $d3
    adc [hl]                                      ; $7f47: $8e
    ld a, [hl-]                                   ; $7f48: $3a

Call_02e_7f49:
    ld [hl], c                                    ; $7f49: $71
    dec e                                         ; $7f4a: $1d
    ld c, a                                       ; $7f4b: $4f
    jr c, jr_02e_7f3b                             ; $7f4c: $38 $ed

    call nc, $b8e4                                ; $7f4e: $d4 $e4 $b8
    db $fd                                        ; $7f51: $fd
    ld e, b                                       ; $7f52: $58
    or c                                          ; $7f53: $b1
    sbc l                                         ; $7f54: $9d
    ld [hl], d                                    ; $7f55: $72
    dec bc                                        ; $7f56: $0b
    add hl, sp                                    ; $7f57: $39
    and e                                         ; $7f58: $a3
    jp c, $f5c4                                   ; $7f59: $da $c4 $f5

    push de                                       ; $7f5c: $d5
    rst $20                                       ; $7f5d: $e7
    sbc d                                         ; $7f5e: $9a
    add a                                         ; $7f5f: $87
    sbc a                                         ; $7f60: $9f
    ld h, d                                       ; $7f61: $62
    ld e, h                                       ; $7f62: $5c
    xor e                                         ; $7f63: $ab
    ld e, $fe                                     ; $7f64: $1e $fe
    ld e, b                                       ; $7f66: $58
    di                                            ; $7f67: $f3
    ret nz                                        ; $7f68: $c0

    ld d, a                                       ; $7f69: $57
    ld l, h                                       ; $7f6a: $6c
    sub l                                         ; $7f6b: $95
    ld h, c                                       ; $7f6c: $61
    cp h                                          ; $7f6d: $bc
    sbc a                                         ; $7f6e: $9f
    rst $28                                       ; $7f6f: $ef
    jr z, jr_02e_7fcc                             ; $7f70: $28 $5a

    ld h, l                                       ; $7f72: $65
    ld hl, sp+$49                                 ; $7f73: $f8 $49
    rst $18                                       ; $7f75: $df
    ld a, $25                                     ; $7f76: $3e $25
    ld h, a                                       ; $7f78: $67

jr_02e_7f79:
    jr nc, jr_02e_7f79                            ; $7f79: $30 $fe

    sbc h                                         ; $7f7b: $9c
    ld e, $7a                                     ; $7f7c: $1e $7a
    sbc $02                                       ; $7f7e: $de $02
    ld e, c                                       ; $7f80: $59
    ld [hl+], a                                   ; $7f81: $22
    jp nc, $0fd2                                  ; $7f82: $d2 $d2 $0f

    inc hl                                        ; $7f85: $23
    cp c                                          ; $7f86: $b9
    ld l, h                                       ; $7f87: $6c
    dec l                                         ; $7f88: $2d
    db $e4                                        ; $7f89: $e4
    add [hl]                                      ; $7f8a: $86
    ld l, e                                       ; $7f8b: $6b
    inc e                                         ; $7f8c: $1c
    cp b                                          ; $7f8d: $b8
    ld a, $e5                                     ; $7f8e: $3e $e5
    dec l                                         ; $7f90: $2d
    daa                                           ; $7f91: $27
    jp Jump_02e_415d                              ; $7f92: $c3 $5d $41


    push af                                       ; $7f95: $f5
    ld l, $2d                                     ; $7f96: $2e $2d
    inc bc                                        ; $7f98: $03
    cp b                                          ; $7f99: $b8
    ret nc                                        ; $7f9a: $d0

    ld a, [de]                                    ; $7f9b: $1a
    adc e                                         ; $7f9c: $8b
    ld d, b                                       ; $7f9d: $50
    db $ed                                        ; $7f9e: $ed
    and c                                         ; $7f9f: $a1
    dec l                                         ; $7fa0: $2d
    push af                                       ; $7fa1: $f5
    dec [hl]                                      ; $7fa2: $35
    cp d                                          ; $7fa3: $ba
    dec de                                        ; $7fa4: $1b
    ld c, [hl]                                    ; $7fa5: $4e
    ld d, b                                       ; $7fa6: $50
    sbc e                                         ; $7fa7: $9b
    ret c                                         ; $7fa8: $d8

    ld [bc], a                                    ; $7fa9: $02
    sbc l                                         ; $7faa: $9d
    ld d, b                                       ; $7fab: $50
    ccf                                           ; $7fac: $3f
    sub d                                         ; $7fad: $92
    inc hl                                        ; $7fae: $23
    call nc, $e48f                                ; $7faf: $d4 $8f $e4
    adc [hl]                                      ; $7fb2: $8e
    dec [hl]                                      ; $7fb3: $35
    rst $30                                       ; $7fb4: $f7
    sbc d                                         ; $7fb5: $9a
    ld [hl], l                                    ; $7fb6: $75
    ld a, h                                       ; $7fb7: $7c
    ld b, h                                       ; $7fb8: $44
    ld a, [c]                                     ; $7fb9: $f2
    jp c, $d5c4                                   ; $7fba: $da $c4 $d5

    rst $10                                       ; $7fbd: $d7
    jp z, Jump_000_30dd                           ; $7fbe: $ca $dd $30

    cp c                                          ; $7fc1: $b9
    ld c, $c6                                     ; $7fc2: $0e $c6
    xor l                                         ; $7fc4: $ad
    jp nc, $e23a                                  ; $7fc5: $d2 $3a $e2

    cp a                                          ; $7fc8: $bf
    sub h                                         ; $7fc9: $94
    or a                                          ; $7fca: $b7
    rst $38                                       ; $7fcb: $ff

jr_02e_7fcc:
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
