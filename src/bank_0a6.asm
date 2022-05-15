; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0a6", ROMX[$4000], BANK[$a6]

    and [hl]                                      ; $4000: $a6

Call_0a6_4001:
    ld h, b                                       ; $4001: $60
    ld a, [de]                                    ; $4002: $1a
    ld h, e                                       ; $4003: $63
    db $10                                        ; $4004: $10
    ld b, d                                       ; $4005: $42
    rst $38                                       ; $4006: $ff
    ld bc, $8360                                  ; $4007: $01 $60 $83
    rst $38                                       ; $400a: $ff
    pop bc                                        ; $400b: $c1
    cp a                                          ; $400c: $bf
    inc b                                         ; $400d: $04
    ld c, b                                       ; $400e: $48
    rst $38                                       ; $400f: $ff
    ld [bc], a                                    ; $4010: $02
    nop                                           ; $4011: $00
    rst $38                                       ; $4012: $ff
    nop                                           ; $4013: $00
    ei                                            ; $4014: $fb
    nop                                           ; $4015: $00
    cp $06                                        ; $4016: $fe $06
    nop                                           ; $4018: $00
    cp l                                          ; $4019: $bd
    nop                                           ; $401a: $00
    nop                                           ; $401b: $00
    ld [$d400], a                                 ; $401c: $ea $00 $d4
    nop                                           ; $401f: $00
    rst $38                                       ; $4020: $ff
    ld bc, $20ff                                  ; $4021: $01 $ff $20
    ld bc, $047d                                  ; $4024: $01 $7d $04
    nop                                           ; $4027: $00
    xor a                                         ; $4028: $af
    ld bc, $0157                                  ; $4029: $01 $57 $01
    adc e                                         ; $402c: $8b
    ld [bc], a                                    ; $402d: $02
    ld bc, $150a                                  ; $402e: $01 $0a $15
    ret nz                                        ; $4031: $c0

    nop                                           ; $4032: $00
    and b                                         ; $4033: $a0
    ld d, $00                                     ; $4034: $16 $00
    ld l, d                                       ; $4036: $6a
    ld [bc], a                                    ; $4037: $02
    add b                                         ; $4038: $80
    or a                                          ; $4039: $b7
    ret nz                                        ; $403a: $c0

    ld d, l                                       ; $403b: $55
    ld [$4daa], a                                 ; $403c: $ea $aa $4d
    nop                                           ; $403f: $00
    rlca                                          ; $4040: $07
    nop                                           ; $4041: $00
    ld [$0817], sp                                ; $4042: $08 $17 $08
    rlca                                          ; $4045: $07
    ld [$085d], sp                                ; $4046: $08 $5d $08
    xor d                                         ; $4049: $aa
    nop                                           ; $404a: $00
    jr jr_0a6_409a                                ; $404b: $18 $4d

    cp b                                          ; $404d: $b8
    ld a, [bc]                                    ; $404e: $0a
    ld hl, sp-$08                                 ; $404f: $f8 $f8
    ldh a, [$a1]                                  ; $4051: $f0 $a1
    nop                                           ; $4053: $00
    nop                                           ; $4054: $00
    inc b                                         ; $4055: $04
    inc bc                                        ; $4056: $03
    ld a, [bc]                                    ; $4057: $0a
    inc b                                         ; $4058: $04
    inc hl                                        ; $4059: $23
    inc b                                         ; $405a: $04
    ld c, $20                                     ; $405b: $0e $20
    inc b                                         ; $405d: $04
    rrca                                          ; $405e: $0f
    inc b                                         ; $405f: $04
    nop                                           ; $4060: $00
    dec c                                         ; $4061: $0d
    ld b, $58                                     ; $4062: $06 $58
    and b                                         ; $4064: $a0
    ret nz                                        ; $4065: $c0

    ld d, b                                       ; $4066: $50
    nop                                           ; $4067: $00
    ld bc, $4018                                  ; $4068: $01 $18 $40
    ld a, [hl-]                                   ; $406b: $3a
    nop                                           ; $406c: $00
    ld d, h                                       ; $406d: $54
    nop                                           ; $406e: $00
    or h                                          ; $406f: $b4
    jr jr_0a6_4072                                ; $4070: $18 $00

jr_0a6_4072:
    dec d                                         ; $4072: $15
    jr jr_0a6_407f                                ; $4073: $18 $0a

    inc e                                         ; $4075: $1c
    add hl, de                                    ; $4076: $19
    ld c, $1f                                     ; $4077: $0e $1f
    rrca                                          ; $4079: $0f
    db $10                                        ; $407a: $10
    rra                                           ; $407b: $1f
    ld [$381e], sp                                ; $407c: $08 $1e $38

jr_0a6_407f:
    nop                                           ; $407f: $00
    ld a, [c]                                     ; $4080: $f2
    ld b, b                                       ; $4081: $40
    ld h, b                                       ; $4082: $60
    ld b, b                                       ; $4083: $40
    ld bc, $40e0                                  ; $4084: $01 $e0 $40
    ld h, b                                       ; $4087: $60
    ret nz                                        ; $4088: $c0

jr_0a6_4089:
    xor d                                         ; $4089: $aa
    push de                                       ; $408a: $d5
    ld b, d                                       ; $408b: $42
    jr z, jr_0a6_409e                             ; $408c: $28 $10

    nop                                           ; $408e: $00
    ld c, $07                                     ; $408f: $0e $07
    dec bc                                        ; $4091: $0b
    ld b, $42                                     ; $4092: $06 $42
    rlca                                          ; $4094: $07
    rla                                           ; $4095: $17
    inc bc                                        ; $4096: $03
    ld bc, $032d                                  ; $4097: $01 $2d $03

jr_0a6_409a:
    ld e, [hl]                                    ; $409a: $5e
    ld bc, $00b6                                  ; $409b: $01 $b6 $00

jr_0a6_409e:
    ld a, a                                       ; $409e: $7f
    add h                                         ; $409f: $84
    nop                                           ; $40a0: $00
    nop                                           ; $40a1: $00
    ld a, a                                       ; $40a2: $7f
    add b                                         ; $40a3: $80
    xor d                                         ; $40a4: $aa
    ld d, l                                       ; $40a5: $55
    ld c, a                                       ; $40a6: $4f
    rst $38                                       ; $40a7: $ff
    push af                                       ; $40a8: $f5
    ld a, [$1510]                                 ; $40a9: $fa $10 $15
    ldh [$ae], a                                  ; $40ac: $e0 $ae
    sbc d                                         ; $40ae: $9a
    nop                                           ; $40af: $00
    xor [hl]                                      ; $40b0: $ae
    jr jr_0a6_410e                                ; $40b1: $18 $5b

    cp h                                          ; $40b3: $bc
    nop                                           ; $40b4: $00
    xor d                                         ; $40b5: $aa
    db $fc                                        ; $40b6: $fc
    ld sp, hl                                     ; $40b7: $f9
    cp $6e                                        ; $40b8: $fe $6e
    sbc l                                         ; $40ba: $9d
    ld e, c                                       ; $40bb: $59
    ld c, $08                                     ; $40bc: $0e $08
    xor l                                         ; $40be: $ad
    rra                                           ; $40bf: $1f
    ld l, d                                       ; $40c0: $6a
    rra                                           ; $40c1: $1f
    ld e, l                                       ; $40c2: $5d
    ld [$00a0], sp                                ; $40c3: $08 $a0 $00
    ld d, l                                       ; $40c6: $55
    add b                                         ; $40c7: $80
    or h                                          ; $40c8: $b4
    nop                                           ; $40c9: $00
    ld e, l                                       ; $40ca: $5d
    and d                                         ; $40cb: $a2
    ld d, l                                       ; $40cc: $55
    rst $38                                       ; $40cd: $ff
    cp $ff                                        ; $40ce: $fe $ff
    sbc $80                                       ; $40d0: $de $80
    ret nz                                        ; $40d2: $c0

    nop                                           ; $40d3: $00
    or $09                                        ; $40d4: $f6 $09
    ld a, e                                       ; $40d6: $7b
    add h                                         ; $40d7: $84
    rst $10                                       ; $40d8: $d7
    jr z, jr_0a6_4089                             ; $40d9: $28 $ae

    inc b                                         ; $40db: $04
    ld d, c                                       ; $40dc: $51
    ld e, l                                       ; $40dd: $5d
    and d                                         ; $40de: $a2
    dec hl                                        ; $40df: $2b
    call nc, Call_000_08d0                        ; $40e0: $d4 $d0 $08
    rst $30                                       ; $40e3: $f7
    ld [$fe00], sp                                ; $40e4: $08 $00 $fe
    ld bc, $a25d                                  ; $40e7: $01 $5d $a2
    ld a, [c]                                     ; $40ea: $f2
    dec c                                         ; $40eb: $0d
    ldh [$1f], a                                  ; $40ec: $e0 $1f
    nop                                           ; $40ee: $00
    xor b                                         ; $40ef: $a8
    ld d, a                                       ; $40f0: $57
    rst $30                                       ; $40f1: $f7
    rrca                                          ; $40f2: $0f
    jp hl                                         ; $40f3: $e9


jr_0a6_40f4:
    ld d, $7b                                     ; $40f4: $16 $7b
    add h                                         ; $40f6: $84
    nop                                           ; $40f7: $00
    or a                                          ; $40f8: $b7
    ld c, b                                       ; $40f9: $48
    ld c, [hl]                                    ; $40fa: $4e
    or c                                          ; $40fb: $b1
    dec e                                         ; $40fc: $1d
    ld [c], a                                     ; $40fd: $e2
    adc d                                         ; $40fe: $8a
    ld [hl], l                                    ; $40ff: $75
    nop                                           ; $4100: $00
    dec d                                         ; $4101: $15
    ld [$ff03], a                                 ; $4102: $ea $03 $ff
    ldh a, [rIF]                                  ; $4105: $f0 $0f
    db $fd                                        ; $4107: $fd
    ld [bc], a                                    ; $4108: $02
    nop                                           ; $4109: $00
    cp a                                          ; $410a: $bf
    ld b, b                                       ; $410b: $40
    xor $11                                       ; $410c: $ee $11

jr_0a6_410e:
    db $dd                                        ; $410e: $dd
    ld [hl+], a                                   ; $410f: $22
    xor d                                         ; $4110: $aa
    ld d, l                                       ; $4111: $55
    ld [hl+], a                                   ; $4112: $22
    ld d, h                                       ; $4113: $54
    xor e                                         ; $4114: $ab
    nop                                           ; $4115: $00
    add hl, bc                                    ; $4116: $09
    ld a, a                                       ; $4117: $7f
    nop                                           ; $4118: $00
    rst $30                                       ; $4119: $f7
    db $fc                                        ; $411a: $fc
    nop                                           ; $411b: $00
    ld d, l                                       ; $411c: $55
    ld c, $00                                     ; $411d: $0e $00
    ld a, [hl+]                                   ; $411f: $2a
    nop                                           ; $4120: $00
    ld b, h                                       ; $4121: $44
    ld a, $08                                     ; $4122: $3e $08
    add [hl]                                      ; $4124: $86
    nop                                           ; $4125: $00
    ld a, b                                       ; $4126: $78
    nop                                           ; $4127: $00
    nop                                           ; $4128: $00
    dec b                                         ; $4129: $05
    ld a, l                                       ; $412a: $7d
    nop                                           ; $412b: $00
    xor d                                         ; $412c: $aa
    nop                                           ; $412d: $00
    ld d, b                                       ; $412e: $50
    ld e, $01                                     ; $412f: $1e $01
    rst $38                                       ; $4131: $ff
    ld a, [bc]                                    ; $4132: $0a
    nop                                           ; $4133: $00
    ld b, c                                       ; $4134: $41
    rst $38                                       ; $4135: $ff
    stop                                          ; $4136: $10 $00
    ld d, a                                       ; $4138: $57
    nop                                           ; $4139: $00
    adc d                                         ; $413a: $8a
    nop                                           ; $413b: $00
    dec d                                         ; $413c: $15
    call c, RST_00                                ; $413d: $dc $00 $00
    dec b                                         ; $4140: $05
    ld a, [de]                                    ; $4141: $1a
    jr c, jr_0a6_4164                             ; $4142: $38 $20

    ld a, [hl+]                                   ; $4144: $2a
    jr nc, jr_0a6_40f4                            ; $4145: $30 $ad

    ld [hl], b                                    ; $4147: $70
    nop                                           ; $4148: $00
    rst $20                                       ; $4149: $e7
    jr c, jr_0a6_41af                             ; $414a: $38 $63

    ccf                                           ; $414c: $3f
    ld a, a                                       ; $414d: $7f
    inc a                                         ; $414e: $3c
    ld [bc], a                                    ; $414f: $02
    nop                                           ; $4150: $00
    nop                                           ; $4151: $00
    ld b, b                                       ; $4152: $40
    and b                                         ; $4153: $a0
    jr nz, @+$12                                  ; $4154: $20 $10

    jr nz, jr_0a6_4168                            ; $4156: $20 $10

    ld h, d                                       ; $4158: $62
    db $10                                        ; $4159: $10
    ld bc, $7090                                  ; $415a: $01 $90 $70
    ld hl, sp-$20                                 ; $415d: $f8 $e0
    sub d                                         ; $415f: $92
    ld b, b                                       ; $4160: $40
    and c                                         ; $4161: $a1
    cp $00                                        ; $4162: $fe $00

jr_0a6_4164:
    ld a, [de]                                    ; $4164: $1a
    ld [$2000], sp                                ; $4165: $08 $00 $20

jr_0a6_4168:
    inc b                                         ; $4168: $04
    ld hl, $090b                                  ; $4169: $21 $0b $09
    ld [bc], a                                    ; $416c: $02
    db $10                                        ; $416d: $10
    ld de, $a001                                  ; $416e: $11 $01 $a0
    ld d, $01                                     ; $4171: $16 $01
    ld b, h                                       ; $4173: $44
    ld a, [de]                                    ; $4174: $1a
    ld bc, $2078                                  ; $4175: $01 $78 $20
    inc l                                         ; $4178: $2c
    ld [hl], b                                    ; $4179: $70
    ld h, b                                       ; $417a: $60
    nop                                           ; $417b: $00
    ccf                                           ; $417c: $3f
    ccf                                           ; $417d: $3f
    ld a, a                                       ; $417e: $7f
    and $38                                       ; $417f: $e6 $38
    dec sp                                        ; $4181: $3b
    ldh [$3f], a                                  ; $4182: $e0 $3f
    nop                                           ; $4184: $00

jr_0a6_4185:
    ldh [$bf], a                                  ; $4185: $e0 $bf
    ldh [$28], a                                  ; $4187: $e0 $28
    ld b, b                                       ; $4189: $40
    sub c                                         ; $418a: $91
    ld b, b                                       ; $418b: $40
    ld h, d                                       ; $418c: $62
    nop                                           ; $418d: $00
    ret nz                                        ; $418e: $c0

    call nc, $aa80                                ; $418f: $d4 $80 $aa
    nop                                           ; $4192: $00
    push de                                       ; $4193: $d5
    nop                                           ; $4194: $00
    ld l, d                                       ; $4195: $6a
    xor b                                         ; $4196: $a8
    adc b                                         ; $4197: $88
    nop                                           ; $4198: $00
    add hl, bc                                    ; $4199: $09
    ld a, $01                                     ; $419a: $3e $01
    ld b, d                                       ; $419c: $42
    ld l, b                                       ; $419d: $68
    nop                                           ; $419e: $00
    dec hl                                        ; $419f: $2b
    nop                                           ; $41a0: $00
    ld e, a                                       ; $41a1: $5f
    ld b, b                                       ; $41a2: $40
    nop                                           ; $41a3: $00
    db $10                                        ; $41a4: $10
    add hl, bc                                    ; $41a5: $09
    ld hl, $4002                                  ; $41a6: $21 $02 $40
    inc b                                         ; $41a9: $04
    xor l                                         ; $41aa: $ad
    ld [$5a00], sp                                ; $41ab: $08 $00 $5a
    inc c                                         ; $41ae: $0c

jr_0a6_41af:
    xor e                                         ; $41af: $ab
    inc c                                         ; $41b0: $0c
    ret c                                         ; $41b1: $d8

    rrca                                          ; $41b2: $0f
    xor a                                         ; $41b3: $af
    rlca                                          ; $41b4: $07
    nop                                           ; $41b5: $00
    ei                                            ; $41b6: $fb
    nop                                           ; $41b7: $00
    rst $18                                       ; $41b8: $df
    ldh [$6f], a                                  ; $41b9: $e0 $6f
    sub b                                         ; $41bb: $90
    ei                                            ; $41bc: $fb
    inc b                                         ; $41bd: $04
    nop                                           ; $41be: $00
    halt                                          ; $41bf: $76
    adc c                                         ; $41c0: $89
    and l                                         ; $41c1: $a5
    ld e, d                                       ; $41c2: $5a
    ld d, d                                       ; $41c3: $52
    xor l                                         ; $41c4: $ad
    add c                                         ; $41c5: $81
    ld a, [hl]                                    ; $41c6: $7e
    nop                                           ; $41c7: $00
    ld b, b                                       ; $41c8: $40
    cp a                                          ; $41c9: $bf
    ld a, a                                       ; $41ca: $7f
    add b                                         ; $41cb: $80
    rst $38                                       ; $41cc: $ff
    nop                                           ; $41cd: $00
    ld [hl], a                                    ; $41ce: $77
    adc b                                         ; $41cf: $88
    nop                                           ; $41d0: $00
    db $ed                                        ; $41d1: $ed
    ld [de], a                                    ; $41d2: $12
    rst $10                                       ; $41d3: $d7
    jr z, jr_0a6_4185                             ; $41d4: $28 $af

    ld d, b                                       ; $41d6: $50
    dec e                                         ; $41d7: $1d
    ld [c], a                                     ; $41d8: $e2
    ld hl, $b44b                                  ; $41d9: $21 $4b $b4
    nop                                           ; $41dc: $00
    ld c, c                                       ; $41dd: $49
    rst $28                                       ; $41de: $ef
    rra                                           ; $41df: $1f
    or l                                          ; $41e0: $b5
    ld e, b                                       ; $41e1: $58
    ldh [$09], a                                  ; $41e2: $e0 $09
    ld de, $00ff                                  ; $41e4: $11 $ff $00
    cp a                                          ; $41e7: $bf
    ld [c], a                                     ; $41e8: $e2
    nop                                           ; $41e9: $00
    db $dd                                        ; $41ea: $dd
    nop                                           ; $41eb: $00
    ld a, [$0190]                                 ; $41ec: $fa $90 $01
    add d                                         ; $41ef: $82
    db $10                                        ; $41f0: $10
    jr jr_0a6_4270                                ; $41f1: $18 $7d

    nop                                           ; $41f3: $00
    jp c, Jump_0a6_7500                           ; $41f4: $da $00 $75

    ldh [rP1], a                                  ; $41f7: $e0 $00
    stop                                          ; $41f9: $10 $00
    nop                                           ; $41fb: $00
    cp $01                                        ; $41fc: $fe $01
    cp $01                                        ; $41fe: $fe $01
    ld a, [hl]                                    ; $4200: $7e
    ld bc, $00f6                                  ; $4201: $01 $f6 $00
    ld bc, $01ea                                  ; $4204: $01 $ea $01
    ld d, h                                       ; $4207: $54
    ld bc, $002b                                  ; $4208: $01 $2b $00
    ld b, h                                       ; $420b: $44
    jp nz, Jump_000_08a7                          ; $420c: $c2 $a7 $08

    ret nz                                        ; $420f: $c0

    add hl, de                                    ; $4210: $19
    ld b, $05                                     ; $4211: $06 $05
    ld [bc], a                                    ; $4213: $02
    ld [$00b5], sp                                ; $4214: $08 $b5 $00
    and b                                         ; $4217: $a0
    xor d                                         ; $4218: $aa
    ret nz                                        ; $4219: $c0

    nop                                           ; $421a: $00
    ld [$21d2], sp                                ; $421b: $08 $d2 $21
    add b                                         ; $421e: $80
    jr nc, jr_0a6_4221                            ; $421f: $30 $00

jr_0a6_4221:
    ld [hl+], a                                   ; $4221: $22
    sub $40                                       ; $4222: $d6 $40
    db $10                                        ; $4224: $10
    ld [hl+], a                                   ; $4225: $22
    nop                                           ; $4226: $00
    add c                                         ; $4227: $81
    ret c                                         ; $4228: $d8

    nop                                           ; $4229: $00
    ld bc, $1100                                  ; $422a: $01 $00 $11
    sbc $00                                       ; $422d: $de $00
    ld hl, $0002                                  ; $422f: $21 $02 $00
    ld c, c                                       ; $4232: $49
    nop                                           ; $4233: $00
    and c                                         ; $4234: $a1
    nop                                           ; $4235: $00
    ld d, e                                       ; $4236: $53
    db $fc                                        ; $4237: $fc
    ld bc, $5003                                  ; $4238: $01 $03 $50
    inc c                                         ; $423b: $0c
    or $10                                        ; $423c: $f6 $10
    dec b                                         ; $423e: $05
    ld b, $22                                     ; $423f: $06 $22
    and b                                         ; $4241: $a0
    inc b                                         ; $4242: $04
    stop                                          ; $4243: $10 $00
    nop                                           ; $4245: $00
    db $10                                        ; $4246: $10
    or l                                          ; $4247: $b5
    ld [de], a                                    ; $4248: $12
    db $d3                                        ; $4249: $d3
    inc a                                         ; $424a: $3c
    jr c, @-$0e                                   ; $424b: $38 $f0

    ret nc                                        ; $424d: $d0

    nop                                           ; $424e: $00
    ldh [$b0], a                                  ; $424f: $e0 $b0
    ret nz                                        ; $4251: $c0

    ld a, [bc]                                    ; $4252: $0a
    nop                                           ; $4253: $00
    rla                                           ; $4254: $17
    nop                                           ; $4255: $00
    xor l                                         ; $4256: $ad
    ld [bc], a                                    ; $4257: $02
    nop                                           ; $4258: $00
    ld d, l                                       ; $4259: $55
    xor d                                         ; $425a: $aa
    ld d, [hl]                                    ; $425b: $56
    ld bc, $3b02                                  ; $425c: $01 $02 $3b
    nop                                           ; $425f: $00
    ld bc, $0100                                  ; $4260: $01 $00 $01
    ldh [rSB], a                                  ; $4263: $e0 $01
    push de                                       ; $4265: $d5
    nop                                           ; $4266: $00
    ld a, [$ed01]                                 ; $4267: $fa $01 $ed
    xor b                                         ; $426a: $a8
    adc b                                         ; $426b: $88
    nop                                           ; $426c: $00
    ld a, [$0088]                                 ; $426d: $fa $88 $00

jr_0a6_4270:
    cp $80                                        ; $4270: $fe $80
    jr nz, jr_0a6_427c                            ; $4272: $20 $08

    ld bc, $0006                                  ; $4274: $01 $06 $00
    add hl, bc                                    ; $4277: $09
    inc b                                         ; $4278: $04
    ld [bc], a                                    ; $4279: $02
    nop                                           ; $427a: $00
    inc b                                         ; $427b: $04

jr_0a6_427c:
    nop                                           ; $427c: $00
    nop                                           ; $427d: $00
    xor b                                         ; $427e: $a8
    nop                                           ; $427f: $00
    ret nz                                        ; $4280: $c0

    or l                                          ; $4281: $b5
    ret nz                                        ; $4282: $c0

    jp c, Jump_0a6_4be0                           ; $4283: $da $e0 $4b

    db $f4                                        ; $4286: $f4
    ld h, l                                       ; $4287: $65
    jr z, @-$04                                   ; $4288: $28 $fa

    ld [hl], l                                    ; $428a: $75
    rlc d                                         ; $428b: $cb $02
    ld e, [hl]                                    ; $428d: $5e
    ld [hl-], a                                   ; $428e: $32
    nop                                           ; $428f: $00
    dec b                                         ; $4290: $05
    nop                                           ; $4291: $00
    xor e                                         ; $4292: $ab
    ld [bc], a                                    ; $4293: $02
    nop                                           ; $4294: $00
    ld e, d                                       ; $4295: $5a
    dec b                                         ; $4296: $05
    ld [hl], h                                    ; $4297: $74
    adc e                                         ; $4298: $8b
    ld d, c                                       ; $4299: $51
    cp $01                                        ; $429a: $fe $01
    add b                                         ; $429c: $80
    nop                                           ; $429d: $00

jr_0a6_429e:
    rst $38                                       ; $429e: $ff
    ld a, [hl]                                    ; $429f: $7e
    add c                                         ; $42a0: $81
    xor $91                                       ; $42a1: $ee $91
    ld a, [$f685]                                 ; $42a3: $fa $85 $f6
    nop                                           ; $42a6: $00
    adc c                                         ; $42a7: $89
    and h                                         ; $42a8: $a4
    db $db                                        ; $42a9: $db
    ld d, d                                       ; $42aa: $52
    xor l                                         ; $42ab: $ad
    add b                                         ; $42ac: $80
    ld a, a                                       ; $42ad: $7f
    ld b, b                                       ; $42ae: $40
    inc d                                         ; $42af: $14
    cp a                                          ; $42b0: $bf
    ld bc, $7f06                                  ; $42b1: $01 $06 $7f
    ld [de], a                                    ; $42b4: $12
    inc bc                                        ; $42b5: $03
    add c                                         ; $42b6: $81
    add hl, hl                                    ; $42b7: $29
    dec d                                         ; $42b8: $15
    ld [$8a00], a                                 ; $42b9: $ea $00 $8a
    ld [hl], l                                    ; $42bc: $75
    jr nz, jr_0a6_429e                            ; $42bd: $20 $df

    ld [$01f7], sp                                ; $42bf: $08 $f7 $01

jr_0a6_42c2:
    rst $38                                       ; $42c2: $ff
    db $10                                        ; $42c3: $10
    adc d                                         ; $42c4: $8a
    rst $38                                       ; $42c5: $ff
    rst $10                                       ; $42c6: $d7
    dec c                                         ; $42c7: $0d
    inc bc                                        ; $42c8: $03
    ld b, h                                       ; $42c9: $44
    cp e                                          ; $42ca: $bb
    add b                                         ; $42cb: $80
    ld a, a                                       ; $42cc: $7f
    ld de, $ef10                                  ; $42cd: $11 $10 $ef
    add b                                         ; $42d0: $80
    rst $20                                       ; $42d1: $e7
    ld [bc], a                                    ; $42d2: $02
    adc b                                         ; $42d3: $88
    rst $38                                       ; $42d4: $ff
    ld h, e                                       ; $42d5: $63
    dec e                                         ; $42d6: $1d
    inc bc                                        ; $42d7: $03
    nop                                           ; $42d8: $00
    ld [hl+], a                                   ; $42d9: $22
    db $dd                                        ; $42da: $dd
    ld [$80f7], sp                                ; $42db: $08 $f7 $80
    ld a, a                                       ; $42de: $7f
    ld bc, $04fe                                  ; $42df: $01 $fe $04
    db $10                                        ; $42e2: $10
    rst $38                                       ; $42e3: $ff
    jr nz, @+$01                                  ; $42e4: $20 $ff

    ld d, l                                       ; $42e6: $55
    dec l                                         ; $42e7: $2d
    inc bc                                        ; $42e8: $03
    jr z, jr_0a6_42c2                             ; $42e9: $28 $d7

    ld [$bf40], sp                                ; $42eb: $08 $40 $bf
    db $10                                        ; $42ee: $10
    rst $28                                       ; $42ef: $ef
    rlca                                          ; $42f0: $07
    dec bc                                        ; $42f1: $0b
    and b                                         ; $42f2: $a0
    rst $38                                       ; $42f3: $ff
    ld d, a                                       ; $42f4: $57
    add b                                         ; $42f5: $80
    dec a                                         ; $42f6: $3d
    inc bc                                        ; $42f7: $03
    ccf                                           ; $42f8: $3f
    db $10                                        ; $42f9: $10
    rst $18                                       ; $42fa: $df
    jr nc, jr_0a6_4329                            ; $42fb: $30 $2c

jr_0a6_42fd:
    di                                            ; $42fd: $f3
    db $dd                                        ; $42fe: $dd
    nop                                           ; $42ff: $00
    and $7d                                       ; $4300: $e6 $7d
    add a                                         ; $4302: $87
    ld a, d                                       ; $4303: $7a
    add a                                         ; $4304: $87
    sbc l                                         ; $4305: $9d
    ld h, e                                       ; $4306: $63
    daa                                           ; $4307: $27
    nop                                           ; $4308: $00
    jr jr_0a6_42fd                                ; $4309: $18 $f2

    rrca                                          ; $430b: $0f
    adc d                                         ; $430c: $8a
    ld a, a                                       ; $430d: $7f
    ld [hl], l                                    ; $430e: $75
    adc a                                         ; $430f: $8f
    ei                                            ; $4310: $fb
    nop                                           ; $4311: $00
    rlca                                          ; $4312: $07
    ld [hl-], a                                   ; $4313: $32
    rst $08                                       ; $4314: $cf
    and l                                         ; $4315: $a5
    cp $fb                                        ; $4316: $fe $fb
    db $fc                                        ; $4318: $fc
    rra                                           ; $4319: $1f
    nop                                           ; $431a: $00
    ldh [$cb], a                                  ; $431b: $e0 $cb
    inc b                                         ; $431d: $04
    ld e, l                                       ; $431e: $5d
    and d                                         ; $431f: $a2
    inc bc                                        ; $4320: $03
    cp $ff                                        ; $4321: $fe $ff
    nop                                           ; $4323: $00
    db $fc                                        ; $4324: $fc
    ccf                                           ; $4325: $3f
    ret nz                                        ; $4326: $c0

    or $09                                        ; $4327: $f6 $09

jr_0a6_4329:
    ei                                            ; $4329: $fb
    inc b                                         ; $432a: $04
    ld e, a                                       ; $432b: $5f
    nop                                           ; $432c: $00
    and b                                         ; $432d: $a0
    ldh [$1f], a                                  ; $432e: $e0 $1f
    sbc a                                         ; $4330: $9f
    ld h, b                                       ; $4331: $60
    adc d                                         ; $4332: $8a
    push af                                       ; $4333: $f5
    and b                                         ; $4334: $a0
    add h                                         ; $4335: $84
    ld c, h                                       ; $4336: $4c
    nop                                           ; $4337: $00
    ld a, $ff                                     ; $4338: $3e $ff
    ld bc, $9cfe                                  ; $433a: $01 $fe $9c
    ld bc, $488c                                  ; $433d: $01 $8c $48
    nop                                           ; $4340: $00
    rst $38                                       ; $4341: $ff
    db $fc                                        ; $4342: $fc
    ldh a, [rBGP]                                 ; $4343: $f0 $47
    ld hl, sp-$4b                                 ; $4345: $f8 $b5
    ld a, a                                       ; $4347: $7f
    rst $08                                       ; $4348: $cf
    nop                                           ; $4349: $00
    ccf                                           ; $434a: $3f
    ld a, c                                       ; $434b: $79
    add a                                         ; $434c: $87
    add c                                         ; $434d: $81
    ld a, a                                       ; $434e: $7f
    rst $38                                       ; $434f: $ff
    ld bc, $005e                                  ; $4350: $01 $5e $00
    and e                                         ; $4353: $a3
    or [hl]                                       ; $4354: $b6
    ld c, e                                       ; $4355: $4b
    db $dd                                        ; $4356: $dd
    inc hl                                        ; $4357: $23
    ccf                                           ; $4358: $3f
    ldh [$c7], a                                  ; $4359: $e0 $c7
    nop                                           ; $435b: $00
    ld hl, sp+$34                                 ; $435c: $f8 $34
    rst $08                                       ; $435e: $cf
    sbc l                                         ; $435f: $9d
    and $a6                                       ; $4360: $e6 $a6
    add hl, de                                    ; $4362: $19
    ei                                            ; $4363: $fb
    nop                                           ; $4364: $00
    inc b                                         ; $4365: $04
    rlca                                          ; $4366: $07
    db $fc                                        ; $4367: $fc
    rst $38                                       ; $4368: $ff

jr_0a6_4369:
    ld hl, sp+$06                                 ; $4369: $f8 $06
    ld sp, hl                                     ; $436b: $f9
    dec e                                         ; $436c: $1d
    nop                                           ; $436d: $00
    ld [c], a                                     ; $436e: $e2
    rst $20                                       ; $436f: $e7
    jr jr_0a6_4369                                ; $4370: $18 $f7

    inc c                                         ; $4372: $0c
    di                                            ; $4373: $f3
    inc c                                         ; $4374: $0c
    xor [hl]                                      ; $4375: $ae
    nop                                           ; $4376: $00
    ld d, b                                       ; $4377: $50
    rst $30                                       ; $4378: $f7
    jr jr_0a6_43ec                                ; $4379: $18 $71

    sbc [hl]                                      ; $437b: $9e
    ld [$d71f], a                                 ; $437c: $ea $1f $d7
    nop                                           ; $437f: $00
    cpl                                           ; $4380: $2f
    ld l, h                                       ; $4381: $6c
    sub e                                         ; $4382: $93
    or a                                          ; $4383: $b7
    ld c, b                                       ; $4384: $48
    ld d, c                                       ; $4385: $51
    add b                                         ; $4386: $80
    jr c, jr_0a6_4389                             ; $4387: $38 $00

jr_0a6_4389:
    ret nz                                        ; $4389: $c0

    rst $08                                       ; $438a: $cf
    ldh a, [$bf]                                  ; $438b: $f0 $bf
    ld a, a                                       ; $438d: $7f
    pop hl                                        ; $438e: $e1
    ld e, $7e                                     ; $438f: $1e $7e
    nop                                           ; $4391: $00
    add c                                         ; $4392: $81
    or l                                          ; $4393: $b5
    ld c, d                                       ; $4394: $4a
    ld a, e                                       ; $4395: $7b
    call nz, $ffc6                                ; $4396: $c4 $c6 $ff
    ld sp, hl                                     ; $4399: $f9
    rlca                                          ; $439a: $07
    ld a, a                                       ; $439b: $7f
    ld c, l                                       ; $439c: $4d
    ld a, [c]                                     ; $439d: $f2
    cp e                                          ; $439e: $bb
    call nz, $09f8                                ; $439f: $c4 $f8 $09
    cp h                                          ; $43a2: $bc
    dec bc                                        ; $43a3: $0b
    ld bc, $2058                                  ; $43a4: $01 $58 $20
    rlca                                          ; $43a7: $07
    rlca                                          ; $43a8: $07
    ld de, $0158                                  ; $43a9: $11 $58 $01
    ld bc, $7b84                                  ; $43ac: $01 $84 $7b
    ld de, $ee03                                  ; $43af: $11 $03 $ee
    nop                                           ; $43b2: $00
    rst $38                                       ; $43b3: $ff
    ld b, b                                       ; $43b4: $40
    rst $38                                       ; $43b5: $ff
    db $10                                        ; $43b6: $10
    reti                                          ; $43b7: $d9


    inc bc                                        ; $43b8: $03
    ret nz                                        ; $43b9: $c0

    dec bc                                        ; $43ba: $0b
    inc b                                         ; $43bb: $04
    dec d                                         ; $43bc: $15
    ld [$f708], a                                 ; $43bd: $ea $08 $f7
    nop                                           ; $43c0: $00
    jr c, jr_0a6_43c4                             ; $43c1: $38 $01

    db $10                                        ; $43c3: $10

jr_0a6_43c4:
    rst $38                                       ; $43c4: $ff
    ld b, b                                       ; $43c5: $40
    jr z, jr_0a6_43d8                             ; $43c6: $28 $10

    ld de, $b05c                                  ; $43c8: $11 $5c $b0
    sbc h                                         ; $43cb: $9c
    ld [hl], b                                    ; $43cc: $70
    ld d, $f8                                     ; $43cd: $16 $f8
    ld bc, $fc93                                  ; $43cf: $01 $93 $fc
    dec d                                         ; $43d2: $15
    ld a, [$fd92]                                 ; $43d3: $fa $92 $fd
    ld [hl], b                                    ; $43d6: $70
    dec l                                         ; $43d7: $2d

jr_0a6_43d8:
    inc b                                         ; $43d8: $04
    nop                                           ; $43d9: $00
    ld a, a                                       ; $43da: $7f
    add b                                         ; $43db: $80
    scf                                           ; $43dc: $37
    ret z                                         ; $43dd: $c8

    dec sp                                        ; $43de: $3b
    db $e4                                        ; $43df: $e4
    cpl                                           ; $43e0: $2f
    ldh a, [rP1]                                  ; $43e1: $f0 $00
    sbc $e1                                       ; $43e3: $de $e1
    dec a                                         ; $43e5: $3d
    jp nz, Jump_000_00ff                          ; $43e6: $c2 $ff $00

    rlca                                          ; $43e9: $07
    ld hl, sp+$00                                 ; $43ea: $f8 $00

jr_0a6_43ec:
    push hl                                       ; $43ec: $e5
    jr c, @+$54                                   ; $43ed: $38 $52

    cp l                                          ; $43ef: $bd
    xor l                                         ; $43f0: $ad
    ld e, a                                       ; $43f1: $5f
    ld d, e                                       ; $43f2: $53
    xor a                                         ; $43f3: $af
    nop                                           ; $43f4: $00
    xor h                                         ; $43f5: $ac
    ld d, e                                       ; $43f6: $53
    cp $01                                        ; $43f7: $fe $01
    ld sp, hl                                     ; $43f9: $f9
    ld b, $fb                                     ; $43fa: $06 $fb
    inc c                                         ; $43fc: $0c
    dec b                                         ; $43fd: $05
    add hl, bc                                    ; $43fe: $09
    ld b, $02                                     ; $43ff: $06 $02
    ld bc, $34a9                                  ; $4401: $01 $a9 $34
    inc b                                         ; $4404: $04
    add c                                         ; $4405: $81
    ld a, h                                       ; $4406: $7c
    inc bc                                        ; $4407: $03
    nop                                           ; $4408: $00
    ld b, d                                       ; $4409: $42
    cp a                                          ; $440a: $bf
    db $fd                                        ; $440b: $fd
    inc bc                                        ; $440c: $03
    ld a, [$f50f]                                 ; $440d: $fa $0f $f5
    rrca                                          ; $4410: $0f
    nop                                           ; $4411: $00
    ei                                            ; $4412: $fb
    add a                                         ; $4413: $87
    add b                                         ; $4414: $80
    rst $38                                       ; $4415: $ff
    push bc                                       ; $4416: $c5
    ld [bc], a                                    ; $4417: $02
    ei                                            ; $4418: $fb
    ld b, $66                                     ; $4419: $06 $66
    dec b                                         ; $441b: $05
    ld [de], a                                    ; $441c: $12
    ld bc, $48f0                                  ; $441d: $01 $f0 $48
    ldh a, [rIF]                                  ; $4420: $f0 $0f
    ld e, [hl]                                    ; $4422: $5e
    inc b                                         ; $4423: $04
    ldh a, [$30]                                  ; $4424: $f0 $30
    rst $10                                       ; $4426: $d7
    ld [hl], b                                    ; $4427: $70
    add sp, -$4c                                  ; $4428: $e8 $b4
    jr z, @+$08                                   ; $442a: $28 $06

    ld c, b                                       ; $442c: $48
    xor h                                         ; $442d: $ac
    ld c, b                                       ; $442e: $48
    ld a, l                                       ; $442f: $7d
    ld a, l                                       ; $4430: $7d
    cp $82                                        ; $4431: $fe $82
    nop                                           ; $4433: $00
    ld bc, $0601                                  ; $4434: $01 $01 $06
    rlca                                          ; $4437: $07
    ld a, [de]                                    ; $4438: $1a
    dec e                                         ; $4439: $1d
    ld [hl], l                                    ; $443a: $75
    ld a, d                                       ; $443b: $7a
    nop                                           ; $443c: $00
    xor e                                         ; $443d: $ab
    db $f4                                        ; $443e: $f4
    ld d, a                                       ; $443f: $57
    add sp, -$51                                  ; $4440: $e8 $af
    ret nc                                        ; $4442: $d0

    sub a                                         ; $4443: $97
    add sp, $60                                   ; $4444: $e8 $60
    inc bc                                        ; $4446: $03
    ld a, [hl-]                                   ; $4447: $3a
    inc bc                                        ; $4448: $03
    ldh a, [$0b]                                  ; $4449: $f0 $0b
    ld l, e                                       ; $444b: $6b
    add b                                         ; $444c: $80
    xor [hl]                                      ; $444d: $ae
    ld d, c                                       ; $444e: $51
    ld bc, $cd82                                  ; $444f: $01 $82 $cd
    inc b                                         ; $4452: $04
    xor b                                         ; $4453: $a8
    rst $10                                       ; $4454: $d7
    ret nz                                        ; $4455: $c0

    cp a                                          ; $4456: $bf
    sub b                                         ; $4457: $90
    ret nz                                        ; $4458: $c0

    ld bc, $a681                                  ; $4459: $01 $81 $a6
    and b                                         ; $445c: $a0
    ld hl, $e087                                  ; $445d: $21 $87 $e0
    ld h, b                                       ; $4460: $60
    rst $38                                       ; $4461: $ff
    rst $38                                       ; $4462: $ff
    ldh [$58], a                                  ; $4463: $e0 $58
    ld h, b                                       ; $4465: $60
    add hl, sp                                    ; $4466: $39
    db $fd                                        ; $4467: $fd
    inc b                                         ; $4468: $04
    ld [bc], a                                    ; $4469: $02
    rst $28                                       ; $446a: $ef

jr_0a6_446b:
    db $10                                        ; $446b: $10
    rst $38                                       ; $446c: $ff
    nop                                           ; $446d: $00
    ret nz                                        ; $446e: $c0

    ld c, b                                       ; $446f: $48
    ld [bc], a                                    ; $4470: $02
    rst $38                                       ; $4471: $ff
    nop                                           ; $4472: $00
    ld d, l                                       ; $4473: $55
    xor e                                         ; $4474: $ab
    nop                                           ; $4475: $00
    nop                                           ; $4476: $00
    ret nz                                        ; $4477: $c0

    ret nz                                        ; $4478: $c0

    jr nc, jr_0a6_446b                            ; $4479: $30 $f0

    nop                                           ; $447b: $00
    xor h                                         ; $447c: $ac
    ld e, h                                       ; $447d: $5c
    jp nc, $e92e                                  ; $447e: $d2 $2e $e9

    rla                                           ; $4481: $17
    push af                                       ; $4482: $f5
    dec bc                                        ; $4483: $0b
    nop                                           ; $4484: $00
    ld a, [$ec06]                                 ; $4485: $fa $06 $ec
    rla                                           ; $4488: $17
    ld hl, sp+$0f                                 ; $4489: $f8 $0f
    db $f4                                        ; $448b: $f4
    rra                                           ; $448c: $1f
    nop                                           ; $448d: $00
    xor $1f                                       ; $448e: $ee $1f
    ei                                            ; $4490: $fb
    rlca                                          ; $4491: $07
    rst $28                                       ; $4492: $ef
    db $10                                        ; $4493: $10
    push af                                       ; $4494: $f5
    ld a, [bc]                                    ; $4495: $0a
    nop                                           ; $4496: $00
    rst $38                                       ; $4497: $ff
    nop                                           ; $4498: $00
    rrca                                          ; $4499: $0f
    ldh a, [$e7]                                  ; $449a: $f0 $e7
    jr jr_0a6_44d5                                ; $449c: $18 $37

    call z, $8f02                                 ; $449e: $cc $02 $8f
    db $fc                                        ; $44a1: $fc
    rst $38                                       ; $44a2: $ff
    ldh a, [$1f]                                  ; $44a3: $f0 $1f
    ldh [$2c], a                                  ; $44a5: $e0 $2c
    inc d                                         ; $44a7: $14
    add b                                         ; $44a8: $80
    ld [bc], a                                    ; $44a9: $02
    rst $30                                       ; $44aa: $f7
    ld [$00ff], sp                                ; $44ab: $08 $ff $00
    sbc $21                                       ; $44ae: $de $21
    ld d, h                                       ; $44b0: $54
    inc bc                                        ; $44b1: $03
    ld b, b                                       ; $44b2: $40
    pop bc                                        ; $44b3: $c1
    jr nz, jr_0a6_44be                            ; $44b4: $20 $08

    ld a, $05                                     ; $44b6: $3e $05
    inc b                                         ; $44b8: $04

jr_0a6_44b9:
    rst $18                                       ; $44b9: $df
    jr nz, jr_0a6_44b9                            ; $44ba: $20 $fd

    ld [bc], a                                    ; $44bc: $02
    db $10                                        ; $44bd: $10

jr_0a6_44be:
    ld [$fe00], sp                                ; $44be: $08 $00 $fe
    ld bc, $10ef                                  ; $44c1: $01 $ef $10
    rrca                                          ; $44c4: $0f
    ld [$0f0f], sp                                ; $44c5: $08 $0f $0f
    nop                                           ; $44c8: $00
    db $10                                        ; $44c9: $10
    rra                                           ; $44ca: $1f
    inc e                                         ; $44cb: $1c
    rra                                           ; $44cc: $1f
    ccf                                           ; $44cd: $3f
    inc hl                                        ; $44ce: $23
    ccf                                           ; $44cf: $3f
    inc a                                         ; $44d0: $3c
    nop                                           ; $44d1: $00
    scf                                           ; $44d2: $37
    ccf                                           ; $44d3: $3f
    dec de                                        ; $44d4: $1b

jr_0a6_44d5:
    rra                                           ; $44d5: $1f
    ldh a, [$30]                                  ; $44d6: $f0 $30
    db $fc                                        ; $44d8: $fc
    call z, $3e00                                 ; $44d9: $cc $00 $3e
    ld a, [c]                                     ; $44dc: $f2
    rrca                                          ; $44dd: $0f
    db $fd                                        ; $44de: $fd
    add e                                         ; $44df: $83
    cp $e1                                        ; $44e0: $fe $e1
    ld a, a                                       ; $44e2: $7f
    nop                                           ; $44e3: $00
    ldh a, [$9f]                                  ; $44e4: $f0 $9f
    ld sp, hl                                     ; $44e6: $f9
    rst $28                                       ; $44e7: $ef
    dec c                                         ; $44e8: $0d
    rrca                                          ; $44e9: $0f
    dec bc                                        ; $44ea: $0b
    rrca                                          ; $44eb: $0f
    ld [bc], a                                    ; $44ec: $02
    rlca                                          ; $44ed: $07
    rlca                                          ; $44ee: $07
    dec b                                         ; $44ef: $05
    rlca                                          ; $44f0: $07
    ld bc, $0203                                  ; $44f1: $01 $03 $02
    jr @-$01                                      ; $44f4: $18 $fd

    nop                                           ; $44f6: $00
    rst $30                                       ; $44f7: $f7
    cp a                                          ; $44f8: $bf
    ei                                            ; $44f9: $fb
    ld e, a                                       ; $44fa: $5f
    cp $3e                                        ; $44fb: $fe $3e
    db $fd                                        ; $44fd: $fd
    db $ed                                        ; $44fe: $ed
    nop                                           ; $44ff: $00
    db $eb                                        ; $4500: $eb
    dec bc                                        ; $4501: $0b
    ld c, $1f                                     ; $4502: $0e $1f
    dec d                                         ; $4504: $15
    ld d, $1b                                     ; $4505: $16 $1b
    ld [hl], h                                    ; $4507: $74
    nop                                           ; $4508: $00
    adc e                                         ; $4509: $8b
    jp hl                                         ; $450a: $e9


    ld d, $da                                     ; $450b: $16 $da
    dec l                                         ; $450d: $2d
    cp b                                          ; $450e: $b8
    ld e, a                                       ; $450f: $5f
    ld [hl], l                                    ; $4510: $75
    nop                                           ; $4511: $00
    sbc a                                         ; $4512: $9f
    ld l, [hl]                                    ; $4513: $6e
    sbc a                                         ; $4514: $9f
    add hl, de                                    ; $4515: $19
    ld h, a                                       ; $4516: $67
    rrca                                          ; $4517: $0f
    db $10                                        ; $4518: $10
    dec sp                                        ; $4519: $3b
    nop                                           ; $451a: $00
    call nz, Call_000_314e                        ; $451b: $c4 $4e $31
    rst $10                                       ; $451e: $d7
    ld [$a45b], sp                                ; $451f: $08 $5b $a4
    rlca                                          ; $4522: $07
    ld h, $fc                                     ; $4523: $26 $fc
    xor a                                         ; $4525: $af
    ld h, $02                                     ; $4526: $26 $02
    rst $00                                       ; $4528: $c7
    jr c, jr_0a6_4563                             ; $4529: $38 $38

    jr z, jr_0a6_456d                             ; $452b: $28 $40

    jr z, jr_0a6_454c                             ; $452d: $28 $1d

    nop                                           ; $452f: $00
    ld e, $1b                                     ; $4530: $1e $1b
    inc e                                         ; $4532: $1c
    rra                                           ; $4533: $1f
    jr @+$19                                      ; $4534: $18 $17

    jr jr_0a6_4557                                ; $4536: $18 $1f

    ld [$1f10], sp                                ; $4538: $08 $10 $1f
    db $10                                        ; $453b: $10
    rla                                           ; $453c: $17
    ld [$f700], sp                                ; $453d: $08 $00 $f7
    ld [$018f], sp                                ; $4540: $08 $8f $01
    ld a, b                                       ; $4543: $78
    ld [hl], a                                    ; $4544: $77
    adc h                                         ; $4545: $8c
    ei                                            ; $4546: $fb
    ld b, $33                                     ; $4547: $06 $33
    adc $a0                                       ; $4549: $ce $a0
    ld a, [de]                                    ; $454b: $1a

jr_0a6_454c:
    ld bc, $0303                                  ; $454c: $01 $03 $03
    inc bc                                        ; $454f: $03
    rlca                                          ; $4550: $07
    inc b                                         ; $4551: $04
    inc c                                         ; $4552: $0c
    ld [$2bc3], sp                                ; $4553: $08 $c3 $2b
    nop                                           ; $4556: $00

jr_0a6_4557:
    nop                                           ; $4557: $00
    rra                                           ; $4558: $1f
    ret c                                         ; $4559: $d8

    set 7, h                                      ; $455a: $cb $fc
    dec a                                         ; $455c: $3d
    ld a, $06                                     ; $455d: $3e $06
    ld c, $07                                     ; $455f: $0e $07
    inc bc                                        ; $4561: $03
    inc bc                                        ; $4562: $03

jr_0a6_4563:
    ld bc, $3bec                                  ; $4563: $01 $ec $3b
    call c, $010b                                 ; $4566: $dc $0b $01
    db $10                                        ; $4569: $10
    ccf                                           ; $456a: $3f
    nop                                           ; $456b: $00
    ccf                                           ; $456c: $3f

jr_0a6_456d:
    rlca                                          ; $456d: $07
    ld b, $0f                                     ; $456e: $06 $0f
    add hl, bc                                    ; $4570: $09
    ld e, $17                                     ; $4571: $1e $17
    jr c, jr_0a6_4575                             ; $4573: $38 $00

jr_0a6_4575:
    cpl                                           ; $4575: $2f
    jr nc, jr_0a6_45b7                            ; $4576: $30 $3f

    ld hl, $133f                                  ; $4578: $21 $3f $13
    ld e, $17                                     ; $457b: $1e $17
    nop                                           ; $457d: $00
    dec e                                         ; $457e: $1d
    cp $7e                                        ; $457f: $fe $7e
    add c                                         ; $4581: $81
    rst $38                                       ; $4582: $ff
    rlca                                          ; $4583: $07
    rst $38                                       ; $4584: $ff
    ccf                                           ; $4585: $3f
    nop                                           ; $4586: $00
    ld hl, sp-$01                                 ; $4587: $f8 $ff
    rst $00                                       ; $4589: $c7
    db $fd                                        ; $458a: $fd
    ccf                                           ; $458b: $3f
    ei                                            ; $458c: $fb
    rst $38                                       ; $458d: $ff
    or $00                                        ; $458e: $f6 $00
    cp $65                                        ; $4590: $fe $65
    ld a, d                                       ; $4592: $7a
    rra                                           ; $4593: $1f
    rra                                           ; $4594: $1f
    ld bc, $8103                                  ; $4595: $01 $03 $81
    ld h, b                                       ; $4598: $60
    add e                                         ; $4599: $83
    ld [bc], a                                    ; $459a: $02
    ld [$08c4], sp                                ; $459b: $08 $c4 $08
    rst $38                                       ; $459e: $ff
    ret nz                                        ; $459f: $c0

    add b                                         ; $45a0: $80
    ld a, a                                       ; $45a1: $7f
    ccf                                           ; $45a2: $3f
    ld bc, $ffff                                  ; $45a3: $01 $ff $ff
    ret nz                                        ; $45a6: $c0

    rst $38                                       ; $45a7: $ff
    ccf                                           ; $45a8: $3f
    call z, $8cf3                                 ; $45a9: $cc $f3 $8c
    inc c                                         ; $45ac: $0c
    nop                                           ; $45ad: $00
    rst $08                                       ; $45ae: $cf
    bit 5, a                                      ; $45af: $cb $6f
    xor a                                         ; $45b1: $af
    scf                                           ; $45b2: $37
    rst $10                                       ; $45b3: $d7
    ret c                                         ; $45b4: $d8

    add sp, $00                                   ; $45b5: $e8 $00

jr_0a6_45b7:
    db $ec                                        ; $45b7: $ec
    inc [hl]                                      ; $45b8: $34
    db $f4                                        ; $45b9: $f4
    call c, Call_0a6_6abe                         ; $45ba: $dc $be $6a
    jp c, $0036                                   ; $45bd: $da $36 $00

    cp d                                          ; $45c0: $ba
    cp $5c                                        ; $45c1: $fe $5c
    db $fc                                        ; $45c3: $fc
    adc h                                         ; $45c4: $8c
    db $fc                                        ; $45c5: $fc
    add sp, -$08                                  ; $45c6: $e8 $f8
    jr nz, jr_0a6_45d2                            ; $45c8: $20 $08

    jr jr_0a6_45ce                                ; $45ca: $18 $02

    jr @-$10                                      ; $45cc: $18 $ee

jr_0a6_45ce:
    ld e, $f6                                     ; $45ce: $1e $f6
    ld c, $fe                                     ; $45d0: $0e $fe

jr_0a6_45d2:
    nop                                           ; $45d2: $00
    ld b, $fa                                     ; $45d3: $06 $fa
    ld b, $fe                                     ; $45d5: $06 $fe
    ld [bc], a                                    ; $45d7: $02
    cp $02                                        ; $45d8: $fe $02
    ld a, [$08f0]                                 ; $45da: $fa $f0 $08
    nop                                           ; $45dd: $00
    jr jr_0a6_4608                                ; $45de: $18 $28

    jr nz, jr_0a6_460a                            ; $45e0: $20 $28

    ldh [rOBP0], a                                ; $45e2: $e0 $48
    ld [bc], a                                    ; $45e4: $02
    ld b, $04                                     ; $45e5: $06 $04
    inc c                                         ; $45e7: $0c
    add h                                         ; $45e8: $84
    ld [hl-], a                                   ; $45e9: $32
    ld a, [hl+]                                   ; $45ea: $2a
    ld a, a                                       ; $45eb: $7f
    add b                                         ; $45ec: $80
    call z, $8ef3                                 ; $45ed: $cc $f3 $8e
    inc bc                                        ; $45f0: $03
    ccf                                           ; $45f1: $3f
    cp $00                                        ; $45f2: $fe $00
    ld b, $f4                                     ; $45f4: $06 $f4
    inc c                                         ; $45f6: $0c
    db $ec                                        ; $45f7: $ec
    inc e                                         ; $45f8: $1c
    ret c                                         ; $45f9: $d8

    add hl, sp                                    ; $45fa: $39
    or c                                          ; $45fb: $b1
    inc c                                         ; $45fc: $0c
    ld [hl], c                                    ; $45fd: $71
    ldh [$e0], a                                  ; $45fe: $e0 $e0
    ret nz                                        ; $4600: $c0

    ld l, e                                       ; $4601: $6b
    ld b, $58                                     ; $4602: $06 $58
    ld [$7818], sp                                ; $4604: $08 $18 $78
    rlca                                          ; $4607: $07

jr_0a6_4608:
    ld a, b                                       ; $4608: $78
    db $fc                                        ; $4609: $fc

jr_0a6_460a:
    add h                                         ; $460a: $84
    add [hl]                                      ; $460b: $86
    ld [bc], a                                    ; $460c: $02
    ld l, c                                       ; $460d: $69
    dec d                                         ; $460e: $15
    ld [$8738], a                                 ; $460f: $ea $38 $87
    ld e, $0c                                     ; $4612: $1e $0c
    ld c, h                                       ; $4614: $4c
    cp h                                          ; $4615: $bc
    ldh a, [$f0]                                  ; $4616: $f0 $f0
    dec h                                         ; $4618: $25
    ld c, e                                       ; $4619: $4b
    db $10                                        ; $461a: $10
    dec e                                         ; $461b: $1d
    jp Jump_000_003c                              ; $461c: $c3 $3c $00


    and l                                         ; $461f: $a5
    ld b, d                                       ; $4620: $42
    dec a                                         ; $4621: $3d
    jp nz, $fa87                                  ; $4622: $c2 $87 $fa

    ld a, l                                       ; $4625: $7d
    cp $81                                        ; $4626: $fe $81
    xor c                                         ; $4628: $a9

jr_0a6_4629:
    ld b, l                                       ; $4629: $45
    ret nz                                        ; $462a: $c0

    ret nz                                        ; $462b: $c0

    ldh a, [$30]                                  ; $462c: $f0 $30
    jr nc, @+$01                                  ; $462e: $30 $ff

    ld [de], a                                    ; $4630: $12
    dec b                                         ; $4631: $05
    nop                                           ; $4632: $00
    db $fd                                        ; $4633: $fd
    ld [bc], a                                    ; $4634: $02
    cp l                                          ; $4635: $bd
    ld b, [hl]                                    ; $4636: $46
    or $0f                                        ; $4637: $f6 $0f
    or e                                          ; $4639: $b3
    ld c, a                                       ; $463a: $4f
    ld [hl+], a                                   ; $463b: $22
    ld a, h                                       ; $463c: $7c
    add e                                         ; $463d: $83
    ld e, $0f                                     ; $463e: $1e $0f
    ld bc, $c2fe                                  ; $4640: $01 $fe $c2
    dec hl                                        ; $4643: $2b
    ld bc, $407e                                  ; $4644: $01 $7e $40
    add c                                         ; $4647: $81
    ld [hl], b                                    ; $4648: $70
    inc c                                         ; $4649: $0c
    nop                                           ; $464a: $00
    rst $38                                       ; $464b: $ff
    add e                                         ; $464c: $83
    ld a, h                                       ; $464d: $7c
    cp $01                                        ; $464e: $fe $01
    nop                                           ; $4650: $00
    cp a                                          ; $4651: $bf
    ld b, b                                       ; $4652: $40
    ld d, a                                       ; $4653: $57

jr_0a6_4654:
    xor b                                         ; $4654: $a8
    rst $38                                       ; $4655: $ff
    add b                                         ; $4656: $80
    inc a                                         ; $4657: $3c
    jp Jump_0a6_7010                              ; $4658: $c3 $10 $70


    sbc h                                         ; $465b: $9c
    ld [$0030], a                                 ; $465c: $ea $30 $00
    rst $30                                       ; $465f: $f7
    ld [$04fb], sp                                ; $4660: $08 $fb $04
    db $e4                                        ; $4663: $e4
    ld [hl], $18                                  ; $4664: $36 $18
    ld l, h                                       ; $4666: $6c
    dec h                                         ; $4667: $25
    ld [$7702], sp                                ; $4668: $08 $02 $77
    adc b                                         ; $466b: $88
    inc h                                         ; $466c: $24
    ld a, [bc]                                    ; $466d: $0a
    ld l, l                                       ; $466e: $6d
    sub d                                         ; $466f: $92
    jr nz, jr_0a6_4629                            ; $4670: $20 $b7

    ld c, b                                       ; $4672: $48
    or b                                          ; $4673: $b0

jr_0a6_4674:
    dec hl                                        ; $4674: $2b
    ld [hl], b                                    ; $4675: $70
    adc a                                         ; $4676: $8f
    db $e4                                        ; $4677: $e4
    jr nc, jr_0a6_4654                            ; $4678: $30 $da

    nop                                           ; $467a: $00
    ld h, b                                       ; $467b: $60
    rst $20                                       ; $467c: $e7
    ld a, b                                       ; $467d: $78
    rlca                                          ; $467e: $07
    db $fc                                        ; $467f: $fc
    ld hl, sp-$01                                 ; $4680: $f8 $ff
    ret nc                                        ; $4682: $d0

    nop                                           ; $4683: $00
    jr nc, jr_0a6_4674                            ; $4684: $30 $ee

    jr nc, @+$23                                  ; $4686: $30 $21

    cp $1f                                        ; $4688: $fe $1f
    rra                                           ; $468a: $1f
    add hl, de                                    ; $468b: $19
    nop                                           ; $468c: $00
    ld c, $ec                                     ; $468d: $0e $ec

jr_0a6_468f:
    rra                                           ; $468f: $1f
    db $ec                                        ; $4690: $ec
    rla                                           ; $4691: $17
    ld a, b                                       ; $4692: $78
    adc a                                         ; $4693: $8f
    inc [hl]                                      ; $4694: $34
    nop                                           ; $4695: $00
    ld e, a                                       ; $4696: $5f
    ld l, $5f                                     ; $4697: $2e $5f
    cp e                                          ; $4699: $bb
    rst $00                                       ; $469a: $c7
    ld l, a                                       ; $469b: $6f
    sub b                                         ; $469c: $90
    push af                                       ; $469d: $f5
    nop                                           ; $469e: $00
    ld a, [bc]                                    ; $469f: $0a
    ccf                                           ; $46a0: $3f
    ret nz                                        ; $46a1: $c0

    add c                                         ; $46a2: $81
    cp $72                                        ; $46a3: $fe $72
    add c                                         ; $46a5: $81
    rst $08                                       ; $46a6: $cf
    nop                                           ; $46a7: $00
    ldh a, [$31]                                  ; $46a8: $f0 $31
    rst $38                                       ; $46aa: $ff
    adc $3f                                       ; $46ab: $ce $3f
    ld bc, $07fe                                  ; $46ad: $01 $fe $07
    nop                                           ; $46b0: $00
    ld [$040f], sp                                ; $46b1: $08 $0f $04
    or l                                          ; $46b4: $b5

jr_0a6_46b5:
    ld a, a                                       ; $46b5: $7f
    rst $28                                       ; $46b6: $ef
    rra                                           ; $46b7: $1f
    ld a, [hl]                                    ; $46b8: $7e
    nop                                           ; $46b9: $00
    add c                                         ; $46ba: $81
    ld h, b                                       ; $46bb: $60
    sbc a                                         ; $46bc: $9f
    reti                                          ; $46bd: $d9


    jr nz, jr_0a6_468f                            ; $46be: $20 $cf

    ld [hl], b                                    ; $46c0: $70
    cp b                                          ; $46c1: $b8
    nop                                           ; $46c2: $00
    ld a, a                                       ; $46c3: $7f
    rst $00                                       ; $46c4: $c7
    ccf                                           ; $46c5: $3f
    ld e, b                                       ; $46c6: $58
    ldh a, [$ec]                                  ; $46c7: $f0 $ec
    ldh a, [$27]                                  ; $46c9: $f0 $27
    nop                                           ; $46cb: $00
    ld hl, sp-$28                                 ; $46cc: $f8 $d8
    ccf                                           ; $46ce: $3f
    ld h, a                                       ; $46cf: $67
    sbc a                                         ; $46d0: $9f
    rst $38                                       ; $46d1: $ff
    ld b, b                                       ; $46d2: $40
    cp l                                          ; $46d3: $bd
    nop                                           ; $46d4: $00
    jp nz, $946b                                  ; $46d5: $c2 $6b $94

    ld d, $29                                     ; $46d8: $16 $29
    cpl                                           ; $46da: $2f
    ld de, $00af                                  ; $46db: $11 $af $00
    ld [hl], c                                    ; $46de: $71
    ld d, [hl]                                    ; $46df: $56
    jp hl                                         ; $46e0: $e9


    xor a                                         ; $46e1: $af
    ret nc                                        ; $46e2: $d0

    jp c, $f025                                   ; $46e3: $da $25 $f0

    nop                                           ; $46e6: $00
    rra                                           ; $46e7: $1f
    add sp, $30                                   ; $46e8: $e8 $30
    rst $10                                       ; $46ea: $d7
    inc c                                         ; $46eb: $0c
    ld a, [de]                                    ; $46ec: $1a
    db $fd                                        ; $46ed: $fd
    push hl                                       ; $46ee: $e5
    nop                                           ; $46ef: $00
    ld a, [$15ea]                                 ; $46f0: $fa $ea $15
    rst $10                                       ; $46f3: $d7
    jr z, jr_0a6_46b5                             ; $46f4: $28 $bf

    ld b, b                                       ; $46f6: $40
    ld e, a                                       ; $46f7: $5f
    nop                                           ; $46f8: $00
    and b                                         ; $46f9: $a0
    ei                                            ; $46fa: $fb
    inc b                                         ; $46fb: $04
    ld a, a                                       ; $46fc: $7f
    add b                                         ; $46fd: $80
    cp b                                          ; $46fe: $b8
    ld b, a                                       ; $46ff: $47
    ld h, h                                       ; $4700: $64
    nop                                           ; $4701: $00
    sbc b                                         ; $4702: $98
    ret z                                         ; $4703: $c8

    jr nc, @-$58                                  ; $4704: $30 $a6

    ld a, b                                       ; $4706: $78
    or h                                          ; $4707: $b4
    ld a, a                                       ; $4708: $7f
    rst $18                                       ; $4709: $df
    nop                                           ; $470a: $00
    ccf                                           ; $470b: $3f
    db $f4                                        ; $470c: $f4
    dec bc                                        ; $470d: $0b
    rst $10                                       ; $470e: $d7
    jr z, @+$11                                   ; $470f: $28 $0f

    ldh a, [$03]                                  ; $4711: $f0 $03
    nop                                           ; $4713: $00
    inc c                                         ; $4714: $0c
    dec b                                         ; $4715: $05
    ld [bc], a                                    ; $4716: $02
    xor e                                         ; $4717: $ab
    ld b, $1d                                     ; $4718: $06 $1d
    cp $ef                                        ; $471a: $fe $ef
    nop                                           ; $471c: $00
    ldh a, [$61]                                  ; $471d: $f0 $61
    cp $a5                                        ; $471f: $fe $a5
    ld a, b                                       ; $4721: $78
    sub d                                         ; $4722: $92
    ld a, l                                       ; $4723: $7d
    rst $08                                       ; $4724: $cf
    nop                                           ; $4725: $00

jr_0a6_4726:
    ccf                                           ; $4726: $3f
    and b                                         ; $4727: $a0
    ld e, a                                       ; $4728: $5f
    ld e, a                                       ; $4729: $5f
    and b                                         ; $472a: $a0
    cp h                                          ; $472b: $bc
    ld b, e                                       ; $472c: $43
    ld a, e                                       ; $472d: $7b
    ld [de], a                                    ; $472e: $12
    adc h                                         ; $472f: $8c
    ld hl, sp+$1f                                 ; $4730: $f8 $1f
    jr nc, jr_0a6_4752                            ; $4732: $30 $1e

    db $db                                        ; $4734: $db
    inc h                                         ; $4735: $24
    cp l                                          ; $4736: $bd
    inc b                                         ; $4737: $04
    inc bc                                        ; $4738: $03
    ld de, $57aa                                  ; $4739: $11 $aa $57
    ld d, l                                       ; $473c: $55
    jr nz, jr_0a6_4756                            ; $473d: $20 $17

    ei                                            ; $473f: $fb
    inc b                                         ; $4740: $04
    nop                                           ; $4741: $00
    ldh [$33], a                                  ; $4742: $e0 $33
    ld [bc], a                                    ; $4744: $02
    rst $38                                       ; $4745: $ff
    nop                                           ; $4746: $00
    ld hl, sp+$07                                 ; $4747: $f8 $07
    call nz, $d038                                ; $4749: $c4 $38 $d0
    ld b, h                                       ; $474c: $44
    nop                                           ; $474d: $00
    ld [bc], a                                    ; $474e: $02
    ld e, a                                       ; $474f: $5f
    and b                                         ; $4750: $a0
    or a                                          ; $4751: $b7

jr_0a6_4752:
    ld c, b                                       ; $4752: $48
    rst $18                                       ; $4753: $df
    jr nz, jr_0a6_4726                            ; $4754: $20 $d0

jr_0a6_4756:
    inc c                                         ; $4756: $0c
    inc sp                                        ; $4757: $33
    db $10                                        ; $4758: $10
    call z, $e49b                                 ; $4759: $cc $9b $e4
    jr nc, @+$1d                                  ; $475c: $30 $1b

    adc h                                         ; $475e: $8c
    rst $38                                       ; $475f: $ff
    ld hl, sp-$10                                 ; $4760: $f8 $f0
    nop                                           ; $4762: $00
    ld d, $f8                                     ; $4763: $16 $f8
    db $d3                                        ; $4765: $d3
    inc a                                         ; $4766: $3c
    ld l, d                                       ; $4767: $6a
    rst $38                                       ; $4768: $ff
    rra                                           ; $4769: $1f
    ldh [rP1], a                                  ; $476a: $e0 $00
    db $eb                                        ; $476c: $eb
    dec d                                         ; $476d: $15
    halt                                          ; $476e: $76
    adc c                                         ; $476f: $89
    dec sp                                        ; $4770: $3b
    call nz, $207f                                ; $4771: $c4 $7f $20
    ld [bc], a                                    ; $4774: $02
    ccf                                           ; $4775: $3f
    ld h, b                                       ; $4776: $60
    ld e, a                                       ; $4777: $5f
    ldh [$bf], a                                  ; $4778: $e0 $bf
    ret nz                                        ; $477a: $c0

    ret nc                                        ; $477b: $d0

    inc a                                         ; $477c: $3c
    cp $00                                        ; $477d: $fe $00
    ld bc, $0af5                                  ; $477f: $01 $f5 $0a
    ei                                            ; $4782: $fb
    inc b                                         ; $4783: $04
    rst $00                                       ; $4784: $c7
    db $fc                                        ; $4785: $fc
    ei                                            ; $4786: $fb
    ld b, b                                       ; $4787: $40
    ld a, h                                       ; $4788: $7c
    jr nz, @+$4b                                  ; $4789: $20 $49

    cp b                                          ; $478b: $b8
    rst $00                                       ; $478c: $c7
    ld [hl], l                                    ; $478d: $75
    adc [hl]                                      ; $478e: $8e
    adc e                                         ; $478f: $8b
    db $fc                                        ; $4790: $fc
    add hl, bc                                    ; $4791: $09
    rst $30                                       ; $4792: $f7
    ld hl, sp+$1f                                 ; $4793: $f8 $1f
    ldh [$66], a                                  ; $4795: $e0 $66
    add hl, bc                                    ; $4797: $09
    ld l, $51                                     ; $4798: $2e $51
    ld c, c                                       ; $479a: $49
    ccf                                           ; $479b: $3f
    nop                                           ; $479c: $00
    inc c                                         ; $479d: $0c
    inc c                                         ; $479e: $0c
    rrca                                          ; $479f: $0f
    rrca                                          ; $47a0: $0f
    rra                                           ; $47a1: $1f
    dec de                                        ; $47a2: $1b
    dec a                                         ; $47a3: $3d
    ld [hl+], a                                   ; $47a4: $22
    nop                                           ; $47a5: $00
    cp [hl]                                       ; $47a6: $be
    ld h, c                                       ; $47a7: $61
    db $dd                                        ; $47a8: $dd
    ld [c], a                                     ; $47a9: $e2
    rst $28                                       ; $47aa: $ef
    db $10                                        ; $47ab: $10
    ld d, a                                       ; $47ac: $57
    xor b                                         ; $47ad: $a8
    nop                                           ; $47ae: $00
    rrca                                          ; $47af: $0f
    ldh a, [$97]                                  ; $47b0: $f0 $97
    ld [$847b], sp                                ; $47b2: $08 $7b $84
    rra                                           ; $47b5: $1f
    jr jr_0a6_47b8                                ; $47b6: $18 $00

jr_0a6_47b8:
    dec e                                         ; $47b8: $1d
    ld [de], a                                    ; $47b9: $12
    scf                                           ; $47ba: $37
    jr c, jr_0a6_47f8                             ; $47bb: $38 $3b

    inc [hl]                                      ; $47bd: $34
    halt                                          ; $47be: $76
    ld l, c                                       ; $47bf: $69
    nop                                           ; $47c0: $00
    dec sp                                        ; $47c1: $3b

jr_0a6_47c2:
    db $e4                                        ; $47c2: $e4
    call Call_000_33f2                            ; $47c3: $cd $f2 $33
    inc a                                         ; $47c6: $3c
    ldh a, [$f0]                                  ; $47c7: $f0 $f0
    nop                                           ; $47c9: $00
    db $fc                                        ; $47ca: $fc
    inc a                                         ; $47cb: $3c
    ld a, a                                       ; $47cc: $7f
    adc a                                         ; $47cd: $8f
    rst $18                                       ; $47ce: $df
    daa                                           ; $47cf: $27
    or [hl]                                       ; $47d0: $b6
    ld c, [hl]                                    ; $47d1: $4e
    ld [bc], a                                    ; $47d2: $02
    sbc $2e                                       ; $47d3: $de $2e

jr_0a6_47d5:
    inc l                                         ; $47d5: $2c
    call c, $1cfc                                 ; $47d6: $dc $fc $1c
    and b                                         ; $47d9: $a0
    inc d                                         ; $47da: $14
    rlca                                          ; $47db: $07
    ld h, $fc                                     ; $47dc: $26 $fc
    inc bc                                        ; $47de: $03
    add sp, $0f                                   ; $47df: $e8 $0f
    db $fd                                        ; $47e1: $fd
    ld [bc], a                                    ; $47e2: $02
    xor d                                         ; $47e3: $aa
    add hl, bc                                    ; $47e4: $09
    ld [de], a                                    ; $47e5: $12
    rra                                           ; $47e6: $1f
    ccf                                           ; $47e7: $3f
    db $10                                        ; $47e8: $10
    ret nz                                        ; $47e9: $c0

    rra                                           ; $47ea: $1f
    db $10                                        ; $47eb: $10
    add b                                         ; $47ec: $80

jr_0a6_47ed:
    add hl, bc                                    ; $47ed: $09
    rst $38                                       ; $47ee: $ff
    nop                                           ; $47ef: $00
    db $eb                                        ; $47f0: $eb
    dec d                                         ; $47f1: $15
    add b                                         ; $47f2: $80
    cp d                                          ; $47f3: $ba
    dec c                                         ; $47f4: $0d
    ldh [$1f], a                                  ; $47f5: $e0 $1f
    ret nc                                        ; $47f7: $d0

jr_0a6_47f8:
    jr nz, jr_0a6_47c2                            ; $47f8: $20 $c8

    jr nc, jr_0a6_47d5                            ; $47fa: $30 $d9

    ld bc, $173e                                  ; $47fc: $01 $3e $17
    jr z, @+$31                                   ; $47ff: $28 $2f

    db $10                                        ; $4801: $10
    xor a                                         ; $4802: $af
    ld [hl], b                                    ; $4803: $70

Call_0a6_4804:
    ld a, h                                       ; $4804: $7c
    inc c                                         ; $4805: $0c
    nop                                           ; $4806: $00
    rst $18                                       ; $4807: $df
    jr nz, @-$0b                                  ; $4808: $20 $f3

    inc e                                         ; $480a: $1c
    pop af                                        ; $480b: $f1
    ld [hl+], a                                   ; $480c: $22
    rst $20                                       ; $480d: $e7
    rra                                           ; $480e: $1f
    nop                                           ; $480f: $00
    ld sp, hl                                     ; $4810: $f9
    rlca                                          ; $4811: $07

jr_0a6_4812:
    db $f4                                        ; $4812: $f4
    dec bc                                        ; $4813: $0b
    ei                                            ; $4814: $fb
    inc b                                         ; $4815: $04
    rst $10                                       ; $4816: $d7
    jr z, jr_0a6_4849                             ; $4817: $28 $30

    rst $28                                       ; $4819: $ef
    db $10                                        ; $481a: $10
    ld l, h                                       ; $481b: $6c
    rrca                                          ; $481c: $0f
    ld [hl], c                                    ; $481d: $71
    ld e, l                                       ; $481e: $5d
    ld a, b                                       ; $481f: $78
    ld a, b                                       ; $4820: $78
    xor c                                         ; $4821: $a9
    ld [hl], d                                    ; $4822: $72
    nop                                           ; $4823: $00
    sub e                                         ; $4824: $93
    ld a, [hl]                                    ; $4825: $7e
    rst $08                                       ; $4826: $cf
    inc a                                         ; $4827: $3c
    and a                                         ; $4828: $a7
    ld e, b                                       ; $4829: $58
    ld e, a                                       ; $482a: $5f
    and b                                         ; $482b: $a0
    jr nz, jr_0a6_47ed                            ; $482c: $20 $bf

    ld b, b                                       ; $482e: $40
    jr nz, jr_0a6_4851                            ; $482f: $20 $20

    ld [bc], a                                    ; $4831: $02
    ld [bc], a                                    ; $4832: $02
    ld bc, $0205                                  ; $4833: $01 $05 $02
    inc b                                         ; $4836: $04
    add hl, bc                                    ; $4837: $09
    call nz, $00c8                                ; $4838: $c4 $c8 $00
    add b                                         ; $483b: $80
    adc h                                         ; $483c: $8c
    ld c, d                                       ; $483d: $4a
    add b                                         ; $483e: $80
    add b                                         ; $483f: $80
    jp $0f41                                      ; $4840: $c3 $41 $0f


    ld e, a                                       ; $4843: $5f
    rla                                           ; $4844: $17
    inc b                                         ; $4845: $04
    nop                                           ; $4846: $00
    inc b                                         ; $4847: $04
    ld a, e                                       ; $4848: $7b

jr_0a6_4849:
    inc b                                         ; $4849: $04
    nop                                           ; $484a: $00
    ld b, $00                                     ; $484b: $06 $00
    ld h, e                                       ; $484d: $63
    inc e                                         ; $484e: $1c
    sub a                                         ; $484f: $97
    ld a, [hl-]                                   ; $4850: $3a

jr_0a6_4851:
    adc h                                         ; $4851: $8c
    rlca                                          ; $4852: $07
    db $10                                        ; $4853: $10
    rst $28                                       ; $4854: $ef
    db $10                                        ; $4855: $10
    or e                                          ; $4856: $b3
    dec b                                         ; $4857: $05
    call nc, Call_000_2e1d                        ; $4858: $d4 $1d $2e
    ldh a, [$0d]                                  ; $485b: $f0 $0d
    ld b, b                                       ; $485d: $40
    daa                                           ; $485e: $27
    or b                                          ; $485f: $b0
    ld [hl], $20                                  ; $4860: $36 $20
    db $ec                                        ; $4862: $ec
    ld [bc], a                                    ; $4863: $02
    sbc h                                         ; $4864: $9c
    rrca                                          ; $4865: $0f
    inc a                                         ; $4866: $3c
    ld a, [bc]                                    ; $4867: $0a
    nop                                           ; $4868: $00
    inc a                                         ; $4869: $3c
    ld b, e                                       ; $486a: $43
    jr jr_0a6_4812                                ; $486b: $18 $a5

    rrca                                          ; $486d: $0f
    ld a, a                                       ; $486e: $7f
    xor d                                         ; $486f: $aa
    rla                                           ; $4870: $17
    ld a, a                                       ; $4871: $7f
    add b                                         ; $4872: $80
    ld [hl], $08                                  ; $4873: $36 $08
    ld [hl], b                                    ; $4875: $70
    nop                                           ; $4876: $00
    ldh a, [rP1]                                  ; $4877: $f0 $00
    ldh a, [rIF]                                  ; $4879: $f0 $0f
    ld h, c                                       ; $487b: $61
    add b                                         ; $487c: $80
    push af                                       ; $487d: $f5
    ld b, $03                                     ; $487e: $06 $03
    db $fc                                        ; $4880: $fc
    nop                                           ; $4881: $00
    ld b, b                                       ; $4882: $40
    ld b, b                                       ; $4883: $40
    ld [HeaderROMSize], sp                        ; $4884: $08 $48 $01
    sub b                                         ; $4887: $90
    sub b                                         ; $4888: $90
    ld c, c                                       ; $4889: $49
    ld c, $11                                     ; $488a: $0e $11
    ld [bc], a                                    ; $488c: $02
    inc b                                         ; $488d: $04
    and l                                         ; $488e: $a5
    rla                                           ; $488f: $17
    add c                                         ; $4890: $81
    add e                                         ; $4891: $83
    rlca                                          ; $4892: $07
    ld b, b                                       ; $4893: $40
    jr nz, jr_0a6_48e6                            ; $4894: $20 $50

    jr nz, jr_0a6_489c                            ; $4896: $20 $04

    ld a, [de]                                    ; $4898: $1a
    ld c, [hl]                                    ; $4899: $4e
    rrca                                          ; $489a: $0f
    add [hl]                                      ; $489b: $86

jr_0a6_489c:
    cpl                                           ; $489c: $2f
    ld c, [hl]                                    ; $489d: $4e
    inc bc                                        ; $489e: $03
    inc b                                         ; $489f: $04
    ld bc, $8202                                  ; $48a0: $01 $02 $82
    rlca                                          ; $48a3: $07
    sub c                                         ; $48a4: $91
    db $10                                        ; $48a5: $10
    inc b                                         ; $48a6: $04
    ld b, $02                                     ; $48a7: $06 $02
    ld b, $88                                     ; $48a9: $06 $88
    sub e                                         ; $48ab: $93
    ld [$07c9], sp                                ; $48ac: $08 $c9 $07
    ld d, d                                       ; $48af: $52
    ld e, $01                                     ; $48b0: $1e $01
    ld h, c                                       ; $48b2: $61
    ld a, a                                       ; $48b3: $7f
    xor d                                         ; $48b4: $aa
    jr nz, jr_0a6_492f                            ; $48b5: $20 $78

    jr jr_0a6_4938                                ; $48b7: $18 $7f

jr_0a6_48b9:
    add b                                         ; $48b9: $80
    add b                                         ; $48ba: $80
    ld h, [hl]                                    ; $48bb: $66
    ld l, c                                       ; $48bc: $69
    ld c, [hl]                                    ; $48bd: $4e

jr_0a6_48be:
    ccf                                           ; $48be: $3f
    ret nz                                        ; $48bf: $c0

    jr c, jr_0a6_48b9                             ; $48c0: $38 $f7

    rlca                                          ; $48c2: $07
    ld a, d                                       ; $48c3: $7a
    ld d, [hl]                                    ; $48c4: $56
    jr nc, @+$42                                  ; $48c5: $30 $40

    ret nc                                        ; $48c7: $d0

    jr nc, jr_0a6_48d0                            ; $48c8: $30 $06

    jr nc, jr_0a6_48be                            ; $48ca: $30 $f2

    ld [$43f4], sp                                ; $48cc: $08 $f4 $43
    ld [bc], a                                    ; $48cf: $02

jr_0a6_48d0:
    or $00                                        ; $48d0: $f6 $00
    ld c, c                                       ; $48d2: $49
    ld [bc], a                                    ; $48d3: $02
    sbc b                                         ; $48d4: $98
    daa                                           ; $48d5: $27
    ld hl, sp-$10                                 ; $48d6: $f8 $f0
    db $10                                        ; $48d8: $10
    add sp, $10                                   ; $48d9: $e8 $10
    adc b                                         ; $48db: $88
    ld d, b                                       ; $48dc: $50
    dec b                                         ; $48dd: $05
    ld a, a                                       ; $48de: $7f
    add b                                         ; $48df: $80
    ld a, l                                       ; $48e0: $7d
    inc b                                         ; $48e1: $04
    nop                                           ; $48e2: $00
    ld l, $80                                     ; $48e3: $2e $80
    ld d, a                                       ; $48e5: $57

jr_0a6_48e6:
    nop                                           ; $48e6: $00
    add b                                         ; $48e7: $80
    adc d                                         ; $48e8: $8a
    nop                                           ; $48e9: $00
    dec d                                         ; $48ea: $15
    add b                                         ; $48eb: $80
    ld b, c                                       ; $48ec: $41
    nop                                           ; $48ed: $00
    ld b, c                                       ; $48ee: $41
    ld h, b                                       ; $48ef: $60
    cp [hl]                                       ; $48f0: $be
    inc b                                         ; $48f1: $04
    nop                                           ; $48f2: $00
    ld b, $00                                     ; $48f3: $06 $00
    rst $00                                       ; $48f5: $c7
    nop                                           ; $48f6: $00
    rst $08                                       ; $48f7: $cf
    nop                                           ; $48f8: $00
    rst $08                                       ; $48f9: $cf
    ld bc, $1c30                                  ; $48fa: $01 $30 $1c
    nop                                           ; $48fd: $00

jr_0a6_48fe:
    inc a                                         ; $48fe: $3c
    jp Jump_000_003c                              ; $48ff: $c3 $3c $00


    ld a, [c]                                     ; $4902: $f2
    nop                                           ; $4903: $00
    db $e4                                        ; $4904: $e4
    ld d, d                                       ; $4905: $52
    jr nz, jr_0a6_493e                            ; $4906: $20 $36

    ld [$10f0], sp                                ; $4908: $08 $f0 $10
    ld [$4860], sp                                ; $490b: $08 $60 $48
    db $10                                        ; $490e: $10
    add b                                         ; $490f: $80
    nop                                           ; $4910: $00
    ld b, l                                       ; $4911: $45
    add d                                         ; $4912: $82
    ld d, a                                       ; $4913: $57
    ld bc, $0080                                  ; $4914: $01 $80 $00
    add c                                         ; $4917: $81
    ld e, l                                       ; $4918: $5d
    ld bc, $61c4                                  ; $4919: $01 $c4 $61
    ld bc, $8640                                  ; $491c: $01 $40 $86
    ld sp, hl                                     ; $491f: $f9
    rra                                           ; $4920: $1f
    jr nz, jr_0a6_4943                            ; $4921: $20 $20

    nop                                           ; $4923: $00
    inc h                                         ; $4924: $24
    sub b                                         ; $4925: $90
    jr @+$44                                      ; $4926: $18 $42

    inc b                                         ; $4928: $04
    dec c                                         ; $4929: $0d
    ld b, h                                       ; $492a: $44
    add b                                         ; $492b: $80
    ret nz                                        ; $492c: $c0

    jr nz, @+$22                                  ; $492d: $20 $20

jr_0a6_492f:
    ld e, a                                       ; $492f: $5f
    ld bc, $00a2                                  ; $4930: $01 $a2 $00
    nop                                           ; $4933: $00
    ld b, h                                       ; $4934: $44
    add b                                         ; $4935: $80
    xor b                                         ; $4936: $a8
    nop                                           ; $4937: $00

jr_0a6_4938:
    ld d, l                                       ; $4938: $55
    add b                                         ; $4939: $80
    xor d                                         ; $493a: $aa
    add d                                         ; $493b: $82
    inc b                                         ; $493c: $04
    nop                                           ; $493d: $00

jr_0a6_493e:
    ld l, $80                                     ; $493e: $2e $80
    ld a, e                                       ; $4940: $7b
    add b                                         ; $4941: $80
    nop                                           ; $4942: $00

jr_0a6_4943:
    ld a, [de]                                    ; $4943: $1a
    dec d                                         ; $4944: $15
    add b                                         ; $4945: $80
    and $4d                                       ; $4946: $e6 $4d
    db $10                                        ; $4948: $10
    ret nc                                        ; $4949: $d0

    ld d, b                                       ; $494a: $50
    ld c, d                                       ; $494b: $4a
    ld e, a                                       ; $494c: $5f
    ret nz                                        ; $494d: $c0

    ldh a, [rSCY]                                 ; $494e: $f0 $42
    dec h                                         ; $4950: $25
    or b                                          ; $4951: $b0
    ld [$0077], sp                                ; $4952: $08 $77 $00
    adc b                                         ; $4955: $88
    ld a, [hl]                                    ; $4956: $7e
    add c                                         ; $4957: $81
    ld e, l                                       ; $4958: $5d
    and d                                         ; $4959: $a2
    ld [hl], d                                    ; $495a: $72
    adc l                                         ; $495b: $8d
    ld h, b                                       ; $495c: $60

jr_0a6_495d:
    jr jr_0a6_48fe                                ; $495d: $18 $9f

    jr z, jr_0a6_4938                             ; $495f: $28 $d7

    ld d, a                                       ; $4961: $57
    rlca                                          ; $4962: $07
    ld [bc], a                                    ; $4963: $02
    nop                                           ; $4964: $00
    ld a, l                                       ; $4965: $7d
    ld bc, $08db                                  ; $4966: $01 $db $08
    ld bc, $0175                                  ; $4969: $01 $75 $01
    xor e                                         ; $496c: $ab
    call nz, $e001                                ; $496d: $c4 $01 $e0
    nop                                           ; $4970: $00
    ld [hl], h                                    ; $4971: $74
    nop                                           ; $4972: $00
    add b                                         ; $4973: $80
    ld a, d                                       ; $4974: $7a
    add b                                         ; $4975: $80
    xor l                                         ; $4976: $ad
    ret nc                                        ; $4977: $d0

    ld d, a                                       ; $4978: $57
    add sp, -$5e                                  ; $4979: $e8 $a2
    nop                                           ; $497b: $00
    db $fd                                        ; $497c: $fd
    push af                                       ; $497d: $f5
    rst $38                                       ; $497e: $ff
    sbc a                                         ; $497f: $9f
    ld a, a                                       ; $4980: $7f
    nop                                           ; $4981: $00
    ld bc, $0902                                  ; $4982: $01 $02 $09
    ld bc, HeaderLogo                             ; $4985: $01 $04 $01
    ld c, e                                       ; $4988: $4b
    ld h, $00                                     ; $4989: $26 $00
    xor c                                         ; $498b: $a9
    ld d, a                                       ; $498c: $57
    ret nz                                        ; $498d: $c0

    ld c, $18                                     ; $498e: $0e $18
    inc [hl]                                      ; $4990: $34
    dec bc                                        ; $4991: $0b
    inc bc                                        ; $4992: $03
    ld [$a101], a                                 ; $4993: $ea $01 $a1
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    ld c, d                                       ; $4998: $4a
    dec [hl]                                      ; $4999: $35
    nop                                           ; $499a: $00
    ld hl, sp+$40                                 ; $499b: $f8 $40
    ld e, a                                       ; $499d: $5f
    ld h, b                                       ; $499e: $60
    dec l                                         ; $499f: $2d
    ldh a, [$f8]                                  ; $49a0: $f0 $f8
    jr nz, jr_0a6_49a4                            ; $49a2: $20 $00

jr_0a6_49a4:
    inc [hl]                                      ; $49a4: $34
    ld h, b                                       ; $49a5: $60
    ld l, d                                       ; $49a6: $6a
    jr nc, @+$67                                  ; $49a7: $30 $65

    jr c, jr_0a6_495d                             ; $49a9: $38 $b2

    ld a, h                                       ; $49ab: $7c
    ld bc, $3e29                                  ; $49ac: $01 $29 $3e
    call nc, Call_000_003f                        ; $49af: $d4 $3f $00
    nop                                           ; $49b2: $00
    inc d                                         ; $49b3: $14
    ldh a, [rTMA]                                 ; $49b4: $f0 $06
    nop                                           ; $49b6: $00
    ld b, l                                       ; $49b7: $45
    nop                                           ; $49b8: $00
    xor d                                         ; $49b9: $aa
    nop                                           ; $49ba: $00
    ld d, a                                       ; $49bb: $57
    nop                                           ; $49bc: $00
    cp a                                          ; $49bd: $bf
    nop                                           ; $49be: $00
    nop                                           ; $49bf: $00
    ld [hl], a                                    ; $49c0: $77
    nop                                           ; $49c1: $00
    ld a, [bc]                                    ; $49c2: $0a
    nop                                           ; $49c3: $00
    rla                                           ; $49c4: $17
    nop                                           ; $49c5: $00
    xor l                                         ; $49c6: $ad
    nop                                           ; $49c7: $00
    inc b                                         ; $49c8: $04
    ld e, [hl]                                    ; $49c9: $5e
    nop                                           ; $49ca: $00
    cp l                                          ; $49cb: $bd
    nop                                           ; $49cc: $00
    rst $28                                       ; $49cd: $ef
    di                                            ; $49ce: $f3
    ld bc, $00ff                                  ; $49cf: $01 $ff $00
    nop                                           ; $49d2: $00
    call nc, $bf7f                                ; $49d3: $d4 $7f $bf
    ld a, a                                       ; $49d6: $7f
    push hl                                       ; $49d7: $e5
    ld e, $e5                                     ; $49d8: $1e $e5
    ld c, $00                                     ; $49da: $0e $00
    db $f4                                        ; $49dc: $f4
    rrca                                          ; $49dd: $0f
    push af                                       ; $49de: $f5
    ld c, $7e                                     ; $49df: $0e $7e
    rlca                                          ; $49e1: $07
    rst $38                                       ; $49e2: $ff
    rlca                                          ; $49e3: $07
    ld d, b                                       ; $49e4: $50
    ld a, [de]                                    ; $49e5: $1a
    call nc, $8507                                ; $49e6: $d4 $07 $85
    rst $38                                       ; $49e9: $ff
    rlca                                          ; $49ea: $07
    and b                                         ; $49eb: $a0
    nop                                           ; $49ec: $00
    ld d, h                                       ; $49ed: $54
    add b                                         ; $49ee: $80
    nop                                           ; $49ef: $00
    cp a                                          ; $49f0: $bf
    ld b, b                                       ; $49f1: $40
    ld d, b                                       ; $49f2: $50
    rst $38                                       ; $49f3: $ff
    rst $38                                       ; $49f4: $ff
    nop                                           ; $49f5: $00
    rst $28                                       ; $49f6: $ef
    stop                                          ; $49f7: $10 $00
    ld a, e                                       ; $49f9: $7b
    add h                                         ; $49fa: $84
    or a                                          ; $49fb: $b7
    ld c, b                                       ; $49fc: $48
    ld c, [hl]                                    ; $49fd: $4e
    or c                                          ; $49fe: $b1
    dec e                                         ; $49ff: $1d
    ld [c], a                                     ; $4a00: $e2
    ld [$758a], sp                                ; $4a01: $08 $8a $75
    dec d                                         ; $4a04: $15
    ld [$0ca0], a                                 ; $4a05: $ea $a0 $0c
    db $fd                                        ; $4a08: $fd
    ld [bc], a                                    ; $4a09: $02
    cp a                                          ; $4a0a: $bf
    nop                                           ; $4a0b: $00
    ld b, b                                       ; $4a0c: $40
    xor $11                                       ; $4a0d: $ee $11
    db $dd                                        ; $4a0f: $dd
    ld [hl+], a                                   ; $4a10: $22
    xor d                                         ; $4a11: $aa
    ld d, l                                       ; $4a12: $55
    ld d, h                                       ; $4a13: $54
    nop                                           ; $4a14: $00
    xor e                                         ; $4a15: $ab
    ei                                            ; $4a16: $fb
    rlca                                          ; $4a17: $07
    xor $11                                       ; $4a18: $ee $11
    ei                                            ; $4a1a: $fb
    inc b                                         ; $4a1b: $04
    halt                                          ; $4a1c: $76
    nop                                           ; $4a1d: $00
    adc c                                         ; $4a1e: $89

jr_0a6_4a1f:
    and l                                         ; $4a1f: $a5
    ld e, d                                       ; $4a20: $5a
    ld d, d                                       ; $4a21: $52
    xor l                                         ; $4a22: $ad
    add c                                         ; $4a23: $81
    ld a, [hl]                                    ; $4a24: $7e
    ld b, b                                       ; $4a25: $40
    ld b, b                                       ; $4a26: $40
    cp a                                          ; $4a27: $bf
    ld sp, $ff00                                  ; $4a28: $31 $00 $ff
    ld [hl], a                                    ; $4a2b: $77
    adc b                                         ; $4a2c: $88
    db $ed                                        ; $4a2d: $ed
    ld [de], a                                    ; $4a2e: $12
    rst $10                                       ; $4a2f: $d7
    ld bc, $af28                                  ; $4a30: $01 $28 $af
    ld d, b                                       ; $4a33: $50
    dec e                                         ; $4a34: $1d
    ld [c], a                                     ; $4a35: $e2
    ld c, e                                       ; $4a36: $4b
    or h                                          ; $4a37: $b4
    jp nc, $0016                                  ; $4a38: $d2 $16 $00

    nop                                           ; $4a3b: $00
    ld c, $f0                                     ; $4a3c: $0e $f0
    adc a                                         ; $4a3e: $8f
    ld [$885d], sp                                ; $4a3f: $08 $5d $88
    ld l, [hl]                                    ; $4a42: $6e
    dec h                                         ; $4a43: $25
    sbc b                                         ; $4a44: $98
    ld sp, hl                                     ; $4a45: $f9
    di                                            ; $4a46: $f3
    inc c                                         ; $4a47: $0c
    nop                                           ; $4a48: $00
    ld a, l                                       ; $4a49: $7d
    ldh a, [rTAC]                                 ; $4a4a: $f0 $07
    xor [hl]                                      ; $4a4c: $ae
    sub b                                         ; $4a4d: $90
    nop                                           ; $4a4e: $00
    ld e, b                                       ; $4a4f: $58
    adc d                                         ; $4a50: $8a
    jr c, jr_0a6_4a54                             ; $4a51: $38 $01

    dec hl                                        ; $4a53: $2b

jr_0a6_4a54:
    xor d                                         ; $4a54: $aa
    rrca                                          ; $4a55: $0f
    ld e, c                                       ; $4a56: $59
    ld [bc], a                                    ; $4a57: $02
    dec b                                         ; $4a58: $05
    nop                                           ; $4a59: $00
    and d                                         ; $4a5a: $a2
    nop                                           ; $4a5b: $00
    ld bc, $02dd                                  ; $4a5c: $01 $dd $02
    xor b                                         ; $4a5f: $a8
    ld d, a                                       ; $4a60: $57
    add b                                         ; $4a61: $80
    ld b, b                                       ; $4a62: $40
    add d                                         ; $4a63: $82
    jr nz, jr_0a6_4aa6                            ; $4a64: $20 $40

    and b                                         ; $4a66: $a0
    ld [bc], a                                    ; $4a67: $02
    nop                                           ; $4a68: $00
    ld hl, $a0c0                                  ; $4a69: $21 $c0 $a0
    ld h, b                                       ; $4a6c: $60
    inc h                                         ; $4a6d: $24
    inc c                                         ; $4a6e: $0c
    ldh [rNR41], a                                ; $4a6f: $e0 $20

jr_0a6_4a71:
    ldh [rNR43], a                                ; $4a71: $e0 $22
    jp nc, $8d27                                  ; $4a73: $d2 $27 $8d

    dec c                                         ; $4a76: $0d
    stop                                          ; $4a77: $10 $00
    db $10                                        ; $4a79: $10
    adc c                                         ; $4a7a: $89
    ld b, $a1                                     ; $4a7b: $06 $a1
    or h                                          ; $4a7d: $b4
    rlca                                          ; $4a7e: $07
    ld a, c                                       ; $4a7f: $79
    ld c, $39                                     ; $4a80: $0e $39
    inc c                                         ; $4a82: $0c
    nop                                           ; $4a83: $00
    ld l, e                                       ; $4a84: $6b
    inc e                                         ; $4a85: $1c
    rst $08                                       ; $4a86: $cf
    jr c, jr_0a6_4a1f                             ; $4a87: $38 $96

    ld a, b                                       ; $4a89: $78
    ld d, a                                       ; $4a8a: $57
    ld hl, sp+$1a                                 ; $4a8b: $f8 $1a
    ld h, d                                       ; $4a8d: $62
    ret nz                                        ; $4a8e: $c0

    call nz, Call_000_0980                        ; $4a8f: $c4 $80 $09
    ldh [rP1], a                                  ; $4a92: $e0 $00
    push de                                       ; $4a94: $d5
    ld d, h                                       ; $4a95: $54
    nop                                           ; $4a96: $00
    ei                                            ; $4a97: $fb
    ret nz                                        ; $4a98: $c0

    rst $38                                       ; $4a99: $ff
    rlca                                          ; $4a9a: $07
    ldh a, [rNR41]                                ; $4a9b: $f0 $20
    dec b                                         ; $4a9d: $05
    ld e, d                                       ; $4a9e: $5a
    inc c                                         ; $4a9f: $0c
    cp e                                          ; $4aa0: $bb
    inc c                                         ; $4aa1: $0c
    ld a, l                                       ; $4aa2: $7d
    nop                                           ; $4aa3: $00
    ld c, $16                                     ; $4aa4: $0e $16

jr_0a6_4aa6:
    ld [$101c], sp                                ; $4aa6: $08 $1c $10
    cp d                                          ; $4aa9: $ba
    db $10                                        ; $4aaa: $10
    ld a, l                                       ; $4aab: $7d
    nop                                           ; $4aac: $00
    db $10                                        ; $4aad: $10
    sub [hl]                                      ; $4aae: $96
    ld a, b                                       ; $4aaf: $78
    ld a, [de]                                    ; $4ab0: $1a
    dec e                                         ; $4ab1: $1d
    or h                                          ; $4ab2: $b4
    rra                                           ; $4ab3: $1f
    ld c, d                                       ; $4ab4: $4a
    nop                                           ; $4ab5: $00
    cp a                                          ; $4ab6: $bf
    xor $f0                                       ; $4ab7: $ee $f0
    rrca                                          ; $4ab9: $0f
    ldh a, [$f6]                                  ; $4aba: $f0 $f6
    add hl, bc                                    ; $4abc: $09
    ld a, e                                       ; $4abd: $7b
    nop                                           ; $4abe: $00
    add h                                         ; $4abf: $84
    rst $10                                       ; $4ac0: $d7
    jr z, jr_0a6_4a71                             ; $4ac1: $28 $ae

    ld d, c                                       ; $4ac3: $51
    ld e, l                                       ; $4ac4: $5d
    and d                                         ; $4ac5: $a2
    dec hl                                        ; $4ac6: $2b
    nop                                           ; $4ac7: $00
    call nc, Call_000_0ff7                        ; $4ac8: $d4 $f7 $0f
    db $ed                                        ; $4acb: $ed

jr_0a6_4acc:
    inc de                                        ; $4acc: $13
    ld a, a                                       ; $4acd: $7f
    add c                                         ; $4ace: $81
    or a                                          ; $4acf: $b7
    inc b                                         ; $4ad0: $04
    ld c, c                                       ; $4ad1: $49
    ld c, a                                       ; $4ad2: $4f
    or c                                          ; $4ad3: $b1
    inc e                                         ; $4ad4: $1c
    db $e3                                        ; $4ad5: $e3
    ldh [rNR10], a                                ; $4ad6: $e0 $10
    rst $38                                       ; $4ad8: $ff
    ld [hl], c                                    ; $4ad9: $71
    nop                                           ; $4ada: $00
    add b                                         ; $4adb: $80
    ld h, b                                       ; $4adc: $60
    add b                                         ; $4add: $80
    inc sp                                        ; $4ade: $33
    ret nz                                        ; $4adf: $c0

    ld e, [hl]                                    ; $4ae0: $5e
    and c                                         ; $4ae1: $a1
    xor b                                         ; $4ae2: $a8
    ld h, b                                       ; $4ae3: $60
    rst $38                                       ; $4ae4: $ff
    adc l                                         ; $4ae5: $8d
    inc b                                         ; $4ae6: $04
    ld a, [c]                                     ; $4ae7: $f2
    rlca                                          ; $4ae8: $07
    adc d                                         ; $4ae9: $8a
    ld [hl], l                                    ; $4aea: $75
    jr nz, jr_0a6_4acc                            ; $4aeb: $20 $df

    ld [$f702], sp                                ; $4aed: $08 $02 $f7
    ld bc, $8aff                                  ; $4af0: $01 $ff $8a
    rst $38                                       ; $4af3: $ff
    rst $10                                       ; $4af4: $d7
    ld [hl], b                                    ; $4af5: $70
    ld bc, $02ff                                  ; $4af6: $01 $ff $02
    rst $38                                       ; $4af9: $ff
    add b                                         ; $4afa: $80
    ld a, a                                       ; $4afb: $7f
    db $10                                        ; $4afc: $10
    rst $28                                       ; $4afd: $ef
    add b                                         ; $4afe: $80
    and a                                         ; $4aff: $a7
    ld bc, $2088                                  ; $4b00: $01 $88 $20
    rst $38                                       ; $4b03: $ff
    ld h, e                                       ; $4b04: $63
    db $10                                        ; $4b05: $10
    db $10                                        ; $4b06: $10
    ld [$80f7], sp                                ; $4b07: $08 $f7 $80
    ld a, a                                       ; $4b0a: $7f
    ld bc, $fe02                                  ; $4b0b: $01 $02 $fe
    db $10                                        ; $4b0e: $10
    rst $38                                       ; $4b0f: $ff
    jr nz, @+$01                                  ; $4b10: $20 $ff

    ld d, l                                       ; $4b12: $55
    jr nz, jr_0a6_4b25                            ; $4b13: $20 $10

    ld b, b                                       ; $4b15: $40
    ld [$10bf], sp                                ; $4b16: $08 $bf $10
    rst $28                                       ; $4b19: $ef
    nop                                           ; $4b1a: $00
    rst $00                                       ; $4b1b: $c7
    ld bc, $ffa0                                  ; $4b1c: $01 $a0 $ff
    ld d, a                                       ; $4b1f: $57
    and h                                         ; $4b20: $a4
    jr nc, jr_0a6_4b2b                            ; $4b21: $30 $08

    nop                                           ; $4b23: $00
    ld b, b                                       ; $4b24: $40

jr_0a6_4b25:
    rra                                           ; $4b25: $1f
    ld [hl-], a                                   ; $4b26: $32
    rst $08                                       ; $4b27: $cf
    ld b, b                                       ; $4b28: $40
    rra                                           ; $4b29: $1f
    ld [hl], a                                    ; $4b2a: $77

jr_0a6_4b2b:
    adc h                                         ; $4b2b: $8c
    rlca                                          ; $4b2c: $07
    ld c, a                                       ; $4b2d: $4f
    ld hl, sp-$01                                 ; $4b2e: $f8 $ff
    ldh a, [$7f]                                  ; $4b30: $f0 $7f
    ld e, h                                       ; $4b32: $5c
    ld bc, $2e8a                                  ; $4b33: $01 $8a $2e
    sub d                                         ; $4b36: $92
    ld e, $38                                     ; $4b37: $1e $38
    ldh a, [rIF]                                  ; $4b39: $f0 $0f
    ret nc                                        ; $4b3b: $d0

    dec e                                         ; $4b3c: $1d
    ld a, [bc]                                    ; $4b3d: $0a
    ld [$4dd0], sp                                ; $4b3e: $08 $d0 $4d
    rst $38                                       ; $4b41: $ff
    rst $38                                       ; $4b42: $ff
    ld de, $ee02                                  ; $4b43: $11 $02 $ee
    nop                                           ; $4b46: $00
    rst $38                                       ; $4b47: $ff
    ld b, b                                       ; $4b48: $40
    rst $38                                       ; $4b49: $ff
    db $10                                        ; $4b4a: $10
    add hl, de                                    ; $4b4b: $19
    ld [bc], a                                    ; $4b4c: $02
    xor d                                         ; $4b4d: $aa
    sbc c                                         ; $4b4e: $99
    ldh a, [rSB]                                  ; $4b4f: $f0 $01
    call nz, $80fb                                ; $4b51: $c4 $fb $80
    ld h, b                                       ; $4b54: $60
    jr nc, jr_0a6_4bad                            ; $4b55: $30 $56

    rlca                                          ; $4b57: $07
    ld hl, sp+$40                                 ; $4b58: $f8 $40
    ld c, l                                       ; $4b5a: $4d
    ld [$cc37], sp                                ; $4b5b: $08 $37 $cc
    sbc a                                         ; $4b5e: $9f
    db $e4                                        ; $4b5f: $e4
    jr nc, jr_0a6_4b8f                            ; $4b60: $30 $2d

    ld [hl], b                                    ; $4b62: $70
    ccf                                           ; $4b63: $3f
    jr nc, jr_0a6_4b6a                            ; $4b64: $30 $04

    ld h, b                                       ; $4b66: $60
    ld c, b                                       ; $4b67: $48
    ldh a, [$f9]                                  ; $4b68: $f0 $f9

jr_0a6_4b6a:
    cp $20                                        ; $4b6a: $fe $20
    dec c                                         ; $4b6c: $0d
    ld c, a                                       ; $4b6d: $4f
    ldh a, [$30]                                  ; $4b6e: $f0 $30

jr_0a6_4b70:
    cp a                                          ; $4b70: $bf
    ret nz                                        ; $4b71: $c0

    ld e, h                                       ; $4b72: $5c
    rrca                                          ; $4b73: $0f
    inc c                                         ; $4b74: $0c
    rrca                                          ; $4b75: $0f
    rlc h                                         ; $4b76: $cb $04
    ld e, l                                       ; $4b78: $5d
    and d                                         ; $4b79: $a2
    ld [bc], a                                    ; $4b7a: $02
    inc bc                                        ; $4b7b: $03
    cp $ff                                        ; $4b7c: $fe $ff
    db $fc                                        ; $4b7e: $fc
    ccf                                           ; $4b7f: $3f
    ret nz                                        ; $4b80: $c0

    ld a, b                                       ; $4b81: $78
    ld e, $7f                                     ; $4b82: $1e $7f
    nop                                           ; $4b84: $00
    add b                                         ; $4b85: $80
    scf                                           ; $4b86: $37
    ret z                                         ; $4b87: $c8

    dec sp                                        ; $4b88: $3b
    db $e4                                        ; $4b89: $e4
    cpl                                           ; $4b8a: $2f
    ldh a, [$de]                                  ; $4b8b: $f0 $de
    jr jr_0a6_4b70                                ; $4b8d: $18 $e1

jr_0a6_4b8f:
    dec a                                         ; $4b8f: $3d
    jp nz, Jump_000_0f2c                          ; $4b90: $c2 $2c $0f

    call nc, Call_000_3f4f                        ; $4b93: $d4 $4f $3f
    ccf                                           ; $4b96: $3f
    ld l, $60                                     ; $4b97: $2e $60
    ld sp, $06f2                                  ; $4b99: $31 $f2 $06
    cp b                                          ; $4b9c: $b8
    ld b, $fd                                     ; $4b9d: $06 $fd
    rst $38                                       ; $4b9f: $ff
    ld a, [$f4ff]                                 ; $4ba0: $fa $ff $f4
    ld [bc], a                                    ; $4ba3: $02
    rst $38                                       ; $4ba4: $ff
    add sp, -$01                                  ; $4ba5: $e8 $ff
    pop de                                        ; $4ba7: $d1
    cp $ff                                        ; $4ba8: $fe $ff
    inc c                                         ; $4baa: $0c
    db $10                                        ; $4bab: $10
    push de                                       ; $4bac: $d5

jr_0a6_4bad:
    nop                                           ; $4bad: $00
    cp $aa                                        ; $4bae: $fe $aa
    db $fd                                        ; $4bb0: $fd
    push de                                       ; $4bb1: $d5
    ld [$d4ab], a                                 ; $4bb2: $ea $ab $d4
    rst $18                                       ; $4bb5: $df
    nop                                           ; $4bb6: $00
    and b                                         ; $4bb7: $a0
    rst $38                                       ; $4bb8: $ff
    rst $38                                       ; $4bb9: $ff
    ld d, l                                       ; $4bba: $55
    ld a, [$d4ab]                                 ; $4bbb: $fa $ab $d4
    ld e, a                                       ; $4bbe: $5f
    inc b                                         ; $4bbf: $04
    and b                                         ; $4bc0: $a0
    cp d                                          ; $4bc1: $ba
    ld b, l                                       ; $4bc2: $45
    push af                                       ; $4bc3: $f5
    dec bc                                        ; $4bc4: $0b
    ldh a, [rTIMA]                                ; $4bc5: $f0 $05
    cp a                                          ; $4bc7: $bf
    scf                                           ; $4bc8: $37
    ret nc                                        ; $4bc9: $d0

    inc [hl]                                      ; $4bca: $34
    nop                                           ; $4bcb: $00
    inc b                                         ; $4bcc: $04
    jr z, jr_0a6_4bff                             ; $4bcd: $28 $30

    ld b, b                                       ; $4bcf: $40
    nop                                           ; $4bd0: $00
    cp [hl]                                       ; $4bd1: $be
    db $fd                                        ; $4bd2: $fd
    db $ed                                        ; $4bd3: $ed
    cp $00                                        ; $4bd4: $fe $00
    rst $38                                       ; $4bd6: $ff
    db $ec                                        ; $4bd7: $ec
    sbc $ed                                       ; $4bd8: $de $ed
    db $fd                                        ; $4bda: $fd
    adc $be                                       ; $4bdb: $ce $be
    call $fd00                                    ; $4bdd: $cd $00 $fd

Jump_0a6_4be0:
    adc [hl]                                      ; $4be0: $8e
    cp $8d                                        ; $4be1: $fe $8d
    cp d                                          ; $4be3: $ba
    push bc                                       ; $4be4: $c5
    push af                                       ; $4be5: $f5
    adc e                                         ; $4be6: $8b
    ld bc, $d7aa                                  ; $4be7: $01 $aa $d7
    push de                                       ; $4bea: $d5
    cp a                                          ; $4beb: $bf
    xor e                                         ; $4bec: $ab
    rst $38                                       ; $4bed: $ff
    rst $18                                       ; $4bee: $df
    ld d, b                                       ; $4bef: $50
    nop                                           ; $4bf0: $00
    inc bc                                        ; $4bf1: $03
    rst $38                                       ; $4bf2: $ff
    rst $38                                       ; $4bf3: $ff
    xor e                                         ; $4bf4: $ab
    ld a, a                                       ; $4bf5: $7f
    ld e, a                                       ; $4bf6: $5f
    rst $38                                       ; $4bf7: $ff
    ld b, l                                       ; $4bf8: $45
    ld [bc], a                                    ; $4bf9: $02
    jp c, $1a02                                   ; $4bfa: $da $02 $1a

    db $fd                                        ; $4bfd: $fd
    rst $38                                       ; $4bfe: $ff

jr_0a6_4bff:
    inc bc                                        ; $4bff: $03
    ld [hl], b                                    ; $4c00: $70
    ld de, $1848                                  ; $4c01: $11 $48 $18
    xor a                                         ; $4c04: $af
    jr jr_0a6_4c37                                ; $4c05: $18 $30

    ld e, a                                       ; $4c07: $5f
    adc e                                         ; $4c08: $8b
    add [hl]                                      ; $4c09: $86
    ld de, $ffff                                  ; $4c0a: $11 $ff $ff
    ldh a, [$32]                                  ; $4c0d: $f0 $32
    nop                                           ; $4c0f: $00
    ld a, l                                       ; $4c10: $7d
    inc c                                         ; $4c11: $0c
    jr nz, jr_0a6_4c22                            ; $4c12: $20 $0e

    ld [$1f48], sp                                ; $4c14: $08 $48 $1f
    sub h                                         ; $4c17: $94
    nop                                           ; $4c18: $00
    ld d, l                                       ; $4c19: $55
    rst $38                                       ; $4c1a: $ff
    ld [hl], l                                    ; $4c1b: $75
    rlca                                          ; $4c1c: $07
    ldh a, [$f8]                                  ; $4c1d: $f0 $f8
    ld hl, sp+$04                                 ; $4c1f: $f8 $04
    ret c                                         ; $4c21: $d8

jr_0a6_4c22:
    ld hl, sp+$78                                 ; $4c22: $f8 $78
    ld hl, sp-$10                                 ; $4c24: $f8 $f0
    ld bc, $7800                                  ; $4c26: $01 $00 $78
    ld hl, sp+$00                                 ; $4c29: $f8 $00
    db $fd                                        ; $4c2b: $fd
    rst $38                                       ; $4c2c: $ff
    ei                                            ; $4c2d: $fb
    rst $38                                       ; $4c2e: $ff
    or $ff                                        ; $4c2f: $f6 $ff
    db $ed                                        ; $4c31: $ed
    rst $38                                       ; $4c32: $ff
    inc b                                         ; $4c33: $04
    db $db                                        ; $4c34: $db
    rst $38                                       ; $4c35: $ff
    ld [hl], l                                    ; $4c36: $75

jr_0a6_4c37:
    rst $38                                       ; $4c37: $ff
    ld [$003c], a                                 ; $4c38: $ea $3c $00
    rst $28                                       ; $4c3b: $ef
    ld a, [$da14]                                 ; $4c3c: $fa $14 $da
    push af                                       ; $4c3f: $f5
    push af                                       ; $4c40: $f5
    ld c, d                                       ; $4c41: $4a
    ld de, $5055                                  ; $4c42: $11 $55 $50
    ld bc, $fff7                                  ; $4c45: $01 $f7 $ff
    add l                                         ; $4c48: $85
    ld a, [hl-]                                   ; $4c49: $3a
    ld [bc], a                                    ; $4c4a: $02
    ld d, l                                       ; $4c4b: $55
    ld d, l                                       ; $4c4c: $55
    rst $38                                       ; $4c4d: $ff
    xor e                                         ; $4c4e: $ab
    adc h                                         ; $4c4f: $8c
    rlca                                          ; $4c50: $07
    ld d, l                                       ; $4c51: $55
    ld a, b                                       ; $4c52: $78
    db $10                                        ; $4c53: $10
    ld b, $b8                                     ; $4c54: $06 $b8
    ld hl, sp-$08                                 ; $4c56: $f8 $f8
    ld a, b                                       ; $4c58: $78
    cp b                                          ; $4c59: $b8
    ld a, $00                                     ; $4c5a: $3e $00
    ld bc, $e818                                  ; $4c5c: $01 $18 $e8
    db $10                                        ; $4c5f: $10
    ld hl, sp-$7f                                 ; $4c60: $f8 $81
    ld a, [hl]                                    ; $4c62: $7e
    ld b, b                                       ; $4c63: $40
    rlca                                          ; $4c64: $07
    ld [hl], b                                    ; $4c65: $70
    or c                                          ; $4c66: $b1
    ld a, a                                       ; $4c67: $7f
    adc $10                                       ; $4c68: $ce $10
    ccf                                           ; $4c6a: $3f
    pop af                                        ; $4c6b: $f1
    ld c, $ec                                     ; $4c6c: $0e $ec
    rra                                           ; $4c6e: $1f
    cp $01                                        ; $4c6f: $fe $01
    push hl                                       ; $4c71: $e5
    ld a, [de]                                    ; $4c72: $1a
    add b                                         ; $4c73: $80
    db $10                                        ; $4c74: $10
    ccf                                           ; $4c75: $3f
    ccf                                           ; $4c76: $3f
    ret nz                                        ; $4c77: $c0

    ld c, [hl]                                    ; $4c78: $4e
    ld sp, $08d7                                  ; $4c79: $31 $d7 $08
    ld e, e                                       ; $4c7c: $5b
    nop                                           ; $4c7d: $00
    and h                                         ; $4c7e: $a4
    ld b, $ff                                     ; $4c7f: $06 $ff
    xor [hl]                                      ; $4c81: $ae
    db $fc                                        ; $4c82: $fc
    db $fc                                        ; $4c83: $fc
    rst $38                                       ; $4c84: $ff
    jp Jump_000_3f00                              ; $4c85: $c3 $00 $3f


    and b                                         ; $4c88: $a0
    pop bc                                        ; $4c89: $c1
    ld l, e                                       ; $4c8a: $6b
    pop af                                        ; $4c8b: $f1
    cp [hl]                                       ; $4c8c: $be
    ld a, a                                       ; $4c8d: $7f
    pop af                                        ; $4c8e: $f1
    ld [$1f0e], sp                                ; $4c8f: $08 $0e $1f
    ldh [$2e], a                                  ; $4c92: $e0 $2e
    ld [hl+], a                                   ; $4c94: $22

jr_0a6_4c95:
    inc bc                                        ; $4c95: $03
    ld [c], a                                     ; $4c96: $e2
    db $fd                                        ; $4c97: $fd
    push af                                       ; $4c98: $f5
    nop                                           ; $4c99: $00
    rra                                           ; $4c9a: $1f
    rst $28                                       ; $4c9b: $ef
    rra                                           ; $4c9c: $1f
    rst $18                                       ; $4c9d: $df
    ld [hl+], a                                   ; $4c9e: $22
    cp l                                          ; $4c9f: $bd
    ld b, [hl]                                    ; $4ca0: $46
    or $07                                        ; $4ca1: $f6 $07
    rrca                                          ; $4ca3: $0f
    cp e                                          ; $4ca4: $bb
    ld b, a                                       ; $4ca5: $47
    ld a, h                                       ; $4ca6: $7c
    add e                                         ; $4ca7: $83
    ldh a, [$15]                                  ; $4ca8: $f0 $15
    ld e, b                                       ; $4caa: $58
    ld [bc], a                                    ; $4cab: $02
    ld [bc], a                                    ; $4cac: $02
    jr z, @+$72                                   ; $4cad: $28 $70

    ld a, [hl]                                    ; $4caf: $7e
    ld bc, $c40e                                  ; $4cb0: $01 $0e $c4
    jr nc, jr_0a6_4d14                            ; $4cb3: $30 $5f

    ld a, [bc]                                    ; $4cb5: $0a
    sbc b                                         ; $4cb6: $98
    rst $20                                       ; $4cb7: $e7
    ld a, a                                       ; $4cb8: $7f
    add b                                         ; $4cb9: $80
    ld [de], a                                    ; $4cba: $12
    add d                                         ; $4cbb: $82
    db $fd                                        ; $4cbc: $fd
    add sp, -$32                                  ; $4cbd: $e8 $ce
    nop                                           ; $4cbf: $00
    and c                                         ; $4cc0: $a1
    ld e, [hl]                                    ; $4cc1: $5e
    or b                                          ; $4cc2: $b0
    ld c, $87                                     ; $4cc3: $0e $87
    nop                                           ; $4cc5: $00
    rst $38                                       ; $4cc6: $ff
    ld a, c                                       ; $4cc7: $79
    rst $00                                       ; $4cc8: $c7
    ld [hl], h                                    ; $4cc9: $74
    res 7, e                                      ; $4cca: $cb $bb
    call nz, $0157                                ; $4ccc: $c4 $57 $01
    xor b                                         ; $4ccf: $a8
    inc l                                         ; $4cd0: $2c
    db $d3                                        ; $4cd1: $d3
    ld [hl], a                                    ; $4cd2: $77
    adc [hl]                                      ; $4cd3: $8e
    ld a, [$e10c]                                 ; $4cd4: $fa $0c $e1
    dec [hl]                                      ; $4cd7: $35
    add h                                         ; $4cd8: $84
    add h                                         ; $4cd9: $84
    ld bc, $fdfb                                  ; $4cda: $01 $fb $fd
    push af                                       ; $4cdd: $f5
    ei                                            ; $4cde: $fb
    ret nz                                        ; $4cdf: $c0

    ld b, [hl]                                    ; $4ce0: $46
    pop af                                        ; $4ce1: $f1
    sub [hl]                                      ; $4ce2: $96
    add b                                         ; $4ce3: $80
    ret c                                         ; $4ce4: $d8

    ld [bc], a                                    ; $4ce5: $02
    ld l, b                                       ; $4ce6: $68
    sbc a                                         ; $4ce7: $9f
    rst $30                                       ; $4ce8: $f7
    rrca                                          ; $4ce9: $0f
    db $fc                                        ; $4cea: $fc
    inc bc                                        ; $4ceb: $03
    jp Jump_000_3c00                              ; $4cec: $c3 $00 $3c


    and l                                         ; $4cef: $a5
    jp nz, $c23d                                  ; $4cf0: $c2 $3d $c2

    add a                                         ; $4cf3: $87
    ld a, [$007d]                                 ; $4cf4: $fa $7d $00
    cp $eb                                        ; $4cf7: $fe $eb
    push af                                       ; $4cf9: $f5
    push de                                       ; $4cfa: $d5
    db $eb                                        ; $4cfb: $eb
    xor c                                         ; $4cfc: $a9
    rst $10                                       ; $4cfd: $d7
    db $d3                                        ; $4cfe: $d3
    nop                                           ; $4cff: $00
    xor a                                         ; $4d00: $af
    and l                                         ; $4d01: $a5
    rst $18                                       ; $4d02: $df
    res 7, a                                      ; $4d03: $cb $bf
    sub a                                         ; $4d05: $97
    rst $38                                       ; $4d06: $ff
    xor a                                         ; $4d07: $af
    ld [bc], a                                    ; $4d08: $02
    rst $38                                       ; $4d09: $ff
    ld b, e                                       ; $4d0a: $43
    db $fc                                        ; $4d0b: $fc
    ld sp, hl                                     ; $4d0c: $f9
    cp $c2                                        ; $4d0d: $fe $c2
    and [hl]                                      ; $4d0f: $a6
    dec b                                         ; $4d10: $05
    ld a, [hl]                                    ; $4d11: $7e
    jr nz, jr_0a6_4c95                            ; $4d12: $20 $81

jr_0a6_4d14:
    ld d, c                                       ; $4d14: $51
    ret z                                         ; $4d15: $c8

    ld bc, $ff00                                  ; $4d16: $01 $00 $ff
    add e                                         ; $4d19: $83
    ld a, h                                       ; $4d1a: $7c

jr_0a6_4d1b:
    cp $44                                        ; $4d1b: $fe $44
    ld bc, $0f1a                                  ; $4d1d: $01 $1a $0f
    rst $38                                       ; $4d20: $ff
    add b                                         ; $4d21: $80
    ccf                                           ; $4d22: $3f
    inc d                                         ; $4d23: $14
    ld [de], a                                    ; $4d24: $12
    rst $18                                       ; $4d25: $df
    rst $38                                       ; $4d26: $ff
    ld b, b                                       ; $4d27: $40
    cp l                                          ; $4d28: $bd
    ld [hl-], a                                   ; $4d29: $32
    ld bc, $fdf7                                  ; $4d2a: $01 $f7 $fd
    db $ed                                        ; $4d2d: $ed
    ei                                            ; $4d2e: $fb
    db $db                                        ; $4d2f: $db
    rst $30                                       ; $4d30: $f7
    ld [$efb5], sp                                ; $4d31: $08 $b5 $ef
    db $eb                                        ; $4d34: $eb
    rst $18                                       ; $4d35: $df
    ld [de], a                                    ; $4d36: $12
    ld a, [bc]                                    ; $4d37: $0a
    cp e                                          ; $4d38: $bb
    ld b, h                                       ; $4d39: $44
    ld e, a                                       ; $4d3a: $5f
    db $10                                        ; $4d3b: $10
    and b                                         ; $4d3c: $a0
    xor a                                         ; $4d3d: $af
    ld d, b                                       ; $4d3e: $50
    db $ec                                        ; $4d3f: $ec
    ld c, $df                                     ; $4d40: $0e $df
    jr nz, jr_0a6_4d1b                            ; $4d42: $20 $d7

    cp a                                          ; $4d44: $bf
    ld l, b                                       ; $4d45: $68
    xor a                                         ; $4d46: $af
    xor d                                         ; $4d47: $aa
    ld bc, $09a2                                  ; $4d48: $01 $a2 $09
    add c                                         ; $4d4b: $81
    ld a, [hl]                                    ; $4d4c: $7e
    inc b                                         ; $4d4d: $04
    ld h, [hl]                                    ; $4d4e: $66
    ld h, [hl]                                    ; $4d4f: $66
    db $fd                                        ; $4d50: $fd
    nop                                           ; $4d51: $00
    adc a                                         ; $4d52: $8f
    cp $8f                                        ; $4d53: $fe $8f
    db $fd                                        ; $4d55: $fd
    adc a                                         ; $4d56: $8f
    rst $28                                       ; $4d57: $ef
    sbc a                                         ; $4d58: $9f
    db $ed                                        ; $4d59: $ed
    nop                                           ; $4d5a: $00
    sbc a                                         ; $4d5b: $9f
    rst $10                                       ; $4d5c: $d7
    cp a                                          ; $4d5d: $bf
    sbc $bf                                       ; $4d5e: $de $bf
    xor l                                         ; $4d60: $ad
    rst $38                                       ; $4d61: $ff
    ld l, d                                       ; $4d62: $6a
    nop                                           ; $4d63: $00
    rst $38                                       ; $4d64: $ff
    rst $18                                       ; $4d65: $df
    ld a, [$f56a]                                 ; $4d66: $fa $6a $f5
    push de                                       ; $4d69: $d5
    rst $38                                       ; $4d6a: $ff
    rst $28                                       ; $4d6b: $ef
    ret nz                                        ; $4d6c: $c0

    xor b                                         ; $4d6d: $a8
    ld bc, $0170                                  ; $4d6e: $01 $70 $01
    ld a, [$ffba]                                 ; $4d71: $fa $ba $ff
    rst $38                                       ; $4d74: $ff
    cp d                                          ; $4d75: $ba
    cp d                                          ; $4d76: $ba
    inc a                                         ; $4d77: $3c
    ld e, l                                       ; $4d78: $5d
    ld e, l                                       ; $4d79: $5d
    ld a, [hl-]                                   ; $4d7a: $3a
    inc de                                        ; $4d7b: $13
    inc c                                         ; $4d7c: $0c
    ld [$4a0c], sp                                ; $4d7d: $08 $0c $4a
    inc e                                         ; $4d80: $1c
    ld a, [bc]                                    ; $4d81: $0a
    cp d                                          ; $4d82: $ba
    rst $38                                       ; $4d83: $ff
    nop                                           ; $4d84: $00
    call nc, $e9ff                                ; $4d85: $d4 $ff $e9
    cp $f0                                        ; $4d88: $fe $f0
    rst $38                                       ; $4d8a: $ff
    and l                                         ; $4d8b: $a5
    ld a, [$c200]                                 ; $4d8c: $fa $00 $c2
    db $fd                                        ; $4d8f: $fd
    sub l                                         ; $4d90: $95
    ld [$f48b], a                                 ; $4d91: $ea $8b $f4
    ld l, d                                       ; $4d94: $6a
    push af                                       ; $4d95: $f5
    ld [bc], a                                    ; $4d96: $02
    ld d, l                                       ; $4d97: $55
    rst $38                                       ; $4d98: $ff
    ld l, a                                       ; $4d99: $6f
    rst $38                                       ; $4d9a: $ff
    rst $18                                       ; $4d9b: $df
    ld a, a                                       ; $4d9c: $7f
    ld c, b                                       ; $4d9d: $48
    nop                                           ; $4d9e: $00
    ld a, d                                       ; $4d9f: $7a
    ld [$75ea], sp                                ; $4da0: $08 $ea $75
    ld d, l                                       ; $4da3: $55
    rst $38                                       ; $4da4: $ff
    inc a                                         ; $4da5: $3c
    ld c, b                                       ; $4da6: $48
    cp d                                          ; $4da7: $ba
    ld e, l                                       ; $4da8: $5d
    ld e, c                                       ; $4da9: $59
    ld h, b                                       ; $4daa: $60
    rst $38                                       ; $4dab: $ff
    inc a                                         ; $4dac: $3c
    ld c, b                                       ; $4dad: $48
    ld e, h                                       ; $4dae: $5c
    ld a, [bc]                                    ; $4daf: $0a
    sub $a9                                       ; $4db0: $d6 $a9
    xor l                                         ; $4db2: $ad
    jp nc, $0ad8                                  ; $4db3: $d2 $d8 $0a

    and a                                         ; $4db6: $a7
    or l                                          ; $4db7: $b5
    set 0, b                                      ; $4db8: $cb $c0
    ld d, $22                                     ; $4dba: $16 $22
    ld l, d                                       ; $4dbc: $6a
    or [hl]                                       ; $4dbd: $b6
    inc bc                                        ; $4dbe: $03
    xor a                                         ; $4dbf: $af

jr_0a6_4dc0:
    ld [$0224], a                                 ; $4dc0: $ea $24 $02
    ld d, [hl]                                    ; $4dc3: $56
    add hl, hl                                    ; $4dc4: $29
    ld c, h                                       ; $4dc5: $4c
    ld a, [de]                                    ; $4dc6: $1a
    adc $06                                       ; $4dc7: $ce $06
    ld [bc], a                                    ; $4dc9: $02
    cp $04                                        ; $4dca: $fe $04
    db $10                                        ; $4dcc: $10
    jr nc, jr_0a6_4e46                            ; $4dcd: $30 $77

    ccf                                           ; $4dcf: $3f
    ld bc, $4828                                  ; $4dd0: $01 $28 $48
    add hl, hl                                    ; $4dd3: $29
    ld b, e                                       ; $4dd4: $43
    ld a, [hl+]                                   ; $4dd5: $2a
    ld [hl], b                                    ; $4dd6: $70
    ld bc, $8d10                                  ; $4dd7: $01 $10 $8d
    add hl, sp                                    ; $4dda: $39
    sbc e                                         ; $4ddb: $9b
    rra                                           ; $4ddc: $1f
    adc h                                         ; $4ddd: $8c
    jr c, jr_0a6_4df8                             ; $4dde: $38 $18

    db $fc                                        ; $4de0: $fc
    db $fc                                        ; $4de1: $fc
    ret nz                                        ; $4de2: $c0

    jr nc, jr_0a6_4e0c                            ; $4de3: $30 $27

    add h                                         ; $4de5: $84
    inc bc                                        ; $4de6: $03
    xor d                                         ; $4de7: $aa
    xor [hl]                                      ; $4de8: $ae
    ret nz                                        ; $4de9: $c0

    ld [hl-], a                                   ; $4dea: $32
    ld [bc], a                                    ; $4deb: $02
    inc b                                         ; $4dec: $04
    dec bc                                        ; $4ded: $0b
    xor e                                         ; $4dee: $ab
    rst $38                                       ; $4def: $ff
    rst $30                                       ; $4df0: $f7
    xor a                                         ; $4df1: $af
    xor a                                         ; $4df2: $af
    rst $38                                       ; $4df3: $ff
    ld b, $de                                     ; $4df4: $06 $de
    cp a                                          ; $4df6: $bf
    cp e                                          ; $4df7: $bb

jr_0a6_4df8:
    ld a, a                                       ; $4df8: $7f
    ld [hl], a                                    ; $4df9: $77
    ldh a, [rP1]                                  ; $4dfa: $f0 $00
    ld d, $09                                     ; $4dfc: $16 $09
    ld a, a                                       ; $4dfe: $7f
    xor b                                         ; $4dff: $a8
    sub d                                         ; $4e00: $92
    dec b                                         ; $4e01: $05
    ld [hl], $1e                                  ; $4e02: $36 $1e
    inc bc                                        ; $4e04: $03
    or $04                                        ; $4e05: $f6 $04
    jr nc, jr_0a6_4e61                            ; $4e07: $30 $58

    cp b                                          ; $4e09: $b8
    adc b                                         ; $4e0a: $88
    ld b, b                                       ; $4e0b: $40

jr_0a6_4e0c:
    ld a, b                                       ; $4e0c: $78
    inc b                                         ; $4e0d: $04
    jr jr_0a6_4dc0                                ; $4e0e: $18 $b0

    ld [hl], b                                    ; $4e10: $70
    ld h, b                                       ; $4e11: $60
    ldh [$c0], a                                  ; $4e12: $e0 $c0
    ret nz                                        ; $4e14: $c0

    ld de, $5fae                                  ; $4e15: $11 $ae $5f
    ld e, a                                       ; $4e18: $5f
    adc [hl]                                      ; $4e19: $8e
    ld [bc], a                                    ; $4e1a: $02
    rst $18                                       ; $4e1b: $df
    rst $38                                       ; $4e1c: $ff
    cp e                                          ; $4e1d: $bb
    inc l                                         ; $4e1e: $2c
    db $10                                        ; $4e1f: $10
    ld b, l                                       ; $4e20: $45
    ei                                            ; $4e21: $fb
    ld d, d                                       ; $4e22: $52
    inc d                                         ; $4e23: $14
    cp $fe                                        ; $4e24: $fe $fe
    ld hl, sp-$52                                 ; $4e26: $f8 $ae
    ld [bc], a                                    ; $4e28: $02
    ldh [rNR34], a                                ; $4e29: $e0 $1e
    nop                                           ; $4e2b: $00
    ld bc, $8080                                  ; $4e2c: $01 $80 $80
    rst $38                                       ; $4e2f: $ff
    rst $38                                       ; $4e30: $ff
    rst $30                                       ; $4e31: $f7
    rst $30                                       ; $4e32: $f7
    rlca                                          ; $4e33: $07
    ld bc, $4020                                  ; $4e34: $01 $20 $40
    ld b, $01                                     ; $4e37: $06 $01
    nop                                           ; $4e39: $00
    rst $38                                       ; $4e3a: $ff
    rst $38                                       ; $4e3b: $ff
    db $eb                                        ; $4e3c: $eb
    rst $38                                       ; $4e3d: $ff
    sbc $be                                       ; $4e3e: $de $be
    ld [bc], a                                    ; $4e40: $02
    adc d                                         ; $4e41: $8a
    ld a, [hl]                                    ; $4e42: $7e
    ld e, h                                       ; $4e43: $5c
    cp h                                          ; $4e44: $bc
    adc h                                         ; $4e45: $8c

jr_0a6_4e46:
    ld a, h                                       ; $4e46: $7c
    ld c, h                                       ; $4e47: $4c
    ld [$040f], sp                                ; $4e48: $08 $0f $04
    add hl, bc                                    ; $4e4b: $09
    rrca                                          ; $4e4c: $0f
    add hl, bc                                    ; $4e4d: $09
    ld b, $06                                     ; $4e4e: $06 $06
    ld a, d                                       ; $4e50: $7a
    ccf                                           ; $4e51: $3f
    ld d, b                                       ; $4e52: $50
    or b                                          ; $4e53: $b0
    jr @-$1e                                      ; $4e54: $18 $e0

    ld h, b                                       ; $4e56: $60
    add b                                         ; $4e57: $80
    ld l, $47                                     ; $4e58: $2e $47
    ld d, [hl]                                    ; $4e5a: $56
    inc l                                         ; $4e5b: $2c
    cp a                                          ; $4e5c: $bf
    ld b, b                                       ; $4e5d: $40
    or $03                                        ; $4e5e: $f6 $03
    add hl, bc                                    ; $4e60: $09

jr_0a6_4e61:
    ei                                            ; $4e61: $fb
    inc b                                         ; $4e62: $04
    rra                                           ; $4e63: $1f
    ldh [$7e], a                                  ; $4e64: $e0 $7e
    ld h, h                                       ; $4e66: $64
    ld [bc], a                                    ; $4e67: $02
    inc b                                         ; $4e68: $04
    ld [$79b6], sp                                ; $4e69: $08 $b6 $79
    dec b                                         ; $4e6c: $05
    ld bc, $0802                                  ; $4e6d: $01 $02 $08
    ld l, l                                       ; $4e70: $6d
    ld a, [hl-]                                   ; $4e71: $3a
    add b                                         ; $4e72: $80
    ld bc, $1010                                  ; $4e73: $01 $10 $10
    inc c                                         ; $4e76: $0c
    ld c, l                                       ; $4e77: $4d
    ld [hl], d                                    ; $4e78: $72
    ld a, [c]                                     ; $4e79: $f2
    push de                                       ; $4e7a: $d5
    inc b                                         ; $4e7b: $04
    db $10                                        ; $4e7c: $10
    inc h                                         ; $4e7d: $24
    ld h, $18                                     ; $4e7e: $26 $18
    ld [bc], a                                    ; $4e80: $02
    inc bc                                        ; $4e81: $03
    ld a, [hl]                                    ; $4e82: $7e
    nop                                           ; $4e83: $00
    rlca                                          ; $4e84: $07
    ld sp, $0303                                  ; $4e85: $31 $03 $03
    rst $20                                       ; $4e88: $e7
    ld b, $27                                     ; $4e89: $06 $27
    db $10                                        ; $4e8b: $10
    ret nz                                        ; $4e8c: $c0

    ret nz                                        ; $4e8d: $c0

    ldh [rSB], a                                  ; $4e8e: $e0 $01
    nop                                           ; $4e90: $00
    sub c                                         ; $4e91: $91
    inc b                                         ; $4e92: $04
    add hl, bc                                    ; $4e93: $09
    add c                                         ; $4e94: $81
    cp $10                                        ; $4e95: $fe $10
    inc bc                                        ; $4e97: $03
    ldh a, [$31]                                  ; $4e98: $f0 $31
    rst $38                                       ; $4e9a: $ff
    db $10                                        ; $4e9b: $10
    dec sp                                        ; $4e9c: $3b
    add b                                         ; $4e9d: $80
    inc [hl]                                      ; $4e9e: $34
    inc c                                         ; $4e9f: $0c
    ld h, b                                       ; $4ea0: $60
    sbc a                                         ; $4ea1: $9f
    reti                                          ; $4ea2: $d9


    jr nz, @-$2f                                  ; $4ea3: $20 $cf

    ld [hl], b                                    ; $4ea5: $70
    cp b                                          ; $4ea6: $b8
    db $10                                        ; $4ea7: $10
    ld a, a                                       ; $4ea8: $7f
    rst $00                                       ; $4ea9: $c7
    ccf                                           ; $4eaa: $3f
    inc d                                         ; $4eab: $14
    jr c, @+$01                                   ; $4eac: $38 $ff

    ld b, b                                       ; $4eae: $40
    cp l                                          ; $4eaf: $bd
    jp nz, Jump_0a6_6b20                          ; $4eb0: $c2 $20 $6b

    sub h                                         ; $4eb3: $94
    and $1c                                       ; $4eb4: $e6 $1c
    rst $30                                       ; $4eb6: $f7
    ld [$10ef], sp                                ; $4eb7: $08 $ef $10
    jp c, Jump_000_2500                           ; $4eba: $da $00 $25

    ldh a, [$1f]                                  ; $4ebd: $f0 $1f
    add sp, $30                                   ; $4ebf: $e8 $30
    rst $38                                       ; $4ec1: $ff
    nop                                           ; $4ec2: $00
    ld a, [$051c]                                 ; $4ec3: $fa $1c $05
    push af                                       ; $4ec6: $f5
    ld a, [bc]                                    ; $4ec7: $0a
    ld b, b                                       ; $4ec8: $40
    dec sp                                        ; $4ec9: $3b
    cp h                                          ; $4eca: $bc
    inc c                                         ; $4ecb: $0c
    ld e, b                                       ; $4ecc: $58
    dec hl                                        ; $4ecd: $2b
    cp $01                                        ; $4ece: $fe $01
    ret nz                                        ; $4ed0: $c0

    ld l, [hl]                                    ; $4ed1: $6e
    ld c, $32                                     ; $4ed2: $0e $32
    ld c, $83                                     ; $4ed4: $0e $83
    ld a, h                                       ; $4ed6: $7c
    ld b, l                                       ; $4ed7: $45
    add d                                         ; $4ed8: $82
    ei                                            ; $4ed9: $fb
    ld b, $58                                     ; $4eda: $06 $58
    dec b                                         ; $4edc: $05
    ld [hl-], a                                   ; $4edd: $32
    dec b                                         ; $4ede: $05
    ld h, [hl]                                    ; $4edf: $66
    ld bc, $fc30                                  ; $4ee0: $01 $30 $fc
    rra                                           ; $4ee3: $1f
    sbc a                                         ; $4ee4: $9f
    ld h, b                                       ; $4ee5: $60
    db $eb                                        ; $4ee6: $eb
    ld b, b                                       ; $4ee7: $40
    inc d                                         ; $4ee8: $14
    ld a, [c]                                     ; $4ee9: $f2
    inc c                                         ; $4eea: $0c
    ldh [$1f], a                                  ; $4eeb: $e0 $1f
    ret nc                                        ; $4eed: $d0

    jr nz, @-$36                                  ; $4eee: $20 $c8

    ld [hl], b                                    ; $4ef0: $70
    ld h, b                                       ; $4ef1: $60

jr_0a6_4ef2:
    cp c                                          ; $4ef2: $b9
    ld b, c                                       ; $4ef3: $41
    inc bc                                        ; $4ef4: $03
    ld c, b                                       ; $4ef5: $48
    dec l                                         ; $4ef6: $2d
    ld a, [hl]                                    ; $4ef7: $7e
    add c                                         ; $4ef8: $81
    or l                                          ; $4ef9: $b5
    ld c, d                                       ; $4efa: $4a
    ld a, e                                       ; $4efb: $7b
    ld b, b                                       ; $4efc: $40
    call nz, $0e70                                ; $4efd: $c4 $70 $0e
    db $fd                                        ; $4f00: $fd
    ld [bc], a                                    ; $4f01: $02
    ei                                            ; $4f02: $fb
    inc b                                         ; $4f03: $04
    ld [hl], b                                    ; $4f04: $70
    adc a                                         ; $4f05: $8f
    ldh [$50], a                                  ; $4f06: $e0 $50
    dec l                                         ; $4f08: $2d
    and h                                         ; $4f09: $a4
    jr z, jr_0a6_4ef2                             ; $4f0a: $28 $e6

    ld a, [bc]                                    ; $4f0c: $0a
    ld l, $51                                     ; $4f0d: $2e $51
    rst $00                                       ; $4f0f: $c7
    ccf                                           ; $4f10: $3f
    ld sp, hl                                     ; $4f11: $f9
    ld bc, $7407                                  ; $4f12: $01 $07 $74
    adc e                                         ; $4f15: $8b
    ei                                            ; $4f16: $fb
    inc b                                         ; $4f17: $04
    rst $10                                       ; $4f18: $d7
    jr z, @+$52                                   ; $4f19: $28 $50

    dec de                                        ; $4f1b: $1b
    nop                                           ; $4f1c: $00

jr_0a6_4f1d:
    ld a, a                                       ; $4f1d: $7f
    add b                                         ; $4f1e: $80
    cp b                                          ; $4f1f: $b8
    ld b, a                                       ; $4f20: $47
    ld h, h                                       ; $4f21: $64
    sbc b                                         ; $4f22: $98
    ret z                                         ; $4f23: $c8

    jr nc, jr_0a6_4f2c                            ; $4f24: $30 $06

    and [hl]                                      ; $4f26: $a6
    ld a, b                                       ; $4f27: $78
    or h                                          ; $4f28: $b4
    ld a, a                                       ; $4f29: $7f
    rst $18                                       ; $4f2a: $df
    cp [hl]                                       ; $4f2b: $be

jr_0a6_4f2c:
    nop                                           ; $4f2c: $00
    ld b, $0a                                     ; $4f2d: $06 $0a
    ld h, b                                       ; $4f2f: $60
    add d                                         ; $4f30: $82
    ld bc, $f000                                  ; $4f31: $01 $00 $f0
    sub b                                         ; $4f34: $90
    ldh a, [$90]                                  ; $4f35: $f0 $90
    ld h, b                                       ; $4f37: $60
    add $07                                       ; $4f38: $c6 $07
    rra                                           ; $4f3a: $1f
    nop                                           ; $4f3b: $00
    ldh [$e7], a                                  ; $4f3c: $e0 $e7
    jr jr_0a6_4f77                                ; $4f3e: $18 $37

    call z, $ff8c                                 ; $4f40: $cc $8c $ff
    ld hl, sp+$01                                 ; $4f43: $f8 $01
    ldh a, [rNR21]                                ; $4f45: $f0 $16
    ld hl, sp-$2d                                 ; $4f47: $f8 $d3
    inc a                                         ; $4f49: $3c
    ld a, a                                       ; $4f4a: $7f
    adc a                                         ; $4f4b: $8f
    add b                                         ; $4f4c: $80
    nop                                           ; $4f4d: $00
    add b                                         ; $4f4e: $80
    ld d, b                                       ; $4f4f: $50
    dec d                                         ; $4f50: $15
    ld e, [hl]                                    ; $4f51: $5e
    ld hl, $603f                                  ; $4f52: $21 $3f $60
    ld a, a                                       ; $4f55: $7f
    ret nz                                        ; $4f56: $c0

    rst $38                                       ; $4f57: $ff
    nop                                           ; $4f58: $00
    add b                                         ; $4f59: $80
    ld d, $29                                     ; $4f5a: $16 $29
    cpl                                           ; $4f5c: $2f
    db $10                                        ; $4f5d: $10
    xor a                                         ; $4f5e: $af
    ld [hl], b                                    ; $4f5f: $70
    ld d, a                                       ; $4f60: $57
    inc b                                         ; $4f61: $04
    add sp, -$51                                  ; $4f62: $e8 $af

jr_0a6_4f64:
    ret nc                                        ; $4f64: $d0

    jp c, $d225                                   ; $4f65: $da $25 $d2

    ld c, l                                       ; $4f68: $4d
    rst $18                                       ; $4f69: $df
    jr nz, @-$7e                                  ; $4f6a: $20 $80

    ld [hl], $0b                                  ; $4f6c: $36 $0b
    xor $11                                       ; $4f6e: $ee $11
    rst $10                                       ; $4f70: $d7
    jr z, @+$11                                   ; $4f71: $28 $0f

    ldh a, [$03]                                  ; $4f73: $f0 $03
    nop                                           ; $4f75: $00
    inc c                                         ; $4f76: $0c

jr_0a6_4f77:
    dec b                                         ; $4f77: $05
    ld [bc], a                                    ; $4f78: $02

jr_0a6_4f79:
    xor e                                         ; $4f79: $ab
    ld b, $1d                                     ; $4f7a: $06 $1d
    cp $ef                                        ; $4f7c: $fe $ef
    ld b, e                                       ; $4f7e: $43
    ldh a, [$9c]                                  ; $4f7f: $f0 $9c
    ld [$01fe], sp                                ; $4f81: $08 $fe $01
    db $dd                                        ; $4f84: $dd
    ld [hl+], a                                   ; $4f85: $22
    or b                                          ; $4f86: $b0
    dec bc                                        ; $4f87: $0b
    ld [$0018], a                                 ; $4f88: $ea $18 $00
    rrca                                          ; $4f8b: $0f
    rrca                                          ; $4f8c: $0f
    ccf                                           ; $4f8d: $3f
    inc a                                         ; $4f8e: $3c
    ld a, [hl]                                    ; $4f8f: $7e
    pop af                                        ; $4f90: $f1
    ld a, e                                       ; $4f91: $7b
    db $e4                                        ; $4f92: $e4
    nop                                           ; $4f93: $00
    dec l                                         ; $4f94: $2d
    ld [hl], d                                    ; $4f95: $72
    dec sp                                        ; $4f96: $3b
    ld [hl], h                                    ; $4f97: $74
    inc d                                         ; $4f98: $14
    dec sp                                        ; $4f99: $3b
    rra                                           ; $4f9a: $1f
    jr c, jr_0a6_4f1d                             ; $4f9b: $38 $80

    ld a, [bc]                                    ; $4f9d: $0a
    ld c, $cc                                     ; $4f9e: $0e $cc
    jr nc, @-$17                                  ; $4fa0: $30 $e7

    jr c, jr_0a6_4f79                             ; $4fa2: $38 $d5

    ccf                                           ; $4fa4: $3f
    rst $28                                       ; $4fa5: $ef
    nop                                           ; $4fa6: $00
    rra                                           ; $4fa7: $1f
    ld a, c                                       ; $4fa8: $79
    add a                                         ; $4fa9: $87
    add c                                         ; $4faa: $81
    ld a, a                                       ; $4fab: $7f
    and [hl]                                      ; $4fac: $a6
    add hl, de                                    ; $4fad: $19
    ei                                            ; $4fae: $fb
    nop                                           ; $4faf: $00
    inc b                                         ; $4fb0: $04
    rlca                                          ; $4fb1: $07
    db $fc                                        ; $4fb2: $fc
    rst $38                                       ; $4fb3: $ff
    ld hl, sp+$06                                 ; $4fb4: $f8 $06
    ld sp, hl                                     ; $4fb6: $f9
    dec e                                         ; $4fb7: $1d
    ld b, b                                       ; $4fb8: $40
    ld [c], a                                     ; $4fb9: $e2
    ld a, [hl]                                    ; $4fba: $7e
    inc e                                         ; $4fbb: $1c
    rst $28                                       ; $4fbc: $ef
    ld de, $01ff                                  ; $4fbd: $11 $ff $01
    or $09                                        ; $4fc0: $f6 $09
    ret nc                                        ; $4fc2: $d0

    ld d, b                                       ; $4fc3: $50
    add hl, hl                                    ; $4fc4: $29
    rra                                           ; $4fc5: $1f
    rrca                                          ; $4fc6: $0f
    db $10                                        ; $4fc7: $10
    ld b, e                                       ; $4fc8: $43
    rlca                                          ; $4fc9: $07
    ld hl, $4b01                                  ; $4fca: $21 $01 $4b
    ld bc, $a300                                  ; $4fcd: $01 $00 $a3
    ld bc, $ab55                                  ; $4fd0: $01 $55 $ab
    ld [bc], a                                    ; $4fd3: $02
    nop                                           ; $4fd4: $00
    add b                                         ; $4fd5: $80
    nop                                           ; $4fd6: $00
    nop                                           ; $4fd7: $00
    ld d, b                                       ; $4fd8: $50
    xor b                                         ; $4fd9: $a8
    adc b                                         ; $4fda: $88
    inc b                                         ; $4fdb: $04
    add d                                         ; $4fdc: $82
    inc b                                         ; $4fdd: $04
    jr nz, jr_0a6_4f64                            ; $4fde: $20 $84

    ld bc, $449a                                  ; $4fe0: $01 $9a $44
    ld e, [hl]                                    ; $4fe3: $5e
    and h                                         ; $4fe4: $a4
    add a                                         ; $4fe5: $87
    ld bc, $0203                                  ; $4fe6: $01 $03 $02
    nop                                           ; $4fe9: $00
    nop                                           ; $4fea: $00
    ld b, e                                       ; $4feb: $43
    ld bc, $01ae                                  ; $4fec: $01 $ae $01
    cp d                                          ; $4fef: $ba
    ld b, l                                       ; $4ff0: $45
    ld d, b                                       ; $4ff1: $50
    xor a                                         ; $4ff2: $af
    nop                                           ; $4ff3: $00
    and l                                         ; $4ff4: $a5
    rst $38                                       ; $4ff5: $ff
    sub [hl]                                      ; $4ff6: $96
    db $ec                                        ; $4ff7: $ec
    ld d, a                                       ; $4ff8: $57
    db $fc                                        ; $4ff9: $fc
    cp $f8                                        ; $4ffa: $fe $f8
    nop                                           ; $4ffc: $00
    inc e                                         ; $4ffd: $1c
    ldh [$ea], a                                  ; $4ffe: $e0 $ea
    add b                                         ; $5000: $80

Call_0a6_5001:
    push de                                       ; $5001: $d5
    add b                                         ; $5002: $80
    ld [$4080], a                                 ; $5003: $ea $80 $40
    rst $30                                       ; $5006: $f7

Call_0a6_5007:
    ld [hl], b                                    ; $5007: $70
    ld [bc], a                                    ; $5008: $02
    ld e, b                                       ; $5009: $58
    ldh [rSVBK], a                                ; $500a: $e0 $70
    ret nz                                        ; $500c: $c0

    and b                                         ; $500d: $a0
    ret nz                                        ; $500e: $c0

    nop                                           ; $500f: $00
    or h                                          ; $5010: $b4
    ret nz                                        ; $5011: $c0

    xor d                                         ; $5012: $aa
    ret nz                                        ; $5013: $c0

    sbc l                                         ; $5014: $9d
    ldh [$cf], a                                  ; $5015: $e0 $cf
    ldh a, [rNR23]                                ; $5017: $f0 $18
    xor d                                         ; $5019: $aa
    push de                                       ; $501a: $d5
    ld d, l                                       ; $501b: $55
    ld [hl], d                                    ; $501c: $72
    daa                                           ; $501d: $27
    ld d, [hl]                                    ; $501e: $56
    rrca                                          ; $501f: $0f
    xor e                                         ; $5020: $ab
    nop                                           ; $5021: $00
    and l                                         ; $5022: $a5
    ld a, $fa                                     ; $5023: $3e $fa
    push de                                       ; $5025: $d5
    ld [$8007], sp                                ; $5026: $08 $07 $80
    ld a, $12                                     ; $5029: $3e $12
    ld b, $04                                     ; $502b: $06 $04
    rrca                                          ; $502d: $0f
    sub b                                         ; $502e: $90
    ld b, $28                                     ; $502f: $06 $28
    ret nz                                        ; $5031: $c0

    db $10                                        ; $5032: $10
    rra                                           ; $5033: $1f
    add $2e                                       ; $5034: $c6 $2e
    ld bc, $03fe                                  ; $5036: $01 $fe $03
    ld a, [$f507]                                 ; $5039: $fa $07 $f5
    nop                                           ; $503c: $00
    dec bc                                        ; $503d: $0b
    ld a, [$f50f]                                 ; $503e: $fa $0f $f5
    rrca                                          ; $5041: $0f
    ei                                            ; $5042: $fb
    rlca                                          ; $5043: $07
    nop                                           ; $5044: $00
    jr @+$01                                      ; $5045: $18 $ff

    push bc                                       ; $5047: $c5
    ld [bc], a                                    ; $5048: $02
    ret nz                                        ; $5049: $c0

    add hl, de                                    ; $504a: $19
    and $1e                                       ; $504b: $e6 $1e
    db $ec                                        ; $504d: $ec
    rra                                           ; $504e: $1f
    ld hl, sp+$00                                 ; $504f: $f8 $00
    db $10                                        ; $5051: $10
    or $18                                        ; $5052: $f6 $18
    di                                            ; $5054: $f3

jr_0a6_5055:
    inc e                                         ; $5055: $1c
    jp z, $983f                                   ; $5056: $ca $3f $98

    ld b, b                                       ; $5059: $40
    ld h, a                                       ; $505a: $67
    ldh [$0c], a                                  ; $505b: $e0 $0c
    ld l, b                                       ; $505d: $68
    rst $38                                       ; $505e: $ff
    sbc a                                         ; $505f: $9f
    ld a, a                                       ; $5060: $7f
    and c                                         ; $5061: $a1
    ld e, [hl]                                    ; $5062: $5e
    add hl, bc                                    ; $5063: $09
    rst $10                                       ; $5064: $d7
    jr z, jr_0a6_5055                             ; $5065: $28 $ee

    ld de, $2910                                  ; $5067: $11 $10 $29
    rst $10                                       ; $506a: $d7
    jr z, @+$44                                   ; $506b: $28 $42

    nop                                           ; $506d: $00
    ret nz                                        ; $506e: $c0

    nop                                           ; $506f: $00
    ld [bc], a                                    ; $5070: $02
    ld c, $2f                                     ; $5071: $0e $2f
    add sp, $10                                   ; $5073: $e8 $10
    sub $38                                       ; $5075: $d6 $38
    db $d3                                        ; $5077: $d3
    inc a                                         ; $5078: $3c
    ld b, e                                       ; $5079: $43
    ld l, d                                       ; $507a: $6a
    ld b, b                                       ; $507b: $40
    rlca                                          ; $507c: $07
    ei                                            ; $507d: $fb
    dec b                                         ; $507e: $05
    or $09                                        ; $507f: $f6 $09
    ret nz                                        ; $5081: $c0

    ld a, $e0                                     ; $5082: $3e $e0
    ld a, $32                                     ; $5084: $3e $32
    rst $18                                       ; $5086: $df
    ldh [$c4], a                                  ; $5087: $e0 $c4
    ld c, $d0                                     ; $5089: $0e $d0
    inc e                                         ; $508b: $1c
    nop                                           ; $508c: $00
    ld bc, $0cd0                                  ; $508d: $01 $d0 $0c
    rst $38                                       ; $5090: $ff
    nop                                           ; $5091: $00
    cp $07                                        ; $5092: $fe $07
    ld hl, sp+$0c                                 ; $5094: $f8 $0c
    rrca                                          ; $5096: $0f
    inc bc                                        ; $5097: $03
    inc bc                                        ; $5098: $03
    ld bc, $0180                                  ; $5099: $01 $80 $01
    ld b, b                                       ; $509c: $40
    ret c                                         ; $509d: $d8

    jr c, @+$3a                                   ; $509e: $38 $38

    ld hl, sp-$30                                 ; $50a0: $f8 $d0
    ldh a, [$30]                                  ; $50a2: $f0 $30
    ld h, b                                       ; $50a4: $60
    or b                                          ; $50a5: $b0
    rla                                           ; $50a6: $17
    ld bc, $1802                                  ; $50a7: $01 $02 $18
    inc bc                                        ; $50aa: $03
    inc bc                                        ; $50ab: $03
    inc c                                         ; $50ac: $0c
    rrca                                          ; $50ad: $0f
    stop                                          ; $50ae: $10 $00
    nop                                           ; $50b0: $00
    ccf                                           ; $50b1: $3f
    rra                                           ; $50b2: $1f
    jr nz, jr_0a6_50f4                            ; $50b3: $20 $3f

    jr nz, jr_0a6_50b7                            ; $50b5: $20 $00

jr_0a6_50b7:
    ccf                                           ; $50b7: $3f
    nop                                           ; $50b8: $00
    cpl                                           ; $50b9: $2f
    jr nc, @+$19                                  ; $50ba: $30 $17

    jr c, @+$3c                                   ; $50bc: $38 $3a

    ld e, a                                       ; $50be: $5f
    rra                                           ; $50bf: $1f
    ld a, a                                       ; $50c0: $7f
    ld [$2322], sp                                ; $50c1: $08 $22 $23

jr_0a6_50c4:
    ld [bc], a                                    ; $50c4: $02
    inc bc                                        ; $50c5: $03
    ld [bc], a                                    ; $50c6: $02
    ld [$0101], sp                                ; $50c7: $08 $01 $01
    db $ec                                        ; $50ca: $ec
    nop                                           ; $50cb: $00
    inc e                                         ; $50cc: $1c
    ld e, h                                       ; $50cd: $5c
    ld a, [$fef8]                                 ; $50ce: $fa $f8 $fe
    inc b                                         ; $50d1: $04
    call nz, Call_0a6_6080                        ; $50d2: $c4 $80 $60
    ld b, b                                       ; $50d5: $40
    ld [bc], a                                    ; $50d6: $02
    ld [$0830], sp                                ; $50d7: $08 $30 $08
    ld bc, $0b0e                                  ; $50da: $01 $0e $0b
    inc d                                         ; $50dd: $14
    rla                                           ; $50de: $17
    nop                                           ; $50df: $00
    jr z, jr_0a6_50f1                             ; $50e0: $28 $0f

    jr nc, jr_0a6_5122                            ; $50e2: $30 $3e

    ld hl, $221d                                  ; $50e4: $21 $1d $22
    dec hl                                        ; $50e7: $2b
    ld b, b                                       ; $50e8: $40
    inc [hl]                                      ; $50e9: $34
    ccf                                           ; $50ea: $3f
    inc b                                         ; $50eb: $04
    ld sp, $3639                                  ; $50ec: $31 $39 $36
    ld a, a                                       ; $50ef: $7f
    ld h, b                                       ; $50f0: $60

jr_0a6_50f1:
    ld [hl], e                                    ; $50f1: $73
    nop                                           ; $50f2: $00
    ld l, h                                       ; $50f3: $6c

jr_0a6_50f4:
    ld a, [hl]                                    ; $50f4: $7e
    ld h, c                                       ; $50f5: $61
    di                                            ; $50f6: $f3
    call z, $c1fe                                 ; $50f7: $cc $fe $c1
    ret nz                                        ; $50fa: $c0

    nop                                           ; $50fb: $00
    ret nz                                        ; $50fc: $c0

    db $fc                                        ; $50fd: $fc
    db $fc                                        ; $50fe: $fc
    ld a, a                                       ; $50ff: $7f
    sbc a                                         ; $5100: $9f
    rst $38                                       ; $5101: $ff
    inc bc                                        ; $5102: $03
    ld c, e                                       ; $5103: $4b
    ld [bc], a                                    ; $5104: $02
    or a                                          ; $5105: $b7
    rst $38                                       ; $5106: $ff
    rlca                                          ; $5107: $07
    adc [hl]                                      ; $5108: $8e
    halt                                          ; $5109: $76
    or $24                                        ; $510a: $f6 $24
    ld b, $e3                                     ; $510c: $06 $e3
    nop                                           ; $510e: $00
    inc e                                         ; $510f: $1c
    sub l                                         ; $5110: $95
    ld h, d                                       ; $5111: $62
    ld b, d                                       ; $5112: $42
    add c                                         ; $5113: $81
    cp $81                                        ; $5114: $fe $81
    pop de                                        ; $5116: $d1
    add b                                         ; $5117: $80
    sbc $05                                       ; $5118: $de $05
    pop hl                                        ; $511a: $e1
    ld e, $8f                                     ; $511b: $1e $8f
    ldh a, [$f0]                                  ; $511d: $f0 $f0
    rst $38                                       ; $511f: $ff
    rrca                                          ; $5120: $0f
    ld b, b                                       ; $5121: $40

jr_0a6_5122:
    rrca                                          ; $5122: $0f
    sub d                                         ; $5123: $92
    jr c, jr_0a6_50c4                             ; $5124: $38 $9e

    ld l, [hl]                                    ; $5126: $6e
    ld a, h                                       ; $5127: $7c
    adc h                                         ; $5128: $8c
    add b                                         ; $5129: $80

jr_0a6_512a:
    db $fc                                        ; $512a: $fc
    jr nz, jr_0a6_51a9                            ; $512b: $20 $7c

    db $fc                                        ; $512d: $fc
    sub b                                         ; $512e: $90
    jr z, jr_0a6_51b0                             ; $512f: $28 $7f

    ld a, a                                       ; $5131: $7f
    ld a, a                                       ; $5132: $7f
    ld h, b                                       ; $5133: $60
    ld [hl], d                                    ; $5134: $72
    nop                                           ; $5135: $00
    ld l, l                                       ; $5136: $6d
    ld a, a                                       ; $5137: $7f
    ld h, b                                       ; $5138: $60
    ld a, [c]                                     ; $5139: $f2
    db $ed                                        ; $513a: $ed
    rst $38                                       ; $513b: $ff
    ret nz                                        ; $513c: $c0

    push hl                                       ; $513d: $e5
    nop                                           ; $513e: $00
    jp c, $c0ff                                   ; $513f: $da $ff $c0

    db $fd                                        ; $5142: $fd
    jp nz, $f887                                  ; $5143: $c2 $87 $f8

    ld hl, sp+$10                                 ; $5146: $f8 $10
    rst $38                                       ; $5148: $ff
    rlca                                          ; $5149: $07
    rlca                                          ; $514a: $07
    call nz, RST_28                               ; $514b: $c4 $28 $00
    ret nz                                        ; $514e: $c0

    ret nz                                        ; $514f: $c0

    jr nc, jr_0a6_5152                            ; $5150: $30 $00

jr_0a6_5152:
    ret nc                                        ; $5152: $d0

    jr z, @-$46                                   ; $5153: $28 $b8

    ld b, h                                       ; $5155: $44
    ld a, b                                       ; $5156: $78
    add h                                         ; $5157: $84
    db $f4                                        ; $5158: $f4
    inc c                                         ; $5159: $0c
    ld [$14e8], sp                                ; $515a: $08 $e8 $14
    call nc, Call_0a6_7c2c                        ; $515d: $d4 $2c $7c
    add hl, bc                                    ; $5160: $09
    add b                                         ; $5161: $80
    rst $38                                       ; $5162: $ff
    ret nz                                        ; $5163: $c0

    ld d, b                                       ; $5164: $50
    cp a                                          ; $5165: $bf
    inc b                                         ; $5166: $04
    jr jr_0a6_512a                                ; $5167: $18 $c1

    dec hl                                        ; $5169: $2b
    rlca                                          ; $516a: $07
    nop                                           ; $516b: $00
    rst $38                                       ; $516c: $ff
    xor d                                         ; $516d: $aa
    ld d, l                                       ; $516e: $55
    ret nz                                        ; $516f: $c0

    rst $30                                       ; $5170: $f7
    dec de                                        ; $5171: $1b
    sub $0e                                       ; $5172: $d6 $0e
    add e                                         ; $5174: $83
    rst $38                                       ; $5175: $ff
    ld b, c                                       ; $5176: $41
    cp a                                          ; $5177: $bf
    add e                                         ; $5178: $83
    ld a, a                                       ; $5179: $7f
    ld e, d                                       ; $517a: $5a
    ld bc, $073c                                  ; $517b: $01 $3c $07
    ld bc, $06d6                                  ; $517e: $01 $d6 $06
    xor h                                         ; $5181: $ac
    rlca                                          ; $5182: $07
    ld bc, $0958                                  ; $5183: $01 $58 $09
    cp a                                          ; $5186: $bf
    nop                                           ; $5187: $00
    ld bc, $01f6                                  ; $5188: $01 $f6 $01
    rst $18                                       ; $518b: $df
    ld bc, $01fa                                  ; $518c: $01 $fa $01
    ld d, [hl]                                    ; $518f: $56
    ret nc                                        ; $5190: $d0

    ld h, d                                       ; $5191: $62
    ld sp, $1ffe                                  ; $5192: $31 $fe $1f
    add c                                         ; $5195: $81
    ld b, b                                       ; $5196: $40
    inc sp                                        ; $5197: $33
    cp $03                                        ; $5198: $fe $03
    cp $04                                        ; $519a: $fe $04
    ld [$07fc], sp                                ; $519c: $08 $fc $07
    ei                                            ; $519f: $fb
    rlca                                          ; $51a0: $07
    db $f4                                        ; $51a1: $f4
    rrca                                          ; $51a2: $0f
    db $fc                                        ; $51a3: $fc
    inc bc                                        ; $51a4: $03
    db $fd                                        ; $51a5: $fd
    nop                                           ; $51a6: $00
    ld b, $fd                                     ; $51a7: $06 $fd

jr_0a6_51a9:
    rlca                                          ; $51a9: $07
    ld a, [$1d07]                                 ; $51aa: $fa $07 $1d
    db $e3                                        ; $51ad: $e3
    daa                                           ; $51ae: $27
    nop                                           ; $51af: $00

jr_0a6_51b0:
    jr @-$52                                      ; $51b0: $18 $ac

    ld e, h                                       ; $51b2: $5c
    ld e, b                                       ; $51b3: $58
    ld hl, sp-$10                                 ; $51b4: $f8 $f0
    ld hl, sp+$40                                 ; $51b6: $f8 $40
    nop                                           ; $51b8: $00
    ld a, b                                       ; $51b9: $78
    jr nc, jr_0a6_51e4                            ; $51ba: $30 $28

    jr z, @+$36                                   ; $51bc: $28 $34

    jr z, @+$36                                   ; $51be: $28 $34

    db $10                                        ; $51c0: $10
    ld bc, $6f18                                  ; $51c1: $01 $18 $6f
    sub b                                         ; $51c4: $90
    rst $30                                       ; $51c5: $f7
    ld [$02fd], sp                                ; $51c6: $08 $fd $02
    ld h, b                                       ; $51c9: $60
    ld a, $87                                     ; $51ca: $3e $87
    ld d, b                                       ; $51cc: $50
    ld e, [hl]                                    ; $51cd: $5e
    inc bc                                        ; $51ce: $03
    db $fc                                        ; $51cf: $fc
    ei                                            ; $51d0: $fb
    inc b                                         ; $51d1: $04
    add $39                                       ; $51d2: $c6 $39
    jr nc, jr_0a6_51e5                            ; $51d4: $30 $0f

    db $10                                        ; $51d6: $10
    cpl                                           ; $51d7: $2f
    jp nz, Jump_000_0f38                          ; $51d8: $c2 $38 $0f

    db $fc                                        ; $51db: $fc
    ld a, [bc]                                    ; $51dc: $0a
    rst $00                                       ; $51dd: $c7
    rst $38                                       ; $51de: $ff
    db $e3                                        ; $51df: $e3
    rst $18                                       ; $51e0: $df
    inc b                                         ; $51e1: $04
    ld c, b                                       ; $51e2: $48
    and d                                         ; $51e3: $a2

jr_0a6_51e4:
    inc c                                         ; $51e4: $0c

jr_0a6_51e5:
    ld bc, $0102                                  ; $51e5: $01 $02 $01
    ld a, [bc]                                    ; $51e8: $0a
    inc b                                         ; $51e9: $04
    nop                                           ; $51ea: $00
    ld [bc], a                                    ; $51eb: $02
    ld [$0182], sp                                ; $51ec: $08 $82 $01
    ld b, b                                       ; $51ef: $40

Call_0a6_51f0:
    ld [de], a                                    ; $51f0: $12
    ld c, $00                                     ; $51f1: $0e $00
    ld d, $01                                     ; $51f3: $16 $01
    and d                                         ; $51f5: $a2
    ld bc, HeaderSGBFlag                          ; $51f6: $01 $46 $01
    ld b, h                                       ; $51f9: $44
    xor d                                         ; $51fa: $aa
    xor h                                         ; $51fb: $ac
    nop                                           ; $51fc: $00
    cp [hl]                                       ; $51fd: $be
    ld bc, $1476                                  ; $51fe: $01 $76 $14
    inc b                                         ; $5201: $04
    xor $11                                       ; $5202: $ee $11
    nop                                           ; $5204: $00
    ld a, d                                       ; $5205: $7a
    add l                                         ; $5206: $85
    or [hl]                                       ; $5207: $b6
    ld c, c                                       ; $5208: $49
    ld c, [hl]                                    ; $5209: $4e
    or c                                          ; $520a: $b1
    inc e                                         ; $520b: $1c
    db $e3                                        ; $520c: $e3
    nop                                           ; $520d: $00
    adc e                                         ; $520e: $8b
    ld [hl], l                                    ; $520f: $75
    inc d                                         ; $5210: $14
    db $eb                                        ; $5211: $eb
    inc hl                                        ; $5212: $23
    db $dd                                        ; $5213: $dd
    ld [$44f7], sp                                ; $5214: $08 $f7 $44

jr_0a6_5217:
    add c                                         ; $5217: $81
    ldh [rP1], a                                  ; $5218: $e0 $00
    ld de, $23ff                                  ; $521a: $11 $ff $23
    xor $07                                       ; $521d: $ee $07
    rst $38                                       ; $521f: $ff
    rst $38                                       ; $5220: $ff
    nop                                           ; $5221: $00
    rlca                                          ; $5222: $07
    db $fc                                        ; $5223: $fc
    ld hl, sp-$01                                 ; $5224: $f8 $ff
    ret nc                                        ; $5226: $d0

    jr nc, jr_0a6_5217                            ; $5227: $30 $ee

    jr nc, jr_0a6_522b                            ; $5229: $30 $00

jr_0a6_522b:
    ld hl, $1ffe                                  ; $522b: $21 $fe $1f
    rra                                           ; $522e: $1f
    rra                                           ; $522f: $1f
    ld [$18ef], sp                                ; $5230: $08 $ef $18
    nop                                           ; $5233: $00
    rst $28                                       ; $5234: $ef
    db $10                                        ; $5235: $10
    ld a, a                                       ; $5236: $7f
    add b                                         ; $5237: $80
    ccf                                           ; $5238: $3f
    ld b, b                                       ; $5239: $40
    ccf                                           ; $523a: $3f

jr_0a6_523b:
    ld b, b                                       ; $523b: $40
    ld h, b                                       ; $523c: $60
    cp a                                          ; $523d: $bf
    adc $16                                       ; $523e: $ce $16
    ld l, $02                                     ; $5240: $2e $02
    ldh a, [rIE]                                  ; $5242: $f0 $ff
    ldh [$3f], a                                  ; $5244: $e0 $3f
    ret nz                                        ; $5246: $c0

    ret nz                                        ; $5247: $c0

    sub b                                         ; $5248: $90
    ld l, h                                       ; $5249: $6c
    cp h                                          ; $524a: $bc
    rrca                                          ; $524b: $0f
    cp h                                          ; $524c: $bc
    ld b, e                                       ; $524d: $43
    ld a, e                                       ; $524e: $7b
    adc h                                         ; $524f: $8c
    ld hl, sp+$1f                                 ; $5250: $f8 $1f
    nop                                           ; $5252: $00
    add hl, bc                                    ; $5253: $09
    ld b, $02                                     ; $5254: $06 $02
    ld bc, $01a8                                  ; $5256: $01 $a8 $01
    db $fc                                        ; $5259: $fc
    inc bc                                        ; $525a: $03
    db $ed                                        ; $525b: $ed
    adc $06                                       ; $525c: $ce $06
    add c                                         ; $525e: $81
    inc b                                         ; $525f: $04
    ld [$e807], sp                                ; $5260: $08 $07 $e8
    ld d, a                                       ; $5263: $57
    nop                                           ; $5264: $00
    inc b                                         ; $5265: $04
    ld b, b                                       ; $5266: $40
    add c                                         ; $5267: $81
    ld l, h                                       ; $5268: $6c
    ld sp, $c03a                                  ; $5269: $31 $3a $c0
    cp a                                          ; $526c: $bf
    nop                                           ; $526d: $00
    inc de                                        ; $526e: $13
    ld [$6003], sp                                ; $526f: $08 $03 $60
    add hl, hl                                    ; $5272: $29
    inc bc                                        ; $5273: $03
    add b                                         ; $5274: $80
    ld bc, $0077                                  ; $5275: $01 $77 $00
    adc b                                         ; $5278: $88
    rst $28                                       ; $5279: $ef
    db $10                                        ; $527a: $10
    rst $18                                       ; $527b: $df
    jr nz, jr_0a6_523b                            ; $527c: $20 $bd

    ld b, d                                       ; $527e: $42
    ld a, a                                       ; $527f: $7f
    nop                                           ; $5280: $00
    add b                                         ; $5281: $80
    ld l, a                                       ; $5282: $6f
    sub b                                         ; $5283: $90
    dec de                                        ; $5284: $1b
    ld h, h                                       ; $5285: $64
    rrca                                          ; $5286: $0f
    db $10                                        ; $5287: $10
    dec [hl]                                      ; $5288: $35
    ld h, b                                       ; $5289: $60
    ld a, [hl-]                                   ; $528a: $3a
    ld d, b                                       ; $528b: $50
    ld e, d                                       ; $528c: $5a
    sub b                                         ; $528d: $90
    dec c                                         ; $528e: $0d
    call c, $bd23                                 ; $528f: $dc $23 $bd
    ld b, [hl]                                    ; $5292: $46
    or $04                                        ; $5293: $f6 $04
    rrca                                          ; $5295: $0f
    or e                                          ; $5296: $b3
    ld c, a                                       ; $5297: $4f
    ld a, h                                       ; $5298: $7c
    add e                                         ; $5299: $83
    sbc [hl]                                      ; $529a: $9e
    dec c                                         ; $529b: $0d
    inc bc                                        ; $529c: $03
    db $fc                                        ; $529d: $fc
    ld bc, $02c1                                  ; $529e: $01 $c1 $02
    ld bc, $7e01                                  ; $52a1: $01 $01 $7e
    add e                                         ; $52a4: $83
    ld d, l                                       ; $52a5: $55
    sbc $04                                       ; $52a6: $de $04
    nop                                           ; $52a8: $00
    rlca                                          ; $52a9: $07
    ld hl, sp+$00                                 ; $52aa: $f8 $00
    ret nz                                        ; $52ac: $c0

    add b                                         ; $52ad: $80
    ld [hl], b                                    ; $52ae: $70
    ld [hl], b                                    ; $52af: $70
    adc b                                         ; $52b0: $88
    inc bc                                        ; $52b1: $03
    ld hl, sp+$04                                 ; $52b2: $f8 $04
    ldh [rNR32], a                                ; $52b4: $e0 $1c
    sbc h                                         ; $52b6: $9c
    ld h, h                                       ; $52b7: $64
    db $e4                                        ; $52b8: $e4
    add hl, bc                                    ; $52b9: $09
    ld b, b                                       ; $52ba: $40
    add hl, de                                    ; $52bb: $19
    ret z                                         ; $52bc: $c8

    ld b, [hl]                                    ; $52bd: $46
    ld bc, $2190                                  ; $52be: $01 $90 $21
    ldh [$e0], a                                  ; $52c1: $e0 $e0
    push hl                                       ; $52c3: $e5
    ld [$679f], sp                                ; $52c4: $08 $9f $67
    rst $38                                       ; $52c7: $ff
    nop                                           ; $52c8: $00
    rlca                                          ; $52c9: $07
    sub a                                         ; $52ca: $97
    ld l, a                                       ; $52cb: $6f
    or $0e                                        ; $52cc: $f6 $0e
    ld a, $ce                                     ; $52ce: $3e $ce
    nop                                           ; $52d0: $00
    ld bc, $7f00                                  ; $52d1: $01 $00 $7f
    rst $38                                       ; $52d4: $ff
    ld a, a                                       ; $52d5: $7f
    ldh [$71], a                                  ; $52d6: $e0 $71
    xor $04                                       ; $52d8: $ee $04
    jr z, @-$7d                                   ; $52da: $28 $81

    jp nz, Jump_0a6_7f0e                          ; $52dc: $c2 $0e $7f

    add e                                         ; $52df: $83
    ld b, a                                       ; $52e0: $47
    cp e                                          ; $52e1: $bb
    rst $38                                       ; $52e2: $ff
    inc bc                                        ; $52e3: $03
    inc b                                         ; $52e4: $04
    jr jr_0a6_52e7                                ; $52e5: $18 $00

jr_0a6_52e7:
    cp $0e                                        ; $52e7: $fe $0e
    cp $0e                                        ; $52e9: $fe $0e
    ld e, $ee                                     ; $52eb: $1e $ee
    ld [c], a                                     ; $52ed: $e2
    cp $33                                        ; $52ee: $fe $33
    ld e, $9e                                     ; $52f0: $1e $9e
    ld h, b                                       ; $52f2: $60
    ld [hl+], a                                   ; $52f3: $22
    inc l                                         ; $52f4: $2c
    nop                                           ; $52f5: $00
    rst $38                                       ; $52f6: $ff
    ldh [$0e], a                                  ; $52f7: $e0 $0e
    rrca                                          ; $52f9: $0f
    nop                                           ; $52fa: $00
    ld h, $99                                     ; $52fb: $26 $99
    jr z, jr_0a6_52ff                             ; $52fd: $28 $00

jr_0a6_52ff:
    ld a, a                                       ; $52ff: $7f
    add e                                         ; $5300: $83
    rlca                                          ; $5301: $07
    ld c, $00                                     ; $5302: $0e $00
    ld e, $07                                     ; $5304: $1e $07
    rlca                                          ; $5306: $07
    ld d, b                                       ; $5307: $50
    ld [$7900], sp                                ; $5308: $08 $00 $79
    and $7f                                       ; $530b: $e6 $7f
    ldh [rBCPD], a                                ; $530d: $e0 $69
    or $2f                                        ; $530f: $f6 $2f
    ld [hl], b                                    ; $5311: $70
    nop                                           ; $5312: $00
    inc a                                         ; $5313: $3c
    ld [hl], e                                    ; $5314: $73
    ccf                                           ; $5315: $3f
    ld [hl], b                                    ; $5316: $70
    ccf                                           ; $5317: $3f
    ld [hl], b                                    ; $5318: $70
    ld a, b                                       ; $5319: $78
    ld [hl], a                                    ; $531a: $77
    ld [$7f47], sp                                ; $531b: $08 $47 $7f
    ld a, b                                       ; $531e: $78
    ld a, c                                       ; $531f: $79
    jr nc, jr_0a6_5340                            ; $5320: $30 $1e

    inc bc                                        ; $5322: $03
    inc bc                                        ; $5323: $03
    ccf                                           ; $5324: $3f
    nop                                           ; $5325: $00
    ccf                                           ; $5326: $3f
    cp $f9                                        ; $5327: $fe $f9
    ld a, a                                       ; $5329: $7f
    ret nz                                        ; $532a: $c0

    ld d, d                                       ; $532b: $52
    db $ed                                        ; $532c: $ed
    ld a, a                                       ; $532d: $7f
    nop                                           ; $532e: $00
    ldh [$31], a                                  ; $532f: $e0 $31
    ld l, [hl]                                    ; $5331: $6e
    cpl                                           ; $5332: $2f
    ld [hl], b                                    ; $5333: $70
    dec bc                                        ; $5334: $0b
    inc e                                         ; $5335: $1c
    inc c                                         ; $5336: $0c
    inc b                                         ; $5337: $04
    rra                                           ; $5338: $1f
    dec bc                                        ; $5339: $0b
    rrca                                          ; $533a: $0f
    inc c                                         ; $533b: $0c
    dec c                                         ; $533c: $0d
    ld c, [hl]                                    ; $533d: $4e
    ld e, $00                                     ; $533e: $1e $00

jr_0a6_5340:
    ld bc, $3900                                  ; $5340: $01 $00 $39
    halt                                          ; $5343: $76
    ld e, $31                                     ; $5344: $1e $31
    ld bc, $3e3f                                  ; $5346: $01 $3f $3e
    ccf                                           ; $5349: $3f
    add b                                         ; $534a: $80

jr_0a6_534b:
    db $10                                        ; $534b: $10
    jr z, @-$43                                   ; $534c: $28 $bb

    ld b, h                                       ; $534e: $44
    xor $11                                       ; $534f: $ee $11
    rst $38                                       ; $5351: $ff
    nop                                           ; $5352: $00
    db $db                                        ; $5353: $db
    ld h, b                                       ; $5354: $60
    inc h                                         ; $5355: $24
    jp nc, $001d                                  ; $5356: $d2 $1d $00

    ld a, [hl-]                                   ; $5359: $3a
    rst $18                                       ; $535a: $df
    jr nz, jr_0a6_534b                            ; $535b: $20 $ee

    ld de, $64dd                                  ; $535d: $11 $dd $64
    ld [hl+], a                                   ; $5360: $22
    inc e                                         ; $5361: $1c
    ld c, d                                       ; $5362: $4a
    and b                                         ; $5363: $a0
    ld c, $5f                                     ; $5364: $0e $5f
    and b                                         ; $5366: $a0
    sub b                                         ; $5367: $90
    ld e, d                                       ; $5368: $5a
    rlca                                          ; $5369: $07
    ld hl, sp+$00                                 ; $536a: $f8 $00
    db $ec                                        ; $536c: $ec
    rla                                           ; $536d: $17
    ld hl, sp+$0f                                 ; $536e: $f8 $0f
    db $f4                                        ; $5370: $f4
    rra                                           ; $5371: $1f
    xor $1f                                       ; $5372: $ee $1f
    nop                                           ; $5374: $00
    ei                                            ; $5375: $fb
    rlca                                          ; $5376: $07
    rst $28                                       ; $5377: $ef
    db $10                                        ; $5378: $10
    push af                                       ; $5379: $f5
    ld a, [bc]                                    ; $537a: $0a
    ccf                                           ; $537b: $3f
    ret nz                                        ; $537c: $c0

    nop                                           ; $537d: $00
    ld [hl], h                                    ; $537e: $74
    adc e                                         ; $537f: $8b
    jp hl                                         ; $5380: $e9


    ld d, $da                                     ; $5381: $16 $da
    dec l                                         ; $5383: $2d
    cp b                                          ; $5384: $b8
    ld e, a                                       ; $5385: $5f
    ld e, b                                       ; $5386: $58
    push af                                       ; $5387: $f5
    inc d                                         ; $5388: $14
    nop                                           ; $5389: $00
    ld sp, hl                                     ; $538a: $f9
    sbc [hl]                                      ; $538b: $9e
    ld [de], a                                    ; $538c: $12
    ld [c], a                                     ; $538d: $e2
    ld c, $f5                                     ; $538e: $0e $f5
    ld a, [bc]                                    ; $5390: $0a
    rra                                           ; $5391: $1f
    inc h                                         ; $5392: $24
    ldh [$2e], a                                  ; $5393: $e0 $2e
    ld d, b                                       ; $5395: $50

jr_0a6_5396:
    nop                                           ; $5396: $00
    ld [c], a                                     ; $5397: $e2
    db $fd                                        ; $5398: $fd
    or b                                          ; $5399: $b0
    ld c, d                                       ; $539a: $4a
    db $fd                                        ; $539b: $fd
    inc bc                                        ; $539c: $03
    jr nz, jr_0a6_5396                            ; $539d: $20 $f7

    ld [$0be0], sp                                ; $539f: $08 $e0 $0b
    ld c, $11                                     ; $53a2: $0e $11
    add hl, de                                    ; $53a4: $19
    ld h, $07                                     ; $53a5: $26 $07
    nop                                           ; $53a7: $00
    jr c, jr_0a6_53e9                             ; $53a8: $38 $3f

    jr nz, jr_0a6_53ca                            ; $53aa: $20 $1e

jr_0a6_53ac:
    ld hl, $3629                                  ; $53ac: $21 $29 $36
    push hl                                       ; $53af: $e5
    nop                                           ; $53b0: $00
    jr c, @+$54                                   ; $53b1: $38 $52

    cp l                                          ; $53b3: $bd
    xor l                                         ; $53b4: $ad
    ld e, a                                       ; $53b5: $5f
    ld d, e                                       ; $53b6: $53
    xor a                                         ; $53b7: $af
    xor h                                         ; $53b8: $ac
    ld b, b                                       ; $53b9: $40
    ld d, e                                       ; $53ba: $53
    ld a, [de]                                    ; $53bb: $1a
    rra                                           ; $53bc: $1f
    ccf                                           ; $53bd: $3f
    db $10                                        ; $53be: $10
    rst $18                                       ; $53bf: $df
    jr nc, @+$2e                                  ; $53c0: $30 $2c

    di                                            ; $53c2: $f3
    inc c                                         ; $53c3: $0c
    db $dd                                        ; $53c4: $dd
    and $7d                                       ; $53c5: $e6 $7d
    add a                                         ; $53c7: $87
    jr nc, jr_0a6_53d2                            ; $53c8: $30 $08

jr_0a6_53ca:
    xor h                                         ; $53ca: $ac
    dec l                                         ; $53cb: $2d
    xor a                                         ; $53cc: $af
    ld d, b                                       ; $53cd: $50
    ret z                                         ; $53ce: $c8

    db $10                                        ; $53cf: $10
    ld a, [hl+]                                   ; $53d0: $2a
    and b                                         ; $53d1: $a0

jr_0a6_53d2:
    dec c                                         ; $53d2: $0d
    db $fd                                        ; $53d3: $fd
    ld [bc], a                                    ; $53d4: $02
    and b                                         ; $53d5: $a0
    dec c                                         ; $53d6: $0d
    rrca                                          ; $53d7: $0f
    pop af                                        ; $53d8: $f1
    sub [hl]                                      ; $53d9: $96
    jr jr_0a6_53e5                                ; $53da: $18 $09

    ld a, e                                       ; $53dc: $7b
    add h                                         ; $53dd: $84
    jr jr_0a6_53ff                                ; $53de: $18 $1f

    ldh a, [$3a]                                  ; $53e0: $f0 $3a
    add sp, $10                                   ; $53e2: $e8 $10
    db $ec                                        ; $53e4: $ec

jr_0a6_53e5:
    add h                                         ; $53e5: $84

jr_0a6_53e6:
    sbc [hl]                                      ; $53e6: $9e
    dec b                                         ; $53e7: $05
    ret c                                         ; $53e8: $d8

jr_0a6_53e9:
    ccf                                           ; $53e9: $3f
    rst $20                                       ; $53ea: $e7
    rra                                           ; $53eb: $1f
    ld l, b                                       ; $53ec: $68
    ld c, $eb                                     ; $53ed: $0e $eb
    inc d                                         ; $53ef: $14
    add d                                         ; $53f0: $82
    nop                                           ; $53f1: $00
    ld b, $11                                     ; $53f2: $06 $11
    xor a                                         ; $53f4: $af
    ld [hl], c                                    ; $53f5: $71
    ld d, [hl]                                    ; $53f6: $56

jr_0a6_53f7:
    jp hl                                         ; $53f7: $e9


    nop                                           ; $53f8: $00
    ld l, $fb                                     ; $53f9: $2e $fb
    rlca                                          ; $53fb: $07
    inc b                                         ; $53fc: $04
    xor $11                                       ; $53fd: $ee $11

jr_0a6_53ff:
    rst $30                                       ; $53ff: $f7
    ld [$0f86], sp                                ; $5400: $08 $86 $0f
    jp z, Jump_0a6_701e                           ; $5403: $ca $1e $70

jr_0a6_5406:
    ld e, e                                       ; $5406: $5b
    ld b, b                                       ; $5407: $40
    db $fc                                        ; $5408: $fc
    ld [hl], d                                    ; $5409: $72
    nop                                           ; $540a: $00
    ld hl, sp+$07                                 ; $540b: $f8 $07
    db $e4                                        ; $540d: $e4
    jr jr_0a6_53f7                                ; $540e: $18 $e7

    jr @+$0a                                      ; $5410: $18 $08

    push af                                       ; $5412: $f5
    rrca                                          ; $5413: $0f
    rst $38                                       ; $5414: $ff
    rrca                                          ; $5415: $0f
    ret nc                                        ; $5416: $d0

    db $10                                        ; $5417: $10
    ld bc, $a35e                                  ; $5418: $01 $5e $a3
    ld c, $b6                                     ; $541b: $0e $b6
    ld c, e                                       ; $541d: $4b
    db $dd                                        ; $541e: $dd
    inc hl                                        ; $541f: $23
    ret nc                                        ; $5420: $d0

    inc c                                         ; $5421: $0c
    xor b                                         ; $5422: $a8
    ld a, [bc]                                    ; $5423: $0a
    ret nz                                        ; $5424: $c0

    rla                                           ; $5425: $17
    add b                                         ; $5426: $80
    jr nz, jr_0a6_53ac                            ; $5427: $20 $83

    db $fc                                        ; $5429: $fc
    ld b, b                                       ; $542a: $40
    dec a                                         ; $542b: $3d
    rst $18                                       ; $542c: $df
    jr nz, jr_0a6_53e6                            ; $542d: $20 $b7

    ld c, b                                       ; $542f: $48
    db $dd                                        ; $5430: $dd
    ld [de], a                                    ; $5431: $12
    ld [hl+], a                                   ; $5432: $22
    cp a                                          ; $5433: $bf
    ld b, b                                       ; $5434: $40
    jp c, $e82f                                   ; $5435: $da $2f $e8

    rra                                           ; $5438: $1f

jr_0a6_5439:
    ldh a, [$0a]                                  ; $5439: $f0 $0a
    pop hl                                        ; $543b: $e1
    inc b                                         ; $543c: $04
    ld a, $df                                     ; $543d: $3e $df
    ccf                                           ; $543f: $3f
    pop hl                                        ; $5440: $e1
    ld e, $5a                                     ; $5441: $1e $5a
    dec b                                         ; $5443: $05
    rla                                           ; $5444: $17
    ld a, b                                       ; $5445: $78
    nop                                           ; $5446: $00
    adc a                                         ; $5447: $8f
    inc [hl]                                      ; $5448: $34
    ld e, a                                       ; $5449: $5f
    ld l, $5f                                     ; $544a: $2e $5f
    cp e                                          ; $544c: $bb
    rst $00                                       ; $544d: $c7
    ld l, a                                       ; $544e: $6f
    ld e, $90                                     ; $544f: $1e $90
    push af                                       ; $5451: $f5
    ld a, [bc]                                    ; $5452: $0a
    ld d, [hl]                                    ; $5453: $56
    add hl, bc                                    ; $5454: $09
    xor c                                         ; $5455: $a9
    dec b                                         ; $5456: $05
    jr nz, jr_0a6_549f                            ; $5457: $20 $46

    jr nz, jr_0a6_549a                            ; $5459: $20 $3f

    db $fd                                        ; $545b: $fd
    inc c                                         ; $545c: $0c
    ld [bc], a                                    ; $545d: $02
    rst $38                                       ; $545e: $ff
    nop                                           ; $545f: $00
    pop hl                                        ; $5460: $e1
    jr nc, jr_0a6_546a                            ; $5461: $30 $07

    ld c, d                                       ; $5463: $4a
    ld [$807f], sp                                ; $5464: $08 $7f $80
    nop                                           ; $5467: $00
    cp $01                                        ; $5468: $fe $01

jr_0a6_546a:
    rst $10                                       ; $546a: $d7
    jr z, jr_0a6_54dc                             ; $546b: $28 $6f

    sub b                                         ; $546d: $90
    or a                                          ; $546e: $b7
    ld c, b                                       ; $546f: $48
    ldh a, [$f6]                                  ; $5470: $f0 $f6
    rra                                           ; $5472: $1f
    add [hl]                                      ; $5473: $86
    rrca                                          ; $5474: $0f
    or [hl]                                       ; $5475: $b6
    jr jr_0a6_5406                                ; $5476: $18 $8e

    ccf                                           ; $5478: $3f
    db $fc                                        ; $5479: $fc
    inc bc                                        ; $547a: $03
    xor d                                         ; $547b: $aa
    ld d, a                                       ; $547c: $57
    jr nc, jr_0a6_54d4                            ; $547d: $30 $55

    xor e                                         ; $547f: $ab
    ret nc                                        ; $5480: $d0

    dec de                                        ; $5481: $1b
    jp nc, $fc08                                  ; $5482: $d2 $08 $fc

    inc bc                                        ; $5485: $03
    ld [hl], b                                    ; $5486: $70
    sbc h                                         ; $5487: $9c
    ld [$30ea], sp                                ; $5488: $08 $ea $30
    sbc b                                         ; $548b: $98
    rst $20                                       ; $548c: $e7
    ret nz                                        ; $548d: $c0

    dec c                                         ; $548e: $0d
    add sp, -$01                                  ; $548f: $e8 $ff
    rra                                           ; $5491: $1f
    ld c, e                                       ; $5492: $4b
    rst $38                                       ; $5493: $ff
    ret nz                                        ; $5494: $c0

    dec c                                         ; $5495: $0d
    xor [hl]                                      ; $5496: $ae
    ld d, c                                       ; $5497: $51
    ld b, b                                       ; $5498: $40
    dec bc                                        ; $5499: $0b

jr_0a6_549a:
    xor c                                         ; $549a: $a9
    ld c, d                                       ; $549b: $4a
    inc c                                         ; $549c: $0c
    cp $03                                        ; $549d: $fe $03

jr_0a6_549f:
    ldh a, [rLCDC]                                ; $549f: $f0 $40
    inc de                                        ; $54a1: $13
    db $fc                                        ; $54a2: $fc
    rla                                           ; $54a3: $17
    ld a, h                                       ; $54a4: $7c
    dec de                                        ; $54a5: $1b
    add b                                         ; $54a6: $80
    inc de                                        ; $54a7: $13
    and b                                         ; $54a8: $a0
    ld [$7715], a                                 ; $54a9: $ea $15 $77
    ld c, c                                       ; $54ac: $49
    adc b                                         ; $54ad: $88
    ret nz                                        ; $54ae: $c0

    dec a                                         ; $54af: $3d
    rla                                           ; $54b0: $17
    jr z, jr_0a6_54e3                             ; $54b1: $28 $30

    cpl                                           ; $54b3: $2f
    rst $18                                       ; $54b4: $df
    jr nz, jr_0a6_5439                            ; $54b5: $20 $82

    inc e                                         ; $54b7: $1c
    nop                                           ; $54b8: $00
    ld [hl], d                                    ; $54b9: $72
    add c                                         ; $54ba: $81
    rst $08                                       ; $54bb: $cf

jr_0a6_54bc:
    ldh a, [$b1]                                  ; $54bc: $f0 $b1
    ld a, a                                       ; $54be: $7f
    adc $3f                                       ; $54bf: $ce $3f
    jr nz, jr_0a6_54bc                            ; $54c1: $20 $f9

    ld b, $fa                                     ; $54c3: $06 $fa
    rrca                                          ; $54c5: $0f
    ret nc                                        ; $54c6: $d0

    jr jr_0a6_5512                                ; $54c7: $18 $49

    rrca                                          ; $54c9: $0f
    ld b, d                                       ; $54ca: $42
    rst $38                                       ; $54cb: $ff
    ld bc, $8360                                  ; $54cc: $01 $60 $83
    rst $38                                       ; $54cf: $ff
    pop bc                                        ; $54d0: $c1
    cp a                                          ; $54d1: $bf
    inc b                                         ; $54d2: $04
    ld c, b                                       ; $54d3: $48

jr_0a6_54d4:
    rst $38                                       ; $54d4: $ff

jr_0a6_54d5:
    nop                                           ; $54d5: $00
    rst $38                                       ; $54d6: $ff
    xor a                                         ; $54d7: $af
    rst $38                                       ; $54d8: $ff
    dec d                                         ; $54d9: $15
    rst $38                                       ; $54da: $ff
    add b                                         ; $54db: $80

jr_0a6_54dc:
    rst $38                                       ; $54dc: $ff
    stop                                          ; $54dd: $10 $00
    rst $38                                       ; $54df: $ff
    ld bc, $44ff                                  ; $54e0: $01 $ff $44

jr_0a6_54e3:
    cp e                                          ; $54e3: $bb
    ld [$fff7], sp                                ; $54e4: $08 $f7 $ff
    nop                                           ; $54e7: $00
    rst $38                                       ; $54e8: $ff
    cp d                                          ; $54e9: $ba
    rst $38                                       ; $54ea: $ff
    inc d                                         ; $54eb: $14
    rst $38                                       ; $54ec: $ff
    ld c, b                                       ; $54ed: $48
    rst $38                                       ; $54ee: $ff
    nop                                           ; $54ef: $00
    nop                                           ; $54f0: $00
    rst $38                                       ; $54f1: $ff
    ld [de], a                                    ; $54f2: $12
    db $fd                                        ; $54f3: $fd
    jr nz, jr_0a6_54d5                            ; $54f4: $20 $df

    nop                                           ; $54f6: $00
    rst $38                                       ; $54f7: $ff
    ld d, c                                       ; $54f8: $51
    nop                                           ; $54f9: $00
    xor [hl]                                      ; $54fa: $ae
    ld [hl+], a                                   ; $54fb: $22
    db $dd                                        ; $54fc: $dd
    ld d, l                                       ; $54fd: $55
    xor d                                         ; $54fe: $aa
    db $e3                                        ; $54ff: $e3

Jump_0a6_5500:
    inc e                                         ; $5500: $1c
    or l                                          ; $5501: $b5
    nop                                           ; $5502: $00
    ld c, d                                       ; $5503: $4a
    ld l, e                                       ; $5504: $6b
    sub h                                         ; $5505: $94
    cp $01                                        ; $5506: $fe $01
    rst $18                                       ; $5508: $df
    jr nz, jr_0a6_552f                            ; $5509: $20 $24

    nop                                           ; $550b: $00
    db $db                                        ; $550c: $db
    ld c, d                                       ; $550d: $4a
    or l                                          ; $550e: $b5
    or l                                          ; $550f: $b5
    ld c, d                                       ; $5510: $4a
    ld e, d                                       ; $5511: $5a

jr_0a6_5512:
    and l                                         ; $5512: $a5
    rst $30                                       ; $5513: $f7
    nop                                           ; $5514: $00
    ld [$21de], sp                                ; $5515: $08 $de $21
    db $fd                                        ; $5518: $fd
    ld [bc], a                                    ; $5519: $02
    ld a, a                                       ; $551a: $7f
    add b                                         ; $551b: $80
    cp e                                          ; $551c: $bb
    ld h, a                                       ; $551d: $67
    ld b, h                                       ; $551e: $44
    dec hl                                        ; $551f: $2b
    nop                                           ; $5520: $00
    ld [bc], a                                    ; $5521: $02
    ld b, b                                       ; $5522: $40
    cp $01                                        ; $5523: $fe $01
    inc b                                         ; $5525: $04
    ld c, b                                       ; $5526: $48
    ld c, $08                                     ; $5527: $0e $08
    jr nz, @+$6a                                  ; $5529: $20 $68

    sub b                                         ; $552b: $90
    ld d, $08                                     ; $552c: $16 $08
    db $fc                                        ; $552e: $fc

jr_0a6_552f:
    inc bc                                        ; $552f: $03
    inc b                                         ; $5530: $04
    jr z, @+$01                                   ; $5531: $28 $ff

    rst $38                                       ; $5533: $ff
    xor l                                         ; $5534: $ad
    rst $38                                       ; $5535: $ff
    nop                                           ; $5536: $00
    ld d, d                                       ; $5537: $52
    rst $38                                       ; $5538: $ff
    adc b                                         ; $5539: $88
    rst $38                                       ; $553a: $ff
    ld b, b                                       ; $553b: $40
    rst $38                                       ; $553c: $ff
    ld [$01f7], sp                                ; $553d: $08 $f7 $01
    dec d                                         ; $5540: $15
    ld [$758a], a                                 ; $5541: $ea $8a $75
    rst $38                                       ; $5544: $ff
    rst $38                                       ; $5545: $ff
    ld l, $90                                     ; $5546: $2e $90
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    ld [$42ff], sp                                ; $554a: $08 $ff $42
    cp a                                          ; $554d: $bf
    ld bc, $20fe                                  ; $554e: $01 $fe $20
    rst $18                                       ; $5551: $df
    nop                                           ; $5552: $00
    ld c, d                                       ; $5553: $4a
    or l                                          ; $5554: $b5
    ld a, [bc]                                    ; $5555: $0a
    push af                                       ; $5556: $f5
    add h                                         ; $5557: $84
    ei                                            ; $5558: $fb
    ld [de], a                                    ; $5559: $12
    pop hl                                        ; $555a: $e1
    nop                                           ; $555b: $00
    cp $ff                                        ; $555c: $fe $ff
    dec d                                         ; $555e: $15
    ld [c], a                                     ; $555f: $e2
    xor d                                         ; $5560: $aa
    push de                                       ; $5561: $d5
    inc de                                        ; $5562: $13
    ldh [rP1], a                                  ; $5563: $e0 $00
    di                                            ; $5565: $f3
    rst $38                                       ; $5566: $ff
    or l                                          ; $5567: $b5
    ld [bc], a                                    ; $5568: $02
    ld a, [bc]                                    ; $5569: $0a
    pop af                                        ; $556a: $f1
    and l                                         ; $556b: $a5
    ld e, d                                       ; $556c: $5a
    nop                                           ; $556d: $00
    ld c, h                                       ; $556e: $4c
    rst $38                                       ; $556f: $ff
    dec h                                         ; $5570: $25
    jp nz, $f10a                                  ; $5571: $c2 $0a $f1

    ld d, h                                       ; $5574: $54
    xor e                                         ; $5575: $ab
    nop                                           ; $5576: $00
    adc a                                         ; $5577: $8f
    rst $38                                       ; $5578: $ff
    ld l, e                                       ; $5579: $6b

jr_0a6_557a:
    add h                                         ; $557a: $84
    db $10                                        ; $557b: $10
    rst $28                                       ; $557c: $ef
    add hl, hl                                    ; $557d: $29
    sub $00                                       ; $557e: $d6 $00
    and l                                         ; $5580: $a5
    rst $38                                       ; $5581: $ff
    ld c, c                                       ; $5582: $49
    or [hl]                                       ; $5583: $b6
    inc d                                         ; $5584: $14
    db $e3                                        ; $5585: $e3
    xor d                                         ; $5586: $aa
    ld bc, $9200                                  ; $5587: $01 $00 $92
    rst $38                                       ; $558a: $ff
    cp c                                          ; $558b: $b9
    ld b, [hl]                                    ; $558c: $46
    inc d                                         ; $558d: $14
    db $e3                                        ; $558e: $e3
    xor e                                         ; $558f: $ab
    ld b, h                                       ; $5590: $44
    nop                                           ; $5591: $00
    ld [$54ff], a                                 ; $5592: $ea $ff $54

jr_0a6_5595:
    ld [$1ea1], sp                                ; $5595: $08 $a1 $1e
    ld [hl], h                                    ; $5598: $74
    adc e                                         ; $5599: $8b
    nop                                           ; $559a: $00
    ld c, h                                       ; $559b: $4c
    rst $38                                       ; $559c: $ff
    dec d                                         ; $559d: $15
    ld [$f788], a                                 ; $559e: $ea $88 $f7
    ld [hl-], a                                   ; $55a1: $32
    pop bc                                        ; $55a2: $c1
    nop                                           ; $55a3: $00
    and [hl]                                      ; $55a4: $a6
    rst $38                                       ; $55a5: $ff
    ld a, [hl+]                                   ; $55a6: $2a
    call nc, $fb84                                ; $55a7: $d4 $84 $fb
    ld d, $e1                                     ; $55aa: $16 $e1
    nop                                           ; $55ac: $00
    di                                            ; $55ad: $f3
    rst $38                                       ; $55ae: $ff
    sub l                                         ; $55af: $95
    ld h, d                                       ; $55b0: $62
    jr z, jr_0a6_557a                             ; $55b1: $28 $c7

    push de                                       ; $55b3: $d5
    ld [hl+], a                                   ; $55b4: $22
    nop                                           ; $55b5: $00
    ld a, d                                       ; $55b6: $7a
    rst $38                                       ; $55b7: $ff
    ld l, d                                       ; $55b8: $6a
    ld de, $7a85                                  ; $55b9: $11 $85 $7a
    ld a, [hl+]                                   ; $55bc: $2a
    pop de                                        ; $55bd: $d1
    nop                                           ; $55be: $00
    adc a                                         ; $55bf: $8f
    rst $38                                       ; $55c0: $ff
    ld d, [hl]                                    ; $55c1: $56
    ld hl, $f708                                  ; $55c2: $21 $08 $f7
    sub h                                         ; $55c5: $94
    ld l, e                                       ; $55c6: $6b
    nop                                           ; $55c7: $00
    ld c, a                                       ; $55c8: $4f
    rst $38                                       ; $55c9: $ff
    sub d                                         ; $55ca: $92
    ld l, l                                       ; $55cb: $6d
    jr z, jr_0a6_5595                             ; $55cc: $28 $c7

    ld d, a                                       ; $55ce: $57
    xor b                                         ; $55cf: $a8
    nop                                           ; $55d0: $00
    sub d                                         ; $55d1: $92
    rst $38                                       ; $55d2: $ff
    xor c                                         ; $55d3: $a9
    ld b, b                                       ; $55d4: $40
    ld d, b                                       ; $55d5: $50
    adc a                                         ; $55d6: $8f
    and l                                         ; $55d7: $a5
    ld e, d                                       ; $55d8: $5a
    nop                                           ; $55d9: $00
    db $10                                        ; $55da: $10
    rst $38                                       ; $55db: $ff
    xor h                                         ; $55dc: $ac
    ld b, e                                       ; $55dd: $43
    ld d, b                                       ; $55de: $50
    adc a                                         ; $55df: $8f
    ld a, [hl+]                                   ; $55e0: $2a
    push de                                       ; $55e1: $d5
    nop                                           ; $55e2: $00
    ld c, h                                       ; $55e3: $4c
    rst $38                                       ; $55e4: $ff
    ld a, [hl+]                                   ; $55e5: $2a
    ret nz                                        ; $55e6: $c0

    ret nz                                        ; $55e7: $c0

    add b                                         ; $55e8: $80
    ld c, a                                       ; $55e9: $4f
    add b                                         ; $55ea: $80
    inc b                                         ; $55eb: $04
    ret nz                                        ; $55ec: $c0

    adc b                                         ; $55ed: $88
    ld c, e                                       ; $55ee: $4b
    add b                                         ; $55ef: $80
    jp $1004                                      ; $55f0: $c3 $04 $10


    xor d                                         ; $55f3: $aa
    nop                                           ; $55f4: $00
    ld h, b                                       ; $55f5: $60
    nop                                           ; $55f6: $00
    ldh a, [rP1]                                  ; $55f7: $f0 $00
    inc b                                         ; $55f9: $04
    ld [$00ff], sp                                ; $55fa: $08 $ff $00
    rst $28                                       ; $55fd: $ef
    db $10                                        ; $55fe: $10

Call_0a6_55ff:
    xor e                                         ; $55ff: $ab
    ld b, b                                       ; $5600: $40
    ld d, h                                       ; $5601: $54
    db $10                                        ; $5602: $10
    ld [$20c7], sp                                ; $5603: $08 $c7 $20
    jr nc, jr_0a6_566c                            ; $5606: $30 $64

    sub l                                         ; $5608: $95
    ld h, b                                       ; $5609: $60
    ld h, c                                       ; $560a: $61
    or c                                          ; $560b: $b1
    inc b                                         ; $560c: $04
    db $10                                        ; $560d: $10
    jr nz, jr_0a6_5658                            ; $560e: $20 $48

    rst $30                                       ; $5610: $f7
    ld [$2ad5], sp                                ; $5611: $08 $d5 $2a
    ldh [$58], a                                  ; $5614: $e0 $58
    nop                                           ; $5616: $00
    ld a, [bc]                                    ; $5617: $0a
    push af                                       ; $5618: $f5
    xor b                                         ; $5619: $a8
    ld d, a                                       ; $561a: $57
    ld de, $64ef                                  ; $561b: $11 $ef $64
    add e                                         ; $561e: $83
    nop                                           ; $561f: $00
    ld h, l                                       ; $5620: $65
    rst $38                                       ; $5621: $ff
    call nc, Call_000_212b                        ; $5622: $d4 $2b $21

Jump_0a6_5625:
    rst $18                                       ; $5625: $df
    ld c, b                                       ; $5626: $48
    add a                                         ; $5627: $87
    nop                                           ; $5628: $00
    xor a                                         ; $5629: $af
    rst $38                                       ; $562a: $ff
    inc e                                         ; $562b: $1c
    db $e3                                        ; $562c: $e3
    ld d, [hl]                                    ; $562d: $56
    xor c                                         ; $562e: $a9
    xor [hl]                                      ; $562f: $ae
    ld d, c                                       ; $5630: $51
    ld [bc], a                                    ; $5631: $02
    ld a, [hl]                                    ; $5632: $7e
    add c                                         ; $5633: $81
    db $f4                                        ; $5634: $f4
    dec bc                                        ; $5635: $0b
    ld a, [hl]                                    ; $5636: $7e
    add c                                         ; $5637: $81
    ld d, $09                                     ; $5638: $16 $09
    nop                                           ; $563a: $00
    ld b, c                                       ; $563b: $41
    rst $38                                       ; $563c: $ff
    ld d, b                                       ; $563d: $50
    add hl, hl                                    ; $563e: $29
    rst $08                                       ; $563f: $cf
    nop                                           ; $5640: $00
    ret nz                                        ; $5641: $c0

    nop                                           ; $5642: $00
    db $fc                                        ; $5643: $fc
    ld l, l                                       ; $5644: $6d
    nop                                           ; $5645: $00
    ld h, b                                       ; $5646: $60
    pop hl                                        ; $5647: $e1
    ld b, $00                                     ; $5648: $06 $00
    ld h, h                                       ; $564a: $64
    add hl, de                                    ; $564b: $19
    ld a, a                                       ; $564c: $7f
    nop                                           ; $564d: $00
    inc bc                                        ; $564e: $03
    nop                                           ; $564f: $00
    ld d, b                                       ; $5650: $50
    ld b, b                                       ; $5651: $40
    xor a                                         ; $5652: $af
    jr c, @+$0a                                   ; $5653: $38 $08

    rst $08                                       ; $5655: $cf
    rst $38                                       ; $5656: $ff
    xor b                                         ; $5657: $a8

jr_0a6_5658:
    ld d, a                                       ; $5658: $57
    ld d, l                                       ; $5659: $55
    add e                                         ; $565a: $83
    nop                                           ; $565b: $00
    add sp, $17                                   ; $565c: $e8 $17
    xor a                                         ; $565e: $af
    rst $38                                       ; $565f: $ff
    ld l, [hl]                                    ; $5660: $6e
    sub c                                         ; $5661: $91
    cp $01                                        ; $5662: $fe $01
    jr nc, jr_0a6_56e4                            ; $5664: $30 $7e

    add c                                         ; $5666: $81
    inc b                                         ; $5667: $04
    ld [$1802], sp                                ; $5668: $08 $02 $18
    rst $38                                       ; $566b: $ff

jr_0a6_566c:
    nop                                           ; $566c: $00
    sbc $3f                                       ; $566d: $de $3f
    nop                                           ; $566f: $00
    cp l                                          ; $5670: $bd
    ld a, a                                       ; $5671: $7f
    ld a, [hl]                                    ; $5672: $7e
    rst $38                                       ; $5673: $ff
    push af                                       ; $5674: $f5
    cp $fa                                        ; $5675: $fe $fa
    rst $38                                       ; $5677: $ff
    ld d, b                                       ; $5678: $50
    db $fd                                        ; $5679: $fd
    db $fd                                        ; $567a: $fd
    ld bc, $9ef8                                  ; $567b: $01 $f8 $9e
    ld bc, $c0bf                                  ; $567e: $01 $bf $c0
    rst $18                                       ; $5681: $df
    ldh [rP1], a                                  ; $5682: $e0 $00
    ld l, [hl]                                    ; $5684: $6e
    ldh a, [$b0]                                  ; $5685: $f0 $b0
    ld a, b                                       ; $5687: $78
    daa                                           ; $5688: $27
    jp Jump_000_0f17                              ; $5689: $c3 $17 $0f


    nop                                           ; $568c: $00
    xor d                                         ; $568d: $aa
    ld bc, $0103                                  ; $568e: $01 $03 $01
    ld [c], a                                     ; $5691: $e2
    ld de, $311b                                  ; $5692: $11 $1b $31
    db $10                                        ; $5695: $10
    jp z, $db31                                   ; $5696: $ca $31 $db

    inc b                                         ; $5699: $04
    db $10                                        ; $569a: $10
    ld a, [hl]                                    ; $569b: $7e
    add c                                         ; $569c: $81
    ld a, $c1                                     ; $569d: $3e $c1
    add d                                         ; $569f: $82
    inc b                                         ; $56a0: $04
    ld c, b                                       ; $56a1: $48
    db $fc                                        ; $56a2: $fc
    ld hl, sp-$1e                                 ; $56a3: $f8 $e2
    pop hl                                        ; $56a5: $e1
    db $e3                                        ; $56a6: $e3
    dec [hl]                                      ; $56a7: $35
    ld b, d                                       ; $56a8: $42
    ld [c], a                                     ; $56a9: $e2
    jr nz, jr_0a6_572b                            ; $56aa: $20 $7f

    ldh a, [rSCX]                                 ; $56ac: $f0 $43
    ld d, d                                       ; $56ae: $52
    nop                                           ; $56af: $00
    rst $38                                       ; $56b0: $ff
    ei                                            ; $56b1: $fb
    nop                                           ; $56b2: $00
    ld a, e                                       ; $56b3: $7b
    ld [hl+], a                                   ; $56b4: $22
    nop                                           ; $56b5: $00
    sbc a                                         ; $56b6: $9f
    sbc d                                         ; $56b7: $9a
    nop                                           ; $56b8: $00
    ld hl, sp+$00                                 ; $56b9: $f8 $00
    ldh a, [rSC]                                  ; $56bb: $f0 $02
    nop                                           ; $56bd: $00
    nop                                           ; $56be: $00
    ld [$bfff], sp                                ; $56bf: $08 $ff $bf
    nop                                           ; $56c2: $00
    cp a                                          ; $56c3: $bf
    ld [bc], a                                    ; $56c4: $02
    ld [bc], a                                    ; $56c5: $02
    inc a                                         ; $56c6: $3c
    nop                                           ; $56c7: $00
    add hl, de                                    ; $56c8: $19
    jr nz, jr_0a6_56cb                            ; $56c9: $20 $00

jr_0a6_56cb:
    rrca                                          ; $56cb: $0f
    ld [bc], a                                    ; $56cc: $02
    nop                                           ; $56cd: $00
    nop                                           ; $56ce: $00
    rst $38                                       ; $56cf: $ff
    ld de, $aaee                                  ; $56d0: $11 $ee $aa
    nop                                           ; $56d3: $00
    push de                                       ; $56d4: $d5
    rra                                           ; $56d5: $1f
    ldh [$b5], a                                  ; $56d6: $e0 $b5
    jp z, $c03f                                   ; $56d8: $ca $3f $c0

    sbc l                                         ; $56db: $9d
    nop                                           ; $56dc: $00
    ld [c], a                                     ; $56dd: $e2
    dec sp                                        ; $56de: $3b
    call nz, Call_000_3ac5                        ; $56df: $c4 $c5 $3a
    ld l, b                                       ; $56e2: $68
    sub a                                         ; $56e3: $97

jr_0a6_56e4:
    call nc, Call_000_2b00                        ; $56e4: $d4 $00 $2b
    ld l, b                                       ; $56e7: $68
    sub a                                         ; $56e8: $97
    jp c, $bd25                                   ; $56e9: $da $25 $bd

    ld b, d                                       ; $56ec: $42
    ld [$1508], a                                 ; $56ed: $ea $08 $15
    cp l                                          ; $56f0: $bd
    ld b, d                                       ; $56f1: $42
    ld [hl], b                                    ; $56f2: $70
    ld [hl], $00                                  ; $56f3: $36 $00
    ld hl, sp+$00                                 ; $56f5: $f8 $00
    call c, RST_00                                ; $56f7: $dc $00 $00
    ccf                                           ; $56fa: $3f
    nop                                           ; $56fb: $00
    db $fd                                        ; $56fc: $fd
    nop                                           ; $56fd: $00
    dec sp                                        ; $56fe: $3b
    ret nz                                        ; $56ff: $c0

    ei                                            ; $5700: $fb
    ld b, l                                       ; $5701: $45
    ld hl, sp+$34                                 ; $5702: $f8 $34
    ld [$001f], sp                                ; $5704: $08 $1f $00
    add hl, sp                                    ; $5707: $39
    ld [$df00], a                                 ; $5708: $ea $00 $df
    ld [bc], a                                    ; $570b: $02
    nop                                           ; $570c: $00
    nop                                           ; $570d: $00
    rst $28                                       ; $570e: $ef
    nop                                           ; $570f: $00
    xor l                                         ; $5710: $ad
    jp nc, $c03f                                  ; $5711: $d2 $3f $c0

    cp a                                          ; $5714: $bf
    ret nz                                        ; $5715: $c0

    ldh [rDIV], a                                 ; $5716: $e0 $04
    jr c, @+$48                                   ; $5718: $38 $46

    add hl, bc                                    ; $571a: $09
    ld h, d                                       ; $571b: $62
    ld c, d                                       ; $571c: $4a
    or [hl]                                       ; $571d: $b6
    rst $30                                       ; $571e: $f7
    ld d, e                                       ; $571f: $53
    rst $30                                       ; $5720: $f7
    add sp, $00                                   ; $5721: $e8 $00
    rst $20                                       ; $5723: $e7
    db $ed                                        ; $5724: $ed
    rst $08                                       ; $5725: $cf
    sbc [hl]                                      ; $5726: $9e
    rst $08                                       ; $5727: $cf
    ld c, a                                       ; $5728: $4f
    sbc a                                         ; $5729: $9f
    rra                                           ; $572a: $1f

jr_0a6_572b:
    nop                                           ; $572b: $00
    sbc a                                         ; $572c: $9f
    rst $38                                       ; $572d: $ff
    rst $18                                       ; $572e: $df
    db $ec                                        ; $572f: $ec
    inc bc                                        ; $5730: $03
    ld l, e                                       ; $5731: $6b

jr_0a6_5732:
    add a                                         ; $5732: $87
    rst $20                                       ; $5733: $e7
    nop                                           ; $5734: $00
    rst $20                                       ; $5735: $e7
    ld [hl], e                                    ; $5736: $73
    rst $20                                       ; $5737: $e7
    or a                                          ; $5738: $b7
    db $e3                                        ; $5739: $e3
    rst $20                                       ; $573a: $e7
    di                                            ; $573b: $f3
    db $e3                                        ; $573c: $e3
    jr jr_0a6_5732                                ; $573d: $18 $f3

    di                                            ; $573f: $f3
    rst $38                                       ; $5740: $ff
    inc a                                         ; $5741: $3c
    ld c, b                                       ; $5742: $48
    ld c, b                                       ; $5743: $48
    ld [$24db], sp                                ; $5744: $08 $db $24
    cp a                                          ; $5747: $bf
    nop                                           ; $5748: $00
    ld b, b                                       ; $5749: $40
    ld [$d515], a                                 ; $574a: $ea $15 $d5
    ld a, [hl+]                                   ; $574d: $2a
    ld a, [hl+]                                   ; $574e: $2a
    push de                                       ; $574f: $d5
    inc b                                         ; $5750: $04
    nop                                           ; $5751: $00
    ei                                            ; $5752: $fb
    ld b, b                                       ; $5753: $40
    rst $38                                       ; $5754: $ff
    xor d                                         ; $5755: $aa
    rst $38                                       ; $5756: $ff
    rst $28                                       ; $5757: $ef
    ld de, $00f4                                  ; $5758: $11 $f4 $00
    dec bc                                        ; $575b: $0b
    cp l                                          ; $575c: $bd
    ld b, e                                       ; $575d: $43
    call c, $a523                                 ; $575e: $dc $23 $a5
    ld e, e                                       ; $5761: $5b
    ld [$f720], sp                                ; $5762: $08 $20 $f7
    ld b, c                                       ; $5765: $41
    stop                                          ; $5766: $10 $00
    xor a                                         ; $5768: $af
    db $10                                        ; $5769: $10
    rst $10                                       ; $576a: $d7
    nop                                           ; $576b: $00
    rst $38                                       ; $576c: $ff
    nop                                           ; $576d: $00
    db $10                                        ; $576e: $10
    rst $30                                       ; $576f: $f7
    and b                                         ; $5770: $a0
    rst $38                                       ; $5771: $ff
    nop                                           ; $5772: $00
    db $dd                                        ; $5773: $dd
    ld a, [hl+]                                   ; $5774: $2a
    cp d                                          ; $5775: $ba
    ld a, [bc]                                    ; $5776: $0a
    dec d                                         ; $5777: $15
    ld d, l                                       ; $5778: $55
    jr nz, @+$01                                  ; $5779: $20 $ff

    sbc b                                         ; $577b: $98
    nop                                           ; $577c: $00
    ld a, [$1004]                                 ; $577d: $fa $04 $10
    ld d, l                                       ; $5780: $55
    nop                                           ; $5781: $00
    adc d                                         ; $5782: $8a
    ld [$5715], a                                 ; $5783: $ea $15 $57
    xor d                                         ; $5786: $aa

jr_0a6_5787:
    cp [hl]                                       ; $5787: $be
    ld d, b                                       ; $5788: $50
    db $dd                                        ; $5789: $dd
    nop                                           ; $578a: $00
    ld [hl+], a                                   ; $578b: $22
    cp d                                          ; $578c: $ba
    ld d, l                                       ; $578d: $55
    ld d, a                                       ; $578e: $57
    and d                                         ; $578f: $a2
    xor a                                         ; $5790: $af
    ld d, h                                       ; $5791: $54
    rst $10                                       ; $5792: $d7
    ld bc, $af20                                  ; $5793: $01 $20 $af
    ld d, h                                       ; $5796: $54
    rst $30                                       ; $5797: $f7
    and b                                         ; $5798: $a0
    xor a                                         ; $5799: $af
    inc b                                         ; $579a: $04
    ld d, b                                       ; $579b: $50
    ld bc, $f480                                  ; $579c: $01 $80 $f4
    ld [de], a                                    ; $579f: $12
    push af                                       ; $57a0: $f5
    add b                                         ; $57a1: $80
    ld [$d500], a                                 ; $57a2: $ea $00 $d5
    add b                                         ; $57a5: $80
    cp a                                          ; $57a6: $bf
    nop                                           ; $57a7: $00
    nop                                           ; $57a8: $00
    push af                                       ; $57a9: $f5
    ld a, [bc]                                    ; $57aa: $0a
    ld a, [$fd55]                                 ; $57ab: $fa $55 $fd
    ld [bc], a                                    ; $57ae: $02
    ld a, [$1500]                                 ; $57af: $fa $00 $15
    ld a, a                                       ; $57b2: $7f
    add b                                         ; $57b3: $80
    xor a                                         ; $57b4: $af
    ld d, b                                       ; $57b5: $50
    ld [hl], a                                    ; $57b6: $77
    ld [$00fa], sp                                ; $57b7: $08 $fa $00
    nop                                           ; $57ba: $00
    ld d, a                                       ; $57bb: $57
    xor b                                         ; $57bc: $a8
    xor a                                         ; $57bd: $af
    db $10                                        ; $57be: $10
    ld d, a                                       ; $57bf: $57
    adc b                                         ; $57c0: $88
    rst $28                                       ; $57c1: $ef
    jr c, jr_0a6_57d4                             ; $57c2: $38 $10

    rst $38                                       ; $57c4: $ff
    ld c, b                                       ; $57c5: $48
    db $10                                        ; $57c6: $10
    jr c, jr_0a6_57f3                             ; $57c7: $38 $2a

    ld b, b                                       ; $57c9: $40
    ld a, [hl+]                                   ; $57ca: $2a
    ld d, l                                       ; $57cb: $55
    xor d                                         ; $57cc: $aa
    ld l, l                                       ; $57cd: $6d
    nop                                           ; $57ce: $00
    add d                                         ; $57cf: $82
    rst $10                                       ; $57d0: $d7
    jr z, @-$53                                   ; $57d1: $28 $ab

    ld d, h                                       ; $57d3: $54

jr_0a6_57d4:
    rst $28                                       ; $57d4: $ef
    db $10                                        ; $57d5: $10
    rst $10                                       ; $57d6: $d7
    ld b, $28                                     ; $57d7: $06 $28
    rst $00                                       ; $57d9: $c7
    jr z, jr_0a6_5787                             ; $57da: $28 $ab

    ld b, h                                       ; $57dc: $44
    jr c, jr_0a6_5809                             ; $57dd: $38 $2a

jr_0a6_57df:
    ld b, b                                       ; $57df: $40
    ld a, [hl+]                                   ; $57e0: $2a
    jp Jump_000_2f00                              ; $57e1: $c3 $00 $2f


    push bc                                       ; $57e4: $c5
    inc l                                         ; $57e5: $2c
    cp $05                                        ; $57e6: $fe $05
    db $eb                                        ; $57e8: $eb
    rla                                           ; $57e9: $17
    db $ec                                        ; $57ea: $ec
    ld b, b                                       ; $57eb: $40
    inc de                                        ; $57ec: $13
    ld h, b                                       ; $57ed: $60
    ld a, [bc]                                    ; $57ee: $0a
    rst $10                                       ; $57ef: $d7
    jr z, jr_0a6_5806                             ; $57f0: $28 $14

    pop hl                                        ; $57f2: $e1

jr_0a6_57f3:
    or c                                          ; $57f3: $b1
    push hl                                       ; $57f4: $e5
    ld [$e195], sp                                ; $57f5: $08 $95 $e1
    jr nc, jr_0a6_57df                            ; $57f8: $30 $e5

    jr nz, jr_0a6_582c                            ; $57fa: $20 $30

    db $f4                                        ; $57fc: $f4
    ld h, e                                       ; $57fd: $63
    inc [hl]                                      ; $57fe: $34
    ld [bc], a                                    ; $57ff: $02
    cp a                                          ; $5800: $bf
    ld h, b                                       ; $5801: $60
    rst $10                                       ; $5802: $d7
    add sp, $37                                   ; $5803: $e8 $37
    ret z                                         ; $5805: $c8

jr_0a6_5806:
    ld h, b                                       ; $5806: $60
    ld a, [bc]                                    ; $5807: $0a
    db $eb                                        ; $5808: $eb

jr_0a6_5809:
    ld b, b                                       ; $5809: $40
    inc d                                         ; $580a: $14
    sbc b                                         ; $580b: $98
    ld a, [hl+]                                   ; $580c: $2a
    ld c, b                                       ; $580d: $48
    add a                                         ; $580e: $87
    rst $00                                       ; $580f: $c7
    adc a                                         ; $5810: $8f
    ld c, a                                       ; $5811: $4f
    add b                                         ; $5812: $80
    inc a                                         ; $5813: $3c
    push de                                       ; $5814: $d5
    add b                                         ; $5815: $80
    ld a, b                                       ; $5816: $78
    ld [$0b92], sp                                ; $5817: $08 $92 $0b
    ld c, b                                       ; $581a: $48
    ld [bc], a                                    ; $581b: $02
    ld c, d                                       ; $581c: $4a
    ld [bc], a                                    ; $581d: $02
    ld d, l                                       ; $581e: $55
    nop                                           ; $581f: $00
    add e                                         ; $5820: $83
    sbc b                                         ; $5821: $98
    ld a, [hl+]                                   ; $5822: $2a
    inc d                                         ; $5823: $14
    db $e3                                        ; $5824: $e3
    di                                            ; $5825: $f3
    rst $20                                       ; $5826: $e7
    rst $30                                       ; $5827: $f7
    stop                                          ; $5828: $10 $00
    ld c, [hl]                                    ; $582a: $4e
    add hl, hl                                    ; $582b: $29

jr_0a6_582c:
    add b                                         ; $582c: $80
    jr nz, jr_0a6_5857                            ; $582d: $20 $28

    xor a                                         ; $582f: $af
    inc b                                         ; $5830: $04
    rst $18                                       ; $5831: $df
    jr nz, @+$01                                  ; $5832: $20 $ff

    inc b                                         ; $5834: $04
    rst $10                                       ; $5835: $d7
    nop                                           ; $5836: $00
    ld [$00ef], sp                                ; $5837: $08 $ef $00
    ld e, l                                       ; $583a: $5d
    ld a, [hl+]                                   ; $583b: $2a
    ld [$7555], a                                 ; $583c: $ea $55 $75
    nop                                           ; $583f: $00
    ld a, [bc]                                    ; $5840: $0a
    xor [hl]                                      ; $5841: $ae
    inc b                                         ; $5842: $04
    db $dd                                        ; $5843: $dd
    xor d                                         ; $5844: $aa
    xor $51                                       ; $5845: $ee $51
    push af                                       ; $5847: $f5
    nop                                           ; $5848: $00
    adc d                                         ; $5849: $8a
    ld [$5555], a                                 ; $584a: $ea $55 $55
    adc d                                         ; $584d: $8a
    xor $11                                       ; $584e: $ee $11
    ld d, a                                       ; $5850: $57
    nop                                           ; $5851: $00
    xor d                                         ; $5852: $aa
    xor e                                         ; $5853: $ab
    ld bc, $a05f                                  ; $5854: $01 $5f $a0

jr_0a6_5857:
    xor e                                         ; $5857: $ab
    ld d, l                                       ; $5858: $55
    ld e, l                                       ; $5859: $5d
    nop                                           ; $585a: $00
    xor d                                         ; $585b: $aa
    xor [hl]                                      ; $585c: $ae
    ld d, c                                       ; $585d: $51
    ld a, l                                       ; $585e: $7d
    add d                                         ; $585f: $82
    ld a, [$7505]                                 ; $5860: $fa $05 $75
    nop                                           ; $5863: $00
    adc d                                         ; $5864: $8a
    ei                                            ; $5865: $fb
    ld b, b                                       ; $5866: $40
    db $fd                                        ; $5867: $fd
    and d                                         ; $5868: $a2
    ld a, [$d715]                                 ; $5869: $fa $15 $d7
    nop                                           ; $586c: $00
    jr z, @-$44                                   ; $586d: $28 $ba

    ld b, l                                       ; $586f: $45
    ld d, a                                       ; $5870: $57
    ld [hl+], a                                   ; $5871: $22
    cp a                                          ; $5872: $bf
    ld b, c                                       ; $5873: $41
    ld e, a                                       ; $5874: $5f
    ld h, b                                       ; $5875: $60
    jr nz, jr_0a6_58c0                            ; $5876: $20 $48

    ld a, [hl+]                                   ; $5878: $2a
    ld d, b                                       ; $5879: $50
    ld a, [hl-]                                   ; $587a: $3a
    cp a                                          ; $587b: $bf
    ret nz                                        ; $587c: $c0

    scf                                           ; $587d: $37
    ret z                                         ; $587e: $c8

    cp [hl]                                       ; $587f: $be
    ld [bc], a                                    ; $5880: $02
    pop bc                                        ; $5881: $c1
    dec d                                         ; $5882: $15
    ld [$d7a8], a                                 ; $5883: $ea $a8 $d7
    ld b, h                                       ; $5886: $44
    ld [hl], b                                    ; $5887: $70
    ld bc, $c07f                                  ; $5888: $01 $7f $c0
    ld c, d                                       ; $588b: $4a
    inc b                                         ; $588c: $04
    ld l, $08                                     ; $588d: $2e $08
    ld d, l                                       ; $588f: $55
    xor d                                         ; $5890: $aa
    xor b                                         ; $5891: $a8
    ld d, a                                       ; $5892: $57
    ld b, h                                       ; $5893: $44
    cp a                                          ; $5894: $bf

jr_0a6_5895:
    ld b, b                                       ; $5895: $40
    xor d                                         ; $5896: $aa
    ld b, d                                       ; $5897: $42
    ld [de], a                                    ; $5898: $12
    ld l, l                                       ; $5899: $6d
    sub d                                         ; $589a: $92
    db $db                                        ; $589b: $db
    inc h                                         ; $589c: $24
    ld h, $d9                                     ; $589d: $26 $d9
    ld bc, $b24d                                  ; $589f: $01 $4d $b2
    sub b                                         ; $58a2: $90
    ld l, a                                       ; $58a3: $6f
    xor d                                         ; $58a4: $aa
    rst $38                                       ; $58a5: $ff
    ld a, [$2078]                                 ; $58a6: $fa $78 $20
    jr nz, jr_0a6_5895                            ; $58a9: $20 $ea

    ld d, l                                       ; $58ab: $55
    jr nc, jr_0a6_58b7                            ; $58ac: $30 $09

    rst $38                                       ; $58ae: $ff
    nop                                           ; $58af: $00
    ld [$7755], a                                 ; $58b0: $ea $55 $77
    ld [$ff80], sp                                ; $58b3: $08 $80 $ff
    nop                                           ; $58b6: $00

jr_0a6_58b7:
    ld d, a                                       ; $58b7: $57
    inc b                                         ; $58b8: $04
    nop                                           ; $58b9: $00
    push de                                       ; $58ba: $d5
    ld a, [hl+]                                   ; $58bb: $2a
    xor e                                         ; $58bc: $ab
    nop                                           ; $58bd: $00
    ld d, h                                       ; $58be: $54
    push de                                       ; $58bf: $d5

jr_0a6_58c0:
    ld a, [hl+]                                   ; $58c0: $2a
    xor a                                         ; $58c1: $af
    ld bc, $22df                                  ; $58c2: $01 $df $22
    rst $38                                       ; $58c5: $ff
    nop                                           ; $58c6: $00
    nop                                           ; $58c7: $00
    rst $10                                       ; $58c8: $d7
    ld a, [bc]                                    ; $58c9: $0a
    xor $04                                       ; $58ca: $ee $04
    push de                                       ; $58cc: $d5
    add d                                         ; $58cd: $82
    xor d                                         ; $58ce: $aa
    db $10                                        ; $58cf: $10
    inc b                                         ; $58d0: $04
    rst $10                                       ; $58d1: $d7
    add d                                         ; $58d2: $82
    cp b                                          ; $58d3: $b8
    ld a, [hl+]                                   ; $58d4: $2a
    ld a, [bc]                                    ; $58d5: $0a
    pop af                                        ; $58d6: $f1
    ei                                            ; $58d7: $fb
    pop af                                        ; $58d8: $f1
    ld bc, $01fa                                  ; $58d9: $01 $fa $01
    ld d, a                                       ; $58dc: $57
    ld bc, $00fb                                  ; $58dd: $01 $fb $00
    ld d, l                                       ; $58e0: $55
    jr z, jr_0a6_58f3                             ; $58e1: $28 $10

    nop                                           ; $58e3: $00
    xor [hl]                                      ; $58e4: $ae
    ld d, l                                       ; $58e5: $55
    db $fd                                        ; $58e6: $fd
    add b                                         ; $58e7: $80
    ld a, [$ff44]                                 ; $58e8: $fa $44 $ff

jr_0a6_58eb:
    adc b                                         ; $58eb: $88
    ld bc, $55ae                                  ; $58ec: $01 $ae $55
    rst $10                                       ; $58ef: $d7
    add b                                         ; $58f0: $80
    xor a                                         ; $58f1: $af
    nop                                           ; $58f2: $00

jr_0a6_58f3:
    rst $10                                       ; $58f3: $d7
    sbc b                                         ; $58f4: $98
    ld bc, $9480                                  ; $58f5: $01 $80 $94
    ld bc, $fd04                                  ; $58f8: $01 $04 $fd
    ld [bc], a                                    ; $58fb: $02
    cp d                                          ; $58fc: $ba
    dec b                                         ; $58fd: $05
    rst $38                                       ; $58fe: $ff
    ld [bc], a                                    ; $58ff: $02
    ld c, b                                       ; $5900: $48
    ei                                            ; $5901: $fb
    ld [$fb00], sp                                ; $5902: $08 $00 $fb
    inc b                                         ; $5905: $04
    ld c, h                                       ; $5906: $4c
    nop                                           ; $5907: $00
    ld d, b                                       ; $5908: $50
    ld d, a                                       ; $5909: $57
    ld a, [hl+]                                   ; $590a: $2a
    nop                                           ; $590b: $00
    xor $05                                       ; $590c: $ee $05
    ld e, l                                       ; $590e: $5d
    xor b                                         ; $590f: $a8
    ld a, [$5550]                                 ; $5910: $fa $50 $55
    and b                                         ; $5913: $a0
    nop                                           ; $5914: $00
    cp d                                          ; $5915: $ba
    ld d, b                                       ; $5916: $50
    ld [hl], a                                    ; $5917: $77
    add b                                         ; $5918: $80
    cp $10                                        ; $5919: $fe $10
    ld a, a                                       ; $591b: $7f
    add b                                         ; $591c: $80
    nop                                           ; $591d: $00
    cp $41                                        ; $591e: $fe $41
    ld a, l                                       ; $5920: $7d
    ld [$15fa], sp                                ; $5921: $08 $fa $15
    ld d, l                                       ; $5924: $55
    ld a, [hl+]                                   ; $5925: $2a
    nop                                           ; $5926: $00
    ld [$df14], a                                 ; $5927: $ea $14 $df
    jr nz, jr_0a6_58eb                            ; $592a: $20 $bf

    nop                                           ; $592c: $00
    rst $10                                       ; $592d: $d7
    ld [$fa00], sp                                ; $592e: $08 $00 $fa
    dec b                                         ; $5931: $05
    ld d, a                                       ; $5932: $57
    nop                                           ; $5933: $00
    xor d                                         ; $5934: $aa
    nop                                           ; $5935: $00
    push de                                       ; $5936: $d5
    nop                                           ; $5937: $00
    ld h, h                                       ; $5938: $64
    xor e                                         ; $5939: $ab
    sub $0c                                       ; $593a: $d6 $0c
    sub l                                         ; $593c: $95
    inc b                                         ; $593d: $04
    xor d                                         ; $593e: $aa
    ld d, h                                       ; $593f: $54
    call nc, $4104                                ; $5940: $d4 $04 $41
    db $fd                                        ; $5943: $fd
    ld [hl], b                                    ; $5944: $70
    ld a, [bc]                                    ; $5945: $0a
    inc b                                         ; $5946: $04
    db $10                                        ; $5947: $10
    db $10                                        ; $5948: $10
    ld bc, $0b9f                                  ; $5949: $01 $9f $0b
    cp a                                          ; $594c: $bf
    ld b, b                                       ; $594d: $40
    jp c, $0e25                                   ; $594e: $da $25 $0e

    and l                                         ; $5951: $a5
    ld e, d                                       ; $5952: $5a
    ld a, [bc]                                    ; $5953: $0a
    push af                                       ; $5954: $f5
    ld d, b                                       ; $5955: $50

jr_0a6_5956:
    ld a, [bc]                                    ; $5956: $0a
    xor a                                         ; $5957: $af
    dec bc                                        ; $5958: $0b
    ld h, b                                       ; $5959: $60
    ld c, d                                       ; $595a: $4a
    cp [hl]                                       ; $595b: $be
    ld de, $3fc1                                  ; $595c: $11 $c1 $3f
    ret nz                                        ; $595f: $c0

    ldh a, [$50]                                  ; $5960: $f0 $50
    nop                                           ; $5962: $00
    rst $10                                       ; $5963: $d7
    jr z, jr_0a6_5956                             ; $5964: $28 $f0

    ld c, b                                       ; $5966: $48
    ld b, d                                       ; $5967: $42
    ld [$013c], a                                 ; $5968: $ea $3c $01
    xor d                                         ; $596b: $aa
    ld d, l                                       ; $596c: $55
    ld a, l                                       ; $596d: $7d
    xor d                                         ; $596e: $aa
    ld [hl], b                                    ; $596f: $70
    ld bc, $40a2                                  ; $5970: $01 $a2 $40
    cp $70                                        ; $5973: $fe $70
    ld bc, $04fb                                  ; $5975: $01 $fb $04
    ld e, l                                       ; $5978: $5d
    ld [hl+], a                                   ; $5979: $22
    cp [hl]                                       ; $597a: $be
    ld b, c                                       ; $597b: $41
    nop                                           ; $597c: $00
    ld e, a                                       ; $597d: $5f
    ld a, [hl+]                                   ; $597e: $2a

jr_0a6_597f:
    ld a, [$df40]                                 ; $597f: $fa $40 $df
    and b                                         ; $5982: $a0
    cp a                                          ; $5983: $bf
    ld d, b                                       ; $5984: $50
    nop                                           ; $5985: $00
    ld e, l                                       ; $5986: $5d
    ld [hl+], a                                   ; $5987: $22
    cp e                                          ; $5988: $bb
    dec b                                         ; $5989: $05
    ld e, l                                       ; $598a: $5d
    add d                                         ; $598b: $82
    xor e                                         ; $598c: $ab
    ld b, l                                       ; $598d: $45
    nop                                           ; $598e: $00
    push de                                       ; $598f: $d5
    ld [hl+], a                                   ; $5990: $22
    db $eb                                        ; $5991: $eb

jr_0a6_5992:
    ld de, $00fd                                  ; $5992: $11 $fd $00
    ei                                            ; $5995: $fb
    dec b                                         ; $5996: $05
    nop                                           ; $5997: $00
    ld [hl], a                                    ; $5998: $77
    xor d                                         ; $5999: $aa
    cp d                                          ; $599a: $ba
    ld b, h                                       ; $599b: $44
    ld e, l                                       ; $599c: $5d

jr_0a6_599d:
    jr nz, jr_0a6_599d                            ; $599d: $20 $fe

    ld bc, $570c                                  ; $599f: $01 $0c $57
    jr nz, jr_0a6_5992                            ; $59a2: $20 $ee

    ld bc, $00a4                                  ; $59a4: $01 $a4 $00
    ret z                                         ; $59a7: $c8

    ld [bc], a                                    ; $59a8: $02
    xor [hl]                                      ; $59a9: $ae
    ld bc, $6c80                                  ; $59aa: $01 $80 $6c
    ld [bc], a                                    ; $59ad: $02
    ld d, l                                       ; $59ae: $55

jr_0a6_59af:
    push de                                       ; $59af: $d5
    jr z, jr_0a6_599d                             ; $59b0: $28 $eb

    ld de, $8277                                  ; $59b2: $11 $77 $82
    nop                                           ; $59b5: $00
    xor a                                         ; $59b6: $af
    ld b, l                                       ; $59b7: $45
    ld d, l                                       ; $59b8: $55
    adc d                                         ; $59b9: $8a
    xor a                                         ; $59ba: $af
    ld b, b                                       ; $59bb: $40
    ld d, a                                       ; $59bc: $57
    xor b                                         ; $59bd: $a8
    nop                                           ; $59be: $00
    cp a                                          ; $59bf: $bf
    ld d, l                                       ; $59c0: $55
    rst $30                                       ; $59c1: $f7
    jr nz, jr_0a6_597f                            ; $59c2: $20 $bb

    db $10                                        ; $59c4: $10
    push af                                       ; $59c5: $f5
    jr z, @+$0a                                   ; $59c6: $28 $08

    cp $04                                        ; $59c8: $fe $04
    rst $38                                       ; $59ca: $ff
    ld [hl+], a                                   ; $59cb: $22
    ld e, b                                       ; $59cc: $58

jr_0a6_59cd:
    ld [bc], a                                    ; $59cd: $02
    adc b                                         ; $59ce: $88
    ld [$3340], a                                 ; $59cf: $ea $40 $33
    db $fd                                        ; $59d2: $fd
    and b                                         ; $59d3: $a0
    call nz, $0002                                ; $59d4: $c4 $02 $00
    ld bc, $02ff                                  ; $59d7: $01 $ff $02
    ld h, b                                       ; $59da: $60
    add hl, sp                                    ; $59db: $39
    ld [hl], b                                    ; $59dc: $70
    jr jr_0a6_5a33                                ; $59dd: $18 $54

    ld a, [$1110]                                 ; $59df: $fa $10 $11
    ld e, l                                       ; $59e2: $5d
    db $10                                        ; $59e3: $10
    add hl, bc                                    ; $59e4: $09
    ld [bc], a                                    ; $59e5: $02
    jr z, jr_0a6_59e9                             ; $59e6: $28 $01

    ld [bc], a                                    ; $59e8: $02

jr_0a6_59e9:
    xor d                                         ; $59e9: $aa
    ld [de], a                                    ; $59ea: $12
    inc b                                         ; $59eb: $04
    rst $18                                       ; $59ec: $df
    xor b                                         ; $59ed: $a8
    ldh a, [$09]                                  ; $59ee: $f0 $09
    xor $51                                       ; $59f0: $ee $51
    ldh a, [rNR24]                                ; $59f2: $f0 $19
    xor d                                         ; $59f4: $aa
    and b                                         ; $59f5: $a0
    ld [hl], b                                    ; $59f6: $70
    ld sp, $fcfd                                  ; $59f7: $31 $fd $fc
    nop                                           ; $59fa: $00
    ld a, a                                       ; $59fb: $7f
    add b                                         ; $59fc: $80
    xor e                                         ; $59fd: $ab
    dec d                                         ; $59fe: $15
    push af                                       ; $59ff: $f5

Call_0a6_5a00:
    inc bc                                        ; $5a00: $03

Jump_0a6_5a01:
    ld a, [hl+]                                   ; $5a01: $2a
    db $eb                                        ; $5a02: $eb
    ld d, l                                       ; $5a03: $55
    ld d, a                                       ; $5a04: $57
    xor d                                         ; $5a05: $aa
    ei                                            ; $5a06: $fb

jr_0a6_5a07:
    and $05                                       ; $5a07: $e6 $05
    and b                                         ; $5a09: $a0
    ld e, c                                       ; $5a0a: $59
    ret nz                                        ; $5a0b: $c0

    or b                                          ; $5a0c: $b0
    jr jr_0a6_59af                                ; $5a0d: $18 $a0

    add hl, sp                                    ; $5a0f: $39
    db $dd                                        ; $5a10: $dd
    jr z, jr_0a6_59cd                             ; $5a11: $28 $ba

    inc d                                         ; $5a13: $14
    ld d, a                                       ; $5a14: $57
    jr nz, jr_0a6_5a07                            ; $5a15: $20 $f0

    ldh [$38], a                                  ; $5a17: $e0 $38
    ret nc                                        ; $5a19: $d0

    add hl, de                                    ; $5a1a: $19
    ldh [$38], a                                  ; $5a1b: $e0 $38
    ret nc                                        ; $5a1d: $d0

    add hl, de                                    ; $5a1e: $19
    cp [hl]                                       ; $5a1f: $be
    ld d, c                                       ; $5a20: $51
    db $dd                                        ; $5a21: $dd
    jr nz, jr_0a6_5a24                            ; $5a22: $20 $00

jr_0a6_5a24:
    cp d                                          ; $5a24: $ba
    ld d, l                                       ; $5a25: $55
    ld d, l                                       ; $5a26: $55
    and d                                         ; $5a27: $a2
    xor d                                         ; $5a28: $aa
    ld d, h                                       ; $5a29: $54
    push de                                       ; $5a2a: $d5
    ld [hl+], a                                   ; $5a2b: $22
    nop                                           ; $5a2c: $00
    xor e                                         ; $5a2d: $ab
    ld d, h                                       ; $5a2e: $54
    push af                                       ; $5a2f: $f5
    and d                                         ; $5a30: $a2
    cp [hl]                                       ; $5a31: $be
    dec b                                         ; $5a32: $05

jr_0a6_5a33:
    push af                                       ; $5a33: $f5
    ld [$fa31], sp                                ; $5a34: $08 $31 $fa
    ld d, b                                       ; $5a37: $50
    ld [hl], h                                    ; $5a38: $74
    inc bc                                        ; $5a39: $03
    adc h                                         ; $5a3a: $8c
    ld bc, $40bf                                  ; $5a3b: $01 $bf $40
    ld a, a                                       ; $5a3e: $7f
    ld l, h                                       ; $5a3f: $6c
    ld bc, $90be                                  ; $5a40: $01 $be $90
    add hl, de                                    ; $5a43: $19
    cp $b8                                        ; $5a44: $fe $b8
    inc c                                         ; $5a46: $0c
    ld [hl], h                                    ; $5a47: $74
    ld [$2190], sp                                ; $5a48: $08 $90 $21
    add b                                         ; $5a4b: $80
    ld [$0e6a], sp                                ; $5a4c: $08 $6a $0e
    xor $00                                       ; $5a4f: $ee $00
    ld de, $28f7                                  ; $5a51: $11 $f7 $28
    xor a                                         ; $5a54: $af
    db $10                                        ; $5a55: $10
    ld a, l                                       ; $5a56: $7d
    xor d                                         ; $5a57: $aa
    xor a                                         ; $5a58: $af
    ld c, h                                       ; $5a59: $4c
    ld b, b                                       ; $5a5a: $40
    ld b, [hl]                                    ; $5a5b: $46
    dec bc                                        ; $5a5c: $0b
    rst $10                                       ; $5a5d: $d7
    jr z, @-$6f                                   ; $5a5e: $28 $8f

    dec b                                         ; $5a60: $05
    inc bc                                        ; $5a61: $03
    jr z, jr_0a6_5a67                             ; $5a62: $28 $03

    ld bc, $0200                                  ; $5a64: $01 $00 $02

jr_0a6_5a67:
    inc bc                                        ; $5a67: $03
    inc bc                                        ; $5a68: $03
    nop                                           ; $5a69: $00
    jr jr_0a6_5a6c                                ; $5a6a: $18 $00

jr_0a6_5a6c:
    jr jr_0a6_5a86                                ; $5a6c: $18 $18

    ld a, b                                       ; $5a6e: $78
    inc h                                         ; $5a6f: $24
    ld [bc], a                                    ; $5a70: $02
    ld [$154a], sp                                ; $5a71: $08 $4a $15
    xor e                                         ; $5a74: $ab
    dec c                                         ; $5a75: $0d
    inc hl                                        ; $5a76: $23
    jr nz, jr_0a6_5ab9                            ; $5a77: $20 $40

    ret nz                                        ; $5a79: $c0

    ret nz                                        ; $5a7a: $c0

    ret nz                                        ; $5a7b: $c0

    inc bc                                        ; $5a7c: $03
    nop                                           ; $5a7d: $00
    ldh a, [$3b]                                  ; $5a7e: $f0 $3b
    push de                                       ; $5a80: $d5
    add d                                         ; $5a81: $82
    xor [hl]                                      ; $5a82: $ae
    ld bc, $82d5                                  ; $5a83: $01 $d5 $82

jr_0a6_5a86:
    add l                                         ; $5a86: $85
    ldh a, [$3b]                                  ; $5a87: $f0 $3b
    db $fd                                        ; $5a89: $fd
    ld [bc], a                                    ; $5a8a: $02
    xor e                                         ; $5a8b: $ab
    ld d, l                                       ; $5a8c: $55
    or b                                          ; $5a8d: $b0
    dec b                                         ; $5a8e: $05
    ld b, b                                       ; $5a8f: $40
    db $10                                        ; $5a90: $10
    ld a, [hl+]                                   ; $5a91: $2a
    nop                                           ; $5a92: $00
    rst $10                                       ; $5a93: $d7
    xor b                                         ; $5a94: $a8
    xor d                                         ; $5a95: $aa
    dec d                                         ; $5a96: $15
    rst $18                                       ; $5a97: $df
    jr nz, @-$14                                  ; $5a98: $20 $ea

    ld de, $5f20                                  ; $5a9a: $11 $20 $5f
    ld [bc], a                                    ; $5a9d: $02
    ld l, h                                       ; $5a9e: $6c
    nop                                           ; $5a9f: $00
    ld a, [hl+]                                   ; $5aa0: $2a
    xor [hl]                                      ; $5aa1: $ae
    ld d, h                                       ; $5aa2: $54
    db $fd                                        ; $5aa3: $fd
    ld a, [bc]                                    ; $5aa4: $0a
    sbc d                                         ; $5aa5: $9a
    cp b                                          ; $5aa6: $b8
    ld bc, $bf80                                  ; $5aa7: $01 $80 $bf
    add b                                         ; $5aaa: $80
    ld bc, $010c                                  ; $5aab: $01 $0c $01
    ld [bc], a                                    ; $5aae: $02
    sub h                                         ; $5aaf: $94
    ld [bc], a                                    ; $5ab0: $02
    ld a, [hl+]                                   ; $5ab1: $2a
    nop                                           ; $5ab2: $00
    xor [hl]                                      ; $5ab3: $ae
    ld d, c                                       ; $5ab4: $51
    ld d, a                                       ; $5ab5: $57
    ld a, [hl+]                                   ; $5ab6: $2a
    ei                                            ; $5ab7: $fb
    dec b                                         ; $5ab8: $05

jr_0a6_5ab9:
    push af                                       ; $5ab9: $f5
    adc d                                         ; $5aba: $8a
    ld [bc], a                                    ; $5abb: $02
    db $eb                                        ; $5abc: $eb
    ld b, l                                       ; $5abd: $45
    ld [hl], l                                    ; $5abe: $75
    and d                                         ; $5abf: $a2
    ei                                            ; $5ac0: $fb
    ld de, $06b5                                  ; $5ac1: $11 $b5 $06
    dec b                                         ; $5ac4: $05
    nop                                           ; $5ac5: $00
    ld e, a                                       ; $5ac6: $5f
    xor d                                         ; $5ac7: $aa
    ld a, [$5505]                                 ; $5ac8: $fa $05 $55
    xor d                                         ; $5acb: $aa
    ei                                            ; $5acc: $fb
    inc b                                         ; $5acd: $04
    ld [$a05f], sp                                ; $5ace: $08 $5f $a0
    db $eb                                        ; $5ad1: $eb
    ld de, $0434                                  ; $5ad2: $11 $34 $04
    inc b                                         ; $5ad5: $04
    ld [hl], l                                    ; $5ad6: $75
    xor d                                         ; $5ad7: $aa
    db $10                                        ; $5ad8: $10
    xor $10                                       ; $5ad9: $ee $10
    db $fd                                        ; $5adb: $fd
    ld b, b                                       ; $5adc: $40
    inc c                                         ; $5add: $0c
    xor d                                         ; $5ade: $aa
    cp a                                          ; $5adf: $bf
    ld d, h                                       ; $5ae0: $54
    ld e, a                                       ; $5ae1: $5f
    dec b                                         ; $5ae2: $05
    and b                                         ; $5ae3: $a0
    xor a                                         ; $5ae4: $af
    ld d, h                                       ; $5ae5: $54
    rst $18                                       ; $5ae6: $df
    and b                                         ; $5ae7: $a0
    ld c, b                                       ; $5ae8: $48
    nop                                           ; $5ae9: $00
    ld [bc], a                                    ; $5aea: $02
    ld d, b                                       ; $5aeb: $50
    ld a, [bc]                                    ; $5aec: $0a
    inc h                                         ; $5aed: $24
    ld a, [$5045]                                 ; $5aee: $fa $45 $50
    ld a, [bc]                                    ; $5af1: $0a
    rst $10                                       ; $5af2: $d7
    ld a, [hl+]                                   ; $5af3: $2a
    ld a, b                                       ; $5af4: $78
    inc bc                                        ; $5af5: $03
    xor d                                         ; $5af6: $aa
    ld a, [$10b0]                                 ; $5af7: $fa $b0 $10
    ld bc, $f8ba                                  ; $5afa: $01 $ba $f8
    ld a, [bc]                                    ; $5afd: $0a
    sub b                                         ; $5afe: $90
    ld [bc], a                                    ; $5aff: $02
    rst $28                                       ; $5b00: $ef
    ld de, $02df                                  ; $5b01: $11 $df $02
    ld b, b                                       ; $5b04: $40
    rst $28                                       ; $5b05: $ef
    ld e, h                                       ; $5b06: $5c
    nop                                           ; $5b07: $00
    xor $14                                       ; $5b08: $ee $14
    db $fd                                        ; $5b0a: $fd
    ld a, [bc]                                    ; $5b0b: $0a
    ld [$3915], a                                 ; $5b0c: $ea $15 $39
    db $fd                                        ; $5b0f: $fd
    nop                                           ; $5b10: $00
    jr nc, jr_0a6_5b4d                            ; $5b11: $30 $3a

jr_0a6_5b13:
    sub b                                         ; $5b13: $90
    inc e                                         ; $5b14: $1c
    jr nc, jr_0a6_5b51                            ; $5b15: $30 $3a

    rst $10                                       ; $5b17: $d7
    nop                                           ; $5b18: $00
    add sp, $02                                   ; $5b19: $e8 $02
    ld b, l                                       ; $5b1b: $45
    nop                                           ; $5b1c: $00
    ret nz                                        ; $5b1d: $c0

    inc c                                         ; $5b1e: $0c
    ld a, [$f510]                                 ; $5b1f: $fa $10 $f5
    ldh a, [rNR11]                                ; $5b22: $f0 $11
    cp $1c                                        ; $5b24: $fe $1c
    ld [bc], a                                    ; $5b26: $02
    add sp, -$50                                  ; $5b27: $e8 $b0
    add hl, sp                                    ; $5b29: $39
    ret nz                                        ; $5b2a: $c0

    inc e                                         ; $5b2b: $1c
    jr nc, @+$2b                                  ; $5b2c: $30 $29

    xor [hl]                                      ; $5b2e: $ae

jr_0a6_5b2f:
    jr nc, jr_0a6_5b51                            ; $5b2f: $30 $20

    add c                                         ; $5b31: $81
    rst $38                                       ; $5b32: $ff
    ccf                                           ; $5b33: $3f
    ld bc, $adc1                                  ; $5b34: $01 $c1 $ad
    db $d3                                        ; $5b37: $d3
    dec d                                         ; $5b38: $15
    jp $c3a9                                      ; $5b39: $c3 $a9 $c3


    inc b                                         ; $5b3c: $04
    jr jr_0a6_5b2f                                ; $5b3d: $18 $f0

    ld b, b                                       ; $5b3f: $40
    ld sp, $0dbd                                  ; $5b40: $31 $bd $0d
    pop bc                                        ; $5b43: $c1
    dec d                                         ; $5b44: $15
    dec bc                                        ; $5b45: $0b
    ld [$82fd], sp                                ; $5b46: $08 $fd $82
    ld hl, sp-$79                                 ; $5b49: $f8 $87
    nop                                           ; $5b4b: $00
    rst $10                                       ; $5b4c: $d7

jr_0a6_5b4d:
    xor b                                         ; $5b4d: $a8
    db $eb                                        ; $5b4e: $eb
    sub h                                         ; $5b4f: $94
    ld a, a                                       ; $5b50: $7f

jr_0a6_5b51:
    ret nz                                        ; $5b51: $c0

    nop                                           ; $5b52: $00
    nop                                           ; $5b53: $00
    ld b, c                                       ; $5b54: $41
    ld a, b                                       ; $5b55: $78
    ld [$d805], a                                 ; $5b56: $ea $05 $d8
    jr nz, jr_0a6_5b13                            ; $5b59: $20 $b8

    ld b, b                                       ; $5b5b: $40
    db $fc                                        ; $5b5c: $fc
    adc [hl]                                      ; $5b5d: $8e
    ld b, $3d                                     ; $5b5e: $06 $3d
    sub h                                         ; $5b60: $94
    ld l, b                                       ; $5b61: $68
    jr c, jr_0a6_5b8c                             ; $5b62: $38 $28

    ld b, b                                       ; $5b64: $40
    jr nc, jr_0a6_5b9f                            ; $5b65: $30 $38

    jr z, @-$01                                   ; $5b67: $28 $fd

    dec b                                         ; $5b69: $05
    rrca                                          ; $5b6a: $0f
    rst $38                                       ; $5b6b: $ff
    dec b                                         ; $5b6c: $05
    inc bc                                        ; $5b6d: $03
    ld [hl], d                                    ; $5b6e: $72
    call $c47b                                    ; $5b6f: $cd $7b $c4
    ccf                                           ; $5b72: $3f
    ldh [rSC], a                                  ; $5b73: $e0 $02
    nop                                           ; $5b75: $00
    ld sp, hl                                     ; $5b76: $f9
    rlca                                          ; $5b77: $07
    nop                                           ; $5b78: $00
    cp $fe                                        ; $5b79: $fe $fe
    nop                                           ; $5b7b: $00
    nop                                           ; $5b7c: $00
    db $ec                                        ; $5b7d: $ec
    db $10                                        ; $5b7e: $10
    ld a, [hl]                                    ; $5b7f: $7e
    add b                                         ; $5b80: $80
    nop                                           ; $5b81: $00
    cp $00                                        ; $5b82: $fe $00
    cp $7e                                        ; $5b84: $fe $7e
    add b                                         ; $5b86: $80
    ld hl, sp+$00                                 ; $5b87: $f8 $00
    add b                                         ; $5b89: $80
    add b                                         ; $5b8a: $80
    xor h                                         ; $5b8b: $ac

jr_0a6_5b8c:
    add hl, bc                                    ; $5b8c: $09
    xor c                                         ; $5b8d: $a9
    jp $c314                                      ; $5b8e: $c3 $14 $c3


    xor b                                         ; $5b91: $a8
    jp Jump_000_1a15                              ; $5b92: $c3 $15 $1a


    ret nz                                        ; $5b95: $c0

    xor d                                         ; $5b96: $aa
    ret nz                                        ; $5b97: $c0

    inc b                                         ; $5b98: $04
    ld [$0ca6], sp                                ; $5b99: $08 $a6 $0c
    xor d                                         ; $5b9c: $aa
    ld c, e                                       ; $5b9d: $4b
    rlca                                          ; $5b9e: $07

jr_0a6_5b9f:
    ld d, l                                       ; $5b9f: $55
    pop bc                                        ; $5ba0: $c1
    ld [hl], h                                    ; $5ba1: $74
    inc bc                                        ; $5ba2: $03
    inc b                                         ; $5ba3: $04
    ld [$ff00], sp                                ; $5ba4: $08 $00 $ff
    xor $11                                       ; $5ba7: $ee $11
    db $fd                                        ; $5ba9: $fd
    jr nz, jr_0a6_5bb6                            ; $5baa: $20 $0a

    nop                                           ; $5bac: $00
    xor d                                         ; $5bad: $aa
    cp d                                          ; $5bae: $ba
    ld d, h                                       ; $5baf: $54
    ld e, l                                       ; $5bb0: $5d
    and d                                         ; $5bb1: $a2
    xor e                                         ; $5bb2: $ab
    ld d, h                                       ; $5bb3: $54
    db $dd                                        ; $5bb4: $dd
    db $f4                                        ; $5bb5: $f4

jr_0a6_5bb6:
    ld a, b                                       ; $5bb6: $78
    dec c                                         ; $5bb7: $0d
    ret nc                                        ; $5bb8: $d0

    inc hl                                        ; $5bb9: $23
    ld c, h                                       ; $5bba: $4c
    ld a, [bc]                                    ; $5bbb: $0a
    rst $08                                       ; $5bbc: $cf
    ld b, c                                       ; $5bbd: $41
    ld bc, $1802                                  ; $5bbe: $01 $02 $18
    jr jr_0a6_5c41                                ; $5bc1: $18 $7e

    nop                                           ; $5bc3: $00
    ld [hl], h                                    ; $5bc4: $74
    cp a                                          ; $5bc5: $bf
    halt                                          ; $5bc6: $76
    cp l                                          ; $5bc7: $bd
    ld h, [hl]                                    ; $5bc8: $66
    cp l                                          ; $5bc9: $bd
    rst $10                                       ; $5bca: $d7
    ld e, [hl]                                    ; $5bcb: $5e
    ld [hl+], a                                   ; $5bcc: $22
    rst $00                                       ; $5bcd: $c7
    ld e, [hl]                                    ; $5bce: $5e
    inc b                                         ; $5bcf: $04
    ld [$00ff], sp                                ; $5bd0: $08 $ff $00
    ld e, a                                       ; $5bd3: $5f
    jr jr_0a6_5bd7                                ; $5bd4: $18 $01

    rst $18                                       ; $5bd6: $df

jr_0a6_5bd7:
    ret                                           ; $5bd7: $c9


    inc e                                         ; $5bd8: $1c
    ld bc, $1bc0                                  ; $5bd9: $01 $c0 $1b
    ld bc, $0202                                  ; $5bdc: $01 $02 $02
    jr @+$05                                      ; $5bdf: $18 $03

    dec b                                         ; $5be1: $05
    ld [bc], a                                    ; $5be2: $02
    ld [$0600], sp                                ; $5be3: $08 $00 $06
    ld a, [bc]                                    ; $5be6: $0a
    sub l                                         ; $5be7: $95
    sbc l                                         ; $5be8: $9d
    add l                                         ; $5be9: $85
    sbc l                                         ; $5bea: $9d

jr_0a6_5beb:
    sub l                                         ; $5beb: $95
    sbc l                                         ; $5bec: $9d
    ld [bc], a                                    ; $5bed: $02
    adc e                                         ; $5bee: $8b

jr_0a6_5bef:
    adc a                                         ; $5bef: $8f
    ld [bc], a                                    ; $5bf0: $02
    ld c, $0a                                     ; $5bf1: $0e $0a
    ld c, $04                                     ; $5bf3: $0e $04
    ld [$00ff], sp                                ; $5bf5: $08 $ff $00
    ld b, b                                       ; $5bf8: $40
    ld a, a                                       ; $5bf9: $7f
    ld [$14fb], sp                                ; $5bfa: $08 $fb $14
    ld d, a                                       ; $5bfd: $57
    jr z, jr_0a6_5beb                             ; $5bfe: $28 $eb

    ld c, c                                       ; $5c00: $49
    inc d                                         ; $5c01: $14
    ld d, b                                       ; $5c02: $50
    add hl, de                                    ; $5c03: $19
    ld b, $0a                                     ; $5c04: $06 $0a
    ld [bc], a                                    ; $5c06: $02
    ld [$140c], sp                                ; $5c07: $08 $0c $14
    ld [bc], a                                    ; $5c0a: $02
    ld [$180c], sp                                ; $5c0b: $08 $0c $18
    jr z, jr_0a6_5bef                             ; $5c0e: $28 $df

    rst $28                                       ; $5c10: $ef
    jr z, jr_0a6_5c3b                             ; $5c11: $28 $28

    jr nc, jr_0a6_5c1d                            ; $5c13: $30 $08

    dec b                                         ; $5c15: $05
    rlca                                          ; $5c16: $07
    dec l                                         ; $5c17: $2d
    rst $38                                       ; $5c18: $ff
    rst $38                                       ; $5c19: $ff
    ld e, b                                       ; $5c1a: $58
    nop                                           ; $5c1b: $00
    add b                                         ; $5c1c: $80

jr_0a6_5c1d:
    adc b                                         ; $5c1d: $88
    nop                                           ; $5c1e: $00
    and h                                         ; $5c1f: $a4
    inc b                                         ; $5c20: $04
    ld d, l                                       ; $5c21: $55
    and b                                         ; $5c22: $a0
    ld bc, $5700                                  ; $5c23: $01 $00 $57
    ld a, [hl+]                                   ; $5c26: $2a
    nop                                           ; $5c27: $00
    rst $38                                       ; $5c28: $ff
    ld a, a                                       ; $5c29: $7f
    add b                                         ; $5c2a: $80
    rst $38                                       ; $5c2b: $ff
    rst $38                                       ; $5c2c: $ff
    ld [bc], a                                    ; $5c2d: $02
    ld d, b                                       ; $5c2e: $50
    ld [hl], b                                    ; $5c2f: $70
    jr nc, @+$52                                  ; $5c30: $30 $50

    ld h, b                                       ; $5c32: $60
    and b                                         ; $5c33: $a0
    ld [bc], a                                    ; $5c34: $02
    nop                                           ; $5c35: $00
    ldh [$80], a                                  ; $5c36: $e0 $80
    halt                                          ; $5c38: $76
    ld l, d                                       ; $5c39: $6a
    dec b                                         ; $5c3a: $05

jr_0a6_5c3b:
    rst $38                                       ; $5c3b: $ff
    rst $38                                       ; $5c3c: $ff
    ld bc, $ffff                                  ; $5c3d: $01 $ff $ff
    ld a, [bc]                                    ; $5c40: $0a

jr_0a6_5c41:
    nop                                           ; $5c41: $00
    ld c, $08                                     ; $5c42: $0e $08
    ld c, $06                                     ; $5c44: $0e $06
    dec b                                         ; $5c46: $05
    ld b, $05                                     ; $5c47: $06 $05
    rlca                                          ; $5c49: $07
    ld b, b                                       ; $5c4a: $40
    rlca                                          ; $5c4b: $07
    db $10                                        ; $5c4c: $10
    ld [bc], a                                    ; $5c4d: $02
    ld [bc], a                                    ; $5c4e: $02
    ld a, [$f705]                                 ; $5c4f: $fa $05 $f7
    ld a, [bc]                                    ; $5c52: $0a
    rst $38                                       ; $5c53: $ff
    adc d                                         ; $5c54: $8a
    ld c, b                                       ; $5c55: $48
    ld b, $ef                                     ; $5c56: $06 $ef
    inc d                                         ; $5c58: $14
    rst $38                                       ; $5c59: $ff
    xor b                                         ; $5c5a: $a8
    ld [$a880], sp                                ; $5c5b: $08 $80 $a8
    inc bc                                        ; $5c5e: $03
    add b                                         ; $5c5f: $80
    ld a, [hl+]                                   ; $5c60: $2a
    cp $01                                        ; $5c61: $fe $01
    ld d, b                                       ; $5c63: $50
    jr @+$01                                      ; $5c64: $18 $ff

    ld h, b                                       ; $5c66: $60
    ld [de], a                                    ; $5c67: $12
    ld e, a                                       ; $5c68: $5f
    ld h, b                                       ; $5c69: $60
    ld a, [bc]                                    ; $5c6a: $0a
    ld [bc], a                                    ; $5c6b: $02
    add hl, de                                    ; $5c6c: $19
    xor [hl]                                      ; $5c6d: $ae
    ld bc, $0cd7                                  ; $5c6e: $01 $d7 $0c
    ld [bc], a                                    ; $5c71: $02
    inc l                                         ; $5c72: $2c
    ld [bc], a                                    ; $5c73: $02
    dec b                                         ; $5c74: $05
    push af                                       ; $5c75: $f5
    inc [hl]                                      ; $5c76: $34
    ld [$068c], sp                                ; $5c77: $08 $8c $06
    rla                                           ; $5c7a: $17
    rst $28                                       ; $5c7b: $ef
    db $10                                        ; $5c7c: $10
    rst $30                                       ; $5c7d: $f7
    ldh a, [$09]                                  ; $5c7e: $f0 $09
    and h                                         ; $5c80: $a4
    ld c, $08                                     ; $5c81: $0e $08
    ld [$40c8], a                                 ; $5c83: $ea $c8 $40
    nop                                           ; $5c86: $00
    jr nc, jr_0a6_5c8a                            ; $5c87: $30 $01

    nop                                           ; $5c89: $00

jr_0a6_5c8a:
    ld a, [$06e0]                                 ; $5c8a: $fa $e0 $06
    cp d                                          ; $5c8d: $ba
    ld d, h                                       ; $5c8e: $54
    db $dd                                        ; $5c8f: $dd
    add c                                         ; $5c90: $81
    ld d, b                                       ; $5c91: $50
    inc bc                                        ; $5c92: $03
    db $dd                                        ; $5c93: $dd
    and d                                         ; $5c94: $a2
    rst $38                                       ; $5c95: $ff
    add b                                         ; $5c96: $80
    xor d                                         ; $5c97: $aa
    push de                                       ; $5c98: $d5
    inc b                                         ; $5c99: $04
    ld [$d508], sp                                ; $5c9a: $08 $08 $d5
    xor d                                         ; $5c9d: $aa
    add b                                         ; $5c9e: $80
    rst $38                                       ; $5c9f: $ff
    inc b                                         ; $5ca0: $04
    ld [$803f], sp                                ; $5ca1: $08 $3f $80
    ld l, d                                       ; $5ca4: $6a
    ld b, b                                       ; $5ca5: $40
    sub l                                         ; $5ca6: $95
    inc b                                         ; $5ca7: $04
    ld [$aa15], sp                                ; $5ca8: $08 $15 $aa
    ld b, b                                       ; $5cab: $40
    cp a                                          ; $5cac: $bf
    dec d                                         ; $5cad: $15
    xor d                                         ; $5cae: $aa
    ld [bc], a                                    ; $5caf: $02
    ret nz                                        ; $5cb0: $c0

    cp a                                          ; $5cb1: $bf
    rst $20                                       ; $5cb2: $e7
    db $10                                        ; $5cb3: $10
    xor d                                         ; $5cb4: $aa
    ld d, l                                       ; $5cb5: $55
    inc b                                         ; $5cb6: $04
    ld [$0045], sp                                ; $5cb7: $08 $45 $00
    or d                                          ; $5cba: $b2
    ld [$45f7], sp                                ; $5cbb: $08 $f7 $45
    or d                                          ; $5cbe: $b2
    jr @-$07                                      ; $5cbf: $18 $f7

    db $fc                                        ; $5cc1: $fc
    db $10                                        ; $5cc2: $10
    ld [bc], a                                    ; $5cc3: $02
    xor c                                         ; $5cc4: $a9
    ld d, [hl]                                    ; $5cc5: $56
    inc b                                         ; $5cc6: $04
    ld [$aa54], sp                                ; $5cc7: $08 $54 $aa
    ld bc, $06fe                                  ; $5cca: $01 $fe $06
    ld d, h                                       ; $5ccd: $54
    xor d                                         ; $5cce: $aa
    inc bc                                        ; $5ccf: $03
    cp $80                                        ; $5cd0: $fe $80
    inc h                                         ; $5cd2: $24
    rlca                                          ; $5cd3: $07
    inc b                                         ; $5cd4: $04
    ld [$81d5], sp                                ; $5cd5: $08 $d5 $81
    call c, $aa14                                 ; $5cd8: $dc $14 $aa
    rst $38                                       ; $5cdb: $ff
    ret nz                                        ; $5cdc: $c0

    cp a                                          ; $5cdd: $bf
    ld [$04bf], a                                 ; $5cde: $ea $bf $04
    ld [$9550], sp                                ; $5ce1: $08 $50 $95
    inc a                                         ; $5ce4: $3c
    rlca                                          ; $5ce5: $07
    cp a                                          ; $5ce6: $bf
    ld b, b                                       ; $5ce7: $40
    rlca                                          ; $5ce8: $07
    jr @-$07                                      ; $5ce9: $18 $f7

    cp d                                          ; $5ceb: $ba
    rst $30                                       ; $5cec: $f7
    add d                                         ; $5ced: $82
    inc b                                         ; $5cee: $04
    ld [$ff55], sp                                ; $5cef: $08 $55 $ff
    or d                                          ; $5cf2: $b2
    rst $38                                       ; $5cf3: $ff
    rst $30                                       ; $5cf4: $f7
    inc b                                         ; $5cf5: $04
    nop                                           ; $5cf6: $00
    inc bc                                        ; $5cf7: $03
    dec d                                         ; $5cf8: $15
    cp $ab                                        ; $5cf9: $fe $ab
    cp $04                                        ; $5cfb: $fe $04
    ld [$5c56], sp                                ; $5cfd: $08 $56 $5c
    rlca                                          ; $5d00: $07
    cp $60                                        ; $5d01: $fe $60
    rlca                                          ; $5d03: $07
    nop                                           ; $5d04: $00
    rlca                                          ; $5d05: $07
    ld hl, sp+$1f                                 ; $5d06: $f8 $1f
    ldh [$3f], a                                  ; $5d08: $e0 $3f
    ret nz                                        ; $5d0a: $c0

    ld a, a                                       ; $5d0b: $7f
    add b                                         ; $5d0c: $80
    nop                                           ; $5d0d: $00
    ld a, a                                       ; $5d0e: $7f
    add h                                         ; $5d0f: $84
    ccf                                           ; $5d10: $3f
    pop hl                                        ; $5d11: $e1
    ld a, a                                       ; $5d12: $7f
    ld d, b                                       ; $5d13: $50
    ld a, a                                       ; $5d14: $7f
    jp nz, Jump_0a6_7e32                          ; $5d15: $c2 $32 $7e

    add c                                         ; $5d18: $81
    cp [hl]                                       ; $5d19: $be
    scf                                           ; $5d1a: $37
    ld a, [hl-]                                   ; $5d1b: $3a
    rlca                                          ; $5d1c: $07
    rst $38                                       ; $5d1d: $ff
    ld c, b                                       ; $5d1e: $48
    ccf                                           ; $5d1f: $3f
    ld bc, $c07f                                  ; $5d20: $01 $7f $c0
    rst $18                                       ; $5d23: $df
    rlca                                          ; $5d24: $07
    inc hl                                        ; $5d25: $23
    ld [bc], a                                    ; $5d26: $02
    ldh a, [$1f]                                  ; $5d27: $f0 $1f
    ldh a, [$0a]                                  ; $5d29: $f0 $0a
    ldh a, [rIF]                                  ; $5d2b: $f0 $0f
    ld h, b                                       ; $5d2d: $60
    ld bc, $011f                                  ; $5d2e: $01 $1f $01
    inc b                                         ; $5d31: $04
    jr nc, @-$53                                  ; $5d32: $30 $ab

    ld bc, $7fff                                  ; $5d34: $01 $ff $7f
    ld b, h                                       ; $5d37: $44
    nop                                           ; $5d38: $00
    ld a, a                                       ; $5d39: $7f
    ldh [$7f], a                                  ; $5d3a: $e0 $7f
    ld d, b                                       ; $5d3c: $50
    ccf                                           ; $5d3d: $3f
    xor d                                         ; $5d3e: $aa
    rra                                           ; $5d3f: $1f
    dec e                                         ; $5d40: $1d
    ld a, [bc]                                    ; $5d41: $0a
    rrca                                          ; $5d42: $0f
    adc [hl]                                      ; $5d43: $8e
    rlca                                          ; $5d44: $07
    rlca                                          ; $5d45: $07
    rst $00                                       ; $5d46: $c7
    ld b, $30                                     ; $5d47: $06 $30
    ld l, h                                       ; $5d49: $6c
    ld bc, $0041                                  ; $5d4a: $01 $41 $00
    rst $38                                       ; $5d4d: $ff
    ld a, [hl+]                                   ; $5d4e: $2a
    rst $38                                       ; $5d4f: $ff
    ld e, l                                       ; $5d50: $5d
    rst $38                                       ; $5d51: $ff
    rst $38                                       ; $5d52: $ff
    ld hl, sp-$08                                 ; $5d53: $f8 $f8
    nop                                           ; $5d55: $00
    jr nc, jr_0a6_5d88                            ; $5d56: $30 $30

    ldh [$0a], a                                  ; $5d58: $e0 $0a
    ldh a, [$95]                                  ; $5d5a: $f0 $95
    ldh a, [rNR30]                                ; $5d5c: $f0 $1a
    inc c                                         ; $5d5e: $0c
    ldh a, [$b5]                                  ; $5d5f: $f0 $b5
    ldh [$e0], a                                  ; $5d61: $e0 $e0
    db $dd                                        ; $5d63: $dd
    ld b, $07                                     ; $5d64: $06 $07
    ld a, [bc]                                    ; $5d66: $0a
    xor e                                         ; $5d67: $ab
    ld bc, $5554                                  ; $5d68: $01 $54 $55
    inc b                                         ; $5d6b: $04
    db $10                                        ; $5d6c: $10
    ld bc, $1004                                  ; $5d6d: $01 $04 $10
    ld bc, $0a48                                  ; $5d70: $01 $48 $0a
    rst $38                                       ; $5d73: $ff
    ld d, l                                       ; $5d74: $55
    add b                                         ; $5d75: $80
    ld d, l                                       ; $5d76: $55
    ld [de], a                                    ; $5d77: $12
    ld [bc], a                                    ; $5d78: $02
    rst $38                                       ; $5d79: $ff
    ld c, b                                       ; $5d7a: $48
    rst $38                                       ; $5d7b: $ff
    nop                                           ; $5d7c: $00
    cp d                                          ; $5d7d: $ba
    jr nc, jr_0a6_5d80                            ; $5d7e: $30 $00

jr_0a6_5d80:
    ld [hl], l                                    ; $5d80: $75
    jr nc, @+$01                                  ; $5d81: $30 $ff

    ld [hl], l                                    ; $5d83: $75
    rst $38                                       ; $5d84: $ff
    cp d                                          ; $5d85: $ba
    rst $38                                       ; $5d86: $ff
    ld a, b                                       ; $5d87: $78

jr_0a6_5d88:
    ld l, [hl]                                    ; $5d88: $6e
    rst $38                                       ; $5d89: $ff
    ld a, [de]                                    ; $5d8a: $1a
    rla                                           ; $5d8b: $17
    jr nz, jr_0a6_5dce                            ; $5d8c: $20 $40

    sub b                                         ; $5d8e: $90
    add $0f                                       ; $5d8f: $c6 $0f
    ccf                                           ; $5d91: $3f
    ld [$0030], sp                                ; $5d92: $08 $30 $00
    xor e                                         ; $5d95: $ab
    add d                                         ; $5d96: $82
    and [hl]                                      ; $5d97: $a6
    ld bc, $ff05                                  ; $5d98: $01 $05 $ff
    ld hl, $01ff                                  ; $5d9b: $21 $ff $01
    and l                                         ; $5d9e: $a5
    ld [bc], a                                    ; $5d9f: $02
    add b                                         ; $5da0: $80
    add b                                         ; $5da1: $80
    inc b                                         ; $5da2: $04
    db $10                                        ; $5da3: $10
    rlca                                          ; $5da4: $07
    rlca                                          ; $5da5: $07
    adc b                                         ; $5da6: $88
    adc l                                         ; $5da7: $8d
    db $10                                        ; $5da8: $10
    rra                                           ; $5da9: $1f
    and b                                         ; $5daa: $a0
    add b                                         ; $5dab: $80
    ld h, b                                       ; $5dac: $60
    inc e                                         ; $5dad: $1c
    add b                                         ; $5dae: $80
    nop                                           ; $5daf: $00
    ld b, b                                       ; $5db0: $40
    add b                                         ; $5db1: $80
    and b                                         ; $5db2: $a0
    ld b, b                                       ; $5db3: $40
    ret nc                                        ; $5db4: $d0

    nop                                           ; $5db5: $00
    jr nz, jr_0a6_5e00                            ; $5db6: $20 $48

    jr nz, @+$27                                  ; $5db8: $20 $25

    jp c, $f50a                                   ; $5dba: $da $0a $f5

    or l                                          ; $5dbd: $b5
    nop                                           ; $5dbe: $00
    jp z, $e51a                                   ; $5dbf: $ca $1a $e5

    or l                                          ; $5dc2: $b5
    jp z, $e01f                                   ; $5dc3: $ca $1f $e0

    cp l                                          ; $5dc6: $bd
    nop                                           ; $5dc7: $00
    jp nz, $d02f                                  ; $5dc8: $c2 $2f $d0

    sub [hl]                                      ; $5dcb: $96
    ld h, e                                       ; $5dcc: $63
    ld a, [hl-]                                   ; $5dcd: $3a

jr_0a6_5dce:
    call nz, $00b0                                ; $5dce: $c4 $b0 $00
    ld c, b                                       ; $5dd1: $48
    inc hl                                        ; $5dd2: $23
    db $d3                                        ; $5dd3: $d3
    and c                                         ; $5dd4: $a1
    ld d, e                                       ; $5dd5: $53
    ld a, b                                       ; $5dd6: $78

jr_0a6_5dd7:
    ret nz                                        ; $5dd7: $c0

    and $00                                       ; $5dd8: $e6 $00
    ld b, e                                       ; $5dda: $43
    ld h, d                                       ; $5ddb: $62
    ret c                                         ; $5ddc: $d8

    or b                                          ; $5ddd: $b0
    ldh [$0a], a                                  ; $5dde: $e0 $0a
    jr nz, jr_0a6_5dd7                            ; $5de0: $20 $f5

    nop                                           ; $5de2: $00
    ld h, b                                       ; $5de3: $60
    ld [hl+], a                                   ; $5de4: $22
    ld a, h                                       ; $5de5: $7c
    ld de, $a902                                  ; $5de6: $11 $02 $a9
    ld b, [hl]                                    ; $5de9: $46
    xor c                                         ; $5dea: $a9
    nop                                           ; $5deb: $00
    ld [de], a                                    ; $5dec: $12
    pop af                                        ; $5ded: $f1
    ld h, d                                       ; $5dee: $62
    or a                                          ; $5def: $b7
    ret z                                         ; $5df0: $c8

    ccf                                           ; $5df1: $3f
    ret nz                                        ; $5df2: $c0

    cp a                                          ; $5df3: $bf
    ret nz                                        ; $5df4: $c0

    pop af                                        ; $5df5: $f1
    nop                                           ; $5df6: $00
    inc b                                         ; $5df7: $04
    jr z, @-$41                                   ; $5df8: $28 $bd

    jr z, jr_0a6_5e3b                             ; $5dfa: $28 $3f

    xor b                                         ; $5dfc: $a8
    sub e                                         ; $5dfd: $93
    dec e                                         ; $5dfe: $1d
    nop                                           ; $5dff: $00

jr_0a6_5e00:
    add hl, bc                                    ; $5e00: $09
    adc [hl]                                      ; $5e01: $8e
    add a                                         ; $5e02: $87
    add hl, bc                                    ; $5e03: $09
    ld [$9090], sp                                ; $5e04: $08 $90 $90
    jr nz, jr_0a6_5e09                            ; $5e07: $20 $00

jr_0a6_5e09:
    inc h                                         ; $5e09: $24
    jp $0102                                      ; $5e0a: $c3 $02 $01


    rst $00                                       ; $5e0d: $c7
    ld [bc], a                                    ; $5e0e: $02
    xor [hl]                                      ; $5e0f: $ae
    push bc                                       ; $5e10: $c5
    nop                                           ; $5e11: $00
    ld a, h                                       ; $5e12: $7c
    dec sp                                        ; $5e13: $3b
    and $07                                       ; $5e14: $e6 $07
    db $fc                                        ; $5e16: $fc
    add h                                         ; $5e17: $84
    db $e4                                        ; $5e18: $e4
    ld a, b                                       ; $5e19: $78
    nop                                           ; $5e1a: $00
    ld a, h                                       ; $5e1b: $7c
    add h                                         ; $5e1c: $84
    rlc b                                         ; $5e1d: $cb $00
    dec d                                         ; $5e1f: $15
    add d                                         ; $5e20: $82
    xor [hl]                                      ; $5e21: $ae
    nop                                           ; $5e22: $00
    jr nc, jr_0a6_5e7a                            ; $5e23: $30 $55

    add b                                         ; $5e25: $80
    db $10                                        ; $5e26: $10
    inc bc                                        ; $5e27: $03
    ld [$7f07], sp                                ; $5e28: $08 $07 $7f
    rst $38                                       ; $5e2b: $ff
    xor d                                         ; $5e2c: $aa
    inc d                                         ; $5e2d: $14
    nop                                           ; $5e2e: $00
    ld c, a                                       ; $5e2f: $4f
    inc de                                        ; $5e30: $13
    cp a                                          ; $5e31: $bf
    ld [de], a                                    ; $5e32: $12
    ld e, [hl]                                    ; $5e33: $5e
    ld [de], a                                    ; $5e34: $12
    or d                                          ; $5e35: $b2
    ld e, $2c                                     ; $5e36: $1e $2c
    ld h, [hl]                                    ; $5e38: $66
    inc a                                         ; $5e39: $3c
    ret nc                                        ; $5e3a: $d0

jr_0a6_5e3b:
    inc c                                         ; $5e3b: $0c
    ld bc, $02fa                                  ; $5e3c: $01 $fa $02
    inc b                                         ; $5e3f: $04
    jr nc, jr_0a6_5e7a                            ; $5e40: $30 $38

    ld [$2502], sp                                ; $5e42: $08 $02 $25
    ld a, a                                       ; $5e45: $7f
    rst $38                                       ; $5e46: $ff
    xor a                                         ; $5e47: $af
    rst $38                                       ; $5e48: $ff
    dec d                                         ; $5e49: $15
    adc a                                         ; $5e4a: $8f
    ld [bc], a                                    ; $5e4b: $02
    stop                                          ; $5e4c: $10 $00
    rst $38                                       ; $5e4e: $ff
    add c                                         ; $5e4f: $81
    rst $38                                       ; $5e50: $ff
    inc b                                         ; $5e51: $04
    ei                                            ; $5e52: $fb
    adc b                                         ; $5e53: $88
    rst $30                                       ; $5e54: $f7
    ld de, $2400                                  ; $5e55: $11 $00 $24
    inc d                                         ; $5e58: $14
    ld h, l                                       ; $5e59: $65
    dec h                                         ; $5e5a: $25
    add h                                         ; $5e5b: $84
    adc h                                         ; $5e5c: $8c
    add l                                         ; $5e5d: $85
    sbc c                                         ; $5e5e: $99
    nop                                           ; $5e5f: $00
    adc b                                         ; $5e60: $88
    sub b                                         ; $5e61: $90
    sub c                                         ; $5e62: $91
    pop de                                        ; $5e63: $d1
    sub b                                         ; $5e64: $90
    ld h, h                                       ; $5e65: $64
    di                                            ; $5e66: $f3
    ld de, $ee00                                  ; $5e67: $11 $00 $ee
    and d                                         ; $5e6a: $a2
    db $dd                                        ; $5e6b: $dd
    dec d                                         ; $5e6c: $15
    ld [$dca3], a                                 ; $5e6d: $ea $a3 $dc
    dec [hl]                                      ; $5e70: $35
    ld [bc], a                                    ; $5e71: $02
    jp z, $d4ab                                   ; $5e72: $ca $ab $d4

    ld a, $c1                                     ; $5e75: $3e $c1
    sbc a                                         ; $5e77: $9f
    and b                                         ; $5e78: $a0
    ld [bc], a                                    ; $5e79: $02

jr_0a6_5e7a:
    ld d, c                                       ; $5e7a: $51
    nop                                           ; $5e7b: $00
    xor [hl]                                      ; $5e7c: $ae
    xor d                                         ; $5e7d: $aa
    ld d, l                                       ; $5e7e: $55
    ld e, a                                       ; $5e7f: $5f
    and b                                         ; $5e80: $a0
    push af                                       ; $5e81: $f5
    ld a, [bc]                                    ; $5e82: $0a
    ld a, a                                       ; $5e83: $7f
    nop                                           ; $5e84: $00
    add b                                         ; $5e85: $80
    db $dd                                        ; $5e86: $dd
    ld [hl+], a                                   ; $5e87: $22
    ei                                            ; $5e88: $fb
    inc b                                         ; $5e89: $04
    xor c                                         ; $5e8a: $a9
    inc b                                         ; $5e8b: $04
    stop                                          ; $5e8c: $10 $00
    add hl, bc                                    ; $5e8e: $09
    ld sp, $6018                                  ; $5e8f: $31 $18 $60
    add hl, hl                                    ; $5e92: $29
    ld de, $1048                                  ; $5e93: $11 $48 $10
    ld bc, $01c9                                  ; $5e96: $01 $c9 $01
    jr z, @+$52                                   ; $5e99: $28 $50

    add hl, hl                                    ; $5e9b: $29
    dec sp                                        ; $5e9c: $3b
    call nz, $48ae                                ; $5e9d: $c4 $ae $48
    inc c                                         ; $5ea0: $0c

jr_0a6_5ea1:
    cp a                                          ; $5ea1: $bf
    ret nz                                        ; $5ea2: $c0

    db $ed                                        ; $5ea3: $ed
    ld [de], a                                    ; $5ea4: $12
    ret nz                                        ; $5ea5: $c0

    ld sp, $1582                                  ; $5ea6: $31 $82 $15
    ld h, c                                       ; $5ea9: $61
    jr c, jr_0a6_5eac                             ; $5eaa: $38 $00

jr_0a6_5eac:
    and b                                         ; $5eac: $a0
    reti                                          ; $5ead: $d9


    pop de                                        ; $5eae: $d1
    db $ec                                        ; $5eaf: $ec
    ldh [$7d], a                                  ; $5eb0: $e0 $7d
    add hl, sp                                    ; $5eb2: $39
    ld a, h                                       ; $5eb3: $7c
    dec l                                         ; $5eb4: $2d
    ld d, b                                       ; $5eb5: $50
    add hl, sp                                    ; $5eb6: $39
    ld a, [de]                                    ; $5eb7: $1a
    rlca                                          ; $5eb8: $07
    rst $38                                       ; $5eb9: $ff
    jr nc, jr_0a6_5f01                            ; $5eba: $30 $45

    sub b                                         ; $5ebc: $90
    inc d                                         ; $5ebd: $14
    rst $28                                       ; $5ebe: $ef
    jr nc, jr_0a6_5efe                            ; $5ebf: $30 $3d

jr_0a6_5ec1:
    cp $90                                        ; $5ec1: $fe $90
    inc d                                         ; $5ec3: $14
    ldh a, [$3e]                                  ; $5ec4: $f0 $3e
    ld h, b                                       ; $5ec6: $60
    dec e                                         ; $5ec7: $1d
    ret nz                                        ; $5ec8: $c0

    ld b, h                                       ; $5ec9: $44
    ld h, b                                       ; $5eca: $60
    dec d                                         ; $5ecb: $15
    ret nz                                        ; $5ecc: $c0

    ld b, h                                       ; $5ecd: $44
    ld [hl], b                                    ; $5ece: $70
    ld d, $fe                                     ; $5ecf: $16 $fe
    ld h, b                                       ; $5ed1: $60
    ld bc, $0f32                                  ; $5ed2: $01 $32 $0f
    ld b, b                                       ; $5ed5: $40
    ccf                                           ; $5ed6: $3f
    add c                                         ; $5ed7: $81
    rst $38                                       ; $5ed8: $ff
    db $fc                                        ; $5ed9: $fc
    add e                                         ; $5eda: $83
    xor c                                         ; $5edb: $a9
    jr c, jr_0a6_5ea1                             ; $5edc: $38 $c3

    sub h                                         ; $5ede: $94
    or b                                          ; $5edf: $b0
    inc b                                         ; $5ee0: $04
    inc b                                         ; $5ee1: $04
    sbc b                                         ; $5ee2: $98
    ld b, b                                       ; $5ee3: $40
    ld c, [hl]                                    ; $5ee4: $4e
    xor [hl]                                      ; $5ee5: $ae
    ld d, b                                       ; $5ee6: $50
    ld [hl], a                                    ; $5ee7: $77
    ld b, b                                       ; $5ee8: $40
    ld [$0c60], sp                                ; $5ee9: $08 $60 $0c
    add hl, hl                                    ; $5eec: $29
    jp Jump_000_0354                              ; $5eed: $c3 $54 $03


    xor c                                         ; $5ef0: $a9
    inc bc                                        ; $5ef1: $03
    ld [bc], a                                    ; $5ef2: $02
    ld d, h                                       ; $5ef3: $54
    inc bc                                        ; $5ef4: $03
    xor l                                         ; $5ef5: $ad
    inc bc                                        ; $5ef6: $03
    nop                                           ; $5ef7: $00
    rst $38                                       ; $5ef8: $ff
    db $10                                        ; $5ef9: $10
    rrca                                          ; $5efa: $0f
    rst $28                                       ; $5efb: $ef
    ld [hl-], a                                   ; $5efc: $32
    ld b, b                                       ; $5efd: $40

jr_0a6_5efe:
    rst $38                                       ; $5efe: $ff
    ldh a, [$35]                                  ; $5eff: $f0 $35

jr_0a6_5f01:
    add b                                         ; $5f01: $80
    dec a                                         ; $5f02: $3d
    rst $38                                       ; $5f03: $ff
    ld [$07d0], sp                                ; $5f04: $08 $d0 $07
    xor b                                         ; $5f07: $a8
    nop                                           ; $5f08: $00
    xor e                                         ; $5f09: $ab
    ld bc, $a05f                                  ; $5f0a: $01 $5f $a0
    xor e                                         ; $5f0d: $ab
    ld d, l                                       ; $5f0e: $55
    ld e, l                                       ; $5f0f: $5d
    xor d                                         ; $5f10: $aa
    jr nz, jr_0a6_5ec1                            ; $5f11: $20 $ae

    ld d, c                                       ; $5f13: $51
    ld h, b                                       ; $5f14: $60
    inc e                                         ; $5f15: $1c
    ei                                            ; $5f16: $fb
    ld b, b                                       ; $5f17: $40
    db $fd                                        ; $5f18: $fd
    and d                                         ; $5f19: $a2
    ld a, [$a49f]                                 ; $5f1a: $fa $9f $a4
    rlca                                          ; $5f1d: $07
    cp d                                          ; $5f1e: $ba
    ld b, l                                       ; $5f1f: $45
    ld [hl], b                                    ; $5f20: $70
    ld e, $a0                                     ; $5f21: $1e $a0
    ld d, l                                       ; $5f23: $55
    add b                                         ; $5f24: $80
    inc de                                        ; $5f25: $13
    ld h, b                                       ; $5f26: $60
    inc b                                         ; $5f27: $04
    ld a, h                                       ; $5f28: $7c
    ld b, $00                                     ; $5f29: $06 $00
    xor a                                         ; $5f2b: $af
    ld d, b                                       ; $5f2c: $50
    rst $38                                       ; $5f2d: $ff
    ld [$50af], sp                                ; $5f2e: $08 $af $50
    ld a, a                                       ; $5f31: $7f
    add b                                         ; $5f32: $80
    inc d                                         ; $5f33: $14
    ld a, [$dd00]                                 ; $5f34: $fa $00 $dd
    sbc b                                         ; $5f37: $98
    rlca                                          ; $5f38: $07
    push af                                       ; $5f39: $f5
    xor h                                         ; $5f3a: $ac
    dec c                                         ; $5f3b: $0d
    ld [bc], a                                    ; $5f3c: $02
    db $eb                                        ; $5f3d: $eb
    push af                                       ; $5f3e: $f5
    ld [$2008], sp                                ; $5f3f: $08 $08 $20
    scf                                           ; $5f42: $37
    ld b, b                                       ; $5f43: $40
    ld e, $d5                                     ; $5f44: $1e $d5
    ld [bc], a                                    ; $5f46: $02
    ld d, l                                       ; $5f47: $55
    inc b                                         ; $5f48: $04
    ld [$dc55], sp                                ; $5f49: $08 $55 $dc
    ld [bc], a                                    ; $5f4c: $02
    xor e                                         ; $5f4d: $ab
    inc b                                         ; $5f4e: $04
    ld [$6b01], sp                                ; $5f4f: $08 $01 $6b
    ld [de], a                                    ; $5f52: $12
    xor e                                         ; $5f53: $ab
    ld [hl], e                                    ; $5f54: $73
    ld [de], a                                    ; $5f55: $12
    rst $38                                       ; $5f56: $ff
    ld [hl], a                                    ; $5f57: $77
    ld [bc], a                                    ; $5f58: $02
    db $10                                        ; $5f59: $10
    ld e, [hl]                                    ; $5f5a: $5e
    nop                                           ; $5f5b: $00
    ld d, a                                       ; $5f5c: $57
    xor d                                         ; $5f5d: $aa
    rst $28                                       ; $5f5e: $ef
    db $10                                        ; $5f5f: $10
    rst $38                                       ; $5f60: $ff
    jr nz, @-$3f                                  ; $5f61: $20 $bf

    ld d, b                                       ; $5f63: $50
    and d                                         ; $5f64: $a2
    call nc, Call_0a6_5007                        ; $5f65: $d4 $07 $50
    jr nc, jr_0a6_5f70                            ; $5f68: $30 $06

    ld d, b                                       ; $5f6a: $50
    rst $18                                       ; $5f6b: $df
    and b                                         ; $5f6c: $a0
    jr nz, jr_0a6_5f7d                            ; $5f6d: $20 $0e

    rst $38                                       ; $5f6f: $ff

jr_0a6_5f70:
    ld b, $50                                     ; $5f70: $06 $50
    ld d, l                                       ; $5f72: $55
    and d                                         ; $5f73: $a2
    cp a                                          ; $5f74: $bf
    ld d, b                                       ; $5f75: $50
    jr nz, @+$20                                  ; $5f76: $20 $1e

    ret nz                                        ; $5f78: $c0

    ld e, $f5                                     ; $5f79: $1e $f5
    add hl, hl                                    ; $5f7b: $29
    and b                                         ; $5f7c: $a0

jr_0a6_5f7d:
    ei                                            ; $5f7d: $fb
    nop                                           ; $5f7e: $00
    inc b                                         ; $5f7f: $04
    xor e                                         ; $5f80: $ab
    and b                                         ; $5f81: $a0
    rlca                                          ; $5f82: $07
    rst $28                                       ; $5f83: $ef
    db $10                                        ; $5f84: $10
    jr nc, jr_0a6_5fe4                            ; $5f85: $30 $5d

    sbc b                                         ; $5f87: $98
    sub b                                         ; $5f88: $90
    ld b, $0a                                     ; $5f89: $06 $0a
    db $eb                                        ; $5f8b: $eb

jr_0a6_5f8c:
    jr nc, jr_0a6_5f92                            ; $5f8c: $30 $04

    sub b                                         ; $5f8e: $90
    ld e, $ff                                     ; $5f8f: $1e $ff
    ld a, [bc]                                    ; $5f91: $0a

jr_0a6_5f92:
    ei                                            ; $5f92: $fb
    sbc h                                         ; $5f93: $9c
    ld d, b                                       ; $5f94: $50

jr_0a6_5f95:
    ld bc, $05fb                                  ; $5f95: $01 $fb $05
    inc e                                         ; $5f98: $1c
    ld e, $48                                     ; $5f99: $1e $48
    inc b                                         ; $5f9b: $04
    ld d, h                                       ; $5f9c: $54
    ld b, $d7                                     ; $5f9d: $06 $d7
    jr z, jr_0a6_5fc3                             ; $5f9f: $28 $22

jr_0a6_5fa1:
    ld [$a015], a                                 ; $5fa1: $ea $15 $a0
    rrca                                          ; $5fa4: $0f
    ld e, l                                       ; $5fa5: $5d
    and d                                         ; $5fa6: $a2
    cp $b8                                        ; $5fa7: $fe $b8
    nop                                           ; $5fa9: $00
    cp e                                          ; $5faa: $bb
    nop                                           ; $5fab: $00
    dec b                                         ; $5fac: $05
    db $dd                                        ; $5fad: $dd
    ld [bc], a                                    ; $5fae: $02
    xor e                                         ; $5faf: $ab
    ld b, l                                       ; $5fb0: $45
    push de                                       ; $5fb1: $d5
    ld [hl+], a                                   ; $5fb2: $22
    db $eb                                        ; $5fb3: $eb
    add d                                         ; $5fb4: $82
    ld c, b                                       ; $5fb5: $48
    inc b                                         ; $5fb6: $04
    ei                                            ; $5fb7: $fb
    dec b                                         ; $5fb8: $05
    ld [hl], a                                    ; $5fb9: $77
    xor d                                         ; $5fba: $aa
    add c                                         ; $5fbb: $81
    ld a, [c]                                     ; $5fbc: $f2
    inc bc                                        ; $5fbd: $03
    add b                                         ; $5fbe: $80
    xor $04                                       ; $5fbf: $ee $04
    jr nz, jr_0a6_5fc5                            ; $5fc1: $20 $02

jr_0a6_5fc3:
    inc c                                         ; $5fc3: $0c
    ld b, l                                       ; $5fc4: $45

jr_0a6_5fc5:
    rrca                                          ; $5fc5: $0f
    xor d                                         ; $5fc6: $aa
    ld d, e                                       ; $5fc7: $53
    inc bc                                        ; $5fc8: $03
    ld a, a                                       ; $5fc9: $7f
    rrca                                          ; $5fca: $0f
    db $10                                        ; $5fcb: $10
    jr @+$03                                      ; $5fcc: $18 $01

    ld h, $ff                                     ; $5fce: $26 $ff
    inc bc                                        ; $5fd0: $03
    inc b                                         ; $5fd1: $04
    jr nc, jr_0a6_5f95                            ; $5fd2: $30 $c1

    cp a                                          ; $5fd4: $bf
    ld [de], a                                    ; $5fd5: $12

jr_0a6_5fd6:
    dec b                                         ; $5fd6: $05
    add b                                         ; $5fd7: $80
    ld [de], a                                    ; $5fd8: $12
    ld de, $9f80                                  ; $5fd9: $11 $80 $9f
    rlca                                          ; $5fdc: $07
    ld b, l                                       ; $5fdd: $45
    cp e                                          ; $5fde: $bb
    ld [$fff7], sp                                ; $5fdf: $08 $f7 $ff
    nop                                           ; $5fe2: $00
    rst $18                                       ; $5fe3: $df

jr_0a6_5fe4:
    nop                                           ; $5fe4: $00
    xor b                                         ; $5fe5: $a8
    xor $51                                       ; $5fe6: $ee $51
    push af                                       ; $5fe8: $f5
    adc d                                         ; $5fe9: $8a
    ld [$5555], a                                 ; $5fea: $ea $55 $55
    ld sp, $ee8a                                  ; $5fed: $31 $8a $ee
    ret nc                                        ; $5ff0: $d0

    nop                                           ; $5ff1: $00
    stop                                          ; $5ff2: $10 $00
    jr nz, jr_0a6_5fa1                            ; $5ff4: $20 $ab

    ld d, h                                       ; $5ff6: $54
    ld h, b                                       ; $5ff7: $60
    add hl, bc                                    ; $5ff8: $09
    inc bc                                        ; $5ff9: $03
    ld a, l                                       ; $5ffa: $7d
    add d                                         ; $5ffb: $82
    ld a, [$7505]                                 ; $5ffc: $fa $05 $75
    adc d                                         ; $5fff: $8a
    add $0f                                       ; $6000: $c6 $0f
    ld h, b                                       ; $6002: $60
    add hl, de                                    ; $6003: $19
    nop                                           ; $6004: $00
    ld d, a                                       ; $6005: $57
    ld [hl+], a                                   ; $6006: $22
    cp a                                          ; $6007: $bf
    ld b, c                                       ; $6008: $41
    ld e, a                                       ; $6009: $5f
    jr nz, jr_0a6_5f8c                            ; $600a: $20 $80

    rst $38                                       ; $600c: $ff
    nop                                           ; $600d: $00
    ld a, l                                       ; $600e: $7d
    add b                                         ; $600f: $80
    xor e                                         ; $6010: $ab
    push de                                       ; $6011: $d5
    ld d, a                                       ; $6012: $57
    adc b                                         ; $6013: $88
    xor $80                                       ; $6014: $ee $80
    nop                                           ; $6016: $00
    ld a, a                                       ; $6017: $7f
    add b                                         ; $6018: $80
    db $eb                                        ; $6019: $eb
    add h                                         ; $601a: $84
    ld d, l                                       ; $601b: $55
    xor d                                         ; $601c: $aa
    nop                                           ; $601d: $00
    rst $38                                       ; $601e: $ff

jr_0a6_601f:
    nop                                           ; $601f: $00
    push af                                       ; $6020: $f5
    nop                                           ; $6021: $00
    cp [hl]                                       ; $6022: $be
    ld d, l                                       ; $6023: $55
    ld d, l                                       ; $6024: $55
    jr z, jr_0a6_5fd6                             ; $6025: $28 $af

    ld b, b                                       ; $6027: $40
    jr nz, jr_0a6_601f                            ; $6028: $20 $f5

    ld [$04fc], sp                                ; $602a: $08 $fc $04
    xor d                                         ; $602d: $aa
    cp c                                          ; $602e: $b9
    ret nz                                        ; $602f: $c0

    inc l                                         ; $6030: $2c
    add e                                         ; $6031: $83
    nop                                           ; $6032: $00
    xor e                                         ; $6033: $ab
    ret nc                                        ; $6034: $d0

    dec l                                         ; $6035: $2d
    add d                                         ; $6036: $82
    xor d                                         ; $6037: $aa
    rst $38                                       ; $6038: $ff
    ld c, l                                       ; $6039: $4d
    or b                                          ; $603a: $b0
    ld bc, $81d6                                  ; $603b: $01 $d6 $81
    ld a, l                                       ; $603e: $7d
    add b                                         ; $603f: $80
    rst $28                                       ; $6040: $ef
    nop                                           ; $6041: $00
    ld [hl], l                                    ; $6042: $75
    db $f4                                        ; $6043: $f4
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    ld e, a                                       ; $6046: $5f
    add b                                         ; $6047: $80
    cp e                                          ; $6048: $bb
    ld d, l                                       ; $6049: $55
    ld e, a                                       ; $604a: $5f
    nop                                           ; $604b: $00
    xor e                                         ; $604c: $ab
    ld d, l                                       ; $604d: $55
    nop                                           ; $604e: $00
    ld a, a                                       ; $604f: $7f
    nop                                           ; $6050: $00
    ret z                                         ; $6051: $c8

    rst $38                                       ; $6052: $ff
    cpl                                           ; $6053: $2f
    ret nc                                        ; $6054: $d0

    cp d                                          ; $6055: $ba
    sub b                                         ; $6056: $90
    nop                                           ; $6057: $00
    ld a, [de]                                    ; $6058: $1a
    push af                                       ; $6059: $f5
    rst $28                                       ; $605a: $ef
    sub b                                         ; $605b: $90
    ld a, [de]                                    ; $605c: $1a
    rst $38                                       ; $605d: $ff
    and l                                         ; $605e: $a5
    jp nz, Jump_0a6_5500                          ; $605f: $c2 $00 $55

    adc b                                         ; $6062: $88
    adc d                                         ; $6063: $8a
    rst $38                                       ; $6064: $ff
    ld a, [$2900]                                 ; $6065: $fa $00 $29
    ld b, $00                                     ; $6068: $06 $00
    cp [hl]                                       ; $606a: $be
    ld b, c                                       ; $606b: $41
    ld d, [hl]                                    ; $606c: $56
    nop                                           ; $606d: $00
    ld h, c                                       ; $606e: $61
    rst $38                                       ; $606f: $ff
    ld l, $51                                     ; $6070: $2e $51
    nop                                           ; $6072: $00
    ld a, d                                       ; $6073: $7a
    sub b                                         ; $6074: $90
    nop                                           ; $6075: $00
    rst $38                                       ; $6076: $ff
    ld e, d                                       ; $6077: $5a
    inc b                                         ; $6078: $04
    or h                                          ; $6079: $b4
    rst $38                                       ; $607a: $ff
    nop                                           ; $607b: $00
    ld l, c                                       ; $607c: $69
    db $10                                        ; $607d: $10
    inc a                                         ; $607e: $3c
    db $d3                                        ; $607f: $d3

Call_0a6_6080:
    or e                                          ; $6080: $b3
    db $10                                        ; $6081: $10
    ld l, d                                       ; $6082: $6a
    inc d                                         ; $6083: $14
    ld b, b                                       ; $6084: $40
    ret                                           ; $6085: $c9


    adc $08                                       ; $6086: $ce $08
    ld d, h                                       ; $6088: $54
    ld l, b                                       ; $6089: $68
    rst $38                                       ; $608a: $ff
    xor e                                         ; $608b: $ab
    nop                                           ; $608c: $00
    push hl                                       ; $608d: $e5
    ld [bc], a                                    ; $608e: $02
    jr jr_0a6_60fc                                ; $608f: $18 $6b

    inc b                                         ; $6091: $04
    sub l                                         ; $6092: $95
    nop                                           ; $6093: $00
    dec h                                         ; $6094: $25

jr_0a6_6095:
    and [hl]                                      ; $6095: $a6
    ld b, $d2                                     ; $6096: $06 $d2
    nop                                           ; $6098: $00
    inc l                                         ; $6099: $2c
    ld d, b                                       ; $609a: $50
    rst $38                                       ; $609b: $ff
    dec e                                         ; $609c: $1d
    nop                                           ; $609d: $00
    sub $20                                       ; $609e: $d6 $20
    inc sp                                        ; $60a0: $33
    ld [$9acc], sp                                ; $60a1: $08 $cc $9a
    ld bc, $b622                                  ; $60a4: $01 $22 $b6
    ld b, $f5                                     ; $60a7: $06 $f5
    ld [bc], a                                    ; $60a9: $02
    xor d                                         ; $60aa: $aa
    nop                                           ; $60ab: $00
    ld d, l                                       ; $60ac: $55
    push af                                       ; $60ad: $f5
    ld [$10ae], sp                                ; $60ae: $08 $ae $10
    ld d, l                                       ; $60b1: $55
    ld a, [bc]                                    ; $60b2: $0a

jr_0a6_60b3:
    cp [hl]                                       ; $60b3: $be
    inc b                                         ; $60b4: $04
    ld b, b                                       ; $60b5: $40
    rst $10                                       ; $60b6: $d7
    xor d                                         ; $60b7: $aa
    xor e                                         ; $60b8: $ab
    nop                                           ; $60b9: $00
    ld e, b                                       ; $60ba: $58
    dec b                                         ; $60bb: $05
    ld b, b                                       ; $60bc: $40
    rst $18                                       ; $60bd: $df
    adc b                                         ; $60be: $88
    ld l, h                                       ; $60bf: $6c
    nop                                           ; $60c0: $00
    rst $18                                       ; $60c1: $df
    jr nz, jr_0a6_60b3                            ; $60c2: $20 $ef

    add h                                         ; $60c4: $84
    ld b, $37                                     ; $60c5: $06 $37
    ld [$005c], sp                                ; $60c7: $08 $5c $00
    adc b                                         ; $60ca: $88
    ld l, c                                       ; $60cb: $69

jr_0a6_60cc:
    ld e, $b7                                     ; $60cc: $1e $b7
    ld [$ff44], sp                                ; $60ce: $08 $44 $ff
    dec de                                        ; $60d1: $1b
    nop                                           ; $60d2: $00
    nop                                           ; $60d3: $00
    sub a                                         ; $60d4: $97
    ld l, b                                       ; $60d5: $68
    ld e, c                                       ; $60d6: $59
    ldh [$ee], a                                  ; $60d7: $e0 $ee
    nop                                           ; $60d9: $00
    db $fd                                        ; $60da: $fd
    add d                                         ; $60db: $82
    sbc d                                         ; $60dc: $9a
    ld b, $77                                     ; $60dd: $06 $77
    nop                                           ; $60df: $00
    xor d                                         ; $60e0: $aa
    ld d, l                                       ; $60e1: $55
    db $dd                                        ; $60e2: $dd
    or h                                          ; $60e3: $b4
    dec b                                         ; $60e4: $05
    db $fd                                        ; $60e5: $fd
    nop                                           ; $60e6: $00
    ld [bc], a                                    ; $60e7: $02
    cp c                                          ; $60e8: $b9
    nop                                           ; $60e9: $00
    ld d, l                                       ; $60ea: $55
    add d                                         ; $60eb: $82
    ld c, h                                       ; $60ec: $4c
    jr nc, jr_0a6_6095                            ; $60ed: $30 $a6

    nop                                           ; $60ef: $00
    ld b, c                                       ; $60f0: $41
    adc [hl]                                      ; $60f1: $8e
    rst $38                                       ; $60f2: $ff
    and [hl]                                      ; $60f3: $a6
    nop                                           ; $60f4: $00
    ld c, c                                       ; $60f5: $49
    inc [hl]                                      ; $60f6: $34
    inc bc                                        ; $60f7: $03
    nop                                           ; $60f8: $00
    ldh a, [$75]                                  ; $60f9: $f0 $75
    rst $38                                       ; $60fb: $ff

jr_0a6_60fc:
    di                                            ; $60fc: $f3
    inc c                                         ; $60fd: $0c
    xor [hl]                                      ; $60fe: $ae
    inc b                                         ; $60ff: $04
    sbc d                                         ; $6100: $9a
    nop                                           ; $6101: $00
    ld h, l                                       ; $6102: $65
    ld e, a                                       ; $6103: $5f
    inc b                                         ; $6104: $04
    jr z, @+$01                                   ; $6105: $28 $ff

    ld l, d                                       ; $6107: $6a
    add c                                         ; $6108: $81
    sub l                                         ; $6109: $95
    stop                                          ; $610a: $10 $00
    db $eb                                        ; $610c: $eb
    ld d, l                                       ; $610d: $55
    jr nc, jr_0a6_6118                            ; $610e: $30 $08

    db $fd                                        ; $6110: $fd
    nop                                           ; $6111: $00
    cp [hl]                                       ; $6112: $be
    ld bc, $d520                                  ; $6113: $01 $20 $d5
    xor d                                         ; $6116: $aa
    db $f4                                        ; $6117: $f4

jr_0a6_6118:
    ld b, $88                                     ; $6118: $06 $88
    ld d, b                                       ; $611a: $50
    rst $38                                       ; $611b: $ff
    ld d, [hl]                                    ; $611c: $56
    ld bc, $4e00                                  ; $611d: $01 $00 $4e
    or e                                          ; $6120: $b3
    cp b                                          ; $6121: $b8
    rlca                                          ; $6122: $07
    ld c, [hl]                                    ; $6123: $4e
    add e                                         ; $6124: $83
    ld d, b                                       ; $6125: $50
    rst $38                                       ; $6126: $ff
    nop                                           ; $6127: $00
    or $43                                        ; $6128: $f6 $43
    xor d                                         ; $612a: $aa
    ld b, e                                       ; $612b: $43
    ldh a, [rIF]                                  ; $612c: $f0 $0f
    or d                                          ; $612e: $b2
    nop                                           ; $612f: $00
    ld d, $48                                     ; $6130: $16 $48
    nop                                           ; $6132: $00
    jr nz, jr_0a6_60cc                            ; $6133: $20 $97

    daa                                           ; $6135: $27
    add b                                         ; $6136: $80
    ldh [rTIMA], a                                ; $6137: $e0 $05
    ret nz                                        ; $6139: $c0

    cpl                                           ; $613a: $2f
    push de                                       ; $613b: $d5
    inc bc                                        ; $613c: $03
    ld a, [hl+]                                   ; $613d: $2a
    xor e                                         ; $613e: $ab
    ld d, h                                       ; $613f: $54
    push de                                       ; $6140: $d5
    ld a, [hl+]                                   ; $6141: $2a
    cp a                                          ; $6142: $bf
    jr nz, @+$18                                  ; $6143: $20 $16

    call c, Call_0a6_4804                         ; $6145: $dc $04 $48
    nop                                           ; $6148: $00
    ld h, h                                       ; $6149: $64
    inc bc                                        ; $614a: $03
    ld d, c                                       ; $614b: $51
    ld a, a                                       ; $614c: $7f
    call c, $f501                                 ; $614d: $dc $01 $f5
    adc d                                         ; $6150: $8a
    db $eb                                        ; $6151: $eb
    jr jr_0a6_6199                                ; $6152: $18 $45

    ld [hl], l                                    ; $6154: $75
    and d                                         ; $6155: $a2
    ldh a, [rSB]                                  ; $6156: $f0 $01
    jr nz, jr_0a6_6170                            ; $6158: $20 $16

    ld a, [$5505]                                 ; $615a: $fa $05 $55
    nop                                           ; $615d: $00
    xor d                                         ; $615e: $aa
    ei                                            ; $615f: $fb
    inc b                                         ; $6160: $04
    ld e, a                                       ; $6161: $5f
    and b                                         ; $6162: $a0
    db $eb                                        ; $6163: $eb
    ld de, $2257                                  ; $6164: $11 $57 $22
    and d                                         ; $6167: $a2
    xor a                                         ; $6168: $af
    jr nc, @+$09                                  ; $6169: $30 $07

    ld a, [$5705]                                 ; $616b: $fa $05 $57
    ld hl, sp+$07                                 ; $616e: $f8 $07

jr_0a6_6170:
    push de                                       ; $6170: $d5
    jp $3710                                      ; $6171: $c3 $10 $37


    ldh a, [$0e]                                  ; $6174: $f0 $0e
    rst $38                                       ; $6176: $ff
    db $10                                        ; $6177: $10
    ld d, l                                       ; $6178: $55
    ld a, [hl+]                                   ; $6179: $2a
    jr jr_0a6_617f                                ; $617a: $18 $03

    ldh a, [rNR21]                                ; $617c: $f0 $16
    ret nz                                        ; $617e: $c0

jr_0a6_617f:
    jp z, Jump_000_040e                           ; $617f: $ca $0e $04

    db $10                                        ; $6182: $10
    sub b                                         ; $6183: $90
    rst $38                                       ; $6184: $ff
    jr c, @+$01                                   ; $6185: $38 $ff

    sbc h                                         ; $6187: $9c
    rst $38                                       ; $6188: $ff
    ld [hl], a                                    ; $6189: $77
    ld a, [hl]                                    ; $618a: $7e
    xor [hl]                                      ; $618b: $ae
    ld b, $f0                                     ; $618c: $06 $f0
    ld d, e                                       ; $618e: $53
    ld c, h                                       ; $618f: $4c
    dec b                                         ; $6190: $05
    dec hl                                        ; $6191: $2b
    ld h, c                                       ; $6192: $61
    inc b                                         ; $6193: $04
    di                                            ; $6194: $f3
    add hl, bc                                    ; $6195: $09
    xor e                                         ; $6196: $ab
    dec d                                         ; $6197: $15
    and b                                         ; $6198: $a0

jr_0a6_6199:
    ldh [rSCX], a                                 ; $6199: $e0 $43
    ld a, [bc]                                    ; $619b: $0a
    ret c                                         ; $619c: $d8

    inc bc                                        ; $619d: $03
    add b                                         ; $619e: $80
    cp $d5                                        ; $619f: $fe $d5
    ld e, l                                       ; $61a1: $5d
    add d                                         ; $61a2: $82
    nop                                           ; $61a3: $00
    cp d                                          ; $61a4: $ba
    add b                                         ; $61a5: $80
    ld a, l                                       ; $61a6: $7d
    add d                                         ; $61a7: $82
    rst $28                                       ; $61a8: $ef
    sub b                                         ; $61a9: $90
    ld d, l                                       ; $61aa: $55
    xor d                                         ; $61ab: $aa
    nop                                           ; $61ac: $00

jr_0a6_61ad:
    db $eb                                        ; $61ad: $eb
    add h                                         ; $61ae: $84
    ld a, a                                       ; $61af: $7f
    add b                                         ; $61b0: $80
    ld [$f555], a                                 ; $61b1: $ea $55 $f5
    nop                                           ; $61b4: $00
    inc b                                         ; $61b5: $04
    cp $01                                        ; $61b6: $fe $01
    ld [hl], l                                    ; $61b8: $75
    adc b                                         ; $61b9: $88
    xor a                                         ; $61ba: $af
    cp h                                          ; $61bb: $bc
    ld bc, $00bf                                  ; $61bc: $01 $bf $00
    nop                                           ; $61bf: $00
    push de                                       ; $61c0: $d5
    jr nz, jr_0a6_61ad                            ; $61c1: $20 $ea

    add l                                         ; $61c3: $85
    dec h                                         ; $61c4: $25
    sbc b                                         ; $61c5: $98
    ld [c], a                                     ; $61c6: $e2
    rst $38                                       ; $61c7: $ff
    nop                                           ; $61c8: $00
    ld l, e                                       ; $61c9: $6b
    add b                                         ; $61ca: $80
    db $dd                                        ; $61cb: $dd
    add b                                         ; $61cc: $80
    inc de                                        ; $61cd: $13
    ldh [$aa], a                                  ; $61ce: $e0 $aa
    rst $38                                       ; $61d0: $ff
    inc h                                         ; $61d1: $24
    ld e, [hl]                                    ; $61d2: $5e
    add b                                         ; $61d3: $80
    sub b                                         ; $61d4: $90
    nop                                           ; $61d5: $00
    jr nz, @-$50                                  ; $61d6: $20 $ae

    cp b                                          ; $61d8: $b8
    ld bc, $54bb                                  ; $61d9: $01 $bb $54
    ld [bc], a                                    ; $61dc: $02
    db $fd                                        ; $61dd: $fd
    nop                                           ; $61de: $00
    cp e                                          ; $61df: $bb
    ld d, l                                       ; $61e0: $55
    push de                                       ; $61e1: $d5
    jr z, jr_0a6_6244                             ; $61e2: $28 $60

    dec de                                        ; $61e4: $1b
    push de                                       ; $61e5: $d5
    jr jr_0a6_620a                                ; $61e6: $18 $22

    cp d                                          ; $61e8: $ba
    ld d, l                                       ; $61e9: $55
    ldh [rTMA], a                                 ; $61ea: $e0 $06
    and d                                         ; $61ec: $a2
    dec b                                         ; $61ed: $05
    xor e                                         ; $61ee: $ab
    sub b                                         ; $61ef: $90
    ld e, l                                       ; $61f0: $5d
    nop                                           ; $61f1: $00
    add d                                         ; $61f2: $82
    ei                                            ; $61f3: $fb
    push de                                       ; $61f4: $d5
    ld [hl], a                                    ; $61f5: $77
    add b                                         ; $61f6: $80
    xor a                                         ; $61f7: $af
    sub b                                         ; $61f8: $90
    ld d, l                                       ; $61f9: $55
    nop                                           ; $61fa: $00
    xor b                                         ; $61fb: $a8
    xor a                                         ; $61fc: $af
    add b                                         ; $61fd: $80
    ld d, a                                       ; $61fe: $57
    xor d                                         ; $61ff: $aa
    dec l                                         ; $6200: $2d
    ld [bc], a                                    ; $6201: $02
    ld l, c                                       ; $6202: $69
    nop                                           ; $6203: $00
    sub b                                         ; $6204: $90
    ld [hl+], a                                   ; $6205: $22
    rst $38                                       ; $6206: $ff
    rlc h                                         ; $6207: $cb $04
    sbc [hl]                                      ; $6209: $9e

jr_0a6_620a:
    ld h, l                                       ; $620a: $65
    ld e, [hl]                                    ; $620b: $5e
    dec b                                         ; $620c: $05
    inc b                                         ; $620d: $04
    inc hl                                        ; $620e: $23
    call nz, $ff4a                                ; $620f: $c4 $4a $ff
    jr nc, jr_0a6_6238                            ; $6212: $30 $24

    jr nz, jr_0a6_6216                            ; $6214: $20 $00

jr_0a6_6216:
    cpl                                           ; $6216: $2f
    ld h, l                                       ; $6217: $65
    ld a, [$0214]                                 ; $6218: $fa $14 $02
    ld b, b                                       ; $621b: $40
    ld c, d                                       ; $621c: $4a
    xor $41                                       ; $621d: $ee $41
    ld b, b                                       ; $621f: $40
    ld e, d                                       ; $6220: $5a

jr_0a6_6221:
    cp d                                          ; $6221: $ba
    sub b                                         ; $6222: $90
    nop                                           ; $6223: $00
    jr nz, jr_0a6_6221                            ; $6224: $20 $fb

    ld b, h                                       ; $6226: $44
    ld [hl], b                                    ; $6227: $70
    ld bc, $dd41                                  ; $6228: $01 $41 $dd
    xor d                                         ; $622b: $aa
    cp d                                          ; $622c: $ba
    ld b, b                                       ; $622d: $40
    nop                                           ; $622e: $00
    ld d, l                                       ; $622f: $55
    ld [bc], a                                    ; $6230: $02
    sub h                                         ; $6231: $94
    rst $38                                       ; $6232: $ff
    ld [hl-], a                                   ; $6233: $32
    ret nz                                        ; $6234: $c0

    ld c, c                                       ; $6235: $49
    ld b, $00                                     ; $6236: $06 $00

jr_0a6_6238:
    and h                                         ; $6238: $a4
    jr jr_0a6_62a9                                ; $6239: $18 $6e

    add c                                         ; $623b: $81
    dec h                                         ; $623c: $25
    rst $38                                       ; $623d: $ff
    sub [hl]                                      ; $623e: $96
    ld [$4200], sp                                ; $623f: $08 $00 $42
    cp l                                          ; $6242: $bd
    sub h                                         ; $6243: $94

jr_0a6_6244:
    rst $38                                       ; $6244: $ff
    or h                                          ; $6245: $b4
    rrca                                          ; $6246: $0f
    ld d, b                                       ; $6247: $50
    rlca                                          ; $6248: $07
    nop                                           ; $6249: $00
    db $ec                                        ; $624a: $ec
    rla                                           ; $624b: $17
    ld e, b                                       ; $624c: $58
    xor a                                         ; $624d: $af
    ld [hl-], a                                   ; $624e: $32
    db $fd                                        ; $624f: $fd
    and h                                         ; $6250: $a4
    dec sp                                        ; $6251: $3b
    inc e                                         ; $6252: $1c
    adc d                                         ; $6253: $8a
    push af                                       ; $6254: $f5
    add b                                         ; $6255: $80
    db $ec                                        ; $6256: $ec
    dec b                                         ; $6257: $05
    inc b                                         ; $6258: $04
    jr z, jr_0a6_6221                             ; $6259: $28 $c6

    rrca                                          ; $625b: $0f
    and [hl]                                      ; $625c: $a6
    ld e, b                                       ; $625d: $58
    nop                                           ; $625e: $00
    rlc b                                         ; $625f: $cb $00
    inc l                                         ; $6261: $2c
    rst $38                                       ; $6262: $ff
    ld a, [hl+]                                   ; $6263: $2a
    ret nz                                        ; $6264: $c0

jr_0a6_6265:
    inc [hl]                                      ; $6265: $34

jr_0a6_6266:
    dec bc                                        ; $6266: $0b
    nop                                           ; $6267: $00
    ld d, [hl]                                    ; $6268: $56
    add b                                         ; $6269: $80
    adc c                                         ; $626a: $89
    rst $38                                       ; $626b: $ff
    db $dd                                        ; $626c: $dd
    ld [bc], a                                    ; $626d: $02
    cp a                                          ; $626e: $bf
    ld bc, $d600                                  ; $626f: $01 $00 $d6
    dec hl                                        ; $6272: $2b
    xor l                                         ; $6273: $ad
    ld d, [hl]                                    ; $6274: $56
    ld e, [hl]                                    ; $6275: $5e
    inc h                                         ; $6276: $24
    db $ed                                        ; $6277: $ed
    ld [$5a00], sp                                ; $6278: $08 $00 $5a
    jr z, jr_0a6_6265                             ; $627b: $28 $e8

    ld e, b                                       ; $627d: $58
    ld l, h                                       ; $627e: $6c
    jr jr_0a6_62d6                                ; $627f: $18 $55

    xor e                                         ; $6281: $ab
    nop                                           ; $6282: $00
    cp a                                          ; $6283: $bf
    ld b, c                                       ; $6284: $41
    db $f4                                        ; $6285: $f4
    inc bc                                        ; $6286: $03
    db $eb                                        ; $6287: $eb
    nop                                           ; $6288: $00
    dec b                                         ; $6289: $05
    ld [bc], a                                    ; $628a: $02
    ld bc, $000e                                  ; $628b: $01 $0e $00
    inc e                                         ; $628e: $1c
    ld [bc], a                                    ; $628f: $02
    ld a, [hl+]                                   ; $6290: $2a
    inc b                                         ; $6291: $04
    add a                                         ; $6292: $87
    ld a, [bc]                                    ; $6293: $0a
    ld [bc], a                                    ; $6294: $02
    ld [bc], a                                    ; $6295: $02
    ld a, [de]                                    ; $6296: $1a
    rlca                                          ; $6297: $07
    dec b                                         ; $6298: $05
    ld [bc], a                                    ; $6299: $02
    rlca                                          ; $629a: $07
    ld [bc], a                                    ; $629b: $02
    inc b                                         ; $629c: $04
    ld [$0007], sp                                ; $629d: $08 $07 $00
    ld [bc], a                                    ; $62a0: $02
    ld a, e                                       ; $62a1: $7b
    add d                                         ; $62a2: $82
    xor l                                         ; $62a3: $ad
    ld [bc], a                                    ; $62a4: $02
    ld h, d                                       ; $62a5: $62
    rst $38                                       ; $62a6: $ff
    push de                                       ; $62a7: $d5
    nop                                           ; $62a8: $00

jr_0a6_62a9:
    nop                                           ; $62a9: $00
    ld l, d                                       ; $62aa: $6a
    sub h                                         ; $62ab: $94
    ld b, l                                       ; $62ac: $45
    nop                                           ; $62ad: $00
    xor e                                         ; $62ae: $ab
    ld d, b                                       ; $62af: $50
    add hl, hl                                    ; $62b0: $29
    nop                                           ; $62b1: $00
    rst $38                                       ; $62b2: $ff
    inc h                                         ; $62b3: $24
    call c, $1cc4                                 ; $62b4: $dc $c4 $1c
    ret nz                                        ; $62b7: $c0

    db $fc                                        ; $62b8: $fc
    cp c                                          ; $62b9: $b9
    nop                                           ; $62ba: $00
    inc c                                         ; $62bb: $0c
    ld b, a                                       ; $62bc: $47
    jr jr_0a6_6266                                ; $62bd: $18 $a7

    ld e, b                                       ; $62bf: $58
    ld c, l                                       ; $62c0: $4d
    ld [hl-], a                                   ; $62c1: $32
    inc [hl]                                      ; $62c2: $34
    nop                                           ; $62c3: $00
    ret z                                         ; $62c4: $c8

    ld e, b                                       ; $62c5: $58
    inc b                                         ; $62c6: $04
    inc [hl]                                      ; $62c7: $34
    ld [$1068], sp                                ; $62c8: $08 $68 $10
    ret c                                         ; $62cb: $d8

    nop                                           ; $62cc: $00
    jr nz, @-$5c                                  ; $62cd: $20 $a2

    ld d, b                                       ; $62cf: $50
    ld d, l                                       ; $62d0: $55
    and b                                         ; $62d1: $a0
    ld a, [hl+]                                   ; $62d2: $2a
    ld b, b                                       ; $62d3: $40
    ld b, h                                       ; $62d4: $44
    inc b                                         ; $62d5: $04

jr_0a6_62d6:
    add b                                         ; $62d6: $80
    ld b, $02                                     ; $62d7: $06 $02
    inc c                                         ; $62d9: $0c
    ld [bc], a                                    ; $62da: $02
    inc b                                         ; $62db: $04
    jr jr_0a6_630a                                ; $62dc: $18 $2c

    ld [bc], a                                    ; $62de: $02
    ld bc, $025c                                  ; $62df: $01 $5c $02
    adc h                                         ; $62e2: $8c
    ld [bc], a                                    ; $62e3: $02
    ld [hl], c                                    ; $62e4: $71
    add b                                         ; $62e5: $80

jr_0a6_62e6:
    ld e, e                                       ; $62e6: $5b
    ret nz                                        ; $62e7: $c0

    ld d, d                                       ; $62e8: $52
    nop                                           ; $62e9: $00
    ret nz                                        ; $62ea: $c0

    add c                                         ; $62eb: $81
    and b                                         ; $62ec: $a0
    ret nz                                        ; $62ed: $c0

    ld c, d                                       ; $62ee: $4a
    db $f4                                        ; $62ef: $f4
    rst $38                                       ; $62f0: $ff
    ccf                                           ; $62f1: $3f
    inc d                                         ; $62f2: $14
    ldh [$1f], a                                  ; $62f3: $e0 $1f
    ld a, e                                       ; $62f5: $7b
    ret nz                                        ; $62f6: $c0

    ld [de], a                                    ; $62f7: $12
    adc b                                         ; $62f8: $88
    dec b                                         ; $62f9: $05
    rlca                                          ; $62fa: $07
    ret nz                                        ; $62fb: $c0

    nop                                           ; $62fc: $00
    nop                                           ; $62fd: $00
    db $fc                                        ; $62fe: $fc
    ldh a, [rIF]                                  ; $62ff: $f0 $0f
    db $fc                                        ; $6301: $fc
    inc bc                                        ; $6302: $03
    rst $38                                       ; $6303: $ff
    ldh a, [rIF]                                  ; $6304: $f0 $0f
    nop                                           ; $6306: $00
    ld [hl+], a                                   ; $6307: $22
    rst $38                                       ; $6308: $ff
    inc e                                         ; $6309: $1c

jr_0a6_630a:
    ld [bc], a                                    ; $630a: $02
    ld a, [bc]                                    ; $630b: $0a
    inc b                                         ; $630c: $04
    ld a, [de]                                    ; $630d: $1a
    inc b                                         ; $630e: $04
    nop                                           ; $630f: $00
    xor [hl]                                      ; $6310: $ae
    nop                                           ; $6311: $00
    ld e, d                                       ; $6312: $5a
    inc b                                         ; $6313: $04
    cp [hl]                                       ; $6314: $be
    nop                                           ; $6315: $00
    or h                                          ; $6316: $b4
    ret z                                         ; $6317: $c8

    jr nc, jr_0a6_62e6                            ; $6318: $30 $cc

    ldh a, [$f8]                                  ; $631a: $f0 $f8
    ld bc, $21e2                                  ; $631c: $01 $e2 $21
    ld d, l                                       ; $631f: $55
    ld a, [bc]                                    ; $6320: $0a
    rst $28                                       ; $6321: $ef
    stop                                          ; $6322: $10 $00
    ld d, a                                       ; $6324: $57
    ld a, [hl+]                                   ; $6325: $2a
    rst $38                                       ; $6326: $ff
    cp a                                          ; $6327: $bf
    ld a, [$fa0f]                                 ; $6328: $fa $0f $fa
    adc a                                         ; $632b: $8f
    ld bc, $0ff9                                  ; $632c: $01 $f9 $0f
    ld sp, hl                                     ; $632f: $f9
    adc a                                         ; $6330: $8f
    db $fc                                        ; $6331: $fc
    rrca                                          ; $6332: $0f
    ld hl, sp+$04                                 ; $6333: $f8 $04
    nop                                           ; $6335: $00

jr_0a6_6336:
    adc b                                         ; $6336: $88
    cp $09                                        ; $6337: $fe $09
    ld a, a                                       ; $6339: $7f
    ldh [$1f], a                                  ; $633a: $e0 $1f
    dec b                                         ; $633c: $05
    ld [de], a                                    ; $633d: $12
    ld d, h                                       ; $633e: $54
    rst $38                                       ; $633f: $ff
    ld a, [hl-]                                   ; $6340: $3a
    nop                                           ; $6341: $00
    rst $38                                       ; $6342: $ff
    rst $38                                       ; $6343: $ff
    rlca                                          ; $6344: $07
    ei                                            ; $6345: $fb
    rra                                           ; $6346: $1f
    db $e3                                        ; $6347: $e3
    ld a, a                                       ; $6348: $7f
    add a                                         ; $6349: $87
    nop                                           ; $634a: $00
    db $fd                                        ; $634b: $fd
    rlca                                          ; $634c: $07
    db $fd                                        ; $634d: $fd
    rrca                                          ; $634e: $0f
    ld sp, hl                                     ; $634f: $f9
    ld e, a                                       ; $6350: $5f
    pop af                                        ; $6351: $f1
    cp a                                          ; $6352: $bf
    jr c, jr_0a6_6336                             ; $6353: $38 $e1

    xor a                                         ; $6355: $af
    ret nz                                        ; $6356: $c0

    inc bc                                        ; $6357: $03
    sub d                                         ; $6358: $92
    dec b                                         ; $6359: $05
    adc h                                         ; $635a: $8c
    inc bc                                        ; $635b: $03
    ld e, l                                       ; $635c: $5d
    ld a, [hl+]                                   ; $635d: $2a
    rst $28                                       ; $635e: $ef
    add c                                         ; $635f: $81
    ld h, b                                       ; $6360: $60
    dec b                                         ; $6361: $05
    cp $87                                        ; $6362: $fe $87
    db $fd                                        ; $6364: $fd
    ld b, a                                       ; $6365: $47
    cp $83                                        ; $6366: $fe $83
    sub d                                         ; $6368: $92
    rlca                                          ; $6369: $07
    dec d                                         ; $636a: $15
    and b                                         ; $636b: $a0
    rst $38                                       ; $636c: $ff
    ld d, b                                       ; $636d: $50
    ld de, $0f0c                                  ; $636e: $11 $0c $0f
    ld c, $04                                     ; $6371: $0e $04
    add b                                         ; $6373: $80
    dec bc                                        ; $6374: $0b
    nop                                           ; $6375: $00
    add hl, bc                                    ; $6376: $09
    ld [$ffff], a                                 ; $6377: $ea $ff $ff
    ccf                                           ; $637a: $3f
    and b                                         ; $637b: $a0
    ld c, $ff                                     ; $637c: $0e $ff
    pop bc                                        ; $637e: $c1
    pop de                                        ; $637f: $d1
    rlca                                          ; $6380: $07
    db $10                                        ; $6381: $10
    pop bc                                        ; $6382: $c1
    ccf                                           ; $6383: $3f
    pop af                                        ; $6384: $f1
    ld [$0110], sp                                ; $6385: $08 $10 $01
    rst $38                                       ; $6388: $ff
    rst $38                                       ; $6389: $ff
    db $eb                                        ; $638a: $eb
    ld b, c                                       ; $638b: $41
    ld d, h                                       ; $638c: $54
    db $10                                        ; $638d: $10
    dec l                                         ; $638e: $2d
    rst $18                                       ; $638f: $df
    and b                                         ; $6390: $a0
    cp a                                          ; $6391: $bf
    ld d, b                                       ; $6392: $50
    ld e, l                                       ; $6393: $5d
    ld h, c                                       ; $6394: $61
    inc bc                                        ; $6395: $03

jr_0a6_6396:
    ld b, b                                       ; $6396: $40
    db $dd                                        ; $6397: $dd
    or b                                          ; $6398: $b0
    inc c                                         ; $6399: $0c
    and d                                         ; $639a: $a2
    xor d                                         ; $639b: $aa
    ld d, h                                       ; $639c: $54
    push de                                       ; $639d: $d5
    ld [hl+], a                                   ; $639e: $22
    xor e                                         ; $639f: $ab
    ld [bc], a                                    ; $63a0: $02
    ld d, h                                       ; $63a1: $54
    push af                                       ; $63a2: $f5
    and d                                         ; $63a3: $a2
    rst $38                                       ; $63a4: $ff
    nop                                           ; $63a5: $00
    ld e, a                                       ; $63a6: $5f
    jr nz, jr_0a6_63ad                            ; $63a7: $20 $04

    push de                                       ; $63a9: $d5
    nop                                           ; $63aa: $00
    ld a, [hl+]                                   ; $63ab: $2a
    xor [hl]                                      ; $63ac: $ae

jr_0a6_63ad:
    ld d, l                                       ; $63ad: $55
    db $fd                                        ; $63ae: $fd
    add b                                         ; $63af: $80
    ld a, [$ff44]                                 ; $63b0: $fa $44 $ff
    ld h, h                                       ; $63b3: $64
    adc b                                         ; $63b4: $88
    cp $05                                        ; $63b5: $fe $05
    ld c, b                                       ; $63b7: $48
    ld c, $80                                     ; $63b8: $0e $80
    cp a                                          ; $63ba: $bf
    jr nc, jr_0a6_63c3                            ; $63bb: $30 $06

    ld a, [$8004]                                 ; $63bd: $fa $04 $80
    ld b, h                                       ; $63c0: $44
    ld d, $20                                     ; $63c1: $16 $20

jr_0a6_63c3:
    ld a, [$d505]                                 ; $63c3: $fa $05 $d5
    ld a, [hl+]                                   ; $63c6: $2a

jr_0a6_63c7:
    ld a, [$e004]                                 ; $63c7: $fa $04 $e0
    xor [hl]                                      ; $63ca: $ae
    ld c, $60                                     ; $63cb: $0e $60
    inc bc                                        ; $63cd: $03
    db $10                                        ; $63ce: $10
    ld d, h                                       ; $63cf: $54
    ld e, l                                       ; $63d0: $5d
    add b                                         ; $63d1: $80
    xor $05                                       ; $63d2: $ee $05
    db $fd                                        ; $63d4: $fd
    nop                                           ; $63d5: $00
    ld [$10fa], sp                                ; $63d6: $08 $fa $10
    push de                                       ; $63d9: $d5
    jr nz, jr_0a6_6396                            ; $63da: $20 $ba

    ld d, b                                       ; $63dc: $50
    rst $30                                       ; $63dd: $f7
    jr nz, jr_0a6_63e0                            ; $63de: $20 $00

jr_0a6_63e0:
    cp $e2                                        ; $63e0: $fe $e2
    rlca                                          ; $63e2: $07
    ret nz                                        ; $63e3: $c0

    add b                                         ; $63e4: $80
    xor d                                         ; $63e5: $aa
    push de                                       ; $63e6: $d5
    add b                                         ; $63e7: $80
    cpl                                           ; $63e8: $2f
    rst $38                                       ; $63e9: $ff
    add d                                         ; $63ea: $82
    pop af                                        ; $63eb: $f1
    dec b                                         ; $63ec: $05
    sub h                                         ; $63ed: $94
    push hl                                       ; $63ee: $e5
    rlca                                          ; $63ef: $07
    adc a                                         ; $63f0: $8f
    inc b                                         ; $63f1: $04
    sbc d                                         ; $63f2: $9a
    inc bc                                        ; $63f3: $03
    pop bc                                        ; $63f4: $c1
    ld c, $41                                     ; $63f5: $0e $41
    add d                                         ; $63f7: $82
    and d                                         ; $63f8: $a2
    inc b                                         ; $63f9: $04
    xor b                                         ; $63fa: $a8
    rst $38                                       ; $63fb: $ff
    ld [hl], l                                    ; $63fc: $75
    rst $38                                       ; $63fd: $ff
    ld [$52c0], a                                 ; $63fe: $ea $c0 $52
    ret nz                                        ; $6401: $c0

    ret nz                                        ; $6402: $c0

    dec b                                         ; $6403: $05
    jr nc, jr_0a6_6431                            ; $6404: $30 $2b

    db $10                                        ; $6406: $10
    ld d, a                                       ; $6407: $57
    and b                                         ; $6408: $a0
    xor a                                         ; $6409: $af
    inc b                                         ; $640a: $04
    ld [hl], a                                    ; $640b: $77
    ld e, b                                       ; $640c: $58
    xor b                                         ; $640d: $a8
    ldh [$5b], a                                  ; $640e: $e0 $5b
    ld e, l                                       ; $6410: $5d
    add b                                         ; $6411: $80
    dec b                                         ; $6412: $05
    ldh [$5b], a                                  ; $6413: $e0 $5b
    inc l                                         ; $6415: $2c
    ldh a, [rNR34]                                ; $6416: $f0 $1e
    nop                                           ; $6418: $00
    ldh a, [$d6]                                  ; $6419: $f0 $d6
    jr c, jr_0a6_63c7                             ; $641b: $38 $aa

    ld e, l                                       ; $641d: $5d
    adc a                                         ; $641e: $8f
    rst $38                                       ; $641f: $ff
    and b                                         ; $6420: $a0
    inc c                                         ; $6421: $0c

jr_0a6_6422:
    rrca                                          ; $6422: $0f
    ld c, e                                       ; $6423: $4b
    inc [hl]                                      ; $6424: $34
    rst $10                                       ; $6425: $d7
    xor b                                         ; $6426: $a8
    inc bc                                        ; $6427: $03
    ld e, $1d                                     ; $6428: $1e $1d
    jr nz, @+$01                                  ; $642a: $20 $ff

    rlca                                          ; $642c: $07
    inc d                                         ; $642d: $14
    rst $38                                       ; $642e: $ff
    ld a, [hl+]                                   ; $642f: $2a
    rst $38                                       ; $6430: $ff

jr_0a6_6431:
    ld [hl], a                                    ; $6431: $77
    ld [hl], b                                    ; $6432: $70
    jr nz, @+$4b                                  ; $6433: $20 $49

    ld b, $92                                     ; $6435: $06 $92
    rlca                                          ; $6437: $07
    sub $70                                       ; $6438: $d6 $70
    ld [$3820], sp                                ; $643a: $08 $20 $38
    sub h                                         ; $643d: $94
    jr nz, jr_0a6_6480                            ; $643e: $20 $40

    add h                                         ; $6440: $84
    pop bc                                        ; $6441: $c1
    inc bc                                        ; $6442: $03
    jr nz, jr_0a6_645d                            ; $6443: $20 $18

    xor e                                         ; $6445: $ab
    nop                                           ; $6446: $00
    dec d                                         ; $6447: $15
    push af                                       ; $6448: $f5
    ld a, [hl+]                                   ; $6449: $2a
    db $eb                                        ; $644a: $eb
    ld d, l                                       ; $644b: $55
    ld d, a                                       ; $644c: $57
    xor d                                         ; $644d: $aa
    ei                                            ; $644e: $fb
    dec e                                         ; $644f: $1d
    nop                                           ; $6450: $00
    ld e, l                                       ; $6451: $5d
    add d                                         ; $6452: $82
    db $fc                                        ; $6453: $fc
    ld c, $f0                                     ; $6454: $0e $f0
    dec sp                                        ; $6456: $3b
    ld d, b                                       ; $6457: $50
    rrca                                          ; $6458: $0f
    rst $30                                       ; $6459: $f7
    sub b                                         ; $645a: $90
    ld b, $80                                     ; $645b: $06 $80

jr_0a6_645d:
    cp h                                          ; $645d: $bc
    ld b, $10                                     ; $645e: $06 $10
    rst $10                                       ; $6460: $d7
    jr z, jr_0a6_6422                             ; $6461: $28 $bf

    ld b, b                                       ; $6463: $40
    ld d, a                                       ; $6464: $57
    jr nz, @+$0e                                  ; $6465: $20 $0c

    cp a                                          ; $6467: $bf
    ld b, b                                       ; $6468: $40
    ld e, a                                       ; $6469: $5f
    jr nz, @+$42                                  ; $646a: $20 $40

    rrca                                          ; $646c: $0f

jr_0a6_646d:
    ld [$2800], sp                                ; $646d: $08 $00 $28
    ei                                            ; $6470: $fb
    call z, Call_000_1020                         ; $6471: $cc $20 $10
    ld [hl], h                                    ; $6474: $74

jr_0a6_6475:
    rrca                                          ; $6475: $0f
    rst $38                                       ; $6476: $ff
    add b                                         ; $6477: $80
    cp b                                          ; $6478: $b8
    ld b, $74                                     ; $6479: $06 $74
    ld c, $08                                     ; $647b: $0e $08
    ld [$1500], a                                 ; $647d: $ea $00 $15

jr_0a6_6480:
    ld d, a                                       ; $6480: $57
    jr z, jr_0a6_646d                             ; $6481: $28 $ea

    inc b                                         ; $6483: $04
    rst $18                                       ; $6484: $df

jr_0a6_6485:
    jr z, jr_0a6_6475                             ; $6485: $28 $ee

    db $10                                        ; $6487: $10
    ld de, $0af5                                  ; $6488: $11 $f5 $0a
    inc b                                         ; $648b: $04
    jr jr_0a6_6485                                ; $648c: $18 $f7

    ld a, [bc]                                    ; $648e: $0a
    cp d                                          ; $648f: $ba
    ld bc, $df42                                  ; $6490: $01 $42 $df
    push de                                       ; $6493: $d5
    inc b                                         ; $6494: $04
    rst $10                                       ; $6495: $d7
    ld a, [bc]                                    ; $6496: $0a
    xor $04                                       ; $6497: $ee $04
    ld h, b                                       ; $6499: $60
    rra                                           ; $649a: $1f
    nop                                           ; $649b: $00
    ld [hl+], a                                   ; $649c: $22
    rst $38                                       ; $649d: $ff
    db $fd                                        ; $649e: $fd
    jr c, jr_0a6_64a6                             ; $649f: $38 $05

jr_0a6_64a1:
    ld d, a                                       ; $64a1: $57
    ld [$d6ee], sp                                ; $64a2: $08 $ee $d6
    rlca                                          ; $64a5: $07

jr_0a6_64a6:
    db $eb                                        ; $64a6: $eb
    nop                                           ; $64a7: $00
    inc b                                         ; $64a8: $04
    ld d, l                                       ; $64a9: $55
    xor d                                         ; $64aa: $aa
    ld bc, $5aff                                  ; $64ab: $01 $ff $5a
    dec b                                         ; $64ae: $05
    or l                                          ; $64af: $b5
    nop                                           ; $64b0: $00
    rst $38                                       ; $64b1: $ff
    ld l, b                                       ; $64b2: $68
    ld de, $d33d                                  ; $64b3: $11 $3d $d3
    or d                                          ; $64b6: $b2
    ld de, $006b                                  ; $64b7: $11 $6b $00
    dec d                                         ; $64ba: $15
    ret z                                         ; $64bb: $c8

    rst $38                                       ; $64bc: $ff
    cp c                                          ; $64bd: $b9
    ld b, b                                       ; $64be: $40
    inc l                                         ; $64bf: $2c
    inc bc                                        ; $64c0: $03
    xor e                                         ; $64c1: $ab
    nop                                           ; $64c2: $00
    ld d, b                                       ; $64c3: $50
    xor l                                         ; $64c4: $ad
    ld [bc], a                                    ; $64c5: $02
    ld a, [hl+]                                   ; $64c6: $2a
    rst $38                                       ; $64c7: $ff
    ld c, l                                       ; $64c8: $4d
    jr nc, jr_0a6_64a1                            ; $64c9: $30 $d6

    nop                                           ; $64cb: $00
    ld bc, $fe01                                  ; $64cc: $01 $01 $fe
    xor e                                         ; $64cf: $ab
    ld bc, $23dc                                  ; $64d0: $01 $dc $23
    xor e                                         ; $64d3: $ab
    jr nz, @+$43                                  ; $64d4: $20 $41

    sbc $c6                                       ; $64d6: $de $c6
    ld b, $de                                     ; $64d8: $06 $de

jr_0a6_64da:
    ld hl, $01ef                                  ; $64da: $21 $ef $01
    cp $00                                        ; $64dd: $fe $00
    ld bc, $01e6                                  ; $64df: $01 $e6 $01
    inc bc                                        ; $64e2: $03
    nop                                           ; $64e3: $00
    dec b                                         ; $64e4: $05
    nop                                           ; $64e5: $00
    add hl, bc                                    ; $64e6: $09
    jr nc, jr_0a6_64e9                            ; $64e7: $30 $00

jr_0a6_64e9:
    ld bc, $2002                                  ; $64e9: $01 $02 $20
    ld [hl], b                                    ; $64ec: $70
    dec b                                         ; $64ed: $05
    add b                                         ; $64ee: $80
    add hl, hl                                    ; $64ef: $29
    add [hl]                                      ; $64f0: $86
    ld a, $00                                     ; $64f1: $3e $00
    pop bc                                        ; $64f3: $c1
    ld d, [hl]                                    ; $64f4: $56
    ret nz                                        ; $64f5: $c0

    ld hl, $6eff                                  ; $64f6: $21 $ff $6e
    pop de                                        ; $64f9: $d1
    ld a, [hl-]                                   ; $64fa: $3a
    ld bc, $75d0                                  ; $64fb: $01 $d0 $75
    rst $38                                       ; $64fe: $ff
    ld a, [c]                                     ; $64ff: $f2
    dec c                                         ; $6500: $0d
    xor a                                         ; $6501: $af

jr_0a6_6502:
    dec b                                         ; $6502: $05
    ldh a, [rDIV]                                 ; $6503: $f0 $04
    ld [bc], a                                    ; $6505: $02
    dec b                                         ; $6506: $05
    jr z, @+$01                                   ; $6507: $28 $ff

    ld l, e                                       ; $6509: $6b
    add c                                         ; $650a: $81
    sub h                                         ; $650b: $94
    adc $07                                       ; $650c: $ce $07
    ld a, l                                       ; $650e: $7d
    nop                                           ; $650f: $00
    ld [$15fa], sp                                ; $6510: $08 $fa $15
    ld d, l                                       ; $6513: $55
    ld a, [hl+]                                   ; $6514: $2a
    ld [$df14], a                                 ; $6515: $ea $14 $df
    ld [hl-], a                                   ; $6518: $32
    jr nz, jr_0a6_64da                            ; $6519: $20 $bf

    ld c, b                                       ; $651b: $48
    ld [bc], a                                    ; $651c: $02
    inc e                                         ; $651d: $1c
    rlca                                          ; $651e: $07
    nop                                           ; $651f: $00
    xor d                                         ; $6520: $aa
    sub b                                         ; $6521: $90
    inc b                                         ; $6522: $04
    xor e                                         ; $6523: $ab
    cp l                                          ; $6524: $bd
    sub b                                         ; $6525: $90
    inc h                                         ; $6526: $24
    cp $66                                        ; $6527: $fe $66
    rlca                                          ; $6529: $07
    sub b                                         ; $652a: $90
    rrca                                          ; $652b: $0f
    inc b                                         ; $652c: $04
    db $10                                        ; $652d: $10
    jr nc, jr_0a6_653e                            ; $652e: $30 $0e

    ld b, b                                       ; $6530: $40
    jr nc, jr_0a6_655b                            ; $6531: $30 $28

    ld [bc], a                                    ; $6533: $02
    rst $10                                       ; $6534: $d7
    xor b                                         ; $6535: $a8
    xor a                                         ; $6536: $af
    db $10                                        ; $6537: $10
    rst $18                                       ; $6538: $df
    jr nz, @-$4e                                  ; $6539: $20 $b0

    ld c, c                                       ; $653b: $49
    cp [hl]                                       ; $653c: $be
    ld b, b                                       ; $653d: $40

jr_0a6_653e:
    ld b, c                                       ; $653e: $41
    call z, $f50e                                 ; $653f: $cc $0e $f5
    adc d                                         ; $6542: $8a
    rst $28                                       ; $6543: $ef
    ld b, b                                       ; $6544: $40
    ld [hl], l                                    ; $6545: $75
    and d                                         ; $6546: $a2
    jp nz, $042c                                  ; $6547: $c2 $2c $04

    ld c, h                                       ; $654a: $4c
    nop                                           ; $654b: $00
    ld e, a                                       ; $654c: $5f
    xor d                                         ; $654d: $aa
    xor a                                         ; $654e: $af
    nop                                           ; $654f: $00
    jr z, jr_0a6_6561                             ; $6550: $28 $0f

    ld e, l                                       ; $6552: $5d
    nop                                           ; $6553: $00
    xor d                                         ; $6554: $aa
    xor a                                         ; $6555: $af
    ld d, b                                       ; $6556: $50
    ld a, l                                       ; $6557: $7d
    add d                                         ; $6558: $82
    rst $38                                       ; $6559: $ff
    nop                                           ; $655a: $00

jr_0a6_655b:
    ld [hl], l                                    ; $655b: $75
    jr nz, @-$74                                  ; $655c: $20 $8a

    add b                                         ; $655e: $80

jr_0a6_655f:
    rst $08                                       ; $655f: $cf
    ld [bc], a                                    ; $6560: $02

jr_0a6_6561:
    add c                                         ; $6561: $81
    cp $81                                        ; $6562: $fe $81
    ld a, [hl]                                    ; $6564: $7e
    sub c                                         ; $6565: $91
    nop                                           ; $6566: $00
    cp $b8                                        ; $6567: $fe $b8
    ld a, a                                       ; $6569: $7f
    sbc h                                         ; $656a: $9c
    rst $38                                       ; $656b: $ff
    cp $7f                                        ; $656c: $fe $7f
    rrca                                          ; $656e: $0f
    nop                                           ; $656f: $00
    ldh a, [$03]                                  ; $6570: $f0 $03
    db $fc                                        ; $6572: $fc
    jp $e73c                                      ; $6573: $c3 $3c $e7


    jr jr_0a6_655f                                ; $6576: $18 $e7

    ld [bc], a                                    ; $6578: $02
    jr jr_0a6_6502                                ; $6579: $18 $87

    ld a, b                                       ; $657b: $78
    inc bc                                        ; $657c: $03
    db $fc                                        ; $657d: $fc
    nop                                           ; $657e: $00
    ld [hl], b                                    ; $657f: $70
    ld b, c                                       ; $6580: $41
    ld d, l                                       ; $6581: $55
    dec b                                         ; $6582: $05
    adc d                                         ; $6583: $8a
    ld [$ff15], a                                 ; $6584: $ea $15 $ff
    ld [bc], a                                    ; $6587: $02
    jr jr_0a6_6597                                ; $6588: $18 $0d

    ld a, [$07f8]                                 ; $658a: $fa $f8 $07
    inc e                                         ; $658d: $1c
    cp $01                                        ; $658e: $fe $01
    push de                                       ; $6590: $d5
    call nz, Call_000_2c07                        ; $6591: $c4 $07 $2c
    ld bc, $24e8                                  ; $6594: $01 $e8 $24

jr_0a6_6597:
    ld sp, hl                                     ; $6597: $f9
    rlca                                          ; $6598: $07
    inc h                                         ; $6599: $24
    sbc c                                         ; $659a: $99
    ld h, a                                       ; $659b: $67
    xor [hl]                                      ; $659c: $ae
    rrca                                          ; $659d: $0f
    xor a                                         ; $659e: $af
    inc b                                         ; $659f: $04
    call nz, Call_000_0407                        ; $65a0: $c4 $07 $04
    rst $18                                       ; $65a3: $df
    jr nc, jr_0a6_65a6                            ; $65a4: $30 $00

jr_0a6_65a6:
    rst $28                                       ; $65a6: $ef
    ld [$4006], sp                                ; $65a7: $08 $06 $40
    rrca                                          ; $65aa: $0f
    inc h                                         ; $65ab: $24
    db $db                                        ; $65ac: $db
    ld c, d                                       ; $65ad: $4a
    or l                                          ; $65ae: $b5
    nop                                           ; $65af: $00
    dec [hl]                                      ; $65b0: $35
    jp z, $a45b                                   ; $65b1: $ca $5b $a4

    ld [hl], a                                    ; $65b4: $77
    adc b                                         ; $65b5: $88
    ld e, a                                       ; $65b6: $5f
    and b                                         ; $65b7: $a0
    nop                                           ; $65b8: $00
    ld a, l                                       ; $65b9: $7d
    add d                                         ; $65ba: $82
    ld a, a                                       ; $65bb: $7f
    add b                                         ; $65bc: $80
    ld d, c                                       ; $65bd: $51
    xor a                                         ; $65be: $af
    and d                                         ; $65bf: $a2
    ld e, l                                       ; $65c0: $5d
    nop                                           ; $65c1: $00
    ld [hl], l                                    ; $65c2: $75
    adc e                                         ; $65c3: $8b
    ld [c], a                                     ; $65c4: $e2
    dec e                                         ; $65c5: $1d
    or l                                          ; $65c6: $b5
    ld c, e                                       ; $65c7: $4b
    ld l, d                                       ; $65c8: $6a
    sub l                                         ; $65c9: $95
    nop                                           ; $65ca: $00
    cp $01                                        ; $65cb: $fe $01
    sbc $21                                       ; $65cd: $de $21
    jp $e7ff                                      ; $65cf: $c3 $ff $e7


    rst $18                                       ; $65d2: $df
    or h                                          ; $65d3: $b4
    inc b                                         ; $65d4: $04
    ld c, b                                       ; $65d5: $48
    cp $34                                        ; $65d6: $fe $34
    ld bc, $a804                                  ; $65d8: $01 $04 $a8
    rst $38                                       ; $65db: $ff
    ld d, b                                       ; $65dc: $50
    ld bc, $906f                                  ; $65dd: $01 $6f $90
    nop                                           ; $65e0: $00
    ld [hl], a                                    ; $65e1: $77
    adc b                                         ; $65e2: $88
    ccf                                           ; $65e3: $3f
    ret nz                                        ; $65e4: $c0

    ld e, [hl]                                    ; $65e5: $5e
    and c                                         ; $65e6: $a1
    dec h                                         ; $65e7: $25
    jp c, Jump_000_0a10                           ; $65e8: $da $10 $0a

    push af                                       ; $65eb: $f5
    ld b, b                                       ; $65ec: $40
    ld h, d                                       ; $65ed: $62
    rlca                                          ; $65ee: $07
    ei                                            ; $65ef: $fb
    dec b                                         ; $65f0: $05
    cp [hl]                                       ; $65f1: $be
    ld b, c                                       ; $65f2: $41
    nop                                           ; $65f3: $00
    rst $28                                       ; $65f4: $ef
    ld de, $29d6                                  ; $65f5: $11 $d6 $29
    adc e                                         ; $65f8: $8b
    ld [hl], l                                    ; $65f9: $75
    ld b, $f9                                     ; $65fa: $06 $f9
    ld [hl], b                                    ; $65fc: $70
    ld b, c                                       ; $65fd: $41
    ld [hl], d                                    ; $65fe: $72
    rlca                                          ; $65ff: $07
    ld l, b                                       ; $6600: $68
    add hl, bc                                    ; $6601: $09
    ld bc, $0428                                  ; $6602: $01 $28 $04
    nop                                           ; $6605: $00
    ld [bc], a                                    ; $6606: $02
    nop                                           ; $6607: $00
    nop                                           ; $6608: $00
    ld l, d                                       ; $6609: $6a
    push de                                       ; $660a: $d5
    dec [hl]                                      ; $660b: $35
    ldh [rNR34], a                                ; $660c: $e0 $1e
    pop hl                                        ; $660e: $e1
    ld [hl], l                                    ; $660f: $75
    xor b                                         ; $6610: $a8
    nop                                           ; $6611: $00
    ld e, a                                       ; $6612: $5f
    or b                                          ; $6613: $b0
    ld l, l                                       ; $6614: $6d
    sbc d                                         ; $6615: $9a
    scf                                           ; $6616: $37
    call z, $a65b                                 ; $6617: $cc $5b $a6
    nop                                           ; $661a: $00
    cp e                                          ; $661b: $bb
    ld d, l                                       ; $661c: $55
    db $f4                                        ; $661d: $f4
    ld bc, $45fb                                  ; $661e: $01 $fb $45
    db $fc                                        ; $6621: $fc
    ld bc, $bf00                                  ; $6622: $01 $00 $bf
    ld b, c                                       ; $6625: $41
    call c, $bbab                                 ; $6626: $dc $ab $bb
    ld b, c                                       ; $6629: $41
    call nc, $0403                                ; $662a: $d4 $03 $04
    pop af                                        ; $662d: $f1
    nop                                           ; $662e: $00
    xor e                                         ; $662f: $ab
    ld d, h                                       ; $6630: $54
    pop hl                                        ; $6631: $e1
    sbc [hl]                                      ; $6632: $9e
    ld sp, $0000                                  ; $6633: $31 $00 $00
    nop                                           ; $6636: $00
    dec a                                         ; $6637: $3d
    jp $e31d                                      ; $6638: $c3 $1d $e3


    ld c, $f3                                     ; $663b: $0e $f3
    ld d, [hl]                                    ; $663d: $56
    xor e                                         ; $663e: $ab
    nop                                           ; $663f: $00
    ld c, h                                       ; $6640: $4c
    or a                                          ; $6641: $b7
    ld b, l                                       ; $6642: $45
    cp [hl]                                       ; $6643: $be
    ld l, c                                       ; $6644: $69
    sbc a                                         ; $6645: $9f
    inc sp                                        ; $6646: $33
    call c, $a700                                 ; $6647: $dc $00 $a7
    ld e, c                                       ; $664a: $59
    jp z, Jump_000_2d01                           ; $664b: $ca $01 $2d

    rst $38                                       ; $664e: $ff
    ld a, [hl+]                                   ; $664f: $2a
    pop bc                                        ; $6650: $c1
    nop                                           ; $6651: $00
    push af                                       ; $6652: $f5
    dec bc                                        ; $6653: $0b
    ld d, [hl]                                    ; $6654: $56
    add c                                         ; $6655: $81
    adc c                                         ; $6656: $89
    rst $38                                       ; $6657: $ff
    call c, $9003                                 ; $6658: $dc $03 $90
    ld e, l                                       ; $665b: $5d
    jr nc, jr_0a6_665e                            ; $665c: $30 $00

jr_0a6_665e:
    and l                                         ; $665e: $a5
    ld a, b                                       ; $665f: $78
    ld b, $a4                                     ; $6660: $06 $a4
    nop                                           ; $6662: $00
    dec a                                         ; $6663: $3d
    jp z, $1f00                                   ; $6664: $ca $00 $1f

    add sp, $2e                                   ; $6667: $e8 $2e
    rst $10                                       ; $6669: $d7
    sub a                                         ; $666a: $97
    ld l, h                                       ; $666b: $6c

jr_0a6_666c:
    adc [hl]                                      ; $666c: $8e
    ld a, l                                       ; $666d: $7d
    nop                                           ; $666e: $00
    ld c, $7c                                     ; $666f: $0e $7c
    db $d3                                        ; $6671: $d3
    inc a                                         ; $6672: $3c
    ld e, d                                       ; $6673: $5a
    ccf                                           ; $6674: $3f
    ld a, e                                       ; $6675: $7b
    add e                                         ; $6676: $83
    nop                                           ; $6677: $00
    xor h                                         ; $6678: $ac
    inc bc                                        ; $6679: $03
    ld h, e                                       ; $667a: $63
    rst $38                                       ; $667b: $ff
    call nc, Call_0a6_6b01                        ; $667c: $d4 $01 $6b
    sub l                                         ; $667f: $95
    ld bc, HeaderNewLicenseeCode                  ; $6680: $01 $44 $01
    xor e                                         ; $6683: $ab
    ld d, c                                       ; $6684: $51
    jr z, @+$01                                   ; $6685: $28 $ff

    ld c, b                                       ; $6687: $48
    ld sp, $8038                                  ; $6688: $31 $38 $80
    and h                                         ; $668b: $a4
    ld b, $01                                     ; $668c: $06 $01
    nop                                           ; $668e: $00
    ld c, $31                                     ; $668f: $0e $31
    ld h, a                                       ; $6691: $67
    jr jr_0a6_66ca                                ; $6692: $18 $36

    nop                                           ; $6694: $00
    dec c                                         ; $6695: $0d
    rra                                           ; $6696: $1f
    ld [$1c33], sp                                ; $6697: $08 $33 $1c
    ld h, a                                       ; $669a: $67
    jr c, jr_0a6_666c                             ; $669b: $38 $cf

    ld b, $70                                     ; $669d: $06 $70
    sbc l                                         ; $669f: $9d
    ld [$8171], a                                 ; $66a0: $ea $71 $81
    ld d, b                                       ; $66a3: $50
    ld e, d                                       ; $66a4: $5a
    ld l, b                                       ; $66a5: $68
    ld b, $28                                     ; $66a6: $06 $28
    inc b                                         ; $66a8: $04
    xor e                                         ; $66a9: $ab
    ld d, h                                       ; $66aa: $54
    ld a, l                                       ; $66ab: $7d
    xor d                                         ; $66ac: $aa
    rst $28                                       ; $66ad: $ef
    ld [hl], b                                    ; $66ae: $70
    ld bc, $14eb                                  ; $66af: $01 $eb $14
    nop                                           ; $66b2: $00
    ld d, a                                       ; $66b3: $57
    xor d                                         ; $66b4: $aa
    cp a                                          ; $66b5: $bf
    rst $38                                       ; $66b6: $ff
    adc a                                         ; $66b7: $8f
    ld a, d                                       ; $66b8: $7a
    adc a                                         ; $66b9: $8f
    ld a, [$8f00]                                 ; $66ba: $fa $00 $8f
    ld a, c                                       ; $66bd: $79
    adc a                                         ; $66be: $8f
    ld sp, hl                                     ; $66bf: $f9
    adc a                                         ; $66c0: $8f
    ld a, h                                       ; $66c1: $7c
    adc a                                         ; $66c2: $8f
    ld hl, sp+$00                                 ; $66c3: $f8 $00
    adc a                                         ; $66c5: $8f
    ld a, h                                       ; $66c6: $7c
    nop                                           ; $66c7: $00
    rst $38                                       ; $66c8: $ff
    ret nz                                        ; $66c9: $c0

jr_0a6_66ca:
    cp a                                          ; $66ca: $bf
    pop af                                        ; $66cb: $f1
    ld l, [hl]                                    ; $66cc: $6e
    ld h, h                                       ; $66cd: $64
    rst $38                                       ; $66ce: $ff
    add c                                         ; $66cf: $81
    inc [hl]                                      ; $66d0: $34
    or h                                          ; $66d1: $b4
    ld c, $bf                                     ; $66d2: $0e $bf
    ld b, h                                       ; $66d4: $44
    call z, $f50e                                 ; $66d5: $cc $0e $f5
    add b                                         ; $66d8: $80
    nop                                           ; $66d9: $00
    db $eb                                        ; $66da: $eb
    nop                                           ; $66db: $00
    push de                                       ; $66dc: $d5
    add b                                         ; $66dd: $80
    adc a                                         ; $66de: $8f
    or $87                                        ; $66df: $f6 $87
    ld a, l                                       ; $66e1: $7d
    ld [bc], a                                    ; $66e2: $02
    jp $e1be                                      ; $66e3: $c3 $be $e1


    rra                                           ; $66e6: $1f
    ld hl, sp-$79                                 ; $66e7: $f8 $87
    ld e, $03                                     ; $66e9: $1e $03
    add b                                         ; $66eb: $80
    rst $08                                       ; $66ec: $cf
    ld h, b                                       ; $66ed: $60
    inc b                                         ; $66ee: $04
    ld [hl], c                                    ; $66ef: $71
    inc [hl]                                      ; $66f0: $34
    ld a, a                                       ; $66f1: $7f
    cp a                                          ; $66f2: $bf
    ld l, a                                       ; $66f3: $6f
    inc c                                         ; $66f4: $0c
    ret nc                                        ; $66f5: $d0

    ld b, $60                                     ; $66f6: $06 $60
    inc h                                         ; $66f8: $24
    jr nz, jr_0a6_671a                            ; $66f9: $20 $1f

    ret nz                                        ; $66fb: $c0

    ld b, $1f                                     ; $66fc: $06 $1f
    ldh a, [$0a]                                  ; $66fe: $f0 $0a
    push de                                       ; $6700: $d5
    add d                                         ; $6701: $82
    xor d                                         ; $6702: $aa
    inc b                                         ; $6703: $04

jr_0a6_6704:
    rst $10                                       ; $6704: $d7
    add d                                         ; $6705: $82
    nop                                           ; $6706: $00
    rrca                                          ; $6707: $0f
    rst $30                                       ; $6708: $f7
    ccf                                           ; $6709: $3f

jr_0a6_670a:
    db $db                                        ; $670a: $db
    rst $38                                       ; $670b: $ff
    ld h, e                                       ; $670c: $63
    rst $38                                       ; $670d: $ff
    add l                                         ; $670e: $85
    nop                                           ; $670f: $00
    db $fd                                        ; $6710: $fd
    rlca                                          ; $6711: $07
    ld sp, hl                                     ; $6712: $f9
    rrca                                          ; $6713: $0f
    pop af                                        ; $6714: $f1
    ld e, a                                       ; $6715: $5f
    pop hl                                        ; $6716: $e1
    cp a                                          ; $6717: $bf
    jr c, jr_0a6_6704                             ; $6718: $38 $ea

jr_0a6_671a:
    dec d                                         ; $671a: $15
    ld l, b                                       ; $671b: $68
    ld b, $58                                     ; $671c: $06 $58
    inc bc                                        ; $671e: $03
    inc b                                         ; $671f: $04
    nop                                           ; $6720: $00
    ld [$15aa], sp                                ; $6721: $08 $aa $15
    nop                                           ; $6724: $00
    rst $38                                       ; $6725: $ff
    nop                                           ; $6726: $00
    pop bc                                        ; $6727: $c1
    rst $38                                       ; $6728: $ff
    add c                                         ; $6729: $81
    ld a, a                                       ; $672a: $7f
    pop hl                                        ; $672b: $e1
    rst $18                                       ; $672c: $df
    ld [bc], a                                    ; $672d: $02
    ld sp, hl                                     ; $672e: $f9
    scf                                           ; $672f: $37
    pop hl                                        ; $6730: $e1
    rst $18                                       ; $6731: $df
    add c                                         ; $6732: $81
    ld a, a                                       ; $6733: $7f
    xor a                                         ; $6734: $af
    inc b                                         ; $6735: $04
    rst $38                                       ; $6736: $ff
    and b                                         ; $6737: $a0
    ld l, h                                       ; $6738: $6c
    inc c                                         ; $6739: $0c
    ei                                            ; $673a: $fb
    db $f4                                        ; $673b: $f4
    ld bc, $01fb                                  ; $673c: $01 $fb $01
    rst $30                                       ; $673f: $f7
    ld [bc], a                                    ; $6740: $02
    xor a                                         ; $6741: $af
    nop                                           ; $6742: $00
    inc b                                         ; $6743: $04
    push af                                       ; $6744: $f5
    ld a, [bc]                                    ; $6745: $0a
    ei                                            ; $6746: $fb
    nop                                           ; $6747: $00
    db $fd                                        ; $6748: $fd
    ld [hl+], a                                   ; $6749: $22
    ld a, [$1500]                                 ; $674a: $fa $00 $15
    rst $10                                       ; $674d: $d7
    jr z, jr_0a6_670a                             ; $674e: $28 $ba

    ld b, l                                       ; $6750: $45
    ld d, a                                       ; $6751: $57
    ld [hl+], a                                   ; $6752: $22
    cp a                                          ; $6753: $bf
    ld bc, $5f41                                  ; $6754: $01 $41 $5f

jr_0a6_6757:
    jr nz, jr_0a6_6757                            ; $6757: $20 $fe

    ld bc, $28d7                                  ; $6759: $01 $d7 $28
    ld hl, sp+$06                                 ; $675c: $f8 $06
    add b                                         ; $675e: $80
    ret nc                                        ; $675f: $d0

    nop                                           ; $6760: $00
    ld e, l                                       ; $6761: $5d
    and d                                         ; $6762: $a2
    cp $55                                        ; $6763: $fe $55
    ld [hl], l                                    ; $6765: $75
    ld a, [bc]                                    ; $6766: $0a
    ld a, [$18a0]                                 ; $6767: $fa $a0 $18
    dec b                                         ; $676a: $05
    ld [$0008], a                                 ; $676b: $ea $08 $00
    ld [$fd55], a                                 ; $676e: $ea $55 $fd
    ld [bc], a                                    ; $6771: $02
    xor e                                         ; $6772: $ab
    ld b, c                                       ; $6773: $41
    ld d, l                                       ; $6774: $55
    add b                                         ; $6775: $80
    nop                                           ; $6776: $00
    cpl                                           ; $6777: $2f
    rst $38                                       ; $6778: $ff
    ld e, e                                       ; $6779: $5b
    rst $38                                       ; $677a: $ff
    ld l, $04                                     ; $677b: $2e $04
    nop                                           ; $677d: $00
    dec de                                        ; $677e: $1b
    cpl                                           ; $677f: $2f
    rst $38                                       ; $6780: $ff
    ld e, d                                       ; $6781: $5a
    inc c                                         ; $6782: $0c
    db $10                                        ; $6783: $10
    ld h, c                                       ; $6784: $61
    rlca                                          ; $6785: $07
    add b                                         ; $6786: $80
    db $e4                                        ; $6787: $e4
    nop                                           ; $6788: $00
    inc b                                         ; $6789: $04
    ld [$c009], sp                                ; $678a: $08 $09 $c0
    cp a                                          ; $678d: $bf
    pop bc                                        ; $678e: $c1
    cp a                                          ; $678f: $bf
    dec sp                                        ; $6790: $3b
    dec b                                         ; $6791: $05
    cp a                                          ; $6792: $bf
    add e                                         ; $6793: $83
    ld l, d                                       ; $6794: $6a
    nop                                           ; $6795: $00
    and b                                         ; $6796: $a0
    ld d, c                                       ; $6797: $51
    rrca                                          ; $6798: $0f
    xor e                                         ; $6799: $ab
    cpl                                           ; $679a: $2f
    dec b                                         ; $679b: $05
    rlca                                          ; $679c: $07
    inc bc                                        ; $679d: $03
    inc c                                         ; $679e: $0c
    rlca                                          ; $679f: $07
    ld a, c                                       ; $67a0: $79
    inc d                                         ; $67a1: $14
    ld e, $e3                                     ; $67a2: $1e $e3
    db $fc                                        ; $67a4: $fc
    ld [hl], b                                    ; $67a5: $70
    inc bc                                        ; $67a6: $03
    or b                                          ; $67a7: $b0
    db $ec                                        ; $67a8: $ec
    inc b                                         ; $67a9: $04
    nop                                           ; $67aa: $00
    ccf                                           ; $67ab: $3f
    nop                                           ; $67ac: $00
    ret nz                                        ; $67ad: $c0

    ld [hl], l                                    ; $67ae: $75
    add b                                         ; $67af: $80
    rst $28                                       ; $67b0: $ef
    db $10                                        ; $67b1: $10
    ld e, a                                       ; $67b2: $5f

jr_0a6_67b3:
    add b                                         ; $67b3: $80
    cp e                                          ; $67b4: $bb
    inc l                                         ; $67b5: $2c
    ld d, l                                       ; $67b6: $55
    ld e, a                                       ; $67b7: $5f
    xor b                                         ; $67b8: $a8
    inc bc                                        ; $67b9: $03
    ld a, a                                       ; $67ba: $7f
    ld h, b                                       ; $67bb: $60
    inc [hl]                                      ; $67bc: $34
    jr nc, jr_0a6_67eb                            ; $67bd: $30 $2c

    inc bc                                        ; $67bf: $03
    ld bc, $a922                                  ; $67c0: $01 $22 $a9
    ld d, a                                       ; $67c3: $57
    adc e                                         ; $67c4: $8b
    rrca                                          ; $67c5: $0f
    ld hl, $95ff                                  ; $67c6: $21 $ff $95
    sbc c                                         ; $67c9: $99
    rlca                                          ; $67ca: $07
    ld [hl], a                                    ; $67cb: $77
    ld b, $ff                                     ; $67cc: $06 $ff
    xor [hl]                                      ; $67ce: $ae
    ld d, l                                       ; $67cf: $55
    rst $10                                       ; $67d0: $d7
    add b                                         ; $67d1: $80
    jr nc, @+$2f                                  ; $67d2: $30 $2d

    ld [$0004], sp                                ; $67d4: $08 $04 $00
    add h                                         ; $67d7: $84
    jr nz, jr_0a6_67e9                            ; $67d8: $20 $0f

    rst $38                                       ; $67da: $ff
    db $10                                        ; $67db: $10
    rst $30                                       ; $67dc: $f7
    and b                                         ; $67dd: $a0
    db $10                                        ; $67de: $10
    ld bc, $ae82                                  ; $67df: $01 $82 $ae
    ld h, $01                                     ; $67e2: $26 $01
    rst $18                                       ; $67e4: $df
    sbc $07                                       ; $67e5: $de $07
    db $fd                                        ; $67e7: $fd
    nop                                           ; $67e8: $00

jr_0a6_67e9:
    inc l                                         ; $67e9: $2c
    rlca                                          ; $67ea: $07

jr_0a6_67eb:
    inc b                                         ; $67eb: $04
    ld [$3202], sp                                ; $67ec: $08 $02 $32
    xor e                                         ; $67ef: $ab
    ld d, h                                       ; $67f0: $54
    ld [hl], h                                    ; $67f1: $74
    dec bc                                        ; $67f2: $0b
    ld h, b                                       ; $67f3: $60
    dec sp                                        ; $67f4: $3b
    ld a, [$7005]                                 ; $67f5: $fa $05 $70
    inc b                                         ; $67f8: $04
    db $10                                        ; $67f9: $10
    ld h, c                                       ; $67fa: $61
    db $fd                                        ; $67fb: $fd
    ld a, h                                       ; $67fc: $7c
    rlca                                          ; $67fd: $07
    sbc b                                         ; $67fe: $98
    ld bc, $df54                                  ; $67ff: $01 $54 $df
    jr nz, jr_0a6_67b3                            ; $6802: $20 $af

    inc b                                         ; $6804: $04
    nop                                           ; $6805: $00
    ld e, $fb                                     ; $6806: $1e $fb
    inc b                                         ; $6808: $04
    ld d, a                                       ; $6809: $57
    sbc h                                         ; $680a: $9c
    inc bc                                        ; $680b: $03
    ld e, b                                       ; $680c: $58
    inc d                                         ; $680d: $14
    and b                                         ; $680e: $a0
    inc de                                        ; $680f: $13
    sub b                                         ; $6810: $90
    dec bc                                        ; $6811: $0b
    rst $38                                       ; $6812: $ff
    ld e, $10                                     ; $6813: $1e $10
    ld d, l                                       ; $6815: $55
    ld a, [hl+]                                   ; $6816: $2a
    ret z                                         ; $6817: $c8

    ld bc, $1390                                  ; $6818: $01 $90 $13
    ld c, b                                       ; $681b: $48
    ld b, $30                                     ; $681c: $06 $30
    ld b, l                                       ; $681e: $45
    ld [hl], l                                    ; $681f: $75
    ld bc, $fbaa                                  ; $6820: $01 $aa $fb
    ld b, b                                       ; $6823: $40
    db $fd                                        ; $6824: $fd
    and d                                         ; $6825: $a2
    ei                                            ; $6826: $fb
    inc d                                         ; $6827: $14
    jr nz, jr_0a6_6863                            ; $6828: $20 $39

    add a                                         ; $682a: $87
    jr z, @+$05                                   ; $682b: $28 $03

    ld a, [hl+]                                   ; $682d: $2a
    ld a, [$d515]                                 ; $682e: $fa $15 $d5
    inc [hl]                                      ; $6831: $34
    ld bc, $1fd0                                  ; $6832: $01 $d0 $1f
    or b                                          ; $6835: $b0
    daa                                           ; $6836: $27
    rst $00                                       ; $6837: $c7
    add b                                         ; $6838: $80
    db $10                                        ; $6839: $10
    call z, $0205                                 ; $683a: $cc $05 $02
    cp a                                          ; $683d: $bf
    nop                                           ; $683e: $00
    sub b                                         ; $683f: $90
    inc l                                         ; $6840: $2c
    and b                                         ; $6841: $a0
    add hl, de                                    ; $6842: $19
    ld e, h                                       ; $6843: $5c
    ld b, $b9                                     ; $6844: $06 $b9
    ld d, b                                       ; $6846: $50
    ld d, c                                       ; $6847: $51
    rst $38                                       ; $6848: $ff
    ld d, b                                       ; $6849: $50
    ld sp, $07dc                                  ; $684a: $31 $dc $07
    cp c                                          ; $684d: $b9
    dec b                                         ; $684e: $05
    ld [$4015], a                                 ; $684f: $ea $15 $40
    ld l, $80                                     ; $6852: $2e $80
    ldh [rNR24], a                                ; $6854: $e0 $19
    add b                                         ; $6856: $80
    dec d                                         ; $6857: $15
    ld c, $0f                                     ; $6858: $0e $0f
    ld b, d                                       ; $685a: $42
    rst $38                                       ; $685b: $ff
    ld bc, $8360                                  ; $685c: $01 $60 $83
    rst $38                                       ; $685f: $ff
    pop bc                                        ; $6860: $c1
    cp a                                          ; $6861: $bf
    inc b                                         ; $6862: $04

jr_0a6_6863:
    ld c, b                                       ; $6863: $48
    ld d, h                                       ; $6864: $54
    nop                                           ; $6865: $00
    xor e                                         ; $6866: $ab
    cp $01                                        ; $6867: $fe $01
    ei                                            ; $6869: $fb
    nop                                           ; $686a: $00
    db $f4                                        ; $686b: $f4
    ld bc, $00ab                                  ; $686c: $01 $ab $00
    nop                                           ; $686f: $00
    ld d, h                                       ; $6870: $54
    ld bc, $0023                                  ; $6871: $01 $23 $00
    ld [$0001], sp                                ; $6874: $08 $01 $00
    nop                                           ; $6877: $00
    rst $38                                       ; $6878: $ff
    sub h                                         ; $6879: $94
    db $eb                                        ; $687a: $eb
    add hl, hl                                    ; $687b: $29
    sub $94                                       ; $687c: $d6 $94
    db $eb                                        ; $687e: $eb
    nop                                           ; $687f: $00
    nop                                           ; $6880: $00
    rst $38                                       ; $6881: $ff
    xor $ff                                       ; $6882: $ee $ff
    nop                                           ; $6884: $00
    rst $38                                       ; $6885: $ff
    xor e                                         ; $6886: $ab
    call nc, Call_0a6_4001                        ; $6887: $d4 $01 $40
    nop                                           ; $688a: $00
    ld [bc], a                                    ; $688b: $02
    jr c, jr_0a6_68af                             ; $688c: $38 $21

    nop                                           ; $688e: $00
    ld de, $1500                                  ; $688f: $11 $00 $15
    ld [$ae00], a                                 ; $6892: $ea $00 $ae
    pop de                                        ; $6895: $d1
    nop                                           ; $6896: $00
    rst $38                                       ; $6897: $ff
    cp d                                          ; $6898: $ba
    rst $38                                       ; $6899: $ff
    dec b                                         ; $689a: $05
    ld a, [$ea00]                                 ; $689b: $fa $00 $ea
    sub l                                         ; $689e: $95
    nop                                           ; $689f: $00
    rst $38                                       ; $68a0: $ff
    or l                                          ; $68a1: $b5
    ret nz                                        ; $68a2: $c0

    ld bc, $0100                                  ; $68a3: $01 $00 $01
    ld b, e                                       ; $68a6: $43
    nop                                           ; $68a7: $00
    and c                                         ; $68a8: $a1

jr_0a6_68a9:
    nop                                           ; $68a9: $00
    ld [hl], l                                    ; $68aa: $75
    nop                                           ; $68ab: $00
    xor e                                         ; $68ac: $ab
    inc b                                         ; $68ad: $04
    nop                                           ; $68ae: $00

jr_0a6_68af:
    ld [$01ae], sp                                ; $68af: $08 $ae $01
    ld a, e                                       ; $68b2: $7b
    nop                                           ; $68b3: $00
    ld [hl], b                                    ; $68b4: $70
    ld [$cfcb], sp                                ; $68b5: $08 $cb $cf
    db $ed                                        ; $68b8: $ed
    inc b                                         ; $68b9: $04
    rst $08                                       ; $68ba: $cf
    sbc $c9                                       ; $68bb: $de $c9
    xor $c9                                       ; $68bd: $ee $c9
    ld bc, $de08                                  ; $68bf: $01 $08 $de
    ld bc, $7f00                                  ; $68c2: $01 $00 $7f
    nop                                           ; $68c5: $00
    cp $01                                        ; $68c6: $fe $01
    cp $01                                        ; $68c8: $fe $01
    ld a, [hl]                                    ; $68ca: $7e
    add c                                         ; $68cb: $81
    nop                                           ; $68cc: $00
    cp $01                                        ; $68cd: $fe $01
    ld [$7e15], a                                 ; $68cf: $ea $15 $7e
    add c                                         ; $68d2: $81
    rst $08                                       ; $68d3: $cf
    ret                                           ; $68d4: $c9


    and b                                         ; $68d5: $a0
    ld [bc], a                                    ; $68d6: $02
    ld [$97c0], sp                                ; $68d7: $08 $c0 $97
    jr nz, jr_0a6_68a9                            ; $68da: $20 $cd

    rst $08                                       ; $68dc: $cf
    nop                                           ; $68dd: $00
    rst $38                                       ; $68de: $ff
    add hl, hl                                    ; $68df: $29
    nop                                           ; $68e0: $00
    sub $54                                       ; $68e1: $d6 $54
    xor e                                         ; $68e3: $ab
    xor a                                         ; $68e4: $af
    ld d, b                                       ; $68e5: $50
    nop                                           ; $68e6: $00
    rst $38                                       ; $68e7: $ff
    and d                                         ; $68e8: $a2
    add b                                         ; $68e9: $80
    ld [hl], b                                    ; $68ea: $70
    nop                                           ; $68eb: $00
    inc [hl]                                      ; $68ec: $34
    rlc b                                         ; $68ed: $cb $00
    rst $38                                       ; $68ef: $ff
    ld d, [hl]                                    ; $68f0: $56
    xor c                                         ; $68f1: $a9
    dec hl                                        ; $68f2: $2b
    db $10                                        ; $68f3: $10
    call nc, $a25d                                ; $68f4: $d4 $5d $a2
    ld h, h                                       ; $68f7: $64
    ld [$ff00], sp                                ; $68f8: $08 $00 $ff
    ld d, b                                       ; $68fb: $50
    xor a                                         ; $68fc: $af
    ld bc, $ff00                                  ; $68fd: $01 $00 $ff
    ld l, c                                       ; $6900: $69
    sub a                                         ; $6901: $97
    inc b                                         ; $6902: $04
    ei                                            ; $6903: $fb
    ld d, c                                       ; $6904: $51
    ld [$4000], sp                                ; $6905: $08 $00 $40
    xor l                                         ; $6908: $ad
    sub b                                         ; $6909: $90
    nop                                           ; $690a: $00
    and l                                         ; $690b: $a5
    ld e, e                                       ; $690c: $5b
    add d                                         ; $690d: $82
    ld a, l                                       ; $690e: $7d
    xor b                                         ; $690f: $a8
    ld d, a                                       ; $6910: $57
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    rst $38                                       ; $6913: $ff
    ld d, l                                       ; $6914: $55
    rst $38                                       ; $6915: $ff
    ld d, d                                       ; $6916: $52
    xor l                                         ; $6917: $ad
    jp hl                                         ; $6918: $e9


    ld d, $80                                     ; $6919: $16 $80
    ld [$0000], sp                                ; $691b: $08 $00 $00
    and l                                         ; $691e: $a5
    ld e, d                                       ; $691f: $5a
    ld d, d                                       ; $6920: $52
    xor l                                         ; $6921: $ad
    nop                                           ; $6922: $00
    rst $38                                       ; $6923: $ff
    ld [bc], a                                    ; $6924: $02
    ret nc                                        ; $6925: $d0

    rst $38                                       ; $6926: $ff
    sub l                                         ; $6927: $95
    ld l, d                                       ; $6928: $6a
    ld l, e                                       ; $6929: $6b
    sub h                                         ; $692a: $94
    db $10                                        ; $692b: $10
    ld [$0250], sp                                ; $692c: $08 $50 $02
    xor a                                         ; $692f: $af
    cp l                                          ; $6930: $bd
    ld b, e                                       ; $6931: $43
    nop                                           ; $6932: $00
    rst $38                                       ; $6933: $ff
    ld e, l                                       ; $6934: $5d
    cp h                                          ; $6935: $bc
    nop                                           ; $6936: $00
    db $db                                        ; $6937: $db
    ld b, h                                       ; $6938: $44
    dec h                                         ; $6939: $25
    jr z, jr_0a6_693c                             ; $693a: $28 $00

jr_0a6_693c:
    inc bc                                        ; $693c: $03
    add b                                         ; $693d: $80
    nop                                           ; $693e: $00
    ld [bc], a                                    ; $693f: $02
    ld [$0fb3], sp                                ; $6940: $08 $b3 $0f
    ld bc, $0180                                  ; $6943: $01 $80 $01
    add b                                         ; $6946: $80
    ld [bc], a                                    ; $6947: $02
    add b                                         ; $6948: $80
    inc b                                         ; $6949: $04
    adc b                                         ; $694a: $88
    and b                                         ; $694b: $a0
    stop                                          ; $694c: $10 $00
    rst $28                                       ; $694e: $ef
    ld hl, sp-$29                                 ; $694f: $f8 $d7
    ld hl, sp+$00                                 ; $6951: $f8 $00
    ld hl, sp+$10                                 ; $6953: $f8 $10
    ld hl, sp+$08                                 ; $6955: $f8 $08
    rst $30                                       ; $6957: $f7
    ret z                                         ; $6958: $c8

    rst $00                                       ; $6959: $c7
    ret z                                         ; $695a: $c8

    jr nz, jr_0a6_6966                            ; $695b: $20 $09

    xor b                                         ; $695d: $a8
    ld hl, sp-$28                                 ; $695e: $f8 $d8
    nop                                           ; $6960: $00
    ld hl, sp-$48                                 ; $6961: $f8 $b8
    rst $08                                       ; $6963: $cf
    ld hl, sp-$31                                 ; $6964: $f8 $cf

jr_0a6_6966:
    adc b                                         ; $6966: $88
    ret z                                         ; $6967: $c8

    adc b                                         ; $6968: $88
    add b                                         ; $6969: $80
    db $10                                        ; $696a: $10
    db $10                                        ; $696b: $10
    and e                                         ; $696c: $a3
    di                                            ; $696d: $f3
    rst $10                                       ; $696e: $d7
    di                                            ; $696f: $f3
    sbc e                                         ; $6970: $9b
    sub e                                         ; $6971: $93
    rst $30                                       ; $6972: $f7
    nop                                           ; $6973: $00
    sub e                                         ; $6974: $93
    ei                                            ; $6975: $fb
    sub e                                         ; $6976: $93
    sub e                                         ; $6977: $93
    sub e                                         ; $6978: $93
    rst $00                                       ; $6979: $c7
    ret z                                         ; $697a: $c8

    rst $30                                       ; $697b: $f7
    pop hl                                        ; $697c: $e1
    ld [bc], a                                    ; $697d: $02
    nop                                           ; $697e: $00
    rst $10                                       ; $697f: $d7
    db $10                                        ; $6980: $10
    ld c, e                                       ; $6981: $4b
    ld bc, $f151                                  ; $6982: $01 $51 $f1
    cp b                                          ; $6985: $b8

jr_0a6_6986:
    ret z                                         ; $6986: $c8

    ld [bc], a                                    ; $6987: $02
    ld [$1086], sp                                ; $6988: $08 $86 $10
    jr jr_0a6_6986                                ; $698b: $18 $f9

    ld sp, hl                                     ; $698d: $f9
    ld d, a                                       ; $698e: $57
    ld sp, hl                                     ; $698f: $f9
    inc hl                                        ; $6990: $23
    nop                                           ; $6991: $00
    ld h, $00                                     ; $6992: $26 $00
    inc bc                                        ; $6994: $03
    add b                                         ; $6995: $80
    ld h, a                                       ; $6996: $67
    ld hl, $f35f                                  ; $6997: $21 $5f $f3
    xor c                                         ; $699a: $a9
    ld d, a                                       ; $699b: $57
    db $fc                                        ; $699c: $fc
    inc bc                                        ; $699d: $03
    rst $10                                       ; $699e: $d7
    ld [bc], a                                    ; $699f: $02
    ld bc, $03a8                                  ; $69a0: $01 $a8 $03
    ld d, e                                       ; $69a3: $53
    ld bc, $0484                                  ; $69a4: $01 $84 $04
    nop                                           ; $69a7: $00
    ld d, $00                                     ; $69a8: $16 $00
    rrca                                          ; $69aa: $0f
    ld hl, sp-$80                                 ; $69ab: $f8 $80
    cp b                                          ; $69ad: $b8
    ret nz                                        ; $69ae: $c0

    sbc e                                         ; $69af: $9b
    ldh [$cd], a                                  ; $69b0: $e0 $cd
    nop                                           ; $69b2: $00
    di                                            ; $69b3: $f3
    ld a, [hl]                                    ; $69b4: $7e
    rst $38                                       ; $69b5: $ff
    ld [hl], $c1                                  ; $69b6: $36 $c1
    ld [hl], c                                    ; $69b8: $71
    add b                                         ; $69b9: $80
    and c                                         ; $69ba: $a1
    nop                                           ; $69bb: $00
    ld b, b                                       ; $69bc: $40
    ld b, b                                       ; $69bd: $40
    ld a, a                                       ; $69be: $7f
    call c, $e263                                 ; $69bf: $dc $63 $e2
    pop bc                                        ; $69c2: $c1
    ld d, c                                       ; $69c3: $51
    nop                                           ; $69c4: $00
    ldh [rOBP1], a                                ; $69c5: $e0 $49
    ldh a, [$37]                                  ; $69c7: $f0 $37
    ld sp, hl                                     ; $69c9: $f9
    rrca                                          ; $69ca: $0f
    rst $38                                       ; $69cb: $ff
    jr c, jr_0a6_6a1f                             ; $69cc: $38 $51

    rst $00                                       ; $69ce: $c7
    and b                                         ; $69cf: $a0
    add hl, bc                                    ; $69d0: $09
    xor d                                         ; $69d1: $aa
    inc b                                         ; $69d2: $04
    db $10                                        ; $69d3: $10
    push de                                       ; $69d4: $d5
    rst $38                                       ; $69d5: $ff
    add b                                         ; $69d6: $80
    ld a, [bc]                                    ; $69d7: $0a
    nop                                           ; $69d8: $00
    nop                                           ; $69d9: $00
    dec bc                                        ; $69da: $0b
    ld sp, $2360                                  ; $69db: $31 $60 $23
    db $e3                                        ; $69de: $e3
    ld b, c                                       ; $69df: $41
    ld b, d                                       ; $69e0: $42
    add c                                         ; $69e1: $81
    nop                                           ; $69e2: $00
    add e                                         ; $69e3: $83
    ld bc, $0102                                  ; $69e4: $01 $02 $01
    rlca                                          ; $69e7: $07
    ld bc, $0182                                  ; $69e8: $01 $82 $01
    nop                                           ; $69eb: $00
    ld d, e                                       ; $69ec: $53
    add c                                         ; $69ed: $81
    cp d                                          ; $69ee: $ba
    rst $00                                       ; $69ef: $c7
    rst $08                                       ; $69f0: $cf
    cp $7a                                        ; $69f1: $fe $7a
    rst $38                                       ; $69f3: $ff
    nop                                           ; $69f4: $00
    ld a, [de]                                    ; $69f5: $1a
    rst $20                                       ; $69f6: $e7
    ld h, a                                       ; $69f7: $67
    add e                                         ; $69f8: $83
    and $03                                       ; $69f9: $e6 $03
    cp d                                          ; $69fb: $ba
    ld b, a                                       ; $69fc: $47
    inc b                                         ; $69fd: $04
    ld b, [hl]                                    ; $69fe: $46
    add c                                         ; $69ff: $81
    add c                                         ; $6a00: $81
    nop                                           ; $6a01: $00
    ld b, c                                       ; $6a02: $41
    ld [hl], d                                    ; $6a03: $72
    ld bc, $a157                                  ; $6a04: $01 $57 $a1
    ld [bc], a                                    ; $6a07: $02
    add hl, hl                                    ; $6a08: $29
    rst $10                                       ; $6a09: $d7
    cp $ff                                        ; $6a0a: $fe $ff
    ld a, h                                       ; $6a0c: $7c
    add e                                         ; $6a0d: $83
    inc [hl]                                      ; $6a0e: $34
    nop                                           ; $6a0f: $00
    push de                                       ; $6a10: $d5
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    rst $38                                       ; $6a13: $ff
    ld a, [hl+]                                   ; $6a14: $2a
    push de                                       ; $6a15: $d5
    ld d, l                                       ; $6a16: $55
    xor d                                         ; $6a17: $aa
    ld a, a                                       ; $6a18: $7f
    add b                                         ; $6a19: $80
    nop                                           ; $6a1a: $00
    ld d, l                                       ; $6a1b: $55
    add b                                         ; $6a1c: $80
    add b                                         ; $6a1d: $80

jr_0a6_6a1e:
    nop                                           ; $6a1e: $00

jr_0a6_6a1f:
    inc de                                        ; $6a1f: $13
    ld bc, HeaderSGBFlag                          ; $6a20: $01 $46 $01
    inc b                                         ; $6a23: $04
    inc de                                        ; $6a24: $13
    ld bc, $0320                                  ; $6a25: $01 $20 $03
    ld d, a                                       ; $6a28: $57
    add h                                         ; $6a29: $84
    nop                                           ; $6a2a: $00

Call_0a6_6a2b:
    ld [hl], a                                    ; $6a2b: $77
    ld bc, $fc00                                  ; $6a2c: $01 $00 $fc
    inc bc                                        ; $6a2f: $03
    ld d, [hl]                                    ; $6a30: $56
    xor a                                         ; $6a31: $af
    sbc h                                         ; $6a32: $9c
    rst $38                                       ; $6a33: $ff
    db $eb                                        ; $6a34: $eb
    ldh a, [rP1]                                  ; $6a35: $f0 $00
    ld e, h                                       ; $6a37: $5c
    ldh [$99], a                                  ; $6a38: $e0 $99
    ldh [$af], a                                  ; $6a3a: $e0 $af
    ret nc                                        ; $6a3c: $d0

    ld b, l                                       ; $6a3d: $45
    ei                                            ; $6a3e: $fb
    nop                                           ; $6a3f: $00
    ccf                                           ; $6a40: $3f
    cp $82                                        ; $6a41: $fe $82
    ld bc, $8143                                  ; $6a43: $01 $43 $81
    xor l                                         ; $6a46: $ad
    jp $ea00                                      ; $6a47: $c3 $00 $ea


    ld [hl], a                                    ; $6a4a: $77
    db $fd                                        ; $6a4b: $fd
    ld a, [hl]                                    ; $6a4c: $7e
    adc h                                         ; $6a4d: $8c
    di                                            ; $6a4e: $f3
    ld [de], a                                    ; $6a4f: $12
    pop hl                                        ; $6a50: $e1
    ld a, [de]                                    ; $6a51: $1a
    adc c                                         ; $6a52: $89
    ld [hl], b                                    ; $6a53: $70
    rst $38                                       ; $6a54: $ff
    ld a, b                                       ; $6a55: $78
    nop                                           ; $6a56: $00
    inc b                                         ; $6a57: $04
    ld [$7eaa], sp                                ; $6a58: $08 $aa $7e
    db $10                                        ; $6a5b: $10
    ret nz                                        ; $6a5c: $c0

    jr z, jr_0a6_6a1e                             ; $6a5d: $28 $bf

    ld l, a                                       ; $6a5f: $6f
    inc [hl]                                      ; $6a60: $34
    nop                                           ; $6a61: $00
    rst $38                                       ; $6a62: $ff
    inc b                                         ; $6a63: $04
    db $10                                        ; $6a64: $10
    or h                                          ; $6a65: $b4
    ld c, e                                       ; $6a66: $4b
    ld e, l                                       ; $6a67: $5d
    nop                                           ; $6a68: $00
    and e                                         ; $6a69: $a3
    adc b                                         ; $6a6a: $88
    ld [hl], a                                    ; $6a6b: $77
    ld [hl-], a                                   ; $6a6c: $32
    call z, $04c6                                 ; $6a6d: $cc $c6 $04
    ld e, a                                       ; $6a70: $5f
    nop                                           ; $6a71: $00
    add h                                         ; $6a72: $84
    cp l                                          ; $6a73: $bd
    adc $7e                                       ; $6a74: $ce $7e
    rst $38                                       ; $6a76: $ff
    dec [hl]                                      ; $6a77: $35
    jp JoypadTransitionInterrupt                  ; $6a78: $c3 $60 $00


    add e                                         ; $6a7b: $83
    xor d                                         ; $6a7c: $aa
    ld b, a                                       ; $6a7d: $47
    dec [hl]                                      ; $6a7e: $35
    jr @+$1d                                      ; $6a7f: $18 $1b

    dec c                                         ; $6a81: $0d
    ld c, [hl]                                    ; $6a82: $4e
    nop                                           ; $6a83: $00
    rrca                                          ; $6a84: $0f
    cp c                                          ; $6a85: $b9
    ld c, $52                                     ; $6a86: $0e $52
    cp l                                          ; $6a88: $bd
    pop hl                                        ; $6a89: $e1
    cp $3c                                        ; $6a8a: $fe $3c
    nop                                           ; $6a8c: $00
    jp $0182                                      ; $6a8d: $c3 $82 $01


    add b                                         ; $6a90: $80
    rst $38                                       ; $6a91: $ff
    push de                                       ; $6a92: $d5
    xor d                                         ; $6a93: $aa
    xor b                                         ; $6a94: $a8
    nop                                           ; $6a95: $00
    ret nc                                        ; $6a96: $d0

    pop bc                                        ; $6a97: $c1
    or b                                          ; $6a98: $b0
    or h                                          ; $6a99: $b4
    jp $e6f9                                      ; $6a9a: $c3 $f9 $e6


    ld [$f400], a                                 ; $6a9d: $ea $00 $f4
    jp hl                                         ; $6aa0: $e9


    or $7f                                        ; $6aa1: $f6 $7f
    rst $38                                       ; $6aa3: $ff
    ld a, a                                       ; $6aa4: $7f
    rst $38                                       ; $6aa5: $ff
    ld a, [hl+]                                   ; $6aa6: $2a
    add c                                         ; $6aa7: $81
    inc b                                         ; $6aa8: $04
    nop                                           ; $6aa9: $00
    xor d                                         ; $6aaa: $aa
    ld a, a                                       ; $6aab: $7f
    ld d, l                                       ; $6aac: $55
    rst $38                                       ; $6aad: $ff
    add b                                         ; $6aae: $80
    ld a, a                                       ; $6aaf: $7f
    ld a, [bc]                                    ; $6ab0: $0a
    ld [$7f14], sp                                ; $6ab1: $08 $14 $7f
    rst $38                                       ; $6ab4: $ff
    dec hl                                        ; $6ab5: $2b
    inc d                                         ; $6ab6: $14
    nop                                           ; $6ab7: $00
    xor e                                         ; $6ab8: $ab
    stop                                          ; $6ab9: $10 $00
    add c                                         ; $6abb: $81
    ld a, a                                       ; $6abc: $7f
    ld b, h                                       ; $6abd: $44

Call_0a6_6abe:
    dec hl                                        ; $6abe: $2b
    inc d                                         ; $6abf: $14
    nop                                           ; $6ac0: $00
    xor d                                         ; $6ac1: $aa
    ld d, l                                       ; $6ac2: $55
    nop                                           ; $6ac3: $00
    inc b                                         ; $6ac4: $04
    nop                                           ; $6ac5: $00
    ld d, l                                       ; $6ac6: $55
    ld a, [hl+]                                   ; $6ac7: $2a
    nop                                           ; $6ac8: $00
    ld a, a                                       ; $6ac9: $7f
    nop                                           ; $6aca: $00
    ld d, l                                       ; $6acb: $55
    nop                                           ; $6acc: $00
    nop                                           ; $6acd: $00
    nop                                           ; $6ace: $00
    add c                                         ; $6acf: $81
    ld a, a                                       ; $6ad0: $7f
    ld b, b                                       ; $6ad1: $40
    xor e                                         ; $6ad2: $ab
    db $10                                        ; $6ad3: $10
    db $10                                        ; $6ad4: $10
    ld d, h                                       ; $6ad5: $54
    dec hl                                        ; $6ad6: $2b
    ld a, [hl]                                    ; $6ad7: $7e
    ld bc, $0154                                  ; $6ad8: $01 $54 $01
    xor $7f                                       ; $6adb: $ee $7f
    ld [bc], a                                    ; $6add: $02
    call c, Call_000_0401                         ; $6ade: $dc $01 $04
    ld [$7eaa], sp                                ; $6ae1: $08 $aa $7e
    ld [bc], a                                    ; $6ae4: $02
    inc b                                         ; $6ae5: $04
    ld [$2810], sp                                ; $6ae6: $08 $10 $28
    xor e                                         ; $6ae9: $ab
    jr nz, @+$01                                  ; $6aea: $20 $ff

    ld bc, $0004                                  ; $6aec: $01 $04 $00
    inc bc                                        ; $6aef: $03
    db $fd                                        ; $6af0: $fd
    nop                                           ; $6af1: $00
    rst $38                                       ; $6af2: $ff
    ldh [rP1], a                                  ; $6af3: $e0 $00
    nop                                           ; $6af5: $00
    ld a, [bc]                                    ; $6af6: $0a
    nop                                           ; $6af7: $00
    sbc c                                         ; $6af8: $99
    ld h, a                                       ; $6af9: $67
    pop hl                                        ; $6afa: $e1
    nop                                           ; $6afb: $00
    ld c, d                                       ; $6afc: $4a

jr_0a6_6afd:
    nop                                           ; $6afd: $00
    jr nc, jr_0a6_6afd                            ; $6afe: $30 $fd

    ld a, [hl]                                    ; $6b00: $7e

Call_0a6_6b01:
    xor a                                         ; $6b01: $af
    rst $38                                       ; $6b02: $ff
    ld [hl], b                                    ; $6b03: $70
    add b                                         ; $6b04: $80
    dec b                                         ; $6b05: $05
    nop                                           ; $6b06: $00
    nop                                           ; $6b07: $00
    ldh [$1f], a                                  ; $6b08: $e0 $1f
    ld d, l                                       ; $6b0a: $55
    rst $38                                       ; $6b0b: $ff
    cp e                                          ; $6b0c: $bb
    ld a, a                                       ; $6b0d: $7f
    dec c                                         ; $6b0e: $0d
    nop                                           ; $6b0f: $00
    inc bc                                        ; $6b10: $03
    ld d, b                                       ; $6b11: $50
    add b                                         ; $6b12: $80
    push de                                       ; $6b13: $d5
    add sp, $41                                   ; $6b14: $e8 $41
    ccf                                           ; $6b16: $3f
    xor e                                         ; $6b17: $ab
    ld [bc], a                                    ; $6b18: $02
    dec d                                         ; $6b19: $15
    dec [hl]                                      ; $6b1a: $35
    bit 5, e                                      ; $6b1b: $cb $6b
    rst $10                                       ; $6b1d: $d7
    rst $08                                       ; $6b1e: $cf
    ld sp, hl                                     ; $6b1f: $f9

Jump_0a6_6b20:
    ld [bc], a                                    ; $6b20: $02
    ld a, a                                       ; $6b21: $7f
    nop                                           ; $6b22: $00
    rra                                           ; $6b23: $1f
    rlca                                          ; $6b24: $07
    inc bc                                        ; $6b25: $03

jr_0a6_6b26:
    call c, $aa23                                 ; $6b26: $dc $23 $aa
    ld d, l                                       ; $6b29: $55
    ld b, h                                       ; $6b2a: $44
    inc c                                         ; $6b2b: $0c
    cp e                                          ; $6b2c: $bb

jr_0a6_6b2d:
    nop                                           ; $6b2d: $00
    rst $38                                       ; $6b2e: $ff
    ld b, c                                       ; $6b2f: $41
    sub [hl]                                      ; $6b30: $96
    nop                                           ; $6b31: $00
    ld l, d                                       ; $6b32: $6a
    add hl, bc                                    ; $6b33: $09
    ld hl, sp-$37                                 ; $6b34: $f8 $c9
    ld h, a                                       ; $6b36: $67
    cp $82                                        ; $6b37: $fe $82
    ld [bc], a                                    ; $6b39: $02
    ld bc, $df38                                  ; $6b3a: $01 $38 $df
    jr nz, jr_0a6_6b26                            ; $6b3d: $20 $e7

    ld [bc], a                                    ; $6b3f: $02

jr_0a6_6b40:
    inc h                                         ; $6b40: $24
    ld [bc], a                                    ; $6b41: $02
    dec b                                         ; $6b42: $05
    nop                                           ; $6b43: $00
    inc b                                         ; $6b44: $04
    rst $38                                       ; $6b45: $ff
    inc b                                         ; $6b46: $04
    ei                                            ; $6b47: $fb
    ld [bc], a                                    ; $6b48: $02
    db $fd                                        ; $6b49: $fd
    sbc d                                         ; $6b4a: $9a
    ld a, [hl-]                                   ; $6b4b: $3a
    db $eb                                        ; $6b4c: $eb
    rst $08                                       ; $6b4d: $cf
    nop                                           ; $6b4e: $00
    reti                                          ; $6b4f: $d9


    ret                                           ; $6b50: $c9


    rst $28                                       ; $6b51: $ef
    ret                                           ; $6b52: $c9


    add c                                         ; $6b53: $81
    ld a, [hl]                                    ; $6b54: $7e
    db $10                                        ; $6b55: $10
    rst $28                                       ; $6b56: $ef
    nop                                           ; $6b57: $00
    add b                                         ; $6b58: $80
    ld a, a                                       ; $6b59: $7f
    ld b, b                                       ; $6b5a: $40
    cp a                                          ; $6b5b: $bf
    and b                                         ; $6b5c: $a0
    ld e, a                                       ; $6b5d: $5f
    ld d, c                                       ; $6b5e: $51
    xor [hl]                                      ; $6b5f: $ae
    ld b, $08                                     ; $6b60: $06 $08
    rst $30                                       ; $6b62: $f7
    nop                                           ; $6b63: $00
    rst $38                                       ; $6b64: $ff
    rst $18                                       ; $6b65: $df
    inc a                                         ; $6b66: $3c
    jr nc, jr_0a6_6b2d                            ; $6b67: $30 $c4

    ld a, [de]                                    ; $6b69: $1a
    nop                                           ; $6b6a: $00
    jr @+$01                                      ; $6b6b: $18 $ff

    ld [hl+], a                                   ; $6b6d: $22
    db $dd                                        ; $6b6e: $dd
    ld [hl+], a                                   ; $6b6f: $22
    nop                                           ; $6b70: $00
    ld b, h                                       ; $6b71: $44
    nop                                           ; $6b72: $00
    rst $28                                       ; $6b73: $ef
    nop                                           ; $6b74: $00
    or $00                                        ; $6b75: $f6 $00
    nop                                           ; $6b77: $00
    ei                                            ; $6b78: $fb
    nop                                           ; $6b79: $00
    ld [de], a                                    ; $6b7a: $12
    xor $0b                                       ; $6b7b: $ee $0b
    or $81                                        ; $6b7d: $f6 $81
    ld [$167e], sp                                ; $6b7f: $08 $7e $16
    nop                                           ; $6b82: $00
    ld e, [hl]                                    ; $6b83: $5e
    inc b                                         ; $6b84: $04
    ld [bc], a                                    ; $6b85: $02
    sub $03                                       ; $6b86: $d6 $03
    db $eb                                        ; $6b88: $eb
    nop                                           ; $6b89: $00
    ld [bc], a                                    ; $6b8a: $02
    xor [hl]                                      ; $6b8b: $ae
    pop af                                        ; $6b8c: $f1
    ld c, $f1                                     ; $6b8d: $0e $f1
    ldh a, [rNR11]                                ; $6b8f: $f0 $11

jr_0a6_6b91:
    db $10                                        ; $6b91: $10
    jr nz, jr_0a6_6ba5                            ; $6b92: $20 $11

    ldh a, [rSC]                                  ; $6b94: $f0 $02
    jr nz, jr_0a6_6b40                            ; $6b96: $20 $a8

    ld sp, hl                                     ; $6b98: $f9
    ld b, $f9                                     ; $6b99: $06 $f9
    xor [hl]                                      ; $6b9b: $ae
    jr nz, @-$05                                  ; $6b9c: $20 $f9

    nop                                           ; $6b9e: $00
    ld [bc], a                                    ; $6b9f: $02
    jr nc, jr_0a6_6b91                            ; $6ba0: $30 $ef

    di                                            ; $6ba2: $f3
    db $e3                                        ; $6ba3: $e3
    di                                            ; $6ba4: $f3

jr_0a6_6ba5:
    inc bc                                        ; $6ba5: $03
    ld b, $13                                     ; $6ba6: $06 $13
    rrca                                          ; $6ba8: $0f
    inc de                                        ; $6ba9: $13
    rst $28                                       ; $6baa: $ef
    di                                            ; $6bab: $f3
    ld [bc], a                                    ; $6bac: $02
    jr jr_0a6_6c19                                ; $6bad: $18 $6a

    ld a, [hl+]                                   ; $6baf: $2a
    dec d                                         ; $6bb0: $15
    ld [bc], a                                    ; $6bb1: $02

jr_0a6_6bb2:
    rra                                           ; $6bb2: $1f
    dec bc                                        ; $6bb3: $0b
    rra                                           ; $6bb4: $1f
    dec c                                         ; $6bb5: $0d
    di                                            ; $6bb6: $f3
    rrca                                          ; $6bb7: $0f
    db $10                                        ; $6bb8: $10
    jr nc, jr_0a6_6bb2                            ; $6bb9: $30 $f7

    ld bc, $eb1f                                  ; $6bbb: $01 $1f $eb
    rra                                           ; $6bbe: $1f
    inc bc                                        ; $6bbf: $03
    rra                                           ; $6bc0: $1f
    ld [$6a1f], sp                                ; $6bc1: $08 $1f $6a
    ld a, [hl+]                                   ; $6bc4: $2a
    nop                                           ; $6bc5: $00
    db $d3                                        ; $6bc6: $d3
    di                                            ; $6bc7: $f3
    or a                                          ; $6bc8: $b7
    di                                            ; $6bc9: $f3
    ei                                            ; $6bca: $fb
    sub e                                         ; $6bcb: $93
    ld [hl], a                                    ; $6bcc: $77
    sub e                                         ; $6bcd: $93
    nop                                           ; $6bce: $00
    inc bc                                        ; $6bcf: $03
    ld [bc], a                                    ; $6bd0: $02
    ld [bc], a                                    ; $6bd1: $02
    ld [bc], a                                    ; $6bd2: $02
    nop                                           ; $6bd3: $00
    ld [bc], a                                    ; $6bd4: $02
    ld d, $00                                     ; $6bd5: $16 $00
    nop                                           ; $6bd7: $00
    and e                                         ; $6bd8: $a3
    nop                                           ; $6bd9: $00
    ld d, b                                       ; $6bda: $50
    inc bc                                        ; $6bdb: $03
    xor e                                         ; $6bdc: $ab
    ld [bc], a                                    ; $6bdd: $02
    rst $10                                       ; $6bde: $d7
    ld [bc], a                                    ; $6bdf: $02
    sbc b                                         ; $6be0: $98
    db $fd                                        ; $6be1: $fd
    ld bc, $0d13                                  ; $6be2: $01 $13 $0d
    ld [bc], a                                    ; $6be5: $02
    db $10                                        ; $6be6: $10
    or h                                          ; $6be7: $b4
    ld a, [de]                                    ; $6be8: $1a
    db $ec                                        ; $6be9: $ec
    inc de                                        ; $6bea: $13
    db $e3                                        ; $6beb: $e3
    or l                                          ; $6bec: $b5
    ld [bc], a                                    ; $6bed: $02
    nop                                           ; $6bee: $00
    rst $28                                       ; $6bef: $ef
    ld [bc], a                                    ; $6bf0: $02
    nop                                           ; $6bf1: $00
    call nz, $131a                                ; $6bf2: $c4 $1a $13
    call nc, $f302                                ; $6bf5: $d4 $02 $f3
    ld [bc], a                                    ; $6bf8: $02
    db $10                                        ; $6bf9: $10
    add b                                         ; $6bfa: $80
    or h                                          ; $6bfb: $b4
    ld a, [de]                                    ; $6bfc: $1a
    ei                                            ; $6bfd: $fb
    ld [bc], a                                    ; $6bfe: $02
    ld e, [hl]                                    ; $6bff: $5e
    inc bc                                        ; $6c00: $03
    rst $28                                       ; $6c01: $ef
    ld [bc], a                                    ; $6c02: $02
    or $00                                        ; $6c03: $f6 $00
    inc bc                                        ; $6c05: $03
    cp $03                                        ; $6c06: $fe $03
    xor $03                                       ; $6c08: $ee $03
    halt                                          ; $6c0a: $76
    inc bc                                        ; $6c0b: $03
    cp [hl]                                       ; $6c0c: $be
    nop                                           ; $6c0d: $00
    inc bc                                        ; $6c0e: $03
    push af                                       ; $6c0f: $f5
    ld a, [bc]                                    ; $6c10: $0a
    ld a, d                                       ; $6c11: $7a
    dec b                                         ; $6c12: $05
    cp [hl]                                       ; $6c13: $be
    ld bc, $0880                                  ; $6c14: $01 $80 $08
    nop                                           ; $6c17: $00
    ld b, d                                       ; $6c18: $42

jr_0a6_6c19:
    cp a                                          ; $6c19: $bf
    ld de, $00f8                                  ; $6c1a: $11 $f8 $00
    ld d, c                                       ; $6c1d: $51
    xor a                                         ; $6c1e: $af
    ld d, $00                                     ; $6c1f: $16 $00
    rst $38                                       ; $6c21: $ff
    ld c, [hl]                                    ; $6c22: $4e
    cp a                                          ; $6c23: $bf
    dec h                                         ; $6c24: $25
    rst $18                                       ; $6c25: $df
    ld d, $00                                     ; $6c26: $16 $00
    ld a, $00                                     ; $6c28: $3e $00
    db $fd                                        ; $6c2a: $fd
    ld e, h                                       ; $6c2b: $5c
    rst $38                                       ; $6c2c: $ff
    xor [hl]                                      ; $6c2d: $ae
    rst $38                                       ; $6c2e: $ff
    ld d, a                                       ; $6c2f: $57
    cp $92                                        ; $6c30: $fe $92
    nop                                           ; $6c32: $00
    ld l, l                                       ; $6c33: $6d
    ld c, l                                       ; $6c34: $4d
    or [hl]                                       ; $6c35: $b6
    ld d, $eb                                     ; $6c36: $16 $eb
    add b                                         ; $6c38: $80
    nop                                           ; $6c39: $00
    ld d, d                                       ; $6c3a: $52
    nop                                           ; $6c3b: $00
    rst $38                                       ; $6c3c: $ff
    inc l                                         ; $6c3d: $2c
    ei                                            ; $6c3e: $fb
    ld d, l                                       ; $6c3f: $55
    rst $38                                       ; $6c40: $ff
    ld c, $ff                                     ; $6c41: $0e $ff
    cp $00                                        ; $6c43: $fe $00
    inc bc                                        ; $6c45: $03
    ld e, [hl]                                    ; $6c46: $5e
    and e                                         ; $6c47: $a3
    xor h                                         ; $6c48: $ac
    ld d, e                                       ; $6c49: $53
    ld d, $00                                     ; $6c4a: $16 $00
    xor d                                         ; $6c4c: $aa
    nop                                           ; $6c4d: $00
    ld [hl], l                                    ; $6c4e: $75
    dec [hl]                                      ; $6c4f: $35
    jp c, $ef5a                                   ; $6c50: $da $5a $ef

    xor d                                         ; $6c53: $aa
    rst $30                                       ; $6c54: $f7
    dec d                                         ; $6c55: $15
    nop                                           ; $6c56: $00
    db $eb                                        ; $6c57: $eb
    ld [$01f7], sp                                ; $6c58: $08 $f7 $01
    rst $38                                       ; $6c5b: $ff
    jr nz, @+$01                                  ; $6c5c: $20 $ff

    ld b, l                                       ; $6c5e: $45
    add b                                         ; $6c5f: $80
    sub $12                                       ; $6c60: $d6 $12
    ld d, l                                       ; $6c62: $55
    rst $38                                       ; $6c63: $ff
    ld d, [hl]                                    ; $6c64: $56
    xor [hl]                                      ; $6c65: $ae
    sbc d                                         ; $6c66: $9a
    db $fc                                        ; $6c67: $fc
    push af                                       ; $6c68: $f5
    nop                                           ; $6c69: $00
    cp $2a                                        ; $6c6a: $fe $2a
    db $fd                                        ; $6c6c: $fd
    ld d, l                                       ; $6c6d: $55
    adc [hl]                                      ; $6c6e: $8e
    res 0, a                                      ; $6c6f: $cb $87
    xor l                                         ; $6c71: $ad
    nop                                           ; $6c72: $00
    jp $e7d8                                      ; $6c73: $c3 $d8 $e7


    ld bc, $8101                                  ; $6c76: $01 $01 $81
    ld bc, $004b                                  ; $6c79: $01 $4b $00
    ld bc, $03fe                                  ; $6c7c: $01 $fe $03
    ld d, l                                       ; $6c7f: $55
    xor [hl]                                      ; $6c80: $ae
    rst $38                                       ; $6c81: $ff
    ld sp, hl                                     ; $6c82: $f9
    ld d, e                                       ; $6c83: $53
    nop                                           ; $6c84: $00
    pop hl                                        ; $6c85: $e1
    xor a                                         ; $6c86: $af
    di                                            ; $6c87: $f3
    or $ff                                        ; $6c88: $f6 $ff
    ld a, [$feff]                                 ; $6c8a: $fa $ff $fe
    nop                                           ; $6c8d: $00
    rst $38                                       ; $6c8e: $ff
    push af                                       ; $6c8f: $f5
    rst $38                                       ; $6c90: $ff
    ld [$dff5], a                                 ; $6c91: $ea $f5 $df
    ldh [$ea], a                                  ; $6c94: $e0 $ea
    nop                                           ; $6c96: $00
    ret nz                                        ; $6c97: $c0

    push de                                       ; $6c98: $d5
    add b                                         ; $6c99: $80
    ld e, [hl]                                    ; $6c9a: $5e
    nop                                           ; $6c9b: $00
    cpl                                           ; $6c9c: $2f
    nop                                           ; $6c9d: $00
    dec d                                         ; $6c9e: $15
    add b                                         ; $6c9f: $80
    or h                                          ; $6ca0: $b4
    inc bc                                        ; $6ca1: $03
    xor $11                                       ; $6ca2: $ee $11
    rst $30                                       ; $6ca4: $f7
    ld [$44bb], sp                                ; $6ca5: $08 $bb $44
    push de                                       ; $6ca8: $d5
    adc b                                         ; $6ca9: $88
    or l                                          ; $6caa: $b5
    ld bc, $02f7                                  ; $6cab: $01 $f7 $02
    ld a, c                                       ; $6cae: $79
    ldh [rP1], a                                  ; $6caf: $e0 $00
    xor e                                         ; $6cb1: $ab
    ld d, h                                       ; $6cb2: $54
    ld b, c                                       ; $6cb3: $41
    rlca                                          ; $6cb4: $07
    cp [hl]                                       ; $6cb5: $be
    and e                                         ; $6cb6: $a3
    ld e, [hl]                                    ; $6cb7: $5e
    ld d, d                                       ; $6cb8: $52
    xor [hl]                                      ; $6cb9: $ae
    ld [hl], e                                    ; $6cba: $73
    ld de, $03d4                                  ; $6cbb: $11 $d4 $03
    or [hl]                                       ; $6cbe: $b6
    add hl, bc                                    ; $6cbf: $09
    nop                                           ; $6cc0: $00
    ei                                            ; $6cc1: $fb
    nop                                           ; $6cc2: $00
    db $fd                                        ; $6cc3: $fd
    nop                                           ; $6cc4: $00
    ld b, b                                       ; $6cc5: $40
    add b                                         ; $6cc6: $80
    push hl                                       ; $6cc7: $e5
    stop                                          ; $6cc8: $10 $00
    cp l                                          ; $6cca: $bd
    ld b, d                                       ; $6ccb: $42
    ld d, $00                                     ; $6ccc: $16 $00
    ld [$7415], a                                 ; $6cce: $ea $15 $74
    dec bc                                        ; $6cd1: $0b
    ld b, b                                       ; $6cd2: $40
    cp [hl]                                       ; $6cd3: $be
    add $00                                       ; $6cd4: $c6 $00
    xor b                                         ; $6cd6: $a8
    ld d, a                                       ; $6cd7: $57
    call nc, Call_0a6_6a2b                        ; $6cd8: $d4 $2b $6a
    sub l                                         ; $6cdb: $95
    nop                                           ; $6cdc: $00
    or c                                          ; $6cdd: $b1
    ld c, [hl]                                    ; $6cde: $4e
    ld e, b                                       ; $6cdf: $58
    and a                                         ; $6ce0: $a7
    inc b                                         ; $6ce1: $04
    ei                                            ; $6ce2: $fb
    add d                                         ; $6ce3: $82
    ld a, l                                       ; $6ce4: $7d
    nop                                           ; $6ce5: $00
    ld b, b                                       ; $6ce6: $40
    cp a                                          ; $6ce7: $bf
    xor e                                         ; $6ce8: $ab
    ld d, [hl]                                    ; $6ce9: $56
    ld d, a                                       ; $6cea: $57
    xor d                                         ; $6ceb: $aa
    dec hl                                        ; $6cec: $2b
    sub $00                                       ; $6ced: $d6 $00
    ld b, $fa                                     ; $6cef: $06 $fa
    add e                                         ; $6cf1: $83
    ld a, [hl]                                    ; $6cf2: $7e
    ld c, e                                       ; $6cf3: $4b
    or [hl]                                       ; $6cf4: $b6
    rlca                                          ; $6cf5: $07
    ld a, [$0210]                                 ; $6cf6: $fa $10 $02
    cp $7e                                        ; $6cf9: $fe $7e
    xor b                                         ; $6cfb: $a8
    ld bc, $007f                                  ; $6cfc: $01 $7f $00
    cp a                                          ; $6cff: $bf
    nop                                           ; $6d00: $00
    ld a, [bc]                                    ; $6d01: $0a
    ld e, a                                       ; $6d02: $5f
    nop                                           ; $6d03: $00
    xor [hl]                                      ; $6d04: $ae
    nop                                           ; $6d05: $00
    rst $08                                       ; $6d06: $cf
    ld bc, $fa00                                  ; $6d07: $01 $00 $fa
    ld [$0a6e], sp                                ; $6d0a: $08 $6e $0a
    inc bc                                        ; $6d0d: $03
    cp d                                          ; $6d0e: $ba
    inc bc                                        ; $6d0f: $03
    sbc $06                                       ; $6d10: $de $06
    ld bc, $067e                                  ; $6d12: $01 $7e $06
    nop                                           ; $6d15: $00
    ld [$f700], sp                                ; $6d16: $08 $00 $f7
    add h                                         ; $6d19: $84
    ld a, e                                       ; $6d1a: $7b
    ld b, c                                       ; $6d1b: $41
    cp [hl]                                       ; $6d1c: $be
    add b                                         ; $6d1d: $80
    nop                                           ; $6d1e: $00
    cp a                                          ; $6d1f: $bf
    nop                                           ; $6d20: $00
    ld b, b                                       ; $6d21: $40
    ld e, [hl]                                    ; $6d22: $5e
    and b                                         ; $6d23: $a0
    cpl                                           ; $6d24: $2f
    ret nc                                        ; $6d25: $d0

    rlca                                          ; $6d26: $07
    ld hl, sp+$23                                 ; $6d27: $f8 $23
    nop                                           ; $6d29: $00
    sbc $03                                       ; $6d2a: $de $03
    cp $11                                        ; $6d2c: $fe $11
    xor $16                                       ; $6d2e: $ee $16
    nop                                           ; $6d30: $00
    or [hl]                                       ; $6d31: $b6
    add c                                         ; $6d32: $81
    jr jr_0a6_6d40                                ; $6d33: $18 $0b

    ld [bc], a                                    ; $6d35: $02
    cp [hl]                                       ; $6d36: $be
    inc bc                                        ; $6d37: $03
    rst $38                                       ; $6d38: $ff
    nop                                           ; $6d39: $00
    db $dd                                        ; $6d3a: $dd
    ld [$8101], a                                 ; $6d3b: $ea $01 $81
    jr nc, jr_0a6_6d4a                            ; $6d3e: $30 $0a

jr_0a6_6d40:
    db $10                                        ; $6d40: $10
    rst $28                                       ; $6d41: $ef
    add hl, bc                                    ; $6d42: $09
    or $04                                        ; $6d43: $f6 $04
    ei                                            ; $6d45: $fb
    inc a                                         ; $6d46: $3c
    add hl, bc                                    ; $6d47: $09
    inc h                                         ; $6d48: $24
    ld a, h                                       ; $6d49: $7c

jr_0a6_6d4a:
    inc bc                                        ; $6d4a: $03
    add b                                         ; $6d4b: $80
    ld bc, $555c                                  ; $6d4c: $01 $5c $55
    ld l, b                                       ; $6d4f: $68
    nop                                           ; $6d50: $00
    ld d, $ea                                     ; $6d51: $16 $ea
    nop                                           ; $6d53: $00
    dec h                                         ; $6d54: $25
    rst $18                                       ; $6d55: $df
    ld d, h                                       ; $6d56: $54
    xor e                                         ; $6d57: $ab
    ld a, [hl+]                                   ; $6d58: $2a
    push de                                       ; $6d59: $d5
    push af                                       ; $6d5a: $f5
    ld a, [$af00]                                 ; $6d5b: $fa $00 $af
    ld e, a                                       ; $6d5e: $5f
    push de                                       ; $6d5f: $d5
    dec hl                                        ; $6d60: $2b
    cp [hl]                                       ; $6d61: $be
    ld bc, $0055                                  ; $6d62: $01 $55 $00
    nop                                           ; $6d65: $00
    ld sp, hl                                     ; $6d66: $f9
    cp $bf                                        ; $6d67: $fe $bf
    rst $38                                       ; $6d69: $ff
    dec bc                                        ; $6d6a: $0b
    rst $38                                       ; $6d6b: $ff
    ld d, c                                       ; $6d6c: $51
    xor a                                         ; $6d6d: $af
    nop                                           ; $6d6e: $00
    xor d                                         ; $6d6f: $aa
    push de                                       ; $6d70: $d5
    ld a, c                                       ; $6d71: $79
    cp $a7                                        ; $6d72: $fe $a7
    ld e, a                                       ; $6d74: $5f
    ld d, a                                       ; $6d75: $57
    nop                                           ; $6d76: $00
    nop                                           ; $6d77: $00
    ld d, e                                       ; $6d78: $53
    add e                                         ; $6d79: $83
    inc de                                        ; $6d7a: $13
    pop hl                                        ; $6d7b: $e1
    db $eb                                        ; $6d7c: $eb
    pop af                                        ; $6d7d: $f1
    ld [hl], e                                    ; $6d7e: $73
    ld sp, hl                                     ; $6d7f: $f9
    nop                                           ; $6d80: $00
    and l                                         ; $6d81: $a5
    ld [hl], e                                    ; $6d82: $73
    ld c, e                                       ; $6d83: $4b
    or a                                          ; $6d84: $b7
    rst $38                                       ; $6d85: $ff
    rst $38                                       ; $6d86: $ff
    ld d, h                                       ; $6d87: $54
    xor e                                         ; $6d88: $ab
    nop                                           ; $6d89: $00
    nop                                           ; $6d8a: $00
    nop                                           ; $6d8b: $00
    ld de, $fd44                                  ; $6d8c: $11 $44 $fd
    ld [bc], a                                    ; $6d8f: $02
    add b                                         ; $6d90: $80
    nop                                           ; $6d91: $00
    nop                                           ; $6d92: $00
    sub c                                         ; $6d93: $91
    cp $48                                        ; $6d94: $fe $48
    rst $38                                       ; $6d96: $ff
    and b                                         ; $6d97: $a0
    rst $38                                       ; $6d98: $ff
    ld d, b                                       ; $6d99: $50
    rst $38                                       ; $6d9a: $ff
    ld d, b                                       ; $6d9b: $50
    nop                                           ; $6d9c: $00
    ld d, $03                                     ; $6d9d: $16 $03
    cp c                                          ; $6d9f: $b9
    ret nc                                        ; $6da0: $d0

    nop                                           ; $6da1: $00
    ld [bc], a                                    ; $6da2: $02
    db $fc                                        ; $6da3: $fc
    ld bc, $00fe                                  ; $6da4: $01 $fe $00
    ld b, d                                       ; $6da7: $42
    cp $2b                                        ; $6da8: $fe $2b
    cp $00                                        ; $6daa: $fe $00
    nop                                           ; $6dac: $00
    ld d, h                                       ; $6dad: $54
    nop                                           ; $6dae: $00
    ld d, b                                       ; $6daf: $50
    ld [$04c4], a                                 ; $6db0: $ea $c4 $04
    jp c, Jump_000_00ec                           ; $6db3: $da $ec $00

    ei                                            ; $6db6: $fb
    nop                                           ; $6db7: $00
    ld a, l                                       ; $6db8: $7d
    nop                                           ; $6db9: $00
    jr nz, jr_0a6_6e3b                            ; $6dba: $20 $7f

    ld a, a                                       ; $6dbc: $7f
    ldh a, [rNR24]                                ; $6dbd: $f0 $19
    and d                                         ; $6dbf: $a2
    nop                                           ; $6dc0: $00
    ld d, c                                       ; $6dc1: $51
    ld [bc], a                                    ; $6dc2: $02
    xor d                                         ; $6dc3: $aa
    nop                                           ; $6dc4: $00
    ld [bc], a                                    ; $6dc5: $02
    sub $02                                       ; $6dc6: $d6 $02
    add hl, hl                                    ; $6dc8: $29
    rst $38                                       ; $6dc9: $ff
    inc [hl]                                      ; $6dca: $34
    rst $38                                       ; $6dcb: $ff
    ld e, $00                                     ; $6dcc: $1e $00
    rst $38                                       ; $6dce: $ff
    ld c, a                                       ; $6dcf: $4f
    rst $38                                       ; $6dd0: $ff
    daa                                           ; $6dd1: $27
    rst $38                                       ; $6dd2: $ff
    dec d                                         ; $6dd3: $15
    rst $38                                       ; $6dd4: $ff
    ld a, [bc]                                    ; $6dd5: $0a
    nop                                           ; $6dd6: $00
    rst $38                                       ; $6dd7: $ff
    sub l                                         ; $6dd8: $95
    ld a, a                                       ; $6dd9: $7f
    rla                                           ; $6dda: $17
    cp $0b                                        ; $6ddb: $fe $0b
    cp $86                                        ; $6ddd: $fe $86
    nop                                           ; $6ddf: $00
    rst $38                                       ; $6de0: $ff
    ld b, a                                       ; $6de1: $47
    cp $af                                        ; $6de2: $fe $af
    rst $38                                       ; $6de4: $ff
    adc $ff                                       ; $6de5: $ce $ff
    rst $30                                       ; $6de7: $f7
    sub b                                         ; $6de8: $90
    xor b                                         ; $6de9: $a8
    dec b                                         ; $6dea: $05
    or $00                                        ; $6deb: $f6 $00
    db $fd                                        ; $6ded: $fd
    ld [bc], a                                    ; $6dee: $02
    nop                                           ; $6def: $00
    ld a, e                                       ; $6df0: $7b
    add b                                         ; $6df1: $80
    cp [hl]                                       ; $6df2: $be
    nop                                           ; $6df3: $00
    ld b, b                                       ; $6df4: $40
    ld d, a                                       ; $6df5: $57
    xor b                                         ; $6df6: $a8
    dec hl                                        ; $6df7: $2b
    call nc, $fa45                                ; $6df8: $d4 $45 $fa
    ld a, [$0200]                                 ; $6dfb: $fa $00 $02
    ld e, a                                       ; $6dfe: $5f
    ld [bc], a                                    ; $6dff: $02
    xor $02                                       ; $6e00: $ee $02
    rst $30                                       ; $6e02: $f7
    ld [bc], a                                    ; $6e03: $02
    rst $38                                       ; $6e04: $ff
    nop                                           ; $6e05: $00
    ld [bc], a                                    ; $6e06: $02
    rst $28                                       ; $6e07: $ef
    ld [bc], a                                    ; $6e08: $02
    ld [hl], a                                    ; $6e09: $77
    ld [bc], a                                    ; $6e0a: $02
    cp a                                          ; $6e0b: $bf
    ld [bc], a                                    ; $6e0c: $02
    ld a, [bc]                                    ; $6e0d: $0a
    nop                                           ; $6e0e: $00
    rst $38                                       ; $6e0f: $ff
    add l                                         ; $6e10: $85
    ld a, a                                       ; $6e11: $7f
    ld b, c                                       ; $6e12: $41
    cp a                                          ; $6e13: $bf
    add b                                         ; $6e14: $80
    nop                                           ; $6e15: $00
    cp l                                          ; $6e16: $bd
    jr nz, jr_0a6_6e1b                            ; $6e17: $20 $02

    xor $aa                                       ; $6e19: $ee $aa

jr_0a6_6e1b:
    dec b                                         ; $6e1b: $05
    xor [hl]                                      ; $6e1c: $ae
    ld bc, $fffe                                  ; $6e1d: $01 $fe $ff
    cp [hl]                                       ; $6e20: $be
    nop                                           ; $6e21: $00
    rst $38                                       ; $6e22: $ff
    db $dd                                        ; $6e23: $dd
    rst $38                                       ; $6e24: $ff
    ld d, $00                                     ; $6e25: $16 $00
    jp z, $a43d                                   ; $6e27: $ca $3d $a4

    nop                                           ; $6e2a: $00

Call_0a6_6e2b:
    ld e, a                                       ; $6e2b: $5f
    ld d, d                                       ; $6e2c: $52
    xor a                                         ; $6e2d: $af
    xor e                                         ; $6e2e: $ab
    ld d, [hl]                                    ; $6e2f: $56
    rst $38                                       ; $6e30: $ff
    ld [bc], a                                    ; $6e31: $02
    ld e, a                                       ; $6e32: $5f
    db $10                                        ; $6e33: $10
    and d                                         ; $6e34: $a2
    xor l                                         ; $6e35: $ad
    ld d, d                                       ; $6e36: $52
    add b                                         ; $6e37: $80
    ld bc, $3475                                  ; $6e38: $01 $75 $34

jr_0a6_6e3b:
    db $db                                        ; $6e3b: $db
    ld e, e                                       ; $6e3c: $5b
    inc c                                         ; $6e3d: $0c
    rst $28                                       ; $6e3e: $ef
    xor e                                         ; $6e3f: $ab
    rst $30                                       ; $6e40: $f7
    rst $30                                       ; $6e41: $f7
    halt                                          ; $6e42: $76
    ld de, $0aec                                  ; $6e43: $11 $ec $0a
    ld a, a                                       ; $6e46: $7f
    nop                                           ; $6e47: $00
    ld d, c                                       ; $6e48: $51
    rst $18                                       ; $6e49: $df
    ld a, [hl-]                                   ; $6e4a: $3a
    inc bc                                        ; $6e4b: $03
    ld a, [hl]                                    ; $6e4c: $7e
    ld d, $01                                     ; $6e4d: $16 $01
    cp $03                                        ; $6e4f: $fe $03
    jp c, $023e                                   ; $6e51: $da $3e $02

    ld b, h                                       ; $6e54: $44
    ld a, a                                       ; $6e55: $7f
    ld e, $01                                     ; $6e56: $1e $01
    ld a, [$ef03]                                 ; $6e58: $fa $03 $ef
    ld d, [hl]                                    ; $6e5b: $56
    ld de, $0080                                  ; $6e5c: $11 $80 $00
    inc b                                         ; $6e5f: $04
    ld b, b                                       ; $6e60: $40
    rst $38                                       ; $6e61: $ff
    add h                                         ; $6e62: $84
    rst $38                                       ; $6e63: $ff
    ld b, b                                       ; $6e64: $40
    call nc, Call_0a6_7e05                        ; $6e65: $d4 $05 $7e
    inc bc                                        ; $6e68: $03
    db $10                                        ; $6e69: $10
    or a                                          ; $6e6a: $b7
    ld [bc], a                                    ; $6e6b: $02
    ret c                                         ; $6e6c: $d8

    jr nz, jr_0a6_6e70                            ; $6e6d: $20 $01

    ld [bc], a                                    ; $6e6f: $02

jr_0a6_6e70:
    db $fc                                        ; $6e70: $fc
    ld d, c                                       ; $6e71: $51
    xor $00                                       ; $6e72: $ee $00
    and e                                         ; $6e74: $a3
    ld a, [hl]                                    ; $6e75: $7e
    ld d, d                                       ; $6e76: $52
    cp [hl]                                       ; $6e77: $be
    add b                                         ; $6e78: $80
    rst $38                                       ; $6e79: $ff
    ret z                                         ; $6e7a: $c8

    rst $38                                       ; $6e7b: $ff
    ld b, h                                       ; $6e7c: $44
    and h                                         ; $6e7d: $a4
    or b                                          ; $6e7e: $b0
    dec b                                         ; $6e7f: $05
    add sp, -$01                                  ; $6e80: $e8 $ff
    ld d, h                                       ; $6e82: $54
    ld hl, sp+$04                                 ; $6e83: $f8 $04
    ld b, l                                       ; $6e85: $45
    rst $38                                       ; $6e86: $ff
    db $10                                        ; $6e87: $10
    rlca                                          ; $6e88: $07
    cp $43                                        ; $6e89: $fe $43
    and $00                                       ; $6e8b: $e6 $00
    ld b, $ff                                     ; $6e8d: $06 $ff
    adc e                                         ; $6e8f: $8b
    cp $02                                        ; $6e90: $fe $02
    ld b, a                                       ; $6e92: $47
    cp $23                                        ; $6e93: $fe $23
    cp $03                                        ; $6e95: $fe $03
    cp $8f                                        ; $6e97: $fe $8f
    inc de                                        ; $6e99: $13
    rst $38                                       ; $6e9a: $ff
    add b                                         ; $6e9b: $80
    ldh [$39], a                                  ; $6e9c: $e0 $39
    and e                                         ; $6e9e: $a3
    cp $13                                        ; $6e9f: $fe $13
    cp $41                                        ; $6ea1: $fe $41
    cp $16                                        ; $6ea3: $fe $16
    ld [bc], a                                    ; $6ea5: $02
    nop                                           ; $6ea6: $00
    db $eb                                        ; $6ea7: $eb
    inc d                                         ; $6ea8: $14
    ld [hl], l                                    ; $6ea9: $75
    ld a, [bc]                                    ; $6eaa: $0a
    cp a                                          ; $6eab: $bf
    or [hl]                                       ; $6eac: $b6
    nop                                           ; $6ead: $00
    and h                                         ; $6eae: $a4
    ld b, b                                       ; $6eaf: $40
    ld e, e                                       ; $6eb0: $5b
    ld a, [$740d]                                 ; $6eb1: $fa $0d $74
    adc e                                         ; $6eb4: $8b
    ld a, d                                       ; $6eb5: $7a
    add l                                         ; $6eb6: $85
    dec a                                         ; $6eb7: $3d
    jp nz, $de00                                  ; $6eb8: $c2 $00 $de

    ld hl, $807f                                  ; $6ebb: $21 $7f $80
    xor d                                         ; $6ebe: $aa
    rst $38                                       ; $6ebf: $ff
    ld d, [hl]                                    ; $6ec0: $56
    rst $38                                       ; $6ec1: $ff
    nop                                           ; $6ec2: $00
    dec hl                                        ; $6ec3: $2b
    cp $16                                        ; $6ec4: $fe $16
    rst $38                                       ; $6ec6: $ff
    inc bc                                        ; $6ec7: $03
    cp $22                                        ; $6ec8: $fe $22
    rst $18                                       ; $6eca: $df
    nop                                           ; $6ecb: $00
    sub e                                         ; $6ecc: $93
    ld l, [hl]                                    ; $6ecd: $6e
    ld b, e                                       ; $6ece: $43
    cp [hl]                                       ; $6ecf: $be
    rla                                           ; $6ed0: $17
    rst $38                                       ; $6ed1: $ff
    xor d                                         ; $6ed2: $aa
    rst $18                                       ; $6ed3: $df
    nop                                           ; $6ed4: $00
    ld d, c                                       ; $6ed5: $51
    rst $28                                       ; $6ed6: $ef
    xor b                                         ; $6ed7: $a8
    ld [hl], a                                    ; $6ed8: $77
    ld b, c                                       ; $6ed9: $41
    cp [hl]                                       ; $6eda: $be
    xor b                                         ; $6edb: $a8
    ld d, a                                       ; $6edc: $57
    nop                                           ; $6edd: $00
    push af                                       ; $6ede: $f5
    ld a, [bc]                                    ; $6edf: $0a
    jp c, Jump_0a6_5625                           ; $6ee0: $da $25 $56

    ei                                            ; $6ee3: $fb
    ld [$50ff], a                                 ; $6ee4: $ea $ff $50
    ld [hl], a                                    ; $6ee7: $77
    cp d                                          ; $6ee8: $ba
    ld [bc], a                                    ; $6ee9: $02
    rla                                           ; $6eea: $17
    ld e, $01                                     ; $6eeb: $1e $01
    daa                                           ; $6eed: $27
    rst $38                                       ; $6eee: $ff
    sub d                                         ; $6eef: $92
    ld a, a                                       ; $6ef0: $7f
    nop                                           ; $6ef1: $00
    cpl                                           ; $6ef2: $2f
    ret nc                                        ; $6ef3: $d0

    rla                                           ; $6ef4: $17
    add sp, $2b                                   ; $6ef5: $e8 $2b
    call nc, Call_000_0080                        ; $6ef7: $d4 $80 $00
    inc b                                         ; $6efa: $04
    and l                                         ; $6efb: $a5
    nop                                           ; $6efc: $00
    ld d, d                                       ; $6efd: $52
    nop                                           ; $6efe: $00
    xor l                                         ; $6eff: $ad
    ld [bc], a                                    ; $6f00: $02
    ld [bc], a                                    ; $6f01: $02
    xor d                                         ; $6f02: $aa
    ld d, [hl]                                    ; $6f03: $56
    nop                                           ; $6f04: $00
    rst $10                                       ; $6f05: $d7
    ld a, [hl+]                                   ; $6f06: $2a
    ld sp, hl                                     ; $6f07: $f9
    ld b, $16                                     ; $6f08: $06 $16
    nop                                           ; $6f0a: $00
    inc bc                                        ; $6f0b: $03
    nop                                           ; $6f0c: $00
    nop                                           ; $6f0d: $00
    add b                                         ; $6f0e: $80
    ld [bc], a                                    ; $6f0f: $02
    ld b, d                                       ; $6f10: $42
    ld [bc], a                                    ; $6f11: $02
    ld [hl+], a                                   ; $6f12: $22
    ld [bc], a                                    ; $6f13: $02
    rst $28                                       ; $6f14: $ef

jr_0a6_6f15:
    db $10                                        ; $6f15: $10
    dec d                                         ; $6f16: $15
    db $fd                                        ; $6f17: $fd
    ld [bc], a                                    ; $6f18: $02
    halt                                          ; $6f19: $76
    nop                                           ; $6f1a: $00
    inc bc                                        ; $6f1b: $03
    ld e, l                                       ; $6f1c: $5d
    jr c, jr_0a6_6f20                             ; $6f1d: $38 $01

    rra                                           ; $6f1f: $1f

jr_0a6_6f20:
    ld l, d                                       ; $6f20: $6a
    inc b                                         ; $6f21: $04
    nop                                           ; $6f22: $00
    ld c, e                                       ; $6f23: $4b
    cp a                                          ; $6f24: $bf
    and e                                         ; $6f25: $a3
    ld e, a                                       ; $6f26: $5f
    call nc, $162b                                ; $6f27: $d4 $2b $16
    nop                                           ; $6f2a: $00
    inc b                                         ; $6f2b: $04
    rst $30                                       ; $6f2c: $f7
    ld [$07b8], sp                                ; $6f2d: $08 $b8 $07
    rst $28                                       ; $6f30: $ef
    ld [hl], $01                                  ; $6f31: $36 $01
    nop                                           ; $6f33: $00
    ld h, b                                       ; $6f34: $60
    dec l                                         ; $6f35: $2d
    ldh a, [$90]                                  ; $6f36: $f0 $90
    ld [bc], a                                    ; $6f38: $02
    ld c, b                                       ; $6f39: $48
    sub d                                         ; $6f3a: $92
    ld [hl], $00                                  ; $6f3b: $36 $00
    adc b                                         ; $6f3d: $88
    add hl, bc                                    ; $6f3e: $09
    ld [$1004], a                                 ; $6f3f: $ea $04 $10
    ld b, $7f                                     ; $6f42: $06 $7f
    ld [bc], a                                    ; $6f44: $02
    dec b                                         ; $6f45: $05
    nop                                           ; $6f46: $00
    ld [bc], a                                    ; $6f47: $02
    ld [hl-], a                                   ; $6f48: $32
    rlca                                          ; $6f49: $07
    ld bc, $4028                                  ; $6f4a: $01 $28 $40
    add b                                         ; $6f4d: $80
    rlc b                                         ; $6f4e: $cb $00
    ld a, a                                       ; $6f50: $7f
    add b                                         ; $6f51: $80
    rst $38                                       ; $6f52: $ff
    sbc a                                         ; $6f53: $9f
    ld h, b                                       ; $6f54: $60
    sbc a                                         ; $6f55: $9f
    ldh a, [$c2]                                  ; $6f56: $f0 $c2
    inc b                                         ; $6f58: $04
    jr z, jr_0a6_6f99                             ; $6f59: $28 $3e

    db $10                                        ; $6f5b: $10
    or b                                          ; $6f5c: $b0
    ret nc                                        ; $6f5d: $d0

    ret nc                                        ; $6f5e: $d0

    or b                                          ; $6f5f: $b0
    ld b, a                                       ; $6f60: $47
    ld [$30d0], sp                                ; $6f61: $08 $d0 $30
    ldh a, [$be]                                  ; $6f64: $f0 $be
    adc h                                         ; $6f66: $8c
    ld bc, $09f0                                  ; $6f67: $01 $f0 $09
    cp $00                                        ; $6f6a: $fe $00
    db $fd                                        ; $6f6c: $fd
    ld [bc], a                                    ; $6f6d: $02
    ld bc, $42be                                  ; $6f6e: $01 $be $42
    rst $10                                       ; $6f71: $d7
    ld a, [hl+]                                   ; $6f72: $2a
    and b                                         ; $6f73: $a0
    nop                                           ; $6f74: $00
    call nc, Call_0a6_51f0                        ; $6f75: $d4 $f0 $51
    ret nz                                        ; $6f78: $c0

    jr c, @+$32                                   ; $6f79: $38 $30

    ld b, h                                       ; $6f7b: $44
    jr nz, jr_0a6_6f15                            ; $6f7c: $20 $97

    add sp, $4a                                   ; $6f7e: $e8 $4a
    push af                                       ; $6f80: $f5
    dec h                                         ; $6f81: $25
    ld a, [$8200]                                 ; $6f82: $fa $00 $82
    db $fd                                        ; $6f85: $fd
    ld c, b                                       ; $6f86: $48
    rst $38                                       ; $6f87: $ff
    db $e4                                        ; $6f88: $e4
    ei                                            ; $6f89: $fb
    ld [hl], d                                    ; $6f8a: $72
    db $fd                                        ; $6f8b: $fd
    ld b, b                                       ; $6f8c: $40
    ld [$0380], a                                 ; $6f8d: $ea $80 $03
    or $03                                        ; $6f90: $f6 $03
    ld a, [hl]                                    ; $6f92: $7e
    add e                                         ; $6f93: $83
    cp [hl]                                       ; $6f94: $be
    ld b, e                                       ; $6f95: $43
    nop                                           ; $6f96: $00
    ld d, [hl]                                    ; $6f97: $56
    xor e                                         ; $6f98: $ab

jr_0a6_6f99:
    xor d                                         ; $6f99: $aa
    ld d, a                                       ; $6f9a: $57
    ld d, [hl]                                    ; $6f9b: $56
    xor e                                         ; $6f9c: $ab
    ld a, [bc]                                    ; $6f9d: $0a
    rst $30                                       ; $6f9e: $f7
    ld sp, $f708                                  ; $6f9f: $31 $08 $f7
    add $0c                                       ; $6fa2: $c6 $0c
    sbc h                                         ; $6fa4: $9c
    ld a, [bc]                                    ; $6fa5: $0a
    add b                                         ; $6fa6: $80
    ld a, a                                       ; $6fa7: $7f
    jr nz, @-$5d                                  ; $6fa8: $20 $a1

    ld bc, $8320                                  ; $6faa: $01 $20 $83
    ld a, [hl]                                    ; $6fad: $7e
    sbc a                                         ; $6fae: $9f
    ld bc, $27fe                                  ; $6faf: $01 $fe $27
    jp c, $ee13                                   ; $6fb2: $da $13 $ee

    ld bc, $7e82                                  ; $6fb5: $01 $82 $7e
    ld b, e                                       ; $6fb8: $43
    cp [hl]                                       ; $6fb9: $be
    rlca                                          ; $6fba: $07
    ld a, [$bc75]                                 ; $6fbb: $fa $75 $bc
    rlca                                          ; $6fbe: $07
    ld d, b                                       ; $6fbf: $50
    sub l                                         ; $6fc0: $95
    ld h, b                                       ; $6fc1: $60
    ld bc, $0c25                                  ; $6fc2: $01 $25 $0c
    ld bc, $bd42                                  ; $6fc5: $01 $42 $bd
    and c                                         ; $6fc8: $a1
    ld e, [hl]                                    ; $6fc9: $5e
    inc b                                         ; $6fca: $04
    ld b, [hl]                                    ; $6fcb: $46
    cp e                                          ; $6fcc: $bb
    ld [hl-], a                                   ; $6fcd: $32
    rst $18                                       ; $6fce: $df
    ld c, c                                       ; $6fcf: $49
    ldh a, [rSB]                                  ; $6fd0: $f0 $01
    ld d, a                                       ; $6fd2: $57
    ld sp, hl                                     ; $6fd3: $f9
    ld b, e                                       ; $6fd4: $43
    and b                                         ; $6fd5: $a0
    inc h                                         ; $6fd6: $24
    ld bc, $bf4b                                  ; $6fd7: $01 $4b $bf
    db $10                                        ; $6fda: $10
    rst $28                                       ; $6fdb: $ef
    and $0c                                       ; $6fdc: $e6 $0c
    ret nz                                        ; $6fde: $c0

    add hl, sp                                    ; $6fdf: $39
    inc bc                                        ; $6fe0: $03
    add e                                         ; $6fe1: $83
    ld a, [hl]                                    ; $6fe2: $7e
    ld c, d                                       ; $6fe3: $4a
    or [hl]                                       ; $6fe4: $b6
    dec h                                         ; $6fe5: $25
    jp c, Jump_000_39c0                           ; $6fe6: $da $c0 $39

    sbc a                                         ; $6fe9: $9f
    ld de, $a4d0                                  ; $6fea: $11 $d0 $a4
    ld de, $9804                                  ; $6fed: $11 $04 $98
    ld e, e                                       ; $6ff0: $5b
    ld d, [hl]                                    ; $6ff1: $56
    ld bc, $0016                                  ; $6ff2: $01 $16 $00
    adc e                                         ; $6ff5: $8b
    nop                                           ; $6ff6: $00
    ld b, $85                                     ; $6ff7: $06 $85
    nop                                           ; $6ff9: $00
    jp nz, Jump_000_2100                          ; $6ffa: $c2 $00 $21

    ld a, h                                       ; $6ffd: $7c
    rlca                                          ; $6ffe: $07
    sbc b                                         ; $6fff: $98
    ld [$00d7], sp                                ; $7000: $08 $d7 $00
    ld a, [hl+]                                   ; $7003: $2a
    ld [$ff17], a                                 ; $7004: $ea $17 $ff
    ld [bc], a                                    ; $7007: $02
    sbc $03                                       ; $7008: $de $03
    ld l, a                                       ; $700a: $6f
    adc d                                         ; $700b: $8a
    ld [hl], b                                    ; $700c: $70
    ld [bc], a                                    ; $700d: $02
    ld d, a                                       ; $700e: $57
    ei                                            ; $700f: $fb

Jump_0a6_7010:
    db $eb                                        ; $7010: $eb
    sub b                                         ; $7011: $90
    ld bc, $90af                                  ; $7012: $01 $af $90
    ld bc, $820b                                  ; $7015: $01 $0b $82
    or h                                          ; $7018: $b4
    ld [bc], a                                    ; $7019: $02
    sub e                                         ; $701a: $93
    ld a, a                                       ; $701b: $7f
    ret nc                                        ; $701c: $d0

    nop                                           ; $701d: $00

Jump_0a6_701e:
    add sp, -$0e                                  ; $701e: $e8 $f2
    nop                                           ; $7020: $00
    add b                                         ; $7021: $80
    and b                                         ; $7022: $a0
    jr nc, jr_0a6_7025                            ; $7023: $30 $00

jr_0a6_7025:
    ld b, d                                       ; $7025: $42
    sub $06                                       ; $7026: $d6 $06
    ret nc                                        ; $7028: $d0

    nop                                           ; $7029: $00
    ld d, [hl]                                    ; $702a: $56
    ld [bc], a                                    ; $702b: $02
    dec hl                                        ; $702c: $2b
    ld a, [hl-]                                   ; $702d: $3a
    ld [bc], a                                    ; $702e: $02
    dec b                                         ; $702f: $05
    ret nc                                        ; $7030: $d0

    inc b                                         ; $7031: $04
    sub b                                         ; $7032: $90
    add hl, hl                                    ; $7033: $29
    add b                                         ; $7034: $80
    add hl, bc                                    ; $7035: $09
    push de                                       ; $7036: $d5
    add b                                         ; $7037: $80
    ld b, c                                       ; $7038: $41
    ld l, d                                       ; $7039: $6a
    jr z, jr_0a6_703c                             ; $703a: $28 $00

jr_0a6_703c:
    or l                                          ; $703c: $b5
    inc c                                         ; $703d: $0c
    inc bc                                        ; $703e: $03

jr_0a6_703f:
    db $ed                                        ; $703f: $ed
    or h                                          ; $7040: $b4
    dec b                                         ; $7041: $05
    cp a                                          ; $7042: $bf
    ld b, b                                       ; $7043: $40
    sbc $08                                       ; $7044: $de $08
    jr nz, jr_0a6_703f                            ; $7046: $20 $f7

    ld [$0012], sp                                ; $7048: $08 $12 $00
    dec b                                         ; $704b: $05
    add d                                         ; $704c: $82
    ld [bc], a                                    ; $704d: $02
    ld d, d                                       ; $704e: $52
    add [hl]                                      ; $704f: $86
    add h                                         ; $7050: $84
    ld hl, $027f                                  ; $7051: $21 $7f $02
    halt                                          ; $7054: $76
    inc bc                                        ; $7055: $03
    ld h, h                                       ; $7056: $64
    nop                                           ; $7057: $00
    ret c                                         ; $7058: $d8

    ld [bc], a                                    ; $7059: $02
    ld e, e                                       ; $705a: $5b
    ld [$2f02], sp                                ; $705b: $08 $02 $2f
    ld [bc], a                                    ; $705e: $02
    rla                                           ; $705f: $17
    inc e                                         ; $7060: $1c
    dec b                                         ; $7061: $05
    ld a, a                                       ; $7062: $7f
    add b                                         ; $7063: $80
    cp e                                          ; $7064: $bb
    add b                                         ; $7065: $80
    ld h, b                                       ; $7066: $60
    inc de                                        ; $7067: $13
    ld l, [hl]                                    ; $7068: $6e
    sub b                                         ; $7069: $90
    or a                                          ; $706a: $b7
    ld c, b                                       ; $706b: $48
    ld e, a                                       ; $706c: $5f
    and b                                         ; $706d: $a0
    xor a                                         ; $706e: $af
    ld b, b                                       ; $706f: $40
    ld d, b                                       ; $7070: $50
    ld [hl], b                                    ; $7071: $70
    add hl, hl                                    ; $7072: $29
    rst $38                                       ; $7073: $ff
    nop                                           ; $7074: $00
    db $fc                                        ; $7075: $fc
    inc bc                                        ; $7076: $03
    cp a                                          ; $7077: $bf
    ld b, d                                       ; $7078: $42
    ld hl, $2bd6                                  ; $7079: $21 $d6 $2b
    ld [hl], b                                    ; $707c: $70
    add hl, hl                                    ; $707d: $29
    dec h                                         ; $707e: $25
    jp c, $fd02                                   ; $707f: $da $02 $fd

    ld [hl-], a                                   ; $7082: $32
    inc c                                         ; $7083: $0c
    add b                                         ; $7084: $80
    ld d, b                                       ; $7085: $50
    dec l                                         ; $7086: $2d
    ld e, [hl]                                    ; $7087: $5e
    and b                                         ; $7088: $a0
    xor l                                         ; $7089: $ad
    ld d, d                                       ; $708a: $52
    ld d, [hl]                                    ; $708b: $56
    xor d                                         ; $708c: $aa
    ld a, [hl+]                                   ; $708d: $2a
    ld b, c                                       ; $708e: $41
    sub $2a                                       ; $708f: $d6 $2a
    dec bc                                        ; $7091: $0b
    ld l, a                                       ; $7092: $6f
    ld [bc], a                                    ; $7093: $02
    cp e                                          ; $7094: $bb
    ld [bc], a                                    ; $7095: $02
    rst $18                                       ; $7096: $df
    ld [hl], $03                                  ; $7097: $36 $03
    ld a, d                                       ; $7099: $7a
    ld a, a                                       ; $709a: $7f
    ld b, $00                                     ; $709b: $06 $00
    nop                                           ; $709d: $00
    inc l                                         ; $709e: $2c
    ldh a, [$2d]                                  ; $709f: $f0 $2d
    ld c, h                                       ; $70a1: $4c
    dec bc                                        ; $70a2: $0b
    ld a, l                                       ; $70a3: $7d
    add b                                         ; $70a4: $80
    dec b                                         ; $70a5: $05
    ld e, a                                       ; $70a6: $5f
    dec [hl]                                      ; $70a7: $35
    nop                                           ; $70a8: $00
    xor c                                         ; $70a9: $a9
    ld a, [hl]                                    ; $70aa: $7e
    dec b                                         ; $70ab: $05
    ld [bc], a                                    ; $70ac: $02
    ld a, [bc]                                    ; $70ad: $0a
    cp $5c                                        ; $70ae: $fe $5c
    inc bc                                        ; $70b0: $03
    db $db                                        ; $70b1: $db
    ld e, [hl]                                    ; $70b2: $5e
    inc bc                                        ; $70b3: $03
    ld d, c                                       ; $70b4: $51
    ld a, [hl]                                    ; $70b5: $7e
    ld e, [hl]                                    ; $70b6: $5e
    inc bc                                        ; $70b7: $03
    ei                                            ; $70b8: $fb
    ld [de], a                                    ; $70b9: $12
    ld [bc], a                                    ; $70ba: $02
    or [hl]                                       ; $70bb: $b6
    ld [bc], a                                    ; $70bc: $02
    reti                                          ; $70bd: $d9


    and b                                         ; $70be: $a0
    dec b                                         ; $70bf: $05

jr_0a6_70c0:
    add b                                         ; $70c0: $80
    nop                                           ; $70c1: $00
    dec hl                                        ; $70c2: $2b
    or h                                          ; $70c3: $b4
    rst $38                                       ; $70c4: $ff
    rst $18                                       ; $70c5: $df
    ldh a, [$b7]                                  ; $70c6: $f0 $b7
    ld hl, sp-$26                                 ; $70c8: $f8 $da
    db $10                                        ; $70ca: $10
    db $fd                                        ; $70cb: $fd
    or a                                          ; $70cc: $b7
    ld hl, sp+$08                                 ; $70cd: $f8 $08
    jr jr_0a6_70dc                                ; $70cf: $18 $0b

    rst $38                                       ; $70d1: $ff
    db $fd                                        ; $70d2: $fd
    inc bc                                        ; $70d3: $03
    nop                                           ; $70d4: $00
    halt                                          ; $70d5: $76
    adc c                                         ; $70d6: $89
    xor e                                         ; $70d7: $ab
    db $dd                                        ; $70d8: $dd
    halt                                          ; $70d9: $76
    adc c                                         ; $70da: $89
    rst $38                                       ; $70db: $ff

jr_0a6_70dc:
    ld bc, $0888                                  ; $70dc: $01 $88 $08
    ld [$f8b7], sp                                ; $70df: $08 $b7 $f8
    rst $38                                       ; $70e2: $ff
    jr nz, jr_0a6_70e5                            ; $70e3: $20 $00

jr_0a6_70e5:
    ld a, [$f7fd]                                 ; $70e5: $fa $fd $f7
    ld sp, $b0f8                                  ; $70e8: $31 $f8 $b0
    adc d                                         ; $70eb: $8a
    ld d, $18                                     ; $70ec: $16 $18
    jr z, jr_0a6_7164                             ; $70ee: $28 $74

    adc e                                         ; $70f0: $8b
    ld bc, $169a                                  ; $70f1: $01 $9a $16
    or b                                          ; $70f4: $b0
    ld c, b                                       ; $70f5: $48
    ld a, [hl+]                                   ; $70f6: $2a
    ldh [$58], a                                  ; $70f7: $e0 $58
    ld a, [bc]                                    ; $70f9: $0a
    ld [hl], a                                    ; $70fa: $77
    ld b, $f0                                     ; $70fb: $06 $f0
    push af                                       ; $70fd: $f5
    ldh a, [$fa]                                  ; $70fe: $f0 $fa
    adc b                                         ; $7100: $88
    inc b                                         ; $7101: $04
    db $10                                        ; $7102: $10
    db $f4                                        ; $7103: $f4
    ldh a, [$f8]                                  ; $7104: $f0 $f8
    inc b                                         ; $7106: $04
    nop                                           ; $7107: $00
    ld sp, hl                                     ; $7108: $f9
    inc bc                                        ; $7109: $03
    ld d, a                                       ; $710a: $57
    jr nz, jr_0a6_7110                            ; $710b: $20 $03

    xor e                                         ; $710d: $ab
    inc b                                         ; $710e: $04
    nop                                           ; $710f: $00

jr_0a6_7110:
    dec hl                                        ; $7110: $2b
    inc bc                                        ; $7111: $03
    rlca                                          ; $7112: $07
    inc bc                                        ; $7113: $03
    ld b, e                                       ; $7114: $43
    nop                                           ; $7115: $00
    inc bc                                        ; $7116: $03
    inc de                                        ; $7117: $13
    inc bc                                        ; $7118: $03
    dec bc                                        ; $7119: $0b
    ld d, l                                       ; $711a: $55
    add e                                         ; $711b: $83
    xor a                                         ; $711c: $af
    pop de                                        ; $711d: $d1
    nop                                           ; $711e: $00
    push de                                       ; $711f: $d5
    jp hl                                         ; $7120: $e9


    add c                                         ; $7121: $81
    db $fd                                        ; $7122: $fd
    set 6, l                                      ; $7123: $cb $f5
    add c                                         ; $7125: $81
    rst $38                                       ; $7126: $ff
    db $10                                        ; $7127: $10
    rst $10                                       ; $7128: $d7
    db $fd                                        ; $7129: $fd
    cp c                                          ; $712a: $b9
    inc b                                         ; $712b: $04
    nop                                           ; $712c: $00
    ld sp, hl                                     ; $712d: $f9
    rst $38                                       ; $712e: $ff
    rst $18                                       ; $712f: $df
    db $fd                                        ; $7130: $fd
    rra                                           ; $7131: $1f
    push af                                       ; $7132: $f5
    rst $38                                       ; $7133: $ff
    db $fd                                        ; $7134: $fd
    ld [bc], a                                    ; $7135: $02
    nop                                           ; $7136: $00
    ret nz                                        ; $7137: $c0

    ld e, $cc                                     ; $7138: $1e $cc
    ld hl, $2005                                  ; $713a: $21 $05 $20
    ret nc                                        ; $713d: $d0

    jr z, jr_0a6_70c0                             ; $713e: $28 $80

    ret nc                                        ; $7140: $d0

    inc l                                         ; $7141: $2c
    xor d                                         ; $7142: $aa
    ld bc, $54ab                                  ; $7143: $01 $ab $54
    ld d, h                                       ; $7146: $54
    xor d                                         ; $7147: $aa
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    cp $a9                                        ; $714a: $fe $a9
    ld d, [hl]                                    ; $714c: $56
    nop                                           ; $714d: $00
    rst $38                                       ; $714e: $ff
    ld d, l                                       ; $714f: $55
    cp $ea                                        ; $7150: $fe $ea
    nop                                           ; $7152: $00
    rst $38                                       ; $7153: $ff
    push de                                       ; $7154: $d5
    add e                                         ; $7155: $83
    xor e                                         ; $7156: $ab
    rst $10                                       ; $7157: $d7
    push de                                       ; $7158: $d5
    xor a                                         ; $7159: $af
    add e                                         ; $715a: $83
    nop                                           ; $715b: $00
    rst $38                                       ; $715c: $ff
    and l                                         ; $715d: $a5
    rst $18                                       ; $715e: $df
    add e                                         ; $715f: $83
    rst $38                                       ; $7160: $ff
    push de                                       ; $7161: $d5
    rst $38                                       ; $7162: $ff
    cp e                                          ; $7163: $bb

jr_0a6_7164:
    nop                                           ; $7164: $00
    rst $38                                       ; $7165: $ff
    ld e, l                                       ; $7166: $5d
    cp $ee                                        ; $7167: $fe $ee
    rst $38                                       ; $7169: $ff
    ld a, l                                       ; $716a: $7d
    cp $de                                        ; $716b: $fe $de
    and b                                         ; $716d: $a0
    call nz, $fe05                                ; $716e: $c4 $05 $fe
    ld a, [hl-]                                   ; $7171: $3a
    rla                                           ; $7172: $17
    rst $10                                       ; $7173: $d7
    rst $38                                       ; $7174: $ff
    ei                                            ; $7175: $fb
    rst $38                                       ; $7176: $ff
    rst $18                                       ; $7177: $df
    ldh [$7a], a                                  ; $7178: $e0 $7a
    inc b                                         ; $717a: $04
    ld bc, $5028                                  ; $717b: $01 $28 $50
    ld a, [hl+]                                   ; $717e: $2a
    cp a                                          ; $717f: $bf
    ld b, b                                       ; $7180: $40
    ld a, e                                       ; $7181: $7b
    add h                                         ; $7182: $84
    cp a                                          ; $7183: $bf
    db $10                                        ; $7184: $10
    ld b, b                                       ; $7185: $40
    ld e, l                                       ; $7186: $5d
    and d                                         ; $7187: $a2
    ld d, b                                       ; $7188: $50
    ld a, [hl+]                                   ; $7189: $2a
    rst $38                                       ; $718a: $ff
    nop                                           ; $718b: $00
    xor h                                         ; $718c: $ac
    ld b, e                                       ; $718d: $43
    nop                                           ; $718e: $00
    ld e, [hl]                                    ; $718f: $5e
    inc hl                                        ; $7190: $23
    xor a                                         ; $7191: $af
    ld [de], a                                    ; $7192: $12
    sub $29                                       ; $7193: $d6 $29
    swap h                                        ; $7195: $cb $34
    nop                                           ; $7197: $00
    pop hl                                        ; $7198: $e1
    ld e, $b4                                     ; $7199: $1e $b4
    ld c, a                                       ; $719b: $4f
    jp c, $ea27                                   ; $719c: $da $27 $ea

    dec d                                         ; $719f: $15
    nop                                           ; $71a0: $00
    push af                                       ; $71a1: $f5
    ld a, [bc]                                    ; $71a2: $0a
    ld l, d                                       ; $71a3: $6a
    dec d                                         ; $71a4: $15
    ld [$f617], a                                 ; $71a5: $ea $17 $f6
    dec bc                                        ; $71a8: $0b
    nop                                           ; $71a9: $00
    ld a, e                                       ; $71aa: $7b
    add a                                         ; $71ab: $87
    cp d                                          ; $71ac: $ba
    ld b, a                                       ; $71ad: $47
    ld d, a                                       ; $71ae: $57
    xor a                                         ; $71af: $af
    inc sp                                        ; $71b0: $33
    rst $08                                       ; $71b1: $cf
    ld [bc], a                                    ; $71b2: $02
    dec bc                                        ; $71b3: $0b
    rst $30                                       ; $71b4: $f7
    ld b, a                                       ; $71b5: $47
    cp e                                          ; $71b6: $bb
    add hl, bc                                    ; $71b7: $09
    or $be                                        ; $71b8: $f6 $be
    rrca                                          ; $71ba: $0f
    add h                                         ; $71bb: $84
    ld [bc], a                                    ; $71bc: $02
    ei                                            ; $71bd: $fb
    ld b, c                                       ; $71be: $41
    cp $a8                                        ; $71bf: $fe $a8
    rst $38                                       ; $71c1: $ff
    call nc, $062c                                ; $71c2: $d4 $2c $06
    ld b, $10                                     ; $71c5: $06 $10
    ld a, [$5ea3]                                 ; $71c7: $fa $a3 $5e
    ld h, h                                       ; $71ca: $64
    rrca                                          ; $71cb: $0f
    inc bc                                        ; $71cc: $03
    cp $13                                        ; $71cd: $fe $13
    xor $0c                                       ; $71cf: $ee $0c
    adc e                                         ; $71d1: $8b
    halt                                          ; $71d2: $76
    ld b, e                                       ; $71d3: $43
    cp [hl]                                       ; $71d4: $be
    or b                                          ; $71d5: $b0
    ld l, $c0                                     ; $71d6: $2e $c0
    inc l                                         ; $71d8: $2c
    rla                                           ; $71d9: $17
    rst $38                                       ; $71da: $ff
    ld h, b                                       ; $71db: $60
    ld c, a                                       ; $71dc: $4f
    or b                                          ; $71dd: $b0
    ld d, $c0                                     ; $71de: $16 $c0
    inc l                                         ; $71e0: $2c
    ld l, l                                       ; $71e1: $6d
    rst $38                                       ; $71e2: $ff

jr_0a6_71e3:
    or [hl]                                       ; $71e3: $b6
    rst $38                                       ; $71e4: $ff
    db $eb                                        ; $71e5: $eb
    pop bc                                        ; $71e6: $c1
    ld d, b                                       ; $71e7: $50
    inc b                                         ; $71e8: $04
    or b                                          ; $71e9: $b0
    ld l, $03                                     ; $71ea: $2e $03
    cp $a3                                        ; $71ec: $fe $a3
    cp $51                                        ; $71ee: $fe $51
    ld d, b                                       ; $71f0: $50
    inc b                                         ; $71f1: $04
    ret nz                                        ; $71f2: $c0

    or b                                          ; $71f3: $b0
    ld l, $80                                     ; $71f4: $2e $80
    ld a, [hl+]                                   ; $71f6: $2a
    ld a, d                                       ; $71f7: $7a
    add l                                         ; $71f8: $85
    cp l                                          ; $71f9: $bd
    ld b, d                                       ; $71fa: $42
    ld e, [hl]                                    ; $71fb: $5e
    and c                                         ; $71fc: $a1
    jr nz, jr_0a6_722e                            ; $71fd: $20 $2f

    ret nc                                        ; $71ff: $d0

    add b                                         ; $7200: $80
    ld a, [hl+]                                   ; $7201: $2a
    rst $38                                       ; $7202: $ff
    nop                                           ; $7203: $00
    ld a, h                                       ; $7204: $7c
    add d                                         ; $7205: $82
    cp [hl]                                       ; $7206: $be
    nop                                           ; $7207: $00
    ld b, d                                       ; $7208: $42
    sbc $22                                       ; $7209: $de $22
    sub l                                         ; $720b: $95
    ld [$c03f], a                                 ; $720c: $ea $3f $c0
    db $eb                                        ; $720f: $eb
    ld [bc], a                                    ; $7210: $02
    add b                                         ; $7211: $80
    dec d                                         ; $7212: $15
    ret nz                                        ; $7213: $c0

    jp z, Jump_000_2180                           ; $7214: $ca $80 $21

    inc b                                         ; $7217: $04
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    inc h                                         ; $721a: $24
    ret nz                                        ; $721b: $c0

    ret nz                                        ; $721c: $c0

    inc b                                         ; $721d: $04
    db $10                                        ; $721e: $10
    ld b, b                                       ; $721f: $40
    add b                                         ; $7220: $80
    inc b                                         ; $7221: $04
    ld [$80e0], sp                                ; $7222: $08 $e0 $80
    inc b                                         ; $7225: $04
    ld b, c                                       ; $7226: $41
    add b                                         ; $7227: $80
    ld bc, $4300                                  ; $7228: $01 $00 $43
    cp b                                          ; $722b: $b8
    ld [bc], a                                    ; $722c: $02
    ld [hl], l                                    ; $722d: $75

jr_0a6_722e:
    nop                                           ; $722e: $00
    nop                                           ; $722f: $00
    xor e                                         ; $7230: $ab
    db $10                                        ; $7231: $10
    ld d, l                                       ; $7232: $55
    jr nz, jr_0a6_71e3                            ; $7233: $20 $ae

    ld b, c                                       ; $7235: $41
    ld a, e                                       ; $7236: $7b
    add b                                         ; $7237: $80
    nop                                           ; $7238: $00
    or $81                                        ; $7239: $f6 $81
    ld a, $c1                                     ; $723b: $3e $c1
    db $fd                                        ; $723d: $fd
    add d                                         ; $723e: $82
    ccf                                           ; $723f: $3f
    jp nz, $fd00                                  ; $7240: $c2 $00 $fd

    add d                                         ; $7243: $82
    dec hl                                        ; $7244: $2b
    rst $10                                       ; $7245: $d7
    cp $ff                                        ; $7246: $fe $ff
    ld d, c                                       ; $7248: $51
    xor $00                                       ; $7249: $ee $00
    sbc $01                                       ; $724b: $de $01
    rst $30                                       ; $724d: $f7
    ld [$31ce], sp                                ; $724e: $08 $ce $31
    cp [hl]                                       ; $7251: $be
    ld h, c                                       ; $7252: $61
    nop                                           ; $7253: $00
    ld a, [hl]                                    ; $7254: $7e
    pop bc                                        ; $7255: $c1
    cp $81                                        ; $7256: $fe $81
    ld [$7e15], a                                 ; $7258: $ea $15 $7e
    add c                                         ; $725b: $81
    jr nz, @+$01                                  ; $725c: $20 $ff

    rst $38                                       ; $725e: $ff
    ldh [rNR34], a                                ; $725f: $e0 $1e
    ld de, $0800                                  ; $7261: $11 $00 $08
    nop                                           ; $7264: $00
    ld b, h                                       ; $7265: $44
    dec c                                         ; $7266: $0d
    nop                                           ; $7267: $00
    ld a, [hl+]                                   ; $7268: $2a
    nop                                           ; $7269: $00
    rst $38                                       ; $726a: $ff
    adc h                                         ; $726b: $8c
    dec b                                         ; $726c: $05
    ldh [$0e], a                                  ; $726d: $e0 $0e
    ld d, a                                       ; $726f: $57
    add d                                         ; $7270: $82
    dec b                                         ; $7271: $05
    ld b, $5f                                     ; $7272: $06 $5f
    ld [bc], a                                    ; $7274: $02
    xor [hl]                                      ; $7275: $ae
    ld [bc], a                                    ; $7276: $02
    rst $18                                       ; $7277: $df
    ld bc, $e015                                  ; $7278: $01 $15 $e0
    ld a, $57                                     ; $727b: $3e $57
    nop                                           ; $727d: $00
    nop                                           ; $727e: $00
    dec hl                                        ; $727f: $2b
    nop                                           ; $7280: $00
    sub l                                         ; $7281: $95
    nop                                           ; $7282: $00
    ld c, [hl]                                    ; $7283: $4e
    nop                                           ; $7284: $00
    and a                                         ; $7285: $a7
    add l                                         ; $7286: $85
    cp $15                                        ; $7287: $fe $15
    cp a                                          ; $7289: $bf
    nop                                           ; $728a: $00
    ld d, a                                       ; $728b: $57
    ld [bc], a                                    ; $728c: $02
    and $0f                                       ; $728d: $e6 $0f
    ld a, [$046a]                                 ; $728f: $fa $6a $04
    ld b, b                                       ; $7292: $40
    or a                                          ; $7293: $b7
    ld e, [hl]                                    ; $7294: $5e
    ld [bc], a                                    ; $7295: $02
    cp $02                                        ; $7296: $fe $02
    rst $30                                       ; $7298: $f7
    nop                                           ; $7299: $00
    ld a, e                                       ; $729a: $7b
    nop                                           ; $729b: $00
    ld b, b                                       ; $729c: $40
    cp [hl]                                       ; $729d: $be
    ld [hl], b                                    ; $729e: $70
    dec d                                         ; $729f: $15
    and c                                         ; $72a0: $a1
    cp $d0                                        ; $72a1: $fe $d0
    rst $38                                       ; $72a3: $ff
    ld hl, sp-$01                                 ; $72a4: $f8 $ff
    sub b                                         ; $72a6: $90
    and d                                         ; $72a7: $a2
    ld [bc], a                                    ; $72a8: $02
    ld [bc], a                                    ; $72a9: $02
    db $ed                                        ; $72aa: $ed
    jr nc, @+$09                                  ; $72ab: $30 $07

    ld c, e                                       ; $72ad: $4b
    or h                                          ; $72ae: $b4
    ld bc, $0efe                                  ; $72af: $01 $fe $0e
    ld [bc], a                                    ; $72b2: $02
    cp $43                                        ; $72b3: $fe $43
    cp [hl]                                       ; $72b5: $be
    ret nc                                        ; $72b6: $d0

    ld a, [hl+]                                   ; $72b7: $2a
    jr nc, jr_0a6_72e8                            ; $72b8: $30 $2e

    ret nc                                        ; $72ba: $d0

    cpl                                           ; $72bb: $2f
    rlc c                                         ; $72bc: $cb $01
    dec a                                         ; $72be: $3d
    and l                                         ; $72bf: $a5
    ld e, a                                       ; $72c0: $5f
    ld d, e                                       ; $72c1: $53
    xor a                                         ; $72c2: $af
    xor d                                         ; $72c3: $aa
    ld d, a                                       ; $72c4: $57
    ret nc                                        ; $72c5: $d0

    cpl                                           ; $72c6: $2f
    ld [hl], c                                    ; $72c7: $71
    rst $38                                       ; $72c8: $ff
    cp b                                          ; $72c9: $b8
    ld bc, $1271                                  ; $72ca: $01 $71 $12
    ldh a, [rNR51]                                ; $72cd: $f0 $25
    halt                                          ; $72cf: $76
    db $fd                                        ; $72d0: $fd
    reti                                          ; $72d1: $d9


    jp c, Jump_0a6_5a01                           ; $72d2: $da $01 $5a

    or $a8                                        ; $72d5: $f6 $a8
    dec b                                         ; $72d7: $05
    push af                                       ; $72d8: $f5
    and d                                         ; $72d9: $a2
    rlca                                          ; $72da: $07
    inc l                                         ; $72db: $2c
    ld a, [bc]                                    ; $72dc: $0a
    ei                                            ; $72dd: $fb
    ld [hl-], a                                   ; $72de: $32
    ld [de], a                                    ; $72df: $12
    inc bc                                        ; $72e0: $03
    ld [$0bfe], sp                                ; $72e1: $08 $fe $0b
    or $83                                        ; $72e4: $f6 $83
    or h                                          ; $72e6: $b4
    dec b                                         ; $72e7: $05

jr_0a6_72e8:
    xor e                                         ; $72e8: $ab
    cp $57                                        ; $72e9: $fe $57
    or b                                          ; $72eb: $b0
    inc b                                         ; $72ec: $04
    nop                                           ; $72ed: $00
    rst $30                                       ; $72ee: $f7
    push af                                       ; $72ef: $f5
    add hl, de                                    ; $72f0: $19
    ld d, b                                       ; $72f1: $50
    ld b, h                                       ; $72f2: $44
    cp e                                          ; $72f3: $bb
    cp $df                                        ; $72f4: $fe $df
    cp $44                                        ; $72f6: $fe $44
    db $fc                                        ; $72f8: $fc
    ld b, b                                       ; $72f9: $40
    ld b, $56                                     ; $72fa: $06 $56
    ld sp, hl                                     ; $72fc: $f9
    and c                                         ; $72fd: $a1
    sub [hl]                                      ; $72fe: $96
    dec b                                         ; $72ff: $05
    ld c, d                                       ; $7300: $4a
    cp a                                          ; $7301: $bf
    ldh a, [rNR10]                                ; $7302: $f0 $10
    ld l, $00                                     ; $7304: $2e $00
    ld a, [hl+]                                   ; $7306: $2a
    db $10                                        ; $7307: $10
    dec hl                                        ; $7308: $2b
    nop                                           ; $7309: $00
    ld a, [hl+]                                   ; $730a: $2a
    add b                                         ; $730b: $80
    rst $38                                       ; $730c: $ff
    ld a, [bc]                                    ; $730d: $0a
    push af                                       ; $730e: $f5
    nop                                           ; $730f: $00
    sub a                                         ; $7310: $97
    add sp, $34                                   ; $7311: $e8 $34
    rst $18                                       ; $7313: $df
    rst $00                                       ; $7314: $c7
    cp b                                          ; $7315: $b8
    ccf                                           ; $7316: $3f
    ret nc                                        ; $7317: $d0

    ld [$f887], sp                                ; $7318: $08 $87 $f8
    dec sp                                        ; $731b: $3b
    call nc, $0c5d                                ; $731c: $d4 $5d $0c
    sbc $01                                       ; $731f: $de $01
    nop                                           ; $7321: $00
    ld a, [bc]                                    ; $7322: $0a
    rst $38                                       ; $7323: $ff
    ld a, [hl]                                    ; $7324: $7e
    ld bc, $6abf                                  ; $7325: $01 $bf $6a
    rlca                                          ; $7328: $07
    xor [hl]                                      ; $7329: $ae
    ld l, b                                       ; $732a: $68
    rlca                                          ; $732b: $07
    ld c, b                                       ; $732c: $48
    nop                                           ; $732d: $00
    or a                                          ; $732e: $b7
    and b                                         ; $732f: $a0
    ld e, a                                       ; $7330: $5f
    xor a                                         ; $7331: $af
    rst $38                                       ; $7332: $ff
    xor d                                         ; $7333: $aa
    ld d, l                                       ; $7334: $55
    push de                                       ; $7335: $d5
    ld [bc], a                                    ; $7336: $02
    ld a, [hl+]                                   ; $7337: $2a
    ld a, [$ff05]                                 ; $7338: $fa $05 $ff
    nop                                           ; $733b: $00
    ld bc, $07ff                                  ; $733c: $01 $ff $07
    ld bc, $e880                                  ; $733f: $01 $80 $e8
    nop                                           ; $7342: $00
    add hl, hl                                    ; $7343: $29
    rst $18                                       ; $7344: $df
    ld c, h                                       ; $7345: $4c
    cp e                                          ; $7346: $bb
    xor c                                         ; $7347: $a9
    ld e, a                                       ; $7348: $5f
    ld e, h                                       ; $7349: $5c
    nop                                           ; $734a: $00
    xor e                                         ; $734b: $ab
    add l                                         ; $734c: $85
    ld a, [$f41b]                                 ; $734d: $fa $1b $f4
    sub l                                         ; $7350: $95
    ld a, [$0012]                                 ; $7351: $fa $12 $00
    db $fd                                        ; $7354: $fd
    sub l                                         ; $7355: $95
    ld a, [$dc33]                                 ; $7356: $fa $33 $dc
    push de                                       ; $7359: $d5
    cp d                                          ; $735a: $ba
    ld a, [hl-]                                   ; $735b: $3a
    ld [$d5d5], sp                                ; $735c: $08 $d5 $d5
    nop                                           ; $735f: $00
    ld [c], a                                     ; $7360: $e2
    ld b, [hl]                                    ; $7361: $46
    inc b                                         ; $7362: $04
    ld [$7f00], a                                 ; $7363: $ea $00 $7f
    ld d, b                                       ; $7366: $50
    add b                                         ; $7367: $80
    xor b                                         ; $7368: $a8
    ld c, $ff                                     ; $7369: $0e $ff
    db $ec                                        ; $736b: $ec
    rlca                                          ; $736c: $07
    cp [hl]                                       ; $736d: $be
    ld bc, $005b                                  ; $736e: $01 $5b $00
    nop                                           ; $7371: $00
    dec a                                         ; $7372: $3d
    nop                                           ; $7373: $00
    ld d, [hl]                                    ; $7374: $56
    nop                                           ; $7375: $00
    xor a                                         ; $7376: $af
    nop                                           ; $7377: $00
    db $d3                                        ; $7378: $d3
    nop                                           ; $7379: $00
    nop                                           ; $737a: $00
    jp hl                                         ; $737b: $e9


    nop                                           ; $737c: $00
    db $e3                                        ; $737d: $e3
    dec e                                         ; $737e: $1d
    db $fc                                        ; $737f: $fc
    dec bc                                        ; $7380: $0b
    ld h, e                                       ; $7381: $63
    sbc l                                         ; $7382: $9d
    nop                                           ; $7383: $00
    cp h                                          ; $7384: $bc
    ld c, e                                       ; $7385: $4b
    db $d3                                        ; $7386: $d3
    dec l                                         ; $7387: $2d
    or $09                                        ; $7388: $f6 $09
    rst $20                                       ; $738a: $e7
    add hl, de                                    ; $738b: $19
    nop                                           ; $738c: $00
    or $09                                        ; $738d: $f6 $09
    ld d, a                                       ; $738f: $57
    xor e                                         ; $7390: $ab
    xor e                                         ; $7391: $ab
    ld d, a                                       ; $7392: $57
    sub $2b                                       ; $7393: $d6 $2b
    nop                                           ; $7395: $00
    db $eb                                        ; $7396: $eb
    rla                                           ; $7397: $17
    cp $03                                        ; $7398: $fe $03
    rst $18                                       ; $739a: $df
    inc bc                                        ; $739b: $03
    ld l, [hl]                                    ; $739c: $6e
    inc bc                                        ; $739d: $03
    pop de                                        ; $739e: $d1
    ldh [rTAC], a                                 ; $739f: $e0 $07
    cp [hl]                                       ; $73a1: $be
    ld [bc], a                                    ; $73a2: $02
    rst $28                                       ; $73a3: $ef
    ld [hl-], a                                   ; $73a4: $32
    ld b, $be                                     ; $73a5: $06 $be
    rst $38                                       ; $73a7: $ff
    ld d, a                                       ; $73a8: $57
    ld d, b                                       ; $73a9: $50
    rlca                                          ; $73aa: $07
    ld [hl], b                                    ; $73ab: $70
    dec h                                         ; $73ac: $25
    ld [hl], d                                    ; $73ad: $72
    ld [bc], a                                    ; $73ae: $02
    ret c                                         ; $73af: $d8

    ld a, [bc]                                    ; $73b0: $0a
    inc b                                         ; $73b1: $04
    jr z, @+$80                                   ; $73b2: $28 $7e

    rst $38                                       ; $73b4: $ff
    ld d, a                                       ; $73b5: $57
    ld [bc], a                                    ; $73b6: $02
    jr jr_0a6_73e3                                ; $73b7: $18 $2a

    inc bc                                        ; $73b9: $03
    inc b                                         ; $73ba: $04
    ldh a, [rTAC]                                 ; $73bb: $f0 $07
    jr nz, jr_0a6_73e9                            ; $73bd: $20 $2a

    db $10                                        ; $73bf: $10
    rst $38                                       ; $73c0: $ff
    ld [bc], a                                    ; $73c1: $02
    db $10                                        ; $73c2: $10
    rst $38                                       ; $73c3: $ff
    adc c                                         ; $73c4: $89
    ld [hl], a                                    ; $73c5: $77
    jr nc, jr_0a6_7406                            ; $73c6: $30 $3e

    cp a                                          ; $73c8: $bf
    rst $38                                       ; $73c9: $ff
    ld e, a                                       ; $73ca: $5f
    rst $38                                       ; $73cb: $ff
    ld h, b                                       ; $73cc: $60
    jr z, jr_0a6_740f                             ; $73cd: $28 $40

    rlca                                          ; $73cf: $07
    jr nc, @+$30                                  ; $73d0: $30 $2e

    sub l                                         ; $73d2: $95
    ld l, d                                       ; $73d3: $6a
    ld c, d                                       ; $73d4: $4a
    or l                                          ; $73d5: $b5
    dec h                                         ; $73d6: $25
    jr nz, @-$24                                  ; $73d7: $20 $da

    ld [de], a                                    ; $73d9: $12
    or c                                          ; $73da: $b1
    inc b                                         ; $73db: $04
    ld b, b                                       ; $73dc: $40
    rst $38                                       ; $73dd: $ff
    ld hl, $08fe                                  ; $73de: $21 $fe $08
    nop                                           ; $73e1: $00
    rst $38                                       ; $73e2: $ff

jr_0a6_73e3:
    xor $12                                       ; $73e3: $ee $12
    cp $02                                        ; $73e5: $fe $02
    ld a, [hl]                                    ; $73e7: $7e
    add d                                         ; $73e8: $82

jr_0a6_73e9:
    xor [hl]                                      ; $73e9: $ae
    add b                                         ; $73ea: $80
    ld e, h                                       ; $73eb: $5c
    inc d                                         ; $73ec: $14
    ld d, $ea                                     ; $73ed: $16 $ea
    add e                                         ; $73ef: $83
    ld a, [hl]                                    ; $73f0: $7e
    add b                                         ; $73f1: $80
    rst $38                                       ; $73f2: $ff
    ld b, h                                       ; $73f3: $44
    ret nz                                        ; $73f4: $c0

    ld b, d                                       ; $73f5: $42
    nop                                           ; $73f6: $00
    and b                                         ; $73f7: $a0
    inc a                                         ; $73f8: $3c
    ld b, d                                       ; $73f9: $42
    cp [hl]                                       ; $73fa: $be
    dec bc                                        ; $73fb: $0b
    or $45                                        ; $73fc: $f6 $45
    ld a, [$1080]                                 ; $73fe: $fa $80 $10
    ld a, $e5                                     ; $7401: $3e $e5
    sbc d                                         ; $7403: $9a
    ld l, $d1                                     ; $7404: $2e $d1

jr_0a6_7406:
    rst $28                                       ; $7406: $ef
    sub b                                         ; $7407: $90
    ccf                                           ; $7408: $3f
    nop                                           ; $7409: $00
    add b                                         ; $740a: $80
    add $90                                       ; $740b: $c6 $90
    dec hl                                        ; $740d: $2b
    sub b                                         ; $740e: $90

jr_0a6_740f:
    sub l                                         ; $740f: $95
    add b                                         ; $7410: $80
    ld a, [de]                                    ; $7411: $1a
    nop                                           ; $7412: $00
    add b                                         ; $7413: $80
    ld a, [hl]                                    ; $7414: $7e
    add c                                         ; $7415: $81
    cp a                                          ; $7416: $bf
    ld b, b                                       ; $7417: $40
    ld a, a                                       ; $7418: $7f
    add b                                         ; $7419: $80
    cp a                                          ; $741a: $bf
    nop                                           ; $741b: $00
    ld b, b                                       ; $741c: $40
    db $db                                        ; $741d: $db
    inc h                                         ; $741e: $24
    ld l, l                                       ; $741f: $6d
    ld [de], a                                    ; $7420: $12
    ld a, [c]                                     ; $7421: $f2
    dec c                                         ; $7422: $0d
    add sp, $00                                   ; $7423: $e8 $00
    rla                                           ; $7425: $17
    or h                                          ; $7426: $b4
    ld b, b                                       ; $7427: $40
    ld e, d                                       ; $7428: $5a
    and b                                         ; $7429: $a0
    xor l                                         ; $742a: $ad
    ld d, b                                       ; $742b: $50
    rst $10                                       ; $742c: $d7

jr_0a6_742d:
    inc b                                         ; $742d: $04
    jr z, jr_0a6_742d                             ; $742e: $28 $fd

    ld [bc], a                                    ; $7430: $02
    ld a, [$c205]                                 ; $7431: $fa $05 $c2
    ld a, [bc]                                    ; $7434: $0a
    or a                                          ; $7435: $b7
    add hl, bc                                    ; $7436: $09
    nop                                           ; $7437: $00
    ld d, d                                       ; $7438: $52
    add hl, bc                                    ; $7439: $09
    dec h                                         ; $743a: $25
    add hl, bc                                    ; $743b: $09
    sub $09                                       ; $743c: $d6 $09
    di                                            ; $743e: $f3
    add hl, bc                                    ; $743f: $09
    nop                                           ; $7440: $00
    or $09                                        ; $7441: $f6 $09
    ld [hl], e                                    ; $7443: $73
    adc c                                         ; $7444: $89
    and h                                         ; $7445: $a4
    ld e, c                                       ; $7446: $59
    sbc l                                         ; $7447: $9d
    add b                                         ; $7448: $80
    ld bc, $8056                                  ; $7449: $01 $56 $80
    sub c                                         ; $744c: $91
    add b                                         ; $744d: $80
    ld d, b                                       ; $744e: $50
    add b                                         ; $744f: $80
    or b                                          ; $7450: $b0
    inc b                                         ; $7451: $04
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    ld [$6d90], a                                 ; $7454: $ea $90 $6d
    sub b                                         ; $7457: $90
    db $f4                                        ; $7458: $f4
    dec bc                                        ; $7459: $0b
    ld a, [$1405]                                 ; $745a: $fa $05 $14
    ld a, l                                       ; $745d: $7d
    ld [bc], a                                    ; $745e: $02
    ld a, $ec                                     ; $745f: $3e $ec
    rlca                                          ; $7461: $07
    rla                                           ; $7462: $17
    sbc $06                                       ; $7463: $de $06
    ld d, c                                       ; $7465: $51
    nop                                           ; $7466: $00
    nop                                           ; $7467: $00
    cpl                                           ; $7468: $2f
    ret nc                                        ; $7469: $d0

    inc bc                                        ; $746a: $03
    db $fc                                        ; $746b: $fc
    ld b, l                                       ; $746c: $45
    cp d                                          ; $746d: $ba
    and d                                         ; $746e: $a2
    ld e, l                                       ; $746f: $5d
    nop                                           ; $7470: $00
    pop de                                        ; $7471: $d1
    ld l, $f4                                     ; $7472: $2e $f4
    dec bc                                        ; $7474: $0b
    ld [$7415], a                                 ; $7475: $ea $15 $74
    dec bc                                        ; $7478: $0b
    nop                                           ; $7479: $00
    ld e, a                                       ; $747a: $5f
    xor c                                         ; $747b: $a9
    ld a, [bc]                                    ; $747c: $0a
    db $fd                                        ; $747d: $fd
    adc l                                         ; $747e: $8d
    ld a, e                                       ; $747f: $7b
    jp z, $003d                                   ; $7480: $ca $3d $00

    ld e, c                                       ; $7483: $59
    xor a                                         ; $7484: $af
    adc b                                         ; $7485: $88
    ld a, a                                       ; $7486: $7f
    ld c, c                                       ; $7487: $49
    cp a                                          ; $7488: $bf
    ld [$00ff], sp                                ; $7489: $08 $ff $00
    xor a                                         ; $748c: $af
    ret nc                                        ; $748d: $d0

    ld b, b                                       ; $748e: $40
    cp a                                          ; $748f: $bf
    xor d                                         ; $7490: $aa
    push de                                       ; $7491: $d5
    dec d                                         ; $7492: $15
    ld [$e4c0], a                                 ; $7493: $ea $c0 $e4
    ld bc, $07b0                                  ; $7496: $01 $b0 $07
    rst $38                                       ; $7499: $ff
    rst $38                                       ; $749a: $ff
    xor b                                         ; $749b: $a8
    nop                                           ; $749c: $00
    rra                                           ; $749d: $1f
    ldh [rTIMA], a                                ; $749e: $e0 $05
    rst $28                                       ; $74a0: $ef
    nop                                           ; $74a1: $00
    ld e, a                                       ; $74a2: $5f
    and b                                         ; $74a3: $a0
    rst $38                                       ; $74a4: $ff
    add [hl]                                      ; $74a5: $86
    ld bc, $a280                                  ; $74a6: $01 $80 $a2
    inc b                                         ; $74a9: $04
    ld bc, $05ba                                  ; $74aa: $01 $ba $05
    ld [bc], a                                    ; $74ad: $02
    rst $38                                       ; $74ae: $ff
    ld a, [$5505]                                 ; $74af: $fa $05 $55
    dec de                                        ; $74b2: $1b
    nop                                           ; $74b3: $00
    inc d                                         ; $74b4: $14
    ld d, l                                       ; $74b5: $55
    rst $38                                       ; $74b6: $ff
    xor b                                         ; $74b7: $a8
    or d                                          ; $74b8: $b2
    inc b                                         ; $74b9: $04
    add hl, bc                                    ; $74ba: $09
    add h                                         ; $74bb: $84
    ld [bc], a                                    ; $74bc: $02
    add c                                         ; $74bd: $81
    ld a, a                                       ; $74be: $7f
    sbc d                                         ; $74bf: $9a
    inc hl                                        ; $74c0: $23
    ld b, $ff                                     ; $74c1: $06 $ff
    ld d, c                                       ; $74c3: $51
    xor b                                         ; $74c4: $a8
    ld bc, $0cc3                                  ; $74c5: $01 $c3 $0c
    rst $18                                       ; $74c8: $df
    add sp, $07                                   ; $74c9: $e8 $07
    push bc                                       ; $74cb: $c5
    ld bc, $92ff                                  ; $74cc: $01 $ff $92
    rst $28                                       ; $74cf: $ef
    xor d                                         ; $74d0: $aa
    push de                                       ; $74d1: $d5
    sub l                                         ; $74d2: $95
    ld [$0842], a                                 ; $74d3: $ea $42 $08
    ld b, b                                       ; $74d6: $40
    rst $10                                       ; $74d7: $d7
    sub b                                         ; $74d8: $90
    inc bc                                        ; $74d9: $03
    ld d, l                                       ; $74da: $55
    rst $38                                       ; $74db: $ff
    sub c                                         ; $74dc: $91
    rst $28                                       ; $74dd: $ef
    xor c                                         ; $74de: $a9
    ld d, a                                       ; $74df: $57
    nop                                           ; $74e0: $00
    ld d, l                                       ; $74e1: $55
    xor e                                         ; $74e2: $ab
    xor e                                         ; $74e3: $ab
    rst $38                                       ; $74e4: $ff
    ld a, [hl]                                    ; $74e5: $7e
    inc bc                                        ; $74e6: $03
    or a                                          ; $74e7: $b7
    ld [bc], a                                    ; $74e8: $02
    ld b, b                                       ; $74e9: $40
    ret c                                         ; $74ea: $d8

    ld d, b                                       ; $74eb: $50
    ld bc, $00fe                                  ; $74ec: $01 $fe $00
    xor l                                         ; $74ef: $ad
    ld b, d                                       ; $74f0: $42
    ld e, a                                       ; $74f1: $5f
    ld [hl+], a                                   ; $74f2: $22
    nop                                           ; $74f3: $00
    xor [hl]                                      ; $74f4: $ae
    ld [de], a                                    ; $74f5: $12
    db $eb                                        ; $74f6: $eb
    ld d, $f7                                     ; $74f7: $16 $f7
    ld a, [bc]                                    ; $74f9: $0a
    ld a, d                                       ; $74fa: $7a
    add a                                         ; $74fb: $87
    inc b                                         ; $74fc: $04
    cp e                                          ; $74fd: $bb
    ld b, [hl]                                    ; $74fe: $46
    ld d, a                                       ; $74ff: $57

Jump_0a6_7500:
    xor a                                         ; $7500: $af
    ld [hl-], a                                   ; $7501: $32
    nop                                           ; $7502: $00
    inc b                                         ; $7503: $04
    ld b, [hl]                                    ; $7504: $46
    cp e                                          ; $7505: $bb
    ld hl, sp-$70                                 ; $7506: $f8 $90
    ld a, [hl+]                                   ; $7508: $2a
    or b                                          ; $7509: $b0
    dec hl                                        ; $750a: $2b
    ret nz                                        ; $750b: $c0

    cpl                                           ; $750c: $2f
    jr nc, jr_0a6_753d                            ; $750d: $30 $2e

    ret nz                                        ; $750f: $c0

    cpl                                           ; $7510: $2f
    ld [bc], a                                    ; $7511: $02
    ld bc, $0881                                  ; $7512: $01 $81 $08
    ld [bc], a                                    ; $7515: $02
    ld b, e                                       ; $7516: $43
    ld [bc], a                                    ; $7517: $02
    inc hl                                        ; $7518: $23
    ret nz                                        ; $7519: $c0

    scf                                           ; $751a: $37
    and d                                         ; $751b: $a2
    ld e, l                                       ; $751c: $5d
    ld b, h                                       ; $751d: $44
    inc b                                         ; $751e: $04
    cp e                                          ; $751f: $bb
    ldh [$1f], a                                  ; $7520: $e0 $1f
    push af                                       ; $7522: $f5
    ld a, [bc]                                    ; $7523: $0a
    ret nz                                        ; $7524: $c0

    cpl                                           ; $7525: $2f
    dec bc                                        ; $7526: $0b
    db $fc                                        ; $7527: $fc
    ld [bc], a                                    ; $7528: $02
    ld b, h                                       ; $7529: $44
    cp a                                          ; $752a: $bf
    inc de                                        ; $752b: $13
    xor $03                                       ; $752c: $ee $03
    cp $b0                                        ; $752e: $fe $b0
    dec l                                         ; $7530: $2d
    ld e, [hl]                                    ; $7531: $5e
    ld bc, $a801                                  ; $7532: $01 $01 $a8
    inc bc                                        ; $7535: $03
    sub $03                                       ; $7536: $d6 $03
    db $eb                                        ; $7538: $eb
    ld [bc], a                                    ; $7539: $02
    jr nc, jr_0a6_7568                            ; $753a: $30 $2c

    nop                                           ; $753c: $00

jr_0a6_753d:
    ld a, $fd                                     ; $753d: $3e $fd
    ld e, h                                       ; $753f: $5c
    rst $38                                       ; $7540: $ff
    xor [hl]                                      ; $7541: $ae
    rst $38                                       ; $7542: $ff
    ld d, a                                       ; $7543: $57
    cp $01                                        ; $7544: $fe $01
    call nc, Call_0a6_6e2b                        ; $7546: $d4 $2b $6e
    sub c                                         ; $7549: $91
    rst $30                                       ; $754a: $f7
    ld [$8ebf], sp                                ; $754b: $08 $bf $8e
    rlca                                          ; $754e: $07
    nop                                           ; $754f: $00
    sbc $01                                       ; $7550: $de $01
    rst $28                                       ; $7552: $ef
    nop                                           ; $7553: $00
    or a                                          ; $7554: $b7
    nop                                           ; $7555: $00
    rla                                           ; $7556: $17
    cp $0d                                        ; $7557: $fe $0d
    xor d                                         ; $7559: $aa
    ld e, a                                       ; $755a: $5f
    ld b, a                                       ; $755b: $47
    cp a                                          ; $755c: $bf
    inc h                                         ; $755d: $24
    ld a, [bc]                                    ; $755e: $0a
    call nz, $df0e                                ; $755f: $c4 $0e $df
    ld d, b                                       ; $7562: $50
    ld b, $00                                     ; $7563: $06 $00
    scf                                           ; $7565: $37
    ret z                                         ; $7566: $c8

    ld e, e                                       ; $7567: $5b

jr_0a6_7568:
    and h                                         ; $7568: $a4
    cpl                                           ; $7569: $2f
    ret nc                                        ; $756a: $d0

    sub a                                         ; $756b: $97
    add sp, $00                                   ; $756c: $e8 $00
    xor e                                         ; $756e: $ab
    ld d, h                                       ; $756f: $54
    ld d, l                                       ; $7570: $55
    xor d                                         ; $7571: $aa
    cp d                                          ; $7572: $ba
    ld b, l                                       ; $7573: $45
    ld a, [$0007]                                 ; $7574: $fa $07 $00
    cp [hl]                                       ; $7577: $be
    ld b, e                                       ; $7578: $43
    sub $2b                                       ; $7579: $d6 $2b
    ei                                            ; $757b: $fb
    rlca                                          ; $757c: $07
    halt                                          ; $757d: $76
    adc e                                         ; $757e: $8b
    nop                                           ; $757f: $00
    cp d                                          ; $7580: $ba
    ld b, a                                       ; $7581: $47
    sbc $23                                       ; $7582: $de $23
    cp $03                                        ; $7584: $fe $03
    ld e, [hl]                                    ; $7586: $5e
    nop                                           ; $7587: $00
    add b                                         ; $7588: $80
    ldh [$5b], a                                  ; $7589: $e0 $5b
    ld e, [hl]                                    ; $758b: $5e
    and e                                         ; $758c: $a3
    xor $13                                       ; $758d: $ee $13
    cp h                                          ; $758f: $bc
    ld b, e                                       ; $7590: $43
    ld d, $03                                     ; $7591: $16 $03
    nop                                           ; $7593: $00
    db $eb                                        ; $7594: $eb
    inc d                                         ; $7595: $14
    ld [hl], l                                    ; $7596: $75
    ld a, [bc]                                    ; $7597: $0a
    cp a                                          ; $7598: $bf
    ret nz                                        ; $7599: $c0

    ld b, $b0                                     ; $759a: $06 $b0
    dec hl                                        ; $759c: $2b
    nop                                           ; $759d: $00
    cp a                                          ; $759e: $bf
    ld b, b                                       ; $759f: $40
    ld e, [hl]                                    ; $75a0: $5e
    and b                                         ; $75a1: $a0
    cpl                                           ; $75a2: $2f
    ret nc                                        ; $75a3: $d0

    rlca                                          ; $75a4: $07
    ld hl, sp-$58                                 ; $75a5: $f8 $a8
    or b                                          ; $75a7: $b0
    dec hl                                        ; $75a8: $2b
    or a                                          ; $75a9: $b7
    ldh a, [rSB]                                  ; $75aa: $f0 $01
    cp $20                                        ; $75ac: $fe $20
    rlca                                          ; $75ae: $07
    inc sp                                        ; $75af: $33
    rst $08                                       ; $75b0: $cf
    ld a, l                                       ; $75b1: $7d
    nop                                           ; $75b2: $00
    add e                                         ; $75b3: $83
    cp $01                                        ; $75b4: $fe $01
    or h                                          ; $75b6: $b4
    ld c, e                                       ; $75b7: $4b
    ld c, c                                       ; $75b8: $49
    or a                                          ; $75b9: $b7
    xor e                                         ; $75ba: $ab
    ld bc, $fdff                                  ; $75bb: $01 $ff $fd
    cp $46                                        ; $75be: $fe $46
    db $fd                                        ; $75c0: $fd
    sbc h                                         ; $75c1: $9c
    db $e3                                        ; $75c2: $e3
    inc [hl]                                      ; $75c3: $34
    inc b                                         ; $75c4: $04
    nop                                           ; $75c5: $00
    nop                                           ; $75c6: $00
    cp l                                          ; $75c7: $bd
    ld b, d                                       ; $75c8: $42
    ld c, d                                       ; $75c9: $4a
    or l                                          ; $75ca: $b5
    sub c                                         ; $75cb: $91
    rst $28                                       ; $75cc: $ef
    ld h, $00                                     ; $75cd: $26 $00
    rst $38                                       ; $75cf: $ff
    xor a                                         ; $75d0: $af
    halt                                          ; $75d1: $76
    sbc c                                         ; $75d2: $99
    xor $47                                       ; $75d3: $ee $47
    db $fc                                        ; $75d5: $fc
    sbc a                                         ; $75d6: $9f
    nop                                           ; $75d7: $00
    db $ec                                        ; $75d8: $ec
    ld b, a                                       ; $75d9: $47
    db $fc                                        ; $75da: $fc
    sbc e                                         ; $75db: $9b
    db $ec                                        ; $75dc: $ec
    ld [hl], a                                    ; $75dd: $77
    call z, Call_000_009b                         ; $75de: $cc $9b $00
    db $ec                                        ; $75e1: $ec
    ld [hl], $cd                                  ; $75e2: $36 $cd
    jp nz, $a93f                                  ; $75e4: $c2 $3f $a9

    halt                                          ; $75e7: $76
    ld [hl+], a                                   ; $75e8: $22
    nop                                           ; $75e9: $00
    rst $38                                       ; $75ea: $ff
    xor c                                         ; $75eb: $a9
    halt                                          ; $75ec: $76
    ld h, $fb                                     ; $75ed: $26 $fb
    cp b                                          ; $75ef: $b8
    ld h, a                                       ; $75f0: $67
    ld l, [hl]                                    ; $75f1: $6e
    ld [$38f3], sp                                ; $75f2: $08 $f3 $38
    rst $20                                       ; $75f5: $e7
    sub e                                         ; $75f6: $93
    inc d                                         ; $75f7: $14
    nop                                           ; $75f8: $00
    db $d3                                        ; $75f9: $d3
    xor h                                         ; $75fa: $ac
    ld [hl], $00                                  ; $75fb: $36 $00
    call $a5da                                    ; $75fd: $cd $da $a5
    ld [hl], $cd                                  ; $7600: $36 $cd
    call c, $36a7                                 ; $7602: $dc $a7 $36
    nop                                           ; $7605: $00
    call $f34e                                    ; $7606: $cd $4e $f3
    ld a, d                                       ; $7609: $7a
    rst $20                                       ; $760a: $e7
    ld c, [hl]                                    ; $760b: $4e
    di                                            ; $760c: $f3
    ld e, [hl]                                    ; $760d: $5e
    nop                                           ; $760e: $00
    db $e3                                        ; $760f: $e3
    sbc l                                         ; $7610: $9d
    db $e3                                        ; $7611: $e3
    ld e, [hl]                                    ; $7612: $5e
    db $e3                                        ; $7613: $e3
    cp l                                          ; $7614: $bd

jr_0a6_7615:
    jp Jump_000_00de                              ; $7615: $c3 $de $00


    db $e3                                        ; $7618: $e3
    cp h                                          ; $7619: $bc
    add a                                         ; $761a: $87
    inc b                                         ; $761b: $04
    call $87fd                                    ; $761c: $cd $fd $87
    ld [hl-], a                                   ; $761f: $32
    nop                                           ; $7620: $00
    call $877d                                    ; $7621: $cd $7d $87
    ld [hl-], a                                   ; $7624: $32
    rst $08                                       ; $7625: $cf
    dec a                                         ; $7626: $3d
    add a                                         ; $7627: $87
    add d                                         ; $7628: $82
    nop                                           ; $7629: $00
    ld c, a                                       ; $762a: $4f
    db $dd                                        ; $762b: $dd
    jp $e381                                      ; $762c: $c3 $81 $e3


    ld a, a                                       ; $762f: $7f
    pop bc                                        ; $7630: $c1
    sbc l                                         ; $7631: $9d
    nop                                           ; $7632: $00
    db $e3                                        ; $7633: $e3
    dec e                                         ; $7634: $1d
    pop bc                                        ; $7635: $c1
    adc b                                         ; $7636: $88
    and e                                         ; $7637: $a3
    add hl, bc                                    ; $7638: $09
    pop bc                                        ; $7639: $c1
    ret nz                                        ; $763a: $c0

    nop                                           ; $763b: $00
    and e                                         ; $763c: $a3
    ld a, [$e7fd]                                 ; $763d: $fa $fd $e7
    ld hl, sp-$61                                 ; $7640: $f8 $9f
    ld h, b                                       ; $7642: $60
    cpl                                           ; $7643: $2f
    nop                                           ; $7644: $00
    ret nc                                        ; $7645: $d0

    sub $a9                                       ; $7646: $d6 $a9
    ld l, c                                       ; $7648: $69
    or $b5                                        ; $7649: $f6 $b5
    ld a, e                                       ; $764b: $7b
    db $db                                        ; $764c: $db
    nop                                           ; $764d: $00
    ccf                                           ; $764e: $3f
    db $eb                                        ; $764f: $eb
    db $f4                                        ; $7650: $f4
    or [hl]                                       ; $7651: $b6
    ld l, c                                       ; $7652: $69
    xor a                                         ; $7653: $af
    ld d, b                                       ; $7654: $50
    ld d, l                                       ; $7655: $55
    nop                                           ; $7656: $00
    xor d                                         ; $7657: $aa
    xor d                                         ; $7658: $aa
    ld [hl], l                                    ; $7659: $75
    ld [hl], l                                    ; $765a: $75
    ei                                            ; $765b: $fb
    xor [hl]                                      ; $765c: $ae
    rst $18                                       ; $765d: $df
    ld e, a                                       ; $765e: $5f
    nop                                           ; $765f: $00
    xor c                                         ; $7660: $a9
    ld l, e                                       ; $7661: $6b
    db $fc                                        ; $7662: $fc
    rst $10                                       ; $7663: $d7
    jr c, jr_0a6_7615                             ; $7664: $38 $af

    ld d, b                                       ; $7666: $50
    ld d, a                                       ; $7667: $57
    nop                                           ; $7668: $00
    xor b                                         ; $7669: $a8
    xor e                                         ; $766a: $ab
    ld [hl], h                                    ; $766b: $74
    ld d, h                                       ; $766c: $54
    ei                                            ; $766d: $fb
    xor l                                         ; $766e: $ad
    rst $18                                       ; $766f: $df
    ld d, [hl]                                    ; $7670: $56
    nop                                           ; $7671: $00
    rst $28                                       ; $7672: $ef
    ld e, l                                       ; $7673: $5d
    cp $aa                                        ; $7674: $fe $aa
    ld e, l                                       ; $7676: $5d
    push de                                       ; $7677: $d5
    ld a, [hl+]                                   ; $7678: $2a
    db $eb                                        ; $7679: $eb
    nop                                           ; $767a: $00
    inc d                                         ; $767b: $14
    ld b, d                                       ; $767c: $42
    cp l                                          ; $767d: $bd
    xor c                                         ; $767e: $a9
    ld a, [hl]                                    ; $767f: $7e
    ld e, l                                       ; $7680: $5d
    rst $38                                       ; $7681: $ff
    xor [hl]                                      ; $7682: $ae
    nop                                           ; $7683: $00
    ld a, a                                       ; $7684: $7f
    call nc, $f53b                                ; $7685: $d4 $3b $f5
    dec de                                        ; $7688: $1b
    jp nc, $f43d                                  ; $7689: $d2 $3d $f4

    nop                                           ; $768c: $00
    dec de                                        ; $768d: $1b
    rst $10                                       ; $768e: $d7
    add hl, sp                                    ; $768f: $39
    or h                                          ; $7690: $b4
    ld e, e                                       ; $7691: $5b
    rst $18                                       ; $7692: $df
    ld sp, $0094                                  ; $7693: $31 $94 $00
    ld a, e                                       ; $7696: $7b
    and h                                         ; $7697: $a4
    ld e, e                                       ; $7698: $5b
    ld [hl], a                                    ; $7699: $77
    adc c                                         ; $769a: $89
    cp h                                          ; $769b: $bc
    ld c, e                                       ; $769c: $4b
    ld h, a                                       ; $769d: $67
    ld [$3c99], sp                                ; $769e: $08 $99 $3c
    set 4, [hl]                                   ; $76a1: $cb $e6
    inc b                                         ; $76a3: $04
    nop                                           ; $76a4: $00
    xor $99                                       ; $76a5: $ee $99
    xor l                                         ; $76a7: $ad
    nop                                           ; $76a8: $00
    sub $d2                                       ; $76a9: $d6 $d2
    xor a                                         ; $76ab: $af
    xor l                                         ; $76ac: $ad
    sub $70                                       ; $76ad: $d6 $70
    adc a                                         ; $76af: $8f
    push hl                                       ; $76b0: $e5
    nop                                           ; $76b1: $00
    sbc [hl]                                      ; $76b2: $9e
    ld e, d                                       ; $76b3: $5a
    xor l                                         ; $76b4: $ad
    pop hl                                        ; $76b5: $e1
    sbc [hl]                                      ; $76b6: $9e
    ld c, e                                       ; $76b7: $4b
    cp h                                          ; $76b8: $bc
    ld e, $04                                     ; $76b9: $1e $04
    rst $38                                       ; $76bb: $ff
    xor h                                         ; $76bc: $ac
    ld a, a                                       ; $76bd: $7f
    dec de                                        ; $76be: $1b
    cp $04                                        ; $76bf: $fe $04
    jr c, @+$61                                   ; $76c1: $38 $5f

    or c                                          ; $76c3: $b1
    db $10                                        ; $76c4: $10
    or h                                          ; $76c5: $b4
    ld a, e                                       ; $76c6: $7b
    ld a, [hl]                                    ; $76c7: $7e
    inc b                                         ; $76c8: $04
    db $10                                        ; $76c9: $10
    and l                                         ; $76ca: $a5
    ld a, d                                       ; $76cb: $7a
    ld l, [hl]                                    ; $76cc: $6e
    or c                                          ; $76cd: $b1
    nop                                           ; $76ce: $00
    dec l                                         ; $76cf: $2d
    ld a, [c]                                     ; $76d0: $f2
    dec a                                         ; $76d1: $3d
    jp z, $d9ae                                   ; $76d2: $ca $ae $d9

    dec l                                         ; $76d5: $2d
    jp c, $a600                                   ; $76d6: $da $00 $a6

    reti                                          ; $76d9: $d9


    ld l, a                                       ; $76da: $6f
    ret c                                         ; $76db: $d8

    or [hl]                                       ; $76dc: $b6
    reti                                          ; $76dd: $d9


    rst $08                                       ; $76de: $cf
    ld hl, sp+$00                                 ; $76df: $f8 $00
    halt                                          ; $76e1: $76
    reti                                          ; $76e2: $d9


    push hl                                       ; $76e3: $e5
    sbc d                                         ; $76e4: $9a
    ld c, e                                       ; $76e5: $4b
    cp h                                          ; $76e6: $bc

jr_0a6_76e7:
    db $ed                                        ; $76e7: $ed
    sbc d                                         ; $76e8: $9a
    ld b, b                                       ; $76e9: $40
    ld b, e                                       ; $76ea: $43
    inc b                                         ; $76eb: $04
    nop                                           ; $76ec: $00
    ld d, d                                       ; $76ed: $52
    cp l                                          ; $76ee: $bd
    and a                                         ; $76ef: $a7
    ret c                                         ; $76f0: $d8

    ld d, d                                       ; $76f1: $52
    or l                                          ; $76f2: $b5
    and b                                         ; $76f3: $a0
    inc a                                         ; $76f4: $3c
    ld [$0459], sp                                ; $76f5: $08 $59 $04
    ld [$adee], sp                                ; $76f8: $08 $ee $ad
    ld a, [hl]                                    ; $76fb: $7e
    ld d, d                                       ; $76fc: $52
    db $ed                                        ; $76fd: $ed
    nop                                           ; $76fe: $00
    xor c                                         ; $76ff: $a9
    ld a, [hl]                                    ; $7700: $7e
    ld h, [hl]                                    ; $7701: $66
    or c                                          ; $7702: $b1
    jr nz, jr_0a6_76e7                            ; $7703: $20 $e2

    ld l, [hl]                                    ; $7705: $6e
    or c                                          ; $7706: $b1
    nop                                           ; $7707: $00
    dec a                                         ; $7708: $3d
    ld [c], a                                     ; $7709: $e2
    ld c, $f1                                     ; $770a: $0e $f1
    sbc l                                         ; $770c: $9d
    ld [c], a                                     ; $770d: $e2
    ld c, $d1                                     ; $770e: $0e $d1
    nop                                           ; $7710: $00
    adc h                                         ; $7711: $8c
    ld [c], a                                     ; $7712: $e2
    sbc a                                         ; $7713: $9f
    ld hl, sp+$70                                 ; $7714: $f8 $70
    reti                                          ; $7716: $d9


    sbc a                                         ; $7717: $9f
    ldh a, [rP1]                                  ; $7718: $f0 $00
    halt                                          ; $771a: $76
    reti                                          ; $771b: $d9


    sbc e                                         ; $771c: $9b
    ldh a, [$50]                                  ; $771d: $f0 $50
    ld sp, hl                                     ; $771f: $f9
    ld d, c                                       ; $7720: $51
    ldh a, [rSB]                                  ; $7721: $f0 $01
    ld [hl], h                                    ; $7723: $74
    ld hl, sp-$80                                 ; $7724: $f8 $80
    ld hl, sp+$5a                                 ; $7726: $f8 $5a
    or l                                          ; $7728: $b5
    and a                                         ; $7729: $a7
    inc b                                         ; $772a: $04
    nop                                           ; $772b: $00
    nop                                           ; $772c: $00
    inc hl                                        ; $772d: $23
    ld hl, sp+$50                                 ; $772e: $f8 $50
    or c                                          ; $7730: $b1
    ld [hl+], a                                   ; $7731: $22
    ld hl, sp+$52                                 ; $7732: $f8 $52
    push af                                       ; $7734: $f5
    ld bc, $ed50                                  ; $7735: $01 $50 $ed
    xor b                                         ; $7738: $a8
    ld a, [hl]                                    ; $7739: $7e
    ld d, [hl]                                    ; $773a: $56
    db $ed                                        ; $773b: $ed
    jp hl                                         ; $773c: $e9


    inc b                                         ; $773d: $04
    stop                                          ; $773e: $10 $00
    ld b, l                                       ; $7740: $45
    db $ec                                        ; $7741: $ec
    ld l, b                                       ; $7742: $68
    ld a, [hl]                                    ; $7743: $7e
    ld c, d                                       ; $7744: $4a
    cp a                                          ; $7745: $bf
    push af                                       ; $7746: $f5
    ld a, [bc]                                    ; $7747: $0a
    nop                                           ; $7748: $00
    ei                                            ; $7749: $fb
    inc b                                         ; $774a: $04
    db $dd                                        ; $774b: $dd
    ld [hl+], a                                   ; $774c: $22
    and d                                         ; $774d: $a2
    ld e, l                                       ; $774e: $5d
    ld c, d                                       ; $774f: $4a
    cp a                                          ; $7750: $bf
    nop                                           ; $7751: $00
    ld d, l                                       ; $7752: $55
    rst $38                                       ; $7753: $ff
    or l                                          ; $7754: $b5
    ld a, e                                       ; $7755: $7b
    add a                                         ; $7756: $87
    ld a, a                                       ; $7757: $7f
    ld l, d                                       ; $7758: $6a
    sub a                                         ; $7759: $97
    nop                                           ; $775a: $00
    push af                                       ; $775b: $f5
    ld a, [bc]                                    ; $775c: $0a
    rst $38                                       ; $775d: $ff
    nop                                           ; $775e: $00
    cp d                                          ; $775f: $ba
    ld b, l                                       ; $7760: $45
    ld d, c                                       ; $7761: $51
    xor [hl]                                      ; $7762: $ae
    nop                                           ; $7763: $00
    ld h, $df                                     ; $7764: $26 $df
    set 7, a                                      ; $7766: $cb $ff
    ld b, a                                       ; $7768: $47
    rst $38                                       ; $7769: $ff
    ld [$0017], a                                 ; $776a: $ea $17 $00
    ld [hl], l                                    ; $776d: $75
    adc d                                         ; $776e: $8a
    ld a, [$f105]                                 ; $776f: $fa $05 $f1
    ld c, $55                                     ; $7772: $0e $55
    xor d                                         ; $7774: $aa
    nop                                           ; $7775: $00
    sbc d                                         ; $7776: $9a
    ld a, a                                       ; $7777: $7f
    ld l, l                                       ; $7778: $6d
    sbc [hl]                                      ; $7779: $9e
    ld e, e                                       ; $777a: $5b
    and a                                         ; $777b: $a7
    xor l                                         ; $777c: $ad
    ld d, e                                       ; $777d: $53
    nop                                           ; $777e: $00
    ld a, [$fc05]                                 ; $777f: $fa $05 $fc
    inc bc                                        ; $7782: $03
    ld a, [$5105]                                 ; $7783: $fa $05 $51
    xor a                                         ; $7786: $af

jr_0a6_7787:
    nop                                           ; $7787: $00
    xor e                                         ; $7788: $ab
    ld d, a                                       ; $7789: $57
    ld d, e                                       ; $778a: $53
    rst $28                                       ; $778b: $ef
    or d                                          ; $778c: $b2
    ld a, l                                       ; $778d: $7d
    and l                                         ; $778e: $a5
    ld a, e                                       ; $778f: $7b
    nop                                           ; $7790: $00
    cp d                                          ; $7791: $ba
    ld [hl], l                                    ; $7792: $75
    and l                                         ; $7793: $a5
    ld a, e                                       ; $7794: $7b
    sbc $31                                       ; $7795: $de $31
    xor l                                         ; $7797: $ad
    ld [hl], e                                    ; $7798: $73
    nop                                           ; $7799: $00
    sbc $31                                       ; $779a: $de $31
    adc l                                         ; $779c: $8d
    ld [hl], e                                    ; $779d: $73
    and h                                         ; $779e: $a4
    rst $18                                       ; $779f: $df
    ld [hl], d                                    ; $77a0: $72
    adc a                                         ; $77a1: $8f
    and b                                         ; $77a2: $a0
    inc b                                         ; $77a3: $04
    ld [$04a6], sp                                ; $77a4: $08 $a6 $04
    jr nz, @-$27                                  ; $77a7: $20 $d7

    inc l                                         ; $77a9: $2c
    ld l, l                                       ; $77aa: $6d
    sbc [hl]                                      ; $77ab: $9e
    rst $30                                       ; $77ac: $f7
    nop                                           ; $77ad: $00
    inc c                                         ; $77ae: $0c
    ld l, a                                       ; $77af: $6f
    sbc h                                         ; $77b0: $9c
    rst $30                                       ; $77b1: $f7
    inc c                                         ; $77b2: $0c
    ld h, a                                       ; $77b3: $67
    sbc h                                         ; $77b4: $9c
    di                                            ; $77b5: $f3
    nop                                           ; $77b6: $00
    inc c                                         ; $77b7: $0c
    ld h, l                                       ; $77b8: $65

jr_0a6_77b9:
    sbc [hl]                                      ; $77b9: $9e
    dec sp                                        ; $77ba: $3b
    rst $00                                       ; $77bb: $c7
    ld d, e                                       ; $77bc: $53
    rst $28                                       ; $77bd: $ef
    ld sp, hl                                     ; $77be: $f9
    nop                                           ; $77bf: $00

jr_0a6_77c0:
    ld b, a                                       ; $77c0: $47
    ld d, a                                       ; $77c1: $57
    db $eb                                        ; $77c2: $eb
    ld sp, hl                                     ; $77c3: $f9

jr_0a6_77c4:
    ld b, a                                       ; $77c4: $47
    ld e, a                                       ; $77c5: $5f
    db $e3                                        ; $77c6: $e3
    cp c                                          ; $77c7: $b9

jr_0a6_77c8:
    ld bc, $df47                                  ; $77c8: $01 $47 $df
    ld h, e                                       ; $77cb: $63
    sub $39                                       ; $77cc: $d6 $39
    adc l                                         ; $77ce: $8d
    ld [hl], e                                    ; $77cf: $73
    inc b                                         ; $77d0: $04
    jr jr_0a6_77d5                                ; $77d1: $18 $02

    push hl                                       ; $77d3: $e5
    dec de                                        ; $77d4: $1b

jr_0a6_77d5:
    add $39                                       ; $77d5: $c6 $39
    db $ed                                        ; $77d7: $ed
    dec de                                        ; $77d8: $1b
    jr c, jr_0a6_77e3                             ; $77d9: $38 $08

    ld h, [hl]                                    ; $77db: $66
    nop                                           ; $77dc: $00
    sbc a                                         ; $77dd: $9f
    halt                                          ; $77de: $76
    adc a                                         ; $77df: $8f
    and $1f                                       ; $77e0: $e6 $1f
    ld [hl], l                                    ; $77e2: $75

jr_0a6_77e3:
    adc [hl]                                      ; $77e3: $8e
    xor $80                                       ; $77e4: $ee $80
    inc b                                         ; $77e6: $04
    nop                                           ; $77e7: $00
    di                                            ; $77e8: $f3
    inc c                                         ; $77e9: $0c
    ld l, l                                       ; $77ea: $6d
    sub [hl]                                      ; $77eb: $96
    pop af                                        ; $77ec: $f1
    ld c, $6b                                     ; $77ed: $0e $6b
    jr nz, jr_0a6_7787                            ; $77ef: $20 $96

    di                                            ; $77f1: $f3
    inc b                                         ; $77f2: $04
    db $10                                        ; $77f3: $10
    ld l, c                                       ; $77f4: $69
    sub [hl]                                      ; $77f5: $96
    add hl, sp                                    ; $77f6: $39
    rst $00                                       ; $77f7: $c7
    db $dd                                        ; $77f8: $dd
    nop                                           ; $77f9: $00
    ld h, e                                       ; $77fa: $63
    jr c, jr_0a6_77c4                             ; $77fb: $38 $c7

    ld e, l                                       ; $77fd: $5d
    db $e3                                        ; $77fe: $e3
    jr c, jr_0a6_77c8                             ; $77ff: $38 $c7

    db $dd                                        ; $7801: $dd
    nop                                           ; $7802: $00
    and e                                         ; $7803: $a3
    dec a                                         ; $7804: $3d
    jp $83fc                                      ; $7805: $c3 $fc $83


    add d                                         ; $7808: $82
    dec a                                         ; $7809: $3d
    dec c                                         ; $780a: $0d
    nop                                           ; $780b: $00
    dec de                                        ; $780c: $1b
    jp nz, $ed3d                                  ; $780d: $c2 $3d $ed

    dec de                                        ; $7810: $1b
    reti                                          ; $7811: $d9


    cpl                                           ; $7812: $2f
    ldh [rP1], a                                  ; $7813: $e0 $00
    dec de                                        ; $7815: $1b
    ret                                           ; $7816: $c9


    cpl                                           ; $7817: $2f
    add sp, $1b                                   ; $7818: $e8 $1b
    xor $1f                                       ; $781a: $ee $1f
    inc b                                         ; $781c: $04
    nop                                           ; $781d: $00
    adc [hl]                                      ; $781e: $8e
    adc [hl]                                      ; $781f: $8e
    rra                                           ; $7820: $1f
    push af                                       ; $7821: $f5
    ld c, $ea                                     ; $7822: $0e $ea
    rra                                           ; $7824: $1f
    db $f4                                        ; $7825: $f4
    add b                                         ; $7826: $80
    inc b                                         ; $7827: $04
    db $10                                        ; $7828: $10
    rst $30                                       ; $7829: $f7

jr_0a6_782a:
    ld a, [bc]                                    ; $782a: $0a
    ld a, b                                       ; $782b: $78
    add a                                         ; $782c: $87
    ld bc, $080a                                  ; $782d: $01 $0a $08
    jr nz, jr_0a6_77b9                            ; $7830: $20 $87

    push af                                       ; $7832: $f5
    ld [$7900], sp                                ; $7833: $08 $00 $79
    inc bc                                        ; $7836: $03
    jr nc, jr_0a6_77c0                            ; $7837: $30 $87

    dec a                                         ; $7839: $3d
    nop                                           ; $783a: $00
    jp $81fe                                      ; $783b: $c3 $fe $81


    ld hl, $82c3                                  ; $783e: $21 $c3 $82
    add c                                         ; $7841: $81
    dec a                                         ; $7842: $3d
    nop                                           ; $7843: $00
    jp $817e                                      ; $7844: $c3 $7e $81


    inc a                                         ; $7847: $3c
    jp $813c                                      ; $7848: $c3 $3c $81


    add e                                         ; $784b: $83
    inc b                                         ; $784c: $04
    rst $38                                       ; $784d: $ff
    dec a                                         ; $784e: $3d
    jp $a15f                                      ; $784f: $c3 $5f $a1


    inc b                                         ; $7852: $04
    jr c, jr_0a6_782a                             ; $7853: $38 $d5

    xor e                                         ; $7855: $ab
    nop                                           ; $7856: $00
    ld [hl+], a                                   ; $7857: $22
    add c                                         ; $7858: $81
    pop bc                                        ; $7859: $c1
    add c                                         ; $785a: $81
    ld h, b                                       ; $785b: $60
    add c                                         ; $785c: $81
    sub c                                         ; $785d: $91
    pop bc                                        ; $785e: $c1
    ret nz                                        ; $785f: $c0

    inc b                                         ; $7860: $04
    jr jr_0a6_787f                                ; $7861: $18 $1c

    jr jr_0a6_7866                                ; $7863: $18 $01

    rst $38                                       ; $7865: $ff

jr_0a6_7866:
    dec e                                         ; $7866: $1d
    db $e3                                        ; $7867: $e3
    ccf                                           ; $7868: $3f
    pop bc                                        ; $7869: $c1
    nop                                           ; $786a: $00
    ld e, l                                       ; $786b: $5d
    and e                                         ; $786c: $a3
    ccf                                           ; $786d: $3f
    pop bc                                        ; $786e: $c1
    sub c                                         ; $786f: $91
    pop bc                                        ; $7870: $c1
    ld l, b                                       ; $7871: $68
    add c                                         ; $7872: $81
    rlca                                          ; $7873: $07
    or e                                          ; $7874: $b3
    pop bc                                        ; $7875: $c1
    ldh a, [$81]                                  ; $7876: $f0 $81
    xor e                                         ; $7878: $ab
    inc b                                         ; $7879: $04
    jr nz, jr_0a6_7890                            ; $787a: $20 $14

    ld [$1804], sp                                ; $787c: $08 $04 $18

jr_0a6_787f:
    ld [hl+], a                                   ; $787f: $22
    ld a, e                                       ; $7880: $7b
    db $fd                                        ; $7881: $fd
    ld [hl], $0e                                  ; $7882: $36 $0e
    xor e                                         ; $7884: $ab
    pop bc                                        ; $7885: $c1
    ld [hl], b                                    ; $7886: $70

jr_0a6_7887:
    inc e                                         ; $7887: $1c
    nop                                           ; $7888: $00
    ld [hl], h                                    ; $7889: $74
    nop                                           ; $788a: $00
    add c                                         ; $788b: $81
    xor e                                         ; $788c: $ab
    pop de                                        ; $788d: $d1
    db $f4                                        ; $788e: $f4
    adc c                                         ; $788f: $89

jr_0a6_7890:
    xor e                                         ; $7890: $ab
    push de                                       ; $7891: $d5
    call nc, $ab6b                                ; $7892: $d4 $6b $ab
    ld c, c                                       ; $7895: $49
    inc b                                         ; $7896: $04
    ld l, b                                       ; $7897: $68
    ld d, $f7                                     ; $7898: $16 $f7
    inc b                                         ; $789a: $04
    jr nz, jr_0a6_7887                            ; $789b: $20 $ea

    ld e, h                                       ; $789d: $5c
    ld b, $7a                                     ; $789e: $06 $7a
    ld c, $60                                     ; $78a0: $0e $60
    rst $30                                       ; $78a2: $f7
    add b                                         ; $78a3: $80
    ld b, $14                                     ; $78a4: $06 $14
    ld [$aa55], sp                                ; $78a6: $08 $55 $aa
    rra                                           ; $78a9: $1f
    ldh [rLYC], a                                 ; $78aa: $e0 $45
    nop                                           ; $78ac: $00
    cp d                                          ; $78ad: $ba
    cp d                                          ; $78ae: $ba
    ld b, b                                       ; $78af: $40
    ld d, l                                       ; $78b0: $55
    and b                                         ; $78b1: $a0
    push af                                       ; $78b2: $f5
    ld a, [bc]                                    ; $78b3: $0a
    ld a, a                                       ; $78b4: $7f
    ld [de], a                                    ; $78b5: $12
    add b                                         ; $78b6: $80
    call nc, Call_0a6_5a00                        ; $78b7: $d4 $00 $5a
    inc b                                         ; $78ba: $04
    nop                                           ; $78bb: $00
    xor b                                         ; $78bc: $a8
    ld [hl-], a                                   ; $78bd: $32
    rlca                                          ; $78be: $07
    xor d                                         ; $78bf: $aa
    jr nz, jr_0a6_78c7                            ; $78c0: $20 $05

    dec b                                         ; $78c2: $05
    ld a, [de]                                    ; $78c3: $1a
    ld b, $55                                     ; $78c4: $06 $55
    nop                                           ; $78c6: $00

jr_0a6_78c7:
    ld d, l                                       ; $78c7: $55
    xor e                                         ; $78c8: $ab
    ld sp, hl                                     ; $78c9: $f9
    nop                                           ; $78ca: $00
    rlca                                          ; $78cb: $07
    ld d, e                                       ; $78cc: $53
    dec c                                         ; $78cd: $0d
    db $e4                                        ; $78ce: $e4
    dec de                                        ; $78cf: $1b
    sub l                                         ; $78d0: $95
    ld a, a                                       ; $78d1: $7f
    ld h, h                                       ; $78d2: $64
    nop                                           ; $78d3: $00
    ei                                            ; $78d4: $fb
    xor d                                         ; $78d5: $aa
    ld d, l                                       ; $78d6: $55
    ld d, h                                       ; $78d7: $54
    inc bc                                        ; $78d8: $03
    ld d, h                                       ; $78d9: $54
    db $ec                                        ; $78da: $ec
    ld l, c                                       ; $78db: $69
    ld hl, $5bfe                                  ; $78dc: $21 $fe $5b
    inc b                                         ; $78df: $04
    nop                                           ; $78e0: $00
    ld c, d                                       ; $78e1: $4a
    db $fd                                        ; $78e2: $fd
    ld l, l                                       ; $78e3: $6d
    cp $c2                                        ; $78e4: $fe $c2
    dec bc                                        ; $78e6: $0b
    nop                                           ; $78e7: $00
    ld d, [hl]                                    ; $78e8: $56
    xor b                                         ; $78e9: $a8
    push af                                       ; $78ea: $f5
    rst $38                                       ; $78eb: $ff
    and d                                         ; $78ec: $a2
    db $fd                                        ; $78ed: $fd
    rst $38                                       ; $78ee: $ff
    nop                                           ; $78ef: $00
    ld b, b                                       ; $78f0: $40
    ld a, [$0796]                                 ; $78f1: $fa $96 $07
    ld d, a                                       ; $78f4: $57
    add b                                         ; $78f5: $80
    ld [$a015], a                                 ; $78f6: $ea $15 $a0
    nop                                           ; $78f9: $00
    ld bc, $fe01                                  ; $78fa: $01 $01 $fe
    cp a                                          ; $78fd: $bf
    ld b, b                                       ; $78fe: $40
    push af                                       ; $78ff: $f5
    nop                                           ; $7900: $00
    ld [bc], a                                    ; $7901: $02
    ld h, d                                       ; $7902: $62
    rlca                                          ; $7903: $07
    nop                                           ; $7904: $00
    push de                                       ; $7905: $d5
    cpl                                           ; $7906: $2f
    ld a, [hl+]                                   ; $7907: $2a
    rst $38                                       ; $7908: $ff
    xor e                                         ; $7909: $ab
    ld bc, $a35d                                  ; $790a: $01 $5d $a3
    nop                                           ; $790d: $00
    rst $38                                       ; $790e: $ff
    ld bc, $0345                                  ; $790f: $01 $45 $03
    cp a                                          ; $7912: $bf
    ld bc, $af51                                  ; $7913: $01 $51 $af
    nop                                           ; $7916: $00
    ld e, a                                       ; $7917: $5f
    rst $38                                       ; $7918: $ff
    ld d, l                                       ; $7919: $55
    xor e                                         ; $791a: $ab
    ld a, a                                       ; $791b: $7f
    add b                                         ; $791c: $80
    ld [$0000], a                                 ; $791d: $ea $00 $00
    ld e, l                                       ; $7920: $5d
    add b                                         ; $7921: $80
    call nc, Call_0a6_55ff                        ; $7922: $d4 $ff $55
    add b                                         ; $7925: $80
    push af                                       ; $7926: $f5
    ld a, [bc]                                    ; $7927: $0a
    ld bc, $54ab                                  ; $7928: $01 $ab $54
    ld e, l                                       ; $792b: $5d
    and b                                         ; $792c: $a0
    rst $38                                       ; $792d: $ff
    nop                                           ; $792e: $00
    xor d                                         ; $792f: $aa
    and b                                         ; $7930: $a0
    rlca                                          ; $7931: $07
    ld de, $40a2                                  ; $7932: $11 $a2 $40
    ld d, l                                       ; $7935: $55
    ld b, d                                       ; $7936: $42
    ld b, $f5                                     ; $7937: $06 $f5
    ld a, [bc]                                    ; $7939: $0a
    ld d, l                                       ; $793a: $55
    ld l, l                                       ; $793b: $6d
    ld b, $04                                     ; $793c: $06 $04
    db $fc                                        ; $793e: $fc
    inc bc                                        ; $793f: $03
    ld e, e                                       ; $7940: $5b
    dec b                                         ; $7941: $05
    and h                                         ; $7942: $a4
    inc b                                         ; $7943: $04
    nop                                           ; $7944: $00
    db $fd                                        ; $7945: $fd
    inc bc                                        ; $7946: $03
    nop                                           ; $7947: $00
    dec hl                                        ; $7948: $2b
    push af                                       ; $7949: $f5
    srl a                                         ; $794a: $cb $3f
    ld [$f1ff], a                                 ; $794c: $ea $ff $f1
    rst $38                                       ; $794f: $ff
    ld d, b                                       ; $7950: $50
    ld sp, hl                                     ; $7951: $f9
    db $10                                        ; $7952: $10
    rlca                                          ; $7953: $07
    rst $30                                       ; $7954: $f7
    inc b                                         ; $7955: $04
    db $10                                        ; $7956: $10
    rst $38                                       ; $7957: $ff
    rst $38                                       ; $7958: $ff
    call nz, $16ff                                ; $7959: $c4 $ff $16
    xor $ff                                       ; $795c: $ee $ff
    sbc $04                                       ; $795e: $de $04
    nop                                           ; $7960: $00
    rst $18                                       ; $7961: $df
    jr z, jr_0a6_796a                             ; $7962: $28 $06

    inc b                                         ; $7964: $04
    ld [$a841], sp                                ; $7965: $08 $41 $a8
    sbc $04                                       ; $7968: $de $04

jr_0a6_796a:
    ld [hl], a                                    ; $796a: $77
    ld b, d                                       ; $796b: $42
    ld d, $ef                                     ; $796c: $16 $ef
    ld c, b                                       ; $796e: $48
    ld b, $ff                                     ; $796f: $06 $ff
    rst $38                                       ; $7971: $ff
    ld c, c                                       ; $7972: $49
    nop                                           ; $7973: $00
    cpl                                           ; $7974: $2f
    ld a, [bc]                                    ; $7975: $0a
    rra                                           ; $7976: $1f
    cp l                                          ; $7977: $bd
    rrca                                          ; $7978: $0f
    xor d                                         ; $7979: $aa
    rra                                           ; $797a: $1f
    rst $38                                       ; $797b: $ff
    nop                                           ; $797c: $00
    rrca                                          ; $797d: $0f
    ld c, [hl]                                    ; $797e: $4e
    cp a                                          ; $797f: $bf
    and l                                         ; $7980: $a5
    ld e, a                                       ; $7981: $5f
    ld [bc], a                                    ; $7982: $02
    rst $38                                       ; $7983: $ff
    add sp, $00                                   ; $7984: $e8 $00
    rra                                           ; $7986: $1f
    ld b, l                                       ; $7987: $45
    ld c, $08                                     ; $7988: $0e $08
    rra                                           ; $798a: $1f
    inc [hl]                                      ; $798b: $34
    rrca                                          ; $798c: $0f
    ld [c], a                                     ; $798d: $e2
    nop                                           ; $798e: $00
    rra                                           ; $798f: $1f
    halt                                          ; $7990: $76
    adc a                                         ; $7991: $8f
    rst $20                                       ; $7992: $e7
    ld e, $4e                                     ; $7993: $1e $4e
    cp a                                          ; $7995: $bf
    ld de, $4300                                  ; $7996: $11 $00 $43
    inc b                                         ; $7999: $04
    add e                                         ; $799a: $83
    add c                                         ; $799b: $81
    ld b, a                                       ; $799c: $47
    ld l, a                                       ; $799d: $6f
    add e                                         ; $799e: $83
    cp c                                          ; $799f: $b9
    nop                                           ; $79a0: $00
    ld b, a                                       ; $79a1: $47
    ld d, a                                       ; $79a2: $57
    xor e                                         ; $79a3: $ab
    add hl, hl                                    ; $79a4: $29
    rst $10                                       ; $79a5: $d7
    inc de                                        ; $79a6: $13
    rst $28                                       ; $79a7: $ef
    jr jr_0a6_79aa                                ; $79a8: $18 $00

jr_0a6_79aa:
    jp $8100                                      ; $79aa: $c3 $00 $81


    inc bc                                        ; $79ad: $03
    pop bc                                        ; $79ae: $c1
    and $81                                       ; $79af: $e6 $81
    ld a, l                                       ; $79b1: $7d
    ld bc, $ba83                                  ; $79b2: $01 $83 $ba
    push bc                                       ; $79b5: $c5
    push de                                       ; $79b6: $d5
    xor e                                         ; $79b7: $ab
    xor e                                         ; $79b8: $ab
    rst $10                                       ; $79b9: $d7
    ld [hl-], a                                   ; $79ba: $32
    inc b                                         ; $79bb: $04
    nop                                           ; $79bc: $00
    ld [bc], a                                    ; $79bd: $02
    ld a, a                                       ; $79be: $7f
    add d                                         ; $79bf: $82
    cp a                                          ; $79c0: $bf
    ld b, d                                       ; $79c1: $42
    ld d, a                                       ; $79c2: $57
    xor d                                         ; $79c3: $aa
    xor e                                         ; $79c4: $ab
    nop                                           ; $79c5: $00
    ld d, [hl]                                    ; $79c6: $56
    ld d, a                                       ; $79c7: $57
    xor d                                         ; $79c8: $aa
    dec bc                                        ; $79c9: $0b
    or $47                                        ; $79ca: $f6 $47
    cp d                                          ; $79cc: $ba
    inc sp                                        ; $79cd: $33
    ld sp, $48de                                  ; $79ce: $31 $de $48
    ld h, b                                       ; $79d1: $60
    ld b, a                                       ; $79d2: $47
    ld [hl], d                                    ; $79d3: $72
    inc b                                         ; $79d4: $04
    and e                                         ; $79d5: $a3
    xor h                                         ; $79d6: $ac
    ld d, e                                       ; $79d7: $53
    or b                                          ; $79d8: $b0
    ccf                                           ; $79d9: $3f
    db $10                                        ; $79da: $10
    ei                                            ; $79db: $fb
    ld b, $bf                                     ; $79dc: $06 $bf
    ld [hl], $06                                  ; $79de: $36 $06
    ld a, [$7707]                                 ; $79e0: $fa $07 $77
    adc d                                         ; $79e3: $8a
    nop                                           ; $79e4: $00
    cp e                                          ; $79e5: $bb
    ld b, [hl]                                    ; $79e6: $46
    rst $18                                       ; $79e7: $df
    ld [hl+], a                                   ; $79e8: $22
    rst $38                                       ; $79e9: $ff
    ld [bc], a                                    ; $79ea: $02
    add c                                         ; $79eb: $81
    rst $38                                       ; $79ec: $ff
    rra                                           ; $79ed: $1f
    ret nz                                        ; $79ee: $c0

    cp a                                          ; $79ef: $bf
    add b                                         ; $79f0: $80
    inc b                                         ; $79f1: $04
    jr nz, @-$3e                                  ; $79f2: $20 $c0

    dec c                                         ; $79f4: $0d
    ld e, a                                       ; $79f5: $5f
    rlca                                          ; $79f6: $07
    ld c, h                                       ; $79f7: $4c
    rlca                                          ; $79f8: $07
    sub e                                         ; $79f9: $93
    rlca                                          ; $79fa: $07
    call nz, Call_000_0808                        ; $79fb: $c4 $08 $08
    ldh a, [rNR22]                                ; $79fe: $f0 $17
    rst $30                                       ; $7a00: $f7
    ld [bc], a                                    ; $7a01: $02
    ld a, c                                       ; $7a02: $79
    sub b                                         ; $7a03: $90
    rlca                                          ; $7a04: $07
    xor e                                         ; $7a05: $ab
    ld d, h                                       ; $7a06: $54
    nop                                           ; $7a07: $00
    ld b, c                                       ; $7a08: $41
    cp [hl]                                       ; $7a09: $be
    and e                                         ; $7a0a: $a3
    ld e, [hl]                                    ; $7a0b: $5e
    ld d, d                                       ; $7a0c: $52
    xor [hl]                                      ; $7a0d: $ae
    ld e, a                                       ; $7a0e: $5f
    and d                                         ; $7a0f: $a2
    ld [$12ef], sp                                ; $7a10: $08 $ef $12
    cp l                                          ; $7a13: $bd
    ld b, d                                       ; $7a14: $42
    or b                                          ; $7a15: $b0

jr_0a6_7a16:
    inc a                                         ; $7a16: $3c
    inc hl                                        ; $7a17: $23
    sbc $03                                       ; $7a18: $de $03
    db $10                                        ; $7a1a: $10
    cp $11                                        ; $7a1b: $fe $11
    xor $a0                                       ; $7a1d: $ee $a0
    inc a                                         ; $7a1f: $3c
    inc de                                        ; $7a20: $13
    ld [bc], a                                    ; $7a21: $02
    inc bc                                        ; $7a22: $03
    ld [bc], a                                    ; $7a23: $02
    nop                                           ; $7a24: $00
    add e                                         ; $7a25: $83
    ld [bc], a                                    ; $7a26: $02
    ld d, e                                       ; $7a27: $53
    ld [bc], a                                    ; $7a28: $02
    xor e                                         ; $7a29: $ab
    ld [bc], a                                    ; $7a2a: $02
    rst $10                                       ; $7a2b: $d7
    ld [bc], a                                    ; $7a2c: $02
    ld e, $eb                                     ; $7a2d: $1e $eb
    ld [bc], a                                    ; $7a2f: $02
    ld a, [hl]                                    ; $7a30: $7e
    ld hl, sp+$02                                 ; $7a31: $f8 $02
    cp b                                          ; $7a33: $b8
    inc b                                         ; $7a34: $04
    sub l                                         ; $7a35: $95
    rrca                                          ; $7a36: $0f
    ld d, e                                       ; $7a37: $53
    db $10                                        ; $7a38: $10
    cp a                                          ; $7a39: $bf
    nop                                           ; $7a3a: $00
    ld b, b                                       ; $7a3b: $40
    adc d                                         ; $7a3c: $8a
    ld [hl], a                                    ; $7a3d: $77
    ld b, e                                       ; $7a3e: $43
    cp [hl]                                       ; $7a3f: $be
    xor e                                         ; $7a40: $ab
    ld d, [hl]                                    ; $7a41: $56
    ld b, e                                       ; $7a42: $43
    ld bc, $a7be                                  ; $7a43: $01 $be $a7
    ld e, d                                       ; $7a46: $5a
    db $d3                                        ; $7a47: $d3
    ld l, $eb                                     ; $7a48: $2e $eb
    ld d, $d2                                     ; $7a4a: $16 $d2
    inc c                                         ; $7a4c: $0c
    db $10                                        ; $7a4d: $10
    or $03                                        ; $7a4e: $f6 $03
    cp b                                          ; $7a50: $b8

jr_0a6_7a51:
    nop                                           ; $7a51: $00
    dec b                                         ; $7a52: $05
    rst $38                                       ; $7a53: $ff
    nop                                           ; $7a54: $00
    db $fc                                        ; $7a55: $fc
    inc bc                                        ; $7a56: $03
    nop                                           ; $7a57: $00
    cp a                                          ; $7a58: $bf
    ld b, d                                       ; $7a59: $42
    sub $2b                                       ; $7a5a: $d6 $2b
    ld e, a                                       ; $7a5c: $5f
    and b                                         ; $7a5d: $a0
    dec hl                                        ; $7a5e: $2b
    call nc, Call_000_1500                        ; $7a5f: $d4 $00 $15
    ld [$0080], a                                 ; $7a62: $ea $80 $00
    dec h                                         ; $7a65: $25
    jp c, $fd02                                   ; $7a66: $da $02 $fd

    dec b                                         ; $7a69: $05
    inc b                                         ; $7a6a: $04
    ei                                            ; $7a6b: $fb
    add d                                         ; $7a6c: $82
    ld a, l                                       ; $7a6d: $7d
    rst $38                                       ; $7a6e: $ff
    or $04                                        ; $7a6f: $f6 $04
    db $fc                                        ; $7a71: $fc
    sub b                                         ; $7a72: $90
    dec c                                         ; $7a73: $0d
    jr nc, jr_0a6_7a16                            ; $7a74: $30 $a0

    xor l                                         ; $7a76: $ad
    inc d                                         ; $7a77: $14
    rla                                           ; $7a78: $17
    ld e, b                                       ; $7a79: $58
    ld c, $83                                     ; $7a7a: $0e $83
    ld a, a                                       ; $7a7c: $7f
    ld bc, $42ff                                  ; $7a7d: $01 $ff $42
    inc bc                                        ; $7a80: $03
    and $07                                       ; $7a81: $e6 $07
    inc bc                                        ; $7a83: $03
    rst $38                                       ; $7a84: $ff
    pop bc                                        ; $7a85: $c1
    cp a                                          ; $7a86: $bf
    ldh a, [$28]                                  ; $7a87: $f0 $28
    ld d, a                                       ; $7a89: $57
    nop                                           ; $7a8a: $00
    ld sp, hl                                     ; $7a8b: $f9
    and b                                         ; $7a8c: $a0
    rst $38                                       ; $7a8d: $ff

jr_0a6_7a8e:
    rla                                           ; $7a8e: $17
    rst $38                                       ; $7a8f: $ff
    ld c, e                                       ; $7a90: $4b
    cp a                                          ; $7a91: $bf
    ld d, $2c                                     ; $7a92: $16 $2c
    rst $38                                       ; $7a94: $ff
    xor e                                         ; $7a95: $ab
    sub b                                         ; $7a96: $90
    dec d                                         ; $7a97: $15
    rst $10                                       ; $7a98: $d7
    or h                                          ; $7a99: $b4
    rla                                           ; $7a9a: $17
    sbc l                                         ; $7a9b: $9d
    nop                                           ; $7a9c: $00
    inc bc                                        ; $7a9d: $03
    or $30                                        ; $7a9e: $f6 $30
    inc bc                                        ; $7aa0: $03
    ld a, b                                       ; $7aa1: $78
    sub b                                         ; $7aa2: $90
    rlca                                          ; $7aa3: $07
    ret nz                                        ; $7aa4: $c0

    jr z, jr_0a6_7a51                             ; $7aa5: $28 $aa

    ld d, l                                       ; $7aa7: $55
    rst $38                                       ; $7aa8: $ff
    nop                                           ; $7aa9: $00
    ld b, h                                       ; $7aaa: $44
    push de                                       ; $7aab: $d5
    call nz, Call_0a6_5001                        ; $7aac: $c4 $01 $50
    nop                                           ; $7aaf: $00
    add h                                         ; $7ab0: $84
    inc b                                         ; $7ab1: $04
    nop                                           ; $7ab2: $00

jr_0a6_7ab3:
    ld [bc], a                                    ; $7ab3: $02
    nop                                           ; $7ab4: $00
    and c                                         ; $7ab5: $a1
    ld bc, $0448                                  ; $7ab6: $01 $48 $04
    sbc b                                         ; $7ab9: $98
    dec b                                         ; $7aba: $05
    rst $00                                       ; $7abb: $c7
    rst $38                                       ; $7abc: $ff
    db $e3                                        ; $7abd: $e3
    rst $18                                       ; $7abe: $df
    inc b                                         ; $7abf: $04
    ld c, b                                       ; $7ac0: $48
    ld b, h                                       ; $7ac1: $44
    ld [de], a                                    ; $7ac2: $12
    and [hl]                                      ; $7ac3: $a6
    dec b                                         ; $7ac4: $05
    ld de, $2200                                  ; $7ac5: $11 $00 $22
    ld e, d                                       ; $7ac8: $5a
    ld [bc], a                                    ; $7ac9: $02
    xor d                                         ; $7aca: $aa
    nop                                           ; $7acb: $00
    inc b                                         ; $7acc: $04
    ld [hl], a                                    ; $7acd: $77
    nop                                           ; $7ace: $00
    db $fd                                        ; $7acf: $fd
    nop                                           ; $7ad0: $00
    ld l, a                                       ; $7ad1: $6f
    dec de                                        ; $7ad2: $1b
    ld de, $02fd                                  ; $7ad3: $11 $fd $02
    nop                                           ; $7ad6: $00
    rst $38                                       ; $7ad7: $ff
    nop                                           ; $7ad8: $00
    or a                                          ; $7ad9: $b7
    ld c, b                                       ; $7ada: $48
    ld e, l                                       ; $7adb: $5d
    and d                                         ; $7adc: $a2
    adc d                                         ; $7add: $8a
    ld [hl], l                                    ; $7ade: $75
    ld bc, $eb14                                  ; $7adf: $01 $14 $eb
    ld [$00f7], sp                                ; $7ae2: $08 $f7 $00
    rst $38                                       ; $7ae5: $ff
    jr nz, jr_0a6_7a8e                            ; $7ae6: $20 $a6

    rlca                                          ; $7ae8: $07
    add b                                         ; $7ae9: $80
    cp $0e                                        ; $7aea: $fe $0e
    ld d, l                                       ; $7aec: $55

jr_0a6_7aed:
    rst $38                                       ; $7aed: $ff
    rst $38                                       ; $7aee: $ff
    cpl                                           ; $7aef: $2f
    rst $38                                       ; $7af0: $ff
    ld e, e                                       ; $7af1: $5b
    rst $38                                       ; $7af2: $ff
    ld a, d                                       ; $7af3: $7a
    ld l, $04                                     ; $7af4: $2e $04
    nop                                           ; $7af6: $00
    ld [$1828], sp                                ; $7af7: $08 $28 $18
    rlca                                          ; $7afa: $07
    ld h, b                                       ; $7afb: $60
    add hl, hl                                    ; $7afc: $29
    add b                                         ; $7afd: $80
    or b                                          ; $7afe: $b0
    nop                                           ; $7aff: $00
    add e                                         ; $7b00: $83
    inc d                                         ; $7b01: $14
    rst $38                                       ; $7b02: $ff
    ld b, c                                       ; $7b03: $41
    cp a                                          ; $7b04: $bf
    ret nz                                        ; $7b05: $c0

    jr z, jr_0a6_7ab3                             ; $7b06: $28 $ab

    jr nc, jr_0a6_7b11                            ; $7b08: $30 $07

    ld c, b                                       ; $7b0a: $48
    nop                                           ; $7b0b: $00
    ld e, a                                       ; $7b0c: $5f

jr_0a6_7b0d:
    inc b                                         ; $7b0d: $04
    ld bc, $0f78                                  ; $7b0e: $01 $78 $0f

jr_0a6_7b11:
    inc b                                         ; $7b11: $04
    ld c, b                                       ; $7b12: $48
    ld bc, $1578                                  ; $7b13: $01 $78 $15
    ld [$3804], sp                                ; $7b16: $08 $04 $38
    ld b, b                                       ; $7b19: $40
    nop                                           ; $7b1a: $00
    ld a, e                                       ; $7b1b: $7b
    nop                                           ; $7b1c: $00
    inc b                                         ; $7b1d: $04
    ld c, b                                       ; $7b1e: $48
    ld bc, $1578                                  ; $7b1f: $01 $78 $15
    ld [$8804], sp                                ; $7b22: $08 $04 $88
    nop                                           ; $7b25: $00
    inc b                                         ; $7b26: $04
    sub b                                         ; $7b27: $90
    add hl, de                                    ; $7b28: $19
    ld c, b                                       ; $7b29: $48
    rst $38                                       ; $7b2a: $ff
    ld a, $18                                     ; $7b2b: $3e $18
    ld h, b                                       ; $7b2d: $60
    ld [$5014], sp                                ; $7b2e: $08 $14 $50
    ld d, b                                       ; $7b31: $50
    jr jr_0a6_7aed                                ; $7b32: $18 $b9

    jr z, jr_0a6_7b7f                             ; $7b34: $28 $49

    ld h, b                                       ; $7b36: $60
    ld h, b                                       ; $7b37: $60
    ld b, b                                       ; $7b38: $40
    ld b, b                                       ; $7b39: $40
    jr z, @+$01                                   ; $7b3a: $28 $ff

    db $e3                                        ; $7b3c: $e3
    jr nc, @-$5d                                  ; $7b3d: $30 $a1

    jr jr_0a6_7bbd                                ; $7b3f: $18 $7c

    ld e, b                                       ; $7b41: $58
    ld a, c                                       ; $7b42: $79
    ld c, b                                       ; $7b43: $48
    xor d                                         ; $7b44: $aa
    ld e, b                                       ; $7b45: $58
    ld h, e                                       ; $7b46: $63
    jr c, jr_0a6_7b8c                             ; $7b47: $38 $43

    ld l, b                                       ; $7b49: $68
    add $50                                       ; $7b4a: $c6 $50
    rst $38                                       ; $7b4c: $ff
    db $ed                                        ; $7b4d: $ed
    ld h, b                                       ; $7b4e: $60
    dec [hl]                                      ; $7b4f: $35
    ld a, b                                       ; $7b50: $78
    or $60                                        ; $7b51: $f6 $60
    rst $18                                       ; $7b53: $df
    ld e, b                                       ; $7b54: $58
    ld l, h                                       ; $7b55: $6c
    ld [hl], b                                    ; $7b56: $70
    ld c, c                                       ; $7b57: $49
    jr c, jr_0a6_7bba                             ; $7b58: $38 $60

jr_0a6_7b5a:
    ld [hl], b                                    ; $7b5a: $70
    sub [hl]                                      ; $7b5b: $96
    jr @+$01                                      ; $7b5c: $18 $ff

    sbc h                                         ; $7b5e: $9c
    jr c, @+$72                                   ; $7b5f: $38 $70

    ld hl, $6181                                  ; $7b61: $21 $81 $61
    add sp, $50                                   ; $7b64: $e8 $50
    add b                                         ; $7b66: $80
    jr nz, jr_0a6_7b0d                            ; $7b67: $20 $a4

    ld l, b                                       ; $7b69: $68
    sbc [hl]                                      ; $7b6a: $9e
    ld d, c                                       ; $7b6b: $51
    jr @+$73                                      ; $7b6c: $18 $71

    rst $38                                       ; $7b6e: $ff
    cp d                                          ; $7b6f: $ba
    ld h, c                                       ; $7b70: $61
    call z, $de98                                 ; $7b71: $cc $98 $de
    ld d, c                                       ; $7b74: $51
    add b                                         ; $7b75: $80
    adc c                                         ; $7b76: $89
    dec a                                         ; $7b77: $3d
    adc c                                         ; $7b78: $89
    ld hl, sp+$49                                 ; $7b79: $f8 $49
    ld sp, $005a                                  ; $7b7b: $31 $5a $00
    ld a, [hl-]                                   ; $7b7e: $3a

jr_0a6_7b7f:
    rst $38                                       ; $7b7f: $ff
    ld d, b                                       ; $7b80: $50
    ld a, [hl-]                                   ; $7b81: $3a
    db $10                                        ; $7b82: $10
    add c                                         ; $7b83: $81
    ld h, b                                       ; $7b84: $60
    ld [de], a                                    ; $7b85: $12
    inc a                                         ; $7b86: $3c
    ld b, d                                       ; $7b87: $42
    add b                                         ; $7b88: $80
    ld [hl-], a                                   ; $7b89: $32
    ld l, [hl]                                    ; $7b8a: $6e
    ld b, c                                       ; $7b8b: $41

jr_0a6_7b8c:
    db $10                                        ; $7b8c: $10
    ld h, d                                       ; $7b8d: $62
    inc d                                         ; $7b8e: $14
    ld h, c                                       ; $7b8f: $61
    rst $38                                       ; $7b90: $ff
    ld d, b                                       ; $7b91: $50
    ld c, d                                       ; $7b92: $4a
    jr nz, @+$4c                                  ; $7b93: $20 $4a

    pop af                                        ; $7b95: $f1
    ld sp, $406c                                  ; $7b96: $31 $6c $40
    sub b                                         ; $7b99: $90
    ld c, c                                       ; $7b9a: $49
    inc l                                         ; $7b9b: $2c
    ld sp, $40c0                                  ; $7b9c: $31 $c0 $40
    inc a                                         ; $7b9f: $3c
    dec bc                                        ; $7ba0: $0b
    ld [hl], l                                    ; $7ba1: $75
    nop                                           ; $7ba2: $00
    ld d, b                                       ; $7ba3: $50
    inc b                                         ; $7ba4: $04
    ld bc, $0070                                  ; $7ba5: $01 $70 $00
    ld bc, $0908                                  ; $7ba8: $01 $08 $09
    nop                                           ; $7bab: $00
    add hl, bc                                    ; $7bac: $09
    add hl, bc                                    ; $7bad: $09
    rst $38                                       ; $7bae: $ff
    inc b                                         ; $7baf: $04
    jr jr_0a6_7bbf                                ; $7bb0: $18 $0d

    ld [$200b], sp                                ; $7bb2: $08 $0b $20
    inc de                                        ; $7bb5: $13
    ld [$682d], sp                                ; $7bb6: $08 $2d $68
    ld a, [hl-]                                   ; $7bb9: $3a

jr_0a6_7bba:
    ld l, b                                       ; $7bba: $68

jr_0a6_7bbb:
    ld c, d                                       ; $7bbb: $4a
    ld h, b                                       ; $7bbc: $60

jr_0a6_7bbd:
    ld d, d                                       ; $7bbd: $52
    ld b, b                                       ; $7bbe: $40

jr_0a6_7bbf:
    ld sp, hl                                     ; $7bbf: $f9
    ld d, b                                       ; $7bc0: $50
    jr jr_0a6_7bd2                                ; $7bc1: $18 $0f

    ld b, b                                       ; $7bc3: $40
    inc bc                                        ; $7bc4: $03
    db $10                                        ; $7bc5: $10

jr_0a6_7bc6:
    inc c                                         ; $7bc6: $0c
    ld c, b                                       ; $7bc7: $48
    db $10                                        ; $7bc8: $10
    jr @+$06                                      ; $7bc9: $18 $04

    inc b                                         ; $7bcb: $04
    ld h, [hl]                                    ; $7bcc: $66
    ld [$04ff], sp                                ; $7bcd: $08 $ff $04
    jr z, jr_0a6_7b5a                             ; $7bd0: $28 $88

jr_0a6_7bd2:
    nop                                           ; $7bd2: $00
    add c                                         ; $7bd3: $81
    ld [$3804], sp                                ; $7bd4: $08 $04 $38
    ld h, h                                       ; $7bd7: $64

jr_0a6_7bd8:
    ld h, b                                       ; $7bd8: $60
    ld h, l                                       ; $7bd9: $65
    db $10                                        ; $7bda: $10
    xor l                                         ; $7bdb: $ad
    nop                                           ; $7bdc: $00
    inc b                                         ; $7bdd: $04
    jr z, @+$01                                   ; $7bde: $28 $ff

    ld [bc], a                                    ; $7be0: $02
    ld a, b                                       ; $7be1: $78
    ld h, b                                       ; $7be2: $60
    ld h, b                                       ; $7be3: $60
    or l                                          ; $7be4: $b5
    jr nz, jr_0a6_7bef                            ; $7be5: $20 $08

    jr nc, jr_0a6_7bc6                            ; $7be7: $30 $dd

    jr c, @+$6a                                   ; $7be9: $38 $68

    db $10                                        ; $7beb: $10
    sub h                                         ; $7bec: $94
    jr z, jr_0a6_7bd8                             ; $7bed: $28 $e9

jr_0a6_7bef:
    jr z, @+$01                                   ; $7bef: $28 $ff

    and h                                         ; $7bf1: $a4
    jr z, @+$20                                   ; $7bf2: $28 $1e

    add hl, sp                                    ; $7bf4: $39
    push af                                       ; $7bf5: $f5
    ld l, b                                       ; $7bf6: $68
    ld a, h                                       ; $7bf7: $7c
    jr c, jr_0a6_7c47                             ; $7bf8: $38 $4d

    jr @+$3f                                      ; $7bfa: $18 $3d

    add hl, bc                                    ; $7bfc: $09
    ret nz                                        ; $7bfd: $c0

    ld d, b                                       ; $7bfe: $50
    ld c, h                                       ; $7bff: $4c
    add hl, sp                                    ; $7c00: $39
    rst $38                                       ; $7c01: $ff
    nop                                           ; $7c02: $00
    add hl, de                                    ; $7c03: $19

jr_0a6_7c04:
    ld c, d                                       ; $7c04: $4a
    ld c, b                                       ; $7c05: $48
    ld e, b                                       ; $7c06: $58
    ld b, b                                       ; $7c07: $40
    rst $00                                       ; $7c08: $c7
    nop                                           ; $7c09: $00
    rr b                                          ; $7c0a: $cb $18
    ld [hl], c                                    ; $7c0c: $71
    add hl, sp                                    ; $7c0d: $39
    ld bc, $8b20                                  ; $7c0e: $01 $20 $8b
    ld hl, $5bff                                  ; $7c11: $21 $ff $5b
    db $10                                        ; $7c14: $10
    add h                                         ; $7c15: $84
    jr z, jr_0a6_7c3c                             ; $7c16: $28 $24

    ld c, c                                       ; $7c18: $49
    jr nc, jr_0a6_7c64                            ; $7c19: $30 $49

    ld e, b                                       ; $7c1b: $58
    jr z, jr_0a6_7c6c                             ; $7c1c: $28 $4e

    jr nz, @-$6b                                  ; $7c1e: $20 $93

    ld de, $4804                                  ; $7c20: $11 $04 $48
    rst $38                                       ; $7c23: $ff
    ld d, d                                       ; $7c24: $52
    add hl, bc                                    ; $7c25: $09
    inc b                                         ; $7c26: $04
    ld c, b                                       ; $7c27: $48
    db $f4                                        ; $7c28: $f4
    jr z, jr_0a6_7bbb                             ; $7c29: $28 $90

    ld e, c                                       ; $7c2b: $59

Call_0a6_7c2c:
    ld l, a                                       ; $7c2c: $6f
    ld d, c                                       ; $7c2d: $51
    dec b                                         ; $7c2e: $05
    ld d, b                                       ; $7c2f: $50
    jr z, jr_0a6_7c9c                             ; $7c30: $28 $6a

    ld c, b                                       ; $7c32: $48
    jr nc, @+$01                                  ; $7c33: $30 $ff

    db $d3                                        ; $7c35: $d3
    add hl, hl                                    ; $7c36: $29
    ret nz                                        ; $7c37: $c0

    ld sp, $19e4                                  ; $7c38: $31 $e4 $19
    ld d, [hl]                                    ; $7c3b: $56

jr_0a6_7c3c:
    ld c, d                                       ; $7c3c: $4a
    db $10                                        ; $7c3d: $10
    db $10                                        ; $7c3e: $10
    ld l, c                                       ; $7c3f: $69
    ld c, c                                       ; $7c40: $49
    sbc [hl]                                      ; $7c41: $9e
    ld hl, $3229                                  ; $7c42: $21 $29 $32
    rst $38                                       ; $7c45: $ff

jr_0a6_7c46:
    ld [hl], b                                    ; $7c46: $70

jr_0a6_7c47:
    add hl, hl                                    ; $7c47: $29
    ld [hl], c                                    ; $7c48: $71
    ld b, d                                       ; $7c49: $42
    rst $38                                       ; $7c4a: $ff
    ld hl, $0188                                  ; $7c4b: $21 $88 $01
    inc b                                         ; $7c4e: $04
    jr @+$66                                      ; $7c4f: $18 $64

    ld a, [de]                                    ; $7c51: $1a
    jr c, @+$53                                   ; $7c52: $38 $51

    inc d                                         ; $7c54: $14
    ld d, d                                       ; $7c55: $52
    rst $38                                       ; $7c56: $ff
    ld c, b                                       ; $7c57: $48
    add hl, de                                    ; $7c58: $19
    sub $3a                                       ; $7c59: $d6 $3a
    dec bc                                        ; $7c5b: $0b
    ld h, d                                       ; $7c5c: $62
    db $ec                                        ; $7c5d: $ec
    ld a, b                                       ; $7c5e: $78
    ld h, b                                       ; $7c5f: $60
    ld b, c                                       ; $7c60: $41
    or b                                          ; $7c61: $b0
    jr z, jr_0a6_7c04                             ; $7c62: $28 $a0

jr_0a6_7c64:
    ld c, d                                       ; $7c64: $4a
    push hl                                       ; $7c65: $e5
    ld a, [hl+]                                   ; $7c66: $2a
    rst $38                                       ; $7c67: $ff
    jr nc, @+$54                                  ; $7c68: $30 $52

    ld [hl], b                                    ; $7c6a: $70
    ld [hl-], a                                   ; $7c6b: $32

jr_0a6_7c6c:
    inc de                                        ; $7c6c: $13
    dec de                                        ; $7c6d: $1b
    and b                                         ; $7c6e: $a0
    ld c, b                                       ; $7c6f: $48
    inc d                                         ; $7c70: $14
    ld a, e                                       ; $7c71: $7b
    jr z, jr_0a6_7c8c                             ; $7c72: $28 $18

    ld [hl], b                                    ; $7c74: $70
    ld sp, $7060                                  ; $7c75: $31 $60 $70
    rst $38                                       ; $7c78: $ff
    sub b                                         ; $7c79: $90
    ld de, $428f                                  ; $7c7a: $11 $8f $42
    db $ec                                        ; $7c7d: $ec
    db $10                                        ; $7c7e: $10

jr_0a6_7c7f:
    ld a, a                                       ; $7c7f: $7f
    ld b, e                                       ; $7c80: $43
    ld a, [hl+]                                   ; $7c81: $2a
    ld a, [hl-]                                   ; $7c82: $3a
    ld e, [hl]                                    ; $7c83: $5e
    dec de                                        ; $7c84: $1b
    jr nc, jr_0a6_7cd7                            ; $7c85: $30 $50

    ldh [$30], a                                  ; $7c87: $e0 $30
    ld hl, sp+$7c                                 ; $7c89: $f8 $7c
    dec hl                                        ; $7c8b: $2b

jr_0a6_7c8c:
    ld d, a                                       ; $7c8c: $57
    ld b, e                                       ; $7c8d: $43
    adc l                                         ; $7c8e: $8d
    jr nc, jr_0a6_7c46                            ; $7c8f: $30 $b5

    ld c, e                                       ; $7c91: $4b
    ld b, h                                       ; $7c92: $44
    ld l, e                                       ; $7c93: $6b
    sub [hl]                                      ; $7c94: $96
    nop                                           ; $7c95: $00
    ld e, d                                       ; $7c96: $5a
    inc b                                         ; $7c97: $04
    ld bc, $00d8                                  ; $7c98: $01 $d8 $00
    dec bc                                        ; $7c9b: $0b

jr_0a6_7c9c:
    ld b, b                                       ; $7c9c: $40
    ld bc, $0908                                  ; $7c9d: $01 $08 $09
    ld c, $48                                     ; $7ca0: $0e $48
    add hl, bc                                    ; $7ca2: $09

jr_0a6_7ca3:
    rst $00                                       ; $7ca3: $c7
    ld bc, $1e00                                  ; $7ca4: $01 $00 $1e
    jr c, jr_0a6_7cad                             ; $7ca7: $38 $04

    inc b                                         ; $7ca9: $04
    add hl, bc                                    ; $7caa: $09
    inc hl                                        ; $7cab: $23
    nop                                           ; $7cac: $00

jr_0a6_7cad:
    dec a                                         ; $7cad: $3d
    and b                                         ; $7cae: $a0
    ld h, $40                                     ; $7caf: $26 $40
    rst $20                                       ; $7cb1: $e7
    ld d, d                                       ; $7cb2: $52
    ld e, b                                       ; $7cb3: $58

jr_0a6_7cb4:
    ld e, $68                                     ; $7cb4: $1e $68
    ld h, [hl]                                    ; $7cb6: $66
    jr jr_0a6_7cc2                                ; $7cb7: $18 $09

    add hl, bc                                    ; $7cb9: $09
    inc b                                         ; $7cba: $04

jr_0a6_7cbb:
    jr z, @+$05                                   ; $7cbb: $28 $03

    ld l, b                                       ; $7cbd: $68
    sub c                                         ; $7cbe: $91
    ld [$04ff], sp                                ; $7cbf: $08 $ff $04

jr_0a6_7cc2:
    ld c, b                                       ; $7cc2: $48
    ld a, [hl-]                                   ; $7cc3: $3a
    ld b, b                                       ; $7cc4: $40
    sbc h                                         ; $7cc5: $9c
    nop                                           ; $7cc6: $00
    and b                                         ; $7cc7: $a0
    nop                                           ; $7cc8: $00

jr_0a6_7cc9:
    ld b, c                                       ; $7cc9: $41
    jr z, jr_0a6_7cfc                             ; $7cca: $28 $30

    jr z, @+$10                                   ; $7ccc: $28 $0e

    ld d, b                                       ; $7cce: $50
    db $10                                        ; $7ccf: $10
    ld [$a8ff], sp                                ; $7cd0: $08 $ff $a8

jr_0a6_7cd3:
    jr jr_0a6_7d30                                ; $7cd3: $18 $5b

    jr z, jr_0a6_7ca3                             ; $7cd5: $28 $cc

jr_0a6_7cd7:
    ld c, b                                       ; $7cd7: $48
    db $10                                        ; $7cd8: $10

jr_0a6_7cd9:
    jr c, jr_0a6_7cff                             ; $7cd9: $38 $24

    jr c, jr_0a6_7cd3                             ; $7cdb: $38 $f6

    db $10                                        ; $7cdd: $10
    dec b                                         ; $7cde: $05
    ld c, b                                       ; $7cdf: $48
    sbc h                                         ; $7ce0: $9c
    jr c, @+$01                                   ; $7ce1: $38 $ff

    ld bc, $a309                                  ; $7ce3: $01 $09 $a3
    jr nc, jr_0a6_7cb4                            ; $7ce6: $30 $cc

    jr nz, jr_0a6_7d56                            ; $7ce8: $20 $6c

    ld h, b                                       ; $7cea: $60
    sbc b                                         ; $7ceb: $98
    ld b, b                                       ; $7cec: $40
    and b                                         ; $7ced: $a0
    jr nz, jr_0a6_7cbb                            ; $7cee: $20 $cb

    ld c, b                                       ; $7cf0: $48
    db $e3                                        ; $7cf1: $e3
    ld c, b                                       ; $7cf2: $48
    rst $38                                       ; $7cf3: $ff
    inc c                                         ; $7cf4: $0c
    add hl, hl                                    ; $7cf5: $29
    ld b, e                                       ; $7cf6: $43
    add hl, bc                                    ; $7cf7: $09
    inc b                                         ; $7cf8: $04
    ld d, b                                       ; $7cf9: $50
    ld [de], a                                    ; $7cfa: $12
    ld l, b                                       ; $7cfb: $68

jr_0a6_7cfc:
    ld a, b                                       ; $7cfc: $78
    jr nz, jr_0a6_7c7f                            ; $7cfd: $20 $80

jr_0a6_7cff:
    ld b, b                                       ; $7cff: $40
    inc b                                         ; $7d00: $04
    ld d, b                                       ; $7d01: $50
    rra                                           ; $7d02: $1f
    ld h, c                                       ; $7d03: $61
    rst $38                                       ; $7d04: $ff
    cp a                                          ; $7d05: $bf
    jr nc, jr_0a6_7cd9                            ; $7d06: $30 $d1

    ld c, c                                       ; $7d08: $49
    and l                                         ; $7d09: $a5
    ld c, c                                       ; $7d0a: $49
    ld d, b                                       ; $7d0b: $50
    ld h, b                                       ; $7d0c: $60
    ldh [rBCPD], a                                ; $7d0d: $e0 $69
    nop                                           ; $7d0f: $00
    ld d, d                                       ; $7d10: $52
    ld h, h                                       ; $7d11: $64
    add hl, de                                    ; $7d12: $19
    ldh a, [rOBP1]                                ; $7d13: $f0 $49
    rst $38                                       ; $7d15: $ff
    pop af                                        ; $7d16: $f1
    jr jr_0a6_7cc9                                ; $7d17: $18 $b0

    ld de, $21fc                                  ; $7d19: $11 $fc $21
    db $dd                                        ; $7d1c: $dd
    ld d, b                                       ; $7d1d: $50
    ld a, h                                       ; $7d1e: $7c
    ld l, c                                       ; $7d1f: $69
    pop bc                                        ; $7d20: $c1
    ld hl, $5004                                  ; $7d21: $21 $04 $50
    rst $20                                       ; $7d24: $e7
    ld h, c                                       ; $7d25: $61
    db $fd                                        ; $7d26: $fd
    rst $38                                       ; $7d27: $ff
    ld l, c                                       ; $7d28: $69
    ld a, h                                       ; $7d29: $7c
    ld c, d                                       ; $7d2a: $4a
    or b                                          ; $7d2b: $b0
    ld h, c                                       ; $7d2c: $61
    daa                                           ; $7d2d: $27
    ld a, [de]                                    ; $7d2e: $1a
    ld d, b                                       ; $7d2f: $50

jr_0a6_7d30:
    jr nc, jr_0a6_7cc2                            ; $7d30: $30 $90

    ld l, d                                       ; $7d32: $6a
    nop                                           ; $7d33: $00
    adc h                                         ; $7d34: $8c
    nop                                           ; $7d35: $00
    rst $38                                       ; $7d36: $ff
    ld [hl], b                                    ; $7d37: $70
    ld [hl], d                                    ; $7d38: $72
    ld [hl], h                                    ; $7d39: $74
    ld a, d                                       ; $7d3a: $7a
    inc h                                         ; $7d3b: $24
    ld a, [de]                                    ; $7d3c: $1a
    and h                                         ; $7d3d: $a4
    ld b, c                                       ; $7d3e: $41
    ld e, e                                       ; $7d3f: $5b
    ld e, d                                       ; $7d40: $5a
    call c, $e049                                 ; $7d41: $dc $49 $e0
    ld sp, $0b09                                  ; $7d44: $31 $09 $0b
    rst $38                                       ; $7d47: $ff
    ret nz                                        ; $7d48: $c0

    jr c, jr_0a6_7d8b                             ; $7d49: $38 $40

    jr z, jr_0a6_7d4d                             ; $7d4b: $28 $00

jr_0a6_7d4d:
    ld hl, $1078                                  ; $7d4d: $21 $78 $10
    ld [$1c30], sp                                ; $7d50: $08 $30 $1c
    ld c, c                                       ; $7d53: $49
    jr nz, jr_0a6_7d77                            ; $7d54: $20 $21

jr_0a6_7d56:
    sub b                                         ; $7d56: $90
    ld d, c                                       ; $7d57: $51
    rst $38                                       ; $7d58: $ff
    db $fc                                        ; $7d59: $fc
    ld c, c                                       ; $7d5a: $49
    ld b, b                                       ; $7d5b: $40
    jr nz, jr_0a6_7d75                            ; $7d5c: $20 $17

    ld d, e                                       ; $7d5e: $53
    ld d, e                                       ; $7d5f: $53
    ld h, e                                       ; $7d60: $63
    ld [bc], a                                    ; $7d61: $02
    ld a, [de]                                    ; $7d62: $1a
    ld h, l                                       ; $7d63: $65
    ld h, d                                       ; $7d64: $62
    daa                                           ; $7d65: $27
    ld c, e                                       ; $7d66: $4b
    ld [hl], a                                    ; $7d67: $77
    ld l, e                                       ; $7d68: $6b
    rst $38                                       ; $7d69: $ff
    ld hl, $6472                                  ; $7d6a: $21 $72 $64
    dec bc                                        ; $7d6d: $0b
    ld b, b                                       ; $7d6e: $40
    ld h, e                                       ; $7d6f: $63
    inc sp                                        ; $7d70: $33
    ld c, e                                       ; $7d71: $4b
    ld c, b                                       ; $7d72: $48
    dec bc                                        ; $7d73: $0b
    ld b, c                                       ; $7d74: $41

jr_0a6_7d75:
    ld e, e                                       ; $7d75: $5b
    or b                                          ; $7d76: $b0

jr_0a6_7d77:
    ld c, c                                       ; $7d77: $49
    inc d                                         ; $7d78: $14
    inc sp                                        ; $7d79: $33
    rst $38                                       ; $7d7a: $ff
    ret nc                                        ; $7d7b: $d0

    ld l, d                                       ; $7d7c: $6a
    sub b                                         ; $7d7d: $90
    ld b, c                                       ; $7d7e: $41
    sub $5b                                       ; $7d7f: $d6 $5b
    ld e, h                                       ; $7d81: $5c
    ld e, c                                       ; $7d82: $59
    xor a                                         ; $7d83: $af
    ld de, $5473                                  ; $7d84: $11 $73 $54
    rst $00                                       ; $7d87: $c7
    ld c, b                                       ; $7d88: $48
    ld h, h                                       ; $7d89: $64
    inc c                                         ; $7d8a: $0c

jr_0a6_7d8b:
    rst $38                                       ; $7d8b: $ff
    xor h                                         ; $7d8c: $ac
    ld e, e                                       ; $7d8d: $5b
    ld h, b                                       ; $7d8e: $60
    inc b                                         ; $7d8f: $04
    inc b                                         ; $7d90: $04
    ld l, b                                       ; $7d91: $68
    ld h, $24                                     ; $7d92: $26 $24
    ld [$1d38], sp                                ; $7d94: $08 $38 $1d
    ld [hl], c                                    ; $7d97: $71
    dec sp                                        ; $7d98: $3b
    ld d, h                                       ; $7d99: $54
    jr nc, jr_0a6_7dfe                            ; $7d9a: $30 $62

    rst $38                                       ; $7d9c: $ff
    ld d, [hl]                                    ; $7d9d: $56
    jr nz, jr_0a6_7dc0                            ; $7d9e: $20 $20

    ld l, h                                       ; $7da0: $6c
    ld d, a                                       ; $7da1: $57
    dec sp                                        ; $7da2: $3b
    ld a, [hl]                                    ; $7da3: $7e
    ld d, e                                       ; $7da4: $53
    ret nc                                        ; $7da5: $d0

    inc l                                         ; $7da6: $2c

jr_0a6_7da7:
    sub l                                         ; $7da7: $95
    inc de                                        ; $7da8: $13
    add b                                         ; $7da9: $80
    jr c, jr_0a6_7e0d                             ; $7daa: $38 $61

    ld c, h                                       ; $7dac: $4c
    rst $38                                       ; $7dad: $ff
    adc a                                         ; $7dae: $8f
    ld l, c                                       ; $7daf: $69
    xor a                                         ; $7db0: $af
    ld l, h                                       ; $7db1: $6c
    rrca                                          ; $7db2: $0f
    ld h, h                                       ; $7db3: $64
    cpl                                           ; $7db4: $2f
    ld c, e                                       ; $7db5: $4b
    ld e, h                                       ; $7db6: $5c
    dec h                                         ; $7db7: $25
    jr nz, jr_0a6_7dee                            ; $7db8: $20 $34

    ld b, b                                       ; $7dba: $40
    inc sp                                        ; $7dbb: $33
    or c                                          ; $7dbc: $b1
    ld c, e                                       ; $7dbd: $4b
    db $fc                                        ; $7dbe: $fc
    rst $28                                       ; $7dbf: $ef

jr_0a6_7dc0:
    ld h, e                                       ; $7dc0: $63
    adc b                                         ; $7dc1: $88

jr_0a6_7dc2:
    jr c, jr_0a6_7df4                             ; $7dc2: $38 $30

    inc l                                         ; $7dc4: $2c
    inc c                                         ; $7dc5: $0c
    ld l, l                                       ; $7dc6: $6d
    inc e                                         ; $7dc7: $1c
    ld b, b                                       ; $7dc8: $40
    ld [hl], h                                    ; $7dc9: $74
    adc l                                         ; $7dca: $8d
    ld c, b                                       ; $7dcb: $48
    nop                                           ; $7dcc: $00
    ld c, [hl]                                    ; $7dcd: $4e
    inc b                                         ; $7dce: $04
    ld bc, $0070                                  ; $7dcf: $01 $70 $00
    nop                                           ; $7dd2: $00
    inc b                                         ; $7dd3: $04
    ld c, b                                       ; $7dd4: $48
    ld [bc], a                                    ; $7dd5: $02
    ld l, b                                       ; $7dd6: $68
    jr nz, jr_0a6_7dd9                            ; $7dd7: $20 $00

jr_0a6_7dd9:
    add hl, bc                                    ; $7dd9: $09
    db $fd                                        ; $7dda: $fd
    inc b                                         ; $7ddb: $04
    ld c, b                                       ; $7ddc: $48
    ld bc, $0500                                  ; $7ddd: $01 $00 $05
    ld [$a804], sp                                ; $7de0: $08 $04 $a8
    inc l                                         ; $7de3: $2c
    nop                                           ; $7de4: $00
    ld d, [hl]                                    ; $7de5: $56
    jr z, jr_0a6_7de8                             ; $7de6: $28 $00

jr_0a6_7de8:
    db $10                                        ; $7de8: $10
    jr c, @-$02                                   ; $7de9: $38 $fc

    ld d, a                                       ; $7deb: $57
    db $10                                        ; $7dec: $10
    dec sp                                        ; $7ded: $3b

jr_0a6_7dee:
    ld [$1820], sp                                ; $7dee: $08 $20 $18
    ld c, $38                                     ; $7df1: $0e $38
    db $10                                        ; $7df3: $10

jr_0a6_7df4:
    ld d, b                                       ; $7df4: $50
    ld b, b                                       ; $7df5: $40
    ld h, b                                       ; $7df6: $60
    inc b                                         ; $7df7: $04
    inc b                                         ; $7df8: $04
    ld l, a                                       ; $7df9: $6f
    add hl, bc                                    ; $7dfa: $09
    sbc d                                         ; $7dfb: $9a
    nop                                           ; $7dfc: $00
    ld c, [hl]                                    ; $7dfd: $4e

jr_0a6_7dfe:
    jr c, jr_0a6_7e00                             ; $7dfe: $38 $00

jr_0a6_7e00:
    ld a, c                                       ; $7e00: $79
    db $10                                        ; $7e01: $10
    ld h, b                                       ; $7e02: $60
    ld h, b                                       ; $7e03: $60
    ld [hl+], a                                   ; $7e04: $22

Call_0a6_7e05:
    jr nc, jr_0a6_7e7b                            ; $7e05: $30 $74

    jr z, @+$01                                   ; $7e07: $28 $ff

    or b                                          ; $7e09: $b0
    ld c, b                                       ; $7e0a: $48
    ld h, a                                       ; $7e0b: $67
    ld b, b                                       ; $7e0c: $40

jr_0a6_7e0d:
    cp b                                          ; $7e0d: $b8
    ld c, b                                       ; $7e0e: $48
    dec c                                         ; $7e0f: $0d
    jr jr_0a6_7dee                                ; $7e10: $18 $dc

    db $10                                        ; $7e12: $10
    ld h, h                                       ; $7e13: $64
    nop                                           ; $7e14: $00
    db $10                                        ; $7e15: $10
    jr c, jr_0a6_7e00                             ; $7e16: $38 $e8

    ld [$31ff], sp                                ; $7e18: $08 $ff $31
    ld c, b                                       ; $7e1b: $48
    ld [hl], l                                    ; $7e1c: $75
    jr nz, jr_0a6_7da7                            ; $7e1d: $20 $88

    jr jr_0a6_7e4f                                ; $7e1f: $18 $2e

    jr @+$04                                      ; $7e21: $18 $02

    add hl, de                                    ; $7e23: $19
    ld bc, $6031                                  ; $7e24: $01 $31 $60
    ld e, b                                       ; $7e27: $58
    ldh [rNR41], a                                ; $7e28: $e0 $20
    rst $38                                       ; $7e2a: $ff
    ld a, [hl+]                                   ; $7e2b: $2a
    jr z, jr_0a6_7dc2                             ; $7e2c: $28 $94

    ld c, b                                       ; $7e2e: $48
    ld l, [hl]                                    ; $7e2f: $6e
    ld c, c                                       ; $7e30: $49
    inc h                                         ; $7e31: $24

Jump_0a6_7e32:
    ld bc, $c804                                  ; $7e32: $01 $04 $c8
    sbc h                                         ; $7e35: $9c
    ld [hl], c                                    ; $7e36: $71
    ld [bc], a                                    ; $7e37: $02
    ld b, c                                       ; $7e38: $41
    or h                                          ; $7e39: $b4
    jr @+$01                                      ; $7e3a: $18 $ff

    inc b                                         ; $7e3c: $04
    ld d, b                                       ; $7e3d: $50
    add e                                         ; $7e3e: $83
    add b                                         ; $7e3f: $80
    push af                                       ; $7e40: $f5
    ld e, b                                       ; $7e41: $58
    dec b                                         ; $7e42: $05
    ld l, c                                       ; $7e43: $69
    or h                                          ; $7e44: $b4
    ld h, b                                       ; $7e45: $60
    and $21                                       ; $7e46: $e6 $21
    inc b                                         ; $7e48: $04
    jr nc, jr_0a6_7eab                            ; $7e49: $30 $60

    ld b, b                                       ; $7e4b: $40
    rst $38                                       ; $7e4c: $ff
    dec hl                                        ; $7e4d: $2b
    ld [de], a                                    ; $7e4e: $12

jr_0a6_7e4f:
    inc l                                         ; $7e4f: $2c
    ld c, c                                       ; $7e50: $49
    jr nc, jr_0a6_7e74                            ; $7e51: $30 $21

    adc b                                         ; $7e53: $88
    jr z, @+$40                                   ; $7e54: $28 $3e

    ld a, [hl+]                                   ; $7e56: $2a
    jr nc, jr_0a6_7ea9                            ; $7e57: $30 $50

    xor b                                         ; $7e59: $a8
    ld b, b                                       ; $7e5a: $40
    ld l, e                                       ; $7e5b: $6b
    ld [de], a                                    ; $7e5c: $12
    ld b, b                                       ; $7e5d: $40
    nop                                           ; $7e5e: $00
    ld c, b                                       ; $7e5f: $48
    inc b                                         ; $7e60: $04
    ld bc, $00d0                                  ; $7e61: $01 $d0 $00
    nop                                           ; $7e64: $00
    rlca                                          ; $7e65: $07
    jr nz, jr_0a6_7e68                            ; $7e66: $20 $00

jr_0a6_7e68:
    inc b                                         ; $7e68: $04
    nop                                           ; $7e69: $00
    inc e                                         ; $7e6a: $1c
    add hl, bc                                    ; $7e6b: $09
    add hl, bc                                    ; $7e6c: $09
    nop                                           ; $7e6d: $00
    inc b                                         ; $7e6e: $04
    nop                                           ; $7e6f: $00
    rrca                                          ; $7e70: $0f
    jr nz, jr_0a6_7e81                            ; $7e71: $20 $0e

    nop                                           ; $7e73: $00

jr_0a6_7e74:
    add hl, bc                                    ; $7e74: $09
    inc b                                         ; $7e75: $04
    rst $38                                       ; $7e76: $ff
    inc b                                         ; $7e77: $04
    ld [$2810], sp                                ; $7e78: $08 $10 $28

jr_0a6_7e7b:
    dec c                                         ; $7e7b: $0d
    nop                                           ; $7e7c: $00
    inc b                                         ; $7e7d: $04
    jr jr_0a6_7ebe                                ; $7e7e: $18 $3e

    ld d, b                                       ; $7e80: $50

jr_0a6_7e81:
    ld b, b                                       ; $7e81: $40
    jr nz, @+$4b                                  ; $7e82: $20 $49

    nop                                           ; $7e84: $00
    scf                                           ; $7e85: $37
    jr nz, @+$01                                  ; $7e86: $20 $ff

    ld d, b                                       ; $7e88: $50
    db $10                                        ; $7e89: $10
    ld b, b                                       ; $7e8a: $40
    jr nz, jr_0a6_7e91                            ; $7e8b: $20 $04

    db $10                                        ; $7e8d: $10
    ld h, h                                       ; $7e8e: $64
    nop                                           ; $7e8f: $00
    ld d, h                                       ; $7e90: $54

jr_0a6_7e91:
    nop                                           ; $7e91: $00
    inc b                                         ; $7e92: $04
    jr c, jr_0a6_7e96                             ; $7e93: $38 $01

    add b                                         ; $7e95: $80

jr_0a6_7e96:
    ld l, b                                       ; $7e96: $68
    db $10                                        ; $7e97: $10
    sbc a                                         ; $7e98: $9f
    add hl, bc                                    ; $7e99: $09
    db $10                                        ; $7e9a: $10
    inc b                                         ; $7e9b: $04
    inc b                                         ; $7e9c: $04
    dec c                                         ; $7e9d: $0d
    jr c, jr_0a6_7ebb                             ; $7e9e: $38 $1b

    jr jr_0a6_7ead                                ; $7ea0: $18 $0b

    jr c, @+$1a                                   ; $7ea2: $38 $18

    ld d, b                                       ; $7ea4: $50
    ld e, $28                                     ; $7ea5: $1e $28
    rst $38                                       ; $7ea7: $ff
    scf                                           ; $7ea8: $37

jr_0a6_7ea9:
    db $10                                        ; $7ea9: $10
    ld l, h                                       ; $7eaa: $6c

jr_0a6_7eab:
    jr nc, jr_0a6_7f1d                            ; $7eab: $30 $70

jr_0a6_7ead:
    jr jr_0a6_7ef3                                ; $7ead: $18 $44

    nop                                           ; $7eaf: $00
    inc b                                         ; $7eb0: $04
    ld b, b                                       ; $7eb1: $40
    ld b, h                                       ; $7eb2: $44
    jr jr_0a6_7eb9                                ; $7eb3: $18 $04

    jr c, jr_0a6_7f24                             ; $7eb5: $38 $6d

    jr z, @+$01                                   ; $7eb7: $28 $ff

jr_0a6_7eb9:
    ld l, b                                       ; $7eb9: $68
    ld b, b                                       ; $7eba: $40

jr_0a6_7ebb:
    ld a, [$0420]                                 ; $7ebb: $fa $20 $04

jr_0a6_7ebe:
    jr jr_0a6_7ed6                                ; $7ebe: $18 $16

    add hl, hl                                    ; $7ec0: $29
    inc b                                         ; $7ec1: $04
    jr z, @+$74                                   ; $7ec2: $28 $72

    ld l, b                                       ; $7ec4: $68
    ld h, $19                                     ; $7ec5: $26 $19
    ld [hl], h                                    ; $7ec7: $74
    jr c, @+$01                                   ; $7ec8: $38 $ff

    ld [bc], a                                    ; $7eca: $02
    ld sp, $3954                                  ; $7ecb: $31 $54 $39
    ldh a, [$28]                                  ; $7ece: $f0 $28
    ld e, h                                       ; $7ed0: $5c
    ld de, $28f1                                  ; $7ed1: $11 $f1 $28
    inc l                                         ; $7ed4: $2c
    add hl, hl                                    ; $7ed5: $29

jr_0a6_7ed6:
    jr c, jr_0a6_7f10                             ; $7ed6: $38 $38

    ld a, h                                       ; $7ed8: $7c
    add hl, de                                    ; $7ed9: $19
    ld b, e                                       ; $7eda: $43
    nop                                           ; $7edb: $00
    ld b, b                                       ; $7edc: $40
    inc b                                         ; $7edd: $04
    ld bc, $0088                                  ; $7ede: $01 $88 $00
    nop                                           ; $7ee1: $00
    nop                                           ; $7ee2: $00
    inc b                                         ; $7ee3: $04
    nop                                           ; $7ee4: $00
    add hl, bc                                    ; $7ee5: $09
    ld a, h                                       ; $7ee6: $7c
    add hl, bc                                    ; $7ee7: $09
    inc b                                         ; $7ee8: $04
    db $10                                        ; $7ee9: $10
    rrca                                          ; $7eea: $0f
    jr jr_0a6_7efb                                ; $7eeb: $18 $0e

    nop                                           ; $7eed: $00
    ld [bc], a                                    ; $7eee: $02
    jr jr_0a6_7f01                                ; $7eef: $18 $10

    jr c, jr_0a6_7ef7                             ; $7ef1: $38 $04

jr_0a6_7ef3:
    inc b                                         ; $7ef3: $04
    rst $38                                       ; $7ef4: $ff
    ld e, $18                                     ; $7ef5: $1e $18

jr_0a6_7ef7:
    cpl                                           ; $7ef7: $2f
    nop                                           ; $7ef8: $00
    inc b                                         ; $7ef9: $04
    ld b, b                                       ; $7efa: $40

jr_0a6_7efb:
    jr c, jr_0a6_7f2d                             ; $7efb: $38 $30

    ld b, b                                       ; $7efd: $40
    jr nz, @+$04                                  ; $7efe: $20 $02

    ld l, b                                       ; $7f00: $68

jr_0a6_7f01:
    ld [hl], $18                                  ; $7f01: $36 $18
    ld [$ff38], sp                                ; $7f03: $08 $38 $ff
    inc a                                         ; $7f06: $3c
    ld c, b                                       ; $7f07: $48
    ld b, b                                       ; $7f08: $40
    db $10                                        ; $7f09: $10
    sub c                                         ; $7f0a: $91
    nop                                           ; $7f0b: $00
    jr nc, @+$6a                                  ; $7f0c: $30 $68

Jump_0a6_7f0e:
    ld b, b                                       ; $7f0e: $40
    ld e, b                                       ; $7f0f: $58

jr_0a6_7f10:
    ld a, b                                       ; $7f10: $78
    nop                                           ; $7f11: $00
    inc hl                                        ; $7f12: $23
    ld b, b                                       ; $7f13: $40
    jr nc, @+$1a                                  ; $7f14: $30 $18

    rst $38                                       ; $7f16: $ff
    inc [hl]                                      ; $7f17: $34
    jr c, jr_0a6_7f5a                             ; $7f18: $38 $40

    jr nz, @+$12                                  ; $7f1a: $20 $10

    ld b, b                                       ; $7f1c: $40

jr_0a6_7f1d:
    dec c                                         ; $7f1d: $0d
    ld b, b                                       ; $7f1e: $40
    call nz, $f840                                ; $7f1f: $c4 $40 $f8
    jr z, @-$6a                                   ; $7f22: $28 $94

jr_0a6_7f24:
    ld a, b                                       ; $7f24: $78
    add h                                         ; $7f25: $84
    jr nz, @+$01                                  ; $7f26: $20 $ff

    add a                                         ; $7f28: $87

jr_0a6_7f29:
    jr nz, jr_0a6_7f53                            ; $7f29: $20 $28

    jr c, jr_0a6_7f59                             ; $7f2b: $38 $2c

jr_0a6_7f2d:
    jr z, @-$5a                                   ; $7f2d: $28 $a4

    jr nc, jr_0a6_7f6d                            ; $7f2f: $30 $3c

    ld e, b                                       ; $7f31: $58
    ld hl, $0c21                                  ; $7f32: $21 $21 $0c
    ld sp, HeaderCGBFlag                          ; $7f35: $31 $43 $01
    rst $38                                       ; $7f38: $ff
    sbc $18                                       ; $7f39: $de $18
    ld d, l                                       ; $7f3b: $55
    add hl, sp                                    ; $7f3c: $39
    inc b                                         ; $7f3d: $04
    jr jr_0a6_7fa3                                ; $7f3e: $18 $63

    ld sp, $1946                                  ; $7f40: $31 $46 $19
    ld l, b                                       ; $7f43: $68
    ld hl, $3962                                  ; $7f44: $21 $62 $39
    ld l, h                                       ; $7f47: $6c
    add hl, sp                                    ; $7f48: $39
    rst $38                                       ; $7f49: $ff
    ld c, $18                                     ; $7f4a: $0e $18
    db $10                                        ; $7f4c: $10
    ld l, b                                       ; $7f4d: $68
    ld a, b                                       ; $7f4e: $78
    ld bc, $4004                                  ; $7f4f: $01 $04 $40
    ld e, b                                       ; $7f52: $58

jr_0a6_7f53:
    ld a, b                                       ; $7f53: $78
    inc [hl]                                      ; $7f54: $34
    jr @-$1e                                      ; $7f55: $18 $e0

    ld c, b                                       ; $7f57: $48
    db $10                                        ; $7f58: $10

jr_0a6_7f59:
    ld d, b                                       ; $7f59: $50

jr_0a6_7f5a:
    add b                                         ; $7f5a: $80
    add [hl]                                      ; $7f5b: $86
    ld d, b                                       ; $7f5c: $50
    inc b                                         ; $7f5d: $04
    inc b                                         ; $7f5e: $04
    ld [hl-], a                                   ; $7f5f: $32
    nop                                           ; $7f60: $00
    ld e, l                                       ; $7f61: $5d
    inc b                                         ; $7f62: $04
    ld bc, $0098                                  ; $7f63: $01 $98 $00
    inc b                                         ; $7f66: $04
    ld b, b                                       ; $7f67: $40
    rrca                                          ; $7f68: $0f
    ld [$0801], sp                                ; $7f69: $08 $01 $08
    add hl, bc                                    ; $7f6c: $09

jr_0a6_7f6d:
    ld bc, $e308                                  ; $7f6d: $01 $08 $e3
    ld c, $28                                     ; $7f70: $0e $28
    dec c                                         ; $7f72: $0d

jr_0a6_7f73:
    db $10                                        ; $7f73: $10
    db $10                                        ; $7f74: $10
    jr nc, @+$06                                  ; $7f75: $30 $04

    inc b                                         ; $7f77: $04
    add hl, bc                                    ; $7f78: $09
    ld hl, $3d20                                  ; $7f79: $21 $20 $3d
    adc b                                         ; $7f7c: $88
    rst $38                                       ; $7f7d: $ff
    ld d, b                                       ; $7f7e: $50
    ld c, b                                       ; $7f7f: $48
    jr c, @+$2a                                   ; $7f80: $38 $28

jr_0a6_7f82:
    ld [$4268], sp                                ; $7f82: $08 $68 $42
    nop                                           ; $7f85: $00
    inc b                                         ; $7f86: $04
    db $10                                        ; $7f87: $10
    ld [de], a                                    ; $7f88: $12
    ld l, b                                       ; $7f89: $68
    dec a                                         ; $7f8a: $3d
    ld d, b                                       ; $7f8b: $50
    xor l                                         ; $7f8c: $ad
    db $10                                        ; $7f8d: $10
    rst $38                                       ; $7f8e: $ff
    jr z, jr_0a6_7f29                             ; $7f8f: $28 $98

    ld b, d                                       ; $7f91: $42
    jr z, @-$2e                                   ; $7f92: $28 $d0

    jr z, @-$5e                                   ; $7f94: $28 $a0

    ld c, b                                       ; $7f96: $48
    add l                                         ; $7f97: $85
    ld [hl], b                                    ; $7f98: $70
    pop hl                                        ; $7f99: $e1
    jr z, jr_0a6_7f73                             ; $7f9a: $28 $d7

    nop                                           ; $7f9c: $00
    push af                                       ; $7f9d: $f5
    ld d, b                                       ; $7f9e: $50
    rst $38                                       ; $7f9f: $ff
    db $10                                        ; $7fa0: $10
    ld e, b                                       ; $7fa1: $58
    or b                                          ; $7fa2: $b0

jr_0a6_7fa3:
    ld d, b                                       ; $7fa3: $50
    ld [bc], a                                    ; $7fa4: $02
    ld de, $4058                                  ; $7fa5: $11 $58 $40
    inc a                                         ; $7fa8: $3c
    jr z, jr_0a6_7fc5                             ; $7fa9: $28 $1a

    ld de, $2005                                  ; $7fab: $11 $05 $20
    ld a, b                                       ; $7fae: $78
    ld c, b                                       ; $7faf: $48
    rst $38                                       ; $7fb0: $ff
    ld [hl], $28                                  ; $7fb1: $36 $28
    ld c, $68                                     ; $7fb3: $0e $68
    ld d, h                                       ; $7fb5: $54
    add hl, sp                                    ; $7fb6: $39
    ld [hl], h                                    ; $7fb7: $74
    sub b                                         ; $7fb8: $90
    sub h                                         ; $7fb9: $94
    jr nz, jr_0a6_7fc0                            ; $7fba: $20 $04

    jr z, @+$62                                   ; $7fbc: $28 $60

    jr z, jr_0a6_7fce                             ; $7fbe: $28 $0e

jr_0a6_7fc0:
    jr z, jr_0a6_7f82                             ; $7fc0: $28 $c0

    dec a                                         ; $7fc2: $3d
    ld h, b                                       ; $7fc3: $60
    cp l                                          ; $7fc4: $bd

jr_0a6_7fc5:
    ld bc, $0016                                  ; $7fc5: $01 $16 $00
    ld b, a                                       ; $7fc8: $47
    inc b                                         ; $7fc9: $04
    ld bc, $00c8                                  ; $7fca: $01 $c8 $00
    nop                                           ; $7fcd: $00

jr_0a6_7fce:
    nop                                           ; $7fce: $00
    rrca                                          ; $7fcf: $0f
    ld h, b                                       ; $7fd0: $60
    db $10                                        ; $7fd1: $10
    jr nz, jr_0a6_7fec                            ; $7fd2: $20 $18

    ld [$0eff], sp                                ; $7fd4: $08 $ff $0e
    ld [$0020], sp                                ; $7fd7: $08 $20 $00
    rlca                                          ; $7fda: $07
    jr jr_0a6_7fe3                                ; $7fdb: $18 $06

    or b                                          ; $7fdd: $b0
    ld b, a                                       ; $7fde: $47

jr_0a6_7fdf:
    jr z, jr_0a6_7fe5                             ; $7fdf: $28 $04

    jr z, jr_0a6_7ff0                             ; $7fe1: $28 $0d

jr_0a6_7fe3:
    ld d, b                                       ; $7fe3: $50
    ld b, e                                       ; $7fe4: $43

jr_0a6_7fe5:
    jr c, jr_0a6_7fdf                             ; $7fe5: $38 $f8

    jr nz, @+$5a                                  ; $7fe7: $20 $58

    ld [hl], h                                    ; $7fe9: $74
    sub b                                         ; $7fea: $90
    add h                                         ; $7feb: $84

jr_0a6_7fec:
    ld b, b                                       ; $7fec: $40
    sbc b                                         ; $7fed: $98
    ld b, b                                       ; $7fee: $40
    and e                                         ; $7fef: $a3

jr_0a6_7ff0:
    ld h, b                                       ; $7ff0: $60
    inc b                                         ; $7ff1: $04
    rst $38                                       ; $7ff2: $ff
    ld a, a                                       ; $7ff3: $7f
    dec b                                         ; $7ff4: $05
    inc bc                                        ; $7ff5: $03
    ld b, b                                       ; $7ff6: $40
    ld bc, $0000                                  ; $7ff7: $01 $00 $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
