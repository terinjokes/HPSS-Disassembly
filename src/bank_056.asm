; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $056", ROMX[$4000], BANK[$56]

    ld d, [hl]                                    ; $4000: $56
    dec a                                         ; $4001: $3d
    xor a                                         ; $4002: $af
    ld c, d                                       ; $4003: $4a
    and e                                         ; $4004: $a3
    ld e, l                                       ; $4005: $5d
    ld a, [c]                                     ; $4006: $f2
    sub a                                         ; $4007: $97
    sbc b                                         ; $4008: $98
    rst $10                                       ; $4009: $d7
    ret                                           ; $400a: $c9


    ei                                            ; $400b: $fb
    ld sp, $967a                                  ; $400c: $31 $7a $96
    ldh a, [rNR50]                                ; $400f: $f0 $24
    inc l                                         ; $4011: $2c
    db $e3                                        ; $4012: $e3
    ld de, $464f                                  ; $4013: $11 $4f $46
    cp h                                          ; $4016: $bc
    ld a, [de]                                    ; $4017: $1a
    xor l                                         ; $4018: $ad
    adc e                                         ; $4019: $8b
    sbc b                                         ; $401a: $98
    and a                                         ; $401b: $a7
    di                                            ; $401c: $f3
    adc b                                         ; $401d: $88
    inc h                                         ; $401e: $24
    sub a                                         ; $401f: $97
    ld a, d                                       ; $4020: $7a
    ld [hl-], a                                   ; $4021: $32
    ld [c], a                                     ; $4022: $e2
    ret                                           ; $4023: $c9


    ld h, d                                       ; $4024: $62
    add $d8                                       ; $4025: $c6 $d8
    or l                                          ; $4027: $b5
    db $e3                                        ; $4028: $e3
    jr nc, jr_056_4065                            ; $4029: $30 $3a

    ld d, a                                       ; $402b: $57
    ld a, [$1eef]                                 ; $402c: $fa $ef $1e
    db $fd                                        ; $402f: $fd
    sbc h                                         ; $4030: $9c
    rrca                                          ; $4031: $0f
    ld de, $5b77                                  ; $4032: $11 $77 $5b
    and [hl]                                      ; $4035: $a6

jr_056_4036:
    call z, Call_056_5c4b                         ; $4036: $cc $4b $5c
    pop de                                        ; $4039: $d1
    or l                                          ; $403a: $b5
    cp a                                          ; $403b: $bf
    ld d, a                                       ; $403c: $57
    ld h, l                                       ; $403d: $65
    ld e, $fe                                     ; $403e: $1e $fe
    call z, Call_056_61da                         ; $4040: $cc $da $61
    rst $10                                       ; $4043: $d7
    inc l                                         ; $4044: $2c
    ld [hl-], a                                   ; $4045: $32
    ret                                           ; $4046: $c9


    sub [hl]                                      ; $4047: $96
    add l                                         ; $4048: $85
    daa                                           ; $4049: $27
    ld bc, $8fae                                  ; $404a: $01 $ae $8f
    jp Jump_056_72b8                              ; $404d: $c3 $b8 $72


    ld c, l                                       ; $4050: $4d
    sbc c                                         ; $4051: $99
    add a                                         ; $4052: $87
    xor c                                         ; $4053: $a9
    and l                                         ; $4054: $a5
    call Call_000_3d9a                            ; $4055: $cd $9a $3d
    sbc [hl]                                      ; $4058: $9e
    ld h, h                                       ; $4059: $64
    adc a                                         ; $405a: $8f
    ld a, [hl]                                    ; $405b: $7e
    push de                                       ; $405c: $d5
    ld a, [hl]                                    ; $405d: $7e
    sbc b                                         ; $405e: $98
    db $f4                                        ; $405f: $f4
    ld d, l                                       ; $4060: $55
    ret c                                         ; $4061: $d8

    or l                                          ; $4062: $b5
    db $e3                                        ; $4063: $e3
    nop                                           ; $4064: $00

jr_056_4065:
    ld de, $fe3d                                  ; $4065: $11 $3d $fe
    ld d, e                                       ; $4068: $53
    xor [hl]                                      ; $4069: $ae
    call nc, Call_056_47bb                        ; $406a: $d4 $bb $47
    jp $29ae                                      ; $406d: $c3 $ae $29


    sub a                                         ; $4070: $97
    ld [hl], a                                    ; $4071: $77
    ld [hl], d                                    ; $4072: $72
    ld a, e                                       ; $4073: $7b
    and e                                         ; $4074: $a3
    cp e                                          ; $4075: $bb
    ld l, d                                       ; $4076: $6a
    jp z, $9de5                                   ; $4077: $ca $e5 $9d

    ld hl, sp-$26                                 ; $407a: $f8 $da
    adc b                                         ; $407c: $88
    adc [hl]                                      ; $407d: $8e
    pop af                                        ; $407e: $f1
    ld a, [hl]                                    ; $407f: $7e
    add sp, $58                                   ; $4080: $e8 $58
    ld a, d                                       ; $4082: $7a
    ld hl, $35bd                                  ; $4083: $21 $bd $35
    and c                                         ; $4086: $a1
    cp [hl]                                       ; $4087: $be
    jp nc, Jump_056_488e                          ; $4088: $d2 $8e $48

    cp $99                                        ; $408b: $fe $99
    ld h, h                                       ; $408d: $64
    res 2, d                                      ; $408e: $cb $92
    rst $18                                       ; $4090: $df
    sbc d                                         ; $4091: $9a
    rla                                           ; $4092: $17
    inc sp                                        ; $4093: $33
    add $de                                       ; $4094: $c6 $de
    ld [hl], c                                    ; $4096: $71
    jr jr_056_4036                                ; $4097: $18 $9d

    dec hl                                        ; $4099: $2b
    db $fd                                        ; $409a: $fd
    ld [hl], a                                    ; $409b: $77
    adc a                                         ; $409c: $8f
    ld a, [hl]                                    ; $409d: $7e
    adc $d7                                       ; $409e: $ce $d7
    adc [hl]                                      ; $40a0: $8e
    ld c, b                                       ; $40a1: $48
    ld [hl], d                                    ; $40a2: $72
    xor c                                         ; $40a3: $a9
    daa                                           ; $40a4: $27
    dec sp                                        ; $40a5: $3b
    ld d, c                                       ; $40a6: $51
    ld l, a                                       ; $40a7: $6f
    call $5e53                                    ; $40a8: $cd $53 $5e
    and b                                         ; $40ab: $a0
    ld b, [hl]                                    ; $40ac: $46
    rst $10                                       ; $40ad: $d7
    jp $10bd                                      ; $40ae: $c3 $bd $10


    ld a, l                                       ; $40b1: $7d
    or d                                          ; $40b2: $b2
    halt                                          ; $40b3: $76
    daa                                           ; $40b4: $27
    db $e3                                        ; $40b5: $e3
    ld [hl], l                                    ; $40b6: $75
    inc e                                         ; $40b7: $1c
    halt                                          ; $40b8: $76
    sbc $f8                                       ; $40b9: $de $f8
    or a                                          ; $40bb: $b7
    ld de, $464f                                  ; $40bc: $11 $4f $46
    sub a                                         ; $40bf: $97
    ld sp, $c4b6                                  ; $40c0: $31 $b6 $c4
    ld d, a                                       ; $40c3: $57
    ld d, $ed                                     ; $40c4: $16 $ed
    sub h                                         ; $40c6: $94
    ld a, c                                       ; $40c7: $79
    xor [hl]                                      ; $40c8: $ae
    and l                                         ; $40c9: $a5
    ld e, a                                       ; $40ca: $5f
    ld a, c                                       ; $40cb: $79
    call nc, $e90e                                ; $40cc: $d4 $0e $e9
    sub $3c                                       ; $40cf: $d6 $3c
    ld h, l                                       ; $40d1: $65
    ld e, c                                       ; $40d2: $59
    sbc c                                         ; $40d3: $99

jr_056_40d4:
    reti                                          ; $40d4: $d9


    dec sp                                        ; $40d5: $3b
    db $ed                                        ; $40d6: $ed
    add l                                         ; $40d7: $85
    inc sp                                        ; $40d8: $33
    xor h                                         ; $40d9: $ac
    sbc a                                         ; $40da: $9f
    rra                                           ; $40db: $1f
    and e                                         ; $40dc: $a3
    ld b, l                                       ; $40dd: $45
    cp e                                          ; $40de: $bb
    ld b, e                                       ; $40df: $43
    db $ed                                        ; $40e0: $ed
    db $e4                                        ; $40e1: $e4
    ld b, h                                       ; $40e2: $44
    ld e, h                                       ; $40e3: $5c
    cp e                                          ; $40e4: $bb
    ld b, a                                       ; $40e5: $47
    ccf                                           ; $40e6: $3f
    rst $20                                       ; $40e7: $e7
    jp Jump_056_7801                              ; $40e8: $c3 $01 $78


    push bc                                       ; $40eb: $c5
    ld a, e                                       ; $40ec: $7b
    inc a                                         ; $40ed: $3c
    ld [c], a                                     ; $40ee: $e2
    ret                                           ; $40ef: $c9


    ld [c], a                                     ; $40f0: $e2
    dec hl                                        ; $40f1: $2b
    bit 1, [hl]                                   ; $40f2: $cb $4e
    call nc, $f35b                                ; $40f4: $d4 $5b $f3
    sub h                                         ; $40f7: $94
    ld e, $a3                                     ; $40f8: $1e $a3
    sub a                                         ; $40fa: $97
    ld c, c                                       ; $40fb: $49
    ld [hl], d                                    ; $40fc: $72
    ret c                                         ; $40fd: $d8

    ld l, d                                       ; $40fe: $6a
    jp z, $873c                                   ; $40ff: $ca $3c $87

    ld h, b                                       ; $4102: $60
    sbc $8b                                       ; $4103: $de $8b
    pop de                                        ; $4105: $d1
    push af                                       ; $4106: $f5
    ld a, b                                       ; $4107: $78
    ld b, d                                       ; $4108: $42
    push de                                       ; $4109: $d5
    ld a, [hl-]                                   ; $410a: $3a
    ld c, $eb                                     ; $410b: $0e $eb
    sub d                                         ; $410d: $92
    inc de                                        ; $410e: $13
    rst $18                                       ; $410f: $df
    or b                                          ; $4110: $b0
    jp Jump_056_7994                              ; $4111: $c3 $94 $79


    add a                                         ; $4114: $87
    ld a, [de]                                    ; $4115: $1a
    db $dd                                        ; $4116: $dd
    ld d, a                                       ; $4117: $57
    ld h, e                                       ; $4118: $63
    adc b                                         ; $4119: $88
    nop                                           ; $411a: $00
    add b                                         ; $411b: $80
    rst $38                                       ; $411c: $ff
    jr nc, jr_056_40d4                            ; $411d: $30 $b5

    di                                            ; $411f: $f3
    ld b, a                                       ; $4120: $47
    rst $10                                       ; $4121: $d7
    dec de                                        ; $4122: $1b
    rst $38                                       ; $4123: $ff
    or [hl]                                       ; $4124: $b6
    ld e, $1d                                     ; $4125: $1e $1d
    scf                                           ; $4127: $37
    rra                                           ; $4128: $1f
    pop de                                        ; $4129: $d1
    xor e                                         ; $412a: $ab
    ld h, $14                                     ; $412b: $26 $14
    ld e, h                                       ; $412d: $5c
    or a                                          ; $412e: $b7
    ld a, c                                       ; $412f: $79
    sbc b                                         ; $4130: $98

jr_056_4131:
    ld e, d                                       ; $4131: $5a
    jp nc, Jump_056_7957                          ; $4132: $d2 $57 $79

    add hl, hl                                    ; $4135: $29
    ld c, l                                       ; $4136: $4d
    xor a                                         ; $4137: $af
    sbc l                                         ; $4138: $9d
    adc h                                         ; $4139: $8c
    ld [hl], a                                    ; $413a: $77
    ld [hl], d                                    ; $413b: $72
    dec bc                                        ; $413c: $0b
    db $ec                                        ; $413d: $ec
    db $dd                                        ; $413e: $dd
    sub e                                         ; $413f: $93
    dec hl                                        ; $4140: $2b
    db $ed                                        ; $4141: $ed
    ld [c], a                                     ; $4142: $e2
    pop af                                        ; $4143: $f1
    ld l, a                                       ; $4144: $6f

Call_056_4145:
    db $eb                                        ; $4145: $eb
    xor l                                         ; $4146: $ad
    add hl, bc                                    ; $4147: $09
    push af                                       ; $4148: $f5
    dec d                                         ; $4149: $15

Jump_056_414a:
    ld b, h                                       ; $414a: $44
    ld [hl], a                                    ; $414b: $77
    ld e, e                                       ; $414c: $5b
    sub [hl]                                      ; $414d: $96
    db $fc                                        ; $414e: $fc
    dec h                                         ; $414f: $25
    and $75                                       ; $4150: $e6 $75
    ld a, [c]                                     ; $4152: $f2
    ld a, [hl]                                    ; $4153: $7e
    adc h                                         ; $4154: $8c
    ld e, $91                                     ; $4155: $1e $91
    db $e4                                        ; $4157: $e4
    ld e, d                                       ; $4158: $5a
    adc a                                         ; $4159: $8f
    adc [hl]                                      ; $415a: $8e
    sbc e                                         ; $415b: $9b
    adc a                                         ; $415c: $8f
    add sp, $55                                   ; $415d: $e8 $55
    ld h, a                                       ; $415f: $67
    ld sp, $e70b                                  ; $4160: $31 $0b $e7
    sbc d                                         ; $4163: $9a
    dec bc                                        ; $4164: $0b
    ld [hl+], a                                   ; $4165: $22
    add b                                         ; $4166: $80
    rst $38                                       ; $4167: $ff
    ld l, b                                       ; $4168: $68
    xor d                                         ; $4169: $aa
    sub $cc                                       ; $416a: $d6 $cc
    sub $4e                                       ; $416c: $d6 $4e
    dec a                                         ; $416e: $3d
    jr c, jr_056_4131                             ; $416f: $38 $c0

    ld a, a                                       ; $4171: $7f
    add c                                         ; $4172: $81
    xor d                                         ; $4173: $aa
    ld de, $6b89                                  ; $4174: $11 $89 $6b
    db $fc                                        ; $4177: $fc
    db $db                                        ; $4178: $db

jr_056_4179:
    ld [de], a                                    ; $4179: $12
    xor d                                         ; $417a: $aa
    ld a, b                                       ; $417b: $78
    add hl, sp                                    ; $417c: $39
    inc c                                         ; $417d: $0c
    ld [hl], a                                    ; $417e: $77
    or c                                          ; $417f: $b1
    rst $08                                       ; $4180: $cf
    cp $7a                                        ; $4181: $fe $7a
    rst $10                                       ; $4183: $d7
    and a                                         ; $4184: $a7
    jp hl                                         ; $4185: $e9


    cpl                                           ; $4186: $2f
    ld bc, $8022                                  ; $4187: $01 $22 $80
    call $fa53                                    ; $418a: $cd $53 $fa
    adc b                                         ; $418d: $88
    inc h                                         ; $418e: $24
    rst $10                                       ; $418f: $d7
    ld a, d                                       ; $4190: $7a
    ld [hl], h                                    ; $4191: $74

jr_056_4192:
    call c, Call_056_447c                         ; $4192: $dc $7c $44
    xor a                                         ; $4195: $af
    sbc d                                         ; $4196: $9a
    xor e                                         ; $4197: $ab
    rla                                           ; $4198: $17
    ld [bc], a                                    ; $4199: $02
    rst $30                                       ; $419a: $f7
    ld hl, sp+$6b                                 ; $419b: $f8 $6b
    rst $10                                       ; $419d: $d7
    ld [hl], c                                    ; $419e: $71
    jr jr_056_4192                                ; $419f: $18 $f1

    ld l, d                                       ; $41a1: $6a
    ccf                                           ; $41a2: $3f
    ld b, [hl]                                    ; $41a3: $46
    rst $28                                       ; $41a4: $ef

jr_056_41a5:
    sbc b                                         ; $41a5: $98
    ld a, c                                       ; $41a6: $79
    call nz, $fbc3                                ; $41a7: $c4 $c3 $fb
    inc hl                                        ; $41aa: $23
    call c, $f53c                                 ; $41ab: $dc $3c $f5
    ld [bc], a                                    ; $41ae: $02
    ld b, h                                       ; $41af: $44
    rst $30                                       ; $41b0: $f7
    ld h, h                                       ; $41b1: $64
    set 1, [hl]                                   ; $41b2: $cb $ce
    db $db                                        ; $41b4: $db
    db $e3                                        ; $41b5: $e3
    ld de, $964f                                  ; $41b6: $11 $4f $96
    ld l, [hl]                                    ; $41b9: $6e
    ld e, [hl]                                    ; $41ba: $5e
    ld a, h                                       ; $41bb: $7c
    adc l                                         ; $41bc: $8d
    sub a                                         ; $41bd: $97
    adc $c5                                       ; $41be: $ce $c5
    db $e3                                        ; $41c0: $e3
    rst $18                                       ; $41c1: $df
    ld h, [hl]                                    ; $41c2: $66
    ld e, [hl]                                    ; $41c3: $5e
    ld a, [c]                                     ; $41c4: $f2
    inc hl                                        ; $41c5: $23
    rst $38                                       ; $41c6: $ff
    jr nc, jr_056_41a5                            ; $41c7: $30 $dc

    push bc                                       ; $41c9: $c5
    add [hl]                                      ; $41ca: $86
    ld [$4480], sp                                ; $41cb: $08 $80 $44
    ld c, [hl]                                    ; $41ce: $4e
    call nc, $a534                                ; $41cf: $d4 $34 $a5
    ld e, l                                       ; $41d2: $5d
    ld h, d                                       ; $41d3: $62
    sbc [hl]                                      ; $41d4: $9e
    jp nc, Jump_000_2447                          ; $41d5: $d2 $47 $24

    cp c                                          ; $41d8: $b9
    sub [hl]                                      ; $41d9: $96
    db $fc                                        ; $41da: $fc
    pop de                                        ; $41db: $d1
    ld e, a                                       ; $41dc: $5f
    call nz, $1eb5                                ; $41dd: $c4 $b5 $1e
    dec e                                         ; $41e0: $1d
    scf                                           ; $41e1: $37
    rra                                           ; $41e2: $1f
    pop de                                        ; $41e3: $d1
    xor e                                         ; $41e4: $ab
    ld a, d                                       ; $41e5: $7a
    ld hl, $c93d                                  ; $41e6: $21 $3d $c9
    ccf                                           ; $41e9: $3f
    db $eb                                        ; $41ea: $eb
    jr c, jr_056_4179                             ; $41eb: $38 $8c

    ld a, b                                       ; $41ed: $78
    ld c, d                                       ; $41ee: $4a
    ld a, c                                       ; $41ef: $79
    ret                                           ; $41f0: $c9


    ccf                                           ; $41f1: $3f
    add a                                         ; $41f2: $87
    and a                                         ; $41f3: $a7
    call z, $11da                                 ; $41f4: $cc $da $11
    ld c, a                                       ; $41f7: $4f
    add hl, hl                                    ; $41f8: $29
    xor a                                         ; $41f9: $af
    db $e3                                        ; $41fa: $e3
    or b                                          ; $41fb: $b0
    rra                                           ; $41fc: $1f
    and e                                         ; $41fd: $a3
    ld [hl], a                                    ; $41fe: $77
    ld e, [hl]                                    ; $41ff: $5e
    ldh [$29], a                                  ; $4200: $e0 $29
    inc sp                                        ; $4202: $33
    ld e, h                                       ; $4203: $5c
    rst $08                                       ; $4204: $cf
    sub e                                         ; $4205: $93
    cp c                                          ; $4206: $b9
    ld h, [hl]                                    ; $4207: $66
    ld e, c                                       ; $4208: $59
    ld h, $49                                     ; $4209: $26 $49
    ld a, [hl]                                    ; $420b: $7e
    call z, Call_056_4fc3                         ; $420c: $cc $c3 $4f
    inc b                                         ; $420f: $04
    ld [hl+], a                                   ; $4210: $22
    rst $30                                       ; $4211: $f7
    ld d, l                                       ; $4212: $55
    and [hl]                                      ; $4213: $a6
    ld a, l                                       ; $4214: $7d
    ld c, [hl]                                    ; $4215: $4e
    ld l, $ed                                     ; $4216: $2e $ed
    ld [de], a                                    ; $4218: $12
    di                                            ; $4219: $f3
    sub h                                         ; $421a: $94
    ld a, $22                                     ; $421b: $3e $22
    ret                                           ; $421d: $c9


    or l                                          ; $421e: $b5
    db $e4                                        ; $421f: $e4
    adc a                                         ; $4220: $8f
    cp $22                                        ; $4221: $fe $22
    xor [hl]                                      ; $4223: $ae
    push af                                       ; $4224: $f5
    add sp, -$48                                  ; $4225: $e8 $b8
    ld sp, hl                                     ; $4227: $f9
    adc b                                         ; $4228: $88
    ld e, [hl]                                    ; $4229: $5e
    push de                                       ; $422a: $d5
    dec bc                                        ; $422b: $0b
    ld bc, $1c7d                                  ; $422c: $01 $7d $1c
    ld b, [hl]                                    ; $422f: $46
    ld [hl], h                                    ; $4230: $74
    dec d                                         ; $4231: $15
    ld a, e                                       ; $4232: $7b
    adc a                                         ; $4233: $8f
    ld b, a                                       ; $4234: $47

Call_056_4235:
Jump_056_4235:
    inc a                                         ; $4235: $3c
    add hl, de                                    ; $4236: $19
    and [hl]                                      ; $4237: $a6
    sbc b                                         ; $4238: $98

jr_056_4239:
    cp l                                          ; $4239: $bd
    ld a, [c]                                     ; $423a: $f2
    ccf                                           ; $423b: $3f
    ld e, [hl]                                    ; $423c: $5e
    ld a, [hl-]                                   ; $423d: $3a
    rla                                           ; $423e: $17
    jp $71f5                                      ; $423f: $c3 $f5 $71


    ld e, b                                       ; $4242: $58
    ld h, d                                       ; $4243: $62
    sbc $8f                                       ; $4244: $de $8f
    pop de                                        ; $4246: $d1
    bit 7, b                                      ; $4247: $cb $78
    call nz, Call_000_1193                        ; $4249: $c4 $93 $11
    xor a                                         ; $424c: $af
    ld d, [hl]                                    ; $424d: $56
    cp $87                                        ; $424e: $fe $87
    ld h, a                                       ; $4250: $67
    ld de, $220a                                  ; $4251: $11 $0a $22
    ld a, l                                       ; $4254: $7d
    inc e                                         ; $4255: $1c
    add [hl]                                      ; $4256: $86
    xor c                                         ; $4257: $a9
    dec e                                         ; $4258: $1d
    ld a, c                                       ; $4259: $79
    ld sp, $d87a                                  ; $425a: $31 $7a $d8
    ld l, d                                       ; $425d: $6a
    dec a                                         ; $425e: $3d
    ld a, [hl-]                                   ; $425f: $3a
    ld l, [hl]                                    ; $4260: $6e
    ld a, $a2                                     ; $4261: $3e $a2
    ld d, a                                       ; $4263: $57
    pop bc                                        ; $4264: $c1
    ld [hl], l                                    ; $4265: $75
    sbc e                                         ; $4266: $9b
    rst $20                                       ; $4267: $e7
    sbc d                                         ; $4268: $9a
    ld h, l                                       ; $4269: $65
    or c                                          ; $426a: $b1
    cp $71                                        ; $426b: $fe $71
    ld l, d                                       ; $426d: $6a
    inc b                                         ; $426e: $04
    nop                                           ; $426f: $00
    inc e                                         ; $4270: $1c
    add hl, sp                                    ; $4271: $39
    rst $10                                       ; $4272: $d7
    ld a, d                                       ; $4273: $7a
    ld [hl], h                                    ; $4274: $74
    call c, Call_056_447c                         ; $4275: $dc $7c $44
    xor a                                         ; $4278: $af
    sbc d                                         ; $4279: $9a
    ld l, e                                       ; $427a: $6b
    ld a, a                                       ; $427b: $7f
    ld [hl], a                                    ; $427c: $77
    ld h, l                                       ; $427d: $65
    ld d, c                                       ; $427e: $51
    ld e, c                                       ; $427f: $59
    ldh [$7a], a                                  ; $4280: $e0 $7a
    sbc [hl]                                      ; $4282: $9e
    inc l                                         ; $4283: $2c
    db $dd                                        ; $4284: $dd
    inc a                                         ; $4285: $3c
    or d                                          ; $4286: $b2
    jp hl                                         ; $4287: $e9


    ld a, h                                       ; $4288: $7c
    call c, $d87e                                 ; $4289: $dc $7e $d8
    rla                                           ; $428c: $17
    adc c                                         ; $428d: $89
    xor a                                         ; $428e: $af
    pop af                                        ; $428f: $f1
    ld hl, sp-$49                                 ; $4290: $f8 $b7
    db $dd                                        ; $4292: $dd
    db $fd                                        ; $4293: $fd
    jp nz, Jump_000_2657                          ; $4294: $c2 $57 $26

    ld e, a                                       ; $4297: $5f
    or c                                          ; $4298: $b1
    or c                                          ; $4299: $b1
    add l                                         ; $429a: $85
    call Call_000_3d70                            ; $429b: $cd $70 $3d
    ld c, c                                       ; $429e: $49
    ld l, $3a                                     ; $429f: $2e $3a
    rst $10                                       ; $42a1: $d7
    sub d                                         ; $42a2: $92
    rst $18                                       ; $42a3: $df
    and [hl]                                      ; $42a4: $a6
    db $f4                                        ; $42a5: $f4
    dec e                                         ; $42a6: $1d
    ld a, c                                       ; $42a7: $79
    ld sp, $d87a                                  ; $42a8: $31 $7a $d8
    ld l, d                                       ; $42ab: $6a
    call nz, $bdc3                                ; $42ac: $c4 $c3 $bd
    db $10                                        ; $42af: $10
    db $dd                                        ; $42b0: $dd
    and $b9                                       ; $42b1: $e6 $b9
    jr nz, jr_056_4239                            ; $42b3: $20 $84

    sub d                                         ; $42b5: $92
    dec a                                         ; $42b6: $3d
    ld l, h                                       ; $42b7: $6c
    or l                                          ; $42b8: $b5
    ld l, [hl]                                    ; $42b9: $6e
    cpl                                           ; $42ba: $2f
    ld sp, hl                                     ; $42bb: $f9
    rst $00                                       ; $42bc: $c7
    ld h, a                                       ; $42bd: $67
    add a                                         ; $42be: $87
    db $fd                                        ; $42bf: $fd
    dec b                                         ; $42c0: $05
    ld [hl+], a                                   ; $42c1: $22
    dec a                                         ; $42c2: $3d
    ld c, c                                       ; $42c3: $49
    ld l, $f5                                     ; $42c4: $2e $f5
    ld h, h                                       ; $42c6: $64
    adc c                                         ; $42c7: $89
    ld a, c                                       ; $42c8: $79
    ld c, d                                       ; $42c9: $4a
    ld e, a                                       ; $42ca: $5f
    add $53                                       ; $42cb: $c6 $53
    sub [hl]                                      ; $42cd: $96
    call nc, $dd08                                ; $42ce: $d4 $08 $dd
    and $c5                                       ; $42d1: $e6 $c5
    daa                                           ; $42d3: $27
    ld c, e                                       ; $42d4: $4b
    ld a, [$4f2a]                                 ; $42d5: $fa $2a $4f
    sbc c                                         ; $42d8: $99
    ld [hl], a                                    ; $42d9: $77
    ld e, $c6                                     ; $42da: $1e $c6
    add [hl]                                      ; $42dc: $86
    ld c, e                                       ; $42dd: $4b
    ld l, c                                       ; $42de: $69
    ld a, [hl-]                                   ; $42df: $3a
    add h                                         ; $42e0: $84
    or b                                          ; $42e1: $b0
    adc e                                         ; $42e2: $8b
    ret nc                                        ; $42e3: $d0

    ld c, [hl]                                    ; $42e4: $4e
    or d                                          ; $42e5: $b2
    ld h, l                                       ; $42e6: $65
    ld sp, $ec63                                  ; $42e7: $31 $63 $ec
    ld a, [de]                                    ; $42ea: $1a
    rst $38                                       ; $42eb: $ff
    ld [hl], $6a                                  ; $42ec: $36 $6a
    ld h, h                                       ; $42ee: $64
    ld [hl], l                                    ; $42ef: $75
    dec h                                         ; $42f0: $25
    ld e, $b5                                     ; $42f1: $1e $b5
    jp Jump_000_371d                              ; $42f3: $c3 $1d $37


    ld c, a                                       ; $42f6: $4f
    ld e, c                                       ; $42f7: $59
    jr nz, jr_056_42fc                            ; $42f8: $20 $02

    ld [hl], a                                    ; $42fa: $77
    ld c, b                                       ; $42fb: $48

jr_056_42fc:
    or b                                          ; $42fc: $b0
    inc l                                         ; $42fd: $2c
    ld a, $d9                                     ; $42fe: $3e $d9
    pop hl                                        ; $4300: $e1
    adc [hl]                                      ; $4301: $8e
    sbc e                                         ; $4302: $9b
    sub a                                         ; $4303: $97
    jp nz, Jump_056_62fe                          ; $4304: $c2 $fe $62

    pop de                                        ; $4307: $d1

Jump_056_4308:
    ld c, [hl]                                    ; $4308: $4e
    sbc c                                         ; $4309: $99
    rst $20                                       ; $430a: $e7
    jp c, $d18f                                   ; $430b: $da $8f $d1

Call_056_430e:
    jp $fb7a                                      ; $430e: $c3 $7a $fb


    ld bc, $47ae                                  ; $4311: $01 $ae $47
    rst $00                                       ; $4314: $c7
    call $f447                                    ; $4315: $cd $47 $f4
    xor d                                         ; $4318: $aa
    cp c                                          ; $4319: $b9
    add $bf                                       ; $431a: $c6 $bf
    and l                                         ; $431c: $a5
    ld e, a                                       ; $431d: $5f
    db $f4                                        ; $431e: $f4
    cp $70                                        ; $431f: $fe $70
    xor [hl]                                      ; $4321: $ae
    ld h, b                                       ; $4322: $60
    add c                                         ; $4323: $81
    db $eb                                        ; $4324: $eb
    ld a, c                                       ; $4325: $79
    or d                                          ; $4326: $b2
    db $e4                                        ; $4327: $e4
    or a                                          ; $4328: $b7
    ld c, c                                       ; $4329: $49
    adc [hl]                                      ; $432a: $8e
    inc hl                                        ; $432b: $23
    sbc $2c                                       ; $432c: $de $2c
    ld l, e                                       ; $432e: $6b
    ld c, a                                       ; $432f: $4f
    jp nz, $c3ce                                  ; $4330: $c2 $ce $c3

    db $fc                                        ; $4333: $fc
    sbc d                                         ; $4334: $9a
    add a                                         ; $4335: $87
    xor l                                         ; $4336: $ad
    and [hl]                                      ; $4337: $a6
    inc e                                         ; $4338: $1c
    sub [hl]                                      ; $4339: $96
    pop af                                        ; $433a: $f1
    sub h                                         ; $433b: $94
    sbc c                                         ; $433c: $99
    dec c                                         ; $433d: $0d
    ld de, $c93d                                  ; $433e: $11 $3d $c9
    ccf                                           ; $4341: $3f
    inc hl                                        ; $4342: $23
    ld [hl], h                                    ; $4343: $74
    ld e, c                                       ; $4344: $59
    ld h, d                                       ; $4345: $62
    sbc $e3                                       ; $4346: $de $e3
    push af                                       ; $4348: $f5
    add sp, -$48                                  ; $4349: $e8 $b8
    ld sp, hl                                     ; $434b: $f9
    adc b                                         ; $434c: $88
    ld e, [hl]                                    ; $434d: $5e
    dec [hl]                                      ; $434e: $35
    rst $10                                       ; $434f: $d7
    jp nc, $d8b9                                  ; $4350: $d2 $b9 $d8

    jp c, $e625                                   ; $4353: $da $25 $e6

    and l                                         ; $4356: $a5
    inc [hl]                                      ; $4357: $34
    cp l                                          ; $4358: $bd
    and [hl]                                      ; $4359: $a6
    call z, Call_000_27eb                         ; $435a: $cc $eb $27
    ret nz                                        ; $435d: $c0

    push af                                       ; $435e: $f5
    inc a                                         ; $435f: $3c
    add hl, de                                    ; $4360: $19
    ld e, c                                       ; $4361: $59
    ld e, l                                       ; $4362: $5d
    adc c                                         ; $4363: $89
    ld l, e                                       ; $4364: $6b
    rst $20                                       ; $4365: $e7
    rst $00                                       ; $4366: $c7
    add sp, -$1e                                  ; $4367: $e8 $e2
    ld d, c                                       ; $4369: $51
    db $e3                                        ; $436a: $e3
    or a                                          ; $436b: $b7
    inc d                                         ; $436c: $14
    or $17                                        ; $436d: $f6 $17
    set 7, [hl]                                   ; $436f: $cb $fe
    db $e4                                        ; $4371: $e4
    ld sp, $46a7                                  ; $4372: $31 $a7 $46
    db $dd                                        ; $4375: $dd
    and $a5                                       ; $4376: $e6 $a5
    call $da9a                                    ; $4378: $cd $9a $da
    db $e3                                        ; $437b: $e3
    ld [hl], l                                    ; $437c: $75
    inc e                                         ; $437d: $1c
    add [hl]                                      ; $437e: $86
    xor c                                         ; $437f: $a9
    add hl, bc                                    ; $4380: $09
    dec [hl]                                      ; $4381: $35
    cp d                                          ; $4382: $ba
    ld e, $1e                                     ; $4383: $1e $1e
    rst $38                                       ; $4385: $ff
    or [hl]                                       ; $4386: $b6
    inc d                                         ; $4387: $14
    or $17                                        ; $4388: $f6 $17
    set 5, b                                      ; $438a: $cb $e8
    xor [hl]                                      ; $438c: $ae
    ld a, [hl-]                                   ; $438d: $3a
    inc c                                         ; $438e: $0c
    ld de, $c477                                  ; $438f: $11 $77 $c4
    add sp, -$17                                  ; $4392: $e8 $e9
    ld l, h                                       ; $4394: $6c
    add hl, de                                    ; $4395: $19
    halt                                          ; $4396: $76

jr_056_4397:
    add b                                         ; $4397: $80
    ld [$b5b7], sp                                ; $4398: $08 $b7 $b5
    and $1a                                       ; $439b: $e6 $1a
    halt                                          ; $439d: $76
    ld c, b                                       ; $439e: $48
    adc l                                         ; $439f: $8d
    nop                                           ; $43a0: $00
    nop                                           ; $43a1: $00
    cp a                                          ; $43a2: $bf
    ld a, d                                       ; $43a3: $7a
    ld [hl], e                                    ; $43a4: $73
    db $ed                                        ; $43a5: $ed
    adc e                                         ; $43a6: $8b
    jr jr_056_4397                                ; $43a7: $18 $ee

    ld d, $1f                                     ; $43a9: $16 $1f
    ld e, [hl]                                    ; $43ab: $5e
    ld a, [c]                                     ; $43ac: $f2
    rst $00                                       ; $43ad: $c7
    xor a                                         ; $43ae: $af
    sub [hl]                                      ; $43af: $96
    inc de                                        ; $43b0: $13
    rst $10                                       ; $43b1: $d7
    ld a, [c]                                     ; $43b2: $f2
    add hl, sp                                    ; $43b3: $39
    adc e                                         ; $43b4: $8b
    adc a                                         ; $43b5: $8f
    inc h                                         ; $43b6: $24
    dec l                                         ; $43b7: $2d
    bit 4, c                                      ; $43b8: $cb $61
    db $10                                        ; $43ba: $10
    ld b, d                                       ; $43bb: $42
    inc b                                         ; $43bc: $04
    nop                                           ; $43bd: $00
    db $eb                                        ; $43be: $eb
    rra                                           ; $43bf: $1f
    ld a, [hl]                                    ; $43c0: $7e
    jp nc, $b76b                                  ; $43c1: $d2 $6b $b7

    push de                                       ; $43c4: $d5
    sub h                                         ; $43c5: $94
    ld a, $c2                                     ; $43c6: $3e $c2
    dec [hl]                                      ; $43c8: $35
    or c                                          ; $43c9: $b1
    ld [hl], d                                    ; $43ca: $72
    cpl                                           ; $43cb: $2f
    ld [$8f61], sp                                ; $43cc: $08 $61 $8f
    cp a                                          ; $43cf: $bf
    halt                                          ; $43d0: $76
    ld b, h                                       ; $43d1: $44
    ld a, [c]                                     ; $43d2: $f2
    and [hl]                                      ; $43d3: $a6
    ld [$ae27], a                                 ; $43d4: $ea $27 $ae
    add hl, hl                                    ; $43d7: $29
    sub a                                         ; $43d8: $97
    add a                                         ; $43d9: $87
    xor l                                         ; $43da: $ad
    ld a, d                                       ; $43db: $7a
    ld hl, $4877                                  ; $43dc: $21 $77 $48
    or b                                          ; $43df: $b0
    ldh a, [$97]                                  ; $43e0: $f0 $97
    and b                                         ; $43e2: $a0
    db $dd                                        ; $43e3: $dd
    dec a                                         ; $43e4: $3d
    cp a                                          ; $43e5: $bf
    jp hl                                         ; $43e6: $e9


    rlca                                          ; $43e7: $07
    ld [hl+], a                                   ; $43e8: $22
    db $dd                                        ; $43e9: $dd
    ld l, $8f                                     ; $43ea: $2e $8f
    ld a, b                                       ; $43ec: $78
    or l                                          ; $43ed: $b5
    rra                                           ; $43ee: $1f
    and e                                         ; $43ef: $a3
    rst $00                                       ; $43f0: $c7
    sub [hl]                                      ; $43f1: $96
    ret z                                         ; $43f2: $c8

    ld d, e                                       ; $43f3: $53
    ld l, $4f                                     ; $43f4: $2e $4f
    rst $20                                       ; $43f6: $e7
    db $fd                                        ; $43f7: $fd
    ret nc                                        ; $43f8: $d0

    or c                                          ; $43f9: $b1
    ld l, b                                       ; $43fa: $68
    sub a                                         ; $43fb: $97
    cp b                                          ; $43fc: $b8
    push af                                       ; $43fd: $f5
    ld b, d                                       ; $43fe: $42
    rst $30                                       ; $43ff: $f7
    ld hl, sp+$4f                                 ; $4400: $f8 $4f
    dec a                                         ; $4402: $3d
    cp b                                          ; $4403: $b8
    sbc $d4                                       ; $4404: $de $d4
    ld [hl], d                                    ; $4406: $72
    ld e, b                                       ; $4407: $58
    ld [hl], e                                    ; $4408: $73
    ld [$0e53], sp                                ; $4409: $08 $53 $0e
    jp c, $f3dd                                   ; $440c: $da $dd $f3

    sbc e                                         ; $440f: $9b
    ld a, [hl]                                    ; $4410: $7e
    ld d, d                                       ; $4411: $52
    inc hl                                        ; $4412: $23
    db $dd                                        ; $4413: $dd
    ld l, $0f                                     ; $4414: $2e $0f
    ld d, e                                       ; $4416: $53
    ei                                            ; $4417: $fb
    ld sp, $817a                                  ; $4418: $31 $7a $81
    sbc d                                         ; $441b: $9a
    adc $70                                       ; $441c: $ce $70
    db $dd                                        ; $441e: $dd
    ld l, $2f                                     ; $441f: $2e $2f
    db $dd                                        ; $4421: $dd
    ld a, [hl]                                    ; $4422: $7e
    dec l                                         ; $4423: $2d

Jump_056_4424:
    db $fd                                        ; $4424: $fd
    jp z, Jump_056_5fa3                           ; $4425: $ca $a3 $5f

    adc h                                         ; $4428: $8c
    and $fd                                       ; $4429: $e6 $fd
    ret nc                                        ; $442b: $d0

    or c                                          ; $442c: $b1
    inc l                                         ; $442d: $2c
    add a                                         ; $442e: $87
    pop hl                                        ; $442f: $e1
    ld a, a                                       ; $4430: $7f
    ret c                                         ; $4431: $d8

    dec [hl]                                      ; $4432: $35
    adc e                                         ; $4433: $8b
    ld a, d                                       ; $4434: $7a
    and e                                         ; $4435: $a3
    sbc e                                         ; $4436: $9b
    sla e                                         ; $4437: $cb $23
    or e                                          ; $4439: $b3
    dec h                                         ; $443a: $25
    ld b, b                                       ; $443b: $40
    inc b                                         ; $443c: $04
    db $dd                                        ; $443d: $dd
    ld a, [$ec4e]                                 ; $443e: $fa $4e $ec
    ld [hl], h                                    ; $4441: $74
    adc c                                         ; $4442: $89
    cp b                                          ; $4443: $b8
    or $63                                        ; $4444: $f6 $63
    or h                                          ; $4446: $b4
    halt                                          ; $4447: $76
    jp z, $9ecc                                   ; $4448: $ca $cc $9e

    ld l, e                                       ; $444b: $6b
    ret                                           ; $444c: $c9


    adc a                                         ; $444d: $8f
    db $fc                                        ; $444e: $fc
    inc bc                                        ; $444f: $03
    ld b, h                                       ; $4450: $44
    db $dd                                        ; $4451: $dd
    ld l, $8f                                     ; $4452: $2e $8f
    and [hl]                                      ; $4454: $a6
    ld l, d                                       ; $4455: $6a
    ccf                                           ; $4456: $3f
    ld b, [hl]                                    ; $4457: $46
    xor a                                         ; $4458: $af

jr_056_4459:
    push hl                                       ; $4459: $e5
    inc b                                         ; $445a: $04
    xor [hl]                                      ; $445b: $ae
    db $db                                        ; $445c: $db
    inc a                                         ; $445d: $3c
    rst $10                                       ; $445e: $d7
    sub h                                         ; $445f: $94
    srl e                                         ; $4460: $cb $3b
    ld l, [hl]                                    ; $4462: $6e
    ret                                           ; $4463: $c9


    ld c, [hl]                                    ; $4464: $4e
    add $23                                       ; $4465: $c6 $23
    ld e, [hl]                                    ; $4467: $5e
    db $ed                                        ; $4468: $ed
    cp h                                          ; $4469: $bc
    ret nz                                        ; $446a: $c0

    ld a, e                                       ; $446b: $7b
    cp h                                          ; $446c: $bc
    adc [hl]                                      ; $446d: $8e
    jp $b530                                      ; $446e: $c3 $30 $b5


    sub $57                                       ; $4471: $d6 $57
    ld a, c                                       ; $4473: $79
    call nc, $edf8                                ; $4474: $d4 $f8 $ed
    add a                                         ; $4477: $87
    adc [hl]                                      ; $4478: $8e
    dec b                                         ; $4479: $05
    xor [hl]                                      ; $447a: $ae
    adc a                                         ; $447b: $8f

Call_056_447c:
    inc bc                                        ; $447c: $03
    add h                                         ; $447d: $84
    or b                                          ; $447e: $b0
    db $e3                                        ; $447f: $e3
    jr nc, jr_056_4459                            ; $4480: $30 $d7

    sub d                                         ; $4482: $92
    rst $18                                       ; $4483: $df
    jp c, $e30f                                   ; $4484: $da $0f $e3

    rst $18                                       ; $4487: $df
    ld b, [hl]                                    ; $4488: $46
    db $ed                                        ; $4489: $ed
    inc [hl]                                      ; $448a: $34
    ld [$d49c], a                                 ; $448b: $ea $9c $d4
    ld [$1c7d], sp                                ; $448e: $08 $7d $1c
    and $5a                                       ; $4491: $e6 $5a
    ld [c], a                                     ; $4493: $e2
    and [hl]                                      ; $4494: $a6
    ld a, [hl]                                    ; $4495: $7e
    ld e, b                                       ; $4496: $58
    di                                            ; $4497: $f3
    rra                                           ; $4498: $1f
    sbc l                                         ; $4499: $9d
    ld l, e                                       ; $449a: $6b
    jp z, $d6cc                                   ; $449b: $ca $cc $d6

    xor $9e                                       ; $449e: $ee $9e
    rst $18                                       ; $44a0: $df
    db $f4                                        ; $44a1: $f4
    inc bc                                        ; $44a2: $03
    ld [hl], a                                    ; $44a3: $77
    sbc a                                         ; $44a4: $9f
    cp c                                          ; $44a5: $b9
    ld a, $fd                                     ; $44a6: $3e $fd
    ld b, c                                       ; $44a8: $41
    db $eb                                        ; $44a9: $eb
    ld h, a                                       ; $44aa: $67
    sbc h                                         ; $44ab: $9c
    ld sp, hl                                     ; $44ac: $f9
    or l                                          ; $44ad: $b5
    ld a, a                                       ; $44ae: $7f
    ld d, d                                       ; $44af: $52
    inc hl                                        ; $44b0: $23
    db $dd                                        ; $44b1: $dd
    ld a, [$5ce8]                                 ; $44b2: $fa $e8 $5c
    add a                                         ; $44b5: $87
    xor c                                         ; $44b6: $a9
    sbc d                                         ; $44b7: $9a
    ld [hl-], a                                   ; $44b8: $32
    ld c, a                                       ; $44b9: $4f
    ld [hl], d                                    ; $44ba: $72
    call c, $caf9                                 ; $44bb: $dc $f9 $ca
    and d                                         ; $44be: $a2
    db $dd                                        ; $44bf: $dd
    dec a                                         ; $44c0: $3d
    cp a                                          ; $44c1: $bf
    jp hl                                         ; $44c2: $e9


    rlca                                          ; $44c3: $07
    ld [hl+], a                                   ; $44c4: $22
    db $dd                                        ; $44c5: $dd
    ld e, l                                       ; $44c6: $5d
    push af                                       ; $44c7: $f5
    halt                                          ; $44c8: $76
    sbc b                                         ; $44c9: $98
    xor d                                         ; $44ca: $aa
    sub c                                         ; $44cb: $91
    call nc, $eb42                                ; $44cc: $d4 $42 $eb
    ld h, d                                       ; $44cf: $62
    ld c, [hl]                                    ; $44d0: $4e
    cp l                                          ; $44d1: $bd
    sub h                                         ; $44d2: $94
    and [hl]                                      ; $44d3: $a6
    rst $10                                       ; $44d4: $d7
    jr nc, @-$49                                  ; $44d5: $30 $b5

    and h                                         ; $44d7: $a4
    xor a                                         ; $44d8: $af
    ld a, [c]                                     ; $44d9: $f2
    sub h                                         ; $44da: $94
    ld l, e                                       ; $44db: $6b
    ld e, a                                       ; $44dc: $5f
    call nz, $8d7b                                ; $44dd: $c4 $7b $8d
    ld hl, $7d02                                  ; $44e0: $21 $02 $7d
    inc e                                         ; $44e3: $1c
    add $95                                       ; $44e4: $c6 $95
    ld l, e                                       ; $44e6: $6b
    ccf                                           ; $44e7: $3f
    ld b, [hl]                                    ; $44e8: $46
    ld c, a                                       ; $44e9: $4f
    ld e, c                                       ; $44ea: $59
    ld d, $9f                                     ; $44eb: $16 $9f
    db $ec                                        ; $44ed: $ec
    ld a, b                                       ; $44ee: $78
    ld sp, hl                                     ; $44ef: $f9
    inc e                                         ; $44f0: $1c
    adc b                                         ; $44f1: $88
    nop                                           ; $44f2: $00
    or a                                          ; $44f3: $b7
    rst $20                                       ; $44f4: $e7
    ld h, d                                       ; $44f5: $62
    db $ed                                        ; $44f6: $ed
    ld a, d                                       ; $44f7: $7a
    ld e, [hl]                                    ; $44f8: $5e
    sub l                                         ; $44f9: $95
    ld b, [hl]                                    ; $44fa: $46
    cp e                                          ; $44fb: $bb
    ld b, e                                       ; $44fc: $43
    cp $d6                                        ; $44fd: $fe $d6
    ld h, [hl]                                    ; $44ff: $66
    sbc [hl]                                      ; $4500: $9e
    ld e, e                                       ; $4501: $5b
    ld [hl], e                                    ; $4502: $73
    db $ed                                        ; $4503: $ed
    adc c                                         ; $4504: $89
    sbc b                                         ; $4505: $98
    ld b, a                                       ; $4506: $47
    ld d, d                                       ; $4507: $52
    and e                                         ; $4508: $a3
    ld e, e                                       ; $4509: $5b
    sub a                                         ; $450a: $97
    add [hl]                                      ; $450b: $86
    rra                                           ; $450c: $1f
    ld b, h                                       ; $450d: $44
    ld a, l                                       ; $450e: $7d
    inc e                                         ; $450f: $1c
    add $39                                       ; $4510: $c6 $39
    ld c, [hl]                                    ; $4512: $4e
    ld e, c                                       ; $4513: $59
    or $63                                        ; $4514: $f6 $63
    db $f4                                        ; $4516: $f4
    or b                                          ; $4517: $b0
    ld d, l                                       ; $4518: $55
    ld [$fe01], a                                 ; $4519: $ea $01 $fe
    jp $02d4                                      ; $451c: $c3 $d4 $02


    dec [hl]                                      ; $451f: $35
    cp $2d                                        ; $4520: $fe $2d
    db $fd                                        ; $4522: $fd
    and d                                         ; $4523: $a2
    ld d, e                                       ; $4524: $53
    inc hl                                        ; $4525: $23
    dec a                                         ; $4526: $3d
    ld c, a                                       ; $4527: $4f
    halt                                          ; $4528: $76
    ld [hl], d                                    ; $4529: $72
    ld [c], a                                     ; $452a: $e2
    add d                                         ; $452b: $82
    cp e                                          ; $452c: $bb
    inc sp                                        ; $452d: $33
    db $e3                                        ; $452e: $e3
    call nc, $f708                                ; $452f: $d4 $08 $f7
    ld d, l                                       ; $4532: $55
    and [hl]                                      ; $4533: $a6
    ld a, l                                       ; $4534: $7d
    ld c, [hl]                                    ; $4535: $4e
    xor [hl]                                      ; $4536: $ae
    db $dd                                        ; $4537: $dd
    dec c                                         ; $4538: $0d
    ld a, [hl-]                                   ; $4539: $3a
    ld b, l                                       ; $453a: $45
    db $f4                                        ; $453b: $f4
    ld [hl+], a                                   ; $453c: $22
    ld [hl], a                                    ; $453d: $77
    cp [hl]                                       ; $453e: $be
    ld l, e                                       ; $453f: $6b
    adc a                                         ; $4540: $8f
    rst $10                                       ; $4541: $d7
    and e                                         ; $4542: $a3
    db $e3                                        ; $4543: $e3
    and $23                                       ; $4544: $e6 $23
    ld a, d                                       ; $4546: $7a
    push de                                       ; $4547: $d5
    ld e, h                                       ; $4548: $5c
    ei                                            ; $4549: $fb
    cp e                                          ; $454a: $bb
    dec hl                                        ; $454b: $2b
    adc e                                         ; $454c: $8b
    jp z, $1102                                   ; $454d: $ca $02 $11

    add b                                         ; $4550: $80
    call $fa53                                    ; $4551: $cd $53 $fa
    adc b                                         ; $4554: $88
    inc h                                         ; $4555: $24
    rst $10                                       ; $4556: $d7
    ld a, d                                       ; $4557: $7a
    ld [hl], h                                    ; $4558: $74
    call c, Call_056_447c                         ; $4559: $dc $7c $44
    xor a                                         ; $455c: $af
    sbc d                                         ; $455d: $9a
    xor e                                         ; $455e: $ab
    rla                                           ; $455f: $17
    ld [bc], a                                    ; $4560: $02
    ld a, l                                       ; $4561: $7d
    inc e                                         ; $4562: $1c
    ld b, [hl]                                    ; $4563: $46
    ld [hl], h                                    ; $4564: $74
    dec d                                         ; $4565: $15
    ld a, e                                       ; $4566: $7b
    call nz, $9d93                                ; $4567: $c4 $93 $9d
    xor b                                         ; $456a: $a8
    or a                                          ; $456b: $b7
    and $e9                                       ; $456c: $e6 $e9
    cp h                                          ; $456e: $bc
    inc e                                         ; $456f: $1c
    ld d, [hl]                                    ; $4570: $56
    cp $c7                                        ; $4571: $fe $c7
    db $10                                        ; $4573: $10
    ld bc, $4f3d                                  ; $4574: $01 $3d $4f
    ld d, $9f                                     ; $4577: $16 $9f
    inc l                                         ; $4579: $2c
    jp hl                                         ; $457a: $e9


    xor e                                         ; $457b: $ab
    inc a                                         ; $457c: $3c
    pop af                                        ; $457d: $f1
    ld h, c                                       ; $457e: $61
    res 1, b                                      ; $457f: $cb $88
    inc h                                         ; $4581: $24
    rst $10                                       ; $4582: $d7
    ld c, [hl]                                    ; $4583: $4e
    add $23                                       ; $4584: $c6 $23
    call c, Call_056_430e                         ; $4586: $dc $0e $43
    inc b                                         ; $4589: $04
    rst $30                                       ; $458a: $f7
    ld hl, sp-$3d                                 ; $458b: $f8 $c3
    db $dd                                        ; $458d: $dd
    ld l, l                                       ; $458e: $6d
    ld e, c                                       ; $458f: $59
    rst $00                                       ; $4590: $c7
    ld h, c                                       ; $4591: $61
    rst $00                                       ; $4592: $c7
    dec [hl]                                      ; $4593: $35

Call_056_4594:
    ld [c], a                                     ; $4594: $e2
    pop hl                                        ; $4595: $e1
    ld h, l                                       ; $4596: $65
    sbc d                                         ; $4597: $9a
    cp l                                          ; $4598: $bd
    cp a                                          ; $4599: $bf
    db $d3                                        ; $459a: $d3
    ld sp, $67b3                                  ; $459b: $31 $b3 $67
    ld a, [hl]                                    ; $459e: $7e
    and a                                         ; $459f: $a7
    ld h, e                                       ; $45a0: $63
    adc b                                         ; $45a1: $88
    nop                                           ; $45a2: $00
    ld a, l                                       ; $45a3: $7d
    inc e                                         ; $45a4: $1c
    ld b, [hl]                                    ; $45a5: $46

jr_056_45a6:
    cp h                                          ; $45a6: $bc
    jp c, $d18f                                   ; $45a7: $da $8f $d1

    dec sp                                        ; $45aa: $3b
    ld h, [hl]                                    ; $45ab: $66
    ld e, $f1                                     ; $45ac: $1e $f1
    ldh a, [$fe]                                  ; $45ae: $f0 $fe
    ld [$4f37], sp                                ; $45b0: $08 $37 $4f
    cp l                                          ; $45b3: $bd
    nop                                           ; $45b4: $00
    ld de, $1c7d                                  ; $45b5: $11 $7d $1c
    halt                                          ; $45b8: $76
    xor b                                         ; $45b9: $a8
    ld c, c                                       ; $45ba: $49
    or [hl]                                       ; $45bb: $b6
    db $ec                                        ; $45bc: $ec
    ld h, h                                       ; $45bd: $64
    inc a                                         ; $45be: $3c
    cp d                                          ; $45bf: $ba
    ld [hl], l                                    ; $45c0: $75
    ld l, c                                       ; $45c1: $69
    sub [hl]                                      ; $45c2: $96
    adc $c5                                       ; $45c3: $ce $c5
    inc hl                                        ; $45c5: $23
    ld e, h                                       ; $45c6: $5c
    ld [hl], h                                    ; $45c7: $74
    dec a                                         ; $45c8: $3d
    cp b                                          ; $45c9: $b8
    dec sp                                        ; $45ca: $3b
    sbc a                                         ; $45cb: $9f
    sbc h                                         ; $45cc: $9c
    ret c                                         ; $45cd: $d8

    pop af                                        ; $45ce: $f1
    sub h                                         ; $45cf: $94
    ld a, c                                       ; $45d0: $79
    ret                                           ; $45d1: $c9


    xor e                                         ; $45d2: $ab
    ld de, $430f                                  ; $45d3: $11 $0f $43
    inc b                                         ; $45d6: $04
    add hl, hl                                    ; $45d7: $29
    ld h, h                                       ; $45d8: $64
    ld d, a                                       ; $45d9: $57
    db $ed                                        ; $45da: $ed
    ld l, [hl]                                    ; $45db: $6e
    ret nc                                        ; $45dc: $d0

    add hl, hl                                    ; $45dd: $29
    and d                                         ; $45de: $a2
    rla                                           ; $45df: $17
    add hl, bc                                    ; $45e0: $09
    rst $10                                       ; $45e1: $d7
    rst $00                                       ; $45e2: $c7
    ld h, c                                       ; $45e3: $61
    add a                                         ; $45e4: $87
    jp c, $29e3                                   ; $45e5: $da $e3 $29

    rst $28                                       ; $45e8: $ef
    ret z                                         ; $45e9: $c8

    adc e                                         ; $45ea: $8b
    pop de                                        ; $45eb: $d1
    cp h                                          ; $45ec: $bc
    di                                            ; $45ed: $f3
    jr nc, jr_056_45a6                            ; $45ee: $30 $b6

    ld b, b                                       ; $45f0: $40
    inc b                                         ; $45f1: $04
    db $dd                                        ; $45f2: $dd
    and $b9                                       ; $45f3: $e6 $b9
    or $63                                        ; $45f5: $f6 $63
    db $f4                                        ; $45f7: $f4
    ldh a, [$97]                                  ; $45f8: $f0 $97
    or c                                          ; $45fa: $b1
    ld e, [hl]                                    ; $45fb: $5e
    db $e3                                        ; $45fc: $e3
    rst $18                                       ; $45fd: $df
    ld b, [hl]                                    ; $45fe: $46
    adc l                                         ; $45ff: $8d
    ret z                                         ; $4600: $c8

    ld c, l                                       ; $4601: $4d
    ld a, c                                       ; $4602: $79
    ld e, l                                       ; $4603: $5d
    ld a, [de]                                    ; $4604: $1a
    rrca                                          ; $4605: $0f
    ld e, e                                       ; $4606: $5b
    adc l                                         ; $4607: $8d
    ld a, b                                       ; $4608: $78
    jr jr_056_462d                                ; $4609: $18 $22

    ld [hl], a                                    ; $460b: $77
    ld a, $39                                     ; $460c: $3e $39
    or c                                          ; $460e: $b1
    db $e3                                        ; $460f: $e3
    ld de, $164f                                  ; $4610: $11 $4f $16
    ld a, [hl]                                    ; $4613: $7e
    adc h                                         ; $4614: $8c
    and e                                         ; $4615: $a3
    ld [hl], e                                    ; $4616: $73
    adc l                                         ; $4617: $8d
    jp c, $1791                                   ; $4618: $da $91 $17

    and e                                         ; $461b: $a3
    add a                                         ; $461c: $87
    xor l                                         ; $461d: $ad
    sub $5b                                       ; $461e: $d6 $5b
    inc de                                        ; $4620: $13
    ld [$b82b], a                                 ; $4621: $ea $2b $b8
    ld l, [hl]                                    ; $4624: $6e
    rst $28                                       ; $4625: $ef
    ret z                                         ; $4626: $c8

    adc e                                         ; $4627: $8b
    pop de                                        ; $4628: $d1
    or l                                          ; $4629: $b5
    ld c, h                                       ; $462a: $4c
    or e                                          ; $462b: $b3
    ld [hl], a                                    ; $462c: $77

jr_056_462d:
    ld e, $c6                                     ; $462d: $1e $c6
    ld d, $88                                     ; $462f: $16 $88
    nop                                           ; $4631: $00
    ld a, l                                       ; $4632: $7d
    inc e                                         ; $4633: $1c
    ld b, [hl]                                    ; $4634: $46
    ld [hl], h                                    ; $4635: $74
    dec d                                         ; $4636: $15
    ld a, e                                       ; $4637: $7b
    sub d                                         ; $4638: $92
    cp l                                          ; $4639: $bd
    adc h                                         ; $463a: $8c
    rst $30                                       ; $463b: $f7
    ld a, b                                       ; $463c: $78
    call nz, $9d93                                ; $463d: $c4 $93 $9d
    xor b                                         ; $4640: $a8
    or a                                          ; $4641: $b7
    and $f1                                       ; $4642: $e6 $f1
    sbc e                                         ; $4644: $9b
    ld h, l                                       ; $4645: $65
    db $ed                                        ; $4646: $ed
    or e                                          ; $4647: $b3
    ld h, l                                       ; $4648: $65
    or h                                          ; $4649: $b4
    db $eb                                        ; $464a: $eb
    dec de                                        ; $464b: $1b
    ld [hl+], a                                   ; $464c: $22
    ld a, l                                       ; $464d: $7d
    inc e                                         ; $464e: $1c
    ld b, [hl]                                    ; $464f: $46
    ld [hl], h                                    ; $4650: $74
    dec d                                         ; $4651: $15
    ld a, e                                       ; $4652: $7b
    call nz, Call_056_6193                        ; $4653: $c4 $93 $61
    dec e                                         ; $4656: $1d
    scf                                           ; $4657: $37
    di                                            ; $4658: $f3
    inc h                                         ; $4659: $24
    ld a, e                                       ; $465a: $7b
    add hl, de                                    ; $465b: $19
    rst $08                                       ; $465c: $cf
    cp h                                          ; $465d: $bc
    db $e4                                        ; $465e: $e4
    ld b, a                                       ; $465f: $47
    cp $61                                        ; $4660: $fe $61
    cp b                                          ; $4662: $b8

Call_056_4663:
    adc e                                         ; $4663: $8b
    dec c                                         ; $4664: $0d
    ld de, $1c7d                                  ; $4665: $11 $7d $1c
    ld b, [hl]                                    ; $4668: $46
    cp h                                          ; $4669: $bc
    jp c, $d18f                                   ; $466a: $da $8f $d1

    dec sp                                        ; $466d: $3b
    ld h, [hl]                                    ; $466e: $66
    ld e, $f1                                     ; $466f: $1e $f1
    ldh a, [$ce]                                  ; $4671: $f0 $ce
    ld d, a                                       ; $4673: $57
    sub [hl]                                      ; $4674: $96
    pop hl                                        ; $4675: $e1

jr_056_4676:
    xor a                                         ; $4676: $af
    call nc, $fb0b                                ; $4677: $d4 $0b $fb
    dec bc                                        ; $467a: $0b
    ld d, h                                       ; $467b: $54
    ld b, c                                       ; $467c: $41
    inc b                                         ; $467d: $04
    or a                                          ; $467e: $b7
    rst $20                                       ; $467f: $e7
    jp c, $bc6b                                   ; $4680: $da $6b $bc

    adc [hl]                                      ; $4683: $8e
    jp $b312                                      ; $4684: $c3 $12 $b3


    halt                                          ; $4687: $76
    pop af                                        ; $4688: $f1
    ret                                           ; $4689: $c9


    cp d                                          ; $468a: $ba
    ld bc, $e92d                                  ; $468b: $01 $2d $e9

Call_056_468e:
    xor e                                         ; $468e: $ab
    cp h                                          ; $468f: $bc
    ld e, $1d                                     ; $4690: $1e $1d
    scf                                           ; $4692: $37
    rra                                           ; $4693: $1f
    pop de                                        ; $4694: $d1
    xor e                                         ; $4695: $ab
    jr nz, @+$04                                  ; $4696: $20 $02

    rst $30                                       ; $4698: $f7
    ld hl, sp-$3d                                 ; $4699: $f8 $c3
    push af                                       ; $469b: $f5
    ld [hl], c                                    ; $469c: $71
    ld e, b                                       ; $469d: $58
    ld a, h                                       ; $469e: $7c
    or d                                          ; $469f: $b2
    rra                                           ; $46a0: $1f
    and e                                         ; $46a1: $a3
    ld b, a                                       ; $46a2: $47

Jump_056_46a3:
    add sp, $27                                   ; $46a3: $e8 $27
    ld a, d                                       ; $46a5: $7a
    adc a                                         ; $46a6: $8f
    rst $10                                       ; $46a7: $d7
    ld [hl], c                                    ; $46a8: $71
    ret c                                         ; $46a9: $d8

    and c                                         ; $46aa: $a1
    ld b, [hl]                                    ; $46ab: $46
    inc a                                         ; $46ac: $3c
    cp h                                          ; $46ad: $bc
    call nz, Call_056_746a                        ; $46ae: $c4 $6a $74
    push hl                                       ; $46b1: $e5
    sbc b                                         ; $46b2: $98
    rrca                                          ; $46b3: $0f
    ld e, e                                       ; $46b4: $5b
    jr nz, jr_056_46b9                            ; $46b5: $20 $02

    ld a, l                                       ; $46b7: $7d
    inc e                                         ; $46b8: $1c

jr_056_46b9:
    halt                                          ; $46b9: $76
    xor b                                         ; $46ba: $a8
    ld de, $0f0f                                  ; $46bb: $11 $0f $0f
    ld e, e                                       ; $46be: $5b
    db $ed                                        ; $46bf: $ed
    ld h, h                                       ; $46c0: $64
    jp nc, $63ed                                  ; $46c1: $d2 $ed $63

    dec bc                                        ; $46c4: $0b
    call c, Call_056_4f9d                         ; $46c5: $dc $9d $4f
    ld c, [hl]                                    ; $46c8: $4e
    db $ec                                        ; $46c9: $ec
    ld a, b                                       ; $46ca: $78
    call nz, $9d93                                ; $46cb: $c4 $93 $9d
    xor b                                         ; $46ce: $a8
    or a                                          ; $46cf: $b7
    and $95                                       ; $46d0: $e6 $95
    ld b, [hl]                                    ; $46d2: $46
    add hl, hl                                    ; $46d3: $29
    xor a                                         ; $46d4: $af
    ld a, l                                       ; $46d5: $7d
    ld h, [hl]                                    ; $46d6: $66
    adc b                                         ; $46d7: $88
    nop                                           ; $46d8: $00
    ld a, l                                       ; $46d9: $7d
    inc e                                         ; $46da: $1c
    sub [hl]                                      ; $46db: $96
    sbc b                                         ; $46dc: $98
    rst $30                                       ; $46dd: $f7
    ld h, e                                       ; $46de: $63
    db $f4                                        ; $46df: $f4
    inc l                                         ; $46e0: $2c
    pop hl                                        ; $46e1: $e1
    ld c, c                                       ; $46e2: $49
    jr jr_056_4676                                ; $46e3: $18 $91

    db $e4                                        ; $46e5: $e4
    ld e, d                                       ; $46e6: $5a
    call z, $b9c2                                 ; $46e7: $cc $c2 $b9
    call z, $9e23                                 ; $46ea: $cc $23 $9e
    sbc h                                         ; $46ed: $9c
    cp c                                          ; $46ee: $b9
    jr nz, @+$04                                  ; $46ef: $20 $02

    rst $30                                       ; $46f1: $f7
    ld hl, sp+$6b                                 ; $46f2: $f8 $6b
    add a                                         ; $46f4: $87
    dec l                                         ; $46f5: $2d
    db $eb                                        ; $46f6: $eb
    jr c, jr_056_4725                             ; $46f7: $38 $2c

    or c                                          ; $46f9: $b1
    ld d, d                                       ; $46fa: $52
    xor [hl]                                      ; $46fb: $ae
    sub c                                         ; $46fc: $91
    call nc, $cf1e                                ; $46fd: $d4 $1e $cf
    or d                                          ; $4700: $b2
    sub a                                         ; $4701: $97
    xor h                                         ; $4702: $ac
    push af                                       ; $4703: $f5
    ld d, l                                       ; $4704: $55
    ld l, $f1                                     ; $4705: $2e $f1
    ld [de], a                                    ; $4707: $12
    di                                            ; $4708: $f3
    sub h                                         ; $4709: $94
    add hl, de                                    ; $470a: $19
    ld [hl+], a                                   ; $470b: $22
    ld a, l                                       ; $470c: $7d
    inc e                                         ; $470d: $1c
    halt                                          ; $470e: $76
    xor b                                         ; $470f: $a8
    dec a                                         ; $4710: $3d
    ld e, $f1                                     ; $4711: $1e $f1
    ld h, h                                       ; $4713: $64
    call nz, $ca53                                ; $4714: $c4 $53 $ca
    or e                                          ; $4717: $b3
    db $ec                                        ; $4718: $ec
    or l                                          ; $4719: $b5
    inc h                                         ; $471a: $24
    ld d, a                                       ; $471b: $57
    ei                                            ; $471c: $fb
    ld h, c                                       ; $471d: $61
    rst $20                                       ; $471e: $e7
    ld h, c                                       ; $471f: $61
    ld a, [hl]                                    ; $4720: $7e
    call Call_056_56c3                            ; $4721: $cd $c3 $56
    cp e                                          ; $4724: $bb

jr_056_4725:
    dec de                                        ; $4725: $1b
    ld [hl], h                                    ; $4726: $74
    adc d                                         ; $4727: $8a
    add sp, $45                                   ; $4728: $e8 $45
    jp nz, $f9dd                                  ; $472a: $c2 $dd $f9

    db $e4                                        ; $472d: $e4
    call nz, Call_056_478e                        ; $472e: $c4 $8e $47
    add sp, -$4e                                  ; $4731: $e8 $b2
    call nz, Call_056_653c                        ; $4733: $c4 $3c $65
    add [hl]                                      ; $4736: $86
    ld [$1c7d], sp                                ; $4737: $08 $7d $1c
    sub [hl]                                      ; $473a: $96
    sbc b                                         ; $473b: $98
    rst $30                                       ; $473c: $f7
    ld h, e                                       ; $473d: $63
    db $f4                                        ; $473e: $f4
    adc b                                         ; $473f: $88
    inc h                                         ; $4740: $24
    rst $10                                       ; $4741: $d7
    ld a, [hl-]                                   ; $4742: $3a
    ld c, $3b                                     ; $4743: $0e $3b
    ld l, [hl]                                    ; $4745: $6e
    ret                                           ; $4746: $c9


    ld e, h                                       ; $4747: $5c
    jp c, $af11                                   ; $4748: $da $11 $af

    dec h                                         ; $474b: $25
    ld e, $7f                                     ; $474c: $1e $7f
    push af                                       ; $474e: $f5
    jr nz, @+$04                                  ; $474f: $20 $02

    ld [hl], a                                    ; $4751: $77
    ld a, $39                                     ; $4752: $3e $39
    or c                                          ; $4754: $b1
    db $e3                                        ; $4755: $e3
    ld de, $e64f                                  ; $4756: $11 $4f $e6
    jp c, Jump_000_0a5f                           ; $4759: $da $5f $0a

    rst $20                                       ; $475c: $e7
    ld a, [hl-]                                   ; $475d: $3a
    xor a                                         ; $475e: $af
    ld e, c                                       ; $475f: $59
    sub [hl]                                      ; $4760: $96
    jp Jump_000_12ba                              ; $4761: $c3 $ba $12


    rst $10                                       ; $4764: $d7
    adc [hl]                                      ; $4765: $8e
    jp Jump_056_6a48                              ; $4766: $c3 $48 $6a


    cpl                                           ; $4769: $2f
    add hl, sp                                    ; $476a: $39
    ld c, l                                       ; $476b: $4d
    ld h, a                                       ; $476c: $67
    ld sp, hl                                     ; $476d: $f9
    ld [de], a                                    ; $476e: $12
    ld c, $bf                                     ; $476f: $0e $bf
    ld h, [hl]                                    ; $4771: $66
    add c                                         ; $4772: $81
    ld [$493d], sp                                ; $4773: $08 $3d $49
    xor [hl]                                      ; $4776: $ae
    sbc l                                         ; $4777: $9d
    adc h                                         ; $4778: $8c
    ld b, a                                       ; $4779: $47
    cp b                                          ; $477a: $b8
    dec e                                         ; $477b: $1d
    sbc [hl]                                      ; $477c: $9e
    ld [hl-], a                                   ; $477d: $32
    adc a                                         ; $477e: $8f
    ld a, h                                       ; $477f: $7c
    rst $20                                       ; $4780: $e7
    cp b                                          ; $4781: $b8
    ld b, [hl]                                    ; $4782: $46
    inc a                                         ; $4783: $3c
    xor h                                         ; $4784: $ac
    dec e                                         ; $4785: $1d
    pop af                                        ; $4786: $f1
    ld l, d                                       ; $4787: $6a
    dec e                                         ; $4788: $1d
    add a                                         ; $4789: $87
    pop hl                                        ; $478a: $e1
    ld a, a                                       ; $478b: $7f
    ld hl, sp+$49                                 ; $478c: $f8 $49

Call_056_478e:
    db $f4                                        ; $478e: $f4
    ld [hl-], a                                   ; $478f: $32
    add [hl]                                      ; $4790: $86
    ld [$1c7d], sp                                ; $4791: $08 $7d $1c
    ld b, [hl]                                    ; $4794: $46
    cp h                                          ; $4795: $bc
    jp c, $d18f                                   ; $4796: $da $8f $d1

    dec sp                                        ; $4799: $3b
    ld h, [hl]                                    ; $479a: $66
    ld e, $f1                                     ; $479b: $1e $f1
    ldh a, [rOBP0]                                ; $479d: $f0 $48
    ld l, d                                       ; $479f: $6a
    ld [$2705], a                                 ; $47a0: $ea $05 $27
    rst $38                                       ; $47a3: $ff
    ld b, b                                       ; $47a4: $40
    inc b                                         ; $47a5: $04
    add hl, hl                                    ; $47a6: $29

jr_056_47a7:
    ld h, h                                       ; $47a7: $64
    ld d, a                                       ; $47a8: $57
    call $d6b2                                    ; $47a9: $cd $b2 $d6
    ld d, a                                       ; $47ac: $57
    cp c                                          ; $47ad: $b9
    ldh [$ba], a                                  ; $47ae: $e0 $ba
    cp l                                          ; $47b0: $bd
    call nz, $d7bc                                ; $47b1: $c4 $bc $d7
    ld a, b                                       ; $47b4: $78
    add hl, de                                    ; $47b5: $19
    adc a                                         ; $47b6: $8f
    ld c, b                                       ; $47b7: $48
    ld e, h                                       ; $47b8: $5c
    ld c, a                                       ; $47b9: $4f
    ld d, h                                       ; $47ba: $54

Call_056_47bb:
    add hl, de                                    ; $47bb: $19
    ld [hl+], a                                   ; $47bc: $22
    dec a                                         ; $47bd: $3d
    xor [hl]                                      ; $47be: $ae
    push hl                                       ; $47bf: $e5
    jr nc, jr_056_47a7                            ; $47c0: $30 $e5

    jp nc, $932e                                  ; $47c2: $d2 $2e $93

    and h                                         ; $47c5: $a4
    sub a                                         ; $47c6: $97
    jp $cac4                                      ; $47c7: $c3 $c4 $ca


jr_056_47ca:
    jp c, $ff11                                   ; $47ca: $da $11 $ff

    ldh a, [$72]                                  ; $47cd: $f0 $72
    jr jr_056_47ca                                ; $47cf: $18 $f9

    rrca                                          ; $47d1: $0f
    jp Jump_056_5edd                              ; $47d2: $c3 $dd $5e


    sbc a                                         ; $47d5: $9f
    ld a, c                                       ; $47d6: $79
    ret                                           ; $47d7: $c9


    ld l, e                                       ; $47d8: $6b
    ld bc, $7d22                                  ; $47d9: $01 $22 $7d
    inc e                                         ; $47dc: $1c
    ld b, [hl]                                    ; $47dd: $46
    ld [hl], h                                    ; $47de: $74
    dec d                                         ; $47df: $15
    ld a, e                                       ; $47e0: $7b
    call nz, $9d93                                ; $47e1: $c4 $93 $9d
    xor b                                         ; $47e4: $a8
    or a                                          ; $47e5: $b7
    and $a5                                       ; $47e6: $e6 $a5
    db $db                                        ; $47e8: $db
    ld e, a                                       ; $47e9: $5f
    ld a, [hl-]                                   ; $47ea: $3a
    rla                                           ; $47eb: $17
    ld a, e                                       ; $47ec: $7b
    sub [hl]                                      ; $47ed: $96
    dec e                                         ; $47ee: $1d
    sub $45                                       ; $47ef: $d6 $45
    ld b, c                                       ; $47f1: $41
    inc b                                         ; $47f2: $04
    dec a                                         ; $47f3: $3d
    ld c, a                                       ; $47f4: $4f
    ld d, $9f                                     ; $47f5: $16 $9f
    inc l                                         ; $47f7: $2c
    jp hl                                         ; $47f8: $e9


    xor e                                         ; $47f9: $ab
    cp h                                          ; $47fa: $bc
    rst $10                                       ; $47fb: $d7
    sbc d                                         ; $47fc: $9a
    ld [hl], a                                    ; $47fd: $77
    ret c                                         ; $47fe: $d8

    jp z, $1cb5                                   ; $47ff: $ca $b5 $1c

    or $25                                        ; $4802: $f6 $25
    ld e, b                                       ; $4804: $58
    halt                                          ; $4805: $76
    ret c                                         ; $4806: $d8

    jp z, Jump_056_7705                           ; $4807: $ca $05 $77

    rst $20                                       ; $480a: $e7
    sub e                                         ; $480b: $93
    inc de                                        ; $480c: $13
    dec sp                                        ; $480d: $3b
    ld e, $f1                                     ; $480e: $1e $f1
    ld h, h                                       ; $4810: $64
    ret                                           ; $4811: $c9


    xor a                                         ; $4812: $af
    add sp, -$0a                                  ; $4813: $e8 $f6
    jp Jump_000_2ea2                              ; $4815: $c3 $a2 $2e


    ld [c], a                                     ; $4818: $e2
    dec h                                         ; $4819: $25
    ld a, l                                       ; $481a: $7d
    sub l                                         ; $481b: $95
    rst $30                                       ; $481c: $f7
    ld e, d                                       ; $481d: $5a
    di                                            ; $481e: $f3
    ld c, $5b                                     ; $481f: $0e $5b
    cp c                                          ; $4821: $b9
    or h                                          ; $4822: $b4
    inc hl                                        ; $4823: $23
    sub d                                         ; $4824: $92
    ld a, a                                       ; $4825: $7f
    ld b, [hl]                                    ; $4826: $46
    inc a                                         ; $4827: $3c
    reti                                          ; $4828: $d9


    ld a, c                                       ; $4829: $79
    call z, $e49e                                 ; $482a: $cc $9e $e4
    cp b                                          ; $482d: $b8
    cpl                                           ; $482e: $2f
    ld [hl-], a                                   ; $482f: $32
    sub d                                         ; $4830: $92
    sbc d                                         ; $4831: $9a
    ld [hl-], a                                   ; $4832: $32
    ld b, e                                       ; $4833: $43
    inc b                                         ; $4834: $04
    ld [hl], a                                    ; $4835: $77
    ld a, $39                                     ; $4836: $3e $39
    or c                                          ; $4838: $b1
    db $e3                                        ; $4839: $e3
    ld de, $464f                                  ; $483a: $11 $4f $46
    ld [hl], h                                    ; $483d: $74
    call c, $d748                                 ; $483e: $dc $48 $d7
    xor $f9                                       ; $4841: $ee $f9
    ld c, l                                       ; $4843: $4d
    ccf                                           ; $4844: $3f
    cp e                                          ; $4845: $bb
    db $eb                                        ; $4846: $eb
    ld c, c                                       ; $4847: $49
    ld c, b                                       ; $4848: $48
    cp a                                          ; $4849: $bf
    sub $3c                                       ; $484a: $d6 $3c
    ld l, h                                       ; $484c: $6c
    dec [hl]                                      ; $484d: $35
    ld l, d                                       ; $484e: $6a
    call $99ec                                    ; $484f: $cd $ec $99
    reti                                          ; $4852: $d9


    dec [hl]                                      ; $4853: $35
    ld h, l                                       ; $4854: $65
    add hl, de                                    ; $4855: $19
    ld sp, hl                                     ; $4856: $f9
    sub h                                         ; $4857: $94
    ld a, d                                       ; $4858: $7a
    db $10                                        ; $4859: $10
    ld bc, $1c7d                                  ; $485a: $01 $7d $1c
    halt                                          ; $485d: $76
    xor b                                         ; $485e: $a8
    ld de, $764f                                  ; $485f: $11 $4f $76
    jr c, jr_056_4893                             ; $4862: $38 $2f

    add a                                         ; $4864: $87
    ld de, $3fc9                                  ; $4865: $11 $c9 $3f
    pop de                                        ; $4868: $d1
    inc a                                         ; $4869: $3c
    ld l, h                                       ; $486a: $6c
    or l                                          ; $486b: $b5
    cp e                                          ; $486c: $bb
    ld b, c                                       ; $486d: $41
    and a                                         ; $486e: $a7
    adc b                                         ; $486f: $88
    ld e, [hl]                                    ; $4870: $5e
    inc h                                         ; $4871: $24
    ld e, h                                       ; $4872: $5c
    ld a, [bc]                                    ; $4873: $0a
    reti                                          ; $4874: $d9


    ld d, l                                       ; $4875: $55
    inc hl                                        ; $4876: $23
    inc l                                         ; $4877: $2c
    ld h, d                                       ; $4878: $62
    adc b                                         ; $4879: $88
    nop                                           ; $487a: $00
    ld a, l                                       ; $487b: $7d
    inc e                                         ; $487c: $1c
    ld b, [hl]                                    ; $487d: $46
    cp h                                          ; $487e: $bc
    ld a, [de]                                    ; $487f: $1a
    pop de                                        ; $4880: $d1
    ld d, l                                       ; $4881: $55
    cp h                                          ; $4882: $bc
    rst $00                                       ; $4883: $c7
    inc hl                                        ; $4884: $23
    sbc [hl]                                      ; $4885: $9e
    xor h                                         ; $4886: $ac
    db $fd                                        ; $4887: $fd
    add sp, $1a                                   ; $4888: $e8 $1a
    or l                                          ; $488a: $b5
    and e                                         ; $488b: $a3
    rla                                           ; $488c: $17
    db $ed                                        ; $488d: $ed

Jump_056_488e:
    sub c                                         ; $488e: $91
    call nc, $c8be                                ; $488f: $d4 $be $c8
    jp hl                                         ; $4892: $e9


jr_056_4893:
    ld [hl], h                                    ; $4893: $74
    ld e, c                                       ; $4894: $59
    ldh [$6e], a                                  ; $4895: $e0 $6e
    ld l, e                                       ; $4897: $6b
    call $e4b5                                    ; $4898: $cd $b5 $e4
    push de                                       ; $489b: $d5
    sub h                                         ; $489c: $94
    ld a, c                                       ; $489d: $79
    rst $30                                       ; $489e: $f7
    cp h                                          ; $489f: $bc
    inc de                                        ; $48a0: $13
    ld a, e                                       ; $48a1: $7b
    ld hl, $3b00                                  ; $48a2: $21 $00 $3b
    ld c, a                                       ; $48a5: $4f
    dec sp                                        ; $48a6: $3b
    jp nz, Jump_056_4cb5                          ; $48a7: $c2 $b5 $4c

    sub d                                         ; $48aa: $92
    sbc [hl]                                      ; $48ab: $9e
    ld l, e                                       ; $48ac: $6b
    call nz, $fd93                                ; $48ad: $c4 $93 $fd
    rst $10                                       ; $48b0: $d7
    ld a, [de]                                    ; $48b1: $1a
    db $fd                                        ; $48b2: $fd
    ld e, d                                       ; $48b3: $5a
    db $db                                        ; $48b4: $db
    adc a                                         ; $48b5: $8f
    pop de                                        ; $48b6: $d1
    db $10                                        ; $48b7: $10
    ld bc, $8377                                  ; $48b8: $01 $77 $83
    ld c, [hl]                                    ; $48bb: $4e
    ld de, $c8bd                                  ; $48bc: $11 $bd $c8
    cp c                                          ; $48bf: $b9
    sub [hl]                                      ; $48c0: $96
    db $fc                                        ; $48c1: $fc
    db $e3                                        ; $48c2: $e3
    ld [hl], d                                    ; $48c3: $72
    db $e4                                        ; $48c4: $e4
    ld e, h                                       ; $48c5: $5c
    ld [hl], b                                    ; $48c6: $70
    dec a                                         ; $48c7: $3d
    cp d                                          ; $48c8: $ba
    inc c                                         ; $48c9: $0c
    ld d, e                                       ; $48ca: $53
    ld d, e                                       ; $48cb: $53
    ld l, a                                       ; $48cc: $6f
    ret                                           ; $48cd: $c9


    ld h, a                                       ; $48ce: $67
    ld c, a                                       ; $48cf: $4f
    sbc c                                         ; $48d0: $99
    ld hl, $7d02                                  ; $48d1: $21 $02 $7d
    inc e                                         ; $48d4: $1c
    ld b, [hl]                                    ; $48d5: $46
    cp h                                          ; $48d6: $bc
    jp c, $d18f                                   ; $48d7: $da $8f $d1

    dec sp                                        ; $48da: $3b
    ld h, [hl]                                    ; $48db: $66
    ld e, $f1                                     ; $48dc: $1e $f1
    ldh a, [$fe]                                  ; $48de: $f0 $fe
    call nc, Call_000_100b                        ; $48e0: $d4 $0b $10
    ld bc, $e6dd                                  ; $48e3: $01 $dd $e6
    cp c                                          ; $48e6: $b9
    or $63                                        ; $48e7: $f6 $63
    db $f4                                        ; $48e9: $f4
    inc e                                         ; $48ea: $1c
    inc l                                         ; $48eb: $2c
    call c, $d87e                                 ; $48ec: $dc $7e $d8
    and c                                         ; $48ef: $a1
    sub [hl]                                      ; $48f0: $96
    ld l, c                                       ; $48f1: $69
    or $3a                                        ; $48f2: $f6 $3a
    ld c, $3b                                     ; $48f4: $0e $3b
    xor [hl]                                      ; $48f6: $ae
    ld de, $430f                                  ; $48f7: $11 $0f $43
    inc b                                         ; $48fa: $04
    rst $30                                       ; $48fb: $f7
    ld h, [hl]                                    ; $48fc: $66
    ld a, [hl-]                                   ; $48fd: $3a
    dec [hl]                                      ; $48fe: $35

jr_056_48ff:
    ld [bc], a                                    ; $48ff: $02
    ld [hl], a                                    ; $4900: $77
    call nz, $b1e8                                ; $4901: $c4 $e8 $b1
    add e                                         ; $4904: $83
    adc h                                         ; $4905: $8c
    ld a, a                                       ; $4906: $7f
    ld e, e                                       ; $4907: $5b
    ld c, d                                       ; $4908: $4a
    db $d3                                        ; $4909: $d3
    dec bc                                        ; $490a: $0b
    ld [hl+], a                                   ; $490b: $22
    ld a, l                                       ; $490c: $7d
    inc e                                         ; $490d: $1c
    ld d, $9f                                     ; $490e: $16 $9f
    db $ec                                        ; $4910: $ec
    rst $00                                       ; $4911: $c7
    add sp, $55                                   ; $4912: $e8 $55
    ld d, a                                       ; $4914: $57
    ld a, c                                       ; $4915: $79
    ret c                                         ; $4916: $d8

    ld hl, $0235                                  ; $4917: $21 $35 $02
    ld [hl], a                                    ; $491a: $77
    call nz, $75e8                                ; $491b: $c4 $e8 $75

Call_056_491e:
    inc e                                         ; $491e: $1c
    ld b, [hl]                                    ; $491f: $46
    cp b                                          ; $4920: $b8
    dec [hl]                                      ; $4921: $35
    ld d, a                                       ; $4922: $57
    ld [$ff75], a                                 ; $4923: $ea $75 $ff
    ld [hl], e                                    ; $4926: $73
    inc a                                         ; $4927: $3c
    or d                                          ; $4928: $b2
    dec a                                         ; $4929: $3d
    ld h, c                                       ; $492a: $61
    adc e                                         ; $492b: $8b
    ld b, a                                       ; $492c: $47
    cp h                                          ; $492d: $bc
    jp c, $1a69                                   ; $492e: $da $69 $1a

    add hl, bc                                    ; $4931: $09

Call_056_4932:
    and $1d                                       ; $4932: $e6 $1d
    add a                                         ; $4934: $87
    sub l                                         ; $4935: $95
    ld l, $8a                                     ; $4936: $2e $8a
    sub a                                         ; $4938: $97
    rst $08                                       ; $4939: $cf
    add c                                         ; $493a: $81
    db $eb                                        ; $493b: $eb
    ld [hl], $0f                                  ; $493c: $36 $0f
    ld d, e                                       ; $493e: $53
    ld c, e                                       ; $493f: $4b
    ld a, [$432a]                                 ; $4940: $fa $2a $43
    ld [$c755], sp                                ; $4943: $08 $55 $c7
    adc c                                         ; $4946: $89
    db $db                                        ; $4947: $db
    sub c                                         ; $4948: $91
    ld d, a                                       ; $4949: $57
    ld c, [hl]                                    ; $494a: $4e
    cp l                                          ; $494b: $bd
    ld l, [hl]                                    ; $494c: $6e
    res 1, b                                      ; $494d: $cb $88
    ld d, a                                       ; $494f: $57
    db $eb                                        ; $4950: $eb
    jr c, jr_056_48ff                             ; $4951: $38 $ac

    ld sp, hl                                     ; $4953: $f9
    ldh a, [$32]                                  ; $4954: $f0 $32
    ld c, [hl]                                    ; $4956: $4e
    cp l                                          ; $4957: $bd
    ld e, e                                       ; $4958: $5b
    ld c, d                                       ; $4959: $4a
    adc a                                         ; $495a: $8f
    ld l, e                                       ; $495b: $6b
    sbc d                                         ; $495c: $9a

Jump_056_495d:
    inc sp                                        ; $495d: $33
    or a                                          ; $495e: $b7
    and $da                                       ; $495f: $e6 $da
    ld l, a                                       ; $4961: $6f
    ld c, d                                       ; $4962: $4a
    cp e                                          ; $4963: $bb
    sbc [hl]                                      ; $4964: $9e
    ld d, a                                       ; $4965: $57
    and l                                         ; $4966: $a5
    ld c, c                                       ; $4967: $49
    adc l                                         ; $4968: $8d
    nop                                           ; $4969: $00
    nop                                           ; $496a: $00
    ld e, a                                       ; $496b: $5f
    adc h                                         ; $496c: $8c
    jp c, $bcf5                                   ; $496d: $da $f5 $bc

    ld a, [hl+]                                   ; $4970: $2a
    adc l                                         ; $4971: $8d
    halt                                          ; $4972: $76
    jp z, Jump_000_2232                           ; $4973: $ca $32 $22

    scf                                           ; $4976: $37

jr_056_4977:
    push bc                                       ; $4977: $c5
    inc hl                                        ; $4978: $23
    xor c                                         ; $4979: $a9
    ld d, c                                       ; $497a: $51
    adc e                                         ; $497b: $8b
    call Call_056_7b18                            ; $497c: $cd $18 $7b
    ld c, l                                       ; $497f: $4d
    and a                                         ; $4980: $a7
    ld sp, hl                                     ; $4981: $f9
    ld c, l                                       ; $4982: $4d
    rst $20                                       ; $4983: $e7
    cp l                                          ; $4984: $bd
    ld h, h                                       ; $4985: $64
    ret c                                         ; $4986: $d8

    ld bc, $8022                                  ; $4987: $01 $22 $80
    rst $38                                       ; $498a: $ff
    jr nc, @-$49                                  ; $498b: $30 $b5

    sbc b                                         ; $498d: $98
    ld sp, $f2f6                                  ; $498e: $31 $f6 $f2
    add hl, sp                                    ; $4991: $39
    ld c, e                                       ; $4992: $4b
    cp [hl]                                       ; $4993: $be
    ld [hl], d                                    ; $4994: $72
    add hl, de                                    ; $4995: $19
    ld l, $a5                                     ; $4996: $2e $a5
    jp hl                                         ; $4998: $e9


    dec [hl]                                      ; $4999: $35
    ld [c], a                                     ; $499a: $e2
    push de                                       ; $499b: $d5
    jp c, $c093                                   ; $499c: $da $93 $c0

    and e                                         ; $499f: $a3
    ld [hl], e                                    ; $49a0: $73
    dec e                                         ; $49a1: $1d
    or d                                          ; $49a2: $b2
    sbc [hl]                                      ; $49a3: $9e
    add h                                         ; $49a4: $84
    cp l                                          ; $49a5: $bd
    add $10                                       ; $49a6: $c6 $10
    ld bc, $ff80                                  ; $49a8: $01 $80 $ff
    adc $67                                       ; $49ab: $ce $67
    halt                                          ; $49ad: $76
    adc l                                         ; $49ae: $8d
    ld l, $63                                     ; $49af: $2e $63
    push hl                                       ; $49b1: $e5
    and $33                                       ; $49b2: $e6 $33
    ld a, [$d61d]                                 ; $49b4: $fa $1d $d6
    xor [hl]                                      ; $49b7: $ae
    rst $20                                       ; $49b8: $e7
    ld d, l                                       ; $49b9: $55
    ld l, c                                       ; $49ba: $69
    ld d, d                                       ; $49bb: $52
    rst $28                                       ; $49bc: $ef
    cp [hl]                                       ; $49bd: $be
    ld [$f64a], a                                 ; $49be: $ea $4a $f6
    ld b, e                                       ; $49c1: $43
    rst $00                                       ; $49c2: $c7
    sub d                                         ; $49c3: $92
    ld a, [de]                                    ; $49c4: $1a
    ld bc, $ebb7                                  ; $49c5: $01 $b7 $eb
    and c                                         ; $49c8: $a1
    cp c                                          ; $49c9: $b9
    ld d, d                                       ; $49ca: $52
    rrca                                          ; $49cb: $0f
    and b                                         ; $49cc: $a0
    ld a, [hl]                                    ; $49cd: $7e
    inc l                                         ; $49ce: $2c
    ret                                           ; $49cf: $c9


    ccf                                           ; $49d0: $3f
    ld a, e                                       ; $49d1: $7b
    ret                                           ; $49d2: $c9


    sub h                                         ; $49d3: $94
    ld [hl], c                                    ; $49d4: $71
    ld [$7b75], a                                 ; $49d5: $ea $75 $7b
    add c                                         ; $49d8: $81
    xor d                                         ; $49d9: $aa
    sbc l                                         ; $49da: $9d
    rra                                           ; $49db: $1f
    and e                                         ; $49dc: $a3
    adc e                                         ; $49dd: $8b
    rst $00                                       ; $49de: $c7
    cp a                                          ; $49df: $bf
    db $ed                                        ; $49e0: $ed
    ld c, c                                       ; $49e1: $49
    jr z, jr_056_4977                             ; $49e2: $28 $93

    inc hl                                        ; $49e4: $23
    sub d                                         ; $49e5: $92
    ld a, a                                       ; $49e6: $7f
    sub [hl]                                      ; $49e7: $96
    db $fc                                        ; $49e8: $fc
    dec b                                         ; $49e9: $05
    xor d                                         ; $49ea: $aa
    ld d, $3a                                     ; $49eb: $16 $3a
    ld d, $c9                                     ; $49ed: $16 $c9
    ld a, b                                       ; $49ef: $78
    sub l                                         ; $49f0: $95
    ld sp, $4336                                  ; $49f1: $31 $36 $43
    inc b                                         ; $49f4: $04
    db $dd                                        ; $49f5: $dd
    and $b9                                       ; $49f6: $e6 $b9
    or $63                                        ; $49f8: $f6 $63
    db $f4                                        ; $49fa: $f4
    ld l, b                                       ; $49fb: $68
    dec a                                         ; $49fc: $3d
    inc [hl]                                      ; $49fd: $34
    rla                                           ; $49fe: $17
    add h                                         ; $49ff: $84
    ld d, b                                       ; $4a00: $50
    sbc c                                         ; $4a01: $99
    rst $20                                       ; $4a02: $e7
    sbc d                                         ; $4a03: $9a
    ld [hl], h                                    ; $4a04: $74
    push bc                                       ; $4a05: $c5
    and $1a                                       ; $4a06: $e6 $1a
    or [hl]                                       ; $4a08: $b6
    ld e, d                                       ; $4a09: $5a
    ld a, [c]                                     ; $4a0a: $f2
    dec h                                         ; $4a0b: $25
    cp b                                          ; $4a0c: $b8
    ld d, d                                       ; $4a0d: $52
    inc hl                                        ; $4a0e: $23
    ld [hl], a                                    ; $4a0f: $77
    ld d, c                                       ; $4a10: $51
    add a                                         ; $4a11: $87
    pop hl                                        ; $4a12: $e1
    xor $b6                                       ; $4a13: $ee $b6
    call z, $97b2                                 ; $4a15: $cc $b2 $97
    ld c, h                                       ; $4a18: $4c
    ld a, c                                       ; $4a19: $79
    jp nc, $9b15                                  ; $4a1a: $d2 $15 $9b

    push bc                                       ; $4a1d: $c5
    inc hl                                        ; $4a1e: $23
    rst $18                                       ; $4a1f: $df
    add hl, sp                                    ; $4a20: $39
    xor [hl]                                      ; $4a21: $ae
    sbc l                                         ; $4a22: $9d
    rra                                           ; $4a23: $1f
    and e                                         ; $4a24: $a3
    adc e                                         ; $4a25: $8b
    rst $30                                       ; $4a26: $f7
    rst $10                                       ; $4a27: $d7
    xor b                                         ; $4a28: $a8
    ld h, e                                       ; $4a29: $63
    ld c, c                                       ; $4a2a: $49
    adc l                                         ; $4a2b: $8d
    nop                                           ; $4a2c: $00
    ld [hl], a                                    ; $4a2d: $77
    ld e, e                                       ; $4a2e: $5b
    ld b, [hl]                                    ; $4a2f: $46
    inc h                                         ; $4a30: $24
    cp a                                          ; $4a31: $bf
    ld b, l                                       ; $4a32: $45
    ld c, e                                       ; $4a33: $4b
    cpl                                           ; $4a34: $2f
    inc b                                         ; $4a35: $04
    db $dd                                        ; $4a36: $dd
    sub [hl]                                      ; $4a37: $96
    ld c, c                                       ; $4a38: $49
    ld d, a                                       ; $4a39: $57
    adc h                                         ; $4a3a: $8c
    ld l, [hl]                                    ; $4a3b: $6e
    sub [hl]                                      ; $4a3c: $96
    adc c                                         ; $4a3d: $89
    rrca                                          ; $4a3e: $0f
    ld e, e                                       ; $4a3f: $5b
    ld b, [hl]                                    ; $4a40: $46
    cp b                                          ; $4a41: $b8
    pop af                                        ; $4a42: $f1
    cp d                                          ; $4a43: $ba
    ld [de], a                                    ; $4a44: $12
    rst $10                                       ; $4a45: $d7
    pop hl                                        ; $4a46: $e1
    sbc l                                         ; $4a47: $9d
    ld hl, sp+$5b                                 ; $4a48: $f8 $5b
    ld [hl], e                                    ; $4a4a: $73
    db $ed                                        ; $4a4b: $ed
    jr c, jr_056_4a9a                             ; $4a4c: $38 $4c

    rst $20                                       ; $4a4e: $e7
    pop de                                        ; $4a4f: $d1
    push af                                       ; $4a50: $f5
    and [hl]                                      ; $4a51: $a6
    cp h                                          ; $4a52: $bc
    daa                                           ; $4a53: $27
    xor d                                         ; $4a54: $aa
    inc c                                         ; $4a55: $0c
    ld de, $5b77                                  ; $4a56: $11 $77 $5b
    ld e, h                                       ; $4a59: $5c
    ld d, e                                       ; $4a5a: $53
    ld a, [$6594]                                 ; $4a5b: $fa $94 $65
    cpl                                           ; $4a5e: $2f
    ld e, c                                       ; $4a5f: $59
    ret nc                                        ; $4a60: $d0

    ld e, e                                       ; $4a61: $5b
    db $db                                        ; $4a62: $db
    ret                                           ; $4a63: $c9


    ld a, b                                       ; $4a64: $78
    xor [hl]                                      ; $4a65: $ae
    ld h, l                                       ; $4a66: $65
    inc e                                         ; $4a67: $1c
    ld a, $f3                                     ; $4a68: $3e $f3
    ld e, [hl]                                    ; $4a6a: $5e
    or d                                          ; $4a6b: $b2
    rst $10                                       ; $4a6c: $d7
    sbc d                                         ; $4a6d: $9a
    ld [hl], a                                    ; $4a6e: $77
    cp d                                          ; $4a6f: $ba
    ld e, d                                       ; $4a70: $5a
    ld [hl+], a                                   ; $4a71: $22
    ld e, l                                       ; $4a72: $5d
    or c                                          ; $4a73: $b1
    ld e, c                                       ; $4a74: $59
    call c, $010b                                 ; $4a75: $dc $0b $01
    scf                                           ; $4a78: $37
    rst $00                                       ; $4a79: $c7
    xor b                                         ; $4a7a: $a8
    rst $10                                       ; $4a7b: $d7
    ld h, e                                       ; $4a7c: $63
    cp b                                          ; $4a7d: $b8
    dec sp                                        ; $4a7e: $3b
    sbc a                                         ; $4a7f: $9f
    sbc h                                         ; $4a80: $9c
    ret c                                         ; $4a81: $d8

    pop af                                        ; $4a82: $f1
    sub h                                         ; $4a83: $94
    ld a, c                                       ; $4a84: $79
    xor [hl]                                      ; $4a85: $ae
    add hl, hl                                    ; $4a86: $29
    bit 1, [hl]                                   ; $4a87: $cb $4e
    add $23                                       ; $4a89: $c6 $23
    rst $18                                       ; $4a8b: $df
    add hl, sp                                    ; $4a8c: $39
    xor [hl]                                      ; $4a8d: $ae
    db $fd                                        ; $4a8e: $fd
    dec [hl]                                      ; $4a8f: $35
    ld [$2058], a                                 ; $4a90: $ea $58 $20
    ld [bc], a                                    ; $4a93: $02
    db $dd                                        ; $4a94: $dd
    ld a, [$aa68]                                 ; $4a95: $fa $68 $aa
    ld b, [hl]                                    ; $4a98: $46
    scf                                           ; $4a99: $37

jr_056_4a9a:
    call Call_056_4932                            ; $4a9a: $cd $32 $49
    ld l, $87                                     ; $4a9d: $2e $87
    ld de, $f616                                  ; $4a9f: $11 $16 $f6
    sub h                                         ; $4aa2: $94
    ld b, l                                       ; $4aa3: $45
    dec sp                                        ; $4aa4: $3b
    or a                                          ; $4aa5: $b7
    and $3a                                       ; $4aa6: $e6 $3a
    adc e                                         ; $4aa8: $8b
    add hl, de                                    ; $4aa9: $19
    ld h, e                                       ; $4aaa: $63
    rst $10                                       ; $4aab: $d7
    sub d                                         ; $4aac: $92
    cp a                                          ; $4aad: $bf
    ld a, h                                       ; $4aae: $7c
    adc $5e                                       ; $4aaf: $ce $5e
    ld d, e                                       ; $4ab1: $53
    push af                                       ; $4ab2: $f5
    rla                                           ; $4ab3: $17
    ld a, [hl-]                                   ; $4ab4: $3a
    ld d, $c9                                     ; $4ab5: $16 $c9
    ld a, b                                       ; $4ab7: $78
    jp z, $9e22                                   ; $4ab8: $ca $22 $9e

    ld [$07aa], a                                 ; $4abb: $ea $aa $07
    ld de, $5b77                                  ; $4abe: $11 $77 $5b
    sub $71                                       ; $4ac1: $d6 $71
    jr @-$0d                                      ; $4ac3: $18 $f1

    ld l, d                                       ; $4ac5: $6a
    ccf                                           ; $4ac6: $3f
    ld b, [hl]                                    ; $4ac7: $46
    xor a                                         ; $4ac8: $af
    ld a, l                                       ; $4ac9: $7d
    ld l, h                                       ; $4aca: $6c
    add hl, de                                    ; $4acb: $19
    cp $02                                        ; $4acc: $fe $02
    ld de, $94b7                                  ; $4ace: $11 $b7 $94
    ld e, $87                                     ; $4ad1: $1e $87
    cp a                                          ; $4ad3: $bf
    ret nz                                        ; $4ad4: $c0

    ld [hl], l                                    ; $4ad5: $75
    sbc e                                         ; $4ad6: $9b
    rst $20                                       ; $4ad7: $e7
    ld e, d                                       ; $4ad8: $5a
    ld a, [$6795]                                 ; $4ad9: $fa $95 $67
    ld e, c                                       ; $4adc: $59
    jp c, Jump_000_2341                           ; $4add: $da $41 $23

    ld [c], a                                     ; $4ae0: $e2
    ld l, d                                       ; $4ae1: $6a
    rra                                           ; $4ae2: $1f
    ld e, e                                       ; $4ae3: $5b
    dec sp                                        ; $4ae4: $3b
    ld l, h                                       ; $4ae5: $6c
    ld e, c                                       ; $4ae6: $59
    ld a, [c]                                     ; $4ae7: $f2
    ld b, a                                       ; $4ae8: $47
    cp h                                          ; $4ae9: $bc
    jp c, $d18f                                   ; $4aea: $da $8f $d1

    sub e                                         ; $4aed: $93
    db $ec                                        ; $4aee: $ec
    dec h                                         ; $4aef: $25
    xor a                                         ; $4af0: $af
    dec b                                         ; $4af1: $05
    adc b                                         ; $4af2: $88
    nop                                           ; $4af3: $00
    ld a, l                                       ; $4af4: $7d
    inc e                                         ; $4af5: $1c
    ld b, [hl]                                    ; $4af6: $46
    rst $38                                       ; $4af7: $ff
    jr jr_056_4b21                                ; $4af8: $18 $27

    ld e, l                                       ; $4afa: $5d
    ld sp, $59ba                                  ; $4afb: $31 $ba $59
    ldh [$ee], a                                  ; $4afe: $e0 $ee
    call z, Call_000_3f78                         ; $4b00: $cc $78 $3f
    ld [hl], h                                    ; $4b03: $74
    inc l                                         ; $4b04: $2c
    db $10                                        ; $4b05: $10
    ld bc, $5d29                                  ; $4b06: $01 $29 $5d
    ld h, l                                       ; $4b09: $65
    pop de                                        ; $4b0a: $d1
    ld c, [hl]                                    ; $4b0b: $4e
    cp d                                          ; $4b0c: $ba
    ld h, d                                       ; $4b0d: $62
    ld [hl], h                                    ; $4b0e: $74
    or e                                          ; $4b0f: $b3
    inc l                                         ; $4b10: $2c
    or h                                          ; $4b11: $b4
    ld b, a                                       ; $4b12: $47
    sub d                                         ; $4b13: $92
    xor c                                         ; $4b14: $a9
    rst $10                                       ; $4b15: $d7
    rst $00                                       ; $4b16: $c7
    ld h, c                                       ; $4b17: $61
    sbc b                                         ; $4b18: $98
    ld a, [de]                                    ; $4b19: $1a
    ld e, c                                       ; $4b1a: $59
    ld e, l                                       ; $4b1b: $5d
    adc c                                         ; $4b1c: $89
    rst $30                                       ; $4b1d: $f7
    ld b, e                                       ; $4b1e: $43
    rst $00                                       ; $4b1f: $c7
    sub d                                         ; $4b20: $92

jr_056_4b21:
    ld a, [de]                                    ; $4b21: $1a
    ld bc, $9d29                                  ; $4b22: $01 $29 $9d
    rla                                           ; $4b25: $17
    ld h, e                                       ; $4b26: $63
    cp d                                          ; $4b27: $ba
    ld a, [hl]                                    ; $4b28: $7e
    adc h                                         ; $4b29: $8c
    xor [hl]                                      ; $4b2a: $ae
    call nc, $dbbb                                ; $4b2b: $d4 $bb $db
    ld [bc], a                                    ; $4b2e: $02

jr_056_4b2f:
    ld hl, $d43c                                  ; $4b2f: $21 $3c $d4
    ld c, $e7                                     ; $4b32: $0e $e7
    ld [hl], d                                    ; $4b34: $72
    ld l, d                                       ; $4b35: $6a
    inc b                                         ; $4b36: $04
    db $dd                                        ; $4b37: $dd
    rst $38                                       ; $4b38: $ff
    inc e                                         ; $4b39: $1c
    cpl                                           ; $4b3a: $2f
    ld e, l                                       ; $4b3b: $5d
    ccf                                           ; $4b3c: $3f
    ld b, [hl]                                    ; $4b3d: $46
    adc e                                         ; $4b3e: $8b

Jump_056_4b3f:
    rla                                           ; $4b3f: $17
    sbc a                                         ; $4b40: $9f
    db $ec                                        ; $4b41: $ec
    cp b                                          ; $4b42: $b8
    dec h                                         ; $4b43: $25
    dec sp                                        ; $4b44: $3b
    ld a, a                                       ; $4b45: $7f
    ld b, h                                       ; $4b46: $44
    sub d                                         ; $4b47: $92
    ld c, e                                       ; $4b48: $4b
    dec a                                         ; $4b49: $3d
    sbc c                                         ; $4b4a: $99
    ld a, [c]                                     ; $4b4b: $f2
    ld c, [hl]                                    ; $4b4c: $4e
    ld a, h                                       ; $4b4d: $7c

jr_056_4b4e:
    ld l, l                                       ; $4b4e: $6d
    ld [hl], h                                    ; $4b4f: $74
    db $d3                                        ; $4b50: $d3
    jr nc, jr_056_4b4e                            ; $4b51: $30 $fb

    db $ec                                        ; $4b53: $ec
    sub d                                         ; $4b54: $92
    ld h, c                                       ; $4b55: $61
    res 1, b                                      ; $4b56: $cb $88
    db $e4                                        ; $4b58: $e4
    dec l                                         ; $4b59: $2d
    ld [hl], c                                    ; $4b5a: $71
    sub l                                         ; $4b5b: $95
    rst $20                                       ; $4b5c: $e7
    jp nc, $794e                                  ; $4b5d: $d2 $4e $79

    xor [hl]                                      ; $4b60: $ae
    dec e                                         ; $4b61: $1d
    adc $e5                                       ; $4b62: $ce $e5
    ld c, c                                       ; $4b64: $49
    adc [hl]                                      ; $4b65: $8e
    db $e3                                        ; $4b66: $e3
    rst $18                                       ; $4b67: $df
    ld b, [hl]                                    ; $4b68: $46
    db $ed                                        ; $4b69: $ed
    call nz, Call_000_3ca7                        ; $4b6a: $c4 $a7 $3c
    push hl                                       ; $4b6d: $e5
    nop                                           ; $4b6e: $00
    ld de, $86f7                                  ; $4b6f: $11 $f7 $86
    add hl, hl                                    ; $4b72: $29
    adc a                                         ; $4b73: $8f
    ld l, [hl]                                    ; $4b74: $6e
    ld a, $ec                                     ; $4b75: $3e $ec

jr_056_4b77:
    cp c                                          ; $4b77: $b9
    halt                                          ; $4b78: $76
    ld a, [de]                                    ; $4b79: $1a
    push bc                                       ; $4b7a: $c5
    cp h                                          ; $4b7b: $bc
    sub a                                         ; $4b7c: $97
    inc l                                         ; $4b7d: $2c
    ld e, l                                       ; $4b7e: $5d
    ld h, [hl]                                    ; $4b7f: $66
    ld [hl], $ef                                  ; $4b80: $36 $ef
    dec [hl]                                      ; $4b82: $35
    add [hl]                                      ; $4b83: $86
    db $eb                                        ; $4b84: $eb
    ld [hl], $b3                                  ; $4b85: $36 $b3
    sub a                                         ; $4b87: $97
    db $fc                                        ; $4b88: $fc
    adc d                                         ; $4b89: $8a
    xor [hl]                                      ; $4b8a: $ae
    ld h, c                                       ; $4b8b: $61
    rst $10                                       ; $4b8c: $d7
    ld c, [hl]                                    ; $4b8d: $4e
    add $b3                                       ; $4b8e: $c6 $b3
    adc h                                         ; $4b90: $8c
    halt                                          ; $4b91: $76
    ld l, e                                       ; $4b92: $6b
    sbc [hl]                                      ; $4b93: $9e
    ld b, l                                       ; $4b94: $45
    halt                                          ; $4b95: $76
    ld [hl-], a                                   ; $4b96: $32
    sbc [hl]                                      ; $4b97: $9e
    ld a, c                                       ; $4b98: $79
    add a                                         ; $4b99: $87
    db $fc                                        ; $4b9a: $fc
    xor l                                         ; $4b9b: $ad
    ld b, c                                       ; $4b9c: $41
    inc b                                         ; $4b9d: $04
    rst $30                                       ; $4b9e: $f7
    ld hl, sp+$6b                                 ; $4b9f: $f8 $6b
    rlca                                          ; $4ba1: $07
    jr nz, jr_056_4b2f                            ; $4ba2: $20 $8b

    ld l, b                                       ; $4ba4: $68

Jump_056_4ba5:
    ld d, d                                       ; $4ba5: $52
    inc hl                                        ; $4ba6: $23
    add b                                         ; $4ba7: $80
    ei                                            ; $4ba8: $fb
    xor d                                         ; $4ba9: $aa
    pop de                                        ; $4baa: $d1
    cp c                                          ; $4bab: $b9
    adc $8f                                       ; $4bac: $ce $8f
    db $fc                                        ; $4bae: $fc
    inc bc                                        ; $4baf: $03
    add h                                         ; $4bb0: $84
    db $10                                        ; $4bb1: $10
    ld bc, $86f7                                  ; $4bb2: $01 $f7 $86
    sub c                                         ; $4bb5: $91
    rst $28                                       ; $4bb6: $ef
    sbc h                                         ; $4bb7: $9c
    ld h, l                                       ; $4bb8: $65
    sub d                                         ; $4bb9: $92
    inc e                                         ; $4bba: $1c
    sbc l                                         ; $4bbb: $9d
    ld l, e                                       ; $4bbc: $6b
    xor d                                         ; $4bbd: $aa
    or d                                          ; $4bbe: $b2
    ret z                                         ; $4bbf: $c8

    sub a                                         ; $4bc0: $97
    ldh a, [$b4]                                  ; $4bc1: $f0 $b4
    inc hl                                        ; $4bc3: $23
    ld [hl], h                                    ; $4bc4: $74
    sbc c                                         ; $4bc5: $99
    ld l, e                                       ; $4bc6: $6b
    jp z, $fa32                                   ; $4bc7: $ca $32 $fa

    ld d, l                                       ; $4bca: $55
    ei                                            ; $4bcb: $fb
    pop hl                                        ; $4bcc: $e1
    or b                                          ; $4bcd: $b0
    rst $30                                       ; $4bce: $f7
    sub d                                         ; $4bcf: $92
    add hl, hl                                    ; $4bd0: $29
    ld h, e                                       ; $4bd1: $63
    adc b                                         ; $4bd2: $88
    nop                                           ; $4bd3: $00
    add hl, hl                                    ; $4bd4: $29
    ld e, [hl]                                    ; $4bd5: $5e
    ld h, $49                                     ; $4bd6: $26 $49

jr_056_4bd8:
    db $ed                                        ; $4bd8: $ed
    ld a, d                                       ; $4bd9: $7a
    ld e, [hl]                                    ; $4bda: $5e
    sub l                                         ; $4bdb: $95
    ld h, $35                                     ; $4bdc: $26 $35
    ld [bc], a                                    ; $4bde: $02
    dec a                                         ; $4bdf: $3d
    ld c, c                                       ; $4be0: $49
    ld l, $f5                                     ; $4be1: $2e $f5
    ld h, h                                       ; $4be3: $64
    xor [hl]                                      ; $4be4: $ae
    add hl, hl                                    ; $4be5: $29
    di                                            ; $4be6: $f3
    or b                                          ; $4be7: $b0
    push de                                       ; $4be8: $d5
    nop                                           ; $4be9: $00
    ld h, h                                       ; $4bea: $64
    ld de, $2f4d                                  ; $4beb: $11 $4d $2f
    inc b                                         ; $4bee: $04
    ld a, l                                       ; $4bef: $7d
    inc e                                         ; $4bf0: $1c
    jr nz, jr_056_4b77                            ; $4bf1: $20 $84

    dec e                                         ; $4bf3: $1d
    add a                                         ; $4bf4: $87
    ld [hl], c                                    ; $4bf5: $71
    push hl                                       ; $4bf6: $e5
    ld a, [de]                                    ; $4bf7: $1a
    pop af                                        ; $4bf8: $f1
    ld h, h                                       ; $4bf9: $64
    ld sp, $ec63                                  ; $4bfa: $31 $63 $ec
    jp c, $8071                                   ; $4bfd: $da $71 $80

    cp e                                          ; $4c00: $bb
    db $db                                        ; $4c01: $db
    ld [hl-], a                                   ; $4c02: $32
    ld [c], a                                     ; $4c03: $e2
    ret                                           ; $4c04: $c9


    ld e, h                                       ; $4c05: $5c
    and e                                         ; $4c06: $a3
    bit 3, b                                      ; $4c07: $cb $58
    cp c                                          ; $4c09: $b9
    ld sp, hl                                     ; $4c0a: $f9
    inc l                                         ; $4c0b: $2c
    db $ed                                        ; $4c0c: $ed
    db $e4                                        ; $4c0d: $e4
    sbc a                                         ; $4c0e: $9f
    jp $ebad                                      ; $4c0f: $c3 $ad $eb


    ld b, b                                       ; $4c12: $40
    inc b                                         ; $4c13: $04
    add b                                         ; $4c14: $80
    rst $38                                       ; $4c15: $ff
    ld [c], a                                     ; $4c16: $e2
    sub e                                         ; $4c17: $93
    db $fd                                        ; $4c18: $fd
    jr jr_056_4bd8                                ; $4c19: $18 $bd

    jp $2499                                      ; $4c1b: $c3 $99 $24


    dec a                                         ; $4c1e: $3d
    and c                                         ; $4c1f: $a1
    or h                                          ; $4c20: $b4
    bit 4, c                                      ; $4c21: $cb $61
    add h                                         ; $4c23: $84
    ld l, e                                       ; $4c24: $6b
    ld e, a                                       ; $4c25: $5f
    call nz, Call_056_4d73                        ; $4c26: $c4 $73 $4d
    sbc c                                         ; $4c29: $99
    rst $30                                       ; $4c2a: $f7
    ld h, e                                       ; $4c2b: $63
    db $f4                                        ; $4c2c: $f4
    or b                                          ; $4c2d: $b0
    ld l, e                                       ; $4c2e: $6b
    daa                                           ; $4c2f: $27
    db $e3                                        ; $4c30: $e3
    push bc                                       ; $4c31: $c5
    daa                                           ; $4c32: $27
    dec sp                                        ; $4c33: $3b
    pop af                                        ; $4c34: $f1
    add hl, hl                                    ; $4c35: $29
    adc a                                         ; $4c36: $8f
    ld a, b                                       ; $4c37: $78
    jr @-$10                                      ; $4c38: $18 $ee

    adc $8c                                       ; $4c3a: $ce $8c
    or l                                          ; $4c3c: $b5
    dec sp                                        ; $4c3d: $3b
    call nc, Call_056_5502                        ; $4c3e: $d4 $02 $55
    ld c, e                                       ; $4c41: $4b
    cp $92                                        ; $4c42: $fe $92
    xor a                                         ; $4c44: $af
    ld e, h                                       ; $4c45: $5c
    ld e, $ff                                     ; $4c46: $1e $ff
    ld [hl], $f1                                  ; $4c48: $36 $f1
    ld h, c                                       ; $4c4a: $61
    xor a                                         ; $4c4b: $af
    ld [hl-], a                                   ; $4c4c: $32
    add [hl]                                      ; $4c4d: $86
    ld [$f1b7], sp                                ; $4c4e: $08 $b7 $f1
    cp b                                          ; $4c51: $b8
    ld [hl], d                                    ; $4c52: $72
    ld l, e                                       ; $4c53: $6b
    xor c                                         ; $4c54: $a9
    ld [hl], a                                    ; $4c55: $77
    ld b, a                                       ; $4c56: $47
    adc h                                         ; $4c57: $8c
    sbc [hl]                                      ; $4c58: $9e
    ld d, b                                       ; $4c59: $50
    ei                                            ; $4c5a: $fb
    and c                                         ; $4c5b: $a1
    ld h, e                                       ; $4c5c: $63
    ld c, c                                       ; $4c5d: $49
    adc l                                         ; $4c5e: $8d
    nop                                           ; $4c5f: $00
    ld [hl], a                                    ; $4c60: $77
    call nz, $25e8                                ; $4c61: $c4 $e8 $25
    ld a, l                                       ; $4c64: $7d
    push de                                       ; $4c65: $d5
    jp z, Jump_056_414a                           ; $4c66: $ca $4a $41

    ld [$38fb], sp                                ; $4c69: $08 $fb $38
    adc h                                         ; $4c6c: $8c
    dec hl                                        ; $4c6d: $2b
    rst $10                                       ; $4c6e: $d7
    sub h                                         ; $4c6f: $94
    ld a, c                                       ; $4c70: $79
    xor [hl]                                      ; $4c71: $ae
    sbc l                                         ; $4c72: $9d
    ld b, [hl]                                    ; $4c73: $46
    ld sp, $674f                                  ; $4c74: $31 $4f $67
    cp b                                          ; $4c77: $b8
    ld l, [hl]                                    ; $4c78: $6e
    di                                            ; $4c79: $f3
    adc b                                         ; $4c7a: $88
    ld d, a                                       ; $4c7b: $57
    or e                                          ; $4c7c: $b3
    db $ec                                        ; $4c7d: $ec
    or b                                          ; $4c7e: $b0
    ld h, $84                                     ; $4c7f: $26 $84
    ld b, l                                       ; $4c81: $45
    cp l                                          ; $4c82: $bd
    db $ed                                        ; $4c83: $ed
    cpl                                           ; $4c84: $2f
    ld c, d                                       ; $4c85: $4a
    ld l, [hl]                                    ; $4c86: $6e
    call $1102                                    ; $4c87: $cd $02 $11
    db $dd                                        ; $4c8a: $dd
    and $b9                                       ; $4c8b: $e6 $b9
    add [hl]                                      ; $4c8d: $86
    rst $18                                       ; $4c8e: $df
    add hl, sp                                    ; $4c8f: $39
    sbc $61                                       ; $4c90: $de $61
    ld c, l                                       ; $4c92: $4d
    ldh [$fd], a                                  ; $4c93: $e0 $fd
    add hl, hl                                    ; $4c95: $29
    res 4, d                                      ; $4c96: $cb $a2
    db $e4                                        ; $4c98: $e4
    sub $2c                                       ; $4c99: $d6 $2c
    db $10                                        ; $4c9b: $10
    ld bc, $c9b7                                  ; $4c9c: $01 $b7 $c9
    add b                                         ; $4c9f: $80
    db $fc                                        ; $4ca0: $fc
    db $10                                        ; $4ca1: $10
    inc l                                         ; $4ca2: $2c
    ld h, b                                       ; $4ca3: $60
    call c, Call_000_25d4                         ; $4ca4: $dc $d4 $25
    ld hl, sp-$39                                 ; $4ca7: $f8 $c7
    jp $a57a                                      ; $4ca9: $c3 $7a $a5


    ld e, [hl]                                    ; $4cac: $5e
    jp z, Jump_056_7113                           ; $4cad: $ca $13 $71

    ei                                            ; $4cb0: $fb
    ld h, c                                       ; $4cb1: $61
    ld [hl], h                                    ; $4cb2: $74
    ld a, e                                       ; $4cb3: $7b
    pop af                                        ; $4cb4: $f1

Jump_056_4cb5:
    db $ec                                        ; $4cb5: $ec
    pop af                                        ; $4cb6: $f1
    adc b                                         ; $4cb7: $88
    daa                                           ; $4cb8: $27
    ei                                            ; $4cb9: $fb
    ld sp, $f47a                                  ; $4cba: $31 $7a $f4
    adc a                                         ; $4cbd: $8f
    ld [hl], c                                    ; $4cbe: $71
    and a                                         ; $4cbf: $a7
    di                                            ; $4cc0: $f3
    db $e4                                        ; $4cc1: $e4
    ld e, b                                       ; $4cc2: $58
    add $bf                                       ; $4cc3: $c6 $bf
    adc l                                         ; $4cc5: $8d
    ld e, d                                       ; $4cc6: $5a
    cp d                                          ; $4cc7: $ba
    db $f4                                        ; $4cc8: $f4
    add sp, $29                                   ; $4cc9: $e8 $29
    ld c, e                                       ; $4ccb: $4b
    ld l, d                                       ; $4ccc: $6a
    inc b                                         ; $4ccd: $04
    dec a                                         ; $4cce: $3d
    ret                                           ; $4ccf: $c9


    ld e, e                                       ; $4cd0: $5b
    add sp, $74                                   ; $4cd1: $e8 $74
    push de                                       ; $4cd3: $d5
    sub d                                         ; $4cd4: $92
    ccf                                           ; $4cd5: $3f
    and c                                         ; $4cd6: $a1
    ld a, d                                       ; $4cd7: $7a
    ld hl, $35bd                                  ; $4cd8: $21 $bd $35
    and c                                         ; $4cdb: $a1
    cp [hl]                                       ; $4cdc: $be
    jp c, Jump_056_7b79                           ; $4cdd: $da $79 $7b

    inc a                                         ; $4ce0: $3c
    cp d                                          ; $4ce1: $ba
    cp c                                          ; $4ce2: $b9
    cp h                                          ; $4ce3: $bc
    sub a                                         ; $4ce4: $97
    adc h                                         ; $4ce5: $8c
    xor h                                         ; $4ce6: $ac
    ld c, h                                       ; $4ce7: $4c
    ei                                            ; $4ce8: $fb
    sbc h                                         ; $4ce9: $9c
    ld e, h                                       ; $4cea: $5c
    ld d, $8f                                     ; $4ceb: $16 $8f
    ld a, b                                       ; $4ced: $78
    ld c, d                                       ; $4cee: $4a
    ld a, c                                       ; $4cef: $79
    ld c, c                                       ; $4cf0: $49
    ld e, a                                       ; $4cf1: $5f
    push bc                                       ; $4cf2: $c5
    jp Jump_000_2356                              ; $4cf3: $c3 $56 $23


    xor c                                         ; $4cf6: $a9
    ld d, c                                       ; $4cf7: $51
    ld c, e                                       ; $4cf8: $4b
    ei                                            ; $4cf9: $fb

jr_056_4cfa:
    ld b, h                                       ; $4cfa: $44
    dec c                                         ; $4cfb: $0d
    or e                                          ; $4cfc: $b3
    sub a                                         ; $4cfd: $97
    jp nz, Jump_056_62fe                          ; $4cfe: $c2 $fe $62

    add c                                         ; $4d01: $81
    db $eb                                        ; $4d02: $eb
    ld a, [hl]                                    ; $4d03: $7e
    inc hl                                        ; $4d04: $23
    ld e, [hl]                                    ; $4d05: $5e
    ld c, l                                       ; $4d06: $4d
    ld [hl], d                                    ; $4d07: $72
    ld e, h                                       ; $4d08: $5c
    ld a, [bc]                                    ; $4d09: $0a
    rst $38                                       ; $4d0a: $ff
    ret c                                         ; $4d0b: $d8

    cp [hl]                                       ; $4d0c: $be
    add h                                         ; $4d0d: $84
    sbc l                                         ; $4d0e: $9d
    rst $00                                       ; $4d0f: $c7
    inc a                                         ; $4d10: $3c
    sbc l                                         ; $4d11: $9d
    and a                                         ; $4d12: $a7
    ld a, [hl-]                                   ; $4d13: $3a
    ld c, [hl]                                    ; $4d14: $4e
    call c, $bc8e                                 ; $4d15: $dc $8e $bc
    or d                                          ; $4d18: $b2
    ld e, b                                       ; $4d19: $58
    cp e                                          ; $4d1a: $bb
    inc e                                         ; $4d1b: $1c
    halt                                          ; $4d1c: $76
    rst $18                                       ; $4d1d: $df
    xor a                                         ; $4d1e: $af
    ld [hl], d                                    ; $4d1f: $72
    ld a, [c]                                     ; $4d20: $f2
    ld sp, $3a39                                  ; $4d21: $31 $39 $3a
    rla                                           ; $4d24: $17
    pop hl                                        ; $4d25: $e1
    ld a, b                                       ; $4d26: $78
    call z, $ae93                                 ; $4d27: $cc $93 $ae
    ret c                                         ; $4d2a: $d8

    inc l                                         ; $4d2b: $2c
    sub $0e                                       ; $4d2c: $d6 $0e
    ld e, e                                       ; $4d2e: $5b
    adc $ee                                       ; $4d2f: $ce $ee
    ld b, $9d                                     ; $4d31: $06 $9d
    ld [hl+], a                                   ; $4d33: $22
    ld a, d                                       ; $4d34: $7a
    sub c                                         ; $4d35: $91
    db $e3                                        ; $4d36: $e3
    ld a, d                                       ; $4d37: $7a
    ld [hl], d                                    ; $4d38: $72
    add sp, $1f                                   ; $4d39: $e8 $1f
    db $f4                                        ; $4d3b: $f4
    ld [hl], d                                    ; $4d3c: $72
    or c                                          ; $4d3d: $b1
    ld [hl], a                                    ; $4d3e: $77
    ld a, [hl-]                                   ; $4d3f: $3a
    cpl                                           ; $4d40: $2f
    add $74                                       ; $4d41: $c6 $74
    db $fd                                        ; $4d43: $fd
    jr jr_056_4d73                                ; $4d44: $18 $2d

    add [hl]                                      ; $4d46: $86
    db $eb                                        ; $4d47: $eb
    ld [hl], $b3                                  ; $4d48: $36 $b3
    add a                                         ; $4d4a: $87
    xor c                                         ; $4d4b: $a9
    dec h                                         ; $4d4c: $25
    ld a, l                                       ; $4d4d: $7d
    sub l                                         ; $4d4e: $95
    sub a                                         ; $4d4f: $97
    jp nc, $3af4                                  ; $4d50: $d2 $f4 $3a

    ld c, e                                       ; $4d53: $4b
    ld a, a                                       ; $4d54: $7f
    ld d, l                                       ; $4d55: $55
    cpl                                           ; $4d56: $2f
    ld l, b                                       ; $4d57: $68
    ld [hl], a                                    ; $4d58: $77
    xor b                                         ; $4d59: $a8
    ld [hl], l                                    ; $4d5a: $75
    inc e                                         ; $4d5b: $1c
    sub [hl]                                      ; $4d5c: $96
    ld e, b                                       ; $4d5d: $58
    add hl, hl                                    ; $4d5e: $29
    rst $10                                       ; $4d5f: $d7
    ld c, b                                       ; $4d60: $48
    ld l, d                                       ; $4d61: $6a
    adc a                                         ; $4d62: $8f
    and a                                         ; $4d63: $a7
    call z, $1d0b                                 ; $4d64: $cc $0b $1d
    scf                                           ; $4d67: $37
    push hl                                       ; $4d68: $e5
    ld a, [de]                                    ; $4d69: $1a
    or l                                          ; $4d6a: $b5
    ld [hl], h                                    ; $4d6b: $74
    ld a, e                                       ; $4d6c: $7b
    and d                                         ; $4d6d: $a2
    inc a                                         ; $4d6e: $3c
    set 3, h                                      ; $4d6f: $cb $dc
    ld a, [hl]                                    ; $4d71: $7e
    inc a                                         ; $4d72: $3c

Call_056_4d73:
jr_056_4d73:
    cp a                                          ; $4d73: $bf
    jr nz, jr_056_4cfa                            ; $4d74: $20 $84

    ld [$1929], sp                                ; $4d76: $08 $29 $19
    rst $28                                       ; $4d79: $ef
    call nz, $16d7                                ; $4d7a: $c4 $d7 $16
    ld a, [hl-]                                   ; $4d7d: $3a
    ld e, l                                       ; $4d7e: $5d
    push hl                                       ; $4d7f: $e5
    ld de, $9bc9                                  ; $4d80: $11 $c9 $9b
    ld a, d                                       ; $4d83: $7a
    cp l                                          ; $4d84: $bd
    db $10                                        ; $4d85: $10
    ld [hl], a                                    ; $4d86: $77
    call nz, $25e8                                ; $4d87: $c4 $e8 $25
    and $75                                       ; $4d8a: $e6 $75
    inc e                                         ; $4d8c: $1c
    ldh [$ee], a                                  ; $4d8d: $e0 $ee
    ld a, h                                       ; $4d8f: $7c
    ld [hl], d                                    ; $4d90: $72
    ld h, d                                       ; $4d91: $62
    rst $00                                       ; $4d92: $c7
    ld [hl], e                                    ; $4d93: $73
    ei                                            ; $4d94: $fb
    pop af                                        ; $4d95: $f1
    db $fc                                        ; $4d96: $fc
    or d                                          ; $4d97: $b2
    db $ec                                        ; $4d98: $ec
    call nz, $96d7                                ; $4d99: $c4 $d7 $96
    or $89                                        ; $4d9c: $f6 $89
    ld a, [de]                                    ; $4d9e: $1a
    ld h, [hl]                                    ; $4d9f: $66
    rrca                                          ; $4da0: $0f
    ld h, a                                       ; $4da1: $67
    sbc $6f                                       ; $4da2: $de $6f
    ld a, [bc]                                    ; $4da4: $0a
    ld c, $f0                                     ; $4da5: $0e $f0
    rra                                           ; $4da7: $1f
    ld c, l                                       ; $4da8: $4d
    push de                                       ; $4da9: $d5
    jp nc, Jump_000_3caf                          ; $4daa: $d2 $af $3c

    or d                                          ; $4dad: $b2
    cp d                                          ; $4dae: $ba
    ld [de], a                                    ; $4daf: $12
    cpl                                           ; $4db0: $2f
    add a                                         ; $4db1: $87
    dec e                                         ; $4db2: $1d
    ld b, e                                       ; $4db3: $43
    inc b                                         ; $4db4: $04
    db $dd                                        ; $4db5: $dd
    and $b9                                       ; $4db6: $e6 $b9
    sub [hl]                                      ; $4db8: $96
    ld a, [hl]                                    ; $4db9: $7e
    push hl                                       ; $4dba: $e5
    cp c                                          ; $4dbb: $b9
    db $fd                                        ; $4dbc: $fd
    ld a, b                                       ; $4dbd: $78
    ld a, [hl]                                    ; $4dbe: $7e
    ld c, l                                       ; $4dbf: $4d
    ld [hl], d                                    ; $4dc0: $72
    inc e                                         ; $4dc1: $1c
    rst $38                                       ; $4dc2: $ff
    ld [hl], $e5                                  ; $4dc3: $36 $e5
    nop                                           ; $4dc5: $00
    rst $10                                       ; $4dc6: $d7
    sbc e                                         ; $4dc7: $9b
    jp nc, $e94e                                  ; $4dc8: $d2 $4e $e9

    jp c, Jump_056_6a1d                           ; $4dcb: $da $1d $6a

    daa                                           ; $4dce: $27
    cp [hl]                                       ; $4dcf: $be
    or [hl]                                       ; $4dd0: $b6
    adc [hl]                                      ; $4dd1: $8e
    jp Jump_056_77c8                              ; $4dd2: $c3 $c8 $77


    adc [hl]                                      ; $4dd5: $8e
    ld b, a                                       ; $4dd6: $47
    ld d, d                                       ; $4dd7: $52
    inc bc                                        ; $4dd8: $03
    sub b                                         ; $4dd9: $90
    ld b, l                                       ; $4dda: $45
    inc [hl]                                      ; $4ddb: $34
    bit 4, c                                      ; $4ddc: $cb $61
    add h                                         ; $4dde: $84
    add l                                         ; $4ddf: $85
    dec a                                         ; $4de0: $3d
    and d                                         ; $4de1: $a2
    db $e3                                        ; $4de2: $e3
    ld b, [hl]                                    ; $4de3: $46
    jp nz, $a5dd                                  ; $4de4: $c2 $dd $a5

    adc c                                         ; $4de7: $89
    pop de                                        ; $4de8: $d1
    db $e3                                        ; $4de9: $e3
    rst $18                                       ; $4dea: $df
    or h                                          ; $4deb: $b4
    db $eb                                        ; $4dec: $eb
    ld a, c                                       ; $4ded: $79
    ld d, l                                       ; $4dee: $55
    ld a, [de]                                    ; $4def: $1a
    ld [$d2a1], sp                                ; $4df0: $08 $a1 $d2
    rst $20                                       ; $4df3: $e7
    sbc d                                         ; $4df4: $9a
    ld h, l                                       ; $4df5: $65
    add a                                         ; $4df6: $87
    ld [hl], e                                    ; $4df7: $73
    adc l                                         ; $4df8: $8d
    dec hl                                        ; $4df9: $2b
    or a                                          ; $4dfa: $b7
    add [hl]                                      ; $4dfb: $86
    sbc a                                         ; $4dfc: $9f
    ld [$dd44], sp                                ; $4dfd: $08 $44 $dd
    sub [hl]                                      ; $4e00: $96
    add l                                         ; $4e01: $85
    rra                                           ; $4e02: $1f
    db $e3                                        ; $4e03: $e3
    ld a, [hl]                                    ; $4e04: $7e
    adc h                                         ; $4e05: $8c
    add [hl]                                      ; $4e06: $86
    db $eb                                        ; $4e07: $eb
    ld [hl], a                                    ; $4e08: $77
    ld [c], a                                     ; $4e09: $e2
    xor a                                         ; $4e0a: $af
    ld e, l                                       ; $4e0b: $5d
    cp d                                          ; $4e0c: $ba
    db $fd                                        ; $4e0d: $fd
    ld e, d                                       ; $4e0e: $5a
    rst $00                                       ; $4e0f: $c7
    ld h, c                                       ; $4e10: $61
    jp nc, Jump_056_78a5                          ; $4e11: $d2 $a5 $78

    db $fc                                        ; $4e14: $fc
    db $db                                        ; $4e15: $db
    xor b                                         ; $4e16: $a8
    and l                                         ; $4e17: $a5
    dec e                                         ; $4e18: $1d
    inc [hl]                                      ; $4e19: $34
    ld [hl+], a                                   ; $4e1a: $22
    ld e, $49                                     ; $4e1b: $1e $49
    ld c, l                                       ; $4e1d: $4d
    inc [hl]                                      ; $4e1e: $34
    call z, $10bd                                 ; $4e1f: $cc $bd $10
    ld a, l                                       ; $4e22: $7d
    inc e                                         ; $4e23: $1c
    ld b, [hl]                                    ; $4e24: $46
    ld d, b                                       ; $4e25: $50
    and h                                         ; $4e26: $a4
    ld a, c                                       ; $4e27: $79
    ld c, d                                       ; $4e28: $4a
    rst $18                                       ; $4e29: $df
    adc c                                         ; $4e2a: $89
    ld a, d                                       ; $4e2b: $7a
    ld l, e                                       ; $4e2c: $6b
    ld e, $fd                                     ; $4e2d: $1e $fd
    ld b, l                                       ; $4e2f: $45
    inc a                                         ; $4e30: $3c
    cp d                                          ; $4e31: $ba
    ld e, $1e                                     ; $4e32: $1e $1e
    pop af                                        ; $4e34: $f1
    ld e, c                                       ; $4e35: $59
    cp e                                          ; $4e36: $bb
    ei                                            ; $4e37: $fb
    ld [hl-], a                                   ; $4e38: $32
    or e                                          ; $4e39: $b3
    dec bc                                        ; $4e3a: $0b
    ld [hl+], a                                   ; $4e3b: $22
    ld a, l                                       ; $4e3c: $7d
    inc e                                         ; $4e3d: $1c
    add $95                                       ; $4e3e: $c6 $95
    sub l                                         ; $4e40: $95
    ld a, [c]                                     ; $4e41: $f2
    sub h                                         ; $4e42: $94
    ld a, c                                       ; $4e43: $79
    ret                                           ; $4e44: $c9


    xor e                                         ; $4e45: $ab
    and l                                         ; $4e46: $a5
    inc [hl]                                      ; $4e47: $34
    cp l                                          ; $4e48: $bd
    ldh [$ba], a                                  ; $4e49: $e0 $ba
    call Call_056_5e23                            ; $4e4b: $cd $23 $5e
    db $ed                                        ; $4e4e: $ed
    or l                                          ; $4e4f: $b5
    add $5f                                       ; $4e50: $c6 $5f
    dec l                                         ; $4e52: $2d
    ld sp, hl                                     ; $4e53: $f9
    dec d                                         ; $4e54: $15
    call Call_000_193b                            ; $4e55: $cd $3b $19
    cpl                                           ; $4e58: $2f
    db $e3                                        ; $4e59: $e3
    ld de, $464f                                  ; $4e5a: $11 $4f $46
    inc a                                         ; $4e5d: $3c
    ld [hl], $0f                                  ; $4e5e: $36 $0f
    dec sp                                        ; $4e60: $3b
    ld b, b                                       ; $4e61: $40
    inc b                                         ; $4e62: $04
    dec a                                         ; $4e63: $3d
    ld c, a                                       ; $4e64: $4f
    ld d, $3a                                     ; $4e65: $16 $3a
    ld e, l                                       ; $4e67: $5d
    dec [hl]                                      ; $4e68: $35
    ld h, l                                       ; $4e69: $65
    add [hl]                                      ; $4e6a: $86
    db $eb                                        ; $4e6b: $eb
    ld a, c                                       ; $4e6c: $79
    ld l, h                                       ; $4e6d: $6c
    ld e, $fd                                     ; $4e6e: $1e $fd
    jp z, $f532                                   ; $4e70: $ca $32 $f5

    ld h, l                                       ; $4e73: $65
    db $fd                                        ; $4e74: $fd
    inc b                                         ; $4e75: $04
    db $ed                                        ; $4e76: $ed
    call nc, $f29b                                ; $4e77: $d4 $9b $f2
    jp nz, Jump_056_718f                          ; $4e7a: $c2 $8f $71

    inc h                                         ; $4e7d: $24
    or l                                          ; $4e7e: $b5
    sbc $af                                       ; $4e7f: $de $af
    ld [hl], c                                    ; $4e81: $71
    sub d                                         ; $4e82: $92
    adc e                                         ; $4e83: $8b
    ld [hl], a                                    ; $4e84: $77
    ld e, $c6                                     ; $4e85: $1e $c6
    ld d, $88                                     ; $4e87: $16 $88
    nop                                           ; $4e89: $00
    ld a, l                                       ; $4e8a: $7d
    inc e                                         ; $4e8b: $1c
    halt                                          ; $4e8c: $76
    xor b                                         ; $4e8d: $a8
    add hl, hl                                    ; $4e8e: $29
    add a                                         ; $4e8f: $87
    push hl                                       ; $4e90: $e5
    or b                                          ; $4e91: $b0
    sub h                                         ; $4e92: $94
    and [hl]                                      ; $4e93: $a6
    rst $10                                       ; $4e94: $d7
    adc $c3                                       ; $4e95: $ce $c3
    ret c                                         ; $4e97: $d8

    ld [bc], a                                    ; $4e98: $02
    rst $10                                       ; $4e99: $d7
    sub e                                         ; $4e9a: $93
    db $fc                                        ; $4e9b: $fc
    inc sp                                        ; $4e9c: $33
    ld h, l                                       ; $4e9d: $65
    sbc $8f                                       ; $4e9e: $de $8f
    pop de                                        ; $4ea0: $d1
    ld c, e                                       ; $4ea1: $4b
    ld e, [hl]                                    ; $4ea2: $5e
    dec c                                         ; $4ea3: $0d
    dec sp                                        ; $4ea4: $3b
    adc h                                         ; $4ea5: $8c
    ld a, b                                       ; $4ea6: $78
    or d                                          ; $4ea7: $b2
    db $e4                                        ; $4ea8: $e4
    push de                                       ; $4ea9: $d5
    ld [hl], h                                    ; $4eaa: $74
    or $cc                                        ; $4eab: $f6 $cc
    db $ec                                        ; $4ead: $ec
    add d                                         ; $4eae: $82
    db $10                                        ; $4eaf: $10
    ld h, d                                       ; $4eb0: $62
    ld l, d                                       ; $4eb1: $6a
    call nz, Call_000_1193                        ; $4eb2: $c4 $93 $11
    ld l, a                                       ; $4eb5: $6f
    call nz, $1e63                                ; $4eb6: $c4 $63 $1e
    cp $87                                        ; $4eb9: $fe $87
    sbc a                                         ; $4ebb: $9f
    ld b, h                                       ; $4ebc: $44
    adc a                                         ; $4ebd: $8f
    ld a, a                                       ; $4ebe: $7f
    sbc e                                         ; $4ebf: $9b
    ld [hl], d                                    ; $4ec0: $72
    ld c, b                                       ; $4ec1: $48
    adc l                                         ; $4ec2: $8d
    nop                                           ; $4ec3: $00
    db $dd                                        ; $4ec4: $dd
    and $11                                       ; $4ec5: $e6 $11
    ld c, a                                       ; $4ec7: $4f
    add hl, hl                                    ; $4ec8: $29
    adc a                                         ; $4ec9: $8f
    ld a, b                                       ; $4eca: $78
    and d                                         ; $4ecb: $a2
    ld e, l                                       ; $4ecc: $5d
    rst $20                                       ; $4ecd: $e7
    pop bc                                        ; $4ece: $c1
    and l                                         ; $4ecf: $a5
    ld l, b                                       ; $4ed0: $68
    ld b, h                                       ; $4ed1: $44
    db $ed                                        ; $4ed2: $ed
    pop af                                        ; $4ed3: $f1

Jump_056_4ed4:
    xor $d1                                       ; $4ed4: $ee $d1
    rst $08                                       ; $4ed6: $cf
    ld sp, hl                                     ; $4ed7: $f9
    ei                                            ; $4ed8: $fb
    ld sp, $697a                                  ; $4ed9: $31 $7a $69
    di                                            ; $4edc: $f3
    ld e, [hl]                                    ; $4edd: $5e
    ld [hl-], a                                   ; $4ede: $32
    ld [c], a                                     ; $4edf: $e2
    pop hl                                        ; $4ee0: $e1
    ld de, $5e6e                                  ; $4ee1: $11 $6e $5e
    jp c, $cc5f                                   ; $4ee4: $da $5f $cc

    jp c, $cb29                                   ; $4ee7: $da $29 $cb

    add sp, -$52                                  ; $4eea: $e8 $ae
    ld a, [hl-]                                   ; $4eec: $3a
    db $ec                                        ; $4eed: $ec
    add l                                         ; $4eee: $85
    daa                                           ; $4eef: $27
    pop bc                                        ; $4ef0: $c1
    ld [hl-], a                                   ; $4ef1: $32
    ld [c], a                                     ; $4ef2: $e2
    ret                                           ; $4ef3: $c9


    ld c, $67                                     ; $4ef4: $0e $67
    sub d                                         ; $4ef6: $92
    inc [hl]                                      ; $4ef7: $34
    rrca                                          ; $4ef8: $0f
    dec sp                                        ; $4ef9: $3b
    ld b, b                                       ; $4efa: $40
    inc b                                         ; $4efb: $04
    ld [hl], a                                    ; $4efc: $77
    ld e, e                                       ; $4efd: $5b
    ld b, [hl]                                    ; $4efe: $46
    inc h                                         ; $4eff: $24
    rst $38                                       ; $4f00: $ff
    ld c, h                                       ; $4f01: $4c
    sbc c                                         ; $4f02: $99
    rst $30                                       ; $4f03: $f7
    ld h, e                                       ; $4f04: $63
    db $f4                                        ; $4f05: $f4
    sub d                                         ; $4f06: $92
    ld d, a                                       ; $4f07: $57
    inc hl                                        ; $4f08: $23
    sbc [hl]                                      ; $4f09: $9e
    db $ec                                        ; $4f0a: $ec
    ld h, h                                       ; $4f0b: $64
    inc a                                         ; $4f0c: $3c
    ld l, $dd                                     ; $4f0d: $2e $dd
    inc a                                         ; $4f0f: $3c
    push hl                                       ; $4f10: $e5
    and b                                         ; $4f11: $a0
    dec e                                         ; $4f12: $1d
    sub c                                         ; $4f13: $91
    jr @+$31                                      ; $4f14: $18 $2f

    ld a, c                                       ; $4f16: $79
    dec [hl]                                      ; $4f17: $35
    ld h, l                                       ; $4f18: $65
    sbc [hl]                                      ; $4f19: $9e
    ld a, d                                       ; $4f1a: $7a
    cp l                                          ; $4f1b: $bd
    db $10                                        ; $4f1c: $10
    db $dd                                        ; $4f1d: $dd

Call_056_4f1e:
    and $25                                       ; $4f1e: $e6 $25
    xor a                                         ; $4f20: $af
    add [hl]                                      ; $4f21: $86
    cp a                                          ; $4f22: $bf
    adc h                                         ; $4f23: $8c
    ld [hl], b                                    ; $4f24: $70
    sub l                                         ; $4f25: $95
    pop hl                                        ; $4f26: $e1
    ld a, d                                       ; $4f27: $7a
    sbc [hl]                                      ; $4f28: $9e
    call z, $e935                                 ; $4f29: $cc $35 $e9
    ld d, d                                       ; $4f2c: $52
    inc a                                         ; $4f2d: $3c
    cp $6d                                        ; $4f2e: $fe $6d
    call nc, Call_056_74b8                        ; $4f30: $d4 $b8 $74
    rrca                                          ; $4f33: $0f

jr_056_4f34:
    dec sp                                        ; $4f34: $3b
    db $ec                                        ; $4f35: $ec
    and a                                         ; $4f36: $a7
    db $db                                        ; $4f37: $db
    inc de                                        ; $4f38: $13
    add [hl]                                      ; $4f39: $86
    db $eb                                        ; $4f3a: $eb
    ld a, c                                       ; $4f3b: $79
    ld [hl-], a                                   ; $4f3c: $32
    rst $10                                       ; $4f3d: $d7
    ld c, $b5                                     ; $4f3e: $0e $b5
    jp $a8ae                                      ; $4f40: $c3 $ae $a8


    ld e, l                                       ; $4f43: $5d
    ld c, $eb                                     ; $4f44: $0e $eb
    jr c, jr_056_4f34                             ; $4f46: $38 $ec

    ld d, b                                       ; $4f48: $50
    dec sp                                        ; $4f49: $3b
    ret                                           ; $4f4a: $c9


    adc e                                         ; $4f4b: $8b
    db $10                                        ; $4f4c: $10
    ld b, d                                       ; $4f4d: $42
    inc b                                         ; $4f4e: $04
    add b                                         ; $4f4f: $80
    ld e, a                                       ; $4f50: $5f
    adc l                                         ; $4f51: $8d
    ld a, b                                       ; $4f52: $78
    ld [hl-], a                                   ; $4f53: $32
    jp nz, Jump_000_1da5                          ; $4f54: $c2 $a5 $1d

    ld c, c                                       ; $4f57: $49
    xor l                                         ; $4f58: $ad
    rst $30                                       ; $4f59: $f7
    ld l, e                                       ; $4f5a: $6b
    sbc h                                         ; $4f5b: $9c
    db $e4                                        ; $4f5c: $e4
    ld h, d                                       ; $4f5d: $62
    db $ed                                        ; $4f5e: $ed
    adc $c3                                       ; $4f5f: $ce $c3

Call_056_4f61:
    ret c                                         ; $4f61: $d8

    ld [hl-], a                                   ; $4f62: $32
    ld l, h                                       ; $4f63: $6c
    dec [hl]                                      ; $4f64: $35
    push hl                                       ; $4f65: $e5
    ret nc                                        ; $4f66: $d0

    dec hl                                        ; $4f67: $2b
    dec [hl]                                      ; $4f68: $35
    ld [bc], a                                    ; $4f69: $02
    dec a                                         ; $4f6a: $3d
    ld c, a                                       ; $4f6b: $4f
    and $da                                       ; $4f6c: $e6 $da
    ld l, e                                       ; $4f6e: $6b
    adc l                                         ; $4f6f: $8d
    cp a                                          ; $4f70: $bf
    ld a, [de]                                    ; $4f71: $1a
    sub c                                         ; $4f72: $91
    rst $08                                       ; $4f73: $cf
    or b                                          ; $4f74: $b0

jr_056_4f75:
    inc bc                                        ; $4f75: $03
    inc e                                         ; $4f76: $1c
    ldh [$be], a                                  ; $4f77: $e0 $be
    ld [$ac84], a                                 ; $4f79: $ea $84 $ac

Call_056_4f7c:
    or h                                          ; $4f7c: $b4
    ld d, e                                       ; $4f7d: $53
    rst $38                                       ; $4f7e: $ff
    inc e                                         ; $4f7f: $1c
    rst $08                                       ; $4f80: $cf
    dec [hl]                                      ; $4f81: $35
    cp $6d                                        ; $4f82: $fe $6d
    jp z, $2201                                   ; $4f84: $ca $01 $22

    db $dd                                        ; $4f87: $dd
    ld a, [$7b5c]                                 ; $4f88: $fa $5c $7b
    adc l                                         ; $4f8b: $8d
    jp hl                                         ; $4f8c: $e9


    ld e, h                                       ; $4f8d: $5c
    inc de                                        ; $4f8e: $13
    call Call_000_1d09                            ; $4f8f: $cd $09 $1d
    ld d, a                                       ; $4f92: $57
    db $fd                                        ; $4f93: $fd
    and b                                         ; $4f94: $a0
    db $dd                                        ; $4f95: $dd
    ld a, l                                       ; $4f96: $7d
    sbc c                                         ; $4f97: $99
    reti                                          ; $4f98: $d9


    dec b                                         ; $4f99: $05
    rst $10                                       ; $4f9a: $d7
    rst $00                                       ; $4f9b: $c7
    ld h, c                                       ; $4f9c: $61

Call_056_4f9d:
    daa                                           ; $4f9d: $27
    cp [hl]                                       ; $4f9e: $be
    ld [hl], $7e                                  ; $4f9f: $36 $7e
    jp Jump_056_7b0e                              ; $4fa1: $c3 $0e $7b


    ret                                           ; $4fa4: $c9


    sub h                                         ; $4fa5: $94
    jp $b50e                                      ; $4fa6: $c3 $0e $b5


    inc hl                                        ; $4fa9: $23
    xor a                                         ; $4faa: $af
    ld a, b                                       ; $4fab: $78
    dec e                                         ; $4fac: $1d
    add a                                         ; $4fad: $87
    ld de, $16af                                  ; $4fae: $11 $af $16
    ld [$89c9], a                                 ; $4fb1: $ea $c9 $89
    and $29                                       ; $4fb4: $e6 $29
    inc sp                                        ; $4fb6: $33
    ld a, e                                       ; $4fb7: $7b
    ld e, a                                       ; $4fb8: $5f
    ret c                                         ; $4fb9: $d8

    push hl                                       ; $4fba: $e5
    ld [hl], e                                    ; $4fbb: $73
    sbc [hl]                                      ; $4fbc: $9e
    or b                                          ; $4fbd: $b0
    ld [hl], a                                    ; $4fbe: $77
    ld c, b                                       ; $4fbf: $48
    rst $38                                       ; $4fc0: $ff
    ld h, [hl]                                    ; $4fc1: $66
    add [hl]                                      ; $4fc2: $86

Call_056_4fc3:
    db $eb                                        ; $4fc3: $eb
    db $e3                                        ; $4fc4: $e3
    jr nc, jr_056_4f75                            ; $4fc5: $30 $ae

    ld e, h                                       ; $4fc7: $5c
    ld d, e                                       ; $4fc8: $53
    and $61                                       ; $4fc9: $e6 $61
    ld l, d                                       ; $4fcb: $6a
    ld c, c                                       ; $4fcc: $49
    ld e, a                                       ; $4fcd: $5f
    push hl                                       ; $4fce: $e5
    ld c, c                                       ; $4fcf: $49
    ld d, a                                       ; $4fd0: $57
    adc h                                         ; $4fd1: $8c
    ld l, [hl]                                    ; $4fd2: $6e
    sub [hl]                                      ; $4fd3: $96
    pop af                                        ; $4fd4: $f1
    ld l, a                                       ; $4fd5: $6f
    and e                                         ; $4fd6: $a3
    ld b, [hl]                                    ; $4fd7: $46
    ld a, a                                       ; $4fd8: $7f
    ld de, $852f                                  ; $4fd9: $11 $2f $85
    db $fd                                        ; $4fdc: $fd

jr_056_4fdd:
    push bc                                       ; $4fdd: $c5
    ld [bc], a                                    ; $4fde: $02
    ld de, $1c7d                                  ; $4fdf: $11 $7d $1c
    halt                                          ; $4fe2: $76
    ld e, h                                       ; $4fe3: $5c
    ld c, e                                       ; $4fe4: $4b
    ld h, c                                       ; $4fe5: $61
    ld a, a                                       ; $4fe6: $7f
    or c                                          ; $4fe7: $b1
    ld l, b                                       ; $4fe8: $68
    add a                                         ; $4fe9: $87
    dec l                                         ; $4fea: $2d
    db $eb                                        ; $4feb: $eb
    jr c, @-$72                                   ; $4fec: $38 $8c

    adc $75                                       ; $4fee: $ce $75
    sbc b                                         ; $4ff0: $98
    xor d                                         ; $4ff1: $aa
    db $fd                                        ; $4ff2: $fd
    jr jr_056_5002                                ; $4ff3: $18 $0d

    ld hl, $4d74                                  ; $4ff5: $21 $74 $4d
    ld e, c                                       ; $4ff8: $59
    or $45                                        ; $4ff9: $f6 $45
    cp h                                          ; $4ffb: $bc
    cp a                                          ; $4ffc: $bf
    inc d                                         ; $4ffd: $14
    jp nc, $99bf                                  ; $4ffe: $d2 $bf $99

    ld a, e                                       ; $5001: $7b

jr_056_5002:
    xor l                                         ; $5002: $ad
    daa                                           ; $5003: $27
    ret                                           ; $5004: $c9


    and l                                         ; $5005: $a5
    sbc [hl]                                      ; $5006: $9e
    inc l                                         ; $5007: $2c
    ld sp, hl                                     ; $5008: $f9
    dec d                                         ; $5009: $15
    ld e, l                                       ; $500a: $5d
    ld d, e                                       ; $500b: $53
    and $5e                                       ; $500c: $e6 $5e
    db $eb                                        ; $500e: $eb
    jp hl                                         ; $500f: $e9


    cp b                                          ; $5010: $b8
    sub c                                         ; $5011: $91
    jp $da0e                                      ; $5012: $c3 $0e $da


    ld de, $72ae                                  ; $5015: $11 $ae $72
    ld l, d                                       ; $5018: $6a
    inc b                                         ; $5019: $04
    or a                                          ; $501a: $b7
    nop                                           ; $501b: $00
    nop                                           ; $501c: $00
    ld [hl], h                                    ; $501d: $74
    rst $20                                       ; $501e: $e7
    ld a, d                                       ; $501f: $7a
    inc bc                                        ; $5020: $03
    ld [bc], a                                    ; $5021: $02
    ld [$b6f0], sp                                ; $5022: $08 $f0 $b6
    ld a, e                                       ; $5025: $7b
    jr nz, @+$04                                  ; $5026: $20 $02

    ld a, l                                       ; $5028: $7d
    ld e, $84                                     ; $5029: $1e $84
    jr nc, jr_056_5093                            ; $502b: $30 $66

    inc a                                         ; $502d: $3c
    ld [c], a                                     ; $502e: $e2
    or e                                          ; $502f: $b3
    halt                                          ; $5030: $76
    ld b, c                                       ; $5031: $41
    ld h, a                                       ; $5032: $67
    sub $2e                                       ; $5033: $d6 $2e
    add a                                         ; $5035: $87
    sbc l                                         ; $5036: $9d
    ccf                                           ; $5037: $3f
    db $ec                                        ; $5038: $ec
    jr nc, jr_056_505d                            ; $5039: $30 $22

    ld a, c                                       ; $503b: $79
    ld d, e                                       ; $503c: $53
    ld a, [$0b8e]                                 ; $503d: $fa $8e $0b
    ld [hl+], a                                   ; $5040: $22
    db $dd                                        ; $5041: $dd
    sub [hl]                                      ; $5042: $96
    cp c                                          ; $5043: $b9
    sub [hl]                                      ; $5044: $96
    db $fc                                        ; $5045: $fc
    adc d                                         ; $5046: $8a
    ld l, [hl]                                    ; $5047: $6e
    ccf                                           ; $5048: $3f
    ld b, b                                       ; $5049: $40
    ld [$5aff], sp                                ; $504a: $08 $ff $5a
    add $f8                                       ; $504d: $c6 $f8
    ld b, c                                       ; $504f: $41
    ld [$0e3b], sp                                ; $5050: $08 $3b $0e
    inc hl                                        ; $5053: $23
    ld e, [hl]                                    ; $5054: $5e
    ld c, l                                       ; $5055: $4d
    ld e, c                                       ; $5056: $59
    jr nz, jr_056_4fdd                            ; $5057: $20 $84

    ld [$c93d], sp                                ; $5059: $08 $3d $c9
    db $eb                                        ; $505c: $eb

jr_056_505d:
    add l                                         ; $505d: $85
    nop                                           ; $505e: $00
    ld a, l                                       ; $505f: $7d
    inc e                                         ; $5060: $1c
    halt                                          ; $5061: $76
    ld e, h                                       ; $5062: $5c
    jp Jump_000_3b0e                              ; $5063: $c3 $0e $3b


    ld l, [hl]                                    ; $5066: $6e
    ret                                           ; $5067: $c9


    or b                                          ; $5068: $b0
    push de                                       ; $5069: $d5
    ld c, d                                       ; $506a: $4a
    rst $00                                       ; $506b: $c7
    and h                                         ; $506c: $a4
    sbc e                                         ; $506d: $9b
    jp nc, $9225                                  ; $506e: $d2 $25 $92

    add hl, sp                                    ; $5071: $39
    cp [hl]                                       ; $5072: $be
    ld h, [hl]                                    ; $5073: $66
    add c                                         ; $5074: $81
    ld [$373d], sp                                ; $5075: $08 $3d $37
    rst $18                                       ; $5078: $df
    or e                                          ; $5079: $b3
    cp e                                          ; $507a: $bb
    add b                                         ; $507b: $80
    ld bc, $0dbe                                  ; $507c: $01 $be $0d
    nop                                           ; $507f: $00
    ld e, h                                       ; $5080: $5c
    rst $08                                       ; $5081: $cf
    call $acf7                                    ; $5082: $cd $f7 $ac
    rst $20                                       ; $5085: $e7
    ld h, [hl]                                    ; $5086: $66
    nop                                           ; $5087: $00
    ld c, e                                       ; $5088: $4b
    ld bc, $db78                                  ; $5089: $01 $78 $db
    dec e                                         ; $508c: $1d
    rst $30                                       ; $508d: $f7
    call c, $cf76                                 ; $508e: $dc $76 $cf
    xor $d8                                       ; $5091: $ee $d8

jr_056_5093:
    ld e, l                                       ; $5093: $5d
    rst $30                                       ; $5094: $f7
    sbc $7d                                       ; $5095: $de $7d
    rst $30                                       ; $5097: $f7
    call $0110                                    ; $5098: $cd $10 $01
    add hl, hl                                    ; $509b: $29
    or a                                          ; $509c: $b7
    ld bc, $3758                                  ; $509d: $01 $58 $37
    and b                                         ; $50a0: $a0
    push af                                       ; $50a1: $f5
    nop                                           ; $50a2: $00
    cp [hl]                                       ; $50a3: $be
    ld a, c                                       ; $50a4: $79
    ld a, l                                       ; $50a5: $7d
    ld l, [hl]                                    ; $50a6: $6e
    db $eb                                        ; $50a7: $eb
    cp l                                          ; $50a8: $bd
    db $db                                        ; $50a9: $db
    nop                                           ; $50aa: $00
    db $ec                                        ; $50ab: $ec
    sub [hl]                                      ; $50ac: $96
    cp e                                          ; $50ad: $bb
    xor $00                                       ; $50ae: $ee $00
    ld [$d7b0], sp                                ; $50b0: $08 $b0 $d7
    ld a, [$d6dc]                                 ; $50b3: $fa $dc $d6
    ld a, e                                       ; $50b6: $7b
    dec a                                         ; $50b7: $3d
    scf                                           ; $50b8: $37
    inc bc                                        ; $50b9: $03
    ret c                                         ; $50ba: $d8

    dec e                                         ; $50bb: $1d
    rst $30                                       ; $50bc: $f7
    db $f4                                        ; $50bd: $f4
    cp [hl]                                       ; $50be: $be
    db $ed                                        ; $50bf: $ed
    sbc [hl]                                      ; $50c0: $9e
    db $dd                                        ; $50c1: $dd
    sub $fb                                       ; $50c2: $d6 $fb
    or [hl]                                       ; $50c4: $b6
    ld a, e                                       ; $50c5: $7b
    sub [hl]                                      ; $50c6: $96
    ld [hl], d                                    ; $50c7: $72
    rst $20                                       ; $50c8: $e7
    dec e                                         ; $50c9: $1d
    ld [hl], a                                    ; $50ca: $77
    sbc $79                                       ; $50cb: $de $79
    db $db                                        ; $50cd: $db
    ld e, l                                       ; $50ce: $5d
    add hl, hl                                    ; $50cf: $29
    or a                                          ; $50d0: $b7
    ld l, c                                       ; $50d1: $69
    ld [hl], a                                    ; $50d2: $77
    rst $28                                       ; $50d3: $ef
    db $dd                                        ; $50d4: $dd
    cp e                                          ; $50d5: $bb
    db $e3                                        ; $50d6: $e3
    adc $3b                                       ; $50d7: $ce $3b
    ld l, a                                       ; $50d9: $6f
    db $db                                        ; $50da: $db
    ld l, l                                       ; $50db: $6d
    rst $30                                       ; $50dc: $f7
    db $ec                                        ; $50dd: $ec
    and $7b                                       ; $50de: $e6 $7b
    xor $b9                                       ; $50e0: $ee $b9
    db $ed                                        ; $50e2: $ed
    sbc [hl]                                      ; $50e3: $9e
    ld bc, $e3be                                  ; $50e4: $01 $be $e3
    xor [hl]                                      ; $50e7: $ae
    db $dd                                        ; $50e8: $dd
    ld [hl], l                                    ; $50e9: $75
    di                                            ; $50ea: $f3
    xor $be                                       ; $50eb: $ee $be
    xor l                                         ; $50ed: $ad
    rst $30                                       ; $50ee: $f7
    cp d                                          ; $50ef: $ba
    ld l, a                                       ; $50f0: $6f
    cp e                                          ; $50f1: $bb
    db $eb                                        ; $50f2: $eb
    or [hl]                                       ; $50f3: $b6
    push af                                       ; $50f4: $f5
    call c, Call_056_4f7c                         ; $50f5: $dc $7c $4f
    jp z, Jump_000_04ee                           ; $50f8: $ca $ee $04

    ld [hl], b                                    ; $50fb: $70
    rst $28                                       ; $50fc: $ef
    ld a, l                                       ; $50fd: $7d
    rst $30                                       ; $50fe: $f7
    pop bc                                        ; $50ff: $c1
    db $dd                                        ; $5100: $dd
    ld a, l                                       ; $5101: $7d
    db $db                                        ; $5102: $db
    dec a                                         ; $5103: $3d
    cp e                                          ; $5104: $bb
    and a                                         ; $5105: $a7
    ld e, a                                       ; $5106: $5f
    nop                                           ; $5107: $00
    db $eb                                        ; $5108: $eb
    ld [hl], e                                    ; $5109: $73
    ld e, e                                       ; $510a: $5b
    rst $28                                       ; $510b: $ef
    db $dd                                        ; $510c: $dd
    ld [hl], l                                    ; $510d: $75
    ld [hl], e                                    ; $510e: $73
    rst $28                                       ; $510f: $ef
    db $db                                        ; $5110: $db
    nop                                           ; $5111: $00
    db $ec                                        ; $5112: $ec
    xor [hl]                                      ; $5113: $ae
    dec sp                                        ; $5114: $3b
    nop                                           ; $5115: $00
    and a                                         ; $5116: $a7
    call c, $d776                                 ; $5117: $dc $76 $d7
    dec e                                         ; $511a: $1d
    ld [hl], a                                    ; $511b: $77
    and [hl]                                      ; $511c: $a6
    call c, $e001                                 ; $511d: $dc $01 $e0
    or [hl]                                       ; $5120: $b6
    ld a, e                                       ; $5121: $7b
    or h                                          ; $5122: $b4
    cp e                                          ; $5123: $bb
    di                                            ; $5124: $f3
    and $7b                                       ; $5125: $e6 $7b
    sub $e7                                       ; $5127: $d6 $e7
    or [hl]                                       ; $5129: $b6
    sbc $4b                                       ; $512a: $de $4b
    cp c                                          ; $512c: $b9
    di                                            ; $512d: $f3
    and $fb                                       ; $512e: $e6 $fb
    ld l, [hl]                                    ; $5130: $6e
    db $db                                        ; $5131: $db
    db $dd                                        ; $5132: $dd
    or a                                          ; $5133: $b7
    push af                                       ; $5134: $f5
    sbc $6d                                       ; $5135: $de $6d
    rst $30                                       ; $5137: $f7
    db $ec                                        ; $5138: $ec
    ld e, $60                                     ; $5139: $1e $60
    cp e                                          ; $513b: $bb
    inc de                                        ; $513c: $13
    ret nz                                        ; $513d: $c0

    cp l                                          ; $513e: $bd
    rst $30                                       ; $513f: $f7
    db $dd                                        ; $5140: $dd
    and a                                         ; $5141: $a7
    ld e, l                                       ; $5142: $5d
    jp z, Jump_056_77bd                           ; $5143: $ca $bd $77

    rst $28                                       ; $5146: $ef
    sub [hl]                                      ; $5147: $96

jr_056_5148:
    cp e                                          ; $5148: $bb
    xor $00                                       ; $5149: $ee $00
    or b                                          ; $514b: $b0
    sbc [hl]                                      ; $514c: $9e
    db $db                                        ; $514d: $db
    xor $02                                       ; $514e: $ee $02
    cp b                                          ; $5150: $b8
    cp e                                          ; $5151: $bb
    rst $28                                       ; $5152: $ef
    cp b                                          ; $5153: $b8
    ld h, a                                       ; $5154: $67
    or a                                          ; $5155: $b7
    push af                                       ; $5156: $f5
    cp [hl]                                       ; $5157: $be
    db $ed                                        ; $5158: $ed
    ld e, $b8                                     ; $5159: $1e $b8
    sub h                                         ; $515b: $94
    ld a, [hl]                                    ; $515c: $7e
    rst $10                                       ; $515d: $d7
    ei                                            ; $515e: $fb
    adc [hl]                                      ; $515f: $8e
    db $dd                                        ; $5160: $dd
    ld a, l                                       ; $5161: $7d
    ld e, e                                       ; $5162: $5b
    rst $28                                       ; $5163: $ef
    and l                                         ; $5164: $a5
    nop                                           ; $5165: $00
    cp h                                          ; $5166: $bc
    db $ed                                        ; $5167: $ed
    adc [hl]                                      ; $5168: $8e
    ld a, e                                       ; $5169: $7b
    ld l, [hl]                                    ; $516a: $6e
    cp e                                          ; $516b: $bb
    ld b, a                                       ; $516c: $47
    cp e                                          ; $516d: $bb
    db $db                                        ; $516e: $db
    xor $ba                                       ; $516f: $ee $ba
    db $eb                                        ; $5171: $eb
    ld [hl], $00                                  ; $5172: $36 $00
    db $eb                                        ; $5174: $eb
    ld b, $b1                                     ; $5175: $06 $b1
    sub h                                         ; $5177: $94

Call_056_5178:
    cp e                                          ; $5178: $bb
    xor $b8                                       ; $5179: $ee $b8
    ld [hl], e                                    ; $517b: $73
    db $dd                                        ; $517c: $dd
    ld [hl], a                                    ; $517d: $77
    call c, $db73                                 ; $517e: $dc $73 $db
    ld l, [hl]                                    ; $5181: $6e
    cp a                                          ; $5182: $bf
    rla                                           ; $5183: $17
    ret nz                                        ; $5184: $c0

    ld l, l                                       ; $5185: $6d
    ld [hl], a                                    ; $5186: $77
    ld [hl], l                                    ; $5187: $75
    inc bc                                        ; $5188: $03
    cp b                                          ; $5189: $b8
    ld l, l                                       ; $518a: $6d
    db $dd                                        ; $518b: $dd
    jr nz, jr_056_5148                            ; $518c: $20 $ba

    ld l, a                                       ; $518e: $6f
    add e                                         ; $518f: $83
    db $10                                        ; $5190: $10
    sbc $d7                                       ; $5191: $de $d7
    rst $28                                       ; $5193: $ef
    xor $bc                                       ; $5194: $ee $bc
    rst $20                                       ; $5196: $e7
    ld [hl], $88                                  ; $5197: $36 $88
    nop                                           ; $5199: $00
    db $dd                                        ; $519a: $dd
    and $b9                                       ; $519b: $e6 $b9
    sub $ba                                       ; $519d: $d6 $ba
    add d                                         ; $519f: $82
    and h                                         ; $51a0: $a4
    ld b, [hl]                                    ; $51a1: $46
    cp l                                          ; $51a2: $bd
    or e                                          ; $51a3: $b3
    sbc d                                         ; $51a4: $9a
    sbc c                                         ; $51a5: $99
    ld e, l                                       ; $51a6: $5d
    ld hl, sp+$2b                                 ; $51a7: $f8 $2b
    push af                                       ; $51a9: $f5
    add d                                         ; $51aa: $82

Call_056_51ab:
    halt                                          ; $51ab: $76
    dec a                                         ; $51ac: $3d
    xor a                                         ; $51ad: $af
    ld c, d                                       ; $51ae: $4a
    inc bc                                        ; $51af: $03
    ld de, $ec29                                  ; $51b0: $11 $29 $ec
    cpl                                           ; $51b3: $2f
    sub [hl]                                      ; $51b4: $96
    call nc, $b3bb                                ; $51b5: $d4 $bb $b3
    inc l                                         ; $51b8: $2c
    and c                                         ; $51b9: $a1
    ld a, c                                       ; $51ba: $79
    call nz, Call_000_29ab                        ; $51bb: $c4 $ab $29
    ld c, e                                       ; $51be: $4b
    ld l, d                                       ; $51bf: $6a
    inc b                                         ; $51c0: $04
    rst $30                                       ; $51c1: $f7
    ld hl, sp+$6b                                 ; $51c2: $f8 $6b
    rst $10                                       ; $51c4: $d7
    ld [hl], c                                    ; $51c5: $71
    ld e, b                                       ; $51c6: $58
    call z, $ea78                                 ; $51c7: $cc $78 $ea
    di                                            ; $51ca: $f3
    cp $f8                                        ; $51cb: $fe $f8
    dec hl                                        ; $51cd: $2b
    adc a                                         ; $51ce: $8f
    ld a, a                                       ; $51cf: $7f
    dec de                                        ; $51d0: $1b
    dec [hl]                                      ; $51d1: $35
    ld [c], a                                     ; $51d2: $e2
    adc e                                         ; $51d3: $8b
    ld a, [hl+]                                   ; $51d4: $2a
    ld c, a                                       ; $51d5: $4f
    sbc c                                         ; $51d6: $99
    pop hl                                        ; $51d7: $e1
    xor $88                                       ; $51d8: $ee $88
    pop de                                        ; $51da: $d1
    and e                                         ; $51db: $a3
    ld [hl], e                                    ; $51dc: $73
    ld c, l                                       ; $51dd: $4d
    sbc c                                         ; $51de: $99
    or l                                          ; $51df: $b5
    ld d, e                                       ; $51e0: $53
    ld a, [$7b62]                                 ; $51e1: $fa $62 $7b
    push bc                                       ; $51e4: $c5
    sbc [hl]                                      ; $51e5: $9e
    ld [hl], d                                    ; $51e6: $72
    sbc b                                         ; $51e7: $98
    adc $d8                                       ; $51e8: $ce $d8
    dec d                                         ; $51ea: $15
    call $a923                                    ; $51eb: $cd $23 $a9
    add hl, sp                                    ; $51ee: $39
    ld e, b                                       ; $51ef: $58
    ld b, [hl]                                    ; $51f0: $46
    ld d, b                                       ; $51f1: $50
    and d                                         ; $51f2: $a2
    jr nz, jr_056_51f7                            ; $51f3: $20 $02

    ld a, l                                       ; $51f5: $7d
    inc e                                         ; $51f6: $1c

jr_056_51f7:
    add [hl]                                      ; $51f7: $86
    xor c                                         ; $51f8: $a9
    dec e                                         ; $51f9: $1d
    or d                                          ; $51fa: $b2
    xor e                                         ; $51fb: $ab
    jp z, Jump_056_78cb                           ; $51fc: $ca $cb $78

    sub d                                         ; $51ff: $92
    dec c                                         ; $5200: $0d
    ld [hl], a                                    ; $5201: $77
    ld e, e                                       ; $5202: $5b
    dec c                                         ; $5203: $0d
    ld [hl], b                                    ; $5204: $70
    ld l, [hl]                                    ; $5205: $6e
    jp z, $1738                                   ; $5206: $ca $38 $17

    ld c, a                                       ; $5209: $4f
    ld [hl], l                                    ; $520a: $75
    xor c                                         ; $520b: $a9
    ld e, [hl]                                    ; $520c: $5e
    ld [$f8f7], sp                                ; $520d: $08 $f7 $f8
    jp Jump_000_3cf5                              ; $5210: $c3 $f5 $3c


    ld e, c                                       ; $5213: $59
    ld a, [c]                                     ; $5214: $f2
    ld l, d                                       ; $5215: $6a
    ccf                                           ; $5216: $3f
    ld b, [hl]                                    ; $5217: $46
    adc a                                         ; $5218: $8f
    ld [hl], b                                    ; $5219: $70
    db $e3                                        ; $521a: $e3
    or l                                          ; $521b: $b5
    sbc a                                         ; $521c: $9f
    ld e, b                                       ; $521d: $58
    cp e                                          ; $521e: $bb
    ld b, e                                       ; $521f: $43
    adc l                                         ; $5220: $8d
    ld a, b                                       ; $5221: $78
    or d                                          ; $5222: $b2
    ld hl, sp+$64                                 ; $5223: $f8 $64
    ccf                                           ; $5225: $3f
    ld b, [hl]                                    ; $5226: $46
    adc a                                         ; $5227: $8f
    ld [hl], b                                    ; $5228: $70
    db $e3                                        ; $5229: $e3
    xor c                                         ; $522a: $a9
    ld [hl-], a                                   ; $522b: $32
    jp hl                                         ; $522c: $e9


    inc bc                                        ; $522d: $03
    rst $10                                       ; $522e: $d7
    di                                            ; $522f: $f3
    ld h, h                                       ; $5230: $64
    xor [hl]                                      ; $5231: $ae
    pop de                                        ; $5232: $d1
    ld h, l                                       ; $5233: $65
    xor h                                         ; $5234: $ac
    call c, $a67c                                 ; $5235: $dc $7c $a6
    ld e, h                                       ; $5238: $5c
    db $d3                                        ; $5239: $d3
    reti                                          ; $523a: $d9


    inc sp                                        ; $523b: $33
    rra                                           ; $523c: $1f
    or [hl]                                       ; $523d: $b6
    ld a, [hl-]                                   ; $523e: $3a
    db $10                                        ; $523f: $10
    ld b, d                                       ; $5240: $42
    inc b                                         ; $5241: $04
    rst $30                                       ; $5242: $f7
    add [hl]                                      ; $5243: $86
    jp hl                                         ; $5244: $e9


    ld b, a                                       ; $5245: $47
    inc hl                                        ; $5246: $23
    db $ed                                        ; $5247: $ed
    rlca                                          ; $5248: $07
    jp nz, $e27c                                  ; $5249: $c2 $7c $e2

    inc hl                                        ; $524c: $23
    ld c, c                                       ; $524d: $49
    sra [hl]                                      ; $524e: $cb $2e
    ld e, c                                       ; $5250: $59
    ld h, d                                       ; $5251: $62
    sbc [hl]                                      ; $5252: $9e
    jp nc, Jump_000_2447                          ; $5253: $d2 $47 $24

    add $3b                                       ; $5256: $c6 $3b
    add hl, de                                    ; $5258: $19
    rst $28                                       ; $5259: $ef
    ld e, b                                       ; $525a: $58
    inc d                                         ; $525b: $14
    ld a, e                                       ; $525c: $7b
    ret c                                         ; $525d: $d8

    ld h, c                                       ; $525e: $61
    jp z, Jump_000_0bd2                           ; $525f: $ca $d2 $0b

    ld bc, $5fdd                                  ; $5262: $01 $dd $5f
    ld b, [hl]                                    ; $5265: $46
    cp a                                          ; $5266: $bf
    ld e, d                                       ; $5267: $5a
    ld c, [hl]                                    ; $5268: $4e
    ld e, h                                       ; $5269: $5c
    dec l                                         ; $526a: $2d
    di                                            ; $526b: $f3
    sub h                                         ; $526c: $94

jr_056_526d:
    ld h, l                                       ; $526d: $65
    db $fc                                        ; $526e: $fc
    db $db                                        ; $526f: $db
    or b                                          ; $5270: $b0
    inc bc                                        ; $5271: $03
    ld e, h                                       ; $5272: $5c
    rra                                           ; $5273: $1f
    add a                                         ; $5274: $87
    or c                                          ; $5275: $b1
    dec h                                         ; $5276: $25
    or d                                          ; $5277: $b2
    and a                                         ; $5278: $a7
    db $f4                                        ; $5279: $f4
    add l                                         ; $527a: $85
    adc [hl]                                      ; $527b: $8e
    ld c, e                                       ; $527c: $4b
    cp h                                          ; $527d: $bc
    db $e4                                        ; $527e: $e4
    or a                                          ; $527f: $b7
    and $11                                       ; $5280: $e6 $11
    ld l, a                                       ; $5282: $6f
    jp z, $1102                                   ; $5283: $ca $02 $11

    rst $30                                       ; $5286: $f7
    add [hl]                                      ; $5287: $86
    dec e                                         ; $5288: $1d
    ld l, d                                       ; $5289: $6a
    ret                                           ; $528a: $c9


    xor e                                         ; $528b: $ab
    add hl, hl                                    ; $528c: $29
    di                                            ; $528d: $f3
    inc l                                         ; $528e: $2c
    db $e3                                        ; $528f: $e3
    cpl                                           ; $5290: $2f
    ld h, c                                       ; $5291: $61
    db $fc                                        ; $5292: $fc
    dec de                                        ; $5293: $1b
    add h                                         ; $5294: $84
    db $10                                        ; $5295: $10
    ld bc, $6bb7                                  ; $5296: $01 $b7 $6b
    ld l, d                                       ; $5299: $6a
    xor l                                         ; $529a: $ad
    db $eb                                        ; $529b: $eb
    ld b, b                                       ; $529c: $40
    inc b                                         ; $529d: $04
    dec a                                         ; $529e: $3d
    ld c, c                                       ; $529f: $49
    ld l, $3a                                     ; $52a0: $2e $3a
    rst $10                                       ; $52a2: $d7
    sub d                                         ; $52a3: $92
    ld e, a                                       ; $52a4: $5f
    pop de                                        ; $52a5: $d1
    dec [hl]                                      ; $52a6: $35
    ld h, l                                       ; $52a7: $65
    sbc $c9                                       ; $52a8: $de $c9
    ld a, b                                       ; $52aa: $78
    ld h, h                                       ; $52ab: $64
    ld h, l                                       ; $52ac: $65
    jp c, $e4e7                                   ; $52ad: $da $e7 $e4

    ld e, d                                       ; $52b0: $5a
    ld c, d                                       ; $52b1: $4a
    db $d3                                        ; $52b2: $d3
    ld l, e                                       ; $52b3: $6b
    call nz, $d763                                ; $52b4: $c4 $63 $d7
    or b                                          ; $52b7: $b0
    jp Jump_000_250e                              ; $52b8: $c3 $0e $25


    jp nc, $010b                                  ; $52bb: $d2 $0b $01

    db $dd                                        ; $52be: $dd
    ld e, a                                       ; $52bf: $5f
    ld b, [hl]                                    ; $52c0: $46
    cp a                                          ; $52c1: $bf
    ld e, d                                       ; $52c2: $5a
    ld e, c                                       ; $52c3: $59
    add hl, hl                                    ; $52c4: $29
    di                                            ; $52c5: $f3
    jp c, $cc4f                                   ; $52c6: $da $4f $cc

    inc hl                                        ; $52c9: $23
    sbc [hl]                                      ; $52ca: $9e
    inc e                                         ; $52cb: $1c
    db $ed                                        ; $52cc: $ed
    ld [hl], d                                    ; $52cd: $72
    sbc b                                         ; $52ce: $98
    ld [hl-], a                                   ; $52cf: $32
    rst $08                                       ; $52d0: $cf
    dec [hl]                                      ; $52d1: $35
    ld h, l                                       ; $52d2: $65
    ld e, c                                       ; $52d3: $59
    add sp, -$48                                  ; $52d4: $e8 $b8
    add hl, hl                                    ; $52d6: $29
    res 1, b                                      ; $52d7: $cb $88
    daa                                           ; $52d9: $27
    inc hl                                        ; $52da: $23
    ld e, $bb                                     ; $52db: $1e $bb
    ldh [$fa], a                                  ; $52dd: $e0 $fa
    jr c, jr_056_526d                             ; $52df: $38 $8c

    dec hl                                        ; $52e1: $2b
    rst $10                                       ; $52e2: $d7
    sub h                                         ; $52e3: $94
    ld a, c                                       ; $52e4: $79
    xor [hl]                                      ; $52e5: $ae
    add hl, hl                                    ; $52e6: $29
    rla                                           ; $52e7: $17
    sbc l                                         ; $52e8: $9d
    ld l, e                                       ; $52e9: $6b
    call nz, Call_000_1193                        ; $52ea: $c4 $93 $11
    xor a                                         ; $52ed: $af
    sub [hl]                                      ; $52ee: $96
    or $89                                        ; $52ef: $f6 $89
    ld a, [de]                                    ; $52f1: $1a
    ld h, [hl]                                    ; $52f2: $66
    di                                            ; $52f3: $f3
    sub h                                         ; $52f4: $94
    jp Jump_000_08fe                              ; $52f5: $c3 $fe $08


    scf                                           ; $52f8: $37
    adc a                                         ; $52f9: $8f
    ld a, [hl+]                                   ; $52fa: $2a
    cp b                                          ; $52fb: $b8
    ei                                            ; $52fc: $fb
    xor b                                         ; $52fd: $a8
    add hl, hl                                    ; $52fe: $29
    swap b                                        ; $52ff: $cb $30
    push bc                                       ; $5301: $c5
    sub [hl]                                      ; $5302: $96
    ld h, c                                       ; $5303: $61
    adc e                                         ; $5304: $8b
    ld l, e                                       ; $5305: $6b
    call nz, $3d93                                ; $5306: $c4 $93 $3d
    ld e, $f1                                     ; $5309: $1e $f1
    ld h, h                                       ; $530b: $64
    add hl, sp                                    ; $530c: $39
    ld c, h                                       ; $530d: $4c

Call_056_530e:
    ld a, l                                       ; $530e: $7d
    add hl, de                                    ; $530f: $19
    db $fd                                        ; $5310: $fd
    ld l, d                                       ; $5311: $6a
    jp hl                                         ; $5312: $e9


    or $6b                                        ; $5313: $f6 $6b
    daa                                           ; $5315: $27
    ld [$40ed], a                                 ; $5316: $ea $ed $40
    inc b                                         ; $5319: $04
    dec a                                         ; $531a: $3d
    ld c, c                                       ; $531b: $49
    ld l, $f5                                     ; $531c: $2e $f5
    ld h, h                                       ; $531e: $64
    db $f4                                        ; $531f: $f4
    adc a                                         ; $5320: $8f
    ld [hl], c                                    ; $5321: $71
    dec e                                         ; $5322: $1d
    add a                                         ; $5323: $87
    and l                                         ; $5324: $a5
    or b                                          ; $5325: $b0
    cp a                                          ; $5326: $bf
    ld e, b                                       ; $5327: $58
    and [hl]                                      ; $5328: $a6
    di                                            ; $5329: $f3
    ld e, [hl]                                    ; $532a: $5e
    or d                                          ; $532b: $b2
    ld b, e                                       ; $532c: $43
    ld a, [$7337]                                 ; $532d: $fa $37 $73
    cpl                                           ; $5330: $2f
    inc b                                         ; $5331: $04
    ld a, l                                       ; $5332: $7d
    inc e                                         ; $5333: $1c
    ld b, [hl]                                    ; $5334: $46
    rst $20                                       ; $5335: $e7
    ld [hl+], a                                   ; $5336: $22
    inc e                                         ; $5337: $1c
    adc a                                         ; $5338: $8f
    ld a, c                                       ; $5339: $79
    add a                                         ; $533a: $87
    db $f4                                        ; $533b: $f4
    ld l, a                                       ; $533c: $6f
    and $9d                                       ; $533d: $e6 $9d
    or $e3                                        ; $533f: $f6 $e3
    ld e, $2f                                     ; $5341: $1e $2f
    db $fd                                        ; $5343: $fd
    jp z, $ecb3                                   ; $5344: $ca $b3 $ec

    ld h, h                                       ; $5347: $64
    cp h                                          ; $5348: $bc
    db $e4                                        ; $5349: $e4
    or a                                          ; $534a: $b7
    and $d1                                       ; $534b: $e6 $d1
    ld e, a                                       ; $534d: $5f
    call nz, Call_056_614b                        ; $534e: $c4 $4b $61
    ld a, a                                       ; $5351: $7f
    or c                                          ; $5352: $b1
    db $ec                                        ; $5353: $ec
    sub d                                         ; $5354: $92
    pop de                                        ; $5355: $d1
    ld e, a                                       ; $5356: $5f
    call nz, $1653                                ; $5357: $c4 $53 $16
    db $ed                                        ; $535a: $ed
    or b                                          ; $535b: $b0
    ld h, l                                       ; $535c: $65
    ccf                                           ; $535d: $3f
    ld b, [hl]                                    ; $535e: $46
    cpl                                           ; $535f: $2f
    ld e, l                                       ; $5360: $5d
    ld a, d                                       ; $5361: $7a
    db $f4                                        ; $5362: $f4
    sub h                                         ; $5363: $94
    ld h, l                                       ; $5364: $65
    sub a                                         ; $5365: $97
    inc l                                         ; $5366: $2c
    ld [$1e22], a                                 ; $5367: $ea $22 $1e
    ld c, l                                       ; $536a: $4d
    adc l                                         ; $536b: $8d
    ld e, a                                       ; $536c: $5f
    call c, $b29f                                 ; $536d: $dc $9f $b2
    ret nz                                        ; $5370: $c0

    db $dd                                        ; $5371: $dd
    ld l, l                                       ; $5372: $6d
    sbc c                                         ; $5373: $99
    ld d, b                                       ; $5374: $50
    jp $94d4                                      ; $5375: $c3 $d4 $94


    ld a, $22                                     ; $5378: $3e $22
    ld sp, hl                                     ; $537a: $f9
    call $f5da                                    ; $537b: $cd $da $f5
    cp h                                          ; $537e: $bc
    ld a, [hl+]                                   ; $537f: $2a
    dec c                                         ; $5380: $0d
    ld e, h                                       ; $5381: $5c
    or a                                          ; $5382: $b7
    ld a, c                                       ; $5383: $79
    xor [hl]                                      ; $5384: $ae
    or l                                          ; $5385: $b5
    rra                                           ; $5386: $1f
    dec a                                         ; $5387: $3d
    cp d                                          ; $5388: $ba
    xor e                                         ; $5389: $ab
    or $92                                        ; $538a: $f6 $92
    db $d3                                        ; $538c: $d3
    ld [hl], h                                    ; $538d: $74

Call_056_538e:
    sub [hl]                                      ; $538e: $96
    cpl                                           ; $538f: $2f
    pop hl                                        ; $5390: $e1
    and h                                         ; $5391: $a4
    sbc a                                         ; $5392: $9f
    ld b, h                                       ; $5393: $44
    inc sp                                        ; $5394: $33
    ld e, e                                       ; $5395: $5b
    jr nz, jr_056_539a                            ; $5396: $20 $02

    or a                                          ; $5398: $b7
    ld [hl], a                                    ; $5399: $77

jr_056_539a:
    push de                                       ; $539a: $d5
    jp nc, $a24f                                  ; $539b: $d2 $4f $a2

    sbc c                                         ; $539e: $99
    dec l                                         ; $539f: $2d
    ld c, e                                       ; $53a0: $4b
    dec sp                                        ; $53a1: $3b
    ld l, b                                       ; $53a2: $68
    ld b, h                                       ; $53a3: $44
    ld e, h                                       ; $53a4: $5c
    jp c, Jump_056_6a61                           ; $53a5: $da $61 $6a

    ret                                           ; $53a8: $c9


    sbc a                                         ; $53a9: $9f
    adc $ca                                       ; $53aa: $ce $ca
    call $f423                                    ; $53ac: $cd $23 $f4
    ld b, e                                       ; $53af: $43
    and $f8                                       ; $53b0: $e6 $f8
    sbc d                                         ; $53b2: $9a
    dec b                                         ; $53b3: $05
    xor $6e                                       ; $53b4: $ee $6e
    set 5, b                                      ; $53b6: $cb $e8
    xor [hl]                                      ; $53b8: $ae
    ld a, [hl-]                                   ; $53b9: $3a
    inc a                                         ; $53ba: $3c
    rst $10                                       ; $53bb: $d7
    sub h                                         ; $53bc: $94
    ld a, c                                       ; $53bd: $79
    ret                                           ; $53be: $c9


    ccf                                           ; $53bf: $3f
    rst $00                                       ; $53c0: $c7
    and e                                         ; $53c1: $a3
    ld e, l                                       ; $53c2: $5d
    daa                                           ; $53c3: $27
    ld a, d                                       ; $53c4: $7a
    ld l, c                                       ; $53c5: $69
    add a                                         ; $53c6: $87
    sbc a                                         ; $53c7: $9f
    ld e, b                                       ; $53c8: $58
    ld [$6bb3], sp                                ; $53c9: $08 $b3 $6b
    call nc, $8df8                                ; $53cc: $d4 $f8 $8d
    or b                                          ; $53cf: $b0
    inc e                                         ; $53d0: $1c
    adc l                                         ; $53d1: $8d
    adc h                                         ; $53d2: $8c

jr_056_53d3:
    ld a, a                                       ; $53d3: $7f
    ld e, e                                       ; $53d4: $5b
    ld c, $23                                     ; $53d5: $0e $23
    db $f4                                        ; $53d7: $f4
    ld b, e                                       ; $53d8: $43
    ld h, [hl]                                    ; $53d9: $66
    ld c, e                                       ; $53da: $4b
    jr jr_056_5412                                ; $53db: $18 $35

    cp $4d                                        ; $53dd: $fe $4d
    cp c                                          ; $53df: $b9
    add hl, de                                    ; $53e0: $19
    ld [hl+], a                                   ; $53e1: $22
    or a                                          ; $53e2: $b7
    ld [hl], a                                    ; $53e3: $77
    push de                                       ; $53e4: $d5
    sub d                                         ; $53e5: $92
    cp a                                          ; $53e6: $bf
    or h                                          ; $53e7: $b4
    add e                                         ; $53e8: $83
    ld b, [hl]                                    ; $53e9: $46
    call nz, $f4b5                                ; $53ea: $c4 $b5 $f4
    sub e                                         ; $53ed: $93
    ld l, b                                       ; $53ee: $68
    ld h, [hl]                                    ; $53ef: $66
    adc e                                         ; $53f0: $8b
    halt                                          ; $53f1: $76
    sbc b                                         ; $53f2: $98
    ld e, d                                       ; $53f3: $5a
    ld a, [c]                                     ; $53f4: $f2
    and a                                         ; $53f5: $a7
    or e                                          ; $53f6: $b3
    ld [hl], d                                    ; $53f7: $72
    di                                            ; $53f8: $f3
    ld [$90fd], sp                                ; $53f9: $08 $fd $90
    add hl, sp                                    ; $53fc: $39
    cp [hl]                                       ; $53fd: $be
    ld h, [hl]                                    ; $53fe: $66
    add c                                         ; $53ff: $81
    cp e                                          ; $5400: $bb
    dec a                                         ; $5401: $3d
    rst $10                                       ; $5402: $d7
    cp d                                          ; $5403: $ba
    inc [hl]                                      ; $5404: $34
    ld c, [hl]                                    ; $5405: $4e
    or a                                          ; $5406: $b7
    rra                                           ; $5407: $1f
    and e                                         ; $5408: $a3
    ld a, c                                       ; $5409: $79
    call $b5ca                                    ; $540a: $cd $ca $b5
    inc d                                         ; $540d: $14
    xor h                                         ; $540e: $ac
    add hl, bc                                    ; $540f: $09
    xor a                                         ; $5410: $af
    inc d                                         ; $5411: $14

jr_056_5412:
    call c, $96dd                                 ; $5412: $dc $dd $96
    add hl, hl                                    ; $5415: $29
    di                                            ; $5416: $f3
    ld e, h                                       ; $5417: $5c
    ld c, e                                       ; $5418: $4b
    cp $39                                        ; $5419: $fe $39
    ld e, $ed                                     ; $541b: $1e $ed
    ld a, [hl-]                                   ; $541d: $3a
    pop de                                        ; $541e: $d1
    ld c, e                                       ; $541f: $4b
    dec sp                                        ; $5420: $3b
    db $fc                                        ; $5421: $fc
    call nz, $9842                                ; $5422: $c4 $42 $98
    ld e, l                                       ; $5425: $5d
    and e                                         ; $5426: $a3
    add $6f                                       ; $5427: $c6 $6f
    add h                                         ; $5429: $84
    push hl                                       ; $542a: $e5
    ld l, b                                       ; $542b: $68
    ld h, h                                       ; $542c: $64
    db $fc                                        ; $542d: $fc
    db $db                                        ; $542e: $db
    ld [hl], d                                    ; $542f: $72
    jr jr_056_53d3                                ; $5430: $18 $a1

    rra                                           ; $5432: $1f
    ld [hl-], a                                   ; $5433: $32
    ld e, e                                       ; $5434: $5b
    jp nz, $f1a8                                  ; $5435: $c2 $a8 $f1

    ld l, a                                       ; $5438: $6f
    jp z, Jump_000_10cd                           ; $5439: $ca $cd $10

    ld bc, $77b7                                  ; $543c: $01 $b7 $77
    push de                                       ; $543f: $d5
    sub d                                         ; $5440: $92
    cp a                                          ; $5441: $bf
    or h                                          ; $5442: $b4
    add e                                         ; $5443: $83
    ld b, [hl]                                    ; $5444: $46
    call nz, $f4b5                                ; $5445: $c4 $b5 $f4
    sub e                                         ; $5448: $93
    ld l, b                                       ; $5449: $68
    ld h, [hl]                                    ; $544a: $66
    adc e                                         ; $544b: $8b
    halt                                          ; $544c: $76
    daa                                           ; $544d: $27
    cp [hl]                                       ; $544e: $be
    or [hl]                                       ; $544f: $b6
    adc [hl]                                      ; $5450: $8e
    jp $9b94                                      ; $5451: $c3 $94 $9b


    and a                                         ; $5454: $a7
    di                                            ; $5455: $f3
    ld [$90fd], sp                                ; $5456: $08 $fd $90
    add hl, sp                                    ; $5459: $39
    cp [hl]                                       ; $545a: $be
    ld h, [hl]                                    ; $545b: $66
    add c                                         ; $545c: $81
    cp e                                          ; $545d: $bb
    dec a                                         ; $545e: $3d
    rst $10                                       ; $545f: $d7
    cp d                                          ; $5460: $ba
    inc [hl]                                      ; $5461: $34
    ld c, [hl]                                    ; $5462: $4e
    or a                                          ; $5463: $b7
    rra                                           ; $5464: $1f
    and e                                         ; $5465: $a3
    ld a, c                                       ; $5466: $79
    call $35ca                                    ; $5467: $cd $ca $35
    nop                                           ; $546a: $00
    cpl                                           ; $546b: $2f
    sub c                                         ; $546c: $91
    ret c                                         ; $546d: $d8

    ld [hl-], a                                   ; $546e: $32
    call c, $96dd                                 ; $546f: $dc $dd $96
    dec h                                         ; $5472: $25
    ld a, a                                       ; $5473: $7f
    call nz, Call_000_25ab                        ; $5474: $c4 $ab $25
    rst $38                                       ; $5477: $ff
    inc e                                         ; $5478: $1c
    adc a                                         ; $5479: $8f
    halt                                          ; $547a: $76
    sbc l                                         ; $547b: $9d
    add sp, -$5b                                  ; $547c: $e8 $a5
    dec e                                         ; $547e: $1d
    ld a, [hl]                                    ; $547f: $7e
    ld h, d                                       ; $5480: $62
    ld hl, $aecc                                  ; $5481: $21 $cc $ae
    ld d, c                                       ; $5484: $51
    db $e3                                        ; $5485: $e3
    scf                                           ; $5486: $37
    jp nz, Jump_000_3472                          ; $5487: $c2 $72 $34

    ld [hl-], a                                   ; $548a: $32
    cp $0d                                        ; $548b: $fe $0d
    ld [hl+], a                                   ; $548d: $22
    or a                                          ; $548e: $b7
    ld [hl], a                                    ; $548f: $77
    push de                                       ; $5490: $d5
    sub d                                         ; $5491: $92
    cp a                                          ; $5492: $bf
    or h                                          ; $5493: $b4
    add e                                         ; $5494: $83
    ld b, [hl]                                    ; $5495: $46
    call nz, $f4b5                                ; $5496: $c4 $b5 $f4
    sub e                                         ; $5499: $93
    ld l, b                                       ; $549a: $68
    ld h, [hl]                                    ; $549b: $66
    adc e                                         ; $549c: $8b
    halt                                          ; $549d: $76
    sbc b                                         ; $549e: $98
    ld e, d                                       ; $549f: $5a
    ld a, [c]                                     ; $54a0: $f2
    and a                                         ; $54a1: $a7
    or e                                          ; $54a2: $b3
    ld [hl], d                                    ; $54a3: $72
    di                                            ; $54a4: $f3
    ld [$90fd], sp                                ; $54a5: $08 $fd $90
    add hl, sp                                    ; $54a8: $39
    cp [hl]                                       ; $54a9: $be
    ld h, [hl]                                    ; $54aa: $66
    add c                                         ; $54ab: $81
    cp e                                          ; $54ac: $bb
    dec a                                         ; $54ad: $3d
    rst $10                                       ; $54ae: $d7
    cp d                                          ; $54af: $ba
    inc [hl]                                      ; $54b0: $34
    ld c, [hl]                                    ; $54b1: $4e
    or a                                          ; $54b2: $b7
    rra                                           ; $54b3: $1f
    and e                                         ; $54b4: $a3
    ld a, c                                       ; $54b5: $79

jr_056_54b6:
    call $b5ca                                    ; $54b6: $cd $ca $b5
    ld e, $ea                                     ; $54b9: $1e $ea
    and h                                         ; $54bb: $a4
    dec de                                        ; $54bc: $1b
    ld [hl], l                                    ; $54bd: $75
    ldh [$ee], a                                  ; $54be: $e0 $ee
    or [hl]                                       ; $54c0: $b6
    inc l                                         ; $54c1: $2c
    ld sp, hl                                     ; $54c2: $f9
    inc hl                                        ; $54c3: $23
    ld e, [hl]                                    ; $54c4: $5e
    dec l                                         ; $54c5: $2d
    ld sp, hl                                     ; $54c6: $f9
    rst $20                                       ; $54c7: $e7
    ld a, b                                       ; $54c8: $78
    or h                                          ; $54c9: $b4
    db $eb                                        ; $54ca: $eb
    ld b, h                                       ; $54cb: $44
    cpl                                           ; $54cc: $2f
    db $ed                                        ; $54cd: $ed
    ldh a, [rNR13]                                ; $54ce: $f0 $13
    dec bc                                        ; $54d0: $0b
    ld h, c                                       ; $54d1: $61
    halt                                          ; $54d2: $76
    adc l                                         ; $54d3: $8d
    ld a, [de]                                    ; $54d4: $1a
    cp a                                          ; $54d5: $bf
    ld de, $a396                                  ; $54d6: $11 $96 $a3
    sub c                                         ; $54d9: $91
    pop af                                        ; $54da: $f1
    ld l, a                                       ; $54db: $6f
    db $10                                        ; $54dc: $10
    ld bc, $51f7                                  ; $54dd: $01 $f7 $51
    dec bc                                        ; $54e0: $0b
    and l                                         ; $54e1: $a5
    adc e                                         ; $54e2: $8b
    db $ec                                        ; $54e3: $ec
    dec h                                         ; $54e4: $25
    inc bc                                        ; $54e5: $03
    sub b                                         ; $54e6: $90
    ld b, l                                       ; $54e7: $45
    inc [hl]                                      ; $54e8: $34
    inc bc                                        ; $54e9: $03
    ld a, [c]                                     ; $54ea: $f2
    dec de                                        ; $54eb: $1b
    cp e                                          ; $54ec: $bb
    adc [hl]                                      ; $54ed: $8e
    ld h, l                                       ; $54ee: $65
    add hl, sp                                    ; $54ef: $39
    adc h                                         ; $54f0: $8c
    ld a, b                                       ; $54f1: $78
    ld [hl], d                                    ; $54f2: $72
    ld b, [hl]                                    ; $54f3: $46
    sub a                                         ; $54f4: $97
    ld [hl], c                                    ; $54f5: $71
    cp l                                          ; $54f6: $bd
    ld h, b                                       ; $54f7: $60
    ld d, c                                       ; $54f8: $51
    sbc $e9                                       ; $54f9: $de $e9
    cp h                                          ; $54fb: $bc
    jr jr_056_550d                                ; $54fc: $18 $0f

    rst $10                                       ; $54fe: $d7
    ld h, e                                       ; $54ff: $63
    add a                                         ; $5500: $87
    xor a                                         ; $5501: $af

Call_056_5502:
    dec e                                         ; $5502: $1d
    rst $38                                       ; $5503: $ff
    and [hl]                                      ; $5504: $a6
    call c, $eb5c                                 ; $5505: $dc $5c $eb
    jr c, jr_056_54b6                             ; $5508: $38 $ac

    ld [hl], a                                    ; $550a: $77
    ld a, l                                       ; $550b: $7d
    sbc d                                         ; $550c: $9a

jr_056_550d:
    cp $12                                        ; $550d: $fe $12
    halt                                          ; $550f: $76
    push af                                       ; $5510: $f5
    ld h, l                                       ; $5511: $65
    inc hl                                        ; $5512: $23
    or e                                          ; $5513: $b3
    dec h                                         ; $5514: $25
    ld b, b                                       ; $5515: $40
    inc b                                         ; $5516: $04
    rst $30                                       ; $5517: $f7
    ld d, c                                       ; $5518: $51
    dec bc                                        ; $5519: $0b
    and l                                         ; $551a: $a5
    adc e                                         ; $551b: $8b
    db $ec                                        ; $551c: $ec
    dec h                                         ; $551d: $25

Jump_056_551e:
    db $eb                                        ; $551e: $eb
    ld [hl], c                                    ; $551f: $71
    pop hl                                        ; $5520: $e1
    cpl                                           ; $5521: $2f
    ld e, [hl]                                    ; $5522: $5e
    rst $28                                       ; $5523: $ef
    ld a, d                                       ; $5524: $7a
    ld [de], a                                    ; $5525: $12
    sub [hl]                                      ; $5526: $96
    jp $8b08                                      ; $5527: $c3 $08 $8b


    ld hl, sp+$2c                                 ; $552a: $f8 $2c
    halt                                          ; $552c: $76
    cp d                                          ; $552d: $ba
    jp c, Jump_056_5e0f                           ; $552e: $da $0f $5e

    set 4, c                                      ; $5531: $cb $e1
    rst $00                                       ; $5533: $c7
    jr c, jr_056_5593                             ; $5534: $38 $5d

    sub h                                         ; $5536: $94
    ld l, e                                       ; $5537: $6b
    add h                                         ; $5538: $84
    sbc c                                         ; $5539: $99
    ld b, a                                       ; $553a: $47
    sub [hl]                                      ; $553b: $96
    rst $08                                       ; $553c: $cf
    pop de                                        ; $553d: $d1
    adc [hl]                                      ; $553e: $8e
    ld a, a                                       ; $553f: $7f
    ld d, e                                       ; $5540: $53
    ld l, [hl]                                    ; $5541: $6e
    xor [hl]                                      ; $5542: $ae
    ld [hl], l                                    ; $5543: $75
    inc e                                         ; $5544: $1c
    sub $bb                                       ; $5545: $d6 $bb
    ld a, $4d                                     ; $5547: $3e $4d
    ld a, a                                       ; $5549: $7f
    add hl, bc                                    ; $554a: $09
    cp e                                          ; $554b: $bb
    ld a, [$91b2]                                 ; $554c: $fa $b2 $91
    reti                                          ; $554f: $d9


    ld [de], a                                    ; $5550: $12
    jr nz, jr_056_5555                            ; $5551: $20 $02

    rst $30                                       ; $5553: $f7
    ld d, c                                       ; $5554: $51

jr_056_5555:
    dec bc                                        ; $5555: $0b
    and l                                         ; $5556: $a5
    adc e                                         ; $5557: $8b
    db $ec                                        ; $5558: $ec
    dec h                                         ; $5559: $25
    db $eb                                        ; $555a: $eb
    ld a, c                                       ; $555b: $79
    ld d, l                                       ; $555c: $55
    sbc d                                         ; $555d: $9a
    db $dd                                        ; $555e: $dd
    sub a                                         ; $555f: $97
    sbc c                                         ; $5560: $99
    ld e, l                                       ; $5561: $5d
    bit 4, c                                      ; $5562: $cb $61
    call nz, Call_000_3393                        ; $5564: $c4 $93 $33
    adc e                                         ; $5567: $8b
    rrca                                          ; $5568: $0f
    ld d, e                                       ; $5569: $53
    ld d, $e5                                     ; $556a: $16 $e5
    pop hl                                        ; $556c: $e1
    call z, $f1da                                 ; $556d: $cc $da $f1
    ld l, a                                       ; $5570: $6f
    jp z, $b5cd                                   ; $5571: $ca $cd $b5

    adc [hl]                                      ; $5574: $8e
    jp $d77a                                      ; $5575: $c3 $7a $d7


    and a                                         ; $5578: $a7
    jp hl                                         ; $5579: $e9


    cpl                                           ; $557a: $2f
    ld h, c                                       ; $557b: $61
    rst $10                                       ; $557c: $d7
    ld e, h                                       ; $557d: $5c
    ld [hl], $32                                  ; $557e: $36 $32
    ld e, e                                       ; $5580: $5b
    ld [bc], a                                    ; $5581: $02
    ld b, h                                       ; $5582: $44
    rst $30                                       ; $5583: $f7
    add [hl]                                      ; $5584: $86
    sbc l                                         ; $5585: $9d
    xor a                                         ; $5586: $af
    inc l                                         ; $5587: $2c
    ld d, e                                       ; $5588: $53
    and $c5                                       ; $5589: $e6 $c5
    ld [hl], d                                    ; $558b: $72

jr_056_558c:
    ld [c], a                                     ; $558c: $e2
    jp c, Jump_056_5ce1                           ; $558d: $da $e1 $5c

    inc a                                         ; $5590: $3c
    sbc h                                         ; $5591: $9c
    ld a, c                                       ; $5592: $79

jr_056_5593:
    call nc, Call_056_530e                        ; $5593: $d4 $0e $53
    ei                                            ; $5596: $fb
    jr c, jr_056_558c                             ; $5597: $38 $f3

    adc $97                                       ; $5599: $ce $97
    pop de                                        ; $559b: $d1
    rst $18                                       ; $559c: $df
    and d                                         ; $559d: $a2
    xor h                                         ; $559e: $ac
    dec e                                         ; $559f: $1d
    or [hl]                                       ; $55a0: $b6
    inc l                                         ; $55a1: $2c
    ld [hl], c                                    ; $55a2: $71
    db $db                                        ; $55a3: $db
    and c                                         ; $55a4: $a1
    add [hl]                                      ; $55a5: $86
    dec [hl]                                      ; $55a6: $35
    ld e, $b5                                     ; $55a7: $1e $b5
    jp Jump_000_3ed4                              ; $55a9: $c3 $d4 $3e


    adc $bc                                       ; $55ac: $ce $bc
    di                                            ; $55ae: $f3
    push bc                                       ; $55af: $c5
    ld c, e                                       ; $55b0: $4b
    inc l                                         ; $55b1: $2c
    ld [c], a                                     ; $55b2: $e2
    jp nc, $7f8e                                  ; $55b3: $d2 $8e $7f

    ld d, e                                       ; $55b6: $53
    ld l, [hl]                                    ; $55b7: $6e
    xor [hl]                                      ; $55b8: $ae
    ld [hl], l                                    ; $55b9: $75
    inc e                                         ; $55ba: $1c
    halt                                          ; $55bb: $76
    ld sp, hl                                     ; $55bc: $f9
    ld h, l                                       ; $55bd: $65
    inc hl                                        ; $55be: $23
    or e                                          ; $55bf: $b3
    dec h                                         ; $55c0: $25
    adc h                                         ; $55c1: $8c
    ld a, a                                       ; $55c2: $7f
    db $db                                        ; $55c3: $db
    dec a                                         ; $55c4: $3d
    cp a                                          ; $55c5: $bf
    jp hl                                         ; $55c6: $e9


    ld h, a                                       ; $55c7: $67
    ld [hl], a                                    ; $55c8: $77
    dec a                                         ; $55c9: $3d
    add hl, bc                                    ; $55ca: $09
    jp hl                                         ; $55cb: $e9


    rst $10                                       ; $55cc: $d7
    sbc d                                         ; $55cd: $9a
    ld hl, $bd02                                  ; $55ce: $21 $02 $bd
    db $eb                                        ; $55d1: $eb
    db $d3                                        ; $55d2: $d3
    db $f4                                        ; $55d3: $f4
    sub a                                         ; $55d4: $97
    or b                                          ; $55d5: $b0
    db $e4                                        ; $55d6: $e4
    adc e                                         ; $55d7: $8b
    cp b                                          ; $55d8: $b8
    ld d, d                                       ; $55d9: $52
    inc hl                                        ; $55da: $23
    dec a                                         ; $55db: $3d
    ret                                           ; $55dc: $c9


    db $eb                                        ; $55dd: $eb
    sub l                                         ; $55de: $95
    ld a, [de]                                    ; $55df: $1a
    ld bc, $aedd                                  ; $55e0: $01 $dd $ae
    pop de                                        ; $55e3: $d1
    ccf                                           ; $55e4: $3f
    add $29                                       ; $55e5: $c6 $29
    ld a, l                                       ; $55e7: $7d
    jp z, $dda2                                   ; $55e8: $ca $a2 $dd

    db $dd                                        ; $55eb: $dd
    xor a                                         ; $55ec: $af
    pop de                                        ; $55ed: $d1
    ld c, a                                       ; $55ee: $4f
    ld b, d                                       ; $55ef: $42
    ld l, d                                       ; $55f0: $6a
    inc b                                         ; $55f1: $04
    or a                                          ; $55f2: $b7
    ld e, b                                       ; $55f3: $58
    sub l                                         ; $55f4: $95
    rst $10                                       ; $55f5: $d7
    inc [hl]                                      ; $55f6: $34
    ld sp, $967a                                  ; $55f7: $31 $7a $96
    add l                                         ; $55fa: $85
    daa                                           ; $55fb: $27
    ld h, c                                       ; $55fc: $61
    ld c, d                                       ; $55fd: $4a
    rra                                           ; $55fe: $1f
    sbc l                                         ; $55ff: $9d
    adc e                                         ; $5600: $8b
    dec sp                                        ; $5601: $3b
    ld d, $d7                                     ; $5602: $16 $d7
    sub h                                         ; $5604: $94
    ld e, c                                       ; $5605: $59
    cp e                                          ; $5606: $bb
    cp e                                          ; $5607: $bb
    ld e, a                                       ; $5608: $5f
    and e                                         ; $5609: $a3
    sbc a                                         ; $560a: $9f
    add h                                         ; $560b: $84
    call nc, $bd08                                ; $560c: $d4 $08 $bd
    db $eb                                        ; $560f: $eb
    or c                                          ; $5610: $b1
    sbc $5c                                       ; $5611: $de $5c
    ld l, $ed                                     ; $5613: $2e $ed
    ld a, d                                       ; $5615: $7a
    rst $10                                       ; $5616: $d7
    and a                                         ; $5617: $a7
    jp hl                                         ; $5618: $e9


    cpl                                           ; $5619: $2f
    ld hl, $0235                                  ; $561a: $21 $35 $02
    db $dd                                        ; $561d: $dd
    and $a5                                       ; $561e: $e6 $a5
    sbc e                                         ; $5620: $9b
    rst $30                                       ; $5621: $f7
    ld e, a                                       ; $5622: $5f
    ld l, e                                       ; $5623: $6b
    db $f4                                        ; $5624: $f4
    ld l, e                                       ; $5625: $6b
    ld l, l                                       ; $5626: $6d
    ccf                                           ; $5627: $3f
    ld b, [hl]                                    ; $5628: $46
    cpl                                           ; $5629: $2f
    dec b                                         ; $562a: $05
    ld l, e                                       ; $562b: $6b
    jp nz, $052b                                  ; $562c: $c2 $2b $05

    ld de, $af3d                                  ; $562f: $11 $3d $af
    ld c, d                                       ; $5632: $4a
    and e                                         ; $5633: $a3
    sbc l                                         ; $5634: $9d
    jp nc, $ca17                                  ; $5635: $d2 $17 $ca

    ld e, a                                       ; $5638: $5f
    ld a, c                                       ; $5639: $79
    jp z, Jump_000_1a9c                           ; $563a: $ca $9c $1a

    ld bc, $e6dd                                  ; $563d: $01 $dd $e6
    ld de, $294f                                  ; $5640: $11 $4f $29
    rst $28                                       ; $5643: $ef
    rst $00                                       ; $5644: $c7
    add sp, $25                                   ; $5645: $e8 $25
    ld a, l                                       ; $5647: $7d
    dec d                                         ; $5648: $15
    rrca                                          ; $5649: $0f
    db $eb                                        ; $564a: $eb
    db $ed                                        ; $564b: $ed
    add a                                         ; $564c: $87
    jp hl                                         ; $564d: $e9


    ld l, h                                       ; $564e: $6c
    sbc c                                         ; $564f: $99
    ld [hl], d                                    ; $5650: $72
    ret nc                                        ; $5651: $d0

    xor $9e                                       ; $5652: $ee $9e
    rst $18                                       ; $5654: $df
    db $f4                                        ; $5655: $f4
    inc bc                                        ; $5656: $03
    ld de, $86f7                                  ; $5657: $11 $f7 $86
    add hl, bc                                    ; $565a: $09
    or l                                          ; $565b: $b5
    or $96                                        ; $565c: $f6 $96
    ld a, [hl]                                    ; $565e: $7e
    ld [de], a                                    ; $565f: $12
    call $596c                                    ; $5660: $cd $6c $59
    jp c, Jump_000_2341                           ; $5663: $da $41 $23

    ld [c], a                                     ; $5666: $e2
    call nc, Call_056_7708                        ; $5667: $d4 $08 $77
    call nz, $d1e8                                ; $566a: $c4 $e8 $d1
    cp c                                          ; $566d: $b9
    ld c, $6b                                     ; $566e: $0e $6b
    xor d                                         ; $5670: $aa
    ldh [$ee], a                                  ; $5671: $e0 $ee
    inc l                                         ; $5673: $2c
    call $d7e1                                    ; $5674: $cd $e1 $d7
    ld e, d                                       ; $5677: $5a
    call nc, $e39b                                ; $5678: $d4 $9b $e3
    adc a                                         ; $567b: $8f
    pop af                                        ; $567c: $f1
    ld c, e                                       ; $567d: $4b
    add b                                         ; $567e: $80
    ld [$5b77], sp                                ; $567f: $08 $77 $5b
    and [hl]                                      ; $5682: $a6
    call z, $c5ec                                 ; $5683: $cc $ec $c5
    daa                                           ; $5686: $27
    ei                                            ; $5687: $fb
    ld sp, $957a                                  ; $5688: $31 $7a $95
    ld h, e                                       ; $568b: $63
    db $f4                                        ; $568c: $f4
    ld [de], a                                    ; $568d: $12
    xor e                                         ; $568e: $ab
    add hl, hl                                    ; $568f: $29
    set 2, d                                      ; $5690: $cb $d2
    ld h, [hl]                                    ; $5692: $66
    adc l                                         ; $5693: $8d
    ld [hl], d                                    ; $5694: $72
    ei                                            ; $5695: $fb
    pop bc                                        ; $5696: $c1
    ld l, e                                       ; $5697: $6b
    ld d, [hl]                                    ; $5698: $56
    ld l, [hl]                                    ; $5699: $6e
    rst $00                                       ; $569a: $c7
    ei                                            ; $569b: $fb
    inc hl                                        ; $569c: $23
    or e                                          ; $569d: $b3
    dec h                                         ; $569e: $25
    db $ec                                        ; $569f: $ec
    ld h, h                                       ; $56a0: $64
    cp h                                          ; $56a1: $bc
    ld e, $ea                                     ; $56a2: $1e $ea
    and h                                         ; $56a4: $a4
    dec de                                        ; $56a5: $1b
    ld [hl], l                                    ; $56a6: $75
    ld b, [hl]                                    ; $56a7: $46
    inc a                                         ; $56a8: $3c
    and l                                         ; $56a9: $a5
    cp h                                          ; $56aa: $bc
    di                                            ; $56ab: $f3
    ld h, e                                       ; $56ac: $63
    sbc c                                         ; $56ad: $99
    ld [hl], a                                    ; $56ae: $77
    inc e                                         ; $56af: $1c
    ld d, d                                       ; $56b0: $52
    inc hl                                        ; $56b1: $23
    dec a                                         ; $56b2: $3d
    ret                                           ; $56b3: $c9


    db $eb                                        ; $56b4: $eb
    or l                                          ; $56b5: $b5
    sbc [hl]                                      ; $56b6: $9e
    inc h                                         ; $56b7: $24
    sub a                                         ; $56b8: $97
    ld a, d                                       ; $56b9: $7a
    or d                                          ; $56ba: $b2
    xor b                                         ; $56bb: $a8
    adc e                                         ; $56bc: $8b
    ld a, b                                       ; $56bd: $78
    sub d                                         ; $56be: $92
    cp l                                          ; $56bf: $bd
    ld b, e                                       ; $56c0: $43
    add hl, bc                                    ; $56c1: $09
    rst $28                                       ; $56c2: $ef

Call_056_56c3:
    call nz, Call_056_538e                        ; $56c3: $c4 $8e $53
    inc hl                                        ; $56c6: $23
    add b                                         ; $56c7: $80
    db $dd                                        ; $56c8: $dd
    or h                                          ; $56c9: $b4
    ld d, e                                       ; $56ca: $53
    and $a5                                       ; $56cb: $e6 $a5
    sbc e                                         ; $56cd: $9b
    rst $30                                       ; $56ce: $f7
    ld e, a                                       ; $56cf: $5f
    ld l, e                                       ; $56d0: $6b
    db $f4                                        ; $56d1: $f4
    ld l, e                                       ; $56d2: $6b
    ld l, l                                       ; $56d3: $6d
    ccf                                           ; $56d4: $3f
    ld b, [hl]                                    ; $56d5: $46
    cpl                                           ; $56d6: $2f
    dec b                                         ; $56d7: $05
    ld l, e                                       ; $56d8: $6b
    jp nz, $052b                                  ; $56d9: $c2 $2b $05

    ld de, $ebbd                                  ; $56dc: $11 $bd $eb
    or c                                          ; $56df: $b1
    sbc $5c                                       ; $56e0: $de $5c
    ld l, $88                                     ; $56e2: $2e $88
    nop                                           ; $56e4: $00
    nop                                           ; $56e5: $00
    ld e, a                                       ; $56e6: $5f
    adc h                                         ; $56e7: $8c
    jp c, $bcf5                                   ; $56e8: $da $f5 $bc

    ld a, [hl+]                                   ; $56eb: $2a
    dec c                                         ; $56ec: $0d
    call c, $562d                                 ; $56ed: $dc $2d $56
    push hl                                       ; $56f0: $e5
    dec [hl]                                      ; $56f1: $35
    ld c, l                                       ; $56f2: $4d
    adc h                                         ; $56f3: $8c
    sbc [hl]                                      ; $56f4: $9e
    ld hl, sp-$50                                 ; $56f5: $f8 $b0
    ld b, a                                       ; $56f7: $47
    dec d                                         ; $56f8: $15
    ld b, h                                       ; $56f9: $44
    ld [hl], a                                    ; $56fa: $77
    ld e, e                                       ; $56fb: $5b
    and [hl]                                      ; $56fc: $a6
    call z, $c5ec                                 ; $56fd: $cc $ec $c5
    daa                                           ; $5700: $27
    ei                                            ; $5701: $fb
    ld sp, $957a                                  ; $5702: $31 $7a $95
    ld h, e                                       ; $5705: $63
    db $f4                                        ; $5706: $f4
    ld [de], a                                    ; $5707: $12
    xor e                                         ; $5708: $ab
    add hl, hl                                    ; $5709: $29
    set 2, d                                      ; $570a: $cb $d2
    ld h, [hl]                                    ; $570c: $66
    adc l                                         ; $570d: $8d
    ld [hl], d                                    ; $570e: $72
    ei                                            ; $570f: $fb
    pop bc                                        ; $5710: $c1
    ld l, e                                       ; $5711: $6b
    ld d, [hl]                                    ; $5712: $56
    ld l, [hl]                                    ; $5713: $6e
    rst $00                                       ; $5714: $c7
    ei                                            ; $5715: $fb
    inc hl                                        ; $5716: $23
    or e                                          ; $5717: $b3
    dec h                                         ; $5718: $25
    db $ec                                        ; $5719: $ec
    ld h, h                                       ; $571a: $64
    inc a                                         ; $571b: $3c
    nop                                           ; $571c: $00
    cpl                                           ; $571d: $2f
    sub c                                         ; $571e: $91
    ret c                                         ; $571f: $d8

    ld a, [c]                                     ; $5720: $f2
    adc b                                         ; $5721: $88
    and a                                         ; $5722: $a7
    sub h                                         ; $5723: $94
    ld [hl], a                                    ; $5724: $77
    ld a, [hl]                                    ; $5725: $7e
    inc l                                         ; $5726: $2c
    di                                            ; $5727: $f3
    adc [hl]                                      ; $5728: $8e
    ld b, e                                       ; $5729: $43
    ld l, d                                       ; $572a: $6a
    inc b                                         ; $572b: $04
    nop                                           ; $572c: $00
    ld e, [hl]                                    ; $572d: $5e
    ld [hl+], a                                   ; $572e: $22
    or c                                          ; $572f: $b1
    push hl                                       ; $5730: $e5
    ld e, [hl]                                    ; $5731: $5e
    db $eb                                        ; $5732: $eb
    ld [hl], $cf                                  ; $5733: $36 $cf
    or l                                          ; $5735: $b5
    ld c, [hl]                                    ; $5736: $4e
    ld e, [hl]                                    ; $5737: $5e
    ld [c], a                                     ; $5738: $e2
    ld a, [hl+]                                   ; $5739: $2a
    rst $08                                       ; $573a: $cf
    ld [hl+], a                                   ; $573b: $22
    db $eb                                        ; $573c: $eb
    ld e, l                                       ; $573d: $5d
    sbc a                                         ; $573e: $9f
    and [hl]                                      ; $573f: $a6
    cp a                                          ; $5740: $bf
    inc b                                         ; $5741: $04
    adc b                                         ; $5742: $88
    nop                                           ; $5743: $00
    scf                                           ; $5744: $37
    scf                                           ; $5745: $37
    sbc $79                                       ; $5746: $de $79
    jr jr_056_57a5                                ; $5748: $18 $5b

    and $1a                                       ; $574a: $e6 $1a
    cp $32                                        ; $574c: $fe $32
    jp c, $c1bf                                   ; $574e: $da $bf $c1

    push af                                       ; $5751: $f5
    ld [hl], c                                    ; $5752: $71
    ret c                                         ; $5753: $d8

    adc c                                         ; $5754: $89
    ld a, d                                       ; $5755: $7a
    ld l, e                                       ; $5756: $6b
    ld e, $59                                     ; $5757: $1e $59
    ld e, l                                       ; $5759: $5d
    adc c                                         ; $575a: $89
    ld a, [de]                                    ; $575b: $1a
    pop af                                        ; $575c: $f1
    ld c, d                                       ; $575d: $4a
    cp c                                          ; $575e: $b9
    inc a                                         ; $575f: $3c
    ld l, d                                       ; $5760: $6a
    add a                                         ; $5761: $87
    inc sp                                        ; $5762: $33
    ld c, c                                       ; $5763: $49
    ld a, d                                       ; $5764: $7a
    jp z, Jump_000_29e5                           ; $5765: $ca $e5 $29

    set 4, h                                      ; $5768: $cb $e4
    ld sp, $883f                                  ; $576a: $31 $3f $88
    nop                                           ; $576d: $00
    dec a                                         ; $576e: $3d
    ld c, a                                       ; $576f: $4f
    add hl, hl                                    ; $5770: $29
    ld c, a                                       ; $5771: $4f
    jp hl                                         ; $5772: $e9


    dec bc                                        ; $5773: $0b
    sbc l                                         ; $5774: $9d
    ld e, h                                       ; $5775: $5c
    inc a                                         ; $5776: $3c
    ld h, l                                       ; $5777: $65
    sub $8e                                       ; $5778: $d6 $8e
    ld a, b                                       ; $577a: $78
    ld c, d                                       ; $577b: $4a
    ld a, c                                       ; $577c: $79
    ret                                           ; $577d: $c9


    ld e, a                                       ; $577e: $5f
    ld a, h                                       ; $577f: $7c
    ld [hl], d                                    ; $5780: $72
    ld h, d                                       ; $5781: $62
    rst $00                                       ; $5782: $c7
    db $e3                                        ; $5783: $e3
    ld b, a                                       ; $5784: $47
    ld a, [c]                                     ; $5785: $f2
    inc l                                         ; $5786: $2c
    ld [$712d], a                                 ; $5787: $ea $2d $71
    sub l                                         ; $578a: $95
    ld hl, $7702                                  ; $578b: $21 $02 $77
    ld e, e                                       ; $578e: $5b
    and [hl]                                      ; $578f: $a6
    call z, $c5ec                                 ; $5790: $cc $ec $c5
    daa                                           ; $5793: $27
    ei                                            ; $5794: $fb
    ld sp, $957a                                  ; $5795: $31 $7a $95
    ld h, e                                       ; $5798: $63
    db $f4                                        ; $5799: $f4
    ld [de], a                                    ; $579a: $12
    xor e                                         ; $579b: $ab
    and l                                         ; $579c: $a5
    ld h, b                                       ; $579d: $60
    ld c, l                                       ; $579e: $4d
    ld a, b                                       ; $579f: $78
    and l                                         ; $57a0: $a5
    adc $b0                                       ; $57a1: $ce $b0
    add e                                         ; $57a3: $83
    ld a, c                                       ; $57a4: $79

jr_056_57a5:
    ld l, c                                       ; $57a5: $69
    or e                                          ; $57a6: $b3
    ld b, [hl]                                    ; $57a7: $46
    cp c                                          ; $57a8: $b9
    db $fd                                        ; $57a9: $fd
    ldh [$35], a                                  ; $57aa: $e0 $35
    dec hl                                        ; $57ac: $2b
    or a                                          ; $57ad: $b7
    db $e3                                        ; $57ae: $e3
    db $fd                                        ; $57af: $fd
    sub c                                         ; $57b0: $91
    reti                                          ; $57b1: $d9


    ld [de], a                                    ; $57b2: $12
    ldh [rHDMA2], a                               ; $57b3: $e0 $52
    xor b                                         ; $57b5: $a8
    pop de                                        ; $57b6: $d1
    cp c                                          ; $57b7: $b9
    halt                                          ; $57b8: $76
    ld a, [hl-]                                   ; $57b9: $3a
    cp d                                          ; $57ba: $ba
    ld b, l                                       ; $57bb: $45
    ld a, c                                       ; $57bc: $79
    ld d, h                                       ; $57bd: $54
    adc l                                         ; $57be: $8d
    and h                                         ; $57bf: $a4
    ld d, [hl]                                    ; $57c0: $56
    ld c, a                                       ; $57c1: $4f
    call Call_056_6535                            ; $57c2: $cd $35 $65
    ld e, [hl]                                    ; $57c5: $5e
    ld a, [bc]                                    ; $57c6: $0a
    sub $84                                       ; $57c7: $d6 $84
    ld d, a                                       ; $57c9: $57
    ld l, d                                       ; $57ca: $6a
    daa                                           ; $57cb: $27
    db $e3                                        ; $57cc: $e3
    dec h                                         ; $57cd: $25
    ld e, a                                       ; $57ce: $5f
    call nz, Call_056_4235                        ; $57cf: $c4 $35 $42
    ccf                                           ; $57d2: $3f
    ld h, h                                       ; $57d3: $64
    adc [hl]                                      ; $57d4: $8e
    xor a                                         ; $57d5: $af
    ld e, c                                       ; $57d6: $59
    jr nz, jr_056_57db                            ; $57d7: $20 $02

    add b                                         ; $57d9: $80
    rst $38                                       ; $57da: $ff

jr_056_57db:
    ld c, $e7                                     ; $57db: $0e $e7
    add $1e                                       ; $57dd: $c6 $1e
    ld c, c                                       ; $57df: $49
    ld c, l                                       ; $57e0: $4d
    add hl, sp                                    ; $57e1: $39
    ld l, b                                       ; $57e2: $68
    rst $10                                       ; $57e3: $d7
    di                                            ; $57e4: $f3
    xor d                                         ; $57e5: $aa
    inc [hl]                                      ; $57e6: $34
    jp c, Jump_000_30e5                           ; $57e7: $da $e5 $30

    and l                                         ; $57ea: $a5
    rst $28                                       ; $57eb: $ef
    inc h                                         ; $57ec: $24
    ccf                                           ; $57ed: $3f
    or d                                          ; $57ee: $b2
    ld a, c                                       ; $57ef: $79
    ld sp, hl                                     ; $57f0: $f9
    sbc h                                         ; $57f1: $9c
    call nc, RST_08                               ; $57f2: $d4 $08 $00
    ld e, a                                       ; $57f5: $5f
    adc h                                         ; $57f6: $8c
    dec sp                                        ; $57f7: $3b
    pop af                                        ; $57f8: $f1
    or l                                          ; $57f9: $b5
    add hl, hl                                    ; $57fa: $29
    ld a, l                                       ; $57fb: $7d
    call nz, $aed3                                ; $57fc: $c4 $d3 $ae
    rst $20                                       ; $57ff: $e7
    ld d, l                                       ; $5800: $55
    ld l, c                                       ; $5801: $69
    ldh [$ee], a                                  ; $5802: $e0 $ee
    and c                                         ; $5804: $a1
    sub [hl]                                      ; $5805: $96
    ld l, [hl]                                    ; $5806: $6e
    cp a                                          ; $5807: $bf
    and [hl]                                      ; $5808: $a6
    inc a                                         ; $5809: $3c
    adc e                                         ; $580a: $8b
    ld a, d                                       ; $580b: $7a
    jp $d399                                      ; $580c: $c3 $99 $d3


    ld a, [de]                                    ; $580f: $1a
    push hl                                       ; $5810: $e5
    or $83                                        ; $5811: $f6 $83
    rl e                                          ; $5813: $cb $13
    rra                                           ; $5815: $1f
    or $a8                                        ; $5816: $f6 $a8
    add d                                         ; $5818: $82
    ld [$59f7], sp                                ; $5819: $08 $f7 $59
    ld a, b                                       ; $581c: $78
    ld [hl], h                                    ; $581d: $74
    xor [hl]                                      ; $581e: $ae
    db $d3                                        ; $581f: $d3
    dec d                                         ; $5820: $15
    ld b, a                                       ; $5821: $47
    ld d, d                                       ; $5822: $52
    dec sp                                        ; $5823: $3b
    ld c, l                                       ; $5824: $4d
    ld h, a                                       ; $5825: $67
    or [hl]                                       ; $5826: $b6
    ld c, h                                       ; $5827: $4c
    cp c                                          ; $5828: $b9
    or h                                          ; $5829: $b4
    cp e                                          ; $582a: $bb
    cpl                                           ; $582b: $2f
    inc sp                                        ; $582c: $33
    cp e                                          ; $582d: $bb
    ldh [$ee], a                                  ; $582e: $e0 $ee
    or [hl]                                       ; $5830: $b6
    ld c, h                                       ; $5831: $4c
    sbc c                                         ; $5832: $99
    add a                                         ; $5833: $87
    add hl, hl                                    ; $5834: $29
    ld h, [hl]                                    ; $5835: $66
    cpl                                           ; $5836: $2f
    db $fd                                        ; $5837: $fd
    jp z, $28b3                                   ; $5838: $ca $b3 $28

    rst $28                                       ; $583b: $ef
    ld d, b                                       ; $583c: $50
    ld [hl+], a                                   ; $583d: $22
    db $10                                        ; $583e: $10
    ld bc, $58b7                                  ; $583f: $01 $b7 $58
    sub l                                         ; $5842: $95
    rst $10                                       ; $5843: $d7
    inc [hl]                                      ; $5844: $34
    ld sp, $e27a                                  ; $5845: $31 $7a $e2
    jp Jump_056_551e                              ; $5848: $c3 $1e $55


    jp c, $bcf5                                   ; $584b: $da $f5 $bc

    ld a, [hl+]                                   ; $584e: $2a
    call $cbee                                    ; $584f: $cd $ee $cb
    call z, $b82e                                 ; $5852: $cc $2e $b8
    sbc [hl]                                      ; $5855: $9e
    db $e4                                        ; $5856: $e4
    sbc a                                         ; $5857: $9f
    add hl, hl                                    ; $5858: $29
    ld a, l                                       ; $5859: $7d
    ld sp, $ec63                                  ; $585a: $31 $63 $ec
    ld a, [de]                                    ; $585d: $1a
    rst $38                                       ; $585e: $ff
    sub [hl]                                      ; $585f: $96
    ld a, [hl]                                    ; $5860: $7e
    pop de                                        ; $5861: $d1
    inc hl                                        ; $5862: $23
    ld a, $6b                                     ; $5863: $3e $6b
    and a                                         ; $5865: $a7
    ld e, $44                                     ; $5866: $1e $44
    add b                                         ; $5868: $80
    db $dd                                        ; $5869: $dd
    sub [hl]                                      ; $586a: $96
    cp b                                          ; $586b: $b8
    ld b, c                                       ; $586c: $41
    ld [$0e3b], sp                                ; $586d: $08 $3b $0e
    inc hl                                        ; $5870: $23
    xor e                                         ; $5871: $ab
    dec hl                                        ; $5872: $2b
    ld d, c                                       ; $5873: $51
    sbc [hl]                                      ; $5874: $9e
    ld a, d                                       ; $5875: $7a
    ei                                            ; $5876: $fb
    xor a                                         ; $5877: $af
    dec [hl]                                      ; $5878: $35
    ld a, [$06b5]                                 ; $5879: $fa $b5 $06
    ld de, $af3d                                  ; $587c: $11 $3d $af
    or l                                          ; $587f: $b5
    xor h                                         ; $5880: $ac
    ld e, l                                       ; $5881: $5d
    rst $08                                       ; $5882: $cf
    xor e                                         ; $5883: $ab
    jp nc, Jump_000_0440                          ; $5884: $d2 $40 $04

    ld a, l                                       ; $5887: $7d
    inc e                                         ; $5888: $1c
    halt                                          ; $5889: $76
    ld e, h                                       ; $588a: $5c
    ld a, e                                       ; $588b: $7b
    inc a                                         ; $588c: $3c
    and l                                         ; $588d: $a5
    rst $08                                       ; $588e: $cf
    or l                                          ; $588f: $b5
    inc de                                        ; $5890: $13
    sbc a                                         ; $5891: $9f
    ld d, d                                       ; $5892: $52
    ld [hl], b                                    ; $5893: $70
    add hl, hl                                    ; $5894: $29
    pop af                                        ; $5895: $f1
    or l                                          ; $5896: $b5
    ld [hl], l                                    ; $5897: $75
    inc e                                         ; $5898: $1c
    ld d, $f5                                     ; $5899: $16 $f5
    ld [hl], d                                    ; $589b: $72
    ld a, c                                       ; $589c: $79
    jp z, Jump_000_17a1                           ; $589d: $ca $a1 $17

    ld [bc], a                                    ; $58a0: $02
    ld a, l                                       ; $58a1: $7d
    sbc $f8                                       ; $58a2: $de $f8
    push bc                                       ; $58a4: $c5
    sbc b                                         ; $58a5: $98
    ld a, [de]                                    ; $58a6: $1a
    ld bc, $de29                                  ; $58a7: $01 $29 $de
    and c                                         ; $58aa: $a1
    or h                                          ; $58ab: $b4
    inc de                                        ; $58ac: $13
    ld l, d                                       ; $58ad: $6a
    daa                                           ; $58ae: $27
    ld [$79ad], a                                 ; $58af: $ea $ad $79
    jp z, $ba3c                                   ; $58b2: $ca $3c $ba

    xor e                                         ; $58b5: $ab
    ld sp, hl                                     ; $58b6: $f9
    inc l                                         ; $58b7: $2c
    ld l, l                                       ; $58b8: $6d
    ld d, l                                       ; $58b9: $55
    add [hl]                                      ; $58ba: $86
    ld [$5f00], sp                                ; $58bb: $08 $00 $5f
    adc h                                         ; $58be: $8c
    jp c, $a7e1                                   ; $58bf: $da $e1 $a7

    ld e, $de                                     ; $58c2: $1e $de
    ld a, l                                       ; $58c4: $7d
    add hl, de                                    ; $58c5: $19
    db $d3                                        ; $58c6: $d3
    push af                                       ; $58c7: $f5
    add hl, de                                    ; $58c8: $19
    ld [hl+], a                                   ; $58c9: $22
    db $dd                                        ; $58ca: $dd
    and $b9                                       ; $58cb: $e6 $b9
    sub [hl]                                      ; $58cd: $96
    ld a, [hl]                                    ; $58ce: $7e
    push hl                                       ; $58cf: $e5
    ld d, c                                       ; $58d0: $51
    dec sp                                        ; $58d1: $3b
    db $fc                                        ; $58d2: $fc
    ld h, e                                       ; $58d3: $63
    db $f4                                        ; $58d4: $f4
    cp [hl]                                       ; $58d5: $be
    ld c, b                                       ; $58d6: $48
    add $13                                       ; $58d7: $c6 $13
    xor d                                         ; $58d9: $aa
    and [hl]                                      ; $58da: $a6
    db $f4                                        ; $58db: $f4
    dec h                                         ; $58dc: $25
    cp a                                          ; $58dd: $bf
    ld b, c                                       ; $58de: $41
    inc b                                         ; $58df: $04
    dec a                                         ; $58e0: $3d
    sbc d                                         ; $58e1: $9a
    db $10                                        ; $58e2: $10
    call c, $d87e                                 ; $58e3: $dc $7e $d8
    ld c, e                                       ; $58e6: $4b
    and [hl]                                      ; $58e7: $a6
    inc e                                         ; $58e8: $1c
    ld b, [hl]                                    ; $58e9: $46
    db $ed                                        ; $58ea: $ed
    ldh a, [$8f]                                  ; $58eb: $f0 $8f
    pop de                                        ; $58ed: $d1
    ei                                            ; $58ee: $fb
    ld [hl+], a                                   ; $58ef: $22
    add hl, de                                    ; $58f0: $19
    ld b, e                                       ; $58f1: $43
    inc b                                         ; $58f2: $04
    db $dd                                        ; $58f3: $dd
    ld a, [$aa68]                                 ; $58f4: $fa $68 $aa
    halt                                          ; $58f7: $76
    db $d3                                        ; $58f8: $d3
    push hl                                       ; $58f9: $e5
    dec sp                                        ; $58fa: $3b
    ccf                                           ; $58fb: $3f
    jr z, jr_056_5955                             ; $58fc: $28 $57

    ld l, d                                       ; $58fe: $6a
    inc b                                         ; $58ff: $04
    db $dd                                        ; $5900: $dd
    ld a, [$aa68]                                 ; $5901: $fa $68 $aa
    ld l, [hl]                                    ; $5904: $6e
    ld b, b                                       ; $5905: $40
    db $dd                                        ; $5906: $dd
    ld a, [$235c]                                 ; $5907: $fa $5c $23
    call c, Call_056_5178                         ; $590a: $dc $78 $51
    cpl                                           ; $590d: $2f

Jump_056_590e:
    rla                                           ; $590e: $17
    and a                                         ; $590f: $a7
    ld b, [hl]                                    ; $5910: $46
    add hl, hl                                    ; $5911: $29
    db $fc                                        ; $5912: $fc
    ld e, b                                       ; $5913: $58
    ccf                                           ; $5914: $3f
    cp e                                          ; $5915: $bb

Jump_056_5916:
    ld [hl], h                                    ; $5916: $74
    add b                                         ; $5917: $80
    ld hl, sp-$50                                 ; $5918: $f8 $b0
    and [hl]                                      ; $591a: $a6
    db $10                                        ; $591b: $10
    or a                                          ; $591c: $b7
    pop de                                        ; $591d: $d1
    or h                                          ; $591e: $b4
    inc hl                                        ; $591f: $23
    inc hl                                        ; $5920: $23
    rst $30                                       ; $5921: $f7
    sub d                                         ; $5922: $92
    db $e4                                        ; $5923: $e4
    ld l, c                                       ; $5924: $69
    cpl                                           ; $5925: $2f
    sbc h                                         ; $5926: $9c
    ld [hl], h                                    ; $5927: $74
    adc [hl]                                      ; $5928: $8e
    res 1, c                                      ; $5929: $cb $89
    ld l, e                                       ; $592b: $6b
    ld e, a                                       ; $592c: $5f
    ld b, d                                       ; $592d: $42
    ld e, c                                       ; $592e: $59
    ld a, l                                       ; $592f: $7d
    bit 6, c                                      ; $5930: $cb $71
    ld hl, $e7b7                                  ; $5932: $21 $b7 $e7
    or $f3                                        ; $5935: $f6 $f3
    ldh a, [$0b]                                  ; $5937: $f0 $0b
    rra                                           ; $5939: $1f
    ld bc, $e7b7                                  ; $593a: $01 $b7 $e7
    or $f3                                        ; $593d: $f6 $f3
    cp b                                          ; $593f: $b8
    ld a, $d9                                     ; $5940: $3e $d9
    ld a, $68                                     ; $5942: $3e $68
    db $fd                                        ; $5944: $fd
    jr nz, jr_056_59be                            ; $5945: $20 $77

    cp l                                          ; $5947: $bd
    ld d, b                                       ; $5948: $50
    sbc $21                                       ; $5949: $de $21
    ld a, a                                       ; $594b: $7f
    ld l, e                                       ; $594c: $6b
    ld [$fcf7], sp                                ; $594d: $08 $f7 $fc
    add h                                         ; $5950: $84
    ld b, d                                       ; $5951: $42
    or a                                          ; $5952: $b7
    dec d                                         ; $5953: $15
    db $fd                                        ; $5954: $fd

jr_056_5955:
    ld [$404b], a                                 ; $5955: $ea $4b $40
    rst $30                                       ; $5958: $f7
    ld hl, sp-$50                                 ; $5959: $f8 $b0
    daa                                           ; $595b: $27
    ccf                                           ; $595c: $3f
    and c                                         ; $595d: $a1
    db $10                                        ; $595e: $10
    add hl, hl                                    ; $595f: $29
    ccf                                           ; $5960: $3f
    jr z, @+$19                                   ; $5961: $28 $17

    ld [bc], a                                    ; $5963: $02
    add hl, hl                                    ; $5964: $29
    cp $81                                        ; $5965: $fe $81
    jr nc, jr_056_598c                            ; $5967: $30 $23

    ld [hl], a                                    ; $5969: $77
    cp a                                          ; $596a: $bf
    ldh a, [rNR11]                                ; $596b: $f0 $11
    add hl, hl                                    ; $596d: $29
    xor h                                         ; $596e: $ac
    xor c                                         ; $596f: $a9
    ld l, b                                       ; $5970: $68
    inc b                                         ; $5971: $04
    or a                                          ; $5972: $b7
    rst $20                                       ; $5973: $e7
    ld a, [hl-]                                   ; $5974: $3a
    ret                                           ; $5975: $c9


    dec hl                                        ; $5976: $2b
    inc b                                         ; $5977: $04
    add hl, hl                                    ; $5978: $29
    ld hl, sp-$55                                 ; $5979: $f8 $ab
    rra                                           ; $597b: $1f
    ld [$0233], sp                                ; $597c: $08 $33 $02
    ld [hl], a                                    ; $597f: $77
    cp a                                          ; $5980: $bf
    ldh a, [$2f]                                  ; $5981: $f0 $2f

jr_056_5983:
    add hl, sp                                    ; $5983: $39
    xor h                                         ; $5984: $ac
    xor c                                         ; $5985: $a9
    ld l, b                                       ; $5986: $68
    inc b                                         ; $5987: $04
    ld [hl], a                                    ; $5988: $77
    cp a                                          ; $5989: $bf
    ldh a, [$2f]                                  ; $598a: $f0 $2f

jr_056_598c:
    and c                                         ; $598c: $a1
    ld [hl], e                                    ; $598d: $73
    sbc l                                         ; $598e: $9d
    db $e4                                        ; $598f: $e4
    dec d                                         ; $5990: $15
    ld [bc], a                                    ; $5991: $02
    scf                                           ; $5992: $37
    ld e, l                                       ; $5993: $5d
    ld a, [hl]                                    ; $5994: $7e
    jp hl                                         ; $5995: $e9


    ld c, l                                       ; $5996: $4d
    ld d, a                                       ; $5997: $57
    inc c                                         ; $5998: $0c
    ld bc, $df00                                  ; $5999: $01 $00 $df
    ld e, [hl]                                    ; $599c: $5e
    ld [hl-], a                                   ; $599d: $32
    push hl                                       ; $599e: $e5
    jr nc, jr_056_5983                            ; $599f: $30 $e2

    ret                                           ; $59a1: $c9


    adc c                                         ; $59a2: $89
    ld d, $23                                     ; $59a3: $16 $23
    db $dd                                        ; $59a5: $dd
    push af                                       ; $59a6: $f5
    add d                                         ; $59a7: $82
    ld c, a                                       ; $59a8: $4f
    db $fc                                        ; $59a9: $fc
    ld [hl+], a                                   ; $59aa: $22
    sub a                                         ; $59ab: $97
    db $10                                        ; $59ac: $10

Jump_056_59ad:
    ld c, a                                       ; $59ad: $4f
    ld c, [hl]                                    ; $59ae: $4e
    ld [hl], h                                    ; $59af: $74
    ld hl, $f8b7                                  ; $59b0: $21 $b7 $f8
    or b                                          ; $59b3: $b0
    ld b, a                                       ; $59b4: $47
    inc a                                         ; $59b5: $3c
    add hl, sp                                    ; $59b6: $39
    pop de                                        ; $59b7: $d1
    add l                                         ; $59b8: $85
    nop                                           ; $59b9: $00
    db $dd                                        ; $59ba: $dd
    push af                                       ; $59bb: $f5
    add d                                         ; $59bc: $82
    ld h, e                                       ; $59bd: $63

jr_056_59be:
    set 0, h                                      ; $59be: $cb $c4
    sub e                                         ; $59c0: $93
    inc de                                        ; $59c1: $13
    ld e, l                                       ; $59c2: $5d
    ld [$f829], sp                                ; $59c3: $08 $29 $f8
    xor e                                         ; $59c6: $ab
    rra                                           ; $59c7: $1f
    inc a                                         ; $59c8: $3c
    ld [c], a                                     ; $59c9: $e2
    ret                                           ; $59ca: $c9


    adc c                                         ; $59cb: $89
    ld l, $04                                     ; $59cc: $2e $04
    ld [hl], a                                    ; $59ce: $77
    cp a                                          ; $59cf: $bf
    ldh a, [rVBK]                                 ; $59d0: $f0 $4f
    db $f4                                        ; $59d2: $f4
    adc b                                         ; $59d3: $88
    daa                                           ; $59d4: $27
    daa                                           ; $59d5: $27
    cp d                                          ; $59d6: $ba
    stop                                          ; $59d7: $10 $00
    ld c, e                                       ; $59d9: $4b
    db $d3                                        ; $59da: $d3
    sbc d                                         ; $59db: $9a
    rrca                                          ; $59dc: $0f
    cp a                                          ; $59dd: $bf
    add h                                         ; $59de: $84
    ld a, b                                       ; $59df: $78
    ld [hl], d                                    ; $59e0: $72
    and d                                         ; $59e1: $a2
    dec bc                                        ; $59e2: $0b
    ld bc, $df00                                  ; $59e3: $01 $00 $df
    ld e, [hl]                                    ; $59e6: $5e
    ld [hl-], a                                   ; $59e7: $32
    push hl                                       ; $59e8: $e5
    jr nc, @-$1c                                  ; $59e9: $30 $e2

    ld sp, $105b                                  ; $59eb: $31 $5b $10
    add hl, hl                                    ; $59ee: $29
    db $e4                                        ; $59ef: $e4
    ccf                                           ; $59f0: $3f
    add a                                         ; $59f1: $87
    ld a, b                                       ; $59f2: $78
    call z, $bd08                                 ; $59f3: $cc $08 $bd
    or e                                          ; $59f6: $b3
    jp c, $ff21                                   ; $59f7: $da $21 $ff

    add hl, sp                                    ; $59fa: $39
    call nz, Call_056_4663                        ; $59fb: $c4 $63 $46
    or a                                          ; $59fe: $b7
    rst $20                                       ; $59ff: $e7
    ld [hl-], a                                   ; $5a00: $32
    adc a                                         ; $5a01: $8f
    ld a, b                                       ; $5a02: $78
    call z, $b708                                 ; $5a03: $cc $08 $b7
    ld hl, sp-$50                                 ; $5a06: $f8 $b0
    ld b, a                                       ; $5a08: $47
    inc a                                         ; $5a09: $3c
    ld h, [hl]                                    ; $5a0a: $66
    inc b                                         ; $5a0b: $04
    add hl, hl                                    ; $5a0c: $29
    db $e4                                        ; $5a0d: $e4
    ccf                                           ; $5a0e: $3f
    add a                                         ; $5a0f: $87
    add sp, -$48                                  ; $5a10: $e8 $b8
    ld h, c                                       ; $5a12: $61
    inc b                                         ; $5a13: $04
    rst $30                                       ; $5a14: $f7
    sub d                                         ; $5a15: $92
    db $fc                                        ; $5a16: $fc
    or c                                          ; $5a17: $b1
    adc [hl]                                      ; $5a18: $8e
    rrca                                          ; $5a19: $0f
    pop af                                        ; $5a1a: $f1
    sbc b                                         ; $5a1b: $98
    ld de, $df00                                  ; $5a1c: $11 $00 $df
    ld e, [hl]                                    ; $5a1f: $5e
    ld [hl-], a                                   ; $5a20: $32
    push hl                                       ; $5a21: $e5
    or b                                          ; $5a22: $b0

jr_056_5a23:
    xor b                                         ; $5a23: $a8
    inc sp                                        ; $5a24: $33
    ld e, e                                       ; $5a25: $5b
    db $10                                        ; $5a26: $10
    or a                                          ; $5a27: $b7
    ld c, c                                       ; $5a28: $49
    ld [hl], h                                    ; $5a29: $74
    db $db                                        ; $5a2a: $db
    xor e                                         ; $5a2b: $ab
    or h                                          ; $5a2c: $b4
    cp a                                          ; $5a2d: $bf
    ld a, [hl-]                                   ; $5a2e: $3a
    ld d, c                                       ; $5a2f: $51
    ld h, a                                       ; $5a30: $67
    ld [hl], $02                                  ; $5a31: $36 $02
    add b                                         ; $5a33: $80
    cp a                                          ; $5a34: $bf
    or b                                          ; $5a35: $b0
    dec hl                                        ; $5a36: $2b
    ld a, $92                                     ; $5a37: $3e $92
    inc [hl]                                      ; $5a39: $34
    ld [bc], a                                    ; $5a3a: $02
    cp l                                          ; $5a3b: $bd
    or e                                          ; $5a3c: $b3
    jp c, $b4ab                                   ; $5a3d: $da $ab $b4

    cp a                                          ; $5a40: $bf
    ld a, [hl-]                                   ; $5a41: $3a
    ld d, c                                       ; $5a42: $51
    ld h, a                                       ; $5a43: $67
    ld [hl], $02                                  ; $5a44: $36 $02
    rst $30                                       ; $5a46: $f7
    ld h, $ae                                     ; $5a47: $26 $ae
    and $60                                       ; $5a49: $e6 $60
    ld e, c                                       ; $5a4b: $59
    ld a, [c]                                     ; $5a4c: $f2
    add l                                         ; $5a4d: $85
    ld e, l                                       ; $5a4e: $5d
    ld [hl], h                                    ; $5a4f: $74
    cp l                                          ; $5a50: $bd
    jr jr_056_5a64                                ; $5a51: $18 $11

    add b                                         ; $5a53: $80
    ld c, [hl]                                    ; $5a54: $4e
    ei                                            ; $5a55: $fb
    db $ec                                        ; $5a56: $ec
    or $c3                                        ; $5a57: $f6 $c3
    and d                                         ; $5a59: $a2
    adc $6c                                       ; $5a5a: $ce $6c
    inc b                                         ; $5a5c: $04
    add hl, hl                                    ; $5a5d: $29
    sbc h                                         ; $5a5e: $9c
    dec bc                                        ; $5a5f: $0b
    rst $00                                       ; $5a60: $c7
    ld b, a                                       ; $5a61: $47
    sub d                                         ; $5a62: $92
    ld b, [hl]                                    ; $5a63: $46

jr_056_5a64:
    nop                                           ; $5a64: $00
    rst $18                                       ; $5a65: $df
    ld e, [hl]                                    ; $5a66: $5e
    ld [hl-], a                                   ; $5a67: $32
    push hl                                       ; $5a68: $e5
    or b                                          ; $5a69: $b0
    or h                                          ; $5a6a: $b4
    dec de                                        ; $5a6b: $1b
    sbc e                                         ; $5a6c: $9b
    ld de, $f577                                  ; $5a6d: $11 $77 $f5
    ld d, l                                       ; $5a70: $55
    ld l, c                                       ; $5a71: $69
    scf                                           ; $5a72: $37
    ld [hl], $02                                  ; $5a73: $36 $02
    rst $30                                       ; $5a75: $f7
    jp hl                                         ; $5a76: $e9


    jp nz, $afad                                  ; $5a77: $c2 $ad $af

    ld a, [hl-]                                   ; $5a7a: $3a
    ld l, c                                       ; $5a7b: $69
    scf                                           ; $5a7c: $37
    ld [hl], $02                                  ; $5a7d: $36 $02
    add hl, hl                                    ; $5a7f: $29
    cp $81                                        ; $5a80: $fe $81
    jr nc, jr_056_5a23                            ; $5a82: $30 $9f

    or h                                          ; $5a84: $b4
    dec de                                        ; $5a85: $1b
    dec de                                        ; $5a86: $1b
    ld bc, $89b7                                  ; $5a87: $01 $b7 $89
    dec hl                                        ; $5a8a: $2b
    db $fc                                        ; $5a8b: $fc
    or h                                          ; $5a8c: $b4
    dec de                                        ; $5a8d: $1b
    dec de                                        ; $5a8e: $1b
    ld bc, $d677                                  ; $5a8f: $01 $77 $d6
    and e                                         ; $5a92: $a3
    add hl, sp                                    ; $5a93: $39
    db $ed                                        ; $5a94: $ed
    add $46                                       ; $5a95: $c6 $46
    or a                                          ; $5a97: $b7
    cp h                                          ; $5a98: $bc
    jp Jump_056_4b3f                              ; $5a99: $c3 $3f $4b


    jp c, $8d8d                                   ; $5a9c: $da $8d $8d

jr_056_5a9f:
    nop                                           ; $5a9f: $00
    nop                                           ; $5aa0: $00
    rst $18                                       ; $5aa1: $df
    ld e, [hl]                                    ; $5aa2: $5e
    ld [hl-], a                                   ; $5aa3: $32
    push hl                                       ; $5aa4: $e5
    or b                                          ; $5aa5: $b0
    jp Jump_056_495d                              ; $5aa6: $c3 $5d $49


    or e                                          ; $5aa9: $b3
    jr jr_056_5aad                                ; $5aaa: $18 $01

    or a                                          ; $5aac: $b7

jr_056_5aad:
    ld c, c                                       ; $5aad: $49
    ld l, h                                       ; $5aae: $6c
    sbc $e1                                       ; $5aaf: $de $e1
    xor [hl]                                      ; $5ab1: $ae
    and h                                         ; $5ab2: $a4
    cp c                                          ; $5ab3: $b9
    db $10                                        ; $5ab4: $10
    cp l                                          ; $5ab5: $bd
    or e                                          ; $5ab6: $b3
    ld a, [c]                                     ; $5ab7: $f2
    ld c, $77                                     ; $5ab8: $0e $77
    dec h                                         ; $5aba: $25
    call Call_000_0085                            ; $5abb: $cd $85 $00
    dec a                                         ; $5abe: $3d
    xor a                                         ; $5abf: $af
    call nc, $aee1                                ; $5ac0: $d4 $e1 $ae
    and h                                         ; $5ac3: $a4
    cp c                                          ; $5ac4: $b9
    db $10                                        ; $5ac5: $10
    or a                                          ; $5ac6: $b7
    ld hl, sp-$50                                 ; $5ac7: $f8 $b0
    ld [hl], a                                    ; $5ac9: $77
    cp b                                          ; $5aca: $b8
    dec hl                                        ; $5acb: $2b
    ld l, c                                       ; $5acc: $69
    ld l, $04                                     ; $5acd: $2e $04
    or a                                          ; $5acf: $b7
    db $e4                                        ; $5ad0: $e4
    sub [hl]                                      ; $5ad1: $96
    cp b                                          ; $5ad2: $b8
    ld [c], a                                     ; $5ad3: $e2
    pop hl                                        ; $5ad4: $e1
    xor [hl]                                      ; $5ad5: $ae
    and h                                         ; $5ad6: $a4
    cp c                                          ; $5ad7: $b9
    db $10                                        ; $5ad8: $10
    rst $30                                       ; $5ad9: $f7
    sub d                                         ; $5ada: $92
    db $fc                                        ; $5adb: $fc
    or c                                          ; $5adc: $b1
    adc [hl]                                      ; $5add: $8e
    rst $08                                       ; $5ade: $cf
    pop hl                                        ; $5adf: $e1
    xor [hl]                                      ; $5ae0: $ae
    and h                                         ; $5ae1: $a4
    cp c                                          ; $5ae2: $b9
    db $10                                        ; $5ae3: $10
    add hl, hl                                    ; $5ae4: $29
    ld sp, $9f37                                  ; $5ae5: $31 $37 $9f
    rla                                           ; $5ae8: $17
    cpl                                           ; $5ae9: $2f
    ld l, c                                       ; $5aea: $69
    rst $38                                       ; $5aeb: $ff
    or b                                          ; $5aec: $b0
    ld de, $b677                                  ; $5aed: $11 $77 $b6
    ld [hl], a                                    ; $5af0: $77
    adc [hl]                                      ; $5af1: $8e
    db $db                                        ; $5af2: $db
    ccf                                           ; $5af3: $3f
    ld l, h                                       ; $5af4: $6c
    inc b                                         ; $5af5: $04
    add b                                         ; $5af6: $80
    adc d                                         ; $5af7: $8a
    db $dd                                        ; $5af8: $dd
    cp $61                                        ; $5af9: $fe $61
    inc hl                                        ; $5afb: $23
    ld [hl], a                                    ; $5afc: $77
    ld a, l                                       ; $5afd: $7d
    db $ec                                        ; $5afe: $ec
    jp $ed6e                                      ; $5aff: $c3 $6e $ed


    ld [de], a                                    ; $5b02: $12
    ld a, [c]                                     ; $5b03: $f2
    push bc                                       ; $5b04: $c5
    ld l, b                                       ; $5b05: $68
    inc b                                         ; $5b06: $04
    rst $30                                       ; $5b07: $f7
    cp h                                          ; $5b08: $bc
    ld b, h                                       ; $5b09: $44
    call c, Call_056_491e                         ; $5b0a: $dc $1e $49
    ld e, [hl]                                    ; $5b0d: $5e
    ld b, d                                       ; $5b0e: $42
    cp [hl]                                       ; $5b0f: $be
    jr jr_056_5a9f                                ; $5b10: $18 $8d

    nop                                           ; $5b12: $00
    add hl, hl                                    ; $5b13: $29
    call c, $8971                                 ; $5b14: $dc $71 $89
    db $e3                                        ; $5b17: $e3
    dec hl                                        ; $5b18: $2b
    ld b, [hl]                                    ; $5b19: $46
    rst $30                                       ; $5b1a: $f7
    cp c                                          ; $5b1b: $b9
    jp nz, $16c3                                  ; $5b1c: $c2 $c3 $16

    ld b, [hl]                                    ; $5b1f: $46
    ld [hl], a                                    ; $5b20: $77
    ld h, a                                       ; $5b21: $67
    ld c, $9f                                     ; $5b22: $0e $9f
    ld h, [hl]                                    ; $5b24: $66
    inc b                                         ; $5b25: $04
    ld b, b                                       ; $5b26: $40
    ld a, [hl]                                    ; $5b27: $7e
    ld [$3016], sp                                ; $5b28: $08 $16 $30
    ld l, [hl]                                    ; $5b2b: $6e
    ld [$fc12], a                                 ; $5b2c: $ea $12 $fc
    db $e3                                        ; $5b2f: $e3
    ld h, c                                       ; $5b30: $61
    cp l                                          ; $5b31: $bd
    db $10                                        ; $5b32: $10
    or a                                          ; $5b33: $b7
    ld hl, sp-$50                                 ; $5b34: $f8 $b0
    rlca                                          ; $5b36: $07
    db $e4                                        ; $5b37: $e4
    add a                                         ; $5b38: $87
    ld h, b                                       ; $5b39: $60
    ld bc, $a6e3                                  ; $5b3a: $01 $e3 $a6
    ld l, $c1                                     ; $5b3d: $2e $c1
    ccf                                           ; $5b3f: $3f
    ld e, $d6                                     ; $5b40: $1e $d6
    dec bc                                        ; $5b42: $0b
    ld bc, $4280                                  ; $5b43: $01 $80 $42
    ld sp, hl                                     ; $5b46: $f9
    inc e                                         ; $5b47: $1c
    ld d, l                                       ; $5b48: $55
    ld h, $5d                                     ; $5b49: $26 $5d
    sub a                                         ; $5b4b: $97
    ldh [$1f], a                                  ; $5b4c: $e0 $1f
    rrca                                          ; $5b4e: $0f
    db $eb                                        ; $5b4f: $eb
    add l                                         ; $5b50: $85
    nop                                           ; $5b51: $00
    add b                                         ; $5b52: $80
    ccf                                           ; $5b53: $3f
    ccf                                           ; $5b54: $3f
    db $fc                                        ; $5b55: $fc
    db $e3                                        ; $5b56: $e3
    ld h, c                                       ; $5b57: $61
    cp l                                          ; $5b58: $bd
    db $10                                        ; $5b59: $10
    ld [hl], a                                    ; $5b5a: $77
    ld h, $3f                                     ; $5b5b: $26 $3f
    add $4c                                       ; $5b5d: $c6 $4c
    sub d                                         ; $5b5f: $92
    ld l, $d2                                     ; $5b60: $2e $d2
    inc h                                         ; $5b62: $24
    jp hl                                         ; $5b63: $e9


    ld b, d                                       ; $5b64: $42
    or a                                          ; $5b65: $b7
    ld hl, sp-$50                                 ; $5b66: $f8 $b0
    ld [hl], a                                    ; $5b68: $77
    ld h, a                                       ; $5b69: $67
    ld a, [c]                                     ; $5b6a: $f2
    ld h, e                                       ; $5b6b: $63
    call z, $e924                                 ; $5b6c: $cc $24 $e9
    ld [hl+], a                                   ; $5b6f: $22
    ld c, l                                       ; $5b70: $4d
    sub d                                         ; $5b71: $92
    ld l, $04                                     ; $5b72: $2e $04
    or a                                          ; $5b74: $b7
    or l                                          ; $5b75: $b5
    rra                                           ; $5b76: $1f
    rst $08                                       ; $5b77: $cf
    xor a                                         ; $5b78: $af
    ld c, e                                       ; $5b79: $4b
    adc [hl]                                      ; $5b7a: $8e
    sbc c                                         ; $5b7b: $99
    ld de, $0f29                                  ; $5b7c: $11 $29 $0f
    ld h, e                                       ; $5b7f: $63
    ld c, e                                       ; $5b80: $4b
    ld [hl], e                                    ; $5b81: $73
    ld [$57e9], sp                                ; $5b82: $08 $e9 $57
    inc hl                                        ; $5b85: $23
    inc e                                         ; $5b86: $1c
    adc a                                         ; $5b87: $8f
    ld h, e                                       ; $5b88: $63
    rst $00                                       ; $5b89: $c7
    dec c                                         ; $5b8a: $0d
    ld bc, $6677                                  ; $5b8b: $01 $77 $66
    sub d                                         ; $5b8e: $92
    ld [hl], h                                    ; $5b8f: $74
    adc l                                         ; $5b90: $8d
    ld [hl], b                                    ; $5b91: $70
    inc a                                         ; $5b92: $3c
    adc [hl]                                      ; $5b93: $8e
    dec e                                         ; $5b94: $1d
    scf                                           ; $5b95: $37
    inc b                                         ; $5b96: $04
    ld [hl], a                                    ; $5b97: $77
    ei                                            ; $5b98: $fb
    sbc h                                         ; $5b99: $9c
    cpl                                           ; $5b9a: $2f
    ld h, c                                       ; $5b9b: $61
    add h                                         ; $5b9c: $84
    db $e3                                        ; $5b9d: $e3
    ld [hl], c                                    ; $5b9e: $71
    db $ec                                        ; $5b9f: $ec
    cp b                                          ; $5ba0: $b8
    ld hl, $5d29                                  ; $5ba1: $21 $29 $5d
    dec l                                         ; $5ba4: $2d
    add hl, de                                    ; $5ba5: $19
    pop hl                                        ; $5ba6: $e1
    ld a, b                                       ; $5ba7: $78
    inc e                                         ; $5ba8: $1c
    dec sp                                        ; $5ba9: $3b
    ld l, [hl]                                    ; $5baa: $6e
    ld [$6e29], sp                                ; $5bab: $08 $29 $6e
    ld c, c                                       ; $5bae: $49
    ld [hl], l                                    ; $5baf: $75
    sub l                                         ; $5bb0: $95
    ld b, l                                       ; $5bb1: $45
    ld a, c                                       ; $5bb2: $79
    add h                                         ; $5bb3: $84
    db $e3                                        ; $5bb4: $e3
    ld [hl], c                                    ; $5bb5: $71
    db $ec                                        ; $5bb6: $ec
    cp b                                          ; $5bb7: $b8
    ld hl, $e7b7                                  ; $5bb8: $21 $b7 $e7
    jp nz, $e96e                                  ; $5bbb: $c2 $6e $e9

    inc e                                         ; $5bbe: $1c
    ld de, $3129                                  ; $5bbf: $11 $29 $31
    scf                                           ; $5bc2: $37
    and a                                         ; $5bc3: $a7
    cp e                                          ; $5bc4: $bb
    and d                                         ; $5bc5: $a2
    dec bc                                        ; $5bc6: $0b
    ld bc, $e7b7                                  ; $5bc7: $01 $b7 $e7
    or $f3                                        ; $5bca: $f6 $f3
    nop                                           ; $5bcc: $00
    sub $27                                       ; $5bcd: $d6 $27
    db $db                                        ; $5bcf: $db
    rlca                                          ; $5bd0: $07
    xor l                                         ; $5bd1: $ad
    rra                                           ; $5bd2: $1f
    inc b                                         ; $5bd3: $04
    or a                                          ; $5bd4: $b7
    rst $20                                       ; $5bd5: $e7
    or $f3                                        ; $5bd6: $f6 $f3
    ldh a, [$0b]                                  ; $5bd8: $f0 $0b
    rra                                           ; $5bda: $1f
    ld bc, $64f7                                  ; $5bdb: $01 $f7 $64
    cp $27                                        ; $5bde: $fe $27
    sbc l                                         ; $5be0: $9d
    inc hl                                        ; $5be1: $23
    ld [bc], a                                    ; $5be2: $02
    or a                                          ; $5be3: $b7
    rst $20                                       ; $5be4: $e7
    ld c, d                                       ; $5be5: $4a
    ccf                                           ; $5be6: $3f
    ld de, $e3b7                                  ; $5be7: $11 $b7 $e3

Jump_056_5bea:
    sub e                                         ; $5bea: $93
    adc $11                                       ; $5beb: $ce $11
    ld bc, $af3d                                  ; $5bed: $01 $3d $af
    ld c, d                                       ; $5bf0: $4a
    ld [hl], e                                    ; $5bf1: $73
    add $a5                                       ; $5bf2: $c6 $a5
    ld l, c                                       ; $5bf4: $69
    call Call_056_5f87                            ; $5bf5: $cd $87 $5f
    add d                                         ; $5bf8: $82
    nop                                           ; $5bf9: $00
    or a                                          ; $5bfa: $b7
    ld c, c                                       ; $5bfb: $49
    ld [hl], h                                    ; $5bfc: $74
    ld e, e                                       ; $5bfd: $5b
    ei                                            ; $5bfe: $fb
    ret c                                         ; $5bff: $d8

    ld [$6677], sp                                ; $5c00: $08 $77 $66
    ld l, h                                       ; $5c03: $6c
    sbc $15                                       ; $5c04: $de $15
    rst $10                                       ; $5c06: $d7
    ld e, h                                       ; $5c07: $5c
    add [hl]                                      ; $5c08: $86
    nop                                           ; $5c09: $00
    add hl, hl                                    ; $5c0a: $29
    call c, $8971                                 ; $5c0b: $dc $71 $89
    ld c, a                                       ; $5c0e: $4f
    call nc, $4295                                ; $5c0f: $d4 $95 $42
    rst $30                                       ; $5c12: $f7
    ld a, h                                       ; $5c13: $7c
    sbc h                                         ; $5c14: $9c
    sub $cf                                       ; $5c15: $d6 $cf
    xor [hl]                                      ; $5c17: $ae
    cp b                                          ; $5c18: $b8
    db $ec                                        ; $5c19: $ec
    or d                                          ; $5c1a: $b2
    rl b                                          ; $5c1b: $cb $10
    scf                                           ; $5c1d: $37
    rra                                           ; $5c1e: $1f
    ld a, [hl-]                                   ; $5c1f: $3a
    dec hl                                        ; $5c20: $2b
    scf                                           ; $5c21: $37
    db $fd                                        ; $5c22: $fd
    ld e, h                                       ; $5c23: $5c
    ld d, d                                       ; $5c24: $52
    sbc c                                         ; $5c25: $99
    ld de, $e977                                  ; $5c26: $11 $77 $e9
    add a                                         ; $5c29: $87
    ld a, b                                       ; $5c2a: $78
    call z, RST_08                                ; $5c2b: $cc $08 $00
    cp e                                          ; $5c2e: $bb
    ld a, [hl+]                                   ; $5c2f: $2a
    ld e, d                                       ; $5c30: $5a
    ld a, c                                       ; $5c31: $79
    ld [c], a                                     ; $5c32: $e2
    db $d3                                        ; $5c33: $d3
    ld e, h                                       ; $5c34: $5c
    ld [$9f37], sp                                ; $5c35: $08 $37 $9f
    ld e, b                                       ; $5c38: $58
    sbc c                                         ; $5c39: $99
    ld de, $bf77                                  ; $5c3a: $11 $77 $bf
    and [hl]                                      ; $5c3d: $a6
    rla                                           ; $5c3e: $17
    inc hl                                        ; $5c3f: $23
    scf                                           ; $5c40: $37
    or a                                          ; $5c41: $b7
    jp nc, $95c5                                  ; $5c42: $d2 $c5 $95

    add hl, de                                    ; $5c45: $19
    ld bc, $e4b7                                  ; $5c46: $01 $b7 $e4
    adc h                                         ; $5c49: $8c
    ld c, a                                       ; $5c4a: $4f

Call_056_5c4b:
    ld a, e                                       ; $5c4b: $7b
    ld [de], a                                    ; $5c4c: $12
    ld a, h                                       ; $5c4d: $7c
    ld [c], a                                     ; $5c4e: $e2
    rla                                           ; $5c4f: $17
    ld b, c                                       ; $5c50: $41
    rst $30                                       ; $5c51: $f7
    ld a, l                                       ; $5c52: $7d
    sub c                                         ; $5c53: $91
    sub e                                         ; $5c54: $93
    ld a, h                                       ; $5c55: $7c
    ld de, $87f2                                  ; $5c56: $11 $f2 $87
    ldh [rSCY], a                                 ; $5c59: $e0 $42
    or a                                          ; $5c5b: $b7
    inc [hl]                                      ; $5c5c: $34
    rst $00                                       ; $5c5d: $c7
    ld a, b                                       ; $5c5e: $78
    ret z                                         ; $5c5f: $c8

    jp nc, $d499                                  ; $5c60: $d2 $99 $d4

    ld e, e                                       ; $5c63: $5b
    ld [c], a                                     ; $5c64: $e2
    ld b, d                                       ; $5c65: $42
    or a                                          ; $5c66: $b7
    db $fc                                        ; $5c67: $fc
    sub $dc                                       ; $5c68: $d6 $dc
    and l                                         ; $5c6a: $a5
    ld de, $b723                                  ; $5c6b: $11 $23 $b7
    ld a, h                                       ; $5c6e: $7c
    and d                                         ; $5c6f: $a2
    db $d3                                        ; $5c70: $d3
    ld d, l                                       ; $5c71: $55
    ld a, [c]                                     ; $5c72: $f2
    dec h                                         ; $5c73: $25
    db $10                                        ; $5c74: $10
    cp c                                          ; $5c75: $b9
    inc b                                         ; $5c76: $04
    ld bc, $ed29                                  ; $5c77: $01 $29 $ed
    ld c, c                                       ; $5c7a: $49
    jr nc, jr_056_5cd8                            ; $5c7b: $30 $5b

    call nz, Call_000_0085                        ; $5c7d: $c4 $85 $00
    or a                                          ; $5c80: $b7
    jr @+$5e                                      ; $5c81: $18 $5c

    ld a, [hl]                                    ; $5c83: $7e
    ld [hl], l                                    ; $5c84: $75
    ret                                           ; $5c85: $c9


    ld h, c                                       ; $5c86: $61
    ld a, a                                       ; $5c87: $7f
    ld b, c                                       ; $5c88: $41
    add hl, hl                                    ; $5c89: $29
    ld e, l                                       ; $5c8a: $5d
    dec l                                         ; $5c8b: $2d
    sbc c                                         ; $5c8c: $99
    add l                                         ; $5c8d: $85
    add sp, $74                                   ; $5c8e: $e8 $74
    sub l                                         ; $5c90: $95
    ld a, h                                       ; $5c91: $7c
    add hl, bc                                    ; $5c92: $09
    ld b, h                                       ; $5c93: $44
    ld l, $41                                     ; $5c94: $2e $41
    nop                                           ; $5c96: $00
    dec hl                                        ; $5c97: $2b
    or a                                          ; $5c98: $b7
    sub [hl]                                      ; $5c99: $96
    xor $ab                                       ; $5c9a: $ee $ab
    db $10                                        ; $5c9c: $10
    cp l                                          ; $5c9d: $bd
    ccf                                           ; $5c9e: $3f
    call Call_000_1995                            ; $5c9f: $cd $95 $19
    ld bc, $b737                                  ; $5ca2: $01 $37 $b7
    halt                                          ; $5ca5: $76
    ldh a, [$8b]                                  ; $5ca6: $f0 $8b
    jp hl                                         ; $5ca8: $e9


    ld l, $11                                     ; $5ca9: $2e $11
    rla                                           ; $5cab: $17
    ld [bc], a                                    ; $5cac: $02
    add hl, hl                                    ; $5cad: $29
    sbc l                                         ; $5cae: $9d
    inc e                                         ; $5caf: $1c
    ld [hl], e                                    ; $5cb0: $73
    ld a, e                                       ; $5cb1: $7b
    jp z, $e574                                   ; $5cb2: $ca $74 $e5

    inc de                                        ; $5cb5: $13
    ld e, l                                       ; $5cb6: $5d
    ld [$f8b7], sp                                ; $5cb7: $08 $b7 $f8
    or b                                          ; $5cba: $b0
    ld [hl], a                                    ; $5cbb: $77
    bit 5, e                                      ; $5cbc: $cb $6b
    dec l                                         ; $5cbe: $2d
    ld c, e                                       ; $5cbf: $4b
    ld h, b                                       ; $5cc0: $60
    ld c, l                                       ; $5cc1: $4d
    ld [$c63a], sp                                ; $5cc2: $08 $3a $c6
    rra                                           ; $5cc5: $1f
    ld bc, $d677                                  ; $5cc6: $01 $77 $d6
    sub e                                         ; $5cc9: $93
    rst $28                                       ; $5cca: $ef
    ld hl, sp-$5e                                 ; $5ccb: $f8 $a2
    dec bc                                        ; $5ccd: $0b
    ld bc, $8e3d                                  ; $5cce: $01 $3d $8e
    rst $00                                       ; $5cd1: $c7
    or c                                          ; $5cd2: $b1
    db $e3                                        ; $5cd3: $e3
    ld a, b                                       ; $5cd4: $78
    db $10                                        ; $5cd5: $10
    ld [hl], a                                    ; $5cd6: $77
    cp l                                          ; $5cd7: $bd

jr_056_5cd8:
    ld e, b                                       ; $5cd8: $58
    rst $38                                       ; $5cd9: $ff
    inc e                                         ; $5cda: $1c
    ld a, [hl]                                    ; $5cdb: $7e
    adc c                                         ; $5cdc: $89
    dec bc                                        ; $5cdd: $0b
    ld bc, $4280                                  ; $5cde: $01 $80 $42

Jump_056_5ce1:
    ld a, e                                       ; $5ce1: $7b
    db $eb                                        ; $5ce2: $eb
    or c                                          ; $5ce3: $b1
    ld c, d                                       ; $5ce4: $4a
    ld a, [hl]                                    ; $5ce5: $7e
    ld b, b                                       ; $5ce6: $40
    db $dd                                        ; $5ce7: $dd

Jump_056_5ce8:
    rst $38                                       ; $5ce8: $ff
    add l                                         ; $5ce9: $85
    inc l                                         ; $5cea: $2c
    xor a                                         ; $5ceb: $af
    dec [hl]                                      ; $5cec: $35
    ld l, h                                       ; $5ced: $6c
    sub c                                         ; $5cee: $91
    cpl                                           ; $5cef: $2f
    pop hl                                        ; $5cf0: $e1
    ld [de], a                                    ; $5cf1: $12
    ld a, [c]                                     ; $5cf2: $f2
    sbc l                                         ; $5cf3: $9d
    add e                                         ; $5cf4: $83
    nop                                           ; $5cf5: $00
    or a                                          ; $5cf6: $b7
    rst $38                                       ; $5cf7: $ff
    call c, $bccc                                 ; $5cf8: $dc $cc $bc
    ld hl, sp-$1c                                 ; $5cfb: $f8 $e4
    dec bc                                        ; $5cfd: $0b
    ld [bc], a                                    ; $5cfe: $02
    add hl, hl                                    ; $5cff: $29
    call c, $a495                                 ; $5d00: $dc $95 $a4
    set 1, h                                      ; $5d03: $cb $cc
    ld [$ea77], sp                                ; $5d05: $08 $77 $ea
    xor l                                         ; $5d08: $ad
    ld hl, $4596                                  ; $5d09: $21 $96 $45
    ld c, l                                       ; $5d0c: $4d
    ld l, e                                       ; $5d0d: $6b
    ld e, a                                       ; $5d0e: $5f
    ld [bc], a                                    ; $5d0f: $02
    ld [bc], a                                    ; $5d10: $02
    add hl, hl                                    ; $5d11: $29
    ld e, h                                       ; $5d12: $5c
    ld a, [hl-]                                   ; $5d13: $3a
    rra                                           ; $5d14: $1f
    db $d3                                        ; $5d15: $d3
    sbc l                                         ; $5d16: $9d
    cp [hl]                                       ; $5d17: $be
    ld a, [bc]                                    ; $5d18: $0a
    ld bc, $bbb7                                  ; $5d19: $01 $b7 $bb
    cp [hl]                                       ; $5d1c: $be
    ld l, c                                       ; $5d1d: $69
    sbc l                                         ; $5d1e: $9d
    add hl, de                                    ; $5d1f: $19
    ld bc, $d337                                  ; $5d20: $01 $37 $d3
    ld l, h                                       ; $5d23: $6c
    ld hl, $d32b                                  ; $5d24: $21 $2b $d3

jr_056_5d27:
    ld h, [hl]                                    ; $5d27: $66
    dec bc                                        ; $5d28: $0b
    ld [bc], a                                    ; $5d29: $02
    add hl, hl                                    ; $5d2a: $29
    ld sp, $9f37                                  ; $5d2b: $31 $37 $9f
    or $c9                                        ; $5d2e: $f6 $c9
    add e                                         ; $5d30: $83
    nop                                           ; $5d31: $00
    db $dd                                        ; $5d32: $dd
    sbc d                                         ; $5d33: $9a
    adc d                                         ; $5d34: $8a
    ld d, e                                       ; $5d35: $53
    ld e, a                                       ; $5d36: $5f
    inc a                                         ; $5d37: $3c
    rlca                                          ; $5d38: $07
    pop af                                        ; $5d39: $f1
    sub d                                         ; $5d3a: $92

Call_056_5d3b:
    ld e, h                                       ; $5d3b: $5c
    db $ec                                        ; $5d3c: $ec
    cp d                                          ; $5d3d: $ba
    db $e4                                        ; $5d3e: $e4
    sbc b                                         ; $5d3f: $98
    add hl, de                                    ; $5d40: $19
    ld bc, $af3d                                  ; $5d41: $01 $3d $af
    dec h                                         ; $5d44: $25
    and h                                         ; $5d45: $a4
    ld l, $0a                                     ; $5d46: $2e $0a
    ld l, e                                       ; $5d48: $6b
    add h                                         ; $5d49: $84
    ld de, $6977                                  ; $5d4a: $11 $77 $69
    adc [hl]                                      ; $5d4d: $8e
    ld b, l                                       ; $5d4e: $45
    ld a, c                                       ; $5d4f: $79
    jp hl                                         ; $5d50: $e9


    rst $10                                       ; $5d51: $d7
    ld e, d                                       ; $5d52: $5a
    sub [hl]                                      ; $5d53: $96
    ldh [rSCY], a                                 ; $5d54: $e0 $42
    ld a, l                                       ; $5d56: $7d
    db $f4                                        ; $5d57: $f4
    ld h, [hl]                                    ; $5d58: $66
    ld a, [c]                                     ; $5d59: $f2
    push bc                                       ; $5d5a: $c5
    ld l, b                                       ; $5d5b: $68
    inc b                                         ; $5d5c: $04
    cp l                                          ; $5d5d: $bd
    dec [hl]                                      ; $5d5e: $35
    and c                                         ; $5d5f: $a1
    cp [hl]                                       ; $5d60: $be
    ld a, [hl-]                                   ; $5d61: $3a
    inc hl                                        ; $5d62: $23
    ld e, a                                       ; $5d63: $5f
    dec a                                         ; $5d64: $3d
    or d                                          ; $5d65: $b2
    ld l, c                                       ; $5d66: $69
    db $10                                        ; $5d67: $10
    db $dd                                        ; $5d68: $dd
    ld e, [hl]                                    ; $5d69: $5e
    ld a, [c]                                     ; $5d6a: $f2
    adc a                                         ; $5d6b: $8f
    rst $08                                       ; $5d6c: $cf
    ld c, $fb                                     ; $5d6d: $0e $fb
    dec bc                                        ; $5d6f: $0b
    ld [bc], a                                    ; $5d70: $02
    or a                                          ; $5d71: $b7
    rst $20                                       ; $5d72: $e7
    ld a, [bc]                                    ; $5d73: $0a
    call Call_000_1fd8                            ; $5d74: $cd $d8 $1f
    ld bc, $4877                                  ; $5d77: $01 $77 $48
    jr z, jr_056_5d27                             ; $5d7a: $28 $ab

    ld l, a                                       ; $5d7c: $6f
    add hl, sp                                    ; $5d7d: $39
    call $fcf1                                    ; $5d7e: $cd $f1 $fc
    sbc b                                         ; $5d81: $98
    dec b                                         ; $5d82: $05
    ld bc, $b7b7                                  ; $5d83: $01 $b7 $b7
    ld l, $0d                                     ; $5d86: $2e $0d
    dec de                                        ; $5d88: $1b
    ld bc, $37b7                                  ; $5d89: $01 $b7 $37
    adc l                                         ; $5d8c: $8d
    ld b, l                                       ; $5d8d: $45
    ld a, c                                       ; $5d8e: $79
    jp nc, $a315                                  ; $5d8f: $d2 $15 $a3

    dec de                                        ; $5d92: $1b
    ld [bc], a                                    ; $5d93: $02
    add hl, hl                                    ; $5d94: $29
    ccf                                           ; $5d95: $3f
    jr z, @+$19                                   ; $5d96: $28 $17

    ld [bc], a                                    ; $5d98: $02
    ld [hl], a                                    ; $5d99: $77
    add hl, sp                                    ; $5d9a: $39
    ld e, b                                       ; $5d9b: $58
    sub h                                         ; $5d9c: $94
    rla                                           ; $5d9d: $17
    jp c, $7667                                   ; $5d9e: $da $67 $76

    ld hl, $8e80                                  ; $5da1: $21 $80 $8e
    ld b, [hl]                                    ; $5da4: $46
    jp c, $840f                                   ; $5da5: $da $0f $84

    ld sp, hl                                     ; $5da8: $f9
    call nz, $9247                                ; $5da9: $c4 $47 $92
    ld b, [hl]                                    ; $5dac: $46
    ld [hl], a                                    ; $5dad: $77

Jump_056_5dae:
    and $e2                                       ; $5dae: $e6 $e2
    ld c, e                                       ; $5db0: $4b
    ld h, d                                       ; $5db1: $62
    add $e9                                       ; $5db2: $c6 $e9
    cpl                                           ; $5db4: $2f
    rst $28                                       ; $5db5: $ef
    ld [hl], h                                    ; $5db6: $74
    or d                                          ; $5db7: $b2
    jr nz, @-$21                                  ; $5db8: $20 $dd

    ld a, [$5788]                                 ; $5dba: $fa $88 $57
    ei                                            ; $5dbd: $fb
    ld [de], a                                    ; $5dbe: $12
    inc l                                         ; $5dbf: $2c
    inc sp                                        ; $5dc0: $33
    ld c, l                                       ; $5dc1: $4d
    dec sp                                        ; $5dc2: $3b
    or d                                          ; $5dc3: $b2
    dec hl                                        ; $5dc4: $2b
    dec [hl]                                      ; $5dc5: $35
    ld [bc], a                                    ; $5dc6: $02
    or a                                          ; $5dc7: $b7
    cp b                                          ; $5dc8: $b8
    cp d                                          ; $5dc9: $ba
    jr nc, @+$7d                                  ; $5dca: $30 $7b

    add h                                         ; $5dcc: $84
    db $e3                                        ; $5dcd: $e3
    ld [hl], c                                    ; $5dce: $71
    dec l                                         ; $5dcf: $2d
    add a                                         ; $5dd0: $87
    ld [hl], c                                    ; $5dd1: $71
    push hl                                       ; $5dd2: $e5
    sub $b0                                       ; $5dd3: $d6 $b0
    ld b, l                                       ; $5dd5: $45
    ld l, $89                                     ; $5dd6: $2e $89
    cp c                                          ; $5dd8: $b9
    jr jr_056_5ddc                                ; $5dd9: $18 $01

    or a                                          ; $5ddb: $b7

jr_056_5ddc:
    sub h                                         ; $5ddc: $94
    ld e, $3d                                     ; $5ddd: $1e $3d
    ld h, l                                       ; $5ddf: $65
    ld de, $34cf                                  ; $5de0: $11 $cf $34
    db $ed                                        ; $5de3: $ed
    ret z                                         ; $5de4: $c8

    sub [hl]                                      ; $5de5: $96
    ld e, [hl]                                    ; $5de6: $5e
    ld [$6f60], sp                                ; $5de7: $08 $60 $6f
    cp d                                          ; $5dea: $ba
    ld a, h                                       ; $5deb: $7c
    ld [$4877], sp                                ; $5dec: $08 $77 $48
    or b                                          ; $5def: $b0
    ldh a, [$97]                                  ; $5df0: $f0 $97
    or b                                          ; $5df2: $b0
    inc de                                        ; $5df3: $13
    dec sp                                        ; $5df4: $3b
    xor [hl]                                      ; $5df5: $ae
    call nc, $dd08                                ; $5df6: $d4 $08 $dd
    ld a, [$93e2]                                 ; $5df9: $fa $e2 $93
    db $fd                                        ; $5dfc: $fd
    jr @-$41                                      ; $5dfd: $18 $bd

    ld [hl], h                                    ; $5dff: $74
    jp hl                                         ; $5e00: $e9


    pop de                                        ; $5e01: $d1
    ld d, e                                       ; $5e02: $53
    sub [hl]                                      ; $5e03: $96
    add hl, bc                                    ; $5e04: $09
    sub l                                         ; $5e05: $95
    ld a, [de]                                    ; $5e06: $1a
    ld bc, $4b00                                  ; $5e07: $01 $00 $4b
    inc de                                        ; $5e0a: $13
    db $e3                                        ; $5e0b: $e3
    ld c, b                                       ; $5e0c: $48
    ld l, d                                       ; $5e0d: $6a
    sub [hl]                                      ; $5e0e: $96

Jump_056_5e0f:
    ld de, $6fc9                                  ; $5e0f: $11 $c9 $6f
    pop de                                        ; $5e12: $d1
    or d                                          ; $5e13: $b2
    sub e                                         ; $5e14: $93
    pop af                                        ; $5e15: $f1
    ld [$c3b7], sp                                ; $5e16: $08 $b7 $c3
    adc e                                         ; $5e19: $8b
    ld a, [c]                                     ; $5e1a: $f2
    ld c, b                                       ; $5e1b: $48
    ld [hl], d                                    ; $5e1c: $72
    ld [hl], h                                    ; $5e1d: $74
    xor [hl]                                      ; $5e1e: $ae
    ld d, c                                       ; $5e1f: $51
    and e                                         ; $5e20: $a3
    ld [hl], e                                    ; $5e21: $73

Jump_056_5e22:
    pop af                                        ; $5e22: $f1

Call_056_5e23:
    ld sp, $21b3                                  ; $5e23: $31 $b3 $21
    ld [bc], a                                    ; $5e26: $02
    dec a                                         ; $5e27: $3d
    xor a                                         ; $5e28: $af
    ld c, d                                       ; $5e29: $4a
    or e                                          ; $5e2a: $b3
    ret nc                                        ; $5e2b: $d0

    or c                                          ; $5e2c: $b1
    inc h                                         ; $5e2d: $24
    ld e, a                                       ; $5e2e: $5f
    call nz, $9bb5                                ; $5e2f: $c4 $b5 $9b
    ld l, $df                                     ; $5e32: $2e $df
    pop af                                        ; $5e34: $f1
    rrca                                          ; $5e35: $0f
    add h                                         ; $5e36: $84
    ld sp, hl                                     ; $5e37: $f9
    sub b                                         ; $5e38: $90
    reti                                          ; $5e39: $d9


    ld [de], a                                    ; $5e3a: $12
    jr nz, jr_056_5e3f                            ; $5e3b: $20 $02

    dec a                                         ; $5e3d: $3d
    xor a                                         ; $5e3e: $af

jr_056_5e3f:
    ld c, d                                       ; $5e3f: $4a
    or e                                          ; $5e40: $b3
    ret nc                                        ; $5e41: $d0

    or c                                          ; $5e42: $b1
    inc h                                         ; $5e43: $24
    ld e, a                                       ; $5e44: $5f
    call nz, $9bb5                                ; $5e45: $c4 $b5 $9b
    ld l, $1f                                     ; $5e48: $2e $1f
    ld a, [hl]                                    ; $5e4a: $7e

Jump_056_5e4b:
    pop hl                                        ; $5e4b: $e1
    sub e                                         ; $5e4c: $93
    reti                                          ; $5e4d: $d9


    ld [de], a                                    ; $5e4e: $12
    jr nz, @+$04                                  ; $5e4f: $20 $02

    db $dd                                        ; $5e51: $dd
    and $25                                       ; $5e52: $e6 $25
    cp a                                          ; $5e54: $bf
    and d                                         ; $5e55: $a2
    ld l, e                                       ; $5e56: $6b
    daa                                           ; $5e57: $27
    db $e3                                        ; $5e58: $e3
    ld h, l                                       ; $5e59: $65
    inc a                                         ; $5e5a: $3c
    ld h, l                                       ; $5e5b: $65
    reti                                          ; $5e5c: $d9


    ld l, e                                       ; $5e5d: $6b
    xor d                                         ; $5e5e: $aa
    cp $f0                                        ; $5e5f: $fe $f0
    ccf                                           ; $5e61: $3f
    db $ec                                        ; $5e62: $ec
    jp c, Jump_000_2fc1                           ; $5e63: $da $c1 $2f

    ld e, d                                       ; $5e66: $5a
    ld d, d                                       ; $5e67: $52

jr_056_5e68:
    ld l, a                                       ; $5e68: $6f
    rla                                           ; $5e69: $17
    ld e, h                                       ; $5e6a: $5c
    ld a, h                                       ; $5e6b: $7c
    db $d3                                        ; $5e6c: $d3
    push hl                                       ; $5e6d: $e5
    ld c, e                                       ; $5e6e: $4b
    cp c                                          ; $5e6f: $b9
    rst $28                                       ; $5e70: $ef
    ld b, d                                       ; $5e71: $42
    inc b                                         ; $5e72: $04
    or a                                          ; $5e73: $b7
    ld e, b                                       ; $5e74: $58
    sub l                                         ; $5e75: $95
    ld h, a                                       ; $5e76: $67
    sub c                                         ; $5e77: $91

jr_056_5e78:
    add hl, hl                                    ; $5e78: $29
    set 2, d                                      ; $5e79: $cb $d2
    ld a, $ec                                     ; $5e7b: $3e $ec
    add l                                         ; $5e7d: $85
    ld a, [c]                                     ; $5e7e: $f2
    add hl, sp                                    ; $5e7f: $39
    pop af                                        ; $5e80: $f1
    dec d                                         ; $5e81: $15
    ld sp, hl                                     ; $5e82: $f9
    cp [hl]                                       ; $5e83: $be
    dec h                                         ; $5e84: $25
    push af                                       ; $5e85: $f5
    halt                                          ; $5e86: $76
    pop bc                                        ; $5e87: $c1
    push bc                                       ; $5e88: $c5
    scf                                           ; $5e89: $37
    ld e, l                                       ; $5e8a: $5d
    cp [hl]                                       ; $5e8b: $be
    sub h                                         ; $5e8c: $94
    ei                                            ; $5e8d: $fb
    ld l, $44                                     ; $5e8e: $2e $44
    add hl, hl                                    ; $5e90: $29
    call nc, $96e8                                ; $5e91: $d4 $e8 $96
    sbc c                                         ; $5e94: $99
    or l                                          ; $5e95: $b5
    ld d, e                                       ; $5e96: $53
    ld a, [$5788]                                 ; $5e97: $fa $88 $57
    ei                                            ; $5e9a: $fb
    ld sp, $f87a                                  ; $5e9b: $31 $7a $f8
    rra                                           ; $5e9e: $1f
    ld [hl], $cf                                  ; $5e9f: $36 $cf
    ld [hl-], a                                   ; $5ea1: $32
    adc e                                         ; $5ea2: $8b
    rrca                                          ; $5ea3: $0f
    ld a, e                                       ; $5ea4: $7b
    rlca                                          ; $5ea5: $07
    db $eb                                        ; $5ea6: $eb
    call $b7a9                                    ; $5ea7: $cd $a9 $b7
    dec bc                                        ; $5eaa: $0b
    ld l, $be                                     ; $5eab: $2e $be
    jp hl                                         ; $5ead: $e9


Jump_056_5eae:
    ld a, [c]                                     ; $5eae: $f2
    and l                                         ; $5eaf: $a5
    call c, Call_000_2177                         ; $5eb0: $dc $77 $21
    ld [bc], a                                    ; $5eb3: $02
    add hl, hl                                    ; $5eb4: $29
    ld hl, sp+$45                                 ; $5eb5: $f8 $45
    bit 3, h                                      ; $5eb7: $cb $5c
    and e                                         ; $5eb9: $a3
    ld [hl], e                                    ; $5eba: $73
    ld [hl], c                                    ; $5ebb: $71
    ld l, c                                       ; $5ebc: $69
    ld e, d                                       ; $5ebd: $5a
    or e                                          ; $5ebe: $b3
    jr z, jr_056_5e68                             ; $5ebf: $28 $a7

    sbc $2e                                       ; $5ec1: $de $2e
    cp b                                          ; $5ec3: $b8
    ld hl, sp-$5a                                 ; $5ec4: $f8 $a6
    res 2, a                                      ; $5ec6: $cb $97
    ld [hl], d                                    ; $5ec8: $72
    rst $18                                       ; $5ec9: $df
    add l                                         ; $5eca: $85
    ld [$e6dd], sp                                ; $5ecb: $08 $dd $e6
    and l                                         ; $5ece: $a5
    ld a, l                                       ; $5ecf: $7d
    ret c                                         ; $5ed0: $d8

    db $eb                                        ; $5ed1: $eb
    jr c, @-$72                                   ; $5ed2: $38 $8c

    ld a, b                                       ; $5ed4: $78
    or l                                          ; $5ed5: $b5
    add e                                         ; $5ed6: $83
    ld e, a                                       ; $5ed7: $5f
    db $e4                                        ; $5ed8: $e4
    call nc, $e0bb                                ; $5ed9: $d4 $bb $e0
    ld [c], a                                     ; $5edc: $e2

Jump_056_5edd:
    sbc e                                         ; $5edd: $9b
    ld l, $5f                                     ; $5ede: $2e $5f
    jp z, $177d                                   ; $5ee0: $ca $7d $17

Jump_056_5ee3:
    ld [hl+], a                                   ; $5ee3: $22
    db $dd                                        ; $5ee4: $dd

Jump_056_5ee5:
    and $a5                                       ; $5ee5: $e6 $a5
    ld a, l                                       ; $5ee7: $7d
    ret c                                         ; $5ee8: $d8

    db $eb                                        ; $5ee9: $eb
    jr c, jr_056_5e78                             ; $5eea: $38 $8c

    ld a, b                                       ; $5eec: $78
    or l                                          ; $5eed: $b5
    add e                                         ; $5eee: $83
    ld e, a                                       ; $5eef: $5f
    db $e4                                        ; $5ef0: $e4
    call nc, $e0bb                                ; $5ef1: $d4 $bb $e0
    ld [c], a                                     ; $5ef4: $e2
    sbc e                                         ; $5ef5: $9b
    ld l, $5f                                     ; $5ef6: $2e $5f
    jp z, $177d                                   ; $5ef8: $ca $7d $17

    ld [hl+], a                                   ; $5efb: $22
    ld a, l                                       ; $5efc: $7d
    ld e, $02                                     ; $5efd: $1e $02
    rst $30                                       ; $5eff: $f7
    ld hl, sp+$23                                 ; $5f00: $f8 $23
    db $db                                        ; $5f02: $db
    ld l, [hl]                                    ; $5f03: $6e
    cp d                                          ; $5f04: $ba
    ld a, h                                       ; $5f05: $7c
    daa                                           ; $5f06: $27
    jr nz, jr_056_5f30                            ; $5f07: $20 $27

    jr nz, jr_056_5f82                            ; $5f09: $20 $77

    halt                                          ; $5f0b: $76
    cp d                                          ; $5f0c: $ba
    ld c, b                                       ; $5f0d: $48
    inc b                                         ; $5f0e: $04
    add hl, hl                                    ; $5f0f: $29
    ld l, [hl]                                    ; $5f10: $6e
    ld bc, $3701                                  ; $5f11: $01 $01 $37
    daa                                           ; $5f14: $27
    and a                                         ; $5f15: $a7
    jp hl                                         ; $5f16: $e9


    call z, $8008                                 ; $5f17: $cc $08 $80
    db $dd                                        ; $5f1a: $dd
    jp c, Jump_056_7097                           ; $5f1b: $da $97 $70

    sub $e3                                       ; $5f1e: $d6 $e3
    ld a, b                                       ; $5f20: $78
    inc e                                         ; $5f21: $1c
    dec sp                                        ; $5f22: $3b
    ld l, [hl]                                    ; $5f23: $6e
    ld l, $04                                     ; $5f24: $2e $04
    add b                                         ; $5f26: $80
    db $dd                                        ; $5f27: $dd
    ld h, d                                       ; $5f28: $62
    add $d8                                       ; $5f29: $c6 $d8
    ld [hl-], a                                   ; $5f2b: $32
    cp $6d                                        ; $5f2c: $fe $6d
    add b                                         ; $5f2e: $80
    db $dd                                        ; $5f2f: $dd

jr_056_5f30:
    jp c, Jump_056_7097                           ; $5f30: $da $97 $70

    ld b, [hl]                                    ; $5f33: $46
    jr c, jr_056_5f54                             ; $5f34: $38 $1e

    rst $00                                       ; $5f36: $c7
    adc [hl]                                      ; $5f37: $8e
    sbc e                                         ; $5f38: $9b
    dec bc                                        ; $5f39: $0b
    ld [hl+], a                                   ; $5f3a: $22
    add b                                         ; $5f3b: $80
    rst $38                                       ; $5f3c: $ff
    ld e, h                                       ; $5f3d: $5c
    ld a, e                                       ; $5f3e: $7b
    xor l                                         ; $5f3f: $ad
    pop af                                        ; $5f40: $f1
    ld d, a                                       ; $5f41: $57
    inc hl                                        ; $5f42: $23
    xor c                                         ; $5f43: $a9
    jp hl                                         ; $5f44: $e9


    inc e                                         ; $5f45: $1c
    ld a, a                                       ; $5f46: $7f
    adc h                                         ; $5f47: $8c
    inc sp                                        ; $5f48: $33
    or e                                          ; $5f49: $b3
    ld l, e                                       ; $5f4a: $6b
    jp hl                                         ; $5f4b: $e9


    ld a, d                                       ; $5f4c: $7a
    jp c, Jump_056_4ba5                           ; $5f4d: $da $a5 $4b

    adc a                                         ; $5f50: $8f
    inc a                                         ; $5f51: $3c
    sbc l                                         ; $5f52: $9d
    rrca                                          ; $5f53: $0f

jr_056_5f54:
    ld l, e                                       ; $5f54: $6b
    ld a, [bc]                                    ; $5f55: $0a
    ld [hl+], a                                   ; $5f56: $22
    dec a                                         ; $5f57: $3d
    ret                                           ; $5f58: $c9


    db $db                                        ; $5f59: $db
    ld [hl], c                                    ; $5f5a: $71

Call_056_5f5b:
    ld c, l                                       ; $5f5b: $4d
    jp hl                                         ; $5f5c: $e9


    inc sp                                        ; $5f5d: $33
    or e                                          ; $5f5e: $b3
    xor e                                         ; $5f5f: $ab
    rla                                           ; $5f60: $17
    ld [bc], a                                    ; $5f61: $02
    or a                                          ; $5f62: $b7
    pop af                                        ; $5f63: $f1
    xor d                                         ; $5f64: $aa
    xor e                                         ; $5f65: $ab
    inc l                                         ; $5f66: $2c
    jp z, Jump_056_5e4b                           ; $5f67: $ca $4b $5e

    dec bc                                        ; $5f6a: $0b
    ld [hl], b                                    ; $5f6b: $70
    rst $30                                       ; $5f6c: $f7
    ld h, h                                       ; $5f6d: $64
    rrca                                          ; $5f6e: $0f
    cp e                                          ; $5f6f: $bb
    ld a, d                                       ; $5f70: $7a
    ld hl, $1a29                                  ; $5f71: $21 $29 $1a
    ld d, c                                       ; $5f74: $51
    ld [hl], b                                    ; $5f75: $70
    rst $30                                       ; $5f76: $f7
    ld h, h                                       ; $5f77: $64
    rrca                                          ; $5f78: $0f
    cp e                                          ; $5f79: $bb
    ld a, d                                       ; $5f7a: $7a
    ld hl, $96dd                                  ; $5f7b: $21 $dd $96
    push bc                                       ; $5f7e: $c5
    adc [hl]                                      ; $5f7f: $8e
    sbc e                                         ; $5f80: $9b
    ld h, l                                       ; $5f81: $65

jr_056_5f82:
    ld sp, $761f                                  ; $5f82: $31 $1f $76
    db $ed                                        ; $5f85: $ed
    and [hl]                                      ; $5f86: $a6

Call_056_5f87:
    bit 6, a                                      ; $5f87: $cb $77
    ld [bc], a                                    ; $5f89: $02
    ld b, h                                       ; $5f8a: $44
    db $dd                                        ; $5f8b: $dd
    sub [hl]                                      ; $5f8c: $96
    cp c                                          ; $5f8d: $b9
    sub $c9                                       ; $5f8e: $d6 $c9
    ld c, e                                       ; $5f90: $4b
    sub a                                         ; $5f91: $97
    ld e, $59                                     ; $5f92: $1e $59
    cp e                                          ; $5f94: $bb
    ld b, e                                       ; $5f95: $43
    xor l                                         ; $5f96: $ad
    db $e3                                        ; $5f97: $e3
    or b                                          ; $5f98: $b0
    or h                                          ; $5f99: $b4
    and [hl]                                      ; $5f9a: $a6
    halt                                          ; $5f9b: $76
    db $d3                                        ; $5f9c: $d3
    push hl                                       ; $5f9d: $e5
    dec sp                                        ; $5f9e: $3b
    ld h, c                                       ; $5f9f: $61
    ld [hl], h                                    ; $5fa0: $74
    xor [hl]                                      ; $5fa1: $ae
    add hl, hl                                    ; $5fa2: $29

Jump_056_5fa3:
    dec bc                                        ; $5fa3: $0b
    ld b, h                                       ; $5fa4: $44
    or a                                          ; $5fa5: $b7
    push de                                       ; $5fa6: $d5
    sub h                                         ; $5fa7: $94
    ld a, c                                       ; $5fa8: $79
    sub [hl]                                      ; $5fa9: $96
    cp l                                          ; $5faa: $bd
    add h                                         ; $5fab: $84
    ld e, a                                       ; $5fac: $5f
    ld [hl], e                                    ; $5fad: $73
    cpl                                           ; $5fae: $2f
    inc b                                         ; $5faf: $04
    db $dd                                        ; $5fb0: $dd
    ld a, [$5788]                                 ; $5fb1: $fa $88 $57
    ei                                            ; $5fb4: $fb
    ld sp, $927a                                  ; $5fb5: $31 $7a $92
    db $e3                                        ; $5fb8: $e3
    jp c, $c98f                                   ; $5fb9: $da $8f $c9

    ld d, a                                       ; $5fbc: $57
    xor [hl]                                      ; $5fbd: $ae
    pop af                                        ; $5fbe: $f1
    ld l, a                                       ; $5fbf: $6f
    ld d, e                                       ; $5fc0: $53
    ld h, [hl]                                    ; $5fc1: $66
    adc b                                         ; $5fc2: $88
    nop                                           ; $5fc3: $00
    ld [hl], a                                    ; $5fc4: $77
    db $eb                                        ; $5fc5: $eb
    inc [hl]                                      ; $5fc6: $34
    ld l, l                                       ; $5fc7: $6d
    add hl, sp                                    ; $5fc8: $39
    cp e                                          ; $5fc9: $bb
    sbc c                                         ; $5fca: $99
    call z, $f8ec                                 ; $5fcb: $cc $ec $f8
    ld [$18eb], a                                 ; $5fce: $ea $eb $18
    ld bc, $e6dd                                  ; $5fd1: $01 $dd $e6
    cp c                                          ; $5fd4: $b9
    sub $3e                                       ; $5fd5: $d6 $3e
    di                                            ; $5fd7: $f3
    and d                                         ; $5fd8: $a2
    inc a                                         ; $5fd9: $3c
    sub d                                         ; $5fda: $92
    ld b, a                                       ; $5fdb: $47
    ld d, d                                       ; $5fdc: $52
    ld l, e                                       ; $5fdd: $6b
    cpl                                           ; $5fde: $2f
    cp b                                          ; $5fdf: $b8
    call z, Call_056_73a3                         ; $5fe0: $cc $a3 $73
    xor l                                         ; $5fe3: $ad
    ld c, e                                       ; $5fe4: $4b
    db $e3                                        ; $5fe5: $e3
    ld [hl], h                                    ; $5fe6: $74
    ei                                            ; $5fe7: $fb
    ld sp, $219a                                  ; $5fe8: $31 $9a $21
    add h                                         ; $5feb: $84
    ld [$c93d], sp                                ; $5fec: $08 $3d $c9
    dec de                                        ; $5fef: $1b
    pop af                                        ; $5ff0: $f1
    ld l, d                                       ; $5ff1: $6a
    ld c, d                                       ; $5ff2: $4a
    rra                                           ; $5ff3: $1f
    or l                                          ; $5ff4: $b5
    db $e3                                        ; $5ff5: $e3
    ld d, $dc                                     ; $5ff6: $16 $dc
    dec bc                                        ; $5ff8: $0b
    ld bc, $e6dd                                  ; $5ff9: $01 $dd $e6
    cp c                                          ; $5ffc: $b9
    sub $3e                                       ; $5ffd: $d6 $3e
    di                                            ; $5fff: $f3
    and d                                         ; $6000: $a2
    inc a                                         ; $6001: $3c
    sub d                                         ; $6002: $92
    ld b, a                                       ; $6003: $47
    ld d, d                                       ; $6004: $52
    ld l, e                                       ; $6005: $6b
    cpl                                           ; $6006: $2f
    cp b                                          ; $6007: $b8
    call z, Call_056_73a3                         ; $6008: $cc $a3 $73
    xor l                                         ; $600b: $ad
    ld c, e                                       ; $600c: $4b
    db $e3                                        ; $600d: $e3
    ld [hl], h                                    ; $600e: $74
    ei                                            ; $600f: $fb
    ld sp, $219a                                  ; $6010: $31 $9a $21
    add h                                         ; $6013: $84
    ld [$9a3d], sp                                ; $6014: $08 $3d $9a
    db $10                                        ; $6017: $10
    call c, $d87e                                 ; $6018: $dc $7e $d8
    db $e3                                        ; $601b: $e3
    ld [hl], l                                    ; $601c: $75
    inc e                                         ; $601d: $1c
    ld b, [hl]                                    ; $601e: $46
    inc a                                         ; $601f: $3c
    and l                                         ; $6020: $a5
    inc a                                         ; $6021: $3c
    ret                                           ; $6022: $c9


    sbc [hl]                                      ; $6023: $9e
    jp nc, $fc97                                  ; $6024: $d2 $97 $fc

    sub $bc                                       ; $6027: $d6 $bc
    ret c                                         ; $6029: $d8

    jp hl                                         ; $602a: $e9


    ld [hl+], a                                   ; $602b: $22
    dec c                                         ; $602c: $0d
    ld de, $e6dd                                  ; $602d: $11 $dd $e6
    dec h                                         ; $6030: $25
    xor a                                         ; $6031: $af
    halt                                          ; $6032: $76
    inc [hl]                                      ; $6033: $34
    and d                                         ; $6034: $a2
    ldh [rHDMA2], a                               ; $6035: $e0 $52
    ld a, [hl]                                    ; $6037: $7e
    adc h                                         ; $6038: $8c
    xor [hl]                                      ; $6039: $ae
    sub c                                         ; $603a: $91
    call nc, Call_056_4f1e                        ; $603b: $d4 $1e $4f
    jp hl                                         ; $603e: $e9


    ei                                            ; $603f: $fb
    ld sp, $277a                                  ; $6040: $31 $7a $27
    ld a, [hl]                                    ; $6043: $7e
    sbc d                                         ; $6044: $9a
    ld e, l                                       ; $6045: $5d
    jp Jump_000_2f96                              ; $6046: $c3 $96 $2f


    and c                                         ; $6049: $a1
    rla                                           ; $604a: $17
    ld [bc], a                                    ; $604b: $02
    add b                                         ; $604c: $80
    sbc a                                         ; $604d: $9f
    or h                                          ; $604e: $b4
    rra                                           ; $604f: $1f
    ld b, [hl]                                    ; $6050: $46
    sub $3f                                       ; $6051: $d6 $3f
    ld [hl], e                                    ; $6053: $73
    db $ed                                        ; $6054: $ed
    and [hl]                                      ; $6055: $a6
    bit 6, a                                      ; $6056: $cb $77
    ld [bc], a                                    ; $6058: $02
    ld b, h                                       ; $6059: $44
    db $dd                                        ; $605a: $dd
    sub [hl]                                      ; $605b: $96
    cp c                                          ; $605c: $b9
    sub $c9                                       ; $605d: $d6 $c9
    ei                                            ; $605f: $fb
    ld sp, $a27a                                  ; $6060: $31 $7a $a2
    add c                                         ; $6063: $81
    db $10                                        ; $6064: $10
    xor [hl]                                      ; $6065: $ae
    adc a                                         ; $6066: $8f
    jp $9ad2                                      ; $6067: $c3 $d2 $9a


    jp c, $974d                                   ; $606a: $da $4d $97

    rst $28                                       ; $606d: $ef
    add h                                         ; $606e: $84
    pop de                                        ; $606f: $d1
    cp c                                          ; $6070: $b9
    and [hl]                                      ; $6071: $a6
    inc l                                         ; $6072: $2c
    db $10                                        ; $6073: $10
    ld bc, $d5b7                                  ; $6074: $01 $b7 $d5
    sub d                                         ; $6077: $92
    ccf                                           ; $6078: $3f
    rrc a                                         ; $6079: $cb $0f
    xor $85                                       ; $607b: $ee $85
    nop                                           ; $607d: $00
    add hl, hl                                    ; $607e: $29
    call nc, $93f0                                ; $607f: $d4 $f0 $93
    ldh [$9d], a                                  ; $6082: $e0 $9d
    rra                                           ; $6084: $1f
    sub h                                         ; $6085: $94
    ld l, e                                       ; $6086: $6b
    call nz, Call_000_29ab                        ; $6087: $c4 $ab $29
    ld a, l                                       ; $608a: $7d
    ccf                                           ; $608b: $3f
    ld b, [hl]                                    ; $608c: $46
    ld b, e                                       ; $608d: $43
    inc b                                         ; $608e: $04
    add hl, hl                                    ; $608f: $29
    ld a, d                                       ; $6090: $7a
    adc h                                         ; $6091: $8c
    xor [hl]                                      ; $6092: $ae
    add e                                         ; $6093: $83
    rra                                           ; $6094: $1f
    di                                            ; $6095: $f3
    reti                                          ; $6096: $d9


    sbc l                                         ; $6097: $9d
    ld a, [c]                                     ; $6098: $f2
    ld c, [hl]                                    ; $6099: $4e
    ld b, h                                       ; $609a: $44
    add b                                         ; $609b: $80
    db $dd                                        ; $609c: $dd
    ld h, d                                       ; $609d: $62
    add $d8                                       ; $609e: $c6 $d8
    ld [hl-], a                                   ; $60a0: $32
    cp $6d                                        ; $60a1: $fe $6d
    add hl, hl                                    ; $60a3: $29
    ld a, d                                       ; $60a4: $7a
    adc h                                         ; $60a5: $8c
    xor [hl]                                      ; $60a6: $ae
    add e                                         ; $60a7: $83
    rra                                           ; $60a8: $1f
    di                                            ; $60a9: $f3
    reti                                          ; $60aa: $d9


    db $dd                                        ; $60ab: $dd
    cpl                                           ; $60ac: $2f
    db $fc                                        ; $60ad: $fc
    jr z, @-$0f                                   ; $60ae: $28 $ef

    ld b, h                                       ; $60b0: $44
    adc b                                         ; $60b1: $88
    nop                                           ; $60b2: $00
    ld a, l                                       ; $60b3: $7d
    inc e                                         ; $60b4: $1c
    ld b, [hl]                                    ; $60b5: $46
    ld [hl], $7f                                  ; $60b6: $36 $7f
    rst $10                                       ; $60b8: $d7
    ld a, [hl]                                    ; $60b9: $7e
    adc h                                         ; $60ba: $8c
    ld e, $b5                                     ; $60bb: $1e $b5
    ret c                                         ; $60bd: $d8

    jp hl                                         ; $60be: $e9


    ld [hl+], a                                   ; $60bf: $22
    dec a                                         ; $60c0: $3d
    cp $2d                                        ; $60c1: $fe $2d
    db $fd                                        ; $60c3: $fd
    and d                                         ; $60c4: $a2
    ld [hl], a                                    ; $60c5: $77
    jp c, $d18f                                   ; $60c6: $da $8f $d1

    push af                                       ; $60c9: $f5
    ld e, l                                       ; $60ca: $5d
    db $10                                        ; $60cb: $10
    ld b, d                                       ; $60cc: $42
    ld [hl+], a                                   ; $60cd: $22
    ld a, c                                       ; $60ce: $79
    inc hl                                        ; $60cf: $23
    ld e, [hl]                                    ; $60d0: $5e
    ld c, l                                       ; $60d1: $4d
    jp hl                                         ; $60d2: $e9


    ld d, e                                       ; $60d3: $53
    xor a                                         ; $60d4: $af
    rla                                           ; $60d5: $17
    ld [bc], a                                    ; $60d6: $02
    dec a                                         ; $60d7: $3d
    ret                                           ; $60d8: $c9


    ld e, e                                       ; $60d9: $5b
    ld a, h                                       ; $60da: $7c
    or d                                          ; $60db: $b2
    adc [hl]                                      ; $60dc: $8e
    jp Jump_056_7c4e                              ; $60dd: $c3 $4e $7c


    inc [hl]                                      ; $60e0: $34
    db $ed                                        ; $60e1: $ed
    add hl, hl                                    ; $60e2: $29
    add a                                         ; $60e3: $87
    ld e, [hl]                                    ; $60e4: $5e
    ld [$64f7], sp                                ; $60e5: $08 $f7 $64
    rst $28                                       ; $60e8: $ef
    dec h                                         ; $60e9: $25
    ld d, e                                       ; $60ea: $53
    and $75                                       ; $60eb: $e6 $75
    inc e                                         ; $60ed: $1c
    sub $7e                                       ; $60ee: $d6 $7e
    ld [hl], h                                    ; $60f0: $74
    dec l                                         ; $60f1: $2d
    db $ed                                        ; $60f2: $ed
    jp Jump_056_77a9                              ; $60f3: $c3 $a9 $77


    ld c, a                                       ; $60f6: $4f
    or $b0                                        ; $60f7: $f6 $b0
    xor e                                         ; $60f9: $ab
    rla                                           ; $60fa: $17
    ld [bc], a                                    ; $60fb: $02
    add b                                         ; $60fc: $80
    db $dd                                        ; $60fd: $dd
    or h                                          ; $60fe: $b4
    ld d, e                                       ; $60ff: $53
    and $b5                                       ; $6100: $e6 $b5
    ld l, $b5                                     ; $6102: $2e $b5
    ld c, [hl]                                    ; $6104: $4e
    ld e, [hl]                                    ; $6105: $5e
    ei                                            ; $6106: $fb
    call z, Call_056_7a3b                         ; $6107: $cc $3b $7a
    ld sp, $3ddc                                  ; $610a: $31 $dc $3d
    reti                                          ; $610d: $d9


    jp Jump_056_5eae                              ; $610e: $c3 $ae $5e


    ld [$bcb7], sp                                ; $6111: $08 $b7 $bc
    ld a, [c]                                     ; $6114: $f2
    ld l, [hl]                                    ; $6115: $6e
    cp d                                          ; $6116: $ba
    ld a, h                                       ; $6117: $7c
    daa                                           ; $6118: $27
    ld b, b                                       ; $6119: $40
    inc b                                         ; $611a: $04
    ld a, l                                       ; $611b: $7d
    inc e                                         ; $611c: $1c
    ld d, $9f                                     ; $611d: $16 $9f
    inc l                                         ; $611f: $2c
    db $fc                                        ; $6120: $fc
    add hl, hl                                    ; $6121: $29
    add a                                         ; $6122: $87
    ld e, c                                       ; $6123: $59
    and [hl]                                      ; $6124: $a6
    db $fc                                        ; $6125: $fc
    db $db                                        ; $6126: $db
    rrca                                          ; $6127: $0f
    cp e                                          ; $6128: $bb
    jp hl                                         ; $6129: $e9


    ld a, [c]                                     ; $612a: $f2
    sbc l                                         ; $612b: $9d
    nop                                           ; $612c: $00
    ld de, $5d3d                                  ; $612d: $11 $3d $5d
    push hl                                       ; $6130: $e5
    inc sp                                        ; $6131: $33
    ld h, l                                       ; $6132: $65
    ld e, [hl]                                    ; $6133: $5e
    jr z, jr_056_61b5                             ; $6134: $28 $7f

    sbc [hl]                                      ; $6136: $9e
    adc $bd                                       ; $6137: $ce $bd
    db $10                                        ; $6139: $10
    ld a, l                                       ; $613a: $7d
    inc e                                         ; $613b: $1c
    add $95                                       ; $613c: $c6 $95
    ld l, e                                       ; $613e: $6b
    jp z, Jump_056_74bc                           ; $613f: $ca $bc $74

    ei                                            ; $6142: $fb
    or l                                          ; $6143: $b5
    or $99                                        ; $6144: $f6 $99
    add a                                         ; $6146: $87
    dec [hl]                                      ; $6147: $35
    ld e, $9d                                     ; $6148: $1e $9d
    ld l, e                                       ; $614a: $6b

Call_056_614b:
    ld [$0ecb], a                                 ; $614b: $ea $cb $0e
    ld a, [hl]                                    ; $614e: $7e
    ld de, $9eee                                  ; $614f: $11 $ee $9e
    db $ec                                        ; $6152: $ec
    ld h, c                                       ; $6153: $61
    ld d, a                                       ; $6154: $57
    cpl                                           ; $6155: $2f
    inc b                                         ; $6156: $04
    ld [hl], a                                    ; $6157: $77
    ccf                                           ; $6158: $3f
    push af                                       ; $6159: $f5
    ldh a, [$ee]                                  ; $615a: $f0 $ee
    ld a, [hl]                                    ; $615c: $7e
    dec l                                         ; $615d: $2d
    ld a, [hl]                                    ; $615e: $7e
    ld b, c                                       ; $615f: $41
    add b                                         ; $6160: $80
    db $dd                                        ; $6161: $dd
    ld h, d                                       ; $6162: $62
    add $d8                                       ; $6163: $c6 $d8
    ld [hl-], a                                   ; $6165: $32
    cp $6d                                        ; $6166: $fe $6d
    ld hl, sp-$57                                 ; $6168: $f8 $a9
    add a                                         ; $616a: $87
    ld [hl], a                                    ; $616b: $77
    rst $30                                       ; $616c: $f7
    ld l, e                                       ; $616d: $6b
    pop af                                        ; $616e: $f1
    bit 3, c                                      ; $616f: $cb $59
    ld l, a                                       ; $6171: $6f
    daa                                           ; $6172: $27
    ld c, a                                       ; $6173: $4f
    ret c                                         ; $6174: $d8

    dec [hl]                                      ; $6175: $35
    ld a, [hl-]                                   ; $6176: $3a
    rst $10                                       ; $6177: $d7
    inc l                                         ; $6178: $2c
    ld b, h                                       ; $6179: $44
    ld [c], a                                     ; $617a: $e2
    jp c, $6693                                   ; $617b: $da $93 $66

    dec h                                         ; $617e: $25
    ld e, a                                       ; $617f: $5f

jr_056_6180:
    ld [bc], a                                    ; $6180: $02
    ld b, h                                       ; $6181: $44
    dec a                                         ; $6182: $3d
    xor a                                         ; $6183: $af
    and [hl]                                      ; $6184: $a6
    db $f4                                        ; $6185: $f4
    ld c, c                                       ; $6186: $49
    or $94                                        ; $6187: $f6 $94
    cp [hl]                                       ; $6189: $be
    db $e4                                        ; $618a: $e4
    or a                                          ; $618b: $b7
    dec e                                         ; $618c: $1d
    or a                                          ; $618d: $b7
    ld h, b                                       ; $618e: $60
    db $ed                                        ; $618f: $ed
    ld [de], a                                    ; $6190: $12
    adc e                                         ; $6191: $8b
    ld e, b                                       ; $6192: $58

Call_056_6193:
    add [hl]                                      ; $6193: $86
    cp a                                          ; $6194: $bf
    db $f4                                        ; $6195: $f4
    jp c, $d4ed                                   ; $6196: $da $ed $d4

    adc [hl]                                      ; $6199: $8e
    ld hl, $3d02                                  ; $619a: $21 $02 $3d
    ret                                           ; $619d: $c9


    dec de                                        ; $619e: $1b
    sub a                                         ; $619f: $97
    dec h                                         ; $61a0: $25
    cp b                                          ; $61a1: $b8
    and [hl]                                      ; $61a2: $a6
    db $f4                                        ; $61a3: $f4
    ld e, [hl]                                    ; $61a4: $5e
    db $eb                                        ; $61a5: $eb
    db $e3                                        ; $61a6: $e3
    jr nc, jr_056_6180                            ; $61a7: $30 $d7

    adc $8f                                       ; $61a9: $ce $8f
    pop de                                        ; $61ab: $d1
    dec [hl]                                      ; $61ac: $35
    sub d                                         ; $61ad: $92
    jp c, $25e3                                   ; $61ae: $da $e3 $25

    ld a, a                                       ; $61b1: $7f
    call nz, $a9ab                                ; $61b2: $c4 $ab $a9

jr_056_61b5:
    cpl                                           ; $61b5: $2f
    dec sp                                        ; $61b6: $3b
    call c, $e555                                 ; $61b7: $dc $55 $e5
    halt                                          ; $61ba: $76
    inc c                                         ; $61bb: $0c
    ld de, $96dd                                  ; $61bc: $11 $dd $96
    add hl, hl                                    ; $61bf: $29
    rst $10                                       ; $61c0: $d7
    sub d                                         ; $61c1: $92
    rst $18                                       ; $61c2: $df
    ld d, $5e                                     ; $61c3: $16 $5e
    dec a                                         ; $61c5: $3d
    ld h, c                                       ; $61c6: $61
    rla                                           ; $61c7: $17
    cpl                                           ; $61c8: $2f
    ld [hl], $4f                                  ; $61c9: $36 $4f
    add hl, sp                                    ; $61cb: $39
    ret nz                                        ; $61cc: $c0

    db $dd                                        ; $61cd: $dd
    sub e                                         ; $61ce: $93
    dec a                                         ; $61cf: $3d
    db $ec                                        ; $61d0: $ec
    ld [$0085], a                                 ; $61d1: $ea $85 $00
    add hl, hl                                    ; $61d4: $29
    call nc, Call_056_468e                        ; $61d5: $d4 $8e $46
    sub h                                         ; $61d8: $94
    halt                                          ; $61d9: $76

Call_056_61da:
    adc c                                         ; $61da: $89
    ld b, l                                       ; $61db: $45
    inc l                                         ; $61dc: $2c
    jp $e05f                                      ; $61dd: $c3 $5f $e0


    xor $c9                                       ; $61e0: $ee $c9
    ld e, $76                                     ; $61e2: $1e $76
    push af                                       ; $61e4: $f5
    ld b, d                                       ; $61e5: $42
    db $dd                                        ; $61e6: $dd
    and $c5                                       ; $61e7: $e6 $c5
    ld a, h                                       ; $61e9: $7c
    ret c                                         ; $61ea: $d8

    dec [hl]                                      ; $61eb: $35
    push hl                                       ; $61ec: $e5
    or b                                          ; $61ed: $b0
    sbc e                                         ; $61ee: $9b
    ld l, $df                                     ; $61ef: $2e $df
    add hl, bc                                    ; $61f1: $09
    db $10                                        ; $61f2: $10
    ld bc, $3b00                                  ; $61f3: $01 $00 $3b
    ld c, a                                       ; $61f6: $4f
    cp e                                          ; $61f7: $bb
    adc [hl]                                      ; $61f8: $8e
    jp Jump_000_2ea2                              ; $61f9: $c3 $a2 $2e


    ld [c], a                                     ; $61fc: $e2
    dec h                                         ; $61fd: $25
    ld l, [hl]                                    ; $61fe: $6e
    ld a, e                                       ; $61ff: $7b
    xor l                                         ; $6200: $ad
    pop af                                        ; $6201: $f1
    ld d, a                                       ; $6202: $57
    ld h, a                                       ; $6203: $67
    db $fc                                        ; $6204: $fc
    ld e, e                                       ; $6205: $5b
    ld e, d                                       ; $6206: $5a
    inc sp                                        ; $6207: $33
    push hl                                       ; $6208: $e5
    or b                                          ; $6209: $b0
    sbc e                                         ; $620a: $9b
    ld l, $df                                     ; $620b: $2e $df
    add hl, bc                                    ; $620d: $09
    db $10                                        ; $620e: $10
    ld bc, $bdf7                                  ; $620f: $01 $f7 $bd
    ld [hl], e                                    ; $6212: $73
    ld e, h                                       ; $6213: $5c
    ld d, e                                       ; $6214: $53
    and $5e                                       ; $6215: $e6 $5e
    ld [$e6dd], sp                                ; $6217: $08 $dd $e6
    cp c                                          ; $621a: $b9
    add [hl]                                      ; $621b: $86
    ld e, l                                       ; $621c: $5d
    or e                                          ; $621d: $b3
    ret z                                         ; $621e: $c8

    sub h                                         ; $621f: $94
    ld a, $e2                                     ; $6220: $3e $e2
    sub l                                         ; $6222: $95
    halt                                          ; $6223: $76
    ccf                                           ; $6224: $3f
    ld b, [hl]                                    ; $6225: $46
    rst $28                                       ; $6226: $ef
    inc a                                         ; $6227: $3c
    pop hl                                        ; $6228: $e1
    ld e, [hl]                                    ; $6229: $5e
    cp e                                          ; $622a: $bb
    daa                                           ; $622b: $27
    ld a, e                                       ; $622c: $7b
    ret c                                         ; $622d: $d8

    push de                                       ; $622e: $d5
    dec bc                                        ; $622f: $0b
    ld bc, $6029                                  ; $6230: $01 $29 $60
    ld l, h                                       ; $6233: $6c
    ld e, $c0                                     ; $6234: $1e $c0
    jp z, Jump_056_59ad                           ; $6236: $ca $ad $59

    add e                                         ; $6239: $83
    nop                                           ; $623a: $00
    or a                                          ; $623b: $b7
    push de                                       ; $623c: $d5
    sub h                                         ; $623d: $94
    ld a, c                                       ; $623e: $79
    and a                                         ; $623f: $a7
    db $fd                                        ; $6240: $fd
    jr jr_056_62a0                                ; $6241: $18 $5d

    ld a, a                                       ; $6243: $7f
    ld c, d                                       ; $6244: $4a
    ld e, a                                       ; $6245: $5f
    ld a, [c]                                     ; $6246: $f2
    db $db                                        ; $6247: $db
    adc b                                         ; $6248: $88
    rst $10                                       ; $6249: $d7
    ld l, e                                       ; $624a: $6b
    ld a, l                                       ; $624b: $7d
    inc e                                         ; $624c: $1c
    ld b, [hl]                                    ; $624d: $46
    cp h                                          ; $624e: $bc
    ld a, [de]                                    ; $624f: $1a
    ld a, [hl]                                    ; $6250: $7e
    rst $20                                       ; $6251: $e7
    ld a, b                                       ; $6252: $78
    and a                                         ; $6253: $a7
    adc e                                         ; $6254: $8b
    ld a, c                                       ; $6255: $79
    add hl, sp                                    ; $6256: $39
    inc l                                         ; $6257: $2c
    ld h, h                                       ; $6258: $64
    push bc                                       ; $6259: $c5
    db $10                                        ; $625a: $10
    ld bc, $53b7                                  ; $625b: $01 $b7 $53
    dec sp                                        ; $625e: $3b
    ld e, $91                                     ; $625f: $1e $91
    cp h                                          ; $6261: $bc
    add hl, hl                                    ; $6262: $29
    ld a, l                                       ; $6263: $7d
    call nz, Call_056_51ab                        ; $6264: $c4 $ab $51
    db $e3                                        ; $6267: $e3
    rst $18                                       ; $6268: $df
    jp nc, $881a                                  ; $6269: $d2 $1a $88

    nop                                           ; $626c: $00
    dec a                                         ; $626d: $3d
    ret                                           ; $626e: $c9


    ld e, e                                       ; $626f: $5b
    ld a, [c]                                     ; $6270: $f2
    db $db                                        ; $6271: $db
    sub h                                         ; $6272: $94
    ld a, $e2                                     ; $6273: $3e $e2
    ld c, l                                       ; $6275: $4d
    dec a                                         ; $6276: $3d
    db $ed                                        ; $6277: $ed
    ld c, [hl]                                    ; $6278: $4e
    ld a, h                                       ; $6279: $7c
    call z, $10bd                                 ; $627a: $cc $bd $10
    db $dd                                        ; $627d: $dd
    ld l, a                                       ; $627e: $6f
    ld l, h                                       ; $627f: $6c
    adc c                                         ; $6280: $89
    xor [hl]                                      ; $6281: $ae
    ld [hl], l                                    ; $6282: $75
    inc e                                         ; $6283: $1c
    and [hl]                                      ; $6284: $a6
    db $f4                                        ; $6285: $f4
    pop de                                        ; $6286: $d1
    ld d, h                                       ; $6287: $54
    ld c, l                                       ; $6288: $4d
    sbc c                                         ; $6289: $99
    ld [hl], a                                    ; $628a: $77
    cp d                                          ; $628b: $ba
    sbc b                                         ; $628c: $98
    daa                                           ; $628d: $27
    add hl, sp                                    ; $628e: $39
    jp nz, $93dd                                  ; $628f: $c2 $dd $93

    dec a                                         ; $6292: $3d
    db $ec                                        ; $6293: $ec
    ld [$0085], a                                 ; $6294: $ea $85 $00
    add b                                         ; $6297: $80
    ld l, b                                       ; $6298: $68
    ld e, d                                       ; $6299: $5a
    dec sp                                        ; $629a: $3b
    ld h, l                                       ; $629b: $65
    ld e, [hl]                                    ; $629c: $5e
    ld a, [c]                                     ; $629d: $f2
    ld l, d                                       ; $629e: $6a
    ld b, a                                       ; $629f: $47

jr_056_62a0:
    inc hl                                        ; $62a0: $23
    ld l, d                                       ; $62a1: $6a
    add hl, sp                                    ; $62a2: $39
    db $ec                                        ; $62a3: $ec
    call nz, $e187                                ; $62a4: $c4 $87 $e1
    xor $c9                                       ; $62a7: $ee $c9
    ld e, $76                                     ; $62a9: $1e $76
    push af                                       ; $62ab: $f5
    ld b, d                                       ; $62ac: $42
    scf                                           ; $62ad: $37
    scf                                           ; $62ae: $37
    push hl                                       ; $62af: $e5
    and $33                                       ; $62b0: $e6 $33
    push hl                                       ; $62b2: $e5
    rst $18                                       ; $62b3: $df
    ld a, [hl]                                    ; $62b4: $7e
    ret nc                                        ; $62b5: $d0

    ld l, $87                                     ; $62b6: $2e $87
    and l                                         ; $62b8: $a5
    ld e, a                                       ; $62b9: $5f
    ld a, c                                       ; $62ba: $79
    scf                                           ; $62bb: $37
    ld e, l                                       ; $62bc: $5d
    cp [hl]                                       ; $62bd: $be
    inc de                                        ; $62be: $13
    jr nz, jr_056_62c3                            ; $62bf: $20 $02

    ld a, l                                       ; $62c1: $7d
    inc e                                         ; $62c2: $1c

jr_056_62c3:
    ld d, $3b                                     ; $62c3: $16 $3b
    ld e, l                                       ; $62c5: $5d
    and h                                         ; $62c6: $a4
    ld l, e                                       ; $62c7: $6b
    jp z, Jump_000_3a32                           ; $62c8: $ca $32 $3a

    rst $10                                       ; $62cb: $d7
    ld l, [hl]                                    ; $62cc: $6e
    cp d                                          ; $62cd: $ba
    ld a, h                                       ; $62ce: $7c
    daa                                           ; $62cf: $27
    ld b, b                                       ; $62d0: $40
    inc b                                         ; $62d1: $04
    or a                                          ; $62d2: $b7
    push de                                       ; $62d3: $d5
    sub h                                         ; $62d4: $94
    ld a, c                                       ; $62d5: $79
    sub [hl]                                      ; $62d6: $96
    ld de, $944f                                  ; $62d7: $11 $4f $94
    sbc e                                         ; $62da: $9b
    halt                                          ; $62db: $76
    ld [$42f5], a                                 ; $62dc: $ea $f5 $42
    db $fd                                        ; $62df: $fd
    ld l, d                                       ; $62e0: $6a
    and a                                         ; $62e1: $a7
    call z, $cae3                                 ; $62e2: $cc $e3 $ca
    or l                                          ; $62e5: $b5
    adc [hl]                                      ; $62e6: $8e
    jp $1fc4                                      ; $62e7: $c3 $c4 $1f


    ld e, e                                       ; $62ea: $5b
    or $63                                        ; $62eb: $f6 $63
    db $f4                                        ; $62ed: $f4
    sub h                                         ; $62ee: $94
    ld a, $e2                                     ; $62ef: $3e $e2
    push de                                       ; $62f1: $d5
    inc h                                         ; $62f2: $24
    rst $00                                       ; $62f3: $c7
    pop af                                        ; $62f4: $f1
    ld l, a                                       ; $62f5: $6f
    db $10                                        ; $62f6: $10
    ld bc, $7e40                                  ; $62f7: $01 $40 $7e
    ld h, e                                       ; $62fa: $63
    rst $10                                       ; $62fb: $d7
    or c                                          ; $62fc: $b1
    sbc h                                         ; $62fd: $9c

Jump_056_62fe:
    db $dd                                        ; $62fe: $dd
    add hl, hl                                    ; $62ff: $29
    rst $28                                       ; $6300: $ef
    ld b, h                                       ; $6301: $44
    ld a, [c]                                     ; $6302: $f2
    or l                                          ; $6303: $b5
    ld [hl], a                                    ; $6304: $77
    ld c, $02                                     ; $6305: $0e $02
    add b                                         ; $6307: $80
    db $dd                                        ; $6308: $dd
    ld h, d                                       ; $6309: $62
    add $d8                                       ; $630a: $c6 $d8
    ld [hl-], a                                   ; $630c: $32
    cp $6d                                        ; $630d: $fe $6d
    ld b, b                                       ; $630f: $40
    ld a, [hl]                                    ; $6310: $7e
    ld h, e                                       ; $6311: $63

jr_056_6312:
    rst $10                                       ; $6312: $d7
    or c                                          ; $6313: $b1
    sbc h                                         ; $6314: $9c
    db $dd                                        ; $6315: $dd
    add hl, hl                                    ; $6316: $29
    rst $28                                       ; $6317: $ef
    ld b, h                                       ; $6318: $44
    ld a, [c]                                     ; $6319: $f2
    or l                                          ; $631a: $b5
    ld [hl], a                                    ; $631b: $77
    ld c, $44                                     ; $631c: $0e $44
    dec a                                         ; $631e: $3d
    ret                                           ; $631f: $c9


    dec de                                        ; $6320: $1b
    pop af                                        ; $6321: $f1
    ld l, d                                       ; $6322: $6a
    jp z, Jump_056_5ee5                           ; $6323: $ca $e5 $5e

    ld [$c93d], sp                                ; $6326: $08 $3d $c9
    ld e, e                                       ; $6329: $5b
    ld a, [c]                                     ; $632a: $f2
    db $db                                        ; $632b: $db
    sub h                                         ; $632c: $94
    ld a, $e2                                     ; $632d: $3e $e2
    push af                                       ; $632f: $f5
    ld b, d                                       ; $6330: $42
    ld a, l                                       ; $6331: $7d
    sbc [hl]                                      ; $6332: $9e
    halt                                          ; $6333: $76
    jp z, $d73c                                   ; $6334: $ca $3c $d7

    ld e, [hl]                                    ; $6337: $5e
    ld l, e                                       ; $6338: $6b
    db $fc                                        ; $6339: $fc
    push de                                       ; $633a: $d5
    ret z                                         ; $633b: $c8

    ld c, h                                       ; $633c: $4c
    ld [$afad], a                                 ; $633d: $ea $ad $af
    ld h, d                                       ; $6340: $62
    cp b                                          ; $6341: $b8
    db $dd                                        ; $6342: $dd
    sub e                                         ; $6343: $93
    cp l                                          ; $6344: $bd
    daa                                           ; $6345: $27
    ld h, d                                       ; $6346: $62
    xor $85                                       ; $6347: $ee $85
    nop                                           ; $6349: $00
    ld [hl], a                                    ; $634a: $77
    ld a, $39                                     ; $634b: $3e $39
    or c                                          ; $634d: $b1
    db $e3                                        ; $634e: $e3
    add hl, hl                                    ; $634f: $29
    ld a, l                                       ; $6350: $7d
    add hl, de                                    ; $6351: $19
    and a                                         ; $6352: $a7
    ld a, l                                       ; $6353: $7d
    ret c                                         ; $6354: $d8

    jr jr_056_6312                                ; $6355: $18 $bb

    and [hl]                                      ; $6357: $a6
    inc e                                         ; $6358: $1c
    halt                                          ; $6359: $76
    inc l                                         ; $635a: $2c
    ld l, $c3                                     ; $635b: $2e $c3
    db $ed                                        ; $635d: $ed

jr_056_635e:
    sbc [hl]                                      ; $635e: $9e
    db $ec                                        ; $635f: $ec
    dec a                                         ; $6360: $3d
    ld de, $2f73                                  ; $6361: $11 $73 $2f
    inc b                                         ; $6364: $04
    db $dd                                        ; $6365: $dd
    and $1d                                       ; $6366: $e6 $1d
    or a                                          ; $6368: $b7
    ldh [$5a], a                                  ; $6369: $e0 $5a
    ld a, [c]                                     ; $636b: $f2
    ld b, a                                       ; $636c: $47
    rst $20                                       ; $636d: $e7
    jp c, $974d                                   ; $636e: $da $4d $97

    rst $28                                       ; $6371: $ef
    inc b                                         ; $6372: $04
    adc b                                         ; $6373: $88
    nop                                           ; $6374: $00
    add hl, hl                                    ; $6375: $29
    ld e, a                                       ; $6376: $5f
    ld e, c                                       ; $6377: $59
    and [hl]                                      ; $6378: $a6
    inc l                                         ; $6379: $2c
    ld [hl], e                                    ; $637a: $73
    dec l                                         ; $637b: $2d
    ld e, l                                       ; $637c: $5d
    ld a, d                                       ; $637d: $7a
    ld h, h                                       ; $637e: $64
    db $ed                                        ; $637f: $ed
    jp nc, $5a9a                                  ; $6380: $d2 $9a $5a

    rst $00                                       ; $6383: $c7
    ld h, c                                       ; $6384: $61
    jp z, $3761                                   ; $6385: $ca $61 $37

    ld e, l                                       ; $6388: $5d
    cp [hl]                                       ; $6389: $be
    inc de                                        ; $638a: $13
    jr nz, jr_056_638f                            ; $638b: $20 $02

    or a                                          ; $638d: $b7
    push de                                       ; $638e: $d5

jr_056_638f:
    sub h                                         ; $638f: $94
    ld a, c                                       ; $6390: $79
    sub [hl]                                      ; $6391: $96
    cp l                                          ; $6392: $bd
    add h                                         ; $6393: $84
    ld e, a                                       ; $6394: $5f
    ld [hl], e                                    ; $6395: $73
    cpl                                           ; $6396: $2f
    inc b                                         ; $6397: $04
    db $dd                                        ; $6398: $dd
    and $11                                       ; $6399: $e6 $11
    xor a                                         ; $639b: $af
    and [hl]                                      ; $639c: $a6
    db $f4                                        ; $639d: $f4
    db $fd                                        ; $639e: $fd
    jr jr_056_635e                                ; $639f: $18 $bd

    and d                                         ; $63a1: $a2

Jump_056_63a2:
    call nc, $37f8                                ; $63a2: $d4 $f8 $37
    db $ed                                        ; $63a5: $ed
    ld a, d                                       ; $63a6: $7a
    ld e, [hl]                                    ; $63a7: $5e
    sub l                                         ; $63a8: $95
    ld b, $22                                     ; $63a9: $06 $22
    ld b, b                                       ; $63ab: $40
    ld a, [hl]                                    ; $63ac: $7e

Call_056_63ad:
    ld h, e                                       ; $63ad: $63
    rst $10                                       ; $63ae: $d7
    or c                                          ; $63af: $b1
    ld e, h                                       ; $63b0: $5c
    jp nz, Jump_056_6fc9                          ; $63b1: $c2 $c9 $6f

    db $ed                                        ; $63b4: $ed
    ld c, e                                       ; $63b5: $4b
    or b                                          ; $63b6: $b0
    ld hl, sp+$0c                                 ; $63b7: $f8 $0c
    ld b, b                                       ; $63b9: $40
    ld d, a                                       ; $63ba: $57
    ld [c], a                                     ; $63bb: $e2
    adc d                                         ; $63bc: $8a
    sbc l                                         ; $63bd: $9d
    ld l, $12                                     ; $63be: $2e $12
    ld bc, $dd80                                  ; $63c0: $01 $80 $dd
    ld h, d                                       ; $63c3: $62
    add $d8                                       ; $63c4: $c6 $d8
    ld [hl-], a                                   ; $63c6: $32
    cp $6d                                        ; $63c7: $fe $6d
    ld b, b                                       ; $63c9: $40
    ld a, [hl]                                    ; $63ca: $7e
    ld h, e                                       ; $63cb: $63
    rst $10                                       ; $63cc: $d7
    or c                                          ; $63cd: $b1
    sbc h                                         ; $63ce: $9c
    ld bc, $4ae8                                  ; $63cf: $01 $e8 $4a
    ld e, h                                       ; $63d2: $5c
    or c                                          ; $63d3: $b1
    db $d3                                        ; $63d4: $d3
    ld b, l                                       ; $63d5: $45
    ld e, [hl]                                    ; $63d6: $5e
    ld [de], a                                    ; $63d7: $12
    dec sp                                        ; $63d8: $3b
    ld l, [hl]                                    ; $63d9: $6e
    call $1105                                    ; $63da: $cd $05 $11
    dec a                                         ; $63dd: $3d
    ret                                           ; $63de: $c9


    dec de                                        ; $63df: $1b
    pop af                                        ; $63e0: $f1
    ld l, d                                       ; $63e1: $6a
    jp z, Jump_056_5ee5                           ; $63e2: $ca $e5 $5e

    ld [$c93d], sp                                ; $63e5: $08 $3d $c9
    ld e, e                                       ; $63e8: $5b
    ld a, [c]                                     ; $63e9: $f2
    db $db                                        ; $63ea: $db
    sub h                                         ; $63eb: $94
    ld a, $e2                                     ; $63ec: $3e $e2
    push af                                       ; $63ee: $f5
    ld b, d                                       ; $63ef: $42
    ld a, l                                       ; $63f0: $7d
    sbc [hl]                                      ; $63f1: $9e
    halt                                          ; $63f2: $76
    jp z, $d73c                                   ; $63f3: $ca $3c $d7

    ld e, [hl]                                    ; $63f6: $5e

Jump_056_63f7:
    ld l, e                                       ; $63f7: $6b
    db $fc                                        ; $63f8: $fc
    push de                                       ; $63f9: $d5
    ret z                                         ; $63fa: $c8

    ld c, h                                       ; $63fb: $4c
    ld [$afad], a                                 ; $63fc: $ea $ad $af
    ld h, d                                       ; $63ff: $62
    cp b                                          ; $6400: $b8
    db $dd                                        ; $6401: $dd
    sub e                                         ; $6402: $93
    cp l                                          ; $6403: $bd
    daa                                           ; $6404: $27
    ld h, d                                       ; $6405: $62
    xor $85                                       ; $6406: $ee $85
    nop                                           ; $6408: $00
    db $dd                                        ; $6409: $dd
    ld a, [$f312]                                 ; $640a: $fa $12 $f3
    adc [hl]                                      ; $640d: $8e
    ld e, e                                       ; $640e: $5b
    or d                                          ; $640f: $b2
    or h                                          ; $6410: $b4
    rrca                                          ; $6411: $0f

jr_056_6412:
    jp $9eed                                      ; $6412: $c3 $ed $9e


    db $ec                                        ; $6415: $ec
    dec a                                         ; $6416: $3d
    ld de, $2f73                                  ; $6417: $11 $73 $2f
    inc b                                         ; $641a: $04
    db $dd                                        ; $641b: $dd
    and $1d                                       ; $641c: $e6 $1d
    or a                                          ; $641e: $b7
    ldh [$5a], a                                  ; $641f: $e0 $5a
    ld a, [c]                                     ; $6421: $f2
    ld b, a                                       ; $6422: $47
    rst $20                                       ; $6423: $e7
    jp c, $974d                                   ; $6424: $da $4d $97

    rst $28                                       ; $6427: $ef
    inc b                                         ; $6428: $04
    adc b                                         ; $6429: $88
    nop                                           ; $642a: $00
    add hl, hl                                    ; $642b: $29
    ld e, a                                       ; $642c: $5f
    ld e, c                                       ; $642d: $59
    and [hl]                                      ; $642e: $a6
    inc l                                         ; $642f: $2c
    ld [hl], e                                    ; $6430: $73
    dec l                                         ; $6431: $2d
    ld e, l                                       ; $6432: $5d
    ld a, d                                       ; $6433: $7a
    ld h, h                                       ; $6434: $64
    db $ed                                        ; $6435: $ed
    jp nc, $5a9a                                  ; $6436: $d2 $9a $5a

    rst $00                                       ; $6439: $c7
    ld h, c                                       ; $643a: $61
    jp z, $3761                                   ; $643b: $ca $61 $37

    ld e, l                                       ; $643e: $5d
    cp [hl]                                       ; $643f: $be
    inc de                                        ; $6440: $13
    jr nz, jr_056_6445                            ; $6441: $20 $02

    or a                                          ; $6443: $b7
    push de                                       ; $6444: $d5

jr_056_6445:
    sub h                                         ; $6445: $94
    ld a, c                                       ; $6446: $79
    sub [hl]                                      ; $6447: $96
    cp l                                          ; $6448: $bd
    add h                                         ; $6449: $84
    ld e, a                                       ; $644a: $5f
    ld [hl], e                                    ; $644b: $73
    cpl                                           ; $644c: $2f
    inc b                                         ; $644d: $04
    add b                                         ; $644e: $80

Jump_056_644f:
    rst $38                                       ; $644f: $ff
    jp nz, $fdaf                                  ; $6450: $c2 $af $fd

    jr jr_056_6412                                ; $6453: $18 $bd

    ld e, b                                       ; $6455: $58
    ld d, [hl]                                    ; $6456: $56
    sbc a                                         ; $6457: $9f
    add hl, de                                    ; $6458: $19
    ld b, d                                       ; $6459: $42
    cp b                                          ; $645a: $b8
    rra                                           ; $645b: $1f
    and e                                         ; $645c: $a3
    ld h, a                                       ; $645d: $67
    add hl, bc                                    ; $645e: $09
    ld c, a                                       ; $645f: $4f
    jp nz, $b7f8                                  ; $6460: $c2 $f8 $b7

    ld e, c                                       ; $6463: $59
    ld d, $ea                                     ; $6464: $16 $ea
    db $d3                                        ; $6466: $d3
    db $f4                                        ; $6467: $f4
    sub a                                         ; $6468: $97
    sub b                                         ; $6469: $90
    ld a, [de]                                    ; $646a: $1a
    ld bc, $be77                                  ; $646b: $01 $77 $be
    sub $7c                                       ; $646e: $d6 $7c
    sub [hl]                                      ; $6470: $96
    jp Jump_056_76a1                              ; $6471: $c3 $a1 $76


    ld h, a                                       ; $6474: $67
    sub [hl]                                      ; $6475: $96
    ldh [$c3], a                                  ; $6476: $e0 $c3
    cpl                                           ; $6478: $2f
    add c                                         ; $6479: $81
    db $eb                                        ; $647a: $eb
    or [hl]                                       ; $647b: $b6
    adc h                                         ; $647c: $8c
    cp $22                                        ; $647d: $fe $22
    ld a, $4b                                     ; $647f: $3e $4b
    ld e, h                                       ; $6481: $5c
    jp z, $9cb2                                   ; $6482: $ca $b2 $9c

    cp b                                          ; $6485: $b8
    sub [hl]                                      ; $6486: $96
    jp $5788                                      ; $6487: $c3 $88 $57


    jp $824f                                      ; $648a: $c3 $4f $82


    and a                                         ; $648d: $a7
    ld e, a                                       ; $648e: $5f
    add d                                         ; $648f: $82
    ld e, a                                       ; $6490: $5f
    ld hl, sp+$27                                 ; $6491: $f8 $27
    ld a, d                                       ; $6493: $7a
    jp hl                                         ; $6494: $e9


    jp nc, $c9e3                                  ; $6495: $d2 $e3 $c9

    cp b                                          ; $6498: $b8
    jr z, @-$19                                   ; $6499: $28 $e5

Call_056_649b:
    add d                                         ; $649b: $82
    ld [$16dd], sp                                ; $649c: $08 $dd $16
    pop af                                        ; $649f: $f1
    cp [hl]                                       ; $64a0: $be
    add h                                         ; $64a1: $84
    or d                                          ; $64a2: $b2
    ld a, [$6396]                                 ; $64a3: $fa $96 $63
    add hl, de                                    ; $64a6: $19
    and [hl]                                      ; $64a7: $a6
    sub [hl]                                      ; $64a8: $96
    ld [hl], $f1                                  ; $64a9: $36 $f1
    ld b, h                                       ; $64ab: $44
    dec [hl]                                      ; $64ac: $35
    sbc a                                         ; $64ad: $9f
    push hl                                       ; $64ae: $e5
    jr nc, jr_056_64eb                            ; $64af: $30 $3a

    rst $10                                       ; $64b1: $d7
    xor e                                         ; $64b2: $ab
    or h                                          ; $64b3: $b4
    cp a                                          ; $64b4: $bf
    ld a, [c]                                     ; $64b5: $f2
    add hl, de                                    ; $64b6: $19
    or [hl]                                       ; $64b7: $b6
    ld e, d                                       ; $64b8: $5a
    ld a, [c]                                     ; $64b9: $f2
    ld [$4c64], a                                 ; $64ba: $ea $64 $4c
    sbc b                                         ; $64bd: $98
    or l                                          ; $64be: $b5
    ld d, e                                       ; $64bf: $53
    ld l, a                                       ; $64c0: $6f
    jp z, $f8b2                                   ; $64c1: $ca $b2 $f8

    ld h, h                                       ; $64c4: $64
    ld c, c                                       ; $64c5: $49
    ld e, a                                       ; $64c6: $5f
    push hl                                       ; $64c7: $e5
    add l                                         ; $64c8: $85
    ld c, a                                       ; $64c9: $4f
    di                                            ; $64ca: $f3
    rrca                                          ; $64cb: $0f
    db $10                                        ; $64cc: $10
    ld bc, $c9b7                                  ; $64cd: $01 $b7 $c9
    or b                                          ; $64d0: $b0
    add e                                         ; $64d1: $83
    ld a, c                                       ; $64d2: $79
    xor a                                         ; $64d3: $af
    pop hl                                        ; $64d4: $e1
    cpl                                           ; $64d5: $2f
    ld [c], a                                     ; $64d6: $e2
    or $c3                                        ; $64d7: $f6 $c3
    ret z                                         ; $64d9: $c8

    or $84                                        ; $64da: $f6 $84
    xor l                                         ; $64dc: $ad
    ld e, l                                       ; $64dd: $5d
    jp c, $85d5                                   ; $64de: $da $d5 $85

    ld a, c                                       ; $64e1: $79
    ld [hl], h                                    ; $64e2: $74
    xor [hl]                                      ; $64e3: $ae
    add hl, hl                                    ; $64e4: $29
    rst $28                                       ; $64e5: $ef
    inc h                                         ; $64e6: $24
    rst $18                                       ; $64e7: $df
    and d                                         ; $64e8: $a2
    inc a                                         ; $64e9: $3c
    add d                                         ; $64ea: $82

jr_056_64eb:
    ld a, [hl+]                                   ; $64eb: $2a
    adc e                                         ; $64ec: $8b
    ld b, a                                       ; $64ed: $47
    ld d, d                                       ; $64ee: $52
    ld c, e                                       ; $64ef: $4b
    or a                                          ; $64f0: $b7
    and a                                         ; $64f1: $a7
    inc l                                         ; $64f2: $2c
    add [hl]                                      ; $64f3: $86
    ld [$be77], sp                                ; $64f4: $08 $77 $be
    sub $7c                                       ; $64f7: $d6 $7c
    sub [hl]                                      ; $64f9: $96
    jp Jump_056_76a1                              ; $64fa: $c3 $a1 $76


    ld c, e                                       ; $64fd: $4b
    ld e, c                                       ; $64fe: $59
    call nz, $fd69                                ; $64ff: $c4 $69 $fd
    ld b, h                                       ; $6502: $44
    db $ed                                        ; $6503: $ed
    add sp, $5c                                   ; $6504: $e8 $5c
    ld [$594f], a                                 ; $6506: $ea $4f $59
    ld d, $9f                                     ; $6509: $16 $9f
    ld c, h                                       ; $650b: $4c
    rst $20                                       ; $650c: $e7
    inc de                                        ; $650d: $13
    ld a, a                                       ; $650e: $7f
    ld l, e                                       ; $650f: $6b
    ld e, [hl]                                    ; $6510: $5e
    cp d                                          ; $6511: $ba
    inc l                                         ; $6512: $2c
    sub d                                         ; $6513: $92
    ld a, [hl]                                    ; $6514: $7e
    push hl                                       ; $6515: $e5
    xor c                                         ; $6516: $a9
    add a                                         ; $6517: $87
    ld c, c                                       ; $6518: $49
    rla                                           ; $6519: $17
    call c, $5d2d                                 ; $651a: $dc $2d $5d
    dec [hl]                                      ; $651d: $35
    push hl                                       ; $651e: $e5
    and d                                         ; $651f: $a2
    ld [hl], e                                    ; $6520: $73
    dec l                                         ; $6521: $2d
    ld l, l                                       ; $6522: $6d
    ld [c], a                                     ; $6523: $e2
    adc c                                         ; $6524: $89
    ld l, d                                       ; $6525: $6a
    ld a, $c3                                     ; $6526: $3e $c3
    ld d, [hl]                                    ; $6528: $56
    ld a, e                                       ; $6529: $7b
    sub c                                         ; $652a: $91
    ld c, a                                       ; $652b: $4f
    add $84                                       ; $652c: $c6 $84
    add hl, de                                    ; $652e: $19
    ld [hl+], a                                   ; $652f: $22
    or a                                          ; $6530: $b7
    ret                                           ; $6531: $c9


    or b                                          ; $6532: $b0
    add e                                         ; $6533: $83
    ld a, c                                       ; $6534: $79

Call_056_6535:
    jp hl                                         ; $6535: $e9


    rst $08                                       ; $6536: $cf
    db $ec                                        ; $6537: $ec
    ld [c], a                                     ; $6538: $e2
    ld c, e                                       ; $6539: $4b
    ld c, $7e                                     ; $653a: $0e $7e

Call_056_653c:
    pop de                                        ; $653c: $d1
    and d                                         ; $653d: $a2
    inc a                                         ; $653e: $3c
    cp l                                          ; $653f: $bd
    ld hl, sp-$3a                                 ; $6540: $f8 $c6
    cp l                                          ; $6542: $bd
    add [hl]                                      ; $6543: $86
    cp a                                          ; $6544: $bf
    adc b                                         ; $6545: $88
    db $db                                        ; $6546: $db
    rrca                                          ; $6547: $0f
    ld c, e                                       ; $6548: $4b
    sub a                                         ; $6549: $97
    ld e, $79                                     ; $654a: $1e $79
    rst $20                                       ; $654c: $e7
    dec hl                                        ; $654d: $2b
    bit 6, d                                      ; $654e: $cb $72
    ld d, e                                       ; $6550: $53
    db $fc                                        ; $6551: $fc
    push de                                       ; $6552: $d5
    add e                                         ; $6553: $83
    ld [$c9b7], sp                                ; $6554: $08 $b7 $c9
    ld h, d                                       ; $6557: $62
    dec a                                         ; $6558: $3d
    sbc d                                         ; $6559: $9a
    ld a, a                                       ; $655a: $7f
    ret c                                         ; $655b: $d8

    sub a                                         ; $655c: $97
    ld d, b                                       ; $655d: $50
    ld d, [hl]                                    ; $655e: $56
    rst $18                                       ; $655f: $df
    ld [hl], d                                    ; $6560: $72
    ld l, [hl]                                    ; $6561: $6e
    ld e, h                                       ; $6562: $5c
    add sp, $58                                   ; $6563: $e8 $58
    ld c, $3f                                     ; $6565: $0e $3f
    ld d, c                                       ; $6567: $51
    and e                                         ; $6568: $a3
    ld [hl], e                                    ; $6569: $73
    dec c                                         ; $656a: $0d
    ld l, e                                       ; $656b: $6b
    cp h                                          ; $656c: $bc
    sub b                                         ; $656d: $90
    ld sp, $4ff9                                  ; $656e: $31 $f9 $4f
    ld e, h                                       ; $6571: $5c
    ld c, [hl]                                    ; $6572: $4e
    ld e, h                                       ; $6573: $5c
    ld e, h                                       ; $6574: $5c
    add hl, de                                    ; $6575: $19
    ld [hl+], a                                   ; $6576: $22
    or a                                          ; $6577: $b7
    db $e4                                        ; $6578: $e4
    adc h                                         ; $6579: $8c
    ld c, a                                       ; $657a: $4f
    ld a, e                                       ; $657b: $7b
    ld [de], a                                    ; $657c: $12
    inc l                                         ; $657d: $2c
    ld [hl], e                                    ; $657e: $73
    call $47b2                                    ; $657f: $cd $b2 $47
    rst $10                                       ; $6582: $d7
    adc a                                         ; $6583: $8f
    ld c, a                                       ; $6584: $4f
    ld c, [hl]                                    ; $6585: $4e
    ld e, h                                       ; $6586: $5c
    ld hl, sp+$34                                 ; $6587: $f8 $34
    sbc a                                         ; $6589: $9f
    or $24                                        ; $658a: $f6 $24
    ld a, b                                       ; $658c: $78
    daa                                           ; $658d: $27
    db $e3                                        ; $658e: $e3
    dec [hl]                                      ; $658f: $35
    daa                                           ; $6590: $27
    xor [hl]                                      ; $6591: $ae
    db $fd                                        ; $6592: $fd
    ld [hl], c                                    ; $6593: $71
    push af                                       ; $6594: $f5
    ld d, l                                       ; $6595: $55
    ld [hl], b                                    ; $6596: $70
    add hl, hl                                    ; $6597: $29
    pop af                                        ; $6598: $f1
    adc e                                         ; $6599: $8b
    sbc b                                         ; $659a: $98
    add a                                         ; $659b: $87
    xor c                                         ; $659c: $a9
    ld a, l                                       ; $659d: $7d
    sub c                                         ; $659e: $91
    di                                            ; $659f: $f3
    ld [hl], b                                    ; $65a0: $70
    di                                            ; $65a1: $f3
    sbc c                                         ; $65a2: $99
    adc [hl]                                      ; $65a3: $8e
    cp a                                          ; $65a4: $bf
    ld d, d                                       ; $65a5: $52
    ld l, [hl]                                    ; $65a6: $6e
    jp hl                                         ; $65a7: $e9


    ld d, a                                       ; $65a8: $57
    inc a                                         ; $65a9: $3c
    inc sp                                        ; $65aa: $33
    cp e                                          ; $65ab: $bb
    ld b, [hl]                                    ; $65ac: $46
    cp e                                          ; $65ad: $bb
    or l                                          ; $65ae: $b5
    cpl                                           ; $65af: $2f
    pop bc                                        ; $65b0: $c1
    ld [bc], a                                    ; $65b1: $02
    ld de, $7df7                                  ; $65b2: $11 $f7 $7d
    sub c                                         ; $65b5: $91
    sub e                                         ; $65b6: $93
    ld a, h                                       ; $65b7: $7c
    ld hl, $087f                                  ; $65b8: $21 $7f $08
    xor [hl]                                      ; $65bb: $ae
    cp c                                          ; $65bc: $b9
    or $25                                        ; $65bd: $f6 $25
    ld e, b                                       ; $65bf: $58
    add [hl]                                      ; $65c0: $86
    sbc a                                         ; $65c1: $9f
    inc b                                         ; $65c2: $04
    or a                                          ; $65c3: $b7
    db $e4                                        ; $65c4: $e4
    sub l                                         ; $65c5: $95
    or l                                          ; $65c6: $b5

jr_056_65c7:
    ld d, e                                       ; $65c7: $53
    ld l, a                                       ; $65c8: $6f
    ld c, d                                       ; $65c9: $4a
    ld d, e                                       ; $65ca: $53
    and $c5                                       ; $65cb: $e6 $c5
    inc l                                         ; $65cd: $2c
    db $fc                                        ; $65ce: $fc
    ld b, l                                       ; $65cf: $45
    ld [hl], a                                    ; $65d0: $77
    or l                                          ; $65d1: $b5
    rra                                           ; $65d2: $1f
    ld b, [hl]                                    ; $65d3: $46
    ld d, e                                       ; $65d4: $53
    dec [hl]                                      ; $65d5: $35
    pop de                                        ; $65d6: $d1
    jr jr_056_65c7                                ; $65d7: $18 $ee

    cp [hl]                                       ; $65d9: $be
    rra                                           ; $65da: $1f
    add d                                         ; $65db: $82
    ld l, e                                       ; $65dc: $6b
    daa                                           ; $65dd: $27
    db $e3                                        ; $65de: $e3
    db $fd                                        ; $65df: $fd
    jr jr_056_661f                                ; $65e0: $18 $3d

    ld [c], a                                     ; $65e2: $e2
    push de                                       ; $65e3: $d5
    ld b, d                                       ; $65e4: $42
    daa                                           ; $65e5: $27
    rla                                           ; $65e6: $17
    ld c, a                                       ; $65e7: $4f
    or d                                          ; $65e8: $b2
    ld h, l                                       ; $65e9: $65
    daa                                           ; $65ea: $27
    ld a, $65                                     ; $65eb: $3e $65
    db $ed                                        ; $65ed: $ed
    jp nc, Jump_056_7ae6                          ; $65ee: $d2 $e6 $7a

    sub c                                         ; $65f1: $91
    ld a, l                                       ; $65f2: $7d
    halt                                          ; $65f3: $76
    ld [hl-], a                                   ; $65f4: $32
    sbc [hl]                                      ; $65f5: $9e
    ld a, [c]                                     ; $65f6: $f2
    jp nc, Jump_056_6c3e                          ; $65f7: $d2 $3e $6c

    adc b                                         ; $65fa: $88
    nop                                           ; $65fb: $00
    or a                                          ; $65fc: $b7
    rst $10                                       ; $65fd: $d7
    jp Jump_056_7f87                              ; $65fe: $c3 $87 $7f


    ld l, e                                       ; $6601: $6b
    ld a, $7b                                     ; $6602: $3e $7b
    ret                                           ; $6604: $c9


    cp b                                          ; $6605: $b8
    xor e                                         ; $6606: $ab
    and d                                         ; $6607: $a2
    ld a, c                                       ; $6608: $79
    jp hl                                         ; $6609: $e9


    and $18                                       ; $660a: $e6 $18
    rrca                                          ; $660c: $0f
    ld e, c                                       ; $660d: $59
    ld a, [hl-]                                   ; $660e: $3a
    jp $c4a5                                      ; $660f: $c3 $a5 $c4


    rst $10                                       ; $6612: $d7
    ld h, [hl]                                    ; $6613: $66
    ld h, [hl]                                    ; $6614: $66
    rst $10                                       ; $6615: $d7
    adc $0f                                       ; $6616: $ce $0f
    ld d, $e5                                     ; $6618: $16 $e5
    pop de                                        ; $661a: $d1
    cp c                                          ; $661b: $b9
    ld c, $bb                                     ; $661c: $0e $bb
    and d                                         ; $661e: $a2

jr_056_661f:
    sub a                                         ; $661f: $97
    db $fc                                        ; $6620: $fc
    adc d                                         ; $6621: $8a
    ld a, [c]                                     ; $6622: $f2
    dec h                                         ; $6623: $25
    ld e, b                                       ; $6624: $58
    or $92                                        ; $6625: $f6 $92

Call_056_6627:
    cp c                                          ; $6627: $b9
    db $fd                                        ; $6628: $fd
    ld a, b                                       ; $6629: $78
    ld a, [hl]                                    ; $662a: $7e
    cp c                                          ; $662b: $b9
    jr nz, jr_056_6630                            ; $662c: $20 $02

    add hl, hl                                    ; $662e: $29
    pop af                                        ; $662f: $f1

jr_056_6630:
    push de                                       ; $6630: $d5
    ld c, e                                       ; $6631: $4b
    rst $30                                       ; $6632: $f7
    ld a, l                                       ; $6633: $7d
    ld c, c                                       ; $6634: $49
    ld a, [$e6b7]                                 ; $6635: $fa $b7 $e6
    ld a, [de]                                    ; $6638: $1a
    pop af                                        ; $6639: $f1
    ld l, d                                       ; $663a: $6a
    jp z, $fb4b                                   ; $663b: $ca $4b $fb

    or b                                          ; $663e: $b0
    rst $10                                       ; $663f: $d7
    and l                                         ; $6640: $a5
    ld de, $c78b                                  ; $6641: $11 $8b $c7
    cp a                                          ; $6644: $bf
    call $c7ed                                    ; $6645: $cd $ed $c7
    di                                            ; $6648: $f3
    dec hl                                        ; $6649: $2b
    ld e, l                                       ; $664a: $5d
    ld a, d                                       ; $664b: $7a
    add h                                         ; $664c: $84
    ld [$7cb7], sp                                ; $664d: $08 $b7 $7c
    and d                                         ; $6650: $a2
    db $d3                                        ; $6651: $d3
    ld d, l                                       ; $6652: $55
    ld a, [c]                                     ; $6653: $f2
    dec h                                         ; $6654: $25
    cp b                                          ; $6655: $b8
    and $1a                                       ; $6656: $e6 $1a
    db $fd                                        ; $6658: $fd
    xor d                                         ; $6659: $aa
    db $fd                                        ; $665a: $fd
    ldh [$e1], a                                  ; $665b: $e0 $e1
    rla                                           ; $665d: $17
    cp $89                                        ; $665e: $fe $89
    sbc [hl]                                      ; $6660: $9e
    jp nc, Jump_056_4ed4                          ; $6661: $d2 $d4 $4e

    add $c3                                       ; $6664: $c6 $c3
    ld e, a                                       ; $6666: $5f
    call nz, $8cb5                                ; $6667: $c4 $b5 $8c
    rla                                           ; $666a: $17
    ld [hl], l                                    ; $666b: $75
    rla                                           ; $666c: $17
    ld e, h                                       ; $666d: $5c
    or a                                          ; $666e: $b7
    ld b, a                                       ; $666f: $47
    cp e                                          ; $6670: $bb
    dec [hl]                                      ; $6671: $35
    rst $10                                       ; $6672: $d7
    xor b                                         ; $6673: $a8
    ld c, d                                       ; $6674: $4a
    cp $39                                        ; $6675: $fe $39
    inc a                                         ; $6677: $3c
    ld [hl+], a                                   ; $6678: $22
    sub a                                         ; $6679: $97
    inc a                                         ; $667a: $3c
    db $ed                                        ; $667b: $ed
    ld c, [hl]                                    ; $667c: $4e
    add $53                                       ; $667d: $c6 $53
    ld l, $33                                     ; $667f: $2e $33
    cp e                                          ; $6681: $bb
    halt                                          ; $6682: $76
    sbc [hl]                                      ; $6683: $9e
    ld b, h                                       ; $6684: $44
    sbc a                                         ; $6685: $9f
    ld a, l                                       ; $6686: $7d
    sub c                                         ; $6687: $91
    add hl, bc                                    ; $6688: $09
    ld d, l                                       ; $6689: $55
    ld c, e                                       ; $668a: $4b
    ld a, a                                       ; $668b: $7f
    and d                                         ; $668c: $a2
    db $d3                                        ; $668d: $d3
    ld d, l                                       ; $668e: $55
    ld a, [c]                                     ; $668f: $f2
    dec h                                         ; $6690: $25
    ld e, b                                       ; $6691: $58
    or $63                                        ; $6692: $f6 $63
    db $f4                                        ; $6694: $f4
    adc [hl]                                      ; $6695: $8e
    ld l, e                                       ; $6696: $6b
    jp z, Jump_000_110c                           ; $6697: $ca $0c $11

    or a                                          ; $669a: $b7
    ret                                           ; $669b: $c9


    ld [hl-], a                                   ; $669c: $32
    call $ba5e                                    ; $669d: $cd $5e $ba
    db $f4                                        ; $66a0: $f4
    ret z                                         ; $66a1: $c8

    ei                                            ; $66a2: $fb
    ld [de], a                                    ; $66a3: $12
    jp z, Jump_056_5bea                           ; $66a4: $ca $ea $5b

    adc [hl]                                      ; $66a7: $8e
    halt                                          ; $66a8: $76
    daa                                           ; $66a9: $27
    db $e3                                        ; $66aa: $e3
    ld a, l                                       ; $66ab: $7d
    db $fc                                        ; $66ac: $fc
    ld d, l                                       ; $66ad: $55
    ld [hl], e                                    ; $66ae: $73
    pop af                                        ; $66af: $f1
    ld d, a                                       ; $66b0: $57
    ei                                            ; $66b1: $fb
    ld sp, $987a                                  ; $66b2: $31 $7a $98
    ld e, d                                       ; $66b5: $5a
    call z, Call_056_7b18                         ; $66b6: $cc $18 $7b
    ld [hl], h                                    ; $66b9: $74
    cp l                                          ; $66ba: $bd
    add l                                         ; $66bb: $85
    ld c, a                                       ; $66bc: $4f
    di                                            ; $66bd: $f3
    ld l, c                                       ; $66be: $69
    ld c, a                                       ; $66bf: $4f
    add d                                         ; $66c0: $82
    dec bc                                        ; $66c1: $0b
    ld [hl+], a                                   ; $66c2: $22
    or a                                          ; $66c3: $b7
    jr jr_056_6722                                ; $66c4: $18 $5c

    ld a, [hl]                                    ; $66c6: $7e
    ld [hl], l                                    ; $66c7: $75
    ret                                           ; $66c8: $c9


    ld h, c                                       ; $66c9: $61
    ld a, a                                       ; $66ca: $7f
    ld [hl], c                                    ; $66cb: $71
    dec l                                         ; $66cc: $2d
    sub e                                         ; $66cd: $93
    db $e4                                        ; $66ce: $e4
    ld h, c                                       ; $66cf: $61
    xor d                                         ; $66d0: $aa
    or $47                                        ; $66d1: $f6 $47
    rst $20                                       ; $66d3: $e7
    ld d, d                                       ; $66d4: $52
    ld e, l                                       ; $66d5: $5d
    ld a, [de]                                    ; $66d6: $1a
    or a                                          ; $66d7: $b7
    db $e3                                        ; $66d8: $e3
    ld [hl], e                                    ; $66d9: $73
    inc [hl]                                      ; $66da: $34
    add a                                         ; $66db: $87
    adc l                                         ; $66dc: $8d
    call $f223                                    ; $66dd: $cd $23 $f2
    ld e, c                                       ; $66e0: $59
    ldh a, [$67]                                  ; $66e1: $f0 $67
    rla                                           ; $66e3: $17
    ld e, h                                       ; $66e4: $5c
    or a                                          ; $66e5: $b7
    ld b, a                                       ; $66e6: $47
    ld d, d                                       ; $66e7: $52
    add a                                         ; $66e8: $87
    xor c                                         ; $66e9: $a9
    inc sp                                        ; $66ea: $33
    ld l, d                                       ; $66eb: $6a
    jr c, jr_056_6761                             ; $66ec: $38 $73

    ld a, [c]                                     ; $66ee: $f2
    dec hl                                        ; $66ef: $2b
    ld a, d                                       ; $66f0: $7a
    pop hl                                        ; $66f1: $e1
    db $d3                                        ; $66f2: $d3
    db $ec                                        ; $66f3: $ec
    add d                                         ; $66f4: $82
    ld [$3b77], sp                                ; $66f5: $08 $77 $3b
    sbc b                                         ; $66f8: $98
    ld [hl], a                                    ; $66f9: $77
    ld a, [hl-]                                   ; $66fa: $3a
    ld l, [hl]                                    ; $66fb: $6e
    ld c, d                                       ; $66fc: $4a
    xor h                                         ; $66fd: $ac
    sbc l                                         ; $66fe: $9d
    ld a, d                                       ; $66ff: $7a
    ld d, e                                       ; $6700: $53
    ld e, [hl]                                    ; $6701: $5e
    ld a, [$9795]                                 ; $6702: $fa $95 $97
    db $e4                                        ; $6705: $e4
    ld a, b                                       ; $6706: $78
    ld e, h                                       ; $6707: $5c
    inc hl                                        ; $6708: $23
    xor c                                         ; $6709: $a9
    add hl, hl                                    ; $670a: $29
    rst $08                                       ; $670b: $cf
    ld c, l                                       ; $670c: $4d
    dec e                                         ; $670d: $1d
    or $2c                                        ; $670e: $f6 $2c
    ld b, h                                       ; $6710: $44
    and a                                         ; $6711: $a7
    xor e                                         ; $6712: $ab
    db $e4                                        ; $6713: $e4
    ld c, e                                       ; $6714: $4b
    ld [hl], b                                    ; $6715: $70
    dec l                                         ; $6716: $2d
    add a                                         ; $6717: $87
    pop de                                        ; $6718: $d1
    ld l, [hl]                                    ; $6719: $6e
    call $1a67                                    ; $671a: $cd $67 $1a
    ld h, [hl]                                    ; $671d: $66
    rst $10                                       ; $671e: $d7
    pop hl                                        ; $671f: $e1
    sbc l                                         ; $6720: $9d
    adc [hl]                                      ; $6721: $8e

jr_056_6722:
    sbc e                                         ; $6722: $9b
    or d                                          ; $6723: $b2
    ld b, b                                       ; $6724: $40
    inc b                                         ; $6725: $04
    or a                                          ; $6726: $b7
    ret                                           ; $6727: $c9


    ld c, [hl]                                    ; $6728: $4e
    rst $00                                       ; $6729: $c7
    ld c, l                                       ; $672a: $4d
    ld e, c                                       ; $672b: $59
    and [hl]                                      ; $672c: $a6
    rla                                           ; $672d: $17
    rst $28                                       ; $672e: $ef
    ld h, h                                       ; $672f: $64
    cp h                                          ; $6730: $bc
    db $f4                                        ; $6731: $f4
    dec hl                                        ; $6732: $2b
    cpl                                           ; $6733: $2f
    ret                                           ; $6734: $c9


    pop af                                        ; $6735: $f1
    cp b                                          ; $6736: $b8
    or $47                                        ; $6737: $f6 $47
    ld [hl], a                                    ; $6739: $77
    call c, $d71a                                 ; $673a: $dc $1a $d7
    adc e                                         ; $673d: $8b
    db $ec                                        ; $673e: $ec
    add d                                         ; $673f: $82
    cp e                                          ; $6740: $bb
    adc a                                         ; $6741: $8f
    ld a, [hl-]                                   ; $6742: $3a
    db $fc                                        ; $6743: $fc
    ld b, h                                       ; $6744: $44
    cp c                                          ; $6745: $b9
    sub [hl]                                      ; $6746: $96
    pop af                                        ; $6747: $f1
    ld e, $4f                                     ; $6748: $1e $4f
    ld e, c                                       ; $674a: $59
    and $9a                                       ; $674b: $e6 $9a
    ld [$6e52], a                                 ; $674d: $ea $52 $6e
    ccf                                           ; $6750: $3f
    adc h                                         ; $6751: $8c
    adc $b5                                       ; $6752: $ce $b5
    db $e4                                        ; $6754: $e4
    sub l                                         ; $6755: $95
    sbc $12                                       ; $6756: $de $12
    sub a                                         ; $6758: $97
    halt                                          ; $6759: $76
    sbc b                                         ; $675a: $98
    ld e, d                                       ; $675b: $5a
    jp c, Jump_000_2f5c                           ; $675c: $da $5c $2f

    or d                                          ; $675f: $b2
    rst $08                                       ; $6760: $cf

jr_056_6761:
    ld c, [hl]                                    ; $6761: $4e
    add $d3                                       ; $6762: $c6 $d3
    db $d3                                        ; $6764: $d3
    ld c, [hl]                                    ; $6765: $4e
    cp $61                                        ; $6766: $fe $61
    ld b, e                                       ; $6768: $43
    inc b                                         ; $6769: $04
    nop                                           ; $676a: $00
    cp a                                          ; $676b: $bf
    ld l, d                                       ; $676c: $6a
    ccf                                           ; $676d: $3f
    cp b                                          ; $676e: $b8
    inc a                                         ; $676f: $3c
    db $ec                                        ; $6770: $ec
    ld h, b                                       ; $6771: $60
    sbc [hl]                                      ; $6772: $9e
    adc $e9                                       ; $6773: $ce $e9
    or d                                          ; $6775: $b2
    ld h, d                                       ; $6776: $62
    db $ed                                        ; $6777: $ed
    or b                                          ; $6778: $b0
    ld h, l                                       ; $6779: $65
    db $f4                                        ; $677a: $f4
    rla                                           ; $677b: $17
    pop af                                        ; $677c: $f1
    sbc c                                         ; $677d: $99
    ld d, b                                       ; $677e: $50
    ld c, e                                       ; $677f: $4b
    cp a                                          ; $6780: $bf
    ld a, [c]                                     ; $6781: $f2
    cp $68                                        ; $6782: $fe $68
    ld l, d                                       ; $6784: $6a
    add hl, sp                                    ; $6785: $39
    inc l                                         ; $6786: $2c
    ld sp, hl                                     ; $6787: $f9
    xor l                                         ; $6788: $ad
    ld a, c                                       ; $6789: $79
    ld e, h                                       ; $678a: $5c
    cpl                                           ; $678b: $2f
    or d                                          ; $678c: $b2
    dec bc                                        ; $678d: $0b

Call_056_678e:
    xor $96                                       ; $678e: $ee $96
    sub [hl]                                      ; $6790: $96
    pop af                                        ; $6791: $f1
    ld h, c                                       ; $6792: $61
    adc e                                         ; $6793: $8b
    rst $20                                       ; $6794: $e7
    jp c, $fa49                                   ; $6795: $da $49 $fa

    ld a, [hl+]                                   ; $6798: $2a
    sbc $93                                       ; $6799: $de $93
    call nz, $dca2                                ; $679b: $c4 $a2 $dc
    ld a, [hl]                                    ; $679e: $7e
    ldh a, [$fe]                                  ; $679f: $f0 $fe
    call c, $3c7e                                 ; $67a1: $dc $7e $3c
    cp a                                          ; $67a4: $bf
    ld e, h                                       ; $67a5: $5c
    jp c, $cb61                                   ; $67a6: $da $61 $cb

jr_056_67a9:
    jp nc, Jump_000_29ed                          ; $67a9: $d2 $ed $29

    adc e                                         ; $67ac: $8b
    rst $20                                       ; $67ad: $e7
    sbc d                                         ; $67ae: $9a
    add [hl]                                      ; $67af: $86
    reti                                          ; $67b0: $d9


    ld [hl], l                                    ; $67b1: $75
    ld a, b                                       ; $67b2: $78
    pop hl                                        ; $67b3: $e1
    db $d3                                        ; $67b4: $d3
    db $fc                                        ; $67b5: $fc
    add e                                         ; $67b6: $83
    ld hl, $3d02                                  ; $67b7: $21 $02 $3d
    ld a, $a4                                     ; $67ba: $3e $a4
    ld l, e                                       ; $67bc: $6b
    add hl, hl                                    ; $67bd: $29
    db $fc                                        ; $67be: $fc
    ld a, [hl+]                                   ; $67bf: $2a
    ld e, d                                       ; $67c0: $5a
    add e                                         ; $67c1: $83
    nop                                           ; $67c2: $00
    rst $30                                       ; $67c3: $f7
    cp l                                          ; $67c4: $bd
    ld a, d                                       ; $67c5: $7a
    and b                                         ; $67c6: $a0
    db $dd                                        ; $67c7: $dd
    adc [hl]                                      ; $67c8: $8e
    ld a, [hl]                                    ; $67c9: $7e
    db $10                                        ; $67ca: $10
    scf                                           ; $67cb: $37
    ld d, a                                       ; $67cc: $57
    db $fc                                        ; $67cd: $fc
    jp hl                                         ; $67ce: $e9


    rst $10                                       ; $67cf: $d7
    call nc, Call_056_6e6e                        ; $67d0: $d4 $6e $6e
    jp z, $59c5                                   ; $67d3: $ca $c5 $59

    db $10                                        ; $67d6: $10
    or a                                          ; $67d7: $b7
    or l                                          ; $67d8: $b5
    or $54                                        ; $67d9: $f6 $54
    xor [hl]                                      ; $67db: $ae
    or a                                          ; $67dc: $b7
    dec sp                                        ; $67dd: $3b
    call $faec                                    ; $67de: $cd $ec $fa
    ld a, [hl+]                                   ; $67e1: $2a
    jr jr_056_67e5                                ; $67e2: $18 $01

    cp l                                          ; $67e4: $bd

jr_056_67e5:
    rst $18                                       ; $67e5: $df
    ld hl, $a95f                                  ; $67e6: $21 $5f $a9
    and l                                         ; $67e9: $a5
    db $10                                        ; $67ea: $10
    ld e, a                                       ; $67eb: $5f
    ld b, d                                       ; $67ec: $42
    inc sp                                        ; $67ed: $33
    ld h, a                                       ; $67ee: $67
    ld b, c                                       ; $67ef: $41
    cp l                                          ; $67f0: $bd
    ld e, e                                       ; $67f1: $5b
    ld c, [hl]                                    ; $67f2: $4e
    ld e, h                                       ; $67f3: $5c
    db $eb                                        ; $67f4: $eb
    ld sp, hl                                     ; $67f5: $f9
    inc h                                         ; $67f6: $24
    sbc b                                         ; $67f7: $98
    ld e, h                                       ; $67f8: $5c
    ld c, h                                       ; $67f9: $4c
    jr nz, @-$41                                  ; $67fa: $20 $bd

    sla c                                         ; $67fc: $cb $21
    rst $10                                       ; $67fe: $d7
    rst $10                                       ; $67ff: $d7
    rst $08                                       ; $6800: $cf
    sub h                                         ; $6801: $94
    ld h, l                                       ; $6802: $65
    and c                                         ; $6803: $a1
    dec a                                         ; $6804: $3d
    ld h, [hl]                                    ; $6805: $66
    inc hl                                        ; $6806: $23
    ld [hl], a                                    ; $6807: $77
    cp l                                          ; $6808: $bd
    call nz, $5e25                                ; $6809: $c4 $25 $5e
    or a                                          ; $680c: $b7
    rst $28                                       ; $680d: $ef
    adc $c2                                       ; $680e: $ce $c2
    jr c, jr_056_67a9                             ; $6810: $38 $97

    dec b                                         ; $6812: $05
    or h                                          ; $6813: $b4
    ld b, $01                                     ; $6814: $06 $01
    ld [hl], a                                    ; $6816: $77
    inc b                                         ; $6817: $04
    ld a, c                                       ; $6818: $79
    db $fc                                        ; $6819: $fc
    rst $18                                       ; $681a: $df
    add b                                         ; $681b: $80
    db $fc                                        ; $681c: $fc
    and [hl]                                      ; $681d: $a6
    ld c, $fe                                     ; $681e: $0e $fe
    ld c, h                                       ; $6820: $4c
    jr nz, @+$2b                                  ; $6821: $20 $29

    rrca                                          ; $6823: $0f
    inc [hl]                                      ; $6824: $34
    pop af                                        ; $6825: $f1
    ld [$f39f], a                                 ; $6826: $ea $9f $f3
    ld b, $50                                     ; $6829: $06 $50
    rrca                                          ; $682b: $0f
    ld h, b                                       ; $682c: $60
    ld [hl], d                                    ; $682d: $72
    ld d, [hl]                                    ; $682e: $56
    ld [$dbbd], sp                                ; $682f: $08 $bd $db
    inc de                                        ; $6832: $13
    sbc h                                         ; $6833: $9c
    res 7, e                                      ; $6834: $cb $bb
    rst $08                                       ; $6836: $cf
    cpl                                           ; $6837: $2f
    ld a, [$b720]                                 ; $6838: $fa $20 $b7
    cp h                                          ; $683b: $bc
    ld b, [hl]                                    ; $683c: $46
    ld h, a                                       ; $683d: $67
    cp l                                          ; $683e: $bd
    halt                                          ; $683f: $76
    ld c, e                                       ; $6840: $4b
    ld a, e                                       ; $6841: $7b
    ld h, d                                       ; $6842: $62
    inc b                                         ; $6843: $04
    or a                                          ; $6844: $b7
    cp e                                          ; $6845: $bb
    ld a, l                                       ; $6846: $7d
    or b                                          ; $6847: $b0
    ld c, e                                       ; $6848: $4b
    pop de                                        ; $6849: $d1
    ld sp, $a576                                  ; $684a: $31 $76 $a5
    ld l, l                                       ; $684d: $6d
    inc b                                         ; $684e: $04
    cp l                                          ; $684f: $bd
    set 7, h                                      ; $6850: $cb $fc
    halt                                          ; $6852: $76
    db $eb                                        ; $6853: $eb
    ld h, e                                       ; $6854: $63
    ret nc                                        ; $6855: $d0

    ld b, h                                       ; $6856: $44
    res 1, c                                      ; $6857: $cb $89
    ld de, $593d                                  ; $6859: $11 $3d $59
    or d                                          ; $685c: $b2
    ld e, [hl]                                    ; $685d: $5e
    rst $38                                       ; $685e: $ff
    db $ed                                        ; $685f: $ed
    ld e, $9d                                     ; $6860: $1e $9d
    ld b, c                                       ; $6862: $41
    ld h, a                                       ; $6863: $67
    sbc h                                         ; $6864: $9c
    ld [hl], $02                                  ; $6865: $36 $02
    cp l                                          ; $6867: $bd
    ccf                                           ; $6868: $3f
    ld c, l                                       ; $6869: $4d
    rst $20                                       ; $686a: $e7
    ld d, d                                       ; $686b: $52
    cp e                                          ; $686c: $bb
    or a                                          ; $686d: $b7
    dec [hl]                                      ; $686e: $35
    rla                                           ; $686f: $17
    ld h, a                                       ; $6870: $67
    ld b, c                                       ; $6871: $41
    ld a, l                                       ; $6872: $7d
    ld [hl-], a                                   ; $6873: $32

jr_056_6874:
    ld l, b                                       ; $6874: $68
    ld e, l                                       ; $6875: $5d
    call nc, $8a5b                                ; $6876: $d4 $5b $8a
    ld h, $fa                                     ; $6879: $26 $fa
    jr nz, jr_056_6874                            ; $687b: $20 $f7

    db $eb                                        ; $687d: $eb
    ld e, c                                       ; $687e: $59
    jp nz, $cbee                                  ; $687f: $c2 $ee $cb

    ld [$b9dd], sp                                ; $6882: $08 $dd $b9
    ld b, b                                       ; $6885: $40
    cp a                                          ; $6886: $bf
    inc sp                                        ; $6887: $33
    jr nz, jr_056_68f8                            ; $6888: $20 $6e

    dec l                                         ; $688a: $2d
    db $ed                                        ; $688b: $ed
    sub [hl]                                      ; $688c: $96
    inc de                                        ; $688d: $13
    dec hl                                        ; $688e: $2b
    inc b                                         ; $688f: $04
    rst $30                                       ; $6890: $f7
    inc a                                         ; $6891: $3c
    ld a, [hl]                                    ; $6892: $7e
    ld [hl-], a                                   ; $6893: $32
    ld h, l                                       ; $6894: $65
    sbc c                                         ; $6895: $99
    ld e, b                                       ; $6896: $58
    cp c                                          ; $6897: $b9
    ld d, h                                       ; $6898: $54
    add hl, sp                                    ; $6899: $39
    ld a, [c]                                     ; $689a: $f2
    rrca                                          ; $689b: $0f
    ld b, [hl]                                    ; $689c: $46
    ld [hl], a                                    ; $689d: $77
    rst $20                                       ; $689e: $e7
    ld a, [bc]                                    ; $689f: $0a
    ld c, a                                       ; $68a0: $4f
    sub $bc                                       ; $68a1: $d6 $bc
    db $db                                        ; $68a3: $db
    sbc a                                         ; $68a4: $9f
    ld b, $01                                     ; $68a5: $06 $01
    or a                                          ; $68a7: $b7
    sub $3f                                       ; $68a8: $d6 $3f
    db $e4                                        ; $68aa: $e4
    sub a                                         ; $68ab: $97
    db $dd                                        ; $68ac: $dd
    ld e, d                                       ; $68ad: $5a
    ld e, c                                       ; $68ae: $59
    ld [hl+], a                                   ; $68af: $22
    ld [bc], a                                    ; $68b0: $02
    cp l                                          ; $68b1: $bd
    ld [hl], l                                    ; $68b2: $75
    and $5c                                       ; $68b3: $e6 $5c
    ld a, b                                       ; $68b5: $78
    jp z, $d0b2                                   ; $68b6: $ca $b2 $d0

    ld d, l                                       ; $68b9: $55
    or c                                          ; $68ba: $b1
    cp l                                          ; $68bb: $bd
    ld [hl-], a                                   ; $68bc: $32
    ld [bc], a                                    ; $68bd: $02
    or a                                          ; $68be: $b7
    ld hl, sp+$71                                 ; $68bf: $f8 $71
    ld a, l                                       ; $68c1: $7d
    or b                                          ; $68c2: $b0
    cp e                                          ; $68c3: $bb
    and l                                         ; $68c4: $a5
    ld h, l                                       ; $68c5: $65
    or b                                          ; $68c6: $b0
    rrca                                          ; $68c7: $0f
    inc hl                                        ; $68c8: $23
    scf                                           ; $68c9: $37
    or a                                          ; $68ca: $b7
    or h                                          ; $68cb: $b4
    adc e                                         ; $68cc: $8b
    rst $18                                       ; $68cd: $df
    nop                                           ; $68ce: $00
    and $cc                                       ; $68cf: $e6 $cc
    call nz, $0d6f                                ; $68d1: $c4 $6f $0d
    ld bc, $5f40                                  ; $68d4: $01 $40 $5f
    ld a, [c]                                     ; $68d7: $f2
    ld e, l                                       ; $68d8: $5d
    inc bc                                        ; $68d9: $03
    ldh a, [$0e]                                  ; $68da: $f0 $0e
    rst $10                                       ; $68dc: $d7
    rlca                                          ; $68dd: $07
    dec e                                         ; $68de: $1d
    ld de, $5ec0                                  ; $68df: $11 $c0 $5e
    xor c                                         ; $68e2: $a9
    ld h, [hl]                                    ; $68e3: $66
    call Call_056_6bee                            ; $68e4: $cd $ee $6b
    adc a                                         ; $68e7: $8f
    add hl, de                                    ; $68e8: $19
    ld bc, $1add                                  ; $68e9: $01 $dd $1a
    ld c, h                                       ; $68ec: $4c
    ld [de], a                                    ; $68ed: $12
    ld a, [c]                                     ; $68ee: $f2
    halt                                          ; $68ef: $76
    cp e                                          ; $68f0: $bb

jr_056_68f1:
    ld e, [hl]                                    ; $68f1: $5e
    ld hl, sp+$05                                 ; $68f2: $f8 $05
    inc hl                                        ; $68f4: $23
    or a                                          ; $68f5: $b7
    db $eb                                        ; $68f6: $eb
    dec l                                         ; $68f7: $2d

jr_056_68f8:
    db $ed                                        ; $68f8: $ed
    ld [c], a                                     ; $68f9: $e2
    add hl, hl                                    ; $68fa: $29
    set 5, b                                      ; $68fb: $cb $e8
    jp nc, Jump_000_3e44                          ; $68fd: $d2 $44 $3e

    add hl, de                                    ; $6900: $19
    ld h, e                                       ; $6901: $63
    inc hl                                        ; $6902: $23
    add b                                         ; $6903: $80
    dec l                                         ; $6904: $2d
    jp z, $cbed                                   ; $6905: $ca $ed $cb

    nop                                           ; $6908: $00
    rst $38                                       ; $6909: $ff
    sub $8a                                       ; $690a: $d6 $8a
    ld d, d                                       ; $690c: $52
    ld b, [hl]                                    ; $690d: $46
    nop                                           ; $690e: $00
    ld a, a                                       ; $690f: $7f
    ld l, e                                       ; $6910: $6b
    sbc d                                         ; $6911: $9a
    ld bc, $d1cc                                  ; $6912: $01 $cc $d1
    ld [$beb7], sp                                ; $6915: $08 $b7 $be
    ld l, d                                       ; $6918: $6a
    sbc c                                         ; $6919: $99
    ld sp, hl                                     ; $691a: $f9
    db $ed                                        ; $691b: $ed
    cp [hl]                                       ; $691c: $be
    cpl                                           ; $691d: $2f
    pop af                                        ; $691e: $f1
    ld [hl], b                                    ; $691f: $70
    ld d, $23                                     ; $6920: $16 $23
    or a                                          ; $6922: $b7
    xor c                                         ; $6923: $a9
    ldh a, [rOCPS]                                ; $6924: $f0 $6a
    add hl, hl                                    ; $6926: $29
    ld e, h                                       ; $6927: $5c
    ld e, c                                       ; $6928: $59
    ld l, a                                       ; $6929: $6f
    pop bc                                        ; $692a: $c1
    add l                                         ; $692b: $85
    nop                                           ; $692c: $00
    dec a                                         ; $692d: $3d
    cpl                                           ; $692e: $2f
    ld [hl], c                                    ; $692f: $71
    res 4, b                                      ; $6930: $cb $a0
    db $e3                                        ; $6932: $e3
    ld d, d                                       ; $6933: $52
    ret nz                                        ; $6934: $c0

    ret c                                         ; $6935: $d8

    db $fc                                        ; $6936: $fc
    dec h                                         ; $6937: $25
    jr nz, jr_056_68f1                            ; $6938: $20 $b7

    or a                                          ; $693a: $b7
    sub a                                         ; $693b: $97
    ld a, h                                       ; $693c: $7c
    db $fd                                        ; $693d: $fd
    db $ec                                        ; $693e: $ec
    ld d, $b7                                     ; $693f: $16 $b7
    or h                                          ; $6941: $b4
    ld b, $01                                     ; $6942: $06 $01
    ld a, l                                       ; $6944: $7d
    db $f4                                        ; $6945: $f4
    jp $d9fa                                      ; $6946: $c3 $fa $d9


    ld a, l                                       ; $6949: $7d
    cp a                                          ; $694a: $bf
    or l                                          ; $694b: $b5
    rrca                                          ; $694c: $0f
    and $83                                       ; $694d: $e6 $83
    adc [hl]                                      ; $694f: $8e
    call $f708                                    ; $6950: $cd $08 $f7
    db $e4                                        ; $6953: $e4
    ld c, d                                       ; $6954: $4a
    call c, Call_000_1006                         ; $6955: $dc $06 $10
    ld c, h                                       ; $6958: $4c
    sub [hl]                                      ; $6959: $96
    adc b                                         ; $695a: $88
    nop                                           ; $695b: $00
    rst $30                                       ; $695c: $f7
    ld e, $30                                     ; $695d: $1e $30
    xor a                                         ; $695f: $af
    xor c                                         ; $6960: $a9
    db $dd                                        ; $6961: $dd
    ld [c], a                                     ; $6962: $e2
    add a                                         ; $6963: $87
    rst $38                                       ; $6964: $ff
    ld hl, $b710                                  ; $6965: $21 $10 $b7
    and $12                                       ; $6968: $e6 $12
    or a                                          ; $696a: $b7
    xor a                                         ; $696b: $af
    sbc a                                         ; $696c: $9f
    db $dd                                        ; $696d: $dd
    inc e                                         ; $696e: $1c
    ld [$e493], a                                 ; $696f: $ea $93 $e4
    ld b, e                                       ; $6972: $43
    cp l                                          ; $6973: $bd
    push af                                       ; $6974: $f5
    sub $7e                                       ; $6975: $d6 $7e
    ld [c], a                                     ; $6977: $e2
    jp c, Jump_000_397d                           ; $6978: $da $7d $39

    ld a, [hl-]                                   ; $697b: $3a
    xor l                                         ; $697c: $ad
    ld b, c                                       ; $697d: $41
    add hl, hl                                    ; $697e: $29
    xor a                                         ; $697f: $af
    pop hl                                        ; $6980: $e1
    daa                                           ; $6981: $27
    jp z, $dbb5                                   ; $6982: $ca $b5 $db

    rst $38                                       ; $6985: $ff
    ld l, c                                       ; $6986: $69
    ld b, [hl]                                    ; $6987: $46
    cp l                                          ; $6988: $bd
    sbc e                                         ; $6989: $9b
    ld b, l                                       ; $698a: $45
    cp l                                          ; $698b: $bd
    db $dd                                        ; $698c: $dd
    ld c, d                                       ; $698d: $4a
    ld a, h                                       ; $698e: $7c
    and $0c                                       ; $698f: $e6 $0c
    ld a, [hl-]                                   ; $6991: $3a
    ld [hl+], a                                   ; $6992: $22
    scf                                           ; $6993: $37
    xor e                                         ; $6994: $ab
    rst $10                                       ; $6995: $d7
    jp nc, Jump_000_1e2e                          ; $6996: $d2 $2e $1e

    ldh [$2f], a                                  ; $6999: $e0 $2f
    and c                                         ; $699b: $a1
    ld a, l                                       ; $699c: $7d
    add hl, bc                                    ; $699d: $09
    ld [$b9f7], sp                                ; $699e: $08 $f7 $b9
    ld c, b                                       ; $69a1: $48
    or e                                          ; $69a2: $b3
    cp $76                                        ; $69a3: $fe $76
    ei                                            ; $69a5: $fb
    inc de                                        ; $69a6: $13
    ret nc                                        ; $69a7: $d0

    ld e, c                                       ; $69a8: $59
    cpl                                           ; $69a9: $2f
    ld b, [hl]                                    ; $69aa: $46
    ld [hl], a                                    ; $69ab: $77
    cp [hl]                                       ; $69ac: $be
    ld [hl], e                                    ; $69ad: $73
    sbc [hl]                                      ; $69ae: $9e
    xor b                                         ; $69af: $a8
    ld a, d                                       ; $69b0: $7a
    inc bc                                        ; $69b1: $03
    db $fc                                        ; $69b2: $fc
    jp nc, $f1ed                                  ; $69b3: $d2 $ed $f1

    adc c                                         ; $69b6: $89
    ld a, [de]                                    ; $69b7: $1a
    inc b                                         ; $69b8: $04
    ld [hl], a                                    ; $69b9: $77
    ld h, a                                       ; $69ba: $67
    ld a, [c]                                     ; $69bb: $f2
    add sp, $07                                   ; $69bc: $e8 $07
    ld bc, $34b7                                  ; $69be: $01 $b7 $34
    dec bc                                        ; $69c1: $0b
    pop hl                                        ; $69c2: $e1
    adc a                                         ; $69c3: $8f
    sub a                                         ; $69c4: $97
    jp nz, $45af                                  ; $69c5: $c2 $af $45

    inc b                                         ; $69c8: $04
    scf                                           ; $69c9: $37
    or a                                          ; $69ca: $b7
    or h                                          ; $69cb: $b4
    db $eb                                        ; $69cc: $eb
    rst $00                                       ; $69cd: $c7
    push af                                       ; $69ce: $f5
    ld l, $5d                                     ; $69cf: $2e $5d
    db $e4                                        ; $69d1: $e4
    ld c, e                                       ; $69d2: $4b
    ld b, b                                       ; $69d3: $40
    ld [hl], a                                    ; $69d4: $77
    cp e                                          ; $69d5: $bb
    jp c, Jump_000_0417                           ; $69d6: $da $17 $04

    or a                                          ; $69d9: $b7
    dec [hl]                                      ; $69da: $35
    cp d                                          ; $69db: $ba
    cp [hl]                                       ; $69dc: $be
    ld a, d                                       ; $69dd: $7a
    cp e                                          ; $69de: $bb
    or l                                          ; $69df: $b5
    cp l                                          ; $69e0: $bd
    db $10                                        ; $69e1: $10
    db $10                                        ; $69e2: $10
    cp l                                          ; $69e3: $bd
    dec hl                                        ; $69e4: $2b
    add a                                         ; $69e5: $87
    daa                                           ; $69e6: $27
    ld c, e                                       ; $69e7: $4b
    ld h, c                                       ; $69e8: $61
    dec e                                         ; $69e9: $1d
    sub e                                         ; $69ea: $93
    ld [$e8b7], sp                                ; $69eb: $08 $b7 $e8
    and l                                         ; $69ee: $a5
    ld [hl-], a                                   ; $69ef: $32
    add sp, -$48                                  ; $69f0: $e8 $b8
    cp e                                          ; $69f2: $bb
    push af                                       ; $69f3: $f5
    and [hl]                                      ; $69f4: $a6
    ld [hl], d                                    ; $69f5: $72
    ld d, $04                                     ; $69f6: $16 $04
    scf                                           ; $69f8: $37
    scf                                           ; $69f9: $37
    db $ec                                        ; $69fa: $ec
    ld a, [$e3a0]                                 ; $69fb: $fa $a0 $e3
    ld d, d                                       ; $69fe: $52
    ld e, $98                                     ; $69ff: $1e $98
    ld [hl], h                                    ; $6a01: $74
    ld a, l                                       ; $6a02: $7d
    dec d                                         ; $6a03: $15
    adc h                                         ; $6a04: $8c
    nop                                           ; $6a05: $00
    scf                                           ; $6a06: $37
    rla                                           ; $6a07: $17
    dec de                                        ; $6a08: $1b
    rst $38                                       ; $6a09: $ff
    di                                            ; $6a0a: $f3
    rst $18                                       ; $6a0b: $df
    xor $d2                                       ; $6a0c: $ee $d2
    jp hl                                         ; $6a0e: $e9


    ld hl, sp+$05                                 ; $6a0f: $f8 $05
    ld bc, $b3bd                                  ; $6a11: $01 $bd $b3
    xor b                                         ; $6a14: $a8
    call c, $78be                                 ; $6a15: $dc $be $78
    rst $30                                       ; $6a18: $f7
    or [hl]                                       ; $6a19: $b6
    ld c, a                                       ; $6a1a: $4f
    ld [de], a                                    ; $6a1b: $12
    ld c, a                                       ; $6a1c: $4f

Jump_056_6a1d:
    jr jr_056_6a20                                ; $6a1d: $18 $01

    ld [hl], a                                    ; $6a1f: $77

jr_056_6a20:
    ld h, a                                       ; $6a20: $67
    pop hl                                        ; $6a21: $e1
    rla                                           ; $6a22: $17
    ld [hl], h                                    ; $6a23: $74
    rst $28                                       ; $6a24: $ef

jr_056_6a25:
    ld c, [hl]                                    ; $6a25: $4e
    ld sp, hl                                     ; $6a26: $f9
    add c                                         ; $6a27: $81
    ldh [$66], a                                  ; $6a28: $e0 $66
    dec c                                         ; $6a2a: $0d
    ld [bc], a                                    ; $6a2b: $02
    dec a                                         ; $6a2c: $3d
    xor a                                         ; $6a2d: $af
    ld c, d                                       ; $6a2e: $4a
    or e                                          ; $6a2f: $b3
    ei                                            ; $6a30: $fb
    ld [hl-], a                                   ; $6a31: $32
    or e                                          ; $6a32: $b3
    dec bc                                        ; $6a33: $0b
    ld bc, $2edd                                  ; $6a34: $01 $dd $2e
    jr nc, @+$18                                  ; $6a37: $30 $16

    ld e, [hl]                                    ; $6a39: $5e
    ld a, [bc]                                    ; $6a3a: $0a
    pop af                                        ; $6a3b: $f1
    ld sp, $bed9                                  ; $6a3c: $31 $d9 $be
    inc b                                         ; $6a3f: $04
    inc b                                         ; $6a40: $04
    cp l                                          ; $6a41: $bd
    ld [hl], l                                    ; $6a42: $75
    ld hl, $537e                                  ; $6a43: $21 $7e $53
    ld l, a                                       ; $6a46: $6f
    ld [hl], h                                    ; $6a47: $74

Jump_056_6a48:
    cp l                                          ; $6a48: $bd
    push af                                       ; $6a49: $f5
    adc $75                                       ; $6a4a: $ce $75
    adc h                                         ; $6a4c: $8c
    ld [hl], e                                    ; $6a4d: $73
    ld l, $04                                     ; $6a4e: $2e $04
    or a                                          ; $6a50: $b7
    or [hl]                                       ; $6a51: $b6
    sbc a                                         ; $6a52: $9f
    sub l                                         ; $6a53: $95
    inc a                                         ; $6a54: $3c
    inc b                                         ; $6a55: $04
    or a                                          ; $6a56: $b7
    ld hl, sp-$17                                 ; $6a57: $f8 $e9
    jr c, jr_056_6a66                             ; $6a59: $38 $0b

    rst $28                                       ; $6a5b: $ef
    xor $57                                       ; $6a5c: $ee $57
    sbc l                                         ; $6a5e: $9d
    ld e, h                                       ; $6a5f: $5c
    ccf                                           ; $6a60: $3f

Jump_056_6a61:
    db $fd                                        ; $6a61: $fd
    inc h                                         ; $6a62: $24
    ld e, $04                                     ; $6a63: $1e $04
    or a                                          ; $6a65: $b7

jr_056_6a66:
    ld [de], a                                    ; $6a66: $12
    ld c, a                                       ; $6a67: $4f

Call_056_6a68:
    rla                                           ; $6a68: $17
    ret nc                                        ; $6a69: $d0

    sub $ec                                       ; $6a6a: $d6 $ec
    sbc $a6                                       ; $6a6c: $de $a6
    ld [$60ab], a                                 ; $6a6e: $ea $ab $60
    inc b                                         ; $6a71: $04
    ld [hl], a                                    ; $6a72: $77
    db $eb                                        ; $6a73: $eb
    ld [de], a                                    ; $6a74: $12
    ld a, [c]                                     ; $6a75: $f2
    ld l, [hl]                                    ; $6a76: $6e
    ret                                           ; $6a77: $c9


    ld b, d                                       ; $6a78: $42
    inc a                                         ; $6a79: $3c
    adc h                                         ; $6a7a: $8c
    nop                                           ; $6a7b: $00
    ld b, b                                       ; $6a7c: $40
    ld a, [hl]                                    ; $6a7d: $7e
    and e                                         ; $6a7e: $a3
    bit 5, d                                      ; $6a7f: $cb $6a
    or a                                          ; $6a81: $b7
    dec [hl]                                      ; $6a82: $35
    sub d                                         ; $6a83: $92
    ld hl, sp-$60                                 ; $6a84: $f8 $a0
    inc hl                                        ; $6a86: $23
    ld [bc], a                                    ; $6a87: $02
    or a                                          ; $6a88: $b7
    call nc, $c157                                ; $6a89: $d4 $57 $c1
    inc a                                         ; $6a8c: $3c
    jr nz, jr_056_6a25                            ; $6a8d: $20 $96

    sub [hl]                                      ; $6a8f: $96
    ld b, c                                       ; $6a90: $41
    ld b, a                                       ; $6a91: $47
    inc b                                         ; $6a92: $04
    cp l                                          ; $6a93: $bd
    ld [hl], l                                    ; $6a94: $75
    ld d, l                                       ; $6a95: $55
    ccf                                           ; $6a96: $3f
    xor [hl]                                      ; $6a97: $ae
    ld [hl], a                                    ; $6a98: $77
    ld a, l                                       ; $6a99: $7d
    sbc d                                         ; $6a9a: $9a
    cp $12                                        ; $6a9b: $fe $12
    db $10                                        ; $6a9d: $10
    ld [hl], a                                    ; $6a9e: $77
    rst $38                                       ; $6a9f: $ff
    ld a, d                                       ; $6aa0: $7a
    and d                                         ; $6aa1: $a2
    sbc $7a                                       ; $6aa2: $de $7a
    cp d                                          ; $6aa4: $ba
    db $e4                                        ; $6aa5: $e4
    db $10                                        ; $6aa6: $10
    ld e, l                                       ; $6aa7: $5d
    ld e, l                                       ; $6aa8: $5d
    ld de, $2901                                  ; $6aa9: $11 $01 $29
    xor a                                         ; $6aac: $af
    dec a                                         ; $6aad: $3d
    ld [hl], b                                    ; $6aae: $70
    xor a                                         ; $6aaf: $af
    sub [hl]                                      ; $6ab0: $96
    add d                                         ; $6ab1: $82
    dec [hl]                                      ; $6ab2: $35
    pop hl                                        ; $6ab3: $e1
    sub l                                         ; $6ab4: $95
    ld b, d                                       ; $6ab5: $42
    db $dd                                        ; $6ab6: $dd
    sub l                                         ; $6ab7: $95
    ld b, l                                       ; $6ab8: $45
    cp [hl]                                       ; $6ab9: $be
    add h                                         ; $6aba: $84
    db $dd                                        ; $6abb: $dd
    db $fd                                        ; $6abc: $fd
    sbc h                                         ; $6abd: $9c
    jr jr_056_6ac1                                ; $6abe: $18 $01

    dec a                                         ; $6ac0: $3d

jr_056_6ac1:
    ld l, [hl]                                    ; $6ac1: $6e
    pop hl                                        ; $6ac2: $e1
    xor l                                         ; $6ac3: $ad
    add a                                         ; $6ac4: $87
    ld a, [hl-]                                   ; $6ac5: $3a
    jp hl                                         ; $6ac6: $e9


    ld b, [hl]                                    ; $6ac7: $46
    dec e                                         ; $6ac8: $1d
    inc b                                         ; $6ac9: $04
    nop                                           ; $6aca: $00
    sbc $69                                       ; $6acb: $de $69
    ld l, a                                       ; $6acd: $6f
    nop                                           ; $6ace: $00
    ld e, [hl]                                    ; $6acf: $5e
    ld [hl+], a                                   ; $6ad0: $22
    or c                                          ; $6ad1: $b1
    ld h, l                                       ; $6ad2: $65
    inc b                                         ; $6ad3: $04
    dec a                                         ; $6ad4: $3d
    sub [hl]                                      ; $6ad5: $96
    ldh a, [rIF]                                  ; $6ad6: $f0 $0f
    adc a                                         ; $6ad8: $8f
    xor [hl]                                      ; $6ad9: $ae
    or a                                          ; $6ada: $b7
    dec sp                                        ; $6adb: $3b
    db $eb                                        ; $6adc: $eb
    ld sp, $bba7                                  ; $6add: $31 $a7 $bb
    ld a, [de]                                    ; $6ae0: $1a
    ld [bc], a                                    ; $6ae1: $02
    db $dd                                        ; $6ae2: $dd
    rst $28                                       ; $6ae3: $ef
    rra                                           ; $6ae4: $1f
    call $b3ba                                    ; $6ae5: $cd $ba $b3
    ld d, d                                       ; $6ae8: $52
    xor [hl]                                      ; $6ae9: $ae
    xor a                                         ; $6aea: $af
    add d                                         ; $6aeb: $82
    ld de, $b737                                  ; $6aec: $11 $37 $b7
    or h                                          ; $6aef: $b4
    ld a, [hl]                                    ; $6af0: $7e
    sub $a3                                       ; $6af1: $d6 $a3
    db $e3                                        ; $6af3: $e3
    and $23                                       ; $6af4: $e6 $23
    ld a, d                                       ; $6af6: $7a
    dec d                                         ; $6af7: $15
    ld [bc], a                                    ; $6af8: $02
    db $dd                                        ; $6af9: $dd
    ld e, c                                       ; $6afa: $59
    ld e, [hl]                                    ; $6afb: $5e
    jr nz, @-$60                                  ; $6afc: $20 $9e

    inc c                                         ; $6afe: $0c
    ld h, b                                       ; $6aff: $60
    add hl, de                                    ; $6b00: $19
    scf                                           ; $6b01: $37
    inc sp                                        ; $6b02: $33
    inc hl                                        ; $6b03: $23
    ld [hl], a                                    ; $6b04: $77
    db $eb                                        ; $6b05: $eb
    rst $20                                       ; $6b06: $e7
    xor e                                         ; $6b07: $ab
    ld e, h                                       ; $6b08: $5c
    ld l, a                                       ; $6b09: $6f
    or a                                          ; $6b0a: $b7
    cp h                                          ; $6b0b: $bc
    adc d                                         ; $6b0c: $8a
    ld h, b                                       ; $6b0d: $60
    ld a, $13                                     ; $6b0e: $3e $13
    ld [$bfbd], sp                                ; $6b10: $08 $bd $bf
    ld [hl], d                                    ; $6b13: $72
    sub [hl]                                      ; $6b14: $96
    db $dd                                        ; $6b15: $dd
    ld e, d                                       ; $6b16: $5a
    ld a, [hl-]                                   ; $6b17: $3a
    ld c, [hl]                                    ; $6b18: $4e
    inc hl                                        ; $6b19: $23
    dec a                                         ; $6b1a: $3d
    ld l, $fc                                     ; $6b1b: $2e $fc
    ld h, h                                       ; $6b1d: $64
    ld b, b                                       ; $6b1e: $40
    cp [hl]                                       ; $6b1f: $be
    ld [hl], b                                    ; $6b20: $70
    ld a, l                                       ; $6b21: $7d
    add hl, bc                                    ; $6b22: $09
    call nz, Call_000_08c3                        ; $6b23: $c4 $c3 $08
    ld [hl], a                                    ; $6b26: $77
    cp $6a                                        ; $6b27: $fe $6a
    sub $ac                                       ; $6b29: $d6 $ac

jr_056_6b2b:
    ld e, e                                       ; $6b2b: $5b
    adc a                                         ; $6b2c: $8f
    ld b, [hl]                                    ; $6b2d: $46
    ld [hl], a                                    ; $6b2e: $77
    ld l, e                                       ; $6b2f: $6b
    ld a, [hl+]                                   ; $6b30: $2a
    res 0, b                                      ; $6b31: $cb $80
    cp h                                          ; $6b33: $bc
    ret nz                                        ; $6b34: $c0

    rst $28                                       ; $6b35: $ef
    scf                                           ; $6b36: $37
    inc b                                         ; $6b37: $04
    rst $30                                       ; $6b38: $f7
    sub $f9                                       ; $6b39: $d6 $f9
    sub d                                         ; $6b3b: $92
    rlca                                          ; $6b3c: $07

jr_056_6b3d:
    sub b                                         ; $6b3d: $90
    jr z, jr_056_6b3d                             ; $6b3e: $28 $fd

    ld [hl], b                                    ; $6b40: $70
    ld d, $04                                     ; $6b41: $16 $04
    or a                                          ; $6b43: $b7
    cp d                                          ; $6b44: $ba
    ld sp, hl                                     ; $6b45: $f9
    ldh a, [$97]                                  ; $6b46: $f0 $97
    or a                                          ; $6b48: $b7
    sub h                                         ; $6b49: $94
    adc $c3                                       ; $6b4a: $ce $c3
    ld c, a                                       ; $6b4c: $4f
    jr jr_056_6b50                                ; $6b4d: $18 $01

    dec a                                         ; $6b4f: $3d

jr_056_6b50:
    ld a, [hl]                                    ; $6b50: $7e
    ld c, h                                       ; $6b51: $4c
    add b                                         ; $6b52: $80
    adc $ec                                       ; $6b53: $ce $ec
    db $dd                                        ; $6b55: $dd
    ld a, [c]                                     ; $6b56: $f2
    ld a, [hl+]                                   ; $6b57: $2a
    db $fd                                        ; $6b58: $fd
    ld c, d                                       ; $6b59: $4a
    add e                                         ; $6b5a: $83
    nop                                           ; $6b5b: $00
    ld [hl], a                                    ; $6b5c: $77
    cp e                                          ; $6b5d: $bb
    jr c, jr_056_6b2b                             ; $6b5e: $38 $cb

    ld a, d                                       ; $6b60: $7a

jr_056_6b61:
    rst $10                                       ; $6b61: $d7
    ld c, e                                       ; $6b62: $4b
    ld a, h                                       ; $6b63: $7c
    db $10                                        ; $6b64: $10
    or a                                          ; $6b65: $b7
    ld h, h                                       ; $6b66: $64
    jr nc, jr_056_6b61                            ; $6b67: $30 $f8

    ret                                           ; $6b69: $c9


    add b                                         ; $6b6a: $80
    call nc, Call_000_040f                        ; $6b6b: $d4 $0f $04
    inc hl                                        ; $6b6e: $23
    ld a, l                                       ; $6b6f: $7d
    ld a, [c]                                     ; $6b70: $f2
    ld bc, $f6ed                                  ; $6b71: $01 $ed $f6
    ld b, l                                       ; $6b74: $45
    dec c                                         ; $6b75: $0d
    ret z                                         ; $6b76: $c8

    ld d, e                                       ; $6b77: $53
    and b                                         ; $6b78: $a0
    inc sp                                        ; $6b79: $33
    add sp, -$78                                  ; $6b7a: $e8 $88
    nop                                           ; $6b7c: $00
    cp l                                          ; $6b7d: $bd
    pop bc                                        ; $6b7e: $c1
    ld e, b                                       ; $6b7f: $58
    ld [hl], d                                    ; $6b80: $72
    ld e, b                                       ; $6b81: $58
    sbc a                                         ; $6b82: $9f
    inc l                                         ; $6b83: $2c
    ld a, $08                                     ; $6b84: $3e $08
    or a                                          ; $6b86: $b7
    ld l, d                                       ; $6b87: $6a
    ret z                                         ; $6b88: $c8

    ld a, [$064f]                                 ; $6b89: $fa $4f $06
    inc l                                         ; $6b8c: $2c
    db $eb                                        ; $6b8d: $eb
    xor d                                         ; $6b8e: $aa
    add hl, de                                    ; $6b8f: $19
    ld bc, $4edd                                  ; $6b90: $01 $dd $4e
    jp c, $0197                                   ; $6b93: $da $97 $01

    ld hl, $9b3e                                  ; $6b96: $21 $3e $9b

jr_056_6b99:
    ret z                                         ; $6b99: $c8

    dec h                                         ; $6b9a: $25
    ld [$badd], sp                                ; $6b9b: $08 $dd $ba
    and h                                         ; $6b9e: $a4
    ld e, a                                       ; $6b9f: $5f
    db $ed                                        ; $6ba0: $ed
    sbc $d0                                       ; $6ba1: $de $d0
    call z, $2e44                                 ; $6ba3: $cc $44 $2e
    jp nc, Jump_056_7708                          ; $6ba6: $d2 $08 $77

    add hl, sp                                    ; $6ba9: $39
    sub e                                         ; $6baa: $93
    cp c                                          ; $6bab: $b9
    xor c                                         ; $6bac: $a9
    cpl                                           ; $6bad: $2f
    ld l, a                                       ; $6bae: $6f
    add hl, hl                                    ; $6baf: $29
    ret c                                         ; $6bb0: $d8

    ld c, h                                       ; $6bb1: $4c
    add b                                         ; $6bb2: $80
    pop de                                        ; $6bb3: $d1
    add b                                         ; $6bb4: $80
    adc [hl]                                      ; $6bb5: $8e
    ld [$b200], sp                                ; $6bb6: $08 $00 $b2
    ld [hl], d                                    ; $6bb9: $72
    ld a, l                                       ; $6bba: $7d
    ret nc                                        ; $6bbb: $d0

Call_056_6bbc:
    ld [hl], c                                    ; $6bbc: $71
    rst $30                                       ; $6bbd: $f7
    dec [hl]                                      ; $6bbe: $35
    dec e                                         ; $6bbf: $1d
    sub e                                         ; $6bc0: $93
    sbc h                                         ; $6bc1: $9c
    dec b                                         ; $6bc2: $05
    ld bc, $7200                                  ; $6bc3: $01 $00 $72
    ld a, e                                       ; $6bc6: $7b
    and d                                         ; $6bc7: $a2
    halt                                          ; $6bc8: $76
    and a                                         ; $6bc9: $a7
    ld b, e                                       ; $6bca: $43
    ld b, b                                       ; $6bcb: $40
    dec a                                         ; $6bcc: $3d
    ld l, $32                                     ; $6bcd: $2e $32
    ld c, a                                       ; $6bcf: $4f
    ld e, c                                       ; $6bd0: $59
    ld d, $ea                                     ; $6bd1: $16 $ea
    ld h, e                                       ; $6bd3: $63
    ld l, h                                       ; $6bd4: $6c
    inc b                                         ; $6bd5: $04
    scf                                           ; $6bd6: $37
    adc e                                         ; $6bd7: $8b
    xor d                                         ; $6bd8: $aa
    ld a, h                                       ; $6bd9: $7c
    and [hl]                                      ; $6bda: $a6
    inc l                                         ; $6bdb: $2c
    db $d3                                        ; $6bdc: $d3
    ld [hl], e                                    ; $6bdd: $73
    ld [c], a                                     ; $6bde: $e2
    ld c, d                                       ; $6bdf: $4a
    cp [hl]                                       ; $6be0: $be
    adc b                                         ; $6be1: $88
    db $db                                        ; $6be2: $db
    rrca                                          ; $6be3: $0f
    ld b, [hl]                                    ; $6be4: $46
    add b                                         ; $6be5: $80
    ld [$29c7], a                                 ; $6be6: $ea $c7 $29
    set 7, h                                      ; $6be9: $cb $fc
    push hl                                       ; $6beb: $e5
    ld [hl], b                                    ; $6bec: $70
    sub a                                         ; $6bed: $97

Call_056_6bee:
    ld de, $e577                                  ; $6bee: $11 $77 $e5
    ld d, d                                       ; $6bf1: $52
    ld c, e                                       ; $6bf2: $4b
    pop hl                                        ; $6bf3: $e1
    xor h                                         ; $6bf4: $ac
    call nc, $352b                                ; $6bf5: $d4 $2b $35
    jr nz, jr_056_6b99                            ; $6bf8: $20 $9f

    add hl, bc                                    ; $6bfa: $09
    rst $10                                       ; $6bfb: $d7
    ld b, c                                       ; $6bfc: $41
    ld [hl], a                                    ; $6bfd: $77
    cp $8a                                        ; $6bfe: $fe $8a
    ld b, [hl]                                    ; $6c00: $46
    ld [hl], a                                    ; $6c01: $77
    rst $38                                       ; $6c02: $ff
    ld a, d                                       ; $6c03: $7a
    ld l, c                                       ; $6c04: $69
    or a                                          ; $6c05: $b7
    or $76                                        ; $6c06: $f6 $76
    ld e, a                                       ; $6c08: $5f
    db $d3                                        ; $6c09: $d3
    dec h                                         ; $6c0a: $25
    sbc d                                         ; $6c0b: $9a
    add hl, de                                    ; $6c0c: $19
    ld bc, $b8b7                                  ; $6c0d: $01 $b7 $b8
    cp b                                          ; $6c10: $b8
    ld e, $de                                     ; $6c11: $1e $de
    dec l                                         ; $6c13: $2d
    ld a, [hl-]                                   ; $6c14: $3a
    inc sp                                        ; $6c15: $33
    ld [bc], a                                    ; $6c16: $02
    nop                                           ; $6c17: $00
    adc c                                         ; $6c18: $89
    and a                                         ; $6c19: $a7
    sub h                                         ; $6c1a: $94
    push af                                       ; $6c1b: $f5
    inc sp                                        ; $6c1c: $33
    add b                                         ; $6c1d: $80
    add h                                         ; $6c1e: $84
    ld e, [hl]                                    ; $6c1f: $5e
    pop de                                        ; $6c20: $d1
    xor l                                         ; $6c21: $ad
    ld hl, $6280                                  ; $6c22: $21 $80 $62
    rst $00                                       ; $6c25: $c7
    jp nz, Jump_056_4308                          ; $6c26: $c2 $08 $43

    add b                                         ; $6c29: $80
    sbc b                                         ; $6c2a: $98
    xor $aa                                       ; $6c2b: $ee $aa
    dec a                                         ; $6c2d: $3d
    add hl, bc                                    ; $6c2e: $09
    ld h, l                                       ; $6c2f: $65
    ld [de], a                                    ; $6c30: $12
    ld bc, $c81b                                  ; $6c31: $01 $1b $c8
    inc d                                         ; $6c34: $14
    sub $95                                       ; $6c35: $d6 $95
    adc e                                         ; $6c37: $8b
    dec a                                         ; $6c38: $3d
    ld c, h                                       ; $6c39: $4c
    adc c                                         ; $6c3a: $89
    jp hl                                         ; $6c3b: $e9


    ld [hl], a                                    ; $6c3c: $77
    inc l                                         ; $6c3d: $2c

Jump_056_6c3e:
    ld a, $fb                                     ; $6c3e: $3e $fb
    ld [hl+], a                                   ; $6c40: $22
    ret                                           ; $6c41: $c9


    xor a                                         ; $6c42: $af
    jr z, jr_056_6ca4                             ; $6c43: $28 $5f

    jp nz, Jump_056_6a48                          ; $6c45: $c2 $48 $6a

    ld l, [hl]                                    ; $6c48: $6e
    ccf                                           ; $6c49: $3f
    sbc [hl]                                      ; $6c4a: $9e
    ld e, a                                       ; $6c4b: $5f
    jp hl                                         ; $6c4c: $e9


    jp nc, $f084                                  ; $6c4d: $d2 $84 $f0

    dec h                                         ; $6c50: $25
    ld b, b                                       ; $6c51: $40
    inc b                                         ; $6c52: $04
    dec de                                        ; $6c53: $1b
    ret z                                         ; $6c54: $c8

    ld l, [hl]                                    ; $6c55: $6e
    rrc [hl]                                      ; $6c56: $cb $0e
    ld [hl], a                                    ; $6c58: $77
    push de                                       ; $6c59: $d5
    ld h, c                                       ; $6c5a: $61
    rst $28                                       ; $6c5b: $ef
    dec h                                         ; $6c5c: $25
    jp $295f                                      ; $6c5d: $c3 $5f $29


    or a                                          ; $6c60: $b7
    rst $10                                       ; $6c61: $d7
    sub h                                         ; $6c62: $94
    bit 6, d                                      ; $6c63: $cb $72
    or $5a                                        ; $6c65: $f6 $5a
    call nc, Call_056_7fe0                        ; $6c67: $d4 $e0 $7f
    ret c                                         ; $6c6a: $d8

    dec b                                         ; $6c6b: $05
    ld de, $c81b                                  ; $6c6c: $11 $1b $c8
    inc d                                         ; $6c6f: $14
    or d                                          ; $6c70: $b2
    inc l                                         ; $6c71: $2c
    add c                                         ; $6c72: $81
    cp l                                          ; $6c73: $bd
    or $44                                        ; $6c74: $f6 $44
    sbc l                                         ; $6c76: $9d
    or h                                          ; $6c77: $b4
    add $b2                                       ; $6c78: $c6 $b2
    cp e                                          ; $6c7a: $bb
    ld a, [hl]                                    ; $6c7b: $7e
    ld l, e                                       ; $6c7c: $6b
    ld h, $9b                                     ; $6c7d: $26 $9b
    adc [hl]                                      ; $6c7f: $8e
    ret                                           ; $6c80: $c9


    db $fd                                        ; $6c81: $fd
    dec [hl]                                      ; $6c82: $35
    sbc l                                         ; $6c83: $9d
    and $b7                                       ; $6c84: $e6 $b7
    call nz, $e96a                                ; $6c86: $c4 $6a $e9
    jp nc, Jump_056_5ee3                          ; $6c89: $d2 $e3 $5e

    ld [hl-], a                                   ; $6c8c: $32
    db $fc                                        ; $6c8d: $fc
    jp nz, $ff1f                                  ; $6c8e: $c2 $1f $ff

    ld [hl], $6a                                  ; $6c91: $36 $6a
    jp hl                                         ; $6c93: $e9


    rla                                           ; $6c94: $17
    dec a                                         ; $6c95: $3d
    set 2, d                                      ; $6c96: $cb $d2
    ld a, d                                       ; $6c98: $7a
    dec e                                         ; $6c99: $1d
    push af                                       ; $6c9a: $f5
    jp nz, Jump_000_2f89                          ; $6c9b: $c2 $89 $2f

    ld a, [de]                                    ; $6c9e: $1a
    ld [hl+], a                                   ; $6c9f: $22
    dec de                                        ; $6ca0: $1b
    ret z                                         ; $6ca1: $c8

    ld a, e                                       ; $6ca2: $7b
    ld c, c                                       ; $6ca3: $49

jr_056_6ca4:
    ld d, d                                       ; $6ca4: $52
    cp l                                          ; $6ca5: $bd
    ld h, b                                       ; $6ca6: $60
    sbc [hl]                                      ; $6ca7: $9e
    ld l, b                                       ; $6ca8: $68
    sbc b                                         ; $6ca9: $98
    dec l                                         ; $6caa: $2d
    ld a, e                                       ; $6cab: $7b
    ret                                           ; $6cac: $c9


    ld b, d                                       ; $6cad: $42
    rst $00                                       ; $6cae: $c7
    xor l                                         ; $6caf: $ad
    add hl, sp                                    ; $6cb0: $39
    sub h                                         ; $6cb1: $94
    rst $08                                       ; $6cb2: $cf
    ld e, c                                       ; $6cb3: $59
    ld h, d                                       ; $6cb4: $62
    dec [hl]                                      ; $6cb5: $35
    ld l, d                                       ; $6cb6: $6a
    add a                                         ; $6cb7: $87
    ld a, a                                       ; $6cb8: $7f
    adc h                                         ; $6cb9: $8c
    ld e, $91                                     ; $6cba: $1e $91
    sub l                                         ; $6cbc: $95
    ld a, c                                       ; $6cbd: $79
    ld a, a                                       ; $6cbe: $7f
    sub [hl]                                      ; $6cbf: $96
    dec h                                         ; $6cc0: $25
    ld c, a                                       ; $6cc1: $4f
    inc h                                         ; $6cc2: $24
    db $dd                                        ; $6cc3: $dd
    push bc                                       ; $6cc4: $c5
    ld l, h                                       ; $6cc5: $6c
    adc b                                         ; $6cc6: $88
    nop                                           ; $6cc7: $00
    dec de                                        ; $6cc8: $1b
    ret z                                         ; $6cc9: $c8

    ld e, e                                       ; $6cca: $5b
    ld e, h                                       ; $6ccb: $5c
    ld e, l                                       ; $6ccc: $5d
    sbc b                                         ; $6ccd: $98
    sub a                                         ; $6cce: $97
    ld c, c                                       ; $6ccf: $49
    sub d                                         ; $6cd0: $92
    cp $22                                        ; $6cd1: $fe $22
    xor [hl]                                      ; $6cd3: $ae
    cp l                                          ; $6cd4: $bd
    ld h, h                                       ; $6cd5: $64
    jp z, $e3b2                                   ; $6cd6: $ca $b2 $e3

    sub [hl]                                      ; $6cd9: $96
    ld d, h                                       ; $6cda: $54
    ld d, a                                       ; $6cdb: $57
    ld e, c                                       ; $6cdc: $59
    sub h                                         ; $6cdd: $94
    ld b, a                                       ; $6cde: $47
    jr c, jr_056_6cff                             ; $6cdf: $38 $1e

    rst $00                                       ; $6ce1: $c7
    adc [hl]                                      ; $6ce2: $8e
    sbc e                                         ; $6ce3: $9b
    dec b                                         ; $6ce4: $05
    ld [hl+], a                                   ; $6ce5: $22
    dec de                                        ; $6ce6: $1b
    ret z                                         ; $6ce7: $c8

    ld a, e                                       ; $6ce8: $7b
    ld c, c                                       ; $6ce9: $49
    sub d                                         ; $6cea: $92
    cp $22                                        ; $6ceb: $fe $22
    ld l, $cb                                     ; $6ced: $2e $cb
    ld e, [hl]                                    ; $6cef: $5e
    or d                                          ; $6cf0: $b2
    sbc b                                         ; $6cf1: $98
    db $fc                                        ; $6cf2: $fc
    jr jr_056_6d28                                ; $6cf3: $18 $33

    ld c, c                                       ; $6cf5: $49
    cp d                                          ; $6cf6: $ba
    ld c, b                                       ; $6cf7: $48
    sub e                                         ; $6cf8: $93
    and h                                         ; $6cf9: $a4
    ld c, e                                       ; $6cfa: $4b
    dec sp                                        ; $6cfb: $3b
    res 4, d                                      ; $6cfc: $cb $a2
    ld e, [hl]                                    ; $6cfe: $5e

jr_056_6cff:
    and e                                         ; $6cff: $a3
    ld [hl], e                                    ; $6d00: $73
    adc l                                         ; $6d01: $8d
    adc $15                                       ; $6d02: $ce $15
    dec sp                                        ; $6d04: $3b
    ld e, l                                       ; $6d05: $5d
    call $18ed                                    ; $6d06: $cd $ed $18
    ld [hl+], a                                   ; $6d09: $22
    dec de                                        ; $6d0a: $1b
    ret z                                         ; $6d0b: $c8

    ld e, e                                       ; $6d0c: $5b
    ld e, h                                       ; $6d0d: $5c
    ld e, l                                       ; $6d0e: $5d
    sbc b                                         ; $6d0f: $98
    sub a                                         ; $6d10: $97
    ld c, c                                       ; $6d11: $49
    sub d                                         ; $6d12: $92
    cp $22                                        ; $6d13: $fe $22
    xor [hl]                                      ; $6d15: $ae
    cp l                                          ; $6d16: $bd
    ld h, h                                       ; $6d17: $64
    cp l                                          ; $6d18: $bd
    sla c                                         ; $6d19: $cb $21
    rst $10                                       ; $6d1b: $d7
    rst $10                                       ; $6d1c: $d7
    ld c, a                                       ; $6d1d: $4f
    rst $38                                       ; $6d1e: $ff
    dec sp                                        ; $6d1f: $3b
    xor a                                         ; $6d20: $af
    dec h                                         ; $6d21: $25
    ld l, [hl]                                    ; $6d22: $6e
    rst $00                                       ; $6d23: $c7
    add a                                         ; $6d24: $87
    sub $5b                                       ; $6d25: $d6 $5b
    di                                            ; $6d27: $f3

jr_056_6d28:
    adc $6b                                       ; $6d28: $ce $6b
    adc c                                         ; $6d2a: $89
    db $db                                        ; $6d2b: $db
    ld sp, $1b44                                  ; $6d2c: $31 $44 $1b
    ret z                                         ; $6d2f: $c8

    ld a, e                                       ; $6d30: $7b
    ld c, c                                       ; $6d31: $49
    sub d                                         ; $6d32: $92
    cp $22                                        ; $6d33: $fe $22
    xor [hl]                                      ; $6d35: $ae
    cp l                                          ; $6d36: $bd
    ld h, h                                       ; $6d37: $64
    sub [hl]                                      ; $6d38: $96
    sub l                                         ; $6d39: $95
    ld h, e                                       ; $6d3a: $63
    db $f4                                        ; $6d3b: $f4
    call c, $cc4e                                 ; $6d3c: $dc $4e $cc
    ret                                           ; $6d3f: $c9


    ld d, c                                       ; $6d40: $51
    push af                                       ; $6d41: $f5
    ld h, e                                       ; $6d42: $63
    ld [hl], h                                    ; $6d43: $74
    ld b, c                                       ; $6d44: $41
    inc b                                         ; $6d45: $04
    dec de                                        ; $6d46: $1b
    ret z                                         ; $6d47: $c8

    ld a, e                                       ; $6d48: $7b
    ld c, c                                       ; $6d49: $49
    sub d                                         ; $6d4a: $92
    cp $22                                        ; $6d4b: $fe $22
    ld l, $cb                                     ; $6d4d: $2e $cb
    ld e, [hl]                                    ; $6d4f: $5e
    ld [hl-], a                                   ; $6d50: $32
    cp d                                          ; $6d51: $ba
    jp hl                                         ; $6d52: $e9


    sbc b                                         ; $6d53: $98
    call nc, $e25b                                ; $6d54: $d4 $5b $e2
    add d                                         ; $6d57: $82
    ld [$c81b], sp                                ; $6d58: $08 $1b $c8
    ld a, e                                       ; $6d5b: $7b
    ld c, c                                       ; $6d5c: $49
    ld d, d                                       ; $6d5d: $52
    cp l                                          ; $6d5e: $bd
    ld h, b                                       ; $6d5f: $60
    ld e, [hl]                                    ; $6d60: $5e
    ld e, d                                       ; $6d61: $5a
    db $d3                                        ; $6d62: $d3
    sbc d                                         ; $6d63: $9a
    dec hl                                        ; $6d64: $2b
    inc sp                                        ; $6d65: $33
    xor c                                         ; $6d66: $a9
    sbc a                                         ; $6d67: $9f
    ld h, e                                       ; $6d68: $63
    add hl, sp                                    ; $6d69: $39
    ld l, e                                       ; $6d6a: $6b
    ld c, $16                                     ; $6d6b: $0e $16
    push hl                                       ; $6d6d: $e5
    dec h                                         ; $6d6e: $25
    cp a                                          ; $6d6f: $bf
    and d                                         ; $6d70: $a2
    ld a, h                                       ; $6d71: $7c
    add hl, bc                                    ; $6d72: $09
    inc hl                                        ; $6d73: $23
    xor c                                         ; $6d74: $a9
    push bc                                       ; $6d75: $c5
    db $e4                                        ; $6d76: $e4
    rra                                           ; $6d77: $1f
    rla                                           ; $6d78: $17
    ld b, h                                       ; $6d79: $44
    dec de                                        ; $6d7a: $1b
    ret z                                         ; $6d7b: $c8

    xor $32                                       ; $6d7c: $ee $32
    ret                                           ; $6d7e: $c9


    sbc [hl]                                      ; $6d7f: $9e
    or d                                          ; $6d80: $b2
    inc l                                         ; $6d81: $2c
    db $ed                                        ; $6d82: $ed
    jp nc, $b644                                  ; $6d83: $d2 $44 $b6

    ld a, [c]                                     ; $6d86: $f2
    ld c, [hl]                                    ; $6d87: $4e
    and a                                         ; $6d88: $a7
    dec hl                                        ; $6d89: $2b
    rla                                           ; $6d8a: $17
    or [hl]                                       ; $6d8b: $b6
    adc h                                         ; $6d8c: $8c
    xor [hl]                                      ; $6d8d: $ae
    or a                                          ; $6d8e: $b7
    ld e, e                                       ; $6d8f: $5b
    dec hl                                        ; $6d90: $2b
    ld h, e                                       ; $6d91: $63
    rla                                           ; $6d92: $17
    ld b, h                                       ; $6d93: $44
    dec de                                        ; $6d94: $1b
    ret z                                         ; $6d95: $c8

    sbc $a5                                       ; $6d96: $de $a5
    adc e                                         ; $6d98: $8b
    or h                                          ; $6d99: $b4
    or a                                          ; $6d9a: $b7
    dec sp                                        ; $6d9b: $3b
    inc sp                                        ; $6d9c: $33
    cp $6c                                        ; $6d9d: $fe $6c
    set 5, b                                      ; $6d9f: $cb $e8
    ld e, h                                       ; $6da1: $5c
    ld [hl], e                                    ; $6da2: $73
    inc a                                         ; $6da3: $3c

jr_056_6da4:
    and h                                         ; $6da4: $a4
    db $eb                                        ; $6da5: $eb
    ld h, e                                       ; $6da6: $63
    dec bc                                        ; $6da7: $0b
    cp a                                          ; $6da8: $bf
    ld b, [hl]                                    ; $6da9: $46
    rst $20                                       ; $6daa: $e7
    jp nz, Jump_000_05cd                          ; $6dab: $c2 $cd $05

    ld de, $c81b                                  ; $6dae: $11 $1b $c8
    ld a, e                                       ; $6db1: $7b
    ld c, c                                       ; $6db2: $49
    sub d                                         ; $6db3: $92
    cp $22                                        ; $6db4: $fe $22
    xor [hl]                                      ; $6db6: $ae
    cp l                                          ; $6db7: $bd
    ld h, h                                       ; $6db8: $64
    ld [hl], h                                    ; $6db9: $74
    ld l, c                                       ; $6dba: $69
    sub h                                         ; $6dbb: $94
    jp hl                                         ; $6dbc: $e9


    ld e, h                                       ; $6dbd: $5c
    cp b                                          ; $6dbe: $b8
    cp c                                          ; $6dbf: $b9
    jr nz, jr_056_6dc4                            ; $6dc0: $20 $02

    dec de                                        ; $6dc2: $1b
    ret z                                         ; $6dc3: $c8

jr_056_6dc4:
    db $db                                        ; $6dc4: $db
    ld [hl], e                                    ; $6dc5: $73
    pop de                                        ; $6dc6: $d1
    adc a                                         ; $6dc7: $8f
    reti                                          ; $6dc8: $d9


    or l                                          ; $6dc9: $b5
    sub a                                         ; $6dca: $97
    xor h                                         ; $6dcb: $ac
    rst $38                                       ; $6dcc: $ff
    db $db                                        ; $6dcd: $db
    ld [hl], e                                    ; $6dce: $73
    ld de, $678e                                  ; $6dcf: $11 $8e $67
    ld [$1ccb], a                                 ; $6dd2: $ea $cb $1c
    inc l                                         ; $6dd5: $2c
    res 0, a                                      ; $6dd6: $cb $87
    ei                                            ; $6dd8: $fb
    add a                                         ; $6dd9: $87
    ld [$c81b], sp                                ; $6dda: $08 $1b $c8
    sbc $a5                                       ; $6ddd: $de $a5
    adc e                                         ; $6ddf: $8b
    or h                                          ; $6de0: $b4
    or a                                          ; $6de1: $b7
    inc d                                         ; $6de2: $14
    or a                                          ; $6de3: $b7
    inc de                                        ; $6de4: $13
    rra                                           ; $6de5: $1f
    ld l, c                                       ; $6de6: $69
    ld e, $9d                                     ; $6de7: $1e $9d
    ld l, e                                       ; $6de9: $6b
    sub h                                         ; $6dea: $94
    jr z, jr_056_6da4                             ; $6deb: $28 $b7

    rra                                           ; $6ded: $1f
    ld b, [hl]                                    ; $6dee: $46
    rst $20                                       ; $6def: $e7
    ld c, d                                       ; $6df0: $4a
    ld e, e                                       ; $6df1: $5b
    push de                                       ; $6df2: $d5
    sub a                                         ; $6df3: $97
    or b                                          ; $6df4: $b0
    sub a                                         ; $6df5: $97
    inc l                                         ; $6df6: $2c
    ld l, b                                       ; $6df7: $68
    ld b, d                                       ; $6df8: $42
    cp c                                          ; $6df9: $b9
    jr nz, jr_056_6dfe                            ; $6dfa: $20 $02

    dec de                                        ; $6dfc: $1b
    ret z                                         ; $6dfd: $c8

jr_056_6dfe:
    ld e, e                                       ; $6dfe: $5b
    ld e, h                                       ; $6dff: $5c
    ld e, l                                       ; $6e00: $5d
    sbc b                                         ; $6e01: $98
    rla                                           ; $6e02: $17
    dec sp                                        ; $6e03: $3b
    add $a4                                       ; $6e04: $c6 $a4
    ld d, l                                       ; $6e06: $55
    sbc c                                         ; $6e07: $99
    ld [hl], h                                    ; $6e08: $74
    pop bc                                        ; $6e09: $c1
    db $dd                                        ; $6e0a: $dd
    xor $c6                                       ; $6e0b: $ee $c6
    ld e, [hl]                                    ; $6e0d: $5e
    db $ec                                        ; $6e0e: $ec
    jr jr_056_6da4                                ; $6e0f: $18 $93

    sub [hl]                                      ; $6e11: $96
    push af                                       ; $6e12: $f5
    ld e, b                                       ; $6e13: $58
    jp nz, Jump_000_3c3f                          ; $6e14: $c2 $3f $3c

    cp d                                          ; $6e17: $ba
    sbc $40                                       ; $6e18: $de $40
    inc h                                         ; $6e1a: $24
    push hl                                       ; $6e1b: $e5
    db $dd                                        ; $6e1c: $dd
    ld b, l                                       ; $6e1d: $45
    dec h                                         ; $6e1e: $25
    ld d, [hl]                                    ; $6e1f: $56
    ld e, l                                       ; $6e20: $5d
    ld h, l                                       ; $6e21: $65
    adc b                                         ; $6e22: $88
    nop                                           ; $6e23: $00
    dec de                                        ; $6e24: $1b
    ret z                                         ; $6e25: $c8

    ld l, [hl]                                    ; $6e26: $6e
    set 5, b                                      ; $6e27: $cb $e8
    xor [hl]                                      ; $6e29: $ae
    ld a, [hl-]                                   ; $6e2a: $3a
    db $ec                                        ; $6e2b: $ec
    sbc l                                         ; $6e2c: $9d
    adc h                                         ; $6e2d: $8c
    ld b, a                                       ; $6e2e: $47
    or a                                          ; $6e2f: $b7
    ld l, $cd                                     ; $6e30: $2e $cd
    ld [hl], d                                    ; $6e32: $72
    ld [c], a                                     ; $6e33: $e2
    jp c, $dccd                                   ; $6e34: $da $cd $dc

    sbc [hl]                                      ; $6e37: $9e
    or b                                          ; $6e38: $b0
    adc e                                         ; $6e39: $8b
    ld a, b                                       ; $6e3a: $78
    adc c                                         ; $6e3b: $89
    ld a, c                                       ; $6e3c: $79
    inc h                                         ; $6e3d: $24
    or l                                          ; $6e3e: $b5
    sub e                                         ; $6e3f: $93
    ld c, c                                       ; $6e40: $49
    or a                                          ; $6e41: $b7
    adc a                                         ; $6e42: $8f
    dec c                                         ; $6e43: $0d
    ld de, $c81b                                  ; $6e44: $11 $1b $c8
    dec sp                                        ; $6e47: $3b
    cp a                                          ; $6e48: $bf
    ld hl, sp-$04                                 ; $6e49: $f8 $fc
    inc de                                        ; $6e4b: $13
    rst $00                                       ; $6e4c: $c7
    sub l                                         ; $6e4d: $95
    ld e, e                                       ; $6e4e: $5b
    jp $e44f                                      ; $6e4f: $c3 $4f $e4


    add $29                                       ; $6e52: $c6 $29
    set 5, b                                      ; $6e54: $cb $e8
    xor [hl]                                      ; $6e56: $ae
    ld a, [hl-]                                   ; $6e57: $3a
    db $ec                                        ; $6e58: $ec
    sbc l                                         ; $6e59: $9d
    adc h                                         ; $6e5a: $8c
    and a                                         ; $6e5b: $a7
    or e                                          ; $6e5c: $b3
    ld l, b                                       ; $6e5d: $68
    sbc b                                         ; $6e5e: $98
    call $658b                                    ; $6e5f: $cd $8b $65
    sbc d                                         ; $6e62: $9a
    dec l                                         ; $6e63: $2d
    sbc $1f                                       ; $6e64: $de $1f
    xor c                                         ; $6e66: $a9
    or a                                          ; $6e67: $b7
    call nz, $8ff5                                ; $6e68: $c4 $f5 $8f
    adc e                                         ; $6e6b: $8b
    dec a                                         ; $6e6c: $3d
    add a                                         ; $6e6d: $87

Call_056_6e6e:
    or b                                          ; $6e6e: $b0
    sub a                                         ; $6e6f: $97
    db $ec                                        ; $6e70: $ec
    scf                                           ; $6e71: $37
    dec d                                         ; $6e72: $15
    push af                                       ; $6e73: $f5
    and $4b                                       ; $6e74: $e6 $4b
    ld d, h                                       ; $6e76: $54
    cp l                                          ; $6e77: $bd
    ldh [$82], a                                  ; $6e78: $e0 $82
    ld [$c81b], sp                                ; $6e7a: $08 $1b $c8
    sbc $a5                                       ; $6e7d: $de $a5
    adc e                                         ; $6e7f: $8b
    inc [hl]                                      ; $6e80: $34
    add a                                         ; $6e81: $87
    ldh [$da], a                                  ; $6e82: $e0 $da
    ld c, e                                       ; $6e84: $4b
    sub [hl]                                      ; $6e85: $96
    ld [c], a                                     ; $6e86: $e2
    halt                                          ; $6e87: $76
    ld [c], a                                     ; $6e88: $e2
    inc hl                                        ; $6e89: $23
    call Call_056_73a3                            ; $6e8a: $cd $a3 $73
    dec l                                         ; $6e8d: $2d
    ld a, c                                       ; $6e8e: $79
    ld [hl], d                                    ; $6e8f: $72
    and d                                         ; $6e90: $a2
    db $db                                        ; $6e91: $db
    rrca                                          ; $6e92: $0f
    add a                                         ; $6e93: $87
    ld a, a                                       ; $6e94: $7f
    ld h, e                                       ; $6e95: $63
    adc a                                         ; $6e96: $8f
    ld [hl], b                                    ; $6e97: $70
    inc a                                         ; $6e98: $3c
    ld l, $88                                     ; $6e99: $2e $88
    nop                                           ; $6e9b: $00
    dec de                                        ; $6e9c: $1b
    ld c, b                                       ; $6e9d: $48
    nop                                           ; $6e9e: $00
    ld c, $e2                                     ; $6e9f: $0e $e2
    or e                                          ; $6ea1: $b3
    sub e                                         ; $6ea2: $93
    pop af                                        ; $6ea3: $f1
    ld [hl-], a                                   ; $6ea4: $32
    ld c, c                                       ; $6ea5: $49
    jp nc, $c45f                                  ; $6ea6: $d2 $5f $c4

    ld h, l                                       ; $6ea9: $65
    reti                                          ; $6eaa: $d9


    ld c, e                                       ; $6eab: $4b
    ld h, [hl]                                    ; $6eac: $66
    ld e, c                                       ; $6ead: $59
    add hl, sp                                    ; $6eae: $39
    ld b, [hl]                                    ; $6eaf: $46
    rst $28                                       ; $6eb0: $ef
    or b                                          ; $6eb1: $b0
    ld h, $04                                     ; $6eb2: $26 $04
    cpl                                           ; $6eb4: $2f
    and c                                         ; $6eb5: $a1
    sub h                                         ; $6eb6: $94
    ld l, e                                       ; $6eb7: $6b
    add hl, sp                                    ; $6eb8: $39
    inc l                                         ; $6eb9: $2c
    db $fd                                        ; $6eba: $fd
    ld b, h                                       ; $6ebb: $44
    ld e, h                                       ; $6ebc: $5c
    db $10                                        ; $6ebd: $10
    ld bc, $c81b                                  ; $6ebe: $01 $1b $c8
    dec sp                                        ; $6ec1: $3b
    or e                                          ; $6ec2: $b3
    add h                                         ; $6ec3: $84
    db $dd                                        ; $6ec4: $dd
    ld e, h                                       ; $6ec5: $5c
    ld c, h                                       ; $6ec6: $4c
    add sp, $75                                   ; $6ec7: $e8 $75
    ld b, [hl]                                    ; $6ec9: $46
    cp h                                          ; $6eca: $bc
    sub [hl]                                      ; $6ecb: $96
    sbc h                                         ; $6ecc: $9c
    xor [hl]                                      ; $6ecd: $ae
    jp $b82e                                      ; $6ece: $c3 $2e $b8


    sub h                                         ; $6ed1: $94
    db $e4                                        ; $6ed2: $e4
    dec d                                         ; $6ed3: $15
    adc a                                         ; $6ed4: $8f
    ld [hl], b                                    ; $6ed5: $70
    inc a                                         ; $6ed6: $3c
    scf                                           ; $6ed7: $37
    adc [hl]                                      ; $6ed8: $8e
    cp $16                                        ; $6ed9: $fe $16
    push hl                                       ; $6edb: $e5
    cp l                                          ; $6edc: $bd
    ld h, h                                       ; $6edd: $64
    ld [hl], a                                    ; $6ede: $77
    cp e                                          ; $6edf: $bb
    jp c, $8817                                   ; $6ee0: $da $17 $88

    nop                                           ; $6ee3: $00
    dec de                                        ; $6ee4: $1b
    ret z                                         ; $6ee5: $c8

    xor $2e                                       ; $6ee6: $ee $2e
    call z, $dfe3                                 ; $6ee8: $cc $e3 $df
    halt                                          ; $6eeb: $76
    inc sp                                        ; $6eec: $33
    cp b                                          ; $6eed: $b8
    ld hl, sp-$2e                                 ; $6eee: $f8 $d2
    ld c, a                                       ; $6ef0: $4f
    ld b, [hl]                                    ; $6ef1: $46
    rst $20                                       ; $6ef2: $e7
    ld a, [de]                                    ; $6ef3: $1a
    dec [hl]                                      ; $6ef4: $35
    ld [c], a                                     ; $6ef5: $e2
    adc l                                         ; $6ef6: $8d
    ret z                                         ; $6ef7: $c8

    ld c, l                                       ; $6ef8: $4d
    pop af                                        ; $6ef9: $f1
    ld c, $fd                                     ; $6efa: $0e $fd
    dec h                                         ; $6efc: $25
    ld e, $d7                                     ; $6efd: $1e $d7
    cp $d2                                        ; $6eff: $fe $d2
    cpl                                           ; $6f01: $2f
    ld b, $aa                                     ; $6f02: $06 $aa
    sub h                                         ; $6f04: $94
    dec b                                         ; $6f05: $05
    ld [hl+], a                                   ; $6f06: $22
    or a                                          ; $6f07: $b7
    cp b                                          ; $6f08: $b8
    inc [hl]                                      ; $6f09: $34
    sub c                                         ; $6f0a: $91
    call Call_056_73a3                            ; $6f0b: $cd $a3 $73
    db $ed                                        ; $6f0e: $ed
    ld a, h                                       ; $6f0f: $7c
    add hl, de                                    ; $6f10: $19
    ld e, e                                       ; $6f11: $5b
    sub h                                         ; $6f12: $94
    push hl                                       ; $6f13: $e5
    adc h                                         ; $6f14: $8c
    ld a, a                                       ; $6f15: $7f
    dec de                                        ; $6f16: $1b
    or l                                          ; $6f17: $b5
    ld [hl], h                                    ; $6f18: $74
    ei                                            ; $6f19: $fb
    and e                                         ; $6f1a: $a3
    ld [hl], e                                    ; $6f1b: $73
    ld c, c                                       ; $6f1c: $49
    ld e, a                                       ; $6f1d: $5f
    add l                                         ; $6f1e: $85
    call Call_056_73a3                            ; $6f1f: $cd $a3 $73
    db $ed                                        ; $6f22: $ed
    ld c, e                                       ; $6f23: $4b
    or b                                          ; $6f24: $b0
    ldh a, [$97]                                  ; $6f25: $f0 $97
    or b                                          ; $6f27: $b0
    inc e                                         ; $6f28: $1c
    ld b, [hl]                                    ; $6f29: $46
    rst $20                                       ; $6f2a: $e7
    ld c, d                                       ; $6f2b: $4a
    ccf                                           ; $6f2c: $3f
    ld de, $3f4f                                  ; $6f2d: $11 $4f $3f
    ld d, c                                       ; $6f30: $51
    db $d3                                        ; $6f31: $d3
    call nc, $1e0f                                ; $6f32: $d4 $0f $1e
    sbc l                                         ; $6f35: $9d
    dec hl                                        ; $6f36: $2b
    db $fd                                        ; $6f37: $fd
    ret                                           ; $6f38: $c9


    ld [hl], a                                    ; $6f39: $77
    adc [hl]                                      ; $6f3a: $8e
    res 4, d                                      ; $6f3b: $cb $a2
    inc c                                         ; $6f3d: $0c
    ld de, $c81b                                  ; $6f3e: $11 $1b $c8
    db $db                                        ; $6f41: $db
    ld [hl], e                                    ; $6f42: $73
    pop de                                        ; $6f43: $d1
    adc a                                         ; $6f44: $8f
    reti                                          ; $6f45: $d9


    or l                                          ; $6f46: $b5
    sub a                                         ; $6f47: $97
    xor h                                         ; $6f48: $ac
    rst $38                                       ; $6f49: $ff
    db $db                                        ; $6f4a: $db
    sbc e                                         ; $6f4b: $9b
    xor $93                                       ; $6f4c: $ee $93
    ld c, c                                       ; $6f4e: $49
    ld a, [c]                                     ; $6f4f: $f2
    ld [de], a                                    ; $6f50: $12
    ld a, [hl-]                                   ; $6f51: $3a
    rla                                           ; $6f52: $17
    cp e                                          ; $6f53: $bb
    or l                                          ; $6f54: $b5
    cpl                                           ; $6f55: $2f
    pop bc                                        ; $6f56: $c1
    jp nc, $76bf                                  ; $6f57: $d2 $bf $76

    jp hl                                         ; $6f5a: $e9


    ld d, a                                       ; $6f5b: $57
    ld [c], a                                     ; $6f5c: $e2
    ld [hl], h                                    ; $6f5d: $74
    ld d, a                                       ; $6f5e: $57
    ld [hl], h                                    ; $6f5f: $74
    db $ed                                        ; $6f60: $ed
    ld h, h                                       ; $6f61: $64
    inc a                                         ; $6f62: $3c
    rst $10                                       ; $6f63: $d7
    cp [hl]                                       ; $6f64: $be
    adc b                                         ; $6f65: $88
    xor d                                         ; $6f66: $aa
    rst $00                                       ; $6f67: $c7
    inc a                                         ; $6f68: $3c
    ld a, [hl-]                                   ; $6f69: $3a
    sub a                                         ; $6f6a: $97
    ld a, [$1e53]                                 ; $6f6b: $fa $53 $1e
    db $fd                                        ; $6f6e: $fd
    ld b, c                                       ; $6f6f: $41
    rst $00                                       ; $6f70: $c7
    dec [hl]                                      ; $6f71: $35
    rra                                           ; $6f72: $1f
    sub a                                         ; $6f73: $97
    ld hl, sp+$52                                 ; $6f74: $f8 $52
    cp $8d                                        ; $6f76: $fe $8d
    add sp, $2a                                   ; $6f78: $e8 $2a

jr_056_6f7a:
    sub a                                         ; $6f7a: $97
    ld a, b                                       ; $6f7b: $78
    db $fc                                        ; $6f7c: $fc
    db $db                                        ; $6f7d: $db
    xor b                                         ; $6f7e: $a8
    push bc                                       ; $6f7f: $c5
    ld [hl], a                                    ; $6f80: $77
    ret c                                         ; $6f81: $d8

    sla h                                         ; $6f82: $cb $24
    add hl, bc                                    ; $6f84: $09
    ld de, $481b                                  ; $6f85: $11 $1b $48
    ret nz                                        ; $6f88: $c0

    ld e, a                                       ; $6f89: $5f
    call nz, $97b5                                ; $6f8a: $c4 $b5 $97
    xor h                                         ; $6f8d: $ac
    dec a                                         ; $6f8e: $3d
    ld d, c                                       ; $6f8f: $51
    daa                                           ; $6f90: $27
    ld a, $4c                                     ; $6f91: $3e $4c
    ld e, d                                       ; $6f93: $5a
    or $c7                                        ; $6f94: $f6 $c7
    sub l                                         ; $6f96: $95
    ld e, e                                       ; $6f97: $5b
    jp $e44f                                      ; $6f98: $c3 $4f $e4


    jr z, jr_056_6f7a                             ; $6f9b: $28 $dd

    xor l                                         ; $6f9d: $ad
    db $ed                                        ; $6f9e: $ed
    rst $28                                       ; $6f9f: $ef
    ld a, [c]                                     ; $6fa0: $f2
    xor e                                         ; $6fa1: $ab
    xor [hl]                                      ; $6fa2: $ae
    cp h                                          ; $6fa3: $bc
    inc c                                         ; $6fa4: $0c
    ld [hl+], a                                   ; $6fa5: $22
    dec de                                        ; $6fa6: $1b
    ret z                                         ; $6fa7: $c8

jr_056_6fa8:
    db $db                                        ; $6fa8: $db
    ld e, a                                       ; $6fa9: $5f
    dec b                                         ; $6faa: $05
    rst $10                                       ; $6fab: $d7
    adc a                                         ; $6fac: $8f
    dec sp                                        ; $6fad: $3b
    ld b, h                                       ; $6fae: $44
    ld b, $73                                     ; $6faf: $06 $73
    add hl, bc                                    ; $6fb1: $09
    ld d, a                                       ; $6fb2: $57
    ld l, [hl]                                    ; $6fb3: $6e
    dec c                                         ; $6fb4: $0d
    ccf                                           ; $6fb5: $3f
    sub c                                         ; $6fb6: $91
    sbc l                                         ; $6fb7: $9d
    adc h                                         ; $6fb8: $8c
    ld b, a                                       ; $6fb9: $47
    rst $20                                       ; $6fba: $e7
    ld a, [hl-]                                   ; $6fbb: $3a
    ret                                           ; $6fbc: $c9


    inc de                                        ; $6fbd: $13
    ld e, [hl]                                    ; $6fbe: $5e
    cp d                                          ; $6fbf: $ba
    jr z, jr_056_6fa8                             ; $6fc0: $28 $e6

    jp hl                                         ; $6fc2: $e9


    and d                                         ; $6fc3: $a2
    ld e, h                                       ; $6fc4: $5c
    inc sp                                        ; $6fc5: $33
    rst $28                                       ; $6fc6: $ef
    or b                                          ; $6fc7: $b0
    ld c, c                                       ; $6fc8: $49

Jump_056_6fc9:
    jp nc, Jump_056_63a2                          ; $6fc9: $d2 $a2 $63

    db $ec                                        ; $6fcc: $ec
    add d                                         ; $6fcd: $82
    ld [$c81b], sp                                ; $6fce: $08 $1b $c8
    inc d                                         ; $6fd1: $14
    rst $10                                       ; $6fd2: $d7
    scf                                           ; $6fd3: $37
    adc $a5                                       ; $6fd4: $ce $a5
    ld e, h                                       ; $6fd6: $5c
    ld a, e                                       ; $6fd7: $7b
    ret                                           ; $6fd8: $c9


    add d                                         ; $6fd9: $82
    ld h, h                                       ; $6fda: $64
    db $ec                                        ; $6fdb: $ec
    add d                                         ; $6fdc: $82
    ld [$c81b], sp                                ; $6fdd: $08 $1b $c8
    cp e                                          ; $6fe0: $bb
    rst $38                                       ; $6fe1: $ff
    ld l, c                                       ; $6fe2: $69
    sbc d                                         ; $6fe3: $9a
    ret z                                         ; $6fe4: $c8

    ld a, $fb                                     ; $6fe5: $3e $fb
    and e                                         ; $6fe7: $a3
    sub [hl]                                      ; $6fe8: $96
    inc de                                        ; $6fe9: $13
    rla                                           ; $6fea: $17
    cp a                                          ; $6feb: $bf
    and $dd                                       ; $6fec: $e6 $dd
    db $fd                                        ; $6fee: $fd
    jp nz, Jump_000_2657                          ; $6fef: $c2 $57 $26

    ld e, a                                       ; $6ff2: $5f
    or c                                          ; $6ff3: $b1
    or c                                          ; $6ff4: $b1
    add l                                         ; $6ff5: $85
    call $dfe3                                    ; $6ff6: $cd $e3 $df
    ld b, [hl]                                    ; $6ff9: $46
    db $ed                                        ; $6ffa: $ed
    daa                                           ; $6ffb: $27
    xor [hl]                                      ; $6ffc: $ae
    ld a, b                                       ; $6ffd: $78
    call z, $11ec                                 ; $6ffe: $cc $ec $11
    ld a, [hl-]                                   ; $7001: $3a
    ld a, [hl]                                    ; $7002: $7e
    or d                                          ; $7003: $b2
    sub a                                         ; $7004: $97
    or h                                          ; $7005: $b4
    sbc a                                         ; $7006: $9f
    ld a, h                                       ; $7007: $7c
    add hl, bc                                    ; $7008: $09
    ld a, e                                       ; $7009: $7b
    ret                                           ; $700a: $c9


    ld e, [hl]                                    ; $700b: $5e
    ld l, e                                       ; $700c: $6b
    ld e, $6d                                     ; $700d: $1e $6d
    rla                                           ; $700f: $17
    ld b, h                                       ; $7010: $44
    dec de                                        ; $7011: $1b
    ret z                                         ; $7012: $c8

    ld e, e                                       ; $7013: $5b
    ld e, h                                       ; $7014: $5c
    ld e, l                                       ; $7015: $5d
    sbc b                                         ; $7016: $98
    ld b, a                                       ; $7017: $47
    rst $20                                       ; $7018: $e7
    jp c, $aa6b                                   ; $7019: $da $6b $aa

    cp $a8                                        ; $701c: $fe $a8
    ld de, $746f                                  ; $701e: $11 $6f $74
    xor [hl]                                      ; $7021: $ae
    or $98                                        ; $7022: $f6 $98
    ld b, a                                       ; $7024: $47
    add sp, -$39                                  ; $7025: $e8 $c7
    cp h                                          ; $7027: $bc
    di                                            ; $7028: $f3
    sbc c                                         ; $7029: $99
    ld b, a                                       ; $702a: $47
    ld [hl], a                                    ; $702b: $77
    push de                                       ; $702c: $d5
    inc l                                         ; $702d: $2c
    and e                                         ; $702e: $a3
    ld [hl], e                                    ; $702f: $73
    ld h, c                                       ; $7030: $61
    or a                                          ; $7031: $b7
    sbc l                                         ; $7032: $9d
    sub [hl]                                      ; $7033: $96
    ld b, a                                       ; $7034: $47
    ei                                            ; $7035: $fb
    or a                                          ; $7036: $b7
    push hl                                       ; $7037: $e5
    jr nc, jr_056_70b8                            ; $7038: $30 $7e

    pop de                                        ; $703a: $d1
    inc a                                         ; $703b: $3c
    ld a, [$9e35]                                 ; $703c: $fa $35 $9e
    ld e, b                                       ; $703f: $58
    ld b, c                                       ; $7040: $41
    inc b                                         ; $7041: $04
    dec de                                        ; $7042: $1b
    ld c, b                                       ; $7043: $48
    ret nz                                        ; $7044: $c0

    xor a                                         ; $7045: $af
    halt                                          ; $7046: $76
    xor b                                         ; $7047: $a8
    add l                                         ; $7048: $85
    or $d4                                        ; $7049: $f6 $d4
    cp $a8                                        ; $704b: $fe $a8
    and l                                         ; $704d: $a5
    db $db                                        ; $704e: $db
    ld e, a                                       ; $704f: $5f
    cp d                                          ; $7050: $ba
    inc l                                         ; $7051: $2c
    inc a                                         ; $7052: $3c
    sub d                                         ; $7053: $92
    ld e, d                                       ; $7054: $5a
    sbc d                                         ; $7055: $9a
    ld l, d                                       ; $7056: $6a
    ld a, e                                       ; $7057: $7b
    inc a                                         ; $7058: $3c
    ld b, d                                       ; $7059: $42
    sub a                                         ; $705a: $97
    sbc l                                         ; $705b: $9d
    xor [hl]                                      ; $705c: $ae
    ld a, [bc]                                    ; $705d: $0a
    and $d1                                       ; $705e: $e6 $d1
    cp c                                          ; $7060: $b9
    ld b, [hl]                                    ; $7061: $46
    dec l                                         ; $7062: $2d
    db $dd                                        ; $7063: $dd
    cp $48                                        ; $7064: $fe $48
    adc d                                         ; $7066: $8a
    dec l                                         ; $7067: $2d
    cp h                                          ; $7068: $bc
    xor e                                         ; $7069: $ab
    xor [hl]                                      ; $706a: $ae
    ld e, l                                       ; $706b: $5d
    ld a, b                                       ; $706c: $78
    ld [de], a                                    ; $706d: $12
    ld e, h                                       ; $706e: $5c
    db $10                                        ; $706f: $10
    ld bc, $481b                                  ; $7070: $01 $1b $48
    nop                                           ; $7073: $00
    ld d, [hl]                                    ; $7074: $56
    jp z, $fc3c                                   ; $7075: $ca $3c $fc

    inc h                                         ; $7078: $24
    ld a, b                                       ; $7079: $78
    ld hl, $d263                                  ; $707a: $21 $63 $d2
    dec [hl]                                      ; $707d: $35
    push af                                       ; $707e: $f5
    ld h, [hl]                                    ; $707f: $66
    sbc c                                         ; $7080: $99
    xor d                                         ; $7081: $aa
    rla                                           ; $7082: $17
    cp h                                          ; $7083: $bc
    db $d3                                        ; $7084: $d3
    ld a, [c]                                     ; $7085: $f2
    call nz, Call_000_246a                        ; $7086: $c4 $6a $24
    dec [hl]                                      ; $7089: $35
    rrc [hl]                                      ; $708a: $cb $0e
    rst $10                                       ; $708c: $d7
    inc de                                        ; $708d: $13
    dec [hl]                                      ; $708e: $35
    ld e, d                                       ; $708f: $5a
    ld l, a                                       ; $7090: $6f
    ld l, l                                       ; $7091: $6d
    cpl                                           ; $7092: $2f
    reti                                          ; $7093: $d9


    ret                                           ; $7094: $c9


    dec l                                         ; $7095: $2d
    db $fd                                        ; $7096: $fd

Jump_056_7097:
    sub h                                         ; $7097: $94
    rl b                                          ; $7098: $cb $10
    ld bc, $e7b7                                  ; $709a: $01 $b7 $e7
    adc d                                         ; $709d: $8a
    dec e                                         ; $709e: $1d
    ld h, e                                       ; $709f: $63
    jp nc, $3a35                                  ; $70a0: $d2 $35 $3a

    rst $10                                       ; $70a3: $d7
    xor b                                         ; $70a4: $a8
    ld de, $bc4e                                  ; $70a5: $11 $4e $bc
    ld e, $63                                     ; $70a8: $1e $63
    db $ec                                        ; $70aa: $ec
    or $03                                        ; $70ab: $f6 $03
    sub c                                         ; $70ad: $91
    sbc e                                         ; $70ae: $9b
    cp d                                          ; $70af: $ba
    db $e4                                        ; $70b0: $e4
    ldh a, [$63]                                  ; $70b1: $f0 $63
    sbc l                                         ; $70b3: $9d
    reti                                          ; $70b4: $d9


    ld [c], a                                     ; $70b5: $e2
    push hl                                       ; $70b6: $e5
    or b                                          ; $70b7: $b0

jr_056_70b8:
    cpl                                           ; $70b8: $2f
    ld [hl], h                                    ; $70b9: $74
    ld l, $ec                                     ; $70ba: $2e $ec
    ld a, [c]                                     ; $70bc: $f2
    ld b, d                                       ; $70bd: $42
    add $a4                                       ; $70be: $c6 $a4
    push bc                                       ; $70c0: $c5
    bit 7, b                                      ; $70c1: $cb $78
    adc a                                         ; $70c3: $8f
    rst $00                                       ; $70c4: $c7

Jump_056_70c5:
    sub l                                         ; $70c5: $95
    ld e, e                                       ; $70c6: $5b
    jp Jump_056_5916                              ; $70c7: $c3 $16 $59


    ld c, $23                                     ; $70ca: $0e $23
    inc e                                         ; $70cc: $1c
    adc a                                         ; $70cd: $8f
    ld l, e                                       ; $70ce: $6b
    db $f4                                        ; $70cf: $f4
    adc e                                         ; $70d0: $8b
    db $fc                                        ; $70d1: $fc
    ld c, a                                       ; $70d2: $4f
    inc e                                         ; $70d3: $1c
    db $fd                                        ; $70d4: $fd
    ld b, l                                       ; $70d5: $45
    ld a, h                                       ; $70d6: $7c
    jr nz, jr_056_70db                            ; $70d7: $20 $02

    dec de                                        ; $70d9: $1b
    ret z                                         ; $70da: $c8

jr_056_70db:
    ld a, e                                       ; $70db: $7b
    ld c, c                                       ; $70dc: $49
    sub d                                         ; $70dd: $92
    cp $22                                        ; $70de: $fe $22
    xor [hl]                                      ; $70e0: $ae
    cp l                                          ; $70e1: $bd
    ld h, h                                       ; $70e2: $64
    ld b, a                                       ; $70e3: $47
    ld a, [hl]                                    ; $70e4: $7e
    call z, Call_056_6627                         ; $70e5: $cc $27 $66
    jp nc, Jump_000_110c                          ; $70e8: $d2 $0c $11

    dec de                                        ; $70eb: $1b
    ret z                                         ; $70ec: $c8

    db $db                                        ; $70ed: $db
    add h                                         ; $70ee: $84
    add sp, $74                                   ; $70ef: $e8 $74
    sub l                                         ; $70f1: $95
    ld a, h                                       ; $70f2: $7c
    add hl, bc                                    ; $70f3: $09
    sub a                                         ; $70f4: $97
    jr c, jr_056_7115                             ; $70f5: $38 $1e

    jp nc, Jump_056_70c5                          ; $70f7: $d2 $c5 $70

    rst $30                                       ; $70fa: $f7
    ld d, c                                       ; $70fb: $51
    xor d                                         ; $70fc: $aa
    ld a, [hl]                                    ; $70fd: $7e
    ld [c], a                                     ; $70fe: $e2
    ld a, [de]                                    ; $70ff: $1a
    rst $38                                       ; $7100: $ff
    or [hl]                                       ; $7101: $b6
    ld c, h                                       ; $7102: $4c
    sub d                                         ; $7103: $92
    ld h, l                                       ; $7104: $65
    ld h, [hl]                                    ; $7105: $66
    or a                                          ; $7106: $b7
    ld h, e                                       ; $7107: $63
    reti                                          ; $7108: $d9


    ld c, e                                       ; $7109: $4b
    ld h, [hl]                                    ; $710a: $66
    ld hl, $5d3a                                  ; $710b: $21 $3a $5d
    dec h                                         ; $710e: $25
    ld e, a                                       ; $710f: $5f
    jp nz, $e525                                  ; $7110: $c2 $25 $e5

Jump_056_7113:
    db $e3                                        ; $7113: $e3
    ld c, d                                       ; $7114: $4a

jr_056_7115:
    ld e, $bb                                     ; $7115: $1e $bb
    sub [hl]                                      ; $7117: $96
    inc de                                        ; $7118: $13
    rst $10                                       ; $7119: $d7
    ld [$2f37], sp                                ; $711a: $08 $37 $2f
    add l                                         ; $711d: $85
    ld [hl], e                                    ; $711e: $73
    and l                                         ; $711f: $a5
    db $eb                                        ; $7120: $eb
    di                                            ; $7121: $f3
    inc de                                        ; $7122: $13
    ld sp, hl                                     ; $7123: $f9
    rrca                                          ; $7124: $0f
    ld [hl+], a                                   ; $7125: $22
    dec de                                        ; $7126: $1b
    ret z                                         ; $7127: $c8

    db $db                                        ; $7128: $db
    call nz, $3d87                                ; $7129: $c4 $87 $3d
    xor [hl]                                      ; $712c: $ae
    call c, Call_056_7e1a                         ; $712d: $dc $1a $7e
    ld [hl+], a                                   ; $7130: $22
    dec sp                                        ; $7131: $3b
    add hl, de                                    ; $7132: $19
    ld c, a                                       ; $7133: $4f
    or d                                          ; $7134: $b2
    push hl                                       ; $7135: $e5
    ld a, h                                       ; $7136: $7c
    ld de, $788f                                  ; $7137: $11 $8f $78
    or l                                          ; $713a: $b5
    sbc h                                         ; $713b: $9c
    cp b                                          ; $713c: $b8
    sbc d                                         ; $713d: $9a
    inc de                                        ; $713e: $13

Jump_056_713f:
    dec [hl]                                      ; $713f: $35
    di                                            ; $7140: $f3
    sbc d                                         ; $7141: $9a
    sbc c                                         ; $7142: $99
    ld hl, sp+$74                                 ; $7143: $f8 $74
    ld l, [hl]                                    ; $7145: $6e
    ld [$2792], a                                 ; $7146: $ea $92 $27
    and c                                         ; $7149: $a1
    ld c, h                                       ; $714a: $4c
    ld b, d                                       ; $714b: $42
    inc b                                         ; $714c: $04
    dec de                                        ; $714d: $1b
    ret z                                         ; $714e: $c8

    sbc e                                         ; $714f: $9b
    push bc                                       ; $7150: $c5
    dec d                                         ; $7151: $15
    dec sp                                        ; $7152: $3b
    ld d, $de                                     ; $7153: $16 $de
    jp hl                                         ; $7155: $e9


    sbc b                                         ; $7156: $98
    ld e, $9d                                     ; $7157: $1e $9d
    ld l, e                                       ; $7159: $6b
    scf                                           ; $715a: $37
    daa                                           ; $715b: $27
    jp z, $4bed                                   ; $715c: $ca $ed $4b

    or b                                          ; $715f: $b0
    adc h                                         ; $7160: $8c
    adc $35                                       ; $7161: $ce $35
    db $fc                                        ; $7163: $fc
    jp nz, Jump_056_713f                          ; $7164: $c2 $3f $71

    dec e                                         ; $7167: $1d
    db $fd                                        ; $7168: $fd
    ldh a, [$3f]                                  ; $7169: $f0 $3f
    db $10                                        ; $716b: $10
    ld bc, $c81b                                  ; $716c: $01 $1b $c8
    xor $2e                                       ; $716f: $ee $2e
    push hl                                       ; $7171: $e5
    xor c                                         ; $7172: $a9
    scf                                           ; $7173: $37
    ld [c], a                                     ; $7174: $e2
    ret                                           ; $7175: $c9


    jp z, $994a                                   ; $7176: $ca $4a $99

    ld h, a                                       ; $7179: $67
    ld e, [hl]                                    ; $717a: $5e
    ret z                                         ; $717b: $c8

    sbc b                                         ; $717c: $98
    ld [hl], h                                    ; $717d: $74
    ld a, [$8c95]                                 ; $717e: $fa $95 $8c
    xor [hl]                                      ; $7181: $ae
    scf                                           ; $7182: $37
    res 5, d                                      ; $7183: $cb $aa
    dec bc                                        ; $7185: $0b
    di                                            ; $7186: $f3
    ldh a, [rNR13]                                ; $7187: $f0 $13
    cp $31                                        ; $7189: $fe $31
    rla                                           ; $718b: $17
    ld b, h                                       ; $718c: $44
    dec de                                        ; $718d: $1b
    ld c, b                                       ; $718e: $48

Jump_056_718f:
    add b                                         ; $718f: $80
    ld e, a                                       ; $7190: $5f
    or l                                          ; $7191: $b5
    rra                                           ; $7192: $1f
    ld b, [hl]                                    ; $7193: $46
    rst $20                                       ; $7194: $e7
    adc d                                         ; $7195: $8a
    dec e                                         ; $7196: $1d
    ld h, e                                       ; $7197: $63
    jp nc, $3a35                                  ; $7198: $d2 $35 $3a

    rst $10                                       ; $719b: $d7
    add d                                         ; $719c: $82
    ld h, h                                       ; $719d: $64
    db $ec                                        ; $719e: $ec
    ld a, [hl-]                                   ; $719f: $3a
    dec hl                                        ; $71a0: $2b
    inc sp                                        ; $71a1: $33
    rst $38                                       ; $71a2: $ff
    ld b, b                                       ; $71a3: $40
    sbc b                                         ; $71a4: $98
    ld e, l                                       ; $71a5: $5d
    db $10                                        ; $71a6: $10
    ld bc, $c81b                                  ; $71a7: $01 $1b $c8
    ld e, e                                       ; $71aa: $5b
    ld e, h                                       ; $71ab: $5c
    ld e, l                                       ; $71ac: $5d
    sbc b                                         ; $71ad: $98
    rst $00                                       ; $71ae: $c7
    sub l                                         ; $71af: $95

jr_056_71b0:
    ld e, e                                       ; $71b0: $5b
    jp Jump_056_644f                              ; $71b1: $c3 $4f $64


    daa                                           ; $71b4: $27
    db $e3                                        ; $71b5: $e3
    and l                                         ; $71b6: $a5
    sbc e                                         ; $71b7: $9b
    ld b, a                                       ; $71b8: $47
    ld e, e                                       ; $71b9: $5b
    jp nz, $e669                                  ; $71ba: $c2 $69 $e6

    cp l                                          ; $71bd: $bd
    ld h, h                                       ; $71be: $64
    ld hl, $d263                                  ; $71bf: $21 $63 $d2
    dec [hl]                                      ; $71c2: $35
    ld a, [hl-]                                   ; $71c3: $3a
    rst $10                                       ; $71c4: $d7
    adc $17                                       ; $71c5: $ce $17
    rst $28                                       ; $71c7: $ef
    call nz, Call_000_34fa                        ; $71c8: $c4 $fa $34
    cp e                                          ; $71cb: $bb
    jr nz, jr_056_71d0                            ; $71cc: $20 $02

    dec de                                        ; $71ce: $1b
    ret z                                         ; $71cf: $c8

jr_056_71d0:
    db $db                                        ; $71d0: $db
    ld [c], a                                     ; $71d1: $e2
    ld hl, $3c5d                                  ; $71d2: $21 $5d $3c
    sub d                                         ; $71d5: $92
    ld a, [de]                                    ; $71d6: $1a
    ld a, [hl]                                    ; $71d7: $7e
    pop hl                                        ; $71d8: $e1
    sbc a                                         ; $71d9: $9f
    add sp, -$2f                                  ; $71da: $e8 $d1
    ld a, d                                       ; $71dc: $7a
    ld l, b                                       ; $71dd: $68
    ld l, $b8                                     ; $71de: $2e $b8
    ld l, [hl]                                    ; $71e0: $6e
    set 5, b                                      ; $71e1: $cb $e8
    xor [hl]                                      ; $71e3: $ae
    ld a, [hl-]                                   ; $71e4: $3a
    db $ec                                        ; $71e5: $ec
    sbc l                                         ; $71e6: $9d
    adc h                                         ; $71e7: $8c
    ld b, a                                       ; $71e8: $47
    cp a                                          ; $71e9: $bf
    jp $e5a7                                      ; $71ea: $c3 $a7 $e5


    add hl, hl                                    ; $71ed: $29
    rr h                                          ; $71ee: $cb $1c
    inc l                                         ; $71f0: $2c
    call c, $f07e                                 ; $71f1: $dc $7e $f0
    jp nc, $8d66                                  ; $71f4: $d2 $66 $8d

    sub d                                         ; $71f7: $92
    cpl                                           ; $71f8: $2f
    pop bc                                        ; $71f9: $c1
    or d                                          ; $71fa: $b2
    sub a                                         ; $71fb: $97
    inc l                                         ; $71fc: $2c
    ld a, c                                       ; $71fd: $79
    and l                                         ; $71fe: $a5
    inc [hl]                                      ; $71ff: $34
    ld c, c                                       ; $7200: $49
    di                                            ; $7201: $f3
    dec h                                         ; $7202: $25
    rst $20                                       ; $7203: $e7
    ld c, c                                       ; $7204: $49
    add b                                         ; $7205: $80
    ld [$c81b], sp                                ; $7206: $08 $1b $c8
    ld e, e                                       ; $7209: $5b
    ld e, h                                       ; $720a: $5c
    ld e, l                                       ; $720b: $5d
    sbc b                                         ; $720c: $98
    ld b, a                                       ; $720d: $47
    rst $20                                       ; $720e: $e7
    and d                                         ; $720f: $a2
    rra                                           ; $7210: $1f
    or e                                          ; $7211: $b3
    ld l, e                                       ; $7212: $6b
    cpl                                           ; $7213: $2f
    ld e, c                                       ; $7214: $59
    rst $38                                       ; $7215: $ff
    or a                                          ; $7216: $b7
    cp a                                          ; $7217: $bf
    or h                                          ; $7218: $b4
    sbc e                                         ; $7219: $9b
    jp nc, Jump_056_72d4                          ; $721a: $d2 $d4 $72

    jr jr_056_71b0                                ; $721d: $18 $91

    db $e4                                        ; $721f: $e4
    sbc d                                         ; $7220: $9a
    ld a, [c]                                     ; $7221: $f2
    ld e, h                                       ; $7222: $5c
    and e                                         ; $7223: $a3
    ld b, [hl]                                    ; $7224: $46
    ld a, a                                       ; $7225: $7f
    ld de, $0ff7                                  ; $7226: $11 $f7 $0f
    ld de, $c81b                                  ; $7229: $11 $1b $c8
    ei                                            ; $722c: $fb
    ld a, [hl+]                                   ; $722d: $2a
    add a                                         ; $722e: $87
    ld a, d                                       ; $722f: $7a
    cp b                                          ; $7230: $b8
    ld e, c                                       ; $7231: $59
    cp c                                          ; $7232: $b9
    ld b, [hl]                                    ; $7233: $46
    rst $20                                       ; $7234: $e7
    ld e, d                                       ; $7235: $5a
    rst $38                                       ; $7236: $ff
    dec a                                         ; $7237: $3d
    cp a                                          ; $7238: $bf
    xor c                                         ; $7239: $a9
    ld a, [$0e12]                                 ; $723a: $fa $12 $0e
    ld a, a                                       ; $723d: $7f
    ld l, h                                       ; $723e: $6c
    jp hl                                         ; $723f: $e9


    ld a, a                                       ; $7240: $7f
    inc h                                         ; $7241: $24
    or l                                          ; $7242: $b5
    cp e                                          ; $7243: $bb
    ld bc, $b9dc                                  ; $7244: $01 $dc $b9
    dec bc                                        ; $7247: $0b
    xor $7e                                       ; $7248: $ee $7e
    pop hl                                        ; $724a: $e1
    sbc a                                         ; $724b: $9f
    jr c, jr_056_724e                             ; $724c: $38 $00

jr_056_724e:
    ccf                                           ; $724e: $3f
    sbc [hl]                                      ; $724f: $9e
    ld e, b                                       ; $7250: $58
    sbc d                                         ; $7251: $9a
    ld [hl], e                                    ; $7252: $73
    ld [c], a                                     ; $7253: $e2
    dec sp                                        ; $7254: $3b
    db $fc                                        ; $7255: $fc
    dec h                                         ; $7256: $25
    ld e, h                                       ; $7257: $5c
    ld [$1b11], sp                                ; $7258: $08 $11 $1b
    ret z                                         ; $725b: $c8

    ld e, e                                       ; $725c: $5b
    ld e, h                                       ; $725d: $5c
    ld e, l                                       ; $725e: $5d
    sbc b                                         ; $725f: $98
    ld b, a                                       ; $7260: $47
    rst $20                                       ; $7261: $e7
    jp c, $e2f9                                   ; $7262: $da $f9 $e2

    cp l                                          ; $7265: $bd
    ld c, d                                       ; $7266: $4a
    ei                                            ; $7267: $fb
    dec hl                                        ; $7268: $2b
    rst $10                                       ; $7269: $d7
    cp [hl]                                       ; $726a: $be
    adc b                                         ; $726b: $88
    ld h, l                                       ; $726c: $65
    db $ec                                        ; $726d: $ec
    ld e, h                                       ; $726e: $5c
    and $7f                                       ; $726f: $e6 $7f
    ld [c], a                                     ; $7271: $e2
    ldh a, [$0b]                                  ; $7272: $f0 $0b
    rra                                           ; $7274: $1f
    ld [hl+], a                                   ; $7275: $22
    dec de                                        ; $7276: $1b
    ret z                                         ; $7277: $c8

    ld a, e                                       ; $7278: $7b
    ld c, c                                       ; $7279: $49
    sub d                                         ; $727a: $92
    cp $22                                        ; $727b: $fe $22
    xor [hl]                                      ; $727d: $ae
    cp l                                          ; $727e: $bd
    ld h, h                                       ; $727f: $64
    ld c, l                                       ; $7280: $4d
    sub a                                         ; $7281: $97
    ld [hl], a                                    ; $7282: $77
    ld h, d                                       ; $7283: $62
    ld h, $cd                                     ; $7284: $26 $cd
    db $10                                        ; $7286: $10
    ld bc, $c81b                                  ; $7287: $01 $1b $c8
    ld e, e                                       ; $728a: $5b
    ld e, h                                       ; $728b: $5c
    ld e, l                                       ; $728c: $5d
    sbc b                                         ; $728d: $98
    rlca                                          ; $728e: $07
    cp d                                          ; $728f: $ba
    cp l                                          ; $7290: $bd
    ld e, a                                       ; $7291: $5f
    ld c, c                                       ; $7292: $49
    sub $3c                                       ; $7293: $d6 $3c
    pop hl                                        ; $7295: $e1
    dec de                                        ; $7296: $1b
    ld b, a                                       ; $7297: $47
    rst $20                                       ; $7298: $e7
    and d                                         ; $7299: $a2
    rra                                           ; $729a: $1f
    or e                                          ; $729b: $b3
    ld l, e                                       ; $729c: $6b
    cpl                                           ; $729d: $2f
    ld e, c                                       ; $729e: $59
    rst $38                                       ; $729f: $ff
    ld [hl], a                                    ; $72a0: $77
    ld l, c                                       ; $72a1: $69
    adc $42                                       ; $72a2: $ce $42
    rst $00                                       ; $72a4: $c7
    ld [hl+], a                                   ; $72a5: $22
    add hl, de                                    ; $72a6: $19
    adc a                                         ; $72a7: $8f
    xor [hl]                                      ; $72a8: $ae
    add a                                         ; $72a9: $87
    ld sp, hl                                     ; $72aa: $f9
    xor e                                         ; $72ab: $ab
    ld [hl], a                                    ; $72ac: $77
    add $54                                       ; $72ad: $c6 $54
    ld [hl], h                                    ; $72af: $74
    push af                                       ; $72b0: $f5
    rrca                                          ; $72b1: $0f
    ld de, $c81b                                  ; $72b2: $11 $1b $c8
    sub h                                         ; $72b5: $94
    daa                                           ; $72b6: $27
    ld [hl], d                                    ; $72b7: $72

Jump_056_72b8:
    ld a, [hl]                                    ; $72b8: $7e
    ld [hl], b                                    ; $72b9: $70
    adc l                                         ; $72ba: $8d
    xor [hl]                                      ; $72bb: $ae
    or a                                          ; $72bc: $b7
    call c, Call_056_7f14                         ; $72bd: $dc $14 $7f
    push af                                       ; $72c0: $f5
    halt                                          ; $72c1: $76
    ld [hl-], a                                   ; $72c2: $32
    sbc $69                                       ; $72c3: $de $69
    ld a, c                                       ; $72c5: $79
    jp z, $a3b2                                   ; $72c6: $ca $b2 $a3

    sub c                                         ; $72c9: $91
    inc de                                        ; $72ca: $13
    cp l                                          ; $72cb: $bd
    dec sp                                        ; $72cc: $3b
    ld e, a                                       ; $72cd: $5f
    adc e                                         ; $72ce: $8b
    call nz, $fb3b                                ; $72cf: $c4 $3b $fb
    or e                                          ; $72d2: $b3
    inc l                                         ; $72d3: $2c

Jump_056_72d4:
    ld a, $92                                     ; $72d4: $3e $92
    db $f4                                        ; $72d6: $f4
    pop hl                                        ; $72d7: $e1
    ld a, [$196a]                                 ; $72d8: $fa $6a $19
    adc a                                         ; $72db: $8f
    jp c, $c1f9                                   ; $72dc: $da $f9 $c1

    dec sp                                        ; $72df: $3b
    ld c, a                                       ; $72e0: $4f
    jr jr_056_7305                                ; $72e1: $18 $22

    dec de                                        ; $72e3: $1b
    ret z                                         ; $72e4: $c8

    sbc $19                                       ; $72e5: $de $19
    sub e                                         ; $72e7: $93
    halt                                          ; $72e8: $76
    inc a                                         ; $72e9: $3c
    and h                                         ; $72ea: $a4
    adc e                                         ; $72eb: $8b
    sub a                                         ; $72ec: $97
    jp Jump_056_5ce8                              ; $72ed: $c3 $e8 $5c


    db $f4                                        ; $72f0: $f4
    ld h, e                                       ; $72f1: $63
    halt                                          ; $72f2: $76
    db $ed                                        ; $72f3: $ed
    dec h                                         ; $72f4: $25
    or e                                          ; $72f5: $b3
    xor h                                         ; $72f6: $ac
    inc e                                         ; $72f7: $1c
    and e                                         ; $72f8: $a3
    sub a                                         ; $72f9: $97
    xor $8a                                       ; $72fa: $ee $8a
    ld l, $ed                                     ; $72fc: $2e $ed
    jp nc, $3e0d                                  ; $72fe: $d2 $0d $3e

    cp b                                          ; $7301: $b8
    cp $7b                                        ; $7302: $fe $7b
    ld h, a                                       ; $7304: $67

jr_056_7305:
    ld c, h                                       ; $7305: $4c
    cp d                                          ; $7306: $ba
    halt                                          ; $7307: $76

jr_056_7308:
    ld [hl-], a                                   ; $7308: $32
    sbc $a1                                       ; $7309: $de $a1
    ld b, [hl]                                    ; $730b: $46
    rst $20                                       ; $730c: $e7
    ld a, [de]                                    ; $730d: $1a
    halt                                          ; $730e: $76
    jr nc, jr_056_7308                            ; $730f: $30 $f7

    rrca                                          ; $7311: $0f
    ld de, $c81b                                  ; $7312: $11 $1b $c8
    ld a, e                                       ; $7315: $7b
    ld c, c                                       ; $7316: $49
    sub d                                         ; $7317: $92
    cp $22                                        ; $7318: $fe $22
    xor [hl]                                      ; $731a: $ae
    cp l                                          ; $731b: $bd
    ld h, h                                       ; $731c: $64
    cp b                                          ; $731d: $b8
    dec hl                                        ; $731e: $2b
    add $74                                       ; $731f: $c6 $74
    add $69                                       ; $7321: $c6 $69
    dec bc                                        ; $7323: $0b
    ld b, h                                       ; $7324: $44
    dec de                                        ; $7325: $1b
    ret z                                         ; $7326: $c8

    ld l, [hl]                                    ; $7327: $6e
    res 6, b                                      ; $7328: $cb $b0
    rrca                                          ; $732a: $0f
    cpl                                           ; $732b: $2f
    db $ed                                        ; $732c: $ed
    ld [$ecc2], a                                 ; $732d: $ea $c2 $ec
    cp l                                          ; $7330: $bd
    ld h, h                                       ; $7331: $64
    xor a                                         ; $7332: $af
    dec [hl]                                      ; $7333: $35
    adc a                                         ; $7334: $8f
    dec hl                                        ; $7335: $2b
    or a                                          ; $7336: $b7
    add [hl]                                      ; $7337: $86
    dec l                                         ; $7338: $2d
    ld [bc], a                                    ; $7339: $02
    rlca                                          ; $733a: $07
    ld hl, sp+$57                                 ; $733b: $f8 $57
    inc [hl]                                      ; $733d: $34
    cpl                                           ; $733e: $2f
    or c                                          ; $733f: $b1
    ld e, d                                       ; $7340: $5a
    call z, Call_056_7612                         ; $7341: $cc $12 $76
    ld [hl], e                                    ; $7344: $73
    ld sp, $d7a1                                  ; $7345: $31 $a1 $d7
    add hl, de                                    ; $7348: $19
    sub c                                         ; $7349: $91
    ld l, c                                       ; $734a: $69
    ld a, [de]                                    ; $734b: $1a
    ld [hl+], a                                   ; $734c: $22
    dec de                                        ; $734d: $1b
    ret z                                         ; $734e: $c8

    cp e                                          ; $734f: $bb
    xor h                                         ; $7350: $ac
    call z, $fbbb                                 ; $7351: $cc $bb $fb
    dec b                                         ; $7354: $05
    db $fd                                        ; $7355: $fd
    inc d                                         ; $7356: $14
    and l                                         ; $7357: $a5
    call z, $fcbb                                 ; $7358: $cc $bb $fc
    sbc d                                         ; $735b: $9a
    res 5, a                                      ; $735c: $cb $af
    cp b                                          ; $735e: $b8
    db $e4                                        ; $735f: $e4
    cp d                                          ; $7360: $ba
    ld l, e                                       ; $7361: $6b
    ld hl, $1b02                                  ; $7362: $21 $02 $1b
    ret z                                         ; $7365: $c8

    ei                                            ; $7366: $fb
    ld [hl-], a                                   ; $7367: $32
    xor c                                         ; $7368: $a9
    or a                                          ; $7369: $b7
    cp [hl]                                       ; $736a: $be

jr_056_736b:
    ld l, d                                       ; $736b: $6a
    ld hl, sp-$7b                                 ; $736c: $f8 $85
    adc a                                         ; $736e: $8f
    cp a                                          ; $736f: $bf
    db $fc                                        ; $7370: $fc
    jp $ed2e                                      ; $7371: $c3 $2e $ed


    ld [hl], h                                    ; $7374: $74
    ld d, $27                                     ; $7375: $16 $27
    jp nz, $fcbb                                  ; $7377: $c2 $bb $fc

    cp d                                          ; $737a: $ba
    sra a                                         ; $737b: $cb $2f
    add a                                         ; $737d: $87
    ld [$c81b], sp                                ; $737e: $08 $1b $c8
    cp e                                          ; $7381: $bb
    xor h                                         ; $7382: $ac
    call z, $fbbb                                 ; $7383: $cc $bb $fb
    dec b                                         ; $7386: $05
    db $fd                                        ; $7387: $fd
    inc d                                         ; $7388: $14
    and l                                         ; $7389: $a5
    call z, $fcbb                                 ; $738a: $cc $bb $fc
    xor d                                         ; $738d: $aa
    xor e                                         ; $738e: $ab
    xor [hl]                                      ; $738f: $ae
    cp e                                          ; $7390: $bb
    db $e4                                        ; $7391: $e4
    ld [$20cb], a                                 ; $7392: $ea $cb $20
    ld [bc], a                                    ; $7395: $02
    dec de                                        ; $7396: $1b
    ret z                                         ; $7397: $c8

    ld e, e                                       ; $7398: $5b
    ld e, h                                       ; $7399: $5c
    ld e, l                                       ; $739a: $5d
    sbc b                                         ; $739b: $98
    ld b, a                                       ; $739c: $47
    rst $20                                       ; $739d: $e7
    ld a, [de]                                    ; $739e: $1a
    dec [hl]                                      ; $739f: $35
    ld [c], a                                     ; $73a0: $e2
    adc l                                         ; $73a1: $8d
    halt                                          ; $73a2: $76

Call_056_73a3:
    db $e3                                        ; $73a3: $e3
    sbc c                                         ; $73a4: $99
    rst $00                                       ; $73a5: $c7
    sub l                                         ; $73a6: $95
    ld e, e                                       ; $73a7: $5b
    db $db                                        ; $73a8: $db
    ret                                           ; $73a9: $c9


    ld a, b                                       ; $73aa: $78
    db $ec                                        ; $73ab: $ec
    xor d                                         ; $73ac: $aa
    ld e, h                                       ; $73ad: $5c
    rst $38                                       ; $73ae: $ff
    cp b                                          ; $73af: $b8
    ret c                                         ; $73b0: $d8

    and e                                         ; $73b1: $a3
    ld [hl], e                                    ; $73b2: $73
    adc e                                         ; $73b3: $8b
    dec sp                                        ; $73b4: $3b
    add hl, de                                    ; $73b5: $19
    rst $28                                       ; $73b6: $ef
    ld b, h                                       ; $73b7: $44
    cp l                                          ; $73b8: $bd
    dec [hl]                                      ; $73b9: $35
    cpl                                           ; $73ba: $2f
    daa                                           ; $73bb: $27
    xor [hl]                                      ; $73bc: $ae
    cp c                                          ; $73bd: $b9
    dec h                                         ; $73be: $25
    ld l, a                                       ; $73bf: $6f
    ld b, b                                       ; $73c0: $40
    inc [hl]                                      ; $73c1: $34
    add [hl]                                      ; $73c2: $86
    ld [$c81b], sp                                ; $73c3: $08 $1b $c8
    db $db                                        ; $73c6: $db
    cp e                                          ; $73c7: $bb
    ld [$47b0], a                                 ; $73c8: $ea $b0 $47
    jr c, jr_056_736b                             ; $73cb: $38 $9e

    sbc l                                         ; $73cd: $9d
    adc h                                         ; $73ce: $8c
    sub a                                         ; $73cf: $97
    ld l, [hl]                                    ; $73d0: $6e
    sbc [hl]                                      ; $73d1: $9e
    adc $e2                                       ; $73d2: $ce $e2
    ld b, h                                       ; $73d4: $44
    ld a, b                                       ; $73d5: $78
    db $fc                                        ; $73d6: $fc
    db $db                                        ; $73d7: $db
    ldh a, [$0b]                                  ; $73d8: $f0 $0b
    rra                                           ; $73da: $1f
    ld a, a                                       ; $73db: $7f
    ld sp, hl                                     ; $73dc: $f9
    add a                                         ; $73dd: $87
    ld e, l                                       ; $73de: $5d
    db $10                                        ; $73df: $10
    ld bc, $c81b                                  ; $73e0: $01 $1b $c8
    ld e, e                                       ; $73e3: $5b
    ld e, h                                       ; $73e4: $5c
    ld e, l                                       ; $73e5: $5d
    sbc b                                         ; $73e6: $98
    ld b, a                                       ; $73e7: $47
    rst $20                                       ; $73e8: $e7
    jp c, $e2f9                                   ; $73e9: $da $f9 $e2

    ld [hl], c                                    ; $73ec: $71
    push hl                                       ; $73ed: $e5
    sub $0e                                       ; $73ee: $d6 $0e
    db $eb                                        ; $73f0: $eb
    ld [$e0bb], a                                 ; $73f1: $ea $bb $e0
    xor $6c                                       ; $73f4: $ee $6c
    ld a, d                                       ; $73f6: $7a
    ld a, [hl-]                                   ; $73f7: $3a
    ld l, l                                       ; $73f8: $6d
    sbc $1f                                       ; $73f9: $de $1f
    pop de                                        ; $73fb: $d1
    ld [hl], c                                    ; $73fc: $71
    dec de                                        ; $73fd: $1b
    or [hl]                                       ; $73fe: $b6
    sbc h                                         ; $73ff: $9c
    ld de, $8cba                                  ; $7400: $11 $ba $8c
    dec e                                         ; $7403: $1d
    call nz, $cb3c                                ; $7404: $c4 $3c $cb
    ld c, [hl]                                    ; $7407: $4e
    db $fc                                        ; $7408: $fc
    rst $20                                       ; $7409: $e7
    ld a, b                                       ; $740a: $78
    cpl                                           ; $740b: $2f
    sbc c                                         ; $740c: $99
    add hl, de                                    ; $740d: $19
    ld [hl+], a                                   ; $740e: $22
    dec de                                        ; $740f: $1b
    ld c, b                                       ; $7410: $48
    add b                                         ; $7411: $80
    sub l                                         ; $7412: $95
    ld e, e                                       ; $7413: $5b
    jp $e44f                                      ; $7414: $c3 $4f $e4


    sbc h                                         ; $7417: $9c
    adc $8b                                       ; $7418: $ce $8b
    pop af                                        ; $741a: $f1
    ld [de], a                                    ; $741b: $12
    db $ec                                        ; $741c: $ec
    jp Jump_056_5dae                              ; $741d: $c3 $ae $5d


    ld a, [hl]                                    ; $7420: $7e
    push af                                       ; $7421: $f5
    ld h, l                                       ; $7422: $65
    rst $10                                       ; $7423: $d7
    ld e, h                                       ; $7424: $5c
    ld [hl], d                                    ; $7425: $72
    db $dd                                        ; $7426: $dd
    ld [hl], l                                    ; $7427: $75
    db $10                                        ; $7428: $10
    ld bc, $c81b                                  ; $7429: $01 $1b $c8
    sbc $3a                                       ; $742c: $de $3a
    or e                                          ; $742e: $b3
    ld h, l                                       ; $742f: $65
    daa                                           ; $7430: $27
    db $e3                                        ; $7431: $e3
    push hl                                       ; $7432: $e5
    call nz, $9cd5                                ; $7433: $c4 $d5 $9c
    jr z, jr_056_747b                             ; $7436: $28 $43

    inc b                                         ; $7438: $04
    dec de                                        ; $7439: $1b
    ret z                                         ; $743a: $c8

    inc d                                         ; $743b: $14
    ld a, [c]                                     ; $743c: $f2
    rra                                           ; $743d: $1f
    or $2c                                        ; $743e: $f6 $2c
    inc hl                                        ; $7440: $23
    call c, Call_000_19c6                         ; $7441: $dc $c6 $19
    ld l, h                                       ; $7444: $6c
    ld h, [hl]                                    ; $7445: $66
    dec bc                                        ; $7446: $0b
    ccf                                           ; $7447: $3f
    ret nc                                        ; $7448: $d0

    ld a, d                                       ; $7449: $7a
    ld a, e                                       ; $744a: $7b
    db $fc                                        ; $744b: $fc
    sub [hl]                                      ; $744c: $96
    jp $e272                                      ; $744d: $c3 $72 $e2


jr_056_7450:
    ld l, d                                       ; $7450: $6a
    ld c, [hl]                                    ; $7451: $4e
    sub h                                         ; $7452: $94
    or l                                          ; $7453: $b5
    jp $b996                                      ; $7454: $c3 $96 $b9


    ld d, [hl]                                    ; $7457: $56
    ccf                                           ; $7458: $3f
    ld a, [c]                                     ; $7459: $f2
    rrca                                          ; $745a: $0f
    sub d                                         ; $745b: $92
    db $e3                                        ; $745c: $e3
    add sp, $5c                                   ; $745d: $e8 $5c
    ld a, h                                       ; $745f: $7c
    ld e, $f3                                     ; $7460: $1e $f3
    add sp, -$61                                  ; $7462: $e8 $9f
    sbc e                                         ; $7464: $9b
    sbc c                                         ; $7465: $99
    ld hl, $1b02                                  ; $7466: $21 $02 $1b
    ret z                                         ; $7469: $c8

Call_056_746a:
    db $db                                        ; $746a: $db
    and h                                         ; $746b: $a4
    ld c, e                                       ; $746c: $4b
    and e                                         ; $746d: $a3
    or h                                          ; $746e: $b4
    inc hl                                        ; $746f: $23
    push af                                       ; $7470: $f5
    jr jr_056_7450                                ; $7471: $18 $dd

    ld c, d                                       ; $7473: $4a
    inc de                                        ; $7474: $13
    add d                                         ; $7475: $82
    ld a, c                                       ; $7476: $79
    add h                                         ; $7477: $84
    db $e3                                        ; $7478: $e3
    reti                                          ; $7479: $d9


    ret                                           ; $747a: $c9


jr_056_747b:
    ld a, b                                       ; $747b: $78
    db $f4                                        ; $747c: $f4
    inc de                                        ; $747d: $13
    sbc [hl]                                      ; $747e: $9e
    ld h, l                                       ; $747f: $65
    ld d, c                                       ; $7480: $51
    xor a                                         ; $7481: $af
    pop hl                                        ; $7482: $e1
    call z, $f553                                 ; $7483: $cc $53 $f5
    add d                                         ; $7486: $82
    ld c, c                                       ; $7487: $49
    rra                                           ; $7488: $1f
    add [hl]                                      ; $7489: $86
    ld [$c81b], sp                                ; $748a: $08 $1b $c8
    dec sp                                        ; $748d: $3b
    ld [$a9c4], a                                 ; $748e: $ea $c4 $a9
    jp nc, $fabf                                  ; $7491: $d2 $bf $fa

    rst $20                                       ; $7494: $e7
    ld a, b                                       ; $7495: $78
    daa                                           ; $7496: $27
    db $e3                                        ; $7497: $e3
    ld h, l                                       ; $7498: $65
    sub d                                         ; $7499: $92
    ld d, h                                       ; $749a: $54
    cpl                                           ; $749b: $2f
    sbc b                                         ; $749c: $98
    add a                                         ; $749d: $87
    add hl, hl                                    ; $749e: $29
    or c                                          ; $749f: $b1
    jp nc, $b043                                  ; $74a0: $d2 $43 $b0

    sbc h                                         ; $74a3: $9c
    add hl, sp                                    ; $74a4: $39
    ld e, b                                       ; $74a5: $58
    ld c, [hl]                                    ; $74a6: $4e
    ld a, h                                       ; $74a7: $7c
    and h                                         ; $74a8: $a4
    dec bc                                        ; $74a9: $0b
    ld [hl+], a                                   ; $74aa: $22
    dec de                                        ; $74ab: $1b
    ret z                                         ; $74ac: $c8

    ei                                            ; $74ad: $fb
    ld a, [hl]                                    ; $74ae: $7e
    ld d, $d7                                     ; $74af: $16 $d7
    cp [hl]                                       ; $74b1: $be
    adc b                                         ; $74b2: $88
    ld h, l                                       ; $74b3: $65
    ld a, d                                       ; $74b4: $7a
    ld [hl], c                                    ; $74b5: $71
    ld l, [hl]                                    ; $74b6: $6e
    add hl, sp                                    ; $74b7: $39

Call_056_74b8:
    ld a, h                                       ; $74b8: $7c
    bit 6, d                                      ; $74b9: $cb $72
    ret c                                         ; $74bb: $d8

Jump_056_74bc:
    ld a, c                                       ; $74bc: $79
    cp b                                          ; $74bd: $b8
    cp c                                          ; $74be: $b9
    or $92                                        ; $74bf: $f6 $92
    ld e, c                                       ; $74c1: $59
    ld d, [hl]                                    ; $74c2: $56
    adc [hl]                                      ; $74c3: $8e
    pop de                                        ; $74c4: $d1
    jp $fc2f                                      ; $74c5: $c3 $2f $fc


    inc de                                        ; $74c8: $13
    cp l                                          ; $74c9: $bd
    ld [hl], h                                    ; $74ca: $74
    set 7, b                                      ; $74cb: $cb $f8
    or b                                          ; $74cd: $b0
    dec bc                                        ; $74ce: $0b
    ld [hl+], a                                   ; $74cf: $22
    dec de                                        ; $74d0: $1b

jr_056_74d1:
    ret z                                         ; $74d1: $c8

    db $db                                        ; $74d2: $db
    cp e                                          ; $74d3: $bb
    ld [$17b0], a                                 ; $74d4: $ea $b0 $17
    dec sp                                        ; $74d7: $3b
    ld d, $f6                                     ; $74d8: $16 $f6
    ld [hl-], a                                   ; $74da: $32
    ld c, l                                       ; $74db: $4d
    cp e                                          ; $74dc: $bb
    ld b, [hl]                                    ; $74dd: $46
    rst $20                                       ; $74de: $e7
    sbc d                                         ; $74df: $9a
    xor d                                         ; $74e0: $aa
    rla                                           ; $74e1: $17
    ld c, h                                       ; $74e2: $4c
    ld a, [$4430]                                 ; $74e3: $fa $30 $44
    dec de                                        ; $74e6: $1b
    ret z                                         ; $74e7: $c8

    sbc $a5                                       ; $74e8: $de $a5
    adc e                                         ; $74ea: $8b
    or h                                          ; $74eb: $b4
    or a                                          ; $74ec: $b7
    inc d                                         ; $74ed: $14
    add [hl]                                      ; $74ee: $86
    cp e                                          ; $74ef: $bb
    ld e, e                                       ; $74f0: $5b
    sub a                                         ; $74f1: $97
    sub b                                         ; $74f2: $90
    rst $08                                       ; $74f3: $cf
    adc b                                         ; $74f4: $88
    ld a, h                                       ; $74f5: $7c
    ret z                                         ; $74f6: $c8

    rst $08                                       ; $74f7: $cf
    xor a                                         ; $74f8: $af
    adc l                                         ; $74f9: $8d
    adc $35                                       ; $74fa: $ce $35
    db $fc                                        ; $74fc: $fc
    jp nz, $d13f                                  ; $74fd: $c2 $3f $d1

    dec sp                                        ; $7500: $3b
    sbc d                                         ; $7501: $9a
    xor b                                         ; $7502: $a8
    ld [hl-], a                                   ; $7503: $32
    add $ae                                       ; $7504: $c6 $ae
    push hl                                       ; $7506: $e5
    or b                                          ; $7507: $b0
    inc de                                        ; $7508: $13
    sbc a                                         ; $7509: $9f
    ld [hl], d                                    ; $750a: $72
    ld b, c                                       ; $750b: $41
    inc b                                         ; $750c: $04
    dec de                                        ; $750d: $1b
    ret z                                         ; $750e: $c8

    db $db                                        ; $750f: $db
    cp e                                          ; $7510: $bb
    ld [$c7b0], a                                 ; $7511: $ea $b0 $c7
    sub l                                         ; $7514: $95
    ld e, e                                       ; $7515: $5b
    jp Jump_056_644f                              ; $7516: $c3 $4f $64


    daa                                           ; $7519: $27
    db $e3                                        ; $751a: $e3
    and l                                         ; $751b: $a5
    sbc e                                         ; $751c: $9b
    ld [hl], a                                    ; $751d: $77
    ret z                                         ; $751e: $c8

    xor a                                         ; $751f: $af
    sub h                                         ; $7520: $94
    ld a, c                                       ; $7521: $79
    cpl                                           ; $7522: $2f
    sbc c                                         ; $7523: $99
    ld h, l                                       ; $7524: $65
    adc a                                         ; $7525: $8f
    xor [hl]                                      ; $7526: $ae
    rra                                           ; $7527: $1f
    sbc a                                         ; $7528: $9f
    sbc h                                         ; $7529: $9c
    jr c, jr_056_74d1                             ; $752a: $38 $a5

    adc e                                         ; $752c: $8b
    ld [hl], d                                    ; $752d: $72
    jp hl                                         ; $752e: $e9


    jp nz, $0110                                  ; $752f: $c2 $10 $01

    dec de                                        ; $7532: $1b
    ret z                                         ; $7533: $c8

    db $db                                        ; $7534: $db
    cp e                                          ; $7535: $bb
    ld [$f7b0], a                                 ; $7536: $ea $b0 $f7
    ld [$7e33], a                                 ; $7539: $ea $33 $7e
    jp nz, $ba3f                                  ; $753c: $c2 $3f $ba

    halt                                          ; $753f: $76
    ld [hl-], a                                   ; $7540: $32
    ld e, [hl]                                    ; $7541: $5e
    jp c, $3fc9                                   ; $7542: $da $c9 $3f

    db $ec                                        ; $7545: $ec
    pop af                                        ; $7546: $f1
    ld l, e                                       ; $7547: $6b
    call Call_056_6bbc                            ; $7548: $cd $bc $6b
    ei                                            ; $754b: $fb
    ccf                                           ; $754c: $3f
    jp $fc2f                                      ; $754d: $c3 $2f $fc


    inc de                                        ; $7550: $13
    dec a                                         ; $7551: $3d
    rlca                                          ; $7552: $07
    res 1, c                                      ; $7553: $cb $89
    adc a                                         ; $7555: $8f
    ld [hl], h                                    ; $7556: $74
    ld b, c                                       ; $7557: $41
    inc b                                         ; $7558: $04
    dec de                                        ; $7559: $1b
    ret z                                         ; $755a: $c8

    cp e                                          ; $755b: $bb
    xor l                                         ; $755c: $ad
    ld l, $09                                     ; $755d: $2e $09
    and l                                         ; $755f: $a5
    adc e                                         ; $7560: $8b
    inc [hl]                                      ; $7561: $34
    add a                                         ; $7562: $87
    ldh [$da], a                                  ; $7563: $e0 $da
    ld c, e                                       ; $7565: $4b
    sub $fb                                       ; $7566: $d6 $fb
    dec [hl]                                      ; $7568: $35
    ld c, [hl]                                    ; $7569: $4e
    ld [hl], d                                    ; $756a: $72
    ld sp, $ef5c                                  ; $756b: $31 $5c $ef
    scf                                           ; $756e: $37
    ld a, c                                       ; $756f: $79
    adc c                                         ; $7570: $89
    adc h                                         ; $7571: $8c
    ld a, a                                       ; $7572: $7f
    sbc e                                         ; $7573: $9b
    ld a, c                                       ; $7574: $79
    cpl                                           ; $7575: $2f
    sbc c                                         ; $7576: $99
    ld a, [c]                                     ; $7577: $f2
    add sp, $5f                                   ; $7578: $e8 $5f
    ld e, $a1                                     ; $757a: $1e $a1
    rra                                           ; $757c: $1f
    adc e                                         ; $757d: $8b
    ld b, a                                       ; $757e: $47
    ld d, d                                       ; $757f: $52
    dec sp                                        ; $7580: $3b
    ld sp, $0b37                                  ; $7581: $31 $37 $0b
    ld b, h                                       ; $7584: $44
    dec de                                        ; $7585: $1b
    ret z                                         ; $7586: $c8

    ld e, e                                       ; $7587: $5b
    ld e, h                                       ; $7588: $5c
    ld e, l                                       ; $7589: $5d
    sbc b                                         ; $758a: $98
    ld b, a                                       ; $758b: $47
    rst $20                                       ; $758c: $e7
    and d                                         ; $758d: $a2
    rra                                           ; $758e: $1f
    or e                                          ; $758f: $b3
    ld l, e                                       ; $7590: $6b
    cpl                                           ; $7591: $2f
    add hl, de                                    ; $7592: $19
    sbc l                                         ; $7593: $9d
    dec bc                                        ; $7594: $0b
    cp e                                          ; $7595: $bb
    and l                                         ; $7596: $a5
    cp e                                          ; $7597: $bb
    and d                                         ; $7598: $a2
    dec bc                                        ; $7599: $0b
    ld [hl+], a                                   ; $759a: $22
    dec de                                        ; $759b: $1b
    ret z                                         ; $759c: $c8

    cp e                                          ; $759d: $bb
    xor l                                         ; $759e: $ad
    ld l, $09                                     ; $759f: $2e $09
    and l                                         ; $75a1: $a5
    adc e                                         ; $75a2: $8b
    inc [hl]                                      ; $75a3: $34
    add a                                         ; $75a4: $87
    ldh [$da], a                                  ; $75a5: $e0 $da
    ld c, e                                       ; $75a7: $4b
    sub $fb                                       ; $75a8: $d6 $fb
    dec [hl]                                      ; $75aa: $35
    ld c, [hl]                                    ; $75ab: $4e
    ld [hl], d                                    ; $75ac: $72
    ld sp, $ef5c                                  ; $75ad: $31 $5c $ef
    scf                                           ; $75b0: $37
    ld a, c                                       ; $75b1: $79
    adc c                                         ; $75b2: $89
    adc h                                         ; $75b3: $8c
    ld a, a                                       ; $75b4: $7f
    sbc e                                         ; $75b5: $9b
    ld a, c                                       ; $75b6: $79
    cpl                                           ; $75b7: $2f
    sbc c                                         ; $75b8: $99
    ld a, [c]                                     ; $75b9: $f2
    add sp, $5f                                   ; $75ba: $e8 $5f
    ld e, $a1                                     ; $75bc: $1e $a1
    rra                                           ; $75be: $1f
    adc e                                         ; $75bf: $8b
    ld b, a                                       ; $75c0: $47
    ld d, d                                       ; $75c1: $52
    dec sp                                        ; $75c2: $3b
    ld sp, $0b37                                  ; $75c3: $31 $37 $0b
    ld b, h                                       ; $75c6: $44
    dec de                                        ; $75c7: $1b
    ret z                                         ; $75c8: $c8

    cp e                                          ; $75c9: $bb
    inc e                                         ; $75ca: $1c
    inc l                                         ; $75cb: $2c
    ld [$3fd5], a                                 ; $75cc: $ea $d5 $3f
    ld [hl], c                                    ; $75cf: $71
    cp a                                          ; $75d0: $bf
    ld c, [hl]                                    ; $75d1: $4e
    inc e                                         ; $75d2: $1c
    pop hl                                        ; $75d3: $e1
    ld a, b                                       ; $75d4: $78
    halt                                          ; $75d5: $76
    ld [hl-], a                                   ; $75d6: $32
    ld e, [hl]                                    ; $75d7: $5e
    db $eb                                        ; $75d8: $eb
    xor e                                         ; $75d9: $ab
    ret c                                         ; $75da: $d8

    sla h                                         ; $75db: $cb $24
    add hl, sp                                    ; $75dd: $39
    ld e, l                                       ; $75de: $5d
    add d                                         ; $75df: $82
    rst $00                                       ; $75e0: $c7
    sub l                                         ; $75e1: $95
    ld e, e                                       ; $75e2: $5b
    jp $8116                                      ; $75e3: $c3 $16 $81


    ld [$c81b], sp                                ; $75e6: $08 $1b $c8
    cp e                                          ; $75e9: $bb
    xor l                                         ; $75ea: $ad
    ld l, $09                                     ; $75eb: $2e $09
    and l                                         ; $75ed: $a5
    adc e                                         ; $75ee: $8b
    inc [hl]                                      ; $75ef: $34
    add a                                         ; $75f0: $87
    ldh [$da], a                                  ; $75f1: $e0 $da
    ld c, e                                       ; $75f3: $4b
    sub $fb                                       ; $75f4: $d6 $fb
    dec [hl]                                      ; $75f6: $35
    ld c, [hl]                                    ; $75f7: $4e
    ld [hl], d                                    ; $75f8: $72
    ld sp, $ef5c                                  ; $75f9: $31 $5c $ef
    scf                                           ; $75fc: $37
    ld a, c                                       ; $75fd: $79
    adc c                                         ; $75fe: $89
    adc h                                         ; $75ff: $8c
    ld a, a                                       ; $7600: $7f
    sbc e                                         ; $7601: $9b
    ld a, c                                       ; $7602: $79
    cpl                                           ; $7603: $2f
    sbc c                                         ; $7604: $99
    ld a, [c]                                     ; $7605: $f2
    add sp, $5f                                   ; $7606: $e8 $5f
    ld e, $a1                                     ; $7608: $1e $a1
    rra                                           ; $760a: $1f
    adc e                                         ; $760b: $8b
    ld b, a                                       ; $760c: $47
    ld d, d                                       ; $760d: $52
    dec sp                                        ; $760e: $3b
    ld sp, $0b37                                  ; $760f: $31 $37 $0b

Call_056_7612:
    ld b, h                                       ; $7612: $44
    dec de                                        ; $7613: $1b
    ret z                                         ; $7614: $c8

    cp e                                          ; $7615: $bb
    xor l                                         ; $7616: $ad
    ld c, $7f                                     ; $7617: $0e $7f
    sbc d                                         ; $7619: $9a
    ld e, l                                       ; $761a: $5d
    ld a, e                                       ; $761b: $7b
    ret                                           ; $761c: $c9


    ld a, d                                       ; $761d: $7a
    cp a                                          ; $761e: $bf
    add $49                                       ; $761f: $c6 $49
    ld l, $86                                     ; $7621: $2e $86
    db $eb                                        ; $7623: $eb
    pop de                                        ; $7624: $d1
    ld h, l                                       ; $7625: $65
    pop hl                                        ; $7626: $e1
    dec h                                         ; $7627: $25
    dec sp                                        ; $7628: $3b
    sbc a                                         ; $7629: $9f
    ld a, c                                       ; $762a: $79
    ld a, [c]                                     ; $762b: $f2
    ld [de], a                                    ; $762c: $12
    add hl, de                                    ; $762d: $19
    rst $38                                       ; $762e: $ff
    ld [hl], $cb                                  ; $762f: $36 $cb
    ld e, [hl]                                    ; $7631: $5e
    ld [hl-], a                                   ; $7632: $32
    push hl                                       ; $7633: $e5
    pop de                                        ; $7634: $d1
    cp a                                          ; $7635: $bf
    cp h                                          ; $7636: $bc
    sbc $af                                       ; $7637: $de $af
    ld [hl], c                                    ; $7639: $71
    sub d                                         ; $763a: $92
    adc e                                         ; $763b: $8b
    ld b, a                                       ; $763c: $47
    add sp, -$39                                  ; $763d: $e8 $c7
    ld h, d                                       ; $763f: $62
    adc b                                         ; $7640: $88
    nop                                           ; $7641: $00
    dec de                                        ; $7642: $1b
    ret z                                         ; $7643: $c8

    sbc $a5                                       ; $7644: $de $a5
    adc e                                         ; $7646: $8b
    or h                                          ; $7647: $b4
    or a                                          ; $7648: $b7
    or $44                                        ; $7649: $f6 $44
    sbc l                                         ; $764b: $9d
    or h                                          ; $764c: $b4
    add $b2                                       ; $764d: $c6 $b2
    sbc $af                                       ; $764f: $de $af
    ld [hl], c                                    ; $7651: $71
    ld a, [c]                                     ; $7652: $f2
    inc h                                         ; $7653: $24
    ld b, b                                       ; $7654: $40
    inc b                                         ; $7655: $04
    dec de                                        ; $7656: $1b
    ret z                                         ; $7657: $c8

    db $db                                        ; $7658: $db
    cp e                                          ; $7659: $bb
    ld [$97b0], a                                 ; $765a: $ea $b0 $97
    cp b                                          ; $765d: $b8
    ld hl, sp-$75                                 ; $765e: $f8 $8b
    ld a, b                                       ; $7660: $78
    ld a, a                                       ; $7661: $7f
    db $dd                                        ; $7662: $dd
    sub [hl]                                      ; $7663: $96
    dec [hl]                                      ; $7664: $35
    rst $00                                       ; $7665: $c7
    add sp, $11                                   ; $7666: $e8 $11
    adc [hl]                                      ; $7668: $8e
    rst $00                                       ; $7669: $c7
    or c                                          ; $766a: $b1
    db $e3                                        ; $766b: $e3
    ld b, $11                                     ; $766c: $06 $11
    dec de                                        ; $766e: $1b
    ld c, b                                       ; $766f: $48
    nop                                           ; $7670: $00
    adc [hl]                                      ; $7671: $8e
    sbc h                                         ; $7672: $9c
    ld l, e                                       ; $7673: $6b
    inc h                                         ; $7674: $24
    or l                                          ; $7675: $b5
    sbc $af                                       ; $7676: $de $af
    ld [hl], c                                    ; $7678: $71
    sub d                                         ; $7679: $92
    adc e                                         ; $767a: $8b
    pop hl                                        ; $767b: $e1
    nop                                           ; $767c: $00
    ld e, e                                       ; $767d: $5b
    ld h, h                                       ; $767e: $64
    cpl                                           ; $767f: $2f
    reti                                          ; $7680: $d9


    dec a                                         ; $7681: $3d
    ccf                                           ; $7682: $3f
    and $f6                                       ; $7683: $e6 $f6
    adc $6e                                       ; $7685: $ce $6e
    ld l, a                                       ; $7687: $6f
    rrca                                          ; $7688: $0f
    cp e                                          ; $7689: $bb
    ld l, c                                       ; $768a: $69
    sub a                                         ; $768b: $97
    ld c, c                                       ; $768c: $49
    sub d                                         ; $768d: $92
    cp $22                                        ; $768e: $fe $22
    xor [hl]                                      ; $7690: $ae
    cp l                                          ; $7691: $bd
    ld h, h                                       ; $7692: $64
    db $dd                                        ; $7693: $dd
    ld e, [hl]                                    ; $7694: $5e
    ld a, [c]                                     ; $7695: $f2
    adc a                                         ; $7696: $8f
    rst $08                                       ; $7697: $cf
    ld c, $fb                                     ; $7698: $0e $fb
    dec bc                                        ; $769a: $0b
    ld b, h                                       ; $769b: $44
    dec de                                        ; $769c: $1b
    ret z                                         ; $769d: $c8

    ld e, e                                       ; $769e: $5b
    sbc $39                                       ; $769f: $de $39

Jump_056_76a1:
    rst $38                                       ; $76a1: $ff
    ldh a, [$fe]                                  ; $76a2: $f0 $fe
    sub h                                         ; $76a4: $94
    ld a, c                                       ; $76a5: $79
    ld h, h                                       ; $76a6: $64
    ld h, $f5                                     ; $76a7: $26 $f5
    sub $57                                       ; $76a9: $d6 $57
    ld a, c                                       ; $76ab: $79
    ld e, h                                       ; $76ac: $5c
    cp c                                          ; $76ad: $b9
    dec [hl]                                      ; $76ae: $35
    db $fc                                        ; $76af: $fc
    ld b, h                                       ; $76b0: $44
    ld c, [hl]                                    ; $76b1: $4e
    ld a, [$3289]                                 ; $76b2: $fa $89 $32
    xor a                                         ; $76b5: $af
    rst $38                                       ; $76b6: $ff
    sub h                                         ; $76b7: $94
    xor b                                         ; $76b8: $a8
    db $e3                                        ; $76b9: $e3
    and $9d                                       ; $76ba: $e6 $9d
    xor [hl]                                      ; $76bc: $ae
    jp $fee5                                      ; $76bd: $c3 $e5 $fe


    ld hl, $1b02                                  ; $76c0: $21 $02 $1b
    ret z                                         ; $76c3: $c8

    dec sp                                        ; $76c4: $3b
    inc sp                                        ; $76c5: $33
    ld h, $b3                                     ; $76c6: $26 $b3
    db $fc                                        ; $76c8: $fc
    jp $c97b                                      ; $76c9: $c3 $7b $c9


    sub h                                         ; $76cc: $94
    ld a, c                                       ; $76cd: $79
    ld a, [hl-]                                   ; $76ce: $3a
    db $ed                                        ; $76cf: $ed
    ld d, d                                       ; $76d0: $52
    ccf                                           ; $76d1: $3f
    ld a, b                                       ; $76d2: $78
    adc c                                         ; $76d3: $89
    dec hl                                        ; $76d4: $2b
    sbc d                                         ; $76d5: $9a
    rst $10                                       ; $76d6: $d7
    ccf                                           ; $76d7: $3f
    ret nz                                        ; $76d8: $c0

    jp z, $e1ad                                   ; $76d9: $ca $ad $e1

    daa                                           ; $76dc: $27
    ld [hl], d                                    ; $76dd: $72
    adc [hl]                                      ; $76de: $8e
    cp $d9                                        ; $76df: $fe $d9
    db $fd                                        ; $76e1: $fd
    ld l, e                                       ; $76e2: $6b
    ld [hl], a                                    ; $76e3: $77
    ld [hl-], a                                   ; $76e4: $32
    ld e, [hl]                                    ; $76e5: $5e
    cp d                                          ; $76e6: $ba
    pop bc                                        ; $76e7: $c1
    rlca                                          ; $76e8: $07
    rst $30                                       ; $76e9: $f7
    ld b, l                                       ; $76ea: $45
    ld c, h                                       ; $76eb: $4c
    db $e4                                        ; $76ec: $e4
    and [hl]                                      ; $76ed: $a6
    ld e, h                                       ; $76ee: $5c
    or e                                          ; $76ef: $b3
    call z, $90f1                                 ; $76f0: $cc $f1 $90
    dec l                                         ; $76f3: $2d
    dec hl                                        ; $76f4: $2b
    sub a                                         ; $76f5: $97
    ld b, l                                       ; $76f6: $45
    ld a, c                                       ; $76f7: $79
    xor h                                         ; $76f8: $ac
    and a                                         ; $76f9: $a7
    rra                                           ; $76fa: $1f
    ld b, h                                       ; $76fb: $44
    dec de                                        ; $76fc: $1b
    ret z                                         ; $76fd: $c8

    inc d                                         ; $76fe: $14
    rst $00                                       ; $76ff: $c7
    ld l, b                                       ; $7700: $68
    ld a, [c]                                     ; $7701: $f2
    sub e                                         ; $7702: $93
    xor [hl]                                      ; $7703: $ae
    db $fd                                        ; $7704: $fd

Jump_056_7705:
    add hl, hl                                    ; $7705: $29
    di                                            ; $7706: $f3
    ret z                                         ; $7707: $c8

Call_056_7708:
Jump_056_7708:
    ld c, h                                       ; $7708: $4c
    ld [$afad], a                                 ; $7709: $ea $ad $af
    ld a, [c]                                     ; $770c: $f2
    cp b                                          ; $770d: $b8
    ld [hl], d                                    ; $770e: $72
    ld l, e                                       ; $770f: $6b
    ld hl, sp-$77                                 ; $7710: $f8 $89
    sbc h                                         ; $7712: $9c
    db $f4                                        ; $7713: $f4
    inc de                                        ; $7714: $13
    ld h, l                                       ; $7715: $65
    ld e, [hl]                                    ; $7716: $5e
    rst $38                                       ; $7717: $ff
    add hl, hl                                    ; $7718: $29
    ld d, c                                       ; $7719: $51
    rst $00                                       ; $771a: $c7
    call Call_056_5d3b                            ; $771b: $cd $3b $5d
    add a                                         ; $771e: $87
    set 7, l                                      ; $771f: $cb $fd
    ld b, e                                       ; $7721: $43
    inc b                                         ; $7722: $04
    dec de                                        ; $7723: $1b
    ret z                                         ; $7724: $c8

    cp e                                          ; $7725: $bb
    ld [hl], h                                    ; $7726: $74
    and $7f                                       ; $7727: $e6 $7f
    ld a, b                                       ; $7729: $78
    ld a, a                                       ; $772a: $7f
    jp z, Jump_000_323c                           ; $772b: $ca $3c $32

    sub e                                         ; $772e: $93
    ld a, d                                       ; $772f: $7a
    db $eb                                        ; $7730: $eb
    xor e                                         ; $7731: $ab
    inc a                                         ; $7732: $3c
    xor [hl]                                      ; $7733: $ae
    call c, Call_056_7e1a                         ; $7734: $dc $1a $7e
    ld [hl+], a                                   ; $7737: $22
    daa                                           ; $7738: $27
    db $fd                                        ; $7739: $fd
    ld b, h                                       ; $773a: $44
    sbc c                                         ; $773b: $99
    rst $10                                       ; $773c: $d7
    ld a, a                                       ; $773d: $7f
    ld c, d                                       ; $773e: $4a
    call nc, $f371                                ; $773f: $d4 $71 $f3
    ld c, [hl]                                    ; $7742: $4e
    rst $10                                       ; $7743: $d7
    pop hl                                        ; $7744: $e1
    ld [hl], d                                    ; $7745: $72
    rst $38                                       ; $7746: $ff
    db $10                                        ; $7747: $10
    ld bc, $c81b                                  ; $7748: $01 $1b $c8
    db $db                                        ; $774b: $db
    cp e                                          ; $774c: $bb
    ld [$c3b0], a                                 ; $774d: $ea $b0 $c3
    rst $20                                       ; $7750: $e7
    ld d, a                                       ; $7751: $57
    rst $38                                       ; $7752: $ff
    ldh a, [$fe]                                  ; $7753: $f0 $fe
    sub h                                         ; $7755: $94
    ld a, c                                       ; $7756: $79
    ld h, h                                       ; $7757: $64
    ld h, $f5                                     ; $7758: $26 $f5
    sub $57                                       ; $775a: $d6 $57
    ld a, c                                       ; $775c: $79
    ld e, h                                       ; $775d: $5c
    cp c                                          ; $775e: $b9
    dec [hl]                                      ; $775f: $35
    db $fc                                        ; $7760: $fc
    ld b, h                                       ; $7761: $44
    ld c, [hl]                                    ; $7762: $4e
    ld a, [$3289]                                 ; $7763: $fa $89 $32
    xor a                                         ; $7766: $af
    rst $38                                       ; $7767: $ff
    sub h                                         ; $7768: $94
    xor b                                         ; $7769: $a8
    db $e3                                        ; $776a: $e3
    and $9d                                       ; $776b: $e6 $9d
    xor [hl]                                      ; $776d: $ae
    jp $fee5                                      ; $776e: $c3 $e5 $fe


    ld hl, $1b02                                  ; $7771: $21 $02 $1b
    ld c, b                                       ; $7774: $48
    ret nz                                        ; $7775: $c0

    add hl, sp                                    ; $7776: $39
    cp [hl]                                       ; $7777: $be
    or $0f                                        ; $7778: $f6 $0f
    rst $28                                       ; $777a: $ef
    ld c, a                                       ; $777b: $4f
    sbc c                                         ; $777c: $99
    ld b, a                                       ; $777d: $47
    ld h, [hl]                                    ; $777e: $66
    ld d, d                                       ; $777f: $52

jr_056_7780:
    ld l, a                                       ; $7780: $6f
    ld a, l                                       ; $7781: $7d
    sub l                                         ; $7782: $95
    rst $00                                       ; $7783: $c7
    sub l                                         ; $7784: $95
    ld e, e                                       ; $7785: $5b
    jp $e44f                                      ; $7786: $c3 $4f $e4


    and h                                         ; $7789: $a4
    sbc a                                         ; $778a: $9f
    jr z, jr_056_7780                             ; $778b: $28 $f3

    ld a, [$894f]                                 ; $778d: $fa $4f $89
    ld a, [hl-]                                   ; $7790: $3a
    ld l, [hl]                                    ; $7791: $6e
    sbc $e9                                       ; $7792: $de $e9
    ld a, [hl-]                                   ; $7794: $3a
    ld e, h                                       ; $7795: $5c
    xor $1f                                       ; $7796: $ee $1f
    ld [hl+], a                                   ; $7798: $22
    dec de                                        ; $7799: $1b
    ld c, b                                       ; $779a: $48
    add b                                         ; $779b: $80
    sub l                                         ; $779c: $95
    ld sp, $69f6                                  ; $779d: $31 $f6 $69
    cpl                                           ; $77a0: $2f
    cp b                                          ; $77a1: $b8
    or $a7                                        ; $77a2: $f6 $a7
    call z, Call_000_3323                         ; $77a4: $cc $23 $33
    xor c                                         ; $77a7: $a9
    or a                                          ; $77a8: $b7

Jump_056_77a9:
    cp [hl]                                       ; $77a9: $be
    jp z, $cae3                                   ; $77aa: $ca $e3 $ca

    xor l                                         ; $77ad: $ad
    pop hl                                        ; $77ae: $e1
    daa                                           ; $77af: $27
    ld [hl], d                                    ; $77b0: $72
    jp nc, $944f                                  ; $77b1: $d2 $4f $94

    ld a, c                                       ; $77b4: $79
    db $fd                                        ; $77b5: $fd
    and a                                         ; $77b6: $a7
    ld b, h                                       ; $77b7: $44
    dec e                                         ; $77b8: $1d
    scf                                           ; $77b9: $37
    rst $28                                       ; $77ba: $ef
    ld [hl], h                                    ; $77bb: $74
    dec e                                         ; $77bc: $1d

Jump_056_77bd:
    ld l, $f7                                     ; $77bd: $2e $f7
    rrca                                          ; $77bf: $0f
    ld de, $c81b                                  ; $77c0: $11 $1b $c8
    ei                                            ; $77c3: $fb
    ld [hl-], a                                   ; $77c4: $32
    xor c                                         ; $77c5: $a9
    or a                                          ; $77c6: $b7
    cp [hl]                                       ; $77c7: $be

Jump_056_77c8:
    ld l, d                                       ; $77c8: $6a
    rst $20                                       ; $77c9: $e7
    ld c, c                                       ; $77ca: $49
    jr nz, jr_056_77e9                            ; $77cb: $20 $1c

    rrca                                          ; $77cd: $0f
    ld b, h                                       ; $77ce: $44
    dec de                                        ; $77cf: $1b
    ld c, b                                       ; $77d0: $48
    nop                                           ; $77d1: $00
    ld a, [de]                                    ; $77d2: $1a
    add $0e                                       ; $77d3: $c6 $0e
    sbc a                                         ; $77d5: $9f
    ld e, a                                       ; $77d6: $5f
    db $fd                                        ; $77d7: $fd
    jp $53fb                                      ; $77d8: $c3 $fb $53


    and $91                                       ; $77db: $e6 $91
    sbc c                                         ; $77dd: $99
    call nc, Call_056_5f5b                        ; $77de: $d4 $5b $5f
    push hl                                       ; $77e1: $e5
    ld [hl], c                                    ; $77e2: $71
    push hl                                       ; $77e3: $e5
    sub $f0                                       ; $77e4: $d6 $f0
    inc de                                        ; $77e6: $13
    add hl, sp                                    ; $77e7: $39
    jp hl                                         ; $77e8: $e9


jr_056_77e9:
    daa                                           ; $77e9: $27
    jp z, $febc                                   ; $77ea: $ca $bc $fe

    ld d, e                                       ; $77ed: $53
    and d                                         ; $77ee: $a2
    adc [hl]                                      ; $77ef: $8e
    sbc e                                         ; $77f0: $9b
    ld [hl], a                                    ; $77f1: $77
    cp d                                          ; $77f2: $ba
    ld c, $97                                     ; $77f3: $0e $97
    ei                                            ; $77f5: $fb
    add a                                         ; $77f6: $87
    ld [$c81b], sp                                ; $77f7: $08 $1b $c8
    ld e, e                                       ; $77fa: $5b
    db $dd                                        ; $77fb: $dd
    jp c, $bc3f                                   ; $77fc: $da $3f $bc

    ccf                                           ; $77ff: $3f
    ld h, l                                       ; $7800: $65

Jump_056_7801:
    ld e, $99                                     ; $7801: $1e $99
    ld c, c                                       ; $7803: $49
    cp l                                          ; $7804: $bd
    push af                                       ; $7805: $f5
    ld d, l                                       ; $7806: $55
    ld e, $57                                     ; $7807: $1e $57
    ld l, [hl]                                    ; $7809: $6e
    dec c                                         ; $780a: $0d
    ccf                                           ; $780b: $3f
    sub c                                         ; $780c: $91
    sub e                                         ; $780d: $93
    ld a, [hl]                                    ; $780e: $7e
    and d                                         ; $780f: $a2
    call z, Call_000_3feb                         ; $7810: $cc $eb $3f
    dec h                                         ; $7813: $25
    ld [$79b8], a                                 ; $7814: $ea $b8 $79
    and a                                         ; $7817: $a7
    db $eb                                        ; $7818: $eb
    ld [hl], b                                    ; $7819: $70
    cp c                                          ; $781a: $b9
    ld a, a                                       ; $781b: $7f
    adc b                                         ; $781c: $88
    nop                                           ; $781d: $00
    dec de                                        ; $781e: $1b
    ret z                                         ; $781f: $c8

    ld e, e                                       ; $7820: $5b
    ld e, h                                       ; $7821: $5c
    ld e, l                                       ; $7822: $5d
    sbc b                                         ; $7823: $98
    ld b, a                                       ; $7824: $47
    rst $20                                       ; $7825: $e7
    sbc d                                         ; $7826: $9a
    adc $c9                                       ; $7827: $ce $c9
    adc a                                         ; $7829: $8f
    db $ed                                        ; $782a: $ed
    ld c, e                                       ; $782b: $4b
    or b                                          ; $782c: $b0
    db $ec                                        ; $782d: $ec
    dec h                                         ; $782e: $25
    dec bc                                        ; $782f: $0b
    ld a, d                                       ; $7830: $7a
    ld l, e                                       ; $7831: $6b
    ld b, a                                       ; $7832: $47
    ld [hl-], a                                   ; $7833: $32
    ld c, c                                       ; $7834: $49
    ld e, d                                       ; $7835: $5a
    jr nz, jr_056_783a                            ; $7836: $20 $02

    dec de                                        ; $7838: $1b
    ld c, b                                       ; $7839: $48

jr_056_783a:
    nop                                           ; $783a: $00
    adc [hl]                                      ; $783b: $8e
    cp c                                          ; $783c: $b9
    inc d                                         ; $783d: $14
    sub c                                         ; $783e: $91
    sbc e                                         ; $783f: $9b
    ld [hl], d                                    ; $7840: $72
    adc l                                         ; $7841: $8d
    adc $35                                       ; $7842: $ce $35
    ld h, l                                       ; $7844: $65
    ld h, [hl]                                    ; $7845: $66
    adc a                                         ; $7846: $8f
    ld a, [hl+]                                   ; $7847: $2a
    ld b, d                                       ; $7848: $42
    rla                                           ; $7849: $17
    ld d, l                                       ; $784a: $55
    and $33                                       ; $784b: $e6 $33
    and d                                         ; $784d: $a2
    ld c, e                                       ; $784e: $4b
    db $e3                                        ; $784f: $e3
    jp $13de                                      ; $7850: $c3 $de $13


    ld a, [hl]                                    ; $7853: $7e
    xor l                                         ; $7854: $ad
    xor l                                         ; $7855: $ad
    ld [hl], h                                    ; $7856: $74
    ld c, h                                       ; $7857: $4c
    cp d                                          ; $7858: $ba
    add hl, hl                                    ; $7859: $29
    ld e, l                                       ; $785a: $5d
    ld [c], a                                     ; $785b: $e2
    dec h                                         ; $785c: $25
    daa                                           ; $785d: $27
    ld d, d                                       ; $785e: $52
    push af                                       ; $785f: $f5
    dec h                                         ; $7860: $25
    cp b                                          ; $7861: $b8
    or $a7                                        ; $7862: $f6 $a7
    inc l                                         ; $7864: $2c
    ld c, e                                       ; $7865: $4b
    rst $10                                       ; $7866: $d7
    rst $20                                       ; $7867: $e7
    ld a, a                                       ; $7868: $7f
    and d                                         ; $7869: $a2
    ld [hl], a                                    ; $786a: $77
    ld e, h                                       ; $786b: $5c
    rst $18                                       ; $786c: $df
    ld [bc], a                                    ; $786d: $02
    ld de, $c81b                                  ; $786e: $11 $1b $c8
    dec sp                                        ; $7871: $3b
    rra                                           ; $7872: $1f
    ret                                           ; $7873: $c9


    cp $32                                        ; $7874: $fe $32
    sub d                                         ; $7876: $92
    ld e, d                                       ; $7877: $5a
    ld a, e                                       ; $7878: $7b
    and d                                         ; $7879: $a2
    call z, $1667                                 ; $787a: $cc $67 $16
    rra                                           ; $787d: $1f
    or $08                                        ; $787e: $f6 $08
    or a                                          ; $7880: $b7
    ld c, e                                       ; $7881: $4b
    ld h, d                                       ; $7882: $62
    ld a, [c]                                     ; $7883: $f2
    ld b, l                                       ; $7884: $45
    call c, $f07e                                 ; $7885: $dc $7e $f0
    ld c, d                                       ; $7888: $4a
    rst $00                                       ; $7889: $c7
    and h                                         ; $788a: $a4
    sbc e                                         ; $788b: $9b
    jp nc, $b625                                  ; $788c: $d2 $25 $b6

    rla                                           ; $788f: $17
    or h                                          ; $7890: $b4
    db $eb                                        ; $7891: $eb
    ret                                           ; $7892: $c9


    ld c, l                                       ; $7893: $4d
    ld b, e                                       ; $7894: $43
    ld hl, sp-$57                                 ; $7895: $f8 $a9
    ld c, e                                       ; $7897: $4b
    adc b                                         ; $7898: $88
    ld d, a                                       ; $7899: $57
    and h                                         ; $789a: $a4
    add $62                                       ; $789b: $c6 $62
    adc b                                         ; $789d: $88
    nop                                           ; $789e: $00
    dec de                                        ; $789f: $1b
    ret z                                         ; $78a0: $c8

    db $db                                        ; $78a1: $db
    call nz, $bd87                                ; $78a2: $c4 $87 $bd

Jump_056_78a5:
    jp nc, $e931                                  ; $78a5: $d2 $31 $e9

    and [hl]                                      ; $78a8: $a6
    ld [hl], h                                    ; $78a9: $74
    adc c                                         ; $78aa: $89
    sub a                                         ; $78ab: $97
    xor b                                         ; $78ac: $a8
    adc h                                         ; $78ad: $8c
    or c                                          ; $78ae: $b1
    ld l, e                                       ; $78af: $6b
    daa                                           ; $78b0: $27
    db $e3                                        ; $78b1: $e3
    ld c, c                                       ; $78b2: $49
    or [hl]                                       ; $78b3: $b6
    sbc h                                         ; $78b4: $9c
    cpl                                           ; $78b5: $2f
    ld [c], a                                     ; $78b6: $e2
    ld de, $a6af                                  ; $78b7: $11 $af $a6
    cp d                                          ; $78ba: $ba
    sub h                                         ; $78bb: $94
    sbc d                                         ; $78bc: $9a
    ld l, $ca                                     ; $78bd: $2e $ca
    dec [hl]                                      ; $78bf: $35
    set 4, d                                      ; $78c0: $cb $e2
    jp Jump_056_4424                              ; $78c2: $c3 $24 $44


    dec de                                        ; $78c5: $1b
    ret z                                         ; $78c6: $c8

    inc d                                         ; $78c7: $14
    cp $34                                        ; $78c8: $fe $34
    cp e                                          ; $78ca: $bb

Jump_056_78cb:
    or $92                                        ; $78cb: $f6 $92
    db $dd                                        ; $78cd: $dd
    di                                            ; $78ce: $f3
    ld [hl], c                                    ; $78cf: $71
    ld e, d                                       ; $78d0: $5a
    ccf                                           ; $78d1: $3f
    xor e                                         ; $78d2: $ab
    rlca                                          ; $78d3: $07
    jp c, Jump_000_3ed5                           ; $78d4: $da $d5 $3e

    halt                                          ; $78d7: $76
    call z, $7c98                                 ; $78d8: $cc $98 $7c
    ld a, [c]                                     ; $78db: $f2
    ld hl, $1b02                                  ; $78dc: $21 $02 $1b
    ret z                                         ; $78df: $c8

    db $db                                        ; $78e0: $db
    ld [hl], e                                    ; $78e1: $73
    adc l                                         ; $78e2: $8d
    cp a                                          ; $78e3: $bf
    ld a, d                                       ; $78e4: $7a
    ld l, e                                       ; $78e5: $6b
    ld d, [hl]                                    ; $78e6: $56
    xor [hl]                                      ; $78e7: $ae
    pop de                                        ; $78e8: $d1
    cp c                                          ; $78e9: $b9
    ld d, [hl]                                    ; $78ea: $56
    ld a, [hl-]                                   ; $78eb: $3a
    ld h, $dd                                     ; $78ec: $26 $dd
    sub h                                         ; $78ee: $94
    ld l, $f1                                     ; $78ef: $2e $f1
    sub b                                         ; $78f1: $90
    cp c                                          ; $78f2: $b9
    ret c                                         ; $78f3: $d8

    ld [hl], d                                    ; $78f4: $72
    halt                                          ; $78f5: $76
    ld e, b                                       ; $78f6: $58
    ld d, e                                       ; $78f7: $53
    ld d, $e5                                     ; $78f8: $16 $e5
    push hl                                       ; $78fa: $e5
    ld a, [bc]                                    ; $78fb: $0a
    ld c, a                                       ; $78fc: $4f
    ld b, $00                                     ; $78fd: $06 $00
    ld d, b                                       ; $78ff: $50
    jp z, $109d                                   ; $7900: $ca $9d $10

    ld bc, $c81b                                  ; $7903: $01 $1b $c8
    db $db                                        ; $7906: $db
    cp e                                          ; $7907: $bb
    ld [$97b0], a                                 ; $7908: $ea $b0 $97
    xor [hl]                                      ; $790b: $ae
    rst $08                                       ; $790c: $cf
    rst $38                                       ; $790d: $ff
    ld b, h                                       ; $790e: $44
    adc a                                         ; $790f: $8f
    ld [hl], b                                    ; $7910: $70
    inc a                                         ; $7911: $3c
    dec sp                                        ; $7912: $3b
    add hl, de                                    ; $7913: $19
    adc a                                         ; $7914: $8f
    ld a, b                                       ; $7915: $78
    dec [hl]                                      ; $7916: $35
    push de                                       ; $7917: $d5
    add l                                         ; $7918: $85
    ld a, c                                       ; $7919: $79
    sub [hl]                                      ; $791a: $96
    sub l                                         ; $791b: $95
    adc [hl]                                      ; $791c: $8e
    ld c, c                                       ; $791d: $49
    scf                                           ; $791e: $37
    and l                                         ; $791f: $a5
    ld c, e                                       ; $7920: $4b
    adc h                                         ; $7921: $8c
    rrca                                          ; $7922: $0f
    sub e                                         ; $7923: $93
    db $10                                        ; $7924: $10
    ld bc, $c81b                                  ; $7925: $01 $1b $c8
    ld e, e                                       ; $7928: $5b
    ld [$3ff3], a                                 ; $7929: $ea $f3 $3f
    ld [hl], c                                    ; $792c: $71
    push hl                                       ; $792d: $e5
    sbc b                                         ; $792e: $98
    ld c, e                                       ; $792f: $4b
    ld de, $29b9                                  ; $7930: $11 $b9 $29
    rst $10                                       ; $7933: $d7
    add sp, $5c                                   ; $7934: $e8 $5c
    xor e                                         ; $7936: $ab
    ld [hl], a                                    ; $7937: $77
    and d                                         ; $7938: $a2
    rrca                                          ; $7939: $0f
    ld a, e                                       ; $793a: $7b

jr_056_793b:
    ld b, a                                       ; $793b: $47
    ld [hl-], a                                   ; $793c: $32
    ld c, c                                       ; $793d: $49
    jp nc, $c24f                                  ; $793e: $d2 $4f $c2

    pop hl                                        ; $7941: $e1
    dec de                                        ; $7942: $1b
    add $e5                                       ; $7943: $c6 $e5
    push hl                                       ; $7945: $e5
    jr nc, jr_056_793b                            ; $7946: $30 $f3

    adc b                                         ; $7948: $88
    rst $10                                       ; $7949: $d7
    ld [de], a                                    ; $794a: $12
    sbc $71                                       ; $794b: $de $71
    call nc, Call_056_4145                        ; $794d: $d4 $45 $41
    inc b                                         ; $7950: $04
    dec de                                        ; $7951: $1b
    ret z                                         ; $7952: $c8

    db $db                                        ; $7953: $db
    ld [hl], e                                    ; $7954: $73
    adc l                                         ; $7955: $8d
    cp a                                          ; $7956: $bf

Jump_056_7957:
    ld a, d                                       ; $7957: $7a
    inc hl                                        ; $7958: $23
    set 4, a                                      ; $7959: $cb $e7
    dec hl                                        ; $795b: $2b
    dec bc                                        ; $795c: $0b
    rst $28                                       ; $795d: $ef
    xor a                                         ; $795e: $af
    ld [hl], h                                    ; $795f: $74
    ld c, h                                       ; $7960: $4c
    cp d                                          ; $7961: $ba
    add hl, hl                                    ; $7962: $29
    ld e, l                                       ; $7963: $5d
    ld h, d                                       ; $7964: $62
    ld a, e                                       ; $7965: $7b
    pop bc                                        ; $7966: $c1
    cp h                                          ; $7967: $bc
    db $db                                        ; $7968: $db
    inc h                                         ; $7969: $24
    cp b                                          ; $796a: $b8
    sbc l                                         ; $796b: $9d
    add sp, -$3b                                  ; $796c: $e8 $c5
    and [hl]                                      ; $796e: $a6
    add hl, sp                                    ; $796f: $39
    adc [hl]                                      ; $7970: $8e
    ld a, d                                       ; $7971: $7a
    ld [hl], e                                    ; $7972: $73
    ld b, c                                       ; $7973: $41
    inc b                                         ; $7974: $04
    dec de                                        ; $7975: $1b
    ret z                                         ; $7976: $c8

    db $db                                        ; $7977: $db
    cp e                                          ; $7978: $bb
    ld [$17b0], a                                 ; $7979: $ea $b0 $17
    dec sp                                        ; $797c: $3b
    ld d, $f6                                     ; $797d: $16 $f6
    ld [hl-], a                                   ; $797f: $32
    ld c, c                                       ; $7980: $49
    xor d                                         ; $7981: $aa
    ld [hl-], a                                   ; $7982: $32
    or e                                          ; $7983: $b3
    ld l, e                                       ; $7984: $6b
    cpl                                           ; $7985: $2f
    sbc c                                         ; $7986: $99
    ld h, l                                       ; $7987: $65
    jp hl                                         ; $7988: $e9


    ld [hl], a                                    ; $7989: $77
    ld a, [hl]                                    ; $798a: $7e
    ei                                            ; $798b: $fb
    daa                                           ; $798c: $27
    ld b, d                                       ; $798d: $42
    inc b                                         ; $798e: $04
    dec de                                        ; $798f: $1b
    ld c, b                                       ; $7990: $48
    ret nz                                        ; $7991: $c0

    rst $38                                       ; $7992: $ff
    inc e                                         ; $7993: $1c

Jump_056_7994:
    sub [hl]                                      ; $7994: $96
    inc e                                         ; $7995: $1c
    ld h, a                                       ; $7996: $67
    pop af                                        ; $7997: $f1
    ld h, c                                       ; $7998: $61
    cpl                                           ; $7999: $2f
    halt                                          ; $799a: $76
    inc l                                         ; $799b: $2c
    db $ec                                        ; $799c: $ec
    ld [hl], c                                    ; $799d: $71
    push hl                                       ; $799e: $e5
    sub $f0                                       ; $799f: $d6 $f0
    inc de                                        ; $79a1: $13
    reti                                          ; $79a2: $d9


    ret                                           ; $79a3: $c9


    ld a, b                                       ; $79a4: $78
    call nz, $d1ab                                ; $79a5: $c4 $ab $d1
    push af                                       ; $79a8: $f5
    ld [hl], b                                    ; $79a9: $70
    cp d                                          ; $79aa: $ba
    ld e, [hl]                                    ; $79ab: $5e
    ldh [$59], a                                  ; $79ac: $e0 $59
    ld d, $7e                                     ; $79ae: $16 $7e
    ld a, b                                       ; $79b0: $78
    jp nz, $9c97                                  ; $79b1: $c2 $97 $9c

    xor b                                         ; $79b4: $a8
    pop hl                                        ; $79b5: $e1
    sub e                                         ; $79b6: $93
    cp b                                          ; $79b7: $b8
    add d                                         ; $79b8: $82
    ld hl, $1b02                                  ; $79b9: $21 $02 $1b
    ld c, b                                       ; $79bc: $48
    ld h, b                                       ; $79bd: $60
    call z, $c3ae                                 ; $79be: $cc $ae $c3
    ld [hl], e                                    ; $79c1: $73
    inc a                                         ; $79c2: $3c
    ld d, $ae                                     ; $79c3: $16 $ae
    ld a, a                                       ; $79c5: $7f
    ld [c], a                                     ; $79c6: $e2
    cp b                                          ; $79c7: $b8
    ld [hl], d                                    ; $79c8: $72
    ld l, e                                       ; $79c9: $6b
    ld hl, sp-$77                                 ; $79ca: $f8 $89
    ld l, b                                       ; $79cc: $68
    add a                                         ; $79cd: $87
    ld a, l                                       ; $79ce: $7d
    ld a, b                                       ; $79cf: $78
    ld l, c                                       ; $79d0: $69
    ld d, a                                       ; $79d1: $57
    rla                                           ; $79d2: $17
    and $d1                                       ; $79d3: $e6 $d1
    cp c                                          ; $79d5: $b9
    ld b, [hl]                                    ; $79d6: $46
    adc l                                         ; $79d7: $8d
    ld a, b                                       ; $79d8: $78
    ld c, e                                       ; $79d9: $4b
    sub a                                         ; $79da: $97
    ld e, $79                                     ; $79db: $1e $79
    sub [hl]                                      ; $79dd: $96
    pop hl                                        ; $79de: $e1
    daa                                           ; $79df: $27
    and $9d                                       ; $79e0: $e6 $9d
    adc h                                         ; $79e2: $8c
    ld b, a                                       ; $79e3: $47
    inc a                                         ; $79e4: $3c
    ld h, [hl]                                    ; $79e5: $66
    adc b                                         ; $79e6: $88
    nop                                           ; $79e7: $00
    dec de                                        ; $79e8: $1b
    ret z                                         ; $79e9: $c8

    ld a, e                                       ; $79ea: $7b
    ld c, c                                       ; $79eb: $49
    ld d, d                                       ; $79ec: $52
    sub l                                         ; $79ed: $95
    sbc c                                         ; $79ee: $99
    ld e, l                                       ; $79ef: $5d
    ld a, e                                       ; $79f0: $7b
    ret                                           ; $79f1: $c9


    sub d                                         ; $79f2: $92
    cpl                                           ; $79f3: $2f
    pop bc                                        ; $79f4: $c1
    add h                                         ; $79f5: $84
    rrca                                          ; $79f6: $0f
    cp e                                          ; $79f7: $bb
    jr nz, jr_056_79fc                            ; $79f8: $20 $02

    dec de                                        ; $79fa: $1b
    ret z                                         ; $79fb: $c8

jr_056_79fc:
    sbc $e5                                       ; $79fc: $de $e5
    inc de                                        ; $79fe: $13
    sub a                                         ; $79ff: $97
    sbc e                                         ; $7a00: $9b
    ld [c], a                                     ; $7a01: $e2
    xor a                                         ; $7a02: $af
    ld c, $e1                                     ; $7a03: $0e $e1
    ld a, b                                       ; $7a05: $78
    ld b, [hl]                                    ; $7a06: $46
    rst $10                                       ; $7a07: $d7
    ld e, e                                       ; $7a08: $5b
    sub a                                         ; $7a09: $97
    and $ed                                       ; $7a0a: $e6 $ed
    ld h, [hl]                                    ; $7a0c: $66
    ccf                                           ; $7a0d: $3f
    ccf                                           ; $7a0e: $3f
    cp b                                          ; $7a0f: $b8
    db $db                                        ; $7a10: $db
    ld [c], a                                     ; $7a11: $e2
    ld hl, $3c5d                                  ; $7a12: $21 $5d $3c
    sub d                                         ; $7a15: $92
    ld a, [de]                                    ; $7a16: $1a
    dec [hl]                                      ; $7a17: $35
    ld a, [hl-]                                   ; $7a18: $3a
    ld d, a                                       ; $7a19: $57
    ld a, [c]                                     ; $7a1a: $f2
    ld b, h                                       ; $7a1b: $44
    dec [hl]                                      ; $7a1c: $35
    rst $28                                       ; $7a1d: $ef
    call nz, $a64f                                ; $7a1e: $c4 $4f $a6
    ld c, e                                       ; $7a21: $4b
    ld d, a                                       ; $7a22: $57
    ld [c], a                                     ; $7a23: $e2
    sbc l                                         ; $7a24: $9d
    ld c, [hl]                                    ; $7a25: $4e
    rla                                           ; $7a26: $17
    or [hl]                                       ; $7a27: $b6
    ret z                                         ; $7a28: $c8

    ld hl, sp-$49                                 ; $7a29: $f8 $b7
    sbc l                                         ; $7a2b: $9d
    db $e4                                        ; $7a2c: $e4
    dec bc                                        ; $7a2d: $0b
    ld b, h                                       ; $7a2e: $44
    dec de                                        ; $7a2f: $1b
    ret z                                         ; $7a30: $c8

    ld e, e                                       ; $7a31: $5b
    ld e, h                                       ; $7a32: $5c
    ld e, l                                       ; $7a33: $5d
    sbc b                                         ; $7a34: $98
    ld b, a                                       ; $7a35: $47
    rst $20                                       ; $7a36: $e7
    ld a, [de]                                    ; $7a37: $1a
    dec [hl]                                      ; $7a38: $35
    ld [c], a                                     ; $7a39: $e2
    dec l                                         ; $7a3a: $2d

Call_056_7a3b:
    db $dd                                        ; $7a3b: $dd
    ld a, $f3                                     ; $7a3c: $3e $f3
    add sp, $5c                                   ; $7a3e: $e8 $5c
    ld l, [hl]                                    ; $7a40: $6e
    daa                                           ; $7a41: $27
    sbc d                                         ; $7a42: $9a
    rst $30                                       ; $7a43: $f7
    ld h, a                                       ; $7a44: $67
    add hl, de                                    ; $7a45: $19
    pop af                                        ; $7a46: $f1
    ld [de], a                                    ; $7a47: $12
    db $fc                                        ; $7a48: $fc
    ld b, h                                       ; $7a49: $44
    sub [hl]                                      ; $7a4a: $96
    jp Jump_056_5ce8                              ; $7a4b: $c3 $e8 $5c


    ret                                           ; $7a4e: $c9


    inc de                                        ; $7a4f: $13
    push de                                       ; $7a50: $d5
    call z, $0e3b                                 ; $7a51: $cc $3b $0e
    db $e3                                        ; $7a54: $e3
    rst $18                                       ; $7a55: $df
    ld h, [hl]                                    ; $7a56: $66
    ld e, c                                       ; $7a57: $59
    call z, Call_056_63ad                         ; $7a58: $cc $ad $63
    adc b                                         ; $7a5b: $88
    nop                                           ; $7a5c: $00
    dec de                                        ; $7a5d: $1b
    ret z                                         ; $7a5e: $c8

    ld a, e                                       ; $7a5f: $7b
    ld c, c                                       ; $7a60: $49
    sub d                                         ; $7a61: $92
    cp $22                                        ; $7a62: $fe $22
    xor [hl]                                      ; $7a64: $ae
    cp l                                          ; $7a65: $bd
    ld h, h                                       ; $7a66: $64
    xor a                                         ; $7a67: $af
    or l                                          ; $7a68: $b5
    add e                                         ; $7a69: $83
    ld e, a                                       ; $7a6a: $5f
    ld c, h                                       ; $7a6b: $4c
    ld [hl], a                                    ; $7a6c: $77
    adc c                                         ; $7a6d: $89
    cp b                                          ; $7a6e: $b8
    jr nz, jr_056_7a73                            ; $7a6f: $20 $02

    dec de                                        ; $7a71: $1b
    ret z                                         ; $7a72: $c8

jr_056_7a73:
    ld e, e                                       ; $7a73: $5b
    ld e, h                                       ; $7a74: $5c
    ld e, l                                       ; $7a75: $5d
    sbc b                                         ; $7a76: $98
    ld b, a                                       ; $7a77: $47
    rst $20                                       ; $7a78: $e7
    ld a, [de]                                    ; $7a79: $1a
    dec [hl]                                      ; $7a7a: $35
    ld [c], a                                     ; $7a7b: $e2
    db $ed                                        ; $7a7c: $ed
    dec h                                         ; $7a7d: $25
    call $d3bc                                    ; $7a7e: $cd $bc $d3
    pop de                                        ; $7a81: $d1
    ld [hl], a                                    ; $7a82: $77
    cp d                                          ; $7a83: $ba
    ld b, h                                       ; $7a84: $44
    ld e, h                                       ; $7a85: $5c
    bit 4, c                                      ; $7a86: $cb $61
    ld [hl], h                                    ; $7a88: $74
    xor [hl]                                      ; $7a89: $ae
    db $e4                                        ; $7a8a: $e4
    adc c                                         ; $7a8b: $89
    ld l, d                                       ; $7a8c: $6a
    and $9d                                       ; $7a8d: $e6 $9d
    add a                                         ; $7a8f: $87
    cp c                                          ; $7a90: $b9
    db $fd                                        ; $7a91: $fd
    ldh [$f1], a                                  ; $7a92: $e0 $f1
    ld l, a                                       ; $7a94: $6f
    inc hl                                        ; $7a95: $23
    cp a                                          ; $7a96: $bf
    ret z                                         ; $7a97: $c8

    ld c, c                                       ; $7a98: $49
    cp [hl]                                       ; $7a99: $be
    ld b, b                                       ; $7a9a: $40
    inc b                                         ; $7a9b: $04

Call_056_7a9c:
    dec de                                        ; $7a9c: $1b
    ret z                                         ; $7a9d: $c8

    ld l, [hl]                                    ; $7a9e: $6e
    inc sp                                        ; $7a9f: $33
    ld a, e                                       ; $7aa0: $7b
    ld sp, $9b17                                  ; $7aa1: $31 $17 $9b
    ld b, a                                       ; $7aa4: $47
    cp h                                          ; $7aa5: $bc
    sbc d                                         ; $7aa6: $9a
    jp nc, Jump_056_63f7                          ; $7aa7: $d2 $f7 $63

    db $f4                                        ; $7aaa: $f4
    ld l, b                                       ; $7aab: $68
    ld e, l                                       ; $7aac: $5d
    call nz, $8b3c                                ; $7aad: $c4 $3c $8b
    ld d, b                                       ; $7ab0: $50
    db $10                                        ; $7ab1: $10
    ld bc, $fadd                                  ; $7ab2: $01 $dd $fa
    adc b                                         ; $7ab5: $88
    ld d, a                                       ; $7ab6: $57
    ei                                            ; $7ab7: $fb
    ld [de], a                                    ; $7ab8: $12
    inc l                                         ; $7ab9: $2c
    adc e                                         ; $7aba: $8b
    cp c                                          ; $7abb: $b9
    ld a, b                                       ; $7abc: $78
    call nc, Call_056_7f92                        ; $7abd: $d4 $92 $7f
    inc c                                         ; $7ac0: $0c
    ld de, $9880                                  ; $7ac1: $11 $80 $98
    xor $aa                                       ; $7ac4: $ee $aa
    add hl, hl                                    ; $7ac6: $29
    inc sp                                        ; $7ac7: $33
    ld a, e                                       ; $7ac8: $7b
    ld sp, $5f17                                  ; $7ac9: $31 $17 $5f
    ld a, [c]                                     ; $7acc: $f2
    inc h                                         ; $7acd: $24
    sub h                                         ; $7ace: $94
    ld c, c                                       ; $7acf: $49
    inc sp                                        ; $7ad0: $33
    ld b, h                                       ; $7ad1: $44
    scf                                           ; $7ad2: $37
    or a                                          ; $7ad3: $b7
    xor b                                         ; $7ad4: $a8
    pop bc                                        ; $7ad5: $c1
    rra                                           ; $7ad6: $1f
    ld bc, $e7b7                                  ; $7ad7: $01 $b7 $e7
    jp nz, $85cd                                  ; $7ada: $c2 $cd $85

    nop                                           ; $7add: $00
    or a                                          ; $7ade: $b7
    rst $20                                       ; $7adf: $e7
    ld c, d                                       ; $7ae0: $4a
    ccf                                           ; $7ae1: $3f
    ld de, $e3b7                                  ; $7ae2: $11 $b7 $e3
    ld b, d                                       ; $7ae5: $42

Jump_056_7ae6:
    or a                                          ; $7ae6: $b7
    ld hl, sp+$44                                 ; $7ae7: $f8 $44
    dec c                                         ; $7ae9: $0d
    or e                                          ; $7aea: $b3
    db $db                                        ; $7aeb: $db
    ld sp, $b702                                  ; $7aec: $31 $02 $b7
    or [hl]                                       ; $7aef: $b6
    rst $30                                       ; $7af0: $f7
    dec hl                                        ; $7af1: $2b
    ret                                           ; $7af2: $c9


    sbc d                                         ; $7af3: $9a
    daa                                           ; $7af4: $27
    rst $00                                       ; $7af5: $c7
    ld [$3737], sp                                ; $7af6: $08 $37 $37
    ld l, h                                       ; $7af9: $6c
    ld h, c                                       ; $7afa: $61
    inc b                                         ; $7afb: $04
    ld [hl], a                                    ; $7afc: $77
    ld [$fae5], a                                 ; $7afd: $ea $e5 $fa
    ld [de], a                                    ; $7b00: $12
    db $10                                        ; $7b01: $10
    cp l                                          ; $7b02: $bd
    ld e, a                                       ; $7b03: $5f
    db $e3                                        ; $7b04: $e3
    inc h                                         ; $7b05: $24
    rla                                           ; $7b06: $17
    inc hl                                        ; $7b07: $23
    ld [hl], a                                    ; $7b08: $77
    db $eb                                        ; $7b09: $eb
    rst $20                                       ; $7b0a: $e7
    rst $00                                       ; $7b0b: $c7

jr_056_7b0c:
    adc b                                         ; $7b0c: $88
    nop                                           ; $7b0d: $00

Jump_056_7b0e:
    nop                                           ; $7b0e: $00
    ld [hl], h                                    ; $7b0f: $74
    ld c, h                                       ; $7b10: $4c
    cp d                                          ; $7b11: $ba
    add hl, hl                                    ; $7b12: $29
    ld e, l                                       ; $7b13: $5d
    ld [hl+], a                                   ; $7b14: $22
    ld [bc], a                                    ; $7b15: $02
    nop                                           ; $7b16: $00
    db $eb                                        ; $7b17: $eb

Call_056_7b18:
    ret                                           ; $7b18: $c9


    and c                                         ; $7b19: $a1
    ld a, a                                       ; $7b1a: $7f
    ret nc                                        ; $7b1b: $d0

    db $eb                                        ; $7b1c: $eb
    sbc l                                         ; $7b1d: $9d
    ld c, [hl]                                    ; $7b1e: $4e
    ld d, $04                                     ; $7b1f: $16 $04
    or a                                          ; $7b21: $b7
    ld bc, $0fbd                                  ; $7b22: $01 $bd $0f
    ld bc, $3f29                                  ; $7b25: $01 $29 $3f
    jr z, @+$19                                   ; $7b28: $28 $17

    ld [bc], a                                    ; $7b2a: $02
    dec a                                         ; $7b2b: $3d
    xor a                                         ; $7b2c: $af
    ld c, d                                       ; $7b2d: $4a
    inc sp                                        ; $7b2e: $33
    ld a, [$2309]                                 ; $7b2f: $fa $09 $23
    add b                                         ; $7b32: $80
    ld a, a                                       ; $7b33: $7f
    sbc e                                         ; $7b34: $9b
    jp nc, Jump_000_3b17                          ; $7b35: $d2 $17 $3b

    ld e, l                                       ; $7b38: $5d
    and h                                         ; $7b39: $a4
    ld a, e                                       ; $7b3a: $7b
    ld hl, $d6db                                  ; $7b3b: $21 $db $d6
    rst $20                                       ; $7b3e: $e7
    ld hl, $76db                                  ; $7b3f: $21 $db $76
    adc a                                         ; $7b42: $8f
    ccf                                           ; $7b43: $3f
    ld [bc], a                                    ; $7b44: $02
    or a                                          ; $7b45: $b7
    adc c                                         ; $7b46: $89
    ld a, d                                       ; $7b47: $7a
    or e                                          ; $7b48: $b3
    xor h                                         ; $7b49: $ac
    ld d, c                                       ; $7b4a: $51
    add a                                         ; $7b4b: $87
    and a                                         ; $7b4c: $a7
    cp d                                          ; $7b4d: $ba
    ld a, [hl+]                                   ; $7b4e: $2a
    dec [hl]                                      ; $7b4f: $35
    ld [bc], a                                    ; $7b50: $02
    or a                                          ; $7b51: $b7
    or a                                          ; $7b52: $b7
    ld e, a                                       ; $7b53: $5f
    ld hl, $5f33                                  ; $7b54: $21 $33 $5f
    ld b, d                                       ; $7b57: $42
    inc h                                         ; $7b58: $24
    ld l, [hl]                                    ; $7b59: $6e
    adc c                                         ; $7b5a: $89
    push bc                                       ; $7b5b: $c5
    ld [hl], e                                    ; $7b5c: $73
    dec l                                         ; $7b5d: $2d
    ld sp, hl                                     ; $7b5e: $f9
    dec d                                         ; $7b5f: $15
    db $dd                                        ; $7b60: $dd
    ld a, [hl]                                    ; $7b61: $7e
    jr jr_056_7b0c                                ; $7b62: $18 $a8

    di                                            ; $7b64: $f3
    ld h, e                                       ; $7b65: $63
    cp c                                          ; $7b66: $b9
    rst $38                                       ; $7b67: $ff
    call nc, $3d08                                ; $7b68: $d4 $08 $3d
    adc c                                         ; $7b6b: $89
    pop af                                        ; $7b6c: $f1
    ld [de], a                                    ; $7b6d: $12
    di                                            ; $7b6e: $f3
    adc b                                         ; $7b6f: $88
    db $e4                                        ; $7b70: $e4
    db $ed                                        ; $7b71: $ed
    ld h, h                                       ; $7b72: $64
    cp h                                          ; $7b73: $bc
    ld hl, sp+$64                                 ; $7b74: $f8 $64
    daa                                           ; $7b76: $27
    halt                                          ; $7b77: $76
    db $f4                                        ; $7b78: $f4

Jump_056_7b79:
    and $1d                                       ; $7b79: $e6 $1d
    add a                                         ; $7b7b: $87
    db $fd                                        ; $7b7c: $fd
    add hl, hl                                    ; $7b7d: $29
    inc sp                                        ; $7b7e: $33
    ld a, e                                       ; $7b7f: $7b
    ld b, h                                       ; $7b80: $44
    ld [c], a                                     ; $7b81: $e2
    sub [hl]                                      ; $7b82: $96
    sbc b                                         ; $7b83: $98
    ld a, e                                       ; $7b84: $7b
    db $ed                                        ; $7b85: $ed
    adc [hl]                                      ; $7b86: $8e
    jr jr_056_7bc6                                ; $7b87: $18 $3d

    and l                                         ; $7b89: $a5
    ld l, e                                       ; $7b8a: $6b
    rst $30                                       ; $7b8b: $f7
    ld e, a                                       ; $7b8c: $5f
    ld l, e                                       ; $7b8d: $6b
    db $f4                                        ; $7b8e: $f4
    ld l, e                                       ; $7b8f: $6b
    dec c                                         ; $7b90: $0d
    ld [hl+], a                                   ; $7b91: $22
    add hl, hl                                    ; $7b92: $29
    call nc, $93f0                                ; $7b93: $d4 $f0 $93
    ldh [$35], a                                  ; $7b96: $e0 $35
    ld [$a7b0], a                                 ; $7b98: $ea $b0 $a7
    cp d                                          ; $7b9b: $ba
    jp z, Jump_000_1a95                           ; $7b9c: $ca $95 $1a

    ld bc, $e6dd                                  ; $7b9f: $01 $dd $e6
    ld e, c                                       ; $7ba2: $59
    ld a, h                                       ; $7ba3: $7c
    ret c                                         ; $7ba4: $d8

    inc hl                                        ; $7ba5: $23
    ld [de], a                                    ; $7ba6: $12
    or a                                          ; $7ba7: $b7
    call nz, $a53c                                ; $7ba8: $c4 $3c $a5
    cpl                                           ; $7bab: $2f
    ld a, $59                                     ; $7bac: $3e $59
    call z, Call_056_7b18                         ; $7bae: $cc $18 $7b
    ld e, a                                       ; $7bb1: $5f
    ld h, h                                       ; $7bb2: $64
    ld e, a                                       ; $7bb3: $5f
    dec sp                                        ; $7bb4: $3b
    rst $10                                       ; $7bb5: $d7
    call nc, $9e67                                ; $7bb6: $d4 $67 $9e
    add e                                         ; $7bb9: $83
    add hl, de                                    ; $7bba: $19
    ld [hl+], a                                   ; $7bbb: $22
    add hl, hl                                    ; $7bbc: $29
    pop af                                        ; $7bbd: $f1
    or l                                          ; $7bbe: $b5
    add hl, hl                                    ; $7bbf: $29
    ld a, l                                       ; $7bc0: $7d
    xor a                                         ; $7bc1: $af
    xor c                                         ; $7bc2: $a9
    ld a, [$198b]                                 ; $7bc3: $fa $8b $19

jr_056_7bc6:
    ld h, e                                       ; $7bc6: $63
    adc a                                         ; $7bc7: $8f
    xor [hl]                                      ; $7bc8: $ae
    add a                                         ; $7bc9: $87
    rst $00                                       ; $7bca: $c7
    cp a                                          ; $7bcb: $bf
    ld c, l                                       ; $7bcc: $4d
    ld a, l                                       ; $7bcd: $7d
    and $39                                       ; $7bce: $e6 $39
    sbc b                                         ; $7bd0: $98
    ld b, a                                       ; $7bd1: $47
    inc h                                         ; $7bd2: $24
    ld l, [hl]                                    ; $7bd3: $6e
    ld c, c                                       ; $7bd4: $49
    cpl                                           ; $7bd5: $2f
    inc b                                         ; $7bd6: $04
    db $dd                                        ; $7bd7: $dd
    ld d, $f1                                     ; $7bd8: $16 $f1
    ld d, h                                       ; $7bda: $54
    ld d, a                                       ; $7bdb: $57
    cp l                                          ; $7bdc: $bd
    cp c                                          ; $7bdd: $b9
    sub [hl]                                      ; $7bde: $96
    cp b                                          ; $7bdf: $b8
    jp z, Jump_056_46a3                           ; $7be0: $ca $a3 $46

    sub c                                         ; $7be3: $91
    ld [c], a                                     ; $7be4: $e2
    ld e, c                                       ; $7be5: $59
    ld h, h                                       ; $7be6: $64
    ld e, c                                       ; $7be7: $59
    and d                                         ; $7be8: $a2
    db $db                                        ; $7be9: $db
    add b                                         ; $7bea: $80
    db $fc                                        ; $7beb: $fc
    ret z                                         ; $7bec: $c8

    cp c                                          ; $7bed: $b9
    adc $5a                                       ; $7bee: $ce $5a
    add $d8                                       ; $7bf0: $c6 $d8
    jp hl                                         ; $7bf2: $e9


    inc e                                         ; $7bf3: $1c
    ld hl, $dd02                                  ; $7bf4: $21 $02 $dd
    and $b9                                       ; $7bf7: $e6 $b9
    and [hl]                                      ; $7bf9: $a6
    sbc $24                                       ; $7bfa: $de $24
    ld a, e                                       ; $7bfc: $7b
    jp hl                                         ; $7bfd: $e9


    ld a, d                                       ; $7bfe: $7a
    ld c, e                                       ; $7bff: $4b
    xor h                                         ; $7c00: $ac
    or $5a                                        ; $7c01: $f6 $5a
    di                                            ; $7c03: $f3
    call nc, $c73f                                ; $7c04: $d4 $3f $c7
    ld l, e                                       ; $7c07: $6b
    call nc, Call_056_4f61                        ; $7c08: $d4 $61 $4f
    ld [hl], l                                    ; $7c0b: $75
    sub l                                         ; $7c0c: $95
    push bc                                       ; $7c0d: $c5
    cp e                                          ; $7c0e: $bb
    ld h, h                                       ; $7c0f: $64
    ld [$b5cd], a                                 ; $7c10: $ea $cd $b5
    call nz, $966d                                ; $7c13: $c4 $6d $96
    inc sp                                        ; $7c16: $33
    rlca                                          ; $7c17: $07
    di                                            ; $7c18: $f3
    adc b                                         ; $7c19: $88
    call nz, Call_000_192d                        ; $7c1a: $c4 $2d $19
    sub a                                         ; $7c1d: $97
    ld h, $f0                                     ; $7c1e: $26 $f0
    ld a, [de]                                    ; $7c20: $1a
    ld [hl], l                                    ; $7c21: $75
    ld a, b                                       ; $7c22: $78
    db $fd                                        ; $7c23: $fd
    inc b                                         ; $7c24: $04
    adc b                                         ; $7c25: $88
    nop                                           ; $7c26: $00
    db $dd                                        ; $7c27: $dd
    and $25                                       ; $7c28: $e6 $25
    xor a                                         ; $7c2a: $af
    and [hl]                                      ; $7c2b: $a6
    sbc $74                                       ; $7c2c: $de $74
    xor [hl]                                      ; $7c2e: $ae
    call c, $d87e                                 ; $7c2f: $dc $7e $d8
    and c                                         ; $7c32: $a1
    sub $a8                                       ; $7c33: $d6 $a8
    jp $1653                                      ; $7c35: $c3 $53 $16


    pop af                                        ; $7c38: $f1
    ld d, h                                       ; $7c39: $54
    ld d, a                                       ; $7c3a: $57
    cp l                                          ; $7c3b: $bd
    dec h                                         ; $7c3c: $25
    xor a                                         ; $7c3d: $af
    jr nz, @+$04                                  ; $7c3e: $20 $02

    db $dd                                        ; $7c40: $dd
    ld a, [$4932]                                 ; $7c41: $fa $32 $49
    xor d                                         ; $7c44: $aa
    rla                                           ; $7c45: $17
    ld e, h                                       ; $7c46: $5c
    ld a, e                                       ; $7c47: $7b
    inc a                                         ; $7c48: $3c
    ld h, l                                       ; $7c49: $65
    ld de, $754f                                  ; $7c4a: $11 $4f $75
    push de                                       ; $7c4d: $d5

Jump_056_7c4e:
    sbc e                                         ; $7c4e: $9b
    ld l, e                                       ; $7c4f: $6b
    rst $20                                       ; $7c50: $e7
    rst $00                                       ; $7c51: $c7
    add sp, -$1e                                  ; $7c52: $e8 $e2
    dec [hl]                                      ; $7c54: $35
    ld [$4430], a                                 ; $7c55: $ea $30 $44
    add hl, hl                                    ; $7c58: $29
    ld l, [hl]                                    ; $7c59: $6e
    ret                                           ; $7c5a: $c9


    ld a, [hl]                                    ; $7c5b: $7e
    adc h                                         ; $7c5c: $8c
    ld e, [hl]                                    ; $7c5d: $5e
    ld l, a                                       ; $7c5e: $6f
    ld c, l                                       ; $7c5f: $4d
    xor b                                         ; $7c60: $a8
    xor a                                         ; $7c61: $af
    ld d, $75                                     ; $7c62: $16 $75
    ld de, $228f                                  ; $7c64: $11 $8f $22
    push bc                                       ; $7c67: $c5
    ld d, e                                       ; $7c68: $53
    ld d, $f1                                     ; $7c69: $16 $f1
    ld d, h                                       ; $7c6b: $54
    ld d, a                                       ; $7c6c: $57
    dec a                                         ; $7c6d: $3d
    adc b                                         ; $7c6e: $88
    nop                                           ; $7c6f: $00
    or a                                          ; $7c70: $b7
    cp h                                          ; $7c71: $bc
    jr c, jr_056_7cd9                             ; $7c72: $38 $65

    ld de, $754f                                  ; $7c74: $11 $4f $75
    push de                                       ; $7c77: $d5
    ld e, e                                       ; $7c78: $5b
    ld a, h                                       ; $7c79: $7c
    ld [hl-], a                                   ; $7c7a: $32
    ld h, l                                       ; $7c7b: $65
    ld e, [hl]                                    ; $7c7c: $5e
    jp nc, Jump_056_7957                          ; $7c7d: $d2 $57 $79

    ld b, h                                       ; $7c80: $44
    ld a, [c]                                     ; $7c81: $f2
    halt                                          ; $7c82: $76
    ld [hl-], a                                   ; $7c83: $32
    ld e, $e1                                     ; $7c84: $1e $e1
    halt                                          ; $7c86: $76
    jr c, @-$09                                   ; $7c87: $38 $f5

    nop                                           ; $7c89: $00
    adc c                                         ; $7c8a: $89
    ldh a, [$63]                                  ; $7c8b: $f0 $63
    sbc [hl]                                      ; $7c8d: $9e
    ld [hl], d                                    ; $7c8e: $72
    ret nc                                        ; $7c8f: $d0

    xor $35                                       ; $7c90: $ee $35
    ld a, $14                                     ; $7c92: $3e $14
    ld b, h                                       ; $7c94: $44
    add hl, hl                                    ; $7c95: $29
    call nc, $93f0                                ; $7c96: $d4 $f0 $93
    ldh [$35], a                                  ; $7c99: $e0 $35
    ld [$a7b0], a                                 ; $7c9b: $ea $b0 $a7
    cp d                                          ; $7c9e: $ba
    jp z, Jump_000_2105                           ; $7c9f: $ca $05 $21

    inc a                                         ; $7ca2: $3c
    call nc, Call_056_6a68                        ; $7ca3: $d4 $68 $6a
    jp nc, $9b15                                  ; $7ca6: $d2 $15 $9b

    dec bc                                        ; $7ca9: $0b
    ld [hl+], a                                   ; $7caa: $22
    db $dd                                        ; $7cab: $dd
    and $59                                       ; $7cac: $e6 $59
    ld a, h                                       ; $7cae: $7c
    ret c                                         ; $7caf: $d8

    inc hl                                        ; $7cb0: $23
    ld [de], a                                    ; $7cb1: $12
    or a                                          ; $7cb2: $b7
    call nz, $a53c                                ; $7cb3: $c4 $3c $a5
    cpl                                           ; $7cb6: $2f
    ld a, $59                                     ; $7cb7: $3e $59
    call z, Call_056_7b18                         ; $7cb9: $cc $18 $7b
    ld e, a                                       ; $7cbc: $5f
    ld h, h                                       ; $7cbd: $64
    ld e, a                                       ; $7cbe: $5f
    dec sp                                        ; $7cbf: $3b
    rst $10                                       ; $7cc0: $d7
    call nc, $9e67                                ; $7cc1: $d4 $67 $9e
    add e                                         ; $7cc4: $83
    add hl, de                                    ; $7cc5: $19
    ld [hl+], a                                   ; $7cc6: $22
    ld [hl], a                                    ; $7cc7: $77
    ld a, $59                                     ; $7cc8: $3e $59
    rst $30                                       ; $7cca: $f7
    ld l, l                                       ; $7ccb: $6d
    nop                                           ; $7ccc: $00
    ld bc, $b6de                                  ; $7ccd: $01 $de $b6
    and h                                         ; $7cd0: $a4
    xor a                                         ; $7cd1: $af
    ld a, [c]                                     ; $7cd2: $f2
    ld a, d                                       ; $7cd3: $7a
    ld e, [hl]                                    ; $7cd4: $5e
    sub l                                         ; $7cd5: $95
    ld h, [hl]                                    ; $7cd6: $66
    rst $30                                       ; $7cd7: $f7
    ld h, l                                       ; $7cd8: $65

jr_056_7cd9:
    ld h, [hl]                                    ; $7cd9: $66
    rst $10                                       ; $7cda: $d7
    add hl, de                                    ; $7cdb: $19
    sub c                                         ; $7cdc: $91
    cp b                                          ; $7cdd: $b8
    dec h                                         ; $7cde: $25
    cp l                                          ; $7cdf: $bd
    halt                                          ; $7ce0: $76
    adc a                                         ; $7ce1: $8f
    cp a                                          ; $7ce2: $bf
    halt                                          ; $7ce3: $76
    jp z, $f8bc                                   ; $7ce4: $ca $bc $f8

    ld h, h                                       ; $7ce7: $64
    jp z, Jump_000_1fbc                           ; $7ce8: $ca $bc $1f

    and e                                         ; $7ceb: $a3
    ld hl, $dd02                                  ; $7cec: $21 $02 $dd
    ld a, [$c662]                                 ; $7cef: $fa $62 $c6
    ret c                                         ; $7cf2: $d8

    or l                                          ; $7cf3: $b5
    rra                                           ; $7cf4: $1f
    and e                                         ; $7cf5: $a3
    rst $30                                       ; $7cf6: $f7
    ld b, l                                       ; $7cf7: $45
    or h                                          ; $7cf8: $b4
    jp Jump_000_2996                              ; $7cf9: $c3 $96 $29


    ld a, l                                       ; $7cfc: $7d
    and a                                         ; $7cfd: $a7
    ld a, l                                       ; $7cfe: $7d
    sub d                                         ; $7cff: $92
    ld [hl], h                                    ; $7d00: $74
    db $ed                                        ; $7d01: $ed
    cp a                                          ; $7d02: $bf
    sub $e8                                       ; $7d03: $d6 $e8
    rst $10                                       ; $7d05: $d7
    jp c, Jump_000_1da8                           ; $7d06: $da $a8 $1d

    ld l, $27                                     ; $7d09: $2e $27
    ld e, $b6                                     ; $7d0b: $1e $b6
    ld a, [de]                                    ; $7d0d: $1a
    or l                                          ; $7d0e: $b5
    sbc b                                         ; $7d0f: $98
    ld sp, $74f6                                  ; $7d10: $31 $f6 $74
    ld c, [hl]                                    ; $7d13: $4e
    adc l                                         ; $7d14: $8d
    nop                                           ; $7d15: $00
    or a                                          ; $7d16: $b7
    rst $20                                       ; $7d17: $e7
    sbc d                                         ; $7d18: $9a
    ld h, l                                       ; $7d19: $65
    add hl, sp                                    ; $7d1a: $39
    ld [hl], c                                    ; $7d1b: $71
    push de                                       ; $7d1c: $d5
    dec sp                                        ; $7d1d: $3b
    pop de                                        ; $7d1e: $d1
    db $ed                                        ; $7d1f: $ed
    jr jr_056_7d64                                ; $7d20: $18 $42

    xor b                                         ; $7d22: $a8
    inc l                                         ; $7d23: $2c
    ld [c], a                                     ; $7d24: $e2
    xor c                                         ; $7d25: $a9
    xor [hl]                                      ; $7d26: $ae
    ld a, d                                       ; $7d27: $7a
    ld [hl], e                                    ; $7d28: $73
    xor l                                         ; $7d29: $ad
    ld d, c                                       ; $7d2a: $51
    add a                                         ; $7d2b: $87
    ld hl, $b702                                  ; $7d2c: $21 $02 $b7
    adc c                                         ; $7d2f: $89
    ld a, d                                       ; $7d30: $7a
    inc sp                                        ; $7d31: $33
    adc a                                         ; $7d32: $8f
    ld c, b                                       ; $7d33: $48
    call c, $2992                                 ; $7d34: $dc $92 $29
    ld a, l                                       ; $7d37: $7d
    ccf                                           ; $7d38: $3f
    ld b, [hl]                                    ; $7d39: $46
    cpl                                           ; $7d3a: $2f

jr_056_7d3b:
    ld h, [hl]                                    ; $7d3b: $66
    adc h                                         ; $7d3c: $8c
    ld e, l                                       ; $7d3d: $5d
    ei                                            ; $7d3e: $fb
    ld [hl+], a                                   ; $7d3f: $22
    ei                                            ; $7d40: $fb
    db $10                                        ; $7d41: $10
    ld bc, $16dd                                  ; $7d42: $01 $dd $16
    pop af                                        ; $7d45: $f1
    ld d, h                                       ; $7d46: $54
    ld d, a                                       ; $7d47: $57
    cp l                                          ; $7d48: $bd
    sbc l                                         ; $7d49: $9d
    rst $08                                       ; $7d4a: $cf
    db $ec                                        ; $7d4b: $ec
    ld e, d                                       ; $7d4c: $5a
    ld a, [hl-]                                   ; $7d4d: $3a
    db $e3                                        ; $7d4e: $e3
    pop de                                        ; $7d4f: $d1
    rst $28                                       ; $7d50: $ef
    jr nc, @+$46                                  ; $7d51: $30 $44

    add b                                         ; $7d53: $80
    db $dd                                        ; $7d54: $dd
    jp nz, Jump_000_17d4                          ; $7d55: $c2 $d4 $17

    rst $28                                       ; $7d58: $ef
    ld c, e                                       ; $7d59: $4b
    jr z, @-$53                                   ; $7d5a: $28 $ab

    ld l, a                                       ; $7d5c: $6f
    add hl, sp                                    ; $7d5d: $39
    xor [hl]                                      ; $7d5e: $ae
    push hl                                       ; $7d5f: $e5
    jr nc, jr_056_7d90                            ; $7d60: $30 $2e

    ld c, l                                       ; $7d62: $4d
    adc h                                         ; $7d63: $8c

jr_056_7d64:
    inc hl                                        ; $7d64: $23
    xor c                                         ; $7d65: $a9
    and l                                         ; $7d66: $a5
    nop                                           ; $7d67: $00
    cp h                                          ; $7d68: $bc
    add hl, de                                    ; $7d69: $19
    nop                                           ; $7d6a: $00
    ret nz                                        ; $7d6b: $c0

    ld c, e                                       ; $7d6c: $4b
    and d                                         ; $7d6d: $a2
    inc a                                         ; $7d6e: $3c
    sub d                                         ; $7d6f: $92
    inc e                                         ; $7d70: $1c
    sbc l                                         ; $7d71: $9d
    ld l, e                                       ; $7d72: $6b
    call nc, $edd2                                ; $7d73: $d4 $d2 $ed
    adc c                                         ; $7d76: $89
    ld a, [c]                                     ; $7d77: $f2
    sub h                                         ; $7d78: $94
    ld sp, $4344                                  ; $7d79: $31 $44 $43
    ld b, e                                       ; $7d7c: $43
    ld [hl], a                                    ; $7d7d: $77
    ld c, b                                       ; $7d7e: $48
    or b                                          ; $7d7f: $b0
    ldh a, [$97]                                  ; $7d80: $f0 $97
    or b                                          ; $7d82: $b0
    inc de                                        ; $7d83: $13
    dec sp                                        ; $7d84: $3b
    ld l, $b8                                     ; $7d85: $2e $b8
    ld l, [hl]                                    ; $7d87: $6e
    ld a, l                                       ; $7d88: $7d
    ld hl, sp+$1f                                 ; $7d89: $f8 $1f
    halt                                          ; $7d8b: $76
    db $ed                                        ; $7d8c: $ed
    ld c, e                                       ; $7d8d: $4b
    jr z, jr_056_7d3b                             ; $7d8e: $28 $ab

jr_056_7d90:
    ld l, a                                       ; $7d90: $6f
    add hl, sp                                    ; $7d91: $39
    ld d, $4f                                     ; $7d92: $16 $4f
    ld a, l                                       ; $7d94: $7d
    ld sp, $b744                                  ; $7d95: $31 $44 $b7
    or a                                          ; $7d98: $b7
    call z, Call_056_7a9c                         ; $7d99: $cc $9c $7a
    db $dd                                        ; $7d9c: $dd
    ld a, [$7c4e]                                 ; $7d9d: $fa $4e $7c
    inc h                                         ; $7da0: $24
    ei                                            ; $7da1: $fb
    ld b, $04                                     ; $7da2: $06 $04
    rst $30                                       ; $7da4: $f7
    ld l, b                                       ; $7da5: $68
    sbc b                                         ; $7da6: $98
    ld [hl], a                                    ; $7da7: $77
    ret z                                         ; $7da8: $c8

    rst $18                                       ; $7da9: $df
    ld a, [de]                                    ; $7daa: $1a
    ld [bc], a                                    ; $7dab: $02
    ld [hl], a                                    ; $7dac: $77
    cp l                                          ; $7dad: $bd
    jp $e43b                                      ; $7dae: $c3 $3b $e4


    ld l, a                                       ; $7db1: $6f
    dec c                                         ; $7db2: $0d
    ld bc, $dd80                                  ; $7db3: $01 $80 $dd
    jp nz, Jump_056_590e                          ; $7db6: $c2 $0e $59

    ld d, h                                       ; $7db9: $54
    ld b, h                                       ; $7dba: $44
    or a                                          ; $7dbb: $b7
    ld h, h                                       ; $7dbc: $64
    pop de                                        ; $7dbd: $d1
    rst $08                                       ; $7dbe: $cf
    dec h                                         ; $7dbf: $25
    add a                                         ; $7dc0: $87
    db $fc                                        ; $7dc1: $fc
    xor l                                         ; $7dc2: $ad
    ld hl, $d5b7                                  ; $7dc3: $21 $b7 $d5
    sub h                                         ; $7dc6: $94
    cp [hl]                                       ; $7dc7: $be
    rra                                           ; $7dc8: $1f
    and e                                         ; $7dc9: $a3
    rst $10                                       ; $7dca: $d7
    db $fc                                        ; $7dcb: $fc
    rst $30                                       ; $7dcc: $f7
    sub d                                         ; $7dcd: $92
    push af                                       ; $7dce: $f5
    cp b                                          ; $7dcf: $b8
    ldh a, [rNR22]                                ; $7dd0: $f0 $17
    rst $30                                       ; $7dd2: $f7
    ld e, d                                       ; $7dd3: $5a
    adc a                                         ; $7dd4: $8f
    ld l, $e3                                     ; $7dd5: $2e $e3
    jp z, Jump_056_4235                           ; $7dd7: $ca $35 $42

    sub a                                         ; $7dda: $97
    dec h                                         ; $7ddb: $25
    and $bd                                       ; $7ddc: $e6 $bd
    add $10                                       ; $7dde: $c6 $10
    ld bc, $f8f7                                  ; $7de0: $01 $f7 $f8
    ld h, e                                       ; $7de3: $63
    bit 7, [hl]                                   ; $7de4: $cb $7e
    adc h                                         ; $7de6: $8c
    ld e, [hl]                                    ; $7de7: $5e
    cp l                                          ; $7de8: $bd
    ld [c], a                                     ; $7de9: $e2
    ld a, l                                       ; $7dea: $7d
    add hl, bc                                    ; $7deb: $09
    sub [hl]                                      ; $7dec: $96
    ld sp, $5cd5                                  ; $7ded: $31 $d5 $5c
    inc hl                                        ; $7df0: $23
    inc l                                         ; $7df1: $2c
    ld h, d                                       ; $7df2: $62
    adc b                                         ; $7df3: $88
    nop                                           ; $7df4: $00
    or a                                          ; $7df5: $b7
    add sp, -$7c                                  ; $7df6: $e8 $84
    xor [hl]                                      ; $7df8: $ae
    ld b, e                                       ; $7df9: $43
    ld [$2489], sp                                ; $7dfa: $08 $89 $24
    sub a                                         ; $7dfd: $97
    ld a, d                                       ; $7dfe: $7a
    or d                                          ; $7dff: $b2
    ld hl, sp+$64                                 ; $7e00: $f8 $64
    jp z, $7f3b                                   ; $7e02: $ca $3b $7f

    sub d                                         ; $7e05: $92
    cp l                                          ; $7e06: $bd
    ld b, e                                       ; $7e07: $43
    add hl, bc                                    ; $7e08: $09
    cpl                                           ; $7e09: $2f
    db $e3                                        ; $7e0a: $e3
    ld h, c                                       ; $7e0b: $61
    rlca                                          ; $7e0c: $07
    ld [$0221], sp                                ; $7e0d: $08 $21 $02
    ld a, l                                       ; $7e10: $7d
    inc e                                         ; $7e11: $1c
    add $95                                       ; $7e12: $c6 $95
    ld l, e                                       ; $7e14: $6b
    add h                                         ; $7e15: $84
    ld l, $23                                     ; $7e16: $2e $23
    cp d                                          ; $7e18: $ba
    adc d                                         ; $7e19: $8a

Call_056_7e1a:
    cp l                                          ; $7e1a: $bd
    ld a, h                                       ; $7e1b: $7c
    ld c, $84                                     ; $7e1c: $0e $84
    db $10                                        ; $7e1e: $10
    ld bc, $af3d                                  ; $7e1f: $01 $3d $af
    and [hl]                                      ; $7e22: $a6
    db $f4                                        ; $7e23: $f4
    dec e                                         ; $7e24: $1d
    inc sp                                        ; $7e25: $33
    xor a                                         ; $7e26: $af
    rst $00                                       ; $7e27: $c7
    add l                                         ; $7e28: $85
    cp a                                          ; $7e29: $bf
    ld a, b                                       ; $7e2a: $78
    cp l                                          ; $7e2b: $bd
    db $eb                                        ; $7e2c: $eb
    ld c, c                                       ; $7e2d: $49
    add sp, -$7b                                  ; $7e2e: $e8 $85
    nop                                           ; $7e30: $00
    ld a, l                                       ; $7e31: $7d
    inc e                                         ; $7e32: $1c
    halt                                          ; $7e33: $76
    xor b                                         ; $7e34: $a8
    ld de, $f116                                  ; $7e35: $11 $16 $f1
    add h                                         ; $7e38: $84
    sbc d                                         ; $7e39: $9a
    sbc b                                         ; $7e3a: $98
    add hl, sp                                    ; $7e3b: $39
    sub e                                         ; $7e3c: $93
    and h                                         ; $7e3d: $a4
    halt                                          ; $7e3e: $76
    ret c                                         ; $7e3f: $d8

    or d                                          ; $7e40: $b2
    adc [hl]                                      ; $7e41: $8e
    jp $f312                                      ; $7e42: $c3 $12 $f3


    ld a, [hl]                                    ; $7e45: $7e
    adc h                                         ; $7e46: $8c
    ld e, $91                                     ; $7e47: $1e $91
    db $e4                                        ; $7e49: $e4
    sbc d                                         ; $7e4a: $9a
    ld [hl-], a                                   ; $7e4b: $32
    cpl                                           ; $7e4c: $2f
    db $dd                                        ; $7e4d: $dd
    cp h                                          ; $7e4e: $bc
    sub a                                         ; $7e4f: $97
    adc h                                         ; $7e50: $8c
    or b                                          ; $7e51: $b0
    adc b                                         ; $7e52: $88
    ld hl, $2902                                  ; $7e53: $21 $02 $29
    call nc, Call_056_678e                        ; $7e56: $d4 $8e $67
    ld h, [hl]                                    ; $7e59: $66
    rst $10                                       ; $7e5a: $d7
    ld [$188b], sp                                ; $7e5b: $08 $8b $18
    xor $e6                                       ; $7e5e: $ee $e6
    sub $bc                                       ; $7e60: $d6 $bc
    inc de                                        ; $7e62: $13
    ld e, a                                       ; $7e63: $5f
    db $db                                        ; $7e64: $db
    ld a, c                                       ; $7e65: $79
    cp b                                          ; $7e66: $b8
    ld sp, hl                                     ; $7e67: $f9
    adc h                                         ; $7e68: $8c
    ld a, a                                       ; $7e69: $7f
    db $db                                        ; $7e6a: $db
    call $99ad                                    ; $7e6b: $cd $ad $99
    ld [hl], b                                    ; $7e6e: $70
    dec bc                                        ; $7e6f: $0b
    sub [hl]                                      ; $7e70: $96
    ld [hl], e                                    ; $7e71: $73
    add hl, bc                                    ; $7e72: $09
    db $ed                                        ; $7e73: $ed
    jp $8816                                      ; $7e74: $c3 $16 $88


    nop                                           ; $7e77: $00
    rst $30                                       ; $7e78: $f7
    ld d, l                                       ; $7e79: $55
    ld d, a                                       ; $7e7a: $57
    ld [c], a                                     ; $7e7b: $e2
    sbc d                                         ; $7e7c: $9a
    jp nc, $ed47                                  ; $7e7d: $d2 $47 $ed

    ret z                                         ; $7e80: $c8

    adc a                                         ; $7e81: $8f
    sbc [hl]                                      ; $7e82: $9e
    ld [hl], d                                    ; $7e83: $72
    sbc b                                         ; $7e84: $98
    ld l, $f2                                     ; $7e85: $2e $f2
    ld a, d                                       ; $7e87: $7a
    db $ed                                        ; $7e88: $ed
    adc [hl]                                      ; $7e89: $8e
    jr @+$3f                                      ; $7e8a: $18 $3d

    ld a, [hl-]                                   ; $7e8c: $3a
    ld d, a                                       ; $7e8d: $57
    ld a, [$3b0f]                                 ; $7e8e: $fa $0f $3b
    ld l, b                                       ; $7e91: $68
    daa                                           ; $7e92: $27
    cp $70                                        ; $7e93: $fe $70
    or a                                          ; $7e95: $b7
    or h                                          ; $7e96: $b4
    ccf                                           ; $7e97: $3f
    jp nz, $1cb5                                  ; $7e98: $c2 $b5 $1c

    sub [hl]                                      ; $7e9b: $96
    db $f4                                        ; $7e9c: $f4
    ld d, l                                       ; $7e9d: $55
    jp Jump_000_2356                              ; $7e9e: $c3 $56 $23


    xor c                                         ; $7ea1: $a9
    and l                                         ; $7ea2: $a5
    sbc a                                         ; $7ea3: $9f
    ld b, h                                       ; $7ea4: $44
    inc sp                                        ; $7ea5: $33
    ld e, e                                       ; $7ea6: $5b
    jr nz, jr_056_7eab                            ; $7ea7: $20 $02

    ld a, l                                       ; $7ea9: $7d
    inc e                                         ; $7eaa: $1c

jr_056_7eab:
    sub [hl]                                      ; $7eab: $96
    db $e4                                        ; $7eac: $e4
    ret z                                         ; $7ead: $c8

    xor [hl]                                      ; $7eae: $ae
    add hl, hl                                    ; $7eaf: $29
    adc e                                         ; $7eb0: $8b
    ld a, b                                       ; $7eb1: $78
    xor d                                         ; $7eb2: $aa
    xor e                                         ; $7eb3: $ab
    sbc $f8                                       ; $7eb4: $de $f8
    or a                                          ; $7eb6: $b7
    and l                                         ; $7eb7: $a5
    sbc a                                         ; $7eb8: $9f
    ld b, h                                       ; $7eb9: $44
    inc sp                                        ; $7eba: $33
    ld e, e                                       ; $7ebb: $5b
    sub [hl]                                      ; $7ebc: $96
    halt                                          ; $7ebd: $76
    ret nc                                        ; $7ebe: $d0

    adc b                                         ; $7ebf: $88
    cp b                                          ; $7ec0: $b8
    ldh [rP1], a                                  ; $7ec1: $e0 $00
    rst $38                                       ; $7ec3: $ff
    push bc                                       ; $7ec4: $c5
    daa                                           ; $7ec5: $27
    ei                                            ; $7ec6: $fb
    ld sp, $c47a                                  ; $7ec7: $31 $7a $c4
    sbc e                                         ; $7eca: $9b
    ld h, h                                       ; $7ecb: $64
    rst $28                                       ; $7ecc: $ef
    dec h                                         ; $7ecd: $25
    ld a, e                                       ; $7ece: $7b
    inc a                                         ; $7ecf: $3c
    push hl                                       ; $7ed0: $e5
    ld a, [c]                                     ; $7ed1: $f2
    ld c, $ff                                     ; $7ed2: $0e $ff
    jr jr_056_7f33                                ; $7ed4: $18 $5d

    ld a, e                                       ; $7ed6: $7b
    add hl, bc                                    ; $7ed7: $09
    ld b, h                                       ; $7ed8: $44
    ld [hl], a                                    ; $7ed9: $77
    ld c, b                                       ; $7eda: $48
    or b                                          ; $7edb: $b0
    ldh a, [$97]                                  ; $7edc: $f0 $97
    jr nc, @+$6c                                  ; $7ede: $30 $6a

    rst $00                                       ; $7ee0: $c7
    ld d, e                                       ; $7ee1: $53
    xor [hl]                                      ; $7ee2: $ae
    ld h, l                                       ; $7ee3: $65
    sub d                                         ; $7ee4: $92
    or h                                          ; $7ee5: $b4
    halt                                          ; $7ee6: $76
    dec a                                         ; $7ee7: $3d
    xor a                                         ; $7ee8: $af
    ld c, d                                       ; $7ee9: $4a
    inc bc                                        ; $7eea: $03
    ld [hl], a                                    ; $7eeb: $77
    ld [hl], e                                    ; $7eec: $73
    ld l, e                                       ; $7eed: $6b
    jp $f2b9                                      ; $7eee: $c3 $b9 $f2


    sbc e                                         ; $7ef1: $9b
    ld l, e                                       ; $7ef2: $6b
    add h                                         ; $7ef3: $84
    ld l, e                                       ; $7ef4: $6b
    ld h, d                                       ; $7ef5: $62
    push hl                                       ; $7ef6: $e5
    call nc, $dd08                                ; $7ef7: $d4 $08 $dd
    ld a, [$aa68]                                 ; $7efa: $fa $68 $aa
    or $63                                        ; $7efd: $f6 $63
    db $f4                                        ; $7eff: $f4
    ld a, [hl+]                                   ; $7f00: $2a
    or e                                          ; $7f01: $b3
    rst $00                                       ; $7f02: $c7
    cp a                                          ; $7f03: $bf
    dec c                                         ; $7f04: $0d
    ld a, a                                       ; $7f05: $7f
    add hl, de                                    ; $7f06: $19
    db $fd                                        ; $7f07: $fd

Call_056_7f08:
    push bc                                       ; $7f08: $c5
    jp c, $c595                                   ; $7f09: $da $95 $c5

    and e                                         ; $7f0c: $a3
    sbc a                                         ; $7f0d: $9f
    inc b                                         ; $7f0e: $04
    rst $00                                       ; $7f0f: $c7
    adc [hl]                                      ; $7f10: $8e
    ld e, e                                       ; $7f11: $5b
    ld [hl], e                                    ; $7f12: $73
    pop bc                                        ; $7f13: $c1

Call_056_7f14:
    db $dd                                        ; $7f14: $dd
    jp nc, Jump_000_08fe                          ; $7f15: $d2 $fe $08

    rst $10                                       ; $7f18: $d7
    ld [hl-], a                                   ; $7f19: $32
    ld c, c                                       ; $7f1a: $49
    ld a, d                                       ; $7f1b: $7a
    inc h                                         ; $7f1c: $24
    dec [hl]                                      ; $7f1d: $35
    jp c, Jump_000_2d87                           ; $7f1e: $da $87 $2d

    db $10                                        ; $7f21: $10
    jp nz, $f193                                  ; $7f22: $c2 $93 $f1

    ld a, [hl-]                                   ; $7f25: $3a
    ld c, $c3                                     ; $7f26: $0e $c3
    call nc, $a34a                                ; $7f28: $d4 $4a $a3
    sub h                                         ; $7f2b: $94
    sub a                                         ; $7f2c: $97
    ld c, c                                       ; $7f2d: $49
    ld [hl], d                                    ; $7f2e: $72
    ld h, [hl]                                    ; $7f2f: $66
    halt                                          ; $7f30: $76
    ld b, c                                       ; $7f31: $41
    inc b                                         ; $7f32: $04

jr_056_7f33:
    ld [hl], a                                    ; $7f33: $77
    call nz, Call_000_05e8                        ; $7f34: $c4 $e8 $05
    ld l, d                                       ; $7f37: $6a
    ld e, a                                       ; $7f38: $5f
    ld h, h                                       ; $7f39: $64
    ld d, $a1                                     ; $7f3a: $16 $a1
    ldh [$ba], a                                  ; $7f3c: $e0 $ba
    dec a                                         ; $7f3e: $3d
    rst $10                                       ; $7f3f: $d7
    ld a, [hl]                                    ; $7f40: $7e
    adc h                                         ; $7f41: $8c
    ld e, $ed                                     ; $7f42: $1e $ed
    ld d, d                                       ; $7f44: $52
    ccf                                           ; $7f45: $3f
    inc c                                         ; $7f46: $0c
    ld e, e                                       ; $7f47: $5b
    adc l                                         ; $7f48: $8d
    call nc, Call_056_7f08                        ; $7f49: $d4 $08 $7f
    add hl, bc                                    ; $7f4c: $09
    ld d, $88                                     ; $7f4d: $16 $88
    nop                                           ; $7f4f: $00
    ld [hl], a                                    ; $7f50: $77
    ld a, $e9                                     ; $7f51: $3e $e9
    ccf                                           ; $7f53: $3f
    ld a, d                                       ; $7f54: $7a
    call nz, Call_056_649b                        ; $7f55: $c4 $9b $64
    rst $28                                       ; $7f58: $ef
    dec h                                         ; $7f59: $25
    ld a, e                                       ; $7f5a: $7b
    inc a                                         ; $7f5b: $3c
    and l                                         ; $7f5c: $a5
    cpl                                           ; $7f5d: $2f
    ld a, c                                       ; $7f5e: $79
    rst $00                                       ; $7f5f: $c7
    or l                                          ; $7f60: $b5
    jp nc, $f145                                  ; $7f61: $d2 $45 $f1

    ld [hl], h                                    ; $7f64: $74
    ld a, [hl]                                    ; $7f65: $7e
    ld [hl], h                                    ; $7f66: $74
    xor [hl]                                      ; $7f67: $ae
    sub c                                         ; $7f68: $91
    call nc, Call_056_4594                        ; $7f69: $d4 $94 $45
    inc a                                         ; $7f6c: $3c
    cp $ea                                        ; $7f6d: $fe $ea
    ld l, c                                       ; $7f6f: $69
    rst $10                                       ; $7f70: $d7
    di                                            ; $7f71: $f3
    xor d                                         ; $7f72: $aa
    inc [hl]                                      ; $7f73: $34
    db $10                                        ; $7f74: $10
    ld bc, $af3d                                  ; $7f75: $01 $3d $af
    and [hl]                                      ; $7f78: $a6
    db $f4                                        ; $7f79: $f4
    dec e                                         ; $7f7a: $1d
    inc sp                                        ; $7f7b: $33
    xor a                                         ; $7f7c: $af
    rst $00                                       ; $7f7d: $c7
    add l                                         ; $7f7e: $85
    cp a                                          ; $7f7f: $bf
    cp b                                          ; $7f80: $b8
    rla                                           ; $7f81: $17
    ld [bc], a                                    ; $7f82: $02
    ld a, l                                       ; $7f83: $7d
    inc e                                         ; $7f84: $1c
    halt                                          ; $7f85: $76
    inc [hl]                                      ; $7f86: $34

Jump_056_7f87:
    ld [c], a                                     ; $7f87: $e2
    or e                                          ; $7f88: $b3
    adc [hl]                                      ; $7f89: $8e
    jp $350e                                      ; $7f8a: $c3 $0e $35


    jp nz, Jump_056_5e22                          ; $7f8d: $c2 $22 $5e

    ld h, d                                       ; $7f90: $62
    or l                                          ; $7f91: $b5

Call_056_7f92:
    ld [hl], h                                    ; $7f92: $74
    rla                                           ; $7f93: $17
    or e                                          ; $7f94: $b3
    ld h, e                                       ; $7f95: $63
    ld h, [hl]                                    ; $7f96: $66
    ld [hl], $43                                  ; $7f97: $36 $43
    inc b                                         ; $7f99: $04
    dec a                                         ; $7f9a: $3d
    cp d                                          ; $7f9b: $ba
    db $ec                                        ; $7f9c: $ec
    ld a, h                                       ; $7f9d: $7c
    ld h, [hl]                                    ; $7f9e: $66
    rst $10                                       ; $7f9f: $d7
    adc $8f                                       ; $7fa0: $ce $8f
    pop de                                        ; $7fa2: $d1
    push bc                                       ; $7fa3: $c5
    jp Jump_000_1356                              ; $7fa4: $c3 $56 $13


    sbc a                                         ; $7fa7: $9f
    or a                                          ; $7fa8: $b7
    ccf                                           ; $7fa9: $3f
    set 2, d                                      ; $7faa: $cb $d2
    add hl, sp                                    ; $7fac: $39
    ld l, d                                       ; $7fad: $6a
    add a                                         ; $7fae: $87
    dec l                                         ; $7faf: $2d
    db $eb                                        ; $7fb0: $eb
    jr c, jr_056_7fdf                             ; $7fb1: $38 $2c

    ld sp, $c7ef                                  ; $7fb3: $31 $ef $c7
    add sp, $11                                   ; $7fb6: $e8 $11
    ld c, c                                       ; $7fb8: $49
    xor [hl]                                      ; $7fb9: $ae
    ld de, $8cba                                  ; $7fba: $11 $ba $8c
    ld a, b                                       ; $7fbd: $78
    or l                                          ; $7fbe: $b5
    ret nc                                        ; $7fbf: $d0

    ret                                           ; $7fc0: $c9


    push bc                                       ; $7fc1: $c5
    ld a, e                                       ; $7fc2: $7b
    ret                                           ; $7fc3: $c9


    jp z, Jump_000_2d87                           ; $7fc4: $ca $87 $2d

    ld a, e                                       ; $7fc7: $7b
    ret                                           ; $7fc8: $c9


    adc [hl]                                      ; $7fc9: $8e
    inc bc                                        ; $7fca: $03
    ld b, h                                       ; $7fcb: $44
    ld [hl], a                                    ; $7fcc: $77
    ld a, $39                                     ; $7fcd: $3e $39
    or c                                          ; $7fcf: $b1
    db $e3                                        ; $7fd0: $e3
    ld de, $ccba                                  ; $7fd1: $11 $ba $cc
    or l                                          ; $7fd4: $b5
    di                                            ; $7fd5: $f3
    jr nc, @-$48                                  ; $7fd6: $30 $b6

    inc c                                         ; $7fd8: $0c
    ld e, e                                       ; $7fd9: $5b
    adc l                                         ; $7fda: $8d
    ld a, h                                       ; $7fdb: $7c
    ld c, d                                       ; $7fdc: $4a
    cp l                                          ; $7fdd: $bd
    pop af                                        ; $7fde: $f1

jr_056_7fdf:
    ld l, a                                       ; $7fdf: $6f

Call_056_7fe0:
    cp e                                          ; $7fe0: $bb
    rst $20                                       ; $7fe1: $e7
    scf                                           ; $7fe2: $37
    db $fd                                        ; $7fe3: $fd
    ld l, b                                       ; $7fe4: $68
    sub a                                         ; $7fe5: $97
    jp Jump_000_0ed2                              ; $7fe6: $c3 $d2 $0e


    pop bc                                        ; $7fe9: $c1
    inc hl                                        ; $7fea: $23
    ld e, [hl]                                    ; $7feb: $5e
    dec l                                         ; $7fec: $2d
    ld d, b                                       ; $7fed: $50
    call z, $0e3b                                 ; $7fee: $cc $3b $0e
    ld c, e                                       ; $7ff1: $4b
    rst $20                                       ; $7ff2: $e7
    ld [c], a                                     ; $7ff3: $e2
    ld e, [hl]                                    ; $7ff4: $5e
    ld [$ffff], sp                                ; $7ff5: $08 $ff $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
