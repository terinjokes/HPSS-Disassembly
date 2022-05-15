; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $099", ROMX[$4000], BANK[$99]

    sbc c                                         ; $4000: $99
    db $10                                        ; $4001: $10
    ld c, $55                                     ; $4002: $0e $55
    ld a, [bc]                                    ; $4004: $0a
    ld b, d                                       ; $4005: $42
    rst $38                                       ; $4006: $ff
    ld bc, $7c60                                  ; $4007: $01 $60 $7c
    add e                                         ; $400a: $83
    ld a, [hl]                                    ; $400b: $7e
    add c                                         ; $400c: $81
    inc b                                         ; $400d: $04
    ld c, b                                       ; $400e: $48
    ld bc, $0180                                  ; $400f: $01 $80 $01
    db $10                                        ; $4012: $10
    add c                                         ; $4013: $81
    pop bc                                        ; $4014: $c1
    ld h, c                                       ; $4015: $61
    pop af                                        ; $4016: $f1
    add hl, de                                    ; $4017: $19
    dec a                                         ; $4018: $3d
    ld d, a                                       ; $4019: $57
    nop                                           ; $401a: $00
    rrca                                          ; $401b: $0f
    rst $38                                       ; $401c: $ff
    rst $38                                       ; $401d: $ff
    ld d, a                                       ; $401e: $57
    rrca                                          ; $401f: $0f
    sbc e                                         ; $4020: $9b
    dec a                                         ; $4021: $3d
    ld l, a                                       ; $4022: $6f
    nop                                           ; $4023: $00
    pop af                                        ; $4024: $f1
    xor e                                         ; $4025: $ab
    pop bc                                        ; $4026: $c1
    rst $38                                       ; $4027: $ff
    ld bc, $01ff                                  ; $4028: $01 $ff $01
    xor e                                         ; $402b: $ab
    ld b, a                                       ; $402c: $47
    ld d, l                                       ; $402d: $55
    inc b                                         ; $402e: $04
    ld [$ab55], sp                                ; $402f: $08 $55 $ab
    ld bc, $0045                                  ; $4032: $01 $45 $00
    rrca                                          ; $4035: $0f
    nop                                           ; $4036: $00
    inc b                                         ; $4037: $04
    jr jr_099_403a                                ; $4038: $18 $00

jr_099_403a:
    ld bc, $0300                                  ; $403a: $01 $00 $03
    ld [bc], a                                    ; $403d: $02
    adc l                                         ; $403e: $8d
    add hl, bc                                    ; $403f: $09
    sub a                                         ; $4040: $97
    inc de                                        ; $4041: $13
    nop                                           ; $4042: $00
    rst $28                                       ; $4043: $ef
    cp b                                          ; $4044: $b8
    ld b, a                                       ; $4045: $47
    ld d, [hl]                                    ; $4046: $56
    xor c                                         ; $4047: $a9
    ld l, e                                       ; $4048: $6b
    sbc h                                         ; $4049: $9c
    ld b, $00                                     ; $404a: $06 $00
    rrca                                          ; $404c: $0f
    jr @+$3e                                      ; $404d: $18 $3c

    ld h, b                                       ; $404f: $60
    ldh a, [$80]                                  ; $4050: $f0 $80
    ret nz                                        ; $4052: $c0

    nop                                           ; $4053: $00
    sbc h                                         ; $4054: $9c
    ld bc, $aa00                                  ; $4055: $01 $00 $aa
    nop                                           ; $4058: $00
    jr z, jr_099_405b                             ; $4059: $28 $00

jr_099_405b:
    ld bc, $3940                                  ; $405b: $01 $40 $39
    ld [$00aa], sp                                ; $405e: $08 $aa $00
    nop                                           ; $4061: $00
    ld d, l                                       ; $4062: $55
    nop                                           ; $4063: $00
    rst $38                                       ; $4064: $ff
    nop                                           ; $4065: $00
    sub l                                         ; $4066: $95
    ret nz                                        ; $4067: $c0

    ld l, a                                       ; $4068: $6f
    ldh a, [rP1]                                  ; $4069: $f0 $00
    db $db                                        ; $406b: $db
    inc a                                         ; $406c: $3c
    ld d, [hl]                                    ; $406d: $56
    xor a                                         ; $406e: $af
    db $fd                                        ; $406f: $fd
    inc bc                                        ; $4070: $03
    xor e                                         ; $4071: $ab
    ld bc, $5570                                  ; $4072: $01 $70 $55
    ld e, d                                       ; $4075: $5a
    nop                                           ; $4076: $00
    inc b                                         ; $4077: $04
    ld [$0006], sp                                ; $4078: $08 $06 $00
    xor e                                         ; $407b: $ab
    cp a                                          ; $407c: $bf
    pop bc                                        ; $407d: $c1
    ld d, l                                       ; $407e: $55
    ld [hl+], a                                   ; $407f: $22
    xor d                                         ; $4080: $aa
    xor d                                         ; $4081: $aa
    ld hl, $ff00                                  ; $4082: $21 $00 $ff
    rst $38                                       ; $4085: $ff
    jr jr_099_408a                                ; $4086: $18 $02

    jr nz, jr_099_40ef                            ; $4088: $20 $65

jr_099_408a:
    ld [$9bfb], sp                                ; $408a: $08 $fb $9b
    ld a, l                                       ; $408d: $7d
    rlca                                          ; $408e: $07
    ld [hl], b                                    ; $408f: $70
    ld b, b                                       ; $4090: $40
    add b                                         ; $4091: $80
    add b                                         ; $4092: $80
    nop                                           ; $4093: $00
    ld [$4080], sp                                ; $4094: $08 $80 $40
    ret nz                                        ; $4097: $c0

    add b                                         ; $4098: $80
    ld bc, $0010                                  ; $4099: $01 $10 $00
    add b                                         ; $409c: $80
    nop                                           ; $409d: $00
    ld [bc], a                                    ; $409e: $02
    ret nz                                        ; $409f: $c0

    ld a, [de]                                    ; $40a0: $1a
    dec de                                        ; $40a1: $1b
    add hl, de                                    ; $40a2: $19
    add hl, de                                    ; $40a3: $19
    jr jr_099_40a7                                ; $40a4: $18 $01

    db $10                                        ; $40a6: $10

jr_099_40a7:
    ld de, $1e00                                  ; $40a7: $11 $00 $1e
    ld a, [de]                                    ; $40aa: $1a
    rra                                           ; $40ab: $1f
    rra                                           ; $40ac: $1f
    rra                                           ; $40ad: $1f
    pop bc                                        ; $40ae: $c1
    ld hl, $0071                                  ; $40af: $21 $71 $00
    adc a                                         ; $40b2: $8f
    sbc h                                         ; $40b3: $9c
    db $e3                                        ; $40b4: $e3
    ld b, [hl]                                    ; $40b5: $46
    ld a, c                                       ; $40b6: $79

jr_099_40b7:
    dec hl                                        ; $40b7: $2b
    inc [hl]                                      ; $40b8: $34
    push af                                       ; $40b9: $f5
    inc b                                         ; $40ba: $04
    ld a, [bc]                                    ; $40bb: $0a
    ld e, [hl]                                    ; $40bc: $5e
    and c                                         ; $40bd: $a1
    cpl                                           ; $40be: $2f
    ret nc                                        ; $40bf: $d0

    adc d                                         ; $40c0: $8a
    nop                                           ; $40c1: $00
    rst $28                                       ; $40c2: $ef
    ld b, l                                       ; $40c3: $45
    nop                                           ; $40c4: $00
    cp e                                          ; $40c5: $bb
    adc d                                         ; $40c6: $8a
    halt                                          ; $40c7: $76
    ld d, d                                       ; $40c8: $52
    xor [hl]                                      ; $40c9: $ae
    add sp, $17                                   ; $40ca: $e8 $17
    cp $00                                        ; $40cc: $fe $00
    ld bc, $1ce3                                  ; $40ce: $01 $e3 $1c
    jr jr_099_40eb                                ; $40d1: $18 $18

    sbc b                                         ; $40d3: $98
    sbc b                                         ; $40d4: $98
    jr jr_099_40e7                                ; $40d5: $18 $10

    add hl, de                                    ; $40d7: $19
    dec de                                        ; $40d8: $1b
    dec de                                        ; $40d9: $1b
    inc [hl]                                      ; $40da: $34
    nop                                           ; $40db: $00
    sbc b                                         ; $40dc: $98
    jr jr_099_40b7                                ; $40dd: $18 $d8

    sbc b                                         ; $40df: $98
    nop                                           ; $40e0: $00
    ld a, c                                       ; $40e1: $79
    ld bc, $7179                                  ; $40e2: $01 $79 $71
    adc l                                         ; $40e5: $8d
    ld e, h                                       ; $40e6: $5c

jr_099_40e7:
    db $e3                                        ; $40e7: $e3
    db $eb                                        ; $40e8: $eb
    nop                                           ; $40e9: $00
    db $f4                                        ; $40ea: $f4

jr_099_40eb:
    dec e                                         ; $40eb: $1d
    ld h, d                                       ; $40ec: $62
    scf                                           ; $40ed: $37
    ret z                                         ; $40ee: $c8

jr_099_40ef:
    ld l, e                                       ; $40ef: $6b
    sub h                                         ; $40f0: $94
    or a                                          ; $40f1: $b7
    nop                                           ; $40f2: $00
    ld a, b                                       ; $40f3: $78
    add b                                         ; $40f4: $80
    ldh a, [rSVBK]                                ; $40f5: $f0 $70
    adc b                                         ; $40f7: $88
    ret c                                         ; $40f8: $d8

    inc h                                         ; $40f9: $24
    sub h                                         ; $40fa: $94
    nop                                           ; $40fb: $00
    ld a, d                                       ; $40fc: $7a
    adc b                                         ; $40fd: $88
    ld a, [hl]                                    ; $40fe: $7e

Jump_099_40ff:
    sbc $3d                                       ; $40ff: $de $3d
    ld l, h                                       ; $4101: $6c
    sbc a                                         ; $4102: $9f
    and d                                         ; $4103: $a2
    ld b, b                                       ; $4104: $40
    ld d, e                                       ; $4105: $53
    ld e, h                                       ; $4106: $5c
    jr jr_099_4119                                ; $4107: $18 $10

    inc e                                         ; $4109: $1c
    inc d                                         ; $410a: $14
    dec de                                        ; $410b: $1b
    ld [hl+], a                                   ; $410c: $22
    dec a                                         ; $410d: $3d
    ld [$3f30], sp                                ; $410e: $08 $30 $3f
    add hl, de                                    ; $4111: $19
    ld e, $d0                                     ; $4112: $1e $d0
    jr c, jr_099_4116                             ; $4114: $38 $00

jr_099_4116:
    sbc a                                         ; $4116: $9f
    ld [bc], a                                    ; $4117: $02
    ld [de], a                                    ; $4118: $12

jr_099_4119:
    db $fd                                        ; $4119: $fd
    ld [$8af7], sp                                ; $411a: $08 $f7 $8a
    ld [$8181], sp                                ; $411d: $08 $81 $81
    sub b                                         ; $4120: $90
    db $10                                        ; $4121: $10
    add e                                         ; $4122: $83
    nop                                           ; $4123: $00
    inc b                                         ; $4124: $04
    add a                                         ; $4125: $87
    ld b, a                                       ; $4126: $47
    rst $00                                       ; $4127: $c7
    jr jr_099_4142                                ; $4128: $18 $18

    ld a, [de]                                    ; $412a: $1a
    ei                                            ; $412b: $fb
    nop                                           ; $412c: $00
    ld h, d                                       ; $412d: $62
    sbc e                                         ; $412e: $9b
    reti                                          ; $412f: $d9


    and $2d                                       ; $4130: $e6 $2d
    ld [hl-], a                                   ; $4132: $32
    cp a                                          ; $4133: $bf
    ld b, b                                       ; $4134: $40
    nop                                           ; $4135: $00
    dec d                                         ; $4136: $15
    ld [$f5aa], a                                 ; $4137: $ea $aa $f5
    xor e                                         ; $413a: $ab
    ld d, a                                       ; $413b: $57
    push de                                       ; $413c: $d5
    dec hl                                        ; $413d: $2b
    nop                                           ; $413e: $00
    and [hl]                                      ; $413f: $a6
    ld e, c                                       ; $4140: $59
    ld h, l                                       ; $4141: $65

jr_099_4142:
    sbc [hl]                                      ; $4142: $9e
    ld d, d                                       ; $4143: $52
    xor e                                         ; $4144: $ab
    xor c                                         ; $4145: $a9
    push de                                       ; $4146: $d5
    nop                                           ; $4147: $00
    push bc                                       ; $4148: $c5
    ei                                            ; $4149: $fb
    jp hl                                         ; $414a: $e9


    rst $38                                       ; $414b: $ff
    or a                                          ; $414c: $b7
    rst $38                                       ; $414d: $ff
    ld e, d                                       ; $414e: $5a
    rst $38                                       ; $414f: $ff
    nop                                           ; $4150: $00
    inc h                                         ; $4151: $24
    rst $38                                       ; $4152: $ff
    ld [bc], a                                    ; $4153: $02
    db $fd                                        ; $4154: $fd
    and c                                         ; $4155: $a1
    ld e, [hl]                                    ; $4156: $5e
    ld b, h                                       ; $4157: $44
    cp a                                          ; $4158: $bf
    nop                                           ; $4159: $00
    ld a, [bc]                                    ; $415a: $0a
    rst $30                                       ; $415b: $f7
    db $10                                        ; $415c: $10
    rst $28                                       ; $415d: $ef
    nop                                           ; $415e: $00
    nop                                           ; $415f: $00
    inc e                                         ; $4160: $1c
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    ld e, $00                                     ; $4163: $1e $00
    or $88                                        ; $4165: $f6 $88
    di                                            ; $4167: $f3
    adc h                                         ; $4168: $8c
    ld a, a                                       ; $4169: $7f
    ld h, b                                       ; $416a: $60
    inc bc                                        ; $416b: $03
    ccf                                           ; $416c: $3f
    inc hl                                        ; $416d: $23
    inc e                                         ; $416e: $1c
    inc e                                         ; $416f: $1c
    rst $38                                       ; $4170: $ff
    rst $38                                       ; $4171: $ff
    dec [hl]                                      ; $4172: $35
    ld bc, $093d                                  ; $4173: $01 $3d $09
    call z, $1004                                 ; $4176: $cc $04 $10
    ld a, [bc]                                    ; $4179: $0a
    nop                                           ; $417a: $00
    ret nz                                        ; $417b: $c0

    ret nz                                        ; $417c: $c0

    xor $00                                       ; $417d: $ee $00
    ld [$8000], a                                 ; $417f: $ea $00 $80
    sub b                                         ; $4182: $90
    inc b                                         ; $4183: $04
    sbc [hl]                                      ; $4184: $9e
    adc d                                         ; $4185: $8a
    adc l                                         ; $4186: $8d
    add l                                         ; $4187: $85
    adc d                                         ; $4188: $8a
    db $ec                                        ; $4189: $ec
    jr jr_099_41a4                                ; $418a: $18 $18

    add hl, de                                    ; $418c: $19
    add b                                         ; $418d: $80
    ld [bc], a                                    ; $418e: $02
    nop                                           ; $418f: $00
    dec de                                        ; $4190: $1b
    add hl, de                                    ; $4191: $19
    sbc e                                         ; $4192: $9b
    ld c, b                                       ; $4193: $48
    cp b                                          ; $4194: $b8
    sbc e                                         ; $4195: $9b
    db $e4                                        ; $4196: $e4
    nop                                           ; $4197: $00
    inc [hl]                                      ; $4198: $34
    ld c, e                                       ; $4199: $4b
    ld l, c                                       ; $419a: $69
    sbc [hl]                                      ; $419b: $9e
    sbc l                                         ; $419c: $9d
    ld a, [hl]                                    ; $419d: $7e
    ccf                                           ; $419e: $3f
    cp $00                                        ; $419f: $fe $00
    rst $00                                       ; $41a1: $c7

jr_099_41a2:
    adc $0b                                       ; $41a2: $ce $0b

jr_099_41a4:
    ld c, $06                                     ; $41a4: $0e $06
    rrca                                          ; $41a6: $0f
    ld a, d                                       ; $41a7: $7a
    add a                                         ; $41a8: $87
    nop                                           ; $41a9: $00
    db $dd                                        ; $41aa: $dd
    inc hl                                        ; $41ab: $23
    and d                                         ; $41ac: $a2
    ld e, l                                       ; $41ad: $5d
    ld d, l                                       ; $41ae: $55
    cp [hl]                                       ; $41af: $be
    cp d                                          ; $41b0: $ba
    ld a, a                                       ; $41b1: $7f
    nop                                           ; $41b2: $00
    ld a, l                                       ; $41b3: $7d
    rst $38                                       ; $41b4: $ff
    ld l, e                                       ; $41b5: $6b
    rst $38                                       ; $41b6: $ff
    ld d, h                                       ; $41b7: $54
    db $fc                                        ; $41b8: $fc
    add d                                         ; $41b9: $82
    adc a                                         ; $41ba: $8f
    nop                                           ; $41bb: $00
    ld c, h                                       ; $41bc: $4c
    rst $08                                       ; $41bd: $cf
    add d                                         ; $41be: $82

Jump_099_41bf:
    add l                                         ; $41bf: $85
    jr @+$01                                      ; $41c0: $18 $ff

    ld c, b                                       ; $41c2: $48
    or a                                          ; $41c3: $b7
    nop                                           ; $41c4: $00

jr_099_41c5:
    sub d                                         ; $41c5: $92
    ld l, l                                       ; $41c6: $6d
    ld [$00f7], sp                                ; $41c7: $08 $f7 $00
    rst $38                                       ; $41ca: $ff
    jr c, jr_099_41c5                             ; $41cb: $38 $f8

    nop                                           ; $41cd: $00
    sbc d                                         ; $41ce: $9a
    ld a, e                                       ; $41cf: $7b
    ld c, b                                       ; $41d0: $48
    cp b                                          ; $41d1: $b8
    jr @+$01                                      ; $41d2: $18 $ff

    inc h                                         ; $41d4: $24
    rst $18                                       ; $41d5: $df
    nop                                           ; $41d6: $00
    ld [de], a                                    ; $41d7: $12
    rst $28                                       ; $41d8: $ef
    jr c, jr_099_41a2                             ; $41d9: $38 $c7

    ld e, $e1                                     ; $41db: $1e $e1
    ld a, [bc]                                    ; $41dd: $0a
    rra                                           ; $41de: $1f
    nop                                           ; $41df: $00
    ld bc, $98ff                                  ; $41e0: $01 $ff $98
    rst $20                                       ; $41e3: $e7
    ld l, h                                       ; $41e4: $6c
    ld [hl], e                                    ; $41e5: $73
    sub [hl]                                      ; $41e6: $96
    ld e, c                                       ; $41e7: $59
    nop                                           ; $41e8: $00
    ld c, b                                       ; $41e9: $48
    or a                                          ; $41ea: $b7
    and d                                         ; $41eb: $a2
    ld e, a                                       ; $41ec: $5f
    nop                                           ; $41ed: $00
    rst $38                                       ; $41ee: $ff
    xor b                                         ; $41ef: $a8
    cp $10                                        ; $41f0: $fe $10
    nop                                           ; $41f2: $00
    cp $00                                        ; $41f3: $fe $00
    and b                                         ; $41f5: $a0
    nop                                           ; $41f6: $00
    inc d                                         ; $41f7: $14
    ei                                            ; $41f8: $fb
    xor d                                         ; $41f9: $aa
    ld [hl], l                                    ; $41fa: $75
    jr nz, jr_099_4241                            ; $41fb: $20 $44

    cp e                                          ; $41fd: $bb
    add c                                         ; $41fe: $81
    ld [$0c00], sp                                ; $41ff: $08 $00 $0c
    nop                                           ; $4202: $00
    ld a, $0c                                     ; $4203: $3e $0c
    nop                                           ; $4205: $00
    inc sp                                        ; $4206: $33
    inc c                                         ; $4207: $0c
    scf                                           ; $4208: $37
    ld hl, $033f                                  ; $4209: $21 $3f $03
    rra                                           ; $420c: $1f
    inc e                                         ; $420d: $1c
    nop                                           ; $420e: $00
    inc e                                         ; $420f: $1c
    inc c                                         ; $4210: $0c
    di                                            ; $4211: $f3
    ld h, h                                       ; $4212: $64
    sbc e                                         ; $4213: $9b
    ld [hl-], a                                   ; $4214: $32
    call Call_000_0608                            ; $4215: $cd $08 $06
    rst $30                                       ; $4218: $f7
    ld [bc], a                                    ; $4219: $02
    db $fd                                        ; $421a: $fd

jr_099_421b:
    db $10                                        ; $421b: $10
    rst $28                                       ; $421c: $ef
    ld d, b                                       ; $421d: $50
    ld [$1808], sp                                ; $421e: $08 $08 $18
    inc b                                         ; $4221: $04
    ld bc, $0afb                                  ; $4222: $01 $fb $0a
    push af                                       ; $4225: $f5
    ld b, h                                       ; $4226: $44
    cp e                                          ; $4227: $bb
    ld [bc], a                                    ; $4228: $02
    db $fd                                        ; $4229: $fd
    cp d                                          ; $422a: $ba
    add hl, bc                                    ; $422b: $09
    inc b                                         ; $422c: $04
    ld b, b                                       ; $422d: $40
    rst $38                                       ; $422e: $ff
    cp a                                          ; $422f: $bf
    ld b, b                                       ; $4230: $40
    add b                                         ; $4231: $80
    ld [bc], a                                    ; $4232: $02
    jr nz, @+$01                                  ; $4233: $20 $ff

    ld b, b                                       ; $4235: $40
    ld [bc], a                                    ; $4236: $02
    ld c, b                                       ; $4237: $48
    cp c                                          ; $4238: $b9
    ret z                                         ; $4239: $c8

    ld sp, hl                                     ; $423a: $f9
    add hl, hl                                    ; $423b: $29
    add hl, sp                                    ; $423c: $39
    ld [hl], l                                    ; $423d: $75
    ld bc, $0058                                  ; $423e: $01 $58 $00

jr_099_4241:
    jr jr_099_421b                                ; $4241: $18 $d8

    sbc [hl]                                      ; $4243: $9e
    cp $db                                        ; $4244: $fe $db
    ei                                            ; $4246: $fb
    ld l, e                                       ; $4247: $6b
    db $f4                                        ; $4248: $f4
    nop                                           ; $4249: $00
    sbc l                                         ; $424a: $9d
    and d                                         ; $424b: $a2
    jr z, jr_099_42a5                             ; $424c: $28 $57

    dec [hl]                                      ; $424e: $35
    ld c, [hl]                                    ; $424f: $4e
    ld l, d                                       ; $4250: $6a
    sbc a                                         ; $4251: $9f
    nop                                           ; $4252: $00
    ld d, h                                       ; $4253: $54
    or a                                          ; $4254: $b7
    ld [hl+], a                                   ; $4255: $22
    db $e3                                        ; $4256: $e3
    ld b, l                                       ; $4257: $45
    rst $00                                       ; $4258: $c7
    and c                                         ; $4259: $a1
    ld e, c                                       ; $425a: $59
    nop                                           ; $425b: $00
    ret nc                                        ; $425c: $d0

    ld l, b                                       ; $425d: $68
    or b                                          ; $425e: $b0
    ld l, h                                       ; $425f: $6c
    ret c                                         ; $4260: $d8

    ld h, l                                       ; $4261: $65
    add sp, $75                                   ; $4262: $e8 $75

jr_099_4264:
    nop                                           ; $4264: $00
    xor c                                         ; $4265: $a9
    ld [hl], l                                    ; $4266: $75
    sub b                                         ; $4267: $90
    ld e, h                                       ; $4268: $5c
    ld [$1ccc], sp                                ; $4269: $08 $cc $1c
    rra                                           ; $426c: $1f
    nop                                           ; $426d: $00
    ld [bc], a                                    ; $426e: $02
    ld a, l                                       ; $426f: $7d
    add hl, de                                    ; $4270: $19
    and $40                                       ; $4271: $e6 $40
    cp a                                          ; $4273: $bf
    sub [hl]                                      ; $4274: $96
    ld a, a                                       ; $4275: $7f
    nop                                           ; $4276: $00
    ld l, $ff                                     ; $4277: $2e $ff
    db $fc                                        ; $4279: $fc
    rst $38                                       ; $427a: $ff
    inc e                                         ; $427b: $1c

jr_099_427c:
    rra                                           ; $427c: $1f
    add hl, sp                                    ; $427d: $39
    add hl, sp                                    ; $427e: $39
    nop                                           ; $427f: $00
    jr jr_099_429a                                ; $4280: $18 $18

    jr c, jr_099_427c                             ; $4282: $38 $f8

    ld e, b                                       ; $4284: $58
    rst $18                                       ; $4285: $df
    jp nz, Jump_000_00fd                          ; $4286: $c2 $fd $00

    sub h                                         ; $4289: $94
    db $eb                                        ; $428a: $eb
    jr z, jr_099_4264                             ; $428b: $28 $d7

    ld [bc], a                                    ; $428d: $02
    db $fd                                        ; $428e: $fd
    ld d, e                                       ; $428f: $53
    rst $18                                       ; $4290: $df
    nop                                           ; $4291: $00
    sub b                                         ; $4292: $90
    xor a                                         ; $4293: $af
    add hl, hl                                    ; $4294: $29
    ld e, a                                       ; $4295: $5f
    ld [de], a                                    ; $4296: $12
    rst $38                                       ; $4297: $ff
    ld a, b                                       ; $4298: $78
    rst $30                                       ; $4299: $f7

jr_099_429a:
    nop                                           ; $429a: $00
    inc l                                         ; $429b: $2c

jr_099_429c:
    di                                            ; $429c: $f3
    add l                                         ; $429d: $85
    ld a, [$ff00]                                 ; $429e: $fa $00 $ff
    add h                                         ; $42a1: $84
    call nz, $8000                                ; $42a2: $c4 $00 $80

jr_099_42a5:
    ld hl, sp-$58                                 ; $42a5: $f8 $a8
    call c, $bf45                                 ; $42a7: $dc $45 $bf
    xor b                                         ; $42aa: $a8
    ld d, a                                       ; $42ab: $57
    db $10                                        ; $42ac: $10
    inc d                                         ; $42ad: $14
    db $eb                                        ; $42ae: $eb

jr_099_42af:
    ld [bc], a                                    ; $42af: $02
    inc a                                         ; $42b0: $3c
    ld bc, $1f1e                                  ; $42b1: $01 $1e $1f
    dec d                                         ; $42b4: $15
    rra                                           ; $42b5: $1f
    nop                                           ; $42b6: $00
    ld a, [hl+]                                   ; $42b7: $2a
    ld a, a                                       ; $42b8: $7f
    rla                                           ; $42b9: $17
    rst $38                                       ; $42ba: $ff
    add c                                         ; $42bb: $81
    rst $38                                       ; $42bc: $ff
    ld c, b                                       ; $42bd: $48
    cp a                                          ; $42be: $bf
    nop                                           ; $42bf: $00
    inc d                                         ; $42c0: $14
    rst $28                                       ; $42c1: $ef
    jr nz, @-$1f                                  ; $42c2: $20 $df

    inc b                                         ; $42c4: $04
    ei                                            ; $42c5: $fb
    jr jr_099_42af                                ; $42c6: $18 $e7

    nop                                           ; $42c8: $00
    cp b                                          ; $42c9: $b8
    ld b, a                                       ; $42ca: $47
    jr nc, jr_099_429c                            ; $42cb: $30 $cf

    ld b, b                                       ; $42cd: $40
    cp a                                          ; $42ce: $bf
    inc b                                         ; $42cf: $04
    ei                                            ; $42d0: $fb
    add b                                         ; $42d1: $80
    ld a, c                                       ; $42d2: $79
    ld [bc], a                                    ; $42d3: $02
    rst $38                                       ; $42d4: $ff
    jr jr_099_42ef                                ; $42d5: $18 $18

    inc a                                         ; $42d7: $3c
    inc a                                         ; $42d8: $3c
    ld a, h                                       ; $42d9: $7c
    ld a, h                                       ; $42da: $7c
    nop                                           ; $42db: $00
    rst $38                                       ; $42dc: $ff
    rst $20                                       ; $42dd: $e7
    rst $18                                       ; $42de: $df
    rst $20                                       ; $42df: $e7
    rst $20                                       ; $42e0: $e7
    rst $38                                       ; $42e1: $ff
    ld a, h                                       ; $42e2: $7c
    ld a, h                                       ; $42e3: $7c
    nop                                           ; $42e4: $00
    inc e                                         ; $42e5: $1c
    inc e                                         ; $42e6: $1c
    jr @+$03                                      ; $42e7: $18 $01

    jr jr_099_42ec                                ; $42e9: $18 $01

    ret nz                                        ; $42eb: $c0

jr_099_42ec:
    nop                                           ; $42ec: $00
    ld [bc], a                                    ; $42ed: $02
    ret nz                                        ; $42ee: $c0

jr_099_42ef:
    jr @+$33                                      ; $42ef: $18 $31

    jr c, jr_099_4324                             ; $42f1: $38 $31

    jr nc, @-$4a                                  ; $42f3: $30 $b4

    ld a, [bc]                                    ; $42f5: $0a
    sub d                                         ; $42f6: $92
    nop                                           ; $42f7: $00
    ld l, a                                       ; $42f8: $6f
    and c                                         ; $42f9: $a1
    ld e, a                                       ; $42fa: $5f
    db $d3                                        ; $42fb: $d3
    cpl                                           ; $42fc: $2f
    or h                                          ; $42fd: $b4
    ld c, e                                       ; $42fe: $4b
    ld [$1500], a                                 ; $42ff: $ea $00 $15
    ld b, c                                       ; $4302: $41
    cp [hl]                                       ; $4303: $be
    adc b                                         ; $4304: $88
    ld a, a                                       ; $4305: $7f
    ld c, l                                       ; $4306: $4d
    cp a                                          ; $4307: $bf
    ret nz                                        ; $4308: $c0

    nop                                           ; $4309: $00
    pop bc                                        ; $430a: $c1
    add c                                         ; $430b: $81
    add d                                         ; $430c: $82
    add d                                         ; $430d: $82
    add e                                         ; $430e: $83
    ld bc, $0081                                  ; $430f: $01 $81 $00

jr_099_4312:
    nop                                           ; $4312: $00
    ret nz                                        ; $4313: $c0

    nop                                           ; $4314: $00
    ldh [$80], a                                  ; $4315: $e0 $80
    ld h, c                                       ; $4317: $61
    ld bc, $d7e1                                  ; $4318: $01 $e1 $d7
    nop                                           ; $431b: $00
    jr z, jr_099_4347                             ; $431c: $28 $29

    cp $74                                        ; $431e: $fe $74
    ei                                            ; $4320: $fb
    set 2, h                                      ; $4321: $cb $d4
    ld [hl-], a                                   ; $4323: $32

jr_099_4324:
    nop                                           ; $4324: $00
    ld c, l                                       ; $4325: $4d
    ld b, h                                       ; $4326: $44
    cp e                                          ; $4327: $bb
    dec [hl]                                      ; $4328: $35
    ei                                            ; $4329: $fb
    reti                                          ; $432a: $d9


    rst $18                                       ; $432b: $df
    ld c, $00                                     ; $432c: $0e $00
    rst $38                                       ; $432e: $ff
    ld c, c                                       ; $432f: $49
    cp c                                          ; $4330: $b9
    ld c, c                                       ; $4331: $49
    cp c                                          ; $4332: $b9
    db $10                                        ; $4333: $10
    rst $38                                       ; $4334: $ff
    ld [c], a                                     ; $4335: $e2
    nop                                           ; $4336: $00
    db $fd                                        ; $4337: $fd
    dec d                                         ; $4338: $15
    ld a, [$ff20]                                 ; $4339: $fa $20 $ff
    db $10                                        ; $433c: $10
    rst $28                                       ; $433d: $ef
    and b                                         ; $433e: $a0
    nop                                           ; $433f: $00
    ldh [$c0], a                                  ; $4340: $e0 $c0
    ret nz                                        ; $4342: $c0

    ld [$50f8], sp                                ; $4343: $08 $f8 $50
    or c                                          ; $4346: $b1

jr_099_4347:
    and c                                         ; $4347: $a1
    ld a, [bc]                                    ; $4348: $0a
    ld l, [hl]                                    ; $4349: $6e
    ld [bc], a                                    ; $434a: $02
    db $fd                                        ; $434b: $fd
    ld d, b                                       ; $434c: $50
    call z, Call_000_1f01                         ; $434d: $cc $01 $1f
    sub b                                         ; $4350: $90
    nop                                           ; $4351: $00
    ld a, [de]                                    ; $4352: $1a
    nop                                           ; $4353: $00
    rra                                           ; $4354: $1f
    add hl, de                                    ; $4355: $19
    sbc $10                                       ; $4356: $de $10
    rst $38                                       ; $4358: $ff
    add d                                         ; $4359: $82
    ld a, a                                       ; $435a: $7f
    ld b, h                                       ; $435b: $44
    nop                                           ; $435c: $00
    cp a                                          ; $435d: $bf
    nop                                           ; $435e: $00
    rst $38                                       ; $435f: $ff
    jr nc, jr_099_4312                            ; $4360: $30 $b0

    jr nc, @-$48                                  ; $4362: $30 $b6

    jr jr_099_4366                                ; $4364: $18 $00

jr_099_4366:
    ld h, [hl]                                    ; $4366: $66
    jr jr_099_43c9                                ; $4367: $18 $60

    add b                                         ; $4369: $80
    jr nc, jr_099_42ec                            ; $436a: $30 $80

    jr nc, jr_099_4374                            ; $436c: $30 $06

    add b                                         ; $436e: $80
    ld bc, $8200                                  ; $436f: $01 $00 $82
    db $fd                                        ; $4372: $fd
    ld b, [hl]                                    ; $4373: $46

jr_099_4374:
    rst $38                                       ; $4374: $ff
    ld a, [hl+]                                   ; $4375: $2a
    push af                                       ; $4376: $f5
    ld b, b                                       ; $4377: $40
    nop                                           ; $4378: $00
    cp a                                          ; $4379: $bf
    push bc                                       ; $437a: $c5
    ld a, e                                       ; $437b: $7b
    ld [$0aff], sp                                ; $437c: $08 $ff $0a
    rst $30                                       ; $437f: $f7
    jr nz, jr_099_4382                            ; $4380: $20 $00

jr_099_4382:
    rst $38                                       ; $4382: $ff
    ld b, $ff                                     ; $4383: $06 $ff
    ld e, b                                       ; $4385: $58
    rst $38                                       ; $4386: $ff
    ld b, h                                       ; $4387: $44
    rst $38                                       ; $4388: $ff
    sub h                                         ; $4389: $94
    nop                                           ; $438a: $00
    ld l, a                                       ; $438b: $6f
    ld b, d                                       ; $438c: $42
    db $fd                                        ; $438d: $fd
    xor b                                         ; $438e: $a8
    rst $30                                       ; $438f: $f7
    add hl, hl                                    ; $4390: $29
    rst $38                                       ; $4391: $ff
    ld [de], a                                    ; $4392: $12
    nop                                           ; $4393: $00
    rst $38                                       ; $4394: $ff
    and c                                         ; $4395: $a1
    sbc $04                                       ; $4396: $de $04
    rst $38                                       ; $4398: $ff
    jr z, @+$01                                   ; $4399: $28 $ff

    inc c                                         ; $439b: $0c
    ld [$62fb], sp                                ; $439c: $08 $fb $62
    db $fd                                        ; $439f: $fd
    db $10                                        ; $43a0: $10
    ld d, $00                                     ; $43a1: $16 $00
    ld de, $21ff                                  ; $43a3: $11 $ff $21
    nop                                           ; $43a6: $00
    cp $95                                        ; $43a7: $fe $95
    ld a, a                                       ; $43a9: $7f
    inc de                                        ; $43aa: $13
    db $fd                                        ; $43ab: $fd
    ld b, d                                       ; $43ac: $42
    rst $38                                       ; $43ad: $ff
    sub c                                         ; $43ae: $91
    nop                                           ; $43af: $00
    ld a, a                                       ; $43b0: $7f
    rlca                                          ; $43b1: $07
    db $fd                                        ; $43b2: $fd
    ld e, e                                       ; $43b3: $5b
    cp [hl]                                       ; $43b4: $be
    and d                                         ; $43b5: $a2
    db $dd                                        ; $43b6: $dd
    inc a                                         ; $43b7: $3c
    nop                                           ; $43b8: $00
    db $eb                                        ; $43b9: $eb
    nop                                           ; $43ba: $00
    rst $38                                       ; $43bb: $ff

Jump_099_43bc:
    ld d, h                                       ; $43bc: $54
    ei                                            ; $43bd: $fb
    ld b, h                                       ; $43be: $44
    rst $38                                       ; $43bf: $ff
    add c                                         ; $43c0: $81
    nop                                           ; $43c1: $00
    ld a, [hl]                                    ; $43c2: $7e
    ld c, d                                       ; $43c3: $4a
    rst $38                                       ; $43c4: $ff
    and b                                         ; $43c5: $a0
    rst $38                                       ; $43c6: $ff
    inc b                                         ; $43c7: $04
    ei                                            ; $43c8: $fb

jr_099_43c9:
    add b                                         ; $43c9: $80
    nop                                           ; $43ca: $00
    rst $38                                       ; $43cb: $ff
    add hl, bc                                    ; $43cc: $09
    rst $38                                       ; $43cd: $ff
    or b                                          ; $43ce: $b0
    rst $38                                       ; $43cf: $ff
    ld de, $0dff                                  ; $43d0: $11 $ff $0d
    nop                                           ; $43d3: $00
    ld a, [$7db6]                                 ; $43d4: $fa $b6 $7d
    ld [hl+], a                                   ; $43d7: $22
    rst $18                                       ; $43d8: $df
    add c                                         ; $43d9: $81
    ld a, a                                       ; $43da: $7f
    ld h, b                                       ; $43db: $60
    nop                                           ; $43dc: $00
    rst $38                                       ; $43dd: $ff
    add e                                         ; $43de: $83
    rst $38                                       ; $43df: $ff
    ld b, h                                       ; $43e0: $44
    ei                                            ; $43e1: $fb
    add l                                         ; $43e2: $85
    ld a, a                                       ; $43e3: $7f
    ld [$1e80], sp                                ; $43e4: $08 $80 $1e
    ld [$51ff], sp                                ; $43e7: $08 $ff $51
    cp a                                          ; $43ea: $bf
    xor [hl]                                      ; $43eb: $ae
    ld d, b                                       ; $43ec: $50
    rst $08                                       ; $43ed: $cf
    jr nz, jr_099_43f0                            ; $43ee: $20 $00

jr_099_43f0:
    ld [hl], c                                    ; $43f0: $71
    inc c                                         ; $43f1: $0c
    ld [hl], a                                    ; $43f2: $77
    adc b                                         ; $43f3: $88
    ld b, [hl]                                    ; $43f4: $46
    ld sp, $1ae5                                  ; $43f5: $31 $e5 $1a
    nop                                           ; $43f8: $00
    push bc                                       ; $43f9: $c5
    ld [hl-], a                                   ; $43fa: $32
    cp h                                          ; $43fb: $bc
    ld b, c                                       ; $43fc: $41
    xor e                                         ; $43fd: $ab
    inc d                                         ; $43fe: $14
    ret nc                                        ; $43ff: $d0

    add hl, hl                                    ; $4400: $29
    nop                                           ; $4401: $00
    cp a                                          ; $4402: $bf
    ld b, b                                       ; $4403: $40
    sub $08                                       ; $4404: $d6 $08
    rst $38                                       ; $4406: $ff
    nop                                           ; $4407: $00
    or c                                          ; $4408: $b1
    ld b, d                                       ; $4409: $42
    nop                                           ; $440a: $00
    db $db                                        ; $440b: $db
    inc h                                         ; $440c: $24
    ld a, a                                       ; $440d: $7f
    add b                                         ; $440e: $80
    ld l, [hl]                                    ; $440f: $6e
    nop                                           ; $4410: $00
    push af                                       ; $4411: $f5
    ld a, [bc]                                    ; $4412: $0a
    nop                                           ; $4413: $00
    ld b, h                                       ; $4414: $44
    or e                                          ; $4415: $b3
    adc d                                         ; $4416: $8a
    ld d, h                                       ; $4417: $54
    ld a, h                                       ; $4418: $7c
    ld bc, $04fa                                  ; $4419: $01 $fa $04
    nop                                           ; $441c: $00
    cp h                                          ; $441d: $bc
    ld b, e                                       ; $441e: $43
    ld e, [hl]                                    ; $441f: $5e
    ld bc, $0ff0                                  ; $4420: $01 $f0 $0f
    dec l                                         ; $4423: $2d
    ld b, b                                       ; $4424: $40
    nop                                           ; $4425: $00
    rst $10                                       ; $4426: $d7
    jr z, jr_099_449b                             ; $4427: $28 $72

    inc c                                         ; $4429: $0c
    or a                                          ; $442a: $b7
    nop                                           ; $442b: $00
    rst $08                                       ; $442c: $cf
    jr nz, jr_099_442f                            ; $442d: $20 $00

jr_099_442f:
    push de                                       ; $442f: $d5
    ld a, [hl+]                                   ; $4430: $2a
    xor $11                                       ; $4431: $ee $11
    push de                                       ; $4433: $d5
    ld a, [hl+]                                   ; $4434: $2a
    xor [hl]                                      ; $4435: $ae
    ld de, $fb00                                  ; $4436: $11 $00 $fb

jr_099_4439:
    inc b                                         ; $4439: $04
    cp c                                          ; $443a: $b9
    ld b, d                                       ; $443b: $42
    db $dd                                        ; $443c: $dd
    nop                                           ; $443d: $00
    or a                                          ; $443e: $b7
    ld [$2d00], sp                                ; $443f: $08 $00 $2d
    ld b, d                                       ; $4442: $42
    rst $10                                       ; $4443: $d7
    jr nz, jr_099_4439                            ; $4444: $20 $f3

    ld [$00be], sp                                ; $4446: $08 $be $00
    nop                                           ; $4449: $00
    ld c, e                                       ; $444a: $4b
    and h                                         ; $444b: $a4
    call z, $bb32                                 ; $444c: $cc $32 $bb
    ld b, b                                       ; $444f: $40
    push hl                                       ; $4450: $e5
    stop                                          ; $4451: $10 $00
    xor d                                         ; $4453: $aa
    inc d                                         ; $4454: $14
    ccf                                           ; $4455: $3f
    ld b, b                                       ; $4456: $40
    ld c, a                                       ; $4457: $4f
    or b                                          ; $4458: $b0
    cp [hl]                                       ; $4459: $be
    ld b, b                                       ; $445a: $40
    nop                                           ; $445b: $00
    push de                                       ; $445c: $d5
    nop                                           ; $445d: $00
    rst $28                                       ; $445e: $ef
    nop                                           ; $445f: $00
    cp e                                          ; $4460: $bb
    ld b, b                                       ; $4461: $40

jr_099_4462:
    rst $10                                       ; $4462: $d7
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    ld l, l                                       ; $4465: $6d
    sub d                                         ; $4466: $92
    rst $38                                       ; $4467: $ff
    nop                                           ; $4468: $00
    ld l, d                                       ; $4469: $6a
    ld de, $09f6                                  ; $446a: $11 $f6 $09
    nop                                           ; $446d: $00
    dec hl                                        ; $446e: $2b
    inc d                                         ; $446f: $14
    cp $00                                        ; $4470: $fe $00
    rst $00                                       ; $4472: $c7
    jr z, jr_099_4462                             ; $4473: $28 $ed

    ld [de], a                                    ; $4475: $12
    nop                                           ; $4476: $00
    xor l                                         ; $4477: $ad
    ld d, d                                       ; $4478: $52
    jp nc, $7025                                  ; $4479: $d2 $25 $70

    adc [hl]                                      ; $447c: $8e
    daa                                           ; $447d: $27
    ld e, b                                       ; $447e: $58
    nop                                           ; $447f: $00
    db $db                                        ; $4480: $db
    inc b                                         ; $4481: $04
    sbc e                                         ; $4482: $9b
    ld h, h                                       ; $4483: $64
    rst $08                                       ; $4484: $cf
    jr nz, jr_099_44e2                            ; $4485: $20 $5b

    add h                                         ; $4487: $84
    nop                                           ; $4488: $00

jr_099_4489:
    xor a                                         ; $4489: $af
    ld b, b                                       ; $448a: $40
    db $dd                                        ; $448b: $dd
    ld [bc], a                                    ; $448c: $02
    rrca                                          ; $448d: $0f
    rst $38                                       ; $448e: $ff
    jp nc, $006d                                  ; $448f: $d2 $6d $00

    jr z, @+$01                                   ; $4492: $28 $ff

    adc l                                         ; $4494: $8d
    ld a, [hl]                                    ; $4495: $7e
    ld c, b                                       ; $4496: $48
    or a                                          ; $4497: $b7

jr_099_4498:
    jr nc, jr_099_4489                            ; $4498: $30 $ef

    ld b, b                                       ; $449a: $40

jr_099_449b:
    ld a, [hl+]                                   ; $449b: $2a
    cp b                                          ; $449c: $b8
    nop                                           ; $449d: $00
    sbc $20                                       ; $449e: $de $20
    ld l, d                                       ; $44a0: $6a
    dec d                                         ; $44a1: $15
    db $ec                                        ; $44a2: $ec
    ld de, $bd00                                  ; $44a3: $11 $00 $bd
    ld b, d                                       ; $44a6: $42
    ld l, [hl]                                    ; $44a7: $6e
    ld de, $05f8                                  ; $44a8: $11 $f8 $05
    and h                                         ; $44ab: $a4
    ld a, [de]                                    ; $44ac: $1a
    nop                                           ; $44ad: $00
    ld e, l                                       ; $44ae: $5d
    add b                                         ; $44af: $80
    ld sp, hl                                     ; $44b0: $f9
    ld b, $a7                                     ; $44b1: $06 $a7
    ld e, b                                       ; $44b3: $58
    cp e                                          ; $44b4: $bb
    ld b, h                                       ; $44b5: $44
    nop                                           ; $44b6: $00
    ld l, e                                       ; $44b7: $6b
    inc b                                         ; $44b8: $04
    cp l                                          ; $44b9: $bd
    ld b, b                                       ; $44ba: $40
    ld d, a                                       ; $44bb: $57
    and b                                         ; $44bc: $a0
    sub $29                                       ; $44bd: $d6 $29
    nop                                           ; $44bf: $00
    db $ed                                        ; $44c0: $ed
    ld [de], a                                    ; $44c1: $12
    ld a, l                                       ; $44c2: $7d
    add b                                         ; $44c3: $80
    cp c                                          ; $44c4: $b9
    ld b, [hl]                                    ; $44c5: $46
    push de                                       ; $44c6: $d5
    jr nz, jr_099_44c9                            ; $44c7: $20 $00

jr_099_44c9:
    cp a                                          ; $44c9: $bf
    nop                                           ; $44ca: $00
    ld a, [hl-]                                   ; $44cb: $3a
    ld b, c                                       ; $44cc: $41
    rst $30                                       ; $44cd: $f7
    ld [$02f5], sp                                ; $44ce: $08 $f5 $02
    nop                                           ; $44d1: $00
    rst $18                                       ; $44d2: $df
    jr nz, jr_099_4498                            ; $44d3: $20 $c3

    jr z, @+$01                                   ; $44d5: $28 $ff

    nop                                           ; $44d7: $00
    xor e                                         ; $44d8: $ab
    ld d, b                                       ; $44d9: $50
    nop                                           ; $44da: $00
    cp e                                          ; $44db: $bb
    ld b, h                                       ; $44dc: $44
    ld a, [hl]                                    ; $44dd: $7e
    nop                                           ; $44de: $00
    or l                                          ; $44df: $b5
    ld c, d                                       ; $44e0: $4a
    ld e, a                                       ; $44e1: $5f

jr_099_44e2:
    and b                                         ; $44e2: $a0
    nop                                           ; $44e3: $00
    ei                                            ; $44e4: $fb

jr_099_44e5:
    nop                                           ; $44e5: $00
    ld e, [hl]                                    ; $44e6: $5e
    add b                                         ; $44e7: $80
    ei                                            ; $44e8: $fb
    inc b                                         ; $44e9: $04
    rst $10                                       ; $44ea: $d7
    jr z, jr_099_44ed                             ; $44eb: $28 $00

jr_099_44ed:
    di                                            ; $44ed: $f3
    ld [$609d], sp                                ; $44ee: $08 $9d $60
    rst $28                                       ; $44f1: $ef
    db $10                                        ; $44f2: $10
    ld l, e                                       ; $44f3: $6b
    inc b                                         ; $44f4: $04
    jr jr_099_44e5                                ; $44f5: $18 $ee

    ld de, $3d7f                                  ; $44f7: $11 $7f $3d
    dec de                                        ; $44fa: $1b
    inc b                                         ; $44fb: $04
    db $10                                        ; $44fc: $10
    rst $38                                       ; $44fd: $ff
    nop                                           ; $44fe: $00

Jump_099_44ff:
    ld d, l                                       ; $44ff: $55
    nop                                           ; $4500: $00
    xor d                                         ; $4501: $aa
    ld d, h                                       ; $4502: $54

Call_099_4503:
    cp a                                          ; $4503: $bf
    cpl                                           ; $4504: $2f

jr_099_4505:
    ld sp, hl                                     ; $4505: $f9
    ld b, b                                       ; $4506: $40
    rst $38                                       ; $4507: $ff
    add hl, hl                                    ; $4508: $29
    nop                                           ; $4509: $00
    sbc $00                                       ; $450a: $de $00
    rst $38                                       ; $450c: $ff
    ld c, [hl]                                    ; $450d: $4e
    di                                            ; $450e: $f3
    inc h                                         ; $450f: $24
    rst $38                                       ; $4510: $ff
    add b                                         ; $4511: $80
    jr nz, @+$01                                  ; $4512: $20 $ff

    ld a, [hl+]                                   ; $4514: $2a
    inc d                                         ; $4515: $14
    ld bc, $ff04                                  ; $4516: $01 $04 $ff
    ld b, [hl]                                    ; $4519: $46
    ei                                            ; $451a: $fb
    ld [hl+], a                                   ; $451b: $22
    nop                                           ; $451c: $00

Jump_099_451d:
    db $dd                                        ; $451d: $dd
    ld c, b                                       ; $451e: $48
    cp a                                          ; $451f: $bf
    jp nc, $286f                                  ; $4520: $d2 $6f $28

    rst $30                                       ; $4523: $f7
    sub l                                         ; $4524: $95
    nop                                           ; $4525: $00
    ld a, e                                       ; $4526: $7b
    add hl, bc                                    ; $4527: $09
    rst $38                                       ; $4528: $ff
    call nc, $013f                                ; $4529: $d4 $3f $01
    cp $38                                        ; $452c: $fe $38
    nop                                           ; $452e: $00
    rst $28                                       ; $452f: $ef
    ld [de], a                                    ; $4530: $12
    rst $38                                       ; $4531: $ff
    ld d, d                                       ; $4532: $52
    rst $38                                       ; $4533: $ff
    dec l                                         ; $4534: $2d
    rst $30                                       ; $4535: $f7
    sbc a                                         ; $4536: $9f
    nop                                           ; $4537: $00
    ld h, b                                       ; $4538: $60
    ld a, h                                       ; $4539: $7c
    add e                                         ; $453a: $83
    cp e                                          ; $453b: $bb
    ld b, b                                       ; $453c: $40
    ld a, d                                       ; $453d: $7a
    dec b                                         ; $453e: $05
    rst $30                                       ; $453f: $f7
    ld c, b                                       ; $4540: $48
    ld [$005e], sp                                ; $4541: $08 $5e $00
    inc b                                         ; $4544: $04
    xor [hl]                                      ; $4545: $ae
    ld d, b                                       ; $4546: $50
    nop                                           ; $4547: $00
    add d                                         ; $4548: $82
    nop                                           ; $4549: $00
    rra                                           ; $454a: $1f
    nop                                           ; $454b: $00
    and b                                         ; $454c: $a0
    ret nz                                        ; $454d: $c0

    jr nz, jr_099_4554                            ; $454e: $20 $04

    and b                                         ; $4550: $a0
    add b                                         ; $4551: $80
    jr nz, jr_099_455e                            ; $4552: $20 $0a

jr_099_4554:
    ld de, $95a0                                  ; $4554: $11 $a0 $95
    jr nz, jr_099_4505                            ; $4557: $20 $ac

    dec bc                                        ; $4559: $0b
    rst $38                                       ; $455a: $ff
    nop                                           ; $455b: $00
    and d                                         ; $455c: $a2
    db $ec                                        ; $455d: $ec

jr_099_455e:
    inc b                                         ; $455e: $04
    add b                                         ; $455f: $80
    ldh a, [$0c]                                  ; $4560: $f0 $0c
    ld d, l                                       ; $4562: $55
    nop                                           ; $4563: $00
    cp $01                                        ; $4564: $fe $01
    inc hl                                        ; $4566: $23
    nop                                           ; $4567: $00
    ld b, h                                       ; $4568: $44
    nop                                           ; $4569: $00
    add c                                         ; $456a: $81
    ld bc, $0080                                  ; $456b: $01 $80 $00
    add c                                         ; $456e: $81
    ld b, c                                       ; $456f: $41
    add b                                         ; $4570: $80
    ld b, b                                       ; $4571: $40
    nop                                           ; $4572: $00
    add c                                         ; $4573: $81
    ld d, c                                       ; $4574: $51
    add b                                         ; $4575: $80
    ld a, a                                       ; $4576: $7f

jr_099_4577:
    add b                                         ; $4577: $80
    or $09                                        ; $4578: $f6 $09
    ld c, a                                       ; $457a: $4f
    nop                                           ; $457b: $00
    or b                                          ; $457c: $b0
    xor $11                                       ; $457d: $ee $11
    ld a, [c]                                     ; $457f: $f2
    ld [$3449], sp                                ; $4580: $08 $49 $34
    db $dd                                        ; $4583: $dd
    nop                                           ; $4584: $00
    ld [bc], a                                    ; $4585: $02
    ld a, [hl]                                    ; $4586: $7e
    ld bc, $aa15                                  ; $4587: $01 $15 $aa
    add b                                         ; $458a: $80
    jr nz, @+$4c                                  ; $458b: $20 $4a

    nop                                           ; $458d: $00
    and b                                         ; $458e: $a0
    adc l                                         ; $458f: $8d
    jr nz, jr_099_459d                            ; $4590: $20 $0b

    and b                                         ; $4592: $a0
    sla b                                         ; $4593: $cb $20
    nop                                           ; $4595: $00
    ld a, [bc]                                    ; $4596: $0a
    and b                                         ; $4597: $a0
    sbc a                                         ; $4598: $9f
    jr nz, jr_099_45f0                            ; $4599: $20 $55

    add hl, sp                                    ; $459b: $39
    nop                                           ; $459c: $00

jr_099_459d:
    sub d                                         ; $459d: $92
    ld [bc], a                                    ; $459e: $02
    nop                                           ; $459f: $00
    add d                                         ; $45a0: $82
    ret nc                                        ; $45a1: $d0

    ld [bc], a                                    ; $45a2: $02
    nop                                           ; $45a3: $00
    ldh a, [$0b]                                  ; $45a4: $f0 $0b
    ld b, d                                       ; $45a6: $42
    jr c, jr_099_45a9                             ; $45a7: $38 $00

jr_099_45a9:
    ld b, d                                       ; $45a9: $42
    add c                                         ; $45aa: $81
    ld b, l                                       ; $45ab: $45
    add b                                         ; $45ac: $80
    ld b, b                                       ; $45ad: $40
    ld c, d                                       ; $45ae: $4a
    ld b, b                                       ; $45af: $40
    nop                                           ; $45b0: $00
    ld d, b                                       ; $45b1: $50
    add c                                         ; $45b2: $81
    ld c, c                                       ; $45b3: $49

jr_099_45b4:
    add b                                         ; $45b4: $80
    nop                                           ; $45b5: $00
    cp a                                          ; $45b6: $bf
    nop                                           ; $45b7: $00
    cp a                                          ; $45b8: $bf
    jr nz, jr_099_45fa                            ; $45b9: $20 $3f

    cp a                                          ; $45bb: $bf
    sbc a                                         ; $45bc: $9f
    nop                                           ; $45bd: $00
    ld b, b                                       ; $45be: $40
    add b                                         ; $45bf: $80
    sbc [hl]                                      ; $45c0: $9e
    ld d, $04                                     ; $45c1: $16 $04
    rst $38                                       ; $45c3: $ff
    xor d                                         ; $45c4: $aa
    ld e, $14                                     ; $45c5: $1e $14
    call nz, $ce05                                ; $45c7: $c4 $05 $ce
    db $10                                        ; $45ca: $10
    db $10                                        ; $45cb: $10
    ld [$0050], sp                                ; $45cc: $08 $50 $00
    add c                                         ; $45cf: $81
    pop bc                                        ; $45d0: $c1
    add b                                         ; $45d1: $80
    call nz, $c981                                ; $45d2: $c4 $81 $c9
    nop                                           ; $45d5: $00
    jr nz, jr_099_461f                            ; $45d6: $20 $47

    ld bc, $0820                                  ; $45d8: $01 $20 $08
    xor e                                         ; $45db: $ab
    rst $38                                       ; $45dc: $ff
    push de                                       ; $45dd: $d5
    pop hl                                        ; $45de: $e1
    dec b                                         ; $45df: $05
    inc b                                         ; $45e0: $04

jr_099_45e1:
    ld [$2de8], sp                                ; $45e1: $08 $e8 $2d
    ld [hl], b                                    ; $45e4: $70
    ld d, l                                       ; $45e5: $55
    inc b                                         ; $45e6: $04
    jr nz, jr_099_45e1                            ; $45e7: $20 $f8

    dec l                                         ; $45e9: $2d
    ret nz                                        ; $45ea: $c0

    ld [$8024], sp                                ; $45eb: $08 $24 $80
    ret z                                         ; $45ee: $c8

    nop                                           ; $45ef: $00

jr_099_45f0:
    ld bc, $8002                                  ; $45f0: $01 $02 $80
    sub h                                         ; $45f3: $94
    nop                                           ; $45f4: $00
    jr z, jr_099_4577                             ; $45f5: $28 $80

    sub b                                         ; $45f7: $90
    pop hl                                        ; $45f8: $e1
    inc de                                        ; $45f9: $13

jr_099_45fa:
    ld b, b                                       ; $45fa: $40
    ld de, $05ad                                  ; $45fb: $11 $ad $05
    ld b, b                                       ; $45fe: $40
    nop                                           ; $45ff: $00
    inc d                                         ; $4600: $14
    nop                                           ; $4601: $00
    jr z, jr_099_4604                             ; $4602: $28 $00

jr_099_4604:
    dec b                                         ; $4604: $05
    ld d, b                                       ; $4605: $50
    nop                                           ; $4606: $00
    nop                                           ; $4607: $00
    add b                                         ; $4608: $80
    and b                                         ; $4609: $a0
    ld l, h                                       ; $460a: $6c
    nop                                           ; $460b: $00
    add h                                         ; $460c: $84
    inc e                                         ; $460d: $1c
    nop                                           ; $460e: $00
    ld d, c                                       ; $460f: $51
    pop de                                        ; $4610: $d1
    inc c                                         ; $4611: $0c
    nop                                           ; $4612: $00
    add d                                         ; $4613: $82
    ld h, e                                       ; $4614: $63
    dec b                                         ; $4615: $05
    jr nz, jr_099_4618                            ; $4616: $20 $00

jr_099_4618:
    ld [bc], a                                    ; $4618: $02
    call $5005                                    ; $4619: $cd $05 $50
    add h                                         ; $461c: $84
    pop de                                        ; $461d: $d1
    dec b                                         ; $461e: $05

jr_099_461f:
    add hl, bc                                    ; $461f: $09
    ld a, [bc]                                    ; $4620: $0a
    ld [$8180], sp                                ; $4621: $08 $80 $81
    nop                                           ; $4624: $00
    db $10                                        ; $4625: $10
    rst $10                                       ; $4626: $d7
    inc h                                         ; $4627: $24
    db $10                                        ; $4628: $10
    sub b                                         ; $4629: $90
    jr jr_099_45b4                                ; $462a: $18 $88

    xor h                                         ; $462c: $ac
    inc d                                         ; $462d: $14
    ld c, b                                       ; $462e: $48
    sub b                                         ; $462f: $90
    jr nc, jr_099_46a2                            ; $4630: $30 $70

    ld [$4974], sp                                ; $4632: $08 $74 $49
    ret nc                                        ; $4635: $d0

    or b                                          ; $4636: $b0
    inc h                                         ; $4637: $24
    rlca                                          ; $4638: $07
    jr z, jr_099_465a                             ; $4639: $28 $1f

    ld h, b                                       ; $463b: $60
    ld e, $11                                     ; $463c: $1e $11
    add hl, de                                    ; $463e: $19
    add hl, bc                                    ; $463f: $09
    dec c                                         ; $4640: $0d
    inc bc                                        ; $4641: $03
    ld [$050f], sp                                ; $4642: $08 $0f $05
    ld b, $04                                     ; $4645: $06 $04
    add a                                         ; $4647: $87
    jp z, Jump_099_451d                           ; $4648: $ca $1d $45

    dec c                                         ; $464b: $0d
    inc bc                                        ; $464c: $03
    add b                                         ; $464d: $80
    add e                                         ; $464e: $83
    ld bc, $8087                                  ; $464f: $01 $87 $80
    ld c, [hl]                                    ; $4652: $4e
    sbc $1c                                       ; $4653: $de $1c
    and b                                         ; $4655: $a0
    dec d                                         ; $4656: $15
    ret z                                         ; $4657: $c8

    add sp, $14                                   ; $4658: $e8 $14

jr_099_465a:
    jr nz, jr_099_4684                            ; $465a: $20 $28

    add h                                         ; $465c: $84
    add a                                         ; $465d: $87
    add [hl]                                      ; $465e: $86
    dec bc                                        ; $465f: $0b
    ld b, b                                       ; $4660: $40
    ret nz                                        ; $4661: $c0

jr_099_4662:
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    inc e                                         ; $4664: $1c
    inc d                                         ; $4665: $14
    ld a, [de]                                    ; $4666: $1a
    ld [de], a                                    ; $4667: $12
    dec e                                         ; $4668: $1d
    ld a, [de]                                    ; $4669: $1a
    dec e                                         ; $466a: $1d
    add hl, de                                    ; $466b: $19
    ld bc, $1c1e                                  ; $466c: $01 $1e $1c
    rst $18                                       ; $466f: $df
    ld e, l                                       ; $4670: $5d
    cp [hl]                                       ; $4671: $be
    xor c                                         ; $4672: $a9
    sbc $80                                       ; $4673: $de $80
    ld b, $80                                     ; $4675: $06 $80
    add d                                         ; $4677: $82
    ld b, $01                                     ; $4678: $06 $01
    ld b, $02                                     ; $467a: $06 $02
    adc l                                         ; $467c: $8d
    dec b                                         ; $467d: $05
    sbc e                                         ; $467e: $9b
    dec bc                                        ; $467f: $0b
    ld b, $b7                                     ; $4680: $06 $b7
    dec e                                         ; $4682: $1d
    rst $20                                       ; $4683: $e7

jr_099_4684:
    add b                                         ; $4684: $80
    ldh [$aa], a                                  ; $4685: $e0 $aa
    inc bc                                        ; $4687: $03
    adc [hl]                                      ; $4688: $8e
    dec d                                         ; $4689: $15
    add b                                         ; $468a: $80
    ld bc, $828e                                  ; $468b: $01 $8e $82
    cp [hl]                                       ; $468e: $be
    inc d                                         ; $468f: $14
    db $ec                                        ; $4690: $ec
    ld e, $1f                                     ; $4691: $1e $1f
    jr nz, jr_099_46a3                            ; $4693: $20 $0e

    ld [$1e00], sp                                ; $4695: $08 $00 $1e
    inc d                                         ; $4698: $14
    dec de                                        ; $4699: $1b
    ld a, [bc]                                    ; $469a: $0a
    nop                                           ; $469b: $00
    sbc c                                         ; $469c: $99
    ld c, b                                       ; $469d: $48
    cp b                                          ; $469e: $b8
    nop                                           ; $469f: $00
    add c                                         ; $46a0: $81
    ld h, d                                       ; $46a1: $62

jr_099_46a2:
    ld b, d                                       ; $46a2: $42

jr_099_46a3:
    or e                                          ; $46a3: $b3
    add d                                         ; $46a4: $82
    ei                                            ; $46a5: $fb
    ld d, d                                       ; $46a6: $52
    ld l, a                                       ; $46a7: $6f
    nop                                           ; $46a8: $00
    jr nz, @+$01                                  ; $46a9: $20 $ff

    jp c, Jump_099_6535                           ; $46ab: $da $35 $65

    sbc d                                         ; $46ae: $9a
    sub d                                         ; $46af: $92
    db $ed                                        ; $46b0: $ed
    nop                                           ; $46b1: $00
    ld b, $fa                                     ; $46b2: $06 $fa
    adc b                                         ; $46b4: $88
    ld [hl], h                                    ; $46b5: $74
    ld d, h                                       ; $46b6: $54
    xor l                                         ; $46b7: $ad
    add l                                         ; $46b8: $85
    ld a, [hl]                                    ; $46b9: $7e
    nop                                           ; $46ba: $00
    ld c, d                                       ; $46bb: $4a
    or l                                          ; $46bc: $b5
    sub h                                         ; $46bd: $94
    ld l, e                                       ; $46be: $6b
    ret                                           ; $46bf: $c9


    scf                                           ; $46c0: $37
    db $e3                                        ; $46c1: $e3
    rra                                           ; $46c2: $1f
    nop                                           ; $46c3: $00
    ld c, b                                       ; $46c4: $48
    ld [hl], a                                    ; $46c5: $77
    pop bc                                        ; $46c6: $c1
    ld a, $92                                     ; $46c7: $3e $92

jr_099_46c9:
    rst $38                                       ; $46c9: $ff
    ld l, a                                       ; $46ca: $6f
    ld a, a                                       ; $46cb: $7f
    jr nz, jr_099_4662                            ; $46cc: $20 $94

    ld e, a                                       ; $46ce: $5f
    db $10                                        ; $46cf: $10
    dec e                                         ; $46d0: $1d
    ld d, d                                       ; $46d1: $52
    cp [hl]                                       ; $46d2: $be

jr_099_46d3:
    ld a, [bc]                                    ; $46d3: $0a
    or $94                                        ; $46d4: $f6 $94
    ld [$526f], sp                                ; $46d6: $08 $6f $52
    db $fd                                        ; $46d9: $fd
    or h                                          ; $46da: $b4
    db $10                                        ; $46db: $10
    dec l                                         ; $46dc: $2d
    jr nc, jr_099_46df                            ; $46dd: $30 $00

jr_099_46df:
    ld a, h                                       ; $46df: $7c
    nop                                           ; $46e0: $00
    jr jr_099_46c9                                ; $46e1: $18 $e6

    jr jr_099_46d3                                ; $46e3: $18 $ee

    add b                                         ; $46e5: $80
    cp $62                                        ; $46e6: $fe $62
    ld a, [hl]                                    ; $46e8: $7e
    jr nz, @+$1e                                  ; $46e9: $20 $1c

    inc e                                         ; $46eb: $1c
    and $0e                                       ; $46ec: $e6 $0e
    ld [hl], b                                    ; $46ee: $70
    ld [hl], b                                    ; $46ef: $70
    ld a, h                                       ; $46f0: $7c
    ld a, h                                       ; $46f1: $7c
    db $fc                                        ; $46f2: $fc
    inc bc                                        ; $46f3: $03
    call z, $ecfc                                 ; $46f4: $cc $fc $ec
    inc a                                         ; $46f7: $3c
    inc a                                         ; $46f8: $3c
    jr nc, jr_099_473d                            ; $46f9: $30 $42

    inc b                                         ; $46fb: $04
    sbc d                                         ; $46fc: $9a
    dec c                                         ; $46fd: $0d
    jr nz, @+$0b                                  ; $46fe: $20 $09

    ld sp, hl                                     ; $4700: $f9
    or d                                          ; $4701: $b2
    inc b                                         ; $4702: $04
    ret c                                         ; $4703: $d8

    sbc b                                         ; $4704: $98
    sbc b                                         ; $4705: $98
    ld e, $1e                                     ; $4706: $1e $1e
    jr nz, jr_099_4725                            ; $4708: $20 $1b

    dec de                                        ; $470a: $1b
    cp [hl]                                       ; $470b: $be
    dec c                                         ; $470c: $0d
    add h                                         ; $470d: $84
    add a                                         ; $470e: $87
    ld [bc], a                                    ; $470f: $02
    add e                                         ; $4710: $83
    ld bc, $c140                                  ; $4711: $01 $40 $c1
    ld b, b                                       ; $4714: $40
    inc b                                         ; $4715: $04
    ld h, b                                       ; $4716: $60
    nop                                           ; $4717: $00
    ldh [rHDMA4], a                               ; $4718: $e0 $54
    ld l, a                                       ; $471a: $6f
    ld a, [hl+]                                   ; $471b: $2a
    nop                                           ; $471c: $00
    scf                                           ; $471d: $37
    inc [hl]                                      ; $471e: $34
    dec sp                                        ; $471f: $3b
    ld d, $d9                                     ; $4720: $16 $d9
    ld c, e                                       ; $4722: $4b
    cp l                                          ; $4723: $bd
    or h                                          ; $4724: $b4

jr_099_4725:
    nop                                           ; $4725: $00
    rst $08                                       ; $4726: $cf
    ld e, c                                       ; $4727: $59
    ld h, [hl]                                    ; $4728: $66
    inc l                                         ; $4729: $2c

jr_099_472a:
    inc sp                                        ; $472a: $33
    inc sp                                        ; $472b: $33
    rst $08                                       ; $472c: $cf
    and [hl]                                      ; $472d: $a6
    nop                                           ; $472e: $00
    ld e, a                                       ; $472f: $5f
    ld d, l                                       ; $4730: $55
    xor [hl]                                      ; $4731: $ae
    ld l, e                                       ; $4732: $6b
    sbc h                                         ; $4733: $9c
    ld b, [hl]                                    ; $4734: $46
    cp c                                          ; $4735: $b9
    adc c                                         ; $4736: $89
    nop                                           ; $4737: $00
    rst $30                                       ; $4738: $f7
    ld d, h                                       ; $4739: $54
    rst $28                                       ; $473a: $ef
    inc b                                         ; $473b: $04
    ei                                            ; $473c: $fb

jr_099_473d:
    inc d                                         ; $473d: $14
    dec de                                        ; $473e: $1b
    ld de, $1f04                                  ; $473f: $11 $04 $1f
    ld a, [de]                                    ; $4742: $1a
    dec e                                         ; $4743: $1d
    jr jr_099_4725                                ; $4744: $18 $df

    jr nc, jr_099_4774                            ; $4746: $30 $2c

    ret z                                         ; $4748: $c8

    ld [hl], a                                    ; $4749: $77
    db $10                                        ; $474a: $10
    ld hl, $80df                                  ; $474b: $21 $df $80
    jr nc, @+$48                                  ; $474e: $30 $46

    jr z, jr_099_472a                             ; $4750: $28 $d8

    ret nc                                        ; $4752: $d0

    jr nc, jr_099_4765                            ; $4753: $30 $10

    and b                                         ; $4755: $a0
    ld h, b                                       ; $4756: $60
    jr nz, jr_099_47bf                            ; $4757: $20 $66

    inc b                                         ; $4759: $04
    ld d, b                                       ; $475a: $50
    sbc $8a                                       ; $475b: $de $8a
    db $ed                                        ; $475d: $ed
    dec bc                                        ; $475e: $0b
    ld b, l                                       ; $475f: $45
    jp z, $cfc2                                   ; $4760: $ca $c2 $cf

    ldh [$5d], a                                  ; $4763: $e0 $5d

jr_099_4765:
    cp $11                                        ; $4765: $fe $11
    ld de, $1804                                  ; $4767: $11 $04 $18
    nop                                           ; $476a: $00
    rst $38                                       ; $476b: $ff
    nop                                           ; $476c: $00
    ld d, h                                       ; $476d: $54
    xor e                                         ; $476e: $ab
    rst $38                                       ; $476f: $ff
    nop                                           ; $4770: $00
    sub c                                         ; $4771: $91
    nop                                           ; $4772: $00
    ld d, c                                       ; $4773: $51

jr_099_4774:
    ld [hl+], a                                   ; $4774: $22
    adc l                                         ; $4775: $8d
    rlca                                          ; $4776: $07
    add b                                         ; $4777: $80
    xor b                                         ; $4778: $a8
    ld hl, $00ff                                  ; $4779: $21 $ff $00
    db $10                                        ; $477c: $10
    sbc e                                         ; $477d: $9b
    rlca                                          ; $477e: $07
    ld de, $0001                                  ; $477f: $11 $01 $00
    ccf                                           ; $4782: $3f
    ret c                                         ; $4783: $d8

    ld bc, $0225                                  ; $4784: $01 $25 $02
    xor a                                         ; $4787: $af
    adc h                                         ; $4788: $8c
    rlca                                          ; $4789: $07
    ld l, b                                       ; $478a: $68
    ld [bc], a                                    ; $478b: $02
    call c, $7411                                 ; $478c: $dc $11 $74
    ld c, $55                                     ; $478f: $0e $55
    ld e, a                                       ; $4791: $5f
    ld a, [bc]                                    ; $4792: $0a
    nop                                           ; $4793: $00
    ld hl, $2000                                  ; $4794: $21 $00 $20
    ld b, d                                       ; $4797: $42
    nop                                           ; $4798: $00
    jr jr_099_47b5                                ; $4799: $18 $1a

    ld d, b                                       ; $479b: $50
    and b                                         ; $479c: $a0
    adc $31                                       ; $479d: $ce $31
    ld de, $65a8                                  ; $479f: $11 $a8 $65
    rlca                                          ; $47a2: $07
    ld bc, $0202                                  ; $47a3: $01 $02 $02
    dec b                                         ; $47a6: $05
    pop de                                        ; $47a7: $d1
    rlca                                          ; $47a8: $07
    ld [$0400], sp                                ; $47a9: $08 $00 $04
    ld a, [bc]                                    ; $47ac: $0a
    nop                                           ; $47ad: $00
    dec h                                         ; $47ae: $25
    ld [$042e], sp                                ; $47af: $08 $2e $04
    db $10                                        ; $47b2: $10
    inc h                                         ; $47b3: $24
    inc b                                         ; $47b4: $04

jr_099_47b5:
    db $10                                        ; $47b5: $10
    xor b                                         ; $47b6: $a8
    dec [hl]                                      ; $47b7: $35
    rlca                                          ; $47b8: $07
    ld d, l                                       ; $47b9: $55
    ld a, [$ee12]                                 ; $47ba: $fa $12 $ee
    rlca                                          ; $47bd: $07
    inc e                                         ; $47be: $1c

jr_099_47bf:
    ld h, a                                       ; $47bf: $67
    nop                                           ; $47c0: $00
    ld a, [hl+]                                   ; $47c1: $2a
    db $db                                        ; $47c2: $db
    rlca                                          ; $47c3: $07
    nop                                           ; $47c4: $00
    ld b, b                                       ; $47c5: $40
    sub b                                         ; $47c6: $90
    ld c, [hl]                                    ; $47c7: $4e
    dec b                                         ; $47c8: $05
    ld a, [hl-]                                   ; $47c9: $3a
    inc b                                         ; $47ca: $04
    dec bc                                        ; $47cb: $0b
    inc b                                         ; $47cc: $04
    dec h                                         ; $47cd: $25
    ld [$0230], sp                                ; $47ce: $08 $30 $02
    nop                                           ; $47d1: $00
    ld [$54f0], sp                                ; $47d2: $08 $f0 $54
    ld a, [bc]                                    ; $47d5: $0a
    add d                                         ; $47d6: $82
    jr c, jr_099_47d9                             ; $47d7: $38 $00

jr_099_47d9:
    ld b, b                                       ; $47d9: $40
    db $10                                        ; $47da: $10
    or b                                          ; $47db: $b0
    ld [hl+], a                                   ; $47dc: $22
    jr nz, jr_099_47df                            ; $47dd: $20 $00

jr_099_47df:
    rra                                           ; $47df: $1f
    jr nz, jr_099_47e2                            ; $47e0: $20 $00

jr_099_47e2:
    ccf                                           ; $47e2: $3f
    ld [hl], a                                    ; $47e3: $77
    ccf                                           ; $47e4: $3f
    ld c, d                                       ; $47e5: $4a
    nop                                           ; $47e6: $00
    ret nc                                        ; $47e7: $d0

    ld [hl+], a                                   ; $47e8: $22
    ret z                                         ; $47e9: $c8

    ld [de], a                                    ; $47ea: $12
    rst $38                                       ; $47eb: $ff
    nop                                           ; $47ec: $00
    inc bc                                        ; $47ed: $03
    db $10                                        ; $47ee: $10
    ld e, b                                       ; $47ef: $58
    jr jr_099_480a                                ; $47f0: $18 $18

    call nz, $1a50                                ; $47f2: $c4 $50 $1a
    call nc, $0458                                ; $47f5: $d4 $58 $04
    nop                                           ; $47f8: $00
    ld a, [bc]                                    ; $47f9: $0a
    call nz, $c000                                ; $47fa: $c4 $00 $c0
    nop                                           ; $47fd: $00
    ld a, [de]                                    ; $47fe: $1a
    ld h, h                                       ; $47ff: $64
    nop                                           ; $4800: $00
    ld h, b                                       ; $4801: $60
    ld [bc], a                                    ; $4802: $02
    nop                                           ; $4803: $00
    db $10                                        ; $4804: $10
    ld [$b048], sp                                ; $4805: $08 $48 $b0
    nop                                           ; $4808: $00
    inc b                                         ; $4809: $04

jr_099_480a:
    xor d                                         ; $480a: $aa
    cp [hl]                                       ; $480b: $be
    ld [de], a                                    ; $480c: $12
    jr nz, jr_099_4841                            ; $480d: $20 $32

    rlca                                          ; $480f: $07
    ld bc, $10f0                                  ; $4810: $01 $f0 $10
    add c                                         ; $4813: $81
    adc $12                                       ; $4814: $ce $12
    and b                                         ; $4816: $a0
    ret nc                                        ; $4817: $d0

    sub b                                         ; $4818: $90
    dec de                                        ; $4819: $1b
    xor l                                         ; $481a: $ad

jr_099_481b:
    rlca                                          ; $481b: $07
    nop                                           ; $481c: $00
    inc b                                         ; $481d: $04
    db $10                                        ; $481e: $10
    sub c                                         ; $481f: $91
    nop                                           ; $4820: $00
    ld h, b                                       ; $4821: $60
    add b                                         ; $4822: $80
    inc c                                         ; $4823: $0c
    ld h, c                                       ; $4824: $61
    add b                                         ; $4825: $80
    ld h, h                                       ; $4826: $64
    add b                                         ; $4827: $80
    ld b, $00                                     ; $4828: $06 $00
    ld a, $00                                     ; $482a: $3e $00
    ld h, h                                       ; $482c: $64
    nop                                           ; $482d: $00
    ld d, c                                       ; $482e: $51
    ld l, b                                       ; $482f: $68
    dec a                                         ; $4830: $3d
    ld [bc], a                                    ; $4831: $02
    ld b, b                                       ; $4832: $40
    ld e, l                                       ; $4833: $5d
    rlca                                          ; $4834: $07
    ld [$5100], sp                                ; $4835: $08 $00 $51
    call nz, Call_099_4503                        ; $4838: $c4 $03 $45
    nop                                           ; $483b: $00
    ldh [rP1], a                                  ; $483c: $e0 $00
    nop                                           ; $483e: $00
    nop                                           ; $483f: $00
    ld b, c                                       ; $4840: $41

jr_099_4841:
    ld b, $10                                     ; $4841: $06 $10
    ld [$0784], sp                                ; $4843: $08 $84 $07
    ld d, b                                       ; $4846: $50
    ld [de], a                                    ; $4847: $12
    ldh a, [rP1]                                  ; $4848: $f0 $00
    ld [hl+], a                                   ; $484a: $22
    jp hl                                         ; $484b: $e9


    rlca                                          ; $484c: $07
    ld [bc], a                                    ; $484d: $02
    ld bc, $0005                                  ; $484e: $01 $05 $00
    ld b, b                                       ; $4851: $40
    ld a, [bc]                                    ; $4852: $0a
    pop af                                        ; $4853: $f1
    rlca                                          ; $4854: $07
    db $10                                        ; $4855: $10
    ld bc, $0009                                  ; $4856: $01 $09 $00
    jr nz, jr_099_489b                            ; $4859: $20 $40

    ld b, $a0                                     ; $485b: $06 $a0
    ld b, b                                       ; $485d: $40
    ld [hl+], a                                   ; $485e: $22
    ret nz                                        ; $485f: $c0

    db $e4                                        ; $4860: $e4
    ret nc                                        ; $4861: $d0

    jr nc, jr_099_4880                            ; $4862: $30 $1c

    add hl, bc                                    ; $4864: $09
    jr nz, jr_099_481b                            ; $4865: $20 $b4

    ld a, $03                                     ; $4867: $3e $03
    add c                                         ; $4869: $81
    sub b                                         ; $486a: $90
    inc hl                                        ; $486b: $23
    ld e, [hl]                                    ; $486c: $5e
    add hl, de                                    ; $486d: $19
    sub b                                         ; $486e: $90
    ret nz                                        ; $486f: $c0

    jr nc, jr_099_48c2                            ; $4870: $30 $50

    ld bc, $a118                                  ; $4872: $01 $18 $a1
    nop                                           ; $4875: $00
    inc b                                         ; $4876: $04
    jr c, jr_099_4881                             ; $4877: $38 $08

    and b                                         ; $4879: $a0
    inc hl                                        ; $487a: $23
    ld d, c                                       ; $487b: $51
    cp $30                                        ; $487c: $fe $30
    nop                                           ; $487e: $00
    rst $28                                       ; $487f: $ef

jr_099_4880:
    adc [hl]                                      ; $4880: $8e

jr_099_4881:
    ld a, l                                       ; $4881: $7d
    adc b                                         ; $4882: $88
    rst $38                                       ; $4883: $ff
    cp c                                          ; $4884: $b9
    ld [hl], a                                    ; $4885: $77
    ld a, [de]                                    ; $4886: $1a
    nop                                           ; $4887: $00
    rst $38                                       ; $4888: $ff
    ld a, [hl-]                                   ; $4889: $3a
    rst $30                                       ; $488a: $f7
    ld b, e                                       ; $488b: $43
    db $fd                                        ; $488c: $fd
    or b                                          ; $488d: $b0
    rst $38                                       ; $488e: $ff
    ld b, c                                       ; $488f: $41
    nop                                           ; $4890: $00
    cp $2a                                        ; $4891: $fe $2a
    push de                                       ; $4893: $d5
    db $10                                        ; $4894: $10
    rst $28                                       ; $4895: $ef
    ld b, h                                       ; $4896: $44
    ei                                            ; $4897: $fb
    jr z, jr_099_490a                             ; $4898: $28 $70

    rst $10                                       ; $489a: $d7

jr_099_489b:
    cpl                                           ; $489b: $2f
    dec b                                         ; $489c: $05
    or b                                          ; $489d: $b0
    inc de                                        ; $489e: $13
    ret nz                                        ; $489f: $c0

    ld c, e                                       ; $48a0: $4b
    nop                                           ; $48a1: $00
    ld h, b                                       ; $48a2: $60
    ld b, b                                       ; $48a3: $40
    ld a, b                                       ; $48a4: $78
    nop                                           ; $48a5: $00
    ld e, b                                       ; $48a6: $58
    ld h, h                                       ; $48a7: $64
    ld l, h                                       ; $48a8: $6c
    ld [hl], d                                    ; $48a9: $72
    ld d, [hl]                                    ; $48aa: $56
    ld a, c                                       ; $48ab: $79
    ld d, d                                       ; $48ac: $52
    ld l, l                                       ; $48ad: $6d
    ld [$322d], sp                                ; $48ae: $08 $2d $32
    ld h, $39                                     ; $48b1: $26 $39
    ld l, a                                       ; $48b3: $6f
    inc de                                        ; $48b4: $13
    rlca                                          ; $48b5: $07
    dec b                                         ; $48b6: $05
    dec bc                                        ; $48b7: $0b
    nop                                           ; $48b8: $00
    rrca                                          ; $48b9: $0f
    inc de                                        ; $48ba: $13
    dec e                                         ; $48bb: $1d
    daa                                           ; $48bc: $27
    or c                                          ; $48bd: $b1
    rst $08                                       ; $48be: $cf
    ld a, [hl+]                                   ; $48bf: $2a
    sub $00                                       ; $48c0: $d6 $00

jr_099_48c2:
    ld [de], a                                    ; $48c2: $12
    dec e                                         ; $48c3: $1d
    inc c                                         ; $48c4: $0c
    rrca                                          ; $48c5: $0f
    inc bc                                        ; $48c6: $03
    inc bc                                        ; $48c7: $03
    ld b, c                                       ; $48c8: $41
    ld a, l                                       ; $48c9: $7d
    nop                                           ; $48ca: $00
    ld e, l                                       ; $48cb: $5d
    ld h, e                                       ; $48cc: $63
    ld l, $31                                     ; $48cd: $2e $31
    inc hl                                        ; $48cf: $23
    inc a                                         ; $48d0: $3c
    rla                                           ; $48d1: $17
    ld a, [de]                                    ; $48d2: $1a
    nop                                           ; $48d3: $00
    ld [$5a96], a                                 ; $48d4: $ea $96 $5a
    and [hl]                                      ; $48d7: $a6
    inc [hl]                                      ; $48d8: $34
    call z, $9ce4                                 ; $48d9: $cc $e4 $9c
    nop                                           ; $48dc: $00
    ld c, b                                       ; $48dd: $48
    cp b                                          ; $48de: $b8
    sub b                                         ; $48df: $90
    rst $30                                       ; $48e0: $f7
    ld h, l                                       ; $48e1: $65
    ei                                            ; $48e2: $fb
    reti                                          ; $48e3: $d9


    rst $20                                       ; $48e4: $e7
    db $ec                                        ; $48e5: $ec
    db $f4                                        ; $48e6: $f4
    inc c                                         ; $48e7: $0c
    dec sp                                        ; $48e8: $3b
    inc b                                         ; $48e9: $04
    ld [$4004], a                                 ; $48ea: $ea $04 $40
    jr nz, jr_099_48f5                            ; $48ed: $20 $06

    ld e, c                                       ; $48ef: $59
    ld de, $1c3c                                  ; $48f0: $11 $3c $1c
    nop                                           ; $48f3: $00
    ld h, d                                       ; $48f4: $62

jr_099_48f5:
    ld [hl+], a                                   ; $48f5: $22
    ld e, l                                       ; $48f6: $5d
    dec a                                         ; $48f7: $3d
    jp nz, $9d62                                  ; $48f8: $c2 $62 $9d

    ld e, [hl]                                    ; $48fb: $5e
    db $10                                        ; $48fc: $10
    cp a                                          ; $48fd: $bf
    ld h, e                                       ; $48fe: $63
    db $e3                                        ; $48ff: $e3
    cp l                                          ; $4900: $bd
    add hl, de                                    ; $4901: $19
    nop                                           ; $4902: $00
    jr c, jr_099_493d                             ; $4903: $38 $38

    call nz, $cc00                                ; $4905: $c4 $00 $cc
    ld [hl-], a                                   ; $4908: $32
    ld [hl], h                                    ; $4909: $74

jr_099_490a:
    adc d                                         ; $490a: $8a
    ld c, d                                       ; $490b: $4a
    or l                                          ; $490c: $b5
    add c                                         ; $490d: $81
    add c                                         ; $490e: $81
    nop                                           ; $490f: $00
    nop                                           ; $4910: $00
    rrca                                          ; $4911: $0f
    dec e                                         ; $4912: $1d
    inc hl                                        ; $4913: $23
    ld l, $51                                     ; $4914: $2e $51
    ld de, $006f                                  ; $4916: $11 $6f $00
    cpl                                           ; $4919: $2f
    rst $18                                       ; $491a: $df
    ld e, c                                       ; $491b: $59
    cp c                                          ; $491c: $b9
    ld sp, $b4f1                                  ; $491d: $31 $f1 $b4
    ei                                            ; $4920: $fb
    ld [$fdfa], sp                                ; $4921: $08 $fa $fd
    adc h                                         ; $4924: $8c
    adc a                                         ; $4925: $8f
    jp nz, $f302                                  ; $4926: $c2 $02 $f3

    db $e3                                        ; $4929: $e3
    sbc e                                         ; $492a: $9b
    ld bc, $c931                                  ; $492b: $01 $31 $c9
    ret c                                         ; $492e: $d8

    and h                                         ; $492f: $a4
    ld a, [hl]                                    ; $4930: $7e
    add c                                         ; $4931: $81
    ld a, a                                       ; $4932: $7f
    call nc, $f804                                ; $4933: $d4 $04 $f8
    inc b                                         ; $4936: $04
    jr jr_099_48f5                                ; $4937: $18 $bc

    inc b                                         ; $4939: $04
    sub b                                         ; $493a: $90
    inc e                                         ; $493b: $1c
    ld [bc], a                                    ; $493c: $02

jr_099_493d:
    jr nz, jr_099_494f                            ; $493d: $20 $10

    ld [$0d0b], sp                                ; $493f: $08 $0b $0d
    inc b                                         ; $4942: $04
    jr jr_099_494c                                ; $4943: $18 $07

    inc bc                                        ; $4945: $03
    inc bc                                        ; $4946: $03
    and $1b                                       ; $4947: $e6 $1b
    db $ec                                        ; $4949: $ec
    dec bc                                        ; $494a: $0b
    ld [hl-], a                                   ; $494b: $32

jr_099_494c:
    adc $ea                                       ; $494c: $ce $ea
    nop                                           ; $494e: $00

jr_099_494f:
    sub [hl]                                      ; $494f: $96
    ld [hl], h                                    ; $4950: $74
    xor h                                         ; $4951: $ac
    ld l, b                                       ; $4952: $68
    ret c                                         ; $4953: $d8

    sub b                                         ; $4954: $90
    ldh a, [$e0]                                  ; $4955: $f0 $e0
    ld b, c                                       ; $4957: $41
    ldh [$ec], a                                  ; $4958: $e0 $ec
    dec bc                                        ; $495a: $0b
    jp Jump_099_7f01                              ; $495b: $c3 $01 $7f


    ld a, a                                       ; $495e: $7f
    ld b, c                                       ; $495f: $41
    ld [bc], a                                    ; $4960: $02
    stop                                          ; $4961: $10 $00
    ld b, b                                       ; $4963: $40
    ld a, a                                       ; $4964: $7f
    and b                                         ; $4965: $a0
    ld b, b                                       ; $4966: $40
    ld a, a                                       ; $4967: $7f
    add b                                         ; $4968: $80
    pop bc                                        ; $4969: $c1
    add b                                         ; $496a: $80
    ld de, $fefe                                  ; $496b: $11 $fe $fe
    add b                                         ; $496e: $80
    ld [bc], a                                    ; $496f: $02
    stop                                          ; $4970: $10 $00
    cp $03                                        ; $4972: $fe $03
    ld a, $05                                     ; $4974: $3e $05
    nop                                           ; $4976: $00
    and c                                         ; $4977: $a1
    pop hl                                        ; $4978: $e1
    ld b, b                                       ; $4979: $40
    rst $08                                       ; $497a: $cf
    adc [hl]                                      ; $497b: $8e
    sub c                                         ; $497c: $91
    ld b, $1f                                     ; $497d: $06 $1f
    db $10                                        ; $497f: $10
    add hl, bc                                    ; $4980: $09
    add hl, de                                    ; $4981: $19
    ld de, $0001                                  ; $4982: $11 $01 $00
    ld bc, $2801                                  ; $4985: $01 $01 $28
    call nc, $5800                                ; $4988: $d4 $00 $58
    db $e4                                        ; $498b: $e4
    ld l, b                                       ; $498c: $68
    db $f4                                        ; $498d: $f4
    or b                                          ; $498e: $b0
    cp h                                          ; $498f: $bc
    adc b                                         ; $4990: $88
    adc h                                         ; $4991: $8c
    jr c, @-$7a                                   ; $4992: $38 $84

    add h                                         ; $4994: $84
    inc l                                         ; $4995: $2c
    inc c                                         ; $4996: $0c
    call nc, $eb0a                                ; $4997: $d4 $0a $eb
    inc b                                         ; $499a: $04
    rst $38                                       ; $499b: $ff
    ld bc, $10ff                                  ; $499c: $01 $ff $10
    ld [bc], a                                    ; $499f: $02
    rst $38                                       ; $49a0: $ff
    dec b                                         ; $49a1: $05
    add hl, bc                                    ; $49a2: $09
    dec b                                         ; $49a3: $05
    sub c                                         ; $49a4: $91
    ld l, [hl]                                    ; $49a5: $6e
    ld a, [bc]                                    ; $49a6: $0a
    rst $38                                       ; $49a7: $ff
    nop                                           ; $49a8: $00
    cp e                                          ; $49a9: $bb
    rst $30                                       ; $49aa: $f7
    ld [hl], l                                    ; $49ab: $75
    sbc $83                                       ; $49ac: $de $83
    ld a, l                                       ; $49ae: $7d
    dec b                                         ; $49af: $05
    cp $00                                        ; $49b0: $fe $00
    ld b, e                                       ; $49b2: $43
    rst $38                                       ; $49b3: $ff
    and c                                         ; $49b4: $a1
    ld e, a                                       ; $49b5: $5f
    nop                                           ; $49b6: $00
    rlca                                          ; $49b7: $07
    inc b                                         ; $49b8: $04

jr_099_49b9:
    dec bc                                        ; $49b9: $0b
    nop                                           ; $49ba: $00
    ld a, [hl+]                                   ; $49bb: $2a
    dec [hl]                                      ; $49bc: $35
    ld e, l                                       ; $49bd: $5d
    ld h, d                                       ; $49be: $62
    xor e                                         ; $49bf: $ab
    call nc, $fb84                                ; $49c0: $d4 $84 $fb
    nop                                           ; $49c3: $00
    and c                                         ; $49c4: $a1
    cp $da                                        ; $49c5: $fe $da
    rst $38                                       ; $49c7: $ff
    nop                                           ; $49c8: $00
    ld hl, sp-$50                                 ; $49c9: $f8 $b0
    ld c, h                                       ; $49cb: $4c
    nop                                           ; $49cc: $00
    jp c, $a426                                   ; $49cd: $da $26 $a4

    ld e, d                                       ; $49d0: $5a
    ld [de], a                                    ; $49d1: $12
    xor $86                                       ; $49d2: $ee $86
    ld a, [hl]                                    ; $49d4: $7e
    nop                                           ; $49d5: $00
    inc l                                         ; $49d6: $2c
    db $fc                                        ; $49d7: $fc
    ld e, d                                       ; $49d8: $5a
    cp $6c                                        ; $49d9: $fe $6c
    ld a, a                                       ; $49db: $7f
    dec [hl]                                      ; $49dc: $35
    ccf                                           ; $49dd: $3f
    nop                                           ; $49de: $00
    jr z, jr_099_4a18                             ; $49df: $28 $37

    ld e, $21                                     ; $49e1: $1e $21
    ld c, l                                       ; $49e3: $4d
    ld [hl], d                                    ; $49e4: $72
    rla                                           ; $49e5: $17
    ld l, b                                       ; $49e6: $68
    nop                                           ; $49e7: $00
    ld b, l                                       ; $49e8: $45
    ld a, d                                       ; $49e9: $7a
    ld h, b                                       ; $49ea: $60
    ld a, a                                       ; $49eb: $7f
    and l                                         ; $49ec: $a5
    ei                                            ; $49ed: $fb
    ld [$00f7], sp                                ; $49ee: $08 $f7 $00
    ld l, $d1                                     ; $49f1: $2e $d1
    push de                                       ; $49f3: $d5
    dec hl                                        ; $49f4: $2b
    ld l, b                                       ; $49f5: $68
    sub a                                         ; $49f6: $97
    ld sp, $02cf                                  ; $49f7: $31 $cf $02
    inc bc                                        ; $49fa: $03
    rst $38                                       ; $49fb: $ff
    ld b, l                                       ; $49fc: $45
    cp a                                          ; $49fd: $bf
    nop                                           ; $49fe: $00
    ld [$0c98], sp                                ; $49ff: $08 $98 $0c
    ld [bc], a                                    ; $4a02: $02
    nop                                           ; $4a03: $00
    inc bc                                        ; $4a04: $03
    ld bc, $3839                                  ; $4a05: $01 $39 $38
    inc h                                         ; $4a08: $24
    inc d                                         ; $4a09: $14
    dec de                                        ; $4a0a: $1b
    dec c                                         ; $4a0b: $0d
    ld b, b                                       ; $4a0c: $40
    ld c, $df                                     ; $4a0d: $0e $df
    dec b                                         ; $4a0f: $05
    jr jr_099_4a22                                ; $4a10: $18 $10

    xor b                                         ; $4a12: $a8
    xor b                                         ; $4a13: $a8
    ld e, b                                       ; $4a14: $58
    ld d, b                                       ; $4a15: $50
    nop                                           ; $4a16: $00
    or b                                          ; $4a17: $b0

jr_099_4a18:
    ld h, b                                       ; $4a18: $60
    ldh [$80], a                                  ; $4a19: $e0 $80
    ld [hl], b                                    ; $4a1b: $70
    ret nz                                        ; $4a1c: $c0

    inc h                                         ; $4a1d: $24
    ld a, [hl+]                                   ; $4a1e: $2a
    nop                                           ; $4a1f: $00
    scf                                           ; $4a20: $37
    dec d                                         ; $4a21: $15

jr_099_4a22:
    ld a, [de]                                    ; $4a22: $1a
    inc c                                         ; $4a23: $0c
    rrca                                          ; $4a24: $0f
    ld e, d                                       ; $4a25: $5a
    ld h, l                                       ; $4a26: $65
    cpl                                           ; $4a27: $2f
    nop                                           ; $4a28: $00
    jr nc, jr_099_4a44                            ; $4a29: $30 $19

    ld e, $0d                                     ; $4a2b: $1e $0d
    ld c, $07                                     ; $4a2d: $0e $07
    jr c, jr_099_49b9                             ; $4a2f: $38 $88

    nop                                           ; $4a31: $00
    ld [hl], h                                    ; $4a32: $74
    inc [hl]                                      ; $4a33: $34
    call z, $f818                                 ; $4a34: $cc $18 $f8
    and b                                         ; $4a37: $a0
    ld h, b                                       ; $4a38: $60
    ld c, l                                       ; $4a39: $4d
    ld b, $b3                                     ; $4a3a: $06 $b3
    ld [hl], $ce                                  ; $4a3c: $36 $ce
    ld a, h                                       ; $4a3e: $7c
    cp h                                          ; $4a3f: $bc
    ld [c], a                                     ; $4a40: $e2
    inc bc                                        ; $4a41: $03
    adc [hl]                                      ; $4a42: $8e
    inc c                                         ; $4a43: $0c

jr_099_4a44:
    ld [bc], a                                    ; $4a44: $02
    nop                                           ; $4a45: $00
    inc b                                         ; $4a46: $04
    rlca                                          ; $4a47: $07
    ld bc, $0406                                  ; $4a48: $01 $06 $04
    rlca                                          ; $4a4b: $07
    dec b                                         ; $4a4c: $05
    rlca                                          ; $4a4d: $07
    ld [$3b02], sp                                ; $4a4e: $08 $02 $3b
    nop                                           ; $4a51: $00
    ret nz                                        ; $4a52: $c0

    ld l, l                                       ; $4a53: $6d
    ld [bc], a                                    ; $4a54: $02
    ld h, b                                       ; $4a55: $60
    ret nz                                        ; $4a56: $c0

    ld l, $00                                     ; $4a57: $2e $00
    inc b                                         ; $4a59: $04
    db $eb                                        ; $4a5a: $eb
    ld l, d                                       ; $4a5b: $6a
    or l                                          ; $4a5c: $b5
    inc c                                         ; $4a5d: $0c
    di                                            ; $4a5e: $f3
    xor c                                         ; $4a5f: $a9
    rst $30                                       ; $4a60: $f7
    nop                                           ; $4a61: $00
    ld de, $386d                                  ; $4a62: $11 $6d $38
    ld b, h                                       ; $4a65: $44
    or b                                          ; $4a66: $b0
    call z, $dce4                                 ; $4a67: $cc $e4 $dc
    nop                                           ; $4a6a: $00
    adc b                                         ; $4a6b: $88
    rst $38                                       ; $4a6c: $ff
    ld [c], a                                     ; $4a6d: $e2
    db $dd                                        ; $4a6e: $dd
    ld c, e                                       ; $4a6f: $4b
    ld a, h                                       ; $4a70: $7c
    ld h, [hl]                                    ; $4a71: $66
    ld a, l                                       ; $4a72: $7d
    nop                                           ; $4a73: $00
    ld d, d                                       ; $4a74: $52
    db $dd                                        ; $4a75: $dd
    ret                                           ; $4a76: $c9


    rst $18                                       ; $4a77: $df
    push de                                       ; $4a78: $d5
    rst $18                                       ; $4a79: $df
    sbc $de                                       ; $4a7a: $de $de
    nop                                           ; $4a7c: $00
    ret c                                         ; $4a7d: $d8

    ret c                                         ; $4a7e: $d8

    ld [hl], b                                    ; $4a7f: $70
    db $fc                                        ; $4a80: $fc
    ld l, b                                       ; $4a81: $68
    or $84                                        ; $4a82: $f6 $84
    ld e, d                                       ; $4a84: $5a
    nop                                           ; $4a85: $00
    ld d, l                                       ; $4a86: $55
    ld a, a                                       ; $4a87: $7f
    ld l, [hl]                                    ; $4a88: $6e
    ld a, a                                       ; $4a89: $7f
    ccf                                           ; $4a8a: $3f
    ccf                                           ; $4a8b: $3f
    dec de                                        ; $4a8c: $1b
    rra                                           ; $4a8d: $1f
    ld h, b                                       ; $4a8e: $60
    ld c, $d6                                     ; $4a8f: $0e $d6
    ld bc, $0d2c                                  ; $4a91: $01 $2c $0d
    ld a, [hl+]                                   ; $4a94: $2a
    cp $fc                                        ; $4a95: $fe $fc
    db $fc                                        ; $4a97: $fc
    xor b                                         ; $4a98: $a8
    ld [$d8f8], sp                                ; $4a99: $08 $f8 $d8
    ld hl, sp-$10                                 ; $4a9c: $f8 $f0
    ld b, b                                       ; $4a9e: $40
    ld hl, $c6b9                                  ; $4a9f: $21 $b9 $c6
    halt                                          ; $4aa2: $76
    nop                                           ; $4aa3: $00
    ld a, a                                       ; $4aa4: $7f
    ld a, [de]                                    ; $4aa5: $1a
    dec e                                         ; $4aa6: $1d
    inc b                                         ; $4aa7: $04
    dec bc                                        ; $4aa8: $0b
    inc bc                                        ; $4aa9: $03
    rrca                                          ; $4aaa: $0f
    dec c                                         ; $4aab: $0d
    ld b, b                                       ; $4aac: $40
    dec e                                         ; $4aad: $1d
    jr nz, jr_099_4ab9                            ; $4aae: $20 $09

    ld a, [de]                                    ; $4ab0: $1a
    and $64                                       ; $4ab1: $e6 $64
    sbc h                                         ; $4ab3: $9c
    cp b                                          ; $4ab4: $b8
    ld a, b                                       ; $4ab5: $78
    nop                                           ; $4ab6: $00
    ld b, b                                       ; $4ab7: $40
    and b                                         ; $4ab8: $a0

jr_099_4ab9:
    ret nz                                        ; $4ab9: $c0

    ldh a, [$a0]                                  ; $4aba: $f0 $a0
    or b                                          ; $4abc: $b0
    sub b                                         ; $4abd: $90
    sub b                                         ; $4abe: $90
    nop                                           ; $4abf: $00
    add b                                         ; $4ac0: $80
    add b                                         ; $4ac1: $80
    add hl, de                                    ; $4ac2: $19
    ld e, $0c                                     ; $4ac3: $1e $0c
    rrca                                          ; $4ac5: $0f
    dec b                                         ; $4ac6: $05
    rlca                                          ; $4ac7: $07
    ld b, b                                       ; $4ac8: $40
    ld b, $84                                     ; $4ac9: $06 $84
    ld sp, $d24c                                  ; $4acb: $31 $4c $d2
    sub h                                         ; $4ace: $94
    jp c, $de5a                                   ; $4acf: $da $5a $de

    inc bc                                        ; $4ad2: $03
    sub h                                         ; $4ad3: $94
    sbc h                                         ; $4ad4: $9c
    cp b                                          ; $4ad5: $b8
    cp b                                          ; $4ad6: $b8
    ldh a, [$f0]                                  ; $4ad7: $f0 $f0
    adc h                                         ; $4ad9: $8c
    inc c                                         ; $4ada: $0c
    push hl                                       ; $4adb: $e5
    ld [de], a                                    ; $4adc: $12
    nop                                           ; $4add: $00
    inc c                                         ; $4ade: $0c
    ld [$0016], sp                                ; $4adf: $08 $16 $00
    ld e, $08                                     ; $4ae2: $1e $08
    ld [hl], $1c                                  ; $4ae4: $36 $1c
    ld de, $1823                                  ; $4ae6: $11 $23 $18
    daa                                           ; $4ae9: $27
    nop                                           ; $4aea: $00
    ld [hl+], a                                   ; $4aeb: $22
    stop                                          ; $4aec: $10 $00
    jr @-$16                                      ; $4aee: $18 $e8

    nop                                           ; $4af0: $00
    nop                                           ; $4af1: $00
    jr z, jr_099_4af4                             ; $4af2: $28 $00

jr_099_4af4:
    jr c, jr_099_4b02                             ; $4af4: $38 $0c

    ld [hl], e                                    ; $4af6: $73
    inc e                                         ; $4af7: $1c
    ld h, e                                       ; $4af8: $63
    ld c, [hl]                                    ; $4af9: $4e
    nop                                           ; $4afa: $00
    ld [hl], c                                    ; $4afb: $71
    ld d, [hl]                                    ; $4afc: $56
    ld l, c                                       ; $4afd: $69
    ld c, d                                       ; $4afe: $4a
    ld [hl], l                                    ; $4aff: $75
    ld h, [hl]                                    ; $4b00: $66
    ld a, c                                       ; $4b01: $79

jr_099_4b02:
    ld [hl], d                                    ; $4b02: $72
    nop                                           ; $4b03: $00
    ld a, l                                       ; $4b04: $7d
    add hl, hl                                    ; $4b05: $29
    ld a, $10                                     ; $4b06: $3e $10
    inc l                                         ; $4b08: $2c
    jr c, jr_099_4b4f                             ; $4b09: $38 $44

    jr nc, jr_099_4b0d                            ; $4b0b: $30 $00

jr_099_4b0d:
    call z, $dc24                                 ; $4b0d: $cc $24 $dc
    inc d                                         ; $4b10: $14
    db $ec                                        ; $4b11: $ec
    and h                                         ; $4b12: $a4
    call c, Call_000_00cc                         ; $4b13: $dc $cc $00
    cp h                                          ; $4b16: $bc
    sub h                                         ; $4b17: $94
    db $fc                                        ; $4b18: $fc
    nop                                           ; $4b19: $00
    nop                                           ; $4b1a: $00
    inc c                                         ; $4b1b: $0c
    nop                                           ; $4b1c: $00
    add hl, bc                                    ; $4b1d: $09
    nop                                           ; $4b1e: $00
    ld c, $06                                     ; $4b1f: $0e $06
    rlca                                          ; $4b21: $07
    ld bc, $1801                                  ; $4b22: $01 $01 $18
    inc h                                         ; $4b25: $24
    jr jr_099_4b28                                ; $4b26: $18 $00

jr_099_4b28:
    ld a, [hl]                                    ; $4b28: $7e
    ld b, $5c                                     ; $4b29: $06 $5c
    nop                                           ; $4b2b: $00
    inc bc                                        ; $4b2c: $03
    ld [bc], a                                    ; $4b2d: $02
    dec b                                         ; $4b2e: $05
    inc b                                         ; $4b2f: $04
    nop                                           ; $4b30: $00
    dec bc                                        ; $4b31: $0b
    adc c                                         ; $4b32: $89
    rla                                           ; $4b33: $17
    dec de                                        ; $4b34: $1b

jr_099_4b35:
    and l                                         ; $4b35: $a5
    rla                                           ; $4b36: $17
    xor c                                         ; $4b37: $a9
    scf                                           ; $4b38: $37
    nop                                           ; $4b39: $00
    ret                                           ; $4b3a: $c9


    xor l                                         ; $4b3b: $ad
    db $d3                                        ; $4b3c: $d3
    ld [bc], a                                    ; $4b3d: $02
    ld c, b                                       ; $4b3e: $48
    ld b, b                                       ; $4b3f: $40
    ld a, d                                       ; $4b40: $7a
    ld [hl-], a                                   ; $4b41: $32
    nop                                           ; $4b42: $00
    ld [hl], $02                                  ; $4b43: $36 $02
    ld b, $04                                     ; $4b45: $06 $04
    inc c                                         ; $4b47: $0c
    ld [$1018], sp                                ; $4b48: $08 $18 $10
    add b                                         ; $4b4b: $80
    ld l, h                                       ; $4b4c: $6c
    inc b                                         ; $4b4d: $04
    xor [hl]                                      ; $4b4e: $ae

jr_099_4b4f:
    jp nc, Jump_099_621e                          ; $4b4f: $d2 $1e $62

    jp c, Jump_099_5aa6                           ; $4b52: $da $a6 $5a

    nop                                           ; $4b55: $00
    and [hl]                                      ; $4b56: $a6
    sub h                                         ; $4b57: $94
    db $ec                                        ; $4b58: $ec
    inc a                                         ; $4b59: $3c
    call z, $d8a8                                 ; $4b5a: $cc $a8 $d8
    ret c                                         ; $4b5d: $d8

    ld c, b                                       ; $4b5e: $48
    cp b                                          ; $4b5f: $b8
    and d                                         ; $4b60: $a2
    inc c                                         ; $4b61: $0c
    db $fc                                        ; $4b62: $fc
    inc bc                                        ; $4b63: $03
    inc b                                         ; $4b64: $04
    jr z, jr_099_4be5                             ; $4b65: $28 $7e

    add c                                         ; $4b67: $81
    inc [hl]                                      ; $4b68: $34
    inc bc                                        ; $4b69: $03
    ccf                                           ; $4b6a: $3f
    ld a, [de]                                    ; $4b6b: $1a
    rra                                           ; $4b6c: $1f
    rrca                                          ; $4b6d: $0f
    rrca                                          ; $4b6e: $0f
    rlca                                          ; $4b6f: $07
    inc [hl]                                      ; $4b70: $34
    ld [hl-], a                                   ; $4b71: $32
    db $ec                                        ; $4b72: $ec
    ld [$b018], sp                                ; $4b73: $08 $18 $b0
    ldh a, [$d0]                                  ; $4b76: $f0 $d0
    ld l, $02                                     ; $4b78: $2e $02
    ld a, [hl-]                                   ; $4b7a: $3a
    dec c                                         ; $4b7b: $0d
    add b                                         ; $4b7c: $80
    add b                                         ; $4b7d: $80
    cp a                                          ; $4b7e: $bf
    db $10                                        ; $4b7f: $10
    ret nz                                        ; $4b80: $c0

    ld e, a                                       ; $4b81: $5f
    and b                                         ; $4b82: $a0
    inc b                                         ; $4b83: $04
    jr z, jr_099_4b35                             ; $4b84: $28 $af

    ret nc                                        ; $4b86: $d0

    push de                                       ; $4b87: $d5
    rst $38                                       ; $4b88: $ff
    ld [$01fa], sp                                ; $4b89: $08 $fa $01
    or $01                                        ; $4b8c: $f6 $01
    inc b                                         ; $4b8e: $04

jr_099_4b8f:
    jr z, jr_099_4b8f                             ; $4b8f: $28 $fe

    ld bc, $0655                                  ; $4b91: $01 $55 $06
    rst $38                                       ; $4b94: $ff
    ld [$1410], sp                                ; $4b95: $08 $10 $14
    jr @-$6e                                      ; $4b98: $18 $90

    jr jr_099_4bf6                                ; $4b9a: $18 $5a

    ld e, $b0                                     ; $4b9c: $1e $b0
    add b                                         ; $4b9e: $80
    ld l, b                                       ; $4b9f: $68
    ld [bc], a                                    ; $4ba0: $02
    ret c                                         ; $4ba1: $d8

    db $e4                                        ; $4ba2: $e4
    sbc b                                         ; $4ba3: $98
    cp $e6                                        ; $4ba4: $fe $e6
    db $ec                                        ; $4ba6: $ec
    adc b                                         ; $4ba7: $88
    inc b                                         ; $4ba8: $04
    add [hl]                                      ; $4ba9: $86
    add d                                         ; $4baa: $82
    adc [hl]                                      ; $4bab: $8e
    adc h                                         ; $4bac: $8c
    adc h                                         ; $4bad: $8c
    ld e, $06                                     ; $4bae: $1e $06
    rrca                                          ; $4bb0: $0f
    dec bc                                        ; $4bb1: $0b
    nop                                           ; $4bb2: $00
    inc c                                         ; $4bb3: $0c
    dec b                                         ; $4bb4: $05
    ld c, $00                                     ; $4bb5: $0e $00
    ccf                                           ; $4bb7: $3f
    ld l, $31                                     ; $4bb8: $2e $31
    ld [de], a                                    ; $4bba: $12
    db $10                                        ; $4bbb: $10
    dec e                                         ; $4bbc: $1d
    ld hl, $ecde                                  ; $4bbd: $21 $de $ec
    ld a, [bc]                                    ; $4bc0: $0a
    jr nz, @-$2e                                  ; $4bc1: $20 $d0

    and b                                         ; $4bc3: $a0
    ld d, a                                       ; $4bc4: $57
    nop                                           ; $4bc5: $00
    add l                                         ; $4bc6: $85
    ld a, e                                       ; $4bc7: $7b
    ld a, [de]                                    ; $4bc8: $1a
    and $4e                                       ; $4bc9: $e6 $4e
    cp [hl]                                       ; $4bcb: $be
    db $e4                                        ; $4bcc: $e4
    inc e                                         ; $4bcd: $1c
    nop                                           ; $4bce: $00
    sbc h                                         ; $4bcf: $9c
    db $e3                                        ; $4bd0: $e3
    ld l, e                                       ; $4bd1: $6b
    ld [hl], h                                    ; $4bd2: $74
    ld d, $29                                     ; $4bd3: $16 $29
    inc h                                         ; $4bd5: $24
    ld e, e                                       ; $4bd6: $5b
    nop                                           ; $4bd7: $00
    rla                                           ; $4bd8: $17
    db $fc                                        ; $4bd9: $fc
    ld [hl], b                                    ; $4bda: $70
    rst $38                                       ; $4bdb: $ff
    inc h                                         ; $4bdc: $24
    ccf                                           ; $4bdd: $3f
    dec bc                                        ; $4bde: $0b
    ld [hl], $00                                  ; $4bdf: $36 $00
    ret nc                                        ; $4be1: $d0

    ld l, $64                                     ; $4be2: $2e $64
    sbc e                                         ; $4be4: $9b

jr_099_4be5:
    jp $a83f                                      ; $4be5: $c3 $3f $a8


    ld d, [hl]                                    ; $4be8: $56
    nop                                           ; $4be9: $00
    ld d, h                                       ; $4bea: $54
    cp d                                          ; $4beb: $ba
    xor b                                         ; $4bec: $a8
    ld e, [hl]                                    ; $4bed: $5e
    inc l                                         ; $4bee: $2c
    rst $18                                       ; $4bef: $df
    rla                                           ; $4bf0: $17
    rst $28                                       ; $4bf1: $ef
    nop                                           ; $4bf2: $00
    inc c                                         ; $4bf3: $0c
    ei                                            ; $4bf4: $fb
    ld b, c                                       ; $4bf5: $41

jr_099_4bf6:
    cp [hl]                                       ; $4bf6: $be
    or h                                          ; $4bf7: $b4
    rst $28                                       ; $4bf8: $ef
    inc sp                                        ; $4bf9: $33
    cp $00                                        ; $4bfa: $fe $00
    ld b, h                                       ; $4bfc: $44
    ei                                            ; $4bfd: $fb
    ld a, [de]                                    ; $4bfe: $1a
    push af                                       ; $4bff: $f5
    ld d, l                                       ; $4c00: $55
    cp [hl]                                       ; $4c01: $be
    ret nz                                        ; $4c02: $c0

    ld a, a                                       ; $4c03: $7f
    ld [bc], a                                    ; $4c04: $02
    ld l, $5f                                     ; $4c05: $2e $5f
    jr @+$7d                                      ; $4c07: $18 $7b

    ld h, e                                       ; $4c09: $63
    ld h, e                                       ; $4c0a: $63
    ldh [$3a], a                                  ; $4c0b: $e0 $3a
    ld d, b                                       ; $4c0d: $50
    ld bc, $a8fc                                  ; $4c0e: $01 $fc $a8
    cp h                                          ; $4c11: $bc
    or h                                          ; $4c12: $b4

jr_099_4c13:
    cp h                                          ; $4c13: $bc
    sbc h                                         ; $4c14: $9c
    sbc h                                         ; $4c15: $9c
    ret z                                         ; $4c16: $c8

    ld l, $00                                     ; $4c17: $2e $00
    adc a                                         ; $4c19: $8f
    cp $d8                                        ; $4c1a: $fe $d8
    ld a, a                                       ; $4c1c: $7f
    inc h                                         ; $4c1d: $24
    rst $18                                       ; $4c1e: $df
    ld h, h                                       ; $4c1f: $64
    rst $38                                       ; $4c20: $ff
    nop                                           ; $4c21: $00
    jr nc, jr_099_4c13                            ; $4c22: $30 $ef

    and h                                         ; $4c24: $a4
    rst $18                                       ; $4c25: $df
    ld d, b                                       ; $4c26: $50
    rst $28                                       ; $4c27: $ef
    ld [hl+], a                                   ; $4c28: $22
    rst $18                                       ; $4c29: $df
    add b                                         ; $4c2a: $80
    xor h                                         ; $4c2b: $ac
    inc bc                                        ; $4c2c: $03
    ld a, [de]                                    ; $4c2d: $1a
    nop                                           ; $4c2e: $00
    rrca                                          ; $4c2f: $0f
    inc b                                         ; $4c30: $04
    dec de                                        ; $4c31: $1b
    ld c, [hl]                                    ; $4c32: $4e
    ld [hl], c                                    ; $4c33: $71
    nop                                           ; $4c34: $00
    xor c                                         ; $4c35: $a9
    cp $00                                        ; $4c36: $fe $00
    ld a, a                                       ; $4c38: $7f
    call nc, Call_000_00ff                        ; $4c39: $d4 $ff $00
    ldh [rP1], a                                  ; $4c3c: $e0 $00
    and b                                         ; $4c3e: $a0
    ld e, h                                       ; $4c3f: $5c
    ld [hl], b                                    ; $4c40: $70
    adc [hl]                                      ; $4c41: $8e
    sub h                                         ; $4c42: $94
    ld l, e                                       ; $4c43: $6b
    ld b, d                                       ; $4c44: $42
    cp l                                          ; $4c45: $bd
    nop                                           ; $4c46: $00
    db $10                                        ; $4c47: $10
    rst $28                                       ; $4c48: $ef
    dec b                                         ; $4c49: $05
    rst $38                                       ; $4c4a: $ff
    ld c, e                                       ; $4c4b: $4b
    rst $38                                       ; $4c4c: $ff
    ld a, a                                       ; $4c4d: $7f
    ld a, a                                       ; $4c4e: $7f
    add b                                         ; $4c4f: $80
    ld [de], a                                    ; $4c50: $12
    rla                                           ; $4c51: $17
    rrca                                          ; $4c52: $0f
    inc b                                         ; $4c53: $04
    dec sp                                        ; $4c54: $3b
    dec hl                                        ; $4c55: $2b
    ld d, h                                       ; $4c56: $54
    and l                                         ; $4c57: $a5
    ld a, [$c008]                                 ; $4c58: $fa $08 $c0
    rst $38                                       ; $4c5b: $ff
    inc a                                         ; $4c5c: $3c
    db $fc                                        ; $4c5d: $fc
    jr z, jr_099_4c7b                             ; $4c5e: $28 $1b

    add b                                         ; $4c60: $80
    ld hl, sp+$28                                 ; $4c61: $f8 $28
    ld bc, $90d6                                  ; $4c63: $01 $d6 $90
    ld l, a                                       ; $4c66: $6f
    add hl, hl                                    ; $4c67: $29
    rst $38                                       ; $4c68: $ff
    ld a, c                                       ; $4c69: $79
    ld a, a                                       ; $4c6a: $7f
    ld c, [hl]                                    ; $4c6b: $4e
    inc de                                        ; $4c6c: $13
    inc b                                         ; $4c6d: $04
    rra                                           ; $4c6e: $1f
    ld a, [hl+]                                   ; $4c6f: $2a
    dec [hl]                                      ; $4c70: $35
    inc e                                         ; $4c71: $1c
    rra                                           ; $4c72: $1f
    call nz, $0104                                ; $4c73: $c4 $04 $01
    ld d, [hl]                                    ; $4c76: $56
    ret nz                                        ; $4c77: $c0

    db $10                                        ; $4c78: $10
    ld [bc], a                                    ; $4c79: $02
    inc [hl]                                      ; $4c7a: $34

jr_099_4c7b:
    rlca                                          ; $4c7b: $07
    ldh [rNR41], a                                ; $4c7c: $e0 $20
    ret c                                         ; $4c7e: $d8

    xor b                                         ; $4c7f: $a8
    ld a, b                                       ; $4c80: $78
    ldh a, [rPCM34]                               ; $4c81: $f0 $77
    ldh a, [rBCPD]                                ; $4c83: $f0 $69
    rlca                                          ; $4c85: $07
    jp nc, $9207                                  ; $4c86: $d2 $07 $92

    dec sp                                        ; $4c89: $3b
    ld a, [hl]                                    ; $4c8a: $7e
    add a                                         ; $4c8b: $87
    inc c                                         ; $4c8c: $0c
    sub d                                         ; $4c8d: $92
    inc hl                                        ; $4c8e: $23
    sbc [hl]                                      ; $4c8f: $9e
    inc hl                                        ; $4c90: $23
    ld l, b                                       ; $4c91: $68
    ld d, l                                       ; $4c92: $55
    ld d, l                                       ; $4c93: $55
    inc d                                         ; $4c94: $14
    sbc c                                         ; $4c95: $99
    rrca                                          ; $4c96: $0f
    xor d                                         ; $4c97: $aa
    rst $38                                       ; $4c98: $ff
    rlca                                          ; $4c99: $07
    xor d                                         ; $4c9a: $aa
    ld a, h                                       ; $4c9b: $7c
    add e                                         ; $4c9c: $83
    add b                                         ; $4c9d: $80
    add b                                         ; $4c9e: $80
    add hl, sp                                    ; $4c9f: $39
    ld d, h                                       ; $4ca0: $54
    xor e                                         ; $4ca1: $ab
    nop                                           ; $4ca2: $00
    rst $38                                       ; $4ca3: $ff
    and b                                         ; $4ca4: $a0
    dec bc                                        ; $4ca5: $0b
    jp hl                                         ; $4ca6: $e9


    rlca                                          ; $4ca7: $07
    ld b, d                                       ; $4ca8: $42
    rst $38                                       ; $4ca9: $ff
    ld bc, $8360                                  ; $4caa: $01 $60 $83
    rst $38                                       ; $4cad: $ff
    pop bc                                        ; $4cae: $c1
    cp a                                          ; $4caf: $bf
    inc b                                         ; $4cb0: $04
    ld c, b                                       ; $4cb1: $48
    ld c, d                                       ; $4cb2: $4a
    nop                                           ; $4cb3: $00
    nop                                           ; $4cb4: $00
    and l                                         ; $4cb5: $a5
    nop                                           ; $4cb6: $00
    rst $30                                       ; $4cb7: $f7
    ld [$a25d], sp                                ; $4cb8: $08 $5d $a2
    cp d                                          ; $4cbb: $ba
    nop                                           ; $4cbc: $00
    ld b, l                                       ; $4cbd: $45
    add a                                         ; $4cbe: $87
    rst $38                                       ; $4cbf: $ff
    ld d, a                                       ; $4cc0: $57
    ld [bc], a                                    ; $4cc1: $02
    xor l                                         ; $4cc2: $ad
    ld [bc], a                                    ; $4cc3: $02
    or $00                                        ; $4cc4: $f6 $00
    db $10                                        ; $4cc6: $10
    call $ab30                                    ; $4cc7: $cd $30 $ab
    ld d, b                                       ; $4cca: $50
    ld b, [hl]                                    ; $4ccb: $46
    cp c                                          ; $4ccc: $b9
    sbc e                                         ; $4ccd: $9b

jr_099_4cce:
    nop                                           ; $4cce: $00
    ld [hl], h                                    ; $4ccf: $74
    ld b, $ff                                     ; $4cd0: $06 $ff
    cp d                                          ; $4cd2: $ba
    nop                                           ; $4cd3: $00
    ld d, l                                       ; $4cd4: $55
    nop                                           ; $4cd5: $00
    ld a, [hl+]                                   ; $4cd6: $2a
    nop                                           ; $4cd7: $00
    nop                                           ; $4cd8: $00
    dec d                                         ; $4cd9: $15
    nop                                           ; $4cda: $00
    cp a                                          ; $4cdb: $bf
    nop                                           ; $4cdc: $00
    ld [hl], l                                    ; $4cdd: $75
    ld a, [bc]                                    ; $4cde: $0a
    xor b                                         ; $4cdf: $a8
    nop                                           ; $4ce0: $00
    ld d, a                                       ; $4ce1: $57
    jp nz, $bdff                                  ; $4ce2: $c2 $ff $bd

    ld [$2850], sp                                ; $4ce5: $08 $50 $28
    push de                                       ; $4ce8: $d5
    ld [bc], a                                    ; $4ce9: $02
    ccf                                           ; $4cea: $3f
    cp a                                          ; $4ceb: $bf
    ld a, a                                       ; $4cec: $7f
    rst $38                                       ; $4ced: $ff
    ccf                                           ; $4cee: $3f
    cp a                                          ; $4cef: $bf
    ld [bc], a                                    ; $4cf0: $02
    nop                                           ; $4cf1: $00
    rst $38                                       ; $4cf2: $ff
    ld [bc], a                                    ; $4cf3: $02
    ccf                                           ; $4cf4: $3f
    or l                                          ; $4cf5: $b5
    ld e, a                                       ; $4cf6: $5f
    sub d                                         ; $4cf7: $92
    ld h, b                                       ; $4cf8: $60
    ld d, l                                       ; $4cf9: $55
    ld h, c                                       ; $4cfa: $61
    ld b, b                                       ; $4cfb: $40
    ld d, l                                       ; $4cfc: $55
    nop                                           ; $4cfd: $00
    rst $38                                       ; $4cfe: $ff
    ld d, l                                       ; $4cff: $55
    nop                                           ; $4d00: $00
    ld d, e                                       ; $4d01: $53
    db $fc                                        ; $4d02: $fc
    db $fd                                        ; $4d03: $fd
    cp $fd                                        ; $4d04: $fe $fd

jr_099_4d06:
    jr nz, jr_099_4d06                            ; $4d06: $20 $fe

    rst $38                                       ; $4d08: $ff
    inc b                                         ; $4d09: $04
    db $10                                        ; $4d0a: $10
    ld d, l                                       ; $4d0b: $55
    cp $51                                        ; $4d0c: $fe $51
    ld l, $8f                                     ; $4d0e: $2e $8f
    db $10                                        ; $4d10: $10
    ld a, a                                       ; $4d11: $7f
    cp a                                          ; $4d12: $bf
    ld e, a                                       ; $4d13: $5f
    inc b                                         ; $4d14: $04
    jr jr_099_4cce                                ; $4d15: $18 $b7

    ld e, a                                       ; $4d17: $5f
    adc e                                         ; $4d18: $8b
    ld a, a                                       ; $4d19: $7f
    ld bc, $3fdf                                  ; $4d1a: $01 $df $3f
    or [hl]                                       ; $4d1d: $b6
    rrca                                          ; $4d1e: $0f
    ld a, [hl+]                                   ; $4d1f: $2a
    sbc a                                         ; $4d20: $9f
    sub [hl]                                      ; $4d21: $96
    inc b                                         ; $4d22: $04
    jr nz, jr_099_4d25                            ; $4d23: $20 $00

jr_099_4d25:
    ld d, $8f                                     ; $4d25: $16 $8f
    call $fd9f                                    ; $4d27: $cd $9f $fd
    cp $f9                                        ; $4d2a: $fe $f9
    cp $40                                        ; $4d2c: $fe $40
    push af                                       ; $4d2e: $f5
    inc b                                         ; $4d2f: $04
    db $10                                        ; $4d30: $10
    jp hl                                         ; $4d31: $e9


    cp $d5                                        ; $4d32: $fe $d5
    cp $fb                                        ; $4d34: $fe $fb
    db $fc                                        ; $4d36: $fc
    nop                                           ; $4d37: $00
    ld c, e                                       ; $4d38: $4b
    add h                                         ; $4d39: $84
    and c                                         ; $4d3a: $a1
    ld c, b                                       ; $4d3b: $48
    ld [hl], d                                    ; $4d3c: $72
    adc b                                         ; $4d3d: $88

jr_099_4d3e:
    or h                                          ; $4d3e: $b4
    ld c, b                                       ; $4d3f: $48
    nop                                           ; $4d40: $00
    ld l, c                                       ; $4d41: $69
    cp $be                                        ; $4d42: $fe $be
    ld b, b                                       ; $4d44: $40
    ld a, [hl]                                    ; $4d45: $7e
    add b                                         ; $4d46: $80
    cp [hl]                                       ; $4d47: $be
    ld b, b                                       ; $4d48: $40
    nop                                           ; $4d49: $00
    sbc d                                         ; $4d4a: $9a
    ld a, l                                       ; $4d4b: $7d
    ld a, $38                                     ; $4d4c: $3e $38
    ld c, $38                                     ; $4d4e: $0e $38
    rrca                                          ; $4d50: $0f
    jr c, jr_099_4d53                             ; $4d51: $38 $00

jr_099_4d53:
    call $9e3a                                    ; $4d53: $cd $3a $9e
    add hl, hl                                    ; $4d56: $29
    rrca                                          ; $4d57: $0f
    cp b                                          ; $4d58: $b8
    ld e, $a9                                     ; $4d59: $1e $a9
    nop                                           ; $4d5b: $00
    sub h                                         ; $4d5c: $94
    ld l, e                                       ; $4d5d: $6b
    nop                                           ; $4d5e: $00
    db $10                                        ; $4d5f: $10
    and b                                         ; $4d60: $a0
    db $10                                        ; $4d61: $10
    ld a, c                                       ; $4d62: $79
    nop                                           ; $4d63: $00
    nop                                           ; $4d64: $00
    jr z, jr_099_4d3e                             ; $4d65: $28 $d7

    ld bc, $0000                                  ; $4d67: $01 $00 $00
    nop                                           ; $4d6a: $00
    add l                                         ; $4d6b: $85
    nop                                           ; $4d6c: $00
    nop                                           ; $4d6d: $00
    pop af                                        ; $4d6e: $f1
    ld b, b                                       ; $4d6f: $40
    xor d                                         ; $4d70: $aa
    ld b, b                                       ; $4d71: $40
    dec a                                         ; $4d72: $3d
    ret nz                                        ; $4d73: $c0

    rla                                           ; $4d74: $17
    add sp, $00                                   ; $4d75: $e8 $00
    ld c, d                                       ; $4d77: $4a
    push af                                       ; $4d78: $f5
    ld [hl], b                                    ; $4d79: $70
    rst $38                                       ; $4d7a: $ff
    ld [hl], l                                    ; $4d7b: $75
    nop                                           ; $4d7c: $00
    xor e                                         ; $4d7d: $ab
    nop                                           ; $4d7e: $00
    nop                                           ; $4d7f: $00
    ld e, a                                       ; $4d80: $5f
    ld [bc], a                                    ; $4d81: $02
    ld a, [$d507]                                 ; $4d82: $fa $07 $d5
    ld a, [hl+]                                   ; $4d85: $2a
    xor c                                         ; $4d86: $a9
    ld e, [hl]                                    ; $4d87: $5e
    nop                                           ; $4d88: $00
    jp c, $f73f                                   ; $4d89: $da $3f $f7

    rst $38                                       ; $4d8c: $ff
    push af                                       ; $4d8d: $f5
    ld b, b                                       ; $4d8e: $40
    and d                                         ; $4d8f: $a2
    ld b, b                                       ; $4d90: $40
    nop                                           ; $4d91: $00
    ld e, l                                       ; $4d92: $5d
    add b                                         ; $4d93: $80
    ld [$d511], a                                 ; $4d94: $ea $11 $d5
    ld a, [hl+]                                   ; $4d97: $2a

jr_099_4d98:
    xor d                                         ; $4d98: $aa
    ld [hl], a                                    ; $4d99: $77
    nop                                           ; $4d9a: $00
    inc bc                                        ; $4d9b: $03
    rst $38                                       ; $4d9c: $ff
    ei                                            ; $4d9d: $fb
    db $10                                        ; $4d9e: $10
    ld b, l                                       ; $4d9f: $45

jr_099_4da0:
    db $10                                        ; $4da0: $10
    xor [hl]                                      ; $4da1: $ae
    db $10                                        ; $4da2: $10
    db $10                                        ; $4da3: $10
    cp a                                          ; $4da4: $bf
    ld a, a                                       ; $4da5: $7f
    ld bc, $0002                                  ; $4da6: $01 $02 $00
    add c                                         ; $4da9: $81

jr_099_4daa:
    ld a, a                                       ; $4daa: $7f
    rst $10                                       ; $4dab: $d7
    cpl                                           ; $4dac: $2f
    inc hl                                        ; $4dad: $23
    add c                                         ; $4dae: $81

jr_099_4daf:
    ld a, a                                       ; $4daf: $7f
    ld c, $01                                     ; $4db0: $0e $01
    ld a, a                                       ; $4db2: $7f
    ld b, e                                       ; $4db3: $43
    ld a, $02                                     ; $4db4: $3e $02
    ld e, b                                       ; $4db6: $58
    ldh a, [$58]                                  ; $4db7: $f0 $58
    nop                                           ; $4db9: $00
    ld e, b                                       ; $4dba: $58
    jr z, jr_099_4daa                             ; $4dbb: $28 $ed

    jr @+$48                                      ; $4dbd: $18 $46

    cp c                                          ; $4dbf: $b9
    xor l                                         ; $4dc0: $ad
    ld a, d                                       ; $4dc1: $7a
    nop                                           ; $4dc2: $00
    ld e, d                                       ; $4dc3: $5a
    db $fd                                        ; $4dc4: $fd
    call z, $aeff                                 ; $4dc5: $cc $ff $ae
    nop                                           ; $4dc8: $00
    ld b, l                                       ; $4dc9: $45
    nop                                           ; $4dca: $00
    nop                                           ; $4dcb: $00
    xor d                                         ; $4dcc: $aa
    ld bc, $feb9                                  ; $4dcd: $01 $b9 $fe
    cp [hl]                                       ; $4dd0: $be
    ld c, b                                       ; $4dd1: $48
    halt                                          ; $4dd2: $76
    adc b                                         ; $4dd3: $88
    ld b, b                                       ; $4dd4: $40
    or [hl]                                       ; $4dd5: $b6
    and b                                         ; $4dd6: $a0
    jr nz, jr_099_4d98                            ; $4dd7: $20 $bf

    ld b, b                                       ; $4dd9: $40
    call Call_000_1e3a                            ; $4dda: $cd $3a $1e
    jr z, jr_099_4ddf                             ; $4ddd: $28 $00

jr_099_4ddf:
    ld e, $28                                     ; $4ddf: $1e $28
    rra                                           ; $4de1: $1f
    jr z, @-$24                                   ; $4de2: $28 $da

    dec l                                         ; $4de4: $2d
    rra                                           ; $4de5: $1f

jr_099_4de6:
    xor b                                         ; $4de6: $a8
    nop                                           ; $4de7: $00
    ld e, $a9                                     ; $4de8: $1e $a9
    ld e, $a9                                     ; $4dea: $1e $a9
    inc [hl]                                      ; $4dec: $34
    rrc b                                         ; $4ded: $cb $08
    db $10                                        ; $4def: $10
    ld bc, $0034                                  ; $4df0: $01 $34 $00
    ld h, c                                       ; $4df3: $61
    db $10                                        ; $4df4: $10
    ld [hl], b                                    ; $4df5: $70
    adc a                                         ; $4df6: $8f
    add b                                         ; $4df7: $80
    and b                                         ; $4df8: $a0
    nop                                           ; $4df9: $00
    ld bc, $008b                                  ; $4dfa: $01 $8b $00
    inc [hl]                                      ; $4dfd: $34
    rst $38                                       ; $4dfe: $ff
    or [hl]                                       ; $4dff: $b6
    ld c, b                                       ; $4e00: $48
    ld a, [hl]                                    ; $4e01: $7e
    jr nc, jr_099_4e04                            ; $4e02: $30 $00

jr_099_4e04:
    jr nz, jr_099_4e3a                            ; $4e04: $20 $34

    rst $38                                       ; $4e06: $ff
    ret nc                                        ; $4e07: $d0

    jr jr_099_4de6                                ; $4e08: $18 $dc

    dec hl                                        ; $4e0a: $2b
    ld e, $28                                     ; $4e0b: $1e $28
    ld e, [hl]                                    ; $4e0d: $5e
    nop                                           ; $4e0e: $00
    jr z, jr_099_4da0                             ; $4e0f: $28 $8f

    jr c, jr_099_4daf                             ; $4e11: $38 $9c

    ld l, e                                       ; $4e13: $6b
    ld c, $b9                                     ; $4e14: $0e $b9
    sbc [hl]                                      ; $4e16: $9e
    nop                                           ; $4e17: $00
    add hl, hl                                    ; $4e18: $29
    ld c, $b9                                     ; $4e19: $0e $b9
    ld e, h                                       ; $4e1b: $5c
    and e                                         ; $4e1c: $a3
    jr nz, jr_099_4e2f                            ; $4e1d: $20 $10

    ld b, b                                       ; $4e1f: $40
    inc b                                         ; $4e20: $04
    db $10                                        ; $4e21: $10
    ld hl, $5410                                  ; $4e22: $21 $10 $54
    xor e                                         ; $4e25: $ab
    rst $08                                       ; $4e26: $cf
    nop                                           ; $4e27: $00
    nop                                           ; $4e28: $00
    dec bc                                        ; $4e29: $0b
    nop                                           ; $4e2a: $00
    nop                                           ; $4e2b: $00
    adc a                                         ; $4e2c: $8f
    ldh a, [$bd]                                  ; $4e2d: $f0 $bd

jr_099_4e2f:
    ld b, e                                       ; $4e2f: $43
    ld a, e                                       ; $4e30: $7b
    add [hl]                                      ; $4e31: $86
    cp h                                          ; $4e32: $bc
    nop                                           ; $4e33: $00
    ld b, a                                       ; $4e34: $47
    ld d, a                                       ; $4e35: $57
    db $fd                                        ; $4e36: $fd
    cp e                                          ; $4e37: $bb
    ld c, l                                       ; $4e38: $4d
    ld a, e                                       ; $4e39: $7b

jr_099_4e3a:
    adc l                                         ; $4e3a: $8d
    xor l                                         ; $4e3b: $ad
    ld [$7eff], sp                                ; $4e3c: $08 $ff $7e
    rst $38                                       ; $4e3f: $ff
    xor a                                         ; $4e40: $af
    inc b                                         ; $4e41: $04
    nop                                           ; $4e42: $00
    jp $81ff                                      ; $4e43: $c3 $ff $81


    nop                                           ; $4e46: $00
    rst $38                                       ; $4e47: $ff
    adc c                                         ; $4e48: $89
    rst $30                                       ; $4e49: $f7
    push de                                       ; $4e4a: $d5
    xor e                                         ; $4e4b: $ab
    ld [$f9d7], a                                 ; $4e4c: $ea $d7 $f9
    nop                                           ; $4e4f: $00
    ld b, $a0                                     ; $4e50: $06 $a0
    ret nz                                        ; $4e52: $c0

    ret nz                                        ; $4e53: $c0

    ldh [$f1], a                                  ; $4e54: $e0 $f1
    ldh [$64], a                                  ; $4e56: $e0 $64
    nop                                           ; $4e58: $00
    ei                                            ; $4e59: $fb
    pop af                                        ; $4e5a: $f1
    ld [hl], b                                    ; $4e5b: $70
    rst $38                                       ; $4e5c: $ff
    ld [hl], b                                    ; $4e5d: $70
    ld [hl], b                                    ; $4e5e: $70
    rst $38                                       ; $4e5f: $ff
    sbc b                                         ; $4e60: $98
    nop                                           ; $4e61: $00
    ldh [rLCDC], a                                ; $4e62: $e0 $40
    rst $38                                       ; $4e64: $ff
    add b                                         ; $4e65: $80
    ret nz                                        ; $4e66: $c0

    ld e, a                                       ; $4e67: $5f
    ret nz                                        ; $4e68: $c0

    sub b                                         ; $4e69: $90
    ld bc, $50cf                                  ; $4e6a: $01 $cf $50
    rst $08                                       ; $4e6d: $cf
    and b                                         ; $4e6e: $a0
    rst $18                                       ; $4e6f: $df
    ld a, a                                       ; $4e70: $7f
    rst $38                                       ; $4e71: $ff
    dec d                                         ; $4e72: $15
    ld bc, $04e0                                  ; $4e73: $01 $e0 $04
    nop                                           ; $4e76: $00
    inc bc                                        ; $4e77: $03
    db $10                                        ; $4e78: $10
    ld [bc], a                                    ; $4e79: $02
    nop                                           ; $4e7a: $00
    rst $38                                       ; $4e7b: $ff
    rst $38                                       ; $4e7c: $ff
    ld b, $01                                     ; $4e7d: $06 $01
    nop                                           ; $4e7f: $00
    ld bc, $0cff                                  ; $4e80: $01 $ff $0c
    rlca                                          ; $4e83: $07
    db $f4                                        ; $4e84: $f4
    rrca                                          ; $4e85: $0f
    inc b                                         ; $4e86: $04
    rst $38                                       ; $4e87: $ff
    ld [bc], a                                    ; $4e88: $02
    ld [$fc21], sp                                ; $4e89: $08 $21 $fc

jr_099_4e8c:
    rst $38                                       ; $4e8c: $ff
    ld b, b                                       ; $4e8d: $40
    ld e, b                                       ; $4e8e: $58
    ld [hl], l                                    ; $4e8f: $75
    rst $38                                       ; $4e90: $ff
    ld b, e                                       ; $4e91: $43
    ccf                                           ; $4e92: $3f
    ld [bc], a                                    ; $4e93: $02
    ld e, b                                       ; $4e94: $58
    nop                                           ; $4e95: $00
    add b                                         ; $4e96: $80
    rst $38                                       ; $4e97: $ff
    ld b, b                                       ; $4e98: $40
    ret nz                                        ; $4e99: $c0

    sbc a                                         ; $4e9a: $9f
    ret nz                                        ; $4e9b: $c0

    ld d, b                                       ; $4e9c: $50
    rst $08                                       ; $4e9d: $cf
    ld bc, $cf90                                  ; $4e9e: $01 $90 $cf
    ld h, b                                       ; $4ea1: $60
    rst $18                                       ; $4ea2: $df
    cp a                                          ; $4ea3: $bf
    rst $38                                       ; $4ea4: $ff
    ld b, b                                       ; $4ea5: $40
    ld b, [hl]                                    ; $4ea6: $46
    ld [$4e80], sp                                ; $4ea7: $08 $80 $4e
    ld b, b                                       ; $4eaa: $40
    nop                                           ; $4eab: $00
    rst $38                                       ; $4eac: $ff
    inc bc                                        ; $4ead: $03
    rst $38                                       ; $4eae: $ff
    rrca                                          ; $4eaf: $0f
    dec b                                         ; $4eb0: $05
    push af                                       ; $4eb1: $f5
    ld de, $050d                                  ; $4eb2: $11 $0d $05
    db $fd                                        ; $4eb5: $fd
    ld [bc], a                                    ; $4eb6: $02
    ld [$fdff], sp                                ; $4eb7: $08 $ff $fd
    nop                                           ; $4eba: $00
    ld a, h                                       ; $4ebb: $7c

jr_099_4ebc:
    ld d, b                                       ; $4ebc: $50
    ld l, [hl]                                    ; $4ebd: $6e
    add b                                         ; $4ebe: $80
    ld [hl+], a                                   ; $4ebf: $22

jr_099_4ec0:
    ld [$502e], sp                                ; $4ec0: $08 $2e $50
    rst $38                                       ; $4ec3: $ff
    ld a, h                                       ; $4ec4: $7c
    ld d, b                                       ; $4ec5: $50
    ld b, d                                       ; $4ec6: $42
    jr jr_099_4ecb                                ; $4ec7: $18 $02

    jr z, jr_099_4ecc                             ; $4ec9: $28 $01

jr_099_4ecb:
    ld a, b                                       ; $4ecb: $78

jr_099_4ecc:
    cp $02                                        ; $4ecc: $fe $02
    ld [$3810], sp                                ; $4ece: $08 $10 $38
    dec de                                        ; $4ed1: $1b
    jr @+$18                                      ; $4ed2: $18 $16

    jr @+$03                                      ; $4ed4: $18 $01

    cp $ff                                        ; $4ed6: $fe $ff
    ld bc, $7d00                                  ; $4ed8: $01 $00 $7d
    and d                                         ; $4edb: $a2
    cp e                                          ; $4edc: $bb
    ld b, h                                       ; $4edd: $44
    db $fd                                        ; $4ede: $fd
    ld [bc], a                                    ; $4edf: $02
    ld sp, $0638                                  ; $4ee0: $31 $38 $06
    ld d, l                                       ; $4ee3: $55
    and b                                         ; $4ee4: $a0
    ei                                            ; $4ee5: $fb
    ld b, b                                       ; $4ee6: $40
    ld [hl], a                                    ; $4ee7: $77
    ccf                                           ; $4ee8: $3f
    jr nz, @+$0a                                  ; $4ee9: $20 $08

    ld [$04f7], sp                                ; $4eeb: $08 $f7 $04
    jr nz, @+$01                                  ; $4eee: $20 $ff

    nop                                           ; $4ef0: $00

jr_099_4ef1:
    rst $18                                       ; $4ef1: $df
    jr nz, @-$3e                                  ; $4ef2: $20 $c0

    ld e, b                                       ; $4ef4: $58
    jp nz, $803f                                  ; $4ef5: $c2 $3f $80

    sub d                                         ; $4ef8: $92
    nop                                           ; $4ef9: $00
    ld a, a                                       ; $4efa: $7f
    ret nz                                        ; $4efb: $c0

    ccf                                           ; $4efc: $3f
    add sp, $1f                                   ; $4efd: $e8 $1f
    rst $38                                       ; $4eff: $ff
    nop                                           ; $4f00: $00
    ld [bc], a                                    ; $4f01: $02
    db $dd                                        ; $4f02: $dd
    jr nz, jr_099_4ec0                            ; $4f03: $20 $bb

    ld b, b                                       ; $4f05: $40
    db $dd                                        ; $4f06: $dd

jr_099_4f07:
    jr nz, @+$68                                  ; $4f07: $20 $66

    jr jr_099_4e8c                                ; $4f09: $18 $81

    sbc b                                         ; $4f0b: $98
    ld d, b                                       ; $4f0c: $50
    nop                                           ; $4f0d: $00
    ld e, l                                       ; $4f0e: $5d
    ld [bc], a                                    ; $4f0f: $02
    inc bc                                        ; $4f10: $03
    ld bc, $387f                                  ; $4f11: $01 $7f $38
    nop                                           ; $4f14: $00
    ld [hl], l                                    ; $4f15: $75
    adc d                                         ; $4f16: $8a
    add hl, de                                    ; $4f17: $19
    rst $38                                       ; $4f18: $ff
    ld b, h                                       ; $4f19: $44
    rst $38                                       ; $4f1a: $ff
    ld b, h                                       ; $4f1b: $44
    nop                                           ; $4f1c: $00
    add hl, hl                                    ; $4f1d: $29
    add hl, bc                                    ; $4f1e: $09
    ld a, a                                       ; $4f1f: $7f
    add b                                         ; $4f20: $80
    ld [hl], b                                    ; $4f21: $70
    jr z, @-$40                                   ; $4f22: $28 $be

    ld b, b                                       ; $4f24: $40
    jr jr_099_4f07                                ; $4f25: $18 $e0

    ld b, b                                       ; $4f27: $40
    nop                                           ; $4f28: $00
    ld [hl], b                                    ; $4f29: $70

jr_099_4f2a:
    jr jr_099_4ebc                                ; $4f2a: $18 $90

    jr c, jr_099_4f9e                             ; $4f2c: $38 $70

    jr jr_099_4ef1                                ; $4f2e: $18 $c1

    jr nz, jr_099_4f3a                            ; $4f30: $20 $08

    ret z                                         ; $4f32: $c8

    ld h, b                                       ; $4f33: $60
    jr z, jr_099_4f07                             ; $4f34: $28 $d1

    jr @-$07                                      ; $4f36: $18 $f7

    adc b                                         ; $4f38: $88
    ld h, b                                       ; $4f39: $60

jr_099_4f3a:
    jr z, jr_099_4f2a                             ; $4f3a: $28 $ee

    nop                                           ; $4f3c: $00
    rst $30                                       ; $4f3d: $f7
    nop                                           ; $4f3e: $00
    ld [bc], a                                    ; $4f3f: $02
    cp $00                                        ; $4f40: $fe $00
    ld a, a                                       ; $4f42: $7f
    ld [bc], a                                    ; $4f43: $02
    ei                                            ; $4f44: $fb
    inc b                                         ; $4f45: $04
    or $00                                        ; $4f46: $f6 $00
    dec bc                                        ; $4f48: $0b
    ld a, e                                       ; $4f49: $7b
    add [hl]                                      ; $4f4a: $86
    reti                                          ; $4f4b: $d9


    ld h, $ff                                     ; $4f4c: $26 $ff

jr_099_4f4e:
    db $10                                        ; $4f4e: $10
    ld e, a                                       ; $4f4f: $5f
    nop                                           ; $4f50: $00
    jr nz, @-$3f                                  ; $4f51: $20 $bf

    ld d, b                                       ; $4f53: $50

jr_099_4f54:
    sbc $31                                       ; $4f54: $de $31
    xor a                                         ; $4f56: $af
    ld d, b                                       ; $4f57: $50
    ld a, a                                       ; $4f58: $7f
    nop                                           ; $4f59: $00
    rst $38                                       ; $4f5a: $ff
    ld e, a                                       ; $4f5b: $5f
    inc b                                         ; $4f5c: $04
    or e                                          ; $4f5d: $b3
    inc c                                         ; $4f5e: $0c
    cp [hl]                                       ; $4f5f: $be
    ld b, c                                       ; $4f60: $41
    ld a, l                                       ; $4f61: $7d
    nop                                           ; $4f62: $00
    and d                                         ; $4f63: $a2
    rst $28                                       ; $4f64: $ef
    dec d                                         ; $4f65: $15
    sbc l                                         ; $4f66: $9d
    ld h, b                                       ; $4f67: $60
    cp d                                          ; $4f68: $ba
    ld b, b                                       ; $4f69: $40
    or l                                          ; $4f6a: $b5

jr_099_4f6b:
    nop                                           ; $4f6b: $00
    ldh [$ef], a                                  ; $4f6c: $e0 $ef
    jr nz, jr_099_4f4e                            ; $4f6e: $20 $de

    ld hl, $5ea3                                  ; $4f70: $21 $a3 $5e
    rst $00                                       ; $4f73: $c7
    nop                                           ; $4f74: $00
    rst $38                                       ; $4f75: $ff
    ld a, d                                       ; $4f76: $7a
    dec b                                         ; $4f77: $05
    push de                                       ; $4f78: $d5
    ld a, [bc]                                    ; $4f79: $0a
    dec hl                                        ; $4f7a: $2b
    nop                                           ; $4f7b: $00
    ld a, a                                       ; $4f7c: $7f
    add b                                         ; $4f7d: $80
    adc $00                                       ; $4f7e: $ce $00
    cp d                                          ; $4f80: $ba

jr_099_4f81:
    ld b, l                                       ; $4f81: $45
    ld d, a                                       ; $4f82: $57
    xor h                                         ; $4f83: $ac
    ld d, [hl]                                    ; $4f84: $56
    db $fd                                        ; $4f85: $fd
    ld e, l                                       ; $4f86: $5d
    nop                                           ; $4f87: $00
    add [hl]                                      ; $4f88: $86
    ccf                                           ; $4f89: $3f
    add a                                         ; $4f8a: $87
    rst $08                                       ; $4f8b: $cf
    add c                                         ; $4f8c: $81
    rst $18                                       ; $4f8d: $df
    add c                                         ; $4f8e: $81
    push af                                       ; $4f8f: $f5
    nop                                           ; $4f90: $00
    adc e                                         ; $4f91: $8b
    jr z, jr_099_4f6b                             ; $4f92: $28 $d7

    db $db                                        ; $4f94: $db
    jr nz, jr_099_4f54                            ; $4f95: $20 $bd

    ld h, d                                       ; $4f97: $62
    ld [hl], $02                                  ; $4f98: $36 $02
    jp hl                                         ; $4f9a: $e9


    di                                            ; $4f9b: $f3
    rst $38                                       ; $4f9c: $ff
    push af                                       ; $4f9d: $f5

jr_099_4f9e:
    nop                                           ; $4f9e: $00
    db $eb                                        ; $4f9f: $eb
    adc b                                         ; $4fa0: $88
    inc bc                                        ; $4fa1: $03
    or d                                          ; $4fa2: $b2
    nop                                           ; $4fa3: $00
    ld c, l                                       ; $4fa4: $4d
    push af                                       ; $4fa5: $f5
    ld a, [bc]                                    ; $4fa6: $0a
    ld a, d                                       ; $4fa7: $7a
    add l                                         ; $4fa8: $85
    db $f4                                        ; $4fa9: $f4
    dec bc                                        ; $4faa: $0b
    ld d, b                                       ; $4fab: $50
    nop                                           ; $4fac: $00
    xor a                                         ; $4fad: $af
    ei                                            ; $4fae: $fb
    rst $38                                       ; $4faf: $ff
    push af                                       ; $4fb0: $f5
    jr nz, jr_099_4f81                            ; $4fb1: $20 $ce

    ld hl, $00bd                                  ; $4fb3: $21 $bd $00
    ld h, d                                       ; $4fb6: $62
    rst $38                                       ; $4fb7: $ff
    rst $38                                       ; $4fb8: $ff
    or l                                          ; $4fb9: $b5
    ret nz                                        ; $4fba: $c0

    ld l, d                                       ; $4fbb: $6a
    add b                                         ; $4fbc: $80
    sbc $00                                       ; $4fbd: $de $00
    add b                                         ; $4fbf: $80
    jp hl                                         ; $4fc0: $e9


jr_099_4fc1:
    add d                                         ; $4fc1: $82
    db $db                                        ; $4fc2: $db
    add h                                         ; $4fc3: $84
    rst $38                                       ; $4fc4: $ff
    add b                                         ; $4fc5: $80
    ld e, d                                       ; $4fc6: $5a
    nop                                           ; $4fc7: $00
    and l                                         ; $4fc8: $a5
    rst $28                                       ; $4fc9: $ef
    rst $38                                       ; $4fca: $ff
    ld a, l                                       ; $4fcb: $7d
    db $10                                        ; $4fcc: $10
    ld h, $10                                     ; $4fcd: $26 $10
    db $fd                                        ; $4fcf: $fd
    nop                                           ; $4fd0: $00
    db $10                                        ; $4fd1: $10
    jp c, $ef30                                   ; $4fd2: $da $30 $ef

    db $10                                        ; $4fd5: $10
    ld e, d                                       ; $4fd6: $5a
    or l                                          ; $4fd7: $b5
    or [hl]                                       ; $4fd8: $b6
    nop                                           ; $4fd9: $00
    ld e, a                                       ; $4fda: $5f
    add sp, $37                                   ; $4fdb: $e8 $37
    ld [hl], l                                    ; $4fdd: $75

jr_099_4fde:
    cp a                                          ; $4fde: $bf
    sub h                                         ; $4fdf: $94
    ld h, b                                       ; $4fe0: $60
    dec bc                                        ; $4fe1: $0b
    nop                                           ; $4fe2: $00
    ldh [$be], a                                  ; $4fe3: $e0 $be
    ld h, c                                       ; $4fe5: $61
    dec l                                         ; $4fe6: $2d
    ld a, [c]                                     ; $4fe7: $f2
    cp c                                          ; $4fe8: $b9
    rst $38                                       ; $4fe9: $ff
    cp l                                          ; $4fea: $bd
    nop                                           ; $4feb: $00
    ld [bc], a                                    ; $4fec: $02
    or l                                          ; $4fed: $b5
    jp z, $ff5f                                   ; $4fee: $ca $5f $ff

jr_099_4ff1:
    rst $30                                       ; $4ff1: $f7
    jr jr_099_4ff1                                ; $4ff2: $18 $fd

    nop                                           ; $4ff4: $00
    db $10                                        ; $4ff5: $10
    ret c                                         ; $4ff6: $d8

    jr nc, @+$17                                  ; $4ff7: $30 $15

    ldh a, [$fb]                                  ; $4ff9: $f0 $fb
    ldh a, [$67]                                  ; $4ffb: $f0 $67
    nop                                           ; $4ffd: $00
    db $10                                        ; $4ffe: $10
    dec e                                         ; $4fff: $1d
    ldh a, [rOCPS]                                ; $5000: $f0 $6a
    ldh a, [$df]                                  ; $5002: $f0 $df
    jr nz, @+$57                                  ; $5004: $20 $55

    nop                                           ; $5006: $00
    jr nz, @-$23                                  ; $5007: $20 $db

    jr nz, @-$08                                  ; $5009: $20 $f6

    jr nz, @+$01                                  ; $500b: $20 $ff

    jr nz, jr_099_4fde                            ; $500d: $20 $cf

    nop                                           ; $500f: $00
    jr nc, jr_099_4fc1                            ; $5010: $30 $af

    ld d, b                                       ; $5012: $50
    ld e, a                                       ; $5013: $5f
    and b                                         ; $5014: $a0
    rst $28                                       ; $5015: $ef
    ld d, l                                       ; $5016: $55
    ld a, d                                       ; $5017: $7a
    nop                                           ; $5018: $00
    inc b                                         ; $5019: $04
    cp e                                          ; $501a: $bb
    inc b                                         ; $501b: $04
    rst $30                                       ; $501c: $f7
    inc c                                         ; $501d: $0c
    and $1d                                       ; $501e: $e6 $1d
    rlc b                                         ; $5020: $cb $00
    ccf                                           ; $5022: $3f
    rst $38                                       ; $5023: $ff
    inc b                                         ; $5024: $04
    push af                                       ; $5025: $f5
    ld [$54fe], sp                                ; $5026: $08 $fe $54
    cp l                                          ; $5029: $bd
    add e                                         ; $502a: $83
    ccf                                           ; $502b: $3f
    ld [bc], a                                    ; $502c: $02
    rst $10                                       ; $502d: $d7
    inc l                                         ; $502e: $2c
    and l                                         ; $502f: $a5
    ld e, [hl]                                    ; $5030: $5e

jr_099_5031:
    or d                                          ; $5031: $b2
    inc bc                                        ; $5032: $03
    ld a, [bc]                                    ; $5033: $0a
    ld a, b                                       ; $5034: $78
    ld bc, $bb00                                  ; $5035: $01 $00 $bb
    ld h, b                                       ; $5038: $60
    xor $10                                       ; $5039: $ee $10
    or a                                          ; $503b: $b7
    ld l, b                                       ; $503c: $68
    rrca                                          ; $503d: $0f
    ldh a, [rP1]                                  ; $503e: $f0 $00
    ld a, [$bde5]                                 ; $5040: $fa $e5 $bd
    ld d, b                                       ; $5043: $50
    ld a, [bc]                                    ; $5044: $0a
    ldh a, [$81]                                  ; $5045: $f0 $81
    ld [hl], b                                    ; $5047: $70
    nop                                           ; $5048: $00
    cp $f0                                        ; $5049: $fe $f0
    db $db                                        ; $504b: $db
    inc [hl]                                      ; $504c: $34
    sub h                                         ; $504d: $94
    ld a, e                                       ; $504e: $7b
    ld e, a                                       ; $504f: $5f
    cp a                                          ; $5050: $bf
    db $10                                        ; $5051: $10
    sub [hl]                                      ; $5052: $96
    ld a, b                                       ; $5053: $78
    ld e, e                                       ; $5054: $5b
    sub h                                         ; $5055: $94
    inc bc                                        ; $5056: $03
    ld e, e                                       ; $5057: $5b
    nop                                           ; $5058: $00
    rst $28                                       ; $5059: $ef
    stop                                          ; $505a: $10 $00
    ld e, [hl]                                    ; $505c: $5e
    and c                                         ; $505d: $a1
    xor l                                         ; $505e: $ad
    ld d, d                                       ; $505f: $52
    ld l, [hl]                                    ; $5060: $6e
    rst $38                                       ; $5061: $ff
    cp [hl]                                       ; $5062: $be
    dec b                                         ; $5063: $05
    nop                                           ; $5064: $00
    push af                                       ; $5065: $f5
    ld a, [hl+]                                   ; $5066: $2a
    ld hl, sp+$3f                                 ; $5067: $f8 $3f
    sbc a                                         ; $5069: $9f
    ld h, b                                       ; $506a: $60
    ld a, d                                       ; $506b: $7a
    and b                                         ; $506c: $a0
    nop                                           ; $506d: $00
    or l                                          ; $506e: $b5
    ld h, b                                       ; $506f: $60
    ld a, [bc]                                    ; $5070: $0a
    ldh [$fd], a                                  ; $5071: $e0 $fd

jr_099_5073:
    ldh [rIE], a                                  ; $5073: $e0 $ff
    jr nz, jr_099_5077                            ; $5075: $20 $00

jr_099_5077:
    db $fd                                        ; $5077: $fd
    ldh a, [$c8]                                  ; $5078: $f0 $c8
    jr nc, jr_099_5031                            ; $507a: $30 $b5

    ld d, b                                       ; $507c: $50
    rst $38                                       ; $507d: $ff
    stop                                          ; $507e: $10 $00
    rst $18                                       ; $5080: $df
    jr nc, @+$58                                  ; $5081: $30 $56

    or c                                          ; $5083: $b1
    sbc l                                         ; $5084: $9d
    ld [hl], d                                    ; $5085: $72

jr_099_5086:
    ei                                            ; $5086: $fb
    db $f4                                        ; $5087: $f4
    nop                                           ; $5088: $00
    ld e, l                                       ; $5089: $5d
    ld b, $ba                                     ; $508a: $06 $ba
    dec b                                         ; $508c: $05
    rst $18                                       ; $508d: $df
    rlca                                          ; $508e: $07
    cp l                                          ; $508f: $bd

jr_099_5090:
    ld b, [hl]                                    ; $5090: $46
    nop                                           ; $5091: $00
    ld a, a                                       ; $5092: $7f
    add h                                         ; $5093: $84
    or e                                          ; $5094: $b3
    ld c, h                                       ; $5095: $4c
    ld l, a                                       ; $5096: $6f
    sub h                                         ; $5097: $94
    add $3c                                       ; $5098: $c6 $3c
    nop                                           ; $509a: $00
    ld a, [de]                                    ; $509b: $1a
    push hl                                       ; $509c: $e5
    dec l                                         ; $509d: $2d
    ld a, [c]                                     ; $509e: $f2
    rst $30                                       ; $509f: $f7
    add sp, $6f                                   ; $50a0: $e8 $6f
    or b                                          ; $50a2: $b0
    nop                                           ; $50a3: $00
    adc a                                         ; $50a4: $8f
    ld a, a                                       ; $50a5: $7f
    db $db                                        ; $50a6: $db
    inc h                                         ; $50a7: $24
    ld e, d                                       ; $50a8: $5a
    nop                                           ; $50a9: $00
    or c                                          ; $50aa: $b1
    nop                                           ; $50ab: $00
    nop                                           ; $50ac: $00
    ld l, a                                       ; $50ad: $6f
    db $10                                        ; $50ae: $10
    or a                                          ; $50af: $b7
    jr jr_099_5125                                ; $50b0: $18 $73

    inc e                                         ; $50b2: $1c
    db $fd                                        ; $50b3: $fd
    rra                                           ; $50b4: $1f
    nop                                           ; $50b5: $00
    ld h, a                                       ; $50b6: $67
    jr jr_099_5086                                ; $50b7: $18 $cd

    jr nc, jr_099_5073                            ; $50b9: $30 $b8

    ld d, b                                       ; $50bb: $50
    call RST_30                                   ; $50bc: $cd $30 $00
    xor a                                         ; $50bf: $af
    ld d, h                                       ; $50c0: $54
    ld d, a                                       ; $50c1: $57
    xor h                                         ; $50c2: $ac
    and d                                         ; $50c3: $a2
    ld e, h                                       ; $50c4: $5c
    rst $10                                       ; $50c5: $d7
    db $fc                                        ; $50c6: $fc
    nop                                           ; $50c7: $00
    rst $38                                       ; $50c8: $ff
    inc b                                         ; $50c9: $04
    ld e, l                                       ; $50ca: $5d
    ld b, $f4                                     ; $50cb: $06 $f4
    rrca                                          ; $50cd: $0f
    cp $04                                        ; $50ce: $fe $04
    inc b                                         ; $50d0: $04
    ld e, e                                       ; $50d1: $5b
    nop                                           ; $50d2: $00
    adc l                                         ; $50d3: $8d
    nop                                           ; $50d4: $00
    db $db                                        ; $50d5: $db
    and d                                         ; $50d6: $a2
    inc b                                         ; $50d7: $04
    ld a, [$0005]                                 ; $50d8: $fa $05 $00
    ld [hl], h                                    ; $50db: $74
    adc e                                         ; $50dc: $8b
    cp $ff                                        ; $50dd: $fe $ff
    rst $38                                       ; $50df: $ff
    jr nz, jr_099_5090                            ; $50e0: $20 $ae

    nop                                           ; $50e2: $00
    nop                                           ; $50e3: $00
    db $fd                                        ; $50e4: $fd
    nop                                           ; $50e5: $00
    cp [hl]                                       ; $50e6: $be
    ld b, c                                       ; $50e7: $41
    ld d, l                                       ; $50e8: $55
    xor d                                         ; $50e9: $aa
    rrca                                          ; $50ea: $0f
    rst $38                                       ; $50eb: $ff
    ld [bc], a                                    ; $50ec: $02
    cp d                                          ; $50ed: $ba
    rlca                                          ; $50ee: $07
    ld e, e                                       ; $50ef: $5b
    ld b, $f3                                     ; $50f0: $06 $f3
    ld c, $e0                                     ; $50f2: $0e $e0
    ld e, h                                       ; $50f4: $5c
    xor a                                         ; $50f5: $af
    nop                                           ; $50f6: $00
    ld [bc], a                                    ; $50f7: $02
    ld a, [$a706]                                 ; $50f8: $fa $06 $a7
    ld e, $4b                                     ; $50fb: $1e $4b
    cp [hl]                                       ; $50fd: $be
    and a                                         ; $50fe: $a7
    nop                                           ; $50ff: $00
    cp $cc                                        ; $5100: $fe $cc
    rst $38                                       ; $5102: $ff
    ld d, h                                       ; $5103: $54
    add b                                         ; $5104: $80
    ld a, [hl+]                                   ; $5105: $2a
    add b                                         ; $5106: $80
    ld d, a                                       ; $5107: $57
    ld b, b                                       ; $5108: $40
    add b                                         ; $5109: $80
    jr nc, jr_099_5168                            ; $510a: $30 $5c

    ld [c], a                                     ; $510c: $e2
    ld b, b                                       ; $510d: $40
    ld d, l                                       ; $510e: $55
    ret nz                                        ; $510f: $c0

    xor $41                                       ; $5110: $ee $41
    nop                                           ; $5112: $00
    ld [hl], l                                    ; $5113: $75
    jp z, $d56a                                   ; $5114: $ca $6a $d5

    ld sp, $f3ff                                  ; $5117: $31 $ff $f3
    nop                                           ; $511a: $00
    nop                                           ; $511b: $00
    ld h, l                                       ; $511c: $65
    nop                                           ; $511d: $00
    adc d                                         ; $511e: $8a
    ld bc, $fff4                                  ; $511f: $01 $f4 $ff
    or [hl]                                       ; $5122: $b6
    add sp, $00                                   ; $5123: $e8 $00

jr_099_5125:
    cp [hl]                                       ; $5125: $be
    add sp, -$4a                                  ; $5126: $e8 $b6
    add sp, -$4c                                  ; $5128: $e8 $b4
    rst $38                                       ; $512a: $ff
    cp [hl]                                       ; $512b: $be

jr_099_512c:
    ldh [$80], a                                  ; $512c: $e0 $80
    ld [bc], a                                    ; $512e: $02
    ld [$f0af], sp                                ; $512f: $08 $af $f0
    cp l                                          ; $5132: $bd
    db $e3                                        ; $5133: $e3
    cp e                                          ; $5134: $bb
    and $bc                                       ; $5135: $e6 $bc
    nop                                           ; $5137: $00
    rst $20                                       ; $5138: $e7
    or a                                          ; $5139: $b7
    db $fd                                        ; $513a: $fd
    cp e                                          ; $513b: $bb
    db $ed                                        ; $513c: $ed
    cp e                                          ; $513d: $bb
    db $ed                                        ; $513e: $ed
    xor l                                         ; $513f: $ad
    nop                                           ; $5140: $00
    rst $38                                       ; $5141: $ff
    rst $20                                       ; $5142: $e7
    rst $38                                       ; $5143: $ff
    db $e3                                        ; $5144: $e3
    rst $38                                       ; $5145: $ff
    push hl                                       ; $5146: $e5
    cp $e2                                        ; $5147: $fe $e2
    jr nz, @+$01                                  ; $5149: $20 $ff

    pop hl                                        ; $514b: $e1
    ld [bc], a                                    ; $514c: $02
    db $10                                        ; $514d: $10
    ldh [rIE], a                                  ; $514e: $e0 $ff
    rst $30                                       ; $5150: $f7
    xor $ef                                       ; $5151: $ee $ef
    nop                                           ; $5153: $00
    rst $30                                       ; $5154: $f7
    ld a, [hl]                                    ; $5155: $7e
    nop                                           ; $5156: $00
    add c                                         ; $5157: $81
    nop                                           ; $5158: $00
    rst $20                                       ; $5159: $e7
    add c                                         ; $515a: $81
    ld b, d                                       ; $515b: $42
    nop                                           ; $515c: $00
    jp $00c3                                      ; $515d: $c3 $c3 $00


    cp l                                          ; $5160: $bd
    jp $f8e9                                      ; $5161: $c3 $e9 $f8


    call $f800                                    ; $5164: $cd $00 $f8

jr_099_5167:
    xor c                                         ; $5167: $a9

jr_099_5168:
    ld a, b                                       ; $5168: $78
    ld c, l                                       ; $5169: $4d
    ld hl, sp-$75                                 ; $516a: $f8 $8b
    rst $38                                       ; $516c: $ff
    adc b                                         ; $516d: $88
    adc h                                         ; $516e: $8c
    ld [bc], a                                    ; $516f: $02
    nop                                           ; $5170: $00
    rrca                                          ; $5171: $0f
    rst $30                                       ; $5172: $f7
    ldh [rNR50], a                                ; $5173: $e0 $24
    nop                                           ; $5175: $00
    inc b                                         ; $5176: $04
    ld c, b                                       ; $5177: $48
    add b                                         ; $5178: $80
    ld a, a                                       ; $5179: $7f
    ld hl, $07f8                                  ; $517a: $21 $f8 $07
    sub [hl]                                      ; $517d: $96
    ld c, d                                       ; $517e: $4a
    rrca                                          ; $517f: $0f
    ldh a, [$1f]                                  ; $5180: $f0 $1f
    ldh [$a6], a                                  ; $5182: $e0 $a6
    ld c, d                                       ; $5184: $4a
    ldh a, [$0c]                                  ; $5185: $f0 $0c
    ld l, b                                       ; $5187: $68
    and b                                         ; $5188: $a0
    ld a, [hl-]                                   ; $5189: $3a
    ret nz                                        ; $518a: $c0

    ld a, [de]                                    ; $518b: $1a
    ld d, b                                       ; $518c: $50
    inc e                                         ; $518d: $1c
    sbc a                                         ; $518e: $9f
    jr z, @-$62                                   ; $518f: $28 $9c

    ld l, e                                       ; $5191: $6b
    nop                                           ; $5192: $00
    ld e, $a9                                     ; $5193: $1e $a9
    sbc [hl]                                      ; $5195: $9e
    add hl, hl                                    ; $5196: $29
    ld e, $a9                                     ; $5197: $1e $a9
    call z, $0002                                 ; $5199: $cc $02 $00
    or a                                          ; $519c: $b7

jr_099_519d:
    ld [bc], a                                    ; $519d: $02
    sbc $02                                       ; $519e: $de $02
    ld a, a                                       ; $51a0: $7f
    ld [bc], a                                    ; $51a1: $02
    db $db                                        ; $51a2: $db
    ld h, $84                                     ; $51a3: $26 $84
    add b                                         ; $51a5: $80
    ld a, [de]                                    ; $51a6: $1a
    db $fd                                        ; $51a7: $fd
    db $10                                        ; $51a8: $10
    ld e, e                                       ; $51a9: $5b
    jr nc, jr_099_512c                            ; $51aa: $30 $80

    ld a, [bc]                                    ; $51ac: $0a
    dec b                                         ; $51ad: $05
    ld a, [$8080]                                 ; $51ae: $fa $80 $80
    ld a, [de]                                    ; $51b1: $1a
    sbc [hl]                                      ; $51b2: $9e
    ld h, c                                       ; $51b3: $61
    ld l, l                                       ; $51b4: $6d
    or d                                          ; $51b5: $b2
    rst $08                                       ; $51b6: $cf
    ccf                                           ; $51b7: $3f
    sbc l                                         ; $51b8: $9d
    db $10                                        ; $51b9: $10
    ld h, b                                       ; $51ba: $60
    jr c, jr_099_519d                             ; $51bb: $38 $e0

    add b                                         ; $51bd: $80
    ld a, [de]                                    ; $51be: $1a
    ldh [$1f], a                                  ; $51bf: $e0 $1f
    jp nc, $002c                                  ; $51c1: $d2 $2c $00

    add b                                         ; $51c4: $80
    ld e, a                                       ; $51c5: $5f
    jr nc, jr_099_5167                            ; $51c6: $30 $9f

    ld a, [de]                                    ; $51c8: $1a
    cp a                                          ; $51c9: $bf
    dec d                                         ; $51ca: $15
    cp a                                          ; $51cb: $bf
    nop                                           ; $51cc: $00
    adc d                                         ; $51cd: $8a
    rst $18                                       ; $51ce: $df
    rst $10                                       ; $51cf: $d7
    xor a                                         ; $51d0: $af
    ld a, a                                       ; $51d1: $7f
    add b                                         ; $51d2: $80
    ccf                                           ; $51d3: $3f
    ld b, b                                       ; $51d4: $40
    nop                                           ; $51d5: $00
    sbc a                                         ; $51d6: $9f
    jr nz, @+$51                                  ; $51d7: $20 $4f

    sub b                                         ; $51d9: $90
    rrca                                          ; $51da: $0f
    ret nc                                        ; $51db: $d0

    cpl                                           ; $51dc: $2f
    ret nc                                        ; $51dd: $d0

    nop                                           ; $51de: $00
    ld e, a                                       ; $51df: $5f
    or b                                          ; $51e0: $b0
    ccf                                           ; $51e1: $3f
    ldh a, [$80]                                  ; $51e2: $f0 $80
    ld a, a                                       ; $51e4: $7f
    add c                                         ; $51e5: $81
    nop                                           ; $51e6: $00
    nop                                           ; $51e7: $00
    cp [hl]                                       ; $51e8: $be
    ld d, $9f                                     ; $51e9: $16 $9f
    inc l                                         ; $51eb: $2c
    sbc a                                         ; $51ec: $9f
    ccf                                           ; $51ed: $3f
    sbc a                                         ; $51ee: $9f
    dec l                                         ; $51ef: $2d
    nop                                           ; $51f0: $00
    sbc h                                         ; $51f1: $9c

jr_099_51f2:
    ld [hl+], a                                   ; $51f2: $22
    sub b                                         ; $51f3: $90
    inc h                                         ; $51f4: $24
    ld l, a                                       ; $51f5: $6f
    ldh a, [$7f]                                  ; $51f6: $f0 $7f
    ldh [rP1], a                                  ; $51f8: $e0 $00
    cp a                                          ; $51fa: $bf
    ld h, b                                       ; $51fb: $60
    ld b, c                                       ; $51fc: $41
    ld a, $81                                     ; $51fd: $3e $81
    ld bc, $e994                                  ; $51ff: $01 $94 $e9
    nop                                           ; $5202: $00
    cp c                                          ; $5203: $b9

jr_099_5204:
    dec b                                         ; $5204: $05
    ld a, h                                       ; $5205: $7c
    ld bc, $2084                                  ; $5206: $01 $84 $20
    add b                                         ; $5209: $80
    inc h                                         ; $520a: $24
    nop                                           ; $520b: $00
    add b                                         ; $520c: $80
    inc h                                         ; $520d: $24
    add e                                         ; $520e: $83
    daa                                           ; $520f: $27
    and b                                         ; $5210: $a0
    rra                                           ; $5211: $1f
    add c                                         ; $5212: $81
    nop                                           ; $5213: $00

jr_099_5214:
    ld b, b                                       ; $5214: $40
    add b                                         ; $5215: $80
    ld hl, sp+$00                                 ; $5216: $f8 $00
    add hl, hl                                    ; $5218: $29
    dec b                                         ; $5219: $05
    ld d, h                                       ; $521a: $54

jr_099_521b:
    ld h, c                                       ; $521b: $61
    add hl, hl                                    ; $521c: $29
    ld h, l                                       ; $521d: $65
    nop                                           ; $521e: $00
    inc d                                         ; $521f: $14
    ld bc, $0509                                  ; $5220: $01 $09 $05
    inc d                                         ; $5223: $14
    jp hl                                         ; $5224: $e9


    pop bc                                        ; $5225: $c1
    ld bc, $fc00                                  ; $5226: $01 $00 $fc
    inc bc                                        ; $5229: $03
    add a                                         ; $522a: $87
    ld a, b                                       ; $522b: $78
    dec de                                        ; $522c: $1b
    db $f4                                        ; $522d: $f4
    call Call_000_18ff                            ; $522e: $cd $ff $18
    ld a, d                                       ; $5231: $7a

jr_099_5232:
    inc b                                         ; $5232: $04
    cp c                                          ; $5233: $b9
    ld d, b                                       ; $5234: $50
    ld [hl+], a                                   ; $5235: $22
    ld b, [hl]                                    ; $5236: $46
    ld [bc], a                                    ; $5237: $02
    ld e, h                                       ; $5238: $5c
    sub $fc                                       ; $5239: $d6 $fc
    db $10                                        ; $523b: $10
    cp l                                          ; $523c: $bd
    inc b                                         ; $523d: $04

jr_099_523e:
    ld a, a                                       ; $523e: $7f
    ld d, b                                       ; $523f: $50
    ld [hl+], a                                   ; $5240: $22
    ld [hl], l                                    ; $5241: $75
    jr nz, jr_099_523e                            ; $5242: $20 $fa

    jr nz, @+$04                                  ; $5244: $20 $02

    push af                                       ; $5246: $f5
    jr nz, jr_099_5204                            ; $5247: $20 $bb

    ld h, b                                       ; $5249: $60
    ld l, [hl]                                    ; $524a: $6e
    or b                                          ; $524b: $b0
    ld d, b                                       ; $524c: $50
    ld a, [de]                                    ; $524d: $1a
    and l                                         ; $524e: $a5
    inc b                                         ; $524f: $04
    ld a, [de]                                    ; $5250: $1a
    add b                                         ; $5251: $80
    jr nz, jr_099_51f2                            ; $5252: $20 $9e

    ld [hl], $70                                  ; $5254: $36 $70
    jr c, jr_099_521b                             ; $5256: $38 $c3

    nop                                           ; $5258: $00
    ld [bc], a                                    ; $5259: $02

jr_099_525a:
    jp nz, $4301                                  ; $525a: $c2 $01 $43

    nop                                           ; $525d: $00
    ld a, $01                                     ; $525e: $3e $01
    ld [hl], b                                    ; $5260: $70
    ld a, b                                       ; $5261: $78
    push bc                                       ; $5262: $c5
    add hl, bc                                    ; $5263: $09
    nop                                           ; $5264: $00
    ld a, [bc]                                    ; $5265: $0a
    db $f4                                        ; $5266: $f4
    rst $38                                       ; $5267: $ff
    ld [hl], b                                    ; $5268: $70

jr_099_5269:
    ld h, b                                       ; $5269: $60
    inc b                                         ; $526a: $04
    ei                                            ; $526b: $fb
    or c                                          ; $526c: $b1
    inc e                                         ; $526d: $1c
    ld [$e7ff], sp                                ; $526e: $08 $ff $e7
    db $fd                                        ; $5271: $fd
    rst $30                                       ; $5272: $f7
    sbc a                                         ; $5273: $9f

jr_099_5274:
    inc b                                         ; $5274: $04
    ccf                                           ; $5275: $3f
    ei                                            ; $5276: $fb
    ld e, $e0                                     ; $5277: $1e $e0
    ld h, l                                       ; $5279: $65
    inc c                                         ; $527a: $0c
    ld e, h                                       ; $527b: $5c
    inc l                                         ; $527c: $2c
    inc de                                        ; $527d: $13
    dec c                                         ; $527e: $0d
    add c                                         ; $527f: $81
    rst $38                                       ; $5280: $ff
    ret nz                                        ; $5281: $c0

    cp a                                          ; $5282: $bf
    add b                                         ; $5283: $80
    and c                                         ; $5284: $a1
    inc b                                         ; $5285: $04
    jr nz, jr_099_5232                            ; $5286: $20 $aa

    dec e                                         ; $5288: $1d
    rla                                           ; $5289: $17
    nop                                           ; $528a: $00
    rst $38                                       ; $528b: $ff
    xor d                                         ; $528c: $aa
    ld d, l                                       ; $528d: $55
    ld l, $1d                                     ; $528e: $2e $1d
    or c                                          ; $5290: $b1
    db $10                                        ; $5291: $10
    jr jr_099_5214                                ; $5292: $18 $80

    ret z                                         ; $5294: $c8

    inc b                                         ; $5295: $04
    inc h                                         ; $5296: $24
    jr z, jr_099_525a                             ; $5297: $28 $c1

    cp a                                          ; $5299: $bf
    ld d, l                                       ; $529a: $55
    db $f4                                        ; $529b: $f4
    dec b                                         ; $529c: $05
    nop                                           ; $529d: $00
    ld d, c                                       ; $529e: $51
    nop                                           ; $529f: $00
    jr c, jr_099_5269                             ; $52a0: $38 $c7

    ld b, c                                       ; $52a2: $41
    nop                                           ; $52a3: $00
    add b                                         ; $52a4: $80
    ld bc, $4140                                  ; $52a5: $01 $40 $41
    ret c                                         ; $52a8: $d8

    ld bc, $0055                                  ; $52a9: $01 $55 $00
    nop                                           ; $52ac: $00
    ld bc, $0001                                  ; $52ad: $01 $01 $00
    ld a, [hl-]                                   ; $52b0: $3a

jr_099_52b1:
    ld hl, sp+$07                                 ; $52b1: $f8 $07
    ld a, [hl]                                    ; $52b3: $7e
    ld b, $08                                     ; $52b4: $06 $08
    nop                                           ; $52b6: $00
    ld e, e                                       ; $52b7: $5b
    ld [$4601], sp                                ; $52b8: $08 $01 $46
    ld b, $01                                     ; $52bb: $06 $01
    push hl                                       ; $52bd: $e5
    jr jr_099_52c5                                ; $52be: $18 $05

    inc b                                         ; $52c0: $04
    ld [$0f5c], sp                                ; $52c1: $08 $5c $0f
    ld b, c                                       ; $52c4: $41

jr_099_52c5:
    cp a                                          ; $52c5: $bf
    db $10                                        ; $52c6: $10
    jr z, jr_099_5274                             ; $52c7: $28 $ab

    ld a, l                                       ; $52c9: $7d
    rlca                                          ; $52ca: $07
    ld c, b                                       ; $52cb: $48
    ld d, c                                       ; $52cc: $51
    jr nc, @+$12                                  ; $52cd: $30 $10

    cp b                                          ; $52cf: $b8
    ld b, a                                       ; $52d0: $47

jr_099_52d1:
    jr nc, jr_099_52db                            ; $52d1: $30 $08

    add c                                         ; $52d3: $81
    nop                                           ; $52d4: $00
    xor c                                         ; $52d5: $a9
    and d                                         ; $52d6: $a2
    ld c, [hl]                                    ; $52d7: $4e
    rlca                                          ; $52d8: $07
    ld [bc], a                                    ; $52d9: $02
    ld b, b                                       ; $52da: $40

jr_099_52db:
    nop                                           ; $52db: $00
    adc b                                         ; $52dc: $88
    ld [hl], a                                    ; $52dd: $77
    ld bc, $1008                                  ; $52de: $01 $08 $10
    add e                                         ; $52e1: $83
    nop                                           ; $52e2: $00
    nop                                           ; $52e3: $00
    rst $28                                       ; $52e4: $ef
    ld d, l                                       ; $52e5: $55
    ld a, l                                       ; $52e6: $7d
    nop                                           ; $52e7: $00
    xor [hl]                                      ; $52e8: $ae
    db $10                                        ; $52e9: $10
    db $fd                                        ; $52ea: $fd
    nop                                           ; $52eb: $00
    nop                                           ; $52ec: $00
    ld a, [$ff10]                                 ; $52ed: $fa $10 $ff
    nop                                           ; $52f0: $00
    ld a, [$ff15]                                 ; $52f1: $fa $15 $ff
    nop                                           ; $52f4: $00
    nop                                           ; $52f5: $00
    ld [$7515], a                                 ; $52f6: $ea $15 $75

jr_099_52f9:
    xor d                                         ; $52f9: $aa
    cp [hl]                                       ; $52fa: $be
    ld b, b                                       ; $52fb: $40
    ld e, a                                       ; $52fc: $5f
    ld c, b                                       ; $52fd: $48
    and b                                         ; $52fe: $a0
    jr z, @+$0e                                   ; $52ff: $28 $0c

    cp a                                          ; $5301: $bf
    ld d, b                                       ; $5302: $50
    push bc                                       ; $5303: $c5
    dec c                                         ; $5304: $0d
    cp $01                                        ; $5305: $fe $01
    ld sp, hl                                     ; $5307: $f9
    nop                                           ; $5308: $00
    ld b, $f4                                     ; $5309: $06 $f4
    ld [$10e0], sp                                ; $530b: $08 $e0 $10
    ret nz                                        ; $530e: $c0

    jr nz, jr_099_52b1                            ; $530f: $20 $a0

    nop                                           ; $5311: $00
    ld b, b                                       ; $5312: $40
    nop                                           ; $5313: $00
    ret nz                                        ; $5314: $c0

    ldh [$1f], a                                  ; $5315: $e0 $1f
    jr jr_099_52f9                                ; $5317: $18 $e0

    add b                                         ; $5319: $80
    ld [$0700], sp                                ; $531a: $08 $00 $07
    nop                                           ; $531d: $00
    inc b                                         ; $531e: $04
    ld [bc], a                                    ; $531f: $02
    db $10                                        ; $5320: $10
    dec e                                         ; $5321: $1d
    nop                                           ; $5322: $00
    rst $38                                       ; $5323: $ff
    ld sp, $dd50                                  ; $5324: $31 $50 $dd
    ld h, b                                       ; $5327: $60
    inc b                                         ; $5328: $04
    db $ed                                        ; $5329: $ed
    dec b                                         ; $532a: $05
    db $10                                        ; $532b: $10
    ld d, a                                       ; $532c: $57
    and b                                         ; $532d: $a0
    jr nc, jr_099_5338                            ; $532e: $30 $08

    ld de, $f807                                  ; $5330: $11 $07 $f8
    jr jr_099_52d1                                ; $5333: $18 $9c

    nop                                           ; $5335: $00
    ldh [rP1], a                                  ; $5336: $e0 $00

jr_099_5338:
    jr nz, jr_099_533c                            ; $5338: $20 $02

    db $10                                        ; $533a: $10
    ld b, b                                       ; $533b: $40

jr_099_533c:
    ld hl, sp+$3e                                 ; $533c: $f8 $3e
    nop                                           ; $533e: $00
    db $fd                                        ; $533f: $fd
    ld [bc], a                                    ; $5340: $02
    ld a, [$f505]                                 ; $5341: $fa $05 $f5
    add hl, bc                                    ; $5344: $09
    nop                                           ; $5345: $00
    ld a, [c]                                     ; $5346: $f2
    add hl, bc                                    ; $5347: $09
    db $eb                                        ; $5348: $eb
    ld de, $11e6                                  ; $5349: $11 $e6 $11
    rst $20                                       ; $534c: $e7
    ld de, $4001                                  ; $534d: $11 $01 $40
    add b                                         ; $5350: $80
    rlca                                          ; $5351: $07
    add b                                         ; $5352: $80

jr_099_5353:
    sbc b                                         ; $5353: $98
    nop                                           ; $5354: $00
    and b                                         ; $5355: $a0
    jr nz, jr_099_5358                            ; $5356: $20 $00

jr_099_5358:
    ld bc, $0324                                  ; $5358: $01 $24 $03
    and a                                         ; $535b: $a7
    jr @-$69                                      ; $535c: $18 $95

    ccf                                           ; $535e: $3f
    ldh [rWY], a                                  ; $535f: $e0 $4a
    stop                                          ; $5361: $10 $00
    rla                                           ; $5363: $17
    ld [$6498], sp                                ; $5364: $08 $98 $64
    db $fc                                        ; $5367: $fc
    inc b                                         ; $5368: $04
    ld hl, sp+$04                                 ; $5369: $f8 $04
    ld b, b                                       ; $536b: $40
    ld d, h                                       ; $536c: $54
    and l                                         ; $536d: $a5
    dec b                                         ; $536e: $05
    db $fd                                        ; $536f: $fd
    ld a, [hl+]                                   ; $5370: $2a
    cp a                                          ; $5371: $bf
    ld b, b                                       ; $5372: $40
    ld a, a                                       ; $5373: $7f
    and b                                         ; $5374: $a0
    ld h, b                                       ; $5375: $60
    cp a                                          ; $5376: $bf
    add h                                         ; $5377: $84
    nop                                           ; $5378: $00
    rst $38                                       ; $5379: $ff
    dec b                                         ; $537a: $05
    jr nz, jr_099_5353                            ; $537b: $20 $d6

    ld hl, $21c5                                  ; $537d: $21 $c5 $21
    nop                                           ; $5380: $00
    sla c                                         ; $5381: $cb $21
    xor l                                         ; $5383: $ad
    ld b, c                                       ; $5384: $41
    ld [$ed41], a                                 ; $5385: $ea $41 $ed
    ld b, b                                       ; $5388: $40
    nop                                           ; $5389: $00
    add sp, $40                                   ; $538a: $e8 $40
    xor b                                         ; $538c: $a8
    ld b, b                                       ; $538d: $40
    rra                                           ; $538e: $1f
    add b                                         ; $538f: $80
    ld a, [bc]                                    ; $5390: $0a
    add b                                         ; $5391: $80
    nop                                           ; $5392: $00
    ld b, l                                       ; $5393: $45
    add b                                         ; $5394: $80
    nop                                           ; $5395: $00
    ret nz                                        ; $5396: $c0

    and b                                         ; $5397: $a0
    ret nz                                        ; $5398: $c0

    add b                                         ; $5399: $80
    ldh [rP1], a                                  ; $539a: $e0 $00
    ret nz                                        ; $539c: $c0

    or b                                          ; $539d: $b0
    ld h, h                                       ; $539e: $64
    ret c                                         ; $539f: $d8

    ld hl, sp+$04                                 ; $53a0: $f8 $04
    xor h                                         ; $53a2: $ac
    inc b                                         ; $53a3: $04
    inc b                                         ; $53a4: $04
    ld e, b                                       ; $53a5: $58
    inc b                                         ; $53a6: $04

jr_099_53a7:
    inc c                                         ; $53a7: $0c
    inc b                                         ; $53a8: $04
    jr jr_099_53af                                ; $53a9: $18 $04

jr_099_53ab:
    db $10                                        ; $53ab: $10
    dec c                                         ; $53ac: $0d
    rlca                                          ; $53ad: $07
    inc b                                         ; $53ae: $04

jr_099_53af:
    cp d                                          ; $53af: $ba
    ld b, l                                       ; $53b0: $45
    ld a, l                                       ; $53b1: $7d
    and d                                         ; $53b2: $a2
    rst $38                                       ; $53b3: $ff
    ld b, b                                       ; $53b4: $40
    nop                                           ; $53b5: $00

jr_099_53b6:
    xor a                                         ; $53b6: $af
    ld d, l                                       ; $53b7: $55
    nop                                           ; $53b8: $00
    rst $18                                       ; $53b9: $df
    jr nz, jr_099_53b6                            ; $53ba: $20 $fa

    nop                                           ; $53bc: $00
    push af                                       ; $53bd: $f5
    nop                                           ; $53be: $00
    add sp, $40                                   ; $53bf: $e8 $40
    nop                                           ; $53c1: $00
    add h                                         ; $53c2: $84
    ld h, b                                       ; $53c3: $60
    call nz, $d460                                ; $53c4: $c4 $60 $d4
    jr nz, jr_099_53ab                            ; $53c7: $20 $e2

    jr nc, jr_099_53cb                            ; $53c9: $30 $00

jr_099_53cb:
    ld [c], a                                     ; $53cb: $e2
    jr nc, jr_099_53a7                            ; $53cc: $30 $d9

    jr nc, @-$0e                                  ; $53ce: $30 $f0

    jr @+$53                                      ; $53d0: $18 $51

    ld l, [hl]                                    ; $53d2: $6e
    nop                                           ; $53d3: $00
    ld l, b                                       ; $53d4: $68
    scf                                           ; $53d5: $37
    dec [hl]                                      ; $53d6: $35
    ld a, [de]                                    ; $53d7: $1a
    ld l, d                                       ; $53d8: $6a
    dec e                                         ; $53d9: $1d
    ld [hl], $1f                                  ; $53da: $36 $1f
    nop                                           ; $53dc: $00
    ld d, e                                       ; $53dd: $53
    dec c                                         ; $53de: $0d
    dec hl                                        ; $53df: $2b
    inc b                                         ; $53e0: $04
    sub a                                         ; $53e1: $97
    nop                                           ; $53e2: $00
    sbc a                                         ; $53e3: $9f
    nop                                           ; $53e4: $00
    ld [$e01c], sp                                ; $53e5: $08 $1c $e0
    ld h, b                                       ; $53e8: $60
    sbc a                                         ; $53e9: $9f
    ld l, [hl]                                    ; $53ea: $6e
    ld [$f04f], sp                                ; $53eb: $08 $4f $f0
    push af                                       ; $53ee: $f5
    inc bc                                        ; $53ef: $03

jr_099_53f0:
    rra                                           ; $53f0: $1f
    ld a, a                                       ; $53f1: $7f
    nop                                           ; $53f2: $00

jr_099_53f3:
    ei                                            ; $53f3: $fb
    nop                                           ; $53f4: $00
    db $dd                                        ; $53f5: $dd
    inc b                                         ; $53f6: $04
    nop                                           ; $53f7: $00
    inc c                                         ; $53f8: $0c
    ld bc, $0500                                  ; $53f9: $01 $00 $05
    ld [hl], l                                    ; $53fc: $75
    adc d                                         ; $53fd: $8a
    cp $55                                        ; $53fe: $fe $55
    rst $38                                       ; $5400: $ff
    jr nz, jr_099_53f3                            ; $5401: $20 $f0

    nop                                           ; $5403: $00
    inc e                                         ; $5404: $1c
    db $ec                                        ; $5405: $ec
    ld a, [de]                                    ; $5406: $1a
    ld a, [$f50d]                                 ; $5407: $fa $0d $f5
    ld c, $fa                                     ; $540a: $0e $fa
    nop                                           ; $540c: $00
    rlca                                          ; $540d: $07
    db $fd                                        ; $540e: $fd
    inc bc                                        ; $540f: $03
    cp $01                                        ; $5410: $fe $01
    rst $38                                       ; $5412: $ff
    nop                                           ; $5413: $00
    ld c, e                                       ; $5414: $4b
    add b                                         ; $5415: $80
    jp c, Jump_000_1000                           ; $5416: $da $00 $10

    nop                                           ; $5419: $00
    inc c                                         ; $541a: $0c
    add b                                         ; $541b: $80
    and e                                         ; $541c: $a3
    ld b, b                                       ; $541d: $40
    ld c, b                                       ; $541e: $48
    nop                                           ; $541f: $00
    or b                                          ; $5420: $b0
    and d                                         ; $5421: $a2
    call c, $eb54                                 ; $5422: $dc $54 $eb
    or l                                          ; $5425: $b5
    nop                                           ; $5426: $00
    ld [$39c2], a                                 ; $5427: $ea $c2 $39
    rrca                                          ; $542a: $0f
    rst $30                                       ; $542b: $f7
    ld e, $00                                     ; $542c: $1e $00
    jr nc, jr_099_53f0                            ; $542e: $30 $c0

    daa                                           ; $5430: $27
    ld a, [$a810]                                 ; $5431: $fa $10 $a8
    nop                                           ; $5434: $00
    db $10                                        ; $5435: $10
    add hl, sp                                    ; $5436: $39
    ld b, $3f                                     ; $5437: $06 $3f
    nop                                           ; $5439: $00
    ccf                                           ; $543a: $3f
    nop                                           ; $543b: $00
    nop                                           ; $543c: $00
    nop                                           ; $543d: $00
    ccf                                           ; $543e: $3f
    ld [bc], a                                    ; $543f: $02
    ld bc, $01e0                                  ; $5440: $01 $e0 $01
    add hl, de                                    ; $5443: $19
    nop                                           ; $5444: $00
    dec b                                         ; $5445: $05
    add c                                         ; $5446: $81
    jr nc, jr_099_544a                            ; $5447: $30 $01

    inc h                                         ; $5449: $24

jr_099_544a:
    ret nz                                        ; $544a: $c0

    db $fd                                        ; $544b: $fd
    nop                                           ; $544c: $00
    dec b                                         ; $544d: $05
    ld hl, sp-$20                                 ; $544e: $f8 $e0
    ld a, [bc]                                    ; $5450: $0a
    nop                                           ; $5451: $00
    rra                                           ; $5452: $1f
    and b                                         ; $5453: $a0
    xor a                                         ; $5454: $af
    sub b                                         ; $5455: $90
    ld c, a                                       ; $5456: $4f
    sub b                                         ; $5457: $90
    rst $10                                       ; $5458: $d7
    adc b                                         ; $5459: $88
    nop                                           ; $545a: $00
    ld h, a                                       ; $545b: $67
    adc b                                         ; $545c: $88
    rst $20                                       ; $545d: $e7
    adc b                                         ; $545e: $88
    ccf                                           ; $545f: $3f
    nop                                           ; $5460: $00
    ld a, [hl+]                                   ; $5461: $2a
    nop                                           ; $5462: $00
    ld b, b                                       ; $5463: $40
    dec [hl]                                      ; $5464: $35
    ld l, $21                                     ; $5465: $2e $21
    jr nz, jr_099_5469                            ; $5467: $20 $00

jr_099_5469:
    ld h, b                                       ; $5469: $60
    ret nz                                        ; $546a: $c0

    ldh a, [rSB]                                  ; $546b: $f0 $01
    nop                                           ; $546d: $00
    and b                                         ; $546e: $a0
    ld bc, $0142                                  ; $546f: $01 $42 $01
    nop                                           ; $5472: $00
    inc bc                                        ; $5473: $03
    dec b                                         ; $5474: $05
    inc bc                                        ; $5475: $03
    nop                                           ; $5476: $00
    ld bc, $0307                                  ; $5477: $01 $07 $03
    dec c                                         ; $547a: $0d
    ld h, $1b                                     ; $547b: $26 $1b
    ld l, e                                       ; $547d: $6b
    add h                                         ; $547e: $84
    nop                                           ; $547f: $00
    and e                                         ; $5480: $a3
    add h                                         ; $5481: $84
    db $d3                                        ; $5482: $d3
    add h                                         ; $5483: $84
    or c                                          ; $5484: $b1
    add d                                         ; $5485: $82
    ld d, e                                       ; $5486: $53
    add d                                         ; $5487: $82
    nop                                           ; $5488: $00
    or e                                          ; $5489: $b3
    ld [bc], a                                    ; $548a: $02
    inc de                                        ; $548b: $13
    ld [bc], a                                    ; $548c: $02
    ld de, $ab02                                  ; $548d: $11 $02 $ab
    ld d, h                                       ; $5490: $54
    inc d                                         ; $5491: $14
    rst $10                                       ; $5492: $d7
    ld a, [hl+]                                   ; $5493: $2a
    ld a, [$05b0]                                 ; $5494: $fa $b0 $05
    xor e                                         ; $5497: $ab
    ret                                           ; $5498: $c9


    ld h, $e1                                     ; $5499: $26 $e1
    nop                                           ; $549b: $00
    ld [$07b8], sp                                ; $549c: $08 $b8 $07
    ld b, $f9                                     ; $549f: $06 $f9
    ld h, h                                       ; $54a1: $64
    add hl, bc                                    ; $54a2: $09
    ld a, [$570f]                                 ; $54a3: $fa $0f $57
    nop                                           ; $54a6: $00
    ld hl, sp-$03                                 ; $54a7: $f8 $fd
    nop                                           ; $54a9: $00
    adc d                                         ; $54aa: $8a
    halt                                          ; $54ab: $76
    ld d, $ec                                     ; $54ac: $16 $ec
    xor l                                         ; $54ae: $ad
    nop                                           ; $54af: $00
    ld e, b                                       ; $54b0: $58
    ld d, [hl]                                    ; $54b1: $56
    cp b                                          ; $54b2: $b8
    ld l, l                                       ; $54b3: $6d
    ld hl, sp-$36                                 ; $54b4: $f8 $ca
    or b                                          ; $54b6: $b0
    call nc, Call_000_2000                        ; $54b7: $d4 $00 $20
    jp hl                                         ; $54ba: $e9


    nop                                           ; $54bb: $00
    inc de                                        ; $54bc: $13
    ld [bc], a                                    ; $54bd: $02
    ld hl, $2306                                  ; $54be: $21 $06 $23
    nop                                           ; $54c1: $00
    ld b, $2b                                     ; $54c2: $06 $2b
    inc b                                         ; $54c4: $04
    ld b, a                                       ; $54c5: $47
    inc c                                         ; $54c6: $0c
    ld b, a                                       ; $54c7: $47

jr_099_54c8:
    inc c                                         ; $54c8: $0c
    adc e                                         ; $54c9: $8b
    db $10                                        ; $54ca: $10
    inc c                                         ; $54cb: $0c
    rrca                                          ; $54cc: $0f
    jr jr_099_553b                                ; $54cd: $18 $6c

    ld c, $fe                                     ; $54cf: $0e $fe
    ld bc, $2ad5                                  ; $54d1: $01 $d5 $2a
    nop                                           ; $54d4: $00
    ei                                            ; $54d5: $fb
    dec d                                         ; $54d6: $15
    push af                                       ; $54d7: $f5
    jr nz, jr_099_54c8                            ; $54d8: $20 $ee

    ld bc, $22fd                                  ; $54da: $01 $fd $22
    ld de, $005b                                  ; $54dd: $11 $5b $00
    xor a                                         ; $54e0: $af
    ret nz                                        ; $54e1: $c0

    ld b, b                                       ; $54e2: $40
    nop                                           ; $54e3: $00
    inc bc                                        ; $54e4: $03
    jp nc, Jump_000_01da                          ; $54e5: $d2 $da $01

    nop                                           ; $54e8: $00
    ld [$3000], sp                                ; $54e9: $08 $00 $30
    ld bc, $02c5                                  ; $54ec: $01 $c5 $02
    ld [bc], a                                    ; $54ef: $02
    dec c                                         ; $54f0: $0d
    nop                                           ; $54f1: $00
    dec b                                         ; $54f2: $05
    dec sp                                        ; $54f3: $3b
    dec hl                                        ; $54f4: $2b
    sub $0f                                       ; $54f5: $d6 $0f
    jr c, jr_099_5530                             ; $54f7: $38 $37

    ld e, b                                       ; $54f9: $58
    inc bc                                        ; $54fa: $03
    ld e, a                                       ; $54fb: $5f
    or b                                          ; $54fc: $b0
    cp a                                          ; $54fd: $bf
    ld h, b                                       ; $54fe: $60
    ld a, a                                       ; $54ff: $7f
    ret nz                                        ; $5500: $c0

    ld e, a                                       ; $5501: $5f
    rlca                                          ; $5502: $07
    db $db                                        ; $5503: $db
    rlca                                          ; $5504: $07
    add b                                         ; $5505: $80
    jr nz, jr_099_5552                            ; $5506: $20 $4a

    cp e                                          ; $5508: $bb
    ld d, l                                       ; $5509: $55
    db $fd                                        ; $550a: $fd
    ld [bc], a                                    ; $550b: $02
    rst $28                                       ; $550c: $ef
    nop                                           ; $550d: $00
    rst $30                                       ; $550e: $f7
    ld b, b                                       ; $550f: $40
    nop                                           ; $5510: $00
    ld [hl], b                                    ; $5511: $70
    ld e, $f7                                     ; $5512: $1e $f7
    ld a, [bc]                                    ; $5514: $0a
    ei                                            ; $5515: $fb

jr_099_5516:
    inc b                                         ; $5516: $04
    db $dd                                        ; $5517: $dd
    ld [hl+], a                                   ; $5518: $22
    nop                                           ; $5519: $00
    sub d                                         ; $551a: $92
    ld a, l                                       ; $551b: $7d
    push de                                       ; $551c: $d5
    ld l, $e9                                     ; $551d: $2e $e9
    rla                                           ; $551f: $17
    push af                                       ; $5520: $f5
    ld a, [bc]                                    ; $5521: $0a
    ret nz                                        ; $5522: $c0

    inc l                                         ; $5523: $2c
    add hl, bc                                    ; $5524: $09
    cp l                                          ; $5525: $bd
    rrca                                          ; $5526: $0f
    ret nz                                        ; $5527: $c0

    ccf                                           ; $5528: $3f
    ld a, a                                       ; $5529: $7f
    add b                                         ; $552a: $80
    ld e, a                                       ; $552b: $5f
    ldh [$60], a                                  ; $552c: $e0 $60
    ld a, [hl+]                                   ; $552e: $2a
    db $e4                                        ; $552f: $e4

jr_099_5530:
    ld [bc], a                                    ; $5530: $02
    ld a, e                                       ; $5531: $7b
    daa                                           ; $5532: $27
    inc b                                         ; $5533: $04
    ld d, a                                       ; $5534: $57
    xor b                                         ; $5535: $a8
    rst $38                                       ; $5536: $ff
    inc b                                         ; $5537: $04
    nop                                           ; $5538: $00
    ld a, a                                       ; $5539: $7f
    add d                                         ; $553a: $82

jr_099_553b:
    rst $28                                       ; $553b: $ef
    ld bc, $80df                                  ; $553c: $01 $df $80
    rst $38                                       ; $553f: $ff
    ld bc, $7d00                                  ; $5540: $01 $00 $7d

jr_099_5543:
    add d                                         ; $5543: $82
    ei                                            ; $5544: $fb
    nop                                           ; $5545: $00
    db $fd                                        ; $5546: $fd
    ld [hl+], a                                   ; $5547: $22
    cp [hl]                                       ; $5548: $be
    ld b, c                                       ; $5549: $41
    jr z, jr_099_5543                             ; $554a: $28 $f7

    xor d                                         ; $554c: $aa
    jp hl                                         ; $554d: $e9


    rrca                                          ; $554e: $0f
    cp a                                          ; $554f: $bf
    ld a, [hl+]                                   ; $5550: $2a
    dec b                                         ; $5551: $05

jr_099_5552:
    inc bc                                        ; $5552: $03
    db $fc                                        ; $5553: $fc
    cp $04                                        ; $5554: $fe $04
    ld bc, $07fa                                  ; $5556: $01 $fa $07
    xor c                                         ; $5559: $a9
    cp $30                                        ; $555a: $fe $30
    jr z, jr_099_55a9                             ; $555c: $28 $4b

    cp h                                          ; $555e: $bc
    inc c                                         ; $555f: $0c
    and a                                         ; $5560: $a7
    ld a, b                                       ; $5561: $78

jr_099_5562:
    xor a                                         ; $5562: $af
    ret nc                                        ; $5563: $d0

    inc c                                         ; $5564: $0c
    ld [bc], a                                    ; $5565: $02
    sub h                                         ; $5566: $94
    ld e, h                                       ; $5567: $5c
    jr nz, @-$10                                  ; $5568: $20 $ee

    ld [bc], a                                    ; $556a: $02
    db $10                                        ; $556b: $10
    rst $30                                       ; $556c: $f7
    jr z, @-$4f                                   ; $556d: $28 $af

    ld d, b                                       ; $556f: $50
    rst $38                                       ; $5570: $ff
    ld [hl], h                                    ; $5571: $74
    ld [bc], a                                    ; $5572: $02
    ld e, a                                       ; $5573: $5f
    jr nz, jr_099_5516                            ; $5574: $20 $a0

    xor e                                         ; $5576: $ab
    ld [$fb00], sp                                ; $5577: $08 $00 $fb
    inc d                                         ; $557a: $14
    push de                                       ; $557b: $d5
    ld a, [hl+]                                   ; $557c: $2a
    rst $38                                       ; $557d: $ff

jr_099_557e:
    inc bc                                        ; $557e: $03
    dec d                                         ; $557f: $15
    rst $10                                       ; $5580: $d7
    jr z, jr_099_557e                             ; $5581: $28 $fb

    nop                                           ; $5583: $00
    push de                                       ; $5584: $d5
    ret nz                                        ; $5585: $c0

    ld de, $0a78                                  ; $5586: $11 $78 $0a
    ld b, d                                       ; $5589: $42
    xor $74                                       ; $558a: $ee $74
    nop                                           ; $558c: $00
    rst $00                                       ; $558d: $c7
    rst $38                                       ; $558e: $ff
    db $e3                                        ; $558f: $e3
    rst $18                                       ; $5590: $df
    inc b                                         ; $5591: $04
    ld c, b                                       ; $5592: $48
    nop                                           ; $5593: $00
    daa                                           ; $5594: $27
    ld bc, $4080                                  ; $5595: $01 $80 $40
    inc bc                                        ; $5598: $03
    jr c, jr_099_5562                             ; $5599: $38 $c7

    ld b, b                                       ; $559b: $40
    dec hl                                        ; $559c: $2b
    ld b, e                                       ; $559d: $43
    inc bc                                        ; $559e: $03
    ld d, b                                       ; $559f: $50
    inc bc                                        ; $55a0: $03
    db $10                                        ; $55a1: $10
    xor b                                         ; $55a2: $a8
    ld d, a                                       ; $55a3: $57
    ld bc, $2360                                  ; $55a4: $01 $60 $23
    and c                                         ; $55a7: $a1
    nop                                           ; $55a8: $00

jr_099_55a9:
    ret nc                                        ; $55a9: $d0

    ld bc, $a808                                  ; $55aa: $01 $08 $a8
    ld b, c                                       ; $55ad: $41
    ld c, b                                       ; $55ae: $48
    or a                                          ; $55af: $b7
    ld h, b                                       ; $55b0: $60
    dec de                                        ; $55b1: $1b
    add c                                         ; $55b2: $81
    nop                                           ; $55b3: $00
    ld b, b                                       ; $55b4: $40
    add b                                         ; $55b5: $80
    sub b                                         ; $55b6: $90
    ld bc, $0051                                  ; $55b7: $01 $51 $00
    ld e, b                                       ; $55ba: $58
    and a                                         ; $55bb: $a7
    rra                                           ; $55bc: $1f
    nop                                           ; $55bd: $00
    ld b, $08                                     ; $55be: $06 $08
    ld bc, $010a                                  ; $55c0: $01 $0a $01
    dec b                                         ; $55c3: $05
    ld a, [hl]                                    ; $55c4: $7e
    inc bc                                        ; $55c5: $03
    and b                                         ; $55c6: $a0
    ld bc, $10d4                                  ; $55c7: $01 $d4 $10
    ld bc, $a758                                  ; $55ca: $01 $58 $a7
    add b                                         ; $55cd: $80
    dec de                                        ; $55ce: $1b
    ld hl, $4300                                  ; $55cf: $21 $00 $43
    nop                                           ; $55d2: $00
    add hl, de                                    ; $55d3: $19

jr_099_55d4:
    and b                                         ; $55d4: $a0
    ld bc, $6055                                  ; $55d5: $01 $55 $60
    inc hl                                        ; $55d8: $23

jr_099_55d9:
    sub h                                         ; $55d9: $94
    dec bc                                        ; $55da: $0b
    dec d                                         ; $55db: $15
    nop                                           ; $55dc: $00
    ld h, $08                                     ; $55dd: $26 $08
    nop                                           ; $55df: $00
    jr c, jr_099_55a9                             ; $55e0: $38 $c7

    and c                                         ; $55e2: $a1
    nop                                           ; $55e3: $00
    call nc, $eb01                                ; $55e4: $d4 $01 $eb
    nop                                           ; $55e7: $00
    jr nz, jr_099_563f                            ; $55e8: $20 $55

    xor d                                         ; $55ea: $aa
    ld h, b                                       ; $55eb: $60
    ld [$0100], sp                                ; $55ec: $08 $00 $01
    ld hl, sp+$07                                 ; $55ef: $f8 $07
    add c                                         ; $55f1: $81
    jr nz, jr_099_55f4                            ; $55f2: $20 $00

jr_099_55f4:
    ldh a, [$3e]                                  ; $55f4: $f0 $3e
    ld [bc], a                                    ; $55f6: $02
    ld d, l                                       ; $55f7: $55
    xor d                                         ; $55f8: $aa
    push af                                       ; $55f9: $f5
    nop                                           ; $55fa: $00
    xor d                                         ; $55fb: $aa
    dec b                                         ; $55fc: $05
    ld b, c                                       ; $55fd: $41
    ld e, l                                       ; $55fe: $5d
    and b                                         ; $55ff: $a0
    jr z, jr_099_55d9                             ; $5600: $28 $d7

    sub b                                         ; $5602: $90
    dec de                                        ; $5603: $1b
    ld b, c                                       ; $5604: $41
    ld [bc], a                                    ; $5605: $02
    nop                                           ; $5606: $00
    ld b, l                                       ; $5607: $45
    xor d                                         ; $5608: $aa
    ld b, b                                       ; $5609: $40
    nop                                           ; $560a: $00
    jr c, jr_099_55d4                             ; $560b: $38 $c7

    inc bc                                        ; $560d: $03
    ret c                                         ; $560e: $d8

    inc bc                                        ; $560f: $03
    inc bc                                        ; $5610: $03
    ret nc                                        ; $5611: $d0

    inc bc                                        ; $5612: $03
    cp d                                          ; $5613: $ba
    ld [hl], d                                    ; $5614: $72
    ld [$e0a1], sp                                ; $5615: $08 $a1 $e0
    inc hl                                        ; $5618: $23
    xor h                                         ; $5619: $ac
    ld [$0818], sp                                ; $561a: $08 $18 $08
    add e                                         ; $561d: $83
    or b                                          ; $561e: $b0
    inc bc                                        ; $561f: $03
    dec hl                                        ; $5620: $2b

jr_099_5621:
    ld sp, $1400                                  ; $5621: $31 $00 $14
    jr nz, jr_099_5636                            ; $5624: $20 $10

    sub b                                         ; $5626: $90
    jr jr_099_5621                                ; $5627: $18 $f8

    rlca                                          ; $5629: $07
    ld d, l                                       ; $562a: $55
    ld l, b                                       ; $562b: $68
    db $10                                        ; $562c: $10
    call nz, Call_000_0229                        ; $562d: $c4 $29 $02
    jr c, @+$12                                   ; $5630: $38 $10

    ld l, b                                       ; $5632: $68
    sub a                                         ; $5633: $97
    dec b                                         ; $5634: $05
    ret c                                         ; $5635: $d8

jr_099_5636:
    inc bc                                        ; $5636: $03
    dec b                                         ; $5637: $05
    nop                                           ; $5638: $00
    ld h, b                                       ; $5639: $60
    dec bc                                        ; $563a: $0b
    jp nc, Jump_000_1c10                          ; $563b: $d2 $10 $1c

    inc b                                         ; $563e: $04

jr_099_563f:
    rst $38                                       ; $563f: $ff
    ld bc, $0400                                  ; $5640: $01 $00 $04
    ld bc, $ab50                                  ; $5643: $01 $50 $ab
    add b                                         ; $5646: $80
    nop                                           ; $5647: $00
    dec b                                         ; $5648: $05
    sub b                                         ; $5649: $90
    nop                                           ; $564a: $00
    dec d                                         ; $564b: $15
    nop                                           ; $564c: $00
    sbc b                                         ; $564d: $98
    ld h, a                                       ; $564e: $67
    db $10                                        ; $564f: $10
    dec hl                                        ; $5650: $2b
    nop                                           ; $5651: $00
    ld d, h                                       ; $5652: $54
    db $10                                        ; $5653: $10
    db $10                                        ; $5654: $10
    rst $38                                       ; $5655: $ff
    add sp, -$01                                  ; $5656: $e8 $ff
    ld d, l                                       ; $5658: $55
    add b                                         ; $5659: $80
    inc b                                         ; $565a: $04
    ld c, b                                       ; $565b: $48
    nop                                           ; $565c: $00
    add hl, de                                    ; $565d: $19
    sbc c                                         ; $565e: $99
    ld de, $f000                                  ; $565f: $11 $00 $f0
    rst $38                                       ; $5662: $ff
    ld a, [$f1fd]                                 ; $5663: $fa $fd $f1
    cp $fc                                        ; $5666: $fe $fc
    rst $38                                       ; $5668: $ff
    nop                                           ; $5669: $00
    add sp, -$01                                  ; $566a: $e8 $ff
    ld d, h                                       ; $566c: $54
    ei                                            ; $566d: $fb
    xor e                                         ; $566e: $ab
    db $f4                                        ; $566f: $f4
    ld b, a                                       ; $5670: $47
    ld hl, sp+$00                                 ; $5671: $f8 $00
    ld a, a                                       ; $5673: $7f
    add b                                         ; $5674: $80
    rst $38                                       ; $5675: $ff
    nop                                           ; $5676: $00
    ld a, e                                       ; $5677: $7b
    add h                                         ; $5678: $84
    or l                                          ; $5679: $b5
    ld c, d                                       ; $567a: $4a
    nop                                           ; $567b: $00
    ld e, b                                       ; $567c: $58
    and a                                         ; $567d: $a7
    and c                                         ; $567e: $a1
    ld e, a                                       ; $567f: $5f
    ldh a, [rIF]                                  ; $5680: $f0 $0f
    db $fd                                        ; $5682: $fd
    ld [bc], a                                    ; $5683: $02
    nop                                           ; $5684: $00
    and d                                         ; $5685: $a2
    ld e, a                                       ; $5686: $5f
    push de                                       ; $5687: $d5
    dec hl                                        ; $5688: $2b
    ld [$4015], a                                 ; $5689: $ea $15 $40
    cp a                                          ; $568c: $bf
    nop                                           ; $568d: $00
    ld a, [bc]                                    ; $568e: $0a
    rst $38                                       ; $568f: $ff
    ld e, a                                       ; $5690: $5f
    rst $38                                       ; $5691: $ff
    rlca                                          ; $5692: $07
    rst $38                                       ; $5693: $ff
    ld d, e                                       ; $5694: $53
    xor a                                         ; $5695: $af
    nop                                           ; $5696: $00
    xor [hl]                                      ; $5697: $ae
    or [hl]                                       ; $5698: $b6
    ld c, d                                       ; $5699: $4a
    or $2c                                        ; $569a: $f6 $2c
    or $4a                                        ; $569c: $f6 $4a
    or $00                                        ; $569e: $f6 $00
    db $ed                                        ; $56a0: $ed
    di                                            ; $56a1: $f3
    ret c                                         ; $56a2: $d8

    rst $20                                       ; $56a3: $e7
    db $dd                                        ; $56a4: $dd
    db $e3                                        ; $56a5: $e3
    cp [hl]                                       ; $56a6: $be
    pop bc                                        ; $56a7: $c1
    nop                                           ; $56a8: $00
    xor e                                         ; $56a9: $ab
    call nc, $fa85                                ; $56aa: $d4 $85 $fa
    ld a, [c]                                     ; $56ad: $f2
    db $fd                                        ; $56ae: $fd
    ld b, c                                       ; $56af: $41
    cp $20                                        ; $56b0: $fe $20
    rla                                           ; $56b2: $17
    add sp, $3a                                   ; $56b3: $e8 $3a
    ld [$d42b], sp                                ; $56b5: $08 $2b $d4
    cp $01                                        ; $56b8: $fe $01
    rst $38                                       ; $56ba: $ff
    ld b, d                                       ; $56bb: $42
    nop                                           ; $56bc: $00
    ld [bc], a                                    ; $56bd: $02
    ld [$a15e], sp                                ; $56be: $08 $5e $a1
    push af                                       ; $56c1: $f5
    ld a, [bc]                                    ; $56c2: $0a
    ld a, [bc]                                    ; $56c3: $0a
    ld [$00a9], sp                                ; $56c4: $08 $a9 $00
    ld d, a                                       ; $56c7: $57
    di                                            ; $56c8: $f3
    rrca                                          ; $56c9: $0f
    push hl                                       ; $56ca: $e5
    rra                                           ; $56cb: $1f
    add [hl]                                      ; $56cc: $86
    ld a, a                                       ; $56cd: $7f
    and d                                         ; $56ce: $a2
    nop                                           ; $56cf: $00
    ld e, a                                       ; $56d0: $5f
    ld d, h                                       ; $56d1: $54
    xor a                                         ; $56d2: $af
    cp $0f                                        ; $56d3: $fe $0f
    db $fd                                        ; $56d5: $fd
    rlca                                          ; $56d6: $07
    db $db                                        ; $56d7: $db
    nop                                           ; $56d8: $00
    db $e4                                        ; $56d9: $e4
    sbc h                                         ; $56da: $9c
    db $e3                                        ; $56db: $e3
    ld c, c                                       ; $56dc: $49
    rst $30                                       ; $56dd: $f7
    sbc d                                         ; $56de: $9a
    rst $20                                       ; $56df: $e7
    dec a                                         ; $56e0: $3d
    nop                                           ; $56e1: $00
    jp Jump_099_43bc                              ; $56e2: $c3 $bc $43


    ld c, $f1                                     ; $56e5: $0e $f1
    ld e, a                                       ; $56e7: $5f
    ldh [$95], a                                  ; $56e8: $e0 $95
    nop                                           ; $56ea: $00
    ld [$fe61], a                                 ; $56eb: $ea $61 $fe
    ret nc                                        ; $56ee: $d0

    rst $38                                       ; $56ef: $ff
    ld [$fdff], a                                 ; $56f0: $ea $ff $fd
    nop                                           ; $56f3: $00
    rst $38                                       ; $56f4: $ff
    ccf                                           ; $56f5: $3f
    ccf                                           ; $56f6: $3f
    inc de                                        ; $56f7: $13
    inc de                                        ; $56f8: $13
    inc b                                         ; $56f9: $04
    inc b                                         ; $56fa: $04
    xor a                                         ; $56fb: $af
    db $10                                        ; $56fc: $10
    ld d, b                                       ; $56fd: $50
    ld d, l                                       ; $56fe: $55
    xor d                                         ; $56ff: $aa
    ld b, c                                       ; $5700: $41
    ld [$ff4a], sp                                ; $5701: $08 $4a $ff
    and l                                         ; $5704: $a5
    rst $38                                       ; $5705: $ff
    add b                                         ; $5706: $80
    ld bc, $aa08                                  ; $5707: $01 $08 $aa
    ld d, a                                       ; $570a: $57
    ld b, a                                       ; $570b: $47

jr_099_570c:
    cp a                                          ; $570c: $bf

jr_099_570d:
    rrca                                          ; $570d: $0f
    rst $38                                       ; $570e: $ff
    ld d, l                                       ; $570f: $55
    nop                                           ; $5710: $00
    rst $38                                       ; $5711: $ff
    cp d                                          ; $5712: $ba
    rst $38                                       ; $5713: $ff
    ld a, h                                       ; $5714: $7c
    rst $38                                       ; $5715: $ff
    ld sp, hl                                     ; $5716: $f9
    rst $38                                       ; $5717: $ff
    ld a, [c]                                     ; $5718: $f2
    nop                                           ; $5719: $00
    db $fd                                        ; $571a: $fd
    xor h                                         ; $571b: $ac
    di                                            ; $571c: $f3
    ld c, c                                       ; $571d: $49
    rst $30                                       ; $571e: $f7
    ldh [rIE], a                                  ; $571f: $e0 $ff
    reti                                          ; $5721: $d9


    nop                                           ; $5722: $00
    rst $20                                       ; $5723: $e7
    xor h                                         ; $5724: $ac
    db $d3                                        ; $5725: $d3
    ld e, $e1                                     ; $5726: $1e $e1
    dec a                                         ; $5728: $3d
    jp nz, Jump_000_20be                          ; $5729: $c2 $be $20

    ld b, c                                       ; $572c: $41
    nop                                           ; $572d: $00
    ld bc, $ff60                                  ; $572e: $01 $60 $ff

jr_099_5731:
    rst $38                                       ; $5731: $ff
    adc e                                         ; $5732: $8b
    rst $38                                       ; $5733: $ff
    di                                            ; $5734: $f3
    nop                                           ; $5735: $00
    rst $08                                       ; $5736: $cf
    sbc c                                         ; $5737: $99
    rst $20                                       ; $5738: $e7
    di                                            ; $5739: $f3
    rst $08                                       ; $573a: $cf
    reti                                          ; $573b: $d9


    rst $20                                       ; $573c: $e7
    ld d, d                                       ; $573d: $52
    nop                                           ; $573e: $00
    ld l, [hl]                                    ; $573f: $6e
    dec a                                         ; $5740: $3d
    dec a                                         ; $5741: $3d
    sub [hl]                                      ; $5742: $96
    ld a, [hl]                                    ; $5743: $7e
    inc l                                         ; $5744: $2c
    db $fc                                        ; $5745: $fc
    ret c                                         ; $5746: $d8

    nop                                           ; $5747: $00
    ld hl, sp+$78                                 ; $5748: $f8 $78
    ld hl, sp-$44                                 ; $574a: $f8 $bc
    db $fc                                        ; $574c: $fc
    ld d, [hl]                                    ; $574d: $56
    cp $ab                                        ; $574e: $fe $ab
    add b                                         ; $5750: $80
    ld c, b                                       ; $5751: $48
    nop                                           ; $5752: $00
    ld a, [$fc05]                                 ; $5753: $fa $05 $fc
    inc bc                                        ; $5756: $03
    ld d, b                                       ; $5757: $50
    xor a                                         ; $5758: $af
    ld hl, $df00                                  ; $5759: $21 $00 $df
    ld a, b                                       ; $575c: $78
    add a                                         ; $575d: $87
    db $f4                                        ; $575e: $f4
    dec bc                                        ; $575f: $0b
    ld [$f515], a                                 ; $5760: $ea $15 $f5
    ld b, d                                       ; $5763: $42
    ld a, [bc]                                    ; $5764: $0a
    ld b, b                                       ; $5765: $40
    ld e, b                                       ; $5766: $58
    add b                                         ; $5767: $80
    add b                                         ; $5768: $80
    sbc a                                         ; $5769: $9f
    jr nz, jr_099_576e                            ; $576a: $20 $02

jr_099_576c:
    jr c, jr_099_570c                             ; $576c: $38 $9e

jr_099_576e:
    nop                                           ; $576e: $00
    jr nz, jr_099_570d                            ; $576f: $20 $9c

    jr nz, jr_099_576c                            ; $5771: $20 $f9

    nop                                           ; $5773: $00
    add d                                         ; $5774: $82
    ld [hl], e                                    ; $5775: $73
    ldh [rP1], a                                  ; $5776: $e0 $00
    rlca                                          ; $5778: $07
    ret z                                         ; $5779: $c8

    rlca                                          ; $577a: $07
    sbc [hl]                                      ; $577b: $9e
    ld bc, $003f                                  ; $577c: $01 $3f $00
    ld a, [hl]                                    ; $577f: $7e
    nop                                           ; $5780: $00
    ld bc, $07f9                                  ; $5781: $01 $f9 $07
    nop                                           ; $5784: $00
    add b                                         ; $5785: $80
    ld b, b                                       ; $5786: $40
    ret nz                                        ; $5787: $c0

    jr nz, @+$22                                  ; $5788: $20 $20

    ldh [$c0], a                                  ; $578a: $e0 $c0
    ld bc, $6000                                  ; $578c: $01 $00 $60
    ldh [$a0], a                                  ; $578f: $e0 $a0
    ld h, b                                       ; $5791: $60
    ld d, b                                       ; $5792: $50
    ld [bc], a                                    ; $5793: $02
    or b                                          ; $5794: $b0
    sbc c                                         ; $5795: $99
    jr nz, @-$6b                                  ; $5796: $20 $93

    jr nz, jr_099_5731                            ; $5798: $20 $97

    inc [hl]                                      ; $579a: $34
    db $10                                        ; $579b: $10
    sbc l                                         ; $579c: $9d
    nop                                           ; $579d: $00
    inc hl                                        ; $579e: $23
    sbc d                                         ; $579f: $9a
    daa                                           ; $57a0: $27
    sub b                                         ; $57a1: $90
    cpl                                           ; $57a2: $2f
    db $f4                                        ; $57a3: $f4
    rrca                                          ; $57a4: $0f
    ldh [rP1], a                                  ; $57a5: $e0 $00
    rra                                           ; $57a7: $1f
    rst $20                                       ; $57a8: $e7
    jr @+$01                                      ; $57a9: $18 $ff

    nop                                           ; $57ab: $00
    ld e, $e0                                     ; $57ac: $1e $e0
    dec a                                         ; $57ae: $3d
    nop                                           ; $57af: $00
    ret nz                                        ; $57b0: $c0

    ld a, d                                       ; $57b1: $7a
    add b                                         ; $57b2: $80
    db $f4                                        ; $57b3: $f4
    nop                                           ; $57b4: $00
    cp b                                          ; $57b5: $b8
    ld hl, sp+$70                                 ; $57b6: $f8 $70
    nop                                           ; $57b8: $00
    ldh a, [$e0]                                  ; $57b9: $f0 $e0
    ldh [$d0], a                                  ; $57bb: $e0 $d0
    ret nc                                        ; $57bd: $d0

    ldh [$e0], a                                  ; $57be: $e0 $e0
    ld d, b                                       ; $57c0: $50
    nop                                           ; $57c1: $00
    ldh a, [$28]                                  ; $57c2: $f0 $28
    ld hl, sp-$4c                                 ; $57c4: $f8 $b4
    ld e, h                                       ; $57c6: $5c
    sub b                                         ; $57c7: $90
    cpl                                           ; $57c8: $2f
    sub l                                         ; $57c9: $95
    nop                                           ; $57ca: $00
    ld a, [hl+]                                   ; $57cb: $2a
    sbc d                                         ; $57cc: $9a
    dec h                                         ; $57cd: $25
    sbc a                                         ; $57ce: $9f
    jr nz, @-$3f                                  ; $57cf: $20 $bf

    ccf                                           ; $57d1: $3f
    cp a                                          ; $57d2: $bf
    nop                                           ; $57d3: $00
    nop                                           ; $57d4: $00
    add b                                         ; $57d5: $80
    nop                                           ; $57d6: $00
    sbc a                                         ; $57d7: $9f
    jr nz, jr_099_57e3                            ; $57d8: $20 $09

    ldh [rHDMA2], a                               ; $57da: $e0 $52
    inc h                                         ; $57dc: $24
    add b                                         ; $57dd: $80
    and l                                         ; $57de: $a5
    ld [hl-], a                                   ; $57df: $32
    add hl, bc                                    ; $57e0: $09
    rst $38                                       ; $57e1: $ff
    rst $38                                       ; $57e2: $ff

Call_099_57e3:
jr_099_57e3:
    cp [hl]                                       ; $57e3: $be
    ld [$5a00], sp                                ; $57e4: $08 $00 $5a
    nop                                           ; $57e7: $00
    ld [hl], l                                    ; $57e8: $75
    ldh [rIE], a                                  ; $57e9: $e0 $ff
    ld l, d                                       ; $57eb: $6a
    ld a, a                                       ; $57ec: $7f
    dec a                                         ; $57ed: $3d
    ccf                                           ; $57ee: $3f
    dec a                                         ; $57ef: $3d
    nop                                           ; $57f0: $00
    ld a, $28                                     ; $57f1: $3e $28
    ccf                                           ; $57f3: $3f
    ld d, l                                       ; $57f4: $55
    ld a, [hl]                                    ; $57f5: $7e
    xor d                                         ; $57f6: $aa
    db $fd                                        ; $57f7: $fd
    sbc a                                         ; $57f8: $9f
    jr nz, jr_099_581b                            ; $57f9: $20 $20

    sbc h                                         ; $57fb: $9c
    ld e, b                                       ; $57fc: $58
    nop                                           ; $57fd: $00
    sub l                                         ; $57fe: $95
    ld l, $91                                     ; $57ff: $2e $91
    cpl                                           ; $5801: $2f
    sub h                                         ; $5802: $94
    nop                                           ; $5803: $00
    cpl                                           ; $5804: $2f
    sub c                                         ; $5805: $91
    ld l, $93                                     ; $5806: $2e $93
    inc l                                         ; $5808: $2c
    ld hl, sp+$07                                 ; $5809: $f8 $07

jr_099_580b:
    ld a, h                                       ; $580b: $7c
    nop                                           ; $580c: $00
    add e                                         ; $580d: $83
    cp $01                                        ; $580e: $fe $01
    cp $00                                        ; $5810: $fe $00
    inc e                                         ; $5812: $1c
    ldh [$78], a                                  ; $5813: $e0 $78
    nop                                           ; $5815: $00
    add c                                         ; $5816: $81
    ldh [rNR12], a                                ; $5817: $e0 $12

jr_099_5819:
    ret nz                                        ; $5819: $c0

    dec h                                         ; $581a: $25

jr_099_581b:
    ld hl, sp+$05                                 ; $581b: $f8 $05
    ld a, b                                       ; $581d: $78
    nop                                           ; $581e: $00
    add l                                         ; $581f: $85
    sbc b                                         ; $5820: $98
    push hl                                       ; $5821: $e5
    jr z, jr_099_5819                             ; $5822: $28 $f5

    jr jr_099_580b                                ; $5824: $18 $e5

    ld [$f520], sp                                ; $5826: $08 $20 $f5
    ld a, b                                       ; $5829: $78
    inc b                                         ; $582a: $04
    nop                                           ; $582b: $00
    ld a, [$f400]                                 ; $582c: $fa $00 $f4
    nop                                           ; $582f: $00
    ldh [rP1], a                                  ; $5830: $e0 $00
    add hl, bc                                    ; $5832: $09
    ret nz                                        ; $5833: $c0

    inc de                                        ; $5834: $13
    add e                                         ; $5835: $83
    inc h                                         ; $5836: $24
    rst $00                                       ; $5837: $c7
    ld [$0c80], sp                                ; $5838: $08 $80 $0c
    rra                                           ; $583b: $1f
    adc h                                         ; $583c: $8c
    ccf                                           ; $583d: $3f
    ld a, a                                       ; $583e: $7f
    adc [hl]                                      ; $583f: $8e
    ld bc, $09d4                                  ; $5840: $01 $d4 $09
    rst $38                                       ; $5843: $ff
    nop                                           ; $5844: $00

jr_099_5845:
    nop                                           ; $5845: $00
    cp $00                                        ; $5846: $fe $00
    db $fc                                        ; $5848: $fc
    nop                                           ; $5849: $00
    ld a, c                                       ; $584a: $79
    add b                                         ; $584b: $80
    ld a, [c]                                     ; $584c: $f2
    nop                                           ; $584d: $00
    nop                                           ; $584e: $00
    push hl                                       ; $584f: $e5
    nop                                           ; $5850: $00
    rlc b                                         ; $5851: $cb $00
    sub a                                         ; $5853: $97
    nop                                           ; $5854: $00
    cpl                                           ; $5855: $2f
    nop                                           ; $5856: $00
    nop                                           ; $5857: $00
    ld e, a                                       ; $5858: $5f
    nop                                           ; $5859: $00
    cp a                                          ; $585a: $bf
    nop                                           ; $585b: $00
    ld a, a                                       ; $585c: $7f
    nop                                           ; $585d: $00
    jr z, jr_099_5845                             ; $585e: $28 $e5

    nop                                           ; $5860: $00
    ld [$88d5], sp                                ; $5861: $08 $d5 $88
    dec h                                         ; $5864: $25
    ld [$9845], sp                                ; $5865: $08 $45 $98
    dec b                                         ; $5868: $05
    nop                                           ; $5869: $00
    jr z, jr_099_5871                             ; $586a: $28 $05

    ld e, b                                       ; $586c: $58
    dec b                                         ; $586d: $05
    cp b                                          ; $586e: $b8
    dec b                                         ; $586f: $05
    and b                                         ; $5870: $a0

jr_099_5871:
    ld a, a                                       ; $5871: $7f
    nop                                           ; $5872: $00
    jp $b13c                                      ; $5873: $c3 $3c $b1


    ld a, [hl]                                    ; $5876: $7e
    ret z                                         ; $5877: $c8

    ccf                                           ; $5878: $3f
    add d                                         ; $5879: $82
    ld a, a                                       ; $587a: $7f
    nop                                           ; $587b: $00
    ret c                                         ; $587c: $d8

    ld h, $8c                                     ; $587d: $26 $8c
    ld [hl], b                                    ; $587f: $70
    pop bc                                        ; $5880: $c1
    jr c, jr_099_58b5                             ; $5881: $38 $32

    ret nz                                        ; $5883: $c0

    add h                                         ; $5884: $84
    jr nc, jr_099_58bf                            ; $5885: $30 $38

    ccf                                           ; $5887: $3f
    add b                                         ; $5888: $80
    ccf                                           ; $5889: $3f
    ld b, b                                       ; $588a: $40
    ld c, b                                       ; $588b: $48
    nop                                           ; $588c: $00
    ld bc, $30f8                                  ; $588d: $01 $f8 $30
    rlca                                          ; $5890: $07
    ld a, [c]                                     ; $5891: $f2
    and $00                                       ; $5892: $e6 $00
    ld d, b                                       ; $5894: $50
    ld [$01f8], sp                                ; $5895: $08 $f8 $01
    ld a, b                                       ; $5898: $78
    dec b                                         ; $5899: $05
    ld b, b                                       ; $589a: $40
    ld hl, sp+$02                                 ; $589b: $f8 $02
    jr @-$01                                      ; $589d: $18 $fd

    ld sp, hl                                     ; $589f: $f9
    inc b                                         ; $58a0: $04
    nop                                           ; $58a1: $00
    nop                                           ; $58a2: $00
    ld sp, hl                                     ; $58a3: $f9
    ld bc, $8204                                  ; $58a4: $01 $04 $82
    ld [hl], b                                    ; $58a7: $70
    push hl                                       ; $58a8: $e5

jr_099_58a9:
    nop                                           ; $58a9: $00
    jp $d008                                      ; $58aa: $c3 $08 $d0


    jr z, jr_099_58cb                             ; $58ad: $28 $1c

    nop                                           ; $58af: $00
    rst $38                                       ; $58b0: $ff
    cp a                                          ; $58b1: $bf
    ld [hl-], a                                   ; $58b2: $32
    nop                                           ; $58b3: $00
    ld [de], a                                    ; $58b4: $12

jr_099_58b5:
    ld [de], a                                    ; $58b5: $12
    db $10                                        ; $58b6: $10
    jr nz, jr_099_58a9                            ; $58b7: $20 $f0

    ld [bc], a                                    ; $58b9: $02
    db $10                                        ; $58ba: $10
    ldh [rTIMA], a                                ; $58bb: $e0 $05
    rl b                                          ; $58bd: $cb $10

jr_099_58bf:
    ld b, b                                       ; $58bf: $40
    ret                                           ; $58c0: $c9


    inc b                                         ; $58c1: $04
    add hl, de                                    ; $58c2: $19
    add h                                         ; $58c3: $84
    nop                                           ; $58c4: $00
    add hl, bc                                    ; $58c5: $09
    inc h                                         ; $58c6: $24
    add hl, bc                                    ; $58c7: $09
    ld d, h                                       ; $58c8: $54
    sbc c                                         ; $58c9: $99
    inc h                                         ; $58ca: $24

jr_099_58cb:
    add hl, bc                                    ; $58cb: $09
    ld [hl], h                                    ; $58cc: $74
    nop                                           ; $58cd: $00
    add hl, de                                    ; $58ce: $19
    db $e4                                        ; $58cf: $e4
    ld c, c                                       ; $58d0: $49
    db $f4                                        ; $58d1: $f4
    ld a, a                                       ; $58d2: $7f
    rst $38                                       ; $58d3: $ff
    jp nz, Jump_099_44ff                          ; $58d4: $c2 $ff $44

    sbc h                                         ; $58d7: $9c
    ld e, b                                       ; $58d8: $58
    ld [bc], a                                    ; $58d9: $02
    and h                                         ; $58da: $a4
    jp $04a6                                      ; $58db: $c3 $a6 $04


    db $10                                        ; $58de: $10
    rst $38                                       ; $58df: $ff
    rst $38                                       ; $58e0: $ff
    nop                                           ; $58e1: $00
    add d                                         ; $58e2: $82
    rst $38                                       ; $58e3: $ff
    inc a                                         ; $58e4: $3c
    jp $817e                                      ; $58e5: $c3 $7e $81


    inc h                                         ; $58e8: $24
    jp Jump_099_6660                              ; $58e9: $c3 $60 $66


    inc b                                         ; $58ec: $04
    db $10                                        ; $58ed: $10
    ld c, [hl]                                    ; $58ee: $4e
    jr nz, jr_099_58f1                            ; $58ef: $20 $00

jr_099_58f1:
    rra                                           ; $58f1: $1f
    ldh [$97], a                                  ; $58f2: $e0 $97
    ld a, b                                       ; $58f4: $78
    ld [bc], a                                    ; $58f5: $02
    ret                                           ; $58f6: $c9


    inc a                                         ; $58f7: $3c
    pop bc                                        ; $58f8: $c1
    jr c, @+$21                                   ; $58f9: $38 $1f

    and b                                         ; $58fb: $a0
    ld [bc], a                                    ; $58fc: $02
    jr z, jr_099_591d                             ; $58fd: $28 $1e

    nop                                           ; $58ff: $00
    and b                                         ; $5900: $a0
    dec e                                         ; $5901: $1d
    and b                                         ; $5902: $a0
    ld a, [de]                                    ; $5903: $1a
    and b                                         ; $5904: $a0
    db $f4                                        ; $5905: $f4
    nop                                           ; $5906: $00
    add sp, $00                                   ; $5907: $e8 $00
    ld bc, $00d3                                  ; $5909: $01 $d3 $00
    add b                                         ; $590c: $80
    daa                                           ; $590d: $27
    ld c, d                                       ; $590e: $4a
    dec b                                         ; $590f: $05
    sbc l                                         ; $5910: $9d
    nop                                           ; $5911: $00
    ld [bc], a                                    ; $5912: $02
    ccf                                           ; $5913: $3f
    nop                                           ; $5914: $00
    ld h, c                                       ; $5915: $61
    ld a, [hl]                                    ; $5916: $7e
    cp c                                          ; $5917: $b9
    call nz, $0059                                ; $5918: $c4 $59 $00
    db $e4                                        ; $591b: $e4
    add hl, bc                                    ; $591c: $09

jr_099_591d:
    db $f4                                        ; $591d: $f4
    add hl, bc                                    ; $591e: $09
    db $f4                                        ; $591f: $f4
    xor c                                         ; $5920: $a9
    ld d, h                                       ; $5921: $54
    ld e, c                                       ; $5922: $59
    nop                                           ; $5923: $00
    and h                                         ; $5924: $a4
    ld sp, hl                                     ; $5925: $f9
    inc b                                         ; $5926: $04
    ld sp, hl                                     ; $5927: $f9
    inc b                                         ; $5928: $04
    db $e3                                        ; $5929: $e3
    db $10                                        ; $592a: $10
    ld bc, $e400                                  ; $592b: $01 $00 $e4
    jp $01c8                                      ; $592e: $c3 $c8 $01


    sub [hl]                                      ; $5931: $96
    inc bc                                        ; $5932: $03
    inc l                                         ; $5933: $2c
    ld b, c                                       ; $5934: $41
    nop                                           ; $5935: $00
    ld e, $1b                                     ; $5936: $1e $1b
    cp h                                          ; $5938: $bc
    ld b, c                                       ; $5939: $41
    ld a, [hl]                                    ; $593a: $7e
    db $10                                        ; $593b: $10
    and h                                         ; $593c: $a4
    stop                                          ; $593d: $10 $00
    xor c                                         ; $593f: $a9
    db $10                                        ; $5940: $10
    and e                                         ; $5941: $a3
    db $10                                        ; $5942: $10
    and a                                         ; $5943: $a7
    ld e, $a7                                     ; $5944: $1e $a7
    db $10                                        ; $5946: $10
    ld hl, $1caf                                  ; $5947: $21 $af $1c
    inc b                                         ; $594a: $04
    nop                                           ; $594b: $00
    rlca                                          ; $594c: $07
    ld hl, sp+$1f                                 ; $594d: $f8 $1f
    ldh [rDIV], a                                 ; $594f: $e0 $04
    dec bc                                        ; $5951: $0b
    nop                                           ; $5952: $00
    ld a, a                                       ; $5953: $7f
    add b                                         ; $5954: $80
    sbc a                                         ; $5955: $9f
    ldh [$2e], a                                  ; $5956: $e0 $2e
    ldh a, [rTIMA]                                ; $5958: $f0 $05
    ld hl, sp-$80                                 ; $595a: $f8 $80
    inc [hl]                                      ; $595c: $34
    ld [$04e9], sp                                ; $595d: $08 $e9 $04
    reti                                          ; $5960: $d9


    inc b                                         ; $5961: $04
    xor c                                         ; $5962: $a9
    inc b                                         ; $5963: $04
    ld c, c                                       ; $5964: $49
    nop                                           ; $5965: $00
    inc b                                         ; $5966: $04

jr_099_5967:
    sbc c                                         ; $5967: $99
    inc b                                         ; $5968: $04
    add hl, sp                                    ; $5969: $39
    inc b                                         ; $596a: $04
    inc bc                                        ; $596b: $03
    db $fc                                        ; $596c: $fc
    ld [hl], c                                    ; $596d: $71
    db $10                                        ; $596e: $10
    adc [hl]                                      ; $596f: $8e
    db $e3                                        ; $5970: $e3
    inc e                                         ; $5971: $1c
    ldh [$38], a                                  ; $5972: $e0 $38
    dec de                                        ; $5974: $1b
    and [hl]                                      ; $5975: $a6
    add hl, de                                    ; $5976: $19
    and [hl]                                      ; $5977: $a6
    ld hl, $a21d                                  ; $5978: $21 $1d $a2

jr_099_597b:
    add [hl]                                      ; $597b: $86
    nop                                           ; $597c: $00
    cp a                                          ; $597d: $bf
    sbc a                                         ; $597e: $9f
    jr nz, jr_099_5981                            ; $597f: $20 $00

jr_099_5981:
    ret nc                                        ; $5981: $d0

    ld bc, $e205                                  ; $5982: $01 $05 $e2
    jr jr_099_597b                                ; $5985: $18 $f4

    nop                                           ; $5987: $00
    jp hl                                         ; $5988: $e9


    ret nc                                        ; $5989: $d0

    ld b, c                                       ; $598a: $41
    ld a, c                                       ; $598b: $79
    ld [hl], h                                    ; $598c: $74
    nop                                           ; $598d: $00
    add d                                         ; $598e: $82
    ld a, b                                       ; $598f: $78
    ld [$fcfd], sp                                ; $5990: $08 $fd $fc
    db $fd                                        ; $5993: $fd
    nop                                           ; $5994: $00
    ld bc, $0120                                  ; $5995: $01 $20 $01
    cp $00                                        ; $5998: $fe $00
    rst $38                                       ; $599a: $ff
    add e                                         ; $599b: $83
    rst $38                                       ; $599c: $ff
    add hl, sp                                    ; $599d: $39
    rst $00                                       ; $599e: $c7
    ld a, l                                       ; $599f: $7d
    add e                                         ; $59a0: $83
    dec h                                         ; $59a1: $25
    jr nz, jr_099_5967                            ; $59a2: $20 $c3

    ld h, l                                       ; $59a4: $65
    inc b                                         ; $59a5: $04
    db $10                                        ; $59a6: $10
    ld [$0008], sp                                ; $59a7: $08 $08 $00
    ld [$0009], sp                                ; $59aa: $08 $09 $00
    add hl, bc                                    ; $59ad: $09
    inc de                                        ; $59ae: $13
    dec de                                        ; $59af: $1b
    rrca                                          ; $59b0: $0f
    rla                                           ; $59b1: $17
    scf                                           ; $59b2: $37
    ccf                                           ; $59b3: $3f
    ld l, $20                                     ; $59b4: $2e $20
    scf                                           ; $59b6: $37
    ld bc, $0004                                  ; $59b7: $01 $04 $00
    dec bc                                        ; $59ba: $0b
    scf                                           ; $59bb: $37
    dec l                                         ; $59bc: $2d
    scf                                           ; $59bd: $37
    ld c, e                                       ; $59be: $4b
    db $10                                        ; $59bf: $10
    ld [hl], a                                    ; $59c0: $77
    ld l, l                                       ; $59c1: $6d
    ld [hl], e                                    ; $59c2: $73
    ld h, b                                       ; $59c3: $60
    adc e                                         ; $59c4: $8b
    xor e                                         ; $59c5: $ab
    call nc, RST_00                               ; $59c6: $d4 $00 $00

jr_099_59c9:
    ld b, b                                       ; $59c9: $40
    ld bc, $0001                                  ; $59ca: $01 $01 $00
    ld [bc], a                                    ; $59cd: $02

jr_099_59ce:
    inc bc                                        ; $59ce: $03
    ld [bc], a                                    ; $59cf: $02
    inc bc                                        ; $59d0: $03
    inc b                                         ; $59d1: $04
    rlca                                          ; $59d2: $07
    dec b                                         ; $59d3: $05
    ld c, $0f                                     ; $59d4: $0e $0f
    dec b                                         ; $59d6: $05
    rlca                                          ; $59d7: $07
    dec d                                         ; $59d8: $15
    ld b, b                                       ; $59d9: $40
    inc bc                                        ; $59da: $03
    jr nc, jr_099_5a1d                            ; $59db: $30 $40

    inc de                                        ; $59dd: $13
    nop                                           ; $59de: $00
    ld a, a                                       ; $59df: $7f

jr_099_59e0:
    rst $38                                       ; $59e0: $ff
    or e                                          ; $59e1: $b3
    ld [hl], e                                    ; $59e2: $73
    ld d, h                                       ; $59e3: $54
    or h                                          ; $59e4: $b4
    ld [bc], a                                    ; $59e5: $02
    inc bc                                        ; $59e6: $03
    ld b, b                                       ; $59e7: $40
    rlca                                          ; $59e8: $07
    ld bc, $0500                                  ; $59e9: $01 $00 $05
    rlca                                          ; $59ec: $07
    ld a, [bc]                                    ; $59ed: $0a
    rrca                                          ; $59ee: $0f
    inc c                                         ; $59ef: $0c
    rrca                                          ; $59f0: $0f
    nop                                           ; $59f1: $00
    ld e, c                                       ; $59f2: $59
    ld e, a                                       ; $59f3: $5f
    or d                                          ; $59f4: $b2
    cp l                                          ; $59f5: $bd
    rst $38                                       ; $59f6: $ff
    rst $38                                       ; $59f7: $ff
    pop de                                        ; $59f8: $d1
    rst $38                                       ; $59f9: $ff
    nop                                           ; $59fa: $00
    rst $08                                       ; $59fb: $cf
    di                                            ; $59fc: $f3
    sbc c                                         ; $59fd: $99
    rst $20                                       ; $59fe: $e7
    rst $08                                       ; $59ff: $cf
    di                                            ; $5a00: $f3
    sbc e                                         ; $5a01: $9b
    rst $20                                       ; $5a02: $e7
    nop                                           ; $5a03: $00
    ld c, d                                       ; $5a04: $4a

jr_099_5a05:
    halt                                          ; $5a05: $76
    inc a                                         ; $5a06: $3c
    inc a                                         ; $5a07: $3c
    ld b, l                                       ; $5a08: $45
    ld a, [$d4ab]                                 ; $5a09: $fa $ab $d4
    nop                                           ; $5a0c: $00
    ld d, a                                       ; $5a0d: $57
    xor b                                         ; $5a0e: $a8
    ld [bc], a                                    ; $5a0f: $02
    db $fd                                        ; $5a10: $fd
    ld d, b                                       ; $5a11: $50
    rst $38                                       ; $5a12: $ff
    ld a, [$00ff]                                 ; $5a13: $fa $ff $00
    ldh [rIE], a                                  ; $5a16: $e0 $ff
    ld c, d                                       ; $5a18: $4a
    push af                                       ; $5a19: $f5
    ld bc, $0601                                  ; $5a1a: $01 $01 $06

jr_099_5a1d:
    rlca                                          ; $5a1d: $07
    nop                                           ; $5a1e: $00
    inc c                                         ; $5a1f: $0c
    rrca                                          ; $5a20: $0f
    ld b, $07                                     ; $5a21: $06 $07
    inc bc                                        ; $5a23: $03
    inc bc                                        ; $5a24: $03
    ld bc, $0201                                  ; $5a25: $01 $01 $02
    inc bc                                        ; $5a28: $03
    inc bc                                        ; $5a29: $03
    dec b                                         ; $5a2a: $05
    rlca                                          ; $5a2b: $07
    sub a                                         ; $5a2c: $97
    jr z, @-$06                                   ; $5a2d: $28 $f8

    ld [bc], a                                    ; $5a2f: $02
    ld hl, $fa80                                  ; $5a30: $21 $80 $fa
    ld a, [bc]                                    ; $5a33: $0a
    sbc c                                         ; $5a34: $99
    jr nz, jr_099_59c9                            ; $5a35: $20 $92

    jr nz, jr_099_59ce                            ; $5a37: $20 $95

jr_099_5a39:
    jr nz, jr_099_5a05                            ; $5a39: $20 $ca

    ld b, b                                       ; $5a3b: $40
    ld bc, $0a2c                                  ; $5a3c: $01 $2c $0a
    rra                                           ; $5a3f: $1f
    ld b, b                                       ; $5a40: $40
    sbc a                                         ; $5a41: $9f
    jr nz, @+$11                                  ; $5a42: $20 $0f

    ld [hl], b                                    ; $5a44: $70
    nop                                           ; $5a45: $00
    and a                                         ; $5a46: $a7
    ld a, b                                       ; $5a47: $78
    rst $00                                       ; $5a48: $c7
    jr c, jr_099_59e0                             ; $5a49: $38 $95

jr_099_5a4b:
    ld [$f04f], a                                 ; $5a4b: $ea $4f $f0
    nop                                           ; $5a4e: $00
    and a                                         ; $5a4f: $a7
    ld hl, sp-$1f                                 ; $5a50: $f8 $e1
    cp $45                                        ; $5a52: $fe $45
    ld a, [$f58a]                                 ; $5a54: $fa $8a $f5
    nop                                           ; $5a57: $00
    ld e, a                                       ; $5a58: $5f
    and b                                         ; $5a59: $a0
    cp a                                          ; $5a5a: $bf
    ld b, b                                       ; $5a5b: $40
    ld a, [bc]                                    ; $5a5c: $0a
    rrca                                          ; $5a5d: $0f
    dec d                                         ; $5a5e: $15
    rra                                           ; $5a5f: $1f
    nop                                           ; $5a60: $00
    dec hl                                        ; $5a61: $2b
    ccf                                           ; $5a62: $3f
    ld e, a                                       ; $5a63: $5f
    ld e, a                                       ; $5a64: $5f
    ccf                                           ; $5a65: $3f
    ccf                                           ; $5a66: $3f
    ld a, [de]                                    ; $5a67: $1a
    rra                                           ; $5a68: $1f
    nop                                           ; $5a69: $00
    inc [hl]                                      ; $5a6a: $34
    ccf                                           ; $5a6b: $3f
    ld a, [hl-]                                   ; $5a6c: $3a
    ccf                                           ; $5a6d: $3f
    sub b                                         ; $5a6e: $90
    dec hl                                        ; $5a6f: $2b
    sub c                                         ; $5a70: $91
    daa                                           ; $5a71: $27
    ld bc, $239c                                  ; $5a72: $01 $9c $23
    sbc [hl]                                      ; $5a75: $9e
    ld hl, $209f                                  ; $5a76: $21 $9f $20
    sbc b                                         ; $5a79: $98
    ld c, $03                                     ; $5a7a: $0e $03
    nop                                           ; $5a7c: $00
    sbc d                                         ; $5a7d: $9a
    dec h                                         ; $5a7e: $25
    push de                                       ; $5a7f: $d5
    dec sp                                        ; $5a80: $3b
    ld b, d                                       ; $5a81: $42
    cp a                                          ; $5a82: $bf
    sub b                                         ; $5a83: $90
    rst $38                                       ; $5a84: $ff
    nop                                           ; $5a85: $00
    ld d, l                                       ; $5a86: $55
    cp $00                                        ; $5a87: $fe $00
    rst $38                                       ; $5a89: $ff
    db $10                                        ; $5a8a: $10
    rst $38                                       ; $5a8b: $ff
    inc bc                                        ; $5a8c: $03
    db $fc                                        ; $5a8d: $fc
    inc b                                         ; $5a8e: $04
    xor d                                         ; $5a8f: $aa
    ld d, h                                       ; $5a90: $54
    dec d                                         ; $5a91: $15
    ld [$7c82], a                                 ; $5a92: $ea $82 $7c
    nop                                           ; $5a95: $00
    ld [$00ff], a                                 ; $5a96: $ea $ff $00
    cp l                                          ; $5a99: $bd
    cp a                                          ; $5a9a: $bf
    ld a, $3f                                     ; $5a9b: $3e $3f
    dec e                                         ; $5a9d: $1d
    dec e                                         ; $5a9e: $1d
    ld [bc], a                                    ; $5a9f: $02
    ld [bc], a                                    ; $5aa0: $02
    nop                                           ; $5aa1: $00
    inc d                                         ; $5aa2: $14
    rra                                           ; $5aa3: $1f
    ld a, [hl+]                                   ; $5aa4: $2a
    cpl                                           ; $5aa5: $2f

Jump_099_5aa6:
    rla                                           ; $5aa6: $17
    rla                                           ; $5aa7: $17
    dec bc                                        ; $5aa8: $0b
    dec bc                                        ; $5aa9: $0b
    inc h                                         ; $5aaa: $24
    dec b                                         ; $5aab: $05
    dec b                                         ; $5aac: $05
    jp z, $971b                                   ; $5aad: $ca $1b $97

    jr z, jr_099_5aee                             ; $5ab0: $28 $3c

    ld [$3f8f], sp                                ; $5ab2: $08 $8f $3f
    inc b                                         ; $5ab5: $04
    sbc a                                         ; $5ab6: $9f
    jr nz, jr_099_5a39                            ; $5ab7: $20 $80

    jr nz, jr_099_5a4b                            ; $5ab9: $20 $90

    ld [bc], a                                    ; $5abb: $02
    nop                                           ; $5abc: $00
    ld d, l                                       ; $5abd: $55
    xor b                                         ; $5abe: $a8
    ld a, $aa                                     ; $5abf: $3e $aa
    ld d, b                                       ; $5ac1: $50
    ld c, [hl]                                    ; $5ac2: $4e
    ld [hl-], a                                   ; $5ac3: $32
    ld [hl+], a                                   ; $5ac4: $22
    inc de                                        ; $5ac5: $13
    ld [bc], a                                    ; $5ac6: $02
    ld e, b                                       ; $5ac7: $58
    inc h                                         ; $5ac8: $24
    ld [$3804], sp                                ; $5ac9: $08 $04 $38
    rst $18                                       ; $5acc: $df
    ret nz                                        ; $5acd: $c0

    add h                                         ; $5ace: $84
    ld bc, $540e                                  ; $5acf: $01 $0e $54
    nop                                           ; $5ad2: $00
    add hl, de                                    ; $5ad3: $19
    db $e4                                        ; $5ad4: $e4
    adc c                                         ; $5ad5: $89
    ld [hl], h                                    ; $5ad6: $74
    reti                                          ; $5ad7: $d9


    ld b, d                                       ; $5ad8: $42
    inc h                                         ; $5ad9: $24
    add h                                         ; $5ada: $84
    add hl, de                                    ; $5adb: $19
    ld sp, hl                                     ; $5adc: $f9
    inc b                                         ; $5add: $04
    add hl, de                                    ; $5ade: $19
    db $e4                                        ; $5adf: $e4
    ld e, b                                       ; $5ae0: $58
    ld a, [de]                                    ; $5ae1: $1a
    xor a                                         ; $5ae2: $af
    nop                                           ; $5ae3: $00
    rst $00                                       ; $5ae4: $c7
    and a                                         ; $5ae5: $a7
    ret z                                         ; $5ae6: $c8

    xor b                                         ; $5ae7: $a8
    ret nz                                        ; $5ae8: $c0

    xor e                                         ; $5ae9: $ab
    rst $00                                       ; $5aea: $c7
    and [hl]                                      ; $5aeb: $a6

Jump_099_5aec:
    ld h, b                                       ; $5aec: $60
    pop bc                                        ; $5aed: $c1

jr_099_5aee:
    ld e, b                                       ; $5aee: $58
    ld a, [de]                                    ; $5aef: $1a
    ld a, [hl]                                    ; $5af0: $7e
    dec de                                        ; $5af1: $1b
    db $db                                        ; $5af2: $db
    rst $20                                       ; $5af3: $e7
    ld h, [hl]                                    ; $5af4: $66
    add c                                         ; $5af5: $81
    add hl, sp                                    ; $5af6: $39
    db $10                                        ; $5af7: $10
    call nz, $8479                                ; $5af8: $c4 $79 $84
    ld a, [c]                                     ; $5afb: $f2
    add hl, bc                                    ; $5afc: $09
    ld e, c                                       ; $5afd: $59
    add h                                         ; $5afe: $84
    add hl, hl                                    ; $5aff: $29
    add h                                         ; $5b00: $84
    rrca                                          ; $5b01: $0f
    add hl, de                                    ; $5b02: $19
    ld b, h                                       ; $5b03: $44
    sbc c                                         ; $5b04: $99
    inc h                                         ; $5b05: $24
    adc b                                         ; $5b06: $88
    ld a, [hl+]                                   ; $5b07: $2a
    sub b                                         ; $5b08: $90
    ld a, [hl+]                                   ; $5b09: $2a

jr_099_5b0a:
    adc b                                         ; $5b0a: $88
    ld a, [hl+]                                   ; $5b0b: $2a
    sub b                                         ; $5b0c: $90
    ld a, [hl+]                                   ; $5b0d: $2a
    add b                                         ; $5b0e: $80
    ldh [rNR24], a                                ; $5b0f: $e0 $19
    pop af                                        ; $5b11: $f1
    db $fc                                        ; $5b12: $fc
    ld sp, hl                                     ; $5b13: $f9
    inc b                                         ; $5b14: $04
    ld bc, $0904                                  ; $5b15: $01 $04 $09
    ret                                           ; $5b18: $c9


    ld [bc], a                                    ; $5b19: $02
    nop                                           ; $5b1a: $00
    jr nc, jr_099_5b75                            ; $5b1b: $30 $58

    sbc b                                         ; $5b1d: $98
    rst $20                                       ; $5b1e: $e7
    jr nc, jr_099_5b79                            ; $5b1f: $30 $58

    jr jr_099_5b0a                                ; $5b21: $18 $e7

    ld hl, sp+$29                                 ; $5b23: $f8 $29
    nop                                           ; $5b25: $00
    ld h, l                                       ; $5b26: $65
    di                                            ; $5b27: $f3
    push af                                       ; $5b28: $f5
    db $db                                        ; $5b29: $db
    db $fd                                        ; $5b2a: $fd
    cp e                                          ; $5b2b: $bb
    push af                                       ; $5b2c: $f5
    ei                                            ; $5b2d: $fb
    jr nz, @+$6f                                  ; $5b2e: $20 $6d

    di                                            ; $5b30: $f3
    inc c                                         ; $5b31: $0c
    ld a, [bc]                                    ; $5b32: $0a
    push af                                       ; $5b33: $f5
    db $e3                                        ; $5b34: $e3
    push hl                                       ; $5b35: $e5
    inc de                                        ; $5b36: $13
    dec d                                         ; $5b37: $15
    inc b                                         ; $5b38: $04
    inc bc                                        ; $5b39: $03
    push de                                       ; $5b3a: $d5
    db $e3                                        ; $5b3b: $e3
    ld h, l                                       ; $5b3c: $65
    add e                                         ; $5b3d: $83
    ret nc                                        ; $5b3e: $d0

    ld e, b                                       ; $5b3f: $58
    swap h                                        ; $5b40: $cb $34
    ret nz                                        ; $5b42: $c0

    ld d, h                                       ; $5b43: $54
    ld [$3804], sp                                ; $5b44: $08 $04 $38
    pop de                                        ; $5b47: $d1
    ld l, $00                                     ; $5b48: $2e $00
    ld a, a                                       ; $5b4a: $7f
    ld a, [hl+]                                   ; $5b4b: $2a
    ld d, l                                       ; $5b4c: $55
    nop                                           ; $5b4d: $00
    rla                                           ; $5b4e: $17
    jr z, jr_099_5b6c                             ; $5b4f: $28 $1b

    inc b                                         ; $5b51: $04
    dec hl                                        ; $5b52: $2b
    nop                                           ; $5b53: $00
    dec b                                         ; $5b54: $05
    nop                                           ; $5b55: $00
    inc b                                         ; $5b56: $04
    inc bc                                        ; $5b57: $03
    inc b                                         ; $5b58: $04
    inc de                                        ; $5b59: $13
    nop                                           ; $5b5a: $00
    ld bc, $1004                                  ; $5b5b: $01 $04 $10
    inc bc                                        ; $5b5e: $03
    nop                                           ; $5b5f: $00
    inc b                                         ; $5b60: $04
    dec bc                                        ; $5b61: $0b
    nop                                           ; $5b62: $00
    ld bc, $0102                                  ; $5b63: $01 $02 $01
    ld b, d                                       ; $5b66: $42
    inc d                                         ; $5b67: $14
    ei                                            ; $5b68: $fb
    inc b                                         ; $5b69: $04
    nop                                           ; $5b6a: $00
    db $dd                                        ; $5b6b: $dd

jr_099_5b6c:
    ld h, [hl]                                    ; $5b6c: $66
    and $32                                       ; $5b6d: $e6 $32
    pop af                                        ; $5b6f: $f1
    ld a, [de]                                    ; $5b70: $1a
    and l                                         ; $5b71: $a5
    ret nz                                        ; $5b72: $c0

    nop                                           ; $5b73: $00
    ret nc                                        ; $5b74: $d0

jr_099_5b75:
    ld a, b                                       ; $5b75: $78
    ld a, [$ef1d]                                 ; $5b76: $fa $1d $ef

jr_099_5b79:
    db $10                                        ; $5b79: $10
    rst $08                                       ; $5b7a: $cf
    stop                                          ; $5b7b: $10 $00
    sbc c                                         ; $5b7d: $99
    ld [hl], $b3                                  ; $5b7e: $36 $b3
    inc h                                         ; $5b80: $24
    rlca                                          ; $5b81: $07
    ld l, $4c                                     ; $5b82: $2e $4c
    dec e                                         ; $5b84: $1d
    nop                                           ; $5b85: $00
    dec bc                                        ; $5b86: $0b
    rlca                                          ; $5b87: $07
    xor a                                         ; $5b88: $af
    ld e, h                                       ; $5b89: $5c
    nop                                           ; $5b8a: $00
    rst $38                                       ; $5b8b: $ff
    cp b                                          ; $5b8c: $b8
    ld d, a                                       ; $5b8d: $57
    nop                                           ; $5b8e: $00
    ld a, a                                       ; $5b8f: $7f
    add b                                         ; $5b90: $80
    rst $30                                       ; $5b91: $f7
    ld [$22fd], sp                                ; $5b92: $08 $fd $22
    rst $38                                       ; $5b95: $ff
    nop                                           ; $5b96: $00
    nop                                           ; $5b97: $00
    cp a                                          ; $5b98: $bf
    ld b, b                                       ; $5b99: $40
    rst $30                                       ; $5b9a: $f7
    ld [$ff00], sp                                ; $5b9b: $08 $00 $ff
    xor d                                         ; $5b9e: $aa
    ld d, l                                       ; $5b9f: $55
    ld [bc], a                                    ; $5ba0: $02
    sbc $21                                       ; $5ba1: $de $21
    rst $38                                       ; $5ba3: $ff
    add b                                         ; $5ba4: $80
    ei                                            ; $5ba5: $fb
    inc b                                         ; $5ba6: $04
    cp b                                          ; $5ba7: $b8
    dec b                                         ; $5ba8: $05
    ld b, b                                       ; $5ba9: $40
    jr nz, @-$08                                  ; $5baa: $20 $f6

    add hl, bc                                    ; $5bac: $09
    db $10                                        ; $5bad: $10
    ld [$00ff], sp                                ; $5bae: $08 $ff $00
    rst $30                                       ; $5bb1: $f7
    ld [$0bfe], sp                                ; $5bb2: $08 $fe $0b
    ld hl, $82ff                                  ; $5bb5: $21 $ff $82
    rst $30                                       ; $5bb8: $f7
    ret z                                         ; $5bb9: $c8

    inc bc                                        ; $5bba: $03
    ld [hl+], a                                   ; $5bbb: $22
    db $10                                        ; $5bbc: $10
    ld [$0614], sp                                ; $5bbd: $08 $14 $06
    nop                                           ; $5bc0: $00
    db $dd                                        ; $5bc1: $dd
    ld [hl+], a                                   ; $5bc2: $22
    cp a                                          ; $5bc3: $bf
    ld b, b                                       ; $5bc4: $40
    db $fd                                        ; $5bc5: $fd
    ld [de], a                                    ; $5bc6: $12
    rst $38                                       ; $5bc7: $ff
    nop                                           ; $5bc8: $00
    nop                                           ; $5bc9: $00
    db $fd                                        ; $5bca: $fd
    ld [bc], a                                    ; $5bcb: $02
    rst $38                                       ; $5bcc: $ff
    jr nz, @+$01                                  ; $5bcd: $20 $ff

    nop                                           ; $5bcf: $00
    rst $28                                       ; $5bd0: $ef
    ld de, $ff0a                                  ; $5bd1: $11 $0a $ff
    nop                                           ; $5bd4: $00
    cp e                                          ; $5bd5: $bb
    ld b, h                                       ; $5bd6: $44
    db $ec                                        ; $5bd7: $ec
    dec e                                         ; $5bd8: $1d
    rst $18                                       ; $5bd9: $df
    ld c, d                                       ; $5bda: $4a
    nop                                           ; $5bdb: $00
    rst $28                                       ; $5bdc: $ef
    inc b                                         ; $5bdd: $04
    db $10                                        ; $5bde: $10
    rst $38                                       ; $5bdf: $ff
    nop                                           ; $5be0: $00
    ld a, [$e305]                                 ; $5be1: $fa $05 $e3
    ld bc, $f700                                  ; $5be4: $01 $00 $f7
    db $10                                        ; $5be7: $10
    ld a, [bc]                                    ; $5be8: $0a
    xor a                                         ; $5be9: $af
    ld d, b                                       ; $5bea: $50
    inc b                                         ; $5beb: $04
    ld b, $04                                     ; $5bec: $06 $04
    rst $28                                       ; $5bee: $ef
    db $10                                        ; $5bef: $10
    db $fd                                        ; $5bf0: $fd
    ld h, b                                       ; $5bf1: $60
    ld b, d                                       ; $5bf2: $42
    ld c, $08                                     ; $5bf3: $0e $08
    ld c, d                                       ; $5bf5: $4a
    nop                                           ; $5bf6: $00
    ld b, c                                       ; $5bf7: $41
    rst $38                                       ; $5bf8: $ff
    nop                                           ; $5bf9: $00
    ld a, [hl]                                    ; $5bfa: $7e
    add l                                         ; $5bfb: $85
    and d                                         ; $5bfc: $a2
    ld d, h                                       ; $5bfd: $54
    ld [$0abf], sp                                ; $5bfe: $08 $bf $0a
    nop                                           ; $5c01: $00
    ld b, b                                       ; $5c02: $40
    nop                                           ; $5c03: $00
    ld [$1db3], sp                                ; $5c04: $08 $b3 $1d
    and h                                         ; $5c07: $a4
    inc c                                         ; $5c08: $0c

jr_099_5c09:
    ld bc, $5a48                                  ; $5c09: $01 $48 $5a
    and h                                         ; $5c0c: $a4
    add b                                         ; $5c0d: $80
    nop                                           ; $5c0e: $00
    halt                                          ; $5c0f: $76
    dec c                                         ; $5c10: $0d
    nop                                           ; $5c11: $00
    ld de, $c780                                  ; $5c12: $11 $80 $c7
    dec c                                         ; $5c15: $0d
    inc d                                         ; $5c16: $14
    ld b, l                                       ; $5c17: $45
    ld a, [bc]                                    ; $5c18: $0a
    xor $00                                       ; $5c19: $ee $00
    dec bc                                        ; $5c1b: $0b
    ld d, b                                       ; $5c1c: $50
    ld [hl], $00                                  ; $5c1d: $36 $00
    ld a, [hl+]                                   ; $5c1f: $2a
    add hl, hl                                    ; $5c20: $29
    inc bc                                        ; $5c21: $03
    rst $10                                       ; $5c22: $d7
    dec b                                         ; $5c23: $05
    db $10                                        ; $5c24: $10
    rlca                                          ; $5c25: $07
    jr jr_099_5c09                                ; $5c26: $18 $e1

    dec b                                         ; $5c28: $05
    jr nz, @+$22                                  ; $5c29: $20 $20

    nop                                           ; $5c2b: $00

jr_099_5c2c:
    ld [bc], a                                    ; $5c2c: $02
    dec b                                         ; $5c2d: $05

Call_099_5c2e:
    nop                                           ; $5c2e: $00
    ld d, b                                       ; $5c2f: $50
    ld [bc], a                                    ; $5c30: $02
    dec hl                                        ; $5c31: $2b
    add h                                         ; $5c32: $84
    ld d, l                                       ; $5c33: $55
    ld hl, $8000                                  ; $5c34: $21 $00 $80
    and b                                         ; $5c37: $a0
    ld h, b                                       ; $5c38: $60
    inc hl                                        ; $5c39: $23
    cp $ab                                        ; $5c3a: $fe $ab
    ld d, h                                       ; $5c3c: $54
    and b                                         ; $5c3d: $a0
    ld c, b                                       ; $5c3e: $48
    nop                                           ; $5c3f: $00
    rst $28                                       ; $5c40: $ef
    db $10                                        ; $5c41: $10
    rst $18                                       ; $5c42: $df
    jr nz, jr_099_5c4e                            ; $5c43: $20 $09

    and [hl]                                      ; $5c45: $a6
    db $e3                                        ; $5c46: $e3
    ld b, h                                       ; $5c47: $44
    nop                                           ; $5c48: $00
    dec hl                                        ; $5c49: $2b
    and $84                                       ; $5c4a: $e6 $84
    dec l                                         ; $5c4c: $2d
    add e                                         ; $5c4d: $83

jr_099_5c4e:
    rst $28                                       ; $5c4e: $ef
    rst $08                                       ; $5c4f: $cf
    ld a, h                                       ; $5c50: $7c
    add b                                         ; $5c51: $80
    ld h, b                                       ; $5c52: $60
    dec bc                                        ; $5c53: $0b
    ld [$1008], sp                                ; $5c54: $08 $08 $10
    jr jr_099_5c61                                ; $5c57: $18 $08

    db $10                                        ; $5c59: $10
    inc [hl]                                      ; $5c5a: $34
    inc b                                         ; $5c5b: $04
    inc a                                         ; $5c5c: $3c
    inc l                                         ; $5c5d: $2c
    inc [hl]                                      ; $5c5e: $34
    nop                                           ; $5c5f: $00
    inc a                                         ; $5c60: $3c

jr_099_5c61:
    ret nz                                        ; $5c61: $c0

    inc c                                         ; $5c62: $0c
    rst $38                                       ; $5c63: $ff
    nop                                           ; $5c64: $00
    nop                                           ; $5c65: $00
    call c, $ec22                                 ; $5c66: $dc $22 $ec
    ld [hl-], a                                   ; $5c69: $32
    push hl                                       ; $5c6a: $e5
    ld [hl-], a                                   ; $5c6b: $32
    jp hl                                         ; $5c6c: $e9


    ld [de], a                                    ; $5c6d: $12
    nop                                           ; $5c6e: $00
    or c                                          ; $5c6f: $b1
    ret c                                         ; $5c70: $d8

    ld l, $36                                     ; $5c71: $2e $36
    ld a, [bc]                                    ; $5c73: $0a
    ld [hl], $2c                                  ; $5c74: $36 $2c
    ld [hl], $20                                  ; $5c76: $36 $20
    ld c, d                                       ; $5c78: $4a
    halt                                          ; $5c79: $76
    ld [hl], b                                    ; $5c7a: $70
    dec hl                                        ; $5c7b: $2b
    call $e468                                    ; $5c7c: $cd $68 $e4
    jr nc, jr_099_5cc9                            ; $5c7f: $30 $48

    nop                                           ; $5c81: $00
    or b                                          ; $5c82: $b0
    ld b, b                                       ; $5c83: $40
    add b                                         ; $5c84: $80
    sub h                                         ; $5c85: $94
    ldh [$ea], a                                  ; $5c86: $e0 $ea
    ld [hl], b                                    ; $5c88: $70
    ld sp, hl                                     ; $5c89: $f9
    db $10                                        ; $5c8a: $10
    ld a, $a2                                     ; $5c8b: $3e $a2
    ld e, l                                       ; $5c8d: $5d
    adc $0e                                       ; $5c8e: $ce $0e
    ld a, a                                       ; $5c90: $7f
    add b                                         ; $5c91: $80
    ld [hl], a                                    ; $5c92: $77
    adc h                                         ; $5c93: $8c

jr_099_5c94:
    nop                                           ; $5c94: $00
    ld c, a                                       ; $5c95: $4f
    xor b                                         ; $5c96: $a8
    rrca                                          ; $5c97: $0f
    ld e, b                                       ; $5c98: $58
    inc a                                         ; $5c99: $3c
    inc de                                        ; $5c9a: $13
    add hl, de                                    ; $5c9b: $19
    inc sp                                        ; $5c9c: $33
    ld bc, $0800                                  ; $5c9d: $01 $00 $08
    jr nz, jr_099_5c2c                            ; $5ca0: $20 $8a

    ld de, $44cc                                  ; $5ca2: $11 $cc $44
    push hl                                       ; $5ca5: $e5
    ld b, $00                                     ; $5ca6: $06 $00
    inc l                                         ; $5ca8: $2c
    db $db                                        ; $5ca9: $db
    ld bc, $40ff                                  ; $5caa: $01 $ff $40
    rst $38                                       ; $5cad: $ff
    inc de                                        ; $5cae: $13
    ld h, $00                                     ; $5caf: $26 $00
    ld b, c                                       ; $5cb1: $41
    ld c, $17                                     ; $5cb2: $0e $17
    ld bc, $030d                                  ; $5cb4: $01 $0d $03
    ld d, e                                       ; $5cb7: $53
    ld c, $00                                     ; $5cb8: $0e $00
    xor e                                         ; $5cba: $ab
    ld e, $57                                     ; $5cbb: $1e $57
    cp h                                          ; $5cbd: $bc
    and l                                         ; $5cbe: $a5
    ld e, d                                       ; $5cbf: $5a
    nop                                           ; $5cc0: $00
    nop                                           ; $5cc1: $00
    nop                                           ; $5cc2: $00

jr_099_5cc3:
    db $e3                                        ; $5cc3: $e3
    add b                                         ; $5cc4: $80
    push de                                       ; $5cc5: $d5
    add b                                         ; $5cc6: $80
    rst $28                                       ; $5cc7: $ef
    add l                                         ; $5cc8: $85

jr_099_5cc9:
    ld a, d                                       ; $5cc9: $7a
    ld b, d                                       ; $5cca: $42
    nop                                           ; $5ccb: $00
    inc a                                         ; $5ccc: $3c
    jr nc, jr_099_5cfb                            ; $5ccd: $30 $2c

    inc l                                         ; $5ccf: $2c
    ld d, l                                       ; $5cd0: $55
    ld d, l                                       ; $5cd1: $55
    nop                                           ; $5cd2: $00
    inc h                                         ; $5cd3: $24
    nop                                           ; $5cd4: $00
    add b                                         ; $5cd5: $80
    ld d, c                                       ; $5cd6: $51
    jr nz, jr_099_5c94                            ; $5cd7: $20 $bb

    nop                                           ; $5cd9: $00
    cp $12                                        ; $5cda: $fe $12
    db $fd                                        ; $5cdc: $fd
    nop                                           ; $5cdd: $00
    ld hl, $40fe                                  ; $5cde: $21 $fe $40
    cp a                                          ; $5ce1: $bf
    jr nz, jr_099_5cc3                            ; $5ce2: $20 $df

    nop                                           ; $5ce4: $00
    ld b, c                                       ; $5ce5: $41
    nop                                           ; $5ce6: $00
    add c                                         ; $5ce7: $81
    ld b, e                                       ; $5ce8: $43
    ld [$12ed], sp                                ; $5ce9: $08 $ed $12
    db $fd                                        ; $5cec: $fd
    ld b, h                                       ; $5ced: $44
    ei                                            ; $5cee: $fb
    ld b, b                                       ; $5cef: $40
    ld bc, $0312                                  ; $5cf0: $01 $12 $03
    add c                                         ; $5cf3: $81
    rst $38                                       ; $5cf4: $ff
    add hl, bc                                    ; $5cf5: $09
    and b                                         ; $5cf6: $a0
    db $10                                        ; $5cf7: $10
    ld c, h                                       ; $5cf8: $4c
    ld b, $00                                     ; $5cf9: $06 $00

jr_099_5cfb:
    or a                                          ; $5cfb: $b7
    ld [bc], a                                    ; $5cfc: $02
    rst $38                                       ; $5cfd: $ff
    add h                                         ; $5cfe: $84

jr_099_5cff:
    jr nz, @+$05                                  ; $5cff: $20 $03

    ld e, e                                       ; $5d01: $5b
    ld bc, $00df                                  ; $5d02: $01 $df $00
    nop                                           ; $5d05: $00
    ld [hl], $40                                  ; $5d06: $36 $40
    ld a, [hl]                                    ; $5d08: $7e
    ld c, h                                       ; $5d09: $4c
    ld [hl], e                                    ; $5d0a: $73
    inc b                                         ; $5d0b: $04
    inc de                                        ; $5d0c: $13
    ld bc, $2d21                                  ; $5d0d: $01 $21 $2d
    ld e, $1e                                     ; $5d10: $1e $1e
    ld d, l                                       ; $5d12: $55
    ld d, l                                       ; $5d13: $55
    ld a, [bc]                                    ; $5d14: $0a
    and b                                         ; $5d15: $a0
    ld d, $00                                     ; $5d16: $16 $00
    ld [hl], $00                                  ; $5d18: $36 $00
    ccf                                           ; $5d1a: $3f
    add c                                         ; $5d1b: $81
    rst $20                                       ; $5d1c: $e7
    add c                                         ; $5d1d: $81
    ld h, $00                                     ; $5d1e: $26 $00
    ld [$425a], sp                                ; $5d20: $08 $5a $42

jr_099_5d23:
    cp l                                          ; $5d23: $bd
    cp l                                          ; $5d24: $bd
    jr @+$03                                      ; $5d25: $18 $01

    ld e, $12                                     ; $5d27: $1e $12
    rla                                           ; $5d29: $17
    nop                                           ; $5d2a: $00
    add hl, bc                                    ; $5d2b: $09
    dec bc                                        ; $5d2c: $0b
    inc b                                         ; $5d2d: $04
    dec b                                         ; $5d2e: $05
    inc bc                                        ; $5d2f: $03
    inc bc                                        ; $5d30: $03
    and b                                         ; $5d31: $a0
    and b                                         ; $5d32: $a0
    add b                                         ; $5d33: $80
    ld [hl], $0b                                  ; $5d34: $36 $0b
    ld bc, $090f                                  ; $5d36: $01 $0f $09
    dec e                                         ; $5d39: $1d
    ld [de], a                                    ; $5d3a: $12
    cp d                                          ; $5d3b: $ba
    inc b                                         ; $5d3c: $04
    nop                                           ; $5d3d: $00
    or h                                          ; $5d3e: $b4
    jr jr_099_5d99                                ; $5d3f: $18 $58

    ld [c], a                                     ; $5d41: $e2
    ld [c], a                                     ; $5d42: $e2
    ld d, c                                       ; $5d43: $51
    ld d, c                                       ; $5d44: $51
    ld [$0e00], sp                                ; $5d45: $08 $00 $0e
    inc b                                         ; $5d48: $04
    dec b                                         ; $5d49: $05
    db $10                                        ; $5d4a: $10
    ld d, $0c                                     ; $5d4b: $16 $0c
    dec c                                         ; $5d4d: $0d
    ld [bc], a                                    ; $5d4e: $02
    inc b                                         ; $5d4f: $04
    ld [bc], a                                    ; $5d50: $02
    ld [$af0b], sp                                ; $5d51: $08 $0b $af
    xor a                                         ; $5d54: $af
    add b                                         ; $5d55: $80
    nop                                           ; $5d56: $00
    jr @+$0a                                      ; $5d57: $18 $08

    nop                                           ; $5d59: $00
    jr c, jr_099_5d6c                             ; $5d5a: $38 $10

    ret nc                                        ; $5d5c: $d0

    jr nz, jr_099_5cff                            ; $5d5d: $20 $a0

    ld [bc], a                                    ; $5d5f: $02
    jp c, $001d                                   ; $5d60: $da $1d $00

    db $dd                                        ; $5d63: $dd
    jr nz, jr_099_5dc6                            ; $5d64: $20 $60

    ld d, h                                       ; $5d66: $54
    ld d, h                                       ; $5d67: $54
    ld e, $1e                                     ; $5d68: $1e $1e
    dec l                                         ; $5d6a: $2d
    nop                                           ; $5d6b: $00

jr_099_5d6c:
    ld hl, $405f                                  ; $5d6c: $21 $5f $40

jr_099_5d6f:
    ld e, a                                       ; $5d6f: $5f
    ld b, b                                       ; $5d70: $40
    rst $08                                       ; $5d71: $cf
    ret nz                                        ; $5d72: $c0

    ld [hl], l                                    ; $5d73: $75
    db $10                                        ; $5d74: $10
    ld h, b                                       ; $5d75: $60
    xor d                                         ; $5d76: $aa
    xor d                                         ; $5d77: $aa
    halt                                          ; $5d78: $76
    inc bc                                        ; $5d79: $03
    inc bc                                        ; $5d7a: $03
    add e                                         ; $5d7b: $83
    add e                                         ; $5d7c: $83
    ld b, b                                       ; $5d7d: $40
    nop                                           ; $5d7e: $00
    ld b, b                                       ; $5d7f: $40
    or b                                          ; $5d80: $b0
    jr nc, jr_099_5d23                            ; $5d81: $30 $a0

    jr nz, jr_099_5dd9                            ; $5d83: $20 $54

    ld d, h                                       ; $5d85: $54
    xor b                                         ; $5d86: $a8
    ld bc, $50a8                                  ; $5d87: $01 $a8 $50
    ld d, b                                       ; $5d8a: $50
    ld d, l                                       ; $5d8b: $55
    ld d, l                                       ; $5d8c: $55
    xor d                                         ; $5d8d: $aa
    xor d                                         ; $5d8e: $aa
    inc b                                         ; $5d8f: $04
    ld l, b                                       ; $5d90: $68
    add d                                         ; $5d91: $82
    ld a, [de]                                    ; $5d92: $1a
    jr @-$5e                                      ; $5d93: $18 $a0

    and b                                         ; $5d95: $a0
    ld b, b                                       ; $5d96: $40
    ld b, b                                       ; $5d97: $40
    add b                                         ; $5d98: $80

jr_099_5d99:
    db $e4                                        ; $5d99: $e4
    rlca                                          ; $5d9a: $07
    db $fd                                        ; $5d9b: $fd
    ld a, d                                       ; $5d9c: $7a
    ld [de], a                                    ; $5d9d: $12
    ld b, b                                       ; $5d9e: $40
    ld c, d                                       ; $5d9f: $4a
    ld [hl], b                                    ; $5da0: $70
    ld a, [bc]                                    ; $5da1: $0a
    ld b, b                                       ; $5da2: $40
    ld d, d                                       ; $5da3: $52
    ld b, l                                       ; $5da4: $45
    rlca                                          ; $5da5: $07
    and b                                         ; $5da6: $a0
    dec h                                         ; $5da7: $25
    rlca                                          ; $5da8: $07
    call nz, Call_000_0001                        ; $5da9: $c4 $01 $00
    add b                                         ; $5dac: $80
    jr z, jr_099_5d6f                             ; $5dad: $28 $c0

    inc d                                         ; $5daf: $14
    db $fc                                        ; $5db0: $fc
    ld [bc], a                                    ; $5db1: $02
    jr nz, @+$04                                  ; $5db2: $20 $02

    inc b                                         ; $5db4: $04

jr_099_5db5:
    jr nz, jr_099_5db5                            ; $5db5: $20 $fe

    dec b                                         ; $5db7: $05

jr_099_5db8:
    ld [hl], a                                    ; $5db8: $77
    adc b                                         ; $5db9: $88
    ld a, [hl-]                                   ; $5dba: $3a
    ld [de], a                                    ; $5dbb: $12
    db $10                                        ; $5dbc: $10
    cp e                                          ; $5dbd: $bb
    ld de, $fd44                                  ; $5dbe: $11 $44 $fd
    ld [bc], a                                    ; $5dc1: $02
    inc l                                         ; $5dc2: $2c
    ld [bc], a                                    ; $5dc3: $02
    inc b                                         ; $5dc4: $04
    rst $10                                       ; $5dc5: $d7

jr_099_5dc6:
    jr z, jr_099_5e3a                             ; $5dc6: $28 $72

    ld a, [bc]                                    ; $5dc8: $0a
    and b                                         ; $5dc9: $a0
    ld [hl], $0a                                  ; $5dca: $36 $0a
    ld [de], a                                    ; $5dcc: $12
    cp b                                          ; $5dcd: $b8
    ld [bc], a                                    ; $5dce: $02
    inc bc                                        ; $5dcf: $03
    inc b                                         ; $5dd0: $04
    ld bc, $1002                                  ; $5dd1: $01 $02 $10
    ld [bc], a                                    ; $5dd4: $02
    inc b                                         ; $5dd5: $04
    ld bc, $0300                                  ; $5dd6: $01 $00 $03

jr_099_5dd9:
    nop                                           ; $5dd9: $00
    ld hl, $162c                                  ; $5dda: $21 $2c $16
    db $dd                                        ; $5ddd: $dd
    add h                                         ; $5dde: $84
    sbc h                                         ; $5ddf: $9c
    ld [bc], a                                    ; $5de0: $02
    ei                                            ; $5de1: $fb
    inc b                                         ; $5de2: $04
    ld a, a                                       ; $5de3: $7f
    add b                                         ; $5de4: $80
    ld a, [hl+]                                   ; $5de5: $2a
    ld [$827f], sp                                ; $5de6: $08 $7f $82
    ld [$00ff], sp                                ; $5de9: $08 $ff $00
    db $ed                                        ; $5dec: $ed
    ld d, d                                       ; $5ded: $52
    jr nz, jr_099_5df7                            ; $5dee: $20 $07

    ld [$42bd], sp                                ; $5df0: $08 $bd $42
    adc b                                         ; $5df3: $88
    sub b                                         ; $5df4: $90
    ld a, [bc]                                    ; $5df5: $0a
    nop                                           ; $5df6: $00

jr_099_5df7:
    rst $38                                       ; $5df7: $ff
    xor b                                         ; $5df8: $a8
    ret nz                                        ; $5df9: $c0

    ld e, d                                       ; $5dfa: $5a
    ld b, b                                       ; $5dfb: $40
    and b                                         ; $5dfc: $a0
    nop                                           ; $5dfd: $00
    db $10                                        ; $5dfe: $10
    ld b, h                                       ; $5dff: $44
    db $10                                        ; $5e00: $10
    and b                                         ; $5e01: $a0
    ld e, b                                       ; $5e02: $58
    ld [bc], a                                    ; $5e03: $02
    add b                                         ; $5e04: $80
    ld b, b                                       ; $5e05: $40
    ld c, b                                       ; $5e06: $48
    jr nz, jr_099_5e15                            ; $5e07: $20 $0c

    ret nz                                        ; $5e09: $c0

    nop                                           ; $5e0a: $00
    cp $81                                        ; $5e0b: $fe $81
    adc h                                         ; $5e0d: $8c
    ld a, [bc]                                    ; $5e0e: $0a
    ret nz                                        ; $5e0f: $c0

    ld a, [hl-]                                   ; $5e10: $3a
    rst $38                                       ; $5e11: $ff
    ld [hl+], a                                   ; $5e12: $22
    ret nz                                        ; $5e13: $c0

    sbc h                                         ; $5e14: $9c

jr_099_5e15:
    ld [bc], a                                    ; $5e15: $02
    ret nz                                        ; $5e16: $c0

    ld b, d                                       ; $5e17: $42
    nop                                           ; $5e18: $00
    inc c                                         ; $5e19: $0c
    ld b, $de                                     ; $5e1a: $06 $de
    adc b                                         ; $5e1c: $88
    cp b                                          ; $5e1d: $b8
    nop                                           ; $5e1e: $00
    ld b, b                                       ; $5e1f: $40
    ld d, b                                       ; $5e20: $50
    cp b                                          ; $5e21: $b8
    add b                                         ; $5e22: $80
    cp b                                          ; $5e23: $b8
    add b                                         ; $5e24: $80
    ld d, b                                       ; $5e25: $50
    ld b, b                                       ; $5e26: $40
    nop                                           ; $5e27: $00
    ld d, l                                       ; $5e28: $55
    ld d, l                                       ; $5e29: $55
    and b                                         ; $5e2a: $a0
    nop                                           ; $5e2b: $00
    ret nz                                        ; $5e2c: $c0

    nop                                           ; $5e2d: $00
    add b                                         ; $5e2e: $80
    ld d, b                                       ; $5e2f: $50
    jr nz, jr_099_5e74                            ; $5e30: $20 $42

    and b                                         ; $5e32: $a0
    ld b, $08                                     ; $5e33: $06 $08
    pop bc                                        ; $5e35: $c1
    jr nz, jr_099_5db8                            ; $5e36: $20 $80

    ld d, b                                       ; $5e38: $50
    push af                                       ; $5e39: $f5

jr_099_5e3a:
    add b                                         ; $5e3a: $80
    or d                                          ; $5e3b: $b2
    nop                                           ; $5e3c: $00
    rst $28                                       ; $5e3d: $ef
    db $10                                        ; $5e3e: $10
    cp $00                                        ; $5e3f: $fe $00
    cp e                                          ; $5e41: $bb
    inc b                                         ; $5e42: $04
    rst $18                                       ; $5e43: $df
    ld a, [hl+]                                   ; $5e44: $2a
    nop                                           ; $5e45: $00
    or $c8                                        ; $5e46: $f6 $c8
    ld b, $ef                                     ; $5e48: $06 $ef
    sbc h                                         ; $5e4a: $9c
    rlca                                          ; $5e4b: $07
    ld [hl], a                                    ; $5e4c: $77
    and b                                         ; $5e4d: $a0
    rlca                                          ; $5e4e: $07
    cp e                                          ; $5e4f: $bb
    ld [hl+], a                                   ; $5e50: $22
    nop                                           ; $5e51: $00
    rst $30                                       ; $5e52: $f7
    ld b, d                                       ; $5e53: $42
    rlca                                          ; $5e54: $07
    xor l                                         ; $5e55: $ad
    nop                                           ; $5e56: $00
    or $ac                                        ; $5e57: $f6 $ac
    rlca                                          ; $5e59: $07
    ld a, e                                       ; $5e5a: $7b
    xor l                                         ; $5e5b: $ad
    jp nc, $ef16                                  ; $5e5c: $d2 $16 $ef

    ld [de], a                                    ; $5e5f: $12
    nop                                           ; $5e60: $00
    rst $18                                       ; $5e61: $df
    ld [hl], b                                    ; $5e62: $70
    dec bc                                        ; $5e63: $0b
    cp [hl]                                       ; $5e64: $be
    rlca                                          ; $5e65: $07
    ld e, e                                       ; $5e66: $5b
    ld [de], a                                    ; $5e67: $12
    jr nz, jr_099_5e89                            ; $5e68: $20 $1f

    cp l                                          ; $5e6a: $bd
    nop                                           ; $5e6b: $00
    push af                                       ; $5e6c: $f5
    ld a, [de]                                    ; $5e6d: $1a
    db $10                                        ; $5e6e: $10
    ld b, b                                       ; $5e6f: $40
    nop                                           ; $5e70: $00
    inc e                                         ; $5e71: $1c
    nop                                           ; $5e72: $00
    inc l                                         ; $5e73: $2c

jr_099_5e74:
    ld [$2020], sp                                ; $5e74: $08 $20 $20
    ld b, d                                       ; $5e77: $42
    inc h                                         ; $5e78: $24
    jr nz, jr_099_5e9b                            ; $5e79: $20 $20

    ld b, d                                       ; $5e7b: $42
    rst $28                                       ; $5e7c: $ef
    nop                                           ; $5e7d: $00
    db $dd                                        ; $5e7e: $dd
    db $10                                        ; $5e7f: $10
    rla                                           ; $5e80: $17
    ld d, a                                       ; $5e81: $57
    db $dd                                        ; $5e82: $dd
    ld e, d                                       ; $5e83: $5a
    db $10                                        ; $5e84: $10
    inc c                                         ; $5e85: $0c
    ld [$62f7], sp                                ; $5e86: $08 $f7 $62

jr_099_5e89:
    ld [$0948], sp                                ; $5e89: $08 $48 $09
    xor b                                         ; $5e8c: $a8
    rlca                                          ; $5e8d: $07
    rst $18                                       ; $5e8e: $df
    ld [hl], b                                    ; $5e8f: $70
    jr @-$49                                      ; $5e90: $18 $b5

    ld b, b                                       ; $5e92: $40
    rlca                                          ; $5e93: $07
    cp e                                          ; $5e94: $bb
    sbc h                                         ; $5e95: $9c
    inc bc                                        ; $5e96: $03
    ld [hl], b                                    ; $5e97: $70
    nop                                           ; $5e98: $00
    db $10                                        ; $5e99: $10
    add h                                         ; $5e9a: $84

jr_099_5e9b:
    ld [$9c7b], sp                                ; $5e9b: $08 $7b $9c
    dec bc                                        ; $5e9e: $0b
    cp e                                          ; $5e9f: $bb
    ld [hl], b                                    ; $5ea0: $70
    jr jr_099_5ec3                                ; $5ea1: $18 $20

    ld b, b                                       ; $5ea3: $40
    nop                                           ; $5ea4: $00
    cp d                                          ; $5ea5: $ba
    inc bc                                        ; $5ea6: $03
    ld b, b                                       ; $5ea7: $40
    nop                                           ; $5ea8: $00
    adc b                                         ; $5ea9: $88
    ld b, b                                       ; $5eaa: $40
    ld d, b                                       ; $5eab: $50
    adc b                                         ; $5eac: $88
    db $10                                        ; $5ead: $10
    ld b, b                                       ; $5eae: $40
    ld a, a                                       ; $5eaf: $7f
    sub b                                         ; $5eb0: $90
    nop                                           ; $5eb1: $00
    ld [bc], a                                    ; $5eb2: $02
    ld [bc], a                                    ; $5eb3: $02
    inc b                                         ; $5eb4: $04
    dec b                                         ; $5eb5: $05
    add hl, bc                                    ; $5eb6: $09
    ld a, [bc]                                    ; $5eb7: $0a
    nop                                           ; $5eb8: $00
    inc b                                         ; $5eb9: $04
    rlca                                          ; $5eba: $07
    add hl, de                                    ; $5ebb: $19
    ld e, $0c                                     ; $5ebc: $1e $0c
    rrca                                          ; $5ebe: $0f
    ld a, [de]                                    ; $5ebf: $1a
    rra                                           ; $5ec0: $1f
    nop                                           ; $5ec1: $00
    dec e                                         ; $5ec2: $1d

jr_099_5ec3:
    rra                                           ; $5ec3: $1f
    ld c, $0f                                     ; $5ec4: $0e $0f
    rra                                           ; $5ec6: $1f
    rra                                           ; $5ec7: $1f
    ld [hl], $3f                                  ; $5ec8: $36 $3f
    nop                                           ; $5eca: $00
    inc hl                                        ; $5ecb: $23
    ccf                                           ; $5ecc: $3f
    ld l, c                                       ; $5ecd: $69
    ld [hl], a                                    ; $5ece: $77
    ld h, b                                       ; $5ecf: $60
    ld a, a                                       ; $5ed0: $7f
    jp z, Jump_000_00f5                           ; $5ed1: $ca $f5 $00

    ld c, l                                       ; $5ed4: $4d
    ld [hl], d                                    ; $5ed5: $72
    rst $20                                       ; $5ed6: $e7
    ld hl, sp-$3d                                 ; $5ed7: $f8 $c3
    db $fc                                        ; $5ed9: $fc
    ld h, c                                       ; $5eda: $61
    ld a, [hl]                                    ; $5edb: $7e
    inc b                                         ; $5edc: $04
    jr nc, jr_099_5f1e                            ; $5edd: $30 $3f

    ld l, b                                       ; $5edf: $68
    ld a, a                                       ; $5ee0: $7f
    dec [hl]                                      ; $5ee1: $35
    or d                                          ; $5ee2: $b2
    dec b                                         ; $5ee3: $05
    cpl                                           ; $5ee4: $2f
    cpl                                           ; $5ee5: $2f
    add b                                         ; $5ee6: $80
    halt                                          ; $5ee7: $76
    dec d                                         ; $5ee8: $15
    jr c, jr_099_5f23                             ; $5ee9: $38 $38

    ld b, [hl]                                    ; $5eeb: $46
    ld e, l                                       ; $5eec: $5d
    and e                                         ; $5eed: $a3
    and c                                         ; $5eee: $a1
    rst $18                                       ; $5eef: $df
    nop                                           ; $5ef0: $00
    ld l, d                                       ; $5ef1: $6a
    ld a, [hl]                                    ; $5ef2: $7e
    inc a                                         ; $5ef3: $3c
    inc a                                         ; $5ef4: $3c
    rla                                           ; $5ef5: $17
    rla                                           ; $5ef6: $17
    ld [bc], a                                    ; $5ef7: $02
    ld [bc], a                                    ; $5ef8: $02
    db $e3                                        ; $5ef9: $e3
    ld h, b                                       ; $5efa: $60
    ld b, $04                                     ; $5efb: $06 $04
    nop                                           ; $5efd: $00
    sub b                                         ; $5efe: $90
    dec e                                         ; $5eff: $1d
    rst $28                                       ; $5f00: $ef
    db $10                                        ; $5f01: $10
    cp [hl]                                       ; $5f02: $be

Call_099_5f03:
    ret nz                                        ; $5f03: $c0

    inc bc                                        ; $5f04: $03
    ld c, d                                       ; $5f05: $4a
    ld de, $ca81                                  ; $5f06: $11 $81 $ca
    ld bc, $04fb                                  ; $5f09: $01 $fb $04
    rst $30                                       ; $5f0c: $f7
    ld [$21df], sp                                ; $5f0d: $08 $df $21
    xor c                                         ; $5f10: $a9
    ld a, [bc]                                    ; $5f11: $0a
    add b                                         ; $5f12: $80
    ret z                                         ; $5f13: $c8

    ld bc, $ff11                                  ; $5f14: $01 $11 $ff
    jr nz, jr_099_5f96                            ; $5f17: $20 $7d

    sub d                                         ; $5f19: $92
    cp l                                          ; $5f1a: $bd
    ld b, d                                       ; $5f1b: $42
    ld h, $ff                                     ; $5f1c: $26 $ff

jr_099_5f1e:
    ld [$0fe4], sp                                ; $5f1e: $08 $e4 $0f
    db $db                                        ; $5f21: $db
    dec h                                         ; $5f22: $25

jr_099_5f23:
    db $f4                                        ; $5f23: $f4
    rlca                                          ; $5f24: $07
    ld a, [de]                                    ; $5f25: $1a
    inc b                                         ; $5f26: $04
    rst $30                                       ; $5f27: $f7
    ld b, b                                       ; $5f28: $40
    ld [$09b8], sp                                ; $5f29: $08 $b8 $09
    db $fd                                        ; $5f2c: $fd
    ld [bc], a                                    ; $5f2d: $02
    ei                                            ; $5f2e: $fb
    inc b                                         ; $5f2f: $04
    ld l, a                                       ; $5f30: $6f
    sub b                                         ; $5f31: $90
    add c                                         ; $5f32: $81
    inc l                                         ; $5f33: $2c
    inc b                                         ; $5f34: $04
    nop                                           ; $5f35: $00
    sub h                                         ; $5f36: $94
    db $eb                                        ; $5f37: $eb
    add c                                         ; $5f38: $81
    cp $c0                                        ; $5f39: $fe $c0
    ld b, c                                       ; $5f3b: $41
    inc b                                         ; $5f3c: $04
    inc b                                         ; $5f3d: $04
    ret nz                                        ; $5f3e: $c0

    rst $38                                       ; $5f3f: $ff
    xor b                                         ; $5f40: $a8
    rst $38                                       ; $5f41: $ff
    push de                                       ; $5f42: $d5
    push af                                       ; $5f43: $f5
    rlca                                          ; $5f44: $07
    ld a, [$0007]                                 ; $5f45: $fa $07 $00
    ld e, d                                       ; $5f48: $5a
    and a                                         ; $5f49: $a7
    xor e                                         ; $5f4a: $ab
    ld d, a                                       ; $5f4b: $57
    ld [de], a                                    ; $5f4c: $12
    rst $28                                       ; $5f4d: $ef
    ld b, $ff                                     ; $5f4e: $06 $ff
    dec b                                         ; $5f50: $05
    ld a, [bc]                                    ; $5f51: $0a
    rst $38                                       ; $5f52: $ff
    ld d, [hl]                                    ; $5f53: $56
    rst $38                                       ; $5f54: $ff
    db $fc                                        ; $5f55: $fc
    ld a, [c]                                     ; $5f56: $f2
    ld [bc], a                                    ; $5f57: $02
    add b                                         ; $5f58: $80
    ld c, e                                       ; $5f59: $4b
    rlca                                          ; $5f5a: $07
    nop                                           ; $5f5b: $00
    inc bc                                        ; $5f5c: $03
    rst $38                                       ; $5f5d: $ff
    ld d, c                                       ; $5f5e: $51
    xor a                                         ; $5f5f: $af
    cp c                                          ; $5f60: $b9
    ld b, a                                       ; $5f61: $47
    ld [hl], l                                    ; $5f62: $75
    adc e                                         ; $5f63: $8b
    inc b                                         ; $5f64: $04
    jp hl                                         ; $5f65: $e9


    rla                                           ; $5f66: $17
    ld de, $b3ff                                  ; $5f67: $11 $ff $b3
    ld e, e                                       ; $5f6a: $5b
    rlca                                          ; $5f6b: $07
    add e                                         ; $5f6c: $83
    rst $38                                       ; $5f6d: $ff
    nop                                           ; $5f6e: $00
    add hl, hl                                    ; $5f6f: $29
    rst $10                                       ; $5f70: $d7
    ld a, l                                       ; $5f71: $7d
    add e                                         ; $5f72: $83
    add hl, sp                                    ; $5f73: $39
    rst $00                                       ; $5f74: $c7
    dec e                                         ; $5f75: $1d
    db $e3                                        ; $5f76: $e3
    nop                                           ; $5f77: $00
    add b                                         ; $5f78: $80
    rst $38                                       ; $5f79: $ff
    sub l                                         ; $5f7a: $95
    ld [$d0af], a                                 ; $5f7b: $ea $af $d0
    add [hl]                                      ; $5f7e: $86
    ld sp, hl                                     ; $5f7f: $f9
    db $10                                        ; $5f80: $10
    add c                                         ; $5f81: $81
    cp $d0                                        ; $5f82: $fe $d0
    and $06                                       ; $5f84: $e6 $06
    ccf                                           ; $5f86: $3f
    rst $38                                       ; $5f87: $ff
    ld [hl], c                                    ; $5f88: $71
    cp $00                                        ; $5f89: $fe $00
    ld a, [hl+]                                   ; $5f8b: $2a
    push af                                       ; $5f8c: $f5
    and c                                         ; $5f8d: $a1
    ld a, [hl]                                    ; $5f8e: $7e
    and b                                         ; $5f8f: $a0
    ld a, a                                       ; $5f90: $7f
    jr nz, @+$01                                  ; $5f91: $20 $ff

    db $10                                        ; $5f93: $10
    or b                                          ; $5f94: $b0
    ld a, a                                       ; $5f95: $7f

jr_099_5f96:
    ld a, [hl+]                                   ; $5f96: $2a
    add l                                         ; $5f97: $85
    rlca                                          ; $5f98: $07
    pop de                                        ; $5f99: $d1
    cpl                                           ; $5f9a: $2f
    xor c                                         ; $5f9b: $a9
    ld d, a                                       ; $5f9c: $57
    ld de, $bf43                                  ; $5f9d: $11 $43 $bf
    ld bc, $0042                                  ; $5fa0: $01 $42 $00
    dec b                                         ; $5fa3: $05
    rst $38                                       ; $5fa4: $ff
    xor a                                         ; $5fa5: $af
    sub l                                         ; $5fa6: $95
    rlca                                          ; $5fa7: $07
    jr nc, jr_099_5fb3                            ; $5fa8: $30 $09

    rst $30                                       ; $5faa: $f7
    ld d, h                                       ; $5fab: $54
    inc bc                                        ; $5fac: $03
    inc b                                         ; $5fad: $04
    nop                                           ; $5fae: $00
    ld bc, $abff                                  ; $5faf: $01 $ff $ab
    rst $38                                       ; $5fb2: $ff

jr_099_5fb3:
    ld b, b                                       ; $5fb3: $40
    ld d, a                                       ; $5fb4: $57
    ld h, b                                       ; $5fb5: $60
    nop                                           ; $5fb6: $00
    add b                                         ; $5fb7: $80
    rst $38                                       ; $5fb8: $ff
    ld a, [bc]                                    ; $5fb9: $0a
    push af                                       ; $5fba: $f5
    add c                                         ; $5fbb: $81
    cp $00                                        ; $5fbc: $fe $00
    push af                                       ; $5fbe: $f5
    rst $38                                       ; $5fbf: $ff
    sbc a                                         ; $5fc0: $9f
    ldh [$3f], a                                  ; $5fc1: $e0 $3f
    ret nz                                        ; $5fc3: $c0

    cp a                                          ; $5fc4: $bf
    ret nz                                        ; $5fc5: $c0

    nop                                           ; $5fc6: $00
    ld a, [hl-]                                   ; $5fc7: $3a
    ret nz                                        ; $5fc8: $c0

    inc b                                         ; $5fc9: $04
    rst $38                                       ; $5fca: $ff
    call $7906                                    ; $5fcb: $cd $06 $79
    add [hl]                                      ; $5fce: $86
    nop                                           ; $5fcf: $00
    push af                                       ; $5fd0: $f5
    cp $d0                                        ; $5fd1: $fe $d0
    cpl                                           ; $5fd3: $2f
    sbc $07                                       ; $5fd4: $de $07
    ld d, e                                       ; $5fd6: $53
    rrca                                          ; $5fd7: $0f
    ld bc, $0619                                  ; $5fd8: $01 $19 $06
    nop                                           ; $5fdb: $00
    rst $38                                       ; $5fdc: $ff
    db $f4                                        ; $5fdd: $f4
    nop                                           ; $5fde: $00
    and b                                         ; $5fdf: $a0
    or b                                          ; $5fe0: $b0
    rlca                                          ; $5fe1: $07
    inc b                                         ; $5fe2: $04
    xor d                                         ; $5fe3: $aa
    ld d, l                                       ; $5fe4: $55
    inc d                                         ; $5fe5: $14
    db $eb                                        ; $5fe6: $eb
    db $fd                                        ; $5fe7: $fd
    call nc, $0107                                ; $5fe8: $d4 $07 $01
    rst $38                                       ; $5feb: $ff
    nop                                           ; $5fec: $00
    inc a                                         ; $5fed: $3c
    inc de                                        ; $5fee: $13
    ld sp, $d41f                                  ; $5fef: $31 $1f $d4
    dec sp                                        ; $5ff2: $3b
    db $dd                                        ; $5ff3: $dd
    inc sp                                        ; $5ff4: $33
    nop                                           ; $5ff5: $00
    ld e, $f1                                     ; $5ff6: $1e $f1
    ld c, e                                       ; $5ff8: $4b
    pop af                                        ; $5ff9: $f1
    ld e, d                                       ; $5ffa: $5a
    ld sp, $e09f                                  ; $5ffb: $31 $9f $e0
    sub d                                         ; $5ffe: $92
    ld b, b                                       ; $5fff: $40
    ld e, b                                       ; $6000: $58
    sbc l                                         ; $6001: $9d
    ld b, $40                                     ; $6002: $06 $40
    ld e, b                                       ; $6004: $58
    ld a, [$4000]                                 ; $6005: $fa $00 $40
    ld e, b                                       ; $6008: $58
    xor c                                         ; $6009: $a9
    ld b, b                                       ; $600a: $40
    inc de                                        ; $600b: $13
    ld b, b                                       ; $600c: $40
    ld e, b                                       ; $600d: $58
    cp a                                          ; $600e: $bf
    ret nz                                        ; $600f: $c0

    dec d                                         ; $6010: $15
    ld [$f58a], a                                 ; $6011: $ea $8a $f5
    ld b, h                                       ; $6014: $44
    ld l, d                                       ; $6015: $6a
    ld b, e                                       ; $6016: $43
    dec b                                         ; $6017: $05
    sub l                                         ; $6018: $95
    ld [$82ba], a                                 ; $6019: $ea $ba $82
    nop                                           ; $601c: $00
    rra                                           ; $601d: $1f
    inc b                                         ; $601e: $04
    nop                                           ; $601f: $00
    ld a, [$b505]                                 ; $6020: $fa $05 $b5
    ld c, [hl]                                    ; $6023: $4e
    cp a                                          ; $6024: $bf
    rst $38                                       ; $6025: $ff
    ld e, a                                       ; $6026: $5f
    rst $38                                       ; $6027: $ff
    nop                                           ; $6028: $00
    ld b, [hl]                                    ; $6029: $46
    cp a                                          ; $602a: $bf
    xor d                                         ; $602b: $aa
    ld d, a                                       ; $602c: $57
    jp nc, $fa0f                                  ; $602d: $d2 $0f $fa

    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    add sp, $00                                   ; $6032: $e8 $00
    ld d, a                                       ; $6034: $57
    xor b                                         ; $6035: $a8
    xor d                                         ; $6036: $aa
    rst $38                                       ; $6037: $ff
    ld d, b                                       ; $6038: $50
    rst $38                                       ; $6039: $ff
    add b                                         ; $603a: $80
    ld a, c                                       ; $603b: $79
    inc bc                                        ; $603c: $03
    ld b, l                                       ; $603d: $45
    ld d, h                                       ; $603e: $54
    xor e                                         ; $603f: $ab
    ld h, a                                       ; $6040: $67
    add hl, de                                    ; $6041: $19
    xor d                                         ; $6042: $aa
    ld d, l                                       ; $6043: $55
    nop                                           ; $6044: $00
    ld b, l                                       ; $6045: $45
    cp e                                          ; $6046: $bb
    cp [hl]                                       ; $6047: $be
    rst $38                                       ; $6048: $ff
    inc de                                        ; $6049: $13
    rst $38                                       ; $604a: $ff
    ld d, l                                       ; $604b: $55
    cp e                                          ; $604c: $bb
    nop                                           ; $604d: $00
    sbc c                                         ; $604e: $99
    ld [hl], a                                    ; $604f: $77
    ld de, $a9ff                                  ; $6050: $11 $ff $a9
    sub $92                                       ; $6053: $d6 $92
    db $ed                                        ; $6055: $ed
    ld [bc], a                                    ; $6056: $02
    and l                                         ; $6057: $a5
    jp c, $f58a                                   ; $6058: $da $8a $f5

    sub c                                         ; $605b: $91
    xor $44                                       ; $605c: $ee $44
    add hl, bc                                    ; $605e: $09
    add b                                         ; $605f: $80
    nop                                           ; $6060: $00
    rst $38                                       ; $6061: $ff
    ld c, b                                       ; $6062: $48
    or a                                          ; $6063: $b7
    add b                                         ; $6064: $80
    ld a, a                                       ; $6065: $7f
    ld c, a                                       ; $6066: $4f
    cp a                                          ; $6067: $bf
    sbc c                                         ; $6068: $99
    nop                                           ; $6069: $00
    ld a, a                                       ; $606a: $7f
    inc d                                         ; $606b: $14
    ei                                            ; $606c: $fb
    ld d, $f9                                     ; $606d: $16 $f9
    db $10                                        ; $606f: $10
    rst $38                                       ; $6070: $ff
    ld a, [de]                                    ; $6071: $1a
    ld bc, $97ff                                  ; $6072: $01 $ff $97
    add sp, -$77                                  ; $6075: $e8 $89
    or $90                                        ; $6077: $f6 $90
    rst $28                                       ; $6079: $ef
    ld h, d                                       ; $607a: $62
    add hl, bc                                    ; $607b: $09
    nop                                           ; $607c: $00
    pop bc                                        ; $607d: $c1
    rst $38                                       ; $607e: $ff
    xor d                                         ; $607f: $aa
    rst $38                                       ; $6080: $ff
    push af                                       ; $6081: $f5
    rst $38                                       ; $6082: $ff
    cp c                                          ; $6083: $b9
    ld b, a                                       ; $6084: $47
    dec b                                         ; $6085: $05
    ld a, c                                       ; $6086: $79
    add a                                         ; $6087: $87
    xor l                                         ; $6088: $ad
    ld d, e                                       ; $6089: $53
    ld b, c                                       ; $608a: $41
    ld [de], a                                    ; $608b: $12
    ld bc, $3501                                  ; $608c: $01 $01 $35
    rlca                                          ; $608f: $07
    dec b                                         ; $6090: $05
    sbc c                                         ; $6091: $99
    rst $20                                       ; $6092: $e7
    ret nz                                        ; $6093: $c0

    rst $38                                       ; $6094: $ff
    and b                                         ; $6095: $a0
    ld a, b                                       ; $6096: $78
    ld bc, $41fa                                  ; $6097: $01 $fa $41
    rlca                                          ; $609a: $07
    nop                                           ; $609b: $00
    ret nz                                        ; $609c: $c0

    rst $38                                       ; $609d: $ff
    adc e                                         ; $609e: $8b
    db $f4                                        ; $609f: $f4
    sub c                                         ; $60a0: $91
    xor $1f                                       ; $60a1: $ee $1f
    rst $38                                       ; $60a3: $ff
    nop                                           ; $60a4: $00
    jr @+$01                                      ; $60a5: $18 $ff

    ld de, $bbfe                                  ; $60a7: $11 $fe $bb
    db $fc                                        ; $60aa: $fc
    ld a, [c]                                     ; $60ab: $f2
    db $fd                                        ; $60ac: $fd
    ld [bc], a                                    ; $60ad: $02
    jr c, @+$01                                   ; $60ae: $38 $ff

    ld d, l                                       ; $60b0: $55
    cp a                                          ; $60b1: $bf
    sbc $3f                                       ; $60b2: $de $3f
    ld a, h                                       ; $60b4: $7c
    add hl, bc                                    ; $60b5: $09
    ld h, c                                       ; $60b6: $61
    nop                                           ; $60b7: $00
    sbc a                                         ; $60b8: $9f
    ld sp, hl                                     ; $60b9: $f9
    rlca                                          ; $60ba: $07
    ld [hl], l                                    ; $60bb: $75
    adc e                                         ; $60bc: $8b
    xor c                                         ; $60bd: $a9
    ld d, a                                       ; $60be: $57
    ld b, c                                       ; $60bf: $41
    nop                                           ; $60c0: $00
    cp a                                          ; $60c1: $bf
    xor c                                         ; $60c2: $a9
    rst $38                                       ; $60c3: $ff
    dec a                                         ; $60c4: $3d
    jp $f789                                      ; $60c5: $c3 $89 $f7


    ld d, c                                       ; $60c8: $51
    add b                                         ; $60c9: $80
    ld l, a                                       ; $60ca: $6f
    rlca                                          ; $60cb: $07
    add b                                         ; $60cc: $80
    rst $38                                       ; $60cd: $ff
    ld a, [hl+]                                   ; $60ce: $2a
    push de                                       ; $60cf: $d5
    ld d, l                                       ; $60d0: $55
    xor d                                         ; $60d1: $aa
    ld a, [hl+]                                   ; $60d2: $2a
    dec d                                         ; $60d3: $15
    push de                                       ; $60d4: $d5
    jp nz, Jump_099_7afd                          ; $60d5: $c2 $fd $7a

    add hl, de                                    ; $60d8: $19
    rst $38                                       ; $60d9: $ff
    and d                                         ; $60da: $a2
    inc b                                         ; $60db: $04
    and [hl]                                      ; $60dc: $a6
    add a                                         ; $60dd: $87
    rlca                                          ; $60de: $07
    nop                                           ; $60df: $00
    rst $38                                       ; $60e0: $ff

jr_099_60e1:
    rra                                           ; $60e1: $1f
    ld e, b                                       ; $60e2: $58
    cp a                                          ; $60e3: $bf
    sub d                                         ; $60e4: $92
    ld a, l                                       ; $60e5: $7d
    ld de, $04fe                                  ; $60e6: $11 $fe $04
    ld hl, sp-$01                                 ; $60e9: $f8 $ff
    dec d                                         ; $60eb: $15
    rst $38                                       ; $60ec: $ff
    sbc [hl]                                      ; $60ed: $9e
    db $10                                        ; $60ee: $10
    ld [$0bff], sp                                ; $60ef: $08 $ff $0b
    nop                                           ; $60f2: $00
    push af                                       ; $60f3: $f5

jr_099_60f4:
    push de                                       ; $60f4: $d5
    dec hl                                        ; $60f5: $2b
    xor c                                         ; $60f6: $a9
    ld d, a                                       ; $60f7: $57
    ld b, l                                       ; $60f8: $45
    cp e                                          ; $60f9: $bb
    add hl, bc                                    ; $60fa: $09
    jr nz, jr_099_60f4                            ; $60fb: $20 $f7

    and e                                         ; $60fd: $a3
    and a                                         ; $60fe: $a7
    rlca                                          ; $60ff: $07
    ld b, b                                       ; $6100: $40
    cp a                                          ; $6101: $bf
    ld bc, $82fe                                  ; $6102: $01 $fe $82
    jr c, @-$01                                   ; $6105: $38 $fd

    nop                                           ; $6107: $00
    inc sp                                        ; $6108: $33
    ld b, $e6                                     ; $6109: $06 $e6
    rrca                                          ; $610b: $0f
    ld c, b                                       ; $610c: $48
    ld [$f0cf], sp                                ; $610d: $08 $cf $f0
    sub a                                         ; $6110: $97
    ld [hl], h                                    ; $6111: $74
    add sp, $04                                   ; $6112: $e8 $04
    jr c, jr_099_60e1                             ; $6114: $38 $cb

    rlca                                          ; $6116: $07
    call nz, $0157                                ; $6117: $c4 $57 $01
    add b                                         ; $611a: $80
    ld b, $fd                                     ; $611b: $06 $fd
    inc bc                                        ; $611d: $03
    ld [bc], a                                    ; $611e: $02
    ld a, [$fd05]                                 ; $611f: $fa $05 $fd
    inc bc                                        ; $6122: $03
    cp $01                                        ; $6123: $fe $01
    inc b                                         ; $6125: $04
    ld [$0202], sp                                ; $6126: $08 $02 $02
    rst $38                                       ; $6129: $ff
    add d                                         ; $612a: $82
    rst $38                                       ; $612b: $ff
    ld d, d                                       ; $612c: $52
    rst $38                                       ; $612d: $ff
    cp $06                                        ; $612e: $fe $06
    ld [$00af], sp                                ; $6130: $08 $af $00
    ld a, [hl-]                                   ; $6133: $3a
    rst $00                                       ; $6134: $c7
    ld a, [bc]                                    ; $6135: $0a
    rst $30                                       ; $6136: $f7
    or a                                          ; $6137: $b7
    rst $38                                       ; $6138: $ff
    rst $18                                       ; $6139: $df
    rst $38                                       ; $613a: $ff
    adc b                                         ; $613b: $88
    inc b                                         ; $613c: $04
    ld c, b                                       ; $613d: $48
    db $fd                                        ; $613e: $fd
    rst $38                                       ; $613f: $ff
    cp a                                          ; $6140: $bf
    inc b                                         ; $6141: $04
    ld d, b                                       ; $6142: $50
    cp $ff                                        ; $6143: $fe $ff
    xor $a8                                       ; $6145: $ee $a8
    inc b                                         ; $6147: $04
    ld d, b                                       ; $6148: $50
    add d                                         ; $6149: $82
    ld d, [hl]                                    ; $614a: $56
    ld [bc], a                                    ; $614b: $02
    xor [hl]                                      ; $614c: $ae
    ld b, b                                       ; $614d: $40
    nop                                           ; $614e: $00
    ld b, $ff                                     ; $614f: $06 $ff
    jp nc, Jump_000_2f00                          ; $6151: $d2 $00 $2f

    and d                                         ; $6154: $a2
    ld e, a                                       ; $6155: $5f
    ld [hl], d                                    ; $6156: $72
    adc a                                         ; $6157: $8f
    db $fd                                        ; $6158: $fd
    rst $38                                       ; $6159: $ff
    cp l                                          ; $615a: $bd
    nop                                           ; $615b: $00
    cp $fb                                        ; $615c: $fe $fb
    db $fd                                        ; $615e: $fd
    cp e                                          ; $615f: $bb
    ei                                            ; $6160: $fb
    ei                                            ; $6161: $fb
    ei                                            ; $6162: $fb
    cp l                                          ; $6163: $bd
    nop                                           ; $6164: $00
    ei                                            ; $6165: $fb
    ld a, [$bdfd]                                 ; $6166: $fa $fd $bd
    cp $fe                                        ; $6169: $fe $fe
    rst $38                                       ; $616b: $ff
    ld l, $00                                     ; $616c: $2e $00
    rst $18                                       ; $616e: $df
    or $ef                                        ; $616f: $f6 $ef
    or [hl]                                       ; $6171: $b6
    rst $30                                       ; $6172: $f7
    or $f7                                        ; $6173: $f6 $f7
    xor [hl]                                      ; $6175: $ae
    nop                                           ; $6176: $00
    rst $30                                       ; $6177: $f7
    sub $ef                                       ; $6178: $d6 $ef
    ld l, $1f                                     ; $617a: $2e $1f
    and d                                         ; $617c: $a2
    ld e, a                                       ; $617d: $5f
    ld d, d                                       ; $617e: $52
    dec bc                                        ; $617f: $0b

jr_099_6180:
    xor a                                         ; $6180: $af
    ld [hl+], a                                   ; $6181: $22
    rst $18                                       ; $6182: $df
    ld [bc], a                                    ; $6183: $02
    ld a, h                                       ; $6184: $7c
    dec b                                         ; $6185: $05
    ld [bc], a                                    ; $6186: $02
    jr c, @+$12                                   ; $6187: $38 $10

    ld [hl], b                                    ; $6189: $70
    jr z, jr_099_61f8                             ; $618a: $28 $6c

    cp a                                          ; $618c: $bf
    inc b                                         ; $618d: $04

jr_099_618e:
    jr nz, jr_099_6200                            ; $618e: $20 $70

    ld e, b                                       ; $6190: $58
    rst $38                                       ; $6191: $ff
    ld [hl], b                                    ; $6192: $70
    ld h, b                                       ; $6193: $60
    call Call_000_2b08                            ; $6194: $cd $08 $2b

jr_099_6197:
    call nc, Call_099_5f03                        ; $6197: $d4 $03 $5f
    and b                                         ; $619a: $a0
    cp a                                          ; $619b: $bf
    ld b, b                                       ; $619c: $40
    ld a, a                                       ; $619d: $7f
    add b                                         ; $619e: $80

jr_099_619f:
    inc b                                         ; $619f: $04
    jr jr_099_618e                                ; $61a0: $18 $ec

    ld c, b                                       ; $61a2: $48
    db $dd                                        ; $61a3: $dd
    ld hl, sp+$08                                 ; $61a4: $f8 $08
    ret c                                         ; $61a6: $d8

    jr jr_099_619f                                ; $61a7: $18 $f6

    adc a                                         ; $61a9: $8f
    ld bc, $1804                                  ; $61aa: $01 $04 $18

jr_099_61ad:
    inc c                                         ; $61ad: $0c
    add hl, de                                    ; $61ae: $19
    adc $14                                       ; $61af: $ce $14
    ld bc, $ca33                                  ; $61b1: $01 $33 $ca
    push af                                       ; $61b4: $f5
    ccf                                           ; $61b5: $3f
    ld de, $14f2                                  ; $61b6: $11 $f2 $14
    nop                                           ; $61b9: $00
    nop                                           ; $61ba: $00
    add hl, de                                    ; $61bb: $19
    ld bc, $011b                                  ; $61bc: $01 $1b $01
    xor h                                         ; $61bf: $ac
    db $10                                        ; $61c0: $10
    jr jr_099_61ad                                ; $61c1: $18 $ea

    ret z                                         ; $61c3: $c8

    rlca                                          ; $61c4: $07
    dec b                                         ; $61c5: $05
    ld l, d                                       ; $61c6: $6a
    rrca                                          ; $61c7: $0f
    jr nc, jr_099_61cd                            ; $61c8: $30 $03

    db $ec                                        ; $61ca: $ec
    inc bc                                        ; $61cb: $03
    nop                                           ; $61cc: $00

jr_099_61cd:
    ld d, [hl]                                    ; $61cd: $56
    ld bc, $03a5                                  ; $61ce: $01 $a5 $03
    rrca                                          ; $61d1: $0f
    ld bc, $035c                                  ; $61d2: $01 $5c $03
    jr nz, jr_099_6180                            ; $61d5: $20 $a9

    ld d, a                                       ; $61d7: $57
    ld a, a                                       ; $61d8: $7f
    add hl, bc                                    ; $61d9: $09
    jp nz, $85fd                                  ; $61da: $c2 $fd $85

    ld a, [$034b]                                 ; $61dd: $fa $4b $03
    db $f4                                        ; $61e0: $f4
    add a                                         ; $61e1: $87
    ld hl, sp+$4b                                 ; $61e2: $f8 $4b
    db $f4                                        ; $61e4: $f4
    and c                                         ; $61e5: $a1
    ld a, a                                       ; $61e6: $7f
    ld [$07be], sp                                ; $61e7: $08 $be $07
    nop                                           ; $61ea: $00

jr_099_61eb:
    cp $00                                        ; $61eb: $fe $00
    db $fc                                        ; $61ed: $fc
    nop                                           ; $61ee: $00
    ld d, h                                       ; $61ef: $54
    nop                                           ; $61f0: $00
    db $eb                                        ; $61f1: $eb
    nop                                           ; $61f2: $00
    jr nz, @+$60                                  ; $61f3: $20 $5e

    and c                                         ; $61f5: $a1
    sbc a                                         ; $61f6: $9f
    add hl, bc                                    ; $61f7: $09

jr_099_61f8:
    ld b, l                                       ; $61f8: $45
    ld a, [$70af]                                 ; $61f9: $fa $af $70
    rst $18                                       ; $61fc: $df
    ld [bc], a                                    ; $61fd: $02
    jr nz, @-$1f                                  ; $61fe: $20 $df

jr_099_6200:
    jr nz, jr_099_6197                            ; $6200: $20 $95

    ld l, b                                       ; $6202: $68
    ld a, [hl+]                                   ; $6203: $2a
    ld h, b                                       ; $6204: $60
    db $10                                        ; $6205: $10
    ld d, d                                       ; $6206: $52
    nop                                           ; $6207: $00
    xor a                                         ; $6208: $af
    db $fd                                        ; $6209: $fd
    ld [bc], a                                    ; $620a: $02
    rst $10                                       ; $620b: $d7
    ld [bc], a                                    ; $620c: $02
    push hl                                       ; $620d: $e5
    ld [bc], a                                    ; $620e: $02
    ld c, c                                       ; $620f: $49
    db $10                                        ; $6210: $10

jr_099_6211:
    ld b, $f2                                     ; $6211: $06 $f2
    rrca                                          ; $6213: $0f
    cp a                                          ; $6214: $bf
    add hl, bc                                    ; $6215: $09
    add hl, hl                                    ; $6216: $29
    rst $10                                       ; $6217: $d7
    ld a, a                                       ; $6218: $7f
    add c                                         ; $6219: $81
    nop                                           ; $621a: $00
    ld a, [$e201]                                 ; $621b: $fa $01 $e2

Jump_099_621e:
    ld bc, $a156                                  ; $621e: $01 $56 $a1
    add hl, hl                                    ; $6221: $29
    rst $10                                       ; $6222: $d7
    ldh a, [$cf]                                  ; $6223: $f0 $cf
    add hl, bc                                    ; $6225: $09
    cp h                                          ; $6226: $bc
    jr c, jr_099_6211                             ; $6227: $38 $e8

    ld c, $04                                     ; $6229: $0e $04
    jr z, jr_099_61eb                             ; $622b: $28 $be

    ld b, b                                       ; $622d: $40
    ld e, a                                       ; $622e: $5f
    and b                                         ; $622f: $a0
    ld b, h                                       ; $6230: $44
    ld c, d                                       ; $6231: $4a
    and b                                         ; $6232: $a0
    db $10                                        ; $6233: $10
    xor d                                         ; $6234: $aa
    ld d, l                                       ; $6235: $55
    ei                                            ; $6236: $fb
    ld h, b                                       ; $6237: $60
    nop                                           ; $6238: $00
    pop de                                        ; $6239: $d1
    nop                                           ; $623a: $00
    ld [$807c], sp                                ; $623b: $08 $7c $80
    xor a                                         ; $623e: $af
    ld d, b                                       ; $623f: $50
    rst $38                                       ; $6240: $ff
    add hl, bc                                    ; $6241: $09
    ld d, l                                       ; $6242: $55
    db $eb                                        ; $6243: $eb
    cp [hl]                                       ; $6244: $be
    nop                                           ; $6245: $00
    ld b, c                                       ; $6246: $41
    ei                                            ; $6247: $fb
    ld b, c                                       ; $6248: $41
    or d                                          ; $6249: $b2
    ld b, c                                       ; $624a: $41
    xor e                                         ; $624b: $ab
    ld d, c                                       ; $624c: $51
    ld d, h                                       ; $624d: $54
    ld [hl], b                                    ; $624e: $70
    db $eb                                        ; $624f: $eb
    cp a                                          ; $6250: $bf
    db $10                                        ; $6251: $10
    adc $1f                                       ; $6252: $ce $1f
    inc sp                                        ; $6254: $33
    inc b                                         ; $6255: $04
    ld bc, $0704                                  ; $6256: $01 $04 $07
    jr z, jr_099_625b                             ; $6259: $28 $00

jr_099_625b:
    rra                                           ; $625b: $1f
    ld h, b                                       ; $625c: $60

Call_099_625d:
    nop                                           ; $625d: $00
    ld a, [bc]                                    ; $625e: $0a
    ld a, [bc]                                    ; $625f: $0a
    dec [hl]                                      ; $6260: $35
    dec d                                         ; $6261: $15
    xor d                                         ; $6262: $aa
    ld [bc], a                                    ; $6263: $02
    cpl                                           ; $6264: $2f
    ld d, b                                       ; $6265: $50
    ld a, a                                       ; $6266: $7f
    add b                                         ; $6267: $80
    cp $01                                        ; $6268: $fe $01
    ldh [$0d], a                                  ; $626a: $e0 $0d
    nop                                           ; $626c: $00
    nop                                           ; $626d: $00
    add b                                         ; $626e: $80
    add b                                         ; $626f: $80
    ld d, b                                       ; $6270: $50
    ret nc                                        ; $6271: $d0

    jr z, jr_099_62dc                             ; $6272: $28 $68

    sub l                                         ; $6274: $95
    db $fc                                        ; $6275: $fc
    ld [hl], b                                    ; $6276: $70
    ld [bc], a                                    ; $6277: $02
    ld h, $06                                     ; $6278: $26 $06
    inc c                                         ; $627a: $0c
    ld b, $d3                                     ; $627b: $06 $d3
    daa                                           ; $627d: $27
    ld b, b                                       ; $627e: $40
    nop                                           ; $627f: $00
    sub b                                         ; $6280: $90
    and b                                         ; $6281: $a0
    nop                                           ; $6282: $00
    ld c, b                                       ; $6283: $48
    ldh [rNR14], a                                ; $6284: $e0 $14
    ldh a, [$08]                                  ; $6286: $f0 $08
    dec a                                         ; $6288: $3d
    jp nz, $005f                                  ; $6289: $c2 $5f $00

    and b                                         ; $628c: $a0
    cpl                                           ; $628d: $2f
    ret nc                                        ; $628e: $d0

    ld d, a                                       ; $628f: $57
    xor b                                         ; $6290: $a8
    dec hl                                        ; $6291: $2b
    call nc, Call_000_1885                        ; $6292: $d4 $85 $18
    ld a, d                                       ; $6295: $7a
    ld [c], a                                     ; $6296: $e2
    dec e                                         ; $6297: $1d
    ld b, [hl]                                    ; $6298: $46
    add hl, bc                                    ; $6299: $09
    and b                                         ; $629a: $a0
    rrca                                          ; $629b: $0f
    push de                                       ; $629c: $d5
    dec hl                                        ; $629d: $2b
    rst $38                                       ; $629e: $ff
    stop                                          ; $629f: $10 $00
    ld a, [hl]                                    ; $62a1: $7e
    add c                                         ; $62a2: $81
    ld h, [hl]                                    ; $62a3: $66
    ld b, $02                                     ; $62a4: $06 $02
    ld e, e                                       ; $62a6: $5b
    and h                                         ; $62a7: $a4
    add l                                         ; $62a8: $85
    nop                                           ; $62a9: $00
    ld a, d                                       ; $62aa: $7a
    ld [hl+], a                                   ; $62ab: $22
    db $fd                                        ; $62ac: $fd
    ld d, l                                       ; $62ad: $55
    cp $28                                        ; $62ae: $fe $28
    rst $38                                       ; $62b0: $ff
    sub l                                         ; $62b1: $95
    nop                                           ; $62b2: $00
    ld l, d                                       ; $62b3: $6a
    db $eb                                        ; $62b4: $eb
    inc d                                         ; $62b5: $14
    rst $38                                       ; $62b6: $ff
    nop                                           ; $62b7: $00
    ld hl, sp+$04                                 ; $62b8: $f8 $04
    ld a, h                                       ; $62ba: $7c
    nop                                           ; $62bb: $00
    add d                                         ; $62bc: $82
    xor [hl]                                      ; $62bd: $ae
    ld d, c                                       ; $62be: $51
    ld a, a                                       ; $62bf: $7f
    add b                                         ; $62c0: $80
    xor e                                         ; $62c1: $ab
    ld d, h                                       ; $62c2: $54
    ld e, a                                       ; $62c3: $5f
    nop                                           ; $62c4: $00
    and b                                         ; $62c5: $a0
    cp $01                                        ; $62c6: $fe $01
    cp a                                          ; $62c8: $bf
    ld b, b                                       ; $62c9: $40
    cpl                                           ; $62ca: $2f
    ret nc                                        ; $62cb: $d0

    ld de, $fe00                                  ; $62cc: $11 $00 $fe
    and h                                         ; $62cf: $a4
    rst $18                                       ; $62d0: $df
    dec [hl]                                      ; $62d1: $35
    jp z, $e49b                                   ; $62d2: $ca $9b $e4

    rra                                           ; $62d5: $1f
    inc b                                         ; $62d6: $04
    ldh [$9b], a                                  ; $62d7: $e0 $9b
    ld h, h                                       ; $62d9: $64
    push af                                       ; $62da: $f5
    ld a, [bc]                                    ; $62db: $0a

jr_099_62dc:
    cp [hl]                                       ; $62dc: $be
    dec c                                         ; $62dd: $0d
    push bc                                       ; $62de: $c5
    ld a, [hl-]                                   ; $62df: $3a
    ld hl, $17e8                                  ; $62e0: $21 $e8 $17
    ld a, h                                       ; $62e3: $7c
    inc c                                         ; $62e4: $0c
    rst $38                                       ; $62e5: $ff
    nop                                           ; $62e6: $00
    or $09                                        ; $62e7: $f6 $09
    adc $15                                       ; $62e9: $ce $15
    nop                                           ; $62eb: $00
    ld bc, $42bd                                  ; $62ec: $01 $bd $42
    ld a, d                                       ; $62ef: $7a
    add l                                         ; $62f0: $85
    db $f4                                        ; $62f1: $f4
    dec bc                                        ; $62f2: $0b
    xor c                                         ; $62f3: $a9
    nop                                           ; $62f4: $00
    ld d, a                                       ; $62f5: $57
    jp nz, Jump_099_773f                          ; $62f6: $c2 $3f $77

    adc b                                         ; $62f9: $88
    sbc $21                                       ; $62fa: $de $21
    cp l                                          ; $62fc: $bd
    nop                                           ; $62fd: $00
    ld b, d                                       ; $62fe: $42
    ld e, d                                       ; $62ff: $5a
    and l                                         ; $6300: $a5
    inc l                                         ; $6301: $2c
    db $d3                                        ; $6302: $d3
    sbc b                                         ; $6303: $98
    rst $20                                       ; $6304: $e7
    stop                                          ; $6305: $10 $00
    rst $28                                       ; $6307: $ef
    ld [hl], c                                    ; $6308: $71
    adc a                                         ; $6309: $8f
    jp hl                                         ; $630a: $e9


    ld d, $f0                                     ; $630b: $16 $f0
    rrca                                          ; $630d: $0f
    xor d                                         ; $630e: $aa
    ld [bc], a                                    ; $630f: $02
    ld e, a                                       ; $6310: $5f
    ld b, l                                       ; $6311: $45
    cp a                                          ; $6312: $bf
    rrca                                          ; $6313: $0f
    rst $38                                       ; $6314: $ff
    rra                                           ; $6315: $1f
    ld b, b                                       ; $6316: $40
    inc b                                         ; $6317: $04
    ld [hl], l                                    ; $6318: $75
    nop                                           ; $6319: $00
    rst $38                                       ; $631a: $ff
    ld a, l                                       ; $631b: $7d
    add d                                         ; $631c: $82
    cp a                                          ; $631d: $bf
    ld b, b                                       ; $631e: $40
    ld d, a                                       ; $631f: $57

jr_099_6320:
    xor b                                         ; $6320: $a8
    inc bc                                        ; $6321: $03
    jr z, jr_099_6320                             ; $6322: $28 $fc

    and b                                         ; $6324: $a0
    ld c, h                                       ; $6325: $4c
    inc bc                                        ; $6326: $03
    cp $a6                                        ; $6327: $fe $a6
    inc bc                                        ; $6329: $03
    inc d                                         ; $632a: $14
    rst $38                                       ; $632b: $ff
    db $eb                                        ; $632c: $eb
    ld a, [bc]                                    ; $632d: $0a
    inc e                                         ; $632e: $1c
    ret nz                                        ; $632f: $c0

    ccf                                           ; $6330: $3f
    ld bc, $079c                                  ; $6331: $01 $9c $07
    dec d                                         ; $6334: $15
    ld c, d                                       ; $6335: $4a
    inc bc                                        ; $6336: $03

jr_099_6337:
    nop                                           ; $6337: $00
    nop                                           ; $6338: $00
    rst $38                                       ; $6339: $ff
    and $1f                                       ; $633a: $e6 $1f
    sub h                                         ; $633c: $94
    ld a, a                                       ; $633d: $7f
    inc l                                         ; $633e: $2c
    rst $38                                       ; $633f: $ff
    ld a, [hl]                                    ; $6340: $7e
    and b                                         ; $6341: $a0
    ld a, [bc]                                    ; $6342: $0a
    ld [de], a                                    ; $6343: $12
    cp a                                          ; $6344: $bf
    inc [hl]                                      ; $6345: $34

jr_099_6346:
    nop                                           ; $6346: $00
    ld b, b                                       ; $6347: $40
    ld b, b                                       ; $6348: $40
    jr nz, jr_099_636b                            ; $6349: $20 $20

    stop                                          ; $634b: $10 $00
    ld d, b                                       ; $634d: $50
    add b                                         ; $634e: $80
    ld h, b                                       ; $634f: $60
    ret z                                         ; $6350: $c8

    jr c, jr_099_6337                             ; $6351: $38 $e4

    inc e                                         ; $6353: $1c
    jp nc, $2e00                                  ; $6354: $d2 $00 $2e

    and c                                         ; $6357: $a1
    ld e, a                                       ; $6358: $5f
    swap a                                        ; $6359: $cb $37
    pop de                                        ; $635b: $d1
    cpl                                           ; $635c: $2f
    or e                                          ; $635d: $b3
    ld [$274f], sp                                ; $635e: $08 $4f $27
    rst $18                                       ; $6361: $df
    ld b, l                                       ; $6362: $45
    sub h                                         ; $6363: $94
    inc b                                         ; $6364: $04
    inc de                                        ; $6365: $13
    rst $28                                       ; $6366: $ef
    dec [hl]                                      ; $6367: $35
    nop                                           ; $6368: $00
    rst $08                                       ; $6369: $cf
    db $e3                                        ; $636a: $e3

jr_099_636b:
    rra                                           ; $636b: $1f
    rst $08                                       ; $636c: $cf
    ccf                                           ; $636d: $3f
    ld e, $fe                                     ; $636e: $1e $fe
    cp h                                          ; $6370: $bc
    nop                                           ; $6371: $00
    db $fc                                        ; $6372: $fc
    ld e, d                                       ; $6373: $5a
    ld a, [$f4b4]                                 ; $6374: $fa $b4 $f4
    ld a, b                                       ; $6377: $78
    ld hl, sp-$10                                 ; $6378: $f8 $f0
    ld [$00f0], sp                                ; $637a: $08 $f0 $00
    nop                                           ; $637d: $00
    sub b                                         ; $637e: $90
    ld [hl], d                                    ; $637f: $72
    ld b, $84                                     ; $6380: $06 $84
    jr nz, jr_099_6346                            ; $6382: $20 $c2

    inc h                                         ; $6384: $24
    db $10                                        ; $6385: $10
    ldh [$fa], a                                  ; $6386: $e0 $fa
    inc bc                                        ; $6388: $03
    db $fc                                        ; $6389: $fc
    ld [bc], a                                    ; $638a: $02
    ld d, h                                       ; $638b: $54
    dec b                                         ; $638c: $05
    dec b                                         ; $638d: $05
    rst $18                                       ; $638e: $df
    ld l, c                                       ; $638f: $69
    jr nz, @+$4a                                  ; $6390: $20 $48

    rlca                                          ; $6392: $07
    jr nc, jr_099_6396                            ; $6393: $30 $01

    rst $38                                       ; $6395: $ff

jr_099_6396:
    inc [hl]                                      ; $6396: $34
    dec b                                         ; $6397: $05
    rst $38                                       ; $6398: $ff
    nop                                           ; $6399: $00
    inc b                                         ; $639a: $04
    nop                                           ; $639b: $00
    xor b                                         ; $639c: $a8
    ld a, [hl+]                                   ; $639d: $2a
    rlca                                          ; $639e: $07
    rst $18                                       ; $639f: $df
    ld c, h                                       ; $63a0: $4c
    dec b                                         ; $63a1: $05
    db $fd                                        ; $63a2: $fd
    ld e, $00                                     ; $63a3: $1e $00
    rst $38                                       ; $63a5: $ff
    add b                                         ; $63a6: $80
    ld a, [$0501]                                 ; $63a7: $fa $01 $05
    db $ed                                        ; $63aa: $ed
    ld [de], a                                    ; $63ab: $12
    ld sp, hl                                     ; $63ac: $f9
    rlca                                          ; $63ad: $07
    ld d, [hl]                                    ; $63ae: $56
    xor e                                         ; $63af: $ab
    ld [$0000], sp                                ; $63b0: $08 $00 $00
    ld d, d                                       ; $63b3: $52
    ei                                            ; $63b4: $fb
    inc b                                         ; $63b5: $04
    ld e, e                                       ; $63b6: $5b

jr_099_63b7:
    and h                                         ; $63b7: $a4
    or a                                          ; $63b8: $b7
    ld c, b                                       ; $63b9: $48
    db $dd                                        ; $63ba: $dd
    nop                                           ; $63bb: $00
    and d                                         ; $63bc: $a2
    ld c, e                                       ; $63bd: $4b
    db $f4                                        ; $63be: $f4
    or a                                          ; $63bf: $b7
    add sp, $6f                                   ; $63c0: $e8 $6f
    sub b                                         ; $63c2: $90
    ccf                                           ; $63c3: $3f
    nop                                           ; $63c4: $00
    jp nz, $907f                                  ; $63c5: $c2 $7f $90

    ret z                                         ; $63c8: $c8

    scf                                           ; $63c9: $37
    push af                                       ; $63ca: $f5
    ld a, [de]                                    ; $63cb: $1a
    ld l, b                                       ; $63cc: $68
    nop                                           ; $63cd: $00
    sub a                                         ; $63ce: $97
    db $f4                                        ; $63cf: $f4
    dec bc                                        ; $63d0: $0b
    ld sp, hl                                     ; $63d1: $f9
    ld h, $ea                                     ; $63d2: $26 $ea
    dec d                                         ; $63d4: $15
    or l                                          ; $63d5: $b5
    ld [bc], a                                    ; $63d6: $02
    ld c, d                                       ; $63d7: $4a
    jp nc, $082d                                  ; $63d8: $d2 $2d $08

    rst $38                                       ; $63db: $ff
    inc b                                         ; $63dc: $04
    sbc a                                         ; $63dd: $9f
    dec b                                         ; $63de: $05
    dec a                                         ; $63df: $3d
    nop                                           ; $63e0: $00
    rst $10                                       ; $63e1: $d7
    rst $28                                       ; $63e2: $ef
    cp a                                          ; $63e3: $bf
    ld [hl], l                                    ; $63e4: $75
    rst $38                                       ; $63e5: $ff
    ld a, [hl+]                                   ; $63e6: $2a
    db $fd                                        ; $63e7: $fd
    sub b                                         ; $63e8: $90
    ld [$8aff], sp                                ; $63e9: $08 $ff $8a
    rst $38                                       ; $63ec: $ff
    dec e                                         ; $63ed: $1d
    ld a, d                                       ; $63ee: $7a
    dec b                                         ; $63ef: $05
    ld [c], a                                     ; $63f0: $e2
    rst $18                                       ; $63f1: $df
    sub h                                         ; $63f2: $94
    add b                                         ; $63f3: $80
    ret                                           ; $63f4: $c9


    ld b, $03                                     ; $63f5: $06 $03
    db $fd                                        ; $63f7: $fd
    ld b, b                                       ; $63f8: $40
    rst $38                                       ; $63f9: $ff
    add h                                         ; $63fa: $84
    ei                                            ; $63fb: $fb
    ld [hl+], a                                   ; $63fc: $22
    nop                                           ; $63fd: $00
    db $dd                                        ; $63fe: $dd
    ld c, b                                       ; $63ff: $48
    cp a                                          ; $6400: $bf
    dec b                                         ; $6401: $05
    ld a, [$d5aa]                                 ; $6402: $fa $aa $d5
    ld d, c                                       ; $6405: $51
    jr nz, jr_099_63b7                            ; $6406: $20 $af

    add h                                         ; $6408: $84
    ret                                           ; $6409: $c9


    ld b, $f4                                     ; $640a: $06 $f4
    dec bc                                        ; $640c: $0b
    db $eb                                        ; $640d: $eb
    inc [hl]                                      ; $640e: $34
    ld hl, sp+$00                                 ; $640f: $f8 $00
    rlca                                          ; $6411: $07
    push hl                                       ; $6412: $e5
    dec de                                        ; $6413: $1b
    ld a, [$a905]                                 ; $6414: $fa $05 $a9
    ld d, [hl]                                    ; $6417: $56
    or $00                                        ; $6418: $f6 $00
    add hl, bc                                    ; $641a: $09
    db $d3                                        ; $641b: $d3
    inc l                                         ; $641c: $2c
    ld bc, $48fe                                  ; $641d: $01 $fe $48
    rst $38                                       ; $6420: $ff
    sub b                                         ; $6421: $90
    ld [$017f], sp                                ; $6422: $08 $7f $01
    cp $02                                        ; $6425: $fe $02
    call nz, $0403                                ; $6427: $c4 $03 $04
    rst $38                                       ; $642a: $ff
    db $10                                        ; $642b: $10
    add b                                         ; $642c: $80
    ld [bc], a                                    ; $642d: $02
    nop                                           ; $642e: $00
    ld hl, $40fe                                  ; $642f: $21 $fe $40
    rst $38                                       ; $6432: $ff
    cp h                                          ; $6433: $bc
    db $eb                                        ; $6434: $eb
    rst $30                                       ; $6435: $f7
    nop                                           ; $6436: $00
    db $fd                                        ; $6437: $fd
    xor [hl]                                      ; $6438: $ae
    rst $38                                       ; $6439: $ff
    ld d, h                                       ; $643a: $54
    cp a                                          ; $643b: $bf
    add hl, bc                                    ; $643c: $09
    rst $38                                       ; $643d: $ff
    db $e4                                        ; $643e: $e4
    nop                                           ; $643f: $00
    dec de                                        ; $6440: $1b
    or d                                          ; $6441: $b2
    ld c, l                                       ; $6442: $4d
    db $fc                                        ; $6443: $fc
    inc de                                        ; $6444: $13
    push af                                       ; $6445: $f5
    ld a, [bc]                                    ; $6446: $0a
    ld e, d                                       ; $6447: $5a
    nop                                           ; $6448: $00
    and l                                         ; $6449: $a5
    db $f4                                        ; $644a: $f4
    dec bc                                        ; $644b: $0b
    call c, $e9a3                                 ; $644c: $dc $a3 $e9
    ld d, $02                                     ; $644f: $16 $02
    nop                                           ; $6451: $00
    rst $38                                       ; $6452: $ff
    ld [$50f7], sp                                ; $6453: $08 $f7 $50
    xor a                                         ; $6456: $af
    inc b                                         ; $6457: $04
    rst $38                                       ; $6458: $ff
    add hl, bc                                    ; $6459: $09
    nop                                           ; $645a: $00
    cp $80                                        ; $645b: $fe $80
    ld a, a                                       ; $645d: $7f
    db $10                                        ; $645e: $10
    rst $38                                       ; $645f: $ff
    add d                                         ; $6460: $82
    db $fd                                        ; $6461: $fd
    ld hl, $df00                                  ; $6462: $21 $00 $df
    ld b, d                                       ; $6465: $42
    cp l                                          ; $6466: $bd
    db $10                                        ; $6467: $10
    rst $38                                       ; $6468: $ff
    add h                                         ; $6469: $84
    ld a, a                                       ; $646a: $7f
    nop                                           ; $646b: $00
    ld [bc], a                                    ; $646c: $02
    rst $38                                       ; $646d: $ff
    ld de, $90ef                                  ; $646e: $11 $ef $90
    rst $38                                       ; $6471: $ff
    ld [hl+], a                                   ; $6472: $22
    ld a, [bc]                                    ; $6473: $0a
    inc b                                         ; $6474: $04
    ld [$f732], sp                                ; $6475: $08 $32 $f7
    ld b, b                                       ; $6478: $40
    call nc, $bb03                                ; $6479: $d4 $03 $bb
    ld bc, $a4ff                                  ; $647c: $01 $ff $a4
    cpl                                           ; $647f: $2f
    rlca                                          ; $6480: $07
    cp $00                                        ; $6481: $fe $00
    ld bc, $9c63                                  ; $6483: $01 $63 $9c
    or $0b                                        ; $6486: $f6 $0b
    ld a, [c]                                     ; $6488: $f2
    dec e                                         ; $6489: $1d
    call nc, Call_000_2b40                        ; $648a: $d4 $40 $2b
    ret c                                         ; $648d: $d8

    ld [$25da], sp                                ; $648e: $08 $da $25
    ld b, h                                       ; $6491: $44
    ei                                            ; $6492: $fb
    inc b                                         ; $6493: $04
    rst $38                                       ; $6494: $ff
    ld d, [hl]                                    ; $6495: $56
    ld [hl+], a                                   ; $6496: $22
    ld b, a                                       ; $6497: $47
    rlca                                          ; $6498: $07
    inc b                                         ; $6499: $04
    sbc b                                         ; $649a: $98
    nop                                           ; $649b: $00
    adc b                                         ; $649c: $88
    db $fd                                        ; $649d: $fd
    rlca                                          ; $649e: $07
    sub h                                         ; $649f: $94
    ld [$0108], sp                                ; $64a0: $08 $08 $01
    rst $38                                       ; $64a3: $ff
    ld b, h                                       ; $64a4: $44
    cp a                                          ; $64a5: $bf
    jr nz, @-$1f                                  ; $64a6: $20 $df

    ld bc, $38ff                                  ; $64a8: $01 $ff $38

jr_099_64ab:
    nop                                           ; $64ab: $00
    jr nz, jr_099_64ab                            ; $64ac: $20 $fd

    cp $24                                        ; $64ae: $fe $24
    ld b, $7e                                     ; $64b0: $06 $7e
    ld a, a                                       ; $64b2: $7f
    cp a                                          ; $64b3: $bf
    cp a                                          ; $64b4: $bf

jr_099_64b5:
    ld d, a                                       ; $64b5: $57
    inc d                                         ; $64b6: $14
    ld d, a                                       ; $64b7: $57
    dec bc                                        ; $64b8: $0b
    dec bc                                        ; $64b9: $0b
    sub h                                         ; $64ba: $94
    ld c, $2a                                     ; $64bb: $0e $2a
    db $d3                                        ; $64bd: $d3
    rlca                                          ; $64be: $07
    add c                                         ; $64bf: $81
    cp $10                                        ; $64c0: $fe $10
    ld d, e                                       ; $64c2: $53
    db $fc                                        ; $64c3: $fc
    ld [$040a], a                                 ; $64c4: $ea $0a $04
    ld a, a                                       ; $64c7: $7f
    ld a, a                                       ; $64c8: $7f
    xor a                                         ; $64c9: $af
    xor a                                         ; $64ca: $af
    nop                                           ; $64cb: $00
    jr jr_099_64b5                                ; $64cc: $18 $e7

    ld [hl], c                                    ; $64ce: $71
    adc a                                         ; $64cf: $8f
    db $eb                                        ; $64d0: $eb
    rra                                           ; $64d1: $1f
    sub a                                         ; $64d2: $97
    ld a, a                                       ; $64d3: $7f
    inc de                                        ; $64d4: $13
    cp a                                          ; $64d5: $bf
    rst $38                                       ; $64d6: $ff
    ld a, a                                       ; $64d7: $7f
    sbc [hl]                                      ; $64d8: $9e
    dec bc                                        ; $64d9: $0b
    cp $af                                        ; $64da: $fe $af
    ld e, d                                       ; $64dc: $5a
    dec b                                         ; $64dd: $05
    and a                                         ; $64de: $a7
    inc c                                         ; $64df: $0c
    nop                                           ; $64e0: $00
    db $fd                                        ; $64e1: $fd
    db $fd                                        ; $64e2: $fd
    ld a, [$d4fa]                                 ; $64e3: $fa $fa $d4
    call nc, $a0a0                                ; $64e6: $d4 $a0 $a0
    ld [bc], a                                    ; $64e9: $02
    rlca                                          ; $64ea: $07
    rlca                                          ; $64eb: $07
    ld b, $07                                     ; $64ec: $06 $07
    dec b                                         ; $64ee: $05
    ld b, $04                                     ; $64ef: $06 $04
    ld [$0204], sp                                ; $64f1: $08 $04 $02
    rlca                                          ; $64f4: $07
    ld b, $05                                     ; $64f5: $06 $05
    add hl, bc                                    ; $64f7: $09
    ld c, $f0                                     ; $64f8: $0e $f0
    ld bc, $3000                                  ; $64fa: $01 $00 $30
    nop                                           ; $64fd: $00
    ldh a, [$60]                                  ; $64fe: $f0 $60
    ldh [$a0], a                                  ; $6500: $e0 $a0
    ldh [rLCDC], a                                ; $6502: $e0 $40
    ret nz                                        ; $6504: $c0

    ret nz                                        ; $6505: $c0

    nop                                           ; $6506: $00
    ret nz                                        ; $6507: $c0

    add b                                         ; $6508: $80

jr_099_6509:
    add b                                         ; $6509: $80
    ld a, [bc]                                    ; $650a: $0a
    dec c                                         ; $650b: $0d
    inc bc                                        ; $650c: $03
    inc c                                         ; $650d: $0c
    ld b, $00                                     ; $650e: $06 $00
    add hl, bc                                    ; $6510: $09
    rlca                                          ; $6511: $07
    jr @+$0d                                      ; $6512: $18 $0b

    inc d                                         ; $6514: $14
    ld [hl-], a                                   ; $6515: $32
    dec l                                         ; $6516: $2d
    ld c, e                                       ; $6517: $4b
    ld a, [bc]                                    ; $6518: $0a
    ld a, l                                       ; $6519: $7d
    dec b                                         ; $651a: $05
    rlca                                          ; $651b: $07
    add b                                         ; $651c: $80
    ld bc, $0000                                  ; $651d: $01 $00 $00
    ld [bc], a                                    ; $6520: $02
    nop                                           ; $6521: $00
    ret nz                                        ; $6522: $c0

    nop                                           ; $6523: $00
    ld b, b                                       ; $6524: $40
    and b                                         ; $6525: $a0
    ld h, b                                       ; $6526: $60
    jr nz, jr_099_6509                            ; $6527: $20 $e0

    ret nz                                        ; $6529: $c0

    ldh [$e0], a                                  ; $652a: $e0 $e0
    nop                                           ; $652c: $00
    ldh [$a0], a                                  ; $652d: $e0 $a0
    and b                                         ; $652f: $a0
    ld d, b                                       ; $6530: $50
    ld d, b                                       ; $6531: $50
    and b                                         ; $6532: $a0
    and b                                         ; $6533: $a0
    ld b, b                                       ; $6534: $40

Jump_099_6535:
    ld b, b                                       ; $6535: $40
    ld b, b                                       ; $6536: $40
    db $10                                        ; $6537: $10
    rra                                           ; $6538: $1f
    ld a, a                                       ; $6539: $7f
    add d                                         ; $653a: $82
    rst $38                                       ; $653b: $ff
    nop                                           ; $653c: $00
    push af                                       ; $653d: $f5
    ld c, d                                       ; $653e: $4a
    nop                                           ; $653f: $00
    db $fd                                        ; $6540: $fd
    rlca                                          ; $6541: $07
    reti                                          ; $6542: $d9


    cpl                                           ; $6543: $2f
    xor a                                         ; $6544: $af
    ld d, a                                       ; $6545: $57
    push af                                       ; $6546: $f5

jr_099_6547:
    ld a, [bc]                                    ; $6547: $0a
    adc $92                                       ; $6548: $ce $92
    ld a, [bc]                                    ; $654a: $0a
    jr nz, jr_099_655c                            ; $654b: $20 $0f

    cp $09                                        ; $654d: $fe $09
    ld b, b                                       ; $654f: $40
    dec bc                                        ; $6550: $0b
    ld h, $07                                     ; $6551: $26 $07
    ld [bc], a                                    ; $6553: $02
    rlca                                          ; $6554: $07
    rst $10                                       ; $6555: $d7
    nop                                           ; $6556: $00
    jr z, jr_099_6547                             ; $6557: $28 $ee

    dec d                                         ; $6559: $15
    ld d, l                                       ; $655a: $55
    cp d                                          ; $655b: $ba

jr_099_655c:
    or h                                          ; $655c: $b4
    ld a, a                                       ; $655d: $7f
    xor d                                         ; $655e: $aa
    inc b                                         ; $655f: $04
    ld e, a                                       ; $6560: $5f
    push de                                       ; $6561: $d5
    ld a, [hl-]                                   ; $6562: $3a
    xor e                                         ; $6563: $ab
    ld d, h                                       ; $6564: $54
    ret nc                                        ; $6565: $d0

    add hl, bc                                    ; $6566: $09
    cp a                                          ; $6567: $bf
    ld b, d                                       ; $6568: $42
    nop                                           ; $6569: $00
    ld d, a                                       ; $656a: $57
    cp b                                          ; $656b: $b8
    sbc a                                         ; $656c: $9f
    ldh [rWX], a                                  ; $656d: $e0 $4b
    db $f4                                        ; $656f: $f4
    ld [hl], l                                    ; $6570: $75
    adc d                                         ; $6571: $8a
    ld [hl], d                                    ; $6572: $72
    rst $18                                       ; $6573: $df
    jr c, jr_099_657d                             ; $6574: $38 $07

    ld l, $07                                     ; $6576: $2e $07
    jr jr_099_657d                                ; $6578: $18 $03

    ld e, e                                       ; $657a: $5b
    and h                                         ; $657b: $a4
    db $f4                                        ; $657c: $f4

jr_099_657d:
    add hl, bc                                    ; $657d: $09
    ei                                            ; $657e: $fb
    inc b                                         ; $657f: $04
    inc b                                         ; $6580: $04
    or $09                                        ; $6581: $f6 $09
    push af                                       ; $6583: $f5
    ld a, [de]                                    ; $6584: $1a
    ld c, h                                       ; $6585: $4c
    add hl, bc                                    ; $6586: $09
    ld sp, hl                                     ; $6587: $f9
    ld h, $00                                     ; $6588: $26 $00
    add sp, $17                                   ; $658a: $e8 $17
    or [hl]                                       ; $658c: $b6
    ld c, c                                       ; $658d: $49
    pop de                                        ; $658e: $d1
    ld l, $20                                     ; $658f: $2e $20
    rst $18                                       ; $6591: $df
    ld sp, $ef12                                  ; $6592: $31 $12 $ef
    rst $28                                       ; $6595: $ef
    rrca                                          ; $6596: $0f
    sub $02                                       ; $6597: $d6 $02
    ld a, a                                       ; $6599: $7f
    ld b, b                                       ; $659a: $40
    cp a                                          ; $659b: $bf
    add [hl]                                      ; $659c: $86
    add hl, bc                                    ; $659d: $09
    nop                                           ; $659e: $00
    ld d, h                                       ; $659f: $54
    rst $28                                       ; $65a0: $ef
    ld [bc], a                                    ; $65a1: $02
    db $fd                                        ; $65a2: $fd
    add b                                         ; $65a3: $80
    rst $38                                       ; $65a4: $ff
    ld de, $00ff                                  ; $65a5: $11 $ff $00
    and d                                         ; $65a8: $a2
    ld a, a                                       ; $65a9: $7f
    ld [$90f7], sp                                ; $65aa: $08 $f7 $90
    rst $28                                       ; $65ad: $ef
    add hl, bc                                    ; $65ae: $09
    cp $05                                        ; $65af: $fe $05
    db $10                                        ; $65b1: $10
    rst $38                                       ; $65b2: $ff
    inc d                                         ; $65b3: $14
    db $eb                                        ; $65b4: $eb
    ld [bc], a                                    ; $65b5: $02
    jp z, $2001                                   ; $65b6: $ca $01 $20

    ld [$0801], a                                 ; $65b9: $ea $01 $08
    jp nz, Jump_099_41bf                          ; $65bc: $c2 $bf $41

    ccf                                           ; $65bf: $3f
    sbc e                                         ; $65c0: $9b
    rlca                                          ; $65c1: $07
    ccf                                           ; $65c2: $3f
    ld [de], a                                    ; $65c3: $12
    rra                                           ; $65c4: $1f
    ld bc, $3f20                                  ; $65c5: $01 $20 $3f
    ld [$1037], sp                                ; $65c8: $08 $37 $10
    ld c, a                                       ; $65cb: $4f
    ld b, l                                       ; $65cc: $45
    or b                                          ; $65cd: $b0
    ld de, $0011                                  ; $65ce: $11 $11 $00
    rst $38                                       ; $65d1: $ff
    sub h                                         ; $65d2: $94
    ld [hl+], a                                   ; $65d3: $22
    nop                                           ; $65d4: $00
    add b                                         ; $65d5: $80
    ld a, a                                       ; $65d6: $7f
    ld d, b                                       ; $65d7: $50
    or b                                          ; $65d8: $b0
    ld bc, $0800                                  ; $65d9: $01 $00 $08
    cp a                                          ; $65dc: $bf
    nop                                           ; $65dd: $00
    ld e, a                                       ; $65de: $5f
    ld bc, $44be                                  ; $65df: $01 $be $44
    ccf                                           ; $65e2: $3f
    nop                                           ; $65e3: $00
    add b                                         ; $65e4: $80
    ld e, a                                       ; $65e5: $5f
    ld [$127f], sp                                ; $65e6: $08 $7f $12
    ccf                                           ; $65e9: $3f
    add b                                         ; $65ea: $80
    ccf                                           ; $65eb: $3f
    nop                                           ; $65ec: $00
    ld b, b                                       ; $65ed: $40
    ccf                                           ; $65ee: $3f
    ld [bc], a                                    ; $65ef: $02
    ld e, l                                       ; $65f0: $5d
    dec h                                         ; $65f1: $25
    cp [hl]                                       ; $65f2: $be
    ld [$007f], sp                                ; $65f3: $08 $7f $00
    nop                                           ; $65f6: $00
    ccf                                           ; $65f7: $3f
    nop                                           ; $65f8: $00
    sbc a                                         ; $65f9: $9f
    ld [$0437], sp                                ; $65fa: $08 $37 $04
    ld l, e                                       ; $65fd: $6b
    jp $1a10                                      ; $65fe: $c3 $10 $1a


    or b                                          ; $6601: $b0
    dec c                                         ; $6602: $0d
    ld hl, $44ff                                  ; $6603: $21 $ff $44

jr_099_6606:
    ei                                            ; $6606: $fb
    add e                                         ; $6607: $83
    inc c                                         ; $6608: $0c
    and $0c                                       ; $6609: $e6 $0c
    or c                                          ; $660b: $b1
    inc b                                         ; $660c: $04
    jr c, jr_099_6606                             ; $660d: $38 $f7

    or h                                          ; $660f: $b4
    rlca                                          ; $6610: $07
    inc b                                         ; $6611: $04
    ld c, b                                       ; $6612: $48

Call_099_6613:
    ei                                            ; $6613: $fb
    rst $38                                       ; $6614: $ff
    cp l                                          ; $6615: $bd
    inc b                                         ; $6616: $04
    ld d, b                                       ; $6617: $50
    nop                                           ; $6618: $00
    rst $38                                       ; $6619: $ff
    rst $38                                       ; $661a: $ff
    jp hl                                         ; $661b: $e9


    or $df                                        ; $661c: $f6 $df
    rst $28                                       ; $661e: $ef
    db $dd                                        ; $661f: $dd
    rst $18                                       ; $6620: $df
    nop                                           ; $6621: $00
    rst $18                                       ; $6622: $df
    rst $18                                       ; $6623: $df
    db $ed                                        ; $6624: $ed
    rst $18                                       ; $6625: $df
    sub $ef                                       ; $6626: $d6 $ef
    jp hl                                         ; $6628: $e9


    ldh a, [$50]                                  ; $6629: $f0 $50
    rst $30                                       ; $662b: $f7
    adc b                                         ; $662c: $88
    ld bc, $b0b7                                  ; $662d: $01 $b7 $b0
    ld bc, $bfb7                                  ; $6630: $01 $b7 $bf
    ld a, a                                       ; $6633: $7f
    cp a                                          ; $6634: $bf
    ld a, [hl-]                                   ; $6635: $3a
    or a                                          ; $6636: $b7
    ld a, a                                       ; $6637: $7f
    sub h                                         ; $6638: $94
    add hl, bc                                    ; $6639: $09
    ld d, b                                       ; $663a: $50
    ld c, b                                       ; $663b: $48
    ld b, b                                       ; $663c: $40
    ld l, b                                       ; $663d: $68
    db $fd                                        ; $663e: $fd
    xor b                                         ; $663f: $a8
    rlca                                          ; $6640: $07
    db $eb                                        ; $6641: $eb
    db $10                                        ; $6642: $10
    rla                                           ; $6643: $17
    pop af                                        ; $6644: $f1
    rrca                                          ; $6645: $0f
    inc b                                         ; $6646: $04
    ret z                                         ; $6647: $c8

    ld c, e                                       ; $6648: $4b
    rla                                           ; $6649: $17
    or c                                          ; $664a: $b1
    rrca                                          ; $664b: $0f
    inc b                                         ; $664c: $04
    dec bc                                        ; $664d: $0b
    rla                                           ; $664e: $17
    ld [hl], c                                    ; $664f: $71
    rrca                                          ; $6650: $0f
    and e                                         ; $6651: $a3
    reti                                          ; $6652: $d9


    ld de, $f04f                                  ; $6653: $11 $4f $f0
    nop                                           ; $6656: $00
    ld a, [de]                                    ; $6657: $1a
    push hl                                       ; $6658: $e5
    or l                                          ; $6659: $b5
    ld c, d                                       ; $665a: $4a
    ld l, b                                       ; $665b: $68
    sub a                                         ; $665c: $97
    add h                                         ; $665d: $84
    ld a, e                                       ; $665e: $7b
    add [hl]                                      ; $665f: $86

Jump_099_6660:
    jr nc, jr_099_667c                            ; $6660: $30 $1a

    call nc, $802b                                ; $6662: $d4 $2b $80
    ld a, a                                       ; $6665: $7f
    jr nc, jr_099_66b2                            ; $6666: $30 $4a

    ret nz                                        ; $6668: $c0

    ld a, [hl-]                                   ; $6669: $3a
    add b                                         ; $666a: $80
    ld a, [hl+]                                   ; $666b: $2a
    rst $38                                       ; $666c: $ff
    ld b, h                                       ; $666d: $44
    ret nz                                        ; $666e: $c0

    ld [bc], a                                    ; $666f: $02
    ld de, $0193                                  ; $6670: $11 $93 $01
    ld bc, $00da                                  ; $6673: $01 $da $00
    jr z, @+$08                                   ; $6676: $28 $06

    rst $30                                       ; $6678: $f7
    nop                                           ; $6679: $00
    rst $38                                       ; $667a: $ff
    ret nz                                        ; $667b: $c0

jr_099_667c:
    cp a                                          ; $667c: $bf
    add sp, $0d                                   ; $667d: $e8 $0d
    or b                                          ; $667f: $b0
    ld a, [de]                                    ; $6680: $1a
    ld [$ff01], sp                                ; $6681: $08 $01 $ff
    add l                                         ; $6684: $85
    ld a, d                                       ; $6685: $7a
    ld a, [de]                                    ; $6686: $1a
    push af                                       ; $6687: $f5
    sub a                                         ; $6688: $97
    add sp, -$50                                  ; $6689: $e8 $b0
    ld a, [de]                                    ; $668b: $1a
    nop                                           ; $668c: $00
    inc d                                         ; $668d: $14
    rst $28                                       ; $668e: $ef
    and b                                         ; $668f: $a0
    ld e, a                                       ; $6690: $5f
    ld d, c                                       ; $6691: $51
    xor a                                         ; $6692: $af
    sub h                                         ; $6693: $94
    ld a, e                                       ; $6694: $7b
    jr z, @+$2c                                   ; $6695: $28 $2a

    push de                                       ; $6697: $d5
    jr nz, @+$0d                                  ; $6698: $20 $0b

    ld l, b                                       ; $669a: $68
    and e                                         ; $669b: $a3
    ld bc, $ffa8                                  ; $669c: $01 $a8 $ff
    pop af                                        ; $669f: $f1
    ld [de], a                                    ; $66a0: $12
    rst $38                                       ; $66a1: $ff
    db $e4                                        ; $66a2: $e4
    ei                                            ; $66a3: $fb
    jr nc, jr_099_66a9                            ; $66a4: $30 $03

    ld a, e                                       ; $66a6: $7b
    add b                                         ; $66a7: $80
    sub b                                         ; $66a8: $90

jr_099_66a9:
    ld [de], a                                    ; $66a9: $12
    and b                                         ; $66aa: $a0
    inc h                                         ; $66ab: $24
    rst $38                                       ; $66ac: $ff
    ld d, l                                       ; $66ad: $55
    ld b, $07                                     ; $66ae: $06 $07
    rst $18                                       ; $66b0: $df
    db $fd                                        ; $66b1: $fd

jr_099_66b2:
    or b                                          ; $66b2: $b0
    ld a, [bc]                                    ; $66b3: $0a
    inc hl                                        ; $66b4: $23
    rst $18                                       ; $66b5: $df
    ld bc, $ff26                                  ; $66b6: $01 $26 $ff
    ld e, e                                       ; $66b9: $5b
    rst $38                                       ; $66ba: $ff
    cpl                                           ; $66bb: $2f
    rst $38                                       ; $66bc: $ff
    sub a                                         ; $66bd: $97
    inc b                                         ; $66be: $04
    nop                                           ; $66bf: $00
    ld d, $a9                                     ; $66c0: $16 $a9
    cp $50                                        ; $66c2: $fe $50
    sub h                                         ; $66c4: $94
    ld b, $aa                                     ; $66c5: $06 $aa
    xor h                                         ; $66c7: $ac
    ld [bc], a                                    ; $66c8: $02
    sub b                                         ; $66c9: $90
    add hl, de                                    ; $66ca: $19
    halt                                          ; $66cb: $76
    ld a, [hl+]                                   ; $66cc: $2a
    rst $38                                       ; $66cd: $ff
    rst $28                                       ; $66ce: $ef
    add d                                         ; $66cf: $82
    ld b, $af                                     ; $66d0: $06 $af
    halt                                          ; $66d2: $76
    inc bc                                        ; $66d3: $03
    xor d                                         ; $66d4: $aa
    or b                                          ; $66d5: $b0
    ld de, $0d7d                                  ; $66d6: $11 $7d $0d
    rst $18                                       ; $66d9: $df
    ld a, [de]                                    ; $66da: $1a
    rst $38                                       ; $66db: $ff
    dec h                                         ; $66dc: $25
    ret nc                                        ; $66dd: $d0

    ld b, c                                       ; $66de: $41

jr_099_66df:
    and b                                         ; $66df: $a0
    ld b, b                                       ; $66e0: $40
    ld a, a                                       ; $66e1: $7f
    ld h, b                                       ; $66e2: $60
    dec bc                                        ; $66e3: $0b
    ld [bc], a                                    ; $66e4: $02
    ld b, h                                       ; $66e5: $44
    ld hl, sp+$00                                 ; $66e6: $f8 $00
    ld a, [$dc20]                                 ; $66e8: $fa $20 $dc
    ld l, h                                       ; $66eb: $6c
    inc bc                                        ; $66ec: $03
    ld hl, sp+$00                                 ; $66ed: $f8 $00
    ld [hl+], a                                   ; $66ef: $22
    ret c                                         ; $66f0: $d8

    adc b                                         ; $66f1: $88
    db $fc                                        ; $66f2: $fc
    nop                                           ; $66f3: $00
    cp $10                                        ; $66f4: $fe $10
    nop                                           ; $66f6: $00
    nop                                           ; $66f7: $00
    add h                                         ; $66f8: $84
    ld b, b                                       ; $66f9: $40
    pop hl                                        ; $66fa: $e1
    db $10                                        ; $66fb: $10
    ldh [$08], a                                  ; $66fc: $e0 $08
    halt                                          ; $66fe: $76

jr_099_66ff:
    add b                                         ; $66ff: $80
    jr nc, jr_099_66ff                            ; $6700: $30 $fd

    ld b, b                                       ; $6702: $40

jr_099_6703:
    ld b, b                                       ; $6703: $40
    dec d                                         ; $6704: $15
    inc e                                         ; $6705: $1c
    ld b, $20                                     ; $6706: $06 $20
    nop                                           ; $6708: $00
    adc b                                         ; $6709: $88
    nop                                           ; $670a: $00
    nop                                           ; $670b: $00
    inc b                                         ; $670c: $04
    nop                                           ; $670d: $00
    ld [bc], a                                    ; $670e: $02
    add b                                         ; $670f: $80
    ret nz                                        ; $6710: $c0

    jr nz, jr_099_6703                            ; $6711: $20 $f0

    inc c                                         ; $6713: $0c
    add hl, bc                                    ; $6714: $09
    rst $30                                       ; $6715: $f7
    ld [$24db], sp                                ; $6716: $08 $db $24
    ld b, d                                       ; $6719: $42
    rrca                                          ; $671a: $0f
    cp l                                          ; $671b: $bd
    ld b, d                                       ; $671c: $42
    ld e, [hl]                                    ; $671d: $5e
    dec c                                         ; $671e: $0d
    ld sp, $827d                                  ; $671f: $31 $7d $82
    add b                                         ; $6722: $80
    dec h                                         ; $6723: $25
    ld d, l                                       ; $6724: $55
    dec e                                         ; $6725: $1d
    ld b, b                                       ; $6726: $40
    and b                                         ; $6727: $a0
    and b                                         ; $6728: $a0
    sub b                                         ; $6729: $90
    dec c                                         ; $672a: $0d
    nop                                           ; $672b: $00
    add b                                         ; $672c: $80
    add b                                         ; $672d: $80
    ret nz                                        ; $672e: $c0

    ret nz                                        ; $672f: $c0

    ldh a, [$f0]                                  ; $6730: $f0 $f0
    add sp, -$18                                  ; $6732: $e8 $e8
    nop                                           ; $6734: $00
    ld b, b                                       ; $6735: $40
    ret nz                                        ; $6736: $c0

    and b                                         ; $6737: $a0
    ldh [$60], a                                  ; $6738: $e0 $60
    ldh [$f0], a                                  ; $673a: $e0 $f0
    ldh a, [rP1]                                  ; $673c: $f0 $00
    ld hl, sp-$08                                 ; $673e: $f8 $f8
    cp [hl]                                       ; $6740: $be
    cp $78                                        ; $6741: $fe $78
    ld hl, sp+$2c                                 ; $6743: $f8 $2c
    db $fc                                        ; $6745: $fc
    inc b                                         ; $6746: $04
    ld d, [hl]                                    ; $6747: $56
    cp $3f                                        ; $6748: $fe $3f
    rst $38                                       ; $674a: $ff
    ld a, l                                       ; $674b: $7d
    jr jr_099_6751                                ; $674c: $18 $03

    ldh [$e0], a                                  ; $674e: $e0 $e0
    inc de                                        ; $6750: $13

jr_099_6751:
    ld [hl], b                                    ; $6751: $70
    ld [hl], b                                    ; $6752: $70
    jr nz, jr_099_66df                            ; $6753: $20 $8a

    dec h                                         ; $6755: $25
    cp e                                          ; $6756: $bb
    ld b, h                                       ; $6757: $44
    sub b                                         ; $6758: $90
    rrca                                          ; $6759: $0f
    ld d, h                                       ; $675a: $54
    jr jr_099_675d                                ; $675b: $18 $00

jr_099_675d:
    cp a                                          ; $675d: $bf
    ld b, b                                       ; $675e: $40
    db $fd                                        ; $675f: $fd
    ld [bc], a                                    ; $6760: $02
    cp l                                          ; $6761: $bd
    ld b, d                                       ; $6762: $42
    rst $30                                       ; $6763: $f7
    ld [$a2e0], sp                                ; $6764: $08 $e0 $a2
    ld [bc], a                                    ; $6767: $02
    ld [de], a                                    ; $6768: $12
    db $10                                        ; $6769: $10
    ld [$fb08], sp                                ; $676a: $08 $08 $fb
    inc b                                         ; $676d: $04
    rst $28                                       ; $676e: $ef
    db $10                                        ; $676f: $10
    ld a, l                                       ; $6770: $7d
    add c                                         ; $6771: $81
    db $f4                                        ; $6772: $f4
    ld [bc], a                                    ; $6773: $02
    rst $38                                       ; $6774: $ff
    nop                                           ; $6775: $00
    db $dd                                        ; $6776: $dd
    ld [hl+], a                                   ; $6777: $22
    or [hl]                                       ; $6778: $b6
    ld c, c                                       ; $6779: $49
    rst $28                                       ; $677a: $ef
    dec d                                         ; $677b: $15
    nop                                           ; $677c: $00
    ld [bc], a                                    ; $677d: $02
    nop                                           ; $677e: $00
    stop                                          ; $677f: $10 $00
    ld c, d                                       ; $6781: $4a
    ld [$3c35], sp                                ; $6782: $08 $35 $3c
    nop                                           ; $6785: $00
    ld h, [hl]                                    ; $6786: $66
    ld d, d                                       ; $6787: $52
    xor $6b                                       ; $6788: $ee $6b
    ld a, a                                       ; $678a: $7f
    ld d, a                                       ; $678b: $57
    rst $38                                       ; $678c: $ff
    ld l, h                                       ; $678d: $6c
    nop                                           ; $678e: $00
    ld a, [hl]                                    ; $678f: $7e
    ld [hl], b                                    ; $6790: $70
    ld hl, sp+$60                                 ; $6791: $f8 $60
    ld [hl], d                                    ; $6793: $72
    nop                                           ; $6794: $00
    ld b, b                                       ; $6795: $40
    ld [$084c], sp                                ; $6796: $08 $4c $08
    inc c                                         ; $6799: $0c
    ld c, $ff                                     ; $679a: $0e $ff
    inc b                                         ; $679c: $04
    db $10                                        ; $679d: $10
    inc bc                                        ; $679e: $03
    ret nc                                        ; $679f: $d0

    inc b                                         ; $67a0: $04
    rst $28                                       ; $67a1: $ef
    ld de, $e889                                  ; $67a2: $11 $89 $e8
    rlca                                          ; $67a5: $07
    db $10                                        ; $67a6: $10
    ei                                            ; $67a7: $fb
    inc b                                         ; $67a8: $04
    ld h, b                                       ; $67a9: $60
    db $10                                        ; $67aa: $10
    ld [$66fb], sp                                ; $67ab: $08 $fb $66
    ld [$0404], sp                                ; $67ae: $08 $04 $04
    cp a                                          ; $67b1: $bf
    ld c, b                                       ; $67b2: $48
    db $fd                                        ; $67b3: $fd
    ld [bc], a                                    ; $67b4: $02
    db $eb                                        ; $67b5: $eb
    ld b, $c0                                     ; $67b6: $06 $c0
    ret nz                                        ; $67b8: $c0

    nop                                           ; $67b9: $00
    or b                                          ; $67ba: $b0
    ldh a, [$88]                                  ; $67bb: $f0 $88
    ld sp, hl                                     ; $67bd: $f9
    add l                                         ; $67be: $85
    xor l                                         ; $67bf: $ad
    db $d3                                        ; $67c0: $d3
    or [hl]                                       ; $67c1: $b6
    nop                                           ; $67c2: $00
    ret                                           ; $67c3: $c9


    ld a, d                                       ; $67c4: $7a
    ld b, l                                       ; $67c5: $45
    nop                                           ; $67c6: $00
    inc bc                                        ; $67c7: $03
    ld b, e                                       ; $67c8: $43
    ld c, l                                       ; $67c9: $4d
    rlc b                                         ; $67ca: $cb $00
    push de                                       ; $67cc: $d5
    push de                                       ; $67cd: $d5
    db $eb                                        ; $67ce: $eb
    xor l                                         ; $67cf: $ad
    db $d3                                        ; $67d0: $d3
    cp [hl]                                       ; $67d1: $be
    jp nz, Jump_000_009a                          ; $67d2: $c2 $9a $00

    and $a4                                       ; $67d5: $e6 $a4
    call c, Call_099_625d                         ; $67d7: $dc $5d $62
    ld c, l                                       ; $67da: $4d
    ld [hl], d                                    ; $67db: $72
    daa                                           ; $67dc: $27
    nop                                           ; $67dd: $00
    jr c, jr_099_67f1                             ; $67de: $38 $11

    ld e, $7e                                     ; $67e0: $1e $7e
    ld a, a                                       ; $67e2: $7f
    ccf                                           ; $67e3: $3f
    ccf                                           ; $67e4: $3f
    rra                                           ; $67e5: $1f
    nop                                           ; $67e6: $00
    rra                                           ; $67e7: $1f
    ld bc, $480f                                  ; $67e8: $01 $0f $48
    ld hl, sp+$70                                 ; $67eb: $f8 $70
    ldh a, [rP1]                                  ; $67ed: $f0 $00
    nop                                           ; $67ef: $00
    sbc [hl]                                      ; $67f0: $9e

jr_099_67f1:
    ld d, [hl]                                    ; $67f1: $56
    ld [$d62a], a                                 ; $67f2: $ea $2a $d6
    call nc, Call_099_68ac                        ; $67f5: $d4 $ac $68
    nop                                           ; $67f8: $00
    sbc b                                         ; $67f9: $98
    ccf                                           ; $67fa: $3f
    rst $38                                       ; $67fb: $ff
    ld c, $11                                     ; $67fc: $0e $11
    add hl, de                                    ; $67fe: $19
    ld h, $37                                     ; $67ff: $26 $37
    nop                                           ; $6801: $00
    ld c, b                                       ; $6802: $48
    ld l, $51                                     ; $6803: $2e $51
    ei                                            ; $6805: $fb
    add a                                         ; $6806: $87
    db $ec                                        ; $6807: $ec
    sbc h                                         ; $6808: $9c
    or b                                          ; $6809: $b0
    inc c                                         ; $680a: $0c
    ldh a, [$c4]                                  ; $680b: $f0 $c4
    call nz, $dafe                                ; $680d: $c4 $fe $da
    nop                                           ; $6810: $00
    jp z, $c80b                                   ; $6811: $ca $0b $c8

    ret z                                         ; $6814: $c8

    or c                                          ; $6815: $b1
    inc b                                         ; $6816: $04
    ld [$7210], sp                                ; $6817: $08 $10 $72
    nop                                           ; $681a: $00
    or b                                          ; $681b: $b0
    db $10                                        ; $681c: $10
    jr nz, @+$01                                  ; $681d: $20 $ff

    ld de, $18b0                                  ; $681f: $11 $b0 $18
    nop                                           ; $6822: $00
    rst $30                                       ; $6823: $f7
    ld c, d                                       ; $6824: $4a
    rst $38                                       ; $6825: $ff
    add b                                         ; $6826: $80
    rst $28                                       ; $6827: $ef
    db $10                                        ; $6828: $10
    db $fd                                        ; $6829: $fd
    ld [hl+], a                                   ; $682a: $22
    ld [$04fb], sp                                ; $682b: $08 $fb $04
    ld l, a                                       ; $682e: $6f
    sub c                                         ; $682f: $91
    adc d                                         ; $6830: $8a
    ld [$0807], sp                                ; $6831: $08 $07 $08
    add hl, bc                                    ; $6834: $09
    nop                                           ; $6835: $00
    ld [bc], a                                    ; $6836: $02
    rlca                                          ; $6837: $07
    nop                                           ; $6838: $00
    ld c, $20                                     ; $6839: $0e $20
    inc de                                        ; $683b: $13
    ld b, h                                       ; $683c: $44
    ld l, $00                                     ; $683d: $2e $00
    ld bc, $003b                                  ; $683f: $01 $3b $00
    ld e, a                                       ; $6842: $5f
    jr nz, jr_099_68c4                            ; $6843: $20 $7f

    nop                                           ; $6845: $00
    cpl                                           ; $6846: $2f
    ld [bc], a                                    ; $6847: $02
    ld d, b                                       ; $6848: $50
    rla                                           ; $6849: $17
    jr z, jr_099_6867                             ; $684a: $28 $1b

    inc b                                         ; $684c: $04
    dec hl                                        ; $684d: $2b
    ld [hl], d                                    ; $684e: $72
    rlca                                          ; $684f: $07
    inc bc                                        ; $6850: $03
    jr nc, jr_099_6857                            ; $6851: $30 $04

    inc de                                        ; $6853: $13
    add h                                         ; $6854: $84
    rrca                                          ; $6855: $0f
    or h                                          ; $6856: $b4

jr_099_6857:
    ld b, $02                                     ; $6857: $06 $02
    add c                                         ; $6859: $81
    nop                                           ; $685a: $00
    add b                                         ; $685b: $80
    jr nc, jr_099_686f                            ; $685c: $30 $11

    adc [hl]                                      ; $685e: $8e
    inc b                                         ; $685f: $04
    jr @+$10                                      ; $6860: $18 $0e

    inc c                                         ; $6862: $0c
    ld a, [bc]                                    ; $6863: $0a
    sub l                                         ; $6864: $95
    nop                                           ; $6865: $00
    add b                                         ; $6866: $80

jr_099_6867:
    ld c, $0b                                     ; $6867: $0e $0b
    add h                                         ; $6869: $84
    nop                                           ; $686a: $00
    add b                                         ; $686b: $80
    ld h, $07                                     ; $686c: $26 $07
    di                                            ; $686e: $f3

jr_099_686f:
    ld d, $20                                     ; $686f: $16 $20
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    ld [bc], a                                    ; $6873: $02
    ld l, d                                       ; $6874: $6a
    add l                                         ; $6875: $85
    nop                                           ; $6876: $00
    nop                                           ; $6877: $00
    ld b, h                                       ; $6878: $44
    jr c, @+$05                                   ; $6879: $38 $03

    rla                                           ; $687b: $17
    ld bc, $8000                                  ; $687c: $01 $00 $80
    ld bc, $0100                                  ; $687f: $01 $00 $01
    jr nz, @-$25                                  ; $6882: $20 $d9

    nop                                           ; $6884: $00
    ld bc, $a000                                  ; $6885: $01 $00 $a0
    ld b, c                                       ; $6888: $41
    nop                                           ; $6889: $00
    nop                                           ; $688a: $00
    ld b, d                                       ; $688b: $42
    ld hl, $0000                                  ; $688c: $21 $00 $00
    inc bc                                        ; $688f: $03
    ld c, d                                       ; $6890: $4a
    or l                                          ; $6891: $b5
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    inc hl                                        ; $6894: $23
    inc e                                         ; $6895: $1c
    ld c, $01                                     ; $6896: $0e $01
    inc e                                         ; $6898: $1c
    jr nz, jr_099_689b                            ; $6899: $20 $00

jr_099_689b:
    ld d, b                                       ; $689b: $50
    xor c                                         ; $689c: $a9
    nop                                           ; $689d: $00
    ld bc, $e110                                  ; $689e: $01 $10 $e1
    nop                                           ; $68a1: $00
    ld bc, $fe00                                  ; $68a2: $01 $00 $fe
    ld bc, $3c24                                  ; $68a5: $01 $24 $3c
    inc h                                         ; $68a8: $24
    inc a                                         ; $68a9: $3c
    jr jr_099_68d0                                ; $68aa: $18 $24

Call_099_68ac:
    nop                                           ; $68ac: $00
    ld [$1834], sp                                ; $68ad: $08 $34 $18
    inc h                                         ; $68b0: $24
    jr jr_099_68d7                                ; $68b1: $18 $24

    db $10                                        ; $68b3: $10
    inc l                                         ; $68b4: $2c
    inc h                                         ; $68b5: $24
    jr @+$26                                      ; $68b6: $18 $24

    dec sp                                        ; $68b8: $3b
    rlca                                          ; $68b9: $07
    nop                                           ; $68ba: $00
    db $10                                        ; $68bb: $10
    inc a                                         ; $68bc: $3c
    rlca                                          ; $68bd: $07
    add hl, bc                                    ; $68be: $09
    nop                                           ; $68bf: $00
    ld b, b                                       ; $68c0: $40
    ld de, $0742                                  ; $68c1: $11 $42 $07

jr_099_68c4:
    inc de                                        ; $68c4: $13

jr_099_68c5:
    nop                                           ; $68c5: $00
    ld b, d                                       ; $68c6: $42
    and b                                         ; $68c7: $a0
    add b                                         ; $68c8: $80
    ld b, b                                       ; $68c9: $40
    ld d, h                                       ; $68ca: $54
    adc b                                         ; $68cb: $88
    rra                                           ; $68cc: $1f
    rlca                                          ; $68cd: $07
    add b                                         ; $68ce: $80

jr_099_68cf:
    ld h, l                                       ; $68cf: $65

jr_099_68d0:
    ld bc, $5d80                                  ; $68d0: $01 $80 $5d
    rlca                                          ; $68d3: $07
    sbc $20                                       ; $68d4: $de $20
    nop                                           ; $68d6: $00

jr_099_68d7:
    db $fc                                        ; $68d7: $fc
    nop                                           ; $68d8: $00
    ret c                                         ; $68d9: $d8

    inc h                                         ; $68da: $24
    ld hl, sp+$00                                 ; $68db: $f8 $00
    ld [hl], b                                    ; $68dd: $70
    add h                                         ; $68de: $84
    nop                                           ; $68df: $00
    ret nc                                        ; $68e0: $d0

    jr z, jr_099_68c5                             ; $68e1: $28 $e2

    db $10                                        ; $68e3: $10
    ret nc                                        ; $68e4: $d0

    jr nz, jr_099_68cf                            ; $68e5: $20 $e8

    nop                                           ; $68e7: $00
    ld [$00f0], sp                                ; $68e8: $08 $f0 $00
    ld h, b                                       ; $68eb: $60
    add b                                         ; $68ec: $80
    ld a, $0e                                     ; $68ed: $3e $0e
    ret nz                                        ; $68ef: $c0

    db $10                                        ; $68f0: $10
    add b                                         ; $68f1: $80
    jr nz, jr_099_6914                            ; $68f2: $20 $20

    ret nz                                        ; $68f4: $c0

    sub c                                         ; $68f5: $91
    inc b                                         ; $68f6: $04
    ld de, $443f                                  ; $68f7: $11 $3f $44
    dec de                                        ; $68fa: $1b
    jr nz, jr_099_6905                            ; $68fb: $20 $08

    rra                                           ; $68fd: $1f
    inc b                                         ; $68fe: $04
    rst $38                                       ; $68ff: $ff
    inc d                                         ; $6900: $14
    rst $08                                       ; $6901: $cf
    nop                                           ; $6902: $00
    ld [hl+], a                                   ; $6903: $22
    rra                                           ; $6904: $1f

jr_099_6905:
    ld bc, $fc00                                  ; $6905: $01 $00 $fc
    ld c, b                                       ; $6908: $48
    db $fc                                        ; $6909: $fc
    sub b                                         ; $690a: $90
    ld a, [hl]                                    ; $690b: $7e
    ld bc, $02fa                                  ; $690c: $01 $fa $02
    ld [bc], a                                    ; $690f: $02
    db $fc                                        ; $6910: $fc
    add b                                         ; $6911: $80
    ld a, l                                       ; $6912: $7d
    nop                                           ; $6913: $00

jr_099_6914:
    ld a, [$0710]                                 ; $6914: $fa $10 $07
    rlca                                          ; $6917: $07
    ld [$f200], sp                                ; $6918: $08 $00 $f2
    ld d, b                                       ; $691b: $50
    xor h                                         ; $691c: $ac
    inc b                                         ; $691d: $04
    db $fc                                        ; $691e: $fc
    ld [$80f8], sp                                ; $691f: $08 $f8 $80

jr_099_6922:
    ld c, b                                       ; $6922: $48
    ld a, h                                       ; $6923: $7c
    and b                                         ; $6924: $a0
    dec b                                         ; $6925: $05
    db $fc                                        ; $6926: $fc
    jr nz, @+$03                                  ; $6927: $20 $01

    ld [$0030], sp                                ; $6929: $08 $30 $00
    jr c, jr_099_692e                             ; $692c: $38 $00

jr_099_692e:
    db $10                                        ; $692e: $10
    jr jr_099_6941                                ; $692f: $18 $10

    inc e                                         ; $6931: $1c
    nop                                           ; $6932: $00
    inc e                                         ; $6933: $1c
    sub b                                         ; $6934: $90
    sbc [hl]                                      ; $6935: $9e
    ld [bc], a                                    ; $6936: $02
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    inc b                                         ; $6939: $04
    inc b                                         ; $693a: $04
    add h                                         ; $693b: $84
    adc h                                         ; $693c: $8c
    ld [bc], a                                    ; $693d: $02
    ld [$00a0], sp                                ; $693e: $08 $a0 $00

jr_099_6941:
    adc h                                         ; $6941: $8c
    add h                                         ; $6942: $84
    db $fc                                        ; $6943: $fc
    jr nz, jr_099_6922                            ; $6944: $20 $dc

    ld c, b                                       ; $6946: $48
    sbc $a4                                       ; $6947: $de $a4
    nop                                           ; $6949: $00
    ld a, [$f98e]                                 ; $694a: $fa $8e $f9
    ld b, h                                       ; $694d: $44
    ld a, e                                       ; $694e: $7b
    ld c, d                                       ; $694f: $4a
    ld [hl], l                                    ; $6950: $75
    ld h, d                                       ; $6951: $62
    nop                                           ; $6952: $00
    ld e, l                                       ; $6953: $5d
    ld [hl-], a                                   ; $6954: $32
    dec l                                         ; $6955: $2d
    jp hl                                         ; $6956: $e9


    or $84                                        ; $6957: $f6 $84
    ld hl, sp+$24                                 ; $6959: $f8 $24
    nop                                           ; $695b: $00
    ret c                                         ; $695c: $d8

    add b                                         ; $695d: $80

Call_099_695e:
    db $fc                                        ; $695e: $fc
    dec h                                         ; $695f: $25
    reti                                          ; $6960: $d9


    xor c                                         ; $6961: $a9
    push de                                       ; $6962: $d5
    daa                                           ; $6963: $27
    nop                                           ; $6964: $00
    rst $18                                       ; $6965: $df
    ld c, c                                       ; $6966: $49
    or a                                          ; $6967: $b7
    dec h                                         ; $6968: $25
    rst $18                                       ; $6969: $df
    dec sp                                        ; $696a: $3b
    db $e4                                        ; $696b: $e4
    adc l                                         ; $696c: $8d
    db $10                                        ; $696d: $10
    ld a, [c]                                     ; $696e: $f2
    push de                                       ; $696f: $d5
    ld [$09a4], a                                 ; $6970: $ea $a4 $09
    dec hl                                        ; $6973: $2b
    inc [hl]                                      ; $6974: $34
    dec d                                         ; $6975: $15
    ld a, [de]                                    ; $6976: $1a
    nop                                           ; $6977: $00
    ld c, d                                       ; $6978: $4a
    ld c, l                                       ; $6979: $4d
    ld c, l                                       ; $697a: $4d
    or a                                          ; $697b: $b7
    pop de                                        ; $697c: $d1
    cpl                                           ; $697d: $2f
    ld c, c                                       ; $697e: $49
    cp a                                          ; $697f: $bf
    nop                                           ; $6980: $00
    db $d3                                        ; $6981: $d3
    cpl                                           ; $6982: $2f
    ld a, e                                       ; $6983: $7b
    adc a                                         ; $6984: $8f

jr_099_6985:
    and $1e                                       ; $6985: $e6 $1e
    sub $2e                                       ; $6987: $d6 $2e
    jr nz, @+$2d                                  ; $6989: $20 $2b

    db $db                                        ; $698b: $db
    ldh [rTAC], a                                 ; $698c: $e0 $07
    ld bc, $0200                                  ; $698e: $01 $00 $02
    jr nz, jr_099_6994                            ; $6991: $20 $01

    ld b, d                                       ; $6993: $42

jr_099_6994:
    ld bc, $01ea                                  ; $6994: $01 $ea $01
    ld bc, $4102                                  ; $6997: $01 $02 $41
    inc b                                         ; $699a: $04
    ld e, h                                       ; $699b: $5c
    ld b, $1a                                     ; $699c: $06 $1a
    nop                                           ; $699e: $00
    reti                                          ; $699f: $d9


    jr nz, jr_099_6985                            ; $69a0: $20 $e3

    ld b, b                                       ; $69a2: $40
    and h                                         ; $69a3: $a4
    ret nz                                        ; $69a4: $c0

    ld hl, sp-$80                                 ; $69a5: $f8 $80
    nop                                           ; $69a7: $00
    xor b                                         ; $69a8: $a8
    ret nz                                        ; $69a9: $c0

    db $e4                                        ; $69aa: $e4
    ret nc                                        ; $69ab: $d0

    cp d                                          ; $69ac: $ba
    push hl                                       ; $69ad: $e5
    rst $00                                       ; $69ae: $c7
    ld a, b                                       ; $69af: $78
    nop                                           ; $69b0: $00
    jp hl                                         ; $69b1: $e9


    ld [hl], $f3                                  ; $69b2: $36 $f3
    ld a, b                                       ; $69b4: $78
    ld hl, sp+$70                                 ; $69b5: $f8 $70
    push hl                                       ; $69b7: $e5
    jr c, jr_099_69ba                             ; $69b8: $38 $00

jr_099_69ba:
    jp z, $9575                                   ; $69ba: $ca $75 $95

    ld [$c5aa], a                                 ; $69bd: $ea $aa $c5
    db $e4                                        ; $69c0: $e4
    jp $b200                                      ; $69c1: $c3 $00 $b2


    pop bc                                        ; $69c4: $c1
    ld [$e575], a                                 ; $69c5: $ea $75 $e5
    ld a, [hl]                                    ; $69c8: $7e
    ret c                                         ; $69c9: $d8

    ld a, a                                       ; $69ca: $7f
    nop                                           ; $69cb: $00
    push af                                       ; $69cc: $f5
    ccf                                           ; $69cd: $3f
    cp $1f                                        ; $69ce: $fe $1f
    sbc a                                         ; $69d0: $9f
    ld h, b                                       ; $69d1: $60
    ld l, a                                       ; $69d2: $6f
    sub b                                         ; $69d3: $90
    nop                                           ; $69d4: $00
    or e                                          ; $69d5: $b3
    inc c                                         ; $69d6: $0c
    call Call_000_0a02                            ; $69d7: $cd $02 $0a
    dec b                                         ; $69da: $05
    ld [hl], d                                    ; $69db: $72
    ld bc, $3f00                                  ; $69dc: $01 $00 $3f
    ld bc, $0305                                  ; $69df: $01 $05 $03
    sbc l                                         ; $69e2: $9d
    inc bc                                        ; $69e3: $03
    ld l, e                                       ; $69e4: $6b
    rlca                                          ; $69e5: $07
    nop                                           ; $69e6: $00
    sbc l                                         ; $69e7: $9d
    inc bc                                        ; $69e8: $03
    xor e                                         ; $69e9: $ab
    ld d, [hl]                                    ; $69ea: $56
    ld d, a                                       ; $69eb: $57
    xor [hl]                                      ; $69ec: $ae
    adc e                                         ; $69ed: $8b
    ld a, [hl]                                    ; $69ee: $7e
    nop                                           ; $69ef: $00
    ld b, a                                       ; $69f0: $47
    ld a, $c9                                     ; $69f1: $3e $c9
    rlca                                          ; $69f3: $07
    ld h, a                                       ; $69f4: $67
    add c                                         ; $69f5: $81
    xor e                                         ; $69f6: $ab
    ld b, c                                       ; $69f7: $41
    nop                                           ; $69f8: $00
    ld e, l                                       ; $69f9: $5d
    and e                                         ; $69fa: $a3
    cp c                                          ; $69fb: $b9
    rst $00                                       ; $69fc: $c7
    ld l, e                                       ; $69fd: $6b
    sbc [hl]                                      ; $69fe: $9e
    rla                                           ; $69ff: $17
    cp $00                                        ; $6a00: $fe $00
    rrca                                          ; $6a02: $0f
    db $fc                                        ; $6a03: $fc
    ccf                                           ; $6a04: $3f
    ld hl, sp-$01                                 ; $6a05: $f8 $ff
    nop                                           ; $6a07: $00
    db $e3                                        ; $6a08: $e3
    inc e                                         ; $6a09: $1c
    nop                                           ; $6a0a: $00
    push af                                       ; $6a0b: $f5
    ld [de], a                                    ; $6a0c: $12
    ld a, [$f411]                                 ; $6a0d: $fa $11 $f4
    add hl, de                                    ; $6a10: $19
    db $fc                                        ; $6a11: $fc
    add hl, de                                    ; $6a12: $19
    ld [$3dc6], sp                                ; $6a13: $08 $c6 $3d
    ret z                                         ; $6a16: $c8

    daa                                           ; $6a17: $27
    or $0f                                        ; $6a18: $f6 $0f
    pop af                                        ; $6a1a: $f1
    ld c, $cb                                     ; $6a1b: $0e $cb
    nop                                           ; $6a1d: $00
    ld [hl-], a                                   ; $6a1e: $32
    and a                                         ; $6a1f: $a7
    ld b, d                                       ; $6a20: $42
    rst $08                                       ; $6a21: $cf
    add h                                         ; $6a22: $84
    sbc a                                         ; $6a23: $9f
    adc b                                         ; $6a24: $88
    xor a                                         ; $6a25: $af
    nop                                           ; $6a26: $00
    sbc b                                         ; $6a27: $98
    ld a, [c]                                     ; $6a28: $f2
    ld hl, $10f9                                  ; $6a29: $21 $f9 $10
    cp $0c                                        ; $6a2c: $fe $0c
    di                                            ; $6a2e: $f3
    nop                                           ; $6a2f: $00
    rrca                                          ; $6a30: $0f
    add sp, $11                                   ; $6a31: $e8 $11
    rst $10                                       ; $6a33: $d7
    ld hl, $47aa                                  ; $6a34: $21 $aa $47
    sbc l                                         ; $6a37: $9d
    nop                                           ; $6a38: $00
    ld c, [hl]                                    ; $6a39: $4e

jr_099_6a3a:
    rst $18                                       ; $6a3a: $df
    or b                                          ; $6a3b: $b0
    ld a, a                                       ; $6a3c: $7f
    ldh [rSCX], a                                 ; $6a3d: $e0 $43
    db $fc                                        ; $6a3f: $fc
    ld sp, $c200                                  ; $6a40: $31 $00 $c2
    adc $81                                       ; $6a43: $ce $81
    rst $08                                       ; $6a45: $cf
    cp $3f                                        ; $6a46: $fe $3f
    ldh a, [$73]                                  ; $6a48: $f0 $73
    nop                                           ; $6a4a: $00
    ld c, h                                       ; $6a4b: $4c
    db $f4                                        ; $6a4c: $f4
    ld a, b                                       ; $6a4d: $78
    ld [$db11], a                                 ; $6a4e: $ea $11 $db
    daa                                           ; $6a51: $27
    rst $38                                       ; $6a52: $ff
    ld h, b                                       ; $6a53: $60
    inc a                                         ; $6a54: $3c
    db $db                                        ; $6a55: $db
    rlca                                          ; $6a56: $07
    halt                                          ; $6a57: $76
    rlca                                          ; $6a58: $07
    rst $38                                       ; $6a59: $ff
    nop                                           ; $6a5a: $00
    push de                                       ; $6a5b: $d5
    ld h, d                                       ; $6a5c: $62
    ld [$f101], a                                 ; $6a5d: $ea $01 $f1
    db $f4                                        ; $6a60: $f4
    reti                                          ; $6a61: $d9


    cp $cf                                        ; $6a62: $fe $cf
    rst $38                                       ; $6a64: $ff
    ret nz                                        ; $6a65: $c0

    ld [bc], a                                    ; $6a66: $02
    nop                                           ; $6a67: $00
    jr nz, jr_099_6a3a                            ; $6a68: $20 $d0

    rst $38                                       ; $6a6a: $ff
    ld c, h                                       ; $6a6b: $4c
    inc bc                                        ; $6a6c: $03
    ld h, c                                       ; $6a6d: $61
    pop hl                                        ; $6a6e: $e1
    ld sp, $62f1                                  ; $6a6f: $31 $f1 $62
    nop                                           ; $6a72: $00
    db $e3                                        ; $6a73: $e3
    jp nz, $84c3                                  ; $6a74: $c2 $c3 $84

    add a                                         ; $6a77: $87
    adc $cf                                       ; $6a78: $ce $cf
    and l                                         ; $6a7a: $a5
    ld [bc], a                                    ; $6a7b: $02
    rst $20                                       ; $6a7c: $e7
    ld d, d                                       ; $6a7d: $52
    di                                            ; $6a7e: $f3
    xor a                                         ; $6a7f: $af
    rst $38                                       ; $6a80: $ff
    rst $10                                       ; $6a81: $d7
    ld a, h                                       ; $6a82: $7c
    ld b, $fa                                     ; $6a83: $06 $fa
    nop                                           ; $6a85: $00
    rst $38                                       ; $6a86: $ff
    ld e, h                                       ; $6a87: $5c
    rst $38                                       ; $6a88: $ff
    ld a, c                                       ; $6a89: $79
    rst $38                                       ; $6a8a: $ff
    ld a, [c]                                     ; $6a8b: $f2
    db $fd                                        ; $6a8c: $fd
    xor b                                         ; $6a8d: $a8
    nop                                           ; $6a8e: $00
    ld d, a                                       ; $6a8f: $57
    ld b, c                                       ; $6a90: $41
    cp a                                          ; $6a91: $bf
    ld a, [bc]                                    ; $6a92: $0a
    rst $38                                       ; $6a93: $ff
    ld d, a                                       ; $6a94: $57
    rst $38                                       ; $6a95: $ff
    cp l                                          ; $6a96: $bd
    nop                                           ; $6a97: $00
    db $fd                                        ; $6a98: $fd
    ld a, h                                       ; $6a99: $7c
    db $fc                                        ; $6a9a: $fc
    cp d                                          ; $6a9b: $ba
    cp d                                          ; $6a9c: $ba
    ld b, l                                       ; $6a9d: $45
    ld b, l                                       ; $6a9e: $45
    ld l, c                                       ; $6a9f: $69

jr_099_6aa0:
    jr nz, jr_099_6aa0                            ; $6aa0: $20 $fe

    ld [hl], h                                    ; $6aa2: $74
    inc h                                         ; $6aa3: $24
    dec b                                         ; $6aa4: $05
    sbc $df                                       ; $6aa5: $de $df
    cp l                                          ; $6aa7: $bd
    cp a                                          ; $6aa8: $bf
    ld l, d                                       ; $6aa9: $6a
    jr nz, jr_099_6b2b                            ; $6aaa: $20 $7f

    push de                                       ; $6aac: $d5
    jr jr_099_6ab3                                ; $6aad: $18 $04

    ld [hl], b                                    ; $6aaf: $70
    rst $38                                       ; $6ab0: $ff
    ld a, d                                       ; $6ab1: $7a
    db $fd                                        ; $6ab2: $fd

jr_099_6ab3:
    ld sp, $fe00                                  ; $6ab3: $31 $00 $fe
    db $fc                                        ; $6ab6: $fc
    rst $38                                       ; $6ab7: $ff
    add sp, -$01                                  ; $6ab8: $e8 $ff
    ld [hl], h                                    ; $6aba: $74
    ei                                            ; $6abb: $fb
    xor e                                         ; $6abc: $ab
    db $10                                        ; $6abd: $10
    ld [hl], h                                    ; $6abe: $74
    ld d, a                                       ; $6abf: $57
    cp b                                          ; $6ac0: $b8
    ld b, [hl]                                    ; $6ac1: $46
    ld c, $10                                     ; $6ac2: $0e $10
    jr jr_099_6aee                                ; $6ac4: $18 $28

    inc [hl]                                      ; $6ac6: $34
    nop                                           ; $6ac7: $00
    ld d, h                                       ; $6ac8: $54
    ld l, d                                       ; $6ac9: $6a
    ld d, h                                       ; $6aca: $54
    ld l, d                                       ; $6acb: $6a
    halt                                          ; $6acc: $76
    ld c, b                                       ; $6acd: $48
    ld e, h                                       ; $6ace: $5c
    ld h, e                                       ; $6acf: $63
    nop                                           ; $6ad0: $00
    dec a                                         ; $6ad1: $3d
    ld [hl], d                                    ; $6ad2: $72
    dec a                                         ; $6ad3: $3d
    ld [hl], d                                    ; $6ad4: $72
    inc [hl]                                      ; $6ad5: $34
    ld a, e                                       ; $6ad6: $7b
    ld d, l                                       ; $6ad7: $55
    dec sp                                        ; $6ad8: $3b
    nop                                           ; $6ad9: $00
    ld e, [hl]                                    ; $6ada: $5e
    jr nc, jr_099_6b31                            ; $6adb: $30 $54

    ld a, [hl-]                                   ; $6add: $3a
    ld a, h                                       ; $6ade: $7c
    ld [hl-], a                                   ; $6adf: $32
    inc a                                         ; $6ae0: $3c
    ld [hl], d                                    ; $6ae1: $72
    ld [$7030], sp                                ; $6ae2: $08 $30 $70
    jr nc, jr_099_6b57                            ; $6ae5: $30 $70

    inc bc                                        ; $6ae7: $03
    nop                                           ; $6ae8: $00
    jr nc, jr_099_6b3b                            ; $6ae9: $30 $50

    jr nc, jr_099_6b0d                            ; $6aeb: $30 $20

    db $10                                        ; $6aed: $10

jr_099_6aee:
    ld [hl], b                                    ; $6aee: $70
    inc b                                         ; $6aef: $04
    ld [$0003], sp                                ; $6af0: $08 $03 $00
    ld bc, $0304                                  ; $6af3: $01 $04 $03
    nop                                           ; $6af6: $00
    ld [$0005], sp                                ; $6af7: $08 $05 $00
    ld b, c                                       ; $6afa: $41
    ld [$0004], sp                                ; $6afb: $08 $04 $00
    ld [de], a                                    ; $6afe: $12
    ldh [$60], a                                  ; $6aff: $e0 $60
    dec bc                                        ; $6b01: $0b
    ld d, b                                       ; $6b02: $50
    ld b, $aa                                     ; $6b03: $06 $aa
    ld [$20df], sp                                ; $6b05: $08 $df $20
    xor d                                         ; $6b08: $aa
    nop                                           ; $6b09: $00
    ld b, h                                       ; $6b0a: $44
    jr nc, @+$03                                  ; $6b0b: $30 $01

jr_099_6b0d:
    ld bc, $0670                                  ; $6b0d: $01 $70 $06
    add b                                         ; $6b10: $80
    ld l, $2d                                     ; $6b11: $2e $2d
    nop                                           ; $6b13: $00
    ld b, d                                       ; $6b14: $42
    db $10                                        ; $6b15: $10
    jr nz, jr_099_6b1c                            ; $6b16: $20 $04

    ld bc, $3a30                                  ; $6b18: $01 $30 $3a
    ld b, b                                       ; $6b1b: $40

jr_099_6b1c:
    ld [$1082], sp                                ; $6b1c: $08 $82 $10
    db $10                                        ; $6b1f: $10
    ret nz                                        ; $6b20: $c0

    and $13                                       ; $6b21: $e6 $13
    ld [hl], b                                    ; $6b23: $70
    ld b, b                                       ; $6b24: $40
    db $e3                                        ; $6b25: $e3
    sbc l                                         ; $6b26: $9d
    ld h, d                                       ; $6b27: $62
    db $dd                                        ; $6b28: $dd
    ld [hl+], a                                   ; $6b29: $22
    ld d, h                                       ; $6b2a: $54

jr_099_6b2b:
    nop                                           ; $6b2b: $00
    xor e                                         ; $6b2c: $ab
    push de                                       ; $6b2d: $d5
    db $eb                                        ; $6b2e: $eb
    ld e, [hl]                                    ; $6b2f: $5e
    ld h, b                                       ; $6b30: $60

jr_099_6b31:
    ld d, h                                       ; $6b31: $54
    ld l, d                                       ; $6b32: $6a
    ld e, h                                       ; $6b33: $5c
    db $10                                        ; $6b34: $10
    ld h, d                                       ; $6b35: $62
    ld l, h                                       ; $6b36: $6c
    ld d, d                                       ; $6b37: $52
    sub b                                         ; $6b38: $90
    ld c, b                                       ; $6b39: $48
    ld [hl], a                                    ; $6b3a: $77

jr_099_6b3b:
    ld c, c                                       ; $6b3b: $49
    ld e, l                                       ; $6b3c: $5d
    db $e3                                        ; $6b3d: $e3
    nop                                           ; $6b3e: $00
    dec a                                         ; $6b3f: $3d
    ld b, d                                       ; $6b40: $42
    ccf                                           ; $6b41: $3f
    nop                                           ; $6b42: $00
    scf                                           ; $6b43: $37
    add hl, bc                                    ; $6b44: $09
    ld e, a                                       ; $6b45: $5f
    nop                                           ; $6b46: $00
    nop                                           ; $6b47: $00
    dec a                                         ; $6b48: $3d
    ld [bc], a                                    ; $6b49: $02
    rra                                           ; $6b4a: $1f
    nop                                           ; $6b4b: $00
    dec [hl]                                      ; $6b4c: $35
    ld [$001e], sp                                ; $6b4d: $08 $1e $00
    nop                                           ; $6b50: $00
    sbc h                                         ; $6b51: $9c
    ld h, d                                       ; $6b52: $62
    call c, $5622                                 ; $6b53: $dc $22 $56
    xor b                                         ; $6b56: $a8

jr_099_6b57:
    push de                                       ; $6b57: $d5
    db $eb                                        ; $6b58: $eb
    nop                                           ; $6b59: $00
    ld e, a                                       ; $6b5a: $5f
    ld h, c                                       ; $6b5b: $61
    ld d, h                                       ; $6b5c: $54
    ld l, d                                       ; $6b5d: $6a
    ld e, [hl]                                    ; $6b5e: $5e
    ld h, b                                       ; $6b5f: $60
    ld l, h                                       ; $6b60: $6c
    ld d, d                                       ; $6b61: $52
    nop                                           ; $6b62: $00
    ld a, [hl-]                                   ; $6b63: $3a
    inc d                                         ; $6b64: $14
    inc [hl]                                      ; $6b65: $34
    ld [$005e], sp                                ; $6b66: $08 $5e $00
    inc a                                         ; $6b69: $3c
    nop                                           ; $6b6a: $00
    ld bc, $0836                                  ; $6b6b: $01 $36 $08
    ld e, h                                       ; $6b6e: $5c
    nop                                           ; $6b6f: $00
    cp h                                          ; $6b70: $bc
    ld [$157a], sp                                ; $6b71: $08 $7a $15
    rla                                           ; $6b74: $17
    add b                                         ; $6b75: $80
    db $ed                                        ; $6b76: $ed
    ld bc, $0303                                  ; $6b77: $01 $03 $03
    ld [bc], a                                    ; $6b7a: $02
    ld a, [bc]                                    ; $6b7b: $0a
    rrca                                          ; $6b7c: $0f
    dec d                                         ; $6b7d: $15
    dec de                                        ; $6b7e: $1b

jr_099_6b7f:
    ld bc, $1b14                                  ; $6b7f: $01 $14 $1b
    ld e, b                                       ; $6b82: $58
    jr nz, @-$0a                                  ; $6b83: $20 $f4

    jr z, jr_099_6b7f                             ; $6b85: $28 $f8

    and h                                         ; $6b87: $a4
    ld [bc], a                                    ; $6b88: $02
    nop                                           ; $6b89: $00
    or h                                          ; $6b8a: $b4
    ld b, b                                       ; $6b8b: $40
    ldh a, [$08]                                  ; $6b8c: $f0 $08
    ldh a, [rDIV]                                 ; $6b8e: $f0 $04
    db $fc                                        ; $6b90: $fc
    ld [bc], a                                    ; $6b91: $02
    nop                                           ; $6b92: $00
    rra                                           ; $6b93: $1f
    ld de, $121d                                  ; $6b94: $11 $1d $12
    dec e                                         ; $6b97: $1d
    inc de                                        ; $6b98: $13
    ld d, $19                                     ; $6b99: $16 $19
    inc bc                                        ; $6b9b: $03
    dec d                                         ; $6b9c: $15
    dec de                                        ; $6b9d: $1b
    ld d, $18                                     ; $6b9e: $16 $18
    inc d                                         ; $6ba0: $14
    ld a, [de]                                    ; $6ba1: $1a
    ld [hl], h                                    ; $6ba2: $74
    ld [bc], a                                    ; $6ba3: $02
    or c                                          ; $6ba4: $b1
    inc h                                         ; $6ba5: $24
    nop                                           ; $6ba6: $00
    inc b                                         ; $6ba7: $04
    ld b, $0a                                     ; $6ba8: $06 $0a
    dec c                                         ; $6baa: $0d
    ld c, $09                                     ; $6bab: $0e $09
    ld l, $39                                     ; $6bad: $2e $39
    add b                                         ; $6baf: $80
    db $10                                        ; $6bb0: $10
    ld c, c                                       ; $6bb1: $49
    or $c8                                        ; $6bb2: $f6 $c8
    call c, Call_099_57e3                         ; $6bb4: $dc $e3 $57
    ld l, h                                       ; $6bb7: $6c
    ld d, e                                       ; $6bb8: $53
    nop                                           ; $6bb9: $00
    ld l, h                                       ; $6bba: $6c
    halt                                          ; $6bbb: $76
    call $65ba                                    ; $6bbc: $cd $ba $65
    or [hl]                                       ; $6bbf: $b6
    ld c, l                                       ; $6bc0: $4d
    cp [hl]                                       ; $6bc1: $be
    nop                                           ; $6bc2: $00
    ld h, c                                       ; $6bc3: $61
    call nc, $b82e                                ; $6bc4: $d4 $2e $b8
    ld h, b                                       ; $6bc7: $60
    ld e, l                                       ; $6bc8: $5d
    ld h, d                                       ; $6bc9: $62
    ld e, l                                       ; $6bca: $5d
    ld bc, $5462                                  ; $6bcb: $01 $62 $54
    ld l, e                                       ; $6bce: $6b
    push de                                       ; $6bcf: $d5
    db $eb                                        ; $6bd0: $eb
    sbc $e0                                       ; $6bd1: $de $e0
    or b                                          ; $6bd3: $b0
    jr jr_099_6bd7                                ; $6bd4: $18 $01

    sub b                                         ; $6bd6: $90

jr_099_6bd7:
    ld l, b                                       ; $6bd7: $68
    ldh [$30], a                                  ; $6bd8: $e0 $30
    ret nz                                        ; $6bda: $c0

    nop                                           ; $6bdb: $00
    add b                                         ; $6bdc: $80
    ld hl, $c00b                                  ; $6bdd: $21 $0b $c0
    ei                                            ; $6be0: $fb
    inc [hl]                                      ; $6be1: $34
    ld d, b                                       ; $6be2: $50
    ld b, c                                       ; $6be3: $41
    and $9c                                       ; $6be4: $e6 $9c
    ld l, [hl]                                    ; $6be6: $6e
    call c, Call_099_5c2e                         ; $6be7: $dc $2e $5c
    nop                                           ; $6bea: $00
    xor [hl]                                      ; $6beb: $ae
    jp c, Jump_099_5aec                           ; $6bec: $da $ec $5a

    ld l, h                                       ; $6bef: $6c
    ld e, d                                       ; $6bf0: $5a
    ld l, h                                       ; $6bf1: $6c
    ld e, [hl]                                    ; $6bf2: $5e
    nop                                           ; $6bf3: $00
    ld l, h                                       ; $6bf4: $6c
    ld l, h                                       ; $6bf5: $6c
    ld e, [hl]                                    ; $6bf6: $5e
    cp e                                          ; $6bf7: $bb
    db $fc                                        ; $6bf8: $fc
    ld [hl], l                                    ; $6bf9: $75
    ld a, [$00f2]                                 ; $6bfa: $fa $f2 $00
    db $fd                                        ; $6bfd: $fd
    pop de                                        ; $6bfe: $d1
    cp $f7                                        ; $6bff: $fe $f7
    add sp, $5f                                   ; $6c01: $e8 $5f
    ldh a, [$2f]                                  ; $6c03: $f0 $2f

Jump_099_6c05:
    ld [bc], a                                    ; $6c05: $02
    ld hl, sp-$49                                 ; $6c06: $f8 $b7
    ld e, h                                       ; $6c08: $5c
    ld e, e                                       ; $6c09: $5b
    xor [hl]                                      ; $6c0a: $ae
    rlca                                          ; $6c0b: $07
    and b                                         ; $6c0c: $a0
    dec b                                         ; $6c0d: $05
    cp [hl]                                       ; $6c0e: $be
    nop                                           ; $6c0f: $00
    rst $38                                       ; $6c10: $ff
    cp l                                          ; $6c11: $bd
    ld a, a                                       ; $6c12: $7f
    rla                                           ; $6c13: $17
    rst $38                                       ; $6c14: $ff
    xor e                                         ; $6c15: $ab
    ld a, a                                       ; $6c16: $7f
    ld d, l                                       ; $6c17: $55
    nop                                           ; $6c18: $00
    cp a                                          ; $6c19: $bf
    ld [hl], b                                    ; $6c1a: $70
    db $10                                        ; $6c1b: $10
    add hl, bc                                    ; $6c1c: $09
    dec bc                                        ; $6c1d: $0b
    ld b, d                                       ; $6c1e: $42
    rst $38                                       ; $6c1f: $ff
    ld bc, $8360                                  ; $6c20: $01 $60 $83
    rst $38                                       ; $6c23: $ff
    pop bc                                        ; $6c24: $c1
    cp a                                          ; $6c25: $bf
    inc b                                         ; $6c26: $04
    ld c, b                                       ; $6c27: $48
    inc h                                         ; $6c28: $24
    nop                                           ; $6c29: $00
    jr jr_099_6c82                                ; $6c2a: $18 $56

    ld [$0024], sp                                ; $6c2c: $08 $24 $00
    ld de, $8200                                  ; $6c2f: $11 $00 $82
    ld [bc], a                                    ; $6c32: $02
    nop                                           ; $6c33: $00
    nop                                           ; $6c34: $00
    nop                                           ; $6c35: $00
    adc b                                         ; $6c36: $88

jr_099_6c37:
    nop                                           ; $6c37: $00
    jr nz, jr_099_6c40                            ; $6c38: $20 $06

    nop                                           ; $6c3a: $00
    ld b, $00                                     ; $6c3b: $06 $00
    nop                                           ; $6c3d: $00
    or d                                          ; $6c3e: $b2
    nop                                           ; $6c3f: $00

jr_099_6c40:
    ld d, b                                       ; $6c40: $50
    jr nz, @-$45                                  ; $6c41: $20 $b9

    ld b, b                                       ; $6c43: $40
    ret nc                                        ; $6c44: $d0

    xor b                                         ; $6c45: $a8
    ld c, $00                                     ; $6c46: $0e $00
    ld c, c                                       ; $6c48: $49
    ld d, $00                                     ; $6c49: $16 $00
    ld [$0016], sp                                ; $6c4b: $08 $16 $00
    ld bc, $0500                                  ; $6c4e: $01 $00 $05
    nop                                           ; $6c51: $00
    nop                                           ; $6c52: $00
    ld b, d                                       ; $6c53: $42
    nop                                           ; $6c54: $00
    and c                                         ; $6c55: $a1
    nop                                           ; $6c56: $00
    ldh a, [rP1]                                  ; $6c57: $f0 $00
    ld e, b                                       ; $6c59: $58
    jr nz, jr_099_6c7c                            ; $6c5a: $20 $20

    xor b                                         ; $6c5c: $a8
    ld a, [de]                                    ; $6c5d: $1a
    nop                                           ; $6c5e: $00
    xor d                                         ; $6c5f: $aa
    nop                                           ; $6c60: $00
    ld b, c                                       ; $6c61: $41
    nop                                           ; $6c62: $00
    ld [bc], a                                    ; $6c63: $02
    ld [$1000], sp                                ; $6c64: $08 $00 $10
    nop                                           ; $6c67: $00
    ld l, $3a                                     ; $6c68: $2e $3a
    nop                                           ; $6c6a: $00
    jr nz, jr_099_6c6d                            ; $6c6b: $20 $00

jr_099_6c6d:
    ret nc                                        ; $6c6d: $d0

    nop                                           ; $6c6e: $00
    nop                                           ; $6c6f: $00
    ld a, [hl+]                                   ; $6c70: $2a
    ret nz                                        ; $6c71: $c0

    jr nc, jr_099_6cb4                            ; $6c72: $30 $40

    add b                                         ; $6c74: $80
    nop                                           ; $6c75: $00
    ld d, d                                       ; $6c76: $52
    ld a, [hl+]                                   ; $6c77: $2a
    nop                                           ; $6c78: $00
    jr z, jr_099_6c8f                             ; $6c79: $28 $14

    nop                                           ; $6c7b: $00

jr_099_6c7c:
    ld c, c                                       ; $6c7c: $49
    ld a, [de]                                    ; $6c7d: $1a
    nop                                           ; $6c7e: $00
    ld hl, $001c                                  ; $6c7f: $21 $1c $00

jr_099_6c82:
    add d                                         ; $6c82: $82
    adc b                                         ; $6c83: $88
    ld a, $00                                     ; $6c84: $3e $00
    add h                                         ; $6c86: $84
    nop                                           ; $6c87: $00
    add sp, $1e                                   ; $6c88: $e8 $1e
    nop                                           ; $6c8a: $00
    ld b, c                                       ; $6c8b: $41
    nop                                           ; $6c8c: $00
    sub d                                         ; $6c8d: $92
    add b                                         ; $6c8e: $80

jr_099_6c8f:
    ld e, d                                       ; $6c8f: $5a
    nop                                           ; $6c90: $00
    ld [$1400], sp                                ; $6c91: $08 $00 $14
    nop                                           ; $6c94: $00
    add hl, hl                                    ; $6c95: $29
    nop                                           ; $6c96: $00
    dec d                                         ; $6c97: $15
    ld [bc], a                                    ; $6c98: $02
    ld [$108e], sp                                ; $6c99: $08 $8e $10
    ld b, h                                       ; $6c9c: $44
    jr jr_099_6c37                                ; $6c9d: $18 $98

    ld a, [hl+]                                   ; $6c9f: $2a
    nop                                           ; $6ca0: $00
    inc d                                         ; $6ca1: $14
    jr nz, jr_099_6ca4                            ; $6ca2: $20 $00

jr_099_6ca4:
    add c                                         ; $6ca4: $81
    ld a, b                                       ; $6ca5: $78
    nop                                           ; $6ca6: $00
    call nz, $eb00                                ; $6ca7: $c4 $00 $eb
    nop                                           ; $6caa: $00
    cp a                                          ; $6cab: $bf
    nop                                           ; $6cac: $00
    ld b, b                                       ; $6cad: $40
    ld l, $d1                                     ; $6cae: $2e $d1
    ld d, e                                       ; $6cb0: $53
    db $ec                                        ; $6cb1: $ec
    nop                                           ; $6cb2: $00
    rst $38                                       ; $6cb3: $ff

jr_099_6cb4:
    ld a, [hl+]                                   ; $6cb4: $2a
    nop                                           ; $6cb5: $00

jr_099_6cb6:
    rst $38                                       ; $6cb6: $ff
    sub l                                         ; $6cb7: $95
    ld a, [hl]                                    ; $6cb8: $7e
    ld l, c                                       ; $6cb9: $69
    add b                                         ; $6cba: $80
    cp d                                          ; $6cbb: $ba
    ld b, b                                       ; $6cbc: $40
    push hl                                       ; $6cbd: $e5
    nop                                           ; $6cbe: $00
    ld a, [de]                                    ; $6cbf: $1a
    cp e                                          ; $6cc0: $bb
    ld b, h                                       ; $6cc1: $44
    ld l, c                                       ; $6cc2: $69
    add [hl]                                      ; $6cc3: $86
    ld d, h                                       ; $6cc4: $54
    adc e                                         ; $6cc5: $8b
    ld a, [$0500]                                 ; $6cc6: $fa $00 $05
    sub h                                         ; $6cc9: $94
    ld h, e                                       ; $6cca: $63
    db $e4                                        ; $6ccb: $e4
    db $10                                        ; $6ccc: $10
    ld l, d                                       ; $6ccd: $6a
    db $10                                        ; $6cce: $10
    push de                                       ; $6ccf: $d5
    nop                                           ; $6cd0: $00
    jr z, jr_099_6cb6                             ; $6cd1: $28 $e3

    inc e                                         ; $6cd3: $1c
    ld c, b                                       ; $6cd4: $48
    cp a                                          ; $6cd5: $bf
    ld [hl+], a                                   ; $6cd6: $22
    rst $18                                       ; $6cd7: $df
    ld b, h                                       ; $6cd8: $44
    nop                                           ; $6cd9: $00
    ei                                            ; $6cda: $fb
    jp z, $a8b5                                   ; $6cdb: $ca $b5 $a8

    nop                                           ; $6cde: $00
    ld [hl], h                                    ; $6cdf: $74
    nop                                           ; $6ce0: $00
    cp e                                          ; $6ce1: $bb
    nop                                           ; $6ce2: $00
    inc b                                         ; $6ce3: $04
    ld l, c                                       ; $6ce4: $69
    sub [hl]                                      ; $6ce5: $96
    cp a                                          ; $6ce6: $bf
    ld b, b                                       ; $6ce7: $40
    ld d, d                                       ; $6ce8: $52
    and c                                         ; $6ce9: $a1
    and l                                         ; $6cea: $a5
    nop                                           ; $6ceb: $00
    jp nz, $6798                                  ; $6cec: $c2 $98 $67

    ld a, [hl+]                                   ; $6cef: $2a
    rst $38                                       ; $6cf0: $ff
    sbc a                                         ; $6cf1: $9f
    ld a, a                                       ; $6cf2: $7f
    ccf                                           ; $6cf3: $3f
    ld [$1fff], sp                                ; $6cf4: $08 $ff $1f
    rst $38                                       ; $6cf7: $ff
    cp a                                          ; $6cf8: $bf
    inc b                                         ; $6cf9: $04
    db $10                                        ; $6cfa: $10
    ld e, a                                       ; $6cfb: $5f
    cp a                                          ; $6cfc: $bf
    cp d                                          ; $6cfd: $ba
    ld bc, $fced                                  ; $6cfe: $01 $ed $fc
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    db $fd                                        ; $6d03: $fd
    db $fc                                        ; $6d04: $fc
    db $fd                                        ; $6d05: $fd
    inc b                                         ; $6d06: $04
    ld [$fe40], sp                                ; $6d07: $08 $40 $fe
    ld [$0700], sp                                ; $6d0a: $08 $00 $07
    ld hl, sp+$6d                                 ; $6d0d: $f8 $6d
    sub b                                         ; $6d0f: $90
    ld a, [hl+]                                   ; $6d10: $2a
    pop bc                                        ; $6d11: $c1
    nop                                           ; $6d12: $00
    dec b                                         ; $6d13: $05
    ld a, [$bd52]                                 ; $6d14: $fa $52 $bd
    dec b                                         ; $6d17: $05
    ei                                            ; $6d18: $fb
    and d                                         ; $6d19: $a2
    rst $18                                       ; $6d1a: $df
    nop                                           ; $6d1b: $00
    ld [$4df7], sp                                ; $6d1c: $08 $f7 $4d
    or d                                          ; $6d1f: $b2
    inc b                                         ; $6d20: $04
    ei                                            ; $6d21: $fb
    and e                                         ; $6d22: $a3
    ld a, h                                       ; $6d23: $7c
    nop                                           ; $6d24: $00
    ld d, a                                       ; $6d25: $57
    add sp, $0d                                   ; $6d26: $e8 $0d
    ldh a, [$2e]                                  ; $6d28: $f0 $2e
    ret nc                                        ; $6d2a: $d0

    dec d                                         ; $6d2b: $15
    add sp, $04                                   ; $6d2c: $e8 $04
    xor c                                         ; $6d2e: $a9
    halt                                          ; $6d2f: $76
    ld bc, $8900                                  ; $6d30: $01 $00 $89
    cp $00                                        ; $6d33: $fe $00
    dec hl                                        ; $6d35: $2b
    nop                                           ; $6d36: $00
    nop                                           ; $6d37: $00
    ld c, a                                       ; $6d38: $4f
    db $10                                        ; $6d39: $10
    dec a                                         ; $6d3a: $3d
    ld [bc], a                                    ; $6d3b: $02
    dec bc                                        ; $6d3c: $0b
    inc b                                         ; $6d3d: $04
    dec b                                         ; $6d3e: $05
    nop                                           ; $6d3f: $00
    ld a, [bc]                                    ; $6d40: $0a
    jp nz, $92f1                                  ; $6d41: $c2 $f1 $92

    pop hl                                        ; $6d44: $e1
    inc b                                         ; $6d45: $04
    ld c, b                                       ; $6d46: $48
    inc de                                        ; $6d47: $13
    db $fc                                        ; $6d48: $fc
    nop                                           ; $6d49: $00
    ld b, l                                       ; $6d4a: $45
    add b                                         ; $6d4b: $80
    cp b                                          ; $6d4c: $b8
    nop                                           ; $6d4d: $00
    ld d, c                                       ; $6d4e: $51
    nop                                           ; $6d4f: $00
    add e                                         ; $6d50: $83
    nop                                           ; $6d51: $00
    ld d, l                                       ; $6d52: $55
    nop                                           ; $6d53: $00
    adc e                                         ; $6d54: $8b
    nop                                           ; $6d55: $00
    nop                                           ; $6d56: $00
    ld d, l                                       ; $6d57: $55
    add b                                         ; $6d58: $80
    xor e                                         ; $6d59: $ab
    ld b, h                                       ; $6d5a: $44
    ld [hl], a                                    ; $6d5b: $77
    ld [$00a9], sp                                ; $6d5c: $08 $a9 $00
    ld d, $70                                     ; $6d5f: $16 $70
    adc a                                         ; $6d61: $8f
    ld [bc], a                                    ; $6d62: $02
    rst $38                                       ; $6d63: $ff
    ld h, $dd                                     ; $6d64: $26 $dd
    sub b                                         ; $6d66: $90
    nop                                           ; $6d67: $00
    ld l, a                                       ; $6d68: $6f
    ld c, e                                       ; $6d69: $4b
    or $a0                                        ; $6d6a: $f6 $a0
    ld e, a                                       ; $6d6c: $5f
    dec d                                         ; $6d6d: $15
    ld [$002a], a                                 ; $6d6e: $ea $2a $00
    ld b, l                                       ; $6d71: $45
    or h                                          ; $6d72: $b4
    ld b, e                                       ; $6d73: $43
    reti                                          ; $6d74: $d9


    inc bc                                        ; $6d75: $03
    db $ed                                        ; $6d76: $ed
    inc bc                                        ; $6d77: $03
    ld sp, $8f00                                  ; $6d78: $31 $00 $8f
    ld [hl+], a                                   ; $6d7b: $22
    db $fd                                        ; $6d7c: $fd
    sub l                                         ; $6d7d: $95
    ld a, d                                       ; $6d7e: $7a
    nop                                           ; $6d7f: $00
    rst $38                                       ; $6d80: $ff
    inc h                                         ; $6d81: $24
    nop                                           ; $6d82: $00
    rst $38                                       ; $6d83: $ff
    adc d                                         ; $6d84: $8a
    rst $38                                       ; $6d85: $ff
    dec b                                         ; $6d86: $05
    cp $a3                                        ; $6d87: $fe $a3
    call c, $0049                                 ; $6d89: $dc $49 $00
    or [hl]                                       ; $6d8c: $b6
    cp d                                          ; $6d8d: $ba
    ld b, l                                       ; $6d8e: $45
    ld [hl], h                                    ; $6d8f: $74
    adc e                                         ; $6d90: $8b
    and l                                         ; $6d91: $a5
    ld e, a                                       ; $6d92: $5f
    ld a, [bc]                                    ; $6d93: $0a
    nop                                           ; $6d94: $00
    rst $38                                       ; $6d95: $ff
    sub l                                         ; $6d96: $95
    ld l, e                                       ; $6d97: $6b
    ld c, d                                       ; $6d98: $4a
    or l                                          ; $6d99: $b5
    ld l, h                                       ; $6d9a: $6c
    inc de                                        ; $6d9b: $13
    or [hl]                                       ; $6d9c: $b6
    nop                                           ; $6d9d: $00
    ld bc, $7fba                                  ; $6d9e: $01 $ba $7f
    ld [hl], l                                    ; $6da1: $75
    sbc a                                         ; $6da2: $9f
    push de                                       ; $6da3: $d5
    ld a, [de]                                    ; $6da4: $1a
    ld hl, $1400                                  ; $6da5: $21 $00 $14
    sub l                                         ; $6da8: $95
    ld a, [hl+]                                   ; $6da9: $2a
    ld d, b                                       ; $6daa: $50
    dec b                                         ; $6dab: $05
    ld a, [$3505]                                 ; $6dac: $fa $05 $35
    nop                                           ; $6daf: $00
    res 5, d                                      ; $6db0: $cb $aa
    db $fd                                        ; $6db2: $fd
    ld d, h                                       ; $6db3: $54
    db $fd                                        ; $6db4: $fd
    ld d, l                                       ; $6db5: $55
    xor b                                         ; $6db6: $a8
    ld b, b                                       ; $6db7: $40
    nop                                           ; $6db8: $00
    inc de                                        ; $6db9: $13
    xor d                                         ; $6dba: $aa
    ld d, a                                       ; $6dbb: $57
    ld b, l                                       ; $6dbc: $45
    cpl                                           ; $6dbd: $2f
    xor [hl]                                      ; $6dbe: $ae
    ld d, a                                       ; $6dbf: $57
    ld d, l                                       ; $6dc0: $55
    nop                                           ; $6dc1: $00
    rst $38                                       ; $6dc2: $ff
    ld d, a                                       ; $6dc3: $57
    add sp, $2d                                   ; $6dc4: $e8 $2d
    ret nc                                        ; $6dc6: $d0

    ld e, e                                       ; $6dc7: $5b
    and b                                         ; $6dc8: $a0
    ld c, $00                                     ; $6dc9: $0e $00
    ldh a, [rHDMA2]                               ; $6dcb: $f0 $52
    xor h                                         ; $6dcd: $ac
    dec b                                         ; $6dce: $05
    ld d, b                                       ; $6dcf: $50
    ld d, l                                       ; $6dd0: $55
    xor d                                         ; $6dd1: $aa
    xor d                                         ; $6dd2: $aa
    nop                                           ; $6dd3: $00
    push af                                       ; $6dd4: $f5
    sub b                                         ; $6dd5: $90
    ld a, a                                       ; $6dd6: $7f

jr_099_6dd7:
    ld [bc], a                                    ; $6dd7: $02
    rst $38                                       ; $6dd8: $ff
    db $e4                                        ; $6dd9: $e4
    dec de                                        ; $6dda: $1b
    xor b                                         ; $6ddb: $a8
    inc b                                         ; $6ddc: $04
    rla                                           ; $6ddd: $17
    ld d, l                                       ; $6dde: $55
    ld a, [hl+]                                   ; $6ddf: $2a
    nop                                           ; $6de0: $00
    ld d, l                                       ; $6de1: $55
    stop                                          ; $6de2: $10 $00
    rst $38                                       ; $6de4: $ff
    ld a, [hl]                                    ; $6de5: $7e
    nop                                           ; $6de6: $00
    nop                                           ; $6de7: $00
    rst $08                                       ; $6de8: $cf

jr_099_6de9:
    db $10                                        ; $6de9: $10
    ei                                            ; $6dea: $fb
    nop                                           ; $6deb: $00
    ld l, d                                       ; $6dec: $6a
    sub l                                         ; $6ded: $95
    rst $30                                       ; $6dee: $f7
    nop                                           ; $6def: $00
    ld l, b                                       ; $6df0: $68
    ei                                            ; $6df1: $fb
    sub h                                         ; $6df2: $94
    dec [hl]                                      ; $6df3: $35
    ld a, [$f5fb]                                 ; $6df4: $fa $fb $f5
    cp $00                                        ; $6df7: $fe $00
    ld bc, $10a5                                  ; $6df9: $01 $a5 $10
    ld e, a                                       ; $6dfc: $5f
    jr nz, jr_099_6de9                            ; $6dfd: $20 $ea

    dec b                                         ; $6dff: $05
    cp l                                          ; $6e00: $bd
    nop                                           ; $6e01: $00
    ld [bc], a                                    ; $6e02: $02
    xor [hl]                                      ; $6e03: $ae
    ld d, c                                       ; $6e04: $51
    ei                                            ; $6e05: $fb
    db $fc                                        ; $6e06: $fc
    ld l, [hl]                                    ; $6e07: $6e
    sbc l                                         ; $6e08: $9d
    xor d                                         ; $6e09: $aa
    nop                                           ; $6e0a: $00
    ld d, l                                       ; $6e0b: $55
    ld e, a                                       ; $6e0c: $5f
    and b                                         ; $6e0d: $a0
    dec c                                         ; $6e0e: $0d
    add b                                         ; $6e0f: $80
    add [hl]                                      ; $6e10: $86
    ld bc, $006b                                  ; $6e11: $01 $6b $00
    add h                                         ; $6e14: $84
    add d                                         ; $6e15: $82
    db $fd                                        ; $6e16: $fd
    or h                                          ; $6e17: $b4
    ld a, e                                       ; $6e18: $7b
    sub $29                                       ; $6e19: $d6 $29
    db $dd                                        ; $6e1b: $dd
    nop                                           ; $6e1c: $00
    nop                                           ; $6e1d: $00
    or [hl]                                       ; $6e1e: $b6
    ld c, b                                       ; $6e1f: $48
    ld e, d                                       ; $6e20: $5a
    and l                                         ; $6e21: $a5
    call Call_000_0302                            ; $6e22: $cd $02 $03
    nop                                           ; $6e25: $00
    inc b                                         ; $6e26: $04
    add hl, hl                                    ; $6e27: $29
    ld b, $d3                                     ; $6e28: $06 $d3
    dec c                                         ; $6e2a: $0d
    xor $99                                       ; $6e2b: $ee $99
    ld e, d                                       ; $6e2d: $5a
    nop                                           ; $6e2e: $00
    and a                                         ; $6e2f: $a7
    or a                                          ; $6e30: $b7
    ld c, e                                       ; $6e31: $4b
    ld [hl], l                                    ; $6e32: $75
    adc e                                         ; $6e33: $8b
    ld l, d                                       ; $6e34: $6a
    sub l                                         ; $6e35: $95
    push af                                       ; $6e36: $f5
    ld bc, $af08                                  ; $6e37: $01 $08 $af
    ld d, b                                       ; $6e3a: $50
    ld e, l                                       ; $6e3b: $5d
    and b                                         ; $6e3c: $a0
    add d                                         ; $6e3d: $82
    ld a, h                                       ; $6e3e: $7c
    rst $30                                       ; $6e3f: $f7
    ld bc, $0040                                  ; $6e40: $01 $40 $00
    rst $18                                       ; $6e43: $df
    ld bc, $2121                                  ; $6e44: $01 $21 $21
    ld d, d                                       ; $6e47: $52
    ld a, e                                       ; $6e48: $7b
    ld c, d                                       ; $6e49: $4a
    ld a, l                                       ; $6e4a: $7d
    nop                                           ; $6e4b: $00
    ld c, [hl]                                    ; $6e4c: $4e
    inc d                                         ; $6e4d: $14
    rst $38                                       ; $6e4e: $ff
    nop                                           ; $6e4f: $00
    ld b, b                                       ; $6e50: $40
    ld b, b                                       ; $6e51: $40
    and b                                         ; $6e52: $a0
    ret nz                                        ; $6e53: $c0

    nop                                           ; $6e54: $00
    jr nz, jr_099_6dd7                            ; $6e55: $20 $80

    ld h, b                                       ; $6e57: $60
    ret nz                                        ; $6e58: $c0

    jr nc, jr_099_6ecb                            ; $6e59: $30 $70

    sub b                                         ; $6e5b: $90
    ret z                                         ; $6e5c: $c8

    nop                                           ; $6e5d: $00
    inc a                                         ; $6e5e: $3c
    sub h                                         ; $6e5f: $94
    ld a, [$f06f]                                 ; $6e60: $fa $6f $f0
    xor b                                         ; $6e63: $a8
    ld d, a                                       ; $6e64: $57
    ld d, h                                       ; $6e65: $54
    nop                                           ; $6e66: $00
    xor c                                         ; $6e67: $a9
    db $fd                                        ; $6e68: $fd
    rrca                                          ; $6e69: $0f
    sub [hl]                                      ; $6e6a: $96
    ld l, a                                       ; $6e6b: $6f
    dec bc                                        ; $6e6c: $0b
    sub h                                         ; $6e6d: $94
    ld d, l                                       ; $6e6e: $55
    nop                                           ; $6e6f: $00
    ld [$902b], sp                                ; $6e70: $08 $2b $90
    xor c                                         ; $6e73: $a9
    ld b, $53                                     ; $6e74: $06 $53
    ld l, $97                                     ; $6e76: $2e $97
    nop                                           ; $6e78: $00
    ld a, [hl]                                    ; $6e79: $7e
    ld a, l                                       ; $6e7a: $7d
    cp $e7                                        ; $6e7b: $fe $e7
    ld hl, sp+$0a                                 ; $6e7d: $f8 $0a
    pop af                                        ; $6e7f: $f1
    ld e, e                                       ; $6e80: $5b
    nop                                           ; $6e81: $00
    and h                                         ; $6e82: $a4
    or l                                          ; $6e83: $b5
    ld c, d                                       ; $6e84: $4a
    ld a, a                                       ; $6e85: $7f
    adc h                                         ; $6e86: $8c
    db $fd                                        ; $6e87: $fd
    sub e                                         ; $6e88: $93
    ld a, a                                       ; $6e89: $7f
    nop                                           ; $6e8a: $00
    adc [hl]                                      ; $6e8b: $8e
    sbc l                                         ; $6e8c: $9d
    xor $73                                       ; $6e8d: $ee $73
    ld c, [hl]                                    ; $6e8f: $4e
    ld e, d                                       ; $6e90: $5a
    ld h, a                                       ; $6e91: $67
    ld e, l                                       ; $6e92: $5d
    nop                                           ; $6e93: $00
    ld h, e                                       ; $6e94: $63
    ld l, $31                                     ; $6e95: $2e $31
    ld l, d                                       ; $6e97: $6a
    or $bc                                        ; $6e98: $f6 $bc
    db $fc                                        ; $6e9a: $fc
    add sp, $00                                   ; $6e9b: $e8 $00
    jr jr_099_6f17                                ; $6e9d: $18 $78

    ret c                                         ; $6e9f: $d8

    add sp, $18                                   ; $6ea0: $e8 $18
    ret nc                                        ; $6ea2: $d0

    jr nc, jr_099_6ef5                            ; $6ea3: $30 $50

    nop                                           ; $6ea5: $00
    cp h                                          ; $6ea6: $bc
    db $f4                                        ; $6ea7: $f4
    ld [$f1ae], a                                 ; $6ea8: $ea $ae $f1
    ld e, l                                       ; $6eab: $5d
    ld [c], a                                     ; $6eac: $e2
    xor [hl]                                      ; $6ead: $ae
    nop                                           ; $6eae: $00
    ld d, e                                       ; $6eaf: $53
    ld d, a                                       ; $6eb0: $57
    adc e                                         ; $6eb1: $8b
    db $ed                                        ; $6eb2: $ed
    inc de                                        ; $6eb3: $13
    sub [hl]                                      ; $6eb4: $96
    ld l, c                                       ; $6eb5: $69
    dec hl                                        ; $6eb6: $2b
    nop                                           ; $6eb7: $00
    sub h                                         ; $6eb8: $94
    ld b, $f8                                     ; $6eb9: $06 $f8
    sbc d                                         ; $6ebb: $9a
    ld b, a                                       ; $6ebc: $47
    ld d, b                                       ; $6ebd: $50
    xor a                                         ; $6ebe: $af
    jr z, jr_099_6ec5                             ; $6ebf: $28 $04

    rst $10                                       ; $6ec1: $d7
    sub c                                         ; $6ec2: $91
    xor $56                                       ; $6ec3: $ee $56

jr_099_6ec5:
    xor c                                         ; $6ec5: $a9
    ldh [$08], a                                  ; $6ec6: $e0 $08
    xor e                                         ; $6ec8: $ab
    db $fc                                        ; $6ec9: $fc
    add b                                         ; $6eca: $80

jr_099_6ecb:
    ld [hl], b                                    ; $6ecb: $70
    add hl, bc                                    ; $6ecc: $09
    jp $f4f1                                      ; $6ecd: $c3 $f1 $f4


    db $e3                                        ; $6ed0: $e3
    add d                                         ; $6ed1: $82
    pop af                                        ; $6ed2: $f1
    jp nc, Jump_000_0880                          ; $6ed3: $d2 $80 $08

    nop                                           ; $6ed6: $00
    push hl                                       ; $6ed7: $e5
    di                                            ; $6ed8: $f3
    cp d                                          ; $6ed9: $ba
    ld b, l                                       ; $6eda: $45
    ld [hl], l                                    ; $6edb: $75
    adc [hl]                                      ; $6edc: $8e
    jp nc, $0f10                                  ; $6edd: $d2 $10 $0f

    add hl, hl                                    ; $6ee0: $29
    ld d, $20                                     ; $6ee1: $16 $20
    add hl, hl                                    ; $6ee3: $29
    call z, Call_099_6613                         ; $6ee4: $cc $13 $66
    add hl, de                                    ; $6ee7: $19
    ld [$2e91], sp                                ; $6ee8: $08 $91 $2e
    ld h, h                                       ; $6eeb: $64
    sbc a                                         ; $6eec: $9f
    jr nz, @+$2b                                  ; $6eed: $20 $29

    rst $30                                       ; $6eef: $f7
    ld c, $2d                                     ; $6ef0: $0e $2d
    nop                                           ; $6ef2: $00
    sbc e                                         ; $6ef3: $9b
    ei                                            ; $6ef4: $fb

jr_099_6ef5:
    rra                                           ; $6ef5: $1f
    ld e, a                                       ; $6ef6: $5f
    cp a                                          ; $6ef7: $bf
    db $ed                                        ; $6ef8: $ed
    ld e, $7a                                     ; $6ef9: $1e $7a
    nop                                           ; $6efb: $00
    dec b                                         ; $6efc: $05
    xor [hl]                                      ; $6efd: $ae
    ld de, $8877                                  ; $6efe: $11 $77 $88
    and l                                         ; $6f01: $a5
    ld a, [hl]                                    ; $6f02: $7e
    ld a, d                                       ; $6f03: $7a
    nop                                           ; $6f04: $00
    db $fd                                        ; $6f05: $fd
    push af                                       ; $6f06: $f5
    ld a, [$f1ef]                                 ; $6f07: $fa $ef $f1
    ld d, a                                       ; $6f0a: $57
    xor [hl]                                      ; $6f0b: $ae
    xor h                                         ; $6f0c: $ac
    nop                                           ; $6f0d: $00
    ld d, a                                       ; $6f0e: $57
    rst $10                                       ; $6f0f: $d7
    dec hl                                        ; $6f10: $2b
    cp l                                          ; $6f11: $bd
    ld b, e                                       ; $6f12: $43
    db $eb                                        ; $6f13: $eb
    inc d                                         ; $6f14: $14
    cp [hl]                                       ; $6f15: $be
    nop                                           ; $6f16: $00

jr_099_6f17:
    ld bc, $48b5                                  ; $6f17: $01 $b5 $48
    sbc $e0                                       ; $6f1a: $de $e0
    cp e                                          ; $6f1c: $bb
    ld h, h                                       ; $6f1d: $64
    rst $38                                       ; $6f1e: $ff
    nop                                           ; $6f1f: $00
    ldh [$d6], a                                  ; $6f20: $e0 $d6

jr_099_6f22:
    add sp, -$44                                  ; $6f22: $e8 $bc
    jp nz, $8073                                  ; $6f24: $c2 $73 $80

    push af                                       ; $6f27: $f5
    nop                                           ; $6f28: $00
    jr jr_099_6f77                                ; $6f29: $18 $4c

    cp a                                          ; $6f2b: $bf
    and c                                         ; $6f2c: $a1
    ld e, [hl]                                    ; $6f2d: $5e
    ld e, d                                       ; $6f2e: $5a
    and h                                         ; $6f2f: $a4
    pop hl                                        ; $6f30: $e1
    nop                                           ; $6f31: $00
    ld [bc], a                                    ; $6f32: $02
    ld c, d                                       ; $6f33: $4a
    ld bc, $62d7                                  ; $6f34: $01 $d7 $62
    ld h, l                                       ; $6f37: $65
    sbc e                                         ; $6f38: $9b
    xor d                                         ; $6f39: $aa
    nop                                           ; $6f3a: $00
    ld d, l                                       ; $6f3b: $55
    halt                                          ; $6f3c: $76
    add hl, bc                                    ; $6f3d: $09
    db $dd                                        ; $6f3e: $dd
    ld [hl+], a                                   ; $6f3f: $22
    xor d                                         ; $6f40: $aa
    ld d, h                                       ; $6f41: $54
    ld e, a                                       ; $6f42: $5f
    inc b                                         ; $6f43: $04
    and b                                         ; $6f44: $a0
    xor [hl]                                      ; $6f45: $ae

jr_099_6f46:
    ld d, c                                       ; $6f46: $51
    call nc, $e022                                ; $6f47: $d4 $22 $e0
    jr z, jr_099_6f22                             ; $6f4a: $28 $d6

    cpl                                           ; $6f4c: $2f
    nop                                           ; $6f4d: $00
    dec bc                                        ; $6f4e: $0b
    inc d                                         ; $6f4f: $14
    ld d, l                                       ; $6f50: $55
    ld [$10ab], sp                                ; $6f51: $08 $ab $10
    ld d, [hl]                                    ; $6f54: $56
    xor c                                         ; $6f55: $a9
    nop                                           ; $6f56: $00
    cp c                                          ; $6f57: $b9
    ld b, [hl]                                    ; $6f58: $46
    ld c, h                                       ; $6f59: $4c
    or e                                          ; $6f5a: $b3
    sub [hl]                                      ; $6f5b: $96
    ld h, c                                       ; $6f5c: $61
    and d                                         ; $6f5d: $a2
    ld a, a                                       ; $6f5e: $7f
    nop                                           ; $6f5f: $00
    ld e, l                                       ; $6f60: $5d
    cp [hl]                                       ; $6f61: $be
    xor d                                         ; $6f62: $aa
    ld e, l                                       ; $6f63: $5d
    push af                                       ; $6f64: $f5
    ld a, [bc]                                    ; $6f65: $0a
    cp l                                          ; $6f66: $bd
    ld b, d                                       ; $6f67: $42
    nop                                           ; $6f68: $00
    or $01                                        ; $6f69: $f6 $01
    xor [hl]                                      ; $6f6b: $ae
    ld b, b                                       ; $6f6c: $40
    ld d, [hl]                                    ; $6f6d: $56
    and c                                         ; $6f6e: $a1
    cp h                                          ; $6f6f: $bc
    ld b, e                                       ; $6f70: $43
    nop                                           ; $6f71: $00
    ld l, a                                       ; $6f72: $6f
    sub c                                         ; $6f73: $91
    cp [hl]                                       ; $6f74: $be
    ld b, c                                       ; $6f75: $41
    reti                                          ; $6f76: $d9


jr_099_6f77:
    ld [hl+], a                                   ; $6f77: $22
    ld l, $d1                                     ; $6f78: $2e $d1
    nop                                           ; $6f7a: $00
    push bc                                       ; $6f7b: $c5
    ld a, [hl-]                                   ; $6f7c: $3a
    jr c, jr_099_6f46                             ; $6f7d: $38 $c7

    adc c                                         ; $6f7f: $89
    ld b, $52                                     ; $6f80: $06 $52
    xor a                                         ; $6f82: $af
    nop                                           ; $6f83: $00
    add l                                         ; $6f84: $85
    cp $fb                                        ; $6f85: $fe $fb
    db $fc                                        ; $6f87: $fc
    ld h, [hl]                                    ; $6f88: $66
    ld hl, sp+$7e                                 ; $6f89: $f8 $7e
    rlca                                          ; $6f8b: $07

jr_099_6f8c:
    nop                                           ; $6f8c: $00
    db $db                                        ; $6f8d: $db
    dec l                                         ; $6f8e: $2d
    add hl, hl                                    ; $6f8f: $29
    ld e, a                                       ; $6f90: $5f
    ld a, a                                       ; $6f91: $7f
    rrca                                          ; $6f92: $0f
    or a                                          ; $6f93: $b7
    ld c, a                                       ; $6f94: $4f
    nop                                           ; $6f95: $00
    ld l, d                                       ; $6f96: $6a
    push de                                       ; $6f97: $d5
    ld a, a                                       ; $6f98: $7f
    add b                                         ; $6f99: $80
    or a                                          ; $6f9a: $b7
    ld b, b                                       ; $6f9b: $40
    dec de                                        ; $6f9c: $1b
    inc e                                         ; $6f9d: $1c
    nop                                           ; $6f9e: $00
    inc b                                         ; $6f9f: $04
    rlca                                          ; $6fa0: $07
    ld [bc], a                                    ; $6fa1: $02
    dec c                                         ; $6fa2: $0d
    rrca                                          ; $6fa3: $0f
    ld de, $131d                                  ; $6fa4: $11 $1d $13
    nop                                           ; $6fa7: $00
    rrca                                          ; $6fa8: $0f
    rrca                                          ; $6fa9: $0f
    ld [bc], a                                    ; $6faa: $02
    dec b                                         ; $6fab: $05
    inc bc                                        ; $6fac: $03
    inc b                                         ; $6fad: $04
    ld a, [hl-]                                   ; $6fae: $3a
    push bc                                       ; $6faf: $c5
    nop                                           ; $6fb0: $00
    rst $20                                       ; $6fb1: $e7
    add hl, de                                    ; $6fb2: $19
    call $f9f3                                    ; $6fb3: $cd $f3 $f9
    rlca                                          ; $6fb6: $07
    or d                                          ; $6fb7: $b2
    ld c, [hl]                                    ; $6fb8: $4e
    nop                                           ; $6fb9: $00
    inc c                                         ; $6fba: $0c
    db $fc                                        ; $6fbb: $fc
    ld hl, sp-$08                                 ; $6fbc: $f8 $f8
    cp b                                          ; $6fbe: $b8
    ld c, b                                       ; $6fbf: $48
    push de                                       ; $6fc0: $d5
    ld hl, sp+$00                                 ; $6fc1: $f8 $00
    rst $28                                       ; $6fc3: $ef
    ld [hl], b                                    ; $6fc4: $70
    cp h                                          ; $6fc5: $bc
    ld b, b                                       ; $6fc6: $40
    ld e, b                                       ; $6fc7: $58
    and b                                         ; $6fc8: $a0
    dec [hl]                                      ; $6fc9: $35
    ld [$1000], sp                                ; $6fca: $08 $00 $10
    rrca                                          ; $6fcd: $0f
    cp e                                          ; $6fce: $bb
    rlca                                          ; $6fcf: $07
    xor a                                         ; $6fd0: $af
    ld [hl], b                                    ; $6fd1: $70
    xor d                                         ; $6fd2: $aa
    dec d                                         ; $6fd3: $15
    nop                                           ; $6fd4: $00
    push af                                       ; $6fd5: $f5
    ld [$b04f], sp                                ; $6fd6: $08 $4f $b0
    and e                                         ; $6fd9: $a3
    ld c, h                                       ; $6fda: $4c
    ld c, c                                       ; $6fdb: $49
    or $00                                        ; $6fdc: $f6 $00
    cp l                                          ; $6fde: $bd

jr_099_6fdf:
    ld a, [hl]                                    ; $6fdf: $7e
    ld l, d                                       ; $6fe0: $6a
    sbc h                                         ; $6fe1: $9c
    cp a                                          ; $6fe2: $bf
    ld b, b                                       ; $6fe3: $40
    ld b, $05                                     ; $6fe4: $06 $05
    nop                                           ; $6fe6: $00
    inc b                                         ; $6fe7: $04
    rlca                                          ; $6fe8: $07
    ld bc, $0302                                  ; $6fe9: $01 $02 $03
    inc e                                         ; $6fec: $1c
    ld d, $2d                                     ; $6fed: $16 $2d
    nop                                           ; $6fef: $00
    ld a, [de]                                    ; $6ff0: $1a
    daa                                           ; $6ff1: $27
    cpl                                           ; $6ff2: $2f
    inc sp                                        ; $6ff3: $33
    rra                                           ; $6ff4: $1f
    ld [hl], c                                    ; $6ff5: $71
    add sp, -$68                                  ; $6ff6: $e8 $98
    nop                                           ; $6ff8: $00
    ret nc                                        ; $6ff9: $d0

    jr nc, jr_099_6f8c                            ; $6ffa: $30 $90

    ld [hl], b                                    ; $6ffc: $70
    jr nz, jr_099_6fdf                            ; $6ffd: $20 $e0

    ld h, b                                       ; $6fff: $60
    ret nc                                        ; $7000: $d0

    nop                                           ; $7001: $00
    ldh [$90], a                                  ; $7002: $e0 $90
    or b                                          ; $7004: $b0
    call z, $ceb8                                 ; $7005: $cc $b8 $ce
    reti                                          ; $7008: $d9


    ld h, h                                       ; $7009: $64
    nop                                           ; $700a: $00
    rla                                           ; $700b: $17
    add sp, -$5b                                  ; $700c: $e8 $a5
    ld d, b                                       ; $700e: $50
    ld e, [hl]                                    ; $700f: $5e
    and c                                         ; $7010: $a1
    db $ed                                        ; $7011: $ed
    ld [de], a                                    ; $7012: $12
    nop                                           ; $7013: $00
    jp c, $7721                                   ; $7014: $da $21 $77

    add b                                         ; $7017: $80
    sbc d                                         ; $7018: $9a
    ld b, l                                       ; $7019: $45
    ld [hl], l                                    ; $701a: $75
    sbc e                                         ; $701b: $9b
    nop                                           ; $701c: $00
    ld l, a                                       ; $701d: $6f
    sbc a                                         ; $701e: $9f
    pop de                                        ; $701f: $d1
    xor [hl]                                      ; $7020: $ae
    ld l, b                                       ; $7021: $68
    sub a                                         ; $7022: $97
    or l                                          ; $7023: $b5
    rlc b                                         ; $7024: $cb $00
    ld c, a                                       ; $7026: $4f
    ld [hl], b                                    ; $7027: $70
    jr nc, jr_099_7069                            ; $7028: $30 $3f

    rrca                                          ; $702a: $0f
    rrca                                          ; $702b: $0f
    adc [hl]                                      ; $702c: $8e
    ld sp, hl                                     ; $702d: $f9
    nop                                           ; $702e: $00
    ld d, $e9                                     ; $702f: $16 $e9
    db $eb                                        ; $7031: $eb
    dec e                                         ; $7032: $1d
    sub $39                                       ; $7033: $d6 $39
    db $ed                                        ; $7035: $ed
    di                                            ; $7036: $f3
    nop                                           ; $7037: $00
    ld a, [c]                                     ; $7038: $f2
    ld c, $0c                                     ; $7039: $0e $0c
    db $fc                                        ; $703b: $fc
    ldh a, [$f0]                                  ; $703c: $f0 $f0
    cp l                                          ; $703e: $bd
    ld a, [hl]                                    ; $703f: $7e
    nop                                           ; $7040: $00
    ld a, d                                       ; $7041: $7a
    add l                                         ; $7042: $85
    xor c                                         ; $7043: $a9
    sub $f3                                       ; $7044: $d6 $f3
    adc h                                         ; $7046: $8c
    call nc, $002b                                ; $7047: $d4 $2b $00
    xor d                                         ; $704a: $aa
    ld d, h                                       ; $704b: $54
    jp c, Jump_099_6c05                           ; $704c: $da $05 $6c

    add a                                         ; $704f: $87
    cp c                                          ; $7050: $b9
    ld b, [hl]                                    ; $7051: $46
    nop                                           ; $7052: $00
    ld [$dd07], a                                 ; $7053: $ea $07 $dd
    inc hl                                        ; $7056: $23
    dec [hl]                                      ; $7057: $35
    jp z, $255a                                   ; $7058: $ca $5a $25

    nop                                           ; $705b: $00
    sbc b                                         ; $705c: $98
    ld h, b                                       ; $705d: $60
    ld [de], a                                    ; $705e: $12
    ldh [$5d], a                                  ; $705f: $e0 $5d
    ldh [$2e], a                                  ; $7061: $e0 $2e

jr_099_7063:
    pop af                                        ; $7063: $f1
    ld [$e2dd], sp                                ; $7064: $08 $dd $e2
    ld l, $d3                                     ; $7067: $2e $d3

jr_099_7069:
    and b                                         ; $7069: $a0
    add hl, bc                                    ; $706a: $09
    ld d, $e9                                     ; $706b: $16 $e9
    dec hl                                        ; $706d: $2b
    nop                                           ; $706e: $00
    inc d                                         ; $706f: $14
    add [hl]                                      ; $7070: $86
    ld a, b                                       ; $7071: $78
    cp a                                          ; $7072: $bf
    ld b, a                                       ; $7073: $47
    adc e                                         ; $7074: $8b
    rlca                                          ; $7075: $07
    ld d, $00                                     ; $7076: $16 $00
    ld bc, $846a                                  ; $7078: $01 $6a $84

jr_099_707b:
    ld l, a                                       ; $707b: $6f
    ld hl, sp-$7b                                 ; $707c: $f8 $85
    ld a, d                                       ; $707e: $7a
    db $eb                                        ; $707f: $eb
    nop                                           ; $7080: $00
    inc d                                         ; $7081: $14
    ld e, [hl]                                    ; $7082: $5e
    add c                                         ; $7083: $81
    xor d                                         ; $7084: $aa
    db $dd                                        ; $7085: $dd
    ld l, a                                       ; $7086: $6f
    sbc a                                         ; $7087: $9f
    or h                                          ; $7088: $b4
    nop                                           ; $7089: $00
    ld c, a                                       ; $708a: $4f
    rst $18                                       ; $708b: $df
    jr nz, jr_099_707b                            ; $708c: $20 $ed

    db $10                                        ; $708e: $10
    ld d, $09                                     ; $708f: $16 $09
    ld l, $04                                     ; $7091: $2e $04
    db $10                                        ; $7093: $10
    rst $20                                       ; $7094: $e7
    ld hl, sp-$27                                 ; $7095: $f8 $d9
    db $e4                                        ; $7097: $e4
    add b                                         ; $7098: $80
    ld e, b                                       ; $7099: $58
    cp h                                          ; $709a: $bc
    jp $c003                                      ; $709b: $c3 $03 $c0


    add c                                         ; $709e: $81
    and c                                         ; $709f: $a1
    ret nz                                        ; $70a0: $c0

    pop bc                                        ; $70a1: $c1
    add b                                         ; $70a2: $80
    inc b                                         ; $70a3: $04
    jr z, jr_099_7116                             ; $70a4: $28 $70

    jr z, @+$14                                   ; $70a6: $28 $12

    ld d, l                                       ; $70a8: $55
    nop                                           ; $70a9: $00
    rst $38                                       ; $70aa: $ff
    ld d, d                                       ; $70ab: $52
    inc b                                         ; $70ac: $04
    ld h, b                                       ; $70ad: $60
    sub b                                         ; $70ae: $90
    ld [hl], b                                    ; $70af: $70
    jr @-$09                                      ; $70b0: $18 $f5

    ld b, b                                       ; $70b2: $40
    ld a, [bc]                                    ; $70b3: $0a
    db $10                                        ; $70b4: $10
    jr jr_099_70bb                                ; $70b5: $18 $04

    nop                                           ; $70b7: $00
    ld d, l                                       ; $70b8: $55
    ld hl, sp-$11                                 ; $70b9: $f8 $ef

jr_099_70bb:
    ldh a, [$09]                                  ; $70bb: $f0 $09
    cp a                                          ; $70bd: $bf
    ret nz                                        ; $70be: $c0

    ld e, a                                       ; $70bf: $5f
    and b                                         ; $70c0: $a0
    jr nz, jr_099_70db                            ; $70c1: $20 $18

    nop                                           ; $70c3: $00
    nop                                           ; $70c4: $00
    inc a                                         ; $70c5: $3c
    ld c, b                                       ; $70c6: $48
    add b                                         ; $70c7: $80
    ld c, b                                       ; $70c8: $48
    ld [$9a25], sp                                ; $70c9: $08 $25 $9a
    ld a, [bc]                                    ; $70cc: $0a
    sub h                                         ; $70cd: $94
    inc h                                         ; $70ce: $24
    sbc b                                         ; $70cf: $98
    dec c                                         ; $70d0: $0d
    jr nz, jr_099_7063                            ; $70d1: $20 $90

    ld [hl+], a                                   ; $70d3: $22
    inc b                                         ; $70d4: $04
    nop                                           ; $70d5: $00
    cpl                                           ; $70d6: $2f
    sbc a                                         ; $70d7: $9f
    rrca                                          ; $70d8: $0f
    sbc a                                         ; $70d9: $9f
    dec hl                                        ; $70da: $2b

jr_099_70db:
    nop                                           ; $70db: $00
    nop                                           ; $70dc: $00
    ld d, l                                       ; $70dd: $55
    ld [bc], a                                    ; $70de: $02
    adc d                                         ; $70df: $8a
    inc b                                         ; $70e0: $04
    jr jr_099_70e3                                ; $70e1: $18 $00

jr_099_70e3:
    sub h                                         ; $70e3: $94
    stop                                          ; $70e4: $10 $00
    ld a, [bc]                                    ; $70e6: $0a
    ld bc, $0ccc                                  ; $70e7: $01 $cc $0c
    add h                                         ; $70ea: $84
    nop                                           ; $70eb: $00
    add hl, bc                                    ; $70ec: $09
    nop                                           ; $70ed: $00
    ld b, d                                       ; $70ee: $42
    ld [de], a                                    ; $70ef: $12
    inc b                                         ; $70f0: $04
    inc b                                         ; $70f1: $04
    ld e, d                                       ; $70f2: $5a
    add b                                         ; $70f3: $80
    or h                                          ; $70f4: $b4
    ld b, b                                       ; $70f5: $40
    call c, $df0c                                 ; $70f6: $dc $0c $df
    nop                                           ; $70f9: $00
    jr nz, jr_099_7124                            ; $70fa: $20 $28

    nop                                           ; $70fc: $00
    sub b                                         ; $70fd: $90
    nop                                           ; $70fe: $00
    inc bc                                        ; $70ff: $03
    nop                                           ; $7100: $00
    inc b                                         ; $7101: $04
    inc e                                         ; $7102: $1c
    ld [bc], a                                    ; $7103: $02
    add hl, bc                                    ; $7104: $09
    inc b                                         ; $7105: $04
    db $ec                                        ; $7106: $ec
    inc d                                         ; $7107: $14
    jr nc, jr_099_716a                            ; $7108: $30 $60

    ld [hl], b                                    ; $710a: $70
    ld [$c0bc], sp                                ; $710b: $08 $bc $c0
    ld [c], a                                     ; $710e: $e2
    ld [hl], b                                    ; $710f: $70
    add hl, sp                                    ; $7110: $39
    pop hl                                        ; $7111: $e1
    ld [bc], a                                    ; $7112: $02
    pop af                                        ; $7113: $f1
    ld [de], a                                    ; $7114: $12
    inc b                                         ; $7115: $04

jr_099_7116:
    ld [bc], a                                    ; $7116: $02
    ld a, [hl+]                                   ; $7117: $2a
    jr nc, jr_099_713a                            ; $7118: $30 $20

    nop                                           ; $711a: $00
    ld hl, $8000                                  ; $711b: $21 $00 $80
    ldh [rDIV], a                                 ; $711e: $e0 $04
    ld a, [bc]                                    ; $7120: $0a
    nop                                           ; $7121: $00
    dec d                                         ; $7122: $15
    ld [bc], a                                    ; $7123: $02

jr_099_7124:
    inc l                                         ; $7124: $2c
    dec c                                         ; $7125: $0d
    adc b                                         ; $7126: $88
    add b                                         ; $7127: $80
    ld [$9825], sp                                ; $7128: $08 $25 $98
    rrca                                          ; $712b: $0f
    add b                                         ; $712c: $80
    jr nc, @+$01                                  ; $712d: $30 $ff

    nop                                           ; $712f: $00
    push af                                       ; $7130: $f5
    nop                                           ; $7131: $00
    ld [bc], a                                    ; $7132: $02
    db $db                                        ; $7133: $db
    inc b                                         ; $7134: $04
    cp d                                          ; $7135: $ba
    nop                                           ; $7136: $00
    push de                                       ; $7137: $d5
    nop                                           ; $7138: $00
    xor d                                         ; $7139: $aa

jr_099_713a:
    add b                                         ; $713a: $80
    add b                                         ; $713b: $80
    db $10                                        ; $713c: $10
    rst $38                                       ; $713d: $ff
    nop                                           ; $713e: $00
    xor e                                         ; $713f: $ab
    nop                                           ; $7140: $00
    ld d, a                                       ; $7141: $57
    nop                                           ; $7142: $00
    cp $08                                        ; $7143: $fe $08
    nop                                           ; $7145: $00
    ld e, e                                       ; $7146: $5b
    add b                                         ; $7147: $80
    or [hl]                                       ; $7148: $b6
    add b                                         ; $7149: $80
    db $10                                        ; $714a: $10
    jp c, $35bf                                   ; $714b: $da $bf $35

    nop                                           ; $714e: $00
    sbc [hl]                                      ; $714f: $9e
    db $db                                        ; $7150: $db
    cp h                                          ; $7151: $bc
    ld [hl], d                                    ; $7152: $72
    sbc l                                         ; $7153: $9d
    db $dd                                        ; $7154: $dd
    cp d                                          ; $7155: $ba
    ld a, [c]                                     ; $7156: $f2
    nop                                           ; $7157: $00
    sbc l                                         ; $7158: $9d
    rst $18                                       ; $7159: $df
    cp a                                          ; $715a: $bf
    rst $38                                       ; $715b: $ff
    sbc a                                         ; $715c: $9f
    jr nz, @+$01                                  ; $715d: $20 $ff

    rst $10                                       ; $715f: $d7
    nop                                           ; $7160: $00
    jr z, @+$71                                   ; $7161: $28 $6f

    sub b                                         ; $7163: $90
    db $fc                                        ; $7164: $fc
    inc bc                                        ; $7165: $03
    ei                                            ; $7166: $fb
    ld b, $f6                                     ; $7167: $06 $f6
    ld b, b                                       ; $7169: $40

jr_099_716a:
    dec c                                         ; $716a: $0d
    adc a                                         ; $716b: $8f
    db $10                                        ; $716c: $10
    rst $38                                       ; $716d: $ff
    xor d                                         ; $716e: $aa
    ld d, a                                       ; $716f: $57
    ld [hl], l                                    ; $7170: $75
    adc [hl]                                      ; $7171: $8e
    rst $20                                       ; $7172: $e7
    inc b                                         ; $7173: $04
    jr jr_099_71e1                                ; $7174: $18 $6b

    sub h                                         ; $7176: $94
    push af                                       ; $7177: $f5
    dec bc                                        ; $7178: $0b
    adc h                                         ; $7179: $8c
    dec c                                         ; $717a: $0d
    cp a                                          ; $717b: $bf
    rst $38                                       ; $717c: $ff
    ld bc, $bfde                                  ; $717d: $01 $de $bf
    cp h                                          ; $7180: $bc
    rst $38                                       ; $7181: $ff
    sbc l                                         ; $7182: $9d
    rst $38                                       ; $7183: $ff
    cp d                                          ; $7184: $ba
    inc b                                         ; $7185: $04
    nop                                           ; $7186: $00
    add b                                         ; $7187: $80
    cpl                                           ; $7188: $2f
    nop                                           ; $7189: $00
    rst $38                                       ; $718a: $ff
    ld a, [bc]                                    ; $718b: $0a
    rst $38                                       ; $718c: $ff
    ld d, a                                       ; $718d: $57
    rst $38                                       ; $718e: $ff
    adc [hl]                                      ; $718f: $8e
    rst $38                                       ; $7190: $ff
    ld [$ff18], sp                                ; $7191: $08 $18 $ff
    sub h                                         ; $7194: $94
    rst $38                                       ; $7195: $ff
    rra                                           ; $7196: $1f
    db $10                                        ; $7197: $10
    rst $38                                       ; $7198: $ff
    add b                                         ; $7199: $80
    rst $38                                       ; $719a: $ff
    nop                                           ; $719b: $00
    add hl, bc                                    ; $719c: $09
    rst $38                                       ; $719d: $ff
    ld [de], a                                    ; $719e: $12
    rst $38                                       ; $719f: $ff
    ld [hl], h                                    ; $71a0: $74
    rst $38                                       ; $71a1: $ff
    jp c, Jump_099_40ff                           ; $71a2: $da $ff $40

    db $f4                                        ; $71a5: $f4
    cp e                                          ; $71a6: $bb
    dec d                                         ; $71a7: $15
    ld e, d                                       ; $71a8: $5a
    and l                                         ; $71a9: $a5
    or a                                          ; $71aa: $b7
    ld c, b                                       ; $71ab: $48
    ld [hl], l                                    ; $71ac: $75
    adc d                                         ; $71ad: $8a
    add b                                         ; $71ae: $80
    or b                                          ; $71af: $b0
    ld b, e                                       ; $71b0: $43
    inc bc                                        ; $71b1: $03
    inc bc                                        ; $71b2: $03
    inc b                                         ; $71b3: $04
    inc bc                                        ; $71b4: $03
    dec b                                         ; $71b5: $05
    cpl                                           ; $71b6: $2f
    add hl, sp                                    ; $71b7: $39
    nop                                           ; $71b8: $00
    ld a, [hl]                                    ; $71b9: $7e
    ld c, c                                       ; $71ba: $49
    ei                                            ; $71bb: $fb
    adc h                                         ; $71bc: $8c
    or l                                          ; $71bd: $b5
    adc $83                                       ; $71be: $ce $83
    rst $38                                       ; $71c0: $ff
    nop                                           ; $71c1: $00
    nop                                           ; $71c2: $00
    ld h, b                                       ; $71c3: $60
    ldh a, [$90]                                  ; $71c4: $f0 $90
    and b                                         ; $71c6: $a0
    ld d, b                                       ; $71c7: $50
    ldh a, [rNR10]                                ; $71c8: $f0 $10
    nop                                           ; $71ca: $00
    or b                                          ; $71cb: $b0
    ld e, b                                       ; $71cc: $58
    ld hl, sp+$14                                 ; $71cd: $f8 $14
    or $2a                                        ; $71cf: $f6 $2a
    ld a, [$0006]                                 ; $71d1: $fa $06 $00
    ld [hl], b                                    ; $71d4: $70
    ld a, a                                       ; $71d5: $7f
    rrca                                          ; $71d6: $0f
    rrca                                          ; $71d7: $0f
    rlca                                          ; $71d8: $07
    dec c                                         ; $71d9: $0d
    dec bc                                        ; $71da: $0b
    inc c                                         ; $71db: $0c
    nop                                           ; $71dc: $00
    dec bc                                        ; $71dd: $0b
    ld e, $37                                     ; $71de: $1e $37
    inc l                                         ; $71e0: $2c

jr_099_71e1:
    dec sp                                        ; $71e1: $3b
    ld b, a                                       ; $71e2: $47
    ld [hl], a                                    ; $71e3: $77
    adc c                                         ; $71e4: $89
    ld b, b                                       ; $71e5: $40
    inc b                                         ; $71e6: $04
    halt                                          ; $71e7: $76
    ld [bc], a                                    ; $71e8: $02
    and b                                         ; $71e9: $a0
    ldh [$a0], a                                  ; $71ea: $e0 $a0
    ld h, b                                       ; $71ec: $60
    ret nz                                        ; $71ed: $c0

    ld b, b                                       ; $71ee: $40
    ld [bc], a                                    ; $71ef: $02
    ld b, b                                       ; $71f0: $40
    ldh a, [$b0]                                  ; $71f1: $f0 $b0
    ret z                                         ; $71f3: $c8

    ld hl, sp+$04                                 ; $71f4: $f8 $04
    or b                                          ; $71f6: $b0
    ld a, [bc]                                    ; $71f7: $0a
    xor c                                         ; $71f8: $a9
    ld [de], a                                    ; $71f9: $12
    ld e, a                                       ; $71fa: $5f

Call_099_71fb:
    rst $38                                       ; $71fb: $ff
    rrca                                          ; $71fc: $0f
    and b                                         ; $71fd: $a0
    add hl, de                                    ; $71fe: $19
    ld b, h                                       ; $71ff: $44
    nop                                           ; $7200: $00
    or b                                          ; $7201: $b0
    ld e, c                                       ; $7202: $59
    nop                                           ; $7203: $00
    ld d, c                                       ; $7204: $51
    nop                                           ; $7205: $00
    or b                                          ; $7206: $b0
    ld e, c                                       ; $7207: $59
    ld [bc], a                                    ; $7208: $02
    or b                                          ; $7209: $b0
    ld h, c                                       ; $720a: $61
    ld bc, $a000                                  ; $720b: $01 $00 $a0
    ld b, b                                       ; $720e: $40
    ld h, c                                       ; $720f: $61
    ld e, l                                       ; $7210: $5d
    inc d                                         ; $7211: $14
    ld b, b                                       ; $7212: $40
    ld h, c                                       ; $7213: $61
    ld d, h                                       ; $7214: $54
    sub b                                         ; $7215: $90
    ld [hl], c                                    ; $7216: $71
    or b                                          ; $7217: $b0
    ld e, c                                       ; $7218: $59
    add b                                         ; $7219: $80
    ld e, b                                       ; $721a: $58
    ld b, b                                       ; $721b: $40
    add b                                         ; $721c: $80
    ld h, b                                       ; $721d: $60
    ld c, b                                       ; $721e: $48
    ld b, h                                       ; $721f: $44
    add b                                         ; $7220: $80
    ld h, b                                       ; $7221: $60
    ld b, $09                                     ; $7222: $06 $09
    ld h, b                                       ; $7224: $60
    dec de                                        ; $7225: $1b
    ld a, [hl]                                    ; $7226: $7e
    rrca                                          ; $7227: $0f
    or l                                          ; $7228: $b5
    db $10                                        ; $7229: $10
    ld c, [hl]                                    ; $722a: $4e
    ld l, e                                       ; $722b: $6b
    call nc, $0b60                                ; $722c: $d4 $60 $0b
    ld l, a                                       ; $722f: $6f
    sbc c                                         ; $7230: $99
    ei                                            ; $7231: $fb
    sbc l                                         ; $7232: $9d
    nop                                           ; $7233: $00
    ld sp, hl                                     ; $7234: $f9
    sbc a                                         ; $7235: $9f
    and a                                         ; $7236: $a7
    push de                                       ; $7237: $d5

jr_099_7238:
    push af                                       ; $7238: $f5
    sub a                                         ; $7239: $97
    or a                                          ; $723a: $b7
    rst $08                                       ; $723b: $cf
    nop                                           ; $723c: $00
    ld a, a                                       ; $723d: $7f
    ld d, d                                       ; $723e: $52
    ld e, e                                       ; $723f: $5b
    ld [hl], h                                    ; $7240: $74
    db $fc                                        ; $7241: $fc
    inc b                                         ; $7242: $04
    ld e, h                                       ; $7243: $5c
    and d                                         ; $7244: $a2
    nop                                           ; $7245: $00
    cp $22                                        ; $7246: $fe $22
    ld a, d                                       ; $7248: $7a
    and [hl]                                      ; $7249: $a6
    or [hl]                                       ; $724a: $b6
    ld l, d                                       ; $724b: $6a
    ld a, d                                       ; $724c: $7a
    add $00                                       ; $724d: $c6 $00
    db $ec                                        ; $724f: $ec
    sub h                                         ; $7250: $94
    call nc, $36ac                                ; $7251: $d4 $ac $36
    dec sp                                        ; $7254: $3b
    rra                                           ; $7255: $1f
    rra                                           ; $7256: $1f
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    rra                                           ; $7259: $1f
    dec [hl]                                      ; $725a: $35
    dec hl                                        ; $725b: $2b
    ld c, d                                       ; $725c: $4a
    halt                                          ; $725d: $76
    inc h                                         ; $725e: $24
    ld e, h                                       ; $725f: $5c
    nop                                           ; $7260: $00
    ld b, h                                       ; $7261: $44
    ld a, a                                       ; $7262: $7f
    ld d, a                                       ; $7263: $57
    ld l, h                                       ; $7264: $6c
    adc b                                         ; $7265: $88
    ld hl, sp-$08                                 ; $7266: $f8 $f8
    ld hl, sp+$00                                 ; $7268: $f8 $00
    inc b                                         ; $726a: $04
    db $fc                                        ; $726b: $fc
    sub d                                         ; $726c: $92
    xor $49                                       ; $726d: $ee $49
    ld [hl], a                                    ; $726f: $77
    inc h                                         ; $7270: $24
    dec sp                                        ; $7271: $3b
    nop                                           ; $7272: $00
    ld sp, $f4ff                                  ; $7273: $31 $ff $f4
    dec sp                                        ; $7276: $3b
    ld h, a                                       ; $7277: $67
    db $fc                                        ; $7278: $fc
    ld a, e                                       ; $7279: $7b
    or [hl]                                       ; $727a: $b6
    nop                                           ; $727b: $00
    db $db                                        ; $727c: $db
    cp [hl]                                       ; $727d: $be
    ld a, $ff                                     ; $727e: $3e $ff
    cp l                                          ; $7280: $bd
    sbc $4a                                       ; $7281: $de $4a
    ld [hl], l                                    ; $7283: $75
    add b                                         ; $7284: $80
    jr nc, jr_099_7292                            ; $7285: $30 $0b

    pop af                                        ; $7287: $f1
    ccf                                           ; $7288: $3f
    jp hl                                         ; $7289: $e9


    scf                                           ; $728a: $37
    rst $10                                       ; $728b: $d7
    ld a, a                                       ; $728c: $7f
    xor $04                                       ; $728d: $ee $04
    ld a, l                                       ; $728f: $7d

jr_099_7290:
    ld a, l                                       ; $7290: $7d
    ei                                            ; $7291: $fb

jr_099_7292:
    ld a, [c]                                     ; $7292: $f2
    ld a, [hl]                                    ; $7293: $7e
    jr nc, jr_099_72a1                            ; $7294: $30 $0b

    rst $38                                       ; $7296: $ff
    nop                                           ; $7297: $00
    ld d, l                                       ; $7298: $55
    ld [$05e8], a                                 ; $7299: $ea $e8 $05
    xor e                                         ; $729c: $ab
    halt                                          ; $729d: $76
    ld [bc], a                                    ; $729e: $02
    xor d                                         ; $729f: $aa
    ld d, b                                       ; $72a0: $50

jr_099_72a1:
    ld [hl+], a                                   ; $72a1: $22
    xor d                                         ; $72a2: $aa
    db $fc                                        ; $72a3: $fc
    ld bc, $ab04                                  ; $72a4: $01 $04 $ab

jr_099_72a7:
    nop                                           ; $72a7: $00
    ld e, a                                       ; $72a8: $5f
    nop                                           ; $72a9: $00
    or l                                          ; $72aa: $b5

jr_099_72ab:
    jr nz, jr_099_72bf                            ; $72ab: $20 $12

    rst $18                                       ; $72ad: $df
    jr nz, jr_099_7238                            ; $72ae: $20 $88

    db $10                                        ; $72b0: $10
    jr jr_099_7307                                ; $72b1: $18 $54

    ld [bc], a                                    ; $72b3: $02
    xor c                                         ; $72b4: $a9
    ld [hl], b                                    ; $72b5: $70
    ld [de], a                                    ; $72b6: $12
    nop                                           ; $72b7: $00
    rst $38                                       ; $72b8: $ff
    or $00                                        ; $72b9: $f6 $00
    add hl, bc                                    ; $72bb: $09
    db $ed                                        ; $72bc: $ed
    ld [de], a                                    ; $72bd: $12
    adc e                                         ; $72be: $8b

jr_099_72bf:
    ld [hl], h                                    ; $72bf: $74
    and l                                         ; $72c0: $a5
    jp c, $c24b                                   ; $72c1: $da $4b $c2

    or c                                          ; $72c4: $b1
    add hl, de                                    ; $72c5: $19
    jp nz, $8001                                  ; $72c6: $c2 $01 $80

    rst $38                                       ; $72c9: $ff
    ret nz                                        ; $72ca: $c0

    cp a                                          ; $72cb: $bf
    inc b                                         ; $72cc: $04
    jr jr_099_7290                                ; $72cd: $18 $c1

    ld a, b                                       ; $72cf: $78
    cp a                                          ; $72d0: $bf
    ld [bc], a                                    ; $72d1: $02
    ld [de], a                                    ; $72d2: $12
    dec c                                         ; $72d3: $0d
    dec bc                                        ; $72d4: $0b
    ld [bc], a                                    ; $72d5: $02
    db $10                                        ; $72d6: $10
    add b                                         ; $72d7: $80
    rrca                                          ; $72d8: $0f
    ld b, c                                       ; $72d9: $41
    cp a                                          ; $72da: $bf
    add e                                         ; $72db: $83
    inc b                                         ; $72dc: $04
    ld a, a                                       ; $72dd: $7f
    ld bc, $03ff                                  ; $72de: $01 $ff $03
    rst $38                                       ; $72e1: $ff
    inc b                                         ; $72e2: $04
    ld [$ffff], sp                                ; $72e3: $08 $ff $ff
    ld [$ffc3], sp                                ; $72e6: $08 $c3 $ff
    rst $10                                       ; $72e9: $d7
    rst $28                                       ; $72ea: $ef
    inc b                                         ; $72eb: $04
    ld c, b                                       ; $72ec: $48
    and c                                         ; $72ed: $a1
    ret nz                                        ; $72ee: $c0

    ret nz                                        ; $72ef: $c0

    ld hl, $a080                                  ; $72f0: $21 $80 $a0
    inc b                                         ; $72f3: $04
    jr nz, jr_099_72ab                            ; $72f4: $20 $b5

    ret nz                                        ; $72f6: $c0

    cp a                                          ; $72f7: $bf
    ret nz                                        ; $72f8: $c0

    ld h, $1b                                     ; $72f9: $26 $1b
    pop af                                        ; $72fb: $f1
    dec b                                         ; $72fc: $05
    jr jr_099_7353                                ; $72fd: $18 $54

    dec bc                                        ; $72ff: $0b
    ld e, [hl]                                    ; $7300: $5e
    ld [$0a26], sp                                ; $7301: $08 $26 $0a
    cp [hl]                                       ; $7304: $be
    pop bc                                        ; $7305: $c1
    and d                                         ; $7306: $a2

jr_099_7307:
    ld [bc], a                                    ; $7307: $02
    nop                                           ; $7308: $00
    jr nz, jr_099_72a7                            ; $7309: $20 $9c

    db $e3                                        ; $730b: $e3
    ld d, [hl]                                    ; $730c: $56
    jr @+$01                                      ; $730d: $18 $ff

    rst $38                                       ; $730f: $ff
    xor e                                         ; $7310: $ab
    rst $38                                       ; $7311: $ff
    push de                                       ; $7312: $d5
    db $10                                        ; $7313: $10
    cp $7e                                        ; $7314: $fe $7e
    add c                                         ; $7316: $81
    ld h, [hl]                                    ; $7317: $66
    jr z, jr_099_731a                             ; $7318: $28 $00

jr_099_731a:
    rst $38                                       ; $731a: $ff
    ld a, [hl]                                    ; $731b: $7e
    add c                                         ; $731c: $81
    ld b, b                                       ; $731d: $40

jr_099_731e:
    ld b, d                                       ; $731e: $42
    ld [bc], a                                    ; $731f: $02
    nop                                           ; $7320: $00
    inc a                                         ; $7321: $3c
    jp $e8ff                                      ; $7322: $c3 $ff $e8


    rst $38                                       ; $7325: $ff
    ld d, l                                       ; $7326: $55
    add b                                         ; $7327: $80
    inc b                                         ; $7328: $04
    ld c, b                                       ; $7329: $48
    nop                                           ; $732a: $00

jr_099_732b:
    nop                                           ; $732b: $00
    ccf                                           ; $732c: $3f
    ccf                                           ; $732d: $3f
    ld l, d                                       ; $732e: $6a
    ld d, l                                       ; $732f: $55
    halt                                          ; $7330: $76
    nop                                           ; $7331: $00
    ld a, a                                       ; $7332: $7f
    ld e, c                                       ; $7333: $59
    ld a, a                                       ; $7334: $7f
    ld [hl], e                                    ; $7335: $73
    ld e, a                                       ; $7336: $5f
    ld [hl], l                                    ; $7337: $75
    ld e, a                                       ; $7338: $5f
    ld a, e                                       ; $7339: $7b
    nop                                           ; $733a: $00
    ld e, a                                       ; $733b: $5f
    ld a, [c]                                     ; $733c: $f2
    db $dd                                        ; $733d: $dd
    ld [hl], b                                    ; $733e: $70
    rst $18                                       ; $733f: $df
    pop af                                        ; $7340: $f1
    sbc $76                                       ; $7341: $de $76
    nop                                           ; $7343: $00
    rst $18                                       ; $7344: $df
    ldh a, [$df]                                  ; $7345: $f0 $df
    ld d, e                                       ; $7347: $53
    db $fc                                        ; $7348: $fc
    call nc, Call_099_71fb                        ; $7349: $d4 $fb $71
    inc b                                         ; $734c: $04
    cp $f1                                        ; $734d: $fe $f1
    rst $38                                       ; $734f: $ff
    adc d                                         ; $7350: $8a
    push af                                       ; $7351: $f5
    ld l, b                                       ; $7352: $68

jr_099_7353:
    dec bc                                        ; $7353: $0b
    dec d                                         ; $7354: $15
    rra                                           ; $7355: $1f
    ld bc, $1709                                  ; $7356: $01 $09 $17
    ld [de], a                                    ; $7359: $12
    ld l, $3e                                     ; $735a: $2e $3e
    ld a, $81                                     ; $735c: $3e $81
    call z, $c830                                 ; $735e: $cc $30 $c8
    call nc, $8208                                ; $7361: $d4 $08 $82
    dec bc                                        ; $7364: $0b
    ld bc, $c0ff                                  ; $7365: $01 $ff $c0
    jr c, jr_099_732b                             ; $7368: $38 $c1

    cp a                                          ; $736a: $bf

jr_099_736b:
    ld [c], a                                     ; $736b: $e2
    jr nc, jr_099_736b                            ; $736c: $30 $fd

    sbc [hl]                                      ; $736e: $9e
    jr nc, jr_099_73c8                            ; $736f: $30 $57

    sub b                                         ; $7371: $90
    jr z, jr_099_731e                             ; $7372: $28 $aa

    rst $38                                       ; $7374: $ff
    push de                                       ; $7375: $d5
    rst $38                                       ; $7376: $ff
    jr nc, jr_099_73f8                            ; $7377: $30 $7f

    add b                                         ; $7379: $80
    or $28                                        ; $737a: $f6 $28
    and b                                         ; $737c: $a0
    ld [$fe55], sp                                ; $737d: $08 $55 $fe
    cp $01                                        ; $7380: $fe $01
    add hl, de                                    ; $7382: $19
    nop                                           ; $7383: $00
    rst $38                                       ; $7384: $ff
    pop bc                                        ; $7385: $c1
    ld d, b                                       ; $7386: $50
    rlca                                          ; $7387: $07
    ld [bc], a                                    ; $7388: $02
    jr z, jr_099_73e0                             ; $7389: $28 $55

    nop                                           ; $738b: $00
    ld [de], a                                    ; $738c: $12
    nop                                           ; $738d: $00
    adc d                                         ; $738e: $8a
    dec d                                         ; $738f: $15
    ld bc, $fe69                                  ; $7390: $01 $69 $fe
    cp $a5                                        ; $7393: $fe $a5
    nop                                           ; $7395: $00
    ld [$00a9], a                                 ; $7396: $ea $a9 $00
    ei                                            ; $7399: $fb
    call nz, Call_000_0435                        ; $739a: $c4 $35 $04
    db $f4                                        ; $739d: $f4
    ld a, [bc]                                    ; $739e: $0a
    cp a                                          ; $739f: $bf
    rst $38                                       ; $73a0: $ff
    dec [hl]                                      ; $73a1: $35

jr_099_73a2:
    ld b, d                                       ; $73a2: $42
    rlca                                          ; $73a3: $07
    ld d, l                                       ; $73a4: $55
    rst $38                                       ; $73a5: $ff
    ld b, c                                       ; $73a6: $41
    cp e                                          ; $73a7: $bb
    db $10                                        ; $73a8: $10
    db $10                                        ; $73a9: $10
    db $db                                        ; $73aa: $db
    rst $28                                       ; $73ab: $ef
    db $eb                                        ; $73ac: $eb
    rst $38                                       ; $73ad: $ff
    ld d, b                                       ; $73ae: $50
    ld d, d                                       ; $73af: $52
    nop                                           ; $73b0: $00
    db $10                                        ; $73b1: $10
    ld e, l                                       ; $73b2: $5d
    rst $38                                       ; $73b3: $ff
    xor $20                                       ; $73b4: $ee $20
    db $10                                        ; $73b6: $10
    xor d                                         ; $73b7: $aa
    db $fd                                        ; $73b8: $fd
    ld a, [hl]                                    ; $73b9: $7e
    rst $38                                       ; $73ba: $ff
    inc b                                         ; $73bb: $04
    xor l                                         ; $73bc: $ad
    rst $38                                       ; $73bd: $ff
    ld [bc], a                                    ; $73be: $02
    rst $38                                       ; $73bf: $ff
    ld a, l                                       ; $73c0: $7d
    or $07                                        ; $73c1: $f6 $07
    ld l, c                                       ; $73c3: $69
    cp $00                                        ; $73c4: $fe $00
    ret nz                                        ; $73c6: $c0

    ccf                                           ; $73c7: $3f

jr_099_73c8:
    ld [hl-], a                                   ; $73c8: $32
    db $fd                                        ; $73c9: $fd
    cp c                                          ; $73ca: $b9
    add $5a                                       ; $73cb: $c6 $5a
    rst $38                                       ; $73cd: $ff
    nop                                           ; $73ce: $00
    ld b, b                                       ; $73cf: $40
    cp a                                          ; $73d0: $bf
    db $d3                                        ; $73d1: $d3
    db $fc                                        ; $73d2: $fc
    xor $11                                       ; $73d3: $ee $11
    ld e, [hl]                                    ; $73d5: $5e
    and c                                         ; $73d6: $a1
    nop                                           ; $73d7: $00
    xor d                                         ; $73d8: $aa
    ld e, a                                       ; $73d9: $5f
    xor b                                         ; $73da: $a8
    rst $30                                       ; $73db: $f7
    ld d, l                                       ; $73dc: $55
    cp [hl]                                       ; $73dd: $be
    cp e                                          ; $73de: $bb
    ld b, a                                       ; $73df: $47

jr_099_73e0:
    nop                                           ; $73e0: $00
    ld a, [c]                                     ; $73e1: $f2
    db $fd                                        ; $73e2: $fd
    ret c                                         ; $73e3: $d8

    daa                                           ; $73e4: $27
    ld d, a                                       ; $73e5: $57
    ld hl, sp-$25                                 ; $73e6: $f8 $db
    rst $28                                       ; $73e8: $ef
    nop                                           ; $73e9: $00
    adc b                                         ; $73ea: $88
    rst $30                                       ; $73eb: $f7
    daa                                           ; $73ec: $27
    ld hl, sp+$33                                 ; $73ed: $f8 $33
    rst $08                                       ; $73ef: $cf
    xor [hl]                                      ; $73f0: $ae
    pop af                                        ; $73f1: $f1
    nop                                           ; $73f2: $00
    or b                                          ; $73f3: $b0
    ld c, a                                       ; $73f4: $4f
    push de                                       ; $73f5: $d5
    rst $28                                       ; $73f6: $ef
    ld e, e                                       ; $73f7: $5b

jr_099_73f8:
    and h                                         ; $73f8: $a4
    xor e                                         ; $73f9: $ab
    db $fc                                        ; $73fa: $fc
    nop                                           ; $73fb: $00
    nop                                           ; $73fc: $00
    rst $38                                       ; $73fd: $ff
    ld e, c                                       ; $73fe: $59
    cp [hl]                                       ; $73ff: $be
    dec sp                                        ; $7400: $3b
    push bc                                       ; $7401: $c5
    sub a                                         ; $7402: $97
    ld a, a                                       ; $7403: $7f
    nop                                           ; $7404: $00
    ld l, $d1                                     ; $7405: $2e $d1
    call nc, Call_000_12ff                        ; $7407: $d4 $ff $12
    db $ed                                        ; $740a: $ed
    ld d, [hl]                                    ; $740b: $56
    rst $38                                       ; $740c: $ff
    jr nc, jr_099_73a2                            ; $740d: $30 $93

    ld l, h                                       ; $740f: $6c
    jr z, jr_099_7426                             ; $7410: $28 $14

    dec bc                                        ; $7412: $0b
    inc e                                         ; $7413: $1c
    nop                                           ; $7414: $00
    xor d                                         ; $7415: $aa
    push de                                       ; $7416: $d5
    ld bc, $fe42                                  ; $7417: $01 $42 $fe
    db $10                                        ; $741a: $10
    ld c, b                                       ; $741b: $48
    ld e, h                                       ; $741c: $5c
    rst $38                                       ; $741d: $ff
    inc l                                         ; $741e: $2c
    db $d3                                        ; $741f: $d3
    jr nz, jr_099_746a                            ; $7420: $20 $48

    rst $10                                       ; $7422: $d7
    ld h, b                                       ; $7423: $60
    jr c, jr_099_7496                             ; $7424: $38 $70

jr_099_7426:
    add hl, de                                    ; $7426: $19
    jr nc, jr_099_7451                            ; $7427: $30 $28

    nop                                           ; $7429: $00
    nop                                           ; $742a: $00
    db $fc                                        ; $742b: $fc
    db $fc                                        ; $742c: $fc
    xor [hl]                                      ; $742d: $ae
    nop                                           ; $742e: $00
    ld d, d                                       ; $742f: $52
    cp [hl]                                       ; $7430: $be
    cp $1a                                        ; $7431: $fe $1a
    cp $ee                                        ; $7433: $fe $ee
    ld a, [$005e]                                 ; $7435: $fa $5e $00
    ld a, [$fabe]                                 ; $7438: $fa $be $fa
    adc a                                         ; $743b: $8f
    ld a, e                                       ; $743c: $7b
    sbc $fb                                       ; $743d: $de $fb
    rrca                                          ; $743f: $0f
    ld [bc], a                                    ; $7440: $02
    ei                                            ; $7441: $fb
    cp [hl]                                       ; $7442: $be
    ld a, e                                       ; $7443: $7b
    ld c, a                                       ; $7444: $4f
    cp e                                          ; $7445: $bb
    ld l, d                                       ; $7446: $6a
    jp nc, $8e03                                  ; $7447: $d2 $03 $8e

    inc b                                         ; $744a: $04
    ld a, a                                       ; $744b: $7f
    ccf                                           ; $744c: $3f
    rst $38                                       ; $744d: $ff
    and c                                         ; $744e: $a1
    ld e, a                                       ; $744f: $5f
    cp b                                          ; $7450: $b8

jr_099_7451:
    inc c                                         ; $7451: $0c
    ld e, b                                       ; $7452: $58
    ld hl, sp+$00                                 ; $7453: $f8 $00
    sub b                                         ; $7455: $90
    add sp, $48                                   ; $7456: $e8 $48
    ld [hl], h                                    ; $7458: $74
    ld a, h                                       ; $7459: $7c
    ld a, h                                       ; $745a: $7c
    jr nz, jr_099_749c                            ; $745b: $20 $3f

    nop                                           ; $745d: $00
    rla                                           ; $745e: $17
    jr z, jr_099_7490                             ; $745f: $28 $2f

    jr nc, @+$21                                  ; $7461: $30 $1f

    jr nz, jr_099_7484                            ; $7463: $20 $1f

    jr nz, jr_099_7467                            ; $7465: $20 $00

jr_099_7467:
    ccf                                           ; $7467: $3f
    jr nz, jr_099_7481                            ; $7468: $20 $17

jr_099_746a:
    jr z, jr_099_7496                             ; $746a: $28 $2a

    dec [hl]                                      ; $746c: $35
    inc b                                         ; $746d: $04
    db $fc                                        ; $746e: $fc
    inc bc                                        ; $746f: $03
    xor b                                         ; $7470: $a8
    ld d, h                                       ; $7471: $54
    db $f4                                        ; $7472: $f4
    inc c                                         ; $7473: $0c
    ld hl, sp+$04                                 ; $7474: $f8 $04
    and l                                         ; $7476: $a5
    ld [bc], a                                    ; $7477: $02
    inc b                                         ; $7478: $04
    nop                                           ; $7479: $00
    nop                                           ; $747a: $00
    db $f4                                        ; $747b: $f4
    inc c                                         ; $747c: $0c
    ld a, [hl+]                                   ; $747d: $2a
    ccf                                           ; $747e: $3f
    jr nz, jr_099_74b3                            ; $747f: $20 $32

jr_099_7481:
    jr nz, jr_099_74ac                            ; $7481: $20 $29

    nop                                           ; $7483: $00

jr_099_7484:
    jr nc, @+$36                                  ; $7484: $30 $34

    jr nz, @+$3c                                  ; $7486: $20 $3a

    jr nc, jr_099_74c7                            ; $7488: $30 $3d

    jr z, jr_099_74ca                             ; $748a: $28 $3e

    nop                                           ; $748c: $00
    ccf                                           ; $748d: $3f
    ccf                                           ; $748e: $3f
    xor h                                         ; $748f: $ac

jr_099_7490:
    db $fc                                        ; $7490: $fc
    inc l                                         ; $7491: $2c
    db $fc                                        ; $7492: $fc
    inc d                                         ; $7493: $14
    ld a, h                                       ; $7494: $7c
    nop                                           ; $7495: $00

jr_099_7496:
    inc c                                         ; $7496: $0c
    cp h                                          ; $7497: $bc
    inc b                                         ; $7498: $04
    ld e, h                                       ; $7499: $5c
    inc c                                         ; $749a: $0c
    inc l                                         ; $749b: $2c

jr_099_749c:
    inc b                                         ; $749c: $04
    sbc h                                         ; $749d: $9c
    nop                                           ; $749e: $00
    db $fc                                        ; $749f: $fc
    db $fc                                        ; $74a0: $fc
    ld l, $f1                                     ; $74a1: $2e $f1
    rst $18                                       ; $74a3: $df
    ldh [$2f], a                                  ; $74a4: $e0 $2f
    ret nc                                        ; $74a6: $d0

    inc c                                         ; $74a7: $0c
    ld d, a                                       ; $74a8: $57
    adc b                                         ; $74a9: $88
    db $ed                                        ; $74aa: $ed
    ld [de], a                                    ; $74ab: $12

jr_099_74ac:
    or b                                          ; $74ac: $b0
    dec e                                         ; $74ad: $1d
    ld d, b                                       ; $74ae: $50
    dec l                                         ; $74af: $2d
    ccf                                           ; $74b0: $3f
    nop                                           ; $74b1: $00
    ld [bc], a                                    ; $74b2: $02

jr_099_74b3:
    rla                                           ; $74b3: $17
    ld [$04bb], sp                                ; $74b4: $08 $bb $04
    xor a                                         ; $74b7: $af
    ld [hl], b                                    ; $74b8: $70
    ldh [$5f], a                                  ; $74b9: $e0 $5f
    cp d                                          ; $74bb: $ba
    ld b, b                                       ; $74bc: $40
    ld b, h                                       ; $74bd: $44
    rst $18                                       ; $74be: $df
    rla                                           ; $74bf: $17
    rlca                                          ; $74c0: $07
    ld c, $19                                     ; $74c1: $0e $19
    dec d                                         ; $74c3: $15
    ld l, $76                                     ; $74c4: $2e $76
    nop                                           ; $74c6: $00

jr_099_74c7:
    ld e, c                                       ; $74c7: $59
    cp $a3                                        ; $74c8: $fe $a3

jr_099_74ca:
    rst $38                                       ; $74ca: $ff
    xor c                                         ; $74cb: $a9
    db $10                                        ; $74cc: $10
    jr nc, jr_099_7541                            ; $74cd: $30 $72

    nop                                           ; $74cf: $00
    ld e, [hl]                                    ; $74d0: $5e
    rra                                           ; $74d1: $1f
    ld h, c                                       ; $74d2: $61
    cp l                                          ; $74d3: $bd
    jp $f64a                                      ; $74d4: $c3 $4a $f6


    ld a, h                                       ; $74d7: $7c
    nop                                           ; $74d8: $00
    call c, $b0d0                                 ; $74d9: $dc $d0 $b0
    and b                                         ; $74dc: $a0
    ld h, b                                       ; $74dd: $60
    ld l, $d1                                     ; $74de: $2e $d1
    db $dd                                        ; $74e0: $dd
    ld h, b                                       ; $74e1: $60
    ld [hl+], a                                   ; $74e2: $22
    and b                                         ; $74e3: $a0
    rra                                           ; $74e4: $1f
    nop                                           ; $74e5: $00
    ld e, $8f                                     ; $74e6: $1e $8f
    ld a, [c]                                     ; $74e8: $f2
    and $bd                                       ; $74e9: $e6 $bd
    cp a                                          ; $74eb: $bf
    nop                                           ; $74ec: $00
    call c, Call_099_695e                         ; $74ed: $dc $5e $69
    dec l                                         ; $74f0: $2d
    inc sp                                        ; $74f1: $33
    add hl, bc                                    ; $74f2: $09
    rla                                           ; $74f3: $17
    ld e, $04                                     ; $74f4: $1e $04
    inc hl                                        ; $74f6: $23
    dec hl                                        ; $74f7: $2b
    ld [hl], $20                                  ; $74f8: $36 $20
    ldh [$3a], a                                  ; $74fa: $e0 $3a
    inc b                                         ; $74fc: $04
    ret nz                                        ; $74fd: $c0

    and b                                         ; $74fe: $a0
    nop                                           ; $74ff: $00
    ldh [rNR41], a                                ; $7500: $e0 $20
    pop hl                                        ; $7502: $e1
    ld bc, $e1e2                                  ; $7503: $01 $e2 $e1
    ld h, e                                       ; $7506: $63
    ld b, d                                       ; $7507: $42
    ld b, b                                       ; $7508: $40
    rst $20                                       ; $7509: $e7
    or l                                          ; $750a: $b5
    dec d                                         ; $750b: $15
    ld [hl], b                                    ; $750c: $70
    ld a, b                                       ; $750d: $78
    add h                                         ; $750e: $84
    ldh [$7e], a                                  ; $750f: $e0 $7e
    sbc h                                         ; $7511: $9c
    nop                                           ; $7512: $00
    rst $20                                       ; $7513: $e7
    ld [hl], c                                    ; $7514: $71
    cp a                                          ; $7515: $bf
    bit 6, l                                      ; $7516: $cb $75
    rla                                           ; $7518: $17
    inc e                                         ; $7519: $1c
    ld b, $00                                     ; $751a: $06 $00
    add hl, bc                                    ; $751c: $09
    inc c                                         ; $751d: $0c
    dec bc                                        ; $751e: $0b
    ld b, $1f                                     ; $751f: $06 $1f
    inc e                                         ; $7521: $1c
    inc hl                                        ; $7522: $23
    dec hl                                        ; $7523: $2b
    nop                                           ; $7524: $00
    scf                                           ; $7525: $37
    rra                                           ; $7526: $1f
    ccf                                           ; $7527: $3f
    dec [hl]                                      ; $7528: $35
    rst $30                                       ; $7529: $f7
    ldh [$a7], a                                  ; $752a: $e0 $a7
    rst $00                                       ; $752c: $c7
    nop                                           ; $752d: $00
    cpl                                           ; $752e: $2f
    ld l, l                                       ; $752f: $6d
    cp l                                          ; $7530: $bd
    or b                                          ; $7531: $b0
    ldh a, [$60]                                  ; $7532: $f0 $60
    sub b                                         ; $7534: $90
    db $f4                                        ; $7535: $f4
    nop                                           ; $7536: $00
    inc c                                         ; $7537: $0c
    ld a, [hl]                                    ; $7538: $7e
    add d                                         ; $7539: $82
    xor [hl]                                      ; $753a: $ae
    jp nc, $abd5                                  ; $753b: $d2 $d5 $ab

    ld a, [$fe06]                                 ; $753e: $fa $06 $fe

jr_099_7541:
    xor [hl]                                      ; $7541: $ae
    cp $7c                                        ; $7542: $fe $7c
    ld a, h                                       ; $7544: $7c
    rst $00                                       ; $7545: $c7
    ld a, [hl+]                                   ; $7546: $2a
    ret nz                                        ; $7547: $c0

    rra                                           ; $7548: $1f
    ld e, [hl]                                    ; $7549: $5e
    add b                                         ; $754a: $80
    ret nz                                        ; $754b: $c0

    scf                                           ; $754c: $37
    push bc                                       ; $754d: $c5
    rst $00                                       ; $754e: $c7
    ld [bc], a                                    ; $754f: $02
    inc bc                                        ; $7550: $03
    ld [bc], a                                    ; $7551: $02
    inc bc                                        ; $7552: $03
    ld b, $00                                     ; $7553: $06 $00
    rlca                                          ; $7555: $07
    ld b, $07                                     ; $7556: $06 $07
    ld [bc], a                                    ; $7558: $02
    inc bc                                        ; $7559: $03
    inc b                                         ; $755a: $04
    rrca                                          ; $755b: $0f
    ld c, $00                                     ; $755c: $0e $00
    ld sp, $ef53                                  ; $755e: $31 $53 $ef
    xor e                                         ; $7561: $ab
    rst $38                                       ; $7562: $ff
    db $fd                                        ; $7563: $fd
    rst $38                                       ; $7564: $ff
    add l                                         ; $7565: $85
    nop                                           ; $7566: $00
    add a                                         ; $7567: $87
    add a                                         ; $7568: $87
    add a                                         ; $7569: $87
    add b                                         ; $756a: $80
    add b                                         ; $756b: $80
    or b                                          ; $756c: $b0
    ldh a, [$f0]                                  ; $756d: $f0 $f0
    db $10                                        ; $756f: $10
    adc h                                         ; $7570: $8c
    xor [hl]                                      ; $7571: $ae
    ld d, c                                       ; $7572: $51
    ld [hl], b                                    ; $7573: $70
    ld h, a                                       ; $7574: $67
    ld b, c                                       ; $7575: $41
    ld a, [hl]                                    ; $7576: $7e
    add c                                         ; $7577: $81
    add sp, $04                                   ; $7578: $e8 $04
    sub a                                         ; $757a: $97
    ld [hl], c                                    ; $757b: $71
    adc a                                         ; $757c: $8f
    cp l                                          ; $757d: $bd
    jp nz, Jump_000_1ef0                          ; $757e: $c2 $f0 $1e

    db $fc                                        ; $7581: $fc
    add d                                         ; $7582: $82
    nop                                           ; $7583: $00
    cp $81                                        ; $7584: $fe $81
    sub a                                         ; $7586: $97
    jp hl                                         ; $7587: $e9


    ld c, $f1                                     ; $7588: $0e $f1
    ld e, l                                       ; $758a: $5d
    and e                                         ; $758b: $a3
    add h                                         ; $758c: $84
    ldh a, [rNR34]                                ; $758d: $f0 $1e
    ld e, e                                       ; $758f: $5b
    and h                                         ; $7590: $a4
    cp a                                          ; $7591: $bf
    ld b, b                                       ; $7592: $40
    jr nc, jr_099_75e2                            ; $7593: $30 $4d

    rst $38                                       ; $7595: $ff
    nop                                           ; $7596: $00
    nop                                           ; $7597: $00
    ld a, d                                       ; $7598: $7a
    add l                                         ; $7599: $85
    push af                                       ; $759a: $f5
    ld a, [bc]                                    ; $759b: $0a
    rst $28                                       ; $759c: $ef
    ld de, $ae57                                  ; $759d: $11 $57 $ae
    inc bc                                        ; $75a0: $03
    xor h                                         ; $75a1: $ac
    ld d, a                                       ; $75a2: $57
    rst $10                                       ; $75a3: $d7
    dec hl                                        ; $75a4: $2b
    cp l                                          ; $75a5: $bd
    ld b, e                                       ; $75a6: $43
    ret nc                                        ; $75a7: $d0

    ld e, d                                       ; $75a8: $5a
    and b                                         ; $75a9: $a0
    dec bc                                        ; $75aa: $0b
    rlca                                          ; $75ab: $07
    ld bc, $a9ff                                  ; $75ac: $01 $ff $a9
    ld d, a                                       ; $75af: $57
    ld bc, $038e                                  ; $75b0: $01 $8e $03
    inc b                                         ; $75b3: $04
    ld [$0e0f], sp                                ; $75b4: $08 $0f $0e
    nop                                           ; $75b7: $00
    inc b                                         ; $75b8: $04
    ld b, $0e                                     ; $75b9: $06 $0e
    add hl, bc                                    ; $75bb: $09
    rra                                           ; $75bc: $1f
    inc d                                         ; $75bd: $14
    rla                                           ; $75be: $17
    ld a, [de]                                    ; $75bf: $1a
    nop                                           ; $75c0: $00
    dec de                                        ; $75c1: $1b
    inc e                                         ; $75c2: $1c
    dec d                                         ; $75c3: $15
    ld e, $0b                                     ; $75c4: $1e $0b
    inc c                                         ; $75c6: $0c
    dec b                                         ; $75c7: $05
    ld b, $18                                     ; $75c8: $06 $18
    inc bc                                        ; $75ca: $03
    inc bc                                        ; $75cb: $03
    ld bc, $02a6                                  ; $75cc: $01 $a6 $02
    add a                                         ; $75cf: $87
    dec hl                                        ; $75d0: $2b
    ld [bc], a                                    ; $75d1: $02
    inc bc                                        ; $75d2: $03
    rlca                                          ; $75d3: $07
    jr @+$06                                      ; $75d4: $18 $04

    dec b                                         ; $75d6: $05
    ld b, $b4                                     ; $75d7: $06 $b4
    ld [$1816], sp                                ; $75d9: $08 $16 $18
    ld a, a                                       ; $75dc: $7f
    add b                                         ; $75dd: $80
    xor c                                         ; $75de: $a9
    nop                                           ; $75df: $00
    ld d, [hl]                                    ; $75e0: $56
    ld d, h                                       ; $75e1: $54

jr_099_75e2:
    xor c                                         ; $75e2: $a9
    db $fd                                        ; $75e3: $fd
    rrca                                          ; $75e4: $0f
    sub $2f                                       ; $75e5: $d6 $2f
    dec bc                                        ; $75e7: $0b
    ld bc, $5514                                  ; $75e8: $01 $14 $55
    ld [$10ab], sp                                ; $75eb: $08 $ab $10
    cpl                                           ; $75ee: $2f
    ldh a, [$a0]                                  ; $75ef: $f0 $a0
    add hl, de                                    ; $75f1: $19
    ld [$10ef], sp                                ; $75f2: $08 $ef $10
    rla                                           ; $75f5: $17
    add sp, $50                                   ; $75f6: $e8 $50
    rrca                                          ; $75f8: $0f
    ld a, [hl]                                    ; $75f9: $7e
    nop                                           ; $75fa: $00
    rst $08                                       ; $75fb: $cf
    nop                                           ; $75fc: $00
    db $10                                        ; $75fd: $10
    ei                                            ; $75fe: $fb
    nop                                           ; $75ff: $00
    ld l, d                                       ; $7600: $6a
    sub l                                         ; $7601: $95
    rst $30                                       ; $7602: $f7
    ld l, b                                       ; $7603: $68
    ei                                            ; $7604: $fb
    rlca                                          ; $7605: $07
    sub h                                         ; $7606: $94
    dec [hl]                                      ; $7607: $35
    ld a, [$f4fb]                                 ; $7608: $fa $fb $f4
    rst $08                                       ; $760b: $cf
    ld b, e                                       ; $760c: $43
    adc b                                         ; $760d: $88
    ld c, $5a                                     ; $760e: $0e $5a
    ld [$0800], sp                                ; $7610: $08 $00 $08
    jr @+$16                                      ; $7613: $18 $14

    inc e                                         ; $7615: $1c
    ld [de], a                                    ; $7616: $12
    inc c                                         ; $7617: $0c
    ld [de], a                                    ; $7618: $12
    rla                                           ; $7619: $17
    nop                                           ; $761a: $00
    add hl, hl                                    ; $761b: $29
    cp a                                          ; $761c: $bf
    pop bc                                        ; $761d: $c1
    ld l, e                                       ; $761e: $6b
    sub l                                         ; $761f: $95
    db $dd                                        ; $7620: $dd
    nop                                           ; $7621: $00
    or [hl]                                       ; $7622: $b6
    ld [$5a48], sp                                ; $7623: $08 $48 $5a
    and l                                         ; $7626: $a5
    db $cd, $0d, $01                              ; $7627: $cd $0d $01
    add hl, hl                                    ; $762a: $29
    ld b, $d3                                     ; $762b: $06 $d3
    nop                                           ; $762d: $00
    dec c                                         ; $762e: $0d
    xor $11                                       ; $762f: $ee $11
    ld e, e                                       ; $7631: $5b
    and h                                         ; $7632: $a4
    or a                                          ; $7633: $b7
    ld c, b                                       ; $7634: $48
    ld [hl], a                                    ; $7635: $77
    ld h, b                                       ; $7636: $60
    adc b                                         ; $7637: $88
    ld a, $06                                     ; $7638: $3e $06
    nop                                           ; $763a: $00
    ld h, $02                                     ; $763b: $26 $02
    inc bc                                        ; $763d: $03
    dec b                                         ; $763e: $05
    ld b, $0a                                     ; $763f: $06 $0a
    nop                                           ; $7641: $00
    dec c                                         ; $7642: $0d
    ld bc, $100e                                  ; $7643: $01 $0e $10
    rra                                           ; $7646: $1f
    ld d, l                                       ; $7647: $55
    ld a, a                                       ; $7648: $7f
    add b                                         ; $7649: $80
    add b                                         ; $764a: $80
    or $03                                        ; $764b: $f6 $03
    cp $01                                        ; $764d: $fe $01
    or a                                          ; $764f: $b7
    ld c, c                                       ; $7650: $49
    cp $01                                        ; $7651: $fe $01
    xor e                                         ; $7653: $ab
    nop                                           ; $7654: $00
    ld d, l                                       ; $7655: $55
    call nz, $fa3b                                ; $7656: $c4 $3b $fa
    db $fd                                        ; $7659: $fd
    dec h                                         ; $765a: $25
    cp $f2                                        ; $765b: $fe $f2
    and b                                         ; $765d: $a0
    cpl                                           ; $765e: $2f
    inc h                                         ; $765f: $24
    add b                                         ; $7660: $80
    ld bc, $4020                                  ; $7661: $01 $20 $40
    ret nz                                        ; $7664: $c0

    ld a, [hl]                                    ; $7665: $7e
    ld a, a                                       ; $7666: $7f
    ld l, a                                       ; $7667: $6f
    ld bc, $5f50                                  ; $7668: $01 $50 $5f
    ld h, b                                       ; $766b: $60
    ccf                                           ; $766c: $3f
    add hl, sp                                    ; $766d: $39
    ld d, $19                                     ; $766e: $16 $19
    halt                                          ; $7670: $76
    ld a, [bc]                                    ; $7671: $0a
    nop                                           ; $7672: $00
    ld e, l                                       ; $7673: $5d
    ld h, d                                       ; $7674: $62
    ld a, [hl]                                    ; $7675: $7e
    adc a                                         ; $7676: $8f
    db $fd                                        ; $7677: $fd
    rlca                                          ; $7678: $07
    rst $30                                       ; $7679: $f7
    inc c                                         ; $767a: $0c
    nop                                           ; $767b: $00
    ei                                            ; $767c: $fb
    db $fc                                        ; $767d: $fc
    rst $30                                       ; $767e: $f7
    ld hl, sp-$01                                 ; $767f: $f8 $ff
    nop                                           ; $7681: $00
    ld l, e                                       ; $7682: $6b
    sub h                                         ; $7683: $94
    inc b                                         ; $7684: $04
    sub l                                         ; $7685: $95
    xor $40                                       ; $7686: $ee $40
    ret nz                                        ; $7688: $c0

    ldh [rNR34], a                                ; $7689: $e0 $1e
    ld b, $f0                                     ; $768b: $06 $f0
    jr nc, jr_099_768f                            ; $768d: $30 $00

jr_099_768f:
    xor b                                         ; $768f: $a8
    ld a, b                                       ; $7690: $78
    ld b, h                                       ; $7691: $44
    db $fc                                        ; $7692: $fc
    add h                                         ; $7693: $84
    db $fc                                        ; $7694: $fc
    call nz, $90fc                                ; $7695: $c4 $fc $90
    ld b, b                                       ; $7698: $40
    ld a, [de]                                    ; $7699: $1a
    ld [$7015], a                                 ; $769a: $ea $15 $70
    ld l, $a9                                     ; $769d: $2e $a9
    ld b, $53                                     ; $769f: $06 $53
    xor [hl]                                      ; $76a1: $ae
    nop                                           ; $76a2: $00
    sub a                                         ; $76a3: $97
    cp $7d                                        ; $76a4: $fe $7d
    cp $a7                                        ; $76a6: $fe $a7
    ld a, b                                       ; $76a8: $78
    ld a, [$0801]                                 ; $76a9: $fa $01 $08
    ld e, e                                       ; $76ac: $5b
    and h                                         ; $76ad: $a4
    or l                                          ; $76ae: $b5
    ld c, d                                       ; $76af: $4a
    push de                                       ; $76b0: $d5
    rlca                                          ; $76b1: $07
    jr nz, jr_099_7714                            ; $76b2: $20 $60

    ld d, b                                       ; $76b4: $50
    nop                                           ; $76b5: $00
    ld h, b                                       ; $76b6: $60
    ret nc                                        ; $76b7: $d0

    ldh [rNR10], a                                ; $76b8: $e0 $10
    ldh a, [rNR10]                                ; $76ba: $f0 $10
    ld hl, sp+$28                                 ; $76bc: $f8 $28
    nop                                           ; $76be: $00
    xor h                                         ; $76bf: $ac
    ld [hl], h                                    ; $76c0: $74
    dec sp                                        ; $76c1: $3b
    ld b, a                                       ; $76c2: $47
    ld [hl], h                                    ; $76c3: $74
    adc a                                         ; $76c4: $8f
    ld a, a                                       ; $76c5: $7f
    adc a                                         ; $76c6: $8f
    nop                                           ; $76c7: $00
    add sp, -$61                                  ; $76c8: $e8 $9f
    sub a                                         ; $76ca: $97
    rst $30                                       ; $76cb: $f7
    ld l, a                                       ; $76cc: $6f
    ld l, b                                       ; $76cd: $68
    rrca                                          ; $76ce: $0f
    ld [$0f00], sp                                ; $76cf: $08 $00 $0f
    rrca                                          ; $76d2: $0f
    ei                                            ; $76d3: $fb
    cp $06                                        ; $76d4: $fe $06
    rst $38                                       ; $76d6: $ff
    rst $38                                       ; $76d7: $ff
    ei                                            ; $76d8: $fb
    nop                                           ; $76d9: $00
    dec e                                         ; $76da: $1d
    rst $30                                       ; $76db: $f7
    ld d, l                                       ; $76dc: $55
    rst $28                                       ; $76dd: $ef
    jp hl                                         ; $76de: $e9


    rra                                           ; $76df: $1f
    or c                                          ; $76e0: $b1
    ld a, a                                       ; $76e1: $7f
    nop                                           ; $76e2: $00
    ld b, d                                       ; $76e3: $42
    rst $38                                       ; $76e4: $ff
    ld [c], a                                     ; $76e5: $e2
    ld a, [hl]                                    ; $76e6: $7e
    ld b, d                                       ; $76e7: $42
    cp $e1                                        ; $76e8: $fe $e1
    ld a, a                                       ; $76ea: $7f
    nop                                           ; $76eb: $00
    pop de                                        ; $76ec: $d1
    ld a, a                                       ; $76ed: $7f
    jp hl                                         ; $76ee: $e9


    ld a, a                                       ; $76ef: $7f
    rst $10                                       ; $76f0: $d7
    ld a, a                                       ; $76f1: $7f
    db $fd                                        ; $76f2: $fd
    ld a, d                                       ; $76f3: $7a
    nop                                           ; $76f4: $00
    ei                                            ; $76f5: $fb
    inc l                                         ; $76f6: $2c
    ld e, h                                       ; $76f7: $5c
    ld [c], a                                     ; $76f8: $e2
    xor e                                         ; $76f9: $ab
    push de                                       ; $76fa: $d5
    sub l                                         ; $76fb: $95
    ld [$ca00], a                                 ; $76fc: $ea $00 $ca
    push af                                       ; $76ff: $f5
    ld l, c                                       ; $7700: $69
    ld a, [hl]                                    ; $7701: $7e
    dec [hl]                                      ; $7702: $35
    ccf                                           ; $7703: $3f
    ld c, $0f                                     ; $7704: $0e $0f
    nop                                           ; $7706: $00
    ld bc, $1001                                  ; $7707: $01 $01 $10
    rra                                           ; $770a: $1f
    ld a, b                                       ; $770b: $78
    rst $38                                       ; $770c: $ff
    ld d, c                                       ; $770d: $51
    cp a                                          ; $770e: $bf
    nop                                           ; $770f: $00
    or h                                          ; $7710: $b4
    ld e, a                                       ; $7711: $5f
    ld e, a                                       ; $7712: $5f
    xor a                                         ; $7713: $af

jr_099_7714:
    ld a, [hl+]                                   ; $7714: $2a
    push de                                       ; $7715: $d5
    xor c                                         ; $7716: $a9
    cp $00                                        ; $7717: $fe $00
    ld a, [$2afd]                                 ; $7719: $fa $fd $2a
    rst $38                                       ; $771c: $ff
    ld b, $ff                                     ; $771d: $06 $ff
    rra                                           ; $771f: $1f
    ld hl, sp+$40                                 ; $7720: $f8 $40
    ld a, a                                       ; $7722: $7f
    ld b, b                                       ; $7723: $40
    inc b                                         ; $7724: $04
    add d                                         ; $7725: $82
    ld a, l                                       ; $7726: $7d
    ld d, l                                       ; $7727: $55
    xor d                                         ; $7728: $aa
    xor d                                         ; $7729: $aa
    ld d, l                                       ; $772a: $55
    nop                                           ; $772b: $00
    xor l                                         ; $772c: $ad
    ld e, d                                       ; $772d: $5a
    ld e, d                                       ; $772e: $5a
    or l                                          ; $772f: $b5
    or h                                          ; $7730: $b4
    ld l, e                                       ; $7731: $6b
    xor d                                         ; $7732: $aa
    push de                                       ; $7733: $d5
    nop                                           ; $7734: $00
    ld d, l                                       ; $7735: $55
    xor a                                         ; $7736: $af
    xor a                                         ; $7737: $af
    ld a, a                                       ; $7738: $7f
    ld e, b                                       ; $7739: $58
    ld hl, sp-$60                                 ; $773a: $f8 $a0
    ld h, b                                       ; $773c: $60
    add b                                         ; $773d: $80
    ccf                                           ; $773e: $3f

Jump_099_773f:
    ld e, c                                       ; $773f: $59
    inc b                                         ; $7740: $04
    rlca                                          ; $7741: $07
    dec c                                         ; $7742: $0d
    ld c, $0a                                     ; $7743: $0e $0a
    dec c                                         ; $7745: $0d
    dec d                                         ; $7746: $15
    nop                                           ; $7747: $00
    ld e, $1a                                     ; $7748: $1e $1a
    dec e                                         ; $774a: $1d
    dec d                                         ; $774b: $15
    ld e, $5c                                     ; $774c: $1e $5c
    ld a, a                                       ; $774e: $7f
    and e                                         ; $774f: $a3
    db $10                                        ; $7750: $10
    rst $18                                       ; $7751: $df
    ld d, d                                       ; $7752: $52
    xor l                                         ; $7753: $ad
    inc [hl]                                      ; $7754: $34
    ld [$ab54], sp                                ; $7755: $08 $54 $ab
    xor b                                         ; $7758: $a8
    ld d, a                                       ; $7759: $57
    nop                                           ; $775a: $00
    ld d, c                                       ; $775b: $51
    xor a                                         ; $775c: $af
    and d                                         ; $775d: $a2
    ld e, a                                       ; $775e: $5f
    add l                                         ; $775f: $85
    rst $38                                       ; $7760: $ff
    ld a, [hl]                                    ; $7761: $7e
    rst $38                                       ; $7762: $ff
    nop                                           ; $7763: $00
    ld b, b                                       ; $7764: $40
    ret nz                                        ; $7765: $c0

    ld b, b                                       ; $7766: $40
    jp $8483                                      ; $7767: $c3 $83 $84


    add e                                         ; $776a: $83
    add e                                         ; $776b: $83
    ret nz                                        ; $776c: $c0

    ld [de], a                                    ; $776d: $12
    add hl, bc                                    ; $776e: $09
    jr jr_099_777a                                ; $776f: $18 $09

    add hl, bc                                    ; $7771: $09
    adc [hl]                                      ; $7772: $8e
    sub b                                         ; $7773: $90
    ld e, a                                       ; $7774: $5f
    db $e4                                        ; $7775: $e4
    dec sp                                        ; $7776: $3b
    nop                                           ; $7777: $00
    pop af                                        ; $7778: $f1
    rra                                           ; $7779: $1f

jr_099_777a:
    ld [hl], e                                    ; $777a: $73
    sbc a                                         ; $777b: $9f
    ld a, $ce                                     ; $777c: $3e $ce
    sbc h                                         ; $777e: $9c
    db $ec                                        ; $777f: $ec
    db $10                                        ; $7780: $10
    ld c, b                                       ; $7781: $48
    ld a, b                                       ; $7782: $78
    nop                                           ; $7783: $00
    rra                                           ; $7784: $1f
    dec b                                         ; $7785: $05

jr_099_7786:
    cp a                                          ; $7786: $bf
    rst $38                                       ; $7787: $ff
    ld h, b                                       ; $7788: $60
    ldh [$c0], a                                  ; $7789: $e0 $c0
    ld e, $08                                     ; $778b: $1e $08
    ld bc, $ff17                                  ; $778d: $01 $17 $ff
    ld b, h                                       ; $7790: $44
    ei                                            ; $7791: $fb
    and c                                         ; $7792: $a1
    cp $d2                                        ; $7793: $fe $d2
    nop                                           ; $7795: $00
    db $fd                                        ; $7796: $fd
    jr nc, jr_099_77d8                            ; $7797: $30 $3f

    add hl, hl                                    ; $7799: $29
    scf                                           ; $779a: $37
    ld [hl+], a                                   ; $779b: $22
    ccf                                           ; $779c: $3f
    ld b, l                                       ; $779d: $45
    nop                                           ; $779e: $00
    ld a, e                                       ; $779f: $7b
    nop                                           ; $77a0: $00
    ret nz                                        ; $77a1: $c0

    add b                                         ; $77a2: $80
    ld h, b                                       ; $77a3: $60
    jr nz, jr_099_7786                            ; $77a4: $20 $e0

    ld h, b                                       ; $77a6: $60
    ld b, $e0                                     ; $77a7: $06 $e0
    ret nz                                        ; $77a9: $c0

    ret nz                                        ; $77aa: $c0

    ld b, b                                       ; $77ab: $40
    ret nz                                        ; $77ac: $c0

    inc h                                         ; $77ad: $24
    jr nc, jr_099_7814                            ; $77ae: $30 $64

    ld hl, $1020                                  ; $77b0: $21 $20 $10
    ldh [$a0], a                                  ; $77b3: $e0 $a0
    ld d, b                                       ; $77b5: $50
    ld b, b                                       ; $77b6: $40
    rla                                           ; $77b7: $17
    ld d, [hl]                                    ; $77b8: $56
    di                                            ; $77b9: $f3
    inc c                                         ; $77ba: $0c
    call nc, Call_000_2b00                        ; $77bb: $d4 $00 $2b
    xor d                                         ; $77be: $aa
    ld d, h                                       ; $77bf: $54
    jp c, Jump_099_6c05                           ; $77c0: $da $05 $6c

    add a                                         ; $77c3: $87
    ld d, b                                       ; $77c4: $50
    nop                                           ; $77c5: $00
    xor b                                         ; $77c6: $a8
    cp h                                          ; $77c7: $bc
    ld b, h                                       ; $77c8: $44
    ld d, h                                       ; $77c9: $54
    xor h                                         ; $77ca: $ac
    xor d                                         ; $77cb: $aa
    sub $56                                       ; $77cc: $d6 $56
    ld [$8aea], sp                                ; $77ce: $08 $ea $8a
    or $d6                                        ; $77d1: $f6 $d6
    inc b                                         ; $77d3: $04
    nop                                           ; $77d4: $00
    sbc $ee                                       ; $77d5: $de $ee
    ld a, [c]                                     ; $77d7: $f2

jr_099_77d8:
    nop                                           ; $77d8: $00
    ld a, [hl]                                    ; $77d9: $7e
    ld a, [$7c06]                                 ; $77da: $fa $06 $7c
    add h                                         ; $77dd: $84
    db $fc                                        ; $77de: $fc
    add h                                         ; $77df: $84
    db $f4                                        ; $77e0: $f4
    inc b                                         ; $77e1: $04
    xor h                                         ; $77e2: $ac
    xor b                                         ; $77e3: $a8
    ld hl, sp+$70                                 ; $77e4: $f8 $70
    ld [hl], b                                    ; $77e6: $70
    db $10                                        ; $77e7: $10
    ld c, d                                       ; $77e8: $4a
    push af                                       ; $77e9: $f5
    ld a, [$7b43]                                 ; $77ea: $fa $43 $7b
    ld l, h                                       ; $77ed: $6c
    dec b                                         ; $77ee: $05
    add b                                         ; $77ef: $80
    rst $38                                       ; $77f0: $ff
    xor d                                         ; $77f1: $aa
    push de                                       ; $77f2: $d5
    inc [hl]                                      ; $77f3: $34
    ld c, $da                                     ; $77f4: $0e $da
    dec e                                         ; $77f6: $1d
    ld [hl-], a                                   ; $77f7: $32
    jr nc, jr_099_782a                            ; $77f8: $30 $30

    ld h, a                                       ; $77fa: $67
    rrca                                          ; $77fb: $0f
    inc de                                        ; $77fc: $13
    inc bc                                        ; $77fd: $03
    inc b                                         ; $77fe: $04
    rlca                                          ; $77ff: $07
    ld [bc], a                                    ; $7800: $02
    nop                                           ; $7801: $00
    inc bc                                        ; $7802: $03
    nop                                           ; $7803: $00
    inc b                                         ; $7804: $04
    nop                                           ; $7805: $00
    ccf                                           ; $7806: $3f
    cp [hl]                                       ; $7807: $be
    pop bc                                        ; $7808: $c1
    cp $01                                        ; $7809: $fe $01
    cp $c0                                        ; $780b: $fe $c0
    and c                                         ; $780d: $a1
    ld a, [de]                                    ; $780e: $1a
    or h                                          ; $780f: $b4
    rlca                                          ; $7810: $07
    ld d, e                                       ; $7811: $53
    rst $28                                       ; $7812: $ef
    add [hl]                                      ; $7813: $86

jr_099_7814:
    cp $ca                                        ; $7814: $fe $ca
    rst $38                                       ; $7816: $ff
    nop                                           ; $7817: $00
    rst $08                                       ; $7818: $cf
    inc a                                         ; $7819: $3c
    db $fd                                        ; $781a: $fd
    ld [bc], a                                    ; $781b: $02
    ld a, [hl]                                    ; $781c: $7e
    add c                                         ; $781d: $81
    add [hl]                                      ; $781e: $86

jr_099_781f:
    ld sp, hl                                     ; $781f: $f9

jr_099_7820:
    jr nc, jr_099_7820                            ; $7820: $30 $fe

    ld a, a                                       ; $7822: $7f
    ldh a, [$31]                                  ; $7823: $f0 $31
    jp hl                                         ; $7825: $e9


    nop                                           ; $7826: $00
    ret nz                                        ; $7827: $c0

    ld b, b                                       ; $7828: $40
    add b                                         ; $7829: $80

jr_099_782a:
    ld b, b                                       ; $782a: $40
    rlca                                          ; $782b: $07
    dec b                                         ; $782c: $05
    ld b, $06                                     ; $782d: $06 $06
    rlca                                          ; $782f: $07
    dec b                                         ; $7830: $05
    dec sp                                        ; $7831: $3b
    nop                                           ; $7832: $00
    and b                                         ; $7833: $a0
    ld a, [hl+]                                   ; $7834: $2a
    ld a, c                                       ; $7835: $79
    ld c, $07                                     ; $7836: $0e $07
    ccf                                           ; $7838: $3f
    ret nz                                        ; $7839: $c0

    ret nz                                        ; $783a: $c0

    rst $38                                       ; $783b: $ff
    ccf                                           ; $783c: $3f
    xor d                                         ; $783d: $aa
    ld b, $06                                     ; $783e: $06 $06
    nop                                           ; $7840: $00
    rlca                                          ; $7841: $07
    nop                                           ; $7842: $00
    ld bc, $01fe                                  ; $7843: $01 $fe $01
    ld sp, hl                                     ; $7846: $f9
    rlca                                          ; $7847: $07
    ld b, $ff                                     ; $7848: $06 $ff
    ld hl, sp-$80                                 ; $784a: $f8 $80
    ld b, $03                                     ; $784c: $06 $03
    ld b, $fe                                     ; $784e: $06 $fe
    ld hl, sp-$08                                 ; $7850: $f8 $f8
    ld b, b                                       ; $7852: $40
    ret nz                                        ; $7853: $c0

    jp c, $dc08                                   ; $7854: $da $08 $dc

    jr c, jr_099_7889                             ; $7857: $38 $30

    db $fd                                        ; $7859: $fd
    ld [bc], a                                    ; $785a: $02
    sub b                                         ; $785b: $90
    rra                                           ; $785c: $1f
    ret nc                                        ; $785d: $d0

    jr z, jr_099_781f                             ; $785e: $28 $bf

    ld b, b                                       ; $7860: $40
    rst $28                                       ; $7861: $ef
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    rst $18                                       ; $7864: $df
    jr nz, jr_099_789c                            ; $7865: $20 $35

    jp z, $255a                                   ; $7867: $ca $5a $25

    sbc b                                         ; $786a: $98
    ld h, b                                       ; $786b: $60
    inc b                                         ; $786c: $04
    ld [de], a                                    ; $786d: $12
    ldh [$5d], a                                  ; $786e: $e0 $5d
    ldh [$fd], a                                  ; $7870: $e0 $fd
    cp b                                          ; $7872: $b8
    rlca                                          ; $7873: $07
    db $fc                                        ; $7874: $fc
    nop                                           ; $7875: $00
    nop                                           ; $7876: $00
    ld e, b                                       ; $7877: $58
    and b                                         ; $7878: $a0
    dec [hl]                                      ; $7879: $35
    ld [$0f10], sp                                ; $787a: $08 $10 $0f
    cp e                                          ; $787d: $bb
    rlca                                          ; $787e: $07
    inc a                                         ; $787f: $3c
    xor a                                         ; $7880: $af
    ld [hl], b                                    ; $7881: $70
    ret nc                                        ; $7882: $d0

    ld c, $cc                                     ; $7883: $0e $cc
    ld e, $10                                     ; $7885: $1e $10
    ld e, $b0                                     ; $7887: $1e $b0

jr_099_7889:
    ld a, $01                                     ; $7889: $3e $01
    nop                                           ; $788b: $00
    ld d, b                                       ; $788c: $50
    jr nz, @-$1e                                  ; $788d: $20 $e0

    rlca                                          ; $788f: $07
    rst $38                                       ; $7890: $ff
    ldh a, [rTIMA]                                ; $7891: $f0 $05
    ld [bc], a                                    ; $7893: $02
    nop                                           ; $7894: $00
    dec b                                         ; $7895: $05
    nop                                           ; $7896: $00
    ld bc, $008a                                  ; $7897: $01 $8a $00
    inc d                                         ; $789a: $14
    nop                                           ; $789b: $00

jr_099_789c:
    jr z, jr_099_789e                             ; $789c: $28 $00

jr_099_789e:
    ret nc                                        ; $789e: $d0

    or $07                                        ; $789f: $f6 $07
    ld de, $0060                                  ; $78a1: $11 $60 $00
    ret nz                                        ; $78a4: $c0

    jr nz, jr_099_78c7                            ; $78a5: $20 $20

    ld b, $00                                     ; $78a7: $06 $00
    inc c                                         ; $78a9: $0c
    or $07                                        ; $78aa: $f6 $07
    ld h, b                                       ; $78ac: $60
    db $10                                        ; $78ad: $10
    jr z, jr_099_78c0                             ; $78ae: $28 $10

    ld a, a                                       ; $78b0: $7f
    add hl, hl                                    ; $78b1: $29
    add c                                         ; $78b2: $81
    nop                                           ; $78b3: $00
    ld [bc], a                                    ; $78b4: $02
    ld bc, $0106                                  ; $78b5: $01 $06 $01
    nop                                           ; $78b8: $00
    ld [$1004], sp                                ; $78b9: $08 $04 $10
    ld [$1020], sp                                ; $78bc: $08 $20 $10
    ld a, [hl+]                                   ; $78bf: $2a

jr_099_78c0:
    ld [$a040], sp                                ; $78c0: $08 $40 $a0
    inc e                                         ; $78c3: $1c
    jr nz, jr_099_78c7                            ; $78c4: $20 $01

    nop                                           ; $78c6: $00

jr_099_78c7:
    inc bc                                        ; $78c7: $03
    nop                                           ; $78c8: $00
    inc b                                         ; $78c9: $04
    ld [bc], a                                    ; $78ca: $02
    dec b                                         ; $78cb: $05
    dec bc                                        ; $78cc: $0b
    inc b                                         ; $78cd: $04
    jr jr_099_78d0                                ; $78ce: $18 $00

jr_099_78d0:
    jr nc, jr_099_7914                            ; $78d0: $30 $42

    nop                                           ; $78d2: $00
    ret nc                                        ; $78d3: $d0

    jr @+$32                                      ; $78d4: $18 $30

    ldh [$4c], a                                  ; $78d6: $e0 $4c
    ld b, e                                       ; $78d8: $43
    ld [hl], b                                    ; $78d9: $70
    jr nz, jr_099_793e                            ; $78da: $20 $62

    ld e, e                                       ; $78dc: $5b
    pop af                                        ; $78dd: $f1
    ld c, $0f                                     ; $78de: $0e $0f
    nop                                           ; $78e0: $00
    rlca                                          ; $78e1: $07
    nop                                           ; $78e2: $00
    nop                                           ; $78e3: $00
    rrca                                          ; $78e4: $0f
    nop                                           ; $78e5: $00
    dec de                                        ; $78e6: $1b
    nop                                           ; $78e7: $00
    inc sp                                        ; $78e8: $33
    nop                                           ; $78e9: $00
    ld h, e                                       ; $78ea: $63
    jr nc, jr_099_78ed                            ; $78eb: $30 $00

jr_099_78ed:
    jp nz, $0670                                  ; $78ed: $c2 $70 $06

    sub b                                         ; $78f0: $90
    ld e, b                                       ; $78f1: $58
    or d                                          ; $78f2: $b2
    ld bc, $0162                                  ; $78f3: $01 $62 $01
    jr @-$3b                                      ; $78f6: $18 $c3

    ld bc, $6603                                  ; $78f8: $01 $03 $66
    ccf                                           ; $78fb: $3f
    and [hl]                                      ; $78fc: $a6
    rla                                           ; $78fd: $17
    add b                                         ; $78fe: $80
    ld a, a                                       ; $78ff: $7f
    ld a, [hl]                                    ; $7900: $7e
    inc bc                                        ; $7901: $03
    add c                                         ; $7902: $81
    add b                                         ; $7903: $80
    ld bc, $8100                                  ; $7904: $01 $00 $81
    add d                                         ; $7907: $82
    or d                                          ; $7908: $b2
    ld b, $d0                                     ; $7909: $06 $d0
    ld l, $17                                     ; $790b: $2e $17
    cp $01                                        ; $790d: $fe $01
    add b                                         ; $790f: $80
    ld [bc], a                                    ; $7910: $02
    nop                                           ; $7911: $00
    cp $0d                                        ; $7912: $fe $0d

jr_099_7914:
    inc b                                         ; $7914: $04
    ret nz                                        ; $7915: $c0

    ld d, [hl]                                    ; $7916: $56
    ldh a, [$36]                                  ; $7917: $f0 $36
    ld h, a                                       ; $7919: $67
    rst $38                                       ; $791a: $ff
    ld [hl+], a                                   ; $791b: $22
    db $10                                        ; $791c: $10
    ldh a, [rDMA]                                 ; $791d: $f0 $46
    rst $38                                       ; $791f: $ff
    ld a, a                                       ; $7920: $7f
    sbc [hl]                                      ; $7921: $9e
    inc bc                                        ; $7922: $03
    ld d, [hl]                                    ; $7923: $56
    inc h                                         ; $7924: $24
    sub b                                         ; $7925: $90
    scf                                           ; $7926: $37
    ret nz                                        ; $7927: $c0

    ld b, e                                       ; $7928: $43
    ld a, [hl-]                                   ; $7929: $3a
    jr @+$03                                      ; $792a: $18 $01

    ld bc, $0205                                  ; $792c: $01 $05 $02
    ld e, $00                                     ; $792f: $1e $00

jr_099_7931:
    inc l                                         ; $7931: $2c
    nop                                           ; $7932: $00
    db $10                                        ; $7933: $10
    ld e, b                                       ; $7934: $58
    jr nz, jr_099_7967                            ; $7935: $20 $30

    ld b, b                                       ; $7937: $40
    ldh [rP1], a                                  ; $7938: $e0 $00
    ld b, b                                       ; $793a: $40
    xor b                                         ; $793b: $a8
    add e                                         ; $793c: $83
    ld [de], a                                    ; $793d: $12

jr_099_793e:
    ld a, [bc]                                    ; $793e: $0a
    jr z, jr_099_7952                             ; $793f: $28 $11

    ld d, b                                       ; $7941: $50
    ldh [$38], a                                  ; $7942: $e0 $38
    add c                                         ; $7944: $81
    ret nz                                        ; $7945: $c0

    ld bc, $2055                                  ; $7946: $01 $55 $20
    inc b                                         ; $7949: $04
    nop                                           ; $794a: $00
    ld [bc], a                                    ; $794b: $02
    inc b                                         ; $794c: $04
    db $10                                        ; $794d: $10
    add h                                         ; $794e: $84
    add h                                         ; $794f: $84
    db $10                                        ; $7950: $10
    add d                                         ; $7951: $82

jr_099_7952:
    ld b, $30                                     ; $7952: $06 $30
    ld l, l                                       ; $7954: $6d
    ret nc                                        ; $7955: $d0

    sbc d                                         ; $7956: $9a
    ld b, h                                       ; $7957: $44
    adc [hl]                                      ; $7958: $8e
    ld e, $0a                                     ; $7959: $1e $0a
    cp b                                          ; $795b: $b8
    nop                                           ; $795c: $00
    jr z, jr_099_7967                             ; $795d: $28 $08

    ld [bc], a                                    ; $795f: $02
    ret nz                                        ; $7960: $c0

    db $10                                        ; $7961: $10
    dec b                                         ; $7962: $05
    add b                                         ; $7963: $80
    ld bc, $01a2                                  ; $7964: $01 $a2 $01

jr_099_7967:
    ret nz                                        ; $7967: $c0

    jr nc, jr_099_796a                            ; $7968: $30 $00

jr_099_796a:
    call nz, Call_000_2034                        ; $796a: $c4 $34 $20
    add e                                         ; $796d: $83
    inc b                                         ; $796e: $04
    jr z, jr_099_7931                             ; $796f: $28 $c0

    ld bc, $01a0                                  ; $7971: $01 $a0 $01
    jp nz, Jump_000_00d0                          ; $7974: $c2 $d0 $00

    inc b                                         ; $7977: $04
    ld [$128f], sp                                ; $7978: $08 $8f $12
    ld e, b                                       ; $797b: $58
    add h                                         ; $797c: $84
    ld bc, $328a                                  ; $797d: $01 $8a $32
    nop                                           ; $7980: $00
    ld [hl], $08                                  ; $7981: $36 $08
    ld h, $08                                     ; $7983: $26 $08
    ld [hl+], a                                   ; $7985: $22
    ld [$12c0], sp                                ; $7986: $08 $c0 $12
    ld [$2874], sp                                ; $7989: $08 $74 $28
    add b                                         ; $798c: $80
    ld bc, $708f                                  ; $798d: $01 $8f $70
    ldh a, [rP1]                                  ; $7990: $f0 $00
    ld a, c                                       ; $7992: $79
    ldh [$c2], a                                  ; $7993: $e0 $c2
    ld bc, $1802                                  ; $7995: $01 $02 $18
    ld [hl], c                                    ; $7998: $71
    ld [bc], a                                    ; $7999: $02
    ld [bc], a                                    ; $799a: $02
    nop                                           ; $799b: $00
    ret nz                                        ; $799c: $c0

    add b                                         ; $799d: $80
    jp nc, $8019                                  ; $799e: $d2 $19 $80

    ld b, b                                       ; $79a1: $40
    rrca                                          ; $79a2: $0f
    ld bc, $ff00                                  ; $79a3: $01 $00 $ff
    ld a, a                                       ; $79a6: $7f
    jr nz, @+$22                                  ; $79a7: $20 $20

    add b                                         ; $79a9: $80
    inc b                                         ; $79aa: $04
    or l                                          ; $79ab: $b5
    ld h, e                                       ; $79ac: $63
    inc c                                         ; $79ad: $0c
    ld h, a                                       ; $79ae: $67
    jr nz, jr_099_7a07                            ; $79af: $20 $56

    nop                                           ; $79b1: $00
    nop                                           ; $79b2: $00
    ld b, b                                       ; $79b3: $40
    ld d, [hl]                                    ; $79b4: $56
    adc c                                         ; $79b5: $89
    rrca                                          ; $79b6: $0f
    ld h, e                                       ; $79b7: $63
    ld bc, $0420                                  ; $79b8: $01 $20 $04
    ld h, e                                       ; $79bb: $63
    dec b                                         ; $79bc: $05
    sbc $07                                       ; $79bd: $de $07
    ld [hl], h                                    ; $79bf: $74
    nop                                           ; $79c0: $00
    jr nz, jr_099_79eb                            ; $79c1: $20 $28

    sbc a                                         ; $79c3: $9f
    inc hl                                        ; $79c4: $23
    dec [hl]                                      ; $79c5: $35
    ld a, [de]                                    ; $79c6: $1a
    ld a, [hl+]                                   ; $79c7: $2a
    ld hl, $0863                                  ; $79c8: $21 $63 $08
    sub e                                         ; $79cb: $93
    dec a                                         ; $79cc: $3d
    add b                                         ; $79cd: $80
    ld h, e                                       ; $79ce: $63
    and b                                         ; $79cf: $a0
    ld hl, $0c60                                  ; $79d0: $21 $60 $0c
    ld a, h                                       ; $79d3: $7c
    ld [de], a                                    ; $79d4: $12
    sub e                                         ; $79d5: $93
    dec a                                         ; $79d6: $3d
    xor d                                         ; $79d7: $aa
    ld b, b                                       ; $79d8: $40
    inc hl                                        ; $79d9: $23
    inc d                                         ; $79da: $14
    ld a, h                                       ; $79db: $7c
    ld [hl-], a                                   ; $79dc: $32
    sub e                                         ; $79dd: $93
    ld c, l                                       ; $79de: $4d
    xor d                                         ; $79df: $aa
    ld d, b                                       ; $79e0: $50
    inc hl                                        ; $79e1: $23
    inc h                                         ; $79e2: $24
    ld bc, $ff00                                  ; $79e3: $01 $00 $ff
    ld a, a                                       ; $79e6: $7f
    ld h, l                                       ; $79e7: $65
    add hl, de                                    ; $79e8: $19
    inc b                                         ; $79e9: $04
    nop                                           ; $79ea: $00

jr_099_79eb:
    cp a                                          ; $79eb: $bf
    ld [hl+], a                                   ; $79ec: $22
    sub a                                         ; $79ed: $97
    dec d                                         ; $79ee: $15
    sub c                                         ; $79ef: $91
    ld [$0045], sp                                ; $79f0: $08 $45 $00
    ld a, a                                       ; $79f3: $7f
    inc sp                                        ; $79f4: $33
    ld a, d                                       ; $79f5: $7a
    ld b, $8e                                     ; $79f6: $06 $8e
    dec d                                         ; $79f8: $15
    add a                                         ; $79f9: $87
    inc e                                         ; $79fa: $1c
    or l                                          ; $79fb: $b5
    ld a, a                                       ; $79fc: $7f
    jr jr_099_7a5d                                ; $79fd: $18 $5e

    ld l, e                                       ; $79ff: $6b
    jr nc, jr_099_7a04                            ; $7a00: $30 $02

    jr @-$10                                      ; $7a02: $18 $ee

jr_099_7a04:
    dec a                                         ; $7a04: $3d
    cp e                                          ; $7a05: $bb
    ld l, a                                       ; $7a06: $6f

jr_099_7a07:
    inc de                                        ; $7a07: $13
    ld d, b                                       ; $7a08: $50
    add b                                         ; $7a09: $80
    ld [$77bd], sp                                ; $7a0a: $08 $bd $77
    inc [hl]                                      ; $7a0d: $34
    ld d, d                                       ; $7a0e: $52
    ld [$0328], a                                 ; $7a0f: $ea $28 $03
    ld [$3ef2], sp                                ; $7a12: $08 $f2 $3e
    push de                                       ; $7a15: $d5
    dec h                                         ; $7a16: $25
    ld c, h                                       ; $7a17: $4c
    dec a                                         ; $7a18: $3d
    ld b, l                                       ; $7a19: $45
    inc h                                         ; $7a1a: $24
    dec bc                                        ; $7a1b: $0b
    ld [hl+], a                                   ; $7a1c: $22
    rrca                                          ; $7a1d: $0f
    dec c                                         ; $7a1e: $0d
    add [hl]                                      ; $7a1f: $86
    jr z, jr_099_7a46                             ; $7a20: $28 $24

    inc e                                         ; $7a22: $1c
    ld bc, $ff00                                  ; $7a23: $01 $00 $ff
    ld a, a                                       ; $7a26: $7f
    db $e4                                        ; $7a27: $e4
    ld [hl], b                                    ; $7a28: $70
    nop                                           ; $7a29: $00
    db $10                                        ; $7a2a: $10
    sbc l                                         ; $7a2b: $9d
    ld e, a                                       ; $7a2c: $5f
    ld [hl], h                                    ; $7a2d: $74
    ld a, $6d                                     ; $7a2e: $3e $6d
    dec h                                         ; $7a30: $25
    ld h, l                                       ; $7a31: $65
    ld [$0024], sp                                ; $7a32: $08 $24 $00
    rra                                           ; $7a35: $1f
    inc de                                        ; $7a36: $13
    db $f4                                        ; $7a37: $f4
    nop                                           ; $7a38: $00
    adc c                                         ; $7a39: $89
    nop                                           ; $7a3a: $00
    jp z, $9f2d                                   ; $7a3b: $ca $2d $9f

    cpl                                           ; $7a3e: $2f
    ld [hl], e                                    ; $7a3f: $73
    dec e                                         ; $7a40: $1d
    dec h                                         ; $7a41: $25
    nop                                           ; $7a42: $00
    jr c, @+$61                                   ; $7a43: $38 $5f

    ld l, a                                       ; $7a45: $6f

jr_099_7a46:
    ld [hl-], a                                   ; $7a46: $32
    jp hl                                         ; $7a47: $e9


    inc e                                         ; $7a48: $1c
    ld b, l                                       ; $7a49: $45
    inc b                                         ; $7a4a: $04
    ld e, l                                       ; $7a4b: $5d
    rra                                           ; $7a4c: $1f

jr_099_7a4d:
    or $21                                        ; $7a4d: $f6 $21
    dec hl                                        ; $7a4f: $2b
    dec h                                         ; $7a50: $25
    ld h, b                                       ; $7a51: $60
    inc l                                         ; $7a52: $2c
    add hl, de                                    ; $7a53: $19
    ld l, a                                       ; $7a54: $6f
    ldh a, [rKEY1]                                ; $7a55: $f0 $4d
    jp hl                                         ; $7a57: $e9


    inc [hl]                                      ; $7a58: $34
    ld bc, $1118                                  ; $7a59: $01 $18 $11
    ld [hl-], a                                   ; $7a5c: $32

jr_099_7a5d:
    dec hl                                        ; $7a5d: $2b
    add hl, de                                    ; $7a5e: $19
    ld h, l                                       ; $7a5f: $65
    inc b                                         ; $7a60: $04
    nop                                           ; $7a61: $00
    nop                                           ; $7a62: $00
    ld bc, $ff00                                  ; $7a63: $01 $00 $ff
    ld a, a                                       ; $7a66: $7f
    rrca                                          ; $7a67: $0f
    ld e, b                                       ; $7a68: $58
    inc b                                         ; $7a69: $04
    db $10                                        ; $7a6a: $10
    cp a                                          ; $7a6b: $bf
    inc bc                                        ; $7a6c: $03
    dec sp                                        ; $7a6d: $3b
    ld bc, $142b                                  ; $7a6e: $01 $2b $14
    adc a                                         ; $7a71: $8f
    ld a, a                                       ; $7a72: $7f
    rst $28                                       ; $7a73: $ef
    ld h, [hl]                                    ; $7a74: $66
    xor b                                         ; $7a75: $a8
    dec a                                         ; $7a76: $3d
    push bc                                       ; $7a77: $c5
    inc e                                         ; $7a78: $1c
    inc hl                                        ; $7a79: $23
    ld [$435f], sp                                ; $7a7a: $08 $5f $43
    ld d, h                                       ; $7a7d: $54
    ld l, $69                                     ; $7a7e: $2e $69
    dec e                                         ; $7a80: $1d
    and b                                         ; $7a81: $a0
    inc b                                         ; $7a82: $04
    rst $18                                       ; $7a83: $df
    ld a, [hl]                                    ; $7a84: $7e
    xor [hl]                                      ; $7a85: $ae
    ld l, h                                       ; $7a86: $6c
    dec hl                                        ; $7a87: $2b
    inc d                                         ; $7a88: $14
    adc a                                         ; $7a89: $8f
    ld a, a                                       ; $7a8a: $7f
    db $f4                                        ; $7a8b: $f4
    dec h                                         ; $7a8c: $25
    rst $38                                       ; $7a8d: $ff
    ld a, a                                       ; $7a8e: $7f
    db $ed                                        ; $7a8f: $ed
    dec a                                         ; $7a90: $3d
    nop                                           ; $7a91: $00
    nop                                           ; $7a92: $00
    db $fc                                        ; $7a93: $fc
    ld c, d                                       ; $7a94: $4a
    db $d3                                        ; $7a95: $d3
    dec l                                         ; $7a96: $2d
    db $eb                                        ; $7a97: $eb
    jr @+$25                                      ; $7a98: $18 $23

    inc b                                         ; $7a9a: $04
    db $f4                                        ; $7a9b: $f4
    add hl, hl                                    ; $7a9c: $29
    rrc h                                         ; $7a9d: $cb $0c
    inc bc                                        ; $7a9f: $03
    nop                                           ; $7aa0: $00
    nop                                           ; $7aa1: $00
    nop                                           ; $7aa2: $00
    ld bc, $ff04                                  ; $7aa3: $01 $04 $ff
    ld a, a                                       ; $7aa6: $7f
    dec d                                         ; $7aa7: $15
    ld d, h                                       ; $7aa8: $54
    dec d                                         ; $7aa9: $15
    ld d, h                                       ; $7aaa: $54
    inc d                                         ; $7aab: $14
    ld [hl], d                                    ; $7aac: $72
    dec c                                         ; $7aad: $0d
    ld c, l                                       ; $7aae: $4d
    ld h, a                                       ; $7aaf: $67
    jr c, jr_099_7ab4                             ; $7ab0: $38 $02

    inc h                                         ; $7ab2: $24
    ld c, [hl]                                    ; $7ab3: $4e

jr_099_7ab4:
    ld l, [hl]                                    ; $7ab4: $6e
    ld c, c                                       ; $7ab5: $49
    ld c, c                                       ; $7ab6: $49
    and l                                         ; $7ab7: $a5
    jr nc, @+$03                                  ; $7ab8: $30 $01

    jr jr_099_7a4d                                ; $7aba: $18 $91

    ld de, $150c                                  ; $7abc: $11 $0c $15
    add a                                         ; $7abf: $87
    jr @+$03                                      ; $7ac0: $18 $01

    jr jr_099_7b43                                ; $7ac2: $18 $7f

    ld l, $97                                     ; $7ac4: $2e $97
    dec e                                         ; $7ac6: $1d
    adc $10                                       ; $7ac7: $ce $10
    ld h, $0c                                     ; $7ac9: $26 $0c
    xor b                                         ; $7acb: $a8
    inc a                                         ; $7acc: $3c
    ld h, [hl]                                    ; $7acd: $66
    jr z, jr_099_7b14                             ; $7ace: $28 $44

    jr jr_099_7ad5                                ; $7ad0: $18 $03

    ld [$421c], sp                                ; $7ad2: $08 $1c $42

jr_099_7ad5:
    ld c, $2d                                     ; $7ad5: $0e $2d
    ld h, a                                       ; $7ad7: $67
    jr c, jr_099_7adf                             ; $7ad8: $38 $05

    inc b                                         ; $7ada: $04
    inc l                                         ; $7adb: $2c
    ld d, l                                       ; $7adc: $55
    ret                                           ; $7add: $c9


    inc a                                         ; $7ade: $3c

jr_099_7adf:
    ld h, l                                       ; $7adf: $65
    inc h                                         ; $7ae0: $24
    ld bc, $010c                                  ; $7ae1: $01 $0c $01
    nop                                           ; $7ae4: $00
    rst $38                                       ; $7ae5: $ff
    ld a, a                                       ; $7ae6: $7f
    ld b, e                                       ; $7ae7: $43
    ld e, [hl]                                    ; $7ae8: $5e
    push hl                                       ; $7ae9: $e5
    ld b, h                                       ; $7aea: $44
    ld a, e                                       ; $7aeb: $7b
    ld l, e                                       ; $7aec: $6b
    ld d, e                                       ; $7aed: $53
    ld b, [hl]                                    ; $7aee: $46
    ld a, [bc]                                    ; $7aef: $0a
    dec e                                         ; $7af0: $1d
    ld b, h                                       ; $7af1: $44
    inc b                                         ; $7af2: $04
    cp [hl]                                       ; $7af3: $be
    inc b                                         ; $7af4: $04
    ld d, h                                       ; $7af5: $54
    nop                                           ; $7af6: $00
    ld l, $00                                     ; $7af7: $2e $00
    ld b, $00                                     ; $7af9: $06 $00
    ld a, [hl-]                                   ; $7afb: $3a
    ld e, a                                       ; $7afc: $5f

Jump_099_7afd:
    ldh a, [$35]                                  ; $7afd: $f0 $35
    ret                                           ; $7aff: $c9


    inc d                                         ; $7b00: $14
    ld b, e                                       ; $7b01: $43
    nop                                           ; $7b02: $00
    ld d, l                                       ; $7b03: $55
    ld [bc], a                                    ; $7b04: $02
    adc l                                         ; $7b05: $8d
    ld de, $10c7                                  ; $7b06: $11 $c7 $10
    nop                                           ; $7b09: $00
    inc b                                         ; $7b0a: $04
    scf                                           ; $7b0b: $37
    ld l, a                                       ; $7b0c: $6f
    rrca                                          ; $7b0d: $0f
    ld c, [hl]                                    ; $7b0e: $4e
    add hl, hl                                    ; $7b0f: $29
    ld sp, $1420                                  ; $7b10: $31 $20 $14
    rrca                                          ; $7b13: $0f

jr_099_7b14:
    ld c, [hl]                                    ; $7b14: $4e
    reti                                          ; $7b15: $d9


    ld a, a                                       ; $7b16: $7f
    jr nz, jr_099_7b77                            ; $7b17: $20 $5e

    nop                                           ; $7b19: $00
    nop                                           ; $7b1a: $00
    or c                                          ; $7b1b: $b1
    ld h, d                                       ; $7b1c: $62
    ret z                                         ; $7b1d: $c8

    ld b, c                                       ; $7b1e: $41
    ldh [rNR41], a                                ; $7b1f: $e0 $20
    jr nz, jr_099_7b33                            ; $7b21: $20 $10

    ld bc, $ff00                                  ; $7b23: $01 $00 $ff
    ld a, a                                       ; $7b26: $7f
    ld b, e                                       ; $7b27: $43
    ld e, [hl]                                    ; $7b28: $5e
    push hl                                       ; $7b29: $e5
    ld b, h                                       ; $7b2a: $44
    ld a, e                                       ; $7b2b: $7b
    ld l, e                                       ; $7b2c: $6b
    ld [hl-], a                                   ; $7b2d: $32
    ld b, d                                       ; $7b2e: $42
    ld a, [bc]                                    ; $7b2f: $0a
    dec e                                         ; $7b30: $1d
    ld b, h                                       ; $7b31: $44
    inc b                                         ; $7b32: $04

jr_099_7b33:
    cp [hl]                                       ; $7b33: $be
    nop                                           ; $7b34: $00
    ld d, h                                       ; $7b35: $54
    nop                                           ; $7b36: $00
    ld l, $00                                     ; $7b37: $2e $00
    ld b, $00                                     ; $7b39: $06 $00
    ld a, [hl-]                                   ; $7b3b: $3a
    ld e, a                                       ; $7b3c: $5f
    ldh a, [$35]                                  ; $7b3d: $f0 $35
    ret                                           ; $7b3f: $c9


    inc d                                         ; $7b40: $14
    ld b, e                                       ; $7b41: $43
    nop                                           ; $7b42: $00

jr_099_7b43:
    ld d, l                                       ; $7b43: $55
    ld [bc], a                                    ; $7b44: $02
    xor [hl]                                      ; $7b45: $ae
    ld de, $10c7                                  ; $7b46: $11 $c7 $10
    nop                                           ; $7b49: $00
    inc b                                         ; $7b4a: $04
    or a                                          ; $7b4b: $b7
    ld a, $6e                                     ; $7b4c: $3e $6e
    dec h                                         ; $7b4e: $25
    jp z, $231c                                   ; $7b4f: $ca $1c $23

    nop                                           ; $7b52: $00
    inc l                                         ; $7b53: $2c
    ld a, a                                       ; $7b54: $7f
    adc l                                         ; $7b55: $8d
    ld sp, $3eb7                                  ; $7b56: $31 $b7 $3e
    push hl                                       ; $7b59: $e5
    ld b, h                                       ; $7b5a: $44
    inc h                                         ; $7b5b: $24
    ld e, [hl]                                    ; $7b5c: $5e
    add l                                         ; $7b5d: $85
    db $10                                        ; $7b5e: $10
    xor a                                         ; $7b5f: $af
    dec e                                         ; $7b60: $1d
    nop                                           ; $7b61: $00
    inc h                                         ; $7b62: $24
    nop                                           ; $7b63: $00
    nop                                           ; $7b64: $00
    rst $38                                       ; $7b65: $ff
    ld a, a                                       ; $7b66: $7f
    cp d                                          ; $7b67: $ba
    ld bc, $0896                                  ; $7b68: $01 $96 $08
    db $fd                                        ; $7b6b: $fd
    ld [hl-], a                                   ; $7b6c: $32
    ld [hl], a                                    ; $7b6d: $77
    ld [hl-], a                                   ; $7b6e: $32
    ret nc                                        ; $7b6f: $d0

    dec [hl]                                      ; $7b70: $35
    ld [$b631], sp                                ; $7b71: $08 $31 $b6
    ld c, d                                       ; $7b74: $4a
    sub h                                         ; $7b75: $94
    dec e                                         ; $7b76: $1d

jr_099_7b77:
    xor a                                         ; $7b77: $af
    db $10                                        ; $7b78: $10
    inc hl                                        ; $7b79: $23
    inc b                                         ; $7b7a: $04
    ld [hl], a                                    ; $7b7b: $77
    ld [hl-], a                                   ; $7b7c: $32
    sbc $7f                                       ; $7b7d: $de $7f
    inc l                                         ; $7b7f: $2c
    ld d, [hl]                                    ; $7b80: $56
    and e                                         ; $7b81: $a3
    inc e                                         ; $7b82: $1c
    ld [hl], a                                    ; $7b83: $77
    ld [hl-], a                                   ; $7b84: $32
    sbc $7b                                       ; $7b85: $de $7b
    daa                                           ; $7b87: $27
    dec [hl]                                      ; $7b88: $35
    ld hl, $1608                                  ; $7b89: $21 $08 $16
    ld d, $90                                     ; $7b8c: $16 $90
    dec d                                         ; $7b8e: $15
    jp hl                                         ; $7b8f: $e9


    jr jr_099_7bf5                                ; $7b90: $18 $63

    inc e                                         ; $7b92: $1c
    db $fd                                        ; $7b93: $fd
    ld d, d                                       ; $7b94: $52
    halt                                          ; $7b95: $76
    ld c, [hl]                                    ; $7b96: $4e
    rst $08                                       ; $7b97: $cf
    ld c, l                                       ; $7b98: $4d
    ld b, $41                                     ; $7b99: $06 $41
    db $fd                                        ; $7b9b: $fd
    ld d, d                                       ; $7b9c: $52
    inc sp                                        ; $7b9d: $33
    ld a, $eb                                     ; $7b9e: $3e $eb
    ld sp, $1d00                                  ; $7ba0: $31 $00 $1d
    ld bc, $ff00                                  ; $7ba3: $01 $00 $ff
    ld a, a                                       ; $7ba6: $7f
    dec d                                         ; $7ba7: $15
    nop                                           ; $7ba8: $00
    inc bc                                        ; $7ba9: $03
    nop                                           ; $7baa: $00
    jp hl                                         ; $7bab: $e9


    inc [hl]                                      ; $7bac: $34
    cp h                                          ; $7bad: $bc
    ld [hl+], a                                   ; $7bae: $22
    ld sp, $0211                                  ; $7baf: $31 $11 $02
    ld [$34e9], sp                                ; $7bb2: $08 $e9 $34
    db $d3                                        ; $7bb5: $d3
    ld b, c                                       ; $7bb6: $41
    call z, $011c                                 ; $7bb7: $cc $1c $01
    inc b                                         ; $7bba: $04
    sbc h                                         ; $7bbb: $9c
    ld h, a                                       ; $7bbc: $67
    dec hl                                        ; $7bbd: $2b
    ld c, [hl]                                    ; $7bbe: $4e
    dec c                                         ; $7bbf: $0d
    add hl, de                                    ; $7bc0: $19
    ld [bc], a                                    ; $7bc1: $02
    inc b                                         ; $7bc2: $04
    and b                                         ; $7bc3: $a0
    ld a, $c3                                     ; $7bc4: $3e $c3
    ld b, c                                       ; $7bc6: $41
    jp hl                                         ; $7bc7: $e9


    inc [hl]                                      ; $7bc8: $34
    jr nz, jr_099_7beb                            ; $7bc9: $20 $20

    cp l                                          ; $7bcb: $bd
    ld l, e                                       ; $7bcc: $6b
    db $10                                        ; $7bcd: $10
    ld a, [hl-]                                   ; $7bce: $3a
    ld [$0019], sp                                ; $7bcf: $08 $19 $00
    nop                                           ; $7bd2: $00
    jp hl                                         ; $7bd3: $e9


    inc [hl]                                      ; $7bd4: $34
    db $10                                        ; $7bd5: $10
    ld a, [hl-]                                   ; $7bd6: $3a
    ld [$0019], sp                                ; $7bd7: $08 $19 $00
    nop                                           ; $7bda: $00
    or [hl]                                       ; $7bdb: $b6
    ld a, [hl]                                    ; $7bdc: $7e

jr_099_7bdd:
    ld d, b                                       ; $7bdd: $50
    ld e, c                                       ; $7bde: $59
    jp hl                                         ; $7bdf: $e9


    inc [hl]                                      ; $7be0: $34
    add hl, hl                                    ; $7be1: $29
    inc e                                         ; $7be2: $1c
    ld bc, $ff00                                  ; $7be3: $01 $00 $ff
    ld a, a                                       ; $7be6: $7f
    dec d                                         ; $7be7: $15

jr_099_7be8:
    nop                                           ; $7be8: $00
    inc bc                                        ; $7be9: $03
    nop                                           ; $7bea: $00

jr_099_7beb:
    db $ec                                        ; $7beb: $ec
    inc [hl]                                      ; $7bec: $34
    cp h                                          ; $7bed: $bc
    ld [hl+], a                                   ; $7bee: $22
    ld sp, $0211                                  ; $7bef: $31 $11 $02
    ld [$24b7], sp                                ; $7bf2: $08 $b7 $24

jr_099_7bf5:
    db $ec                                        ; $7bf5: $ec
    inc [hl]                                      ; $7bf6: $34
    adc d                                         ; $7bf7: $8a
    inc h                                         ; $7bf8: $24
    ld c, c                                       ; $7bf9: $49
    jr jr_099_7be8                                ; $7bfa: $18 $ec

    inc [hl]                                      ; $7bfc: $34
    ccf                                           ; $7bfd: $3f
    ld [$040e], sp                                ; $7bfe: $08 $0e $04
    inc b                                         ; $7c01: $04
    ld [$34ec], sp                                ; $7c02: $08 $ec $34
    cp l                                          ; $7c05: $bd
    ld [hl], e                                    ; $7c06: $73
    adc [hl]                                      ; $7c07: $8e
    dec l                                         ; $7c08: $2d
    ld b, c                                       ; $7c09: $41
    inc b                                         ; $7c0a: $04
    db $ec                                        ; $7c0b: $ec
    inc [hl]                                      ; $7c0c: $34
    xor [hl]                                      ; $7c0d: $ae
    ld a, l                                       ; $7c0e: $7d
    ret z                                         ; $7c0f: $c8

    ld b, h                                       ; $7c10: $44
    ld b, h                                       ; $7c11: $44
    inc d                                         ; $7c12: $14
    db $fd                                        ; $7c13: $fd
    ld sp, $0cb5                                  ; $7c14: $31 $b5 $0c
    ld c, h                                       ; $7c17: $4c
    ld [$0004], sp                                ; $7c18: $08 $04 $00
    db $ec                                        ; $7c1b: $ec
    inc [hl]                                      ; $7c1c: $34
    rst $38                                       ; $7c1d: $ff
    inc bc                                        ; $7c1e: $03
    inc sp                                        ; $7c1f: $33
    ld bc, $0008                                  ; $7c20: $01 $08 $00
    ld bc, $ff00                                  ; $7c23: $01 $00 $ff
    ld a, a                                       ; $7c26: $7f
    or [hl]                                       ; $7c27: $b6
    ld d, [hl]                                    ; $7c28: $56
    add sp, $20                                   ; $7c29: $e8 $20
    sub l                                         ; $7c2b: $95
    ld a, [hl-]                                   ; $7c2c: $3a
    xor [hl]                                      ; $7c2d: $ae
    ld d, l                                       ; $7c2e: $55
    ld a, [hl+]                                   ; $7c2f: $2a
    add hl, hl                                    ; $7c30: $29
    add h                                         ; $7c31: $84
    db $10                                        ; $7c32: $10
    rst $38                                       ; $7c33: $ff
    ld a, a                                       ; $7c34: $7f
    sub h                                         ; $7c35: $94
    dec e                                         ; $7c36: $1d
    xor a                                         ; $7c37: $af
    db $10                                        ; $7c38: $10
    inc hl                                        ; $7c39: $23
    inc b                                         ; $7c3a: $04
    nop                                           ; $7c3b: $00
    nop                                           ; $7c3c: $00
    cp [hl]                                       ; $7c3d: $be
    ld [bc], a                                    ; $7c3e: $02
    ld [hl], h                                    ; $7c3f: $74
    add hl, bc                                    ; $7c40: $09
    adc l                                         ; $7c41: $8d
    inc b                                         ; $7c42: $04
    nop                                           ; $7c43: $00
    nop                                           ; $7c44: $00
    db $fc                                        ; $7c45: $fc
    ld d, [hl]                                    ; $7c46: $56
    cpl                                           ; $7c47: $2f
    dec h                                         ; $7c48: $25
    dec h                                         ; $7c49: $25
    ld [$02be], sp                                ; $7c4a: $08 $be $02
    inc h                                         ; $7c4d: $24
    inc b                                         ; $7c4e: $04
    ld d, b                                       ; $7c4f: $50
    nop                                           ; $7c50: $00
    cp a                                          ; $7c51: $bf
    nop                                           ; $7c52: $00
    xor [hl]                                      ; $7c53: $ae
    dec e                                         ; $7c54: $1d
    rst $00                                       ; $7c55: $c7
    jr c, jr_099_7bdd                             ; $7c56: $38 $85

    inc d                                         ; $7c58: $14
    add e                                         ; $7c59: $83
    inc c                                         ; $7c5a: $0c
    sbc c                                         ; $7c5b: $99
    ld a, [hl-]                                   ; $7c5c: $3a
    or d                                          ; $7c5d: $b2
    ld d, l                                       ; $7c5e: $55
    ld l, $29                                     ; $7c5f: $2e $29
    add a                                         ; $7c61: $87
    inc d                                         ; $7c62: $14
    ld bc, $ff00                                  ; $7c63: $01 $00 $ff
    ld a, a                                       ; $7c66: $7f
    xor a                                         ; $7c67: $af
    inc e                                         ; $7c68: $1c
    ld [bc], a                                    ; $7c69: $02
    ld [$76f8], sp                                ; $7c6a: $08 $f8 $76
    ld sp, $6b5a                                  ; $7c6d: $31 $5a $6b
    ld b, c                                       ; $7c70: $41
    and h                                         ; $7c71: $a4
    inc h                                         ; $7c72: $24
    sbc [hl]                                      ; $7c73: $9e
    ld d, a                                       ; $7c74: $57
    ei                                            ; $7c75: $fb
    ld bc, $04f0                                  ; $7c76: $01 $f0 $04
    inc hl                                        ; $7c79: $23
    ld [$3f5c], sp                                ; $7c7a: $08 $5c $3f
    ld d, e                                       ; $7c7d: $53
    ld a, $2a                                     ; $7c7e: $3e $2a
    ld hl, $0843                                  ; $7c80: $21 $43 $08
    ld sp, $155a                                  ; $7c83: $31 $5a $15
    ld d, a                                       ; $7c86: $57
    adc d                                         ; $7c87: $8a
    dec h                                         ; $7c88: $25
    ld hl, $0104                                  ; $7c89: $21 $04 $01
    nop                                           ; $7c8c: $00
    rra                                           ; $7c8d: $1f
    ld bc, $080f                                  ; $7c8e: $01 $0f $08
    daa                                           ; $7c91: $27
    db $10                                        ; $7c92: $10
    ldh a, [rHDMA5]                               ; $7c93: $f0 $55
    add hl, hl                                    ; $7c95: $29
    add hl, sp                                    ; $7c96: $39
    ld h, e                                       ; $7c97: $63
    jr nz, jr_099_7c9a                            ; $7c98: $20 $00

jr_099_7c9a:
    inc b                                         ; $7c9a: $04
    db $fc                                        ; $7c9b: $fc
    halt                                          ; $7c9c: $76
    ld [hl], $5a                                  ; $7c9d: $36 $5a
    ld l, a                                       ; $7c9f: $6f
    ld b, c                                       ; $7ca0: $41
    xor b                                         ; $7ca1: $a8
    inc h                                         ; $7ca2: $24
    ld bc, $ff00                                  ; $7ca3: $01 $00 $ff
    ld a, a                                       ; $7ca6: $7f
    bit 1, l                                      ; $7ca7: $cb $4d
    cp [hl]                                       ; $7ca9: $be
    ld [bc], a                                    ; $7caa: $02
    ei                                            ; $7cab: $fb
    ld a, $f9                                     ; $7cac: $3e $f9
    dec e                                         ; $7cae: $1d
    ld [hl], b                                    ; $7caf: $70
    ld hl, $20e7                                  ; $7cb0: $21 $e7 $20
    ld c, d                                       ; $7cb3: $4a
    add hl, hl                                    ; $7cb4: $29
    sub h                                         ; $7cb5: $94
    dec e                                         ; $7cb6: $1d
    xor a                                         ; $7cb7: $af
    db $10                                        ; $7cb8: $10
    inc h                                         ; $7cb9: $24
    inc b                                         ; $7cba: $04
    sbc $03                                       ; $7cbb: $de $03
    jr c, @+$26                                   ; $7cbd: $38 $24

    ld c, e                                       ; $7cbf: $4b
    jr jr_099_7ce6                                ; $7cc0: $18 $24

    ld [$19b1], sp                                ; $7cc2: $08 $b1 $19
    ld c, $0d                                     ; $7cc5: $0e $0d
    add sp, $10                                   ; $7cc7: $e8 $10
    ld b, d                                       ; $7cc9: $42
    inc c                                         ; $7cca: $0c
    or $6a                                        ; $7ccb: $f6 $6a
    xor l                                         ; $7ccd: $ad
    ld c, c                                       ; $7cce: $49
    call nz, $4138                                ; $7ccf: $c4 $38 $41
    inc e                                         ; $7cd2: $1c
    ld e, h                                       ; $7cd3: $5c
    ld h, e                                       ; $7cd4: $63
    ld [de], a                                    ; $7cd5: $12
    ld a, [hl-]                                   ; $7cd6: $3a
    ld a, [hl+]                                   ; $7cd7: $2a
    dec e                                         ; $7cd8: $1d
    ld b, e                                       ; $7cd9: $43
    inc b                                         ; $7cda: $04
    ld [hl], a                                    ; $7cdb: $77
    ld a, $75                                     ; $7cdc: $3e $75
    add hl, hl                                    ; $7cde: $29
    xor d                                         ; $7cdf: $aa
    inc h                                         ; $7ce0: $24
    ld h, e                                       ; $7ce1: $63
    jr z, jr_099_7ce5                             ; $7ce2: $28 $01

    nop                                           ; $7ce4: $00

jr_099_7ce5:
    rst $38                                       ; $7ce5: $ff

jr_099_7ce6:
    ld a, a                                       ; $7ce6: $7f
    and a                                         ; $7ce7: $a7
    inc a                                         ; $7ce8: $3c
    nop                                           ; $7ce9: $00
    inc c                                         ; $7cea: $0c
    cp [hl]                                       ; $7ceb: $be
    ld d, $74                                     ; $7cec: $16 $74
    add hl, bc                                    ; $7cee: $09
    rlc b                                         ; $7cef: $cb $00
    dec h                                         ; $7cf1: $25
    nop                                           ; $7cf2: $00
    ld a, [$cd7f]                                 ; $7cf3: $fa $7f $cd
    ld d, [hl]                                    ; $7cf6: $56
    ld h, a                                       ; $7cf7: $67
    dec a                                         ; $7cf8: $3d
    jr nz, jr_099_7d17                            ; $7cf9: $20 $1c

    db $dd                                        ; $7cfb: $dd
    ld bc, $56f7                                  ; $7cfc: $01 $f7 $56
    adc h                                         ; $7cff: $8c
    dec l                                         ; $7d00: $2d
    ld [hl+], a                                   ; $7d01: $22
    ld [$1fde], sp                                ; $7d02: $08 $de $1f
    rst $38                                       ; $7d05: $ff
    ld bc, $0416                                  ; $7d06: $01 $16 $04
    nop                                           ; $7d09: $00
    nop                                           ; $7d0a: $00
    ld [hl], h                                    ; $7d0b: $74
    add hl, bc                                    ; $7d0c: $09
    ld a, c                                       ; $7d0d: $79
    ld c, [hl]                                    ; $7d0e: $4e
    rrca                                          ; $7d0f: $0f
    add hl, hl                                    ; $7d10: $29
    dec b                                         ; $7d11: $05
    inc b                                         ; $7d12: $04
    adc l                                         ; $7d13: $8d
    nop                                           ; $7d14: $00
    ld a, c                                       ; $7d15: $79
    ld c, [hl]                                    ; $7d16: $4e

jr_099_7d17:
    rrca                                          ; $7d17: $0f
    add hl, hl                                    ; $7d18: $29
    dec b                                         ; $7d19: $05
    inc b                                         ; $7d1a: $04
    ld [hl], h                                    ; $7d1b: $74
    ld bc, $008d                                  ; $7d1c: $01 $8d $00
    ld b, a                                       ; $7d1f: $47
    nop                                           ; $7d20: $00
    dec h                                         ; $7d21: $25
    nop                                           ; $7d22: $00

jr_099_7d23:
    ld bc, $ff00                                  ; $7d23: $01 $00 $ff
    ld a, a                                       ; $7d26: $7f
    add a                                         ; $7d27: $87
    add hl, sp                                    ; $7d28: $39
    nop                                           ; $7d29: $00
    inc c                                         ; $7d2a: $0c
    ld d, [hl]                                    ; $7d2b: $56
    ld [hl], a                                    ; $7d2c: $77
    rst $28                                       ; $7d2d: $ef
    ld [hl], l                                    ; $7d2e: $75
    ret z                                         ; $7d2f: $c8

    jr c, @+$28                                   ; $7d30: $38 $26

    db $10                                        ; $7d32: $10
    db $10                                        ; $7d33: $10
    ld a, d                                       ; $7d34: $7a
    cp l                                          ; $7d35: $bd
    ld [hl], a                                    ; $7d36: $77
    adc $35                                       ; $7d37: $ce $35
    ld h, e                                       ; $7d39: $63
    inc c                                         ; $7d3a: $0c
    ld [bc], a                                    ; $7d3b: $02
    nop                                           ; $7d3c: $00
    cp $5a                                        ; $7d3d: $fe $5a
    ld [hl], l                                    ; $7d3f: $75
    ld hl, $042a                                  ; $7d40: $21 $2a $04
    rst $38                                       ; $7d43: $ff
    ld c, d                                       ; $7d44: $4a
    ld e, b                                       ; $7d45: $58
    ld bc, $0666                                  ; $7d46: $01 $66 $06
    add d                                         ; $7d49: $82
    jr @-$2c                                      ; $7d4a: $18 $d2

    ld h, [hl]                                    ; $7d4c: $66
    adc h                                         ; $7d4d: $8c
    ld l, c                                       ; $7d4e: $69
    ld h, l                                       ; $7d4f: $65
    inc l                                         ; $7d50: $2c
    nop                                           ; $7d51: $00
    nop                                           ; $7d52: $00
    rst $38                                       ; $7d53: $ff
    inc bc                                        ; $7d54: $03
    rst $38                                       ; $7d55: $ff
    ld bc, $00d5                                  ; $7d56: $01 $d5 $00
    ld c, e                                       ; $7d59: $4b
    nop                                           ; $7d5a: $00
    ld l, a                                       ; $7d5b: $6f
    ld e, d                                       ; $7d5c: $5a
    add hl, hl                                    ; $7d5d: $29
    ld e, l                                       ; $7d5e: $5d
    ld [hl+], a                                   ; $7d5f: $22
    jr nz, jr_099_7d62                            ; $7d60: $20 $00

jr_099_7d62:
    nop                                           ; $7d62: $00
    ld bc, $ff00                                  ; $7d63: $01 $00 $ff
    ld a, a                                       ; $7d66: $7f
    ld c, h                                       ; $7d67: $4c
    dec [hl]                                      ; $7d68: $35
    ld b, h                                       ; $7d69: $44
    jr z, @+$01                                   ; $7d6a: $28 $ff

    daa                                           ; $7d6c: $27
    sbc $01                                       ; $7d6d: $de $01
    ld [hl], h                                    ; $7d6f: $74
    nop                                           ; $7d70: $00
    ld [$0020], sp                                ; $7d71: $08 $20 $00
    ld l, a                                       ; $7d74: $6f
    ld h, b                                       ; $7d75: $60
    ld e, l                                       ; $7d76: $5d
    add a                                         ; $7d77: $87
    inc a                                         ; $7d78: $3c
    ld c, d                                       ; $7d79: $4a
    db $10                                        ; $7d7a: $10
    ld a, l                                       ; $7d7b: $7d
    rra                                           ; $7d7c: $1f
    halt                                          ; $7d7d: $76
    ld l, $8d                                     ; $7d7e: $2e $8d
    add hl, hl                                    ; $7d80: $29
    add h                                         ; $7d81: $84
    jr z, jr_099_7d23                             ; $7d82: $28 $9f

    ld b, a                                       ; $7d84: $47
    scf                                           ; $7d85: $37
    ld a, [de]                                    ; $7d86: $1a
    rl h                                          ; $7d87: $cb $14
    rlca                                          ; $7d89: $07
    inc d                                         ; $7d8a: $14
    nop                                           ; $7d8b: $00
    ccf                                           ; $7d8c: $3f
    inc hl                                        ; $7d8d: $23
    ld l, $47                                     ; $7d8e: $2e $47
    dec e                                         ; $7d90: $1d
    ld c, d                                       ; $7d91: $4a
    db $10                                        ; $7d92: $10
    ld e, d                                       ; $7d93: $5a
    ld a, [hl-]                                   ; $7d94: $3a
    push af                                       ; $7d95: $f5
    ld b, a                                       ; $7d96: $47
    rst $28                                       ; $7d97: $ef
    ld b, c                                       ; $7d98: $41
    and e                                         ; $7d99: $a3
    inc e                                         ; $7d9a: $1c
    reti                                          ; $7d9b: $d9


    ld a, l                                       ; $7d9c: $7d
    db $10                                        ; $7d9d: $10
    ld e, l                                       ; $7d9e: $5d
    adc e                                         ; $7d9f: $8b
    inc a                                         ; $7da0: $3c
    ld c, d                                       ; $7da1: $4a
    inc h                                         ; $7da2: $24
    ld bc, $ff00                                  ; $7da3: $01 $00 $ff
    ld a, a                                       ; $7da6: $7f
    ld c, h                                       ; $7da7: $4c
    dec [hl]                                      ; $7da8: $35
    ld b, h                                       ; $7da9: $44
    ld [$719c], sp                                ; $7daa: $08 $9c $71
    call nc, $8a48                                ; $7dad: $d4 $48 $8a
    ld b, h                                       ; $7db0: $44
    add d                                         ; $7db1: $82
    inc l                                         ; $7db2: $2c
    dec b                                         ; $7db3: $05
    ld hl, $48d4                                  ; $7db4: $21 $d4 $48
    adc d                                         ; $7db7: $8a
    ld b, h                                       ; $7db8: $44
    add d                                         ; $7db9: $82
    inc l                                         ; $7dba: $2c
    call nc, $0548                                ; $7dbb: $d4 $48 $05
    ld hl, $0c00                                  ; $7dbe: $21 $00 $0c
    ld b, h                                       ; $7dc1: $44
    ld [$2b79], sp                                ; $7dc2: $08 $79 $2b
    inc l                                         ; $7dc5: $2c
    ld a, [hl+]                                   ; $7dc6: $2a
    dec b                                         ; $7dc7: $05
    ld hl, $1c83                                  ; $7dc8: $21 $83 $1c
    dec b                                         ; $7dcb: $05
    ld hl, $3eda                                  ; $7dcc: $21 $da $3e
    ld c, e                                       ; $7dcf: $4b
    dec h                                         ; $7dd0: $25
    ld h, e                                       ; $7dd1: $63
    db $10                                        ; $7dd2: $10
    db $f4                                        ; $7dd3: $f4
    ld e, [hl]                                    ; $7dd4: $5e
    sub a                                         ; $7dd5: $97
    dec b                                         ; $7dd6: $05
    ld l, l                                       ; $7dd7: $6d
    inc b                                         ; $7dd8: $04
    ld b, d                                       ; $7dd9: $42
    ld [$6a18], sp                                ; $7dda: $08 $18 $6a
    pop de                                        ; $7ddd: $d1
    ld h, b                                       ; $7dde: $60
    adc d                                         ; $7ddf: $8a
    inc h                                         ; $7de0: $24
    add d                                         ; $7de1: $82
    inc e                                         ; $7de2: $1c
    ld bc, $ff00                                  ; $7de3: $01 $00 $ff
    ld a, a                                       ; $7de6: $7f
    dec d                                         ; $7de7: $15
    ld d, h                                       ; $7de8: $54
    ld bc, $4e18                                  ; $7de9: $01 $18 $4e
    ld l, [hl]                                    ; $7dec: $6e
    ld c, c                                       ; $7ded: $49
    ld c, c                                       ; $7dee: $49
    and l                                         ; $7def: $a5
    jr nc, @+$03                                  ; $7df0: $30 $01

    jr @-$44                                      ; $7df2: $18 $ba

    cpl                                           ; $7df4: $2f
    adc [hl]                                      ; $7df5: $8e
    ld e, $87                                     ; $7df6: $1e $87
    ld bc, $10a0                                  ; $7df8: $01 $a0 $10
    adc [hl]                                      ; $7dfb: $8e
    ld e, $9b                                     ; $7dfc: $1e $9b
    ld a, a                                       ; $7dfe: $7f
    ld l, e                                       ; $7dff: $6b
    dec [hl]                                      ; $7e00: $35
    ld hl, $8e10                                  ; $7e01: $21 $10 $8e
    ld e, $df                                     ; $7e04: $1e $df
    inc bc                                        ; $7e06: $03
    ld a, c                                       ; $7e07: $79
    ld bc, $0c67                                  ; $7e08: $01 $67 $0c
    ld [c], a                                     ; $7e0b: $e2
    dec a                                         ; $7e0c: $3d
    sbc e                                         ; $7e0d: $9b
    ld a, a                                       ; $7e0e: $7f
    ld l, e                                       ; $7e0f: $6b
    dec [hl]                                      ; $7e10: $35
    ld hl, $e210                                  ; $7e11: $21 $10 $e2
    dec a                                         ; $7e14: $3d
    rst $18                                       ; $7e15: $df
    inc bc                                        ; $7e16: $03
    ld a, c                                       ; $7e17: $79
    ld bc, $0c67                                  ; $7e18: $01 $67 $0c
    dec c                                         ; $7e1b: $0d
    ld h, e                                       ; $7e1c: $63
    ld [c], a                                     ; $7e1d: $e2
    dec a                                         ; $7e1e: $3d
    ld bc, $6021                                  ; $7e1f: $01 $21 $60
    db $10                                        ; $7e22: $10
    ld bc, $ff00                                  ; $7e23: $01 $00 $ff
    ld a, a                                       ; $7e26: $7f
    dec sp                                        ; $7e27: $3b
    jr jr_099_7e6b                                ; $7e28: $18 $41

    ld [$66f5], sp                                ; $7e2a: $08 $f5 $66
    rst $28                                       ; $7e2d: $ef
    ld c, l                                       ; $7e2e: $4d
    ld h, $29                                     ; $7e2f: $26 $29
    and d                                         ; $7e31: $a2
    inc e                                         ; $7e32: $1c
    push de                                       ; $7e33: $d5
    ld a, a                                       ; $7e34: $7f
    db $e4                                        ; $7e35: $e4
    ld e, c                                       ; $7e36: $59
    dec b                                         ; $7e37: $05
    dec a                                         ; $7e38: $3d
    inc bc                                        ; $7e39: $03
    inc h                                         ; $7e3a: $24
    bit 0, c                                      ; $7e3b: $cb $41
    rst $20                                       ; $7e3d: $e7
    inc l                                         ; $7e3e: $2c
    jr nz, @+$0a                                  ; $7e3f: $20 $08

    nop                                           ; $7e41: $00
    nop                                           ; $7e42: $00
    ld [hl], l                                    ; $7e43: $75
    halt                                          ; $7e44: $76
    ld l, a                                       ; $7e45: $6f
    ld e, l                                       ; $7e46: $5d
    and [hl]                                      ; $7e47: $a6
    jr c, jr_099_7e6c                             ; $7e48: $38 $22

    inc l                                         ; $7e4a: $2c
    ld sp, hl                                     ; $7e4b: $f9
    ld h, [hl]                                    ; $7e4c: $66
    di                                            ; $7e4d: $f3
    ld c, l                                       ; $7e4e: $4d
    ld a, [hl+]                                   ; $7e4f: $2a
    add hl, hl                                    ; $7e50: $29
    and [hl]                                      ; $7e51: $a6
    inc e                                         ; $7e52: $1c
    push de                                       ; $7e53: $d5
    ld a, a                                       ; $7e54: $7f
    ld [$0959], a                                 ; $7e55: $ea $59 $09
    dec a                                         ; $7e58: $3d
    inc b                                         ; $7e59: $04
    inc h                                         ; $7e5a: $24
    rst $28                                       ; $7e5b: $ef
    dec a                                         ; $7e5c: $3d
    rst $28                                       ; $7e5d: $ef
    dec a                                         ; $7e5e: $3d
    rst $28                                       ; $7e5f: $ef
    dec a                                         ; $7e60: $3d
    rst $28                                       ; $7e61: $ef
    dec a                                         ; $7e62: $3d
    ld bc, $ff00                                  ; $7e63: $01 $00 $ff
    ld a, a                                       ; $7e66: $7f
    dec d                                         ; $7e67: $15
    ld d, h                                       ; $7e68: $54
    dec d                                         ; $7e69: $15
    ld d, h                                       ; $7e6a: $54

jr_099_7e6b:
    adc [hl]                                      ; $7e6b: $8e

jr_099_7e6c:
    inc de                                        ; $7e6c: $13
    inc hl                                        ; $7e6d: $23
    ld e, $05                                     ; $7e6e: $1e $05
    ld bc, $1462                                  ; $7e70: $01 $62 $14
    inc hl                                        ; $7e73: $23
    ld e, $73                                     ; $7e74: $1e $73
    rlca                                          ; $7e76: $07
    jp z, $a615                                   ; $7e77: $ca $15 $a6

    inc b                                         ; $7e7a: $04
    inc hl                                        ; $7e7b: $23
    ld e, $f5                                     ; $7e7c: $1e $f5
    ld sp, $08ef                                  ; $7e7e: $31 $ef $08
    ld b, [hl]                                    ; $7e81: $46
    nop                                           ; $7e82: $00
    inc hl                                        ; $7e83: $23
    ld e, $1b                                     ; $7e84: $1e $1b
    ld d, e                                       ; $7e86: $53
    ld l, $2d                                     ; $7e87: $2e $2d
    dec b                                         ; $7e89: $05
    inc b                                         ; $7e8a: $04
    inc hl                                        ; $7e8b: $23
    ld e, $3a                                     ; $7e8c: $1e $3a
    inc b                                         ; $7e8e: $04
    ld b, a                                       ; $7e8f: $47
    inc d                                         ; $7e90: $14
    ld a, l                                       ; $7e91: $7d
    inc bc                                        ; $7e92: $03
    inc hl                                        ; $7e93: $23
    ld e, $9f                                     ; $7e94: $1e $9f
    ld a, l                                       ; $7e96: $7d
    and b                                         ; $7e97: $a0
    ld a, h                                       ; $7e98: $7c
    rst $38                                       ; $7e99: $ff
    ld a, a                                       ; $7e9a: $7f
    inc hl                                        ; $7e9b: $23
    ld e, $57                                     ; $7e9c: $1e $57
    ld l, a                                       ; $7e9e: $6f
    cpl                                           ; $7e9f: $2f
    ld c, d                                       ; $7ea0: $4a
    add h                                         ; $7ea1: $84
    jr jr_099_7ea5                                ; $7ea2: $18 $01

    nop                                           ; $7ea4: $00

jr_099_7ea5:
    rst $38                                       ; $7ea5: $ff
    ld a, a                                       ; $7ea6: $7f
    dec d                                         ; $7ea7: $15
    ld d, h                                       ; $7ea8: $54
    dec d                                         ; $7ea9: $15
    ld d, h                                       ; $7eaa: $54
    adc [hl]                                      ; $7eab: $8e
    inc de                                        ; $7eac: $13
    inc hl                                        ; $7ead: $23
    ld e, $05                                     ; $7eae: $1e $05
    ld bc, $1462                                  ; $7eb0: $01 $62 $14
    inc hl                                        ; $7eb3: $23
    ld e, $73                                     ; $7eb4: $1e $73
    rlca                                          ; $7eb6: $07
    jp z, $a615                                   ; $7eb7: $ca $15 $a6

    inc b                                         ; $7eba: $04
    inc hl                                        ; $7ebb: $23
    ld e, $f5                                     ; $7ebc: $1e $f5
    ld sp, $08ef                                  ; $7ebe: $31 $ef $08
    ld b, [hl]                                    ; $7ec1: $46
    nop                                           ; $7ec2: $00
    inc hl                                        ; $7ec3: $23
    ld e, $b2                                     ; $7ec4: $1e $b2
    add hl, hl                                    ; $7ec6: $29
    call Call_000_2508                            ; $7ec7: $cd $08 $25
    nop                                           ; $7eca: $00
    inc hl                                        ; $7ecb: $23
    ld e, $1f                                     ; $7ecc: $1e $1f
    inc bc                                        ; $7ece: $03
    dec d                                         ; $7ecf: $15
    jr jr_099_7ed9                                ; $7ed0: $18 $07

    ld [$1e23], sp                                ; $7ed2: $08 $23 $1e
    jp nc, $616a                                  ; $7ed5: $d2 $6a $61

    ld c, l                                       ; $7ed8: $4d

jr_099_7ed9:
    ld b, c                                       ; $7ed9: $41
    db $10                                        ; $7eda: $10
    inc hl                                        ; $7edb: $23
    ld e, $57                                     ; $7edc: $1e $57
    ld l, a                                       ; $7ede: $6f
    cpl                                           ; $7edf: $2f
    ld c, d                                       ; $7ee0: $4a
    add h                                         ; $7ee1: $84
    jr jr_099_7ee5                                ; $7ee2: $18 $01

    nop                                           ; $7ee4: $00

jr_099_7ee5:
    rst $38                                       ; $7ee5: $ff
    ld a, a                                       ; $7ee6: $7f
    dec d                                         ; $7ee7: $15
    ld d, h                                       ; $7ee8: $54
    dec d                                         ; $7ee9: $15
    ld d, h                                       ; $7eea: $54
    adc [hl]                                      ; $7eeb: $8e
    inc de                                        ; $7eec: $13
    inc hl                                        ; $7eed: $23
    ld e, $05                                     ; $7eee: $1e $05
    ld bc, $1462                                  ; $7ef0: $01 $62 $14
    inc hl                                        ; $7ef3: $23
    ld e, $73                                     ; $7ef4: $1e $73
    rlca                                          ; $7ef6: $07
    jp z, $a615                                   ; $7ef7: $ca $15 $a6

    inc b                                         ; $7efa: $04
    inc hl                                        ; $7efb: $23
    ld e, $f5                                     ; $7efc: $1e $f5
    ld sp, $08ef                                  ; $7efe: $31 $ef $08

Jump_099_7f01:
    ld b, [hl]                                    ; $7f01: $46
    nop                                           ; $7f02: $00
    inc hl                                        ; $7f03: $23
    ld e, $1b                                     ; $7f04: $1e $1b
    ld d, e                                       ; $7f06: $53
    ld l, $2d                                     ; $7f07: $2e $2d
    dec b                                         ; $7f09: $05
    inc b                                         ; $7f0a: $04
    inc hl                                        ; $7f0b: $23
    ld e, $18                                     ; $7f0c: $1e $18
    ld [hl], a                                    ; $7f0e: $77
    pop bc                                        ; $7f0f: $c1
    add hl, hl                                    ; $7f10: $29
    ld h, b                                       ; $7f11: $60
    inc b                                         ; $7f12: $04
    inc hl                                        ; $7f13: $23
    ld e, $ff                                     ; $7f14: $1e $ff
    dec hl                                        ; $7f16: $2b
    sbc e                                         ; $7f17: $9b
    dec h                                         ; $7f18: $25
    ld h, [hl]                                    ; $7f19: $66
    jr @+$25                                      ; $7f1a: $18 $23

    ld e, $57                                     ; $7f1c: $1e $57
    ld l, a                                       ; $7f1e: $6f
    cpl                                           ; $7f1f: $2f
    ld c, d                                       ; $7f20: $4a
    add h                                         ; $7f21: $84
    jr jr_099_7f25                                ; $7f22: $18 $01

    nop                                           ; $7f24: $00

jr_099_7f25:
    rst $38                                       ; $7f25: $ff
    ld a, a                                       ; $7f26: $7f
    cp a                                          ; $7f27: $bf
    ld h, $11                                     ; $7f28: $26 $11
    ld bc, $138e                                  ; $7f2a: $01 $8e $13
    inc hl                                        ; $7f2d: $23
    ld e, $05                                     ; $7f2e: $1e $05
    ld bc, $1462                                  ; $7f30: $01 $62 $14
    inc bc                                        ; $7f33: $03
    ld e, $73                                     ; $7f34: $1e $73
    rlca                                          ; $7f36: $07
    jp z, $a615                                   ; $7f37: $ca $15 $a6

    inc b                                         ; $7f3a: $04
    inc bc                                        ; $7f3b: $03
    ld e, $f5                                     ; $7f3c: $1e $f5
    ld sp, $08ef                                  ; $7f3e: $31 $ef $08
    ld b, [hl]                                    ; $7f41: $46
    nop                                           ; $7f42: $00
    rst $38                                       ; $7f43: $ff
    ld b, [hl]                                    ; $7f44: $46
    call c, $ee1d                                 ; $7f45: $dc $1d $ee
    ld [$0465], sp                                ; $7f48: $08 $65 $04
    inc hl                                        ; $7f4b: $23
    ld e, $9d                                     ; $7f4c: $1e $9d
    ld l, e                                       ; $7f4e: $6b
    sra c                                         ; $7f4f: $cb $29
    add b                                         ; $7f51: $80
    ld [$1e23], sp                                ; $7f52: $08 $23 $1e
    rst $08                                       ; $7f55: $cf
    ld a, $67                                     ; $7f56: $3e $67
    dec e                                         ; $7f58: $1d
    ld h, l                                       ; $7f59: $65
    inc b                                         ; $7f5a: $04
    inc hl                                        ; $7f5b: $23
    ld e, $57                                     ; $7f5c: $1e $57
    ld l, a                                       ; $7f5e: $6f
    add sp, $49                                   ; $7f5f: $e8 $49
    add h                                         ; $7f61: $84
    jr jr_099_7f65                                ; $7f62: $18 $01

    nop                                           ; $7f64: $00

jr_099_7f65:
    rst $38                                       ; $7f65: $ff
    ld a, a                                       ; $7f66: $7f
    ld l, [hl]                                    ; $7f67: $6e
    ld sp, $0c64                                  ; $7f68: $31 $64 $0c
    ld e, h                                       ; $7f6b: $5c
    ld h, e                                       ; $7f6c: $63
    dec d                                         ; $7f6d: $15
    ld a, [hl+]                                   ; $7f6e: $2a
    jr nc, jr_099_7f8e                            ; $7f6f: $30 $1d

    rlca                                          ; $7f71: $07
    ld [$1b7e], sp                                ; $7f72: $08 $7e $1b
    cp c                                          ; $7f75: $b9
    ld de, $1056                                  ; $7f76: $11 $56 $10
    rlca                                          ; $7f79: $07
    nop                                           ; $7f7a: $00
    cp [hl]                                       ; $7f7b: $be
    ld d, e                                       ; $7f7c: $53
    ld d, d                                       ; $7f7d: $52
    ld a, $47                                     ; $7f7e: $3e $47
    dec a                                         ; $7f80: $3d
    ld h, e                                       ; $7f81: $63
    jr nz, jr_099_7fb9                            ; $7f82: $20 $35

    ld a, a                                       ; $7f84: $7f
    db $eb                                        ; $7f85: $eb
    ld d, c                                       ; $7f86: $51
    inc c                                         ; $7f87: $0c
    ld de, $0045                                  ; $7f88: $11 $45 $00
    halt                                          ; $7f8b: $76
    ld d, e                                       ; $7f8c: $53
    add c                                         ; $7f8d: $81

jr_099_7f8e:
    ld a, [hl-]                                   ; $7f8e: $3a
    ld hl, $2429                                  ; $7f8f: $21 $29 $24
    inc e                                         ; $7f92: $1c
    db $db                                        ; $7f93: $db
    add hl, bc                                    ; $7f94: $09
    rst $38                                       ; $7f95: $ff
    ld a, a                                       ; $7f96: $7f
    adc [hl]                                      ; $7f97: $8e
    ld d, l                                       ; $7f98: $55
    ld hl, $541c                                  ; $7f99: $21 $1c $54
    ld b, d                                       ; $7f9c: $42
    dec c                                         ; $7f9d: $0d
    add hl, bc                                    ; $7f9e: $09
    jr z, jr_099_7fa1                             ; $7f9f: $28 $00

jr_099_7fa1:
    ld bc, $0100                                  ; $7fa1: $01 $00 $01
    nop                                           ; $7fa4: $00
    rst $38                                       ; $7fa5: $ff
    ld a, a                                       ; $7fa6: $7f
    bit 1, l                                      ; $7fa7: $cb $4d
    cp [hl]                                       ; $7fa9: $be
    ld [bc], a                                    ; $7faa: $02
    ei                                            ; $7fab: $fb
    ld a, $f9                                     ; $7fac: $3e $f9
    dec e                                         ; $7fae: $1d
    ld [hl], b                                    ; $7faf: $70
    ld hl, $20e7                                  ; $7fb0: $21 $e7 $20
    or [hl]                                       ; $7fb3: $b6
    ld c, d                                       ; $7fb4: $4a
    sub h                                         ; $7fb5: $94
    dec e                                         ; $7fb6: $1d
    xor a                                         ; $7fb7: $af
    db $10                                        ; $7fb8: $10

jr_099_7fb9:
    inc h                                         ; $7fb9: $24
    inc b                                         ; $7fba: $04
    sbc $03                                       ; $7fbb: $de $03
    jr c, @+$26                                   ; $7fbd: $38 $24

    ld c, e                                       ; $7fbf: $4b
    jr jr_099_7fe6                                ; $7fc0: $18 $24

    ld [$19b1], sp                                ; $7fc2: $08 $b1 $19
    ld c, $0d                                     ; $7fc5: $0e $0d
    add sp, $10                                   ; $7fc7: $e8 $10
    ld b, d                                       ; $7fc9: $42
    inc c                                         ; $7fca: $0c
    or $6a                                        ; $7fcb: $f6 $6a
    xor l                                         ; $7fcd: $ad
    ld c, c                                       ; $7fce: $49
    call nz, $4138                                ; $7fcf: $c4 $38 $41
    inc e                                         ; $7fd2: $1c
    ld e, h                                       ; $7fd3: $5c
    ld h, e                                       ; $7fd4: $63
    ld [de], a                                    ; $7fd5: $12
    ld a, [hl-]                                   ; $7fd6: $3a
    ld a, [hl+]                                   ; $7fd7: $2a
    dec e                                         ; $7fd8: $1d
    ld b, e                                       ; $7fd9: $43
    inc b                                         ; $7fda: $04
    ld [hl], a                                    ; $7fdb: $77
    ld a, $75                                     ; $7fdc: $3e $75
    add hl, hl                                    ; $7fde: $29
    xor d                                         ; $7fdf: $aa
    inc h                                         ; $7fe0: $24
    ld h, e                                       ; $7fe1: $63
    jr z, jr_099_7fed                             ; $7fe2: $28 $09

    nop                                           ; $7fe4: $00
    nop                                           ; $7fe5: $00

jr_099_7fe6:
    add hl, bc                                    ; $7fe6: $09
    nop                                           ; $7fe7: $00
    nop                                           ; $7fe8: $00
    dec d                                         ; $7fe9: $15
    nop                                           ; $7fea: $00
    ld [bc], a                                    ; $7feb: $02
    ld [bc], a                                    ; $7fec: $02

jr_099_7fed:
    nop                                           ; $7fed: $00
    ld b, b                                       ; $7fee: $40
    nop                                           ; $7fef: $00
    ld a, l                                       ; $7ff0: $7d
    nop                                           ; $7ff1: $00
    ld a, [bc]                                    ; $7ff2: $0a
    ld a, [de]                                    ; $7ff3: $1a
    ld a, c                                       ; $7ff4: $79
    nop                                           ; $7ff5: $00
    ld c, e                                       ; $7ff6: $4b
    nop                                           ; $7ff7: $00
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
