; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0bc", ROMX[$4000], BANK[$bc]

Jump_0bc_4000:
    cp h                                          ; $4000: $bc
    ld [hl], b                                    ; $4001: $70
    inc e                                         ; $4002: $1c
    ld [hl], h                                    ; $4003: $74
    ld de, $ff41                                  ; $4004: $11 $41 $ff
    ld bc, $feb0                                  ; $4007: $01 $b0 $fe
    rst $38                                       ; $400a: $ff

Call_0bc_400b:
    db $fd                                        ; $400b: $fd
    rst $38                                       ; $400c: $ff
    ld a, [$201f]                                 ; $400d: $fa $1f $20

Jump_0bc_4010:
    nop                                           ; $4010: $00
    rst $30                                       ; $4011: $f7
    rst $38                                       ; $4012: $ff
    db $dd                                        ; $4013: $dd
    rst $38                                       ; $4014: $ff
    and d                                         ; $4015: $a2
    rst $38                                       ; $4016: $ff
    ld [hl], a                                    ; $4017: $77
    rlc b                                         ; $4018: $cb $00
    rrca                                          ; $401a: $0f
    rst $38                                       ; $401b: $ff
    cp $e1                                        ; $401c: $fe $e1
    sbc a                                         ; $401e: $9f
    ldh [$e8], a                                  ; $401f: $e0 $e8
    jp $f500                                      ; $4021: $c3 $00 $f5


    ldh [$f8], a                                  ; $4024: $e0 $f8
    ldh [$d0], a                                  ; $4026: $e0 $d0
    ldh [$f5], a                                  ; $4028: $e0 $f5
    add sp, $00                                   ; $402a: $e8 $00
    db $fd                                        ; $402c: $fd
    ld hl, sp+$20                                 ; $402d: $f8 $20
    ret nz                                        ; $402f: $c0

    add b                                         ; $4030: $80
    ld b, b                                       ; $4031: $40
    ld b, d                                       ; $4032: $42
    and b                                         ; $4033: $a0
    nop                                           ; $4034: $00
    ldh [rP1], a                                  ; $4035: $e0 $00
    and b                                         ; $4037: $a0
    nop                                           ; $4038: $00
    inc bc                                        ; $4039: $03
    nop                                           ; $403a: $00
    dec c                                         ; $403b: $0d
    nop                                           ; $403c: $00
    ld bc, $001d                                  ; $403d: $01 $1d $00
    ld a, [bc]                                    ; $4040: $0a
    nop                                           ; $4041: $00
    dec b                                         ; $4042: $05
    nop                                           ; $4043: $00
    ld [bc], a                                    ; $4044: $02
    inc b                                         ; $4045: $04
    nop                                           ; $4046: $00
    db $10                                        ; $4047: $10
    ld l, e                                       ; $4048: $6b
    nop                                           ; $4049: $00
    nop                                           ; $404a: $00
    ld [$2500], sp                                ; $404b: $08 $00 $25
    nop                                           ; $404e: $00
    ld h, $00                                     ; $404f: $26 $00
    nop                                           ; $4051: $00
    scf                                           ; $4052: $37
    nop                                           ; $4053: $00
    ld [hl+], a                                   ; $4054: $22
    nop                                           ; $4055: $00
    ccf                                           ; $4056: $3f
    nop                                           ; $4057: $00
    ld c, [hl]                                    ; $4058: $4e
    ld bc, $fc00                                  ; $4059: $01 $00 $fc
    inc bc                                        ; $405c: $03
    cp $01                                        ; $405d: $fe $01
    cp h                                          ; $405f: $bc

Call_0bc_4060:
    inc bc                                        ; $4060: $03
    ld sp, hl                                     ; $4061: $f9
    rla                                           ; $4062: $17
    nop                                           ; $4063: $00
    sbc b                                         ; $4064: $98
    ld [hl], a                                    ; $4065: $77
    rra                                           ; $4066: $1f
    rst $38                                       ; $4067: $ff
    inc c                                         ; $4068: $0c
    ei                                            ; $4069: $fb
    ld [bc], a                                    ; $406a: $02
    rst $38                                       ; $406b: $ff
    nop                                           ; $406c: $00
    ld l, l                                       ; $406d: $6d
    rst $38                                       ; $406e: $ff
    db $10                                        ; $406f: $10
    rst $38                                       ; $4070: $ff
    ld [bc], a                                    ; $4071: $02
    db $fd                                        ; $4072: $fd
    call nz, $00e0                                ; $4073: $c4 $e0 $00
    ld d, b                                       ; $4076: $50
    ldh [$62], a                                  ; $4077: $e0 $62
    ret nz                                        ; $4079: $c0

    or h                                          ; $407a: $b4
    ret nz                                        ; $407b: $c0

    ld a, l                                       ; $407c: $7d
    ret nz                                        ; $407d: $c0

    ld [bc], a                                    ; $407e: $02
    dec [hl]                                      ; $407f: $35
    ret nz                                        ; $4080: $c0

    dec sp                                        ; $4081: $3b
    call nz, $50a4                                ; $4082: $c4 $a4 $50
    scf                                           ; $4085: $37
    nop                                           ; $4086: $00
    nop                                           ; $4087: $00
    ld b, b                                       ; $4088: $40
    sub b                                         ; $4089: $90
    inc a                                         ; $408a: $3c
    nop                                           ; $408b: $00
    ld b, b                                       ; $408c: $40
    nop                                           ; $408d: $00
    add b                                         ; $408e: $80
    nop                                           ; $408f: $00
    ld c, c                                       ; $4090: $49
    nop                                           ; $4091: $00
    ld l, d                                       ; $4092: $6a
    or d                                          ; $4093: $b2
    rrca                                          ; $4094: $0f
    ld [$2004], sp                                ; $4095: $08 $04 $20
    add b                                         ; $4098: $80
    inc c                                         ; $4099: $0c
    db $10                                        ; $409a: $10
    rst $38                                       ; $409b: $ff
    ld [bc], a                                    ; $409c: $02
    ld h, b                                       ; $409d: $60
    jr z, jr_0bc_40a0                             ; $409e: $28 $00

jr_0bc_40a0:
    nop                                           ; $40a0: $00
    stop                                          ; $40a1: $10 $00
    inc c                                         ; $40a3: $0c
    nop                                           ; $40a4: $00
    ld e, d                                       ; $40a5: $5a
    nop                                           ; $40a6: $00
    dec [hl]                                      ; $40a7: $35
    nop                                           ; $40a8: $00
    nop                                           ; $40a9: $00
    rra                                           ; $40aa: $1f
    nop                                           ; $40ab: $00
    cp a                                          ; $40ac: $bf
    nop                                           ; $40ad: $00
    dec d                                         ; $40ae: $15
    nop                                           ; $40af: $00
    inc l                                         ; $40b0: $2c
    nop                                           ; $40b1: $00
    rra                                           ; $40b2: $1f
    ld a, [hl+]                                   ; $40b3: $2a
    ccf                                           ; $40b4: $3f
    adc a                                         ; $40b5: $8f
    rra                                           ; $40b6: $1f
    dec h                                         ; $40b7: $25
    rra                                           ; $40b8: $1f
    ld c, a                                       ; $40b9: $4f
    nop                                           ; $40ba: $00
    inc de                                        ; $40bb: $13
    sbc $01                                       ; $40bc: $de $01
    sbc b                                         ; $40be: $98
    inc bc                                        ; $40bf: $03
    xor $13                                       ; $40c0: $ee $13
    and b                                         ; $40c2: $a0
    nop                                           ; $40c3: $00
    rst $38                                       ; $40c4: $ff
    ld hl, sp-$01                                 ; $40c5: $f8 $ff
    ld b, d                                       ; $40c7: $42
    rst $38                                       ; $40c8: $ff
    or h                                          ; $40c9: $b4
    rst $38                                       ; $40ca: $ff
    ld c, b                                       ; $40cb: $48
    nop                                           ; $40cc: $00
    rst $38                                       ; $40cd: $ff
    and b                                         ; $40ce: $a0
    rst $38                                       ; $40cf: $ff
    adc d                                         ; $40d0: $8a
    db $fd                                        ; $40d1: $fd
    sub d                                         ; $40d2: $92
    db $fd                                        ; $40d3: $fd
    ld bc, $fe00                                  ; $40d4: $01 $00 $fe
    inc b                                         ; $40d7: $04
    ei                                            ; $40d8: $fb
    inc bc                                        ; $40d9: $03
    db $fc                                        ; $40da: $fc
    dec bc                                        ; $40db: $0b
    db $f4                                        ; $40dc: $f4
    daa                                           ; $40dd: $27
    nop                                           ; $40de: $00
    ret c                                         ; $40df: $d8

    ld c, $f0                                     ; $40e0: $0e $f0
    ld l, a                                       ; $40e2: $6f
    sub b                                         ; $40e3: $90
    ld a, l                                       ; $40e4: $7d
    add b                                         ; $40e5: $80
    rst $18                                       ; $40e6: $df
    nop                                           ; $40e7: $00
    nop                                           ; $40e8: $00
    ld l, e                                       ; $40e9: $6b
    inc b                                         ; $40ea: $04
    sbc $01                                       ; $40eb: $de $01
    ld l, [hl]                                    ; $40ed: $6e
    ld bc, $21df                                  ; $40ee: $01 $df $21
    nop                                           ; $40f1: $00
    rst $28                                       ; $40f2: $ef
    ld e, h                                       ; $40f3: $5c
    nop                                           ; $40f4: $00
    ld l, a                                       ; $40f5: $6f
    nop                                           ; $40f6: $00
    cp a                                          ; $40f7: $bf
    ld b, b                                       ; $40f8: $40
    ld h, d                                       ; $40f9: $62
    ld [$bf00], sp                                ; $40fa: $08 $00 $bf

Jump_0bc_40fd:
    ld b, b                                       ; $40fd: $40
    ld e, e                                       ; $40fe: $5b
    and h                                         ; $40ff: $a4
    xor l                                         ; $4100: $ad
    ld d, d                                       ; $4101: $52
    ld a, [c]                                     ; $4102: $f2
    dec c                                         ; $4103: $0d
    jr nz, @-$08                                  ; $4104: $20 $f6

    add hl, bc                                    ; $4106: $09
    add c                                         ; $4107: $81
    ld b, b                                       ; $4108: $40
    nop                                           ; $4109: $00
    ld bc, $0301                                  ; $410a: $01 $01 $03
    inc bc                                        ; $410d: $03
    add b                                         ; $410e: $80
    ld b, $08                                     ; $410f: $06 $08
    ld c, $0f                                     ; $4111: $0e $0f
    add hl, sp                                    ; $4113: $39
    ccf                                           ; $4114: $3f
    ld h, a                                       ; $4115: $67
    ld a, a                                       ; $4116: $7f
    rst $18                                       ; $4117: $df
    nop                                           ; $4118: $00
    rst $38                                       ; $4119: $ff
    cp a                                          ; $411a: $bf
    rst $38                                       ; $411b: $ff
    ld a, a                                       ; $411c: $7f
    rst $38                                       ; $411d: $ff
    rrca                                          ; $411e: $0f
    rrca                                          ; $411f: $0f
    rst $38                                       ; $4120: $ff
    adc $06                                       ; $4121: $ce $06
    nop                                           ; $4123: $00
    ld b, [hl]                                    ; $4124: $46
    add hl, sp                                    ; $4125: $39
    ldh a, [$f0]                                  ; $4126: $f0 $f0
    ld a, [hl-]                                   ; $4128: $3a
    add hl, de                                    ; $4129: $19
    ld e, b                                       ; $412a: $58
    add hl, hl                                    ; $412b: $29
    cp b                                          ; $412c: $b8
    nop                                           ; $412d: $00
    add b                                         ; $412e: $80
    nop                                           ; $412f: $00
    ld [hl], b                                    ; $4130: $70
    ldh a, [$2c]                                  ; $4131: $f0 $2c
    call c, $fea2                                 ; $4133: $dc $a2 $fe
    push de                                       ; $4136: $d5
    ei                                            ; $4137: $fb
    ld [$fdea], sp                                ; $4138: $08 $ea $fd
    push af                                       ; $413b: $f5
    cp $50                                        ; $413c: $fe $50
    ld c, b                                       ; $413e: $48
    add b                                         ; $413f: $80
    add b                                         ; $4140: $80
    ld b, b                                       ; $4141: $40
    ld [$ffc0], sp                                ; $4142: $08 $c0 $ff
    rst $38                                       ; $4145: $ff
    ld e, a                                       ; $4146: $5f
    ld c, b                                       ; $4147: $48
    nop                                           ; $4148: $00
    ld d, a                                       ; $4149: $57
    rst $38                                       ; $414a: $ff
    xor d                                         ; $414b: $aa
    ld bc, $cc7f                                  ; $414c: $01 $7f $cc
    scf                                           ; $414f: $37
    ret z                                         ; $4150: $c8

    scf                                           ; $4151: $37
    ld bc, $78fe                                  ; $4152: $01 $fe $78
    add hl, bc                                    ; $4155: $09
    nop                                           ; $4156: $00
    db $eb                                        ; $4157: $eb
    rst $38                                       ; $4158: $ff
    ld d, b                                       ; $4159: $50
    rst $38                                       ; $415a: $ff
    adc h                                         ; $415b: $8c
    ldh a, [rBCPS]                                ; $415c: $f0 $68
    nop                                           ; $415e: $00
    nop                                           ; $415f: $00
    ld d, b                                       ; $4160: $50
    add b                                         ; $4161: $80
    ldh [rP1], a                                  ; $4162: $e0 $00
    ld e, b                                       ; $4164: $58
    di                                            ; $4165: $f3
    xor e                                         ; $4166: $ab
    ldh a, [rP1]                                  ; $4167: $f0 $00
    ld d, b                                       ; $4169: $50
    ldh [$61], a                                  ; $416a: $e0 $61
    add d                                         ; $416c: $82
    cp d                                          ; $416d: $ba
    dec b                                         ; $416e: $05
    ld e, l                                       ; $416f: $5d
    ld [bc], a                                    ; $4170: $02
    nop                                           ; $4171: $00
    ld a, [hl+]                                   ; $4172: $2a
    nop                                           ; $4173: $00
    inc d                                         ; $4174: $14
    nop                                           ; $4175: $00
    sub e                                         ; $4176: $93
    ld a, a                                       ; $4177: $7f
    dec bc                                        ; $4178: $0b
    rst $38                                       ; $4179: $ff
    nop                                           ; $417a: $00
    rla                                           ; $417b: $17
    rst $38                                       ; $417c: $ff
    ld c, a                                       ; $417d: $4f
    rst $38                                       ; $417e: $ff
    adc a                                         ; $417f: $8f
    db $fd                                        ; $4180: $fd
    ld d, e                                       ; $4181: $53
    xor l                                         ; $4182: $ad
    nop                                           ; $4183: $00
    inc c                                         ; $4184: $0c
    rlca                                          ; $4185: $07
    ld [hl], e                                    ; $4186: $73
    nop                                           ; $4187: $00
    cp $f8                                        ; $4188: $fe $f8
    db $fc                                        ; $418a: $fc
    db $fc                                        ; $418b: $fc
    nop                                           ; $418c: $00
    db $fd                                        ; $418d: $fd
    db $fc                                        ; $418e: $fc
    ld a, [c]                                     ; $418f: $f2
    db $fc                                        ; $4190: $fc
    db $eb                                        ; $4191: $eb
    rst $30                                       ; $4192: $f7
    rst $38                                       ; $4193: $ff
    ei                                            ; $4194: $fb
    nop                                           ; $4195: $00
    xor l                                         ; $4196: $ad
    jp nc, Jump_0bc_40fd                          ; $4197: $d2 $fd $40

    cp l                                          ; $419a: $bd
    ld [bc], a                                    ; $419b: $02
    dec a                                         ; $419c: $3d
    ld [bc], a                                    ; $419d: $02
    ld bc, $0738                                  ; $419e: $01 $38 $07
    cp e                                          ; $41a1: $bb
    rrca                                          ; $41a2: $0f
    ld [$e8ff], a                                 ; $41a3: $ea $ff $e8
    jp nz, Jump_000_0001                          ; $41a6: $c2 $01 $00

    jr c, @+$01                                   ; $41a9: $38 $ff

    ld c, b                                       ; $41ab: $48
    nop                                           ; $41ac: $00
    inc de                                        ; $41ad: $13
    nop                                           ; $41ae: $00
    rlc b                                         ; $41af: $cb $00
    nop                                           ; $41b1: $00
    ld l, e                                       ; $41b2: $6b
    add b                                         ; $41b3: $80
    rlca                                          ; $41b4: $07
    ldh [$1f], a                                  ; $41b5: $e0 $1f
    ldh [rNR13], a                                ; $41b7: $e0 $13
    db $ec                                        ; $41b9: $ec
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    rst $38                                       ; $41bc: $ff
    ei                                            ; $41bd: $fb
    inc b                                         ; $41be: $04
    xor $11                                       ; $41bf: $ee $11
    ld e, e                                       ; $41c1: $5b
    and h                                         ; $41c2: $a4
    nop                                           ; $41c3: $00
    and [hl]                                      ; $41c4: $a6
    ld e, c                                       ; $41c5: $59
    ld hl, sp+$07                                 ; $41c6: $f8 $07
    jp z, Jump_0bc_6835                           ; $41c8: $ca $35 $68

    sub a                                         ; $41cb: $97
    nop                                           ; $41cc: $00
    ret nc                                        ; $41cd: $d0

    cpl                                           ; $41ce: $2f
    add b                                         ; $41cf: $80
    ld a, a                                       ; $41d0: $7f
    pop hl                                        ; $41d1: $e1
    ld e, $55                                     ; $41d2: $1e $55
    xor d                                         ; $41d4: $aa
    nop                                           ; $41d5: $00
    adc c                                         ; $41d6: $89
    halt                                          ; $41d7: $76
    ld d, c                                       ; $41d8: $51
    xor [hl]                                      ; $41d9: $ae
    dec b                                         ; $41da: $05
    ei                                            ; $41db: $fb
    ld d, b                                       ; $41dc: $50
    xor a                                         ; $41dd: $af
    nop                                           ; $41de: $00
    add d                                         ; $41df: $82
    ld a, l                                       ; $41e0: $7d
    cp a                                          ; $41e1: $bf
    ld b, h                                       ; $41e2: $44
    db $dd                                        ; $41e3: $dd
    ld b, $97                                     ; $41e4: $06 $97
    ld c, a                                       ; $41e6: $4f
    nop                                           ; $41e7: $00
    push bc                                       ; $41e8: $c5
    rra                                           ; $41e9: $1f
    rst $08                                       ; $41ea: $cf
    ccf                                           ; $41eb: $3f
    xor l                                         ; $41ec: $ad
    rst $10                                       ; $41ed: $d7
    ld h, e                                       ; $41ee: $63
    rst $18                                       ; $41ef: $df
    nop                                           ; $41f0: $00
    ld l, $ff                                     ; $41f1: $2e $ff
    ld l, h                                       ; $41f3: $6c
    db $10                                        ; $41f4: $10
    xor l                                         ; $41f5: $ad
    ld d, b                                       ; $41f6: $50
    jp c, $00e0                                   ; $41f7: $da $e0 $00

    sub l                                         ; $41fa: $95
    ld hl, sp+$63                                 ; $41fb: $f8 $63
    db $fc                                        ; $41fd: $fc
    add $f9                                       ; $41fe: $c6 $f9
    jp c, $04ff                                   ; $4200: $da $ff $04

    or d                                          ; $4203: $b2
    rst $38                                       ; $4204: $ff
    add b                                         ; $4205: $80
    nop                                           ; $4206: $00
    ld b, d                                       ; $4207: $42
    sbc d                                         ; $4208: $9a
    ld bc, $0054                                  ; $4209: $01 $54 $00
    nop                                           ; $420c: $00
    ld a, [$6900]                                 ; $420d: $fa $00 $69
    cp h                                          ; $4210: $bc
    ld l, e                                       ; $4211: $6b
    db $fc                                        ; $4212: $fc
    ret nc                                        ; $4213: $d0

    cp a                                          ; $4214: $bf
    add b                                         ; $4215: $80
    and c                                         ; $4216: $a1
    add hl, de                                    ; $4217: $19
    jr nz, jr_0bc_421a                            ; $4218: $20 $00

jr_0bc_421a:
    add d                                         ; $421a: $82
    nop                                           ; $421b: $00
    ld e, b                                       ; $421c: $58
    nop                                           ; $421d: $00
    ldh [$08], a                                  ; $421e: $e0 $08
    nop                                           ; $4220: $00
    ld [hl], l                                    ; $4221: $75
    add b                                         ; $4222: $80
    ld [bc], a                                    ; $4223: $02
    ld hl, sp+$01                                 ; $4224: $f8 $01
    inc b                                         ; $4226: $04
    nop                                           ; $4227: $00
    add hl, bc                                    ; $4228: $09
    add d                                         ; $4229: $82
    ld [de], a                                    ; $422a: $12
    nop                                           ; $422b: $00
    ld bc, $8a00                                  ; $422c: $01 $00 $8a
    nop                                           ; $422f: $00
    ld d, l                                       ; $4230: $55
    ld b, $02                                     ; $4231: $06 $02
    sub d                                         ; $4233: $92
    add b                                         ; $4234: $80
    ret z                                         ; $4235: $c8

    ld bc, $00a4                                  ; $4236: $01 $a4 $00
    jp nc, Jump_0bc_6700                          ; $4239: $d2 $00 $67

    nop                                           ; $423c: $00
    inc e                                         ; $423d: $1c
    add b                                         ; $423e: $80
    ld h, $00                                     ; $423f: $26 $00
    ld sp, hl                                     ; $4241: $f9
    rlca                                          ; $4242: $07
    halt                                          ; $4243: $76
    dec bc                                        ; $4244: $0b
    inc h                                         ; $4245: $24
    dec de                                        ; $4246: $1b
    ld e, h                                       ; $4247: $5c
    nop                                           ; $4248: $00
    inc bc                                        ; $4249: $03

jr_0bc_424a:
    dec h                                         ; $424a: $25
    ld [bc], a                                    ; $424b: $02
    call c, Call_0bc_4403                         ; $424c: $dc $03 $44
    dec bc                                        ; $424f: $0b
    sub b                                         ; $4250: $90
    nop                                           ; $4251: $00
    rrca                                          ; $4252: $0f
    rlca                                          ; $4253: $07
    ld hl, sp+$4e                                 ; $4254: $f8 $4e
    ldh a, [rTAC]                                 ; $4256: $f0 $07
    ld hl, sp+$34                                 ; $4258: $f8 $34
    nop                                           ; $425a: $00
    ret z                                         ; $425b: $c8

    ld a, [hl-]                                   ; $425c: $3a
    ret nz                                        ; $425d: $c0

    ld e, [hl]                                    ; $425e: $5e
    and b                                         ; $425f: $a0
    ld e, e                                       ; $4260: $5b
    and h                                         ; $4261: $a4
    or b                                          ; $4262: $b0
    ld [bc], a                                    ; $4263: $02
    ld b, b                                       ; $4264: $40
    cp $00                                        ; $4265: $fe $00
    ld [hl], e                                    ; $4267: $73
    ld [$d22a], sp                                ; $4268: $08 $2a $d2
    ld bc, $2806                                  ; $426b: $01 $06 $28
    ld [$66be], sp                                ; $426e: $08 $be $66
    nop                                           ; $4271: $00
    add sp, -$10                                  ; $4272: $e8 $f0
    ld bc, $00da                                  ; $4274: $01 $da $00
    daa                                           ; $4277: $27
    xor b                                         ; $4278: $a8
    call nz, $8400                                ; $4279: $c4 $00 $84
    ld d, [hl]                                    ; $427c: $56
    ld [bc], a                                    ; $427d: $02
    add l                                         ; $427e: $85
    ld e, h                                       ; $427f: $5c
    ld [bc], a                                    ; $4280: $02
    ld sp, hl                                     ; $4281: $f9
    ld b, $f4                                     ; $4282: $06 $f4
    nop                                           ; $4284: $00
    dec bc                                        ; $4285: $0b
    or d                                          ; $4286: $b2
    ld c, l                                       ; $4287: $4d
    ldh [$1f], a                                  ; $4288: $e0 $1f
    add b                                         ; $428a: $80
    ld a, a                                       ; $428b: $7f
    call z, Call_000_3f02                         ; $428c: $cc $02 $3f
    inc h                                         ; $428f: $24
    rst $18                                       ; $4290: $df
    ldh [$1f], a                                  ; $4291: $e0 $1f
    inc bc                                        ; $4293: $03
    ld bc, $0700                                  ; $4294: $01 $00 $07
    db $10                                        ; $4297: $10
    rlca                                          ; $4298: $07
    ld b, $07                                     ; $4299: $06 $07
    inc b                                         ; $429b: $04
    db $10                                        ; $429c: $10
    ld b, $06                                     ; $429d: $06 $06
    rlca                                          ; $429f: $07
    ld a, [$b6f0]                                 ; $42a0: $fa $f0 $b6
    ld [bc], a                                    ; $42a3: $02
    ld b, l                                       ; $42a4: $45
    ld bc, $1004                                  ; $42a5: $01 $04 $10
    call nz, $c00a                                ; $42a8: $c4 $0a $c0
    ld b, b                                       ; $42ab: $40
    and b                                         ; $42ac: $a0
    ld h, b                                       ; $42ad: $60
    ld [$20e0], sp                                ; $42ae: $08 $e0 $20
    ldh [rNR41], a                                ; $42b1: $e0 $20
    ld b, $28                                     ; $42b3: $06 $28
    sub b                                         ; $42b5: $90
    rst $38                                       ; $42b6: $ff
    ld b, $00                                     ; $42b7: $06 $00
    rst $38                                       ; $42b9: $ff
    jp $e1be                                      ; $42ba: $c3 $be $e1


    ld e, $89                                     ; $42bd: $1e $89
    ld [bc], a                                    ; $42bf: $02
    db $e4                                        ; $42c0: $e4
    ld hl, $5200                                  ; $42c1: $21 $00 $52
    ld h, h                                       ; $42c4: $64
    ld [bc], a                                    ; $42c5: $02
    ld d, b                                       ; $42c6: $50
    add b                                         ; $42c7: $80
    jr nz, jr_0bc_424a                            ; $42c8: $20 $80

    ld l, h                                       ; $42ca: $6c
    ld a, [bc]                                    ; $42cb: $0a
    pop de                                        ; $42cc: $d1
    ld l, c                                       ; $42cd: $69
    ld a, [hl+]                                   ; $42ce: $2a
    ret nz                                        ; $42cf: $c0

    ld [$7601], sp                                ; $42d0: $08 $01 $76
    ld b, d                                       ; $42d3: $42
    rlca                                          ; $42d4: $07
    nop                                           ; $42d5: $00
    inc hl                                        ; $42d6: $23
    jp c, $1002                                   ; $42d7: $da $02 $10

    ld [bc], a                                    ; $42da: $02
    nop                                           ; $42db: $00
    ld de, $02c6                                  ; $42dc: $11 $c6 $02
    dec b                                         ; $42df: $05
    nop                                           ; $42e0: $00
    dec hl                                        ; $42e1: $2b
    nop                                           ; $42e2: $00
    nop                                           ; $42e3: $00
    ld h, a                                       ; $42e4: $67
    sbc d                                         ; $42e5: $9a
    jp Jump_0bc_557d                              ; $42e6: $c3 $7d $55


    ld a, [bc]                                    ; $42e9: $0a
    push hl                                       ; $42ea: $e5
    ld a, [bc]                                    ; $42eb: $0a
    inc b                                         ; $42ec: $04
    rst $18                                       ; $42ed: $df
    nop                                           ; $42ee: $00
    rst $18                                       ; $42ef: $df
    nop                                           ; $42f0: $00
    ld a, a                                       ; $42f1: $7f
    adc [hl]                                      ; $42f2: $8e
    ld [bc], a                                    ; $42f3: $02
    sub l                                         ; $42f4: $95
    ld a, [hl]                                    ; $42f5: $7e
    nop                                           ; $42f6: $00
    ld d, $ff                                     ; $42f7: $16 $ff
    ld h, b                                       ; $42f9: $60
    cp a                                          ; $42fa: $bf
    ld d, l                                       ; $42fb: $55
    xor a                                         ; $42fc: $af
    db $fc                                        ; $42fd: $fc
    inc bc                                        ; $42fe: $03
    nop                                           ; $42ff: $00
    rst $38                                       ; $4300: $ff
    inc bc                                        ; $4301: $03
    ld l, [hl]                                    ; $4302: $6e
    sub e                                         ; $4303: $93
    cp $0f                                        ; $4304: $fe $0f
    add b                                         ; $4306: $80
    ld a, a                                       ; $4307: $7f
    nop                                           ; $4308: $00
    adc b                                         ; $4309: $88
    rst $38                                       ; $430a: $ff
    inc bc                                        ; $430b: $03
    rst $38                                       ; $430c: $ff
    ld b, b                                       ; $430d: $40
    cp a                                          ; $430e: $bf
    db $10                                        ; $430f: $10
    rst $28                                       ; $4310: $ef
    nop                                           ; $4311: $00
    ret z                                         ; $4312: $c8

    rst $30                                       ; $4313: $f7
    ld d, h                                       ; $4314: $54
    xor e                                         ; $4315: $ab
    ld d, b                                       ; $4316: $50
    xor a                                         ; $4317: $af
    pop hl                                        ; $4318: $e1
    ld e, $8a                                     ; $4319: $1e $8a
    ld d, c                                       ; $431b: $51
    ld a, [bc]                                    ; $431c: $0a
    add b                                         ; $431d: $80
    rst $38                                       ; $431e: $ff
    inc b                                         ; $431f: $04
    cp c                                          ; $4320: $b9
    ld [bc], a                                    ; $4321: $02
    ld [$01d8], sp                                ; $4322: $08 $d8 $01
    add hl, hl                                    ; $4325: $29
    dec b                                         ; $4326: $05
    rst $10                                       ; $4327: $d7
    inc b                                         ; $4328: $04
    ei                                            ; $4329: $fb
    ld b, b                                       ; $432a: $40
    cp a                                          ; $432b: $bf
    rst $00                                       ; $432c: $c7
    ld a, [hl-]                                   ; $432d: $3a
    add hl, bc                                    ; $432e: $09
    ld l, $00                                     ; $432f: $2e $00
    inc b                                         ; $4331: $04
    add hl, bc                                    ; $4332: $09
    rst $38                                       ; $4333: $ff
    ld bc, $02ff                                  ; $4334: $01 $ff $02
    and b                                         ; $4337: $a0
    ld [bc], a                                    ; $4338: $02
    ld [$00ff], sp                                ; $4339: $08 $ff $00
    ld b, b                                       ; $433c: $40
    rst $38                                       ; $433d: $ff
    push de                                       ; $433e: $d5
    rst $38                                       ; $433f: $ff
    ld a, l                                       ; $4340: $7d
    rst $38                                       ; $4341: $ff
    sub $ff                                       ; $4342: $d6 $ff
    nop                                           ; $4344: $00
    ld [hl], l                                    ; $4345: $75
    rst $38                                       ; $4346: $ff
    ei                                            ; $4347: $fb
    rst $38                                       ; $4348: $ff
    xor l                                         ; $4349: $ad
    rst $38                                       ; $434a: $ff
    ld d, $ff                                     ; $434b: $16 $ff
    ld de, $ff19                                  ; $434d: $11 $19 $ff
    db $e4                                        ; $4350: $e4
    xor $01                                       ; $4351: $ee $01
    dec hl                                        ; $4353: $2b
    rst $18                                       ; $4354: $df
    dec d                                         ; $4355: $15
    ld c, $00                                     ; $4356: $0e $00
    nop                                           ; $4358: $00
    or l                                          ; $4359: $b5
    rst $38                                       ; $435a: $ff
    xor d                                         ; $435b: $aa
    rst $38                                       ; $435c: $ff
    jp hl                                         ; $435d: $e9


    rst $38                                       ; $435e: $ff
    ld c, d                                       ; $435f: $4a
    ldh a, [$15]                                  ; $4360: $f0 $15
    push af                                       ; $4362: $f5
    ld hl, sp+$7c                                 ; $4363: $f8 $7c
    or l                                          ; $4365: $b5
    inc bc                                        ; $4366: $03
    ld d, h                                       ; $4367: $54
    ld [hl+], a                                   ; $4368: $22
    nop                                           ; $4369: $00
    sbc $dc                                       ; $436a: $de $dc
    ld [bc], a                                    ; $436c: $02
    nop                                           ; $436d: $00
    cp a                                          ; $436e: $bf
    nop                                           ; $436f: $00
    rst $28                                       ; $4370: $ef
    db $10                                        ; $4371: $10
    rst $38                                       ; $4372: $ff
    nop                                           ; $4373: $00
    add hl, de                                    ; $4374: $19
    and $00                                       ; $4375: $e6 $00
    ld a, $c1                                     ; $4377: $3e $c1
    ld [$cbf7], sp                                ; $4379: $08 $f7 $cb
    db $fc                                        ; $437c: $fc
    db $f4                                        ; $437d: $f4
    ei                                            ; $437e: $fb
    ld b, b                                       ; $437f: $40
    db $f4                                        ; $4380: $f4
    and b                                         ; $4381: $a0
    ld bc, $00da                                  ; $4382: $01 $da $00
    halt                                          ; $4385: $76
    add b                                         ; $4386: $80
    add hl, hl                                    ; $4387: $29
    ret nc                                        ; $4388: $d0

    nop                                           ; $4389: $00
    db $fd                                        ; $438a: $fd
    nop                                           ; $438b: $00
    ccf                                           ; $438c: $3f
    ret nz                                        ; $438d: $c0

    adc h                                         ; $438e: $8c
    ldh a, [$2a]                                  ; $438f: $f0 $2a
    dec b                                         ; $4391: $05
    nop                                           ; $4392: $00
    ld h, b                                       ; $4393: $60
    rra                                           ; $4394: $1f
    sbc [hl]                                      ; $4395: $9e
    ld bc, $0196                                  ; $4396: $01 $96 $01
    ld e, [hl]                                    ; $4399: $5e
    ld bc, $f800                                  ; $439a: $01 $00 $f8
    rlca                                          ; $439d: $07
    ld c, [hl]                                    ; $439e: $4e
    ld bc, $177c                                  ; $439f: $01 $7c $17
    ld e, $e0                                     ; $43a2: $1e $e0
    nop                                           ; $43a4: $00
    cp l                                          ; $43a5: $bd
    ld b, d                                       ; $43a6: $42
    adc h                                         ; $43a7: $8c
    ld [hl], b                                    ; $43a8: $70
    add $b0                                       ; $43a9: $c6 $b0
    add b                                         ; $43ab: $80
    ld a, h                                       ; $43ac: $7c
    ld bc, $f00e                                  ; $43ad: $01 $0e $f0
    adc h                                         ; $43b0: $8c
    ld [hl], b                                    ; $43b1: $70
    sbc d                                         ; $43b2: $9a
    ldh [rLCDC], a                                ; $43b3: $e0 $40
    xor b                                         ; $43b5: $a8
    inc bc                                        ; $43b6: $03
    ld d, b                                       ; $43b7: $50
    add e                                         ; $43b8: $83
    xor h                                         ; $43b9: $ac
    inc bc                                        ; $43ba: $03
    inc bc                                        ; $43bb: $03
    ld h, d                                       ; $43bc: $62
    ld bc, $0007                                  ; $43bd: $01 $07 $00
    ld c, b                                       ; $43c0: $48
    nop                                           ; $43c1: $00
    nop                                           ; $43c2: $00
    ld [de], a                                    ; $43c3: $12
    dec b                                         ; $43c4: $05
    ld [hl-], a                                   ; $43c5: $32
    dec c                                         ; $43c6: $0d
    inc hl                                        ; $43c7: $23
    rra                                           ; $43c8: $1f
    inc hl                                        ; $43c9: $23

jr_0bc_43ca:
    dec e                                         ; $43ca: $1d
    nop                                           ; $43cb: $00
    ld b, l                                       ; $43cc: $45
    dec sp                                        ; $43cd: $3b
    ldh a, [rIF]                                  ; $43ce: $f0 $0f
    ld l, b                                       ; $43d0: $68
    rla                                           ; $43d1: $17
    ldh [$1f], a                                  ; $43d2: $e0 $1f
    nop                                           ; $43d4: $00
    rst $00                                       ; $43d5: $c7
    ccf                                           ; $43d6: $3f
    cp d                                          ; $43d7: $ba
    db $dd                                        ; $43d8: $dd
    jr c, jr_0bc_43ca                             ; $43d9: $38 $ef

    ld a, b                                       ; $43db: $78
    rst $18                                       ; $43dc: $df
    nop                                           ; $43dd: $00
    ld h, b                                       ; $43de: $60
    rst $38                                       ; $43df: $ff
    dec bc                                        ; $43e0: $0b
    db $f4                                        ; $43e1: $f4
    inc e                                         ; $43e2: $1c
    db $e3                                        ; $43e3: $e3
    rst $38                                       ; $43e4: $ff
    add b                                         ; $43e5: $80
    add b                                         ; $43e6: $80
    ld l, d                                       ; $43e7: $6a
    add hl, bc                                    ; $43e8: $09
    rrca                                          ; $43e9: $0f
    rrca                                          ; $43ea: $0f
    rra                                           ; $43eb: $1f
    rra                                           ; $43ec: $1f
    jr jr_0bc_440e                                ; $43ed: $18 $1f

    ld [hl], $00                                  ; $43ef: $36 $00
    add hl, sp                                    ; $43f1: $39
    ld [hl], $39                                  ; $43f2: $36 $39
    ld [hl], b                                    ; $43f4: $70
    ld a, a                                       ; $43f5: $7f
    rst $38                                       ; $43f6: $ff
    ld a, a                                       ; $43f7: $7f
    ld a, a                                       ; $43f8: $7f
    nop                                           ; $43f9: $00
    cp a                                          ; $43fa: $bf
    cp a                                          ; $43fb: $bf
    rst $18                                       ; $43fc: $df
    set 6, a                                      ; $43fd: $cb $f7
    ld [c], a                                     ; $43ff: $e2
    db $fd                                        ; $4400: $fd
    ld a, b                                       ; $4401: $78
    add d                                         ; $4402: $82

Call_0bc_4403:
    ld [$1f53], sp                                ; $4403: $08 $53 $1f
    rst $38                                       ; $4406: $ff
    ld e, a                                       ; $4407: $5f
    and b                                         ; $4408: $a0

Call_0bc_4409:
    add b                                         ; $4409: $80
    ld e, l                                       ; $440a: $5d
    ld b, h                                       ; $440b: $44
    ld hl, sp-$40                                 ; $440c: $f8 $c0

jr_0bc_440e:
    dec bc                                        ; $440e: $0b
    dec bc                                        ; $440f: $0b
    ld d, a                                       ; $4410: $57
    inc e                                         ; $4411: $1c
    db $fc                                        ; $4412: $fc
    or $f9                                        ; $4413: $f6 $f9
    sbc l                                         ; $4415: $9d
    db $e3                                        ; $4416: $e3
    ld [hl], e                                    ; $4417: $73
    nop                                           ; $4418: $00
    adc a                                         ; $4419: $8f
    adc [hl]                                      ; $441a: $8e
    ld a, a                                       ; $441b: $7f
    db $fd                                        ; $441c: $fd
    cp $f2                                        ; $441d: $fe $f2
    db $fd                                        ; $441f: $fd
    and b                                         ; $4420: $a0
    nop                                           ; $4421: $00
    ld h, b                                       ; $4422: $60
    ld h, b                                       ; $4423: $60
    ldh [$f0], a                                  ; $4424: $e0 $f0
    ldh a, [$f8]                                  ; $4426: $f0 $f8
    ld hl, sp+$78                                 ; $4428: $f8 $78
    nop                                           ; $442a: $00
    ld hl, sp-$44                                 ; $442b: $f8 $bc
    ld a, h                                       ; $442d: $7c
    ld e, h                                       ; $442e: $5c
    cp h                                          ; $442f: $bc
    sbc $3e                                       ; $4430: $de $3e
    nop                                           ; $4432: $00
    jr z, jr_0bc_4435                             ; $4433: $28 $00

jr_0bc_4435:
    ret nc                                        ; $4435: $d0

    cp $13                                        ; $4436: $fe $13
    nop                                           ; $4438: $00
    ld d, d                                       ; $4439: $52
    inc b                                         ; $443a: $04
    ld d, h                                       ; $443b: $54
    nop                                           ; $443c: $00
    ld [$4ea0], a                                 ; $443d: $ea $a0 $4e
    ld [de], a                                    ; $4440: $12
    ld b, c                                       ; $4441: $41
    add [hl]                                      ; $4442: $86
    ld bc, $000e                                  ; $4443: $01 $0e $00
    ld de, $b10e                                  ; $4446: $11 $0e $b1
    inc bc                                        ; $4449: $03
    ld c, $3c                                     ; $444a: $0e $3c
    inc bc                                        ; $444c: $03
    ld d, a                                       ; $444d: $57
    nop                                           ; $444e: $00
    xor a                                         ; $444f: $af

Call_0bc_4450:
    xor $03                                       ; $4450: $ee $03
    ld b, c                                       ; $4452: $41
    add hl, bc                                    ; $4453: $09
    nop                                           ; $4454: $00
    ld h, [hl]                                    ; $4455: $66
    sbc b                                         ; $4456: $98
    rst $30                                       ; $4457: $f7
    ld [$be41], sp                                ; $4458: $08 $41 $be
    db $fd                                        ; $445b: $fd
    ld [bc], a                                    ; $445c: $02
    ld [$00ff], sp                                ; $445d: $08 $ff $00
    db $eb                                        ; $4460: $eb
    inc d                                         ; $4461: $14
    ld d, $2c                                     ; $4462: $16 $2c
    db $fc                                        ; $4464: $fc
    inc bc                                        ; $4465: $03
    ld a, [$0500]                                 ; $4466: $fa $00 $05
    pop hl                                        ; $4469: $e1
    ld e, $f6                                     ; $446a: $1e $f6
    add hl, bc                                    ; $446c: $09
    db $ec                                        ; $446d: $ec
    inc de                                        ; $446e: $13
    cp b                                          ; $446f: $b8
    nop                                           ; $4470: $00
    ld b, a                                       ; $4471: $47
    db $f4                                        ; $4472: $f4
    dec bc                                        ; $4473: $0b
    ret nz                                        ; $4474: $c0

    ccf                                           ; $4475: $3f
    sub b                                         ; $4476: $90
    ld l, a                                       ; $4477: $6f
    inc b                                         ; $4478: $04
    ld [bc], a                                    ; $4479: $02
    ei                                            ; $447a: $fb
    ld [hl+], a                                   ; $447b: $22
    db $dd                                        ; $447c: $dd
    ret nz                                        ; $447d: $c0

    ccf                                           ; $447e: $3f
    db $10                                        ; $447f: $10
    db $dd                                        ; $4480: $dd
    inc bc                                        ; $4481: $03
    ld d, b                                       ; $4482: $50
    ld l, b                                       ; $4483: $68
    xor a                                         ; $4484: $af
    dec a                                         ; $4485: $3d
    ld [hl], h                                    ; $4486: $74
    ld c, l                                       ; $4487: $4d
    inc d                                         ; $4488: $14
    ld bc, $5453                                  ; $4489: $01 $53 $54
    db $10                                        ; $448c: $10
    rst $38                                       ; $448d: $ff
    ld hl, $638f                                  ; $448e: $21 $8f $63
    ld d, h                                       ; $4491: $54
    ld d, a                                       ; $4492: $57
    rst $38                                       ; $4493: $ff
    ld [de], a                                    ; $4494: $12
    cp b                                          ; $4495: $b8
    ld bc, $0826                                  ; $4496: $01 $26 $08
    add hl, de                                    ; $4499: $19
    inc d                                         ; $449a: $14
    ld a, h                                       ; $449b: $7c
    inc bc                                        ; $449c: $03
    dec e                                         ; $449d: $1d
    ld c, c                                       ; $449e: $49
    rst $38                                       ; $449f: $ff
    dec h                                         ; $44a0: $25
    or b                                          ; $44a1: $b0
    ld bc, $09d0                                  ; $44a2: $01 $d0 $09
    adc l                                         ; $44a5: $8d
    inc c                                         ; $44a6: $0c
    or c                                          ; $44a7: $b1
    or d                                          ; $44a8: $b2
    inc bc                                        ; $44a9: $03
    ld b, b                                       ; $44aa: $40
    rst $18                                       ; $44ab: $df
    jr z, jr_0bc_44b3                             ; $44ac: $28 $05

    ld b, c                                       ; $44ae: $41
    rst $38                                       ; $44af: $ff
    jr z, @+$01                                   ; $44b0: $28 $ff

    dec b                                         ; $44b2: $05

jr_0bc_44b3:
    rst $38                                       ; $44b3: $ff
    nop                                           ; $44b4: $00
    sub b                                         ; $44b5: $90
    rst $38                                       ; $44b6: $ff
    ld [hl], d                                    ; $44b7: $72
    db $fd                                        ; $44b8: $fd
    sbc b                                         ; $44b9: $98
    rst $38                                       ; $44ba: $ff
    rst $38                                       ; $44bb: $ff
    db $fd                                        ; $44bc: $fd
    nop                                           ; $44bd: $00
    db $ec                                        ; $44be: $ec
    rst $38                                       ; $44bf: $ff
    sbc a                                         ; $44c0: $9f
    db $fd                                        ; $44c1: $fd
    ld l, b                                       ; $44c2: $68
    rst $38                                       ; $44c3: $ff
    ld e, $ff                                     ; $44c4: $1e $ff
    nop                                           ; $44c6: $00
    dec sp                                        ; $44c7: $3b
    rst $38                                       ; $44c8: $ff
    rrca                                          ; $44c9: $0f
    ldh a, [$6c]                                  ; $44ca: $f0 $6c
    pop de                                        ; $44cc: $d1
    rlca                                          ; $44cd: $07
    ld hl, sp+$00                                 ; $44ce: $f8 $00
    ld bc, $39fa                                  ; $44d0: $01 $fa $39
    sbc $bc                                       ; $44d3: $de $bc
    ei                                            ; $44d5: $fb
    ld sp, hl                                     ; $44d6: $f9
    cp $00                                        ; $44d7: $fe $00
    cp $ff                                        ; $44d9: $fe $ff
    di                                            ; $44db: $f3
    dec c                                         ; $44dc: $0d
    ld h, a                                       ; $44dd: $67
    dec e                                         ; $44de: $1d

jr_0bc_44df:
    ld a, [$0005]                                 ; $44df: $fa $05 $00
    or b                                          ; $44e2: $b0
    rra                                           ; $44e3: $1f
    ld a, d                                       ; $44e4: $7a
    add l                                         ; $44e5: $85
    add l                                         ; $44e6: $85
    ld a, d                                       ; $44e7: $7a
    ld h, d                                       ; $44e8: $62
    sbc l                                         ; $44e9: $9d
    nop                                           ; $44ea: $00
    xor l                                         ; $44eb: $ad
    ld d, d                                       ; $44ec: $52
    push bc                                       ; $44ed: $c5
    ld a, b                                       ; $44ee: $78
    sbc d                                         ; $44ef: $9a
    ldh [$2e], a                                  ; $44f0: $e0 $2e
    pop af                                        ; $44f2: $f1
    nop                                           ; $44f3: $00
    inc bc                                        ; $44f4: $03
    db $fc                                        ; $44f5: $fc
    jr jr_0bc_44df                                ; $44f6: $18 $e7

    ld [hl+], a                                   ; $44f8: $22
    db $dd                                        ; $44f9: $dd
    add b                                         ; $44fa: $80
    ld a, a                                       ; $44fb: $7f
    nop                                           ; $44fc: $00
    dec hl                                        ; $44fd: $2b
    sbc $35                                       ; $44fe: $de $35
    nop                                           ; $4500: $00
    db $ed                                        ; $4501: $ed
    nop                                           ; $4502: $00
    or h                                          ; $4503: $b4
    ld b, c                                       ; $4504: $41
    nop                                           ; $4505: $00
    adc a                                         ; $4506: $8f
    ld [hl], b                                    ; $4507: $70
    ld d, a                                       ; $4508: $57
    xor b                                         ; $4509: $a8
    daa                                           ; $450a: $27
    rst $18                                       ; $450b: $df
    sbc d                                         ; $450c: $9a
    ld a, a                                       ; $450d: $7f
    nop                                           ; $450e: $00
    dec b                                         ; $450f: $05
    rst $38                                       ; $4510: $ff
    ret nc                                        ; $4511: $d0

    cpl                                           ; $4512: $2f
    and c                                         ; $4513: $a1
    ld e, [hl]                                    ; $4514: $5e
    inc b                                         ; $4515: $04
    ei                                            ; $4516: $fb
    nop                                           ; $4517: $00
    swap h                                        ; $4518: $cb $34
    add b                                         ; $451a: $80
    ld a, a                                       ; $451b: $7f
    jp z, $84f5                                   ; $451c: $ca $f5 $84

    ei                                            ; $451f: $fb
    nop                                           ; $4520: $00
    pop bc                                        ; $4521: $c1
    cp $ff                                        ; $4522: $fe $ff
    nop                                           ; $4524: $00
    ld a, [$fe05]                                 ; $4525: $fa $05 $fe
    ld bc, $9f08                                  ; $4528: $01 $08 $9f
    ld h, b                                       ; $452b: $60
    ei                                            ; $452c: $fb
    inc b                                         ; $452d: $04
    ld hl, sp+$09                                 ; $452e: $f8 $09
    cp a                                          ; $4530: $bf
    ld b, b                                       ; $4531: $40
    ld a, c                                       ; $4532: $79
    ld [bc], a                                    ; $4533: $02
    ld a, a                                       ; $4534: $7f
    ld a, a                                       ; $4535: $7f
    ld a, a                                       ; $4536: $7f
    ld [hl], a                                    ; $4537: $77
    ld a, a                                       ; $4538: $7f
    ld a, e                                       ; $4539: $7b
    inc b                                         ; $453a: $04
    nop                                           ; $453b: $00
    ld l, e                                       ; $453c: $6b
    ld a, b                                       ; $453d: $78
    ld [hl], a                                    ; $453e: $77
    ld [bc], a                                    ; $453f: $02
    ld [$1afa], sp                                ; $4540: $08 $fa $1a
    cp h                                          ; $4543: $bc
    dec c                                         ; $4544: $0d
    ld b, $1b                                     ; $4545: $06 $1b
    dec d                                         ; $4547: $15
    ld [$10af], a                                 ; $4548: $ea $af $10
    ld d, b                                       ; $454b: $50
    ld a, a                                       ; $454c: $7f
    add b                                         ; $454d: $80
    inc b                                         ; $454e: $04
    ld [$d5aa], sp                                ; $454f: $08 $aa $d5
    ld b, c                                       ; $4552: $41
    cp $02                                        ; $4553: $fe $02
    xor e                                         ; $4555: $ab
    db $fc                                        ; $4556: $fc
    cp $3e                                        ; $4557: $fe $3e
    xor [hl]                                      ; $4559: $ae
    ld a, [hl]                                    ; $455a: $7e
    inc b                                         ; $455b: $04
    ld [$005e], sp                                ; $455c: $08 $5e $00
    cp $ae                                        ; $455f: $fe $ae
    ld a, [hl]                                    ; $4561: $7e
    ld e, $fe                                     ; $4562: $1e $fe
    cp [hl]                                       ; $4564: $be
    ld a, [hl]                                    ; $4565: $7e
    sub l                                         ; $4566: $95
    nop                                           ; $4567: $00
    ld h, b                                       ; $4568: $60
    ld a, $00                                     ; $4569: $3e $00
    ldh a, [rTAC]                                 ; $456b: $f0 $07
    ld e, [hl]                                    ; $456d: $5e
    ld hl, $006c                                  ; $456e: $21 $6c $00
    rla                                           ; $4571: $17
    sbc e                                         ; $4572: $9b
    inc a                                         ; $4573: $3c
    and h                                         ; $4574: $a4
    ld a, a                                       ; $4575: $7f
    rst $18                                       ; $4576: $df
    jr z, jr_0bc_4599                             ; $4577: $28 $20

    and b                                         ; $4579: $a0
    ld a, b                                       ; $457a: $78
    dec b                                         ; $457b: $05
    ld b, c                                       ; $457c: $41
    adc $05                                       ; $457d: $ce $05
    pop bc                                        ; $457f: $c1
    nop                                           ; $4580: $00
    ld [$e500], sp                                ; $4581: $08 $00 $e5
    nop                                           ; $4584: $00
    nop                                           ; $4585: $00
    ld a, [hl+]                                   ; $4586: $2a
    ld b, b                                       ; $4587: $40
    ld e, [hl]                                    ; $4588: $5e
    ld bc, $0b34                                  ; $4589: $01 $34 $0b
    halt                                          ; $458c: $76
    nop                                           ; $458d: $00
    add hl, bc                                    ; $458e: $09
    ld a, $13                                     ; $458f: $3e $13
    ld a, e                                       ; $4591: $7b
    ld bc, $0eb1                                  ; $4592: $01 $b1 $0e
    ld e, c                                       ; $4595: $59
    nop                                           ; $4596: $00
    ld [bc], a                                    ; $4597: $02
    and a                                         ; $4598: $a7

jr_0bc_4599:
    nop                                           ; $4599: $00
    xor e                                         ; $459a: $ab
    ld d, h                                       ; $459b: $54
    sub h                                         ; $459c: $94
    ld l, e                                       ; $459d: $6b

jr_0bc_459e:
    ld c, c                                       ; $459e: $49
    nop                                           ; $459f: $00
    or [hl]                                       ; $45a0: $b6
    inc d                                         ; $45a1: $14
    db $eb                                        ; $45a2: $eb
    jr c, @-$37                                   ; $45a3: $38 $c7

    jp z, $8fb7                                   ; $45a5: $ca $b7 $8f

    jr nz, @+$81                                  ; $45a8: $20 $7f

jr_0bc_45aa:
    ld a, a                                       ; $45aa: $7f
    ld d, b                                       ; $45ab: $50
    inc b                                         ; $45ac: $04
    call c, $fa23                                 ; $45ad: $dc $23 $fa
    dec b                                         ; $45b0: $05
    ldh [rP1], a                                  ; $45b1: $e0 $00
    rra                                           ; $45b3: $1f
    xor b                                         ; $45b4: $a8
    ld d, a                                       ; $45b5: $57
    and h                                         ; $45b6: $a4
    db $db                                        ; $45b7: $db
    ret nc                                        ; $45b8: $d0

    rst $28                                       ; $45b9: $ef
    jp z, $f503                                   ; $45ba: $ca $03 $f5

    jr nz, jr_0bc_459e                            ; $45bd: $20 $df

    add b                                         ; $45bf: $80
    ld a, a                                       ; $45c0: $7f
    add b                                         ; $45c1: $80
    add hl, de                                    ; $45c2: $19
    inc bc                                        ; $45c3: $03
    inc b                                         ; $45c4: $04
    ld [$c000], sp                                ; $45c5: $08 $00 $c0
    ccf                                           ; $45c8: $3f
    jr nz, jr_0bc_45aa                            ; $45c9: $20 $df

    xor [hl]                                      ; $45cb: $ae
    rst $38                                       ; $45cc: $ff
    scf                                           ; $45cd: $37
    rst $38                                       ; $45ce: $ff
    ld e, l                                       ; $45cf: $5d
    dec bc                                        ; $45d0: $0b
    ld [hl-], a                                   ; $45d1: $32
    ld bc, $0641                                  ; $45d2: $01 $41 $06
    nop                                           ; $45d5: $00
    inc b                                         ; $45d6: $04
    dec bc                                        ; $45d7: $0b
    ld [hl], b                                    ; $45d8: $70
    ld c, [hl]                                    ; $45d9: $4e
    ld a, a                                       ; $45da: $7f
    ld b, d                                       ; $45db: $42
    dec b                                         ; $45dc: $05
    nop                                           ; $45dd: $00
    xor [hl]                                      ; $45de: $ae
    ld d, c                                       ; $45df: $51
    ld h, [hl]                                    ; $45e0: $66
    sbc c                                         ; $45e1: $99
    add hl, de                                    ; $45e2: $19
    and $8e                                       ; $45e3: $e6 $8e
    ldh a, [rP1]                                  ; $45e5: $f0 $00
    adc l                                         ; $45e7: $8d
    ldh a, [$8b]                                  ; $45e8: $f0 $8b
    ldh a, [$fe]                                  ; $45ea: $f0 $fe
    ldh [$87], a                                  ; $45ec: $e0 $87
    ld hl, sp+$00                                 ; $45ee: $f8 $00
    call nz, $dd3f                                ; $45f0: $c4 $3f $dd
    inc bc                                        ; $45f3: $03
    push af                                       ; $45f4: $f5
    rrca                                          ; $45f5: $0f
    and h                                         ; $45f6: $a4
    dec bc                                        ; $45f7: $0b
    nop                                           ; $45f8: $00
    ld [hl], c                                    ; $45f9: $71
    rrca                                          ; $45fa: $0f
    cp c                                          ; $45fb: $b9
    rlca                                          ; $45fc: $07
    rst $18                                       ; $45fd: $df
    nop                                           ; $45fe: $00
    db $ed                                        ; $45ff: $ed
    inc bc                                        ; $4600: $03
    db $10                                        ; $4601: $10
    dec sp                                        ; $4602: $3b
    rst $38                                       ; $4603: $ff
    ldh a, [rNR34]                                ; $4604: $f0 $1e
    dec c                                         ; $4606: $0d
    push af                                       ; $4607: $f5
    ld l, e                                       ; $4608: $6b
    rst $30                                       ; $4609: $f7
    rla                                           ; $460a: $17
    nop                                           ; $460b: $00
    jp hl                                         ; $460c: $e9


    xor [hl]                                      ; $460d: $ae
    di                                            ; $460e: $f3
    or [hl]                                       ; $460f: $b6
    ld c, a                                       ; $4610: $4f
    add hl, bc                                    ; $4611: $09
    or $04                                        ; $4612: $f6 $04
    nop                                           ; $4614: $00
    ei                                            ; $4615: $fb
    ld de, $8eef                                  ; $4616: $11 $ef $8e
    rst $38                                       ; $4619: $ff
    ld b, e                                       ; $461a: $43
    rst $38                                       ; $461b: $ff
    pop bc                                        ; $461c: $c1
    sub b                                         ; $461d: $90
    ld [bc], a                                    ; $461e: $02
    nop                                           ; $461f: $00
    ld h, $db                                     ; $4620: $26 $db
    ld l, l                                       ; $4622: $6d
    nop                                           ; $4623: $00
    add b                                         ; $4624: $80
    sub e                                         ; $4625: $93
    rst $28                                       ; $4626: $ef
    rrca                                          ; $4627: $0f
    jr z, @+$01                                   ; $4628: $28 $ff

    rrca                                          ; $462a: $0f
    and h                                         ; $462b: $a4
    ld b, $de                                     ; $462c: $06 $de
    ld [hl], b                                    ; $462e: $70
    ld bc, $7f63                                  ; $462f: $01 $63 $7f
    ld [hl], e                                    ; $4632: $73
    nop                                           ; $4633: $00
    ld a, a                                       ; $4634: $7f
    ld sp, $353f                                  ; $4635: $31 $3f $35
    dec sp                                        ; $4638: $3b
    dec a                                         ; $4639: $3d
    dec sp                                        ; $463a: $3b
    jr @+$11                                      ; $463b: $18 $0f

    rra                                           ; $463d: $1f
    dec e                                         ; $463e: $1d
    rra                                           ; $463f: $1f
    ld c, $9e                                     ; $4640: $0e $9e
    dec b                                         ; $4642: $05
    ld a, [bc]                                    ; $4643: $0a
    inc e                                         ; $4644: $1c
    add sp, $2e                                   ; $4645: $e8 $2e
    inc b                                         ; $4647: $04
    add hl, bc                                    ; $4648: $09
    nop                                           ; $4649: $00
    ld d, l                                       ; $464a: $55
    ld a, [$fdf2]                                 ; $464b: $fa $f2 $fd
    db $fd                                        ; $464e: $fd

jr_0bc_464f:
    ld a, [$ffe8]                                 ; $464f: $fa $e8 $ff
    ld h, h                                       ; $4652: $64
    push af                                       ; $4653: $f5
    ldh [rTMA], a                                 ; $4654: $e0 $06
    inc b                                         ; $4656: $04
    add hl, bc                                    ; $4657: $09
    ld e, h                                       ; $4658: $5c
    cp h                                          ; $4659: $bc
    ld a, h                                       ; $465a: $7c
    ld [bc], a                                    ; $465b: $02
    db $fc                                        ; $465c: $fc
    cp b                                          ; $465d: $b8
    add b                                         ; $465e: $80
    add h                                         ; $465f: $84
    ld [bc], a                                    ; $4660: $02
    ldh a, [$f0]                                  ; $4661: $f0 $f0
    inc hl                                        ; $4663: $23
    db $fc                                        ; $4664: $fc
    ld c, a                                       ; $4665: $4f
    or $4b                                        ; $4666: $f6 $4b
    add b                                         ; $4668: $80
    db $ec                                        ; $4669: $ec
    ld b, $40                                     ; $466a: $06 $40
    rst $38                                       ; $466c: $ff
    sbc a                                         ; $466d: $9f
    ldh [$3d], a                                  ; $466e: $e0 $3d
    jp nz, $023f                                  ; $4670: $c2 $3f $02

    ret nz                                        ; $4673: $c0

    dec d                                         ; $4674: $15
    ld l, b                                       ; $4675: $68
    rla                                           ; $4676: $17
    jr z, @+$01                                   ; $4677: $28 $ff

    cp [hl]                                       ; $4679: $be
    inc bc                                        ; $467a: $03
    ld a, e                                       ; $467b: $7b
    nop                                           ; $467c: $00
    cp $ca                                        ; $467d: $fe $ca
    ccf                                           ; $467f: $3f
    and l                                         ; $4680: $a5
    ld a, a                                       ; $4681: $7f
    ld h, e                                       ; $4682: $63
    cp a                                          ; $4683: $bf
    ld a, a                                       ; $4684: $7f
    nop                                           ; $4685: $00
    ld [$03fc], sp                                ; $4686: $08 $fc $03
    di                                            ; $4689: $f3
    ld c, h                                       ; $468a: $4c
    rst $38                                       ; $468b: $ff
    ld bc, $00d1                                  ; $468c: $01 $d1 $00
    cpl                                           ; $468f: $2f
    cp a                                          ; $4690: $bf
    ld a, l                                       ; $4691: $7d
    adc a                                         ; $4692: $8f
    ld a, [hl]                                    ; $4693: $7e
    db $f4                                        ; $4694: $f4
    ld a, a                                       ; $4695: $7f
    rst $18                                       ; $4696: $df
    dec c                                         ; $4697: $0d
    ld a, a                                       ; $4698: $7f
    ld l, a                                       ; $4699: $6f
    rst $38                                       ; $469a: $ff
    cp a                                          ; $469b: $bf
    ld bc, $0826                                  ; $469c: $01 $26 $08
    ld c, $f0                                     ; $469f: $0e $f0
    ld [hl], b                                    ; $46a1: $70
    ld b, $60                                     ; $46a2: $06 $60
    db $fc                                        ; $46a4: $fc
    ld [bc], a                                    ; $46a5: $02
    nop                                           ; $46a6: $00
    ret                                           ; $46a7: $c9


    dec c                                         ; $46a8: $0d
    db $fc                                        ; $46a9: $fc
    rst $38                                       ; $46aa: $ff
    ld d, c                                       ; $46ab: $51
    cp $88                                        ; $46ac: $fe $88
    db $10                                        ; $46ae: $10
    ld [hl], a                                    ; $46af: $77
    db $10                                        ; $46b0: $10
    rst $28                                       ; $46b1: $ef
    ld c, $0c                                     ; $46b2: $0e $0c
    and b                                         ; $46b4: $a0
    ld e, a                                       ; $46b5: $5f
    ld b, b                                       ; $46b6: $40
    cp a                                          ; $46b7: $bf
    dec c                                         ; $46b8: $0d
    ld d, b                                       ; $46b9: $50
    xor a                                         ; $46ba: $af
    sub e                                         ; $46bb: $93
    ld l, h                                       ; $46bc: $6c
    pop bc                                        ; $46bd: $c1
    ld c, [hl]                                    ; $46be: $4e
    inc d                                         ; $46bf: $14
    ld [$d12b], sp                                ; $46c0: $08 $2b $d1
    ld b, $45                                     ; $46c3: $06 $45
    jr nz, jr_0bc_464f                            ; $46c5: $20 $88

    ld [hl-], a                                   ; $46c7: $32
    ld [$66ff], sp                                ; $46c8: $08 $ff $66
    ld a, $04                                     ; $46cb: $3e $04
    dec d                                         ; $46cd: $15
    ld c, d                                       ; $46ce: $4a
    ld [bc], a                                    ; $46cf: $02
    ld d, c                                       ; $46d0: $51
    ld b, $4e                                     ; $46d1: $06 $4e
    ld [bc], a                                    ; $46d3: $02
    ld [de], a                                    ; $46d4: $12
    ld c, d                                       ; $46d5: $4a
    inc b                                         ; $46d6: $04
    ei                                            ; $46d7: $fb
    db $fc                                        ; $46d8: $fc
    inc de                                        ; $46d9: $13
    inc d                                         ; $46da: $14
    ld b, $44                                     ; $46db: $06 $44
    sbc a                                         ; $46dd: $9f
    ld h, $06                                     ; $46de: $26 $06
    call c, $dcfb                                 ; $46e0: $dc $fb $dc
    xor l                                         ; $46e3: $ad
    rlca                                          ; $46e4: $07
    ei                                            ; $46e5: $fb
    inc b                                         ; $46e6: $04
    nop                                           ; $46e7: $00
    jr nc, jr_0bc_4739                            ; $46e8: $30 $4f

    db $fc                                        ; $46ea: $fc
    rlca                                          ; $46eb: $07
    rst $28                                       ; $46ec: $ef
    ld a, [de]                                    ; $46ed: $1a
    or e                                          ; $46ee: $b3
    xor $00                                       ; $46ef: $ee $00
    cp $f1                                        ; $46f1: $fe $f1
    ccf                                           ; $46f3: $3f
    db $ec                                        ; $46f4: $ec
    rst $28                                       ; $46f5: $ef
    ld hl, sp-$7f                                 ; $46f6: $f8 $81
    ld a, a                                       ; $46f8: $7f
    nop                                           ; $46f9: $00
    cp d                                          ; $46fa: $ba
    ld c, a                                       ; $46fb: $4f
    ld hl, sp-$71                                 ; $46fc: $f8 $8f
    push af                                       ; $46fe: $f5
    rrca                                          ; $46ff: $0f
    add sp, $1f                                   ; $4700: $e8 $1f
    nop                                           ; $4702: $00
    cp $03                                        ; $4703: $fe $03
    ld b, d                                       ; $4705: $42
    cp l                                          ; $4706: $bd
    rst $20                                       ; $4707: $e7
    add hl, de                                    ; $4708: $19
    ld bc, $01ff                                  ; $4709: $01 $ff $01
    ld [hl+], a                                   ; $470c: $22
    rst $38                                       ; $470d: $ff
    and e                                         ; $470e: $a3
    rst $38                                       ; $470f: $ff
    ccf                                           ; $4710: $3f
    rst $38                                       ; $4711: $ff
    adc e                                         ; $4712: $8b
    halt                                          ; $4713: $76
    ld bc, $0f10                                  ; $4714: $01 $10 $0f
    rst $38                                       ; $4717: $ff
    inc de                                        ; $4718: $13
    inc c                                         ; $4719: $0c
    dec [hl]                                      ; $471a: $35
    rst $08                                       ; $471b: $cf
    rst $38                                       ; $471c: $ff
    rst $38                                       ; $471d: $ff
    ld b, b                                       ; $471e: $40
    dec bc                                        ; $471f: $0b
    ld d, h                                       ; $4720: $54
    xor e                                         ; $4721: $ab
    ld hl, $85df                                  ; $4722: $21 $df $85
    dec bc                                        ; $4725: $0b
    ld e, a                                       ; $4726: $5f
    push af                                       ; $4727: $f5
    ld b, a                                       ; $4728: $47
    sub l                                         ; $4729: $95
    dec bc                                        ; $472a: $0b
    pop bc                                        ; $472b: $c1
    inc [hl]                                      ; $472c: $34
    dec c                                         ; $472d: $0d
    or c                                          ; $472e: $b1
    ld a, $ff                                     ; $472f: $3e $ff
    nop                                           ; $4731: $00
    or a                                          ; $4732: $b7
    nop                                           ; $4733: $00
    db $fd                                        ; $4734: $fd
    ld c, $07                                     ; $4735: $0e $07
    nop                                           ; $4737: $00
    ld h, h                                       ; $4738: $64

jr_0bc_4739:
    sbc e                                         ; $4739: $9b
    ld a, [bc]                                    ; $473a: $0a
    push af                                       ; $473b: $f5
    ld [bc], a                                    ; $473c: $02
    rst $38                                       ; $473d: $ff
    rst $20                                       ; $473e: $e7
    ccf                                           ; $473f: $3f
    db $10                                        ; $4740: $10
    rrca                                          ; $4741: $0f
    ei                                            ; $4742: $fb
    scf                                           ; $4743: $37
    ld [$2106], a                                 ; $4744: $ea $06 $21
    cp $a0                                        ; $4747: $fe $a0
    rst $38                                       ; $4749: $ff
    rlca                                          ; $474a: $07
    rla                                           ; $474b: $17
    add sp, -$01                                  ; $474c: $e8 $ff
    add b                                         ; $474e: $80
    cp [hl]                                       ; $474f: $be
    or [hl]                                       ; $4750: $b6
    inc bc                                        ; $4751: $03
    ld h, h                                       ; $4752: $64
    dec b                                         ; $4753: $05
    jp z, $0102                                   ; $4754: $ca $02 $01

    ld a, [hl]                                    ; $4757: $7e
    rst $38                                       ; $4758: $ff
    rst $38                                       ; $4759: $ff
    ld e, [hl]                                    ; $475a: $5e
    ld a, a                                       ; $475b: $7f
    rst $08                                       ; $475c: $cf
    ld a, $ee                                     ; $475d: $3e $ee
    ld b, $00                                     ; $475f: $06 $00
    ld [hl], l                                    ; $4761: $75
    ld a, [$d728]                                 ; $4762: $fa $28 $d7
    pop de                                        ; $4765: $d1
    ld l, $aa                                     ; $4766: $2e $aa
    ld d, l                                       ; $4768: $55
    nop                                           ; $4769: $00
    ld de, $22ee                                  ; $476a: $11 $ee $22
    db $dd                                        ; $476d: $dd
    ld b, e                                       ; $476e: $43
    cp h                                          ; $476f: $bc
    adc a                                         ; $4770: $8f
    ld [hl], b                                    ; $4771: $70
    ld bc, $a05f                                  ; $4772: $01 $5f $a0
    cp a                                          ; $4775: $bf
    ld b, b                                       ; $4776: $40
    ld a, l                                       ; $4777: $7d
    add b                                         ; $4778: $80
    cp $0e                                        ; $4779: $fe $0e
    ld b, $08                                     ; $477b: $06 $08
    ld hl, sp+$00                                 ; $477d: $f8 $00
    ld h, a                                       ; $477f: $67
    sbc b                                         ; $4780: $98
    ld d, d                                       ; $4781: $52
    rrca                                          ; $4782: $0f
    rst $28                                       ; $4783: $ef
    nop                                           ; $4784: $00
    ld a, e                                       ; $4785: $7b
    add h                                         ; $4786: $84
    cp b                                          ; $4787: $b8
    inc bc                                        ; $4788: $03
    rra                                           ; $4789: $1f
    nop                                           ; $478a: $00
    cpl                                           ; $478b: $2f
    nop                                           ; $478c: $00
    ld e, $0a                                     ; $478d: $1e $0a
    ld b, b                                       ; $478f: $40
    cp a                                          ; $4790: $bf
    nop                                           ; $4791: $00
    ret nz                                        ; $4792: $c0

    ccf                                           ; $4793: $3f
    and b                                         ; $4794: $a0
    ld e, a                                       ; $4795: $5f
    sub b                                         ; $4796: $90
    ld l, a                                       ; $4797: $6f
    and b                                         ; $4798: $a0
    ld e, a                                       ; $4799: $5f
    ldh [$cf], a                                  ; $479a: $e0 $cf
    cpl                                           ; $479c: $2f
    push bc                                       ; $479d: $c5
    inc bc                                        ; $479e: $03
    reti                                          ; $479f: $d9


    daa                                           ; $47a0: $27
    ld c, e                                       ; $47a1: $4b
    rst $38                                       ; $47a2: $ff
    ld [hl], $ff                                  ; $47a3: $36 $ff
    dec hl                                        ; $47a5: $2b
    or d                                          ; $47a6: $b2
    add [hl]                                      ; $47a7: $86
    inc bc                                        ; $47a8: $03
    inc b                                         ; $47a9: $04
    or [hl]                                       ; $47aa: $b6
    rlca                                          ; $47ab: $07
    sbc h                                         ; $47ac: $9c
    inc bc                                        ; $47ad: $03
    cp $5d                                        ; $47ae: $fe $5d
    ld e, h                                       ; $47b0: $5c
    rlca                                          ; $47b1: $07
    ccf                                           ; $47b2: $3f
    nop                                           ; $47b3: $00
    rst $28                                       ; $47b4: $ef
    inc de                                        ; $47b5: $13
    db $fd                                        ; $47b6: $fd
    inc bc                                        ; $47b7: $03
    rst $38                                       ; $47b8: $ff
    rrca                                          ; $47b9: $0f
    pop af                                        ; $47ba: $f1
    dec l                                         ; $47bb: $2d
    nop                                           ; $47bc: $00
    db $d3                                        ; $47bd: $d3
    rra                                           ; $47be: $1f
    ldh [$fd], a                                  ; $47bf: $e0 $fd
    jp nc, $f877                                  ; $47c1: $d2 $77 $f8

    rst $18                                       ; $47c4: $df
    nop                                           ; $47c5: $00
    ldh a, [$fd]                                  ; $47c6: $f0 $fd
    ld [c], a                                     ; $47c8: $e2
    rst $38                                       ; $47c9: $ff
    ldh [rIE], a                                  ; $47ca: $e0 $ff
    ld [hl], b                                    ; $47cc: $70
    ei                                            ; $47cd: $fb
    nop                                           ; $47ce: $00
    ld [hl], h                                    ; $47cf: $74
    cp $3d                                        ; $47d0: $fe $3d
    db $f4                                        ; $47d2: $f4
    rrca                                          ; $47d3: $0f
    ld [c], a                                     ; $47d4: $e2
    rra                                           ; $47d5: $1f
    or l                                          ; $47d6: $b5
    nop                                           ; $47d7: $00
    ld c, a                                       ; $47d8: $4f
    db $eb                                        ; $47d9: $eb
    rra                                           ; $47da: $1f
    ld d, a                                       ; $47db: $57
    cp a                                          ; $47dc: $bf
    xor l                                         ; $47dd: $ad
    ld a, a                                       ; $47de: $7f
    ld e, e                                       ; $47df: $5b
    nop                                           ; $47e0: $00
    cp a                                          ; $47e1: $bf
    xor a                                         ; $47e2: $af
    ld a, a                                       ; $47e3: $7f
    dec c                                         ; $47e4: $0d
    rst $38                                       ; $47e5: $ff
    ld l, $ff                                     ; $47e6: $2e $ff
    or [hl]                                       ; $47e8: $b6
    inc c                                         ; $47e9: $0c
    db $fd                                        ; $47ea: $fd
    ld a, [hl-]                                   ; $47eb: $3a
    rst $18                                       ; $47ec: $df
    xor $10                                       ; $47ed: $ee $10
    ld [bc], a                                    ; $47ef: $02
    add [hl]                                      ; $47f0: $86
    rrca                                          ; $47f1: $0f
    add a                                         ; $47f2: $87
    ld a, a                                       ; $47f3: $7f
    nop                                           ; $47f4: $00
    inc hl                                        ; $47f5: $23
    rst $18                                       ; $47f6: $df
    nop                                           ; $47f7: $00
    rst $38                                       ; $47f8: $ff
    ld b, [hl]                                    ; $47f9: $46
    cp a                                          ; $47fa: $bf
    adc e                                         ; $47fb: $8b
    rst $38                                       ; $47fc: $ff
    jr jr_0bc_4834                                ; $47fd: $18 $35

    rst $38                                       ; $47ff: $ff
    ld l, a                                       ; $4800: $6f
    ld a, [hl]                                    ; $4801: $7e
    ld d, d                                       ; $4802: $52
    add d                                         ; $4803: $82
    ld a, [de]                                    ; $4804: $1a
    ld b, h                                       ; $4805: $44

Call_0bc_4806:
    rst $38                                       ; $4806: $ff
    inc bc                                        ; $4807: $03
    nop                                           ; $4808: $00
    db $fc                                        ; $4809: $fc
    inc l                                         ; $480a: $2c
    db $db                                        ; $480b: $db
    ld [hl], h                                    ; $480c: $74
    sbc a                                         ; $480d: $9f
    pop af                                        ; $480e: $f1
    rrca                                          ; $480f: $0f
    db $e4                                        ; $4810: $e4
    nop                                           ; $4811: $00
    dec de                                        ; $4812: $1b
    ld [$02f7], sp                                ; $4813: $08 $f7 $02
    db $fd                                        ; $4816: $fd
    ld l, h                                       ; $4817: $6c
    cp a                                          ; $4818: $bf
    push bc                                       ; $4819: $c5
    nop                                           ; $481a: $00
    ld a, [hl]                                    ; $481b: $7e
    add e                                         ; $481c: $83
    ld a, [hl]                                    ; $481d: $7e
    dec sp                                        ; $481e: $3b
    db $f4                                        ; $481f: $f4
    inc bc                                        ; $4820: $03
    db $fc                                        ; $4821: $fc
    ld d, a                                       ; $4822: $57
    nop                                           ; $4823: $00
    ldh [$7b], a                                  ; $4824: $e0 $7b
    and h                                         ; $4826: $a4
    halt                                          ; $4827: $76
    ret z                                         ; $4828: $c8

    ld h, [hl]                                    ; $4829: $66
    rst $18                                       ; $482a: $df
    inc de                                        ; $482b: $13
    nop                                           ; $482c: $00
    sbc $c9                                       ; $482d: $de $c9
    rst $38                                       ; $482f: $ff
    sbc a                                         ; $4830: $9f
    ld d, h                                       ; $4831: $54
    dec h                                         ; $4832: $25
    ret c                                         ; $4833: $d8

jr_0bc_4834:
    push de                                       ; $4834: $d5
    nop                                           ; $4835: $00
    jr nz, @-$22                                  ; $4836: $20 $dc

    nop                                           ; $4838: $00
    db $f4                                        ; $4839: $f4
    nop                                           ; $483a: $00
    ld e, b                                       ; $483b: $58
    and a                                         ; $483c: $a7
    ld [bc], a                                    ; $483d: $02
    nop                                           ; $483e: $00
    db $fd                                        ; $483f: $fd
    inc bc                                        ; $4840: $03
    db $fc                                        ; $4841: $fc
    inc bc                                        ; $4842: $03
    db $fc                                        ; $4843: $fc
    jp nc, Jump_0bc_5b2d                          ; $4844: $d2 $2d $5b

    nop                                           ; $4847: $00
    and h                                         ; $4848: $a4
    ld [hl], b                                    ; $4849: $70
    rrca                                          ; $484a: $0f
    ld a, d                                       ; $484b: $7a
    rst $38                                       ; $484c: $ff
    db $ed                                        ; $484d: $ed
    nop                                           ; $484e: $00
    ld a, a                                       ; $484f: $7f
    db $10                                        ; $4850: $10
    add b                                         ; $4851: $80
    ld a, d                                       ; $4852: $7a
    add b                                         ; $4853: $80
    rst $08                                       ; $4854: $cf
    dec c                                         ; $4855: $0d
    ld l, e                                       ; $4856: $6b
    sub h                                         ; $4857: $94
    or l                                          ; $4858: $b5
    ld c, d                                       ; $4859: $4a
    nop                                           ; $485a: $00
    ld [bc], a                                    ; $485b: $02
    db $fd                                        ; $485c: $fd
    ld a, d                                       ; $485d: $7a
    dec b                                         ; $485e: $05
    push af                                       ; $485f: $f5
    ld a, [bc]                                    ; $4860: $0a
    ld hl, sp+$07                                 ; $4861: $f8 $07
    nop                                           ; $4863: $00
    pop af                                        ; $4864: $f1
    ld c, $e0                                     ; $4865: $0e $e0
    rra                                           ; $4867: $1f
    ldh a, [rIF]                                  ; $4868: $f0 $0f
    ld b, b                                       ; $486a: $40
    cp a                                          ; $486b: $bf
    inc c                                         ; $486c: $0c
    or b                                          ; $486d: $b0
    ld c, a                                       ; $486e: $4f
    add b                                         ; $486f: $80
    ld a, a                                       ; $4870: $7f
    ld [de], a                                    ; $4871: $12
    dec bc                                        ; $4872: $0b
    ld a, d                                       ; $4873: $7a
    ld c, h                                       ; $4874: $4c
    ld [bc], a                                    ; $4875: $02
    db $fd                                        ; $4876: $fd
    ld [$fe01], sp                                ; $4877: $08 $01 $fe
    ld [bc], a                                    ; $487a: $02
    db $fd                                        ; $487b: $fd
    ld [bc], a                                    ; $487c: $02
    ld c, $03                                     ; $487d: $0e $03
    db $fc                                        ; $487f: $fc
    ld [bc], a                                    ; $4880: $02
    nop                                           ; $4881: $00
    db $fd                                        ; $4882: $fd
    ld a, a                                       ; $4883: $7f
    add b                                         ; $4884: $80
    or a                                          ; $4885: $b7
    ld c, b                                       ; $4886: $48
    ccf                                           ; $4887: $3f
    ret nz                                        ; $4888: $c0

    ld e, e                                       ; $4889: $5b
    ld [bc], a                                    ; $488a: $02
    and b                                         ; $488b: $a0
    ccf                                           ; $488c: $3f
    ret nz                                        ; $488d: $c0

jr_0bc_488e:
    rrca                                          ; $488e: $0f
    ldh a, [$7e]                                  ; $488f: $f0 $7e
    dec sp                                        ; $4891: $3b
    inc bc                                        ; $4892: $03
    pop af                                        ; $4893: $f1
    nop                                           ; $4894: $00
    ld c, $fb                                     ; $4895: $0e $fb
    inc b                                         ; $4897: $04
    cp [hl]                                       ; $4898: $be
    ld bc, $00fb                                  ; $4899: $01 $fb $00
    ld l, a                                       ; $489c: $6f
    jr nz, jr_0bc_48af                            ; $489d: $20 $10

    rst $18                                       ; $489f: $df
    add [hl]                                      ; $48a0: $86
    ld bc, $00ff                                  ; $48a1: $01 $ff $00
    rst $18                                       ; $48a4: $df
    ccf                                           ; $48a5: $3f
    sbc a                                         ; $48a6: $9f
    ld bc, $cf7f                                  ; $48a7: $01 $7f $cf
    ccf                                           ; $48aa: $3f
    ld a, a                                       ; $48ab: $7f
    rra                                           ; $48ac: $1f
    rst $28                                       ; $48ad: $ef
    rra                                           ; $48ae: $1f

jr_0bc_48af:
    ld a, [bc]                                    ; $48af: $0a

Call_0bc_48b0:
    ld [$3f7a], sp                                ; $48b0: $08 $7a $3f
    jp c, $ac06                                   ; $48b3: $da $06 $ac

    add hl, bc                                    ; $48b6: $09
    ldh [$0b], a                                  ; $48b7: $e0 $0b
    pop hl                                        ; $48b9: $e1
    ld c, $f6                                     ; $48ba: $0e $f6
    ld [$cd06], a                                 ; $48bc: $ea $06 $cd
    nop                                           ; $48bf: $00
    rst $38                                       ; $48c0: $ff
    scf                                           ; $48c1: $37
    rst $28                                       ; $48c2: $ef
    ld b, c                                       ; $48c3: $41
    cp a                                          ; $48c4: $bf
    inc de                                        ; $48c5: $13
    rst $28                                       ; $48c6: $ef
    ld bc, $ff04                                  ; $48c7: $01 $04 $ff
    add h                                         ; $48ca: $84
    ei                                            ; $48cb: $fb
    ret nc                                        ; $48cc: $d0

    rst $38                                       ; $48cd: $ff
    and b                                         ; $48ce: $a0
    dec l                                         ; $48cf: $2d
    rra                                           ; $48d0: $1f
    rra                                           ; $48d1: $1f
    ld b, b                                       ; $48d2: $40
    ccf                                           ; $48d3: $3f
    ld bc, $7c00                                  ; $48d4: $01 $00 $7c
    ld a, a                                       ; $48d7: $7f
    cp a                                          ; $48d8: $bf
    ld a, a                                       ; $48d9: $7f
    ld c, a                                       ; $48da: $4f
    cp a                                          ; $48db: $bf
    inc bc                                        ; $48dc: $03
    or e                                          ; $48dd: $b3
    rst $08                                       ; $48de: $cf
    call z, $e3f3                                 ; $48df: $cc $f3 $e3
    db $fc                                        ; $48e2: $fc
    add d                                         ; $48e3: $82
    dec b                                         ; $48e4: $05
    and b                                         ; $48e5: $a0
    dec [hl]                                      ; $48e6: $35
    dec bc                                        ; $48e7: $0b
    ccf                                           ; $48e8: $3f
    rst $38                                       ; $48e9: $ff
    ldh a, [rIF]                                  ; $48ea: $f0 $0f
    and b                                         ; $48ec: $a0
    ld c, l                                       ; $48ed: $4d
    db $fc                                        ; $48ee: $fc
    sbc $05                                       ; $48ef: $de $05
    and b                                         ; $48f1: $a0
    dec e                                         ; $48f2: $1d
    db $10                                        ; $48f3: $10
    db $fd                                        ; $48f4: $fd
    cp $f3                                        ; $48f5: $fe $f3
    ld [$3d07], a                                 ; $48f7: $ea $07 $3d
    jp Jump_000_0ff3                              ; $48fa: $c3 $f3 $0f


    jr jr_0bc_488e                                ; $48fd: $18 $8f

    ld a, a                                       ; $48ff: $7f
    cp $22                                        ; $4900: $fe $22
    inc bc                                        ; $4902: $03
    and b                                         ; $4903: $a0
    dec e                                         ; $4904: $1d
    ret c                                         ; $4905: $d8

    ld hl, sp-$58                                 ; $4906: $f8 $a8
    nop                                           ; $4908: $00
    ld hl, sp+$54                                 ; $4909: $f8 $54
    db $fc                                        ; $490b: $fc
    adc h                                         ; $490c: $8c
    db $fc                                        ; $490d: $fc
    ld b, $fe                                     ; $490e: $06 $fe
    add c                                         ; $4910: $81
    adc b                                         ; $4911: $88
    and h                                         ; $4912: $a4
    ld b, $f4                                     ; $4913: $06 $f4
    rst $38                                       ; $4915: $ff
    add hl, hl                                    ; $4916: $29
    inc a                                         ; $4917: $3c
    inc bc                                        ; $4918: $03
    jp hl                                         ; $4919: $e9


    rst $38                                       ; $491a: $ff
    ret nc                                        ; $491b: $d0

    nop                                           ; $491c: $00
    rst $38                                       ; $491d: $ff
    ld [$bff7], a                                 ; $491e: $ea $f7 $bf
    ld b, b                                       ; $4921: $40
    ld a, d                                       ; $4922: $7a
    and b                                         ; $4923: $a0
    dec e                                         ; $4924: $1d
    nop                                           ; $4925: $00
    ldh a, [$8b]                                  ; $4926: $f0 $8b
    ld [hl], h                                    ; $4928: $74
    ld c, $f0                                     ; $4929: $0e $f0
    rla                                           ; $492b: $17
    ld hl, sp+$37                                 ; $492c: $f8 $37
    nop                                           ; $492e: $00
    ret z                                         ; $492f: $c8

    ld a, [hl]                                    ; $4930: $7e
    add b                                         ; $4931: $80
    add c                                         ; $4932: $81
    nop                                           ; $4933: $00
    ld c, l                                       ; $4934: $4d
    ld [bc], a                                    ; $4935: $02
    inc bc                                        ; $4936: $03
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    ld h, $00                                     ; $4939: $26 $00
    push bc                                       ; $493b: $c5
    nop                                           ; $493c: $00
    ld [de], a                                    ; $493d: $12
    nop                                           ; $493e: $00
    call nz, RST_00                               ; $493f: $c4 $00 $00
    cp c                                          ; $4942: $b9
    nop                                           ; $4943: $00
    add $3f                                       ; $4944: $c6 $3f
    inc sp                                        ; $4946: $33
    cp a                                          ; $4947: $bf
    pop hl                                        ; $4948: $e1
    nop                                           ; $4949: $00
    cp a                                          ; $494a: $bf
    xor b                                         ; $494b: $a8
    sub a                                         ; $494c: $97
    or a                                          ; $494d: $b7
    add hl, bc                                    ; $494e: $09
    ld c, e                                       ; $494f: $4b
    db $10                                        ; $4950: $10
    ld [hl], l                                    ; $4951: $75
    nop                                           ; $4952: $00
    ld [$102f], sp                                ; $4953: $08 $2f $10
    inc [hl]                                      ; $4956: $34
    rr [hl]                                       ; $4957: $cb $1e
    pop hl                                        ; $4959: $e1
    add b                                         ; $495a: $80
    nop                                           ; $495b: $00
    rst $38                                       ; $495c: $ff
    call nz, $88fb                                ; $495d: $c4 $fb $88
    rst $30                                       ; $4960: $f7
    ret c                                         ; $4961: $d8

    ld a, a                                       ; $4962: $7f
    sub h                                         ; $4963: $94
    dec h                                         ; $4964: $25
    ld a, a                                       ; $4965: $7f
    ld a, [hl]                                    ; $4966: $7e
    ld b, e                                       ; $4967: $43
    rlca                                          ; $4968: $07
    and b                                         ; $4969: $a0
    ld e, a                                       ; $496a: $5f
    jr nz, jr_0bc_4996                            ; $496b: $20 $29

    db $10                                        ; $496d: $10
    inc b                                         ; $496e: $04
    rlca                                          ; $496f: $07
    nop                                           ; $4970: $00
    ld [bc], a                                    ; $4971: $02
    db $fd                                        ; $4972: $fd
    dec b                                         ; $4973: $05
    ld a, [$fc03]                                 ; $4974: $fa $03 $fc
    ld b, $f9                                     ; $4977: $06 $f9
    ld [$ff00], sp                                ; $4979: $08 $00 $ff
    inc b                                         ; $497c: $04
    ei                                            ; $497d: $fb
    nop                                           ; $497e: $00
    ld a, [bc]                                    ; $497f: $0a
    ld a, [$eb00]                                 ; $4980: $fa $00 $eb
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    ld h, c                                       ; $4985: $61
    add b                                         ; $4986: $80
    ret nc                                        ; $4987: $d0

    nop                                           ; $4988: $00
    ld hl, $f0c0                                  ; $4989: $21 $c0 $f0
    add b                                         ; $498c: $80
    ld a, [bc]                                    ; $498d: $0a
    nop                                           ; $498e: $00
    halt                                          ; $498f: $76
    add b                                         ; $4990: $80
    cp [hl]                                       ; $4991: $be
    ld bc, $06dd                                  ; $4992: $01 $dd $06
    ld l, a                                       ; $4995: $6f

jr_0bc_4996:
    jr nz, jr_0bc_49b7                            ; $4996: $20 $1f

    ld h, [hl]                                    ; $4998: $66
    ld c, $01                                     ; $4999: $0e $01
    adc e                                         ; $499b: $8b
    ld a, a                                       ; $499c: $7f
    ld d, a                                       ; $499d: $57
    ccf                                           ; $499e: $3f
    ld [de], a                                    ; $499f: $12
    dec c                                         ; $49a0: $0d
    rst $28                                       ; $49a1: $ef
    ld e, a                                       ; $49a2: $5f
    rst $38                                       ; $49a3: $ff
    or a                                          ; $49a4: $b7
    ld a, b                                       ; $49a5: $78
    ld [hl], $f4                                  ; $49a6: $36 $f4
    rra                                           ; $49a8: $1f
    db $db                                        ; $49a9: $db
    and b                                         ; $49aa: $a0
    nop                                           ; $49ab: $00
    ld b, b                                       ; $49ac: $40
    jp hl                                         ; $49ad: $e9


    ld c, b                                       ; $49ae: $48
    rlca                                          ; $49af: $07
    ld [c], a                                     ; $49b0: $e2
    rst $38                                       ; $49b1: $ff
    jp nz, Jump_000_29ff                          ; $49b2: $c2 $ff $29

    rst $30                                       ; $49b5: $f7
    ld b, b                                       ; $49b6: $40

jr_0bc_49b7:
    call nc, $0114                                ; $49b7: $d4 $14 $01
    add b                                         ; $49ba: $80
    rst $38                                       ; $49bb: $ff
    jr nc, @+$01                                  ; $49bc: $30 $ff

    ld b, [hl]                                    ; $49be: $46
    ld sp, hl                                     ; $49bf: $f9
    nop                                           ; $49c0: $00
    sub d                                         ; $49c1: $92
    db $fd                                        ; $49c2: $fd
    jp z, Jump_0bc_5ff5                           ; $49c3: $ca $f5 $5f

    ld hl, sp+$7d                                 ; $49c6: $f8 $7d
    ld a, a                                       ; $49c8: $7f
    ld [$7f79], sp                                ; $49c9: $08 $79 $7f
    ld a, l                                       ; $49cc: $7d
    ld a, e                                       ; $49cd: $7b
    ld [hl], $05                                  ; $49ce: $36 $05
    ld a, h                                       ; $49d0: $7c
    ld l, [hl]                                    ; $49d1: $6e
    ld a, a                                       ; $49d2: $7f
    ld h, b                                       ; $49d3: $60
    ld l, a                                       ; $49d4: $6f
    ld [bc], a                                    ; $49d5: $02
    nop                                           ; $49d6: $00
    or e                                          ; $49d7: $b3
    ld c, $f7                                     ; $49d8: $0e $f7
    rst $38                                       ; $49da: $ff
    rst $20                                       ; $49db: $e7
    rst $38                                       ; $49dc: $ff
    ld [hl], a                                    ; $49dd: $77
    inc c                                         ; $49de: $0c
    rst $28                                       ; $49df: $ef
    ld h, a                                       ; $49e0: $67
    sbc a                                         ; $49e1: $9f
    adc a                                         ; $49e2: $8f
    sbc [hl]                                      ; $49e3: $9e
    ld d, h                                       ; $49e4: $54
    jr c, jr_0bc_4a13                             ; $49e5: $38 $2c

    db $fd                                        ; $49e7: $fd
    rst $38                                       ; $49e8: $ff
    ld b, c                                       ; $49e9: $41
    ld [$0796], a                                 ; $49ea: $ea $96 $07
    xor d                                         ; $49ed: $aa
    rst $38                                       ; $49ee: $ff
    call nc, $a8ff                                ; $49ef: $d4 $ff $a8

jr_0bc_49f2:
    ret nz                                        ; $49f2: $c0

    rlca                                          ; $49f3: $07
    nop                                           ; $49f4: $00
    xor b                                         ; $49f5: $a8
    rst $38                                       ; $49f6: $ff
    ld d, d                                       ; $49f7: $52
    db $fd                                        ; $49f8: $fd
    and l                                         ; $49f9: $a5
    ld a, [$f40b]                                 ; $49fa: $fa $0b $f4
    nop                                           ; $49fd: $00
    rla                                           ; $49fe: $17
    add sp, $0f                                   ; $49ff: $e8 $0f
    ldh a, [rRP]                                  ; $4a01: $f0 $56
    xor c                                         ; $4a03: $a9
    dec bc                                        ; $4a04: $0b
    db $f4                                        ; $4a05: $f4
    nop                                           ; $4a06: $00
    ld [hl+], a                                   ; $4a07: $22
    sbc $d6                                       ; $4a08: $de $d6
    ld l, $a2                                     ; $4a0a: $2e $a2
    ld e, [hl]                                    ; $4a0c: $5e
    add $3e                                       ; $4a0d: $c6 $3e
    nop                                           ; $4a0f: $00
    and d                                         ; $4a10: $a2
    ld e, [hl]                                    ; $4a11: $5e
    ld b, [hl]                                    ; $4a12: $46

jr_0bc_4a13:
    cp [hl]                                       ; $4a13: $be
    add d                                         ; $4a14: $82
    ld a, [hl]                                    ; $4a15: $7e
    ld b, [hl]                                    ; $4a16: $46
    cp [hl]                                       ; $4a17: $be
    nop                                           ; $4a18: $00
    xor d                                         ; $4a19: $aa
    push af                                       ; $4a1a: $f5
    rst $10                                       ; $4a1b: $d7
    add sp, $3d                                   ; $4a1c: $e8 $3d
    ld [c], a                                     ; $4a1e: $e2
    add a                                         ; $4a1f: $87
    ld hl, sp+$00                                 ; $4a20: $f8 $00
    ld e, l                                       ; $4a22: $5d
    xor d                                         ; $4a23: $aa
    rst $00                                       ; $4a24: $c7
    jr c, jr_0bc_49f2                             ; $4a25: $38 $cb

    inc a                                         ; $4a27: $3c
    ld hl, $1cde                                  ; $4a28: $21 $de $1c
    cp a                                          ; $4a2b: $bf
    ld b, b                                       ; $4a2c: $40
    push af                                       ; $4a2d: $f5
    db $ed                                        ; $4a2e: $ed
    rlca                                          ; $4a2f: $07
    ld d, b                                       ; $4a30: $50
    dec bc                                        ; $4a31: $0b
    di                                            ; $4a32: $f3
    add hl, bc                                    ; $4a33: $09
    ei                                            ; $4a34: $fb
    nop                                           ; $4a35: $00
    nop                                           ; $4a36: $00
    and $00                                       ; $4a37: $e6 $00
    ret c                                         ; $4a39: $d8

    nop                                           ; $4a3a: $00
    push af                                       ; $4a3b: $f5
    nop                                           ; $4a3c: $00
    cp b                                          ; $4a3d: $b8
    nop                                           ; $4a3e: $00
    db $10                                        ; $4a3f: $10
    ld h, l                                       ; $4a40: $65
    nop                                           ; $4a41: $00
    ld a, [$024e]                                 ; $4a42: $fa $4e $02
    ld e, e                                       ; $4a45: $5b
    nop                                           ; $4a46: $00
    ld a, d                                       ; $4a47: $7a
    nop                                           ; $4a48: $00
    db $10                                        ; $4a49: $10
    ld [hl+], a                                   ; $4a4a: $22
    nop                                           ; $4a4b: $00
    dec c                                         ; $4a4c: $0d
    ld [bc], a                                    ; $4a4d: $02
    nop                                           ; $4a4e: $00
    and a                                         ; $4a4f: $a7
    nop                                           ; $4a50: $00
    ld c, l                                       ; $4a51: $4d
    nop                                           ; $4a52: $00
    ld [$00a9], sp                                ; $4a53: $08 $a9 $00
    rla                                           ; $4a56: $17
    nop                                           ; $4a57: $00
    ld d, b                                       ; $4a58: $50
    inc b                                         ; $4a59: $04
    ld a, a                                       ; $4a5a: $7f
    adc h                                         ; $4a5b: $8c
    ld a, a                                       ; $4a5c: $7f
    ld b, b                                       ; $4a5d: $40
    inc d                                         ; $4a5e: $14
    jp nc, $9b05                                  ; $4a5f: $d2 $05 $9b

    ld a, a                                       ; $4a62: $7f
    ld l, l                                       ; $4a63: $6d
    ccf                                           ; $4a64: $3f
    rst $38                                       ; $4a65: $ff
    ld a, a                                       ; $4a66: $7f
    ld d, l                                       ; $4a67: $55
    db $10                                        ; $4a68: $10
    ld a, b                                       ; $4a69: $78
    ld b, $e9                                     ; $4a6a: $06 $e9
    jp nz, $e000                                  ; $4a6c: $c2 $00 $e0

    add b                                         ; $4a6f: $80
    ld b, $d0                                     ; $4a70: $06 $d0
    xor [hl]                                      ; $4a72: $ae
    ld [bc], a                                    ; $4a73: $02
    and b                                         ; $4a74: $a0
    call nz, Call_000_204e                        ; $4a75: $c4 $4e $20
    add [hl]                                      ; $4a78: $86
    ld b, $7f                                     ; $4a79: $06 $7f
    add b                                         ; $4a7b: $80
    ld d, l                                       ; $4a7c: $55
    and b                                         ; $4a7d: $a0
    add hl, sp                                    ; $4a7e: $39
    nop                                           ; $4a7f: $00
    ret nz                                        ; $4a80: $c0

    ld a, [hl+]                                   ; $4a81: $2a
    ret nc                                        ; $4a82: $d0

    dec [hl]                                      ; $4a83: $35
    ret nz                                        ; $4a84: $c0

    ld a, [hl-]                                   ; $4a85: $3a
    ret nz                                        ; $4a86: $c0

    dec l                                         ; $4a87: $2d
    nop                                           ; $4a88: $00
    ret nz                                        ; $4a89: $c0

    add hl, de                                    ; $4a8a: $19
    ld [c], a                                     ; $4a8b: $e2
    ld d, c                                       ; $4a8c: $51
    xor a                                         ; $4a8d: $af
    sbc a                                         ; $4a8e: $9f
    rlca                                          ; $4a8f: $07
    xor l                                         ; $4a90: $ad
    nop                                           ; $4a91: $00
    jp $0bd6                                      ; $4a92: $c3 $d6 $0b


    sbc c                                         ; $4a95: $99
    ccf                                           ; $4a96: $3f
    cp [hl]                                       ; $4a97: $be
    inc bc                                        ; $4a98: $03
    ld e, c                                       ; $4a99: $59
    nop                                           ; $4a9a: $00
    inc bc                                        ; $4a9b: $03
    ccf                                           ; $4a9c: $3f
    add b                                         ; $4a9d: $80
    ld a, a                                       ; $4a9e: $7f
    rst $38                                       ; $4a9f: $ff
    ld sp, hl                                     ; $4aa0: $f9
    rst $38                                       ; $4aa1: $ff
    pop hl                                        ; $4aa2: $e1
    jr z, @+$01                                   ; $4aa3: $28 $ff

    ei                                            ; $4aa5: $fb
    ld l, d                                       ; $4aa6: $6a
    dec b                                         ; $4aa7: $05
    rst $38                                       ; $4aa8: $ff
    call z, $bf06                                 ; $4aa9: $cc $06 $bf
    ld a, a                                       ; $4aac: $7f
    ld h, d                                       ; $4aad: $62
    nop                                           ; $4aae: $00
    sbc a                                         ; $4aaf: $9f
    rst $30                                       ; $4ab0: $f7
    ei                                            ; $4ab1: $fb
    db $f4                                        ; $4ab2: $f4
    rst $28                                       ; $4ab3: $ef
    set 7, a                                      ; $4ab4: $cb $ff
    or l                                          ; $4ab6: $b5
    nop                                           ; $4ab7: $00
    rst $18                                       ; $4ab8: $df
    adc [hl]                                      ; $4ab9: $8e
    rst $30                                       ; $4aba: $f7
    reti                                          ; $4abb: $d9


    ld a, a                                       ; $4abc: $7f
    ld c, l                                       ; $4abd: $4d
    ei                                            ; $4abe: $fb
    db $db                                        ; $4abf: $db
    nop                                           ; $4ac0: $00
    rst $30                                       ; $4ac1: $f7
    ld bc, $aafe                                  ; $4ac2: $01 $fe $aa
    rst $30                                       ; $4ac5: $f7
    ld b, d                                       ; $4ac6: $42
    db $fd                                        ; $4ac7: $fd
    or b                                          ; $4ac8: $b0
    nop                                           ; $4ac9: $00
    ld c, a                                       ; $4aca: $4f
    adc [hl]                                      ; $4acb: $8e
    ld [hl], c                                    ; $4acc: $71
    or b                                          ; $4acd: $b0
    ld c, a                                       ; $4ace: $4f
    add d                                         ; $4acf: $82
    ld a, l                                       ; $4ad0: $7d
    ld l, a                                       ; $4ad1: $6f
    adc e                                         ; $4ad2: $8b
    ld d, b                                       ; $4ad3: $50
    ld b, $3f                                     ; $4ad4: $06 $3f
    ccf                                           ; $4ad6: $3f
    scf                                           ; $4ad7: $37
    dec a                                         ; $4ad8: $3d
    ld [bc], a                                    ; $4ad9: $02
    dec de                                        ; $4ada: $1b
    ld b, b                                       ; $4adb: $40
    dec d                                         ; $4adc: $15
    ld a, [de]                                    ; $4add: $1a
    inc l                                         ; $4ade: $2c
    ld d, l                                       ; $4adf: $55
    ld a, [$17bb]                                 ; $4ae0: $fa $bb $17
    ei                                            ; $4ae3: $fb
    and d                                         ; $4ae4: $a2
    ld bc, $a650                                  ; $4ae5: $01 $50 $a6
    ld bc, $0440                                  ; $4ae8: $01 $40 $04
    jr nz, jr_0bc_4b2d                            ; $4aeb: $20 $40

    ld d, b                                       ; $4aed: $50
    and d                                         ; $4aee: $a2
    inc bc                                        ; $4aef: $03
    inc bc                                        ; $4af0: $03
    db $fc                                        ; $4af1: $fc
    rlca                                          ; $4af2: $07
    ld hl, sp+$0b                                 ; $4af3: $f8 $0b
    db $f4                                        ; $4af5: $f4
    nop                                           ; $4af6: $00
    rlca                                          ; $4af7: $07
    ld hl, sp+$0a                                 ; $4af8: $f8 $0a
    push af                                       ; $4afa: $f5
    dec b                                         ; $4afb: $05
    ld a, [$f50a]                                 ; $4afc: $fa $0a $f5
    ld b, b                                       ; $4aff: $40
    xor d                                         ; $4b00: $aa
    inc c                                         ; $4b01: $0c
    ld bc, $7c8c                                  ; $4b02: $01 $8c $7c
    call nc, $8c3c                                ; $4b05: $d4 $3c $8c
    ld a, h                                       ; $4b08: $7c
    nop                                           ; $4b09: $00
    sbc b                                         ; $4b0a: $98
    ld a, b                                       ; $4b0b: $78
    jr z, @-$06                                   ; $4b0c: $28 $f8

    ld d, b                                       ; $4b0e: $50
    ldh a, [rP1]                                  ; $4b0f: $f0 $00
    ld a, a                                       ; $4b11: $7f
    db $10                                        ; $4b12: $10
    ccf                                           ; $4b13: $3f
    ld a, a                                       ; $4b14: $7f
    dec e                                         ; $4b15: $1d
    cp b                                          ; $4b16: $b8
    ld [bc], a                                    ; $4b17: $02
    ld e, $7f                                     ; $4b18: $1e $7f
    dec a                                         ; $4b1a: $3d
    rst $38                                       ; $4b1b: $ff
    ld d, l                                       ; $4b1c: $55
    dec de                                        ; $4b1d: $1b
    ret nz                                        ; $4b1e: $c0

    ld [bc], a                                    ; $4b1f: $02
    nop                                           ; $4b20: $00
    halt                                          ; $4b21: $76
    dec b                                         ; $4b22: $05
    db $eb                                        ; $4b23: $eb
    ld d, [hl]                                    ; $4b24: $56
    rlca                                          ; $4b25: $07
    xor a                                         ; $4b26: $af
    jp nc, $1704                                  ; $4b27: $d2 $04 $17

    cp h                                          ; $4b2a: $bc
    rst $38                                       ; $4b2b: $ff
    ld [hl], h                                    ; $4b2c: $74

jr_0bc_4b2d:
    ld [de], a                                    ; $4b2d: $12
    ld d, $fd                                     ; $4b2e: $16 $fd
    cp h                                          ; $4b30: $bc
    dec b                                         ; $4b31: $05
    ld a, e                                       ; $4b32: $7b
    inc h                                         ; $4b33: $24
    ret                                           ; $4b34: $c9


    rlca                                          ; $4b35: $07
    db $fd                                        ; $4b36: $fd
    adc h                                         ; $4b37: $8c
    inc a                                         ; $4b38: $3c
    push de                                       ; $4b39: $d5
    rra                                           ; $4b3a: $1f
    sbc e                                         ; $4b3b: $9b
    ld d, h                                       ; $4b3c: $54
    jp hl                                         ; $4b3d: $e9


    rlca                                          ; $4b3e: $07
    adc d                                         ; $4b3f: $8a
    ld [$4820], sp                                ; $4b40: $08 $20 $48
    xor d                                         ; $4b43: $aa
    jr nc, jr_0bc_4ba6                            ; $4b44: $30 $60

    cp l                                          ; $4b46: $bd
    sub $0a                                       ; $4b47: $d6 $0a
    cp a                                          ; $4b49: $bf
    adc h                                         ; $4b4a: $8c
    dec d                                         ; $4b4b: $15
    ldh a, [rNR22]                                ; $4b4c: $f0 $17
    ld a, a                                       ; $4b4e: $7f
    ld bc, $5050                                  ; $4b4f: $01 $50 $50
    ld d, l                                       ; $4b52: $55
    add h                                         ; $4b53: $84
    ld e, $c1                                     ; $4b54: $1e $c1
    call c, Call_000_100a                         ; $4b56: $dc $0a $10
    jr z, @-$14                                   ; $4b59: $28 $ea

    rst $38                                       ; $4b5b: $ff
    ld d, l                                       ; $4b5c: $55
    rst $38                                       ; $4b5d: $ff
    xor e                                         ; $4b5e: $ab
    ld h, d                                       ; $4b5f: $62
    dec b                                         ; $4b60: $05
    or l                                          ; $4b61: $b5
    jr nz, jr_0bc_4b8c                            ; $4b62: $20 $28

    xor a                                         ; $4b64: $af
    jr nc, @-$7e                                  ; $4b65: $30 $80

    ld b, b                                       ; $4b67: $40
    jr c, jr_0bc_4b6c                             ; $4b68: $38 $02

    and b                                         ; $4b6a: $a0
    ld e, b                                       ; $4b6b: $58

jr_0bc_4b6c:
    ld e, a                                       ; $4b6c: $5f
    add b                                         ; $4b6d: $80
    jr @+$77                                      ; $4b6e: $18 $75

    rst $18                                       ; $4b70: $df
    ret nz                                        ; $4b71: $c0

    jr nc, jr_0bc_4bde                            ; $4b72: $30 $6a

    add hl, bc                                    ; $4b74: $09

jr_0bc_4b75:
    ld d, b                                       ; $4b75: $50
    dec c                                         ; $4b76: $0d
    db $fd                                        ; $4b77: $fd
    ret nc                                        ; $4b78: $d0

    jr nc, jr_0bc_4b75                            ; $4b79: $30 $fa

    adc [hl]                                      ; $4b7b: $8e
    ld [bc], a                                    ; $4b7c: $02
    ret                                           ; $4b7d: $c9


    ldh a, [$08]                                  ; $4b7e: $f0 $08
    db $fc                                        ; $4b80: $fc
    dec d                                         ; $4b81: $15
    db $fd                                        ; $4b82: $fd
    ld d, l                                       ; $4b83: $55
    nop                                           ; $4b84: $00
    ld b, a                                       ; $4b85: $47
    rst $38                                       ; $4b86: $ff
    cp a                                          ; $4b87: $bf
    sub b                                         ; $4b88: $90
    ld [$2ee6], sp                                ; $4b89: $08 $e6 $2e

jr_0bc_4b8c:
    ld c, $32                                     ; $4b8c: $0e $32
    ld c, $02                                     ; $4b8e: $0e $02
    ld [$1f1f], sp                                ; $4b90: $08 $1f $1f
    ld c, b                                       ; $4b93: $48
    ld e, $29                                     ; $4b94: $1e $29
    cpl                                           ; $4b96: $2f
    ld hl, sp-$0c                                 ; $4b97: $f8 $f4
    or a                                          ; $4b99: $b7
    inc bc                                        ; $4b9a: $03
    xor $2b                                       ; $4b9b: $ee $2b
    dec a                                         ; $4b9d: $3d
    rrca                                          ; $4b9e: $0f
    ld c, b                                       ; $4b9f: $48
    add hl, bc                                    ; $4ba0: $09
    ld a, $4c                                     ; $4ba1: $3e $4c
    ld bc, $7f3a                                  ; $4ba3: $01 $3a $7f

jr_0bc_4ba6:
    ld b, [hl]                                    ; $4ba6: $46
    dec [hl]                                      ; $4ba7: $35
    ld [$ec10], sp                                ; $4ba8: $08 $10 $ec
    rst $38                                       ; $4bab: $ff
    ld e, h                                       ; $4bac: $5c
    ld c, b                                       ; $4bad: $48
    ld bc, $0804                                  ; $4bae: $01 $04 $08
    ld a, h                                       ; $4bb1: $7c
    add b                                         ; $4bb2: $80
    ld a, b                                       ; $4bb3: $78
    ld d, $ff                                     ; $4bb4: $16 $ff
    nop                                           ; $4bb6: $00
    add b                                         ; $4bb7: $80
    rrca                                          ; $4bb8: $0f
    add b                                         ; $4bb9: $80
    rra                                           ; $4bba: $1f
    add b                                         ; $4bbb: $80
    ret nz                                        ; $4bbc: $c0

    ld sp, hl                                     ; $4bbd: $f9
    ld bc, $1802                                  ; $4bbe: $01 $02 $18
    cp $00                                        ; $4bc1: $fe $00

jr_0bc_4bc3:
    ld bc, $01c1                                  ; $4bc3: $01 $c1 $01
    ld sp, hl                                     ; $4bc6: $f9
    inc e                                         ; $4bc7: $1c
    ld bc, $01fd                                  ; $4bc8: $01 $fd $01
    ld h, b                                       ; $4bcb: $60
    ld b, $04                                     ; $4bcc: $06 $04
    ld [$2020], sp                                ; $4bce: $08 $20 $20
    rrca                                          ; $4bd1: $0f
    add b                                         ; $4bd2: $80
    ld bc, $8027                                  ; $4bd3: $01 $27 $80
    ld [hl], e                                    ; $4bd6: $73
    add b                                         ; $4bd7: $80
    ld a, c                                       ; $4bd8: $79
    add b                                         ; $4bd9: $80
    ld a, c                                       ; $4bda: $79
    jr nz, jr_0bc_4bdd                            ; $4bdb: $20 $00

jr_0bc_4bdd:
    db $10                                        ; $4bdd: $10

jr_0bc_4bde:
    ld hl, $7101                                  ; $4bde: $21 $01 $71
    ld [hl+], a                                   ; $4be1: $22
    nop                                           ; $4be2: $00

jr_0bc_4be3:
    push af                                       ; $4be3: $f5
    ld bc, $01ef                                  ; $4be4: $01 $ef $01
    db $10                                        ; $4be7: $10
    rst $18                                       ; $4be8: $df
    ld bc, $409f                                  ; $4be9: $01 $9f $40
    nop                                           ; $4bec: $00
    ld h, b                                       ; $4bed: $60
    add b                                         ; $4bee: $80
    ld [hl], b                                    ; $4bef: $70
    add b                                         ; $4bf0: $80
    ld de, $8076                                  ; $4bf1: $11 $76 $80
    ld l, a                                       ; $4bf4: $6f
    ld b, [hl]                                    ; $4bf5: $46
    nop                                           ; $4bf6: $00
    ld d, $80                                     ; $4bf7: $16 $80
    ld a, [bc]                                    ; $4bf9: $0a
    ld b, b                                       ; $4bfa: $40
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    ld bc, $1101                                  ; $4bfd: $01 $01 $11
    ld bc, $0119                                  ; $4c00: $01 $19 $01
    add hl, sp                                    ; $4c03: $39
    ld bc, $3d51                                  ; $4c04: $01 $51 $3d
    ld b, $00                                     ; $4c07: $06 $00
    sub a                                         ; $4c09: $97
    ld h, b                                       ; $4c0a: $60
    nop                                           ; $4c0b: $00
    inc bc                                        ; $4c0c: $03
    add b                                         ; $4c0d: $80
    ld sp, $003a                                  ; $4c0e: $31 $3a $00
    ld b, h                                       ; $4c11: $44
    add hl, sp                                    ; $4c12: $39
    ld h, [hl]                                    ; $4c13: $66
    nop                                           ; $4c14: $00
    rlca                                          ; $4c15: $07
    add b                                         ; $4c16: $80
    inc bc                                        ; $4c17: $03
    ld h, b                                       ; $4c18: $60
    db $10                                        ; $4c19: $10
    pop bc                                        ; $4c1a: $c1
    ld bc, $9905                                  ; $4c1b: $01 $05 $99
    ld bc, $01bd                                  ; $4c1e: $01 $bd $01
    sbc l                                         ; $4c21: $9d
    ld l, b                                       ; $4c22: $68
    nop                                           ; $4c23: $00
    pop af                                        ; $4c24: $f1
    add b                                         ; $4c25: $80
    ld b, b                                       ; $4c26: $40
    ld d, a                                       ; $4c27: $57
    ccf                                           ; $4c28: $3f
    adc d                                         ; $4c29: $8a
    nop                                           ; $4c2a: $00
    rrca                                          ; $4c2b: $0f
    add b                                         ; $4c2c: $80
    nop                                           ; $4c2d: $00
    db $fd                                        ; $4c2e: $fd
    add b                                         ; $4c2f: $80
    nop                                           ; $4c30: $00
    ld a, [hl]                                    ; $4c31: $7e
    ld [$001e], sp                                ; $4c32: $08 $1e $00
    adc c                                         ; $4c35: $89
    jr nz, @+$12                                  ; $4c36: $20 $10

    dec sp                                        ; $4c38: $3b
    add b                                         ; $4c39: $80
    dec a                                         ; $4c3a: $3d
    and b                                         ; $4c3b: $a0
    nop                                           ; $4c3c: $00
    rra                                           ; $4c3d: $1f
    add b                                         ; $4c3e: $80
    ld hl, sp+$03                                 ; $4c3f: $f8 $03
    jr nz, jr_0bc_4bc3                            ; $4c41: $20 $80

    ld b, a                                       ; $4c43: $47
    and b                                         ; $4c44: $a0
    nop                                           ; $4c45: $00
    cp a                                          ; $4c46: $bf
    ld bc, $017d                                  ; $4c47: $01 $7d $01
    ei                                            ; $4c4a: $fb
    or h                                          ; $4c4b: $b4
    and b                                         ; $4c4c: $a0
    nop                                           ; $4c4d: $00
    di                                            ; $4c4e: $f3
    xor b                                         ; $4c4f: $a8
    ld [$00c0], sp                                ; $4c50: $08 $c0 $00
    ld a, h                                       ; $4c53: $7c
    ld [bc], a                                    ; $4c54: $02
    nop                                           ; $4c55: $00
    ld a, l                                       ; $4c56: $7d
    add b                                         ; $4c57: $80
    ld d, b                                       ; $4c58: $50
    ld a, e                                       ; $4c59: $7b
    ret nz                                        ; $4c5a: $c0

    jr nc, jr_0bc_4c5e                            ; $4c5b: $30 $01

    ret nz                                        ; $4c5d: $c0

jr_0bc_4c5e:
    ld h, b                                       ; $4c5e: $60
    inc c                                         ; $4c5f: $0c
    add b                                         ; $4c60: $80
    jr jr_0bc_4be3                                ; $4c61: $18 $80

    ld b, c                                       ; $4c63: $41
    jr c, @-$7a                                   ; $4c64: $38 $84

    nop                                           ; $4c66: $00
    ld [hl], e                                    ; $4c67: $73
    add b                                         ; $4c68: $80
    ld [hl], a                                    ; $4c69: $77
    add b                                         ; $4c6a: $80
    ld [hl], a                                    ; $4c6b: $77
    ldh [rP1], a                                  ; $4c6c: $e0 $00
    nop                                           ; $4c6e: $00
    ld sp, $6701                                  ; $4c6f: $31 $01 $67
    ld bc, $01cf                                  ; $4c72: $01 $cf $01
    db $dd                                        ; $4c75: $dd
    ld bc, $b95c                                  ; $4c76: $01 $5c $b9
    ret z                                         ; $4c79: $c8

    nop                                           ; $4c7a: $00
    db $e3                                        ; $4c7b: $e3
    ei                                            ; $4c7c: $fb
    ld b, $02                                     ; $4c7d: $06 $02
    ld d, b                                       ; $4c7f: $50
    ld d, [hl]                                    ; $4c80: $56
    add hl, de                                    ; $4c81: $19
    cp $ff                                        ; $4c82: $fe $ff
    ld b, b                                       ; $4c84: $40
    xor $64                                       ; $4c85: $ee $64
    ld hl, $ff3a                                  ; $4c87: $21 $3a $ff
    dec a                                         ; $4c8a: $3d
    rst $38                                       ; $4c8b: $ff
    ld a, e                                       ; $4c8c: $7b
    rst $38                                       ; $4c8d: $ff
    ld b, a                                       ; $4c8e: $47
    scf                                           ; $4c8f: $37
    xor h                                         ; $4c90: $ac
    rlca                                          ; $4c91: $07
    ld a, $ff                                     ; $4c92: $3e $ff
    ld a, l                                       ; $4c94: $7d
    jr z, jr_0bc_4c9e                             ; $4c95: $28 $07

    xor h                                         ; $4c97: $ac
    rrca                                          ; $4c98: $0f
    inc b                                         ; $4c99: $04
    ld c, b                                       ; $4c9a: $48
    and $b8                                       ; $4c9b: $e6 $b8
    db $10                                        ; $4c9d: $10

jr_0bc_4c9e:
    ld a, $19                                     ; $4c9e: $3e $19
    and h                                         ; $4ca0: $a4
    nop                                           ; $4ca1: $00
    ld a, a                                       ; $4ca2: $7f
    ld a, a                                       ; $4ca3: $7f
    jr c, jr_0bc_4ccf                             ; $4ca4: $38 $29

    ld b, d                                       ; $4ca6: $42
    ld bc, $0af1                                  ; $4ca7: $01 $f1 $0a
    ld bc, $ffc1                                  ; $4caa: $01 $c1 $ff
    rst $38                                       ; $4cad: $ff
    cp h                                          ; $4cae: $bc
    jr nz, jr_0bc_4cc0                            ; $4caf: $20 $0f

    db $fc                                        ; $4cb1: $fc
    ld [$4180], sp                                ; $4cb2: $08 $80 $41
    ld bc, $0020                                  ; $4cb5: $01 $20 $00
    cp l                                          ; $4cb8: $bd
    ld bc, $01e9                                  ; $4cb9: $01 $e9 $01
    pop hl                                        ; $4cbc: $e1
    jp c, Jump_0bc_5100                           ; $4cbd: $da $00 $51

jr_0bc_4cc0:
    pop hl                                        ; $4cc0: $e1
    ld l, b                                       ; $4cc1: $68
    ld bc, $2081                                  ; $4cc2: $01 $81 $20
    nop                                           ; $4cc5: $00
    ld c, $80                                     ; $4cc6: $0e $80
    dec e                                         ; $4cc8: $1d
    add b                                         ; $4cc9: $80
    ld bc, $0d14                                  ; $4cca: $01 $14 $0d
    add b                                         ; $4ccd: $80
    dec b                                         ; $4cce: $05

jr_0bc_4ccf:
    jr nz, jr_0bc_4cf1                            ; $4ccf: $20 $20

    rst $28                                       ; $4cd1: $ef
    ld [bc], a                                    ; $4cd2: $02
    db $10                                        ; $4cd3: $10
    pop de                                        ; $4cd4: $d1
    ld bc, $610d                                  ; $4cd5: $01 $0d $61
    ld bc, $0181                                  ; $4cd8: $01 $81 $01
    ld a, a                                       ; $4cdb: $7f
    ld bc, $013c                                  ; $4cdc: $01 $3c $01
    ld a, l                                       ; $4cdf: $7d
    sbc [hl]                                      ; $4ce0: $9e
    ld bc, $131d                                  ; $4ce1: $01 $1d $13
    add b                                         ; $4ce4: $80
    ld bc, $0802                                  ; $4ce5: $01 $02 $08
    ld h, b                                       ; $4ce8: $60

jr_0bc_4ce9:
    nop                                           ; $4ce9: $00
    ld a, [hl-]                                   ; $4cea: $3a
    ld [$4481], sp                                ; $4ceb: $08 $81 $44
    ld de, $8157                                  ; $4cee: $11 $57 $81

jr_0bc_4cf1:
    ld b, b                                       ; $4cf1: $40
    db $10                                        ; $4cf2: $10
    rlca                                          ; $4cf3: $07
    ld [bc], a                                    ; $4cf4: $02
    db $10                                        ; $4cf5: $10
    inc bc                                        ; $4cf6: $03

jr_0bc_4cf7:
    ld h, [hl]                                    ; $4cf7: $66
    ld bc, $000a                                  ; $4cf8: $01 $0a $00
    jr nz, jr_0bc_4d1d                            ; $4cfb: $20 $20

    add sp, $5c                                   ; $4cfd: $e8 $5c
    ld [$2820], sp                                ; $4cff: $08 $20 $28
    sbc $09                                       ; $4d02: $de $09
    rra                                           ; $4d04: $1f
    ld b, d                                       ; $4d05: $42
    ld bc, $8039                                  ; $4d06: $01 $39 $80
    jr nc, jr_0bc_4d36                            ; $4d09: $30 $2b

    add b                                         ; $4d0b: $80
    nop                                           ; $4d0c: $00
    and b                                         ; $4d0d: $a0
    jr nc, jr_0bc_4cf7                            ; $4d0e: $30 $e7

    ld h, $10                                     ; $4d10: $26 $10
    pop hl                                        ; $4d12: $e1
    and b                                         ; $4d13: $a0
    nop                                           ; $4d14: $00
    ld hl, sp+$09                                 ; $4d15: $f8 $09
    ld b, $3e                                     ; $4d17: $06 $3e
    add b                                         ; $4d19: $80
    inc e                                         ; $4d1a: $1c
    add b                                         ; $4d1b: $80
    nop                                           ; $4d1c: $00

jr_0bc_4d1d:
    ld [bc], a                                    ; $4d1d: $02
    ld [$10c0], sp                                ; $4d1e: $08 $c0 $10
    rra                                           ; $4d21: $1f

Call_0bc_4d22:
    or l                                          ; $4d22: $b5
    ld [bc], a                                    ; $4d23: $02
    nop                                           ; $4d24: $00
    ccf                                           ; $4d25: $3f
    ld [bc], a                                    ; $4d26: $02
    jr jr_0bc_4ce9                                ; $4d27: $18 $c0

    nop                                           ; $4d29: $00
    ld l, [hl]                                    ; $4d2a: $6e
    jp c, Jump_000_3f01                           ; $4d2b: $da $01 $3f

    and h                                         ; $4d2e: $a4
    nop                                           ; $4d2f: $00
    push bc                                       ; $4d30: $c5
    ld [hl+], a                                   ; $4d31: $22
    db $10                                        ; $4d32: $10
    ldh [rP1], a                                  ; $4d33: $e0 $00
    rst $20                                       ; $4d35: $e7

jr_0bc_4d36:
    ld bc, $3ccd                                  ; $4d36: $01 $cd $3c
    ld bc, $e0d9                                  ; $4d39: $01 $d9 $e0
    ld bc, $311b                                  ; $4d3c: $01 $1b $31
    ld bc, $1b71                                  ; $4d3f: $01 $71 $1b
    ld d, $42                                     ; $4d42: $16 $42
    ld de, $3cfd                                  ; $4d44: $11 $fd $3c
    add hl, bc                                    ; $4d47: $09
    ld b, $00                                     ; $4d48: $06 $00
    rla                                           ; $4d4a: $17
    db $fc                                        ; $4d4b: $fc
    rst $38                                       ; $4d4c: $ff
    cp [hl]                                       ; $4d4d: $be
    ld e, d                                       ; $4d4e: $5a
    ld [bc], a                                    ; $4d4f: $02
    cp $ac                                        ; $4d50: $fe $ac
    inc bc                                        ; $4d52: $03
    and h                                         ; $4d53: $a4

jr_0bc_4d54:
    ld a, [de]                                    ; $4d54: $1a
    ld h, b                                       ; $4d55: $60
    ld l, $00                                     ; $4d56: $2e $00
    add hl, de                                    ; $4d58: $19
    rra                                           ; $4d59: $1f
    ld [hl], $39                                  ; $4d5a: $36 $39
    ld [hl], $39                                  ; $4d5c: $36 $39
    ld a, b                                       ; $4d5e: $78
    ld a, a                                       ; $4d5f: $7f
    nop                                           ; $4d60: $00
    rst $38                                       ; $4d61: $ff
    ld a, a                                       ; $4d62: $7f
    ld a, a                                       ; $4d63: $7f
    cp a                                          ; $4d64: $bf
    cp a                                          ; $4d65: $bf
    rst $18                                       ; $4d66: $df
    set 6, a                                      ; $4d67: $cb $f7
    inc de                                        ; $4d69: $13
    ld [c], a                                     ; $4d6a: $e2
    db $fd                                        ; $4d6b: $fd
    ld hl, sp-$48                                 ; $4d6c: $f8 $b8
    ld d, d                                       ; $4d6e: $52
    ld a, a                                       ; $4d6f: $7f
    rst $38                                       ; $4d70: $ff
    ld h, b                                       ; $4d71: $60
    ld c, [hl]                                    ; $4d72: $4e
    ld h, d                                       ; $4d73: $62
    ld c, $c0                                     ; $4d74: $0e $c0
    ld h, b                                       ; $4d76: $60
    ld e, $eb                                     ; $4d77: $1e $eb
    ld a, [bc]                                    ; $4d79: $0a
    or $f9                                        ; $4d7a: $f6 $f9
    db $dd                                        ; $4d7c: $dd
    db $e3                                        ; $4d7d: $e3
    ld [hl], e                                    ; $4d7e: $73
    adc a                                         ; $4d7f: $8f
    ld [bc], a                                    ; $4d80: $02
    adc [hl]                                      ; $4d81: $8e
    ld a, a                                       ; $4d82: $7f
    ld hl, sp-$01                                 ; $4d83: $f8 $ff
    pop bc                                        ; $4d85: $c1
    cp $60                                        ; $4d86: $fe $60
    ld e, $f8                                     ; $4d88: $1e $f8
    nop                                           ; $4d8a: $00
    ld hl, sp+$58                                 ; $4d8b: $f8 $58
    ld hl, sp+$2c                                 ; $4d8d: $f8 $2c
    db $fc                                        ; $4d8f: $fc
    sub h                                         ; $4d90: $94
    ld a, h                                       ; $4d91: $7c
    ld c, [hl]                                    ; $4d92: $4e
    ld a, [hl+]                                   ; $4d93: $2a
    cp [hl]                                       ; $4d94: $be
    ld [hl], a                                    ; $4d95: $77
    sbc h                                         ; $4d96: $9c
    ld b, $7f                                     ; $4d97: $06 $7f
    inc b                                         ; $4d99: $04
    jr nc, jr_0bc_4e1b                            ; $4d9a: $30 $7f

    call nc, $dc12                                ; $4d9c: $d4 $12 $dc
    cp a                                          ; $4d9f: $bf
    and [hl]                                      ; $4da0: $a6
    ld sp, $e07c                                  ; $4da1: $31 $7c $e0
    ld a, [bc]                                    ; $4da4: $0a
    ld [hl+], a                                   ; $4da5: $22
    add hl, bc                                    ; $4da6: $09
    ld e, d                                       ; $4da7: $5a
    ld [bc], a                                    ; $4da8: $02
    and $1a                                       ; $4da9: $e6 $1a
    ldh [rNR12], a                                ; $4dab: $e0 $12
    add b                                         ; $4dad: $80
    add hl, bc                                    ; $4dae: $09
    ld a, a                                       ; $4daf: $7f
    pop af                                        ; $4db0: $f1
    and $02                                       ; $4db1: $e6 $02
    ld b, b                                       ; $4db3: $40
    ld a, [de]                                    ; $4db4: $1a
    db $fc                                        ; $4db5: $fc
    ld [hl-], a                                   ; $4db6: $32
    ld b, b                                       ; $4db7: $40
    ld [hl-], a                                   ; $4db8: $32
    ld h, b                                       ; $4db9: $60
    add hl, de                                    ; $4dba: $19
    ld [hl+], a                                   ; $4dbb: $22
    ld [$0a60], sp                                ; $4dbc: $08 $60 $0a
    or c                                          ; $4dbf: $b1
    ld [bc], a                                    ; $4dc0: $02
    jr c, @+$05                                   ; $4dc1: $38 $03

    and b                                         ; $4dc3: $a0
    ld [de], a                                    ; $4dc4: $12
    call c, Call_000_390a                         ; $4dc5: $dc $0a $39
    ld bc, $4079                                  ; $4dc8: $01 $79 $40
    db $10                                        ; $4dcb: $10
    ld d, [hl]                                    ; $4dcc: $56

jr_0bc_4dcd:
    ld sp, hl                                     ; $4dcd: $f9
    ld b, b                                       ; $4dce: $40
    inc bc                                        ; $4dcf: $03
    jr c, jr_0bc_4d54                             ; $4dd0: $38 $82

    ld [bc], a                                    ; $4dd2: $02
    ld a, [hl]                                    ; $4dd3: $7e

jr_0bc_4dd4:
    and $29                                       ; $4dd4: $e6 $29
    jr nz, @+$35                                  ; $4dd6: $20 $33

    ld a, l                                       ; $4dd8: $7d
    adc a                                         ; $4dd9: $8f
    xor b                                         ; $4dda: $a8
    ld [bc], a                                    ; $4ddb: $02
    sbc a                                         ; $4ddc: $9f
    ld bc, $80df                                  ; $4ddd: $01 $df $80
    db $10                                        ; $4de0: $10
    ld a, [hl]                                    ; $4de1: $7e
    ld [$3880], sp                                ; $4de2: $08 $80 $38
    ld a, h                                       ; $4de5: $7c
    jr z, @+$01                                   ; $4de6: $28 $ff

    ld h, [hl]                                    ; $4de8: $66
    dec bc                                        ; $4de9: $0b
    ld h, b                                       ; $4dea: $60
    jr c, jr_0bc_4dcd                             ; $4deb: $38 $e0

    add hl, bc                                    ; $4ded: $09
    call nz, $8001                                ; $4dee: $c4 $01 $80
    inc bc                                        ; $4df1: $03

jr_0bc_4df2:
    ld e, h                                       ; $4df2: $5c
    ld [$08a0], sp                                ; $4df3: $08 $a0 $08
    and d                                         ; $4df6: $a2
    add hl, de                                    ; $4df7: $19
    rst $28                                       ; $4df8: $ef
    and b                                         ; $4df9: $a0
    dec de                                        ; $4dfa: $1b
    call nz, Call_0bc_4409                        ; $4dfb: $c4 $09 $44
    ld a, [bc]                                    ; $4dfe: $0a
    dec bc                                        ; $4dff: $0b
    and b                                         ; $4e00: $a0
    inc bc                                        ; $4e01: $03
    cp [hl]                                       ; $4e02: $be
    jr @+$06                                      ; $4e03: $18 $04

    jr @-$7e                                      ; $4e05: $18 $80

    ld [$dee8], sp                                ; $4e07: $08 $e8 $de
    jr jr_0bc_4df2                                ; $4e0a: $18 $e6

    jr nz, @-$7e                                  ; $4e0c: $20 $80

    inc de                                        ; $4e0e: $13
    ld h, c                                       ; $4e0f: $61
    ld b, b                                       ; $4e10: $40
    jr nz, jr_0bc_4dd4                            ; $4e11: $20 $c1

    ld bc, $0ab1                                  ; $4e13: $01 $b1 $0a
    ei                                            ; $4e16: $fb
    ccf                                           ; $4e17: $3f
    rst $30                                       ; $4e18: $f7
    ccf                                           ; $4e19: $3f
    inc b                                         ; $4e1a: $04

jr_0bc_4e1b:
    ld [$a2ef], sp                                ; $4e1b: $08 $ef $a2
    ld de, $b0ff                                  ; $4e1e: $11 $ff $b0
    and b                                         ; $4e21: $a0
    ld bc, $407e                                  ; $4e22: $01 $7e $40
    inc h                                         ; $4e25: $24
    jp z, Jump_0bc_711a                           ; $4e26: $ca $1a $71

    ld a, a                                       ; $4e29: $7f
    ld l, d                                       ; $4e2a: $6a
    ld [hl], a                                    ; $4e2b: $77
    nop                                           ; $4e2c: $00
    ld [hl], l                                    ; $4e2d: $75
    ld a, a                                       ; $4e2e: $7f
    ld l, e                                       ; $4e2f: $6b
    ld [hl], a                                    ; $4e30: $77
    ld [hl], a                                    ; $4e31: $77
    ld a, a                                       ; $4e32: $7f
    ld l, e                                       ; $4e33: $6b
    ld a, a                                       ; $4e34: $7f
    ld [hl], h                                    ; $4e35: $74
    ld [hl], a                                    ; $4e36: $77
    ldh [rNR21], a                                ; $4e37: $e0 $16
    add $0f                                       ; $4e39: $c6 $0f
    cp d                                          ; $4e3b: $ba
    ld c, $80                                     ; $4e3c: $0e $80
    ld c, [hl]                                    ; $4e3e: $4e
    rlca                                          ; $4e3f: $07
    ld [bc], a                                    ; $4e40: $02
    db $fd                                        ; $4e41: $fd
    add b                                         ; $4e42: $80
    jp nc, $ff07                                  ; $4e43: $d2 $07 $ff

    dec b                                         ; $4e46: $05
    ld a, [$fd02]                                 ; $4e47: $fa $02 $fd
    dec d                                         ; $4e4a: $15
    ld [$ab00], a                                 ; $4e4b: $ea $00 $ab
    ld d, h                                       ; $4e4e: $54
    ld d, a                                       ; $4e4f: $57
    xor b                                         ; $4e50: $a8
    xor a                                         ; $4e51: $af
    ld d, b                                       ; $4e52: $50
    ld a, [bc]                                    ; $4e53: $0a
    push af                                       ; $4e54: $f5
    nop                                           ; $4e55: $00
    ld d, l                                       ; $4e56: $55
    xor d                                         ; $4e57: $aa
    cpl                                           ; $4e58: $2f
    ret nc                                        ; $4e59: $d0

    db $fd                                        ; $4e5a: $fd
    ld [bc], a                                    ; $4e5b: $02
    cp $07                                        ; $4e5c: $fe $07
    nop                                           ; $4e5e: $00
    cp a                                          ; $4e5f: $bf
    ld b, a                                       ; $4e60: $47
    db $db                                        ; $4e61: $db
    rst $20                                       ; $4e62: $e7
    ld sp, hl                                     ; $4e63: $f9
    rst $20                                       ; $4e64: $e7
    and [hl]                                      ; $4e65: $a6
    ld e, [hl]                                    ; $4e66: $5e
    nop                                           ; $4e67: $00
    ld d, d                                       ; $4e68: $52
    xor [hl]                                      ; $4e69: $ae
    xor d                                         ; $4e6a: $aa
    ld d, [hl]                                    ; $4e6b: $56
    jp nc, $ea2e                                  ; $4e6c: $d2 $2e $ea

    ld d, $01                                     ; $4e6f: $16 $01
    ld a, [c]                                     ; $4e71: $f2
    ld c, $6a                                     ; $4e72: $0e $6a
    sub [hl]                                      ; $4e74: $96
    ld a, [c]                                     ; $4e75: $f2
    adc [hl]                                      ; $4e76: $8e
    ld a, [hl]                                    ; $4e77: $7e
    ld h, $03                                     ; $4e78: $26 $03
    pop af                                        ; $4e7a: $f1
    adc b                                         ; $4e7b: $88
    add hl, bc                                    ; $4e7c: $09
    ld h, h                                       ; $4e7d: $64
    rrca                                          ; $4e7e: $0f
    ld l, b                                       ; $4e7f: $68
    rrca                                          ; $4e80: $0f
    ld e, h                                       ; $4e81: $5c
    ld b, c                                       ; $4e82: $41
    rra                                           ; $4e83: $1f
    add b                                         ; $4e84: $80
    ld b, d                                       ; $4e85: $42
    jr nz, jr_0bc_4ecb                            ; $4e86: $20 $43

    rst $30                                       ; $4e88: $f7
    ld [hl+], a                                   ; $4e89: $22
    dec bc                                        ; $4e8a: $0b
    ld b, b                                       ; $4e8b: $40
    ld [bc], a                                    ; $4e8c: $02
    jp c, $c213                                   ; $4e8d: $da $13 $c2

    ld a, [de]                                    ; $4e90: $1a
    ld bc, $42a0                                  ; $4e91: $01 $a0 $42
    ld b, b                                       ; $4e94: $40
    dec bc                                        ; $4e95: $0b
    ld e, $0c                                     ; $4e96: $1e $0c
    rst $38                                       ; $4e98: $ff
    jr nz, jr_0bc_4ea3                            ; $4e99: $20 $08

    sbc d                                         ; $4e9b: $9a
    inc e                                         ; $4e9c: $1c
    ld b, [hl]                                    ; $4e9d: $46
    inc de                                        ; $4e9e: $13
    nop                                           ; $4e9f: $00
    inc de                                        ; $4ea0: $13
    ld [c], a                                     ; $4ea1: $e2
    ld a, [hl+]                                   ; $4ea2: $2a

jr_0bc_4ea3:
    jr nz, @+$1d                                  ; $4ea3: $20 $1b

    jr c, jr_0bc_4eaf                             ; $4ea5: $38 $08

    inc e                                         ; $4ea7: $1c
    dec bc                                        ; $4ea8: $0b
    xor e                                         ; $4ea9: $ab
    ret nz                                        ; $4eaa: $c0

    ld a, [hl+]                                   ; $4eab: $2a
    rst $08                                       ; $4eac: $cf
    ld b, d                                       ; $4ead: $42
    inc de                                        ; $4eae: $13

jr_0bc_4eaf:
    rst $20                                       ; $4eaf: $e7
    ld [bc], a                                    ; $4eb0: $02
    db $10                                        ; $4eb1: $10
    db $e3                                        ; $4eb2: $e3
    add b                                         ; $4eb3: $80
    ld d, b                                       ; $4eb4: $50
    add d                                         ; $4eb5: $82
    nop                                           ; $4eb6: $00
    ei                                            ; $4eb7: $fb
    add b                                         ; $4eb8: $80
    ld d, b                                       ; $4eb9: $50
    and h                                         ; $4eba: $a4
    inc bc                                        ; $4ebb: $03
    jr nz, @+$25                                  ; $4ebc: $20 $23

    jp nz, $620b                                  ; $4ebe: $c2 $0b $62

    inc c                                         ; $4ec1: $0c
    ld c, $c0                                     ; $4ec2: $0e $c0
    inc bc                                        ; $4ec4: $03
    ld e, d                                       ; $4ec5: $5a
    inc hl                                        ; $4ec6: $23
    ld a, [$04c6]                                 ; $4ec7: $fa $c6 $04
    ret                                           ; $4eca: $c9


jr_0bc_4ecb:
    inc b                                         ; $4ecb: $04
    ld b, b                                       ; $4ecc: $40
    inc de                                        ; $4ecd: $13
    cp h                                          ; $4ece: $bc
    inc hl                                        ; $4ecf: $23
    add b                                         ; $4ed0: $80
    inc hl                                        ; $4ed1: $23
    ld sp, hl                                     ; $4ed2: $f9
    ret nz                                        ; $4ed3: $c0

    inc bc                                        ; $4ed4: $03
    pop de                                        ; $4ed5: $d1
    rst $30                                       ; $4ed6: $f7
    ld h, d                                       ; $4ed7: $62
    inc hl                                        ; $4ed8: $23

jr_0bc_4ed9:
    ldh [$0b], a                                  ; $4ed9: $e0 $0b
    ret c                                         ; $4edb: $d8

    dec bc                                        ; $4edc: $0b
    add d                                         ; $4edd: $82
    add hl, hl                                    ; $4ede: $29
    inc bc                                        ; $4edf: $03
    jr nz, @+$12                                  ; $4ee0: $20 $10

    cp b                                          ; $4ee2: $b8
    inc c                                         ; $4ee3: $0c
    and h                                         ; $4ee4: $a4
    dec bc                                        ; $4ee5: $0b
    sub $a0                                       ; $4ee6: $d6 $a0
    inc de                                        ; $4ee8: $13
    jr jr_0bc_4ef6                                ; $4ee9: $18 $0b

    rst $28                                       ; $4eeb: $ef
    ld h, h                                       ; $4eec: $64
    ld b, h                                       ; $4eed: $44
    ld [hl], a                                    ; $4eee: $77
    jr nc, @+$09                                  ; $4eef: $30 $07

    ld l, $0f                                     ; $4ef1: $2e $0f
    dec sp                                        ; $4ef3: $3b
    ld [hl+], a                                   ; $4ef4: $22
    ccf                                           ; $4ef5: $3f

jr_0bc_4ef6:
    rra                                           ; $4ef6: $1f
    ld bc, $0f00                                  ; $4ef7: $01 $00 $0f
    rrca                                          ; $4efa: $0f
    push af                                       ; $4efb: $f5
    ld a, [hl+]                                   ; $4efc: $2a
    rlca                                          ; $4efd: $07
    db $f4                                        ; $4efe: $f4
    jp nz, $0652                                  ; $4eff: $c2 $52 $06

    inc b                                         ; $4f02: $04
    jr z, @+$03                                   ; $4f03: $28 $01

    cp $0a                                        ; $4f05: $fe $0a
    push af                                       ; $4f07: $f5
    inc b                                         ; $4f08: $04
    ld c, b                                       ; $4f09: $48
    ld e, a                                       ; $4f0a: $5f
    ld [de], a                                    ; $4f0b: $12
    and b                                         ; $4f0c: $a0
    cp a                                          ; $4f0d: $bf
    ld b, b                                       ; $4f0e: $40
    inc b                                         ; $4f0f: $04
    ld [$807f], sp                                ; $4f10: $08 $7f $80
    inc b                                         ; $4f13: $04
    jr jr_0bc_4f80                                ; $4f14: $18 $6a

    nop                                           ; $4f16: $00
    rst $30                                       ; $4f17: $f7
    ld a, l                                       ; $4f18: $7d
    rst $38                                       ; $4f19: $ff
    cp [hl]                                       ; $4f1a: $be
    ld a, a                                       ; $4f1b: $7f
    add c                                         ; $4f1c: $81
    ld a, [hl]                                    ; $4f1d: $7e
    jp Jump_000_3c40                              ; $4f1e: $c3 $40 $3c


    db $db                                        ; $4f21: $db
    rra                                           ; $4f22: $1f
    ld [$7296], a                                 ; $4f23: $ea $96 $72
    adc [hl]                                      ; $4f26: $8e
    db $ec                                        ; $4f27: $ec
    inc d                                         ; $4f28: $14
    nop                                           ; $4f29: $00
    call nc, $e42c                                ; $4f2a: $d4 $2c $e4
    inc e                                         ; $4f2d: $1c
    ret z                                         ; $4f2e: $c8

    jr c, jr_0bc_4ed9                             ; $4f2f: $38 $a8

    ld e, b                                       ; $4f31: $58
    dec sp                                        ; $4f32: $3b
    ld d, b                                       ; $4f33: $50
    or b                                          ; $4f34: $b0
    ld a, b                                       ; $4f35: $78
    add hl, hl                                    ; $4f36: $29
    add b                                         ; $4f37: $80
    add hl, hl                                    ; $4f38: $29
    sub b                                         ; $4f39: $90
    rlca                                          ; $4f3a: $07
    cp $13                                        ; $4f3b: $fe $13
    ld b, a                                       ; $4f3d: $47
    dec [hl]                                      ; $4f3e: $35
    rra                                           ; $4f3f: $1f
    push hl                                       ; $4f40: $e5
    ld de, $0048                                  ; $4f41: $11 $48 $00
    dec c                                         ; $4f44: $0d
    ld a, b                                       ; $4f45: $78
    ld d, e                                       ; $4f46: $53
    ld hl, sp-$02                                 ; $4f47: $f8 $fe
    inc b                                         ; $4f49: $04
    ld c, b                                       ; $4f4a: $48
    nop                                           ; $4f4b: $00
    ret nc                                        ; $4f4c: $d0

    dec b                                         ; $4f4d: $05
    nop                                           ; $4f4e: $00
    ld c, $0f                                     ; $4f4f: $0e $0f
    scf                                           ; $4f51: $37
    jr c, jr_0bc_4fb0                             ; $4f52: $38 $5c

    ld h, e                                       ; $4f54: $63
    or l                                          ; $4f55: $b5
    rst $08                                       ; $4f56: $cf
    db $10                                        ; $4f57: $10
    ld l, e                                       ; $4f58: $6b
    sbc a                                         ; $4f59: $9f
    rst $10                                       ; $4f5a: $d7
    add sp, $07                                   ; $4f5b: $e8 $07
    set 6, h                                      ; $4f5d: $cb $f4
    ret nz                                        ; $4f5f: $c0

    ccf                                           ; $4f60: $3f
    ld b, b                                       ; $4f61: $40
    ld e, a                                       ; $4f62: $5f
    xor b                                         ; $4f63: $a8
    dec sp                                        ; $4f64: $3b
    db $fc                                        ; $4f65: $fc
    di                                            ; $4f66: $f3
    rrca                                          ; $4f67: $0f
    dec b                                         ; $4f68: $05
    ld a, [$f4f5]                                 ; $4f69: $fa $f5 $f4
    and h                                         ; $4f6c: $a4
    ld c, [hl]                                    ; $4f6d: $4e
    db $fc                                        ; $4f6e: $fc
    ld hl, $1b98                                  ; $4f6f: $21 $98 $1b
    ld d, b                                       ; $4f72: $50
    ld c, b                                       ; $4f73: $48
    ld hl, sp+$5c                                 ; $4f74: $f8 $5c
    nop                                           ; $4f76: $00
    ld [bc], a                                    ; $4f77: $02
    inc bc                                        ; $4f78: $03
    nop                                           ; $4f79: $00
    inc bc                                        ; $4f7a: $03
    ld [bc], a                                    ; $4f7b: $02
    dec [hl]                                      ; $4f7c: $35
    ld [hl], $5d                                  ; $4f7d: $36 $5d
    ld l, [hl]                                    ; $4f7f: $6e

jr_0bc_4f80:
    ld h, l                                       ; $4f80: $65
    ld e, [hl]                                    ; $4f81: $5e
    nop                                           ; $4f82: $00
    dec a                                         ; $4f83: $3d
    ld a, $07                                     ; $4f84: $3e $07
    ld b, $06                                     ; $4f86: $06 $06
    rlca                                          ; $4f88: $07
    xor a                                         ; $4f89: $af
    ld a, a                                       ; $4f8a: $7f
    ld h, b                                       ; $4f8b: $60
    ld e, a                                       ; $4f8c: $5f
    ld a, [hl]                                    ; $4f8d: $7e

jr_0bc_4f8e:
    rla                                           ; $4f8e: $17
    add d                                         ; $4f8f: $82
    rra                                           ; $4f90: $1f
    ld a, a                                       ; $4f91: $7f
    rst $38                                       ; $4f92: $ff
    ret nz                                        ; $4f93: $c0

    ld b, b                                       ; $4f94: $40
    and b                                         ; $4f95: $a0
    nop                                           ; $4f96: $00
    ld h, b                                       ; $4f97: $60
    db $ec                                        ; $4f98: $ec
    inc l                                         ; $4f99: $2c
    ld a, [$a636]                                 ; $4f9a: $fa $36 $a6
    ld a, d                                       ; $4f9d: $7a
    db $fc                                        ; $4f9e: $fc
    dec b                                         ; $4f9f: $05
    inc a                                         ; $4fa0: $3c
    ldh [rNR41], a                                ; $4fa1: $e0 $20
    and b                                         ; $4fa3: $a0
    ld h, b                                       ; $4fa4: $60
    call c, $7f03                                 ; $4fa5: $dc $03 $7f
    inc b                                         ; $4fa8: $04
    jr z, jr_0bc_4f8e                             ; $4fa9: $28 $e3

    xor e                                         ; $4fab: $ab
    dec b                                         ; $4fac: $05
    inc b                                         ; $4fad: $04
    inc b                                         ; $4fae: $04
    ld c, b                                       ; $4faf: $48

jr_0bc_4fb0:
    nop                                           ; $4fb0: $00
    cp $f0                                        ; $4fb1: $fe $f0
    db $fc                                        ; $4fb3: $fc
    inc b                                         ; $4fb4: $04
    jr z, jr_0bc_5017                             ; $4fb5: $28 $60

    inc e                                         ; $4fb7: $1c
    nop                                           ; $4fb8: $00
    dec de                                        ; $4fb9: $1b
    rra                                           ; $4fba: $1f
    dec d                                         ; $4fbb: $15
    rra                                           ; $4fbc: $1f
    dec sp                                        ; $4fbd: $3b
    ccf                                           ; $4fbe: $3f
    ld sp, $003f                                  ; $4fbf: $31 $3f $00
    ld h, e                                       ; $4fc2: $63
    ld a, a                                       ; $4fc3: $7f
    cp a                                          ; $4fc4: $bf
    ld a, a                                       ; $4fc5: $7f
    ld e, a                                       ; $4fc6: $5f
    cp a                                          ; $4fc7: $bf
    or a                                          ; $4fc8: $b7
    rst $08                                       ; $4fc9: $cf
    inc c                                         ; $4fca: $0c
    call z, $e3f3                                 ; $4fcb: $cc $f3 $e3
    db $fc                                        ; $4fce: $fc
    add hl, bc                                    ; $4fcf: $09
    rlca                                          ; $4fd0: $07
    sbc d                                         ; $4fd1: $9a
    scf                                           ; $4fd2: $37
    ld a, a                                       ; $4fd3: $7f
    rst $38                                       ; $4fd4: $ff
    dec bc                                        ; $4fd5: $0b
    ret nc                                        ; $4fd6: $d0

    cpl                                           ; $4fd7: $2f
    ld a, a                                       ; $4fd8: $7f
    add b                                         ; $4fd9: $80
    ld h, b                                       ; $4fda: $60
    inc a                                         ; $4fdb: $3c
    cp $d4                                        ; $4fdc: $fe $d4
    ld [bc], a                                    ; $4fde: $02
    ld h, b                                       ; $4fdf: $60
    inc e                                         ; $4fe0: $1c
    nop                                           ; $4fe1: $00
    db $fd                                        ; $4fe2: $fd
    cp $fb                                        ; $4fe3: $fe $fb
    db $fc                                        ; $4fe5: $fc
    and $f9                                       ; $4fe6: $e6 $f9
    dec a                                         ; $4fe8: $3d
    jp $f300                                      ; $4fe9: $c3 $00 $f3


    rrca                                          ; $4fec: $0f
    adc a                                         ; $4fed: $8f
    ld a, a                                       ; $4fee: $7f
    cp $ff                                        ; $4fef: $fe $ff
    ld hl, sp-$01                                 ; $4ff1: $f8 $ff
    add b                                         ; $4ff3: $80
    ld h, b                                       ; $4ff4: $60
    inc e                                         ; $4ff5: $1c
    ret c                                         ; $4ff6: $d8

    ld hl, sp-$58                                 ; $4ff7: $f8 $a8
    ld hl, sp+$14                                 ; $4ff9: $f8 $14
    db $fc                                        ; $4ffb: $fc
    inc c                                         ; $4ffc: $0c
    ld [$a6fc], sp                                ; $4ffd: $08 $fc $a6
    ld e, [hl]                                    ; $5000: $5e
    nop                                           ; $5001: $00
    ld bc, $0760                                  ; $5002: $01 $60 $07
    rlca                                          ; $5005: $07
    ld [$0f00], sp                                ; $5006: $08 $00 $0f
    dec de                                        ; $5009: $1b
    inc e                                         ; $500a: $1c
    inc h                                         ; $500b: $24
    dec sp                                        ; $500c: $3b
    ld d, d                                       ; $500d: $52
    ld l, a                                       ; $500e: $6f
    xor h                                         ; $500f: $ac
    nop                                           ; $5010: $00
    rst $18                                       ; $5011: $df
    sub e                                         ; $5012: $93
    db $fc                                        ; $5013: $fc
    call nc, $00fb                                ; $5014: $d4 $fb $00

jr_0bc_5017:
    nop                                           ; $5017: $00
    ret nz                                        ; $5018: $c0

    nop                                           ; $5019: $00
    ret nz                                        ; $501a: $c0

    jr c, @-$06                                   ; $501b: $38 $f8

    sub h                                         ; $501d: $94
    db $ec                                        ; $501e: $ec
    ld a, [hl+]                                   ; $501f: $2a
    or $86                                        ; $5020: $f6 $86
    nop                                           ; $5022: $00
    ld a, d                                       ; $5023: $7a
    jp nc, $c63e                                  ; $5024: $d2 $3e $c6

    ld a, [hl-]                                   ; $5027: $3a
    inc b                                         ; $5028: $04
    dec b                                         ; $5029: $05
    ld c, $00                                     ; $502a: $0e $00
    dec bc                                        ; $502c: $0b
    rla                                           ; $502d: $17
    add hl, de                                    ; $502e: $19
    dec bc                                        ; $502f: $0b
    dec c                                         ; $5030: $0d
    dec h                                         ; $5031: $25
    daa                                           ; $5032: $27
    ld [hl], e                                    ; $5033: $73
    nop                                           ; $5034: $00
    ld d, e                                       ; $5035: $53
    cp c                                          ; $5036: $b9
    ret                                           ; $5037: $c9


    ld e, c                                       ; $5038: $59
    ld l, c                                       ; $5039: $69
    nop                                           ; $503a: $00
    nop                                           ; $503b: $00
    jr nz, jr_0bc_503e                            ; $503c: $20 $00

jr_0bc_503e:
    jr nz, jr_0bc_50b0                            ; $503e: $20 $70

    ld d, b                                       ; $5040: $50
    add sp, -$68                                  ; $5041: $e8 $98
    call nc, $aeb4                                ; $5043: $d4 $b4 $ae
    nop                                           ; $5046: $00
    ld [$d3dd], a                                 ; $5047: $ea $dd $d3
    ld a, [de]                                    ; $504a: $1a
    sub [hl]                                      ; $504b: $96
    jr nz, jr_0bc_504e                            ; $504c: $20 $00

jr_0bc_504e:
    ld h, b                                       ; $504e: $60
    nop                                           ; $504f: $00
    jr nz, @+$52                                  ; $5050: $20 $50

    ld [hl], b                                    ; $5052: $70
    sub [hl]                                      ; $5053: $96
    ld a, [c]                                     ; $5054: $f2
    ld l, l                                       ; $5055: $6d
    ld h, a                                       ; $5056: $67
    add hl, de                                    ; $5057: $19
    inc b                                         ; $5058: $04
    rra                                           ; $5059: $1f
    ld d, $16                                     ; $505a: $16 $16
    ld a, [bc]                                    ; $505c: $0a
    ld a, [bc]                                    ; $505d: $0a
    ld h, b                                       ; $505e: $60
    ld [$0010], sp                                ; $505f: $08 $10 $00
    nop                                           ; $5062: $00
    jr jr_0bc_5075                                ; $5063: $18 $10

    jr z, jr_0bc_509f                             ; $5065: $28 $38

    inc h                                         ; $5067: $24
    inc a                                         ; $5068: $3c
    jr jr_0bc_5083                                ; $5069: $18 $18

    nop                                           ; $506b: $00
    sub [hl]                                      ; $506c: $96
    inc d                                         ; $506d: $14
    ld bc, $0301                                  ; $506e: $01 $01 $03
    ld [bc], a                                    ; $5071: $02
    ld sp, $0031                                  ; $5072: $31 $31 $00

jr_0bc_5075:
    ld a, c                                       ; $5075: $79
    ld c, c                                       ; $5076: $49
    add hl, sp                                    ; $5077: $39
    add hl, hl                                    ; $5078: $29
    dec de                                        ; $5079: $1b
    rra                                           ; $507a: $1f
    rlca                                          ; $507b: $07
    inc b                                         ; $507c: $04
    nop                                           ; $507d: $00
    inc bc                                        ; $507e: $03
    ld [bc], a                                    ; $507f: $02
    add b                                         ; $5080: $80
    add b                                         ; $5081: $80
    ret nz                                        ; $5082: $c0

jr_0bc_5083:
    ld b, b                                       ; $5083: $40
    ret nz                                        ; $5084: $c0

    ld b, b                                       ; $5085: $40
    nop                                           ; $5086: $00
    sbc b                                         ; $5087: $98
    sbc b                                         ; $5088: $98
    inc a                                         ; $5089: $3c
    and h                                         ; $508a: $a4
    inc e                                         ; $508b: $1c
    sub h                                         ; $508c: $94
    add sp, -$08                                  ; $508d: $e8 $f8
    nop                                           ; $508f: $00
    ldh a, [$90]                                  ; $5090: $f0 $90
    inc d                                         ; $5092: $14
    inc e                                         ; $5093: $1c
    rrca                                          ; $5094: $0f
    dec bc                                        ; $5095: $0b
    ld a, [de]                                    ; $5096: $1a
    dec e                                         ; $5097: $1d
    nop                                           ; $5098: $00
    ld l, $31                                     ; $5099: $2e $31
    ld e, a                                       ; $509b: $5f
    ld h, b                                       ; $509c: $60
    inc sp                                        ; $509d: $33
    inc a                                         ; $509e: $3c

jr_0bc_509f:
    rrca                                          ; $509f: $0f
    ld [$0900], sp                                ; $50a0: $08 $00 $09
    ld c, $cc                                     ; $50a3: $0e $cc
    call z, $fc34                                 ; $50a5: $cc $34 $fc
    ret z                                         ; $50a8: $c8

    jr c, jr_0bc_50ab                             ; $50a9: $38 $00

jr_0bc_50ab:
    ld [$f616], a                                 ; $50ab: $ea $16 $f6
    ld c, $e8                                     ; $50ae: $0e $e8

jr_0bc_50b0:
    jr @-$0e                                      ; $50b0: $18 $f0

    stop                                          ; $50b2: $10 $00
    ld d, b                                       ; $50b4: $50
    or b                                          ; $50b5: $b0
    ld sp, $3b31                                  ; $50b6: $31 $31 $3b
    ld a, [hl+]                                   ; $50b9: $2a
    dec a                                         ; $50ba: $3d
    dec h                                         ; $50bb: $25
    nop                                           ; $50bc: $00
    ccf                                           ; $50bd: $3f
    inc sp                                        ; $50be: $33
    rla                                           ; $50bf: $17
    dec d                                         ; $50c0: $15
    ld e, e                                       ; $50c1: $5b
    ld e, c                                       ; $50c2: $59
    db $fd                                        ; $50c3: $fd
    cp h                                          ; $50c4: $bc
    nop                                           ; $50c5: $00
    ld b, a                                       ; $50c6: $47
    ld b, [hl]                                    ; $50c7: $46
    ld c, $0e                                     ; $50c8: $0e $0e
    cp [hl]                                       ; $50ca: $be
    or [hl]                                       ; $50cb: $b6
    ld a, h                                       ; $50cc: $7c
    ld c, h                                       ; $50cd: $4c
    nop                                           ; $50ce: $00
    ld [$ff8a], a                                 ; $50cf: $ea $8a $ff
    sbc l                                         ; $50d2: $9d
    jp nc, $f812                                  ; $50d3: $d2 $12 $f8

    jr c, jr_0bc_50d8                             ; $50d6: $38 $00

jr_0bc_50d8:
    db $fc                                        ; $50d8: $fc
    inc b                                         ; $50d9: $04
    jr nc, jr_0bc_510c                            ; $50da: $30 $30

    ld c, h                                       ; $50dc: $4c
    ld a, h                                       ; $50dd: $7c
    sub h                                         ; $50de: $94
    db $ec                                        ; $50df: $ec
    nop                                           ; $50e0: $00
    db $ed                                        ; $50e1: $ed
    sbc l                                         ; $50e2: $9d
    xor d                                         ; $50e3: $aa
    db $db                                        ; $50e4: $db
    db $ed                                        ; $50e5: $ed
    sbc [hl]                                      ; $50e6: $9e
    xor e                                         ; $50e7: $ab
    call c, $b620                                 ; $50e8: $dc $20 $b6
    ret                                           ; $50eb: $c9


    ldh [$08], a                                  ; $50ec: $e0 $08
    ld hl, sp-$08                                 ; $50ee: $f8 $f8
    inc [hl]                                      ; $50f0: $34
    call z, $00fa                                 ; $50f1: $cc $fa $00
    ld b, $cd                                     ; $50f4: $06 $cd
    inc sp                                        ; $50f6: $33
    ld d, l                                       ; $50f7: $55
    ei                                            ; $50f8: $fb
    db $ed                                        ; $50f9: $ed
    di                                            ; $50fa: $f3
    ld [bc], a                                    ; $50fb: $02
    nop                                           ; $50fc: $00
    ld b, $0c                                     ; $50fd: $06 $0c
    inc b                                         ; $50ff: $04

Jump_0bc_5100:
    jr @+$0a                                      ; $5100: $18 $08

    jr c, @+$1a                                   ; $5102: $38 $18

    ld sp, $1001                                  ; $5104: $31 $01 $10
    ld [hl], e                                    ; $5107: $73
    ld sp, $3377                                  ; $5108: $31 $77 $33
    inc sp                                        ; $510b: $33

jr_0bc_510c:
    ld [hl], a                                    ; $510c: $77
    sbc [hl]                                      ; $510d: $9e
    nop                                           ; $510e: $00
    nop                                           ; $510f: $00
    jr nc, jr_0bc_5133                            ; $5110: $30 $21

    ld h, a                                       ; $5112: $67
    add $4e                                       ; $5113: $c6 $4e
    call c, $b8cc                                 ; $5115: $dc $cc $b8
    nop                                           ; $5118: $00
    sbc b                                         ; $5119: $98
    ld [hl], b                                    ; $511a: $70
    ld sp, $63e1                                  ; $511b: $31 $e1 $63
    ld b, a                                       ; $511e: $47
    ld a, a                                       ; $511f: $7f
    ld h, d                                       ; $5120: $62
    ld [bc], a                                    ; $5121: $02
    ld a, a                                       ; $5122: $7f
    ld b, a                                       ; $5123: $47
    ld a, a                                       ; $5124: $7f
    ld l, [hl]                                    ; $5125: $6e
    ld a, a                                       ; $5126: $7f
    ld b, l                                       ; $5127: $45
    inc b                                         ; $5128: $04
    jr nz, jr_0bc_5180                            ; $5129: $20 $55

    nop                                           ; $512b: $00
    rst $38                                       ; $512c: $ff
    add d                                         ; $512d: $82
    rst $38                                       ; $512e: $ff
    db $10                                        ; $512f: $10
    rst $28                                       ; $5130: $ef
    jr z, @-$27                                   ; $5131: $28 $d7

jr_0bc_5133:
    ld de, $ee00                                  ; $5133: $11 $00 $ee
    ld [hl+], a                                   ; $5136: $22
    db $dd                                        ; $5137: $dd
    ld d, c                                       ; $5138: $51
    xor [hl]                                      ; $5139: $ae
    ld [hl+], a                                   ; $513a: $22
    db $dd                                        ; $513b: $dd
    rst $38                                       ; $513c: $ff
    inc e                                         ; $513d: $1c
    rst $38                                       ; $513e: $ff
    xor d                                         ; $513f: $aa
    rst $38                                       ; $5140: $ff
    inc l                                         ; $5141: $2c
    inc c                                         ; $5142: $0c
    or h                                          ; $5143: $b4
    ld a, [de]                                    ; $5144: $1a
    ld l, h                                       ; $5145: $6c
    ld a, [bc]                                    ; $5146: $0a
    xor d                                         ; $5147: $aa
    rst $38                                       ; $5148: $ff
    ld [$ab54], sp                                ; $5149: $08 $54 $ab
    ld a, [$ae05]                                 ; $514c: $fa $05 $ae
    ld a, [de]                                    ; $514f: $1a
    rst $38                                       ; $5150: $ff
    nop                                           ; $5151: $00
    ld d, l                                       ; $5152: $55
    nop                                           ; $5153: $00
    ld a, [$fc03]                                 ; $5154: $fa $03 $fc
    rlca                                          ; $5157: $07
    ld hl, sp-$5d                                 ; $5158: $f8 $a3
    ld e, h                                       ; $515a: $5c
    ld d, l                                       ; $515b: $55
    nop                                           ; $515c: $00
    xor d                                         ; $515d: $aa
    xor d                                         ; $515e: $aa
    ld d, l                                       ; $515f: $55
    pop de                                        ; $5160: $d1
    ld l, $e8                                     ; $5161: $2e $e8
    rla                                           ; $5163: $17
    jp c, $2e00                                   ; $5164: $da $00 $2e

    and $1e                                       ; $5167: $e6 $1e
    ld a, [$e60e]                                 ; $5169: $fa $0e $e6
    ld e, $f2                                     ; $516c: $1e $f2
    add b                                         ; $516e: $80
    inc b                                         ; $516f: $04
    nop                                           ; $5170: $00
    ld c, d                                       ; $5171: $4a
    cp [hl]                                       ; $5172: $be
    ld b, $fe                                     ; $5173: $06 $fe
    ld a, c                                       ; $5175: $79
    ld a, [hl]                                    ; $5176: $7e
    inc a                                         ; $5177: $3c
    nop                                           ; $5178: $00
    ccf                                           ; $5179: $3f
    daa                                           ; $517a: $27
    ccf                                           ; $517b: $3f
    ld b, e                                       ; $517c: $43
    ld a, a                                       ; $517d: $7f
    ld h, l                                       ; $517e: $65
    ld a, d                                       ; $517f: $7a

jr_0bc_5180:
    ld [hl-], a                                   ; $5180: $32
    jr nz, jr_0bc_51c0                            ; $5181: $20 $3d

    inc e                                         ; $5183: $1c
    jr nz, jr_0bc_5189                            ; $5184: $20 $03

    ld de, $6dff                                  ; $5186: $11 $ff $6d

jr_0bc_5189:
    di                                            ; $5189: $f3
    ld e, e                                       ; $518a: $5b
    nop                                           ; $518b: $00
    rst $20                                       ; $518c: $e7
    and [hl]                                      ; $518d: $a6
    sbc $1c                                       ; $518e: $de $1c
    db $fc                                        ; $5190: $fc
    or b                                          ; $5191: $b0
    ld [hl], b                                    ; $5192: $70
    ld b, b                                       ; $5193: $40
    nop                                           ; $5194: $00
    ret nz                                        ; $5195: $c0

    add b                                         ; $5196: $80
    add b                                         ; $5197: $80
    dec a                                         ; $5198: $3d
    dec [hl]                                      ; $5199: $35
    cpl                                           ; $519a: $2f
    inc sp                                        ; $519b: $33
    rla                                           ; $519c: $17
    ld bc, $0b1b                                  ; $519d: $01 $1b $0b
    rrca                                          ; $51a0: $0f
    rlca                                          ; $51a1: $07
    rlca                                          ; $51a2: $07
    inc bc                                        ; $51a3: $03
    inc bc                                        ; $51a4: $03
    and h                                         ; $51a5: $a4
    dec bc                                        ; $51a6: $0b
    nop                                           ; $51a7: $00
    inc [hl]                                      ; $51a8: $34
    cp h                                          ; $51a9: $bc
    add sp, -$18                                  ; $51aa: $e8 $e8
    ldh [$a0], a                                  ; $51ac: $e0 $a0
    ret nc                                        ; $51ae: $d0

    jr nc, jr_0bc_51d1                            ; $51af: $30 $20

    and b                                         ; $51b1: $a0
    ld h, b                                       ; $51b2: $60
    ld e, $08                                     ; $51b3: $1e $08
    add b                                         ; $51b5: $80
    add b                                         ; $51b6: $80
    ld c, $0a                                     ; $51b7: $0e $0a
    dec d                                         ; $51b9: $15
    ld bc, $131d                                  ; $51ba: $01 $1d $13
    rra                                           ; $51bd: $1f
    dec c                                         ; $51be: $0d
    dec c                                         ; $51bf: $0d

jr_0bc_51c0:
    dec b                                         ; $51c0: $05
    dec b                                         ; $51c1: $05
    jr nz, jr_0bc_51dc                            ; $51c2: $20 $18

    nop                                           ; $51c4: $00
    db $eb                                        ; $51c5: $eb
    xor [hl]                                      ; $51c6: $ae
    ld l, c                                       ; $51c7: $69
    rst $28                                       ; $51c8: $ef
    ld l, $ee                                     ; $51c9: $2e $ee
    ret nc                                        ; $51cb: $d0

    ret nc                                        ; $51cc: $d0

    inc c                                         ; $51cd: $0c
    ld h, b                                       ; $51ce: $60
    ld h, b                                       ; $51cf: $60
    add b                                         ; $51d0: $80

jr_0bc_51d1:
    add b                                         ; $51d1: $80
    call z, $5c09                                 ; $51d2: $cc $09 $5c
    ld bc, $3d4d                                  ; $51d5: $01 $4d $3d
    ld [bc], a                                    ; $51d8: $02
    cpl                                           ; $51d9: $2f
    inc de                                        ; $51da: $13
    ld [de], a                                    ; $51db: $12

jr_0bc_51dc:
    ld bc, $0001                                  ; $51dc: $01 $01 $00
    ld [bc], a                                    ; $51df: $02
    db $10                                        ; $51e0: $10
    ld [hl], b                                    ; $51e1: $70

jr_0bc_51e2:
    jr @-$2e                                      ; $51e2: $18 $d0

    and b                                         ; $51e4: $a0
    ldh [$64], a                                  ; $51e5: $e0 $64
    add hl, de                                    ; $51e7: $19
    ld a, $08                                     ; $51e8: $3e $08
    add b                                         ; $51ea: $80
    add b                                         ; $51eb: $80
    ld b, $00                                     ; $51ec: $06 $00
    dec b                                         ; $51ee: $05
    dec b                                         ; $51ef: $05
    rlca                                          ; $51f0: $07
    ld b, $07                                     ; $51f1: $06 $07
    ld [bc], a                                    ; $51f3: $02
    inc bc                                        ; $51f4: $03
    ld [bc], a                                    ; $51f5: $02
    ld [$0403], sp                                ; $51f6: $08 $03 $04
    rlca                                          ; $51f9: $07
    inc b                                         ; $51fa: $04
    ld h, h                                       ; $51fb: $64
    nop                                           ; $51fc: $00
    sub b                                         ; $51fd: $90
    ld [hl], b                                    ; $51fe: $70
    ld h, b                                       ; $51ff: $60
    jr jr_0bc_51e2                                ; $5200: $18 $e0

    and b                                         ; $5202: $a0
    ldh [$83], a                                  ; $5203: $e0 $83
    ld bc, $105e                                  ; $5205: $01 $5e $10
    nop                                           ; $5208: $00
    nop                                           ; $5209: $00
    rrca                                          ; $520a: $0f
    nop                                           ; $520b: $00
    ld [$131f], sp                                ; $520c: $08 $1f $13
    rra                                           ; $520f: $1f
    rla                                           ; $5210: $17
    dec a                                         ; $5211: $3d
    dec l                                         ; $5212: $2d
    add hl, sp                                    ; $5213: $39
    db $10                                        ; $5214: $10
    add hl, sp                                    ; $5215: $39
    jr nc, @+$32                                  ; $5216: $30 $30

    inc e                                         ; $5218: $1c
    ld a, [bc]                                    ; $5219: $0a
    cp [hl]                                       ; $521a: $be
    ld a, [hl+]                                   ; $521b: $2a
    ld a, a                                       ; $521c: $7f
    ld [hl], l                                    ; $521d: $75
    inc b                                         ; $521e: $04
    cp a                                          ; $521f: $bf
    db $fd                                        ; $5220: $fd
    daa                                           ; $5221: $27
    rst $20                                       ; $5222: $e7
    and b                                         ; $5223: $a0
    ld h, $00                                     ; $5224: $26 $00
    ldh [$e0], a                                  ; $5226: $e0 $e0
    nop                                           ; $5228: $00
    ld h, b                                       ; $5229: $60
    ld h, b                                       ; $522a: $60
    db $dd                                        ; $522b: $dd
    db $e3                                        ; $522c: $e3
    ld l, e                                       ; $522d: $6b
    ld a, a                                       ; $522e: $7f

Jump_0bc_522f:
    ld a, $3e                                     ; $522f: $3e $3e
    jr nz, jr_0bc_524f                            ; $5231: $20 $1c

    inc e                                         ; $5233: $1c
    jr c, @+$2c                                   ; $5234: $38 $2a

    push af                                       ; $5236: $f5
    ei                                            ; $5237: $fb
    dec e                                         ; $5238: $1d
    inc de                                        ; $5239: $13
    dec d                                         ; $523a: $15
    nop                                           ; $523b: $00
    dec de                                        ; $523c: $1b
    dec l                                         ; $523d: $2d
    inc sp                                        ; $523e: $33
    add hl, hl                                    ; $523f: $29
    scf                                           ; $5240: $37
    dec hl                                        ; $5241: $2b
    scf                                           ; $5242: $37
    ld a, [hl-]                                   ; $5243: $3a
    nop                                           ; $5244: $00
    ld a, $0e                                     ; $5245: $3e $0e
    ld c, $66                                     ; $5247: $0e $66

jr_0bc_5249:
    xor $66                                       ; $5249: $ee $66
    rst $28                                       ; $524b: $ef
    ld l, $08                                     ; $524c: $2e $08
    ccf                                           ; $524e: $3f

jr_0bc_524f:
    inc c                                         ; $524f: $0c
    dec e                                         ; $5250: $1d
    inc c                                         ; $5251: $0c
    ld [hl+], a                                   ; $5252: $22
    jr nz, jr_0bc_52bb                            ; $5253: $20 $66

    ld [c], a                                     ; $5255: $e2
    call z, $c400                                 ; $5256: $cc $00 $c4
    call c, $d8cc                                 ; $5259: $dc $cc $d8
    ret z                                         ; $525c: $c8

    jr c, jr_0bc_5277                             ; $525d: $38 $18

    jr nc, jr_0bc_5261                            ; $525f: $30 $00

jr_0bc_5261:
    db $10                                        ; $5261: $10
    jr nc, jr_0bc_52d4                            ; $5262: $30 $70

    jr nc, jr_0bc_52d6                            ; $5264: $30 $70

    ld d, l                                       ; $5266: $55
    ld a, a                                       ; $5267: $7f
    ld h, [hl]                                    ; $5268: $66
    add d                                         ; $5269: $82
    jr nz, jr_0bc_5270                            ; $526a: $20 $04

    ld l, $3f                                     ; $526c: $2e $3f
    scf                                           ; $526e: $37
    ccf                                           ; $526f: $3f

jr_0bc_5270:
    dec de                                        ; $5270: $1b
    jr nz, jr_0bc_5287                            ; $5271: $20 $14

    ld b, l                                       ; $5273: $45
    nop                                           ; $5274: $00
    cp d                                          ; $5275: $ba
    ld [hl+], a                                   ; $5276: $22

jr_0bc_5277:
    db $dd                                        ; $5277: $dd
    dec b                                         ; $5278: $05
    ld a, [$dc23]                                 ; $5279: $fa $23 $dc
    dec b                                         ; $527c: $05
    nop                                           ; $527d: $00
    ld a, [$dda2]                                 ; $527e: $fa $a2 $dd
    ld b, l                                       ; $5281: $45
    ld a, [$ed92]                                 ; $5282: $fa $92 $ed
    db $f4                                        ; $5285: $f4
    db $10                                        ; $5286: $10

jr_0bc_5287:
    dec bc                                        ; $5287: $0b
    add sp, $17                                   ; $5288: $e8 $17
    inc b                                         ; $528a: $04
    jr z, jr_0bc_5261                             ; $528b: $28 $d4

    dec hl                                        ; $528d: $2b
    jp hl                                         ; $528e: $e9


    rla                                           ; $528f: $17
    nop                                           ; $5290: $00
    ld a, [bc]                                    ; $5291: $0a
    cp $16                                        ; $5292: $fe $16
    cp $0c                                        ; $5294: $fe $0c
    db $fc                                        ; $5296: $fc
    inc d                                         ; $5297: $14
    db $fc                                        ; $5298: $fc
    nop                                           ; $5299: $00
    inc l                                         ; $529a: $2c
    db $fc                                        ; $529b: $fc
    ld e, b                                       ; $529c: $58
    ld hl, sp-$48                                 ; $529d: $f8 $b8
    ld hl, sp+$70                                 ; $529f: $f8 $70
    ldh a, [rP1]                                  ; $52a1: $f0 $00
    inc bc                                        ; $52a3: $03
    inc bc                                        ; $52a4: $03
    dec b                                         ; $52a5: $05
    ld b, $06                                     ; $52a6: $06 $06
    dec b                                         ; $52a8: $05
    dec bc                                        ; $52a9: $0b
    inc c                                         ; $52aa: $0c
    nop                                           ; $52ab: $00
    add hl, bc                                    ; $52ac: $09
    ld c, $1b                                     ; $52ad: $0e $1b
    inc e                                         ; $52af: $1c
    dec a                                         ; $52b0: $3d

jr_0bc_52b1:
    ld a, $6e                                     ; $52b1: $3e $6e
    ld [hl], c                                    ; $52b3: $71
    nop                                           ; $52b4: $00
    add b                                         ; $52b5: $80
    add b                                         ; $52b6: $80
    ld b, b                                       ; $52b7: $40
    ret nz                                        ; $52b8: $c0

    and b                                         ; $52b9: $a0
    ld h, b                                       ; $52ba: $60

jr_0bc_52bb:
    ld d, b                                       ; $52bb: $50
    or b                                          ; $52bc: $b0
    nop                                           ; $52bd: $00
    ret nc                                        ; $52be: $d0

    jr nc, jr_0bc_5249                            ; $52bf: $30 $88

    ld a, b                                       ; $52c1: $78

jr_0bc_52c2:
    ret c                                         ; $52c2: $d8

    jr c, jr_0bc_52b1                             ; $52c3: $38 $ec

    inc e                                         ; $52c5: $1c
    nop                                           ; $52c6: $00
    ld e, $1e                                     ; $52c7: $1e $1e
    ld hl, $5a33                                  ; $52c9: $21 $33 $5a
    ld b, b                                       ; $52cc: $40
    cp l                                          ; $52cd: $bd
    ret nz                                        ; $52ce: $c0

    nop                                           ; $52cf: $00
    cp [hl]                                       ; $52d0: $be
    add b                                         ; $52d1: $80
    sbc h                                         ; $52d2: $9c
    add b                                         ; $52d3: $80

jr_0bc_52d4:
    xor c                                         ; $52d4: $a9
    pop bc                                        ; $52d5: $c1

jr_0bc_52d6:
    ld d, d                                       ; $52d6: $52
    ld b, d                                       ; $52d7: $42
    ret nz                                        ; $52d8: $c0

    ldh [$0a], a                                  ; $52d9: $e0 $0a
    inc h                                         ; $52db: $24
    ld [$4040], sp                                ; $52dc: $08 $40 $40
    ldh a, [$f0]                                  ; $52df: $f0 $f0
    ld [$2098], sp                                ; $52e1: $08 $98 $20
    call nc, $f004                                ; $52e4: $d4 $04 $f0
    ld c, d                                       ; $52e7: $4a
    inc bc                                        ; $52e8: $03
    inc bc                                        ; $52e9: $03
    dec c                                         ; $52ea: $0d
    inc c                                         ; $52eb: $0c
    stop                                          ; $52ec: $10 $00
    db $10                                        ; $52ee: $10
    jr @+$1a                                      ; $52ef: $18 $18

    jr c, jr_0bc_531b                             ; $52f1: $38 $28

    jr z, @+$3a                                   ; $52f3: $28 $38

    ld a, b                                       ; $52f5: $78
    ld [$c858], sp                                ; $52f6: $08 $58 $c8
    sbc b                                         ; $52f9: $98
    sbc b                                         ; $52fa: $98
    add hl, de                                    ; $52fb: $19
    ld [bc], a                                    ; $52fc: $02
    db $10                                        ; $52fd: $10
    db $10                                        ; $52fe: $10
    jr c, jr_0bc_5301                             ; $52ff: $38 $00

jr_0bc_5301:
    jr z, @+$7e                                   ; $5301: $28 $7c

    ld b, h                                       ; $5303: $44
    ld e, [hl]                                    ; $5304: $5e
    ld h, d                                       ; $5305: $62
    cpl                                           ; $5306: $2f
    ld sp, $0416                                  ; $5307: $31 $16 $04
    add hl, de                                    ; $530a: $19
    dec bc                                        ; $530b: $0b
    inc c                                         ; $530c: $0c
    dec b                                         ; $530d: $05
    ld b, $e0                                     ; $530e: $06 $e0
    ld a, [de]                                    ; $5310: $1a
    cp b                                          ; $5311: $b8
    ret z                                         ; $5312: $c8

    nop                                           ; $5313: $00
    ld e, h                                       ; $5314: $5c
    ld h, h                                       ; $5315: $64
    xor d                                         ; $5316: $aa
    or [hl]                                       ; $5317: $b6
    sbc [hl]                                      ; $5318: $9e
    sub d                                         ; $5319: $92
    ld d, [hl]                                    ; $531a: $56

jr_0bc_531b:
    jp c, $0102                                   ; $531b: $da $02 $01

    ld bc, $0706                                  ; $531e: $01 $06 $07
    dec bc                                        ; $5321: $0b
    inc c                                         ; $5322: $0c
    ld [bc], a                                    ; $5323: $02
    ld [$001d], sp                                ; $5324: $08 $1d $00
    ld e, $28                                     ; $5327: $1e $28
    ccf                                           ; $5329: $3f
    ld d, d                                       ; $532a: $52
    ld a, l                                       ; $532b: $7d
    ldh [$e0], a                                  ; $532c: $e0 $e0
    ret nc                                        ; $532e: $d0

    nop                                           ; $532f: $00
    jr nc, jr_0bc_52c2                            ; $5330: $30 $90

    ld [hl], b                                    ; $5332: $70
    ld c, b                                       ; $5333: $48
    cp b                                          ; $5334: $b8
    sbc b                                         ; $5335: $98
    ld a, b                                       ; $5336: $78
    jr c, jr_0bc_533f                             ; $5337: $38 $06

    ld hl, sp+$54                                 ; $5339: $f8 $54
    db $fc                                        ; $533b: $fc
    xor h                                         ; $533c: $ac
    db $fc                                        ; $533d: $fc
    ld d, b                                       ; $533e: $50

jr_0bc_533f:
    dec hl                                        ; $533f: $2b
    ld h, b                                       ; $5340: $60
    dec c                                         ; $5341: $0d

jr_0bc_5342:
    inc bc                                        ; $5342: $03
    and b                                         ; $5343: $a0
    ld h, h                                       ; $5344: $64
    ld bc, $fa10                                  ; $5345: $01 $10 $fa
    ld [bc], a                                    ; $5348: $02
    ld e, b                                       ; $5349: $58
    ld l, b                                       ; $534a: $68
    ldh a, [$d0]                                  ; $534b: $f0 $d0
    ld d, b                                       ; $534d: $50
    ld bc, $e0f0                                  ; $534e: $01 $f0 $e0
    jr nz, jr_0bc_5373                            ; $5351: $20 $20

    ldh [$e0], a                                  ; $5353: $e0 $e0
    and b                                         ; $5355: $a0
    ld [hl], h                                    ; $5356: $74
    nop                                           ; $5357: $00
    nop                                           ; $5358: $00
    ld c, $17                                     ; $5359: $0e $17
    inc e                                         ; $535b: $1c
    dec e                                         ; $535c: $1d
    ld d, $1a                                     ; $535d: $16 $1a
    inc de                                        ; $535f: $13
    rrca                                          ; $5360: $0f
    add l                                         ; $5361: $85
    ld e, [hl]                                    ; $5362: $5e
    nop                                           ; $5363: $00
    dec bc                                        ; $5364: $0b
    dec bc                                        ; $5365: $0b
    add b                                         ; $5366: $80
    add b                                         ; $5367: $80
    ldh a, [rTAC]                                 ; $5368: $f0 $07
    ld d, b                                       ; $536a: $50
    jr nz, jr_0bc_536d                            ; $536b: $20 $00

jr_0bc_536d:
    nop                                           ; $536d: $00
    ret nc                                        ; $536e: $d0

    or b                                          ; $536f: $b0
    ld [hl], b                                    ; $5370: $70
    ldh a, [$30]                                  ; $5371: $f0 $30

jr_0bc_5373:
    ld e, b                                       ; $5373: $58
    ret z                                         ; $5374: $c8

    nop                                           ; $5375: $00
    add e                                         ; $5376: $83
    ld h, b                                       ; $5377: $60
    nop                                           ; $5378: $00
    rrca                                          ; $5379: $0f
    add hl, bc                                    ; $537a: $09
    dec bc                                        ; $537b: $0b
    dec c                                         ; $537c: $0d
    dec b                                         ; $537d: $05
    ld hl, sp+$0b                                 ; $537e: $f8 $0b
    ld [$8000], sp                                ; $5380: $08 $00 $80
    and b                                         ; $5383: $a0
    dec bc                                        ; $5384: $0b
    ld h, b                                       ; $5385: $60
    ld h, b                                       ; $5386: $60
    ldh a, [$90]                                  ; $5387: $f0 $90
    ret nc                                        ; $5389: $d0

    or b                                          ; $538a: $b0
    and b                                         ; $538b: $a0
    inc b                                         ; $538c: $04
    ldh [$c0], a                                  ; $538d: $e0 $c0
    ret nz                                        ; $538f: $c0

    jr nc, jr_0bc_5342                            ; $5390: $30 $b0

    or b                                          ; $5392: $b0
    ld c, e                                       ; $5393: $4b
    ld bc, $6001                                  ; $5394: $01 $01 $60
    rlca                                          ; $5397: $07
    and b                                         ; $5398: $a0
    nop                                           ; $5399: $00
    jp nz, Jump_000_3f2b                          ; $539a: $c2 $2b $3f

    ccf                                           ; $539d: $3f
    rst $10                                       ; $539e: $d7
    add sp, -$40                                  ; $539f: $e8 $c0
    nop                                           ; $53a1: $00
    ccf                                           ; $53a2: $3f
    ld e, l                                       ; $53a3: $5d
    ld h, d                                       ; $53a4: $62
    xor [hl]                                      ; $53a5: $ae
    pop de                                        ; $53a6: $d1
    sub a                                         ; $53a7: $97
    add sp, -$55                                  ; $53a8: $e8 $ab
    nop                                           ; $53aa: $00
    db $f4                                        ; $53ab: $f4
    ld [hl], b                                    ; $53ac: $70
    ld a, a                                       ; $53ad: $7f
    rra                                           ; $53ae: $1f
    rra                                           ; $53af: $1f
    nop                                           ; $53b0: $00
    ld b, d                                       ; $53b1: $42
    nop                                           ; $53b2: $00
    nop                                           ; $53b3: $00
    ld [$0ef6], sp                                ; $53b4: $08 $f6 $0e
    ld sp, hl                                     ; $53b7: $f9
    rlca                                          ; $53b8: $07
    jp hl                                         ; $53b9: $e9


    rla                                           ; $53ba: $17
    ld d, c                                       ; $53bb: $51
    nop                                           ; $53bc: $00
    xor a                                         ; $53bd: $af
    xor d                                         ; $53be: $aa
    ld e, [hl]                                    ; $53bf: $5e
    sbc h                                         ; $53c0: $9c
    db $fc                                        ; $53c1: $fc
    ld [hl], b                                    ; $53c2: $70
    ld [hl], c                                    ; $53c3: $71
    nop                                           ; $53c4: $00
    nop                                           ; $53c5: $00
    inc b                                         ; $53c6: $04
    dec h                                         ; $53c7: $25
    ld [hl], $1d                                  ; $53c8: $36 $1d
    inc e                                         ; $53ca: $1c
    inc b                                         ; $53cb: $04
    inc b                                         ; $53cc: $04
    dec b                                         ; $53cd: $05
    jr jr_0bc_53d6                                ; $53ce: $18 $06

    ld [bc], a                                    ; $53d0: $02
    ld [bc], a                                    ; $53d1: $02
    ld [hl+], a                                   ; $53d2: $22
    ld [bc], a                                    ; $53d3: $02
    db $fd                                        ; $53d4: $fd
    inc bc                                        ; $53d5: $03

jr_0bc_53d6:
    ld [$f206], a                                 ; $53d6: $ea $06 $f2
    nop                                           ; $53d9: $00
    ld [bc], a                                    ; $53da: $02
    ld [$5202], a                                 ; $53db: $ea $02 $52
    ld b, $a4                                     ; $53de: $06 $a4
    inc b                                         ; $53e0: $04
    ld [$9800], sp                                ; $53e1: $08 $00 $98
    ldh a, [$f0]                                  ; $53e4: $f0 $f0
    nop                                           ; $53e6: $00
    nop                                           ; $53e7: $00
    ld [hl], $31                                  ; $53e8: $36 $31
    ld d, b                                       ; $53ea: $50
    nop                                           ; $53eb: $00
    ld b, l                                       ; $53ec: $45

jr_0bc_53ed:
    ld h, b                                       ; $53ed: $60
    ld b, a                                       ; $53ee: $47
    ld [hl], b                                    ; $53ef: $70
    ld b, e                                       ; $53f0: $43
    dec [hl]                                      ; $53f1: $35
    ld hl, $111e                                  ; $53f2: $21 $1e $11
    db $10                                        ; $53f5: $10
    rrca                                          ; $53f6: $0f
    rrca                                          ; $53f7: $0f
    cp h                                          ; $53f8: $bc
    inc bc                                        ; $53f9: $03
    ld [hl], b                                    ; $53fa: $70
    jr nc, jr_0bc_53ed                            ; $53fb: $30 $f0

    ld [hl+], a                                   ; $53fd: $22
    ld a, [de]                                    ; $53fe: $1a
    cp b                                          ; $53ff: $b8

Jump_0bc_5400:
    ld h, b                                       ; $5400: $60
    ld a, [de]                                    ; $5401: $1a
    ld [bc], a                                    ; $5402: $02
    sub [hl]                                      ; $5403: $96
    ld [de], a                                    ; $5404: $12
    inc a                                         ; $5405: $3c
    jr jr_0bc_5444                                ; $5406: $18 $3c

    inc c                                         ; $5408: $0c
    call $ab4b                                    ; $5409: $cd $4b $ab
    nop                                           ; $540c: $00
    ld l, l                                       ; $540d: $6d
    ld l, e                                       ; $540e: $6b
    xor l                                         ; $540f: $ad
    ld h, a                                       ; $5410: $67
    and l                                         ; $5411: $a5
    push hl                                       ; $5412: $e5
    and a                                         ; $5413: $a7
    and l                                         ; $5414: $a5
    nop                                           ; $5415: $00
    rst $20                                       ; $5416: $e7
    and e                                         ; $5417: $a3
    db $e3                                        ; $5418: $e3
    ld h, b                                       ; $5419: $60
    ld h, b                                       ; $541a: $60
    call nc, $aeab                                ; $541b: $d4 $ab $ae
    nop                                           ; $541e: $00
    pop de                                        ; $541f: $d1
    push hl                                       ; $5420: $e5
    ld a, [$ffd8]                                 ; $5421: $fa $d8 $ff
    xor [hl]                                      ; $5424: $ae
    rst $38                                       ; $5425: $ff
    ld [hl], l                                    ; $5426: $75
    nop                                           ; $5427: $00
    ld a, a                                       ; $5428: $7f
    ld a, [de]                                    ; $5429: $1a
    rra                                           ; $542a: $1f
    rlca                                          ; $542b: $07
    rlca                                          ; $542c: $07
    ld d, $ee                                     ; $542d: $16 $ee
    xor a                                         ; $542f: $af
    ld [$5f5f], sp                                ; $5430: $08 $5f $5f
    cp a                                          ; $5433: $bf
    cp e                                          ; $5434: $bb
    ld c, b                                       ; $5435: $48
    inc bc                                        ; $5436: $03
    ld [bc], a                                    ; $5437: $02
    cp $4c                                        ; $5438: $fe $4c
    nop                                           ; $543a: $00
    db $fc                                        ; $543b: $fc
    ldh a, [$f0]                                  ; $543c: $f0 $f0
    dec bc                                        ; $543e: $0b
    inc c                                         ; $543f: $0c
    ld e, $19                                     ; $5440: $1e $19
    ld a, [hl+]                                   ; $5442: $2a
    nop                                           ; $5443: $00

jr_0bc_5444:
    dec a                                         ; $5444: $3d
    inc [hl]                                      ; $5445: $34
    cpl                                           ; $5446: $2f
    dec l                                         ; $5447: $2d
    scf                                           ; $5448: $37
    ld de, $0e1f                                  ; $5449: $11 $1f $0e
    ld [hl], b                                    ; $544c: $70
    ld c, $5e                                     ; $544d: $0e $5e
    inc c                                         ; $544f: $0c
    ld a, d                                       ; $5450: $7a
    ld a, [hl+]                                   ; $5451: $2a
    adc d                                         ; $5452: $8a
    inc e                                         ; $5453: $1c
    rrca                                          ; $5454: $0f
    ld a, [bc]                                    ; $5455: $0a
    ld c, $0b                                     ; $5456: $0e $0b
    ld h, b                                       ; $5458: $60
    dec b                                         ; $5459: $05
    db $fc                                        ; $545a: $fc
    ld [hl+], a                                   ; $545b: $22
    and d                                         ; $545c: $a2
    ld [$28f8], sp                                ; $545d: $08 $f8 $28
    add sp, $28                                   ; $5460: $e8 $28
    ld d, b                                       ; $5462: $50
    ld a, $d0                                     ; $5463: $3e $d0
    ldh [$a2], a                                  ; $5465: $e0 $a2
    ld [de], a                                    ; $5467: $12
    jr nz, jr_0bc_5475                            ; $5468: $20 $0b

    inc e                                         ; $546a: $1c
    ld [$191a], sp                                ; $546b: $08 $1a $19
    ld h, $18                                     ; $546e: $26 $18
    ld a, b                                       ; $5470: $78
    rrca                                          ; $5471: $0f
    ret z                                         ; $5472: $c8

    ld l, b                                       ; $5473: $68
    ret c                                         ; $5474: $d8

jr_0bc_5475:
    ld d, b                                       ; $5475: $50
    and d                                         ; $5476: $a2
    nop                                           ; $5477: $00
    rra                                           ; $5478: $1f
    rrca                                          ; $5479: $0f
    ld c, b                                       ; $547a: $48
    ld c, b                                       ; $547b: $48
    ldh [rNR34], a                                ; $547c: $e0 $1e
    nop                                           ; $547e: $00
    ld bc, $1e01                                  ; $547f: $01 $01 $1e
    add hl, de                                    ; $5482: $19
    jr c, jr_0bc_54ac                             ; $5483: $38 $27

    ld [hl], l                                    ; $5485: $75
    ld c, a                                       ; $5486: $4f
    nop                                           ; $5487: $00
    db $eb                                        ; $5488: $eb
    sbc a                                         ; $5489: $9f
    ld d, a                                       ; $548a: $57
    cp a                                          ; $548b: $bf
    xor a                                         ; $548c: $af
    ld a, a                                       ; $548d: $7f
    sub a                                         ; $548e: $97
    ld a, a                                       ; $548f: $7f
    ld [hl], h                                    ; $5490: $74
    xor a                                         ; $5491: $af
    ret nc                                        ; $5492: $d0

    inc bc                                        ; $5493: $03
    adc d                                         ; $5494: $8a
    dec e                                         ; $5495: $1d
    inc [hl]                                      ; $5496: $34
    ld l, $56                                     ; $5497: $2e $56
    dec a                                         ; $5499: $3d
    ld d, [hl]                                    ; $549a: $56
    rst $38                                       ; $549b: $ff
    rst $38                                       ; $549c: $ff
    nop                                           ; $549d: $00
    ld a, b                                       ; $549e: $78
    sbc b                                         ; $549f: $98
    sbc h                                         ; $54a0: $9c
    db $e4                                        ; $54a1: $e4
    xor $f2                                       ; $54a2: $ee $f2
    rst $30                                       ; $54a4: $f7
    ld sp, hl                                     ; $54a5: $f9
    nop                                           ; $54a6: $00
    ld a, [$fdfd]                                 ; $54a7: $fa $fd $fd
    cp $fd                                        ; $54aa: $fe $fd

jr_0bc_54ac:
    cp $ff                                        ; $54ac: $fe $ff
    cp $d4                                        ; $54ae: $fe $d4
    ld c, b                                       ; $54b0: $48
    jr z, @-$30                                   ; $54b1: $28 $ce

    add hl, bc                                    ; $54b3: $09
    ld b, $32                                     ; $54b4: $06 $32
    inc bc                                        ; $54b6: $03
    rst $18                                       ; $54b7: $df
    ld b, h                                       ; $54b8: $44
    nop                                           ; $54b9: $00
    rst $08                                       ; $54ba: $cf
    ccf                                           ; $54bb: $3f
    nop                                           ; $54bc: $00
    ld c, a                                       ; $54bd: $4f
    cp a                                          ; $54be: $bf
    xor a                                         ; $54bf: $af
    rst $18                                       ; $54c0: $df
    reti                                          ; $54c1: $d9


    rst $20                                       ; $54c2: $e7
    rst $28                                       ; $54c3: $ef
    ldh a, [rNR51]                                ; $54c4: $f0 $25
    ld [hl], e                                    ; $54c6: $73
    db $fc                                        ; $54c7: $fc
    ld l, e                                       ; $54c8: $6b
    ld e, [hl]                                    ; $54c9: $5e
    ret nc                                        ; $54ca: $d0

    cpl                                           ; $54cb: $2f
    adc h                                         ; $54cc: $8c
    ld l, $fd                                     ; $54cd: $2e $fd

jr_0bc_54cf:
    ld hl, sp+$06                                 ; $54cf: $f8 $06
    inc b                                         ; $54d1: $04

jr_0bc_54d2:
    call nc, Call_000_0bff                        ; $54d2: $d4 $ff $0b
    db $f4                                        ; $54d5: $f4
    rst $38                                       ; $54d6: $ff
    ld b, [hl]                                    ; $54d7: $46
    nop                                           ; $54d8: $00
    rst $30                                       ; $54d9: $f7
    db $fc                                        ; $54da: $fc
    nop                                           ; $54db: $00
    ld [$55fd], a                                 ; $54dc: $ea $fd $55
    ei                                            ; $54df: $fb
    sbc c                                         ; $54e0: $99
    rst $20                                       ; $54e1: $e7
    di                                            ; $54e2: $f3
    rrca                                          ; $54e3: $0f
    jr nc, jr_0bc_54ac                            ; $54e4: $30 $c6

    ccf                                           ; $54e6: $3f
    add [hl]                                      ; $54e7: $86
    dec de                                        ; $54e8: $1b
    jp z, $c00b                                   ; $54e9: $ca $0b $c0

    ret nz                                        ; $54ec: $c0

    jr nz, jr_0bc_54cf                            ; $54ed: $20 $e0

    nop                                           ; $54ef: $00
    jr nz, jr_0bc_54d2                            ; $54f0: $20 $e0

    dec c                                         ; $54f2: $0d
    ld c, $0a                                     ; $54f3: $0e $0a
    dec c                                         ; $54f5: $0d
    add hl, de                                    ; $54f6: $19
    ld e, $00                                     ; $54f7: $1e $00
    inc de                                        ; $54f9: $13
    inc e                                         ; $54fa: $1c
    dec de                                        ; $54fb: $1b
    inc e                                         ; $54fc: $1c
    ld [de], a                                    ; $54fd: $12
    dec e                                         ; $54fe: $1d
    inc de                                        ; $54ff: $13
    dec e                                         ; $5500: $1d
    nop                                           ; $5501: $00
    ld [de], a                                    ; $5502: $12
    rra                                           ; $5503: $1f
    ld a, $ff                                     ; $5504: $3e $ff
    rrca                                          ; $5506: $0f
    rst $38                                       ; $5507: $ff
    or a                                          ; $5508: $b7
    rst $38                                       ; $5509: $ff
    pop bc                                        ; $550a: $c1
    inc [hl]                                      ; $550b: $34
    ld c, $84                                     ; $550c: $0e $84
    ld c, $df                                     ; $550e: $0e $df
    ccf                                           ; $5510: $3f
    ld a, a                                       ; $5511: $7f
    add b                                         ; $5512: $80
    ldh [rSCY], a                                 ; $5513: $e0 $42
    rlca                                          ; $5515: $07
    ld b, c                                       ; $5516: $41
    rst $38                                       ; $5517: $ff
    ld b, d                                       ; $5518: $42
    rlca                                          ; $5519: $07
    call nc, $a8ff                                ; $551a: $d4 $ff $a8
    rst $38                                       ; $551d: $ff
    ld d, b                                       ; $551e: $50
    sub c                                         ; $551f: $91
    nop                                           ; $5520: $00
    inc d                                         ; $5521: $14
    nop                                           ; $5522: $00
    rst $38                                       ; $5523: $ff
    and c                                         ; $5524: $a1
    add $06                                       ; $5525: $c6 $06
    and b                                         ; $5527: $a0
    ld c, d                                       ; $5528: $4a
    rlca                                          ; $5529: $07
    ld [bc], a                                    ; $552a: $02
    db $fd                                        ; $552b: $fd
    ld bc, $fa05                                  ; $552c: $01 $05 $fa
    nop                                           ; $552f: $00
    rst $38                                       ; $5530: $ff

jr_0bc_5531:
    db $10                                        ; $5531: $10
    rst $38                                       ; $5532: $ff
    ld b, c                                       ; $5533: $41
    ld a, [bc]                                    ; $5534: $0a
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    inc hl                                        ; $5537: $23
    call c, $ae51                                 ; $5538: $dc $51 $ae
    ld [c], a                                     ; $553b: $e2
    dec e                                         ; $553c: $1d
    pop af                                        ; $553d: $f1
    ld c, $20                                     ; $553e: $0e $20
    db $10                                        ; $5540: $10
    ldh a, [$8e]                                  ; $5541: $f0 $8e
    ld a, [bc]                                    ; $5543: $0a
    xor b                                         ; $5544: $a8
    ld e, b                                       ; $5545: $58
    ret z                                         ; $5546: $c8

    jr c, jr_0bc_5531                             ; $5547: $38 $e8

    ld b, b                                       ; $5549: $40
    jr jr_0bc_5550                                ; $554a: $18 $04

    ld [$1e15], sp                                ; $554c: $08 $15 $1e
    inc e                                         ; $554f: $1c

jr_0bc_5550:
    rra                                           ; $5550: $1f
    ld [de], a                                    ; $5551: $12
    rra                                           ; $5552: $1f
    ld bc, $1f19                                  ; $5553: $01 $19 $1f
    ld [$0c0f], sp                                ; $5556: $08 $0f $0c
    rrca                                          ; $5559: $0f
    ld b, $fa                                     ; $555a: $06 $fa
    inc bc                                        ; $555c: $03
    nop                                           ; $555d: $00
    rst $38                                       ; $555e: $ff
    rst $38                                       ; $555f: $ff
    push af                                       ; $5560: $f5
    ld a, e                                       ; $5561: $7b
    ld [hl-], a                                   ; $5562: $32
    rst $08                                       ; $5563: $cf
    add a                                         ; $5564: $87
    rst $38                                       ; $5565: $ff
    ld b, h                                       ; $5566: $44
    ld a, [hl]                                    ; $5567: $7e
    ld b, [hl]                                    ; $5568: $46
    rlca                                          ; $5569: $07

jr_0bc_556a:
    ld a, $ff                                     ; $556a: $3e $ff
    rra                                           ; $556c: $1f
    ld c, b                                       ; $556d: $48
    nop                                           ; $556e: $00
    ld b, b                                       ; $556f: $40
    rst $38                                       ; $5570: $ff
    ld b, e                                       ; $5571: $43
    add b                                         ; $5572: $80
    inc b                                         ; $5573: $04
    ld b, b                                       ; $5574: $40
    dec bc                                        ; $5575: $0b
    db $f4                                        ; $5576: $f4
    rlca                                          ; $5577: $07
    ld hl, sp+$04                                 ; $5578: $f8 $04
    ld [$0cc6], sp                                ; $557a: $08 $c6 $0c

Jump_0bc_557d:
    nop                                           ; $557d: $00
    inc bc                                        ; $557e: $03
    db $fc                                        ; $557f: $fc
    dec b                                         ; $5580: $05
    ld a, [$17e8]                                 ; $5581: $fa $e8 $17
    ldh a, [rIF]                                  ; $5584: $f0 $0f
    nop                                           ; $5586: $00
    ld hl, sp+$07                                 ; $5587: $f8 $07
    db $f4                                        ; $5589: $f4
    dec bc                                        ; $558a: $0b
    ld hl, sp+$07                                 ; $558b: $f8 $07
    ld hl, sp+$07                                 ; $558d: $f8 $07
    ld [bc], a                                    ; $558f: $02
    db $fc                                        ; $5590: $fc
    inc bc                                        ; $5591: $03
    db $f4                                        ; $5592: $f4
    dec bc                                        ; $5593: $0b
    ret z                                         ; $5594: $c8

    jr c, jr_0bc_55f5                             ; $5595: $38 $5e

    ld [$0748], sp                                ; $5597: $08 $48 $07
    cp b                                          ; $559a: $b8
    db $10                                        ; $559b: $10
    ldh a, [rNR10]                                ; $559c: $f0 $10
    ldh a, [$c0]                                  ; $559e: $f0 $c0
    ld [$5a90], sp                                ; $55a0: $08 $90 $5a
    ld h, b                                       ; $55a3: $60
    nop                                           ; $55a4: $00
    cp b                                          ; $55a5: $b8
    or [hl]                                       ; $55a6: $b6
    rlca                                          ; $55a7: $07
    ret nz                                        ; $55a8: $c0

    ld [bc], a                                    ; $55a9: $02
    ld b, b                                       ; $55aa: $40
    add $0f                                       ; $55ab: $c6 $0f
    ld h, h                                       ; $55ad: $64
    ld c, [hl]                                    ; $55ae: $4e
    cp $00                                        ; $55af: $fe $00
    db $fd                                        ; $55b1: $fd
    ret nz                                        ; $55b2: $c0

    jr jr_0bc_55b8                                ; $55b3: $18 $03

    ld [bc], a                                    ; $55b5: $02
    jr c, @+$20                                   ; $55b6: $38 $1e

jr_0bc_55b8:
    add hl, de                                    ; $55b8: $19
    jr z, jr_0bc_55f2                             ; $55b9: $28 $37

    ld d, l                                       ; $55bb: $55
    ld l, a                                       ; $55bc: $6f
    jr nz, jr_0bc_556a                            ; $55bd: $20 $ab

    rst $18                                       ; $55bf: $df
    and b                                         ; $55c0: $a0
    add hl, hl                                    ; $55c1: $29
    ld a, b                                       ; $55c2: $78
    sbc b                                         ; $55c3: $98
    sub h                                         ; $55c4: $94
    db $ec                                        ; $55c5: $ec
    ld [$f61f], a                                 ; $55c6: $ea $1f $f6
    push af                                       ; $55c9: $f5
    ei                                            ; $55ca: $fb
    add b                                         ; $55cb: $80
    add hl, hl                                    ; $55cc: $29
    ld c, h                                       ; $55cd: $4c
    ld c, b                                       ; $55ce: $48
    ld e, b                                       ; $55cf: $58
    ld [$483c], sp                                ; $55d0: $08 $3c $48
    ld c, b                                       ; $55d3: $48
    ld [$0d00], sp                                ; $55d4: $08 $00 $0d
    ld c, $0b                                     ; $55d7: $0e $0b
    dec c                                         ; $55d9: $0d
    jr jr_0bc_55fb                                ; $55da: $18 $1f

    inc de                                        ; $55dc: $13
    dec e                                         ; $55dd: $1d
    ld de, $1e1b                                  ; $55de: $11 $1b $1e
    ld [de], a                                    ; $55e1: $12
    ld a, $01                                     ; $55e2: $3e $01
    ld de, $be1e                                  ; $55e4: $11 $1e $be
    ld b, b                                       ; $55e7: $40
    ld de, $5904                                  ; $55e8: $11 $04 $59
    rst $38                                       ; $55eb: $ff
    or a                                          ; $55ec: $b7

jr_0bc_55ed:
    ei                                            ; $55ed: $fb
    ld e, e                                       ; $55ee: $5b
    inc b                                         ; $55ef: $04
    nop                                           ; $55f0: $00
    ld l, a                                       ; $55f1: $6f

jr_0bc_55f2:
    rst $30                                       ; $55f2: $f7
    add c                                         ; $55f3: $81
    ld b, b                                       ; $55f4: $40

jr_0bc_55f5:
    add hl, sp                                    ; $55f5: $39
    push de                                       ; $55f6: $d5
    cp $aa                                        ; $55f7: $fe $aa
    rst $38                                       ; $55f9: $ff
    ld d, l                                       ; $55fa: $55

jr_0bc_55fb:
    cp $30                                        ; $55fb: $fe $30
    add hl, de                                    ; $55fd: $19
    ld [$fd06], sp                                ; $55fe: $08 $06 $fd
    inc hl                                        ; $5601: $23
    sbc $30                                       ; $5602: $de $30
    ld bc, $f11f                                  ; $5604: $01 $1f $f1
    rrca                                          ; $5607: $0f
    cp [hl]                                       ; $5608: $be
    xor h                                         ; $5609: $ac
    ld c, b                                       ; $560a: $48
    cp a                                          ; $560b: $bf
    adc e                                         ; $560c: $8b
    rlca                                          ; $560d: $07
    db $10                                        ; $560e: $10
    ld c, a                                       ; $560f: $4f
    push af                                       ; $5610: $f5
    rrca                                          ; $5611: $0f
    xor h                                         ; $5612: $ac
    ld c, b                                       ; $5613: $48
    ld l, l                                       ; $5614: $6d
    rrca                                          ; $5615: $0f
    ld [de], a                                    ; $5616: $12
    ld [hl+], a                                   ; $5617: $22
    rra                                           ; $5618: $1f
    jr @+$52                                      ; $5619: $18 $50

    ld bc, $1f18                                  ; $561b: $01 $18 $1f

Jump_0bc_561e:
    ld a, [bc]                                    ; $561e: $0a
    ld d, b                                       ; $561f: $50
    ld bc, $8207                                  ; $5620: $01 $07 $82
    ld c, d                                       ; $5623: $4a
    dec b                                         ; $5624: $05
    or a                                          ; $5625: $b7
    rst $38                                       ; $5626: $ff
    ld l, a                                       ; $5627: $6f
    rst $30                                       ; $5628: $f7
    or [hl]                                       ; $5629: $b6
    inc b                                         ; $562a: $04
    nop                                           ; $562b: $00
    ld [hl], $80                                  ; $562c: $36 $80
    inc b                                         ; $562e: $04
    db $10                                        ; $562f: $10
    rrca                                          ; $5630: $0f
    rst $30                                       ; $5631: $f7
    and d                                         ; $5632: $a2
    db $fd                                        ; $5633: $fd
    ld b, h                                       ; $5634: $44
    rst $38                                       ; $5635: $ff
    add d                                         ; $5636: $82
    or b                                          ; $5637: $b0
    inc b                                         ; $5638: $04
    db $10                                        ; $5639: $10
    ld b, l                                       ; $563a: $45
    ld [$5010], sp                                ; $563b: $08 $10 $50
    add hl, sp                                    ; $563e: $39
    ld d, l                                       ; $563f: $55
    rst $38                                       ; $5640: $ff
    xor e                                         ; $5641: $ab
    ld d, h                                       ; $5642: $54
    add b                                         ; $5643: $80
    ld d, b                                       ; $5644: $50
    add hl, bc                                    ; $5645: $09
    pop af                                        ; $5646: $f1
    rrca                                          ; $5647: $0f
    ld a, [$f507]                                 ; $5648: $fa $07 $f5
    rrca                                          ; $564b: $0f
    xor b                                         ; $564c: $a8
    db $10                                        ; $564d: $10
    ld [hl], a                                    ; $564e: $77
    ld a, c                                       ; $564f: $79
    add a                                         ; $5650: $87
    ld d, b                                       ; $5651: $50
    add hl, bc                                    ; $5652: $09
    jr nc, jr_0bc_566c                            ; $5653: $30 $17

    sub h                                         ; $5655: $94
    dec c                                         ; $5656: $0d
    jr nz, jr_0bc_5659                            ; $5657: $20 $00

jr_0bc_5659:
    rst $38                                       ; $5659: $ff
    ld [bc], a                                    ; $565a: $02
    ld l, b                                       ; $565b: $68
    ld de, $00ee                                  ; $565c: $11 $ee $00
    rst $38                                       ; $565f: $ff
    ld b, h                                       ; $5660: $44
    ld bc, $00bb                                  ; $5661: $01 $bb $00
    rst $38                                       ; $5664: $ff
    xor d                                         ; $5665: $aa
    ld d, l                                       ; $5666: $55
    ld d, l                                       ; $5667: $55
    xor d                                         ; $5668: $aa
    dec e                                         ; $5669: $1d
    jr c, jr_0bc_55ed                             ; $566a: $38 $81

jr_0bc_566c:
    dec d                                         ; $566c: $15
    nop                                           ; $566d: $00
    nop                                           ; $566e: $00
    xor d                                         ; $566f: $aa
    nop                                           ; $5670: $00
    ld d, l                                       ; $5671: $55
    nop                                           ; $5672: $00
    rst $38                                       ; $5673: $ff
    ld bc, $0068                                  ; $5674: $01 $68 $00
    rra                                           ; $5677: $1f
    rst $38                                       ; $5678: $ff
    rlca                                          ; $5679: $07
    rst $38                                       ; $567a: $ff
    ld bc, $007f                                  ; $567b: $01 $7f $00
    ld a, a                                       ; $567e: $7f
    nop                                           ; $567f: $00
    nop                                           ; $5680: $00
    inc bc                                        ; $5681: $03
    nop                                           ; $5682: $00
    db $fc                                        ; $5683: $fc
    nop                                           ; $5684: $00
    or [hl]                                       ; $5685: $b6
    ld c, b                                       ; $5686: $48
    rst $38                                       ; $5687: $ff
    nop                                           ; $5688: $00
    cp $ff                                        ; $5689: $fe $ff
    ld hl, sp-$01                                 ; $568b: $f8 $ff
    ldh [rIE], a                                  ; $568d: $e0 $ff
    nop                                           ; $568f: $00
    db $fd                                        ; $5690: $fd
    ld bc, $b800                                  ; $5691: $01 $00 $b8
    nop                                           ; $5694: $00
    scf                                           ; $5695: $37
    nop                                           ; $5696: $00
    dec c                                         ; $5697: $0d
    ld [bc], a                                    ; $5698: $02
    jr nz, @+$3a                                  ; $5699: $20 $38

    inc bc                                        ; $569b: $03
    inc h                                         ; $569c: $24
    nop                                           ; $569d: $00
    ld a, [de]                                    ; $569e: $1a
    nop                                           ; $569f: $00
    db $ec                                        ; $56a0: $ec
    db $10                                        ; $56a1: $10
    jr nz, jr_0bc_56cc                            ; $56a2: $20 $28

    ld [hl+], a                                   ; $56a4: $22
    ld [$2c00], sp                                ; $56a5: $08 $00 $2c
    nop                                           ; $56a8: $00
    inc hl                                        ; $56a9: $23
    nop                                           ; $56aa: $00
    db $db                                        ; $56ab: $db
    inc h                                         ; $56ac: $24
    call c, Call_000_0023                         ; $56ad: $dc $23 $00
    xor $11                                       ; $56b0: $ee $11
    ld c, [hl]                                    ; $56b2: $4e
    ld sp, $106b                                  ; $56b3: $31 $6b $10

jr_0bc_56b6:
    add hl, bc                                    ; $56b6: $09
    nop                                           ; $56b7: $00
    add b                                         ; $56b8: $80
    ld bc, $9d08                                  ; $56b9: $01 $08 $9d
    ld [bc], a                                    ; $56bc: $02
    jp nc, $eb2d                                  ; $56bd: $d2 $2d $eb

    inc d                                         ; $56c0: $14
    ld h, a                                       ; $56c1: $67
    inc b                                         ; $56c2: $04
    sbc b                                         ; $56c3: $98
    cp l                                          ; $56c4: $bd
    ld b, b                                       ; $56c5: $40
    ld [hl], b                                    ; $56c6: $70
    add b                                         ; $56c7: $80
    ld de, $2f08                                  ; $56c8: $11 $08 $2f
    ret nc                                        ; $56cb: $d0

jr_0bc_56cc:
    nop                                           ; $56cc: $00
    rst $30                                       ; $56cd: $f7
    ld [$1e21], sp                                ; $56ce: $08 $21 $1e
    cp c                                          ; $56d1: $b9
    ld b, $1e                                     ; $56d2: $06 $1e
    ld bc, $0340                                  ; $56d4: $01 $40 $03
    jr nz, jr_0bc_56e9                            ; $56d7: $20 $10

    ld c, $01                                     ; $56d9: $0e $01
    db $fd                                        ; $56db: $fd
    ld [bc], a                                    ; $56dc: $02
    jp z, $0434                                   ; $56dd: $ca $34 $04

    ld [hl], d                                    ; $56e0: $72
    adc h                                         ; $56e1: $8c
    ld [hl], $88                                  ; $56e2: $36 $88
    sbc b                                         ; $56e4: $98
    jr nc, jr_0bc_56f7                            ; $56e5: $30 $10

    ret nz                                        ; $56e7: $c0

    nop                                           ; $56e8: $00

jr_0bc_56e9:
    inc b                                         ; $56e9: $04
    dec c                                         ; $56ea: $0d
    ccf                                           ; $56eb: $3f
    ld d, e                                       ; $56ec: $53
    rst $38                                       ; $56ed: $ff
    jr nz, jr_0bc_56b6                            ; $56ee: $20 $c6

    jr nc, jr_0bc_5711                            ; $56f0: $30 $1f

    nop                                           ; $56f2: $00
    ld bc, $e0cf                                  ; $56f3: $01 $cf $e0
    nop                                           ; $56f6: $00

jr_0bc_56f7:
    ldh a, [$60]                                  ; $56f7: $f0 $60
    rst $38                                       ; $56f9: $ff
    dec b                                         ; $56fa: $05
    ret c                                         ; $56fb: $d8

    jr nz, jr_0bc_56ff                            ; $56fc: $20 $01

    ret nz                                        ; $56fe: $c0

jr_0bc_56ff:
    nop                                           ; $56ff: $00
    jr @+$41                                      ; $5700: $18 $3f

    dec bc                                        ; $5702: $0b
    rst $38                                       ; $5703: $ff
    or d                                          ; $5704: $b2
    and $30                                       ; $5705: $e6 $30
    nop                                           ; $5707: $00
    rrca                                          ; $5708: $0f
    nop                                           ; $5709: $00
    ld h, e                                       ; $570a: $63
    ldh a, [$30]                                  ; $570b: $f0 $30
    db $fc                                        ; $570d: $fc
    jr z, @+$01                                   ; $570e: $28 $ff

    ld h, b                                       ; $5710: $60

jr_0bc_5711:
    db $10                                        ; $5711: $10
    ld hl, sp+$20                                 ; $5712: $f8 $20
    rst $38                                       ; $5714: $ff
    nop                                           ; $5715: $00
    add b                                         ; $5716: $80
    sbc a                                         ; $5717: $9f
    add b                                         ; $5718: $80
    cp $c0                                        ; $5719: $fe $c0
    nop                                           ; $571b: $00
    ret z                                         ; $571c: $c8

    add b                                         ; $571d: $80
    add b                                         ; $571e: $80
    nop                                           ; $571f: $00
    ret nz                                        ; $5720: $c0

    ld b, b                                       ; $5721: $40
    ldh [$e0], a                                  ; $5722: $e0 $e0
    nop                                           ; $5724: $00
    rst $28                                       ; $5725: $ef
    db $10                                        ; $5726: $10
    adc $00                                       ; $5727: $ce $00
    rra                                           ; $5729: $1f
    nop                                           ; $572a: $00
    rra                                           ; $572b: $1f
    ld bc, $0101                                  ; $572c: $01 $01 $01
    nop                                           ; $572f: $00
    ld [bc], a                                    ; $5730: $02
    nop                                           ; $5731: $00
    inc e                                         ; $5732: $1c
    nop                                           ; $5733: $00
    ld bc, $08a8                                  ; $5734: $01 $a8 $08
    ld a, [hl+]                                   ; $5737: $2a
    add b                                         ; $5738: $80
    cp h                                          ; $5739: $bc
    jr nz, jr_0bc_573c                            ; $573a: $20 $00

jr_0bc_573c:
    call c, RST_20                                ; $573c: $dc $20 $00
    call nz, RST_20                               ; $573f: $c4 $20 $00
    rst $38                                       ; $5742: $ff
    nop                                           ; $5743: $00
    nop                                           ; $5744: $00
    cp $00                                        ; $5745: $fe $00
    db $dd                                        ; $5747: $dd
    nop                                           ; $5748: $00
    sbc e                                         ; $5749: $9b
    ld bc, $0881                                  ; $574a: $01 $81 $08
    nop                                           ; $574d: $00
    ld b, d                                       ; $574e: $42
    nop                                           ; $574f: $00
    inc c                                         ; $5750: $0c
    jr nz, jr_0bc_5753                            ; $5751: $20 $00

jr_0bc_5753:
    ret nz                                        ; $5753: $c0

    nop                                           ; $5754: $00
    db $10                                        ; $5755: $10
    add b                                         ; $5756: $80
    cp b                                          ; $5757: $b8
    nop                                           ; $5758: $00
    add sp, -$60                                  ; $5759: $e8 $a0
    ldh a, [rSVBK]                                ; $575b: $f0 $70
    ldh [$e0], a                                  ; $575d: $e0 $e0
    db $fc                                        ; $575f: $fc
    nop                                           ; $5760: $00
    sbc b                                         ; $5761: $98
    ldh [$60], a                                  ; $5762: $e0 $60
    inc c                                         ; $5764: $0c
    nop                                           ; $5765: $00
    rlca                                          ; $5766: $07
    nop                                           ; $5767: $00
    inc de                                        ; $5768: $13
    jr nz, @+$05                                  ; $5769: $20 $03

    add hl, de                                    ; $576b: $19
    jp c, $1700                                   ; $576c: $da $00 $17

    ld bc, $0122                                  ; $576f: $01 $22 $01
    ld h, a                                       ; $5772: $67
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    or $44                                        ; $5775: $f6 $44
    db $fc                                        ; $5777: $fc
    ldh a, [$fa]                                  ; $5778: $f0 $fa
    jr jr_0bc_57f6                                ; $577a: $18 $7a

    nop                                           ; $577c: $00
    xor b                                         ; $577d: $a8
    db $e4                                        ; $577e: $e4
    ld b, b                                       ; $577f: $40
    add sp, -$58                                  ; $5780: $e8 $a8
    ldh a, [$60]                                  ; $5782: $f0 $60
    ldh [rP1], a                                  ; $5784: $e0 $00
    ld h, b                                       ; $5786: $60
    ld d, l                                       ; $5787: $55
    ld [bc], a                                    ; $5788: $02
    ld c, a                                       ; $5789: $4f
    nop                                           ; $578a: $00
    ld [bc], a                                    ; $578b: $02
    ld bc, $0027                                  ; $578c: $01 $27 $00
    nop                                           ; $578f: $00
    ld d, e                                       ; $5790: $53
    inc bc                                        ; $5791: $03
    dec d                                         ; $5792: $15
    nop                                           ; $5793: $00
    ld h, e                                       ; $5794: $63
    nop                                           ; $5795: $00
    ld d, $00                                     ; $5796: $16 $00
    ld bc, $58fc                                  ; $5798: $01 $fc $58
    ldh [$e0], a                                  ; $579b: $e0 $e0
    or $24                                        ; $579d: $f6 $24
    db $fc                                        ; $579f: $fc
    nop                                           ; $57a0: $00
    ret nc                                        ; $57a1: $d0

    ld a, [$7a58]                                 ; $57a2: $fa $58 $7a
    or d                                          ; $57a5: $b2
    db $f4                                        ; $57a6: $f4
    nop                                           ; $57a7: $00
    db $fc                                        ; $57a8: $fc
    nop                                           ; $57a9: $00
    ld a, b                                       ; $57aa: $78
    jr nz, @+$05                                  ; $57ab: $20 $03

    ld h, l                                       ; $57ad: $65
    ld [bc], a                                    ; $57ae: $02
    ld de, $0702                                  ; $57af: $11 $02 $07
    nop                                           ; $57b2: $00
    nop                                           ; $57b3: $00
    jp nz, $2e01                                  ; $57b4: $c2 $01 $2e

    ld bc, $0152                                  ; $57b7: $01 $52 $01
    ld [hl], a                                    ; $57ba: $77
    ld [bc], a                                    ; $57bb: $02
    ld [de], a                                    ; $57bc: $12
    ldh a, [$d0]                                  ; $57bd: $f0 $d0
    ret nc                                        ; $57bf: $d0

    ld b, b                                       ; $57c0: $40
    ret nz                                        ; $57c1: $c0

    rst $20                                       ; $57c2: $e7
    nop                                           ; $57c3: $00
    inc c                                         ; $57c4: $0c
    ld [$1ecc], sp                                ; $57c5: $08 $cc $1e
    cp $7f                                        ; $57c8: $fe $7f
    ld a, l                                       ; $57ca: $7d
    ld bc, $0517                                  ; $57cb: $01 $17 $05
    add hl, sp                                    ; $57ce: $39
    nop                                           ; $57cf: $00
    ld b, $19                                     ; $57d0: $06 $19
    ld b, $00                                     ; $57d2: $06 $00
    rlca                                          ; $57d4: $07
    ld b, b                                       ; $57d5: $40
    ld b, a                                       ; $57d6: $47
    ldh a, [rNR41]                                ; $57d7: $f0 $20
    rst $30                                       ; $57d9: $f7
    db $fc                                        ; $57da: $fc
    adc l                                         ; $57db: $8d
    ld bc, $0000                                  ; $57dc: $01 $00 $00
    sub [hl]                                      ; $57df: $96
    nop                                           ; $57e0: $00
    ld [hl], l                                    ; $57e1: $75
    nop                                           ; $57e2: $00
    add d                                         ; $57e3: $82
    xor l                                         ; $57e4: $ad
    ld [de], a                                    ; $57e5: $12
    sbc [hl]                                      ; $57e6: $9e
    nop                                           ; $57e7: $00
    sbc d                                         ; $57e8: $9a
    nop                                           ; $57e9: $00
    jp RST_08                                     ; $57ea: $c3 $08 $00


    push bc                                       ; $57ed: $c5
    ld [bc], a                                    ; $57ee: $02
    nop                                           ; $57ef: $00
    sbc b                                         ; $57f0: $98
    nop                                           ; $57f1: $00
    ldh [rP1], a                                  ; $57f2: $e0 $00
    dec h                                         ; $57f4: $25
    inc c                                         ; $57f5: $0c

jr_0bc_57f6:
    ret nz                                        ; $57f6: $c0

    rst $00                                       ; $57f7: $c7
    nop                                           ; $57f8: $00
    add $c4                                       ; $57f9: $c6 $c4
    nop                                           ; $57fb: $00
    inc [hl]                                      ; $57fc: $34
    add hl, bc                                    ; $57fd: $09
    ld c, b                                       ; $57fe: $48
    jr nc, jr_0bc_5801                            ; $57ff: $30 $00

jr_0bc_5801:
    inc a                                         ; $5801: $3c
    nop                                           ; $5802: $00
    rrca                                          ; $5803: $0f
    nop                                           ; $5804: $00
    ld e, $01                                     ; $5805: $1e $01
    xor e                                         ; $5807: $ab
    stop                                          ; $5808: $10 $00
    db $ec                                        ; $580a: $ec
    db $10                                        ; $580b: $10
    or [hl]                                       ; $580c: $b6
    ld c, b                                       ; $580d: $48
    nop                                           ; $580e: $00
    nop                                           ; $580f: $00
    ld [hl], l                                    ; $5810: $75
    ld [bc], a                                    ; $5811: $02
    nop                                           ; $5812: $00
    and d                                         ; $5813: $a2
    ld b, b                                       ; $5814: $40
    ldh [rP1], a                                  ; $5815: $e0 $00
    ld e, h                                       ; $5817: $5c
    add b                                         ; $5818: $80
    xor $10                                       ; $5819: $ee $10
    ld d, h                                       ; $581b: $54
    ret nc                                        ; $581c: $d0

    ld [hl], d                                    ; $581d: $72
    ld de, $ba80                                  ; $581e: $11 $80 $ba
    ld bc, $c216                                  ; $5821: $01 $16 $c2
    ld bc, $0629                                  ; $5824: $01 $29 $06
    db $10                                        ; $5827: $10
    dec de                                        ; $5828: $1b
    inc b                                         ; $5829: $04
    dec c                                         ; $582a: $0d

jr_0bc_582b:
    ld b, b                                       ; $582b: $40
    nop                                           ; $582c: $00
    adc l                                         ; $582d: $8d
    ld [hl], d                                    ; $582e: $72
    rst $38                                       ; $582f: $ff
    nop                                           ; $5830: $00
    inc d                                         ; $5831: $14
    db $eb                                        ; $5832: $eb
    nop                                           ; $5833: $00
    or c                                          ; $5834: $b1
    inc e                                         ; $5835: $1c
    jr nz, jr_0bc_5838                            ; $5836: $20 $00

jr_0bc_5838:
    and d                                         ; $5838: $a2
    ld bc, $c03f                                  ; $5839: $01 $3f $c0
    nop                                           ; $583c: $00

Jump_0bc_583d:
jr_0bc_583d:
    xor c                                         ; $583d: $a9
    ld d, [hl]                                    ; $583e: $56
    halt                                          ; $583f: $76
    ld [$1866], sp                                ; $5840: $08 $66 $18
    inc sp                                        ; $5843: $33
    ld [$3b00], sp                                ; $5844: $08 $00 $3b
    inc b                                         ; $5847: $04
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    add [hl]                                      ; $584a: $86
    ld bc, $010e                                  ; $584b: $01 $0e $01
    ld b, h                                       ; $584e: $44
    add l                                         ; $584f: $85
    xor $01                                       ; $5850: $ee $01
    rlca                                          ; $5852: $07
    nop                                           ; $5853: $00
    add h                                         ; $5854: $84
    or d                                          ; $5855: $b2
    ld de, $00e0                                  ; $5856: $11 $e0 $00
    nop                                           ; $5859: $00
    reti                                          ; $585a: $d9


    jr nz, jr_0bc_583d                            ; $585b: $20 $e0

    nop                                           ; $585d: $00
    jr nc, @-$3e                                  ; $585e: $30 $c0

    xor b                                         ; $5860: $a8
    ld b, b                                       ; $5861: $40
    db $10                                        ; $5862: $10
    ld l, b                                       ; $5863: $68

jr_0bc_5864:
    db $10                                        ; $5864: $10
    jr nc, jr_0bc_582b                            ; $5865: $30 $c4

    ld bc, $0c33                                  ; $5867: $01 $33 $0c
    cp l                                          ; $586a: $bd
    nop                                           ; $586b: $00
    nop                                           ; $586c: $00
    sbc h                                         ; $586d: $9c
    nop                                           ; $586e: $00
    ld h, [hl]                                    ; $586f: $66
    jr jr_0bc_58a8                                ; $5870: $18 $36

    nop                                           ; $5872: $00
    dec sp                                        ; $5873: $3b
    inc b                                         ; $5874: $04
    ld b, b                                       ; $5875: $40
    dec de                                        ; $5876: $1b
    jr nc, jr_0bc_5879                            ; $5877: $30 $00

jr_0bc_5879:
    ld b, a                                       ; $5879: $47
    add b                                         ; $587a: $80
    jp Jump_000_2000                              ; $587b: $c3 $00 $20


    ld b, b                                       ; $587e: $40
    rla                                           ; $587f: $17
    ld h, b                                       ; $5880: $60
    nop                                           ; $5881: $00
    jr nz, jr_0bc_5864                            ; $5882: $20 $e0

    ld bc, $e401                                  ; $5884: $01 $01 $e4
    ld bc, $4810                                  ; $5887: $01 $10 $48
    di                                            ; $588a: $f3
    add hl, bc                                    ; $588b: $09
    ld [c], a                                     ; $588c: $e2
    ld [hl], b                                    ; $588d: $70
    ld c, b                                       ; $588e: $48
    inc bc                                        ; $588f: $03
    ld a, [bc]                                    ; $5890: $0a
    ld b, b                                       ; $5891: $40
    jr c, jr_0bc_58cc                             ; $5892: $38 $38

    inc b                                         ; $5894: $04
    jr jr_0bc_5907                                ; $5895: $18 $70

    nop                                           ; $5897: $00
    db $db                                        ; $5898: $db
    nop                                           ; $5899: $00
    inc h                                         ; $589a: $24
    db $fc                                        ; $589b: $fc
    inc bc                                        ; $589c: $03
    sub l                                         ; $589d: $95

jr_0bc_589e:
    ld l, d                                       ; $589e: $6a
    ld l, [hl]                                    ; $589f: $6e
    db $10                                        ; $58a0: $10
    ld h, [hl]                                    ; $58a1: $66
    inc h                                         ; $58a2: $24
    jr @+$0e                                      ; $58a3: $18 $0c

    ld l, e                                       ; $58a5: $6b
    add hl, bc                                    ; $58a6: $09
    nop                                           ; $58a7: $00

jr_0bc_58a8:
    rst $00                                       ; $58a8: $c7
    add sp, $00                                   ; $58a9: $e8 $00
    ld h, b                                       ; $58ab: $60
    ld [$6002], sp                                ; $58ac: $08 $02 $60
    rrca                                          ; $58af: $0f
    jr nz, @-$6f                                  ; $58b0: $20 $8f

    nop                                           ; $58b2: $00
    rst $18                                       ; $58b3: $df
    adc a                                         ; $58b4: $8f
    ld a, [bc]                                    ; $58b5: $0a
    adc $00                                       ; $58b6: $ce $00
    jr nc, jr_0bc_589e                            ; $58b8: $30 $e4

    sbc d                                         ; $58ba: $9a
    push bc                                       ; $58bb: $c5
    cp d                                          ; $58bc: $ba
    push hl                                       ; $58bd: $e5
    adc d                                         ; $58be: $8a
    jp $ac00                                      ; $58bf: $c3 $00 $ac


    jp $a32c                                      ; $58c2: $c3 $2c $a3


    ld c, h                                       ; $58c5: $4c
    rst $38                                       ; $58c6: $ff
    rst $38                                       ; $58c7: $ff
    ccf                                           ; $58c8: $3f
    nop                                           ; $58c9: $00
    rst $00                                       ; $58ca: $c7
    rra                                           ; $58cb: $1f

jr_0bc_58cc:
    and l                                         ; $58cc: $a5
    rra                                           ; $58cd: $1f
    db $ed                                        ; $58ce: $ed
    cp a                                          ; $58cf: $bf
    ld c, e                                       ; $58d0: $4b
    cp a                                          ; $58d1: $bf
    dec b                                         ; $58d2: $05
    res 7, a                                      ; $58d3: $cb $bf
    ret                                           ; $58d5: $c9


    rst $08                                       ; $58d6: $cf
    or l                                          ; $58d7: $b5
    or b                                          ; $58d8: $b0
    ld [bc], a                                    ; $58d9: $02
    db $e4                                        ; $58da: $e4
    ld [bc], a                                    ; $58db: $02
    nop                                           ; $58dc: $00
    ld bc, $ffe2                                  ; $58dd: $01 $e2 $ff
    jp z, $e8ff                                   ; $58e0: $ca $ff $e8

    rst $38                                       ; $58e3: $ff
    ret z                                         ; $58e4: $c8

    inc b                                         ; $58e5: $04
    nop                                           ; $58e6: $00
    inc b                                         ; $58e7: $04
    rst $38                                       ; $58e8: $ff

jr_0bc_58e9:
    rst $38                                       ; $58e9: $ff
    dec e                                         ; $58ea: $1d
    rst $38                                       ; $58eb: $ff
    rrca                                          ; $58ec: $0f
    ld [bc], a                                    ; $58ed: $02
    nop                                           ; $58ee: $00
    inc sp                                        ; $58ef: $33
    rst $38                                       ; $58f0: $ff
    nop                                           ; $58f1: $00
    or e                                          ; $58f2: $b3
    rst $38                                       ; $58f3: $ff
    or c                                          ; $58f4: $b1
    rst $38                                       ; $58f5: $ff
    or b                                          ; $58f6: $b0
    rst $38                                       ; $58f7: $ff
    rst $38                                       ; $58f8: $ff
    cp $00                                        ; $58f9: $fe $00
    add c                                         ; $58fb: $81
    db $fc                                        ; $58fc: $fc
    jp $cbf4                                      ; $58fd: $c3 $f4 $cb


    db $fc                                        ; $5900: $fc
    add e                                         ; $5901: $83
    ld a, [$8510]                                 ; $5902: $fa $10 $85
    cp $81                                        ; $5905: $fe $81

jr_0bc_5907:
    ld de, $7e0a                                  ; $5907: $11 $0a $7e
    add c                                         ; $590a: $81
    ld [hl], h                                    ; $590b: $74
    adc e                                         ; $590c: $8b
    nop                                           ; $590d: $00
    inc [hl]                                      ; $590e: $34
    rr h                                          ; $590f: $cb $1c
    db $e3                                        ; $5911: $e3
    ld [bc], a                                    ; $5912: $02
    db $fd                                        ; $5913: $fd
    ld b, $f9                                     ; $5914: $06 $f9
    nop                                           ; $5916: $00
    jp $ff3c                                      ; $5917: $c3 $3c $ff


    rst $38                                       ; $591a: $ff
    ld c, a                                       ; $591b: $4f
    or c                                          ; $591c: $b1
    ld h, a                                       ; $591d: $67
    sbc c                                         ; $591e: $99
    nop                                           ; $591f: $00
    rst $00                                       ; $5920: $c7
    jr c, jr_0bc_58e9                             ; $5921: $38 $c6

    add hl, sp                                    ; $5923: $39
    ld b, d                                       ; $5924: $42
    cp l                                          ; $5925: $bd
    ld h, d                                       ; $5926: $62
    sbc l                                         ; $5927: $9d
    ld a, [hl+]                                   ; $5928: $2a
    ld h, a                                       ; $5929: $67
    sbc b                                         ; $592a: $98
    nop                                           ; $592b: $00
    inc bc                                        ; $592c: $03
    ld [hl], a                                    ; $592d: $77
    ld [bc], a                                    ; $592e: $02
    nop                                           ; $592f: $00
    ld [hl], e                                    ; $5930: $73
    ld b, b                                       ; $5931: $40
    nop                                           ; $5932: $00
    inc sp                                        ; $5933: $33
    ld [$53ff], sp                                ; $5934: $08 $ff $53

jr_0bc_5937:
    rst $38                                       ; $5937: $ff
    dec hl                                        ; $5938: $2b
    add b                                         ; $5939: $80
    nop                                           ; $593a: $00
    ld sp, $9b64                                  ; $593b: $31 $64 $9b
    nop                                           ; $593e: $00
    ld b, l                                       ; $593f: $45
    cp d                                          ; $5940: $ba
    ld h, l                                       ; $5941: $65
    sbc d                                         ; $5942: $9a
    ld b, e                                       ; $5943: $43

jr_0bc_5944:
    and h                                         ; $5944: $a4
    jp $2e24                                      ; $5945: $c3 $24 $2e


    and e                                         ; $5948: $a3
    ld e, h                                       ; $5949: $5c
    ld [hl], b                                    ; $594a: $70
    jr nc, jr_0bc_5937                            ; $594b: $30 $ea

    ld [hl], b                                    ; $594d: $70
    nop                                           ; $594e: $00
    ld [bc], a                                    ; $594f: $02
    ld [$2040], sp                                ; $5950: $08 $40 $20
    rst $00                                       ; $5953: $c7
    inc b                                         ; $5954: $04
    jr c, jr_0bc_599a                             ; $5955: $38 $43

    cp h                                          ; $5957: $bc
    ld h, e                                       ; $5958: $63
    sbc h                                         ; $5959: $9c
    ld b, b                                       ; $595a: $40
    ld [$31ce], sp                                ; $595b: $08 $ce $31
    jr nz, jr_0bc_5944                            ; $595e: $20 $e4

    sbc e                                         ; $5960: $9b
    or b                                          ; $5961: $b0
    nop                                           ; $5962: $00
    sbc d                                         ; $5963: $9a
    jp $c3bc                                      ; $5964: $c3 $bc $c3


    inc a                                         ; $5967: $3c
    ld [$5ca3], sp                                ; $5968: $08 $a3 $5c
    nop                                           ; $596b: $00
    ld a, $3b                                     ; $596c: $3e $3b
    inc bc                                        ; $596e: $03
    rst $38                                       ; $596f: $ff
    ld [$04ff], sp                                ; $5970: $08 $ff $04
    inc e                                         ; $5973: $1c
    rst $38                                       ; $5974: $ff
    ld c, $ff                                     ; $5975: $0e $ff
    ld l, $02                                     ; $5977: $2e $02
    nop                                           ; $5979: $00
    dec b                                         ; $597a: $05
    nop                                           ; $597b: $00
    nop                                           ; $597c: $00
    ld d, $00                                     ; $597d: $16 $00
    add h                                         ; $597f: $84
    add b                                         ; $5980: $80
    ldh [$e0], a                                  ; $5981: $e0 $e0
    ld sp, hl                                     ; $5983: $f9
    ld sp, hl                                     ; $5984: $f9
    and c                                         ; $5985: $a1
    ld l, d                                       ; $5986: $6a
    dec de                                        ; $5987: $1b
    ld l, d                                       ; $5988: $6a
    jr c, @+$03                                   ; $5989: $38 $01

    ld bc, $8301                                  ; $598b: $01 $01 $83
    add e                                         ; $598e: $83
    ld a, b                                       ; $598f: $78
    dec hl                                        ; $5990: $2b
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    ld a, $08                                     ; $5993: $3e $08
    ld a, a                                       ; $5995: $7f
    inc c                                         ; $5996: $0c
    rst $38                                       ; $5997: $ff
    ld e, $ff                                     ; $5998: $1e $ff

jr_0bc_599a:
    ld d, b                                       ; $599a: $50
    inc c                                         ; $599b: $0c
    ld l, $00                                     ; $599c: $2e $00
    ld a, $32                                     ; $599e: $3e $32
    nop                                           ; $59a0: $00
    nop                                           ; $59a1: $00
    nop                                           ; $59a2: $00
    inc e                                         ; $59a3: $1c
    inc e                                         ; $59a4: $1c
    ld [hl+], a                                   ; $59a5: $22
    ccf                                           ; $59a6: $3f
    ccf                                           ; $59a7: $3f
    sub [hl]                                      ; $59a8: $96
    dec sp                                        ; $59a9: $3b
    ld e, $00                                     ; $59aa: $1e $00
    rla                                           ; $59ac: $17
    adc d                                         ; $59ad: $8a
    inc bc                                        ; $59ae: $03
    ret z                                         ; $59af: $c8

    ld [$f8c8], sp                                ; $59b0: $08 $c8 $f8
    ld hl, sp-$02                                 ; $59b3: $f8 $fe
    ld bc, $ff00                                  ; $59b5: $01 $00 $ff
    rst $38                                       ; $59b8: $ff
    db $10                                        ; $59b9: $10
    ld bc, $b000                                  ; $59ba: $01 $00 $b0
    ld b, $80                                     ; $59bd: $06 $80
    rrca                                          ; $59bf: $0f
    nop                                           ; $59c0: $00
    cpl                                           ; $59c1: $2f
    add sp, $33                                   ; $59c2: $e8 $33
    inc b                                         ; $59c4: $04
    ld b, b                                       ; $59c5: $40
    nop                                           ; $59c6: $00
    dec sp                                        ; $59c7: $3b
    nop                                           ; $59c8: $00
    cp a                                          ; $59c9: $bf
    or $3b                                        ; $59ca: $f6 $3b
    ld [hl], h                                    ; $59cc: $74
    ld [$5848], sp                                ; $59cd: $08 $48 $58
    ld h, b                                       ; $59d0: $60
    nop                                           ; $59d1: $00
    inc bc                                        ; $59d2: $03
    inc bc                                        ; $59d3: $03
    ld h, b                                       ; $59d4: $60
    jr nc, jr_0bc_59d7                            ; $59d5: $30 $00

jr_0bc_59d7:
    nop                                           ; $59d7: $00
    adc h                                         ; $59d8: $8c
    jr nc, jr_0bc_59db                            ; $59d9: $30 $00

jr_0bc_59db:
    call z, $03bf                                 ; $59db: $cc $bf $03
    jr jr_0bc_5a04                                ; $59de: $18 $24

    ld c, $0e                                     ; $59e0: $0e $0e
    rra                                           ; $59e2: $1f
    rra                                           ; $59e3: $1f
    ret nz                                        ; $59e4: $c0

    db $f4                                        ; $59e5: $f4
    ld c, e                                       ; $59e6: $4b
    jr nc, jr_0bc_5a25                            ; $59e7: $30 $3c

    jr z, @+$01                                   ; $59e9: $28 $ff

    ld l, b                                       ; $59eb: $68
    rst $38                                       ; $59ec: $ff
    ret c                                         ; $59ed: $d8

    rst $38                                       ; $59ee: $ff
    nop                                           ; $59ef: $00
    db $ec                                        ; $59f0: $ec
    ld b, d                                       ; $59f1: $42
    xor $51                                       ; $59f2: $ee $51
    db $e4                                        ; $59f4: $e4
    ld e, d                                       ; $59f5: $5a
    push af                                       ; $59f6: $f5
    ld c, d                                       ; $59f7: $4a
    nop                                           ; $59f8: $00
    push af                                       ; $59f9: $f5
    ld c, d                                       ; $59fa: $4a
    di                                            ; $59fb: $f3
    inc c                                         ; $59fc: $0c
    di                                            ; $59fd: $f3
    adc h                                         ; $59fe: $8c
    di                                            ; $59ff: $f3
    adc h                                         ; $5a00: $8c
    nop                                           ; $5a01: $00
    ld l, a                                       ; $5a02: $6f
    sub l                                         ; $5a03: $95

jr_0bc_5a04:
    ld l, a                                       ; $5a04: $6f
    sub a                                         ; $5a05: $97
    ld a, a                                       ; $5a06: $7f
    and a                                         ; $5a07: $a7
    ld a, a                                       ; $5a08: $7f
    and e                                         ; $5a09: $a3
    nop                                           ; $5a0a: $00
    ld a, a                                       ; $5a0b: $7f
    ei                                            ; $5a0c: $fb
    ld a, a                                       ; $5a0d: $7f
    cp e                                          ; $5a0e: $bb
    ld a, a                                       ; $5a0f: $7f
    sub e                                         ; $5a10: $93
    ld e, a                                       ; $5a11: $5f
    xor e                                         ; $5a12: $ab
    nop                                           ; $5a13: $00
    rst $38                                       ; $5a14: $ff
    ld sp, hl                                     ; $5a15: $f9
    rst $38                                       ; $5a16: $ff
    db $fd                                        ; $5a17: $fd
    rst $38                                       ; $5a18: $ff
    push af                                       ; $5a19: $f5
    rst $38                                       ; $5a1a: $ff
    pop af                                        ; $5a1b: $f1
    ld a, [bc]                                    ; $5a1c: $0a
    rst $38                                       ; $5a1d: $ff
    call nc, $dcff                                ; $5a1e: $d4 $ff $dc
    ld [bc], a                                    ; $5a21: $02
    nop                                           ; $5a22: $00
    ret z                                         ; $5a23: $c8

    ld [hl], h                                    ; $5a24: $74

jr_0bc_5a25:
    ld bc, $0cb9                                  ; $5a25: $01 $b9 $0c
    rst $38                                       ; $5a28: $ff
    sbc c                                         ; $5a29: $99
    rst $38                                       ; $5a2a: $ff
    sbc l                                         ; $5a2b: $9d
    ld c, $10                                     ; $5a2c: $0e $10
    ld [de], a                                    ; $5a2e: $12
    nop                                           ; $5a2f: $00
    xor $91                                       ; $5a30: $ee $91
    nop                                           ; $5a32: $00
    or $89                                        ; $5a33: $f6 $89
    or $c9                                        ; $5a35: $f6 $c9
    rst $30                                       ; $5a37: $f7
    ret z                                         ; $5a38: $c8

    push af                                       ; $5a39: $f5
    jp z, $f720                                   ; $5a3a: $ca $20 $f7

    adc b                                         ; $5a3d: $88
    adc e                                         ; $5a3e: $8b
    inc b                                         ; $5a3f: $04
    ld b, b                                       ; $5a40: $40
    ret nz                                        ; $5a41: $c0

    ccf                                           ; $5a42: $3f
    ldh [$1f], a                                  ; $5a43: $e0 $1f
    nop                                           ; $5a45: $00
    ldh a, [rIF]                                  ; $5a46: $f0 $0f
    pop af                                        ; $5a48: $f1
    ld c, $f1                                     ; $5a49: $0e $f1
    ld c, $e3                                     ; $5a4b: $0e $e3
    inc e                                         ; $5a4d: $1c
    nop                                           ; $5a4e: $00
    jp $cf3c                                      ; $5a4f: $c3 $3c $cf


    jr nc, jr_0bc_5a79                            ; $5a52: $30 $25

    jp c, $9b64                                   ; $5a54: $da $64 $9b

    nop                                           ; $5a57: $00
    and d                                         ; $5a58: $a2
    ld e, l                                       ; $5a59: $5d
    and d                                         ; $5a5a: $a2
    ld e, l                                       ; $5a5b: $5d
    and e                                         ; $5a5c: $a3
    ld e, h                                       ; $5a5d: $5c
    ld b, a                                       ; $5a5e: $47
    cp c                                          ; $5a5f: $b9
    nop                                           ; $5a60: $00
    ld b, a                                       ; $5a61: $47
    cp c                                          ; $5a62: $b9
    ld h, a                                       ; $5a63: $67
    sbc c                                         ; $5a64: $99
    rst $38                                       ; $5a65: $ff
    cpl                                           ; $5a66: $2f
    rst $38                                       ; $5a67: $ff
    ccf                                           ; $5a68: $3f
    rst $10                                       ; $5a69: $d7
    halt                                          ; $5a6a: $76
    ld bc, $0802                                  ; $5a6b: $01 $02 $08
    ld a, e                                       ; $5a6e: $7b
    adc d                                         ; $5a6f: $8a
    ld bc, $3537                                  ; $5a70: $01 $37 $35
    inc b                                         ; $5a73: $04
    ret nc                                        ; $5a74: $d0

    ld d, b                                       ; $5a75: $50
    jr nc, jr_0bc_5a88                            ; $5a76: $30 $10

    nop                                           ; $5a78: $00

jr_0bc_5a79:
    ld d, l                                       ; $5a79: $55
    and d                                         ; $5a7a: $a2
    ld d, l                                       ; $5a7b: $55
    and e                                         ; $5a7c: $a3
    ld d, h                                       ; $5a7d: $54
    ld b, a                                       ; $5a7e: $47
    xor b                                         ; $5a7f: $a8
    ld b, a                                       ; $5a80: $47
    nop                                           ; $5a81: $00
    xor b                                         ; $5a82: $a8
    ld h, l                                       ; $5a83: $65
    adc d                                         ; $5a84: $8a
    cp a                                          ; $5a85: $bf
    ld d, a                                       ; $5a86: $57
    cp a                                          ; $5a87: $bf

jr_0bc_5a88:
    ld b, a                                       ; $5a88: $47
    cp a                                          ; $5a89: $bf
    nop                                           ; $5a8a: $00
    ld b, l                                       ; $5a8b: $45
    sbc a                                         ; $5a8c: $9f
    dec l                                         ; $5a8d: $2d

jr_0bc_5a8e:
    sbc a                                         ; $5a8e: $9f
    inc hl                                        ; $5a8f: $23
    sbc a                                         ; $5a90: $9f
    dec hl                                        ; $5a91: $2b
    sbc a                                         ; $5a92: $9f
    ld de, $4f29                                  ; $5a93: $11 $29 $4f
    or l                                          ; $5a96: $b5
    sub b                                         ; $5a97: $90
    jr nc, jr_0bc_5a8e                            ; $5a98: $30 $f4

    rst $38                                       ; $5a9a: $ff
    db $fc                                        ; $5a9b: $fc
    ld [bc], a                                    ; $5a9c: $02
    nop                                           ; $5a9d: $00
    ret nz                                        ; $5a9e: $c0

    db $10                                        ; $5a9f: $10
    ld a, [bc]                                    ; $5aa0: $0a
    db $d3                                        ; $5aa1: $d3
    inc c                                         ; $5aa2: $0c
    rst $30                                       ; $5aa3: $f7
    rst $38                                       ; $5aa4: $ff
    db $e3                                        ; $5aa5: $e3
    rst $30                                       ; $5aa6: $f7
    jp hl                                         ; $5aa7: $e9


    rst $20                                       ; $5aa8: $e7
    ld bc, $e7db                                  ; $5aa9: $01 $db $e7
    reti                                          ; $5aac: $d9


    rst $38                                       ; $5aad: $ff
    jp c, $faff                                   ; $5aae: $da $ff $fa

    ld [bc], a                                    ; $5ab1: $02
    nop                                           ; $5ab2: $00
    ld b, b                                       ; $5ab3: $40

jr_0bc_5ab4:
    xor $a0                                       ; $5ab4: $ee $a0
    jr nz, jr_0bc_5ab4                            ; $5ab6: $20 $fc

    jp nz, $c42d                                  ; $5ab8: $c2 $2d $c4

    ld a, [hl+]                                   ; $5abb: $2a
    call nz, Call_000_3a00                        ; $5abc: $c4 $00 $3a
    add h                                         ; $5abf: $84
    ld e, e                                       ; $5ac0: $5b
    rrca                                          ; $5ac1: $0f
    ret nc                                        ; $5ac2: $d0

    rrca                                          ; $5ac3: $0f
    sub [hl]                                      ; $5ac4: $96
    adc a                                         ; $5ac5: $8f
    ld bc, $9f1f                                  ; $5ac6: $01 $1f $9f
    ld l, a                                       ; $5ac9: $6f
    rst $28                                       ; $5aca: $ef
    sub l                                         ; $5acb: $95
    rst $28                                       ; $5acc: $ef
    rla                                           ; $5acd: $17
    ldh [rP1], a                                  ; $5ace: $e0 $00
    db $10                                        ; $5ad0: $10
    db $e3                                        ; $5ad1: $e3
    ld a, a                                       ; $5ad2: $7f
    di                                            ; $5ad3: $f3
    ld b, d                                       ; $5ad4: $42
    ld [bc], a                                    ; $5ad5: $02
    db $d3                                        ; $5ad6: $d3
    rst $38                                       ; $5ad7: $ff
    db $eb                                        ; $5ad8: $eb
    rst $38                                       ; $5ad9: $ff
    nop                                           ; $5ada: $00
    jp $c9f7                                      ; $5adb: $c3 $f7 $c9


    ei                                            ; $5ade: $fb
    push bc                                       ; $5adf: $c5
    rst $28                                       ; $5ae0: $ef
    pop de                                        ; $5ae1: $d1
    ei                                            ; $5ae2: $fb
    nop                                           ; $5ae3: $00
    sub l                                         ; $5ae4: $95
    ei                                            ; $5ae5: $fb
    push de                                       ; $5ae6: $d5
    ei                                            ; $5ae7: $fb
    push hl                                       ; $5ae8: $e5
    rst $30                                       ; $5ae9: $f7
    jp hl                                         ; $5aea: $e9


    rst $38                                       ; $5aeb: $ff
    ld b, h                                       ; $5aec: $44
    pop bc                                        ; $5aed: $c1
    ld [$9500], sp                                ; $5aee: $08 $00 $95
    rst $30                                       ; $5af1: $f7
    pop hl                                        ; $5af2: $e1
    ld c, h                                       ; $5af3: $4c
    nop                                           ; $5af4: $00
    pop de                                        ; $5af5: $d1
    di                                            ; $5af6: $f3
    db $10                                        ; $5af7: $10
    call $d5fb                                    ; $5af8: $cd $fb $d5
    db $10                                        ; $5afb: $10
    dec b                                         ; $5afc: $05
    db $f4                                        ; $5afd: $f4
    rst $38                                       ; $5afe: $ff
    add sp, -$03                                  ; $5aff: $e8 $fd
    db $10                                        ; $5b01: $10
    ld [$ddfe], a                                 ; $5b02: $ea $fe $dd
    dec l                                         ; $5b05: $2d
    ld bc, $fdd8                                  ; $5b06: $01 $d8 $fd
    ld [$00ff], a                                 ; $5b09: $ea $ff $00
    rst $08                                       ; $5b0c: $cf
    rst $38                                       ; $5b0d: $ff
    rlca                                          ; $5b0e: $07
    rra                                           ; $5b0f: $1f
    db $e3                                        ; $5b10: $e3
    rrca                                          ; $5b11: $0f
    rst $30                                       ; $5b12: $f7
    sbc a                                         ; $5b13: $9f
    nop                                           ; $5b14: $00
    ld l, e                                       ; $5b15: $6b
    rla                                           ; $5b16: $17
    db $eb                                        ; $5b17: $eb
    rla                                           ; $5b18: $17
    rst $28                                       ; $5b19: $ef
    sbc a                                         ; $5b1a: $9f
    ld h, e                                       ; $5b1b: $63
    rst $38                                       ; $5b1c: $ff
    ld e, b                                       ; $5b1d: $58
    ei                                            ; $5b1e: $fb
    ld [bc], a                                    ; $5b1f: $02
    nop                                           ; $5b20: $00
    reti                                          ; $5b21: $d9


jr_0bc_5b22:
    inc [hl]                                      ; $5b22: $34
    ld [$082e], sp                                ; $5b23: $08 $2e $08
    ei                                            ; $5b26: $fb
    sub l                                         ; $5b27: $95
    rst $38                                       ; $5b28: $ff
    ld b, c                                       ; $5b29: $41
    db $fc                                        ; $5b2a: $fc
    ld a, [hl+]                                   ; $5b2b: $2a
    nop                                           ; $5b2c: $00

Jump_0bc_5b2d:
    sub $ff                                       ; $5b2d: $d6 $ff
    ld a, [$d9fe]                                 ; $5b2f: $fa $fe $d9
    jr nc, jr_0bc_5b4c                            ; $5b32: $30 $18

    nop                                           ; $5b34: $00
    sbc a                                         ; $5b35: $9f
    ld h, a                                       ; $5b36: $67
    rra                                           ; $5b37: $1f
    xor a                                         ; $5b38: $af
    ccf                                           ; $5b39: $3f
    db $db                                        ; $5b3a: $db
    cp a                                          ; $5b3b: $bf
    ld c, e                                       ; $5b3c: $4b
    and b                                         ; $5b3d: $a0
    jr nc, jr_0bc_5b50                            ; $5b3e: $30 $10

    xor a                                         ; $5b40: $af
    jr nc, jr_0bc_5b43                            ; $5b41: $30 $00

jr_0bc_5b43:
    ld hl, sp-$02                                 ; $5b43: $f8 $fe
    db $fd                                        ; $5b45: $fd
    cp $f5                                        ; $5b46: $fe $f5
    dec h                                         ; $5b48: $25
    rst $38                                       ; $5b49: $ff
    ldh a, [$50]                                  ; $5b4a: $f0 $50

jr_0bc_5b4c:
    add hl, hl                                    ; $5b4c: $29
    db $ec                                        ; $5b4d: $ec
    ld d, e                                       ; $5b4e: $53
    add b                                         ; $5b4f: $80

jr_0bc_5b50:
    ld bc, $805b                                  ; $5b50: $01 $5b $80
    ld sp, $8400                                  ; $5b53: $31 $00 $84
    rrca                                          ; $5b56: $0f
    inc sp                                        ; $5b57: $33
    rrca                                          ; $5b58: $0f
    sub a                                         ; $5b59: $97
    rra                                           ; $5b5a: $1f
    and a                                         ; $5b5b: $a7
    rra                                           ; $5b5c: $1f
    nop                                           ; $5b5d: $00
    xor a                                         ; $5b5e: $af
    rla                                           ; $5b5f: $17
    xor e                                         ; $5b60: $ab
    rlca                                          ; $5b61: $07
    cp e                                          ; $5b62: $bb
    rla                                           ; $5b63: $17
    db $eb                                        ; $5b64: $eb
    ld c, a                                       ; $5b65: $4f
    ld b, c                                       ; $5b66: $41
    or a                                          ; $5b67: $b7
    ld [hl], b                                    ; $5b68: $70
    jr nz, jr_0bc_5b22                            ; $5b69: $20 $b7

    sbc a                                         ; $5b6b: $9f
    dec hl                                        ; $5b6c: $2b
    rla                                           ; $5b6d: $17
    xor e                                         ; $5b6e: $ab
    ld b, b                                       ; $5b6f: $40
    db $10                                        ; $5b70: $10
    inc b                                         ; $5b71: $04
    db $fc                                        ; $5b72: $fc
    rst $38                                       ; $5b73: $ff
    sbc $ff                                       ; $5b74: $de $ff
    adc $04                                       ; $5b76: $ce $04
    nop                                           ; $5b78: $00
    xor $ff                                       ; $5b79: $ee $ff
    dec b                                         ; $5b7b: $05
    db $ed                                        ; $5b7c: $ed
    rst $38                                       ; $5b7d: $ff
    db $dd                                        ; $5b7e: $dd
    rst $38                                       ; $5b7f: $ff
    db $db                                        ; $5b80: $db
    xor [hl]                                      ; $5b81: $ae
    dec b                                         ; $5b82: $05
    ld sp, hl                                     ; $5b83: $f9
    and h                                         ; $5b84: $a4
    ld bc, $f840                                  ; $5b85: $01 $40 $f8
    sbc [hl]                                      ; $5b88: $9e
    ld de, $ffcc                                  ; $5b89: $11 $cc $ff
    call z, Call_0bc_63fc                         ; $5b8c: $cc $fc $63
    cp $00                                        ; $5b8f: $fe $00
    ld h, c                                       ; $5b91: $61
    db $f4                                        ; $5b92: $f4
    adc e                                         ; $5b93: $8b
    push af                                       ; $5b94: $f5
    adc d                                         ; $5b95: $8a
    db $fd                                        ; $5b96: $fd
    jp nz, $00fa                                  ; $5b97: $c2 $fa $00

    push bc                                       ; $5b9a: $c5
    cp $41                                        ; $5b9b: $fe $41
    db $fc                                        ; $5b9d: $fc
    ld b, e                                       ; $5b9e: $43
    jp $053c                                      ; $5b9f: $c3 $3c $05


    nop                                           ; $5ba2: $00
    ld a, [$2ad5]                                 ; $5ba3: $fa $d5 $2a
    sub a                                         ; $5ba6: $97
    ld l, b                                       ; $5ba7: $68
    rrca                                          ; $5ba8: $0f
    ldh a, [$1f]                                  ; $5ba9: $f0 $1f
    nop                                           ; $5bab: $00
    and $9f                                       ; $5bac: $e6 $9f
    ld l, a                                       ; $5bae: $6f
    cp a                                          ; $5baf: $bf
    ld c, a                                       ; $5bb0: $4f
    rst $38                                       ; $5bb1: $ff
    ld d, l                                       ; $5bb2: $55
    rst $38                                       ; $5bb3: $ff
    xor e                                         ; $5bb4: $ab
    nop                                           ; $5bb5: $00
    add hl, de                                    ; $5bb6: $19
    rst $30                                       ; $5bb7: $f7
    ld b, d                                       ; $5bb8: $42
    inc de                                        ; $5bb9: $13
    cp e                                          ; $5bba: $bb
    sbc $01                                       ; $5bbb: $de $01
    call c, Call_0bc_48b0                         ; $5bbd: $dc $b0 $48
    jr nz, jr_0bc_5bc8                            ; $5bc0: $20 $06

    dec de                                        ; $5bc2: $1b
    ld c, a                                       ; $5bc3: $4f
    ld a, a                                       ; $5bc4: $7f
    sbc e                                         ; $5bc5: $9b
    or b                                          ; $5bc6: $b0
    nop                                           ; $5bc7: $00

jr_0bc_5bc8:
    ld [hl], b                                    ; $5bc8: $70

jr_0bc_5bc9:
    jr c, jr_0bc_5bc9                             ; $5bc9: $38 $fe

    ld [bc], a                                    ; $5bcb: $02
    db $10                                        ; $5bcc: $10
    ld [hl], b                                    ; $5bcd: $70
    ld [$fd04], sp                                ; $5bce: $08 $04 $fd
    rst $38                                       ; $5bd1: $ff
    db $db                                        ; $5bd2: $db
    rst $20                                       ; $5bd3: $e7
    add hl, de                                    ; $5bd4: $19
    ret z                                         ; $5bd5: $c8

    ld bc, $efb8                                  ; $5bd6: $01 $b8 $ef
    nop                                           ; $5bd9: $00
    ld de, $39c7                                  ; $5bda: $11 $c7 $39
    rst $00                                       ; $5bdd: $c7
    jr c, jr_0bc_5c07                             ; $5bde: $38 $27

    ret c                                         ; $5be0: $d8

    cpl                                           ; $5be1: $2f
    db $10                                        ; $5be2: $10
    ret nc                                        ; $5be3: $d0

    rst $38                                       ; $5be4: $ff
    scf                                           ; $5be5: $37
    ld a, h                                       ; $5be6: $7c
    ld bc, $fff5                                  ; $5be7: $01 $f5 $ff
    call Call_000_00ff                            ; $5bea: $cd $ff $00
    jp $cbff                                      ; $5bed: $c3 $ff $cb


    rst $38                                       ; $5bf0: $ff
    ret                                           ; $5bf1: $c9


    rst $38                                       ; $5bf2: $ff
    dec b                                         ; $5bf3: $05
    sbc a                                         ; $5bf4: $9f
    ld a, b                                       ; $5bf5: $78
    daa                                           ; $5bf6: $27
    ldh a, [rNR41]                                ; $5bf7: $f0 $20
    or b                                          ; $5bf9: $b0
    jr nz, jr_0bc_5c12                            ; $5bfa: $20 $16

    add hl, de                                    ; $5bfc: $19
    sbc h                                         ; $5bfd: $9c
    ld bc, $e7d3                                  ; $5bfe: $01 $d3 $e7
    reti                                          ; $5c01: $d9


    sub b                                         ; $5c02: $90
    ld d, b                                       ; $5c03: $50
    add hl, bc                                    ; $5c04: $09
    sbc a                                         ; $5c05: $9f
    ld l, a                                       ; $5c06: $6f

jr_0bc_5c07:
    db $10                                        ; $5c07: $10
    ld bc, $3f9f                                  ; $5c08: $01 $9f $3f
    rst $18                                       ; $5c0b: $df
    ccf                                           ; $5c0c: $3f
    nop                                           ; $5c0d: $00
    rst $08                                       ; $5c0e: $cf
    rrca                                          ; $5c0f: $0f
    rst $30                                       ; $5c10: $f7
    add a                                         ; $5c11: $87

jr_0bc_5c12:
    ld a, e                                       ; $5c12: $7b
    sub e                                         ; $5c13: $93
    ld l, h                                       ; $5c14: $6c
    rst $38                                       ; $5c15: $ff
    ld d, b                                       ; $5c16: $50
    rst $28                                       ; $5c17: $ef
    sub d                                         ; $5c18: $92
    ld b, $eb                                     ; $5c19: $06 $eb
    ld [bc], a                                    ; $5c1b: $02
    db $10                                        ; $5c1c: $10
    cp e                                          ; $5c1d: $bb
    cp a                                          ; $5c1e: $bf
    ld d, a                                       ; $5c1f: $57
    rst $38                                       ; $5c20: $ff
    ld bc, $e737                                  ; $5c21: $01 $37 $e7
    reti                                          ; $5c24: $d9


    rst $30                                       ; $5c25: $f7
    jp hl                                         ; $5c26: $e9


    di                                            ; $5c27: $f3
    db $ed                                        ; $5c28: $ed
    call z, Call_000_0401                         ; $5c29: $cc $01 $04
    pop de                                        ; $5c2c: $d1
    rst $20                                       ; $5c2d: $e7
    sub c                                         ; $5c2e: $91
    di                                            ; $5c2f: $f3
    adc l                                         ; $5c30: $8d
    adc h                                         ; $5c31: $8c
    add hl, bc                                    ; $5c32: $09
    ei                                            ; $5c33: $fb
    push af                                       ; $5c34: $f5

jr_0bc_5c35:
    ld [hl-], a                                   ; $5c35: $32
    rst $30                                       ; $5c36: $f7
    ret                                           ; $5c37: $c9


    ld e, h                                       ; $5c38: $5c
    ld de, $11a0                                  ; $5c39: $11 $a0 $11
    db $fd                                        ; $5c3c: $fd
    ld [$0184], a                                 ; $5c3d: $ea $84 $01
    ldh a, [$80]                                  ; $5c40: $f0 $80
    ld b, d                                       ; $5c42: $42
    ld bc, $ffd4                                  ; $5c43: $01 $d4 $ff
    call nz, $c0ff                                ; $5c46: $c4 $ff $c0
    db $fd                                        ; $5c49: $fd
    ld [c], a                                     ; $5c4a: $e2
    ld a, [bc]                                    ; $5c4b: $0a
    rrca                                          ; $5c4c: $0f
    or e                                          ; $5c4d: $b3
    rrca                                          ; $5c4e: $0f
    or a                                          ; $5c4f: $b7
    jr nc, jr_0bc_5c53                            ; $5c50: $30 $01

    cpl                                           ; $5c52: $2f

jr_0bc_5c53:
    jr nc, jr_0bc_5c56                            ; $5c53: $30 $01

    db $db                                        ; $5c55: $db

jr_0bc_5c56:
    nop                                           ; $5c56: $00
    rla                                           ; $5c57: $17
    bit 1, a                                      ; $5c58: $cb $4f
    or a                                          ; $5c5a: $b7
    inc de                                        ; $5c5b: $13
    db $ed                                        ; $5c5c: $ed
    inc bc                                        ; $5c5d: $03
    db $fd                                        ; $5c5e: $fd
    nop                                           ; $5c5f: $00
    ld b, a                                       ; $5c60: $47
    xor e                                         ; $5c61: $ab
    ld b, a                                       ; $5c62: $47
    xor e                                         ; $5c63: $ab
    rst $00                                       ; $5c64: $c7
    dec hl                                        ; $5c65: $2b
    rst $00                                       ; $5c66: $c7
    dec hl                                        ; $5c67: $2b
    dec bc                                        ; $5c68: $0b
    rst $20                                       ; $5c69: $e7
    add hl, de                                    ; $5c6a: $19
    db $e3                                        ; $5c6b: $e3
    inc e                                         ; $5c6c: $1c
    ld b, b                                       ; $5c6d: $40
    jr nz, jr_0bc_5c35                            ; $5c6e: $20 $c5

    ld b, b                                       ; $5c70: $40
    jr z, jr_0bc_5ca3                             ; $5c71: $28 $30

    jr nz, @-$74                                  ; $5c73: $20 $8a

    ld h, b                                       ; $5c75: $60
    add hl, sp                                    ; $5c76: $39
    rst $30                                       ; $5c77: $f7
    rst $38                                       ; $5c78: $ff
    and $02                                       ; $5c79: $e6 $02
    db $10                                        ; $5c7b: $10

jr_0bc_5c7c:
    rst $28                                       ; $5c7c: $ef
    add [hl]                                      ; $5c7d: $86
    jr jr_0bc_5c7c                                ; $5c7e: $18 $fc

    nop                                           ; $5c80: $00
    ld b, e                                       ; $5c81: $43
    db $ec                                        ; $5c82: $ec
    inc de                                        ; $5c83: $13
    db $ec                                        ; $5c84: $ec
    inc de                                        ; $5c85: $13
    db $f4                                        ; $5c86: $f4
    dec bc                                        ; $5c87: $0b
    db $f4                                        ; $5c88: $f4
    nop                                           ; $5c89: $00
    dec bc                                        ; $5c8a: $0b
    and $99                                       ; $5c8b: $e6 $99
    and $99                                       ; $5c8d: $e6 $99
    ld [$8c95], a                                 ; $5c8f: $ea $95 $8c
    nop                                           ; $5c92: $00
    ld [hl], e                                    ; $5c93: $73
    sbc [hl]                                      ; $5c94: $9e
    ld h, c                                       ; $5c95: $61
    add a                                         ; $5c96: $87
    ld a, b                                       ; $5c97: $78
    add a                                         ; $5c98: $87
    ld a, b                                       ; $5c99: $78
    rlca                                          ; $5c9a: $07
    ld bc, $0bf8                                  ; $5c9b: $01 $f8 $0b
    db $f4                                        ; $5c9e: $f4
    inc bc                                        ; $5c9f: $03
    db $fc                                        ; $5ca0: $fc
    inc bc                                        ; $5ca1: $03
    db $fc                                        ; $5ca2: $fc

jr_0bc_5ca3:
    cp d                                          ; $5ca3: $ba
    nop                                           ; $5ca4: $00
    sub c                                         ; $5ca5: $91
    ld [bc], a                                    ; $5ca6: $02
    jr nz, jr_0bc_5d28                            ; $5ca7: $20 $7f

    cp a                                          ; $5ca9: $bf
    ld [bc], a                                    ; $5caa: $02
    nop                                           ; $5cab: $00
    sbc a                                         ; $5cac: $9f
    rst $38                                       ; $5cad: $ff
    sub a                                         ; $5cae: $97
    ld [bc], a                                    ; $5caf: $02
    nop                                           ; $5cb0: $00
    ld b, b                                       ; $5cb1: $40
    push bc                                       ; $5cb2: $c5
    nop                                           ; $5cb3: $00
    add hl, hl                                    ; $5cb4: $29
    rst $28                                       ; $5cb5: $ef
    db $dd                                        ; $5cb6: $dd
    ld c, a                                       ; $5cb7: $4f
    or a                                          ; $5cb8: $b7
    rla                                           ; $5cb9: $17
    res 0, b                                      ; $5cba: $cb $80
    cp d                                          ; $5cbc: $ba
    ld bc, $1fab                                  ; $5cbd: $01 $ab $1f
    cpl                                           ; $5cc0: $2f
    rra                                           ; $5cc1: $1f
    add a                                         ; $5cc2: $87
    rrca                                          ; $5cc3: $0f
    sub a                                         ; $5cc4: $97
    nop                                           ; $5cc5: $00
    rrca                                          ; $5cc6: $0f
    or e                                          ; $5cc7: $b3
    cp $d1                                        ; $5cc8: $fe $d1
    ld a, [$ffd5]                                 ; $5cca: $fa $d5 $ff
    ret nc                                        ; $5ccd: $d0

    ldh [$f6], a                                  ; $5cce: $e0 $f6
    ld bc, $2a10                                  ; $5cd0: $01 $10 $2a
    nop                                           ; $5cd3: $00
    add hl, sp                                    ; $5cd4: $39
    rst $10                                       ; $5cd5: $d7
    add a                                         ; $5cd6: $87
    ld c, e                                       ; $5cd7: $4b
    add e                                         ; $5cd8: $83
    ld l, h                                       ; $5cd9: $6c
    nop                                           ; $5cda: $00
    rrca                                          ; $5cdb: $0f
    ldh a, [rWX]                                  ; $5cdc: $f0 $4b
    or h                                          ; $5cde: $b4
    ld a, [bc]                                    ; $5cdf: $0a
    push af                                       ; $5ce0: $f5
    ld a, [bc]                                    ; $5ce1: $0a
    push af                                       ; $5ce2: $f5
    nop                                           ; $5ce3: $00
    inc bc                                        ; $5ce4: $03

jr_0bc_5ce5:
    db $fc                                        ; $5ce5: $fc
    rlca                                          ; $5ce6: $07
    ld hl, sp+$03                                 ; $5ce7: $f8 $03
    db $fc                                        ; $5ce9: $fc
    add l                                         ; $5cea: $85
    ld a, d                                       ; $5ceb: $7a
    ld [bc], a                                    ; $5cec: $02
    ld a, a                                       ; $5ced: $7f
    add l                                         ; $5cee: $85
    ld a, a                                       ; $5cef: $7f
    add a                                         ; $5cf0: $87
    rst $38                                       ; $5cf1: $ff
    daa                                           ; $5cf2: $27
    add b                                         ; $5cf3: $80
    dec hl                                        ; $5cf4: $2b
    ld a, a                                       ; $5cf5: $7f
    ld de, $0fbb                                  ; $5cf6: $11 $bb $0f
    db $d3                                        ; $5cf9: $d3
    db $10                                        ; $5cfa: $10
    ld b, d                                       ; $5cfb: $42
    xor e                                         ; $5cfc: $ab
    rrca                                          ; $5cfd: $0f
    or a                                          ; $5cfe: $b7
    jr nz, jr_0bc_5d2c                            ; $5cff: $20 $2b

    nop                                           ; $5d01: $00
    and d                                         ; $5d02: $a2
    ld d, l                                       ; $5d03: $55
    ld b, b                                       ; $5d04: $40
    xor a                                         ; $5d05: $af
    ld b, c                                       ; $5d06: $41
    xor [hl]                                      ; $5d07: $ae
    ld h, c                                       ; $5d08: $61
    add d                                         ; $5d09: $82
    pop af                                        ; $5d0a: $f1
    ld h, b                                       ; $5d0b: $60
    ld sp, $02fc                                  ; $5d0c: $31 $fc $02
    or b                                          ; $5d0f: $b0
    ld a, [bc]                                    ; $5d10: $0a
    ld b, b                                       ; $5d11: $40
    ld sp, $e7d9                                  ; $5d12: $31 $d9 $e7
    sbc c                                         ; $5d15: $99
    ld b, b                                       ; $5d16: $40
    add hl, bc                                    ; $5d17: $09
    add b                                         ; $5d18: $80
    jp nc, $f302                                  ; $5d19: $d2 $02 $f3

    ei                                            ; $5d1c: $fb
    rst $30                                       ; $5d1d: $f7
    ei                                            ; $5d1e: $fb
    push de                                       ; $5d1f: $d5
    di                                            ; $5d20: $f3
    call $568a                                    ; $5d21: $cd $8a $56
    ld bc, $ffeb                                  ; $5d24: $01 $eb $ff
    di                                            ; $5d27: $f3

jr_0bc_5d28:
    ld a, d                                       ; $5d28: $7a
    ld [bc], a                                    ; $5d29: $02
    ldh a, [$e0]                                  ; $5d2a: $f0 $e0

jr_0bc_5d2c:
    rlca                                          ; $5d2c: $07
    jp $ff20                                      ; $5d2d: $c3 $20 $ff


    rst $00                                       ; $5d30: $c7
    ld [bc], a                                    ; $5d31: $02
    nop                                           ; $5d32: $00
    rst $08                                       ; $5d33: $cf
    rst $38                                       ; $5d34: $ff
    rst $28                                       ; $5d35: $ef
    rst $08                                       ; $5d36: $cf
    scf                                           ; $5d37: $37
    ld bc, $ff0f                                  ; $5d38: $01 $0f $ff
    sbc a                                         ; $5d3b: $9f
    ld l, a                                       ; $5d3c: $6f
    rst $08                                       ; $5d3d: $cf
    dec sp                                        ; $5d3e: $3b
    ld b, a                                       ; $5d3f: $47
    ld l, [hl]                                    ; $5d40: $6e
    ld [bc], a                                    ; $5d41: $02
    ld [$7b87], sp                                ; $5d42: $08 $87 $7b
    rst $08                                       ; $5d45: $cf
    scf                                           ; $5d46: $37
    db $10                                        ; $5d47: $10
    jr nc, jr_0bc_5ce5                            ; $5d48: $30 $9b

    rla                                           ; $5d4a: $17
    rrc b                                         ; $5d4b: $cb $08
    add a                                         ; $5d4d: $87
    ld e, e                                       ; $5d4e: $5b
    rst $08                                       ; $5d4f: $cf
    scf                                           ; $5d50: $37
    ld b, b                                       ; $5d51: $40
    inc bc                                        ; $5d52: $03
    dec hl                                        ; $5d53: $2b
    call nz, $820b                                ; $5d54: $c4 $0b $82
    ld b, b                                       ; $5d57: $40
    inc bc                                        ; $5d58: $03
    ldh a, [rIF]                                  ; $5d59: $f0 $0f
    sub $8f                                       ; $5d5b: $d6 $8f
    ld e, a                                       ; $5d5d: $5f
    ld a, [hl+]                                   ; $5d5e: $2a
    nop                                           ; $5d5f: $00
    scf                                           ; $5d60: $37
    dec bc                                        ; $5d61: $0b
    rrca                                          ; $5d62: $0f
    rst $18                                       ; $5d63: $df
    sbc a                                         ; $5d64: $9f
    ld c, a                                       ; $5d65: $4f
    jr nz, jr_0bc_5d78                            ; $5d66: $20 $10

    db $eb                                        ; $5d68: $eb
    jr nz, @+$0a                                  ; $5d69: $20 $08

    jr nz, jr_0bc_5da1                            ; $5d6b: $20 $34

    ld b, b                                       ; $5d6d: $40
    push af                                       ; $5d6e: $f5
    ld c, d                                       ; $5d6f: $4a
    ld [de], a                                    ; $5d70: $12
    ret z                                         ; $5d71: $c8

    ld [$08f7], sp                                ; $5d72: $08 $f7 $08
    rst $30                                       ; $5d75: $f7
    inc b                                         ; $5d76: $04
    ld h, b                                       ; $5d77: $60

jr_0bc_5d78:
    ei                                            ; $5d78: $fb
    ld [bc], a                                    ; $5d79: $02
    ld [$08d6], sp                                ; $5d7a: $08 $d6 $08
    dec bc                                        ; $5d7d: $0b
    db $f4                                        ; $5d7e: $f4
    ccf                                           ; $5d7f: $3f
    rst $08                                       ; $5d80: $cf
    ccf                                           ; $5d81: $3f
    db $10                                        ; $5d82: $10
    rst $00                                       ; $5d83: $c7
    dec de                                        ; $5d84: $1b
    db $e4                                        ; $5d85: $e4
    ld d, e                                       ; $5d86: $53
    ld bc, $63ec                                  ; $5d87: $01 $ec $63
    sbc h                                         ; $5d8a: $9c
    inc hl                                        ; $5d8b: $23
    db $10                                        ; $5d8c: $10
    call c, $fe01                                 ; $5d8d: $dc $01 $fe
    ld a, [hl-]                                   ; $5d90: $3a
    inc b                                         ; $5d91: $04
    ccf                                           ; $5d92: $3f
    rst $38                                       ; $5d93: $ff
    rra                                           ; $5d94: $1f
    ccf                                           ; $5d95: $3f
    db $10                                        ; $5d96: $10
    db $db                                        ; $5d97: $db
    ld a, a                                       ; $5d98: $7f
    sbc e                                         ; $5d99: $9b
    ld [bc], a                                    ; $5d9a: $02
    ld [$bb5f], sp                                ; $5d9b: $08 $5f $bb
    db $fc                                        ; $5d9e: $fc
    di                                            ; $5d9f: $f3
    nop                                           ; $5da0: $00

jr_0bc_5da1:
    db $fd                                        ; $5da1: $fd
    ld [c], a                                     ; $5da2: $e2
    db $fd                                        ; $5da3: $fd
    jp nz, $d0ff                                  ; $5da4: $c2 $ff $d0

    cp $f1                                        ; $5da7: $fe $f1
    ld [$f1fe], sp                                ; $5da9: $08 $fe $f1
    rst $38                                       ; $5dac: $ff
    ldh a, [$d0]                                  ; $5dad: $f0 $d0
    add hl, bc                                    ; $5daf: $09
    cpl                                           ; $5db0: $2f
    db $d3                                        ; $5db1: $d3
    ld l, a                                       ; $5db2: $6f
    nop                                           ; $5db3: $00
    sub e                                         ; $5db4: $93
    rst $20                                       ; $5db5: $e7
    dec de                                        ; $5db6: $1b
    adc a                                         ; $5db7: $8f
    ld a, e                                       ; $5db8: $7b
    rst $18                                       ; $5db9: $df
    cpl                                           ; $5dba: $2f
    ld c, a                                       ; $5dbb: $4f
    nop                                           ; $5dbc: $00
    cp a                                          ; $5dbd: $bf
    ld c, a                                       ; $5dbe: $4f
    or a                                          ; $5dbf: $b7
    ld hl, $60d2                                  ; $5dc0: $21 $d2 $60
    sub a                                         ; $5dc3: $97
    and b                                         ; $5dc4: $a0
    nop                                           ; $5dc5: $00
    ld d, a                                       ; $5dc6: $57
    and b                                         ; $5dc7: $a0
    ld d, a                                       ; $5dc8: $57
    and c                                         ; $5dc9: $a1
    ld d, [hl]                                    ; $5dca: $56
    ld b, c                                       ; $5dcb: $41
    xor [hl]                                      ; $5dcc: $ae
    ld b, c                                       ; $5dcd: $41
    db $10                                        ; $5dce: $10
    and [hl]                                      ; $5dcf: $a6
    ld h, c                                       ; $5dd0: $61
    add [hl]                                      ; $5dd1: $86
    db $10                                        ; $5dd2: $10
    inc h                                         ; $5dd3: $24
    ld l, l                                       ; $5dd4: $6d
    sbc a                                         ; $5dd5: $9f
    ld h, e                                       ; $5dd6: $63
    sbc a                                         ; $5dd7: $9f
    inc e                                         ; $5dd8: $1c
    ld l, e                                       ; $5dd9: $6b
    sbc a                                         ; $5dda: $9f
    ld l, c                                       ; $5ddb: $69
    db $10                                        ; $5ddc: $10
    ld b, h                                       ; $5ddd: $44
    add b                                         ; $5dde: $80
    ld [$0410], sp                                ; $5ddf: $08 $10 $04
    rrca                                          ; $5de2: $0f
    ldh a, [rNR41]                                ; $5de3: $f0 $20
    dec bc                                        ; $5de5: $0b
    db $f4                                        ; $5de6: $f4
    ld d, b                                       ; $5de7: $50
    add hl, bc                                    ; $5de8: $09
    inc hl                                        ; $5de9: $23
    call c, $9c63                                 ; $5dea: $dc $63 $9c
    ld h, e                                       ; $5ded: $63
    inc e                                         ; $5dee: $1c
    sbc h                                         ; $5def: $9c
    push bc                                       ; $5df0: $c5
    ld a, [hl-]                                   ; $5df1: $3a
    ld l, [hl]                                    ; $5df2: $6e
    ld [$1830], sp                                ; $5df3: $08 $30 $18
    ld d, d                                       ; $5df6: $52
    ld b, $49                                     ; $5df7: $06 $49
    ld a, a                                       ; $5df9: $7f
    ld a, e                                       ; $5dfa: $7b
    add l                                         ; $5dfb: $85
    ld e, h                                       ; $5dfc: $5c
    dec bc                                        ; $5dfd: $0b
    sub b                                         ; $5dfe: $90
    inc hl                                        ; $5dff: $23
    ld d, b                                       ; $5e00: $50
    inc de                                        ; $5e01: $13
    jr nz, jr_0bc_5e45                            ; $5e02: $20 $41

    push hl                                       ; $5e04: $e5
    jr nz, jr_0bc_5e10                            ; $5e05: $20 $09

    ld [hl], b                                    ; $5e07: $70
    nop                                           ; $5e08: $00
    nop                                           ; $5e09: $00
    sub [hl]                                      ; $5e0a: $96
    and d                                         ; $5e0b: $a2
    ld d, h                                       ; $5e0c: $54
    and b                                         ; $5e0d: $a0
    ld d, e                                       ; $5e0e: $53
    and c                                         ; $5e0f: $a1

jr_0bc_5e10:
    ld d, d                                       ; $5e10: $52
    ld b, c                                       ; $5e11: $41
    nop                                           ; $5e12: $00
    and d                                         ; $5e13: $a2
    ld b, c                                       ; $5e14: $41
    and d                                         ; $5e15: $a2
    ld h, c                                       ; $5e16: $61
    sub d                                         ; $5e17: $92
    rst $38                                       ; $5e18: $ff
    di                                            ; $5e19: $f3
    rst $30                                       ; $5e1a: $f7
    nop                                           ; $5e1b: $00
    db $eb                                        ; $5e1c: $eb
    db $e3                                        ; $5e1d: $e3
    push de                                       ; $5e1e: $d5
    db $e3                                        ; $5e1f: $e3
    push de                                       ; $5e20: $d5

jr_0bc_5e21:
    ei                                            ; $5e21: $fb

jr_0bc_5e22:
    push bc                                       ; $5e22: $c5
    ei                                            ; $5e23: $fb
    ld bc, $f7e7                                  ; $5e24: $01 $e7 $f7
    xor e                                         ; $5e27: $ab
    rst $30                                       ; $5e28: $f7
    xor c                                         ; $5e29: $a9
    rst $38                                       ; $5e2a: $ff
    rst $20                                       ; $5e2b: $e7
    jr nc, @+$04                                  ; $5e2c: $30 $02

    nop                                           ; $5e2e: $00
    ldh [rIE], a                                  ; $5e2f: $e0 $ff
    add sp, -$02                                  ; $5e31: $e8 $fe
    db $ed                                        ; $5e33: $ed
    cp $e5                                        ; $5e34: $fe $e5
    rst $38                                       ; $5e36: $ff
    db $10                                        ; $5e37: $10
    db $ec                                        ; $5e38: $ec
    rst $38                                       ; $5e39: $ff
    db $ec                                        ; $5e3a: $ec
    ld b, b                                       ; $5e3b: $40
    ld bc, $4ff3                                  ; $5e3c: $01 $f3 $4f
    or e                                          ; $5e3f: $b3
    rra                                           ; $5e40: $1f
    nop                                           ; $5e41: $00
    db $e3                                        ; $5e42: $e3
    adc a                                         ; $5e43: $8f
    ld [hl], a                                    ; $5e44: $77

jr_0bc_5e45:
    adc a                                         ; $5e45: $8f
    ld [hl], e                                    ; $5e46: $73
    rrca                                          ; $5e47: $0f
    di                                            ; $5e48: $f3
    rra                                           ; $5e49: $1f
    ld b, [hl]                                    ; $5e4a: $46
    rst $20                                       ; $5e4b: $e7
    jr nc, jr_0bc_5e5e                            ; $5e4c: $30 $10

    db $dd                                        ; $5e4e: $dd
    db $e3                                        ; $5e4f: $e3
    db $dd                                        ; $5e50: $dd
    jr nc, jr_0bc_5e7b                            ; $5e51: $30 $28

    jr nz, @+$32                                  ; $5e53: $20 $30

    ld d, a                                       ; $5e55: $57
    inc bc                                        ; $5e56: $03
    adc a                                         ; $5e57: $8f
    ld d, e                                       ; $5e58: $53
    rrca                                          ; $5e59: $0f
    db $d3                                        ; $5e5a: $d3
    rra                                           ; $5e5b: $1f

jr_0bc_5e5c:
    add a                                         ; $5e5c: $87
    nop                                           ; $5e5d: $00

jr_0bc_5e5e:
    inc de                                        ; $5e5e: $13
    ld b, h                                       ; $5e5f: $44
    ld a, [bc]                                    ; $5e60: $0a
    ld bc, $0fcf                                  ; $5e61: $01 $cf $0f
    or a                                          ; $5e64: $b7
    add a                                         ; $5e65: $87
    dec de                                        ; $5e66: $1b
    sub e                                         ; $5e67: $93
    ld c, h                                       ; $5e68: $4c
    ld h, b                                       ; $5e69: $60
    jr nz, jr_0bc_5e22                            ; $5e6a: $20 $b6

    jr nc, jr_0bc_5eb6                            ; $5e6c: $30 $48

    db $d3                                        ; $5e6e: $d3
    ld d, b                                       ; $5e6f: $50
    jr nz, jr_0bc_5ea2                            ; $5e70: $20 $30

    ld [$d0a7], sp                                ; $5e72: $08 $a7 $d0
    inc b                                         ; $5e75: $04

jr_0bc_5e76:
    ld h, d                                       ; $5e76: $62
    inc c                                         ; $5e77: $0c
    rst $28                                       ; $5e78: $ef
    add $86                                       ; $5e79: $c6 $86

jr_0bc_5e7b:
    dec b                                         ; $5e7b: $05
    ld [bc], a                                    ; $5e7c: $02
    ld [$fffc], sp                                ; $5e7d: $08 $fc $ff
    jr nc, jr_0bc_5e76                            ; $5e80: $30 $f4

    ld b, $02                                     ; $5e82: $06 $02
    ld [$88f8], sp                                ; $5e84: $08 $f8 $88
    cp l                                          ; $5e87: $bd
    dec b                                         ; $5e88: $05
    jp c, $daff                                   ; $5e89: $da $ff $da

    ld b, b                                       ; $5e8c: $40
    ld h, h                                       ; $5e8d: $64
    adc h                                         ; $5e8e: $8c
    adc h                                         ; $5e8f: $8c
    ld [hl], e                                    ; $5e90: $73
    jr nz, jr_0bc_5e21                            ; $5e91: $20 $8e

    ld [hl], c                                    ; $5e93: $71
    xor [hl]                                      ; $5e94: $ae
    ld c, $c7                                     ; $5e95: $0e $c7
    jr c, jr_0bc_5e5c                             ; $5e97: $38 $c3

    inc a                                         ; $5e99: $3c
    jp Jump_000_3c00                              ; $5e9a: $c3 $00 $3c


    add e                                         ; $5e9d: $83
    ld a, h                                       ; $5e9e: $7c
    rst $20                                       ; $5e9f: $e7
    jr jr_0bc_5ea8                                ; $5ea0: $18 $06

jr_0bc_5ea2:
    ld sp, hl                                     ; $5ea2: $f9
    ld b, [hl]                                    ; $5ea3: $46
    inc b                                         ; $5ea4: $04
    cp c                                          ; $5ea5: $b9
    rst $28                                       ; $5ea6: $ef
    db $10                                        ; $5ea7: $10

jr_0bc_5ea8:
    rst $00                                       ; $5ea8: $c7
    ld a, [hl-]                                   ; $5ea9: $3a
    or b                                          ; $5eaa: $b0
    inc bc                                        ; $5eab: $03
    jp c, Jump_0bc_522f                           ; $5eac: $da $2f $52

    jp nc, Jump_000_0550                          ; $5eaf: $d2 $50 $05

    ld c, a                                       ; $5eb2: $4f
    ld b, b                                       ; $5eb3: $40
    ld c, c                                       ; $5eb4: $49
    rrca                                          ; $5eb5: $0f

jr_0bc_5eb6:
    or a                                          ; $5eb6: $b7
    ld l, d                                       ; $5eb7: $6a
    inc b                                         ; $5eb8: $04
    sbc e                                         ; $5eb9: $9b
    add b                                         ; $5eba: $80
    or b                                          ; $5ebb: $b0
    ld [de], a                                    ; $5ebc: $12
    and a                                         ; $5ebd: $a7
    rrca                                          ; $5ebe: $0f
    or a                                          ; $5ebf: $b7
    rrca                                          ; $5ec0: $0f
    or e                                          ; $5ec1: $b3
    ldh [$9e], a                                  ; $5ec2: $e0 $9e
    nop                                           ; $5ec4: $00
    ret nz                                        ; $5ec5: $c0

    dec sp                                        ; $5ec6: $3b
    ldh [$0b], a                                  ; $5ec7: $e0 $0b
    ret nz                                        ; $5ec9: $c0

    dec hl                                        ; $5eca: $2b
    ldh [rNR24], a                                ; $5ecb: $e0 $19
    nop                                           ; $5ecd: $00
    ret nz                                        ; $5ece: $c0

    ld hl, $21c0                                  ; $5ecf: $21 $c0 $21
    and b                                         ; $5ed2: $a0
    ld c, c                                       ; $5ed3: $49
    rrca                                          ; $5ed4: $0f
    ld d, e                                       ; $5ed5: $53
    ld hl, $570f                                  ; $5ed6: $21 $0f $57
    add b                                         ; $5ed9: $80
    ld c, d                                       ; $5eda: $4a
    rst $20                                       ; $5edb: $e7
    jr jr_0bc_5f24                                ; $5edc: $18 $46

    cp c                                          ; $5ede: $b9
    ld d, b                                       ; $5edf: $50
    ld c, b                                       ; $5ee0: $48
    jr nz, jr_0bc_5f22                            ; $5ee1: $20 $3f

    jp $01e2                                      ; $5ee3: $c3 $e2 $01


    rst $08                                       ; $5ee6: $cf
    rra                                           ; $5ee7: $1f
    rst $28                                       ; $5ee8: $ef
    ccf                                           ; $5ee9: $3f
    rlc d                                         ; $5eea: $cb $02
    ccf                                           ; $5eec: $3f
    res 7, a                                      ; $5eed: $cb $bf
    ld b, e                                       ; $5eef: $43
    rst $38                                       ; $5ef0: $ff
    rla                                           ; $5ef1: $17
    ld h, b                                       ; $5ef2: $60
    ld d, e                                       ; $5ef3: $53
    xor e                                         ; $5ef4: $ab
    ld [$b74f], sp                                ; $5ef5: $08 $4f $b7
    rst $30                                       ; $5ef8: $f7
    adc c                                         ; $5ef9: $89
    ret nc                                        ; $5efa: $d0

    dec bc                                        ; $5efb: $0b
    di                                            ; $5efc: $f3
    call $01e7                                    ; $5efd: $cd $e7 $01
    sbc c                                         ; $5f00: $99
    rst $20                                       ; $5f01: $e7
    sbc c                                         ; $5f02: $99
    ei                                            ; $5f03: $fb
    and l                                         ; $5f04: $a5
    ei                                            ; $5f05: $fb
    push hl                                       ; $5f06: $e5
    add b                                         ; $5f07: $80
    ld de, $60c1                                  ; $5f08: $11 $c1 $60
    inc c                                         ; $5f0b: $0c
    db $10                                        ; $5f0c: $10
    dec e                                         ; $5f0d: $1d
    inc hl                                        ; $5f0e: $23
    inc de                                        ; $5f0f: $13
    call $dd03                                    ; $5f10: $cd $03 $dd
    or b                                          ; $5f13: $b0
    inc sp                                        ; $5f14: $33
    ld e, $11                                     ; $5f15: $1e $11
    db $e3                                        ; $5f17: $e3
    inc d                                         ; $5f18: $14
    ldh [$31], a                                  ; $5f19: $e0 $31
    ldh a, [$0d]                                  ; $5f1b: $f0 $0d
    ldh [rSB], a                                  ; $5f1d: $e0 $01
    ld b, b                                       ; $5f1f: $40
    db $10                                        ; $5f20: $10
    push hl                                       ; $5f21: $e5

jr_0bc_5f22:
    adc l                                         ; $5f22: $8d
    ld b, b                                       ; $5f23: $40

jr_0bc_5f24:
    ld b, b                                       ; $5f24: $40
    daa                                           ; $5f25: $27
    rra                                           ; $5f26: $1f
    cpl                                           ; $5f27: $2f
    ld b, b                                       ; $5f28: $40
    db $10                                        ; $5f29: $10
    db $10                                        ; $5f2a: $10
    dec l                                         ; $5f2b: $2d
    db $ec                                        ; $5f2c: $ec
    ld b, d                                       ; $5f2d: $42
    inc d                                         ; $5f2e: $14
    ld d, b                                       ; $5f2f: $50
    xor $f2                                       ; $5f30: $ee $f2
    dec b                                         ; $5f32: $05
    rst $18                                       ; $5f33: $df
    ld [bc], a                                    ; $5f34: $02
    nop                                           ; $5f35: $00
    push de                                       ; $5f36: $d5
    rst $38                                       ; $5f37: $ff
    add d                                         ; $5f38: $82
    rst $38                                       ; $5f39: $ff
    nop                                           ; $5f3a: $00
    ld b, [hl]                                    ; $5f3b: $46
    rst $38                                       ; $5f3c: $ff
    ld b, a                                       ; $5f3d: $47
    rst $38                                       ; $5f3e: $ff
    halt                                          ; $5f3f: $76
    rst $38                                       ; $5f40: $ff
    ld [hl], $ff                                  ; $5f41: $36 $ff
    ld b, b                                       ; $5f43: $40
    inc [hl]                                      ; $5f44: $34
    ld [bc], a                                    ; $5f45: $02
    ld [$97e8], sp                                ; $5f46: $08 $e8 $97
    add sp, $17                                   ; $5f49: $e8 $17
    ldh a, [rIF]                                  ; $5f4b: $f0 $0f
    ld [$0bf4], sp                                ; $5f4d: $08 $f4 $0b
    ldh [$1f], a                                  ; $5f50: $e0 $1f
    call nc, $f40b                                ; $5f52: $d4 $0b $f4
    dec bc                                        ; $5f55: $0b
    db $e4                                        ; $5f56: $e4
    nop                                           ; $5f57: $00
    dec de                                        ; $5f58: $1b
    and $19                                       ; $5f59: $e6 $19
    db $e4                                        ; $5f5b: $e4
    dec de                                        ; $5f5c: $1b
    push hl                                       ; $5f5d: $e5
    ld a, [de]                                    ; $5f5e: $1a
    ld h, l                                       ; $5f5f: $65
    ld b, b                                       ; $5f60: $40
    sbc d                                         ; $5f61: $9a
    jr nz, jr_0bc_5f6e                            ; $5f62: $20 $0a

    inc bc                                        ; $5f64: $03
    db $fc                                        ; $5f65: $fc
    rrca                                          ; $5f66: $0f
    di                                            ; $5f67: $f3
    rrca                                          ; $5f68: $0f
    rst $30                                       ; $5f69: $f7
    nop                                           ; $5f6a: $00
    rra                                           ; $5f6b: $1f
    rst $20                                       ; $5f6c: $e7
    rra                                           ; $5f6d: $1f

jr_0bc_5f6e:
    rst $28                                       ; $5f6e: $ef
    rla                                           ; $5f6f: $17
    db $eb                                        ; $5f70: $eb
    rlca                                          ; $5f71: $07
    ei                                            ; $5f72: $fb
    adc b                                         ; $5f73: $88
    ld [hl], b                                    ; $5f74: $70
    dec c                                         ; $5f75: $0d
    sbc a                                         ; $5f76: $9f
    ld h, e                                       ; $5f77: $63
    rla                                           ; $5f78: $17
    ld a, h                                       ; $5f79: $7c
    dec b                                         ; $5f7a: $05
    sbc a                                         ; $5f7b: $9f
    ld l, e                                       ; $5f7c: $6b
    cp a                                          ; $5f7d: $bf
    nop                                           ; $5f7e: $00
    ld c, e                                       ; $5f7f: $4b
    ccf                                           ; $5f80: $3f
    sbc e                                         ; $5f81: $9b
    rra                                           ; $5f82: $1f
    xor a                                         ; $5f83: $af
    rra                                           ; $5f84: $1f
    rst $20                                       ; $5f85: $e7
    jr nz, jr_0bc_5f8d                            ; $5f86: $20 $05

    reti                                          ; $5f88: $d9


    ld h, b                                       ; $5f89: $60
    sbc c                                         ; $5f8a: $99
    and b                                         ; $5f8b: $a0
    ld d, c                                       ; $5f8c: $51

jr_0bc_5f8d:
    db $10                                        ; $5f8d: $10
    ld [de], a                                    ; $5f8e: $12
    or [hl]                                       ; $5f8f: $b6
    ld [bc], a                                    ; $5f90: $02
    nop                                           ; $5f91: $00
    ld b, $a6                                     ; $5f92: $06 $a6
    jp $c53c                                      ; $5f94: $c3 $3c $c5


    ld a, [hl-]                                   ; $5f97: $3a
    ld d, b                                       ; $5f98: $50
    sub l                                         ; $5f99: $95
    ld d, b                                       ; $5f9a: $50
    ld c, $93                                     ; $5f9b: $0e $93
    ld [hl+], a                                   ; $5f9d: $22
    rst $38                                       ; $5f9e: $ff
    adc e                                         ; $5f9f: $8b
    sub b                                         ; $5fa0: $90
    jr nc, jr_0bc_5f8d                            ; $5fa1: $30 $ea

    rst $38                                       ; $5fa3: $ff
    reti                                          ; $5fa4: $d9


    ld [bc], a                                    ; $5fa5: $02
    nop                                           ; $5fa6: $00
    push de                                       ; $5fa7: $d5
    nop                                           ; $5fa8: $00
    inc h                                         ; $5fa9: $24
    db $db                                        ; $5faa: $db
    ld h, $d9                                     ; $5fab: $26 $d9
    inc h                                         ; $5fad: $24
    db $db                                        ; $5fae: $db
    dec h                                         ; $5faf: $25
    jp c, $e50c                                   ; $5fb0: $da $0c $e5

    ld a, [de]                                    ; $5fb3: $1a
    db $e3                                        ; $5fb4: $e3
    inc e                                         ; $5fb5: $1c
    ld [bc], a                                    ; $5fb6: $02
    ld [$0bf0], sp                                ; $5fb7: $08 $f0 $0b
    ld a, [hl+]                                   ; $5fba: $2a
    push de                                       ; $5fbb: $d5
    jr nz, jr_0bc_5fe8                            ; $5fbc: $20 $2a

    push de                                       ; $5fbe: $d5
    and b                                         ; $5fbf: $a0
    ld [hl-], a                                   ; $5fc0: $32
    scf                                           ; $5fc1: $37
    rst $38                                       ; $5fc2: $ff
    rla                                           ; $5fc3: $17
    rst $38                                       ; $5fc4: $ff
    dec d                                         ; $5fc5: $15
    ld [hl+], a                                   ; $5fc6: $22
    rst $38                                       ; $5fc7: $ff
    dec c                                         ; $5fc8: $0d
    ret nc                                        ; $5fc9: $d0

    ld [de], a                                    ; $5fca: $12
    ld l, e                                       ; $5fcb: $6b
    ld a, a                                       ; $5fcc: $7f
    add a                                         ; $5fcd: $87
    jr nc, jr_0bc_5fd7                            ; $5fce: $30 $07

    sub d                                         ; $5fd0: $92
    ld l, $a2                                     ; $5fd1: $2e $a2
    ld d, h                                       ; $5fd3: $54
    nop                                           ; $5fd4: $00
    scf                                           ; $5fd5: $37
    sbc d                                         ; $5fd6: $9a

jr_0bc_5fd7:
    and b                                         ; $5fd7: $a0
    nop                                           ; $5fd8: $00
    ld d, b                                       ; $5fd9: $50
    ld d, c                                       ; $5fda: $51
    nop                                           ; $5fdb: $00
    ld [de], a                                    ; $5fdc: $12
    or d                                          ; $5fdd: $b2
    and b                                         ; $5fde: $a0
    ld [bc], a                                    ; $5fdf: $02
    nop                                           ; $5fe0: $00
    ld a, [$09fe]                                 ; $5fe1: $fa $fe $09
    rst $38                                       ; $5fe4: $ff
    ret c                                         ; $5fe5: $d8

    db $ec                                        ; $5fe6: $ec
    inc de                                        ; $5fe7: $13

jr_0bc_5fe8:
    adc $00                                       ; $5fe8: $ce $00
    ld sp, $98e7                                  ; $5fea: $31 $e7 $98
    rst $20                                       ; $5fed: $e7
    sbc b                                         ; $5fee: $98
    rst $28                                       ; $5fef: $ef
    sub b                                         ; $5ff0: $90
    db $eb                                        ; $5ff1: $eb
    nop                                           ; $5ff2: $00
    sub h                                         ; $5ff3: $94
    db $eb                                        ; $5ff4: $eb

Jump_0bc_5ff5:
    inc d                                         ; $5ff5: $14
    db $e3                                        ; $5ff6: $e3
    inc e                                         ; $5ff7: $1c
    ld c, h                                       ; $5ff8: $4c
    or e                                          ; $5ff9: $b3
    ld c, [hl]                                    ; $5ffa: $4e
    ld bc, $07b1                                  ; $5ffb: $01 $b1 $07
    ld hl, sp+$01                                 ; $5ffe: $f8 $01
    cp $09                                        ; $6000: $fe $09
    or $02                                        ; $6002: $f6 $02
    ld [$0120], sp                                ; $6004: $08 $20 $01
    cp $b0                                        ; $6007: $fe $b0
    ld d, l                                       ; $6009: $55
    reti                                          ; $600a: $d9


    cpl                                           ; $600b: $2f
    ret nc                                        ; $600c: $d0

    ld c, a                                       ; $600d: $4f
    sub a                                         ; $600e: $97
    ld a, [hl+]                                   ; $600f: $2a

Jump_0bc_6010:
    rla                                           ; $6010: $17
    adc e                                         ; $6011: $8b
    and b                                         ; $6012: $a0
    inc d                                         ; $6013: $14
    xor a                                         ; $6014: $af
    ldh a, [rNR11]                                ; $6015: $f0 $11
    di                                            ; $6017: $f3
    ld h, b                                       ; $6018: $60
    jr nc, jr_0bc_6026                            ; $6019: $30 $0b

    inc l                                         ; $601b: $2c
    rlca                                          ; $601c: $07
    dec de                                        ; $601d: $1b
    ld [hl], b                                    ; $601e: $70
    ld d, $87                                     ; $601f: $16 $87
    ret nc                                        ; $6021: $d0

    ld e, h                                       ; $6022: $5c
    ldh [$0a], a                                  ; $6023: $e0 $0a
    rrca                                          ; $6025: $0f

jr_0bc_6026:
    or e                                          ; $6026: $b3
    ld [hl+], a                                   ; $6027: $22
    rra                                           ; $6028: $1f
    and e                                         ; $6029: $a3
    ret nz                                        ; $602a: $c0

    ld [de], a                                    ; $602b: $12
    sub e                                         ; $602c: $93
    rra                                           ; $602d: $1f
    add a                                         ; $602e: $87
    ret nc                                        ; $602f: $d0

    ld sp, $bf91                                  ; $6030: $31 $91 $bf
    ret nc                                        ; $6033: $d0

    ld hl, $9067                                  ; $6034: $21 $67 $90
    ld bc, $4350                                  ; $6037: $01 $50 $43
    or b                                          ; $603a: $b0
    ld b, a                                       ; $603b: $47
    and b                                         ; $603c: $a0
    dec de                                        ; $603d: $1b
    adc [hl]                                      ; $603e: $8e
    rrca                                          ; $603f: $0f
    sub b                                         ; $6040: $90
    ccf                                           ; $6041: $3f
    ldh a, [$6e]                                  ; $6042: $f0 $6e
    ld c, $a6                                     ; $6044: $0e $a6
    ld b, $aa                                     ; $6046: $06 $aa
    ld b, $08                                     ; $6048: $06 $08
    jr nz, jr_0bc_60b9                            ; $604a: $20 $6d

    sub d                                         ; $604c: $92
    ld c, l                                       ; $604d: $4d
    or d                                          ; $604e: $b2
    jr nz, jr_0bc_60b8                            ; $604f: $20 $67

    sbc b                                         ; $6051: $98
    or d                                          ; $6052: $b2
    ld a, [bc]                                    ; $6053: $0a
    ld b, e                                       ; $6054: $43
    cp h                                          ; $6055: $bc
    ld h, e                                       ; $6056: $63
    sbc h                                         ; $6057: $9c
    ld h, a                                       ; $6058: $67
    ld b, l                                       ; $6059: $45
    sbc b                                         ; $605a: $98
    jr nz, jr_0bc_6061                            ; $605b: $20 $04

    sbc a                                         ; $605d: $9f
    rst $38                                       ; $605e: $ff
    ccf                                           ; $605f: $3f
    db $fc                                        ; $6060: $fc

jr_0bc_6061:
    inc b                                         ; $6061: $04
    cp e                                          ; $6062: $bb
    ld [hl+], a                                   ; $6063: $22
    inc e                                         ; $6064: $1c
    db $f4                                        ; $6065: $f4
    or b                                          ; $6066: $b0
    ld b, e                                       ; $6067: $43
    ld [hl], b                                    ; $6068: $70
    rra                                           ; $6069: $1f
    ld d, b                                       ; $606a: $50

jr_0bc_606b:
    jr z, jr_0bc_606b                             ; $606b: $28 $fe

    rrca                                          ; $606d: $0f
    db $fc                                        ; $606e: $fc
    cp [hl]                                       ; $606f: $be
    ld b, $9d                                     ; $6070: $06 $9d
    rst $38                                       ; $6072: $ff
    inc e                                         ; $6073: $1c
    rra                                           ; $6074: $1f
    rst $18                                       ; $6075: $df
    ccf                                           ; $6076: $3f
    ld d, b                                       ; $6077: $50
    inc a                                         ; $6078: $3c
    ld h, b                                       ; $6079: $60
    ld b, d                                       ; $607a: $42
    jr nc, jr_0bc_6094                            ; $607b: $30 $17

    rst $20                                       ; $607d: $e7
    pop de                                        ; $607e: $d1
    ret nz                                        ; $607f: $c0

    ld d, b                                       ; $6080: $50
    ld [hl], $10                                  ; $6081: $36 $10
    dec d                                         ; $6083: $15
    ld bc, $40f6                                  ; $6084: $01 $f6 $40
    or [hl]                                       ; $6087: $b6
    add b                                         ; $6088: $80
    halt                                          ; $6089: $76
    or [hl]                                       ; $608a: $b6
    ldh [rNR13], a                                ; $608b: $e0 $13
    xor d                                         ; $608d: $aa
    ldh [$0b], a                                  ; $608e: $e0 $0b
    ld h, b                                       ; $6090: $60
    dec h                                         ; $6091: $25
    rst $28                                       ; $6092: $ef
    ld [hl], b                                    ; $6093: $70

jr_0bc_6094:
    rlca                                          ; $6094: $07
    nop                                           ; $6095: $00
    ld [de], a                                    ; $6096: $12
    db $ec                                        ; $6097: $ec
    nop                                           ; $6098: $00
    inc de                                        ; $6099: $13
    xor $10                                       ; $609a: $ee $10
    and h                                         ; $609c: $a4
    ld e, d                                       ; $609d: $5a
    or l                                          ; $609e: $b5
    ld c, d                                       ; $609f: $4a
    or l                                          ; $60a0: $b5
    add l                                         ; $60a1: $85
    sub b                                         ; $60a2: $90
    rlca                                          ; $60a3: $07
    ld [hl], e                                    ; $60a4: $73
    adc h                                         ; $60a5: $8c
    ld [hl], e                                    ; $60a6: $73
    add h                                         ; $60a7: $84
    jr nz, @+$09                                  ; $60a8: $20 $07

    rst $38                                       ; $60aa: $ff
    and h                                         ; $60ab: $a4
    ld d, $40                                     ; $60ac: $16 $40
    rst $20                                       ; $60ae: $e7
    xor d                                         ; $60af: $aa
    ld d, $ff                                     ; $60b0: $16 $ff
    rst $38                                       ; $60b2: $ff
    ret nz                                        ; $60b3: $c0

    rst $38                                       ; $60b4: $ff
    add $ff                                       ; $60b5: $c6 $ff
    ld b, b                                       ; $60b7: $40

jr_0bc_60b8:
    add [hl]                                      ; $60b8: $86

jr_0bc_60b9:
    ld [bc], a                                    ; $60b9: $02
    nop                                           ; $60ba: $00
    adc [hl]                                      ; $60bb: $8e
    rst $38                                       ; $60bc: $ff
    xor [hl]                                      ; $60bd: $ae
    rst $38                                       ; $60be: $ff
    inc l                                         ; $60bf: $2c
    rst $38                                       ; $60c0: $ff
    inc b                                         ; $60c1: $04

jr_0bc_60c2:
    inc c                                         ; $60c2: $0c
    db $fc                                        ; $60c3: $fc
    ld b, e                                       ; $60c4: $43
    cp $41                                        ; $60c5: $fe $41
    di                                            ; $60c7: $f3
    inc b                                         ; $60c8: $04
    ld [$00ff], sp                                ; $60c9: $08 $ff $00
    add b                                         ; $60cc: $80
    ei                                            ; $60cd: $fb
    and h                                         ; $60ce: $a4
    ei                                            ; $60cf: $fb
    inc h                                         ; $60d0: $24
    ei                                            ; $60d1: $fb
    inc b                                         ; $60d2: $04

jr_0bc_60d3:
    pop hl                                        ; $60d3: $e1
    ld e, h                                       ; $60d4: $5c
    ld e, $20                                     ; $60d5: $1e $20
    dec de                                        ; $60d7: $1b
    add $20                                       ; $60d8: $c6 $20
    daa                                           ; $60da: $27
    or b                                          ; $60db: $b0
    inc d                                         ; $60dc: $14
    ret                                           ; $60dd: $c9


    inc b                                         ; $60de: $04
    rst $18                                       ; $60df: $df
    inc hl                                        ; $60e0: $23
    jr nz, jr_0bc_60c2                            ; $60e1: $20 $df

    dec hl                                        ; $60e3: $2b
    add b                                         ; $60e4: $80
    inc b                                         ; $60e5: $04
    adc l                                         ; $60e6: $8d
    ld c, a                                       ; $60e7: $4f
    sub a                                         ; $60e8: $97
    ld c, a                                       ; $60e9: $4f
    sbc a                                         ; $60ea: $9f
    nop                                           ; $60eb: $00
    rst $18                                       ; $60ec: $df
    rrca                                          ; $60ed: $0f
    adc a                                         ; $60ee: $8f
    ld e, e                                       ; $60ef: $5b
    rst $20                                       ; $60f0: $e7
    dec de                                        ; $60f1: $1b
    ld l, a                                       ; $60f2: $6f
    sub e                                         ; $60f3: $93
    scf                                           ; $60f4: $37
    cpl                                           ; $60f5: $2f
    db $d3                                        ; $60f6: $d3
    xor $07                                       ; $60f7: $ee $07
    ldh [$2d], a                                  ; $60f9: $e0 $2d
    adc e                                         ; $60fb: $8b
    ret nz                                        ; $60fc: $c0

    ld b, $f0                                     ; $60fd: $06 $f0
    rlca                                          ; $60ff: $07
    ld b, b                                       ; $6100: $40
    jr z, jr_0bc_60d3                             ; $6101: $28 $d0

    call nz, Call_0bc_400b                        ; $6103: $c4 $0b $40
    db $10                                        ; $6106: $10
    ld b, a                                       ; $6107: $47
    ld [bc], a                                    ; $6108: $02
    ld [$0fff], sp                                ; $6109: $08 $ff $0f
    rst $38                                       ; $610c: $ff
    inc bc                                        ; $610d: $03
    nop                                           ; $610e: $00
    rst $38                                       ; $610f: $ff
    dec bc                                        ; $6110: $0b
    sbc a                                         ; $6111: $9f
    ld l, c                                       ; $6112: $69
    ld a, a                                       ; $6113: $7f
    add l                                         ; $6114: $85
    rrca                                          ; $6115: $0f
    sub e                                         ; $6116: $93
    ret z                                         ; $6117: $c8

    db $10                                        ; $6118: $10
    ld b, [hl]                                    ; $6119: $46
    ret nz                                        ; $611a: $c0

    ld b, $e0                                     ; $611b: $06 $e0
    sub e                                         ; $611d: $93
    or b                                          ; $611e: $b0
    dec bc                                        ; $611f: $0b
    pop bc                                        ; $6120: $c1
    ld a, [hl+]                                   ; $6121: $2a
    pop hl                                        ; $6122: $e1
    nop                                           ; $6123: $00
    ld a, [de]                                    ; $6124: $1a
    pop bc                                        ; $6125: $c1
    ld [hl+], a                                   ; $6126: $22
    pop bc                                        ; $6127: $c1
    ld [hl+], a                                   ; $6128: $22
    and c                                         ; $6129: $a1
    ld e, d                                       ; $612a: $5a
    ld c, a                                       ; $612b: $4f

jr_0bc_612c:
    ld bc, $4fb7                                  ; $612c: $01 $b7 $4f
    cp a                                          ; $612f: $bf
    rst $18                                       ; $6130: $df
    cpl                                           ; $6131: $2f
    adc a                                         ; $6132: $8f
    ld a, e                                       ; $6133: $7b
    ld h, b                                       ; $6134: $60
    jr nz, jr_0bc_6137                            ; $6135: $20 $00

jr_0bc_6137:
    di                                            ; $6137: $f3
    db $fc                                        ; $6138: $fc
    inc bc                                        ; $6139: $03
    cp $01                                        ; $613a: $fe $01
    ld [hl], h                                    ; $613c: $74
    adc e                                         ; $613d: $8b
    ld [hl], l                                    ; $613e: $75
    nop                                           ; $613f: $00
    ld a, [bc]                                    ; $6140: $0a
    dec a                                         ; $6141: $3d
    ld [bc], a                                    ; $6142: $02
    ld a, [hl-]                                   ; $6143: $3a
    add l                                         ; $6144: $85
    cp [hl]                                       ; $6145: $be
    ld b, c                                       ; $6146: $41
    db $fc                                        ; $6147: $fc
    ld e, l                                       ; $6148: $5d
    ld [bc], a                                    ; $6149: $02
    ld [hl], b                                    ; $614a: $70
    rlca                                          ; $614b: $07
    rst $20                                       ; $614c: $e7
    or d                                          ; $614d: $b2
    rlca                                          ; $614e: $07
    call nc, $cf0f                                ; $614f: $d4 $0f $cf
    ld [$e0f7], sp                                ; $6152: $08 $f7 $e0
    rlca                                          ; $6155: $07
    inc b                                         ; $6156: $04
    ld hl, sp-$01                                 ; $6157: $f8 $ff
    sbc b                                         ; $6159: $98
    rst $38                                       ; $615a: $ff
    sbc h                                         ; $615b: $9c
    and b                                         ; $615c: $a0
    ld de, $ff58                                  ; $615d: $11 $58 $ff
    ld d, h                                       ; $6160: $54
    ld e, b                                       ; $6161: $58
    ret z                                         ; $6162: $c8

    inc bc                                        ; $6163: $03
    rst $10                                       ; $6164: $d7
    or h                                          ; $6165: $b4
    dec b                                         ; $6166: $05
    rst $18                                       ; $6167: $df
    ld b, $00                                     ; $6168: $06 $00
    rst $10                                       ; $616a: $d7

jr_0bc_616b:
    ccf                                           ; $616b: $3f
    scf                                           ; $616c: $37
    db $d3                                        ; $616d: $d3
    ld a, a                                       ; $616e: $7f
    jp nz, $8006                                  ; $616f: $c2 $06 $80

    ld b, $87                                     ; $6172: $06 $87
    jr nc, jr_0bc_61b5                            ; $6174: $30 $3f

    sub b                                         ; $6176: $90
    ld d, [hl]                                    ; $6177: $56
    ld b, b                                       ; $6178: $40
    rrca                                          ; $6179: $0f
    ld h, b                                       ; $617a: $60
    rst $28                                       ; $617b: $ef
    ld b, d                                       ; $617c: $42
    rlca                                          ; $617d: $07
    ld d, b                                       ; $617e: $50
    ld b, b                                       ; $617f: $40
    sub b                                         ; $6180: $90
    ld l, a                                       ; $6181: $6f
    jr jr_0bc_616b                                ; $6182: $18 $e7

    inc [hl]                                      ; $6184: $34
    nop                                           ; $6185: $00
    swap l                                        ; $6186: $cb $35
    jp z, $c23d                                   ; $6188: $ca $3d $c2

    ld a, e                                       ; $618b: $7b
    add h                                         ; $618c: $84
    ccf                                           ; $618d: $3f
    nop                                           ; $618e: $00
    ret nz                                        ; $618f: $c0

    ccf                                           ; $6190: $3f
    ret nz                                        ; $6191: $c0

    ld c, a                                       ; $6192: $4f
    or b                                          ; $6193: $b0
    daa                                           ; $6194: $27
    ret c                                         ; $6195: $d8

    inc hl                                        ; $6196: $23
    nop                                           ; $6197: $00
    call c, $9e61                                 ; $6198: $dc $61 $9e
    pop af                                        ; $619b: $f1

jr_0bc_619c:
    ld c, $fb                                     ; $619c: $0e $fb
    ld h, h                                       ; $619e: $64
    ei                                            ; $619f: $fb
    rla                                           ; $61a0: $17
    db $f4                                        ; $61a1: $f4
    ld sp, hl                                     ; $61a2: $f9
    or $30                                        ; $61a3: $f6 $30
    inc b                                         ; $61a5: $04
    rst $00                                       ; $61a6: $c7
    ld [bc], a                                    ; $61a7: $02
    nop                                           ; $61a8: $00
    ld h, b                                       ; $61a9: $60
    jr nc, jr_0bc_612c                            ; $61aa: $30 $80

    ld b, [hl]                                    ; $61ac: $46
    rst $30                                       ; $61ad: $f7
    ld [hl], b                                    ; $61ae: $70
    ld d, $c0                                     ; $61af: $16 $c0
    ld d, $e8                                     ; $61b1: $16 $e8
    rlca                                          ; $61b3: $07
    or b                                          ; $61b4: $b0

jr_0bc_61b5:
    ld bc, $c091                                  ; $61b5: $01 $91 $c0
    ld c, $f0                                     ; $61b8: $0e $f0
    jr nz, jr_0bc_619c                            ; $61ba: $20 $e0

    rrca                                          ; $61bc: $0f
    ret nz                                        ; $61bd: $c0

    ld [hl], d                                    ; $61be: $72
    ld b, $a0                                     ; $61bf: $06 $a0
    ld bc, $ce92                                  ; $61c1: $01 $92 $ce
    ld sp, $1be4                                  ; $61c4: $31 $e4 $1b
    push bc                                       ; $61c7: $c5
    nop                                           ; $61c8: $00
    ld a, [hl+]                                   ; $61c9: $2a
    push hl                                       ; $61ca: $e5
    ld a, [bc]                                    ; $61cb: $0a
    jp $c324                                      ; $61cc: $c3 $24 $c3


    inc h                                         ; $61cf: $24
    and e                                         ; $61d0: $a3
    ld e, l                                       ; $61d1: $5d
    ld b, h                                       ; $61d2: $44
    jr nz, jr_0bc_61dc                            ; $61d3: $20 $07

    rla                                           ; $61d5: $17
    inc d                                         ; $61d6: $14
    inc b                                         ; $61d7: $04
    ld [hl], b                                    ; $61d8: $70
    inc [hl]                                      ; $61d9: $34
    ldh a, [rSCY]                                 ; $61da: $f0 $42

jr_0bc_61dc:
    add hl, sp                                    ; $61dc: $39
    add b                                         ; $61dd: $80
    add hl, bc                                    ; $61de: $09
    add b                                         ; $61df: $80
    jr nz, jr_0bc_61ec                            ; $61e0: $20 $0a

    rst $38                                       ; $61e2: $ff
    cpl                                           ; $61e3: $2f
    rst $38                                       ; $61e4: $ff
    ld l, e                                       ; $61e5: $6b
    rst $38                                       ; $61e6: $ff
    ld a, e                                       ; $61e7: $7b
    rst $38                                       ; $61e8: $ff
    ld b, $3b                                     ; $61e9: $06 $3b
    rst $38                                       ; $61eb: $ff

jr_0bc_61ec:
    db $db                                        ; $61ec: $db
    rst $38                                       ; $61ed: $ff
    db $eb                                        ; $61ee: $eb
    db $ec                                        ; $61ef: $ec
    inc bc                                        ; $61f0: $03
    nop                                           ; $61f1: $00
    ld a, $8f                                     ; $61f2: $3e $8f
    nop                                           ; $61f4: $00
    sbc a                                         ; $61f5: $9f
    ld b, e                                       ; $61f6: $43
    ld a, a                                       ; $61f7: $7f
    add c                                         ; $61f8: $81
    rst $28                                       ; $61f9: $ef
    ld de, $13ef                                  ; $61fa: $11 $ef $13
    nop                                           ; $61fd: $00
    rst $30                                       ; $61fe: $f7
    dec bc                                        ; $61ff: $0b
    ld [hl], a                                    ; $6200: $77
    adc e                                         ; $6201: $8b
    ld h, a                                       ; $6202: $67
    sbc e                                         ; $6203: $9b
    ld h, a                                       ; $6204: $67
    sbc c                                         ; $6205: $99
    nop                                           ; $6206: $00
    ld l, e                                       ; $6207: $6b
    sub h                                         ; $6208: $94
    ld sp, hl                                     ; $6209: $f9
    or $f8                                        ; $620a: $f6 $f8
    rst $30                                       ; $620c: $f7
    db $fc                                        ; $620d: $fc
    ei                                            ; $620e: $fb
    nop                                           ; $620f: $00
    db $fd                                        ; $6210: $fd
    ld a, [$f3fc]                                 ; $6211: $fa $fc $f3
    ldh a, [$ef]                                  ; $6214: $f0 $ef
    pop hl                                        ; $6216: $e1

jr_0bc_6217:
    sbc $20                                       ; $6217: $de $20
    jp hl                                         ; $6219: $e9


    ld d, $60                                     ; $621a: $16 $60
    ld a, [bc]                                    ; $621c: $0a
    ld a, a                                       ; $621d: $7f
    xor a                                         ; $621e: $af
    ld a, a                                       ; $621f: $7f
    db $eb                                        ; $6220: $eb
    ld a, a                                       ; $6221: $7f
    ld l, d                                       ; $6222: $6a
    ei                                            ; $6223: $fb
    ld b, b                                       ; $6224: $40
    jr jr_0bc_6217                                ; $6225: $18 $f0

    dec h                                         ; $6227: $25
    jp $05d0                                      ; $6228: $c3 $d0 $05


    inc de                                        ; $622b: $13
    db $10                                        ; $622c: $10
    inc bc                                        ; $622d: $03
    and a                                         ; $622e: $a7
    add sp, $3c                                   ; $622f: $e8 $3c
    inc c                                         ; $6231: $0c
    and b                                         ; $6232: $a0
    ld c, d                                       ; $6233: $4a
    ld h, b                                       ; $6234: $60
    ld h, [hl]                                    ; $6235: $66
    inc hl                                        ; $6236: $23
    ld b, b                                       ; $6237: $40
    rlca                                          ; $6238: $07
    ld a, [hl+]                                   ; $6239: $2a
    call nz, $0b2a                                ; $623a: $c4 $2a $0b
    add h                                         ; $623d: $84
    ld l, e                                       ; $623e: $6b
    rrca                                          ; $623f: $0f
    ret nc                                        ; $6240: $d0

    ld b, b                                       ; $6241: $40
    rla                                           ; $6242: $17
    ld c, a                                       ; $6243: $4f
    add b                                         ; $6244: $80
    ld d, b                                       ; $6245: $50
    add b                                         ; $6246: $80
    ld b, $03                                     ; $6247: $06 $03
    ld l, l                                       ; $6249: $6d
    sub d                                         ; $624a: $92
    ld c, a                                       ; $624b: $4f
    or b                                          ; $624c: $b0
    ld h, a                                       ; $624d: $67
    sbc b                                         ; $624e: $98
    ld l, $0a                                     ; $624f: $2e $0a
    nop                                           ; $6251: $00
    inc hl                                        ; $6252: $23
    inc e                                         ; $6253: $1c
    cpl                                           ; $6254: $2f
    ld a, a                                       ; $6255: $7f
    xor a                                         ; $6256: $af
    inc b                                         ; $6257: $04
    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    inc bc                                        ; $625a: $03
    and [hl]                                      ; $625b: $a6
    ld b, $53                                     ; $625c: $06 $53
    rst $38                                       ; $625e: $ff
    ld bc, $2117                                  ; $625f: $01 $17 $21
    jp c, $9260                                   ; $6262: $da $60 $92

    and b                                         ; $6265: $a0
    ld d, [hl]                                    ; $6266: $56
    nop                                           ; $6267: $00
    rlca                                          ; $6268: $07
    adc h                                         ; $6269: $8c
    or b                                          ; $626a: $b0
    ld a, [bc]                                    ; $626b: $0a
    xor d                                         ; $626c: $aa
    ld h, c                                       ; $626d: $61
    sbc d                                         ; $626e: $9a
    jr nc, @+$1a                                  ; $626f: $30 $18

    jr nc, jr_0bc_62b6                            ; $6271: $30 $43

    cpl                                           ; $6273: $2f
    ld a, a                                       ; $6274: $7f
    ld b, a                                       ; $6275: $47
    adc a                                         ; $6276: $8f
    ld e, $02                                     ; $6277: $1e $02
    dec bc                                        ; $6279: $0b
    rst $38                                       ; $627a: $ff
    dec de                                        ; $627b: $1b
    jr nc, jr_0bc_6296                            ; $627c: $30 $18

    ld h, b                                       ; $627e: $60
    dec [hl]                                      ; $627f: $35
    jr nz, jr_0bc_628f                            ; $6280: $20 $0d

    dec e                                         ; $6282: $1d
    rst $28                                       ; $6283: $ef
    sbc a                                         ; $6284: $9f
    inc hl                                        ; $6285: $23
    jr nc, jr_0bc_62ca                            ; $6286: $30 $42

    and $05                                       ; $6288: $e6 $05
    ldh [rDIV], a                                 ; $628a: $e0 $04
    ld l, a                                       ; $628c: $6f
    xor h                                         ; $628d: $ac
    dec b                                         ; $628e: $05

jr_0bc_628f:
    inc b                                         ; $628f: $04
    rst $18                                       ; $6290: $df
    ccf                                           ; $6291: $3f
    sbc a                                         ; $6292: $9f
    ccf                                           ; $6293: $3f
    adc a                                         ; $6294: $8f
    add b                                         ; $6295: $80

jr_0bc_6296:
    ld b, $7b                                     ; $6296: $06 $7b
    sub e                                         ; $6298: $93
    ld h, [hl]                                    ; $6299: $66
    ld l, h                                       ; $629a: $6c
    ret nc                                        ; $629b: $d0

    rla                                           ; $629c: $17
    ldh a, [rIF]                                  ; $629d: $f0 $0f
    xor e                                         ; $629f: $ab
    rlca                                          ; $62a0: $07
    ret nc                                        ; $62a1: $d0

    rla                                           ; $62a2: $17
    ret nz                                        ; $62a3: $c0

    dec [hl]                                      ; $62a4: $35
    db $eb                                        ; $62a5: $eb
    call nc, $1a90                                ; $62a6: $d4 $90 $1a
    ld d, h                                       ; $62a9: $54
    rlca                                          ; $62aa: $07
    cp $5e                                        ; $62ab: $fe $5e
    dec b                                         ; $62ad: $05
    cp $f6                                        ; $62ae: $fe $f6
    ld b, $cd                                     ; $62b0: $06 $cd
    rst $38                                       ; $62b2: $ff
    nop                                           ; $62b3: $00
    db $ed                                        ; $62b4: $ed
    rst $38                                       ; $62b5: $ff

jr_0bc_62b6:
    ei                                            ; $62b6: $fb
    ret nz                                        ; $62b7: $c0

    ccf                                           ; $62b8: $3f
    ldh [$1f], a                                  ; $62b9: $e0 $1f
    ld [hl], b                                    ; $62bb: $70
    nop                                           ; $62bc: $00
    adc a                                         ; $62bd: $8f
    ld [hl], c                                    ; $62be: $71
    adc [hl]                                      ; $62bf: $8e
    pop af                                        ; $62c0: $f1
    ld c, $e3                                     ; $62c1: $0e $e3
    inc e                                         ; $62c3: $1c
    jp $3c10                                      ; $62c4: $c3 $10 $3c


    rst $08                                       ; $62c7: $cf
    ld [hl], b                                    ; $62c8: $70
    or b                                          ; $62c9: $b0

jr_0bc_62ca:
    inc b                                         ; $62ca: $04
    sbc e                                         ; $62cb: $9b
    ld [hl+], a                                   ; $62cc: $22
    db $dd                                        ; $62cd: $dd
    and d                                         ; $62ce: $a2
    nop                                           ; $62cf: $00
    ld e, l                                       ; $62d0: $5d
    and e                                         ; $62d1: $a3
    ld e, h                                       ; $62d2: $5c
    ld b, a                                       ; $62d3: $47
    cp b                                          ; $62d4: $b8
    ld b, a                                       ; $62d5: $47
    cp b                                          ; $62d6: $b8
    ld h, l                                       ; $62d7: $65
    ld b, b                                       ; $62d8: $40
    sbc d                                         ; $62d9: $9a
    and b                                         ; $62da: $a0
    rlca                                          ; $62db: $07
    ld d, a                                       ; $62dc: $57
    cp a                                          ; $62dd: $bf
    ld d, l                                       ; $62de: $55
    cp a                                          ; $62df: $bf
    ld e, l                                       ; $62e0: $5d
    cp a                                          ; $62e1: $bf
    ld a, b                                       ; $62e2: $78
    ld e, e                                       ; $62e3: $5b
    ld [bc], a                                    ; $62e4: $02
    nop                                           ; $62e5: $00
    ld [hl], b                                    ; $62e6: $70
    rlca                                          ; $62e7: $07
    db $10                                        ; $62e8: $10
    ld b, [hl]                                    ; $62e9: $46
    ldh [rNR30], a                                ; $62ea: $e0 $1a
    ld a, [bc]                                    ; $62ec: $0a
    ld b, b                                       ; $62ed: $40
    xor a                                         ; $62ee: $af
    nop                                           ; $62ef: $00
    ld b, d                                       ; $62f0: $42
    cp l                                          ; $62f1: $bd
    db $eb                                        ; $62f2: $eb
    inc d                                         ; $62f3: $14
    jp $c73c                                      ; $62f4: $c3 $3c $c7


    jr z, jr_0bc_632d                             ; $62f7: $28 $34

    daa                                           ; $62f9: $27
    ret z                                         ; $62fa: $c8

    and b                                         ; $62fb: $a0
    ld bc, $3860                                  ; $62fc: $01 $60 $38
    db $fd                                        ; $62ff: $fd
    ld h, b                                       ; $6300: $60
    ld [$08e7], sp                                ; $6301: $08 $e7 $08
    jr nc, jr_0bc_634c                            ; $6304: $30 $46

    xor c                                         ; $6306: $a9
    nop                                           ; $6307: $00
    inc hl                                        ; $6308: $23
    jr nz, jr_0bc_631b                            ; $6309: $20 $10

    nop                                           ; $630b: $00
    add hl, sp                                    ; $630c: $39
    nop                                           ; $630d: $00
    jr nz, jr_0bc_6320                            ; $630e: $20 $10

    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    ld b, b                                       ; $6312: $40
    ld bc, $f300                                  ; $6313: $01 $00 $f3
    di                                            ; $6316: $f3
    call c, Call_000_00ff                         ; $6317: $dc $ff $00
    adc h                                         ; $631a: $8c

jr_0bc_631b:
    rst $38                                       ; $631b: $ff
    nop                                           ; $631c: $00
    db $e3                                        ; $631d: $e3
    nop                                           ; $631e: $00
    ld b, b                                       ; $631f: $40

jr_0bc_6320:
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    db $10                                        ; $6323: $10
    db $10                                        ; $6324: $10
    or b                                          ; $6325: $b0
    or b                                          ; $6326: $b0
    jp hl                                         ; $6327: $e9


    ld sp, hl                                     ; $6328: $f9
    adc l                                         ; $6329: $8d
    db $fd                                        ; $632a: $fd
    nop                                           ; $632b: $00
    and a                                         ; $632c: $a7

jr_0bc_632d:
    rst $38                                       ; $632d: $ff
    ld e, h                                       ; $632e: $5c
    rst $38                                       ; $632f: $ff
    ld l, b                                       ; $6330: $68
    rst $38                                       ; $6331: $ff
    ld c, b                                       ; $6332: $48
    rst $38                                       ; $6333: $ff
    ld b, b                                       ; $6334: $40
    inc b                                         ; $6335: $04
    ld [bc], a                                    ; $6336: $02
    nop                                           ; $6337: $00
    db $10                                        ; $6338: $10
    rst $08                                       ; $6339: $cf
    ld sp, $b906                                  ; $633a: $31 $06 $b9
    nop                                           ; $633d: $00
    stop                                          ; $633e: $10 $00
    inc c                                         ; $6340: $0c
    nop                                           ; $6341: $00
    ld bc, $0208                                  ; $6342: $01 $08 $02
    ld h, d                                       ; $6345: $62
    halt                                          ; $6346: $76
    ei                                            ; $6347: $fb
    nop                                           ; $6348: $00
    rst $38                                       ; $6349: $ff
    sbc c                                         ; $634a: $99
    rst $38                                       ; $634b: $ff

jr_0bc_634c:
    nop                                           ; $634c: $00
    rst $38                                       ; $634d: $ff
    nop                                           ; $634e: $00
    jp Jump_0bc_4000                              ; $634f: $c3 $00 $40


    ld bc, $0012                                  ; $6352: $01 $12 $00
    ld b, d                                       ; $6355: $42
    jp nz, $d2f2                                  ; $6356: $c2 $f2 $d2

    rst $38                                       ; $6359: $ff
    db $10                                        ; $635a: $10
    and b                                         ; $635b: $a0
    db $10                                        ; $635c: $10
    ld [$203d], sp                                ; $635d: $08 $3d $20
    db $10                                        ; $6360: $10
    jr nc, jr_0bc_6393                            ; $6361: $30 $30

    ld a, d                                       ; $6363: $7a
    ld [hl-], a                                   ; $6364: $32
    cp $02                                        ; $6365: $fe $02
    ld [bc], a                                    ; $6367: $02
    rst $38                                       ; $6368: $ff
    ret nz                                        ; $6369: $c0

    ccf                                           ; $636a: $3f
    nop                                           ; $636b: $00
    sbc h                                         ; $636c: $9c
    ld l, $08                                     ; $636d: $2e $08
    ld [bc], a                                    ; $636f: $02
    nop                                           ; $6370: $00
    add e                                         ; $6371: $83
    add e                                         ; $6372: $83
    add a                                         ; $6373: $87
    pop bc                                        ; $6374: $c1
    rst $08                                       ; $6375: $cf
    ld b, b                                       ; $6376: $40
    rst $38                                       ; $6377: $ff
    inc bc                                        ; $6378: $03
    ld h, b                                       ; $6379: $60
    db $fc                                        ; $637a: $fc
    ld [hl], b                                    ; $637b: $70

jr_0bc_637c:
    jr jr_0bc_63ef                                ; $637c: $18 $71

    ld [$f360], sp                                ; $637e: $08 $60 $f3
    ld h, c                                       ; $6381: $61
    rst $38                                       ; $6382: $ff
    ld d, c                                       ; $6383: $51
    add b                                         ; $6384: $80
    ld [hl], b                                    ; $6385: $70
    jr nz, jr_0bc_6388                            ; $6386: $20 $00

jr_0bc_6388:
    stop                                          ; $6388: $10 $00
    or b                                          ; $638a: $b0
    and b                                         ; $638b: $a0
    ld sp, hl                                     ; $638c: $f9
    ldh a, [rNR10]                                ; $638d: $f0 $10
    db $fc                                        ; $638f: $fc
    ld d, h                                       ; $6390: $54
    rst $38                                       ; $6391: $ff
    ld h, b                                       ; $6392: $60

jr_0bc_6393:
    jr z, jr_0bc_6397                             ; $6393: $28 $02

    halt                                          ; $6395: $76
    ld h, d                                       ; $6396: $62

jr_0bc_6397:
    rst $38                                       ; $6397: $ff
    db $10                                        ; $6398: $10
    ld h, d                                       ; $6399: $62
    rst $38                                       ; $639a: $ff
    ld b, b                                       ; $639b: $40
    ld h, b                                       ; $639c: $60
    jr nc, jr_0bc_63e1                            ; $639d: $30 $42

    ld a, [c]                                     ; $639f: $f2
    ld h, d                                       ; $63a0: $62
    rst $38                                       ; $63a1: $ff
    ld [$ff20], sp                                ; $63a2: $08 $20 $ff
    add hl, bc                                    ; $63a5: $09
    or $60                                        ; $63a6: $f6 $60
    jr c, @+$74                                   ; $63a8: $38 $72

    cp $42                                        ; $63aa: $fe $42
    ret nz                                        ; $63ac: $c0

    add b                                         ; $63ad: $80
    ld [$3050], sp                                ; $63ae: $08 $50 $30
    ld b, b                                       ; $63b1: $40
    di                                            ; $63b2: $f3
    nop                                           ; $63b3: $00
    rst $38                                       ; $63b4: $ff
    add c                                         ; $63b5: $81
    ld a, [hl]                                    ; $63b6: $7e
    pop bc                                        ; $63b7: $c1
    ld d, b                                       ; $63b8: $50
    jr z, jr_0bc_637c                             ; $63b9: $28 $c1

    nop                                           ; $63bb: $00
    ld sp, hl                                     ; $63bc: $f9
    and b                                         ; $63bd: $a0
    db $fc                                        ; $63be: $fc
    ld [$b0f7], sp                                ; $63bf: $08 $f7 $b0
    jr z, jr_0bc_63ca                             ; $63c2: $28 $06

    nop                                           ; $63c4: $00
    halt                                          ; $63c5: $76
    ld [de], a                                    ; $63c6: $12
    rst $38                                       ; $63c7: $ff
    ld [de], a                                    ; $63c8: $12
    or b                                          ; $63c9: $b0

jr_0bc_63ca:
    nop                                           ; $63ca: $00
    ret nc                                        ; $63cb: $d0

    ld [$2008], sp                                ; $63cc: $08 $08 $20
    rst $38                                       ; $63cf: $ff
    inc h                                         ; $63d0: $24
    jp nc, RST_00                                 ; $63d1: $d2 $00 $00

    rst $08                                       ; $63d4: $cf
    jr nz, jr_0bc_63e5                            ; $63d5: $20 $0e

    jr nz, jr_0bc_641a                            ; $63d7: $20 $41

    adc b                                         ; $63d9: $88
    add b                                         ; $63da: $80
    inc d                                         ; $63db: $14
    rst $38                                       ; $63dc: $ff
    rst $38                                       ; $63dd: $ff
    ei                                            ; $63de: $fb
    rst $38                                       ; $63df: $ff
    db $eb                                        ; $63e0: $eb

jr_0bc_63e1:
    cp [hl]                                       ; $63e1: $be
    ld [bc], a                                    ; $63e2: $02
    ld b, $db                                     ; $63e3: $06 $db

jr_0bc_63e5:
    rst $38                                       ; $63e5: $ff
    rst $10                                       ; $63e6: $d7
    rst $38                                       ; $63e7: $ff
    adc $80                                       ; $63e8: $ce $80
    inc h                                         ; $63ea: $24
    add h                                         ; $63eb: $84
    inc c                                         ; $63ec: $0c
    ld c, $22                                     ; $63ed: $0e $22

jr_0bc_63ef:
    rst $38                                       ; $63ef: $ff
    ld c, $78                                     ; $63f0: $0e $78
    rlca                                          ; $63f2: $07
    rst $18                                       ; $63f3: $df
    ld a, a                                       ; $63f4: $7f
    sbc a                                         ; $63f5: $9f
    ld [bc], a                                    ; $63f6: $02
    nop                                           ; $63f7: $00
    adc e                                         ; $63f8: $8b
    adc e                                         ; $63f9: $8b
    jr nc, @+$07                                  ; $63fa: $30 $05

Call_0bc_63fc:
    sub e                                         ; $63fc: $93
    ld a, a                                       ; $63fd: $7f
    or a                                          ; $63fe: $b7
    ret nc                                        ; $63ff: $d0

    ld de, $504f                                  ; $6400: $11 $4f $50
    inc de                                        ; $6403: $13
    ret nc                                        ; $6404: $d0

    add hl, bc                                    ; $6405: $09
    nop                                           ; $6406: $00
    rla                                           ; $6407: $17
    ld e, h                                       ; $6408: $5c
    rst $38                                       ; $6409: $ff
    inc e                                         ; $640a: $1c
    rst $38                                       ; $640b: $ff
    ld e, b                                       ; $640c: $58
    rst $28                                       ; $640d: $ef
    stop                                          ; $640e: $10 $00
    adc a                                         ; $6410: $8f
    jr c, jr_0bc_641a                             ; $6411: $38 $07

    cp h                                          ; $6413: $bc
    inc bc                                        ; $6414: $03
    push af                                       ; $6415: $f5
    ld [bc], a                                    ; $6416: $02
    ld h, a                                       ; $6417: $67
    dec b                                         ; $6418: $05
    nop                                           ; $6419: $00

jr_0bc_641a:
    inc bc                                        ; $641a: $03
    call $cd03                                    ; $641b: $cd $03 $cd
    ld [hl], b                                    ; $641e: $70
    scf                                           ; $641f: $37
    add hl, de                                    ; $6420: $19
    ld [hl], b                                    ; $6421: $70
    ld b, a                                       ; $6422: $47
    ld b, [hl]                                    ; $6423: $46
    ld h, e                                       ; $6424: $63
    ld [hl], b                                    ; $6425: $70

jr_0bc_6426:
    rlca                                          ; $6426: $07
    add hl, hl                                    ; $6427: $29
    ld c, a                                       ; $6428: $4f
    sub l                                         ; $6429: $95
    ld [hl], b                                    ; $642a: $70
    jr nc, jr_0bc_642f                            ; $642b: $30 $02

    jr jr_0bc_6426                                ; $642d: $18 $f7

jr_0bc_642f:
    db $e3                                        ; $642f: $e3
    ldh a, [$37]                                  ; $6430: $f0 $37
    sub b                                         ; $6432: $90
    inc h                                         ; $6433: $24
    add sp, $07                                   ; $6434: $e8 $07
    rst $08                                       ; $6436: $cf
    ld a, a                                       ; $6437: $7f
    adc a                                         ; $6438: $8f
    ld [bc], a                                    ; $6439: $02
    nop                                           ; $643a: $00
    ld [hl], b                                    ; $643b: $70
    jr nz, jr_0bc_644f                            ; $643c: $20 $11

    dec h                                         ; $643e: $25
    rst $38                                       ; $643f: $ff
    dec b                                         ; $6440: $05
    ld [bc], a                                    ; $6441: $02
    nop                                           ; $6442: $00
    ld de, $23ff                                  ; $6443: $11 $ff $23
    ld [bc], a                                    ; $6446: $02
    db $10                                        ; $6447: $10
    ld bc, $ff03                                  ; $6448: $01 $03 $ff
    inc c                                         ; $644b: $0c
    rst $38                                       ; $644c: $ff
    inc d                                         ; $644d: $14
    rst $38                                       ; $644e: $ff

jr_0bc_644f:
    ld [hl+], a                                   ; $644f: $22
    ld [bc], a                                    ; $6450: $02
    nop                                           ; $6451: $00
    ld bc, $ff3a                                  ; $6452: $01 $3a $ff
    jr @+$01                                      ; $6455: $18 $ff

    ld d, h                                       ; $6457: $54
    rst $38                                       ; $6458: $ff
    ld d, [hl]                                    ; $6459: $56
    or d                                          ; $645a: $b2
    add hl, bc                                    ; $645b: $09
    inc b                                         ; $645c: $04
    rst $38                                       ; $645d: $ff
    inc hl                                        ; $645e: $23
    call c, Call_0bc_4d22                         ; $645f: $dc $22 $4d
    add [hl]                                      ; $6462: $86
    add hl, bc                                    ; $6463: $09
    ld sp, $1000                                  ; $6464: $31 $00 $10
    db $fd                                        ; $6467: $fd
    nop                                           ; $6468: $00
    and d                                         ; $6469: $a2
    sub h                                         ; $646a: $94
    ld bc, $e718                                  ; $646b: $01 $18 $e7
    ld bc, $00fe                                  ; $646e: $01 $fe $00
    ld [hl+], a                                   ; $6471: $22
    inc b                                         ; $6472: $04
    nop                                           ; $6473: $00
    nop                                           ; $6474: $00
    sub c                                         ; $6475: $91
    nop                                           ; $6476: $00
    cp l                                          ; $6477: $bd
    nop                                           ; $6478: $00
    add b                                         ; $6479: $80
    and d                                         ; $647a: $a2
    ld bc, $00f9                                  ; $647b: $01 $f9 $00
    add sp, -$80                                  ; $647e: $e8 $80
    ld b, b                                       ; $6480: $40
    ld bc, $0000                                  ; $6481: $01 $00 $00
    dec c                                         ; $6484: $0d
    nop                                           ; $6485: $00
    add h                                         ; $6486: $84
    nop                                           ; $6487: $00
    cp [hl]                                       ; $6488: $be
    nop                                           ; $6489: $00
    ld [$40b1], sp                                ; $648a: $08 $b1 $40
    db $10                                        ; $648d: $10
    pop bc                                        ; $648e: $c1
    ld de, $0084                                  ; $648f: $11 $84 $00
    ld [hl+], a                                   ; $6492: $22
    inc b                                         ; $6493: $04
    inc e                                         ; $6494: $1c
    jr nz, jr_0bc_6497                            ; $6495: $20 $00

jr_0bc_6497:
    xor e                                         ; $6497: $ab
    db $10                                        ; $6498: $10
    inc b                                         ; $6499: $04
    jp nz, $8000                                  ; $649a: $c2 $00 $80

    add hl, bc                                    ; $649d: $09
    nop                                           ; $649e: $00
    nop                                           ; $649f: $00
    inc h                                         ; $64a0: $24
    nop                                           ; $64a1: $00
    adc l                                         ; $64a2: $8d
    nop                                           ; $64a3: $00
    ld l, d                                       ; $64a4: $6a
    nop                                           ; $64a5: $00
    call nz, RST_00                               ; $64a6: $c4 $00 $00
    sub [hl]                                      ; $64a9: $96
    ld b, c                                       ; $64aa: $41
    rrca                                          ; $64ab: $0f
    nop                                           ; $64ac: $00
    ld b, d                                       ; $64ad: $42
    ld bc, $03c0                                  ; $64ae: $01 $c0 $03
    nop                                           ; $64b1: $00
    ldh a, [$03]                                  ; $64b2: $f0 $03
    add b                                         ; $64b4: $80
    rlca                                          ; $64b5: $07
    ld h, b                                       ; $64b6: $60
    rrca                                          ; $64b7: $0f
    add b                                         ; $64b8: $80
    ld a, a                                       ; $64b9: $7f

jr_0bc_64ba:
    jr z, jr_0bc_64bd                             ; $64ba: $28 $01

    rra                                           ; $64bc: $1f

jr_0bc_64bd:
    ld a, [$cc07]                                 ; $64bd: $fa $07 $cc
    sub h                                         ; $64c0: $94
    dec b                                         ; $64c1: $05
    ret nz                                        ; $64c2: $c0

    rst $38                                       ; $64c3: $ff
    adc b                                         ; $64c4: $88
    jr z, @+$01                                   ; $64c5: $28 $ff

    jr c, jr_0bc_64cb                             ; $64c7: $38 $02

    nop                                           ; $64c9: $00
    ld e, h                                       ; $64ca: $5c

jr_0bc_64cb:
    xor b                                         ; $64cb: $a8
    ld b, $43                                     ; $64cc: $06 $43
    adc a                                         ; $64ce: $8f
    ld h, d                                       ; $64cf: $62
    nop                                           ; $64d0: $00
    rlca                                          ; $64d1: $07
    ld sp, hl                                     ; $64d2: $f9
    or e                                          ; $64d3: $b3
    ld c, l                                       ; $64d4: $4d
    dec sp                                        ; $64d5: $3b
    call nc, $de39                                ; $64d6: $d4 $39 $de
    nop                                           ; $64d9: $00

jr_0bc_64da:
    sbc h                                         ; $64da: $9c
    ld l, e                                       ; $64db: $6b
    ldh [rP1], a                                  ; $64dc: $e0 $00
    ld b, d                                       ; $64de: $42
    add b                                         ; $64df: $80
    ld [$00e0], sp                                ; $64e0: $08 $e0 $00
    add $e0                                       ; $64e3: $c6 $e0
    ld h, b                                       ; $64e5: $60
    ldh a, [rP1]                                  ; $64e6: $f0 $00
    ld hl, sp-$80                                 ; $64e8: $f8 $80
    ldh [rNR42], a                                ; $64ea: $e0 $21
    jp nz, Jump_000_04f0                          ; $64ec: $c2 $f0 $04

    ld a, [bc]                                    ; $64ef: $0a
    add b                                         ; $64f0: $80
    ld a, a                                       ; $64f1: $7f
    ld c, c                                       ; $64f2: $49
    ld h, $15                                     ; $64f3: $26 $15
    ld a, [bc]                                    ; $64f5: $0a
    and b                                         ; $64f6: $a0
    sub b                                         ; $64f7: $90
    ld [$6e0c], sp                                ; $64f8: $08 $0c $6e
    ld bc, $9f60                                  ; $64fb: $01 $60 $9f
    dec b                                         ; $64fe: $05
    ld a, [$4004]                                 ; $64ff: $fa $04 $40
    ld [hl+], a                                   ; $6502: $22
    sub b                                         ; $6503: $90
    jr jr_0bc_654a                                ; $6504: $18 $44

    ei                                            ; $6506: $fb
    jr z, jr_0bc_64da                             ; $6507: $28 $d1

    jr z, jr_0bc_64cb                             ; $6509: $28 $c0

    sub h                                         ; $650b: $94
    sub b                                         ; $650c: $90
    jr c, jr_0bc_6553                             ; $650d: $38 $44

    add d                                         ; $650f: $82
    add b                                         ; $6510: $80
    ld e, b                                       ; $6511: $58
    jr nc, @+$0d                                  ; $6512: $30 $0b

    ld [bc], a                                    ; $6514: $02
    inc e                                         ; $6515: $1c
    nop                                           ; $6516: $00
    ld b, b                                       ; $6517: $40
    jr c, jr_0bc_64ba                             ; $6518: $38 $a0

    jr nc, @+$03                                  ; $651a: $30 $01

    cp $10                                        ; $651c: $fe $10
    add sp, -$58                                  ; $651e: $e8 $a8
    ld b, b                                       ; $6520: $40
    ld h, b                                       ; $6521: $60
    ld b, b                                       ; $6522: $40
    ld h, l                                       ; $6523: $65
    ld [bc], a                                    ; $6524: $02
    ret nz                                        ; $6525: $c0

    jr @+$11                                      ; $6526: $18 $0f

    rst $38                                       ; $6528: $ff
    inc de                                        ; $6529: $13
    rst $28                                       ; $652a: $ef
    ld e, l                                       ; $652b: $5d
    nop                                           ; $652c: $00
    and e                                         ; $652d: $a3
    ld e, $81                                     ; $652e: $1e $81
    inc sp                                        ; $6530: $33
    nop                                           ; $6531: $00
    and d                                         ; $6532: $a2
    nop                                           ; $6533: $00
    push af                                       ; $6534: $f5
    ld [$6700], sp                                ; $6535: $08 $00 $67
    nop                                           ; $6538: $00
    db $fc                                        ; $6539: $fc
    and d                                         ; $653a: $a2
    ld [bc], a                                    ; $653b: $02
    ld e, b                                       ; $653c: $58
    rst $38                                       ; $653d: $ff
    sub b                                         ; $653e: $90
    ld [$b447], sp                                ; $653f: $08 $47 $b4
    inc bc                                        ; $6542: $03
    cp b                                          ; $6543: $b8
    add b                                         ; $6544: $80

jr_0bc_6545:
    ld de, $00ff                                  ; $6545: $11 $ff $00
    ld e, $00                                     ; $6548: $1e $00

jr_0bc_654a:
    add c                                         ; $654a: $81
    db $10                                        ; $654b: $10
    ld bc, $0360                                  ; $654c: $01 $60 $03
    nop                                           ; $654f: $00
    rlca                                          ; $6550: $07
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00

Jump_0bc_6553:
jr_0bc_6553:
    rlca                                          ; $6553: $07
    ld bc, $4307                                  ; $6554: $01 $07 $43
    rrca                                          ; $6557: $0f
    db $e3                                        ; $6558: $e3
    inc d                                         ; $6559: $14
    ld b, [hl]                                    ; $655a: $46
    nop                                           ; $655b: $00
    or c                                          ; $655c: $b1
    ld b, $c9                                     ; $655d: $06 $c9
    adc a                                         ; $655f: $8f
    ld h, [hl]                                    ; $6560: $66
    add a                                         ; $6561: $87
    ld l, e                                       ; $6562: $6b
    rst $00                                       ; $6563: $c7
    inc b                                         ; $6564: $04
    dec hl                                        ; $6565: $2b
    daa                                           ; $6566: $27
    db $db                                        ; $6567: $db
    cpl                                           ; $6568: $2f
    db $d3                                        ; $6569: $d3
    ld l, b                                       ; $656a: $68
    rrca                                          ; $656b: $0f
    adc a                                         ; $656c: $8f
    ld [de], a                                    ; $656d: $12
    ld [hl+], a                                   ; $656e: $22
    rlca                                          ; $656f: $07
    cp c                                          ; $6570: $b9
    ret nz                                        ; $6571: $c0

    ld e, b                                       ; $6572: $58
    add [hl]                                      ; $6573: $86
    ldh [rP1], a                                  ; $6574: $e0 $00
    ret nz                                        ; $6576: $c0

    nop                                           ; $6577: $00
    add d                                         ; $6578: $82
    nop                                           ; $6579: $00
    ldh a, [$c2]                                  ; $657a: $f0 $c2
    ldh a, [rP1]                                  ; $657c: $f0 $00
    ld h, e                                       ; $657e: $63
    nop                                           ; $657f: $00
    ld bc, $8090                                  ; $6580: $01 $90 $80
    db $10                                        ; $6583: $10
    ld bc, $00b1                                  ; $6584: $01 $b1 $00
    ld d, [hl]                                    ; $6587: $56
    nop                                           ; $6588: $00
    inc hl                                        ; $6589: $23
    nop                                           ; $658a: $00
    ld l, c                                       ; $658b: $69
    ld bc, $0c82                                  ; $658c: $01 $82 $0c
    nop                                           ; $658f: $00
    ld [$4001], sp                                ; $6590: $08 $01 $40
    inc bc                                        ; $6593: $03
    ld d, b                                       ; $6594: $50
    ld [$4002], sp                                ; $6595: $08 $02 $40
    rlca                                          ; $6598: $07
    sub b                                         ; $6599: $90
    rlca                                          ; $659a: $07
    ld bc, $100f                                  ; $659b: $01 $0f $10

jr_0bc_659e:
    add hl, de                                    ; $659e: $19
    cp $00                                        ; $659f: $fe $00
    pop bc                                        ; $65a1: $c1
    cp $89                                        ; $65a2: $fe $89
    db $fc                                        ; $65a4: $fc
    dec sp                                        ; $65a5: $3b
    rst $38                                       ; $65a6: $ff

jr_0bc_65a7:
    jr c, jr_0bc_65a7                             ; $65a7: $38 $fe

    ld b, b                                       ; $65a9: $40
    ld e, l                                       ; $65aa: $5d
    db $10                                        ; $65ab: $10
    add hl, bc                                    ; $65ac: $09
    rrca                                          ; $65ad: $0f
    and a                                         ; $65ae: $a7
    rlca                                          ; $65af: $07
    ld sp, hl                                     ; $65b0: $f9
    ld [hl], e                                    ; $65b1: $73
    adc a                                         ; $65b2: $8f
    nop                                           ; $65b3: $00
    cp e                                          ; $65b4: $bb
    ld d, h                                       ; $65b5: $54
    cp c                                          ; $65b6: $b9
    ld e, [hl]                                    ; $65b7: $5e
    rst $18                                       ; $65b8: $df
    jr z, @+$01                                   ; $65b9: $28 $ff

    nop                                           ; $65bb: $00
    db $10                                        ; $65bc: $10
    ld b, e                                       ; $65bd: $43
    nop                                           ; $65be: $00
    jr nc, jr_0bc_65e4                            ; $65bf: $30 $23

    dec bc                                        ; $65c1: $0b
    add b                                         ; $65c2: $80
    jr jr_0bc_6545                                ; $65c3: $18 $80

    add b                                         ; $65c5: $80
    inc b                                         ; $65c6: $04
    ret nz                                        ; $65c7: $c0

    add $e0                                       ; $65c8: $c6 $e0
    rst $38                                       ; $65ca: $ff
    rst $00                                       ; $65cb: $c7
    sbc $13                                       ; $65cc: $de $13
    cp $ff                                        ; $65ce: $fe $ff
    ld d, l                                       ; $65d0: $55
    or $16                                        ; $65d1: $f6 $16
    ld b, $e3                                     ; $65d3: $06 $e3
    ld h, [hl]                                    ; $65d5: $66
    ld [bc], a                                    ; $65d6: $02
    ld c, h                                       ; $65d7: $4c
    ld [bc], a                                    ; $65d8: $02
    jr nc, jr_0bc_65e7                            ; $65d9: $30 $0c

    ld l, a                                       ; $65db: $6f
    inc bc                                        ; $65dc: $03
    nop                                           ; $65dd: $00
    adc b                                         ; $65de: $88
    db $ec                                        ; $65df: $ec
    ld d, e                                       ; $65e0: $53
    xor $51                                       ; $65e1: $ee $51
    db $e4                                        ; $65e3: $e4

jr_0bc_65e4:
    db $db                                        ; $65e4: $db
    push hl                                       ; $65e5: $e5
    nop                                           ; $65e6: $00

jr_0bc_65e7:
    jp c, $caf5                                   ; $65e7: $da $f5 $ca

    di                                            ; $65ea: $f3
    adc h                                         ; $65eb: $8c
    db $e3                                        ; $65ec: $e3
    sbc h                                         ; $65ed: $9c
    db $e3                                        ; $65ee: $e3
    nop                                           ; $65ef: $00
    inc e                                         ; $65f0: $1c
    rst $38                                       ; $65f1: $ff
    scf                                           ; $65f2: $37
    cp a                                          ; $65f3: $bf
    ld d, a                                       ; $65f4: $57
    rst $38                                       ; $65f5: $ff
    dec d                                         ; $65f6: $15
    rst $38                                       ; $65f7: $ff
    ld b, c                                       ; $65f8: $41
    dec c                                         ; $65f9: $0d
    jr nc, jr_0bc_65fe                            ; $65fa: $30 $02

    ld l, e                                       ; $65fc: $6b
    sbc a                                         ; $65fd: $9f

jr_0bc_65fe:
    ld l, e                                       ; $65fe: $6b
    ld a, a                                       ; $65ff: $7f
    add a                                         ; $6600: $87
    ret nz                                        ; $6601: $c0

    nop                                           ; $6602: $00
    ld d, l                                       ; $6603: $55
    sbc c                                         ; $6604: $99
    ret nz                                        ; $6605: $c0

    nop                                           ; $6606: $00
    ld b, [hl]                                    ; $6607: $46
    ret nz                                        ; $6608: $c0

    jr nz, jr_0bc_659e                            ; $6609: $20 $93

    ret nz                                        ; $660b: $c0

    db $10                                        ; $660c: $10
    ld d, d                                       ; $660d: $52
    add b                                         ; $660e: $80
    add hl, sp                                    ; $660f: $39
    jr nz, jr_0bc_6656                            ; $6610: $20 $44

    add $c0                                       ; $6612: $c6 $c0

jr_0bc_6614:
    ld e, c                                       ; $6614: $59
    ld de, $33ff                                  ; $6615: $11 $ff $33
    rst $38                                       ; $6618: $ff
    ccf                                           ; $6619: $3f
    and c                                         ; $661a: $a1
    ld [bc], a                                    ; $661b: $02
    nop                                           ; $661c: $00
    ld [hl], a                                    ; $661d: $77
    ld a, c                                       ; $661e: $79
    nop                                           ; $661f: $00
    rst $00                                       ; $6620: $c7
    rst $38                                       ; $6621: $ff
    and e                                         ; $6622: $a3
    rst $38                                       ; $6623: $ff
    ldh [rLCDC], a                                ; $6624: $e0 $40
    dec b                                         ; $6626: $05
    ld sp, hl                                     ; $6627: $f9
    add b                                         ; $6628: $80
    di                                            ; $6629: $f3
    ret nz                                        ; $662a: $c0

    ei                                            ; $662b: $fb
    ret nc                                        ; $662c: $d0

    ld h, b                                       ; $662d: $60
    ld c, $b0                                     ; $662e: $0e $b0
    ld d, b                                       ; $6630: $50
    nop                                           ; $6631: $00
    ld b, b                                       ; $6632: $40
    add $20                                       ; $6633: $c6 $20
    jp nz, Jump_0bc_5400                          ; $6635: $c2 $00 $54

    add b                                         ; $6638: $80
    dec hl                                        ; $6639: $2b
    nop                                           ; $663a: $00
    call nz, $8679                                ; $663b: $c4 $79 $86
    sub d                                         ; $663e: $92
    ld l, h                                       ; $663f: $6c
    xor e                                         ; $6640: $ab
    ld a, h                                       ; $6641: $7c
    ld l, b                                       ; $6642: $68
    nop                                           ; $6643: $00
    rst $38                                       ; $6644: $ff
    sub d                                         ; $6645: $92
    ld l, l                                       ; $6646: $6d
    sub h                                         ; $6647: $94
    ld [$06c9], sp                                ; $6648: $08 $c9 $06
    and [hl]                                      ; $664b: $a6
    nop                                           ; $664c: $00
    ld c, h                                       ; $664d: $4c
    jr c, jr_0bc_6614                             ; $664e: $38 $c4

    ld d, l                                       ; $6650: $55
    ldh [$4e], a                                  ; $6651: $e0 $4e
    pop af                                        ; $6653: $f1
    jr nz, jr_0bc_6667                            ; $6654: $20 $11

jr_0bc_6656:
    rst $18                                       ; $6656: $df
    sub l                                         ; $6657: $95
    ld l, d                                       ; $6658: $6a
    jr nz, @+$3a                                  ; $6659: $20 $38

    db $eb                                        ; $665b: $eb
    ld a, h                                       ; $665c: $7c
    ld c, h                                       ; $665d: $4c
    jr nz, @+$52                                  ; $665e: $20 $50

    ld b, h                                       ; $6660: $44
    adc [hl]                                      ; $6661: $8e
    jr nz, jr_0bc_66c4                            ; $6662: $20 $60

    rst $28                                       ; $6664: $ef
    ld a, h                                       ; $6665: $7c
    ld h, h                                       ; $6666: $64

jr_0bc_6667:
    ld b, b                                       ; $6667: $40
    nop                                           ; $6668: $00
    add hl, hl                                    ; $6669: $29
    stop                                          ; $666a: $10 $00
    sub e                                         ; $666c: $93
    ld h, b                                       ; $666d: $60
    ld h, l                                       ; $666e: $65
    ld [hl-], a                                   ; $666f: $32
    inc e                                         ; $6670: $1c
    inc hl                                        ; $6671: $23
    xor b                                         ; $6672: $a8
    rlca                                          ; $6673: $07
    nop                                           ; $6674: $00
    ld [hl], b                                    ; $6675: $70
    adc a                                         ; $6676: $8f
    inc b                                         ; $6677: $04
    ei                                            ; $6678: $fb
    xor c                                         ; $6679: $a9
    ld d, [hl]                                    ; $667a: $56
    add e                                         ; $667b: $83
    rrca                                          ; $667c: $0f
    nop                                           ; $667d: $00
    rst $00                                       ; $667e: $c7
    rra                                           ; $667f: $1f
    add e                                         ; $6680: $83
    rra                                           ; $6681: $1f
    push bc                                       ; $6682: $c5
    rra                                           ; $6683: $1f
    adc h                                         ; $6684: $8c
    ccf                                           ; $6685: $3f

jr_0bc_6686:
    nop                                           ; $6686: $00
    adc [hl]                                      ; $6687: $8e
    ccf                                           ; $6688: $3f
    db $10                                        ; $6689: $10
    ld a, a                                       ; $668a: $7f
    add b                                         ; $668b: $80
    ld a, [hl]                                    ; $668c: $7e
    add e                                         ; $668d: $83
    rst $38                                       ; $668e: $ff
    nop                                           ; $668f: $00
    push bc                                       ; $6690: $c5
    rst $38                                       ; $6691: $ff
    ld bc, $07ff                                  ; $6692: $01 $ff $07
    rst $38                                       ; $6695: $ff
    ld b, $ff                                     ; $6696: $06 $ff
    nop                                           ; $6698: $00
    ld [bc], a                                    ; $6699: $02
    rst $38                                       ; $669a: $ff
    inc bc                                        ; $669b: $03
    cp a                                          ; $669c: $bf
    ld [bc], a                                    ; $669d: $02
    rra                                           ; $669e: $1f
    di                                            ; $669f: $f3
    rst $38                                       ; $66a0: $ff
    ld d, h                                       ; $66a1: $54
    or c                                          ; $66a2: $b1
    ld e, b                                       ; $66a3: $58
    inc b                                         ; $66a4: $04
    sbc h                                         ; $66a5: $9c
    adc d                                         ; $66a6: $8a
    inc b                                         ; $66a7: $04
    ld b, [hl]                                    ; $66a8: $46
    ld [de], a                                    ; $66a9: $12
    nop                                           ; $66aa: $00
    nop                                           ; $66ab: $00
    rst $38                                       ; $66ac: $ff
    nop                                           ; $66ad: $00
    ret nz                                        ; $66ae: $c0

    ld hl, sp-$0f                                 ; $66af: $f8 $f1
    db $fc                                        ; $66b1: $fc
    ld b, b                                       ; $66b2: $40
    cp $03                                        ; $66b3: $fe $03
    ldh a, [rNR12]                                ; $66b5: $f0 $12
    nop                                           ; $66b7: $00
    ret nz                                        ; $66b8: $c0

    inc bc                                        ; $66b9: $03
    and h                                         ; $66ba: $a4
    ld bc, $f081                                  ; $66bb: $01 $81 $f0
    and b                                         ; $66be: $a0
    ld c, b                                       ; $66bf: $48
    inc l                                         ; $66c0: $2c
    xor e                                         ; $66c1: $ab
    and b                                         ; $66c2: $a0
    ld b, b                                       ; $66c3: $40

jr_0bc_66c4:
    push de                                       ; $66c4: $d5
    and b                                         ; $66c5: $a0
    ld d, b                                       ; $66c6: $50
    ld a, l                                       ; $66c7: $7d
    ret nz                                        ; $66c8: $c0

    ld d, b                                       ; $66c9: $50
    and d                                         ; $66ca: $a2
    jr nz, jr_0bc_66dd                            ; $66cb: $20 $10

    and b                                         ; $66cd: $a0
    jr c, jr_0bc_6716                             ; $66ce: $38 $46

    xor e                                         ; $66d0: $ab
    ldh [rNR10], a                                ; $66d1: $e0 $10
    bit 7, h                                      ; $66d3: $cb $7c
    ld l, h                                       ; $66d5: $6c
    ldh [rP1], a                                  ; $66d6: $e0 $00
    db $10                                        ; $66d8: $10
    jr c, jr_0bc_6686                             ; $66d9: $38 $ab

    add b                                         ; $66db: $80
    db $10                                        ; $66dc: $10

jr_0bc_66dd:
    db $10                                        ; $66dd: $10
    inc bc                                        ; $66de: $03
    rra                                           ; $66df: $1f
    adc a                                         ; $66e0: $8f
    rra                                           ; $66e1: $1f
    ld [bc], a                                    ; $66e2: $02
    rra                                           ; $66e3: $1f
    ret nz                                        ; $66e4: $c0

    nop                                           ; $66e5: $00
    rrca                                          ; $66e6: $0f
    nop                                           ; $66e7: $00
    inc bc                                        ; $66e8: $03
    ret nz                                        ; $66e9: $c0

    rlca                                          ; $66ea: $07
    nop                                           ; $66eb: $00
    add e                                         ; $66ec: $83
    add c                                         ; $66ed: $81
    dec b                                         ; $66ee: $05
    ld b, e                                       ; $66ef: $43
    inc de                                        ; $66f0: $13
    ld l, l                                       ; $66f1: $6d
    inc bc                                        ; $66f2: $03
    ld a, l                                       ; $66f3: $7d
    ret nc                                        ; $66f4: $d0

    ld b, e                                       ; $66f5: $43
    inc e                                         ; $66f6: $1c
    sub b                                         ; $66f7: $90
    jr jr_0bc_671a                                ; $66f8: $18 $20

    ld bc, $30f8                                  ; $66fa: $01 $f8 $30
    ld [bc], a                                    ; $66fd: $02
    ldh [rP1], a                                  ; $66fe: $e0 $00

Jump_0bc_6700:
    pop af                                        ; $6700: $f1
    add c                                         ; $6701: $81
    ld a, [c]                                     ; $6702: $f2
    add d                                         ; $6703: $82
    ldh [$28], a                                  ; $6704: $e0 $28
    xor d                                         ; $6706: $aa
    rlca                                          ; $6707: $07
    ld [hl], e                                    ; $6708: $73
    adc a                                         ; $6709: $8f
    ld b, h                                       ; $670a: $44
    ldh [rNR41], a                                ; $670b: $e0 $20
    inc bc                                        ; $670d: $03
    jr nz, jr_0bc_672f                            ; $670e: $20 $1f

    dec b                                         ; $6710: $05
    ldh [rP1], a                                  ; $6711: $e0 $00
    add b                                         ; $6713: $80
    ccf                                           ; $6714: $3f
    nop                                           ; $6715: $00

jr_0bc_6716:
    ld e, $a0                                     ; $6716: $1e $a0
    ld b, d                                       ; $6718: $42
    nop                                           ; $6719: $00

jr_0bc_671a:
    ldh [$28], a                                  ; $671a: $e0 $28
    ld [bc], a                                    ; $671c: $02
    rst $38                                       ; $671d: $ff
    ld [bc], a                                    ; $671e: $02
    rra                                           ; $671f: $1f
    sub h                                         ; $6720: $94
    ld [bc], a                                    ; $6721: $02
    nop                                           ; $6722: $00
    inc b                                         ; $6723: $04
    di                                            ; $6724: $f3
    rst $38                                       ; $6725: $ff
    or b                                          ; $6726: $b0
    rst $38                                       ; $6727: $ff
    sbc b                                         ; $6728: $98
    ld [bc], a                                    ; $6729: $02
    nop                                           ; $672a: $00
    add b                                         ; $672b: $80
    rst $38                                       ; $672c: $ff
    nop                                           ; $672d: $00
    nop                                           ; $672e: $00

jr_0bc_672f:
    rst $20                                       ; $672f: $e7
    nop                                           ; $6730: $00
    add b                                         ; $6731: $80
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    ret nz                                        ; $6734: $c0

    ldh [rP1], a                                  ; $6735: $e0 $00
    pop hl                                        ; $6737: $e1
    ldh a, [rLCDC]                                ; $6738: $f0 $40
    ldh a, [$03]                                  ; $673a: $f0 $03
    ldh [$08], a                                  ; $673c: $e0 $08
    ret nz                                        ; $673e: $c0

    ld c, h                                       ; $673f: $4c
    inc de                                        ; $6740: $13
    ld c, $00                                     ; $6741: $0e $00
    ld bc, $8a00                                  ; $6743: $01 $00 $8a
    inc b                                         ; $6746: $04
    and $07                                       ; $6747: $e6 $07
    rst $38                                       ; $6749: $ff
    di                                            ; $674a: $f3
    and d                                         ; $674b: $a2
    adc d                                         ; $674c: $8a
    inc b                                         ; $674d: $04
    db $dd                                        ; $674e: $dd
    ld [bc], a                                    ; $674f: $02
    nop                                           ; $6750: $00
    reti                                          ; $6751: $d9


    rst $38                                       ; $6752: $ff
    ret c                                         ; $6753: $d8

    ld [bc], a                                    ; $6754: $02
    nop                                           ; $6755: $00
    sbc h                                         ; $6756: $9c
    jr nz, @+$01                                  ; $6757: $20 $ff

    sbc [hl]                                      ; $6759: $9e
    ld [bc], a                                    ; $675a: $02
    nop                                           ; $675b: $00
    cp [hl]                                       ; $675c: $be
    rst $38                                       ; $675d: $ff
    ld h, $ff                                     ; $675e: $26 $ff
    ld b, $80                                     ; $6760: $06 $80
    jr nc, @+$0c                                  ; $6762: $30 $0a

    rst $30                                       ; $6764: $f7
    ld [$08f7], sp                                ; $6765: $08 $f7 $08
    rst $38                                       ; $6768: $ff
    add b                                         ; $6769: $80
    ei                                            ; $676a: $fb
    ld b, $a4                                     ; $676b: $06 $a4
    ld a, [$fae5]                                 ; $676d: $fa $e5 $fa
    push hl                                       ; $6770: $e5
    jr nc, jr_0bc_677f                            ; $6771: $30 $0c

    xor $07                                       ; $6773: $ee $07

jr_0bc_6775:
    rst $18                                       ; $6775: $df
    add b                                         ; $6776: $80
    xor b                                         ; $6777: $a8
    inc b                                         ; $6778: $04
    rr a                                          ; $6779: $cb $1f

jr_0bc_677b:
    db $eb                                        ; $677b: $eb

jr_0bc_677c:
    ld e, a                                       ; $677c: $5f
    and a                                         ; $677d: $a7
    inc de                                        ; $677e: $13

jr_0bc_677f:
    xor l                                         ; $677f: $ad
    jr nc, jr_0bc_6785                            ; $6780: $30 $03

    db $fd                                        ; $6782: $fd
    or b                                          ; $6783: $b0
    ld c, b                                       ; $6784: $48

jr_0bc_6785:
    ld sp, $4e04                                  ; $6785: $31 $04 $4e
    rst $38                                       ; $6788: $ff
    ld h, [hl]                                    ; $6789: $66
    rst $38                                       ; $678a: $ff
    ld b, $63                                     ; $678b: $06 $63

jr_0bc_678d:
    rst $38                                       ; $678d: $ff
    ld [hl], e                                    ; $678e: $73
    rst $38                                       ; $678f: $ff
    cp c                                          ; $6790: $b9
    db $ec                                        ; $6791: $ec
    inc d                                         ; $6792: $14
    ld h, b                                       ; $6793: $60
    jr z, jr_0bc_678d                             ; $6794: $28 $f7

    add b                                         ; $6796: $80
    db $10                                        ; $6797: $10
    ld b, $fd                                     ; $6798: $06 $fd
    rst $38                                       ; $679a: $ff
    ld sp, hl                                     ; $679b: $f9
    ld h, b                                       ; $679c: $60
    sbc a                                         ; $679d: $9f
    ld h, b                                       ; $679e: $60
    sbc a                                         ; $679f: $9f
    nop                                           ; $67a0: $00
    ld h, c                                       ; $67a1: $61
    sbc [hl]                                      ; $67a2: $9e
    ld [hl], c                                    ; $67a3: $71
    adc [hl]                                      ; $67a4: $8e
    ld [hl], b                                    ; $67a5: $70
    adc a                                         ; $67a6: $8f
    ld [hl], b                                    ; $67a7: $70
    adc a                                         ; $67a8: $8f
    add hl, bc                                    ; $67a9: $09
    jr nc, jr_0bc_677b                            ; $67aa: $30 $cf

    jr c, jr_0bc_6775                             ; $67ac: $38 $c7

    sub b                                         ; $67ae: $90
    inc e                                         ; $67af: $1c
    rst $20                                       ; $67b0: $e7
    jr @+$70                                      ; $67b1: $18 $6e

    ld c, $e2                                     ; $67b3: $0e $e2
    sub b                                         ; $67b5: $90
    inc l                                         ; $67b6: $2c
    ld [bc], a                                    ; $67b7: $02
    db $10                                        ; $67b8: $10
    ld h, b                                       ; $67b9: $60
    jr nz, jr_0bc_677c                            ; $67ba: $20 $c0

jr_0bc_67bc:
    rst $38                                       ; $67bc: $ff
    ldh a, [$96]                                  ; $67bd: $f0 $96
    dec c                                         ; $67bf: $0d
    rst $38                                       ; $67c0: $ff
    ld [hl+], a                                   ; $67c1: $22
    nop                                           ; $67c2: $00
    rst $30                                       ; $67c3: $f7
    ld a, [hl+]                                   ; $67c4: $2a
    ld b, $f1                                     ; $67c5: $06 $f1
    add b                                         ; $67c7: $80
    ldh a, [$e0]                                  ; $67c8: $f0 $e0
    ld b, b                                       ; $67ca: $40
    rst $18                                       ; $67cb: $df
    nop                                           ; $67cc: $00
    nop                                           ; $67cd: $00
    add a                                         ; $67ce: $87
    nop                                           ; $67cf: $00
    nop                                           ; $67d0: $00
    db $10                                        ; $67d1: $10
    ld de, $053d                                  ; $67d2: $11 $3d $05
    ld e, e                                       ; $67d5: $5b
    rst $38                                       ; $67d6: $ff
    ld bc, $df38                                  ; $67d7: $01 $38 $df
    rlca                                          ; $67da: $07
    ld d, b                                       ; $67db: $50
    add hl, de                                    ; $67dc: $19
    nop                                           ; $67dd: $00
    ei                                            ; $67de: $fb
    dec e                                         ; $67df: $1d
    ld b, b                                       ; $67e0: $40
    dec bc                                        ; $67e1: $0b
    ld l, b                                       ; $67e2: $68
    ld l, d                                       ; $67e3: $6a
    rst $18                                       ; $67e4: $df
    daa                                           ; $67e5: $27

jr_0bc_67e6:
    jr c, @+$2b                                   ; $67e6: $38 $29

    jr c, @-$0f                                   ; $67e8: $38 $ef

    ld c, [hl]                                    ; $67ea: $4e
    jr jr_0bc_67e6                                ; $67eb: $18 $f9

    ld a, [hl-]                                   ; $67ed: $3a
    nop                                           ; $67ee: $00
    db $fd                                        ; $67ef: $fd
    ld [bc], a                                    ; $67f0: $02
    cp a                                          ; $67f1: $bf
    ld [$fdff], a                                 ; $67f2: $ea $ff $fd
    cp $e9                                        ; $67f5: $fe $e9
    ld e, a                                       ; $67f7: $5f
    nop                                           ; $67f8: $00
    ld a, a                                       ; $67f9: $7f

jr_0bc_67fa:
    nop                                           ; $67fa: $00
    rst $38                                       ; $67fb: $ff
    rst $28                                       ; $67fc: $ef
    db $fd                                        ; $67fd: $fd
    ld a, a                                       ; $67fe: $7f
    ld a, a                                       ; $67ff: $7f
    or l                                          ; $6800: $b5
    db $ed                                        ; $6801: $ed
    xor a                                         ; $6802: $af
    rrca                                          ; $6803: $0f
    rst $38                                       ; $6804: $ff
    db $db                                        ; $6805: $db
    rst $18                                       ; $6806: $df
    cp $6e                                        ; $6807: $fe $6e
    ld [hl], b                                    ; $6809: $70
    ld b, l                                       ; $680a: $45
    ld b, b                                       ; $680b: $40
    ld l, a                                       ; $680c: $6f
    jr nc, jr_0bc_6856                            ; $680d: $30 $47

    nop                                           ; $680f: $00
    ld b, $ef                                     ; $6810: $06 $ef
    xor e                                         ; $6812: $ab
    rst $00                                       ; $6813: $c7
    rst $38                                       ; $6814: $ff
    rst $28                                       ; $6815: $ef
    ld c, a                                       ; $6816: $4f
    jr nz, jr_0bc_67bc                            ; $6817: $20 $a3

    db $10                                        ; $6819: $10
    cp a                                          ; $681a: $bf
    cp [hl]                                       ; $681b: $be
    xor c                                         ; $681c: $a9
    nop                                           ; $681d: $00
    db $fd                                        ; $681e: $fd
    ld h, a                                       ; $681f: $67
    jr z, jr_0bc_683b                             ; $6820: $28 $19

    ld c, b                                       ; $6822: $48
    adc h                                         ; $6823: $8c
    ld d, b                                       ; $6824: $50
    ld b, e                                       ; $6825: $43
    ld c, b                                       ; $6826: $48
    cp l                                          ; $6827: $bd
    ld c, b                                       ; $6828: $48
    xor a                                         ; $6829: $af
    add d                                         ; $682a: $82
    rst $20                                       ; $682b: $e7
    nop                                           ; $682c: $00
    push af                                       ; $682d: $f5
    rst $38                                       ; $682e: $ff
    cp $ff                                        ; $682f: $fe $ff
    db $eb                                        ; $6831: $eb
    rst $28                                       ; $6832: $ef
    nop                                           ; $6833: $00
    rst $30                                       ; $6834: $f7

Jump_0bc_6835:
    add b                                         ; $6835: $80
    di                                            ; $6836: $f3
    nop                                           ; $6837: $00
    ld l, c                                       ; $6838: $69
    rst $38                                       ; $6839: $ff
    db $db                                        ; $683a: $db

jr_0bc_683b:
    rst $38                                       ; $683b: $ff
    push de                                       ; $683c: $d5
    ld c, e                                       ; $683d: $4b
    xor e                                         ; $683e: $ab
    db $10                                        ; $683f: $10
    push de                                       ; $6840: $d5
    ld d, [hl]                                    ; $6841: $56
    and e                                         ; $6842: $a3
    add sp, $18                                   ; $6843: $e8 $18
    cp a                                          ; $6845: $bf
    rst $38                                       ; $6846: $ff
    ld e, a                                       ; $6847: $5f
    rst $18                                       ; $6848: $df
    dec b                                         ; $6849: $05
    or a                                          ; $684a: $b7
    rst $38                                       ; $684b: $ff
    rst $18                                       ; $684c: $df
    ld a, a                                       ; $684d: $7f
    or l                                          ; $684e: $b5
    dec b                                         ; $684f: $05
    ld bc, $68f6                                  ; $6850: $01 $f6 $68
    ld [$fb20], sp                                ; $6853: $08 $20 $fb

jr_0bc_6856:
    db $dd                                        ; $6856: $dd
    nop                                           ; $6857: $00
    ld hl, $ff9b                                  ; $6858: $21 $9b $ff
    or a                                          ; $685b: $b7
    rst $38                                       ; $685c: $ff
    ld e, e                                       ; $685d: $5b
    cp e                                          ; $685e: $bb
    ld a, [hl]                                    ; $685f: $7e
    ld [$82fe], sp                                ; $6860: $08 $fe $82
    ld [$312e], sp                                ; $6863: $08 $2e $31
    ld [$f500], a                                 ; $6866: $ea $00 $f5
    ld c, c                                       ; $6869: $49
    nop                                           ; $686a: $00
    ret nc                                        ; $686b: $d0

    jr c, jr_0bc_67fa                             ; $686c: $38 $8c

    jr nc, @+$0a                                  ; $686e: $30 $08

    xor $ff                                       ; $6870: $ee $ff
    cp d                                          ; $6872: $ba
    ld [bc], a                                    ; $6873: $02
    add hl, de                                    ; $6874: $19
    ld c, d                                       ; $6875: $4a
    ld bc, $7f7f                                  ; $6876: $01 $7f $7f
    inc c                                         ; $6879: $0c
    rst $38                                       ; $687a: $ff
    rst $38                                       ; $687b: $ff
    cp e                                          ; $687c: $bb
    ei                                            ; $687d: $fb
    dec b                                         ; $687e: $05
    nop                                           ; $687f: $00
    ld h, c                                       ; $6880: $61
    ld bc, $ff77                                  ; $6881: $01 $77 $ff
    ld e, b                                       ; $6884: $58
    cp [hl]                                       ; $6885: $be
    ld a, [hl+]                                   ; $6886: $2a
    ld b, b                                       ; $6887: $40
    ld a, [$2004]                                 ; $6888: $fa $04 $20
    adc $18                                       ; $688b: $ce $18
    ld a, [hl+]                                   ; $688d: $2a
    push de                                       ; $688e: $d5
    sub c                                         ; $688f: $91
    ld [bc], a                                    ; $6890: $02
    xor e                                         ; $6891: $ab
    rst $20                                       ; $6892: $e7
    ld a, l                                       ; $6893: $7d
    cp d                                          ; $6894: $ba
    rst $28                                       ; $6895: $ef
    db $dd                                        ; $6896: $dd
    sbc b                                         ; $6897: $98
    db $10                                        ; $6898: $10
    rst $38                                       ; $6899: $ff
    adc d                                         ; $689a: $8a
    sbc b                                         ; $689b: $98
    nop                                           ; $689c: $00
    ld [hl], a                                    ; $689d: $77
    rst $18                                       ; $689e: $df
    xor e                                         ; $689f: $ab
    sub l                                         ; $68a0: $95
    ld bc, $4cad                                  ; $68a1: $01 $ad $4c
    ld hl, $82fb                                  ; $68a4: $21 $fb $82
    ld d, [hl]                                    ; $68a7: $56
    nop                                           ; $68a8: $00
    db $fc                                        ; $68a9: $fc
    cp a                                          ; $68aa: $bf
    or $fe                                        ; $68ab: $f6 $fe
    di                                            ; $68ad: $f3
    jp nz, $ff10                                  ; $68ae: $c2 $10 $ff

    ld [$cffe], sp                                ; $68b1: $08 $fe $cf
    rst $28                                       ; $68b4: $ef
    cp l                                          ; $68b5: $bd
    cp [hl]                                       ; $68b6: $be
    nop                                           ; $68b7: $00
    cp l                                          ; $68b8: $bd
    cp l                                          ; $68b9: $bd
    ld l, e                                       ; $68ba: $6b
    ld [bc], a                                    ; $68bb: $02
    rst $38                                       ; $68bc: $ff
    db $dd                                        ; $68bd: $dd
    rst $10                                       ; $68be: $d7
    dec hl                                        ; $68bf: $2b
    ei                                            ; $68c0: $fb
    xor [hl]                                      ; $68c1: $ae
    ld [hl], d                                    ; $68c2: $72
    ld bc, $224f                                  ; $68c3: $01 $4f $22
    rst $38                                       ; $68c6: $ff
    or a                                          ; $68c7: $b7
    db $d3                                        ; $68c8: $d3
    nop                                           ; $68c9: $00
    ld d, a                                       ; $68ca: $57
    ld a, a                                       ; $68cb: $7f
    rst $18                                       ; $68cc: $df
    ld a, a                                       ; $68cd: $7f
    ld de, $0dfb                                  ; $68ce: $11 $fb $0d
    rst $38                                       ; $68d1: $ff
    cp $fe                                        ; $68d2: $fe $fe
    db $fd                                        ; $68d4: $fd
    sbc [hl]                                      ; $68d5: $9e
    add hl, bc                                    ; $68d6: $09
    cp l                                          ; $68d7: $bd
    ld hl, $3af4                                  ; $68d8: $21 $f4 $3a
    ld bc, $3f1b                                  ; $68db: $01 $1b $3f
    rst $38                                       ; $68de: $ff
    rst $10                                       ; $68df: $d7
    rst $20                                       ; $68e0: $e7
    add hl, bc                                    ; $68e1: $09
    ld a, l                                       ; $68e2: $7d
    ld hl, $475f                                  ; $68e3: $21 $5f $47
    add hl, hl                                    ; $68e6: $29
    sbc $51                                       ; $68e7: $de $51
    ld b, [hl]                                    ; $68e9: $46
    db $fd                                        ; $68ea: $fd
    cp [hl]                                       ; $68eb: $be
    nop                                           ; $68ec: $00
    cp $fa                                        ; $68ed: $fe $fa
    push de                                       ; $68ef: $d5
    ei                                            ; $68f0: $fb
    ld [$0209], sp                                ; $68f1: $08 $09 $02
    rst $30                                       ; $68f4: $f7
    adc h                                         ; $68f5: $8c
    ld d, [hl]                                    ; $68f6: $56
    nop                                           ; $68f7: $00
    cp a                                          ; $68f8: $bf
    sbc a                                         ; $68f9: $9f
    rst $28                                       ; $68fa: $ef
    rst $30                                       ; $68fb: $f7
    ld [$201e], sp                                ; $68fc: $08 $1e $20
    cp $ff                                        ; $68ff: $fe $ff
    nop                                           ; $6901: $00
    push af                                       ; $6902: $f5
    cp $fd                                        ; $6903: $fe $fd
    db $fd                                        ; $6905: $fd
    ei                                            ; $6906: $fb
    cp $f4                                        ; $6907: $fe $f4
    db $f4                                        ; $6909: $f4
    nop                                           ; $690a: $00
    ei                                            ; $690b: $fb
    xor c                                         ; $690c: $a9
    jp nc, Jump_0bc_6553                          ; $690d: $d2 $53 $65

    push hl                                       ; $6910: $e5
    ld e, d                                       ; $6911: $5a
    inc de                                        ; $6912: $13
    ld bc, $afaf                                  ; $6913: $01 $af $af
    ld d, l                                       ; $6916: $55
    rra                                           ; $6917: $1f
    ld a, a                                       ; $6918: $7f
    ld l, a                                       ; $6919: $6f
    xor a                                         ; $691a: $af
    jp hl                                         ; $691b: $e9


    ld [$e4f0], sp                                ; $691c: $08 $f0 $e4
    ld bc, $622b                                  ; $691f: $01 $2b $62
    xor a                                         ; $6922: $af
    add hl, bc                                    ; $6923: $09
    ccf                                           ; $6924: $3f
    ld [de], a                                    ; $6925: $12
    sbc $fe                                       ; $6926: $de $fe
    db $fd                                        ; $6928: $fd
    push af                                       ; $6929: $f5
    ld bc, $ffed                                  ; $692a: $01 $ed $ff
    sub $f3                                       ; $692d: $d6 $f3
    db $fd                                        ; $692f: $fd
    rst $28                                       ; $6930: $ef
    rst $10                                       ; $6931: $d7
    call nz, Call_000_1e11                        ; $6932: $c4 $11 $1e
    cp a                                          ; $6935: $bf
    cp a                                          ; $6936: $bf
    rst $28                                       ; $6937: $ef
    ld a, [de]                                    ; $6938: $1a
    ld bc, $514c                                  ; $6939: $01 $4c $51
    ld a, a                                       ; $693c: $7f
    ld [hl-], a                                   ; $693d: $32
    ld [bc], a                                    ; $693e: $02

jr_0bc_693f:
    db $10                                        ; $693f: $10
    rst $18                                       ; $6940: $df
    ld [hl-], a                                   ; $6941: $32
    rst $08                                       ; $6942: $cf
    rst $38                                       ; $6943: $ff
    ld [bc], a                                    ; $6944: $02
    nop                                           ; $6945: $00
    ld b, $18                                     ; $6946: $06 $18
    rst $38                                       ; $6948: $ff
    rst $00                                       ; $6949: $c7
    add d                                         ; $694a: $82
    ld h, d                                       ; $694b: $62
    ld sp, hl                                     ; $694c: $f9
    xor h                                         ; $694d: $ac
    add h                                         ; $694e: $84
    ld d, c                                       ; $694f: $51
    db $eb                                        ; $6950: $eb
    inc h                                         ; $6951: $24
    ld [bc], a                                    ; $6952: $02
    cp $d6                                        ; $6953: $fe $d6
    ld bc, $1804                                  ; $6955: $01 $04 $18
    db $fc                                        ; $6958: $fc
    db $fd                                        ; $6959: $fd
    rla                                           ; $695a: $17
    db $fc                                        ; $695b: $fc
    rst $38                                       ; $695c: $ff
    db $fc                                        ; $695d: $fc
    ld a, b                                       ; $695e: $78
    ld bc, $727f                                  ; $695f: $01 $7f $72
    ld [bc], a                                    ; $6962: $02
    inc b                                         ; $6963: $04
    jr c, jr_0bc_69b4                             ; $6964: $38 $4e

    ld a, [hl+]                                   ; $6966: $2a
    inc d                                         ; $6967: $14
    rst $30                                       ; $6968: $f7
    rst $28                                       ; $6969: $ef
    rst $20                                       ; $696a: $e7
    ret nc                                        ; $696b: $d0

    ld [bc], a                                    ; $696c: $02
    ld sp, hl                                     ; $696d: $f9
    ld d, d                                       ; $696e: $52
    nop                                           ; $696f: $00
    rst $00                                       ; $6970: $c7
    cp a                                          ; $6971: $bf

jr_0bc_6972:
    ld [bc], a                                    ; $6972: $02
    add a                                         ; $6973: $87
    rst $38                                       ; $6974: $ff

jr_0bc_6975:
    add e                                         ; $6975: $83
    rst $38                                       ; $6976: $ff
    add e                                         ; $6977: $83
    ei                                            ; $6978: $fb
    inc b                                         ; $6979: $04
    nop                                           ; $697a: $00

jr_0bc_697b:
    rst $38                                       ; $697b: $ff
    nop                                           ; $697c: $00
    add e                                         ; $697d: $83
    cp a                                          ; $697e: $bf
    db $fd                                        ; $697f: $fd
    ei                                            ; $6980: $fb
    ld [$fdf1], a                                 ; $6981: $ea $f1 $fd
    ei                                            ; $6984: $fb
    ld l, d                                       ; $6985: $6a
    ld sp, hl                                     ; $6986: $f9
    or h                                          ; $6987: $b4
    ld [bc], a                                    ; $6988: $02
    inc b                                         ; $6989: $04
    jr jr_0bc_697b                                ; $698a: $18 $ef

    push bc                                       ; $698c: $c5
    ld [bc], a                                    ; $698d: $02
    rst $20                                       ; $698e: $e7
    ld [bc], a                                    ; $698f: $02
    jr nc, jr_0bc_6975                            ; $6990: $30 $e3

    jp nc, $0052                                  ; $6992: $d2 $52 $00

    ld d, [hl]                                    ; $6995: $56
    ld [$02f8], sp                                ; $6996: $08 $f8 $02
    jr nz, @-$0e                                  ; $6999: $20 $f0

jr_0bc_699b:
    rst $30                                       ; $699b: $f7
    ld e, [hl]                                    ; $699c: $5e
    jr z, @+$41                                   ; $699d: $28 $3f

    ret nz                                        ; $699f: $c0

    ld [bc], a                                    ; $69a0: $02
    jr nz, jr_0bc_69f3                            ; $69a1: $20 $50

    ld a, [bc]                                    ; $69a3: $0a
    ei                                            ; $69a4: $fb
    rst $30                                       ; $69a5: $f7
    push de                                       ; $69a6: $d5
    db $e3                                        ; $69a7: $e3
    rst $38                                       ; $69a8: $ff
    rst $30                                       ; $69a9: $f7
    ld h, a                                       ; $69aa: $67
    rst $30                                       ; $69ab: $f7
    jr c, jr_0bc_69be                             ; $69ac: $38 $10

    ld c, d                                       ; $69ae: $4a
    ld [$fbf8], sp                                ; $69af: $08 $f8 $fb
    jr nc, jr_0bc_69bc                            ; $69b2: $30 $08

jr_0bc_69b4:
    ld a, [hl-]                                   ; $69b4: $3a
    jr jr_0bc_6a17                                ; $69b5: $18 $60

    dec hl                                        ; $69b7: $2b
    adc b                                         ; $69b8: $88
    inc [hl]                                      ; $69b9: $34
    jr z, jr_0bc_693f                             ; $69ba: $28 $83

jr_0bc_69bc:
    rst $38                                       ; $69bc: $ff
    add c                                         ; $69bd: $81

jr_0bc_69be:
    ld [bc], a                                    ; $69be: $02
    jr c, jr_0bc_69be                             ; $69bf: $38 $fd

    add c                                         ; $69c1: $81
    rst $38                                       ; $69c2: $ff
    add hl, bc                                    ; $69c3: $09
    pop af                                        ; $69c4: $f1
    rst $38                                       ; $69c5: $ff
    pop af                                        ; $69c6: $f1
    db $fd                                        ; $69c7: $fd
    inc b                                         ; $69c8: $04
    nop                                           ; $69c9: $00
    rst $38                                       ; $69ca: $ff
    pop hl                                        ; $69cb: $e1
    ld [bc], a                                    ; $69cc: $02
    jr jr_0bc_6972                                ; $69cd: $18 $a3

jr_0bc_69cf:
    ld b, d                                       ; $69cf: $42
    inc hl                                        ; $69d0: $23
    rst $30                                       ; $69d1: $f7
    ld c, [hl]                                    ; $69d2: $4e
    nop                                           ; $69d3: $00
    rst $30                                       ; $69d4: $f7
    rst $38                                       ; $69d5: $ff
    di                                            ; $69d6: $f3
    ld [bc], a                                    ; $69d7: $02
    nop                                           ; $69d8: $00
    and b                                         ; $69d9: $a0
    dec hl                                        ; $69da: $2b
    ret nz                                        ; $69db: $c0

jr_0bc_69dc:
    ld [de], a                                    ; $69dc: $12
    ld [$0898], sp                                ; $69dd: $08 $98 $08
    jp $c7ff                                      ; $69e0: $c3 $ff $c7


    ei                                            ; $69e3: $fb
    jp $2adf                                      ; $69e4: $c3 $df $2a


    pop bc                                        ; $69e7: $c1
    rst $38                                       ; $69e8: $ff
    ld [bc], a                                    ; $69e9: $02
    jr z, jr_0bc_69dc                             ; $69ea: $28 $f0

    ld [bc], a                                    ; $69ec: $02
    jr nc, jr_0bc_69cf                            ; $69ed: $30 $e0

    ld [bc], a                                    ; $69ef: $02
    nop                                           ; $69f0: $00
    ldh a, [rNR23]                                ; $69f1: $f0 $18

jr_0bc_69f3:
    rst $28                                       ; $69f3: $ef
    ccf                                           ; $69f4: $3f
    cp a                                          ; $69f5: $bf
    sbc d                                         ; $69f6: $9a
    jr z, jr_0bc_699b                             ; $69f7: $28 $a2

    jr @-$17                                      ; $69f9: $18 $e7

    rst $38                                       ; $69fb: $ff
    rst $00                                       ; $69fc: $c7
    ld c, e                                       ; $69fd: $4b
    rst $18                                       ; $69fe: $df
    db $f4                                        ; $69ff: $f4
    nop                                           ; $6a00: $00
    rst $38                                       ; $6a01: $ff
    adc a                                         ; $6a02: $8f
    ld [bc], a                                    ; $6a03: $02
    nop                                           ; $6a04: $00
    rrca                                          ; $6a05: $0f
    ld [bc], a                                    ; $6a06: $02
    nop                                           ; $6a07: $00
    db $ec                                        ; $6a08: $ec
    add hl, de                                    ; $6a09: $19
    add b                                         ; $6a0a: $80
    and b                                         ; $6a0b: $a0
    dec de                                        ; $6a0c: $1b
    db $fc                                        ; $6a0d: $fc
    rst $38                                       ; $6a0e: $ff
    jp hl                                         ; $6a0f: $e9


    rst $38                                       ; $6a10: $ff
    sbc c                                         ; $6a11: $99
    ei                                            ; $6a12: $fb
    ld d, l                                       ; $6a13: $55
    nop                                           ; $6a14: $00
    rst $38                                       ; $6a15: $ff
    adc d                                         ; $6a16: $8a

jr_0bc_6a17:
    rst $30                                       ; $6a17: $f7
    ld bc, $09bf                                  ; $6a18: $01 $bf $09
    rst $38                                       ; $6a1b: $ff
    and [hl]                                      ; $6a1c: $a6
    jr @+$01                                      ; $6a1d: $18 $ff

    ld d, l                                       ; $6a1f: $55
    rst $30                                       ; $6a20: $f7
    sbc h                                         ; $6a21: $9c
    add hl, bc                                    ; $6a22: $09
    ld a, [$ea0a]                                 ; $6a23: $fa $0a $ea
    rst $38                                       ; $6a26: $ff
    cp e                                          ; $6a27: $bb
    ld b, $ff                                     ; $6a28: $06 $ff
    push hl                                       ; $6a2a: $e5
    ld a, [$f3da]                                 ; $6a2b: $fa $da $f3
    ld [hl], d                                    ; $6a2e: $72
    ld [bc], a                                    ; $6a2f: $02
    ld a, d                                       ; $6a30: $7a
    inc de                                        ; $6a31: $13
    xor l                                         ; $6a32: $ad
    add c                                         ; $6a33: $81
    call nz, $af02                                ; $6a34: $c4 $02 $af
    rst $18                                       ; $6a37: $df
    rst $10                                       ; $6a38: $d7
    rst $38                                       ; $6a39: $ff
    dec a                                         ; $6a3a: $3d
    ld a, a                                       ; $6a3b: $7f
    ld h, h                                       ; $6a3c: $64
    add hl, bc                                    ; $6a3d: $09
    and b                                         ; $6a3e: $a0
    ld [hl], h                                    ; $6a3f: $74
    ld hl, $7cfe                                  ; $6a40: $21 $fe $7c
    add hl, bc                                    ; $6a43: $09
    ccf                                           ; $6a44: $3f
    rst $38                                       ; $6a45: $ff
    rra                                           ; $6a46: $1f
    rst $38                                       ; $6a47: $ff
    rra                                           ; $6a48: $1f
    ld d, [hl]                                    ; $6a49: $56
    rst $28                                       ; $6a4a: $ef
    ld e, d                                       ; $6a4b: $5a
    ld [$0207], sp                                ; $6a4c: $08 $07 $02
    nop                                           ; $6a4f: $00
    inc bc                                        ; $6a50: $03
    ld c, a                                       ; $6a51: $4f
    ld b, h                                       ; $6a52: $44
    db $ec                                        ; $6a53: $ec
    dec de                                        ; $6a54: $1b
    add b                                         ; $6a55: $80
    add b                                         ; $6a56: $80
    ld [bc], a                                    ; $6a57: $02
    jr nz, @-$3e                                  ; $6a58: $20 $c0

    cp a                                          ; $6a5a: $bf
    and b                                         ; $6a5b: $a0
    rra                                           ; $6a5c: $1f
    ret nz                                        ; $6a5d: $c0

    cp a                                          ; $6a5e: $bf
    add b                                         ; $6a5f: $80
    adc c                                         ; $6a60: $89
    ld c, $31                                     ; $6a61: $0e $31
    ccf                                           ; $6a63: $3f
    rst $38                                       ; $6a64: $ff
    ld a, [hl]                                    ; $6a65: $7e
    ld [hl], $0a                                  ; $6a66: $36 $0a
    ld a, a                                       ; $6a68: $7f
    pop hl                                        ; $6a69: $e1
    jp z, Jump_0bc_4010                           ; $6a6a: $ca $10 $40

    add c                                         ; $6a6d: $81
    jr nz, jr_0bc_6a70                            ; $6a6e: $20 $00

jr_0bc_6a70:
    and c                                         ; $6a70: $a1
    ld e, $c2                                     ; $6a71: $1e $c2
    cp h                                          ; $6a73: $bc
    add c                                         ; $6a74: $81
    cp $82                                        ; $6a75: $fe $82
    db $10                                        ; $6a77: $10
    ld bc, $f1f7                                  ; $6a78: $01 $f7 $f1
    rst $38                                       ; $6a7b: $ff
    ld hl, sp-$02                                 ; $6a7c: $f8 $fe
    ld [hl], d                                    ; $6a7e: $72
    add hl, bc                                    ; $6a7f: $09
    cp b                                          ; $6a80: $b8
    jr nc, @+$7d                                  ; $6a81: $30 $7b

    ld hl, sp-$40                                 ; $6a83: $f8 $c0
    ld [$0206], sp                                ; $6a85: $08 $06 $02
    add a                                         ; $6a88: $87
    rst $38                                       ; $6a89: $ff
    add a                                         ; $6a8a: $87
    rst $30                                       ; $6a8b: $f7
    add c                                         ; $6a8c: $81
    ld h, b                                       ; $6a8d: $60
    ld [$ff07], sp                                ; $6a8e: $08 $07 $ff
    ret nz                                        ; $6a91: $c0

    rst $38                                       ; $6a92: $ff
    ret nz                                        ; $6a93: $c0

    rst $18                                       ; $6a94: $df
    inc b                                         ; $6a95: $04
    nop                                           ; $6a96: $00
    rst $30                                       ; $6a97: $f7
    ld [bc], a                                    ; $6a98: $02
    jr nc, jr_0bc_6af9                            ; $6a99: $30 $5e

    add hl, sp                                    ; $6a9b: $39
    ld a, [$0619]                                 ; $6a9c: $fa $19 $06
    add hl, bc                                    ; $6a9f: $09
    ldh [rNR41], a                                ; $6aa0: $e0 $20
    ld b, b                                       ; $6aa2: $40
    xor b                                         ; $6aa3: $a8
    add hl, bc                                    ; $6aa4: $09
    and d                                         ; $6aa5: $a2
    nop                                           ; $6aa6: $00
    add e                                         ; $6aa7: $83
    and [hl]                                      ; $6aa8: $a6
    nop                                           ; $6aa9: $00
    ccf                                           ; $6aaa: $3f
    rst $18                                       ; $6aab: $df
    ld d, a                                       ; $6aac: $57
    adc a                                         ; $6aad: $8f
    ccf                                           ; $6aae: $3f
    add d                                         ; $6aaf: $82
    inc b                                         ; $6ab0: $04
    ld a, [hl+]                                   ; $6ab1: $2a
    ld [bc], a                                    ; $6ab2: $02
    adc d                                         ; $6ab3: $8a
    call nc, $f031                                ; $6ab4: $d4 $31 $f0
    ei                                            ; $6ab7: $fb
    rrca                                          ; $6ab8: $0f
    ld e, $18                                     ; $6ab9: $1e $18
    rst $18                                       ; $6abb: $df
    inc h                                         ; $6abc: $24
    jr @+$21                                      ; $6abd: $18 $1f

    nop                                           ; $6abf: $00
    rst $38                                       ; $6ac0: $ff
    or b                                          ; $6ac1: $b0

jr_0bc_6ac2:
    rst $38                                       ; $6ac2: $ff
    db $ec                                        ; $6ac3: $ec
    rst $38                                       ; $6ac4: $ff
    ld e, d                                       ; $6ac5: $5a
    rst $28                                       ; $6ac6: $ef
    and h                                         ; $6ac7: $a4
    ld [$50fd], sp                                ; $6ac8: $08 $fd $50
    rst $18                                       ; $6acb: $df
    ld [$0511], a                                 ; $6acc: $ea $11 $05
    push af                                       ; $6acf: $f5
    db $fd                                        ; $6ad0: $fd
    sbc e                                         ; $6ad1: $9b
    ret nz                                        ; $6ad2: $c0

    ld a, d                                       ; $6ad3: $7a
    inc b                                         ; $6ad4: $04
    nop                                           ; $6ad5: $00
    ld c, h                                       ; $6ad6: $4c
    ret                                           ; $6ad7: $c9


    push af                                       ; $6ad8: $f5
    or $ff                                        ; $6ad9: $f6 $ff
    cp [hl]                                       ; $6adb: $be
    ei                                            ; $6adc: $fb
    jr nc, jr_0bc_6ac2                            ; $6add: $30 $e3

    or $52                                        ; $6adf: $f6 $52
    dec bc                                        ; $6ae1: $0b
    adc $0c                                       ; $6ae2: $ce $0c
    ld e, e                                       ; $6ae4: $5b
    cp a                                          ; $6ae5: $bf
    db $dd                                        ; $6ae6: $dd
    rst $28                                       ; $6ae7: $ef
    rlca                                          ; $6ae8: $07
    cp a                                          ; $6ae9: $bf
    cp a                                          ; $6aea: $bf
    ld e, l                                       ; $6aeb: $5d
    rst $38                                       ; $6aec: $ff
    ld d, a                                       ; $6aed: $57
    db $fd                                        ; $6aee: $fd
    inc b                                         ; $6aef: $04
    xor $0b                                       ; $6af0: $ee $0b
    sub b                                         ; $6af2: $90
    ld a, [bc]                                    ; $6af3: $0a
    add b                                         ; $6af4: $80
    scf                                           ; $6af5: $37
    ld c, l                                       ; $6af6: $4d
    inc bc                                        ; $6af7: $03
    rst $38                                       ; $6af8: $ff

jr_0bc_6af9:
    ld bc, $00ff                                  ; $6af9: $01 $ff $00
    rst $38                                       ; $6afc: $ff
    ld bc, $fe03                                  ; $6afd: $01 $03 $fe
    ld [bc], a                                    ; $6b00: $02
    db $fc                                        ; $6b01: $fc
    ld bc, $00fe                                  ; $6b02: $01 $fe $00
    ld a, [bc]                                    ; $6b05: $0a
    nop                                           ; $6b06: $00
    ret nc                                        ; $6b07: $d0

    inc [hl]                                      ; $6b08: $34
    add sp, -$03                                  ; $6b09: $e8 $fd
    ld [$051c], sp                                ; $6b0b: $08 $1c $05
    jr nz, jr_0bc_6b39                            ; $6b0e: $20 $29

    add b                                         ; $6b10: $80
    ld h, $00                                     ; $6b11: $26 $00
    add b                                         ; $6b13: $80
    ld a, a                                       ; $6b14: $7f
    nop                                           ; $6b15: $00
    rst $10                                       ; $6b16: $d7
    ld e, h                                       ; $6b17: $5c
    ld b, d                                       ; $6b18: $42
    or [hl]                                       ; $6b19: $b6
    ld [$401e], sp                                ; $6b1a: $08 $1e $40
    ld bc, $4201                                  ; $6b1d: $01 $01 $42
    db $10                                        ; $6b20: $10
    ld [bc], a                                    ; $6b21: $02
    db $10                                        ; $6b22: $10
    jr nz, jr_0bc_6b25                            ; $6b23: $20 $00

jr_0bc_6b25:
    push bc                                       ; $6b25: $c5
    adc d                                         ; $6b26: $8a
    ld a, [hl+]                                   ; $6b27: $2a
    sub d                                         ; $6b28: $92
    ld a, [bc]                                    ; $6b29: $0a
    add sp, -$01                                  ; $6b2a: $e8 $ff
    ld hl, sp+$16                                 ; $6b2c: $f8 $16
    ld hl, $dc07                                  ; $6b2e: $21 $07 $dc
    ld de, $06df                                  ; $6b31: $11 $df $06
    ld [$411c], sp                                ; $6b34: $08 $1c $41
    rst $18                                       ; $6b37: $df
    ld a, h                                       ; $6b38: $7c

jr_0bc_6b39:
    add hl, bc                                    ; $6b39: $09
    xor b                                         ; $6b3a: $a8
    ld [bc], a                                    ; $6b3b: $02
    ld [de], a                                    ; $6b3c: $12
    ld [hl+], a                                   ; $6b3d: $22
    add sp, $18                                   ; $6b3e: $e8 $18
    sub b                                         ; $6b40: $90
    ld hl, $8adf                                  ; $6b41: $21 $df $8a
    ld bc, $0872                                  ; $6b44: $01 $72 $08
    nop                                           ; $6b47: $00
    inc e                                         ; $6b48: $1c
    ld hl, $3806                                  ; $6b49: $21 $06 $38
    ld c, b                                       ; $6b4c: $48
    ld a, [de]                                    ; $6b4d: $1a
    ld b, d                                       ; $6b4e: $42
    add hl, hl                                    ; $6b4f: $29
    ld b, b                                       ; $6b50: $40
    db $10                                        ; $6b51: $10
    ld sp, hl                                     ; $6b52: $f9
    db $ec                                        ; $6b53: $ec
    ld a, [de]                                    ; $6b54: $1a
    ld e, b                                       ; $6b55: $58
    ld [hl+], a                                   ; $6b56: $22
    inc l                                         ; $6b57: $2c
    inc d                                         ; $6b58: $14
    rst $00                                       ; $6b59: $c7
    ld b, l                                       ; $6b5a: $45
    or [hl]                                       ; $6b5b: $b6
    ld [$3f40], sp                                ; $6b5c: $08 $40 $3f
    cp d                                          ; $6b5f: $ba
    ld [$e4f6], sp                                ; $6b60: $08 $f6 $e4
    ld bc, $2970                                  ; $6b63: $01 $70 $29
    ld c, [hl]                                    ; $6b66: $4e
    ld bc, $0a6c                                  ; $6b67: $01 $6c $0a
    rrca                                          ; $6b6a: $0f
    or h                                          ; $6b6b: $b4
    ld bc, $28b8                                  ; $6b6c: $01 $b8 $28
    nop                                           ; $6b6f: $00

jr_0bc_6b70:
    db $10                                        ; $6b70: $10
    rst $38                                       ; $6b71: $ff
    ld [bc], a                                    ; $6b72: $02
    db $fd                                        ; $6b73: $fd
    nop                                           ; $6b74: $00
    add hl, bc                                    ; $6b75: $09
    ld e, $ff                                     ; $6b76: $1e $ff
    ld a, $df                                     ; $6b78: $3e $df
    dec b                                         ; $6b7a: $05
    inc e                                         ; $6b7b: $1c
    rst $38                                       ; $6b7c: $ff
    inc e                                         ; $6b7d: $1c
    rst $38                                       ; $6b7e: $ff
    inc c                                         ; $6b7f: $0c
    ld [bc], a                                    ; $6b80: $02
    db $10                                        ; $6b81: $10
    ld [$28da], sp                                ; $6b82: $08 $da $28
    dec l                                         ; $6b85: $2d
    rst $38                                       ; $6b86: $ff
    nop                                           ; $6b87: $00
    ld e, $11                                     ; $6b88: $1e $11
    nop                                           ; $6b8a: $00
    jp z, $c432                                   ; $6b8b: $ca $32 $c4

    add hl, de                                    ; $6b8e: $19
    add b                                         ; $6b8f: $80
    ret c                                         ; $6b90: $d8

    jr nz, jr_0bc_6b70                            ; $6b91: $20 $dd

    ld e, h                                       ; $6b93: $5c
    ld a, [de]                                    ; $6b94: $1a
    ld c, h                                       ; $6b95: $4c
    ld bc, $50fb                                  ; $6b96: $01 $fb $50
    ld a, [hl-]                                   ; $6b99: $3a
    ld e, d                                       ; $6b9a: $5a
    ld a, [de]                                    ; $6b9b: $1a
    ld l, d                                       ; $6b9c: $6a
    ld [$020e], sp                                ; $6b9d: $08 $0e $02
    ld [$fe0f], sp                                ; $6ba0: $08 $0f $fe
    ld c, $ff                                     ; $6ba3: $0e $ff
    ld b, $02                                     ; $6ba5: $06 $02
    nop                                           ; $6ba7: $00
    ld d, b                                       ; $6ba8: $50

jr_0bc_6ba9:
    jr nc, @+$36                                  ; $6ba9: $30 $34

    ld hl, $19fc                                  ; $6bab: $21 $fc $19
    ld de, $df1e                                  ; $6bae: $11 $1e $df
    ld e, $74                                     ; $6bb1: $1e $74
    nop                                           ; $6bb3: $00
    inc e                                         ; $6bb4: $1c
    db $fd                                        ; $6bb5: $fd
    inc c                                         ; $6bb6: $0c
    ld a, [$ee00]                                 ; $6bb7: $fa $00 $ee

jr_0bc_6bba:
    adc h                                         ; $6bba: $8c
    add hl, sp                                    ; $6bbb: $39
    sub b                                         ; $6bbc: $90
    add hl, bc                                    ; $6bbd: $09
    ld l, $0c                                     ; $6bbe: $2e $0c
    cp a                                          ; $6bc0: $bf
    inc [hl]                                      ; $6bc1: $34
    inc d                                         ; $6bc2: $14
    db $f4                                        ; $6bc3: $f4
    ld [hl], $12                                  ; $6bc4: $36 $12
    inc b                                         ; $6bc6: $04
    cp $77                                        ; $6bc7: $fe $77
    ei                                            ; $6bc9: $fb
    and [hl]                                      ; $6bca: $a6
    dec c                                         ; $6bcb: $0d
    rst $38                                       ; $6bcc: $ff
    ld c, [hl]                                    ; $6bcd: $4e
    ld a, [c]                                     ; $6bce: $f2
    dec bc                                        ; $6bcf: $0b
    rra                                           ; $6bd0: $1f
    add b                                         ; $6bd1: $80
    ld h, d                                       ; $6bd2: $62
    ld [hl], d                                    ; $6bd3: $72
    dec bc                                        ; $6bd4: $0b
    db $f4                                        ; $6bd5: $f4
    ld a, [bc]                                    ; $6bd6: $0a
    push af                                       ; $6bd7: $f5
    ldh [rOBP1], a                                ; $6bd8: $e0 $49
    ret nc                                        ; $6bda: $d0

    jr z, jr_0bc_6ba9                             ; $6bdb: $28 $cc

    add hl, bc                                    ; $6bdd: $09
    ldh a, [$09]                                  ; $6bde: $f0 $09
    ld [$0802], sp                                ; $6be0: $08 $02 $08
    rst $30                                       ; $6be3: $f7
    sub [hl]                                      ; $6be4: $96
    ld e, b                                       ; $6be5: $58
    rst $38                                       ; $6be6: $ff
    ld a, [hl+]                                   ; $6be7: $2a
    ld c, b                                       ; $6be8: $48
    jr nz, @+$05                                  ; $6be9: $20 $03

    ld b, b                                       ; $6beb: $40
    ld hl, $1922                                  ; $6bec: $21 $22 $19
    xor $09                                       ; $6bef: $ee $09
    ldh a, [$31]                                  ; $6bf1: $f0 $31
    jr nz, jr_0bc_6c0d                            ; $6bf3: $20 $18

    jr nz, jr_0bc_6c29                            ; $6bf5: $20 $32

    and a                                         ; $6bf7: $a7
    nop                                           ; $6bf8: $00
    ld a, [bc]                                    ; $6bf9: $0a
    inc b                                         ; $6bfa: $04
    ld c, [hl]                                    ; $6bfb: $4e
    ld [bc], a                                    ; $6bfc: $02
    inc b                                         ; $6bfd: $04
    ei                                            ; $6bfe: $fb
    and $38                                       ; $6bff: $e6 $38
    ld h, b                                       ; $6c01: $60
    ld [$121e], sp                                ; $6c02: $08 $1e $12
    ld sp, hl                                     ; $6c05: $f9
    ld h, h                                       ; $6c06: $64
    jr c, @+$4c                                   ; $6c07: $38 $4a

    ld hl, $184a                                  ; $6c09: $21 $4a $18
    ld sp, hl                                     ; $6c0c: $f9

jr_0bc_6c0d:
    dec e                                         ; $6c0d: $1d
    jp nz, $fb04                                  ; $6c0e: $c2 $04 $fb

    ldh a, [$64]                                  ; $6c11: $f0 $64
    inc b                                         ; $6c13: $04
    ld e, b                                       ; $6c14: $58
    add c                                         ; $6c15: $81
    ld b, a                                       ; $6c16: $47
    rlca                                          ; $6c17: $07
    cp a                                          ; $6c18: $bf
    ld a, e                                       ; $6c19: $7b
    ld [bc], a                                    ; $6c1a: $02
    or b                                          ; $6c1b: $b0
    dec a                                         ; $6c1c: $3d
    add e                                         ; $6c1d: $83
    ei                                            ; $6c1e: $fb
    add c                                         ; $6c1f: $81
    call nc, $020e                                ; $6c20: $d4 $0e $02
    adc $28                                       ; $6c23: $ce $28
    ldh a, [$c2]                                  ; $6c25: $f0 $c2
    daa                                           ; $6c27: $27
    ld l, a                                       ; $6c28: $6f

jr_0bc_6c29:
    call nc, $2b03                                ; $6c29: $d4 $03 $2b
    rst $00                                       ; $6c2c: $c7
    inc de                                        ; $6c2d: $13

jr_0bc_6c2e:
    rla                                           ; $6c2e: $17
    rst $28                                       ; $6c2f: $ef
    ld bc, $2350                                  ; $6c30: $01 $50 $23
    ldh a, [$f7]                                  ; $6c33: $f0 $f7
    ld l, b                                       ; $6c35: $68
    inc l                                         ; $6c36: $2c
    ld a, b                                       ; $6c37: $78
    jr nc, jr_0bc_6bba                            ; $6c38: $30 $80

    call nc, Call_0bc_4450                        ; $6c3a: $d4 $50 $44
    cp e                                          ; $6c3d: $bb
    nop                                           ; $6c3e: $00
    rst $38                                       ; $6c3f: $ff
    sub l                                         ; $6c40: $95
    ld l, d                                       ; $6c41: $6a
    ld a, [hl+]                                   ; $6c42: $2a
    rra                                           ; $6c43: $1f
    push de                                       ; $6c44: $d5
    ld d, h                                       ; $6c45: $54
    and e                                         ; $6c46: $a3
    inc b                                         ; $6c47: $04
    adc c                                         ; $6c48: $89
    db $e4                                        ; $6c49: $e4
    add hl, hl                                    ; $6c4a: $29
    cp b                                          ; $6c4b: $b8
    ld c, b                                       ; $6c4c: $48
    ld b, d                                       ; $6c4d: $42
    jr z, jr_0bc_6c2e                             ; $6c4e: $28 $de

    ld a, [bc]                                    ; $6c50: $0a
    sbc d                                         ; $6c51: $9a
    jp c, $0309                                   ; $6c52: $da $09 $03

    ei                                            ; $6c55: $fb
    ld b, $10                                     ; $6c56: $06 $10

jr_0bc_6c58:
    xor [hl]                                      ; $6c58: $ae
    jr jr_0bc_6c58                                ; $6c59: $18 $fd

    sub $04                                       ; $6c5b: $d6 $04
    rst $30                                       ; $6c5d: $f7
    db $db                                        ; $6c5e: $db
    ld a, [hl]                                    ; $6c5f: $7e
    ld a, [bc]                                    ; $6c60: $0a
    ld a, [hl-]                                   ; $6c61: $3a
    inc bc                                        ; $6c62: $03
    db $fd                                        ; $6c63: $fd
    jr jr_0bc_6c7e                                ; $6c64: $18 $18

    db $e4                                        ; $6c66: $e4
    ld [hl+], a                                   ; $6c67: $22
    rst $28                                       ; $6c68: $ef
    ldh a, [$0c]                                  ; $6c69: $f0 $0c
    adc [hl]                                      ; $6c6b: $8e
    dec c                                         ; $6c6c: $0d
    dec c                                         ; $6c6d: $0d
    ld a, [$f5fd]                                 ; $6c6e: $fa $fd $f5
    ld hl, sp-$6f                                 ; $6c71: $f8 $91
    ld b, $2c                                     ; $6c73: $06 $2c
    ld d, c                                       ; $6c75: $51
    nop                                           ; $6c76: $00

jr_0bc_6c77:
    ld [c], a                                     ; $6c77: $e2
    rlca                                          ; $6c78: $07
    add c                                         ; $6c79: $81
    db $10                                        ; $6c7a: $10

jr_0bc_6c7b:
    dec c                                         ; $6c7b: $0d
    or b                                          ; $6c7c: $b0
    ld a, a                                       ; $6c7d: $7f

jr_0bc_6c7e:
    jr jr_0bc_6c77                                ; $6c7e: $18 $f7

    inc d                                         ; $6c80: $14
    db $e3                                        ; $6c81: $e3
    halt                                          ; $6c82: $76
    add hl, bc                                    ; $6c83: $09
    ret c                                         ; $6c84: $d8

    sbc h                                         ; $6c85: $9c
    add hl, bc                                    ; $6c86: $09
    ld [de], a                                    ; $6c87: $12
    ld c, d                                       ; $6c88: $4a
    ret nz                                        ; $6c89: $c0

    jr nz, @+$64                                  ; $6c8a: $20 $62

    add b                                         ; $6c8c: $80
    rrca                                          ; $6c8d: $0f
    inc d                                         ; $6c8e: $14
    db $eb                                        ; $6c8f: $eb
    add d                                         ; $6c90: $82
    inc d                                         ; $6c91: $14
    ld a, l                                       ; $6c92: $7d
    db $10                                        ; $6c93: $10
    rst $28                                       ; $6c94: $ef
    ld h, d                                       ; $6c95: $62
    dec de                                        ; $6c96: $1b
    ldh [$ac], a                                  ; $6c97: $e0 $ac
    inc bc                                        ; $6c99: $03
    jr nz, jr_0bc_6c7b                            ; $6c9a: $20 $df

    rst $00                                       ; $6c9c: $c7
    jr nz, jr_0bc_6ce7                            ; $6c9d: $20 $48

    ld d, b                                       ; $6c9f: $50
    ld e, d                                       ; $6ca0: $5a
    cp $ff                                        ; $6ca1: $fe $ff
    ld [bc], a                                    ; $6ca3: $02
    adc h                                         ; $6ca4: $8c
    dec bc                                        ; $6ca5: $0b
    add b                                         ; $6ca6: $80
    ld b, c                                       ; $6ca7: $41
    ld d, h                                       ; $6ca8: $54
    dec c                                         ; $6ca9: $0d
    add d                                         ; $6caa: $82
    ld h, b                                       ; $6cab: $60
    inc c                                         ; $6cac: $0c
    ld a, a                                       ; $6cad: $7f
    cp a                                          ; $6cae: $bf
    xor a                                         ; $6caf: $af
    rra                                           ; $6cb0: $1f

jr_0bc_6cb1:
    ld a, a                                       ; $6cb1: $7f
    ld a, h                                       ; $6cb2: $7c
    dec b                                         ; $6cb3: $05
    rst $38                                       ; $6cb4: $ff
    ld a, [bc]                                    ; $6cb5: $0a
    rst $18                                       ; $6cb6: $df
    ret nc                                        ; $6cb7: $d0

    adc a                                         ; $6cb8: $8f
    ldh [$7a], a                                  ; $6cb9: $e0 $7a
    inc de                                        ; $6cbb: $13
    add a                                         ; $6cbc: $87
    ld h, d                                       ; $6cbd: $62
    ld d, $ff                                     ; $6cbe: $16 $ff
    ld [de], a                                    ; $6cc0: $12
    cp $02                                        ; $6cc1: $fe $02
    cp h                                          ; $6cc3: $bc
    ld a, [$f01b]                                 ; $6cc4: $fa $1b $f0
    rst $28                                       ; $6cc7: $ef
    and d                                         ; $6cc8: $a2
    dec c                                         ; $6cc9: $0d
    rst $38                                       ; $6cca: $ff
    dec bc                                        ; $6ccb: $0b
    rst $30                                       ; $6ccc: $f7
    db $f4                                        ; $6ccd: $f4
    ld h, e                                       ; $6cce: $63
    ld hl, sp+$4e                                 ; $6ccf: $f8 $4e
    ld sp, $f4f0                                  ; $6cd1: $31 $f0 $f4
    rlca                                          ; $6cd4: $07
    ld a, h                                       ; $6cd5: $7c
    jr z, jr_0bc_6cdc                             ; $6cd6: $28 $04

jr_0bc_6cd8:
    ld b, $7f                                     ; $6cd8: $06 $7f
    ld b, $fe                                     ; $6cda: $06 $fe

jr_0bc_6cdc:
    ld b, [hl]                                    ; $6cdc: $46
    ldh [rTIMA], a                                ; $6cdd: $e0 $05
    ld [bc], a                                    ; $6cdf: $02
    cp $06                                        ; $6ce0: $fe $06
    ld [bc], a                                    ; $6ce2: $02
    rst $38                                       ; $6ce3: $ff
    ld [de], a                                    ; $6ce4: $12
    rst $28                                       ; $6ce5: $ef
    ld [bc], a                                    ; $6ce6: $02

jr_0bc_6ce7:
    ld l, d                                       ; $6ce7: $6a
    nop                                           ; $6ce8: $00
    inc b                                         ; $6ce9: $04
    ld [$c6c0], sp                                ; $6cea: $08 $c0 $c6
    jr nz, jr_0bc_6d1f                            ; $6ced: $20 $30

    or d                                          ; $6cef: $b2
    jr nz, jr_0bc_6cb1                            ; $6cf0: $20 $bf

    and d                                         ; $6cf2: $a2
    dec e                                         ; $6cf3: $1d
    db $fc                                        ; $6cf4: $fc
    ld [hl+], a                                   ; $6cf5: $22
    call nz, $fc13                                ; $6cf6: $c4 $13 $fc
    and b                                         ; $6cf9: $a0
    adc [hl]                                      ; $6cfa: $8e
    jr nc, jr_0bc_6d1d                            ; $6cfb: $30 $20

    ld [bc], a                                    ; $6cfd: $02
    db $10                                        ; $6cfe: $10
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    sub b                                         ; $6d01: $90
    rst $28                                       ; $6d02: $ef
    add b                                         ; $6d03: $80
    ld [hl+], a                                   ; $6d04: $22
    rst $38                                       ; $6d05: $ff
    ld b, b                                       ; $6d06: $40
    ld l, [hl]                                    ; $6d07: $6e
    dec b                                         ; $6d08: $05
    ld b, h                                       ; $6d09: $44
    cp a                                          ; $6d0a: $bf
    inc b                                         ; $6d0b: $04
    ld l, $02                                     ; $6d0c: $2e $02
    cp $18                                        ; $6d0e: $fe $18
    rst $38                                       ; $6d10: $ff
    nop                                           ; $6d11: $00
    ld a, l                                       ; $6d12: $7d
    ld a, [hl]                                    ; $6d13: $7e
    inc hl                                        ; $6d14: $23
    ret c                                         ; $6d15: $d8

    db $10                                        ; $6d16: $10
    ccf                                           ; $6d17: $3f
    rst $38                                       ; $6d18: $ff
    ld [hl], b                                    ; $6d19: $70
    ld bc, $60ef                                  ; $6d1a: $01 $ef $60

jr_0bc_6d1d:
    rst $38                                       ; $6d1d: $ff
    ld b, b                                       ; $6d1e: $40

jr_0bc_6d1f:
    rst $38                                       ; $6d1f: $ff
    ld b, b                                       ; $6d20: $40
    db $fd                                        ; $6d21: $fd
    inc b                                         ; $6d22: $04
    nop                                           ; $6d23: $00
    pop af                                        ; $6d24: $f1
    ld [$c200], sp                                ; $6d25: $08 $00 $c2
    inc bc                                        ; $6d28: $03
    sbc [hl]                                      ; $6d29: $9e
    ld [hl+], a                                   ; $6d2a: $22
    ld l, $08                                     ; $6d2b: $2e $08
    inc b                                         ; $6d2d: $04

jr_0bc_6d2e:
    rst $38                                       ; $6d2e: $ff
    add e                                         ; $6d2f: $83
    xor d                                         ; $6d30: $aa

jr_0bc_6d31:
    inc b                                         ; $6d31: $04
    ld c, a                                       ; $6d32: $4f
    inc bc                                        ; $6d33: $03
    add d                                         ; $6d34: $82
    nop                                           ; $6d35: $00
    ld b, d                                       ; $6d36: $42
    cp a                                          ; $6d37: $bf
    add d                                         ; $6d38: $82
    jr @-$5e                                      ; $6d39: $18 $a0

    ld a, [bc]                                    ; $6d3b: $0a
    ld a, [hl]                                    ; $6d3c: $7e
    inc h                                         ; $6d3d: $24
    inc h                                         ; $6d3e: $24
    ld de, $7803                                  ; $6d3f: $11 $03 $78
    rst $18                                       ; $6d42: $df
    ld d, h                                       ; $6d43: $54
    adc e                                         ; $6d44: $8b
    ld h, b                                       ; $6d45: $60
    rst $18                                       ; $6d46: $df
    ld b, b                                       ; $6d47: $40
    nop                                           ; $6d48: $00
    inc b                                         ; $6d49: $04
    ld [$4881], sp                                ; $6d4a: $08 $81 $48
    nop                                           ; $6d4d: $00
    dec a                                         ; $6d4e: $3d
    cp $32                                        ; $6d4f: $fe $32
    db $ec                                        ; $6d51: $ec
    ld sp, $7cfe                                  ; $6d52: $31 $fe $7c
    jr jr_0bc_6cd8                                ; $6d55: $18 $81

    add d                                         ; $6d57: $82
    ld [$cf3f], sp                                ; $6d58: $08 $3f $cf

jr_0bc_6d5b:
    xor b                                         ; $6d5b: $a8
    ld b, a                                       ; $6d5c: $47
    jr nc, jr_0bc_6d2e                            ; $6d5d: $30 $cf

    jp c, $d039                                   ; $6d5f: $da $39 $d0

    ld [hl+], a                                   ; $6d62: $22
    inc b                                         ; $6d63: $04
    ld e, h                                       ; $6d64: $5c
    ld hl, $c207                                  ; $6d65: $21 $07 $c2
    dec d                                         ; $6d68: $15
    rst $38                                       ; $6d69: $ff
    rst $30                                       ; $6d6a: $f7
    inc [hl]                                      ; $6d6b: $34
    db $e3                                        ; $6d6c: $e3
    ld b, $38                                     ; $6d6d: $06 $38
    rst $30                                       ; $6d6f: $f7

jr_0bc_6d70:
    jr nc, jr_0bc_6d31                            ; $6d70: $30 $bf

    jr nc, jr_0bc_6d74                            ; $6d72: $30 $00

jr_0bc_6d74:
    ld sp, $238c                                  ; $6d74: $31 $8c $23
    cp $b3                                        ; $6d77: $fe $b3
    ld c, $0e                                     ; $6d79: $0e $0e
    ld a, a                                       ; $6d7b: $7f
    sbc d                                         ; $6d7c: $9a
    rrca                                          ; $6d7d: $0f
    inc b                                         ; $6d7e: $04
    db $10                                        ; $6d7f: $10
    jp Jump_000_0abf                              ; $6d80: $c3 $bf $0a


    jr jr_0bc_6d5b                                ; $6d83: $18 $d6

    ld c, $38                                     ; $6d85: $0e $38
    pop hl                                        ; $6d87: $e1
    xor $f7                                       ; $6d88: $ee $f7
    ccf                                           ; $6d8a: $3f
    ldh a, [$3e]                                  ; $6d8b: $f0 $3e
    ld a, [$f716]                                 ; $6d8d: $fa $16 $f7
    ld b, [hl]                                    ; $6d90: $46
    rst $38                                       ; $6d91: $ff
    dec d                                         ; $6d92: $15
    ld b, [hl]                                    ; $6d93: $46
    rst $38                                       ; $6d94: $ff
    ld h, [hl]                                    ; $6d95: $66
    ld [bc], a                                    ; $6d96: $02
    db $10                                        ; $6d97: $10
    halt                                          ; $6d98: $76
    ld d, d                                       ; $6d99: $52
    ld b, $60                                     ; $6d9a: $06 $60
    ld [hl], $21                                  ; $6d9c: $36 $21
    ld sp, hl                                     ; $6d9e: $f9
    ld b, d                                       ; $6d9f: $42
    add hl, de                                    ; $6da0: $19
    ld [hl], h                                    ; $6da1: $74
    inc b                                         ; $6da2: $04
    ld a, [hl]                                    ; $6da3: $7e
    jr nc, jr_0bc_6e16                            ; $6da4: $30 $70

    ld b, e                                       ; $6da6: $43
    ld b, h                                       ; $6da7: $44
    ld b, h                                       ; $6da8: $44
    and b                                         ; $6da9: $a0
    rra                                           ; $6daa: $1f
    ld [hl], $19                                  ; $6dab: $36 $19
    halt                                          ; $6dad: $76
    ld hl, $30c2                                  ; $6dae: $21 $c2 $30
    ld b, $19                                     ; $6db1: $06 $19
    ld a, [hl-]                                   ; $6db3: $3a
    ld bc, $10fd                                  ; $6db4: $01 $fd $10
    add hl, de                                    ; $6db7: $19
    ld h, $09                                     ; $6db8: $26 $09
    ld h, b                                       ; $6dba: $60
    rra                                           ; $6dbb: $1f
    rst $18                                       ; $6dbc: $df
    ld d, b                                       ; $6dbd: $50
    adc a                                         ; $6dbe: $8f
    db $f4                                        ; $6dbf: $f4
    db $10                                        ; $6dc0: $10
    jr c, @+$03                                   ; $6dc1: $38 $01

    jr nz, jr_0bc_6df5                            ; $6dc3: $20 $30

    inc h                                         ; $6dc5: $24
    jr nz, jr_0bc_6d70                            ; $6dc6: $20 $a8

    add hl, hl                                    ; $6dc8: $29
    ccf                                           ; $6dc9: $3f
    ld [bc], a                                    ; $6dca: $02
    rst $38                                       ; $6dcb: $ff
    ld [hl], $09                                  ; $6dcc: $36 $09
    ld e, $12                                     ; $6dce: $1e $12
    xor [hl]                                      ; $6dd0: $ae
    dec c                                         ; $6dd1: $0d
    db $ec                                        ; $6dd2: $ec
    inc d                                         ; $6dd3: $14
    ldh a, [$0d]                                  ; $6dd4: $f0 $0d
    ld h, [hl]                                    ; $6dd6: $66
    add hl, de                                    ; $6dd7: $19
    sub l                                         ; $6dd8: $95
    ld b, $28                                     ; $6dd9: $06 $28
    ld b, h                                       ; $6ddb: $44
    ei                                            ; $6ddc: $fb
    ld a, [hl+]                                   ; $6ddd: $2a
    ld hl, $32ef                                  ; $6dde: $21 $ef $32
    ld hl, $dafe                                  ; $6de1: $21 $fe $da
    ld [de], a                                    ; $6de4: $12
    rst $20                                       ; $6de5: $e7
    call c, Call_0bc_4806                         ; $6de6: $dc $06 $48
    ld a, [hl+]                                   ; $6de9: $2a
    ret nc                                        ; $6dea: $d0

    dec l                                         ; $6deb: $2d
    rlca                                          ; $6dec: $07
    ld a, a                                       ; $6ded: $7f
    sub $15                                       ; $6dee: $d6 $15
    ld a, [hl+]                                   ; $6df0: $2a
    ld b, d                                       ; $6df1: $42
    add h                                         ; $6df2: $84
    dec de                                        ; $6df3: $1b
    rst $00                                       ; $6df4: $c7

jr_0bc_6df5:
    ld [$0616], a                                 ; $6df5: $ea $16 $06

jr_0bc_6df8:
    jr z, jr_0bc_6df8                             ; $6df8: $28 $fe

    ld a, [bc]                                    ; $6dfa: $0a
    db $f4                                        ; $6dfb: $f4
    and a                                         ; $6dfc: $a7
    ld l, h                                       ; $6dfd: $6c
    ld b, b                                       ; $6dfe: $40
    add hl, hl                                    ; $6dff: $29
    ld a, h                                       ; $6e00: $7c
    ld [bc], a                                    ; $6e01: $02
    cp b                                          ; $6e02: $b8
    add b                                         ; $6e03: $80
    ld [hl+], a                                   ; $6e04: $22
    add d                                         ; $6e05: $82
    ld d, [hl]                                    ; $6e06: $56
    rlca                                          ; $6e07: $07
    add [hl]                                      ; $6e08: $86
    rrca                                          ; $6e09: $0f
    jp z, $ff23                                   ; $6e0a: $ca $23 $ff

    ldh a, [$7f]                                  ; $6e0d: $f0 $7f
    sbc b                                         ; $6e0f: $98
    ld b, h                                       ; $6e10: $44
    ld c, c                                       ; $6e11: $49
    nop                                           ; $6e12: $00
    cp a                                          ; $6e13: $bf
    ldh [rP1], a                                  ; $6e14: $e0 $00

jr_0bc_6e16:
    ld [bc], a                                    ; $6e16: $02
    db $10                                        ; $6e17: $10
    ldh [$7f], a                                  ; $6e18: $e0 $7f
    ld [hl], b                                    ; $6e1a: $70
    nop                                           ; $6e1b: $00
    rst $38                                       ; $6e1c: $ff
    ld [hl], b                                    ; $6e1d: $70
    rst $38                                       ; $6e1e: $ff
    ld [hl+], a                                   ; $6e1f: $22
    rst $18                                       ; $6e20: $df
    ld d, d                                       ; $6e21: $52
    adc a                                         ; $6e22: $8f
    ld [hl+], a                                   ; $6e23: $22
    ld c, a                                       ; $6e24: $4f
    rst $18                                       ; $6e25: $df
    ld a, [hl]                                    ; $6e26: $7e
    ld a, [bc]                                    ; $6e27: $0a
    add d                                         ; $6e28: $82
    ld a, a                                       ; $6e29: $7f
    adc d                                         ; $6e2a: $8a
    ld a, [bc]                                    ; $6e2b: $0a
    ld a, [$8439]                                 ; $6e2c: $fa $39 $84
    ld e, $98                                     ; $6e2f: $1e $98
    add hl, bc                                    ; $6e31: $09
    cp h                                          ; $6e32: $bc
    call nc, $fd27                                ; $6e33: $d4 $27 $fd
    ld d, [hl]                                    ; $6e36: $56
    jr nz, jr_0bc_6e75                            ; $6e37: $20 $3c

    inc bc                                        ; $6e39: $03
    ldh [$3e], a                                  ; $6e3a: $e0 $3e
    ld b, [hl]                                    ; $6e3c: $46
    ld a, [de]                                    ; $6e3d: $1a
    ld b, $fd                                     ; $6e3e: $06 $fd
    rra                                           ; $6e40: $1f
    add l                                         ; $6e41: $85
    ld a, b                                       ; $6e42: $78
    ld b, $42                                     ; $6e43: $06 $42
    ld de, $16ba                                  ; $6e45: $11 $ba $16
    ld d, d                                       ; $6e48: $52
    ld b, e                                       ; $6e49: $43
    db $10                                        ; $6e4a: $10
    ld sp, $8950                                  ; $6e4b: $31 $50 $89
    rst $38                                       ; $6e4e: $ff
    sbc $04                                       ; $6e4f: $de $04
    ld d, b                                       ; $6e51: $50
    add hl, sp                                    ; $6e52: $39
    ld [bc], a                                    ; $6e53: $02
    inc bc                                        ; $6e54: $03
    add h                                         ; $6e55: $84
    ld [bc], a                                    ; $6e56: $02
    ld a, d                                       ; $6e57: $7a
    ld a, [de]                                    ; $6e58: $1a
    jr z, jr_0bc_6e69                             ; $6e59: $28 $0e

    ld l, h                                       ; $6e5b: $6c
    add hl, de                                    ; $6e5c: $19
    or [hl]                                       ; $6e5d: $b6
    ld a, [bc]                                    ; $6e5e: $0a
    db $fc                                        ; $6e5f: $fc
    db $e4                                        ; $6e60: $e4
    ld c, l                                       ; $6e61: $4d
    ld a, d                                       ; $6e62: $7a
    ld a, [hl-]                                   ; $6e63: $3a
    ld d, [hl]                                    ; $6e64: $56
    add hl, de                                    ; $6e65: $19
    add sp, $07                                   ; $6e66: $e8 $07
    ld a, [c]                                     ; $6e68: $f2

jr_0bc_6e69:
    ld d, $d2                                     ; $6e69: $16 $d2
    dec l                                         ; $6e6b: $2d
    rla                                           ; $6e6c: $17
    db $e3                                        ; $6e6d: $e3
    push af                                       ; $6e6e: $f5
    add [hl]                                      ; $6e6f: $86
    ld c, $26                                     ; $6e70: $0e $26
    rla                                           ; $6e72: $17
    inc l                                         ; $6e73: $2c
    rla                                           ; $6e74: $17

jr_0bc_6e75:
    ld a, $5a                                     ; $6e75: $3e $5a
    ldh a, [$8c]                                  ; $6e77: $f0 $8c
    dec e                                         ; $6e79: $1d
    rst $18                                       ; $6e7a: $df
    ld d, [hl]                                    ; $6e7b: $56
    add hl, sp                                    ; $6e7c: $39
    ld hl, sp-$80                                 ; $6e7d: $f8 $80
    ld [de], a                                    ; $6e7f: $12
    ld a, h                                       ; $6e80: $7c
    ld [hl+], a                                   ; $6e81: $22
    ld [hl], $39                                  ; $6e82: $36 $39
    inc d                                         ; $6e84: $14
    rla                                           ; $6e85: $17
    inc h                                         ; $6e86: $24
    inc d                                         ; $6e87: $14
    ld [hl], b                                    ; $6e88: $70
    rst $30                                       ; $6e89: $f7
    ld [hl], b                                    ; $6e8a: $70
    cpl                                           ; $6e8b: $2f

jr_0bc_6e8c:
    rst $38                                       ; $6e8c: $ff
    ld a, b                                       ; $6e8d: $78
    ld [bc], a                                    ; $6e8e: $02
    db $10                                        ; $6e8f: $10
    ld a, h                                       ; $6e90: $7c
    ld [bc], a                                    ; $6e91: $02
    db $10                                        ; $6e92: $10
    xor b                                         ; $6e93: $a8
    dec bc                                        ; $6e94: $0b
    inc l                                         ; $6e95: $2c
    dec hl                                        ; $6e96: $2b
    nop                                           ; $6e97: $00
    ld b, d                                       ; $6e98: $42
    cp $b4                                        ; $6e99: $fe $b4
    inc sp                                        ; $6e9b: $33
    xor b                                         ; $6e9c: $a8
    ld h, $2c                                     ; $6e9d: $26 $2c
    ld de, $2f74                                  ; $6e9f: $11 $74 $2f
    ld h, h                                       ; $6ea2: $64
    ld c, h                                       ; $6ea3: $4c
    add [hl]                                      ; $6ea4: $86
    inc de                                        ; $6ea5: $13
    adc h                                         ; $6ea6: $8c
    inc de                                        ; $6ea7: $13
    ld b, c                                       ; $6ea8: $41
    db $fd                                        ; $6ea9: $fd
    jp c, Jump_0bc_6010                           ; $6eaa: $da $10 $60

    ld a, [hl-]                                   ; $6ead: $3a
    jp c, $c203                                   ; $6eae: $da $03 $c2

    ld [de], a                                    ; $6eb1: $12
    db $10                                        ; $6eb2: $10

jr_0bc_6eb3:
    inc c                                         ; $6eb3: $0c
    db $10                                        ; $6eb4: $10
    add hl, sp                                    ; $6eb5: $39
    ld [bc], a                                    ; $6eb6: $02
    ld e, $46                                     ; $6eb7: $1e $46
    ldh a, [$b6]                                  ; $6eb9: $f0 $b6
    inc d                                         ; $6ebb: $14
    inc c                                         ; $6ebc: $0c
    ld b, $20                                     ; $6ebd: $06 $20
    ld l, $1a                                     ; $6ebf: $2e $1a
    add hl, bc                                    ; $6ec1: $09
    jr nc, jr_0bc_6eb3                            ; $6ec2: $30 $ef

    jr z, jr_0bc_6e8c                             ; $6ec4: $28 $c6

    ld a, a                                       ; $6ec6: $7f
    jr nc, jr_0bc_6f27                            ; $6ec7: $30 $5e

    ld a, [hl+]                                   ; $6ec9: $2a
    ld h, b                                       ; $6eca: $60
    ld [bc], a                                    ; $6ecb: $02
    ld d, b                                       ; $6ecc: $50
    ld [hl-], a                                   ; $6ecd: $32
    ld d, d                                       ; $6ece: $52
    ld [hl+], a                                   ; $6ecf: $22
    ld b, b                                       ; $6ed0: $40
    ld h, e                                       ; $6ed1: $63
    nop                                           ; $6ed2: $00
    rrca                                          ; $6ed3: $0f
    cp $16                                        ; $6ed4: $fe $16
    ret nz                                        ; $6ed6: $c0

    ld [$840f], sp                                ; $6ed7: $08 $0f $84
    rrca                                          ; $6eda: $0f
    and b                                         ; $6edb: $a0
    rst $18                                       ; $6edc: $df
    ret nc                                        ; $6edd: $d0

    adc [hl]                                      ; $6ede: $8e
    rst $38                                       ; $6edf: $ff
    rst $18                                       ; $6ee0: $df
    and b                                         ; $6ee1: $a0
    ldh [rVBK], a                                 ; $6ee2: $e0 $4f
    nop                                           ; $6ee4: $00
    xor $47                                       ; $6ee5: $ee $47
    rst $38                                       ; $6ee7: $ff
    rst $38                                       ; $6ee8: $ff
    ld hl, sp-$09                                 ; $6ee9: $f8 $f7
    db $f4                                        ; $6eeb: $f4
    rla                                           ; $6eec: $17
    db $e3                                        ; $6eed: $e3
    rst $38                                       ; $6eee: $ff
    rst $30                                       ; $6eef: $f7
    dec e                                         ; $6ef0: $1d
    ccf                                           ; $6ef1: $3f
    ld a, [hl]                                    ; $6ef2: $7e
    add [hl]                                      ; $6ef3: $86
    ld [bc], a                                    ; $6ef4: $02
    dec hl                                        ; $6ef5: $2b
    ld c, a                                       ; $6ef6: $4f
    jr nz, jr_0bc_6efe                            ; $6ef7: $20 $05

    ld d, [hl]                                    ; $6ef9: $56
    or $a2                                        ; $6efa: $f6 $a2
    dec e                                         ; $6efc: $1d
    db $fc                                        ; $6efd: $fc

jr_0bc_6efe:
    ld c, b                                       ; $6efe: $48
    rlca                                          ; $6eff: $07
    db $fc                                        ; $6f00: $fc
    xor d                                         ; $6f01: $aa
    ld b, $c0                                     ; $6f02: $06 $c0
    ld e, h                                       ; $6f04: $5c
    add d                                         ; $6f05: $82
    ld e, $fd                                     ; $6f06: $1e $fd
    dec b                                         ; $6f08: $05
    cp b                                          ; $6f09: $b8
    add sp, $0e                                   ; $6f0a: $e8 $0e
    inc d                                         ; $6f0c: $14
    ld [hl], $2c                                  ; $6f0d: $36 $2c
    ld b, e                                       ; $6f0f: $43
    ld a, [de]                                    ; $6f10: $1a
    add hl, de                                    ; $6f11: $19
    ld d, b                                       ; $6f12: $50
    ld a, b                                       ; $6f13: $78
    adc a                                         ; $6f14: $8f
    add d                                         ; $6f15: $82
    ld c, l                                       ; $6f16: $4d
    adc [hl]                                      ; $6f17: $8e
    ld c, l                                       ; $6f18: $4d
    call c, $4e27                                 ; $6f19: $dc $27 $4e
    daa                                           ; $6f1c: $27
    dec b                                         ; $6f1d: $05
    ld a, [$7008]                                 ; $6f1e: $fa $08 $70
    di                                            ; $6f21: $f3
    ld [c], a                                     ; $6f22: $e2
    inc de                                        ; $6f23: $13
    call z, $b827                                 ; $6f24: $cc $27 $b8

jr_0bc_6f27:
    dec d                                         ; $6f27: $15
    ld a, a                                       ; $6f28: $7f
    db $10                                        ; $6f29: $10
    rst $28                                       ; $6f2a: $ef
    jr z, jr_0bc_6f85                             ; $6f2b: $28 $58

    rst $00                                       ; $6f2d: $c7
    ld [hl-], a                                   ; $6f2e: $32
    ld c, l                                       ; $6f2f: $4d
    jr nz, @+$04                                  ; $6f30: $20 $02

    ld h, h                                       ; $6f32: $64
    jr nz, jr_0bc_6f36                            ; $6f33: $20 $01

    rst $00                                       ; $6f35: $c7

jr_0bc_6f36:
    rra                                           ; $6f36: $1f
    rst $28                                       ; $6f37: $ef
    add c                                         ; $6f38: $81
    or d                                          ; $6f39: $b2
    dec c                                         ; $6f3a: $0d
    ccf                                           ; $6f3b: $3f
    rst $18                                       ; $6f3c: $df
    ld d, a                                       ; $6f3d: $57
    adc a                                         ; $6f3e: $8f
    ccf                                           ; $6f3f: $3f
    rst $18                                       ; $6f40: $df
    ld a, [hl]                                    ; $6f41: $7e
    dec bc                                        ; $6f42: $0b
    rst $10                                       ; $6f43: $d7
    db $eb                                        ; $6f44: $eb
    ld c, a                                       ; $6f45: $4f
    call z, $be07                                 ; $6f46: $cc $07 $be
    ei                                            ; $6f49: $fb
    ld c, a                                       ; $6f4a: $4f
    ld a, [$073e]                                 ; $6f4b: $fa $3e $07
    ld [bc], a                                    ; $6f4e: $02
    ld [$4110], sp                                ; $6f4f: $08 $10 $41
    add b                                         ; $6f52: $80
    cp h                                          ; $6f53: $bc
    ld c, a                                       ; $6f54: $4f
    cp a                                          ; $6f55: $bf
    ld [$21f5], sp                                ; $6f56: $08 $f5 $21
    sbc $04                                       ; $6f59: $de $04
    ei                                            ; $6f5b: $fb
    dec h                                         ; $6f5c: $25
    ld bc, $d4f6                                  ; $6f5d: $01 $f6 $d4
    jr z, jr_0bc_6fa2                             ; $6f60: $28 $40

    cp a                                          ; $6f62: $bf
    ld c, h                                       ; $6f63: $4c
    ld b, $bf                                     ; $6f64: $06 $bf
    or h                                          ; $6f66: $b4
    ld [hl], b                                    ; $6f67: $70
    cp [hl]                                       ; $6f68: $be
    ld a, [$fd2f]                                 ; $6f69: $fa $2f $fd
    sbc [hl]                                      ; $6f6c: $9e
    ld [bc], a                                    ; $6f6d: $02
    ld [hl], d                                    ; $6f6e: $72
    ld de, $2f81                                  ; $6f6f: $11 $81 $2f
    ld a, d                                       ; $6f72: $7a
    rrca                                          ; $6f73: $0f
    ld a, h                                       ; $6f74: $7c
    rrca                                          ; $6f75: $0f
    ldh a, [$db]                                  ; $6f76: $f0 $db
    jp c, Jump_0bc_561e                           ; $6f78: $da $1e $56

    ld d, a                                       ; $6f7b: $57
    nop                                           ; $6f7c: $00
    ld l, $00                                     ; $6f7d: $2e $00
    ld [$022f], a                                 ; $6f7f: $ea $2f $02
    ld [$8007], sp                                ; $6f82: $08 $07 $80

jr_0bc_6f85:
    jr nc, @+$3b                                  ; $6f85: $30 $39

    cp $01                                        ; $6f87: $fe $01
    ld [hl], h                                    ; $6f89: $74
    ld b, $90                                     ; $6f8a: $06 $90
    jr c, jr_0bc_6fe4                             ; $6f8c: $38 $56

    dec b                                         ; $6f8e: $05
    rst $38                                       ; $6f8f: $ff
    db $fd                                        ; $6f90: $fd
    and [hl]                                      ; $6f91: $a6
    ld hl, $7a9b                                  ; $6f92: $21 $9b $7a
    cpl                                           ; $6f95: $2f
    ld b, d                                       ; $6f96: $42
    dec a                                         ; $6f97: $3d
    ld c, [hl]                                    ; $6f98: $4e
    dec c                                         ; $6f99: $0d
    ret nz                                        ; $6f9a: $c0

    ld c, [hl]                                    ; $6f9b: $4e
    ld hl, sp-$40                                 ; $6f9c: $f8 $c0
    ld l, b                                       ; $6f9e: $68
    ld hl, $9c13                                  ; $6f9f: $21 $13 $9c

jr_0bc_6fa2:
    add $47                                       ; $6fa2: $c6 $47
    rst $28                                       ; $6fa4: $ef
    db $fc                                        ; $6fa5: $fc
    adc [hl]                                      ; $6fa6: $8e
    dec c                                         ; $6fa7: $0d
    adc [hl]                                      ; $6fa8: $8e
    rra                                           ; $6fa9: $1f
    adc b                                         ; $6faa: $88
    inc h                                         ; $6fab: $24
    rst $38                                       ; $6fac: $ff
    rst $30                                       ; $6fad: $f7
    ld a, l                                       ; $6fae: $7d
    push de                                       ; $6faf: $d5
    xor $01                                       ; $6fb0: $ee $01
    ld hl, $d249                                  ; $6fb2: $21 $49 $d2
    ld e, a                                       ; $6fb5: $5f
    and b                                         ; $6fb6: $a0
    jr c, @-$06                                   ; $6fb7: $38 $f8

    rra                                           ; $6fb9: $1f
    add e                                         ; $6fba: $83
    ld [hl], b                                    ; $6fbb: $70
    ld h, a                                       ; $6fbc: $67
    ld e, a                                       ; $6fbd: $5f
    ld a, b                                       ; $6fbe: $78
    jr nc, jr_0bc_7028                            ; $6fbf: $30 $67

    inc a                                         ; $6fc1: $3c
    sub b                                         ; $6fc2: $90
    ld h, a                                       ; $6fc3: $67
    ld a, $0f                                     ; $6fc4: $3e $0f
    ld b, b                                       ; $6fc6: $40
    ld c, a                                       ; $6fc7: $4f
    db $10                                        ; $6fc8: $10
    add hl, bc                                    ; $6fc9: $09
    ld [hl], b                                    ; $6fca: $70
    ld e, [hl]                                    ; $6fcb: $5e
    db $e3                                        ; $6fcc: $e3
    ld h, b                                       ; $6fcd: $60
    ld c, $9e                                     ; $6fce: $0e $9e
    dec a                                         ; $6fd0: $3d
    ldh [$03], a                                  ; $6fd1: $e0 $03
    rst $28                                       ; $6fd3: $ef
    xor b                                         ; $6fd4: $a8
    ld b, a                                       ; $6fd5: $47
    xor [hl]                                      ; $6fd6: $ae
    rra                                           ; $6fd7: $1f
    ld h, b                                       ; $6fd8: $60
    ld e, $fa                                     ; $6fd9: $1e $fa
    ldh a, [rKEY1]                                ; $6fdb: $f0 $4d
    add b                                         ; $6fdd: $80
    dec [hl]                                      ; $6fde: $35
    jr nc, jr_0bc_6fe5                            ; $6fdf: $30 $04

    ld c, h                                       ; $6fe1: $4c
    inc l                                         ; $6fe2: $2c
    ld h, b                                       ; $6fe3: $60

jr_0bc_6fe4:
    dec hl                                        ; $6fe4: $2b

jr_0bc_6fe5:
    ld b, c                                       ; $6fe5: $41
    ld h, b                                       ; $6fe6: $60
    ld h, e                                       ; $6fe7: $63
    db $fc                                        ; $6fe8: $fc
    ldh [$60], a                                  ; $6fe9: $e0 $60
    inc hl                                        ; $6feb: $23
    ld b, b                                       ; $6fec: $40
    dec sp                                        ; $6fed: $3b
    db $10                                        ; $6fee: $10
    rrca                                          ; $6fef: $0f
    jr nz, @+$01                                  ; $6ff0: $20 $ff

    ld [hl], b                                    ; $6ff2: $70
    dec bc                                        ; $6ff3: $0b
    sub $06                                       ; $6ff4: $d6 $06
    ld b, h                                       ; $6ff6: $44
    rst $38                                       ; $6ff7: $ff
    ld bc, $af60                                  ; $6ff8: $01 $60 $af
    rst $38                                       ; $6ffb: $ff
    xor [hl]                                      ; $6ffc: $ae
    inc b                                         ; $6ffd: $04
    nop                                           ; $6ffe: $00
    cp a                                          ; $6fff: $bf

jr_0bc_7000:
    rst $38                                       ; $7000: $ff
    db $10                                        ; $7001: $10
    ei                                            ; $7002: $fb
    rst $38                                       ; $7003: $ff
    cp e                                          ; $7004: $bb
    dec de                                        ; $7005: $1b
    jr nz, jr_0bc_7000                            ; $7006: $20 $f8

    rst $38                                       ; $7008: $ff
    di                                            ; $7009: $f3
    db $fc                                        ; $700a: $fc
    nop                                           ; $700b: $00
    db $f4                                        ; $700c: $f4
    ei                                            ; $700d: $fb
    ld sp, hl                                     ; $700e: $f9
    cp $f0                                        ; $700f: $fe $f0
    rst $38                                       ; $7011: $ff
    ld a, [c]                                     ; $7012: $f2
    db $fd                                        ; $7013: $fd
    nop                                           ; $7014: $00
    ld a, [$fffd]                                 ; $7015: $fa $fd $ff
    rst $38                                       ; $7018: $ff
    ccf                                           ; $7019: $3f
    rst $38                                       ; $701a: $ff
    rst $18                                       ; $701b: $df
    ccf                                           ; $701c: $3f
    nop                                           ; $701d: $00
    ld h, a                                       ; $701e: $67
    sbc a                                         ; $701f: $9f
    ld d, e                                       ; $7020: $53
    adc a                                         ; $7021: $8f
    daa                                           ; $7022: $27
    rst $08                                       ; $7023: $cf
    dec hl                                        ; $7024: $2b
    rst $00                                       ; $7025: $c7
    jr nz, @+$13                                  ; $7026: $20 $11

jr_0bc_7028:
    rst $20                                       ; $7028: $e7
    ld b, b                                       ; $7029: $40
    jr z, @-$03                                   ; $702a: $28 $fb

    db $fd                                        ; $702c: $fd
    db $e3                                        ; $702d: $e3
    db $fc                                        ; $702e: $fc
    call $f012                                    ; $702f: $cd $12 $f0
    add e                                         ; $7032: $83
    db $fc                                        ; $7033: $fc
    ld d, b                                       ; $7034: $50
    ld [$fffa], sp                                ; $7035: $08 $fa $ff
    ld l, $08                                     ; $7038: $2e $08
    ld a, [$fd08]                                 ; $703a: $fa $08 $fd
    ldh a, [$7f]                                  ; $703d: $f0 $7f
    jr c, @+$61                                   ; $703f: $38 $5f

    nop                                           ; $7041: $00
    adc a                                         ; $7042: $8f
    rst $38                                       ; $7043: $ff
    inc bc                                        ; $7044: $03
    nop                                           ; $7045: $00
    rst $38                                       ; $7046: $ff
    inc sp                                        ; $7047: $33
    rst $08                                       ; $7048: $cf
    cp c                                          ; $7049: $b9
    ld b, a                                       ; $704a: $47
    inc l                                         ; $704b: $2c
    jp Jump_000_02e6                              ; $704c: $c3 $e6 $02


    ld bc, $c334                                  ; $704f: $01 $34 $c3
    rst $38                                       ; $7052: $ff
    rst $38                                       ; $7053: $ff
    ld sp, hl                                     ; $7054: $f9
    ld d, b                                       ; $7055: $50
    jr nc, jr_0bc_70ca                            ; $7056: $30 $72

    jr nz, @-$01                                  ; $7058: $20 $fd

    ld a, d                                       ; $705a: $7a
    ld d, b                                       ; $705b: $50
    jr nc, jr_0bc_70d1                            ; $705c: $30 $73

    adc a                                         ; $705e: $8f
    inc sp                                        ; $705f: $33
    rst $08                                       ; $7060: $cf
    dec sp                                        ; $7061: $3b
    nop                                           ; $7062: $00
    rst $00                                       ; $7063: $c7
    ld e, c                                       ; $7064: $59

jr_0bc_7065:
    and a                                         ; $7065: $a7
    rst $38                                       ; $7066: $ff
    rst $38                                       ; $7067: $ff
    db $fc                                        ; $7068: $fc
    rst $38                                       ; $7069: $ff
    pop af                                        ; $706a: $f1
    nop                                           ; $706b: $00
    cp $cf                                        ; $706c: $fe $cf
    ldh a, [$d9]                                  ; $706e: $f0 $d9
    and $90                                       ; $7070: $e6 $90
    rst $28                                       ; $7072: $ef
    sub b                                         ; $7073: $90
    jr nz, jr_0bc_7065                            ; $7074: $20 $ef

    jp TimerOverflowInterrupt                     ; $7076: $c3 $50 $00


    ccf                                           ; $7079: $3f
    rst $38                                       ; $707a: $ff
    ld b, c                                       ; $707b: $41
    cp a                                          ; $707c: $bf
    ret c                                         ; $707d: $d8

    nop                                           ; $707e: $00
    daa                                           ; $707f: $27
    cp [hl]                                       ; $7080: $be
    ld b, c                                       ; $7081: $41
    ld a, [hl-]                                   ; $7082: $3a
    push bc                                       ; $7083: $c5
    inc e                                         ; $7084: $1c
    db $e3                                        ; $7085: $e3
    add hl, de                                    ; $7086: $19
    sub c                                         ; $7087: $91
    ld [hl], b                                    ; $7088: $70

jr_0bc_7089:
    jr jr_0bc_7089                                ; $7089: $18 $fe

    cp $b7                                        ; $708b: $fe $b7
    db $10                                        ; $708d: $10
    pop af                                        ; $708e: $f1
    rst $38                                       ; $708f: $ff
    ret nz                                        ; $7090: $c0

    cp a                                          ; $7091: $bf
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    rst $28                                       ; $7094: $ef
    sbc a                                         ; $7095: $9f
    ld h, $d9                                     ; $7096: $26 $d9
    ld a, [bc]                                    ; $7098: $0a
    pop af                                        ; $7099: $f1
    dec d                                         ; $709a: $15
    add sp, $06                                   ; $709b: $e8 $06
    db $e3                                        ; $709d: $e3
    db $fc                                        ; $709e: $fc
    and $f9                                       ; $709f: $e6 $f9
    ld [hl], c                                    ; $70a1: $71
    dec e                                         ; $70a2: $1d
    ld [$007e], sp                                ; $70a3: $08 $7e $00
    ld a, h                                       ; $70a6: $7c
    ld [bc], a                                    ; $70a7: $02
    rst $38                                       ; $70a8: $ff
    cp b                                          ; $70a9: $b8
    ld a, a                                       ; $70aa: $7f
    inc a                                         ; $70ab: $3c
    rst $38                                       ; $70ac: $ff
    ld a, a                                       ; $70ad: $7f
    inc c                                         ; $70ae: $0c
    nop                                           ; $70af: $00
    rst $38                                       ; $70b0: $ff
    nop                                           ; $70b1: $00
    rst $38                                       ; $70b2: $ff
    add a                                         ; $70b3: $87
    rst $38                                       ; $70b4: $ff
    ld e, e                                       ; $70b5: $5b
    add a                                         ; $70b6: $87
    ld [hl], a                                    ; $70b7: $77
    add e                                         ; $70b8: $83
    ld c, d                                       ; $70b9: $4a
    ld bc, $1ab1                                  ; $70ba: $01 $b1 $1a
    pop hl                                        ; $70bd: $e1
    ld l, $d1                                     ; $70be: $2e $d1
    ld a, [bc]                                    ; $70c0: $0a
    pop af                                        ; $70c1: $f1
    ldh a, [rNR23]                                ; $70c2: $f0 $18
    nop                                           ; $70c4: $00
    di                                            ; $70c5: $f3
    rst $38                                       ; $70c6: $ff
    db $e3                                        ; $70c7: $e3
    rst $38                                       ; $70c8: $ff
    ret                                           ; $70c9: $c9


jr_0bc_70ca:
    rst $38                                       ; $70ca: $ff
    push hl                                       ; $70cb: $e5
    ei                                            ; $70cc: $fb
    ld d, b                                       ; $70cd: $50
    jp z, Jump_000_1010                           ; $70ce: $ca $10 $10

jr_0bc_70d1:
    db $fc                                        ; $70d1: $fc
    db $e4                                        ; $70d2: $e4
    nop                                           ; $70d3: $00
    pop af                                        ; $70d4: $f1
    cp $f4                                        ; $70d5: $fe $f4
    ei                                            ; $70d7: $fb
    ld [$fff8], sp                                ; $70d8: $08 $f8 $ff
    or $f9                                        ; $70db: $f6 $f9
    db $10                                        ; $70dd: $10
    add hl, bc                                    ; $70de: $09
    rra                                           ; $70df: $1f
    rst $38                                       ; $70e0: $ff
    rst $28                                       ; $70e1: $ef
    nop                                           ; $70e2: $00
    rra                                           ; $70e3: $1f
    or a                                          ; $70e4: $b7
    ld c, a                                       ; $70e5: $4f
    inc de                                        ; $70e6: $13
    rst $08                                       ; $70e7: $cf
    db $eb                                        ; $70e8: $eb
    rlca                                          ; $70e9: $07
    dec sp                                        ; $70ea: $3b
    ld [$fdc7], sp                                ; $70eb: $08 $c7 $fd
    cp $f8                                        ; $70ee: $fe $f8
    ld [bc], a                                    ; $70f0: $02
    ld bc, $fff0                                  ; $70f1: $01 $f0 $ff
    ld [c], a                                     ; $70f4: $e2
    nop                                           ; $70f5: $00
    db $fd                                        ; $70f6: $fd
    rst $08                                       ; $70f7: $cf
    ldh a, [$e1]                                  ; $70f8: $f0 $e1
    cp $c0                                        ; $70fa: $fe $c0
    rst $38                                       ; $70fc: $ff
    dec sp                                        ; $70fd: $3b
    nop                                           ; $70fe: $00
    rst $00                                       ; $70ff: $c7
    add hl, bc                                    ; $7100: $09
    rst $30                                       ; $7101: $f7
    ld [hl], e                                    ; $7102: $73
    adc a                                         ; $7103: $8f
    dec bc                                        ; $7104: $0b
    rst $00                                       ; $7105: $c7
    db $e3                                        ; $7106: $e3
    nop                                           ; $7107: $00
    rra                                           ; $7108: $1f
    scf                                           ; $7109: $37
    rst $08                                       ; $710a: $cf
    db $d3                                        ; $710b: $d3
    rrca                                          ; $710c: $0f
    sub e                                         ; $710d: $93
    rrca                                          ; $710e: $0f
    adc $00                                       ; $710f: $ce $00
    pop af                                        ; $7111: $f1
    push bc                                       ; $7112: $c5
    ld a, [$c8b7]                                 ; $7113: $fa $b7 $c8
    and l                                         ; $7116: $a5
    ret c                                         ; $7117: $d8

    adc h                                         ; $7118: $8c
    nop                                           ; $7119: $00

Jump_0bc_711a:
    ldh a, [$c7]                                  ; $711a: $f0 $c7
    ld hl, sp-$66                                 ; $711c: $f8 $9a
    db $e4                                        ; $711e: $e4
    push bc                                       ; $711f: $c5
    ld a, [$2078]                                 ; $7120: $fa $78 $20
    rst $38                                       ; $7123: $ff
    ld a, h                                       ; $7124: $7c
    ld [bc], a                                    ; $7125: $02
    nop                                           ; $7126: $00
    ld a, a                                       ; $7127: $7f
    rst $38                                       ; $7128: $ff
    cp a                                          ; $7129: $bf
    ld a, a                                       ; $712a: $7f
    ld a, a                                       ; $712b: $7f
    nop                                           ; $712c: $00
    rst $38                                       ; $712d: $ff
    cp [hl]                                       ; $712e: $be
    ld a, a                                       ; $712f: $7f
    cp h                                          ; $7130: $bc
    ld a, a                                       ; $7131: $7f
    cp $01                                        ; $7132: $fe $01
    inc l                                         ; $7134: $2c
    ld [$78c3], sp                                ; $7135: $08 $c3 $78
    add a                                         ; $7138: $87
    inc de                                        ; $7139: $13
    ld h, a                                       ; $713a: $67
    ld de, $ff7f                                  ; $713b: $11 $7f $ff
    daa                                           ; $713e: $27
    jr nz, @+$01                                  ; $713f: $20 $ff

    ld a, l                                       ; $7141: $7d
    ld d, b                                       ; $7142: $50

jr_0bc_7143:
    db $10                                        ; $7143: $10
    ld a, [c]                                     ; $7144: $f2
    db $fd                                        ; $7145: $fd
    ld a, [c]                                     ; $7146: $f2
    db $fd                                        ; $7147: $fd
    rst $20                                       ; $7148: $e7
    jr nz, jr_0bc_7143                            ; $7149: $20 $f8

    pop hl                                        ; $714b: $e1
    ld d, h                                       ; $714c: $54
    ld bc, $c72b                                  ; $714d: $01 $2b $c7
    add hl, hl                                    ; $7150: $29
    rst $00                                       ; $7151: $c7
    ld [hl], e                                    ; $7152: $73
    nop                                           ; $7153: $00
    adc a                                         ; $7154: $8f
    dec sp                                        ; $7155: $3b
    rst $00                                       ; $7156: $c7
    rst $10                                       ; $7157: $d7
    rrca                                          ; $7158: $0f
    ld d, e                                       ; $7159: $53
    adc a                                         ; $715a: $8f
    or e                                          ; $715b: $b3
    ld [$d70f], sp                                ; $715c: $08 $0f $d7
    cpl                                           ; $715f: $2f
    and $76                                       ; $7160: $e6 $76
    ld sp, $f9e6                                  ; $7162: $31 $e6 $f9
    ret nc                                        ; $7165: $d0

    ld [bc], a                                    ; $7166: $02
    rst $28                                       ; $7167: $ef
    or c                                          ; $7168: $b1
    adc $c3                                       ; $7169: $ce $c3
    ccf                                           ; $716b: $3f
    rlca                                          ; $716c: $07
    and e                                         ; $716d: $a3
    ld de, $000f                                  ; $716e: $11 $0f $00
    rst $38                                       ; $7171: $ff
    rst $00                                       ; $7172: $c7
    ccf                                           ; $7173: $3f
    and a                                         ; $7174: $a7
    rra                                           ; $7175: $1f
    sub d                                         ; $7176: $92
    rrca                                          ; $7177: $0f
    sbc e                                         ; $7178: $9b
    nop                                           ; $7179: $00
    db $e4                                        ; $717a: $e4
    inc c                                         ; $717b: $0c
    di                                            ; $717c: $f3
    daa                                           ; $717d: $27
    ret c                                         ; $717e: $d8

    ld c, h                                       ; $717f: $4c
    or b                                          ; $7180: $b0
    ld e, [hl]                                    ; $7181: $5e
    ld bc, $0ba0                                  ; $7182: $01 $a0 $0b
    ldh a, [$27]                                  ; $7185: $f0 $27
    ret c                                         ; $7187: $d8

    dec e                                         ; $7188: $1d
    ldh [rOCPS], a                                ; $7189: $e0 $6a
    ld [$ff00], sp                                ; $718b: $08 $00 $ff
    ccf                                           ; $718e: $3f
    db $fc                                        ; $718f: $fc
    ccf                                           ; $7190: $3f
    ret c                                         ; $7191: $d8

    ccf                                           ; $7192: $3f
    reti                                          ; $7193: $d9


    ld a, $08                                     ; $7194: $3e $08
    db $fc                                        ; $7196: $fc
    ccf                                           ; $7197: $3f
    cp b                                          ; $7198: $b8
    ld a, a                                       ; $7199: $7f
    ret nz                                        ; $719a: $c0

    jr jr_0bc_71de                                ; $719b: $18 $41

    cp a                                          ; $719d: $bf
    ld [hl], h                                    ; $719e: $74
    nop                                           ; $719f: $00
    adc e                                         ; $71a0: $8b
    db $dd                                        ; $71a1: $dd
    inc bc                                        ; $71a2: $03
    ld a, c                                       ; $71a3: $79
    add a                                         ; $71a4: $87
    ld h, $c1                                     ; $71a5: $26 $c1
    sub [hl]                                      ; $71a7: $96
    inc bc                                        ; $71a8: $03
    jp hl                                         ; $71a9: $e9


    adc h                                         ; $71aa: $8c
    di                                            ; $71ab: $f3
    push bc                                       ; $71ac: $c5
    ei                                            ; $71ad: $fb
    pop de                                        ; $71ae: $d1
    ld a, [c]                                     ; $71af: $f2
    nop                                           ; $71b0: $00
    ld [$0019], a                                 ; $71b1: $ea $19 $00
    db $e4                                        ; $71b4: $e4
    ei                                            ; $71b5: $fb
    rst $08                                       ; $71b6: $cf
    pop af                                        ; $71b7: $f1
    jp hl                                         ; $71b8: $e9


    di                                            ; $71b9: $f3
    push hl                                       ; $71ba: $e5
    ei                                            ; $71bb: $fb

jr_0bc_71bc:
    ld b, b                                       ; $71bc: $40
    db $e3                                        ; $71bd: $e3
    ld sp, hl                                     ; $71be: $f9
    ld hl, $fff0                                  ; $71bf: $21 $f0 $ff
    db $f4                                        ; $71c2: $f4
    ei                                            ; $71c3: $fb
    cp $f9                                        ; $71c4: $fe $f9
    jr jr_0bc_71bc                                ; $71c6: $18 $f4

    ei                                            ; $71c8: $fb
    pop af                                        ; $71c9: $f1
    add sp, $00                                   ; $71ca: $e8 $00
    db $dd                                        ; $71cc: $dd
    ld bc, $6bff                                  ; $71cd: $01 $ff $6b
    add a                                         ; $71d0: $87
    nop                                           ; $71d1: $00
    ld c, a                                       ; $71d2: $4f
    add a                                         ; $71d3: $87
    dec sp                                        ; $71d4: $3b
    rst $00                                       ; $71d5: $c7
    dec hl                                        ; $71d6: $2b
    rst $00                                       ; $71d7: $c7
    ld d, a                                       ; $71d8: $57
    adc a                                         ; $71d9: $8f
    ld de, $df27                                  ; $71da: $11 $27 $df
    rra                                           ; $71dd: $1f

jr_0bc_71de:
    dec e                                         ; $71de: $1d
    ld [bc], a                                    ; $71df: $02
    add [hl]                                      ; $71e0: $86
    ld sp, hl                                     ; $71e1: $f9
    xor [hl]                                      ; $71e2: $ae
    ld [c], a                                     ; $71e3: $e2
    nop                                           ; $71e4: $00
    ld [$fec1], sp                                ; $71e5: $08 $c1 $fe
    db $e3                                        ; $71e8: $e3
    db $fc                                        ; $71e9: $fc
    jr nz, jr_0bc_7204                            ; $71ea: $20 $18

    dec sp                                        ; $71ec: $3b
    rst $00                                       ; $71ed: $c7
    scf                                           ; $71ee: $37
    nop                                           ; $71ef: $00
    rst $08                                       ; $71f0: $cf
    ld b, a                                       ; $71f1: $47
    sbc a                                         ; $71f2: $9f
    rst $28                                       ; $71f3: $ef
    rra                                           ; $71f4: $1f
    adc a                                         ; $71f5: $8f
    ld a, a                                       ; $71f6: $7f
    rra                                           ; $71f7: $1f
    add e                                         ; $71f8: $83
    ld [$f100], a                                 ; $71f9: $ea $00 $f1
    cp $e7                                        ; $71fc: $fe $e7
    ld hl, sp-$0d                                 ; $71fe: $f8 $f3
    scf                                           ; $7200: $37
    ld [$1247], sp                                ; $7201: $08 $47 $12

jr_0bc_7204:
    adc l                                         ; $7204: $8d
    xor d                                         ; $7205: $aa
    add hl, bc                                    ; $7206: $09
    ld a, c                                       ; $7207: $79
    cp $f3                                        ; $7208: $fe $f3
    ld a, [hl+]                                   ; $720a: $2a
    nop                                           ; $720b: $00
    ld c, h                                       ; $720c: $4c
    add hl, bc                                    ; $720d: $09
    ldh a, [$6c]                                  ; $720e: $f0 $6c
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    ld [c], a                                     ; $7212: $e2
    db $fd                                        ; $7213: $fd
    add b                                         ; $7214: $80
    ld a, a                                       ; $7215: $7f
    ld e, b                                       ; $7216: $58
    and a                                         ; $7217: $a7
    ld h, h                                       ; $7218: $64
    add e                                         ; $7219: $83
    nop                                           ; $721a: $00
    ld a, $c1                                     ; $721b: $3e $c1
    halt                                          ; $721d: $76
    add c                                         ; $721e: $81
    dec e                                         ; $721f: $1d
    ldh [$59], a                                  ; $7220: $e0 $59
    and b                                         ; $7222: $a0
    ld b, $57                                     ; $7223: $06 $57
    and b                                         ; $7225: $a0
    push af                                       ; $7226: $f5
    cp $7e                                        ; $7227: $fe $7e
    ld b, d                                       ; $7229: $42
    ld [bc], a                                    ; $722a: $02
    jr nz, jr_0bc_7236                            ; $722b: $20 $09

    ld a, $82                                     ; $722d: $3e $82
    inc h                                         ; $722f: $24
    ld bc, $7fbe                                  ; $7230: $01 $be $7f
    add a                                         ; $7233: $87

jr_0bc_7234:
    ld a, a                                       ; $7234: $7f
    ccf                                           ; $7235: $3f

jr_0bc_7236:
    add e                                         ; $7236: $83
    ld [de], a                                    ; $7237: $12
    daa                                           ; $7238: $27
    add b                                         ; $7239: $80
    ld h, $02                                     ; $723a: $26 $02
    ld [hl], e                                    ; $723c: $73
    adc a                                         ; $723d: $8f
    cp c                                          ; $723e: $b9
    rlca                                          ; $723f: $07
    sub e                                         ; $7240: $93
    db $ec                                        ; $7241: $ec
    call nz, $fb00                                ; $7242: $c4 $00 $fb
    pop bc                                        ; $7245: $c1
    cp $90                                        ; $7246: $fe $90
    rst $28                                       ; $7248: $ef
    jp nc, $d9ed                                  ; $7249: $d2 $ed $d9

    jr nz, jr_0bc_7234                            ; $724c: $20 $e6

    ldh [$a8], a                                  ; $724e: $e0 $a8
    add hl, bc                                    ; $7250: $09
    rra                                           ; $7251: $1f
    halt                                          ; $7252: $76
    adc a                                         ; $7253: $8f
    sub [hl]                                      ; $7254: $96
    rrca                                          ; $7255: $0f
    ld [bc], a                                    ; $7256: $02
    and [hl]                                      ; $7257: $a6
    rra                                           ; $7258: $1f
    rst $28                                       ; $7259: $ef
    rra                                           ; $725a: $1f
    rst $18                                       ; $725b: $df
    ccf                                           ; $725c: $3f
    ld a, [hl+]                                   ; $725d: $2a
    ld [$004c], sp                                ; $725e: $08 $4c $00
    or b                                          ; $7261: $b0
    ld b, a                                       ; $7262: $47
    cp b                                          ; $7263: $b8
    dec e                                         ; $7264: $1d
    ldh [rTMA], a                                 ; $7265: $e0 $06
    ld sp, hl                                     ; $7267: $f9
    ld c, [hl]                                    ; $7268: $4e
    ld [$38b1], sp                                ; $7269: $08 $b1 $38
    rst $00                                       ; $726c: $c7
    add e                                         ; $726d: $83
    cp l                                          ; $726e: $bd
    ld [bc], a                                    ; $726f: $02
    jp c, Jump_0bc_583d                           ; $7270: $da $3d $58

    db $10                                        ; $7273: $10
    cp a                                          ; $7274: $bf
    sbc d                                         ; $7275: $9a
    ld a, l                                       ; $7276: $7d
    ld [hl], h                                    ; $7277: $74
    add hl, bc                                    ; $7278: $09
    ld sp, hl                                     ; $7279: $f9
    cp $fd                                        ; $727a: $fe $fd
    cp $00                                        ; $727c: $fe $00
    db $fc                                        ; $727e: $fc
    rst $38                                       ; $727f: $ff
    halt                                          ; $7280: $76
    add c                                         ; $7281: $81

jr_0bc_7282:
    or h                                          ; $7282: $b4
    ld b, e                                       ; $7283: $43
    and l                                         ; $7284: $a5
    ld b, e                                       ; $7285: $43
    ld bc, $e719                                  ; $7286: $01 $19 $e7
    ld [hl], l                                    ; $7289: $75
    adc e                                         ; $728a: $8b
    jp $8e3f                                      ; $728b: $c3 $3f $8e


    inc b                                         ; $728e: $04
    ld [bc], a                                    ; $728f: $02
    add b                                         ; $7290: $80
    ldh [$2a], a                                  ; $7291: $e0 $2a
    rst $20                                       ; $7293: $e7
    rst $38                                       ; $7294: $ff
    sbc e                                         ; $7295: $9b
    rst $20                                       ; $7296: $e7
    dec hl                                        ; $7297: $2b
    rst $00                                       ; $7298: $c7
    xor e                                         ; $7299: $ab
    nop                                           ; $729a: $00
    ld b, a                                       ; $729b: $47
    ei                                            ; $729c: $fb
    rst $38                                       ; $729d: $ff
    ldh [rIE], a                                  ; $729e: $e0 $ff
    call $80f2                                    ; $72a0: $cd $f2 $80
    nop                                           ; $72a3: $00
    rst $38                                       ; $72a4: $ff
    call nc, $b1eb                                ; $72a5: $d4 $eb $b1
    adc $b0                                       ; $72a8: $ce $b0
    rst $08                                       ; $72aa: $cf
    db $db                                        ; $72ab: $db
    nop                                           ; $72ac: $00
    db $e4                                        ; $72ad: $e4
    inc hl                                        ; $72ae: $23
    rst $38                                       ; $72af: $ff
    dec b                                         ; $72b0: $05
    ei                                            ; $72b1: $fb
    sbc b                                         ; $72b2: $98
    ld h, a                                       ; $72b3: $67
    xor $00                                       ; $72b4: $ee $00
    ld de, $8374                                  ; $72b6: $11 $74 $83
    sub e                                         ; $72b9: $93
    ld h, b                                       ; $72ba: $60
    ld a, [hl]                                    ; $72bb: $7e
    add c                                         ; $72bc: $81
    dec d                                         ; $72bd: $15
    jr nz, jr_0bc_7282                            ; $72be: $20 $c2

    rst $38                                       ; $72c0: $ff
    ld b, $01                                     ; $72c1: $06 $01
    ld a, b                                       ; $72c3: $78

jr_0bc_72c4:
    rst $38                                       ; $72c4: $ff
    inc sp                                        ; $72c5: $33
    db $fc                                        ; $72c6: $fc
    ld [hl], l                                    ; $72c7: $75
    adc b                                         ; $72c8: $88
    jp z, Jump_000_3201                           ; $72c9: $ca $01 $32

    db $fd                                        ; $72cc: $fd
    ld a, [hl-]                                   ; $72cd: $3a
    call c, $e730                                 ; $72ce: $dc $30 $e7
    rst $38                                       ; $72d1: $ff
    sub e                                         ; $72d2: $93
    jr c, jr_0bc_72c4                             ; $72d3: $38 $ef

    dec sp                                        ; $72d5: $3b
    ld b, b                                       ; $72d6: $40
    nop                                           ; $72d7: $00
    sbc d                                         ; $72d8: $9a
    ld a, [hl-]                                   ; $72d9: $3a
    xor d                                         ; $72da: $aa
    add hl, de                                    ; $72db: $19
    ret c                                         ; $72dc: $d8

    daa                                           ; $72dd: $27
    or [hl]                                       ; $72de: $b6
    ld bc, $2241                                  ; $72df: $01 $41 $22
    pop bc                                        ; $72e2: $c1
    inc l                                         ; $72e3: $2c
    jp $e719                                      ; $72e4: $c3 $19 $e7


    xor d                                         ; $72e7: $aa
    add hl, de                                    ; $72e8: $19
    ld bc, $fff0                                  ; $72e9: $01 $f0 $ff
    db $ec                                        ; $72ec: $ec
    di                                            ; $72ed: $f3
    rst $20                                       ; $72ee: $e7
    ld hl, sp-$10                                 ; $72ef: $f8 $f0
    add $02                                       ; $72f1: $c6 $02
    db $10                                        ; $72f3: $10
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    push af                                       ; $72f6: $f5
    and b                                         ; $72f7: $a0
    ld [bc], a                                    ; $72f8: $02
    add hl, de                                    ; $72f9: $19
    db $e4                                        ; $72fa: $e4
    ld h, [hl]                                    ; $72fb: $66
    sbc c                                         ; $72fc: $99
    ld bc, $d827                                  ; $72fd: $01 $27 $d8
    ld c, $f1                                     ; $7300: $0e $f1
    add c                                         ; $7302: $81
    cp $f4                                        ; $7303: $fe $f4
    ld [bc], a                                    ; $7305: $02
    ld [de], a                                    ; $7306: $12
    ld b, [hl]                                    ; $7307: $46
    inc a                                         ; $7308: $3c
    jr nz, @+$04                                  ; $7309: $20 $02

    ld a, c                                       ; $730b: $79
    cp $3c                                        ; $730c: $fe $3c
    ld h, h                                       ; $730e: $64
    nop                                           ; $730f: $00
    dec hl                                        ; $7310: $2b
    dec bc                                        ; $7311: $0b
    db $fc                                        ; $7312: $fc
    nop                                           ; $7313: $00
    rst $38                                       ; $7314: $ff
    cp e                                          ; $7315: $bb
    rlca                                          ; $7316: $07
    ld h, l                                       ; $7317: $65
    add e                                         ; $7318: $83
    ld [hl], h                                    ; $7319: $74
    add e                                         ; $731a: $83
    ld a, [hl]                                    ; $731b: $7e
    nop                                           ; $731c: $00
    add c                                         ; $731d: $81
    ld c, d                                       ; $731e: $4a
    or c                                          ; $731f: $b1
    ld e, $e1                                     ; $7320: $1e $e1
    ld a, [hl+]                                   ; $7322: $2a
    push de                                       ; $7323: $d5
    ld b, $8a                                     ; $7324: $06 $8a
    add b                                         ; $7326: $80
    ld [de], a                                    ; $7327: $12
    rst $38                                       ; $7328: $ff
    rst $38                                       ; $7329: $ff
    rst $30                                       ; $732a: $f7
    and b                                         ; $732b: $a0
    ld [bc], a                                    ; $732c: $02
    pop bc                                        ; $732d: $c1
    and b                                         ; $732e: $a0
    ld [de], a                                    ; $732f: $12
    db $fd                                        ; $7330: $fd
    and b                                         ; $7331: $a0
    ld a, h                                       ; $7332: $7c
    ld [de], a                                    ; $7333: $12
    add $0c                                       ; $7334: $c6 $0c
    ld [bc], a                                    ; $7336: $02
    db $e3                                        ; $7337: $e3
    db $fc                                        ; $7338: $fc
    reti                                          ; $7339: $d9


    and $c1                                       ; $733a: $e6 $c1
    ld h, b                                       ; $733c: $60
    cp $e1                                        ; $733d: $fe $e1
    ld de, $02da                                  ; $733f: $11 $da $02
    ld a, a                                       ; $7342: $7f
    rst $38                                       ; $7343: $ff
    ld a, [hl]                                    ; $7344: $7e
    cp $ff                                        ; $7345: $fe $ff
    ret nz                                        ; $7347: $c0

    ld c, $20                                     ; $7348: $0e $20
    ld a, [hl]                                    ; $734a: $7e
    inc bc                                        ; $734b: $03
    jp $bdfd                                      ; $734c: $c3 $fd $bd


    sub c                                         ; $734f: $91
    db $e3                                        ; $7350: $e3
    ld l, d                                       ; $7351: $6a
    inc c                                         ; $7352: $0c
    rst $30                                       ; $7353: $f7
    ld d, e                                       ; $7354: $53
    and $f8                                       ; $7355: $e6 $f8
    ld a, h                                       ; $7357: $7c
    inc bc                                        ; $7358: $03
    ret nc                                        ; $7359: $d0

    ld a, [bc]                                    ; $735a: $0a
    ld a, [$20fd]                                 ; $735b: $fa $fd $20
    ld a, h                                       ; $735e: $7c
    ld a, a                                       ; $735f: $7f
    dec l                                         ; $7360: $2d
    ld [$03dd], sp                                ; $7361: $08 $dd $03
    dec l                                         ; $7364: $2d
    db $d3                                        ; $7365: $d3
    add hl, de                                    ; $7366: $19
    nop                                           ; $7367: $00
    rst $20                                       ; $7368: $e7
    xor l                                         ; $7369: $ad
    ld b, e                                       ; $736a: $43
    ld e, e                                       ; $736b: $5b
    add a                                         ; $736c: $87
    daa                                           ; $736d: $27
    rst $18                                       ; $736e: $df
    adc a                                         ; $736f: $8f
    add b                                         ; $7370: $80
    db $ed                                        ; $7371: $ed
    inc bc                                        ; $7372: $03
    sub c                                         ; $7373: $91
    xor $9c                                       ; $7374: $ee $9c
    db $e3                                        ; $7376: $e3
    call z, $e4f3                                 ; $7377: $cc $f3 $e4
    db $10                                        ; $737a: $10
    ei                                            ; $737b: $fb
    ld a, [c]                                     ; $737c: $f2
    db $fd                                        ; $737d: $fd
    ld l, e                                       ; $737e: $6b
    jr jr_0bc_73d3                                ; $737f: $18 $52

    add c                                         ; $7381: $81
    db $ec                                        ; $7382: $ec
    inc de                                        ; $7383: $13
    ld b, $9a                                     ; $7384: $06 $9a
    ld h, l                                       ; $7386: $65
    ld d, b                                       ; $7387: $50
    xor a                                         ; $7388: $af
    rlca                                          ; $7389: $07
    ret c                                         ; $738a: $d8

    inc bc                                        ; $738b: $03
    inc c                                         ; $738c: $0c
    inc c                                         ; $738d: $0c
    ld a, l                                       ; $738e: $7d
    add b                                         ; $738f: $80
    ld [$fe20], sp                                ; $7390: $08 $20 $fe
    cp $f9                                        ; $7393: $fe $f9
    ld hl, sp-$1a                                 ; $7395: $f8 $e6
    pop hl                                        ; $7397: $e1
    reti                                          ; $7398: $d9


    ld [$edc7], sp                                ; $7399: $08 $c7 $ed
    inc bc                                        ; $739c: $03
    dec [hl]                                      ; $739d: $35
    call c, $ad00                                 ; $739e: $dc $00 $ad
    ld b, e                                       ; $73a1: $43
    ld a, e                                       ; $73a2: $7b
    and b                                         ; $73a3: $a0
    ld b, b                                       ; $73a4: $40
    nop                                           ; $73a5: $00
    rrca                                          ; $73a6: $0f
    inc [hl]                                      ; $73a7: $34
    ld [hl-], a                                   ; $73a8: $32
    call $a3f2                                    ; $73a9: $cd $f2 $a3
    call c, $0461                                 ; $73ac: $dc $61 $04
    sbc [hl]                                      ; $73af: $9e
    daa                                           ; $73b0: $27
    ret c                                         ; $73b1: $d8

    adc b                                         ; $73b2: $88
    rst $30                                       ; $73b3: $f7
    jr nc, jr_0bc_73d1                            ; $73b4: $30 $1b

    adc a                                         ; $73b6: $8f
    ld a, a                                       ; $73b7: $7f
    nop                                           ; $73b8: $00
    ld c, a                                       ; $73b9: $4f
    ccf                                           ; $73ba: $3f
    daa                                           ; $73bb: $27
    rra                                           ; $73bc: $1f
    rst $00                                       ; $73bd: $c7
    ccf                                           ; $73be: $3f
    adc $3f                                       ; $73bf: $ce $3f
    nop                                           ; $73c1: $00
    adc b                                         ; $73c2: $88
    rst $30                                       ; $73c3: $f7
    inc c                                         ; $73c4: $0c
    di                                            ; $73c5: $f3
    and a                                         ; $73c6: $a7
    ret c                                         ; $73c7: $d8

    ld c, l                                       ; $73c8: $4d
    or d                                          ; $73c9: $b2
    ld bc, $a05a                                  ; $73ca: $01 $5a $a0
    add hl, bc                                    ; $73cd: $09
    ldh a, [rNR51]                                ; $73ce: $f0 $25
    ret c                                         ; $73d0: $d8

jr_0bc_73d1:
    inc e                                         ; $73d1: $1c
    and b                                         ; $73d2: $a0

jr_0bc_73d3:
    ld [bc], a                                    ; $73d3: $02
    ld b, b                                       ; $73d4: $40
    ccf                                           ; $73d5: $3f
    ld [hl-], a                                   ; $73d6: $32
    inc b                                         ; $73d7: $04
    cp h                                          ; $73d8: $bc
    ld a, a                                       ; $73d9: $7f
    sbc b                                         ; $73da: $98
    ld a, a                                       ; $73db: $7f
    add hl, de                                    ; $73dc: $19
    cp $20                                        ; $73dd: $fe $20
    cp h                                          ; $73df: $bc
    ld a, a                                       ; $73e0: $7f
    and b                                         ; $73e1: $a0
    ld c, d                                       ; $73e2: $4a
    ld sp, hl                                     ; $73e3: $f9
    inc bc                                        ; $73e4: $03
    ld l, h                                       ; $73e5: $6c
    add e                                         ; $73e6: $83
    ld h, [hl]                                    ; $73e7: $66
    inc bc                                        ; $73e8: $03
    add c                                         ; $73e9: $81
    db $e4                                        ; $73ea: $e4
    ei                                            ; $73eb: $fb
    set 6, c                                      ; $73ec: $cb $f1
    db $ed                                        ; $73ee: $ed
    sub b                                         ; $73ef: $90
    ld [bc], a                                    ; $73f0: $02
    and b                                         ; $73f1: $a0
    ld a, [hl+]                                   ; $73f2: $2a
    nop                                           ; $73f3: $00
    pop de                                        ; $73f4: $d1
    xor $f8                                       ; $73f5: $ee $f8
    rst $20                                       ; $73f7: $e7
    ret nc                                        ; $73f8: $d0

    rst $28                                       ; $73f9: $ef
    push hl                                       ; $73fa: $e5
    ld a, [$f87c]                                 ; $73fb: $fa $7c $f8
    sbc c                                         ; $73fe: $99
    inc h                                         ; $73ff: $24
    ld [$ef08], a                                 ; $7400: $ea $08 $ef
    inc bc                                        ; $7403: $03
    pop af                                        ; $7404: $f1
    dec de                                        ; $7405: $1b
    xor l                                         ; $7406: $ad
    inc b                                         ; $7407: $04
    db $eb                                        ; $7408: $eb
    rst $30                                       ; $7409: $f7
    nop                                           ; $740a: $00
    db $d3                                        ; $740b: $d3
    rst $20                                       ; $740c: $e7
    ld h, [hl]                                    ; $740d: $66
    rst $38                                       ; $740e: $ff
    inc l                                         ; $740f: $2c
    rst $30                                       ; $7410: $f7
    dec l                                         ; $7411: $2d
    or $10                                        ; $7412: $f6 $10
    rst $20                                       ; $7414: $e7
    rst $38                                       ; $7415: $ff
    rst $28                                       ; $7416: $ef
    ld a, [hl]                                    ; $7417: $7e
    db $10                                        ; $7418: $10
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    ld a, h                                       ; $741b: $7c
    ld a, a                                       ; $741c: $7f
    nop                                           ; $741d: $00
    pop af                                        ; $741e: $f1
    ld a, [hl]                                    ; $741f: $7e
    db $e3                                        ; $7420: $e3
    db $fc                                        ; $7421: $fc
    add sp, -$09                                  ; $7422: $e8 $f7
    jp hl                                         ; $7424: $e9


    or $60                                        ; $7425: $f6 $60
    ldh a, [$cf]                                  ; $7427: $f0 $cf
    inc d                                         ; $7429: $14
    ret nz                                        ; $742a: $c0

    dec bc                                        ; $742b: $0b
    ld l, a                                       ; $742c: $6f
    sbc a                                         ; $742d: $9f
    rst $10                                       ; $742e: $d7
    rrca                                          ; $742f: $0f
    and a                                         ; $7430: $a7
    add b                                         ; $7431: $80
    ld b, $00                                     ; $7432: $06 $00
    rst $38                                       ; $7434: $ff
    rst $38                                       ; $7435: $ff
    rst $18                                       ; $7436: $df
    rst $20                                       ; $7437: $e7
    xor e                                         ; $7438: $ab
    rst $00                                       ; $7439: $c7
    xor e                                         ; $743a: $ab
    nop                                           ; $743b: $00
    rst $00                                       ; $743c: $c7
    add $fe                                       ; $743d: $c6 $fe
    rst $28                                       ; $743f: $ef
    db $fc                                        ; $7440: $fc
    db $fd                                        ; $7441: $fd
    rst $38                                       ; $7442: $ff
    db $d3                                        ; $7443: $d3
    ld b, b                                       ; $7444: $40
    rst $28                                       ; $7445: $ef
    ld h, b                                       ; $7446: $60
    inc b                                         ; $7447: $04
    db $fc                                        ; $7448: $fc
    di                                            ; $7449: $f3
    ldh a, [$cd]                                  ; $744a: $f0 $cd
    jp $0937                                      ; $744c: $c3 $37 $09


    rrca                                          ; $744f: $0f
    rst $18                                       ; $7450: $df
    dec sp                                        ; $7451: $3b
    ld a, a                                       ; $7452: $7f
    push hl                                       ; $7453: $e5
    inc b                                         ; $7454: $04
    daa                                           ; $7455: $27
    rra                                           ; $7456: $1f
    ld [$0318], sp                                ; $7457: $08 $18 $03
    ei                                            ; $745a: $fb
    cp a                                          ; $745b: $bf
    cp $bc                                        ; $745c: $fe $bc
    cp h                                          ; $745e: $bc
    ldh a, [$e1]                                  ; $745f: $f0 $e1
    inc bc                                        ; $7461: $03
    nop                                           ; $7462: $00
    inc h                                         ; $7463: $24
    nop                                           ; $7464: $00
    cpl                                           ; $7465: $2f
    rst $18                                       ; $7466: $df
    rst $30                                       ; $7467: $f7
    rrca                                          ; $7468: $0f
    and a                                         ; $7469: $a7
    ld e, a                                       ; $746a: $5f
    ld l, a                                       ; $746b: $6f
    sbc a                                         ; $746c: $9f
    nop                                           ; $746d: $00
    add e                                         ; $746e: $83
    db $fc                                        ; $746f: $fc
    ld hl, $a5de                                  ; $7470: $21 $de $a5
    jp c, $ccb3                                   ; $7473: $da $b3 $cc

    ld h, b                                       ; $7476: $60
    ret nz                                        ; $7477: $c0

    ld b, d                                       ; $7478: $42
    ld [bc], a                                    ; $7479: $02
    inc l                                         ; $747a: $2c
    dec c                                         ; $747b: $0d
    ld l, $1f                                     ; $747c: $2e $1f
    ld c, a                                       ; $747e: $4f
    ccf                                           ; $747f: $3f
    rst $18                                       ; $7480: $df
    jr nc, jr_0bc_74c2                            ; $7481: $30 $3f

    cp [hl]                                       ; $7483: $be
    sbc $03                                       ; $7484: $de $03
    ld a, [hl-]                                   ; $7486: $3a
    dec c                                         ; $7487: $0d
    rst $28                                       ; $7488: $ef
    rst $38                                       ; $7489: $ff
    ld c, [hl]                                    ; $748a: $4e
    or b                                          ; $748b: $b0
    inc b                                         ; $748c: $04
    ld b, l                                       ; $748d: $45

jr_0bc_748e:
    cp b                                          ; $748e: $b8
    dec de                                        ; $748f: $1b
    ldh [rDIV], a                                 ; $7490: $e0 $04
    sub b                                         ; $7492: $90
    ld d, d                                       ; $7493: $52
    cp d                                          ; $7494: $ba
    ld a, l                                       ; $7495: $7d
    ret nz                                        ; $7496: $c0

    ld b, $0c                                     ; $7497: $06 $0c
    adc [hl]                                      ; $7499: $8e
    ld a, [bc]                                    ; $749a: $0a
    rst $38                                       ; $749b: $ff
    rst $38                                       ; $749c: $ff
    ld e, e                                       ; $749d: $5b
    add c                                         ; $749e: $81
    ld a, [$1101]                                 ; $749f: $fa $01 $11
    and l                                         ; $74a2: $a5
    ld b, e                                       ; $74a3: $43
    add hl, sp                                    ; $74a4: $39
    db $e4                                        ; $74a5: $e4
    inc bc                                        ; $74a6: $03
    rst $00                                       ; $74a7: $c7
    ccf                                           ; $74a8: $3f
    rrca                                          ; $74a9: $0f
    ld h, h                                       ; $74aa: $64
    ld hl, $7490                                  ; $74ab: $21 $90 $74
    dec a                                         ; $74ae: $3d
    add a                                         ; $74af: $87
    rst $38                                       ; $74b0: $ff
    add b                                         ; $74b1: $80
    ld [hl+], a                                   ; $74b2: $22
    ld bc, $8374                                  ; $74b3: $01 $74 $83
    or e                                          ; $74b6: $b3
    ld [$6e40], sp                                ; $74b7: $08 $40 $6e
    add c                                         ; $74ba: $81
    dec l                                         ; $74bb: $2d
    add b                                         ; $74bc: $80
    ld [bc], a                                    ; $74bd: $02
    rlca                                          ; $74be: $07
    rst $38                                       ; $74bf: $ff
    xor e                                         ; $74c0: $ab
    nop                                           ; $74c1: $00

jr_0bc_74c2:
    ld d, a                                       ; $74c2: $57
    ld e, a                                       ; $74c3: $5f
    add e                                         ; $74c4: $83
    ld c, e                                       ; $74c5: $4b
    add a                                         ; $74c6: $87
    ccf                                           ; $74c7: $3f
    jp Jump_000_1bef                              ; $74c8: $c3 $ef $1b


    rla                                           ; $74cb: $17
    ld e, a                                       ; $74cc: $5f
    cp a                                          ; $74cd: $bf
    and b                                         ; $74ce: $a0
    dec a                                         ; $74cf: $3d
    cp b                                          ; $74d0: $b8
    jr jr_0bc_748e                                ; $74d1: $18 $bb

    call z, $d000                                 ; $74d3: $cc $00 $d0
    ld [$bb04], sp                                ; $74d6: $08 $04 $bb
    add $ab                                       ; $74d9: $c6 $ab
    add $bb                                       ; $74db: $c6 $bb
    ld [bc], a                                    ; $74dd: $02
    nop                                           ; $74de: $00
    ei                                            ; $74df: $fb
    cp a                                          ; $74e0: $bf
    nop                                           ; $74e1: $00
    rst $38                                       ; $74e2: $ff
    cp h                                          ; $74e3: $bc
    cp a                                          ; $74e4: $bf
    ldh a, [$fb]                                  ; $74e5: $f0 $fb
    ret nz                                        ; $74e7: $c0

    ld a, [c]                                     ; $74e8: $f2
    nop                                           ; $74e9: $00
    nop                                           ; $74ea: $00
    or [hl]                                       ; $74eb: $b6
    nop                                           ; $74ec: $00
    ld l, h                                       ; $74ed: $6c
    nop                                           ; $74ee: $00
    ld e, b                                       ; $74ef: $58
    nop                                           ; $74f0: $00
    db $ec                                        ; $74f1: $ec
    nop                                           ; $74f2: $00
    ld bc, $00ed                                  ; $74f3: $01 $ed $00
    db $db                                        ; $74f6: $db
    nop                                           ; $74f7: $00
    ld d, [hl]                                    ; $74f8: $56
    nop                                           ; $74f9: $00
    inc [hl]                                      ; $74fa: $34
    ld a, [bc]                                    ; $74fb: $0a
    nop                                           ; $74fc: $00
    nop                                           ; $74fd: $00
    reti                                          ; $74fe: $d9


    nop                                           ; $74ff: $00
    ld [hl], e                                    ; $7500: $73
    nop                                           ; $7501: $00
    db $db                                        ; $7502: $db
    daa                                           ; $7503: $27
    ld h, l                                       ; $7504: $65
    sbc e                                         ; $7505: $9b
    db $10                                        ; $7506: $10
    ld c, h                                       ; $7507: $4c
    or e                                          ; $7508: $b3
    halt                                          ; $7509: $76
    ld h, b                                       ; $750a: $60
    ld [bc], a                                    ; $750b: $02
    ld a, [de]                                    ; $750c: $1a
    pop hl                                        ; $750d: $e1
    ld a, [hl+]                                   ; $750e: $2a
    pop de                                        ; $750f: $d1
    xor h                                         ; $7510: $ac
    ld h, b                                       ; $7511: $60
    ld a, [bc]                                    ; $7512: $0a
    ld sp, hl                                     ; $7513: $f9
    adc $04                                       ; $7514: $ce $04
    di                                            ; $7516: $f3
    inc l                                         ; $7517: $2c
    dec b                                         ; $7518: $05
    ld b, $0a                                     ; $7519: $06 $0a
    adc $f1                                       ; $751b: $ce $f1
    nop                                           ; $751d: $00
    add e                                         ; $751e: $83
    rst $38                                       ; $751f: $ff
    dec e                                         ; $7520: $1d
    db $e3                                        ; $7521: $e3
    ld a, [hl]                                    ; $7522: $7e
    add c                                         ; $7523: $81
    ld [$0011], a                                 ; $7524: $ea $11 $00
    inc de                                        ; $7527: $13
    ldh [$f7], a                                  ; $7528: $e0 $f7
    nop                                           ; $752a: $00
    dec e                                         ; $752b: $1d
    ldh [$99], a                                  ; $752c: $e0 $99
    ld h, b                                       ; $752e: $60
    jp c, $3976                                   ; $752f: $da $76 $39

    ld h, b                                       ; $7532: $60
    ld a, [de]                                    ; $7533: $1a
    db $fd                                        ; $7534: $fd
    nop                                           ; $7535: $00
    ld b, $5a                                     ; $7536: $06 $5a
    dec de                                        ; $7538: $1b
    ld a, [hl]                                    ; $7539: $7e
    ld d, b                                       ; $753a: $50
    ld [de], a                                    ; $753b: $12
    ld l, e                                       ; $753c: $6b

jr_0bc_753d:
    nop                                           ; $753d: $00
    sub a                                         ; $753e: $97
    ld [hl], l                                    ; $753f: $75
    add e                                         ; $7540: $83
    sub h                                         ; $7541: $94
    ld h, e                                       ; $7542: $63
    xor d                                         ; $7543: $aa
    ld de, $0244                                  ; $7544: $11 $44 $02
    cp e                                          ; $7547: $bb
    ld b, c                                       ; $7548: $41
    cp a                                          ; $7549: $bf
    dec bc                                        ; $754a: $0b
    rst $30                                       ; $754b: $f7
    daa                                           ; $754c: $27
    ld b, b                                       ; $754d: $40
    ld [bc], a                                    ; $754e: $02
    call c, Call_000_0303                         ; $754f: $dc $03 $03
    cp d                                          ; $7552: $ba
    ld b, l                                       ; $7553: $45
    ld d, d                                       ; $7554: $52
    xor a                                         ; $7555: $af
    daa                                           ; $7556: $27
    call c, Call_0bc_4060                         ; $7557: $dc $60 $40
    ld a, [hl+]                                   ; $755a: $2a
    ld a, [c]                                     ; $755b: $f2
    ld c, b                                       ; $755c: $48
    ld a, [hl+]                                   ; $755d: $2a
    ld l, b                                       ; $755e: $68
    add hl, hl                                    ; $755f: $29
    ld a, b                                       ; $7560: $78
    add hl, hl                                    ; $7561: $29
    cp b                                          ; $7562: $b8

jr_0bc_7563:
    jr jr_0bc_7563                                ; $7563: $18 $fe

    ret nz                                        ; $7565: $c0

    ret nz                                        ; $7566: $c0

    jr @+$01                                      ; $7567: $18 $ff

    nop                                           ; $7569: $00
    ret nz                                        ; $756a: $c0

    ei                                            ; $756b: $fb
    nop                                           ; $756c: $00
    ld e, e                                       ; $756d: $5b
    nop                                           ; $756e: $00
    scf                                           ; $756f: $37
    nop                                           ; $7570: $00
    ld [hl], l                                    ; $7571: $75
    inc [hl]                                      ; $7572: $34
    nop                                           ; $7573: $00
    xor d                                         ; $7574: $aa
    ret c                                         ; $7575: $d8

    db $10                                        ; $7576: $10
    call c, $ab18                                 ; $7577: $dc $18 $ab
    db $e4                                        ; $757a: $e4
    nop                                           ; $757b: $00
    jp nc, RST_00                                 ; $757c: $d2 $00 $00

    or c                                          ; $757f: $b1
    nop                                           ; $7580: $00
    ld h, a                                       ; $7581: $67
    nop                                           ; $7582: $00
    rst $08                                       ; $7583: $cf
    nop                                           ; $7584: $00
    rst $30                                       ; $7585: $f7
    nop                                           ; $7586: $00
    ld bc, $017e                                  ; $7587: $01 $7e $01
    dec [hl]                                      ; $758a: $35
    jp z, $8e71                                   ; $758b: $ca $71 $8e

    cp a                                          ; $758e: $bf
    ld h, $00                                     ; $758f: $26 $00
    nop                                           ; $7591: $00
    ld a, [hl]                                    ; $7592: $7e
    ld bc, $05ba                                  ; $7593: $01 $ba $05
    and $19                                       ; $7596: $e6 $19
    xor h                                         ; $7598: $ac
    ld d, e                                       ; $7599: $53
    nop                                           ; $759a: $00
    adc b                                         ; $759b: $88
    ld [hl], a                                    ; $759c: $77
    inc bc                                        ; $759d: $03
    rst $38                                       ; $759e: $ff
    sbc h                                         ; $759f: $9c
    db $e3                                        ; $75a0: $e3
    adc c                                         ; $75a1: $89
    rst $30                                       ; $75a2: $f7
    db $10                                        ; $75a3: $10
    pop bc                                        ; $75a4: $c1
    rst $38                                       ; $75a5: $ff
    db $d3                                        ; $75a6: $d3
    rst $00                                       ; $75a7: $c7
    ld [hl], $e4                                  ; $75a8: $36 $e4
    ei                                            ; $75aa: $fb
    jp z, Jump_000_10f5                           ; $75ab: $ca $f5 $10

    db $e4                                        ; $75ae: $e4
    ei                                            ; $75af: $fb
    pop hl                                        ; $75b0: $e1
    ldh a, [$34]                                  ; $75b1: $f0 $34
    push bc                                       ; $75b3: $c5
    jr c, jr_0bc_753d                             ; $75b4: $38 $87

    ld a, b                                       ; $75b6: $78
    ld b, $6e                                     ; $75b7: $06 $6e
    sub c                                         ; $75b9: $91
    inc b                                         ; $75ba: $04
    ei                                            ; $75bb: $fb
    and e                                         ; $75bc: $a3
    jp hl                                         ; $75bd: $e9


    ld b, [hl]                                    ; $75be: $46
    jr nc, jr_0bc_75cb                            ; $75bf: $30 $0a

    di                                            ; $75c1: $f3
    xor h                                         ; $75c2: $ac
    jr nc, jr_0bc_7607                            ; $75c3: $30 $42

    sbc a                                         ; $75c5: $9f
    jr nc, @+$14                                  ; $75c6: $30 $12

    sub a                                         ; $75c8: $97
    jr nc, @+$14                                  ; $75c9: $30 $12

jr_0bc_75cb:
    ld hl, sp+$1a                                 ; $75cb: $f8 $1a
    sbc c                                         ; $75cd: $99
    add a                                         ; $75ce: $87
    ld a, [bc]                                    ; $75cf: $0a
    ld h, a                                       ; $75d0: $67
    rra                                           ; $75d1: $1f
    sbc a                                         ; $75d2: $9f
    ld a, e                                       ; $75d3: $7b
    jr jr_0bc_7600                                ; $75d4: $18 $2a

    cp [hl]                                       ; $75d6: $be
    and b                                         ; $75d7: $a0
    nop                                           ; $75d8: $00
    or $85                                        ; $75d9: $f6 $85
    ld h, b                                       ; $75db: $60
    ld bc, $006d                                  ; $75dc: $01 $6d $00
    db $eb                                        ; $75df: $eb
    nop                                           ; $75e0: $00
    xor b                                         ; $75e1: $a8
    ld [$a836], sp                                ; $75e2: $08 $36 $a8
    nop                                           ; $75e5: $00
    ld b, h                                       ; $75e6: $44
    ld c, l                                       ; $75e7: $4d
    ld h, [hl]                                    ; $75e8: $66
    ld bc, $0096                                  ; $75e9: $01 $96 $00
    inc e                                         ; $75ec: $1c
    ld [$9710], sp                                ; $75ed: $08 $10 $97
    nop                                           ; $75f0: $00
    nop                                           ; $75f1: $00
    dec e                                         ; $75f2: $1d
    nop                                           ; $75f3: $00
    ld e, a                                       ; $75f4: $5f
    nop                                           ; $75f5: $00
    ld l, $01                                     ; $75f6: $2e $01
    ld a, l                                       ; $75f8: $7d
    ld [bc], a                                    ; $75f9: $02
    ld a, [bc]                                    ; $75fa: $0a
    inc d                                         ; $75fb: $14
    dec bc                                        ; $75fc: $0b
    xor d                                         ; $75fd: $aa
    rst $00                                       ; $75fe: $c7
    ld [bc], a                                    ; $75ff: $02

jr_0bc_7600:
    ld [$02ba], sp                                ; $7600: $08 $ba $02
    nop                                           ; $7603: $00
    sub e                                         ; $7604: $93
    add b                                         ; $7605: $80
    ld l, h                                       ; $7606: $6c

jr_0bc_7607:
    ld [bc], a                                    ; $7607: $02
    rst $38                                       ; $7608: $ff
    call $9f60                                    ; $7609: $cd $60 $9f
    add h                                         ; $760c: $84
    ld a, a                                       ; $760d: $7f

jr_0bc_760e:
    inc e                                         ; $760e: $1c
    ld bc, $8ff8                                  ; $760f: $01 $f8 $8f
    ld hl, sp+$4f                                 ; $7612: $f8 $4f
    ld hl, sp+$68                                 ; $7614: $f8 $68
    rst $38                                       ; $7616: $ff
    call c, Call_000_0005                         ; $7617: $dc $05 $00
    cp a                                          ; $761a: $bf
    ld c, c                                       ; $761b: $49
    rst $38                                       ; $761c: $ff
    rst $18                                       ; $761d: $df
    rst $38                                       ; $761e: $ff
    jr nz, jr_0bc_7622                            ; $761f: $20 $01

    ld [hl], a                                    ; $7621: $77

jr_0bc_7622:
    ld c, $00                                     ; $7622: $0e $00
    rst $38                                       ; $7624: $ff
    nop                                           ; $7625: $00
    jr nz, jr_0bc_760e                            ; $7626: $20 $e6

    inc bc                                        ; $7628: $03
    ld a, [hl]                                    ; $7629: $7e
    ccf                                           ; $762a: $3f
    and b                                         ; $762b: $a0
    inc c                                         ; $762c: $0c
    dec sp                                        ; $762d: $3b
    db $10                                        ; $762e: $10
    rst $00                                       ; $762f: $c7
    cp e                                          ; $7630: $bb
    ld b, a                                       ; $7631: $47
    sub b                                         ; $7632: $90
    inc l                                         ; $7633: $2c
    ld a, b                                       ; $7634: $78
    add e                                         ; $7635: $83
    add a                                         ; $7636: $87
    ld h, b                                       ; $7637: $60
    ld d, $72                                     ; $7638: $16 $72

jr_0bc_763a:
    add c                                         ; $763a: $81
    dec h                                         ; $763b: $25
    sub b                                         ; $763c: $90
    ld d, h                                       ; $763d: $54
    jr c, jr_0bc_767e                             ; $763e: $38 $3e

    inc b                                         ; $7640: $04
    jr nz, jr_0bc_764d                            ; $7641: $20 $0a

    xor c                                         ; $7643: $a9
    ld [$7557], sp                                ; $7644: $08 $57 $75
    add e                                         ; $7647: $83
    ld c, c                                       ; $7648: $49
    and [hl]                                      ; $7649: $a6
    dec b                                         ; $764a: $05
    rst $00                                       ; $764b: $c7
    ccf                                           ; $764c: $3f

jr_0bc_764d:
    rra                                           ; $764d: $1f
    jr nz, @+$01                                  ; $764e: $20 $ff

    sbc d                                         ; $7650: $9a
    ld hl, sp+$01                                 ; $7651: $f8 $01
    inc l                                         ; $7653: $2c
    nop                                           ; $7654: $00
    add hl, sp                                    ; $7655: $39
    nop                                           ; $7656: $00
    sbc a                                         ; $7657: $9f
    nop                                           ; $7658: $00
    nop                                           ; $7659: $00
    ld [hl], l                                    ; $765a: $75
    ld [bc], a                                    ; $765b: $02
    ld sp, hl                                     ; $765c: $f9
    ld b, $b9                                     ; $765d: $06 $b9
    ld b, [hl]                                    ; $765f: $46
    ld e, a                                       ; $7660: $5f
    nop                                           ; $7661: $00
    nop                                           ; $7662: $00
    inc l                                         ; $7663: $2c
    inc bc                                        ; $7664: $03
    db $fd                                        ; $7665: $fd
    ld [bc], a                                    ; $7666: $02
    db $f4                                        ; $7667: $f4
    dec bc                                        ; $7668: $0b
    call nc, $2b41                                ; $7669: $d4 $41 $2b
    ld a, b                                       ; $766c: $78
    jr @-$27                                      ; $766d: $18 $d7

    cpl                                           ; $766f: $2f
    jp Jump_000_173f                              ; $7670: $c3 $3f $17


    ld d, h                                       ; $7673: $54
    ld [bc], a                                    ; $7674: $02
    ld b, b                                       ; $7675: $40
    sbc a                                         ; $7676: $9f
    ld a, b                                       ; $7677: $78
    jr nz, jr_0bc_763a                            ; $7678: $20 $c0

    add b                                         ; $767a: $80
    xor $80                                       ; $767b: $ee $80
    rst $38                                       ; $767d: $ff

jr_0bc_767e:
    add b                                         ; $767e: $80
    ld h, h                                       ; $767f: $64
    add h                                         ; $7680: $84
    cp d                                          ; $7681: $ba
    ld [bc], a                                    ; $7682: $02
    ld a, [$5f1f]                                 ; $7683: $fa $1f $5f
    rrca                                          ; $7686: $0f
    ld e, e                                       ; $7687: $5b
    ld b, $0f                                     ; $7688: $06 $0f
    ld c, $8c                                     ; $768a: $0e $8c
    ld hl, sp+$03                                 ; $768c: $f8 $03
    rst $38                                       ; $768e: $ff
    rst $38                                       ; $768f: $ff
    rst $00                                       ; $7690: $c7
    ld a, [bc]                                    ; $7691: $0a
    ld bc, $0f40                                  ; $7692: $01 $40 $0f
    cp $ff                                        ; $7695: $fe $ff
    nop                                           ; $7697: $00
    inc e                                         ; $7698: $1c
    rst $38                                       ; $7699: $ff
    ld b, $ff                                     ; $769a: $06 $ff

jr_0bc_769c:
    ld e, c                                       ; $769c: $59
    and [hl]                                      ; $769d: $a6
    dec e                                         ; $769e: $1d
    ld [c], a                                     ; $769f: $e2
    ld de, $42bd                                  ; $76a0: $11 $bd $42
    db $fd                                        ; $76a3: $fd
    ld b, b                                       ; $76a4: $40
    inc b                                         ; $76a5: $04
    dec de                                        ; $76a6: $1b
    rst $20                                       ; $76a7: $e7
    cp l                                          ; $76a8: $bd
    nop                                           ; $76a9: $00
    inc d                                         ; $76aa: $14
    ld d, h                                       ; $76ab: $54
    ld c, a                                       ; $76ac: $4f
    ld b, b                                       ; $76ad: $40
    inc [hl]                                      ; $76ae: $34
    db $f4                                        ; $76af: $f4
    ld b, b                                       ; $76b0: $40
    inc [hl]                                      ; $76b1: $34
    ld c, d                                       ; $76b2: $4a
    ld b, b                                       ; $76b3: $40
    ld h, h                                       ; $76b4: $64
    ld sp, $00ce                                  ; $76b5: $31 $ce $00
    inc h                                         ; $76b8: $24
    db $db                                        ; $76b9: $db
    ld bc, $7fff                                  ; $76ba: $01 $ff $7f
    rst $08                                       ; $76bd: $cf
    ret nz                                        ; $76be: $c0

    add b                                         ; $76bf: $80
    ld c, a                                       ; $76c0: $4f
    push af                                       ; $76c1: $f5
    ld l, b                                       ; $76c2: $68
    nop                                           ; $76c3: $00
    add d                                         ; $76c4: $82
    rst $38                                       ; $76c5: $ff
    ld hl, sp+$28                                 ; $76c6: $f8 $28
    ld l, b                                       ; $76c8: $68
    jr jr_0bc_770d                                ; $76c9: $18 $42

    inc b                                         ; $76cb: $04
    ld hl, sp+$60                                 ; $76cc: $f8 $60
    nop                                           ; $76ce: $00
    ldh [rIE], a                                  ; $76cf: $e0 $ff
    db $ed                                        ; $76d1: $ed
    ld a, [c]                                     ; $76d2: $f2
    push bc                                       ; $76d3: $c5
    ld a, [$e4db]                                 ; $76d4: $fa $db $e4
    nop                                           ; $76d7: $00
    dec bc                                        ; $76d8: $0b
    db $f4                                        ; $76d9: $f4
    ld e, e                                       ; $76da: $5b
    and h                                         ; $76db: $a4
    rra                                           ; $76dc: $1f
    ldh [$7f], a                                  ; $76dd: $e0 $7f
    add b                                         ; $76df: $80
    nop                                           ; $76e0: $00
    ld b, b                                       ; $76e1: $40
    cp a                                          ; $76e2: $bf
    pop de                                        ; $76e3: $d1
    ld l, $57                                     ; $76e4: $2e $57
    xor b                                         ; $76e6: $a8
    or $09                                        ; $76e7: $f6 $09
    nop                                           ; $76e9: $00
    cp [hl]                                       ; $76ea: $be
    ld b, c                                       ; $76eb: $41
    ld a, [$bf05]                                 ; $76ec: $fa $05 $bf
    ld b, b                                       ; $76ef: $40
    ld a, [hl+]                                   ; $76f0: $2a
    push de                                       ; $76f1: $d5
    nop                                           ; $76f2: $00
    rst $38                                       ; $76f3: $ff
    nop                                           ; $76f4: $00
    cp l                                          ; $76f5: $bd
    ld b, d                                       ; $76f6: $42
    rst $38                                       ; $76f7: $ff
    nop                                           ; $76f8: $00
    ei                                            ; $76f9: $fb
    inc b                                         ; $76fa: $04
    nop                                           ; $76fb: $00
    cp a                                          ; $76fc: $bf
    ld b, b                                       ; $76fd: $40
    cp e                                          ; $76fe: $bb
    ld b, h                                       ; $76ff: $44
    ei                                            ; $7700: $fb
    inc b                                         ; $7701: $04
    xor a                                         ; $7702: $af
    ld d, b                                       ; $7703: $50
    add c                                         ; $7704: $81
    and b                                         ; $7705: $a0
    dec sp                                        ; $7706: $3b
    rst $00                                       ; $7707: $c7
    ccf                                           ; $7708: $3f
    add a                                         ; $7709: $87
    ld a, a                                       ; $770a: $7f
    rrca                                          ; $770b: $0f
    rst $38                                       ; $770c: $ff

jr_0bc_770d:
    ld [hl], b                                    ; $770d: $70
    ld h, c                                       ; $770e: $61
    ld c, c                                       ; $770f: $49
    rst $38                                       ; $7710: $ff
    ld [hl], b                                    ; $7711: $70
    ld h, c                                       ; $7712: $61
    rst $38                                       ; $7713: $ff
    ld l, a                                       ; $7714: $6f
    ld c, [hl]                                    ; $7715: $4e
    daa                                           ; $7716: $27
    ld [c], a                                     ; $7717: $e2
    db $fd                                        ; $7718: $fd
    ld l, b                                       ; $7719: $68
    jr jr_0bc_769c                                ; $771a: $18 $80

    jr z, jr_0bc_772c                             ; $771c: $28 $0e

    push bc                                       ; $771e: $c5
    ld a, [$e29d]                                 ; $771f: $fa $9d $e2
    ld e, a                                       ; $7722: $5f
    and b                                         ; $7723: $a0
    rst $38                                       ; $7724: $ff
    ld b, b                                       ; $7725: $40
    nop                                           ; $7726: $00
    ld l, b                                       ; $7727: $68
    ld [$7f84], sp                                ; $7728: $08 $84 $7f
    reti                                          ; $772b: $d9


jr_0bc_772c:
    ld h, $9d                                     ; $772c: $26 $9d
    ld h, d                                       ; $772e: $62
    ret nz                                        ; $772f: $c0

    ld h, h                                       ; $7730: $64
    ld [$1868], sp                                ; $7731: $08 $68 $18
    sbc $21                                       ; $7734: $de $21
    cp $01                                        ; $7736: $fe $01
    ld a, [hl]                                    ; $7738: $7e
    add c                                         ; $7739: $81
    nop                                           ; $773a: $00
    cp $01                                        ; $773b: $fe $01
    rst $38                                       ; $773d: $ff
    nop                                           ; $773e: $00
    cp $01                                        ; $773f: $fe $01
    xor $11                                       ; $7741: $ee $11
    nop                                           ; $7743: $00
    ld a, [$8b05]                                 ; $7744: $fa $05 $8b
    ld [hl], h                                    ; $7747: $74
    dec hl                                        ; $7748: $2b
    call nc, $d42b                                ; $7749: $d4 $2b $d4
    nop                                           ; $774c: $00
    add hl, bc                                    ; $774d: $09
    or $01                                        ; $774e: $f6 $01
    cp $88                                        ; $7750: $fe $88
    rst $30                                       ; $7752: $f7
    add hl, bc                                    ; $7753: $09
    or $00                                        ; $7754: $f6 $00
    add b                                         ; $7756: $80
    rst $38                                       ; $7757: $ff
    xor [hl]                                      ; $7758: $ae
    ld d, c                                       ; $7759: $51
    adc a                                         ; $775a: $8f
    ld [hl], b                                    ; $775b: $70
    rlca                                          ; $775c: $07
    ld hl, sp+$00                                 ; $775d: $f8 $00
    inc de                                        ; $775f: $13
    db $ec                                        ; $7760: $ec
    ld de, $11ee                                  ; $7761: $11 $ee $11
    xor $10                                       ; $7764: $ee $10
    rst $28                                       ; $7766: $ef
    rrca                                          ; $7767: $0f
    dec d                                         ; $7768: $15
    xor $ff                                       ; $7769: $ee $ff
    call $1952                                    ; $776b: $cd $52 $19
    ld d, b                                       ; $776e: $50
    add hl, de                                    ; $776f: $19
    or [hl]                                       ; $7770: $b6
    inc b                                         ; $7771: $04
    ld [$2110], a                                 ; $7772: $ea $10 $21
    cp $0f                                        ; $7775: $fe $0f
    sub b                                         ; $7777: $90
    ld b, $ff                                     ; $7778: $06 $ff
    push hl                                       ; $777a: $e5
    rst $38                                       ; $777b: $ff
    cp l                                          ; $777c: $bd
    ld d, b                                       ; $777d: $50
    ld hl, $1e1f                                  ; $777e: $21 $1f $1e
    rst $38                                       ; $7781: $ff
    inc b                                         ; $7782: $04
    ld d, b                                       ; $7783: $50

jr_0bc_7784:
    ld bc, $0868                                  ; $7784: $01 $68 $08
    add sp, $28                                   ; $7787: $e8 $28
    ld l, b                                       ; $7789: $68
    jr z, @-$16                                   ; $778a: $28 $e8

    jr z, jr_0bc_778e                             ; $778c: $28 $00

jr_0bc_778e:
    adc e                                         ; $778e: $8b
    ld [hl], h                                    ; $778f: $74
    xor e                                         ; $7790: $ab
    ld d, h                                       ; $7791: $54
    adc e                                         ; $7792: $8b
    ld [hl], h                                    ; $7793: $74
    add hl, bc                                    ; $7794: $09
    or $c0                                        ; $7795: $f6 $c0
    add sp, $28                                   ; $7797: $e8 $28
    ld l, b                                       ; $7799: $68
    jr z, @-$14                                   ; $779a: $28 $ea

    dec d                                         ; $779c: $15
    ld [$aa15], a                                 ; $779d: $ea $15 $aa

jr_0bc_77a0:
    ld d, l                                       ; $77a0: $55
    nop                                           ; $77a1: $00
    add sp, $17                                   ; $77a2: $e8 $17
    xor d                                         ; $77a4: $aa
    ld d, l                                       ; $77a5: $55
    xor b                                         ; $77a6: $a8
    ld d, a                                       ; $77a7: $57
    xor d                                         ; $77a8: $aa
    ld d, a                                       ; $77a9: $57
    dec b                                         ; $77aa: $05
    jr z, jr_0bc_7784                             ; $77ab: $28 $d7

jr_0bc_77ad:
    add b                                         ; $77ad: $80
    rst $38                                       ; $77ae: $ff
    and b                                         ; $77af: $a0
    ld [bc], a                                    ; $77b0: $02
    db $10                                        ; $77b1: $10
    or c                                          ; $77b2: $b1
    cp d                                          ; $77b3: $ba
    rlca                                          ; $77b4: $07
    ld b, b                                       ; $77b5: $40
    ld a, [$05e8]                                 ; $77b6: $fa $e8 $05
    ld b, c                                       ; $77b9: $41
    cp $15                                        ; $77ba: $fe $15
    xor $45                                       ; $77bc: $ee $45
    cp $11                                        ; $77be: $fe $11
    ld b, h                                       ; $77c0: $44
    rst $38                                       ; $77c1: $ff
    ld h, l                                       ; $77c2: $65
    inc b                                         ; $77c3: $04
    nop                                           ; $77c4: $00
    halt                                          ; $77c5: $76
    rst $38                                       ; $77c6: $ff
    or $e8                                        ; $77c7: $f6 $e8
    jr nc, jr_0bc_77ad                            ; $77c9: $30 $e2

    ld d, b                                       ; $77cb: $50
    add hl, hl                                    ; $77cc: $29
    ret z                                         ; $77cd: $c8

    jr z, jr_0bc_7818                             ; $77ce: $28 $48

    jr z, @+$03                                   ; $77d0: $28 $01

jr_0bc_77d2:
    cp $08                                        ; $77d2: $fe $08
    ret z                                         ; $77d4: $c8

    stop                                          ; $77d5: $10 $00
    ldh [rOBP0], a                                ; $77d7: $e0 $48
    jr nz, @-$36                                  ; $77d9: $20 $c8

    jr z, jr_0bc_7825                             ; $77db: $28 $48

    jr z, jr_0bc_7809                             ; $77dd: $28 $2a

    rst $10                                       ; $77df: $d7
    ld a, [bc]                                    ; $77e0: $0a
    rst $30                                       ; $77e1: $f7
    ld a, [hl+]                                   ; $77e2: $2a
    add d                                         ; $77e3: $82
    ld [bc], a                                    ; $77e4: $02
    nop                                           ; $77e5: $00
    ld [hl+], a                                   ; $77e6: $22
    rst $38                                       ; $77e7: $ff
    ld h, $ff                                     ; $77e8: $26 $ff
    ld a, [hl+]                                   ; $77ea: $2a
    ld [bc], a                                    ; $77eb: $02
    nop                                           ; $77ec: $00
    jp nc, Jump_000_0288                          ; $77ed: $d2 $88 $02

    nop                                           ; $77f0: $00
    sub a                                         ; $77f1: $97
    rst $38                                       ; $77f2: $ff
    or e                                          ; $77f3: $b3

jr_0bc_77f4:
    ld [bc], a                                    ; $77f4: $02
    nop                                           ; $77f5: $00
    or a                                          ; $77f6: $b7
    rst $38                                       ; $77f7: $ff
    cp a                                          ; $77f8: $bf
    ld [hl+], a                                   ; $77f9: $22
    rst $38                                       ; $77fa: $ff
    rst $10                                       ; $77fb: $d7
    call nz, $e602                                ; $77fc: $c4 $02 $e6
    rst $38                                       ; $77ff: $ff
    or d                                          ; $7800: $b2
    ld [bc], a                                    ; $7801: $02
    db $10                                        ; $7802: $10
    cp d                                          ; $7803: $ba
    rlca                                          ; $7804: $07
    rst $38                                       ; $7805: $ff
    cp [hl]                                       ; $7806: $be
    rst $38                                       ; $7807: $ff
    cp e                                          ; $7808: $bb

jr_0bc_7809:
    rst $38                                       ; $7809: $ff
    nop                                           ; $780a: $00
    dec sp                                        ; $780b: $3b
    ld a, b                                       ; $780c: $78
    ld a, [de]                                    ; $780d: $1a
    ret z                                         ; $780e: $c8

    ld [$0b3f], sp                                ; $780f: $08 $3f $0b
    db $f4                                        ; $7812: $f4
    jr nc, jr_0bc_784e                            ; $7813: $30 $39

    cp b                                          ; $7815: $b8
    jr z, jr_0bc_7870                             ; $7816: $28 $58

jr_0bc_7818:
    jr z, jr_0bc_77d2                             ; $7818: $28 $b8

    jr z, jr_0bc_7874                             ; $781a: $28 $58

    jr z, @-$46                                   ; $781c: $28 $b8

    jr z, jr_0bc_77a0                             ; $781e: $28 $80

    ld e, b                                       ; $7820: $58
    jr z, jr_0bc_7891                             ; $7821: $28 $6e

    rst $38                                       ; $7823: $ff
    ld l, d                                       ; $7824: $6a

jr_0bc_7825:
    rst $38                                       ; $7825: $ff
    ld l, e                                       ; $7826: $6b
    rst $38                                       ; $7827: $ff
    ld [$ff00], a                                 ; $7828: $ea $00 $ff
    ld c, e                                       ; $782b: $4b
    rst $38                                       ; $782c: $ff
    rst $08                                       ; $782d: $cf
    rst $38                                       ; $782e: $ff
    set 7, a                                      ; $782f: $cb $ff
    xor a                                         ; $7831: $af
    or l                                          ; $7832: $b5
    ld l, b                                       ; $7833: $68
    jr nc, jr_0bc_77f4                            ; $7834: $30 $be

    db $fc                                        ; $7836: $fc
    rlca                                          ; $7837: $07
    dec c                                         ; $7838: $0d
    dec c                                         ; $7839: $0d
    rst $18                                       ; $783a: $df
    db $f4                                        ; $783b: $f4
    rlca                                          ; $783c: $07
    db $db                                        ; $783d: $db
    ld [bc], a                                    ; $783e: $02
    nop                                           ; $783f: $00
    ld h, b                                       ; $7840: $60
    ei                                            ; $7841: $fb
    or $0e                                        ; $7842: $f6 $0e
    sbc $07                                       ; $7844: $de $07
    call nc, $c02b                                ; $7846: $d4 $2b $c0
    ccf                                           ; $7849: $3f
    ld [de], a                                    ; $784a: $12
    add b                                         ; $784b: $80
    and $0f                                       ; $784c: $e6 $0f

jr_0bc_784e:
    sbc e                                         ; $784e: $9b
    dec b                                         ; $784f: $05
    nop                                           ; $7850: $00
    rst $28                                       ; $7851: $ef
    nop                                           ; $7852: $00
    rst $38                                       ; $7853: $ff
    adc c                                         ; $7854: $89
    and d                                         ; $7855: $a2
    ret nc                                        ; $7856: $d0

    ld a, [hl+]                                   ; $7857: $2a
    ld a, h                                       ; $7858: $7c
    inc b                                         ; $7859: $04
    rlca                                          ; $785a: $07
    ret nz                                        ; $785b: $c0

    rst $38                                       ; $785c: $ff
    add h                                         ; $785d: $84
    ret nc                                        ; $785e: $d0

    ld [hl+], a                                   ; $785f: $22
    sbc [hl]                                      ; $7860: $9e
    add c                                         ; $7861: $81
    ld a, [bc]                                    ; $7862: $0a
    nop                                           ; $7863: $00
    jr @-$17                                      ; $7864: $18 $e7

    dec c                                         ; $7866: $0d
    ld a, [c]                                     ; $7867: $f2
    nop                                           ; $7868: $00
    rst $38                                       ; $7869: $ff
    add b                                         ; $786a: $80
    ld c, c                                       ; $786b: $49
    ld [$8976], sp                                ; $786c: $08 $76 $89
    nop                                           ; $786f: $00

jr_0bc_7870:
    rst $38                                       ; $7870: $ff
    add b                                         ; $7871: $80
    add hl, sp                                    ; $7872: $39
    inc hl                                        ; $7873: $23

jr_0bc_7874:
    call c, Call_000_100b                         ; $7874: $dc $0b $10
    db $f4                                        ; $7877: $f4
    nop                                           ; $7878: $00
    rst $38                                       ; $7879: $ff
    add b                                         ; $787a: $80
    add hl, sp                                    ; $787b: $39
    adc [hl]                                      ; $787c: $8e
    ld [hl], c                                    ; $787d: $71
    ld b, h                                       ; $787e: $44
    ei                                            ; $787f: $fb
    nop                                           ; $7880: $00
    ld h, c                                       ; $7881: $61
    rst $38                                       ; $7882: $ff
    ld [$ca15], a                                 ; $7883: $ea $15 $ca
    dec [hl]                                      ; $7886: $35
    add d                                         ; $7887: $82
    ld a, l                                       ; $7888: $7d
    nop                                           ; $7889: $00
    ret z                                         ; $788a: $c8

    scf                                           ; $788b: $37
    add d                                         ; $788c: $82
    ld a, l                                       ; $788d: $7d
    and b                                         ; $788e: $a0
    ld a, a                                       ; $788f: $7f
    ld [hl+], a                                   ; $7890: $22

jr_0bc_7891:
    rst $38                                       ; $7891: $ff
    jr nz, jr_0bc_78b6                            ; $7892: $20 $22

    rst $38                                       ; $7894: $ff
    add b                                         ; $7895: $80
    add hl, de                                    ; $7896: $19
    and d                                         ; $7897: $a2
    rst $38                                       ; $7898: $ff
    or b                                          ; $7899: $b0
    rst $38                                       ; $789a: $ff
    ld a, [c]                                     ; $789b: $f2
    xor l                                         ; $789c: $ad
    add b                                         ; $789d: $80
    ld bc, $80fa                                  ; $789e: $01 $fa $80
    ld d, c                                       ; $78a1: $51
    or $80                                        ; $78a2: $f6 $80
    ld bc, $0938                                  ; $78a4: $01 $38 $09
    dec hl                                        ; $78a7: $2b
    ld a, [hl-]                                   ; $78a8: $3a
    ld bc, $6f7c                                  ; $78a9: $01 $7c $6f
    db $ec                                        ; $78ac: $ec
    rlca                                          ; $78ad: $07
    ld a, h                                       ; $78ae: $7c
    ld a, [bc]                                    ; $78af: $0a
    jr c, @+$2b                                   ; $78b0: $38 $29

    cp b                                          ; $78b2: $b8
    ld [$08bc], sp                                ; $78b3: $08 $bc $08

jr_0bc_78b6:
    add b                                         ; $78b6: $80
    ld [bc], a                                    ; $78b7: $02
    ld h, e                                       ; $78b8: $63
    ld bc, $0020                                  ; $78b9: $01 $20 $00
    rst $38                                       ; $78bc: $ff
    ld [bc], a                                    ; $78bd: $02
    ld a, b                                       ; $78be: $78
    ld b, b                                       ; $78bf: $40

jr_0bc_78c0:
    rst $38                                       ; $78c0: $ff

jr_0bc_78c1:
    ld b, b                                       ; $78c1: $40
    cp a                                          ; $78c2: $bf
    ret nz                                        ; $78c3: $c0

    ld b, d                                       ; $78c4: $42
    ccf                                           ; $78c5: $3f
    ld a, [de]                                    ; $78c6: $1a
    jr @-$1c                                      ; $78c7: $18 $e2

    dec a                                         ; $78c9: $3d
    add d                                         ; $78ca: $82
    ld a, l                                       ; $78cb: $7d
    ld [bc], a                                    ; $78cc: $02
    ld [$40ef], sp                                ; $78cd: $08 $ef $40
    jr c, jr_0bc_78fc                             ; $78d0: $38 $2a

    jr @+$11                                      ; $78d2: $18 $0f

    ldh a, [$0d]                                  ; $78d4: $f0 $0d
    ld a, [c]                                     ; $78d6: $f2
    dec c                                         ; $78d7: $0d
    di                                            ; $78d8: $f3
    ld [$f30c], sp                                ; $78d9: $08 $0c $f3
    ccf                                           ; $78dc: $3f
    pop hl                                        ; $78dd: $e1
    ld a, [hl-]                                   ; $78de: $3a
    jr jr_0bc_78c1                                ; $78df: $18 $e0

    ld e, a                                       ; $78e1: $5f
    ldh [rSC], a                                  ; $78e2: $e0 $02
    rra                                           ; $78e4: $1f
    ldh [$9f], a                                  ; $78e5: $e0 $9f
    ld h, b                                       ; $78e7: $60
    rst $18                                       ; $78e8: $df
    jr nz, jr_0bc_7933                            ; $78e9: $20 $48

    ld [hl], b                                    ; $78eb: $70
    sbc a                                         ; $78ec: $9f
    nop                                           ; $78ed: $00
    ldh a, [rDIV]                                 ; $78ee: $f0 $04

jr_0bc_78f0:
    ei                                            ; $78f0: $fb
    dec b                                         ; $78f1: $05
    ei                                            ; $78f2: $fb
    inc de                                        ; $78f3: $13
    xor $11                                       ; $78f4: $ee $11
    inc b                                         ; $78f6: $04
    rst $28                                       ; $78f7: $ef
    db $10                                        ; $78f8: $10
    rst $28                                       ; $78f9: $ef
    ld a, h                                       ; $78fa: $7c
    rst $00                                       ; $78fb: $c7

jr_0bc_78fc:
    ld l, b                                       ; $78fc: $68
    jr z, jr_0bc_78c0                             ; $78fd: $28 $c1

    ld a, [hl]                                    ; $78ff: $7e
    ld [bc], a                                    ; $7900: $02
    jp $e73e                                      ; $7901: $c3 $3e $e7


    cp l                                          ; $7904: $bd
    ld a, [hl]                                    ; $7905: $7e
    jp $5878                                      ; $7906: $c3 $78 $58


    add b                                         ; $7909: $80
    add b                                         ; $790a: $80
    add [hl]                                      ; $790b: $86
    jr nc, jr_0bc_798c                            ; $790c: $30 $7e

    jp $bd66                                      ; $790e: $c3 $66 $bd


    ld b, d                                       ; $7911: $42
    cp l                                          ; $7912: $bd
    rst $30                                       ; $7913: $f7
    ld b, b                                       ; $7914: $40
    inc e                                         ; $7915: $1c
    sbc b                                         ; $7916: $98
    jr z, jr_0bc_7995                             ; $7917: $28 $7c

    srl h                                         ; $7919: $cb $3c
    db $e3                                        ; $791b: $e3
    inc e                                         ; $791c: $1c
    di                                            ; $791d: $f3
    db $10                                        ; $791e: $10
    adc l                                         ; $791f: $8d
    ei                                            ; $7920: $fb
    inc b                                         ; $7921: $04
    xor b                                         ; $7922: $a8
    jr nz, jr_0bc_7957                            ; $7923: $20 $32

    call $dd72                                    ; $7925: $cd $72 $dd
    ld [$bde2], sp                                ; $7928: $08 $e2 $bd
    rst $08                                       ; $792b: $cf
    ld a, b                                       ; $792c: $78
    cp b                                          ; $792d: $b8
    jr z, jr_0bc_78f0                             ; $792e: $28 $c0

    cp a                                          ; $7930: $bf
    ld h, b                                       ; $7931: $60
    ld [bc], a                                    ; $7932: $02

jr_0bc_7933:
    cp a                                          ; $7933: $bf
    ld [hl], c                                    ; $7934: $71
    rst $18                                       ; $7935: $df
    ccf                                           ; $7936: $3f
    ldh [rIF], a                                  ; $7937: $e0 $0f
    ret z                                         ; $7939: $c8

    jr nc, @+$21                                  ; $793a: $30 $1f

    ld [de], a                                    ; $793c: $12
    pop af                                        ; $793d: $f1
    inc b                                         ; $793e: $04
    ei                                            ; $793f: $fb
    ld [bc], a                                    ; $7940: $02
    ld [$f11f], sp                                ; $7941: $08 $1f $f1
    call c, $3c08                                 ; $7944: $dc $08 $3c
    nop                                           ; $7947: $00

jr_0bc_7948:
    rst $20                                       ; $7948: $e7
    ld a, b                                       ; $7949: $78
    rst $08                                       ; $794a: $cf
    pop af                                        ; $794b: $f1
    sbc a                                         ; $794c: $9f
    pop hl                                        ; $794d: $e1
    ld a, $ff                                     ; $794e: $3e $ff
    ld [$0100], sp                                ; $7950: $08 $00 $01
    cp $01                                        ; $7953: $fe $01
    db $ec                                        ; $7955: $ec
    nop                                           ; $7956: $00

jr_0bc_7957:
    ld d, b                                       ; $7957: $50
    xor a                                         ; $7958: $af
    ld [hl], b                                    ; $7959: $70
    ld bc, $548f                                  ; $795a: $01 $8f $54
    xor a                                         ; $795d: $af
    ld d, l                                       ; $795e: $55
    cp e                                          ; $795f: $bb
    db $fd                                        ; $7960: $fd
    ld [bc], a                                    ; $7961: $02
    ld a, [$0018]                                 ; $7962: $fa $18 $00
    jr nz, @-$1f                                  ; $7965: $20 $df

    jr nz, jr_0bc_7948                            ; $7967: $20 $df

    inc h                                         ; $7969: $24
    rst $18                                       ; $796a: $df
    inc h                                         ; $796b: $24

jr_0bc_796c:
    db $db                                        ; $796c: $db
    jr nc, jr_0bc_796c                            ; $796d: $30 $fd

    add e                                         ; $796f: $83
    ld [hl], $00                                  ; $7970: $36 $00
    jr nz, jr_0bc_79a4                            ; $7972: $20 $30

    ld d, h                                       ; $7974: $54
    cp e                                          ; $7975: $bb
    db $fc                                        ; $7976: $fc
    inc bc                                        ; $7977: $03
    ret nz                                        ; $7978: $c0

    ld a, [de]                                    ; $7979: $1a
    add hl, de                                    ; $797a: $19
    ld a, [hl]                                    ; $797b: $7e
    ld [$f30c], sp                                ; $797c: $08 $0c $f3
    inc e                                         ; $797f: $1c
    di                                            ; $7980: $f3
    db $fd                                        ; $7981: $fd
    ld h, a                                       ; $7982: $67
    jr nz, @-$06                                  ; $7983: $20 $f8

    rrca                                          ; $7985: $0f
    inc l                                         ; $7986: $2c
    add hl, bc                                    ; $7987: $09
    dec b                                         ; $7988: $05
    ld a, [$f807]                                 ; $7989: $fa $07 $f8

jr_0bc_798c:
    ld b, l                                       ; $798c: $45
    nop                                           ; $798d: $00
    ld a, [$bb45]                                 ; $798e: $fa $45 $bb
    rst $18                                       ; $7991: $df
    jr nc, jr_0bc_79d4                            ; $7992: $30 $40

    cp a                                          ; $7994: $bf

jr_0bc_7995:
    ld b, b                                       ; $7995: $40
    add b                                         ; $7996: $80
    inc a                                         ; $7997: $3c
    ld de, $ff02                                  ; $7998: $11 $02 $ff
    ld [bc], a                                    ; $799b: $02
    db $fd                                        ; $799c: $fd
    inc bc                                        ; $799d: $03
    db $fd                                        ; $799e: $fd
    inc bc                                        ; $799f: $03
    add hl, hl                                    ; $79a0: $29
    db $fc                                        ; $79a1: $fc
    inc bc                                        ; $79a2: $03
    ld c, d                                       ; $79a3: $4a

jr_0bc_79a4:
    ld b, c                                       ; $79a4: $41
    jr nz, jr_0bc_79ff                            ; $79a5: $20 $58

    nop                                           ; $79a7: $00
    ldh [$1f], a                                  ; $79a8: $e0 $1f
    ld e, h                                       ; $79aa: $5c
    nop                                           ; $79ab: $00
    add b                                         ; $79ac: $80
    jp c, $8000                                   ; $79ad: $da $00 $80

    ld a, a                                       ; $79b0: $7f
    ret nz                                        ; $79b1: $c0

    ld a, a                                       ; $79b2: $7f
    ld [hl], b                                    ; $79b3: $70
    sbc a                                         ; $79b4: $9f
    ret nz                                        ; $79b5: $c0

    nop                                           ; $79b6: $00
    cp a                                          ; $79b7: $bf
    rst $08                                       ; $79b8: $cf
    ld a, b                                       ; $79b9: $78
    ld b, d                                       ; $79ba: $42
    cp l                                          ; $79bb: $bd
    ld [bc], a                                    ; $79bc: $02
    db $fd                                        ; $79bd: $fd
    stop                                          ; $79be: $10 $00
    rst $38                                       ; $79c0: $ff
    ld de, $f1ef                                  ; $79c1: $11 $ef $f1
    ld c, $1f                                     ; $79c4: $0e $1f
    jp hl                                         ; $79c6: $e9


    ld [de], a                                    ; $79c7: $12
    inc b                                         ; $79c8: $04
    db $fd                                        ; $79c9: $fd
    inc bc                                        ; $79ca: $03
    cp $03                                        ; $79cb: $fe $03
    db $fd                                        ; $79cd: $fd
    ld a, [hl]                                    ; $79ce: $7e
    add hl, de                                    ; $79cf: $19
    ccf                                           ; $79d0: $3f
    ldh [rLCDC], a                                ; $79d1: $e0 $40
    inc c                                         ; $79d3: $0c

jr_0bc_79d4:
    ld d, d                                       ; $79d4: $52
    ld bc, $f30c                                  ; $79d5: $01 $0c $f3
    dec c                                         ; $79d8: $0d
    di                                            ; $79d9: $f3
    dec c                                         ; $79da: $0d
    ld a, [c]                                     ; $79db: $f2
    sub d                                         ; $79dc: $92
    sub b                                         ; $79dd: $90
    add hl, hl                                    ; $79de: $29
    ld hl, sp-$71                                 ; $79df: $f8 $8f
    sbc d                                         ; $79e1: $9a
    ld [$dfa0], sp                                ; $79e2: $08 $a0 $df
    and b                                         ; $79e5: $a0
    add hl, de                                    ; $79e6: $19
    ld a, b                                       ; $79e7: $78
    nop                                           ; $79e8: $00
    rst $08                                       ; $79e9: $cf
    call c, $1e67                                 ; $79ea: $dc $67 $1e
    db $e3                                        ; $79ed: $e3
    rra                                           ; $79ee: $1f
    jp hl                                         ; $79ef: $e9


    rla                                           ; $79f0: $17
    ld b, e                                       ; $79f1: $43
    db $ec                                        ; $79f2: $ec
    or b                                          ; $79f3: $b0
    add hl, hl                                    ; $79f4: $29
    rst $20                                       ; $79f5: $e7
    inc a                                         ; $79f6: $3c
    pop bc                                        ; $79f7: $c1
    ld a, [hl]                                    ; $79f8: $7e
    ld [bc], a                                    ; $79f9: $02
    ld [$29c0], sp                                ; $79fa: $08 $c0 $29
    jr nz, jr_0bc_7a02                            ; $79fd: $20 $03

jr_0bc_79ff:
    cp $ca                                        ; $79ff: $fe $ca
    ld e, c                                       ; $7a01: $59

jr_0bc_7a02:
    ld a, $e3                                     ; $7a02: $3e $e3
    inc e                                         ; $7a04: $1c
    rst $30                                       ; $7a05: $f7
    inc a                                         ; $7a06: $3c
    db $10                                        ; $7a07: $10
    db $eb                                        ; $7a08: $eb
    ld h, $db                                     ; $7a09: $26 $db
    adc [hl]                                      ; $7a0b: $8e
    ld sp, $c4f1                                  ; $7a0c: $31 $f1 $c4
    ld a, e                                       ; $7a0f: $7b
    db $e4                                        ; $7a10: $e4
    db $10                                        ; $7a11: $10
    dec sp                                        ; $7a12: $3b
    db $f4                                        ; $7a13: $f4
    sbc e                                         ; $7a14: $9b
    add $21                                       ; $7a15: $c6 $21
    ld sp, hl                                     ; $7a17: $f9
    jp $f37c                                      ; $7a18: $c3 $7c $f3


    inc b                                         ; $7a1b: $04
    sbc h                                         ; $7a1c: $9c
    ld [hl], e                                    ; $7a1d: $73
    call $cd32                                    ; $7a1e: $cd $32 $cd
    nop                                           ; $7a21: $00
    ld a, [hl+]                                   ; $7a22: $2a
    ccf                                           ; $7a23: $3f
    ldh [rP1], a                                  ; $7a24: $e0 $00
    ld [hl], b                                    ; $7a26: $70
    rst $18                                       ; $7a27: $df
    ld h, b                                       ; $7a28: $60
    cp a                                          ; $7a29: $bf
    ret nz                                        ; $7a2a: $c0

    cp a                                          ; $7a2b: $bf
    nop                                           ; $7a2c: $00
    rst $38                                       ; $7a2d: $ff
    nop                                           ; $7a2e: $00
    inc b                                         ; $7a2f: $04
    rst $38                                       ; $7a30: $ff
    inc c                                         ; $7a31: $0c
    ei                                            ; $7a32: $fb
    ld c, $f3                                     ; $7a33: $0e $f3
    cp e                                          ; $7a35: $bb
    ld c, h                                       ; $7a36: $4c
    ld [bc], a                                    ; $7a37: $02
    sub [hl]                                      ; $7a38: $96
    db $ed                                        ; $7a39: $ed
    ld e, $f3                                     ; $7a3a: $1e $f3
    ld a, [de]                                    ; $7a3c: $1a
    db $ed                                        ; $7a3d: $ed
    sbc [hl]                                      ; $7a3e: $9e
    add hl, de                                    ; $7a3f: $19
    add b                                         ; $7a40: $80
    nop                                           ; $7a41: $00
    ld a, a                                       ; $7a42: $7f
    rst $38                                       ; $7a43: $ff
    nop                                           ; $7a44: $00
    add a                                         ; $7a45: $87
    ld a, h                                       ; $7a46: $7c
    adc a                                         ; $7a47: $8f
    ld sp, hl                                     ; $7a48: $f9
    ld e, $60                                     ; $7a49: $1e $60
    di                                            ; $7a4b: $f3
    jr nc, jr_0bc_7a68                            ; $7a4c: $30 $1a

jr_0bc_7a4e:
    db $f4                                        ; $7a4e: $f4
    ld [$01fe], sp                                ; $7a4f: $08 $fe $01
    ld b, d                                       ; $7a52: $42
    cp l                                          ; $7a53: $bd
    ld d, d                                       ; $7a54: $52
    add b                                         ; $7a55: $80
    jr nc, jr_0bc_7a58                            ; $7a56: $30 $00

jr_0bc_7a58:
    ld [$f8f7], sp                                ; $7a58: $08 $f7 $f8

jr_0bc_7a5b:
    rlca                                          ; $7a5b: $07

jr_0bc_7a5c:
    ld [$00f7], sp                                ; $7a5c: $08 $f7 $00
    ld bc, $81ff                                  ; $7a5f: $01 $ff $81
    rst $38                                       ; $7a62: $ff
    ldh a, [$1f]                                  ; $7a63: $f0 $1f
    db $fc                                        ; $7a65: $fc
    add a                                         ; $7a66: $87
    ld d, b                                       ; $7a67: $50

jr_0bc_7a68:
    ld a, [bc]                                    ; $7a68: $0a
    ld l, c                                       ; $7a69: $69
    ld bc, $008e                                  ; $7a6a: $01 $8e $00
    db $10                                        ; $7a6d: $10
    ld bc, $94fc                                  ; $7a6e: $01 $fc $94
    ld [$7fc0], sp                                ; $7a71: $08 $c0 $7f
    xor b                                         ; $7a74: $a8
    ld hl, $08e0                                  ; $7a75: $21 $e0 $08
    jr nz, @+$22                                  ; $7a78: $20 $20

    ld b, d                                       ; $7a7a: $42
    xor b                                         ; $7a7b: $a8
    ld de, $01d0                                  ; $7a7c: $11 $d0 $01
    add hl, bc                                    ; $7a7f: $09
    ld bc, $0020                                  ; $7a80: $01 $20 $00
    rst $38                                       ; $7a83: $ff
    ld [bc], a                                    ; $7a84: $02
    ld e, b                                       ; $7a85: $58
    inc h                                         ; $7a86: $24
    rst $18                                       ; $7a87: $df
    inc h                                         ; $7a88: $24
    db $db                                        ; $7a89: $db
    db $fc                                        ; $7a8a: $fc
    ld [$0483], sp                                ; $7a8b: $08 $83 $04
    ei                                            ; $7a8e: $fb
    inc b                                         ; $7a8f: $04
    jr @+$22                                      ; $7a90: $18 $20

    jr c, jr_0bc_7a5b                             ; $7a92: $38 $c7

    ld a, [hl+]                                   ; $7a94: $2a
    inc b                                         ; $7a95: $04
    rst $10                                       ; $7a96: $d7
    ld a, [hl+]                                   ; $7a97: $2a
    db $dd                                        ; $7a98: $dd
    cp $81                                        ; $7a99: $fe $81
    jr z, jr_0bc_7ac5                             ; $7a9b: $28 $28

    db $fc                                        ; $7a9d: $fc
    rlca                                          ; $7a9e: $07
    ld c, b                                       ; $7a9f: $48
    ldh [$32], a                                  ; $7aa0: $e0 $32
    nop                                           ; $7aa2: $00
    ret nz                                        ; $7aa3: $c0

    ld a, a                                       ; $7aa4: $7f
    jr c, jr_0bc_7acf                             ; $7aa5: $38 $28

    ld [hl], c                                    ; $7aa7: $71
    adc $31                                       ; $7aa8: $ce $31
    inc b                                         ; $7aaa: $04
    xor $b1                                       ; $7aab: $ee $b1
    xor $e7                                       ; $7aad: $ee $e7
    inc e                                         ; $7aaf: $1c
    ld c, b                                       ; $7ab0: $48
    jr z, @+$04                                   ; $7ab1: $28 $02

    rst $38                                       ; $7ab3: $ff
    ld bc, $fd02                                  ; $7ab4: $01 $02 $fd
    inc bc                                        ; $7ab7: $03
    db $fc                                        ; $7ab8: $fc
    inc bc                                        ; $7ab9: $03
    db $fd                                        ; $7aba: $fd
    ld [bc], a                                    ; $7abb: $02
    ld e, b                                       ; $7abc: $58
    jr nz, jr_0bc_7abf                            ; $7abd: $20 $00

jr_0bc_7abf:
    db $f4                                        ; $7abf: $f4
    sbc e                                         ; $7ac0: $9b
    ld a, h                                       ; $7ac1: $7c
    srl h                                         ; $7ac2: $cb $3c
    db $e3                                        ; $7ac4: $e3

jr_0bc_7ac5:
    inc e                                         ; $7ac5: $1c
    di                                            ; $7ac6: $f3
    ld b, b                                       ; $7ac7: $40
    adc h                                         ; $7ac8: $8c
    ld d, d                                       ; $7ac9: $52
    jr nz, jr_0bc_7a4e                            ; $7aca: $20 $82

    ld a, l                                       ; $7acc: $7d
    and d                                         ; $7acd: $a2
    ld a, l                                       ; $7ace: $7d

jr_0bc_7acf:
    and d                                         ; $7acf: $a2
    db $dd                                        ; $7ad0: $dd
    add hl, bc                                    ; $7ad1: $09
    ld [c], a                                     ; $7ad2: $e2
    dec e                                         ; $7ad3: $1d
    rrca                                          ; $7ad4: $0f
    ld hl, sp+$7a                                 ; $7ad5: $f8 $7a
    jr jr_0bc_7a5c                                ; $7ad7: $18 $83

    ld a, h                                       ; $7ad9: $7c
    db $10                                        ; $7ada: $10
    ld [$ef20], sp                                ; $7adb: $08 $20 $ef
    jr jr_0bc_7a68                                ; $7ade: $18 $88

    jr z, jr_0bc_7ae5                             ; $7ae0: $28 $03

    db $fc                                        ; $7ae2: $fc
    ld [bc], a                                    ; $7ae3: $02
    db $fd                                        ; $7ae4: $fd

jr_0bc_7ae5:
    ld [bc], a                                    ; $7ae5: $02
    ld b, b                                       ; $7ae6: $40
    db $fd                                        ; $7ae7: $fd
    ld e, $28                                     ; $7ae8: $1e $28
    nop                                           ; $7aea: $00

jr_0bc_7aeb:
    rst $38                                       ; $7aeb: $ff
    sbc h                                         ; $7aec: $9c
    di                                            ; $7aed: $f3
    adc h                                         ; $7aee: $8c
    ld a, e                                       ; $7aef: $7b
    inc b                                         ; $7af0: $04
    db $ec                                        ; $7af1: $ec
    dec sp                                        ; $7af2: $3b
    ld hl, sp+$47                                 ; $7af3: $f8 $47
    add b                                         ; $7af5: $80
    xor b                                         ; $7af6: $a8
    jr nc, @+$7e                                  ; $7af7: $30 $7c

    rst $00                                       ; $7af9: $c7
    nop                                           ; $7afa: $00
    db $10                                        ; $7afb: $10
    rst $28                                       ; $7afc: $ef
    db $10                                        ; $7afd: $10
    rst $28                                       ; $7afe: $ef
    ld de, $7cef                                  ; $7aff: $11 $ef $7c
    rst $00                                       ; $7b02: $c7
    add b                                         ; $7b03: $80
    cp h                                          ; $7b04: $bc
    ld [$1fe0], sp                                ; $7b05: $08 $e0 $1f
    ldh a, [$df]                                  ; $7b08: $f0 $df
    jr nc, jr_0bc_7aeb                            ; $7b0a: $30 $df

    jr nc, jr_0bc_7b16                            ; $7b0c: $30 $08

    rst $28                                       ; $7b0e: $ef
    cp b                                          ; $7b0f: $b8

Call_0bc_7b10:
    rst $28                                       ; $7b10: $ef
    jr c, jr_0bc_7b25                             ; $7b11: $38 $12

    db $10                                        ; $7b13: $10
    rlca                                          ; $7b14: $07
    ld sp, hl                                     ; $7b15: $f9

jr_0bc_7b16:
    rlca                                          ; $7b16: $07
    ld b, h                                       ; $7b17: $44

jr_0bc_7b18:
    ld hl, sp+$04                                 ; $7b18: $f8 $04
    nop                                           ; $7b1a: $00
    ld sp, hl                                     ; $7b1b: $f9
    rra                                           ; $7b1c: $1f
    ldh a, [$da]                                  ; $7b1d: $f0 $da
    ld c, b                                       ; $7b1f: $48

Call_0bc_7b20:
    ld hl, sp-$71                                 ; $7b20: $f8 $8f
    jr nc, jr_0bc_7b44                            ; $7b22: $30 $20

    rst $18                                       ; $7b24: $df

jr_0bc_7b25:
    ld [bc], a                                    ; $7b25: $02
    jr jr_0bc_7b18                                ; $7b26: $18 $f0

    ld [$ff01], sp                                ; $7b28: $08 $01 $ff
    ld bc, $00fe                                  ; $7b2b: $01 $fe $00
    rst $38                                       ; $7b2e: $ff
    add b                                         ; $7b2f: $80
    ld hl, $29de                                  ; $7b30: $21 $de $29
    rst $18                                       ; $7b33: $df
    jr z, @-$27                                   ; $7b34: $28 $d7

    add b                                         ; $7b36: $80
    sub $28                                       ; $7b37: $d6 $28
    ld e, $f3                                     ; $7b39: $1e $f3
    ld b, $f9                                     ; $7b3b: $06 $f9
    ld b, $fd                                     ; $7b3d: $06 $fd
    ld c, $40                                     ; $7b3f: $0e $40
    ei                                            ; $7b41: $fb
    db $10                                        ; $7b42: $10
    add hl, de                                    ; $7b43: $19

jr_0bc_7b44:
    rst $30                                       ; $7b44: $f7
    inc e                                         ; $7b45: $1c
    ld sp, $81ee                                  ; $7b46: $31 $ee $81
    cp $08                                        ; $7b49: $fe $08
    pop bc                                        ; $7b4b: $c1
    ld a, [hl]                                    ; $7b4c: $7e
    pop af                                        ; $7b4d: $f1
    ld e, $20                                     ; $7b4e: $1e $20
    add hl, de                                    ; $7b50: $19
    ld bc, $03ff                                  ; $7b51: $01 $ff $03
    ld c, b                                       ; $7b54: $48
    cp $d6                                        ; $7b55: $fe $d6
    nop                                           ; $7b57: $00
    cp $01                                        ; $7b58: $fe $01
    ld l, $41                                     ; $7b5a: $2e $41
    sbc a                                         ; $7b5c: $9f
    pop af                                        ; $7b5d: $f1

jr_0bc_7b5e:
    call nz, Call_0bc_7b10                        ; $7b5e: $c4 $10 $7b
    db $e4                                        ; $7b61: $e4
    dec sp                                        ; $7b62: $3b
    ld b, b                                       ; $7b63: $40
    add hl, bc                                    ; $7b64: $09
    db $10                                        ; $7b65: $10
    rst $38                                       ; $7b66: $ff
    db $10                                        ; $7b67: $10
    rst $28                                       ; $7b68: $ef
    nop                                           ; $7b69: $00
    rst $38                                       ; $7b6a: $ff
    add hl, bc                                    ; $7b6b: $09
    inc de                                        ; $7b6c: $13
    db $ec                                        ; $7b6d: $ec
    sub e                                         ; $7b6e: $93
    db $fc                                        ; $7b6f: $fc
    add e                                         ; $7b70: $83
    ld a, l                                       ; $7b71: $7d
    add c                                         ; $7b72: $81
    db $10                                        ; $7b73: $10
    jr nc, jr_0bc_7b7e                            ; $7b74: $30 $08

    ld [de], a                                    ; $7b76: $12
    db $ed                                        ; $7b77: $ed
    sub d                                         ; $7b78: $92
    db $fd                                        ; $7b79: $fd
    add d                                         ; $7b7a: $82
    db $10                                        ; $7b7b: $10

jr_0bc_7b7c:
    db $10                                        ; $7b7c: $10
    add c                                         ; $7b7d: $81

jr_0bc_7b7e:
    or h                                          ; $7b7e: $b4
    ld [$bbcc], sp                                ; $7b7f: $08 $cc $bb
    ldh [$3f], a                                  ; $7b82: $e0 $3f
    ldh a, [$9f]                                  ; $7b84: $f0 $9f
    or h                                          ; $7b86: $b4
    ld [$1000], sp                                ; $7b87: $08 $00 $10
    rst $38                                       ; $7b8a: $ff
    jr nc, jr_0bc_7b7c                            ; $7b8b: $30 $ef

    jr c, jr_0bc_7b5e                             ; $7b8d: $38 $cf

    db $ec                                        ; $7b8f: $ec
    inc sp                                        ; $7b90: $33
    nop                                           ; $7b91: $00
    ld e, c                                       ; $7b92: $59
    or a                                          ; $7b93: $b7
    ld a, b                                       ; $7b94: $78
    rst $08                                       ; $7b95: $cf
    ld l, b                                       ; $7b96: $68
    or a                                          ; $7b97: $b7
    nop                                           ; $7b98: $00
    rst $38                                       ; $7b99: $ff
    add b                                         ; $7b9a: $80
    jp c, Jump_000_3f08                           ; $7b9b: $da $08 $3f

    pop hl                                        ; $7b9e: $e1
    ld c, $fb                                     ; $7b9f: $0e $fb
    inc e                                         ; $7ba1: $1c
    rst $30                                       ; $7ba2: $f7
    jr nc, jr_0bc_7ba6                            ; $7ba3: $30 $01

    rst $28                                       ; $7ba5: $ef

jr_0bc_7ba6:
    ldh [$9f], a                                  ; $7ba6: $e0 $9f
    nop                                           ; $7ba8: $00
    rst $38                                       ; $7ba9: $ff
    rra                                           ; $7baa: $1f
    ldh a, [$8a]                                  ; $7bab: $f0 $8a
    nop                                           ; $7bad: $00
    add b                                         ; $7bae: $80
    ld [bc], a                                    ; $7baf: $02
    jr nc, @+$52                                  ; $7bb0: $30 $50

    xor a                                         ; $7bb2: $af
    ld [hl], b                                    ; $7bb3: $70
    adc a                                         ; $7bb4: $8f
    ld d, h                                       ; $7bb5: $54
    xor a                                         ; $7bb6: $af
    ld d, h                                       ; $7bb7: $54
    jr @-$43                                      ; $7bb8: $18 $bb

jr_0bc_7bba:
    db $fc                                        ; $7bba: $fc
    inc bc                                        ; $7bbb: $03

jr_0bc_7bbc:
    xor d                                         ; $7bbc: $aa
    ld c, c                                       ; $7bbd: $49
    ld h, [hl]                                    ; $7bbe: $66
    add hl, bc                                    ; $7bbf: $09
    cp $01                                        ; $7bc0: $fe $01
    ld b, d                                       ; $7bc2: $42
    db $10                                        ; $7bc3: $10
    cp l                                          ; $7bc4: $bd
    ld d, d                                       ; $7bc5: $52
    cp a                                          ; $7bc6: $bf
    ret nz                                        ; $7bc7: $c0

    add hl, hl                                    ; $7bc8: $29
    ldh a, [$1f]                                  ; $7bc9: $f0 $1f
    ld b, b                                       ; $7bcb: $40
    cp a                                          ; $7bcc: $bf
    add b                                         ; $7bcd: $80
    ld [bc], a                                    ; $7bce: $02
    ld [$0190], sp                                ; $7bcf: $08 $90 $01
    rst $20                                       ; $7bd2: $e7
    nop                                           ; $7bd3: $00
    jr nz, jr_0bc_7bd6                            ; $7bd4: $20 $00

jr_0bc_7bd6:
    rst $38                                       ; $7bd6: $ff
    ld [bc], a                                    ; $7bd7: $02
    ld e, b                                       ; $7bd8: $58
    jr nz, jr_0bc_7bba                            ; $7bd9: $20 $df

    jr nz, jr_0bc_7bbc                            ; $7bdb: $20 $df

    inc h                                         ; $7bdd: $24
    nop                                           ; $7bde: $00
    rst $18                                       ; $7bdf: $df
    inc h                                         ; $7be0: $24
    db $db                                        ; $7be1: $db
    db $fc                                        ; $7be2: $fc
    add e                                         ; $7be3: $83
    inc b                                         ; $7be4: $04
    ei                                            ; $7be5: $fb

jr_0bc_7be6:
    inc b                                         ; $7be6: $04
    add h                                         ; $7be7: $84
    inc e                                         ; $7be8: $1c
    nop                                           ; $7be9: $00
    ld a, $e3                                     ; $7bea: $3e $e3
    ld [$02f7], sp                                ; $7bec: $08 $f7 $02
    ld [$e33e], sp                                ; $7bef: $08 $3e $e3
    add b                                         ; $7bf2: $80
    ld a, [hl+]                                   ; $7bf3: $2a
    jr jr_0bc_7be6                                ; $7bf4: $18 $f0

    rrca                                          ; $7bf6: $0f
    ret nc                                        ; $7bf7: $d0

    cpl                                           ; $7bf8: $2f
    ret nc                                        ; $7bf9: $d0

    ccf                                           ; $7bfa: $3f
    ret nz                                        ; $7bfb: $c0

    db $10                                        ; $7bfc: $10
    ccf                                           ; $7bfd: $3f
    ldh a, [$1f]                                  ; $7bfe: $f0 $1f
    ld a, [hl-]                                   ; $7c00: $3a
    jr z, jr_0bc_7c41                             ; $7c01: $28 $3e

    db $e3                                        ; $7c03: $e3
    adc b                                         ; $7c04: $88
    rst $30                                       ; $7c05: $f7
    ld [$77c8], sp                                ; $7c06: $08 $c8 $77
    ld hl, sp-$79                                 ; $7c09: $f8 $87
    ld c, d                                       ; $7c0b: $4a
    jr jr_0bc_7c51                                ; $7c0c: $18 $43

    cp h                                          ; $7c0e: $bc
    ld c, e                                       ; $7c0f: $4b
    ld b, $bc                                     ; $7c10: $06 $bc
    ld c, e                                       ; $7c12: $4b
    or [hl]                                       ; $7c13: $b6
    ld sp, hl                                     ; $7c14: $f9
    rlca                                          ; $7c15: $07
    ld [hl], $00                                  ; $7c16: $36 $00
    ld e, d                                       ; $7c18: $5a
    db $10                                        ; $7c19: $10
    ld [hl], b                                    ; $7c1a: $70
    ld bc, $548f                                  ; $7c1b: $01 $8f $54
    xor a                                         ; $7c1e: $af
    ld d, h                                       ; $7c1f: $54
    cp e                                          ; $7c20: $bb
    db $fd                                        ; $7c21: $fd
    inc bc                                        ; $7c22: $03
    ld l, b                                       ; $7c23: $68
    jr z, jr_0bc_7c26                             ; $7c24: $28 $00

jr_0bc_7c26:
    or b                                          ; $7c26: $b0
    rst $28                                       ; $7c27: $ef
    or b                                          ; $7c28: $b0
    ld e, a                                       ; $7c29: $5f
    ldh [$5f], a                                  ; $7c2a: $e0 $5f
    pop hl                                        ; $7c2c: $e1
    ccf                                           ; $7c2d: $3f
    ld [de], a                                    ; $7c2e: $12
    ret nz                                        ; $7c2f: $c0

    cp a                                          ; $7c30: $bf
    ld b, b                                       ; $7c31: $40
    ld a, d                                       ; $7c32: $7a
    ld h, b                                       ; $7c33: $60

jr_0bc_7c34:
    ld hl, sp-$71                                 ; $7c34: $f8 $8f
    ld a, h                                       ; $7c36: $7c
    ld [$0008], sp                                ; $7c37: $08 $08 $00
    rst $38                                       ; $7c3a: $ff
    jr jr_0bc_7c34                                ; $7c3b: $18 $f7

    inc e                                         ; $7c3d: $1c
    rst $20                                       ; $7c3e: $e7
    rst $30                                       ; $7c3f: $f7
    sbc c                                         ; $7c40: $99

jr_0bc_7c41:
    inc l                                         ; $7c41: $2c
    nop                                           ; $7c42: $00
    db $db                                        ; $7c43: $db
    inc a                                         ; $7c44: $3c
    rst $20                                       ; $7c45: $e7
    inc [hl]                                      ; $7c46: $34
    db $db                                        ; $7c47: $db
    nop                                           ; $7c48: $00
    rst $38                                       ; $7c49: $ff
    ld bc, $ff00                                  ; $7c4a: $01 $00 $ff
    ld bc, $fffe                                  ; $7c4d: $01 $fe $ff
    nop                                           ; $7c50: $00

jr_0bc_7c51:
    pop bc                                        ; $7c51: $c1
    ld a, $c1                                     ; $7c52: $3e $c1
    add h                                         ; $7c54: $84
    ld [hl], h                                    ; $7c55: $74
    nop                                           ; $7c56: $00
    ret nc                                        ; $7c57: $d0

    ccf                                           ; $7c58: $3f
    ret nc                                        ; $7c59: $d0

    cpl                                           ; $7c5a: $2f
    ld l, $30                                     ; $7c5b: $2e $30
    add a                                         ; $7c5d: $87
    call z, Call_0bc_7b20                         ; $7c5e: $cc $20 $7b
    add h                                         ; $7c61: $84
    cp h                                          ; $7c62: $bc
    ld b, b                                       ; $7c63: $40
    ldh a, [$1f]                                  ; $7c64: $f0 $1f
    ld b, c                                       ; $7c66: $41
    cp a                                          ; $7c67: $bf
    ld b, e                                       ; $7c68: $43
    db $10                                        ; $7c69: $10
    cp [hl]                                       ; $7c6a: $be
    ld b, e                                       ; $7c6b: $43
    cp h                                          ; $7c6c: $bc
    ret nc                                        ; $7c6d: $d0

    ld [$ff02], sp                                ; $7c6e: $08 $02 $ff
    ld [bc], a                                    ; $7c71: $02
    db $fd                                        ; $7c72: $fd
    nop                                           ; $7c73: $00
    rst $38                                       ; $7c74: $ff
    ld bc, $bd42                                  ; $7c75: $01 $42 $bd
    ld d, d                                       ; $7c78: $52
    cp a                                          ; $7c79: $bf
    ld d, b                                       ; $7c7a: $50

jr_0bc_7c7b:
    xor a                                         ; $7c7b: $af
    add b                                         ; $7c7c: $80
    ldh [$08], a                                  ; $7c7d: $e0 $08
    rra                                           ; $7c7f: $1f
    pop af                                        ; $7c80: $f1

jr_0bc_7c81:
    ld c, $fb                                     ; $7c81: $0e $fb
    dec c                                         ; $7c83: $0d
    ei                                            ; $7c84: $fb
    inc c                                         ; $7c85: $0c
    inc b                                         ; $7c86: $04
    rst $30                                       ; $7c87: $f7
    jr jr_0bc_7c81                                ; $7c88: $18 $f7

    jr jr_0bc_7c7b                                ; $7c8a: $18 $ef

    jp nc, Jump_000_1c08                          ; $7c8c: $d2 $08 $1c

    rst $30                                       ; $7c8f: $f7
    nop                                           ; $7c90: $00
    inc c                                         ; $7c91: $0c
    di                                            ; $7c92: $f3
    ld c, $fb                                     ; $7c93: $0e $fb
    ld b, $f9                                     ; $7c95: $06 $f9
    rlca                                          ; $7c97: $07
    db $fd                                        ; $7c98: $fd
    ld bc, $fc03                                  ; $7c99: $01 $03 $fc
    inc bc                                        ; $7c9c: $03
    cp $01                                        ; $7c9d: $fe $01
    cp $01                                        ; $7c9f: $fe $01
    inc b                                         ; $7ca1: $04
    ld b, c                                       ; $7ca2: $41
    nop                                           ; $7ca3: $00
    db $f4                                        ; $7ca4: $f4
    sbc e                                         ; $7ca5: $9b
    ld a, h                                       ; $7ca6: $7c
    srl h                                         ; $7ca7: $cb $3c
    db $e3                                        ; $7ca9: $e3
    inc e                                         ; $7caa: $1c
    di                                            ; $7cab: $f3
    ld b, b                                       ; $7cac: $40
    adc h                                         ; $7cad: $8c
    cp $10                                        ; $7cae: $fe $10
    nop                                           ; $7cb0: $00
    rst $38                                       ; $7cb1: $ff
    add d                                         ; $7cb2: $82
    ld a, l                                       ; $7cb3: $7d
    and d                                         ; $7cb4: $a2
    ld a, l                                       ; $7cb5: $7d
    ld [bc], a                                    ; $7cb6: $02
    and d                                         ; $7cb7: $a2
    db $dd                                        ; $7cb8: $dd
    ld [c], a                                     ; $7cb9: $e2
    dec e                                         ; $7cba: $1d
    rrca                                          ; $7cbb: $0f
    ld hl, sp+$2a                                 ; $7cbc: $f8 $2a
    add hl, de                                    ; $7cbe: $19
    inc bc                                        ; $7cbf: $03
    ld b, $fc                                     ; $7cc0: $06 $fc
    ld [bc], a                                    ; $7cc2: $02
    db $fd                                        ; $7cc3: $fd
    ld [bc], a                                    ; $7cc4: $02
    db $fd                                        ; $7cc5: $fd
    ld c, $28                                     ; $7cc6: $0e $28
    ld a, $49                                     ; $7cc8: $3e $49
    sbc a                                         ; $7cca: $9f
    inc b                                         ; $7ccb: $04
    pop af                                        ; $7ccc: $f1
    call nz, $e47b                                ; $7ccd: $c4 $7b $e4
    dec sp                                        ; $7cd0: $3b
    ld d, b                                       ; $7cd1: $50
    add hl, bc                                    ; $7cd2: $09
    db $10                                        ; $7cd3: $10
    rst $38                                       ; $7cd4: $ff
    nop                                           ; $7cd5: $00
    db $10                                        ; $7cd6: $10
    rst $28                                       ; $7cd7: $ef
    rst $38                                       ; $7cd8: $ff
    add hl, bc                                    ; $7cd9: $09
    inc de                                        ; $7cda: $13
    db $ec                                        ; $7cdb: $ec
    sub e                                         ; $7cdc: $93
    db $fc                                        ; $7cdd: $fc
    inc h                                         ; $7cde: $24
    add e                                         ; $7cdf: $83
    ld a, l                                       ; $7ce0: $7d
    ld h, b                                       ; $7ce1: $60
    add hl, hl                                    ; $7ce2: $29
    inc bc                                        ; $7ce3: $03
    cp $6a                                        ; $7ce4: $fe $6a
    ld e, c                                       ; $7ce6: $59
    ldh a, [$1f]                                  ; $7ce7: $f0 $1f
    ld [hl-], a                                   ; $7ce9: $32
    ld b, b                                       ; $7cea: $40
    cp a                                          ; $7ceb: $bf
    ld [bc], a                                    ; $7cec: $02
    ld [$3980], sp                                ; $7ced: $08 $80 $39
    ret nz                                        ; $7cf0: $c0

    ld a, a                                       ; $7cf1: $7f
    adc h                                         ; $7cf2: $8c
    add hl, bc                                    ; $7cf3: $09
    ld b, b                                       ; $7cf4: $40
    ld [bc], a                                    ; $7cf5: $02
    ld e, e                                       ; $7cf6: $5b
    ld bc, $0020                                  ; $7cf7: $01 $20 $00
    rst $38                                       ; $7cfa: $ff
    ld [bc], a                                    ; $7cfb: $02
    ld e, b                                       ; $7cfc: $58
    ld b, $f9                                     ; $7cfd: $06 $f9
    ld b, $f9                                     ; $7cff: $06 $f9
    ld c, $02                                     ; $7d01: $0e $02
    ei                                            ; $7d03: $fb
    inc a                                         ; $7d04: $3c
    rst $30                                       ; $7d05: $f7
    ld hl, sp+$0f                                 ; $7d06: $f8 $0f
    ldh [rNR30], a                                ; $7d08: $e0 $1a
    db $10                                        ; $7d0a: $10
    jr c, jr_0bc_7d0d                             ; $7d0b: $38 $00

jr_0bc_7d0d:
    rst $30                                       ; $7d0d: $f7

jr_0bc_7d0e:
    jr @-$07                                      ; $7d0e: $18 $f7

    inc c                                         ; $7d10: $0c
    rst $30                                       ; $7d11: $f7
    ld c, $fb                                     ; $7d12: $0e $fb
    rlca                                          ; $7d14: $07
    jr nz, @-$02                                  ; $7d15: $20 $fc

    add c                                         ; $7d17: $81
    ld a, [hl+]                                   ; $7d18: $2a
    db $10                                        ; $7d19: $10
    sbc a                                         ; $7d1a: $9f
    ld [hl], c                                    ; $7d1b: $71
    and a                                         ; $7d1c: $a7
    ld a, h                                       ; $7d1d: $7c
    and e                                         ; $7d1e: $a3
    ld [bc], a                                    ; $7d1f: $02
    sbc $3b                                       ; $7d20: $de $3b
    adc $7e                                       ; $7d22: $ce $7e
    pop de                                        ; $7d24: $d1
    jr nz, @+$3c                                  ; $7d25: $20 $3a

    db $10                                        ; $7d27: $10
    ld bc, $fe00                                  ; $7d28: $01 $00 $fe
    ld bc, $03fe                                  ; $7d2b: $01 $fe $03
    cp $8f                                        ; $7d2e: $fe $8f
    db $fd                                        ; $7d30: $fd
    cp $20                                        ; $7d31: $fe $20
    inc bc                                        ; $7d33: $03
    ld a, b                                       ; $7d34: $78
    ld c, d                                       ; $7d35: $4a
    db $10                                        ; $7d36: $10
    ld a, $ed                                     ; $7d37: $3e $ed
    ld a, $ed                                     ; $7d39: $3e $ed
    ld [hl], a                                    ; $7d3b: $77
    inc b                                         ; $7d3c: $04
    call $9ef3                                    ; $7d3d: $cd $f3 $9e
    pop bc                                        ; $7d40: $c1
    ld a, a                                       ; $7d41: $7f
    ld e, d                                       ; $7d42: $5a
    jr jr_0bc_7d89                                ; $7d43: $18 $44

    ei                                            ; $7d45: $fb
    ld b, c                                       ; $7d46: $41
    inc b                                         ; $7d47: $04
    ld [bc], a                                    ; $7d48: $02
    nop                                           ; $7d49: $00
    add h                                         ; $7d4a: $84
    ei                                            ; $7d4b: $fb
    sbc a                                         ; $7d4c: $9f
    ld [hl], b                                    ; $7d4d: $70
    add b                                         ; $7d4e: $80
    ld [de], a                                    ; $7d4f: $12
    stop                                          ; $7d50: $10 $00
    ld a, [bc]                                    ; $7d52: $0a
    rst $30                                       ; $7d53: $f7
    adc d                                         ; $7d54: $8a
    push af                                       ; $7d55: $f5
    ld c, $f1                                     ; $7d56: $0e $f1
    ld a, [bc]                                    ; $7d58: $0a
    push af                                       ; $7d59: $f5
    ld [$f70a], sp                                ; $7d5a: $08 $0a $f7
    cp a                                          ; $7d5d: $bf
    ldh [$7c], a                                  ; $7d5e: $e0 $7c
    ld [$ff20], sp                                ; $7d60: $08 $20 $ff
    rrca                                          ; $7d63: $0f
    ld [de], a                                    ; $7d64: $12
    ld hl, sp+$02                                 ; $7d65: $f8 $02
    db $fd                                        ; $7d67: $fd
    ld [bc], a                                    ; $7d68: $02
    ld [$f88f], sp                                ; $7d69: $08 $8f $f8
    adc h                                         ; $7d6c: $8c
    ld [$d022], sp                                ; $7d6d: $08 $22 $d0
    inc c                                         ; $7d70: $0c
    db $10                                        ; $7d71: $10
    ld [de], a                                    ; $7d72: $12
    ld [$100f], sp                                ; $7d73: $08 $0f $10
    db $10                                        ; $7d76: $10
    pop af                                        ; $7d77: $f1
    ld e, $71                                     ; $7d78: $1e $71
    adc $02                                       ; $7d7a: $ce $02
    ld sp, $b1ee                                  ; $7d7c: $31 $ee $b1
    xor $e7                                       ; $7d7f: $ee $e7
    inc e                                         ; $7d81: $1c
    xor d                                         ; $7d82: $aa
    jr jr_0bc_7d0e                                ; $7d83: $18 $89

    nop                                           ; $7d85: $00
    ld a, a                                       ; $7d86: $7f
    add d                                         ; $7d87: $82
    ld a, a                                       ; $7d88: $7f

jr_0bc_7d89:
    add d                                         ; $7d89: $82
    ld a, l                                       ; $7d8a: $7d
    add e                                         ; $7d8b: $83
    ld a, h                                       ; $7d8c: $7c
    add e                                         ; $7d8d: $83
    db $10                                        ; $7d8e: $10
    ld a, l                                       ; $7d8f: $7d
    ld [c], a                                     ; $7d90: $e2
    ccf                                           ; $7d91: $3f
    cp h                                          ; $7d92: $bc
    ld [$ff08], sp                                ; $7d93: $08 $08 $ff
    ldh [$3f], a                                  ; $7d96: $e0 $3f
    inc h                                         ; $7d98: $24
    add b                                         ; $7d99: $80
    ld a, a                                       ; $7d9a: $7f
    ld [bc], a                                    ; $7d9b: $02
    ld [$3ee3], sp                                ; $7d9c: $08 $e3 $3e
    call z, $4008                                 ; $7d9f: $cc $08 $40
    cp a                                          ; $7da2: $bf
    nop                                           ; $7da3: $00
    ld b, e                                       ; $7da4: $43
    cp [hl]                                       ; $7da5: $be
    ld c, b                                       ; $7da6: $48
    cp a                                          ; $7da7: $bf

jr_0bc_7da8:
    ld c, b                                       ; $7da8: $48
    or a                                          ; $7da9: $b7
    ld hl, sp+$07                                 ; $7daa: $f8 $07
    db $10                                        ; $7dac: $10
    dec bc                                        ; $7dad: $0b
    or $08                                        ; $7dae: $f6 $08
    call c, Call_000_3000                         ; $7db0: $dc $00 $30
    rst $18                                       ; $7db3: $df
    ldh a, [$1f]                                  ; $7db4: $f0 $1f
    ld [bc], a                                    ; $7db6: $02
    jr nc, jr_0bc_7da8                            ; $7db7: $30 $ef

    db $10                                        ; $7db9: $10
    rst $28                                       ; $7dba: $ef
    cp l                                          ; $7dbb: $bd
    rst $20                                       ; $7dbc: $e7
    ld [$0848], a                                 ; $7dbd: $ea $48 $08
    nop                                           ; $7dc0: $00
    rst $38                                       ; $7dc1: $ff
    ld [$f8f7], sp                                ; $7dc2: $08 $f7 $f8
    rlca                                          ; $7dc5: $07
    ld [$48f7], sp                                ; $7dc6: $08 $f7 $48
    nop                                           ; $7dc9: $00
    rst $38                                       ; $7dca: $ff
    or c                                          ; $7dcb: $b1
    xor $b3                                       ; $7dcc: $ee $b3

jr_0bc_7dce:
    ld e, [hl]                                    ; $7dce: $5e
    db $e3                                        ; $7dcf: $e3
    ld e, l                                       ; $7dd0: $5d
    ld [c], a                                     ; $7dd1: $e2
    ld [$cf3d], sp                                ; $7dd2: $08 $3d $cf
    cp b                                          ; $7dd5: $b8
    ld b, b                                       ; $7dd6: $40
    ld a, [bc]                                    ; $7dd7: $0a
    ld h, c                                       ; $7dd8: $61
    ld hl, sp+$0f                                 ; $7dd9: $f8 $0f
    ld e, $10                                     ; $7ddb: $1e $10
    di                                            ; $7ddd: $f3
    ld c, $f9                                     ; $7dde: $0e $f9
    jr nz, jr_0bc_7e0b                            ; $7de0: $20 $29

    jr nz, @+$01                                  ; $7de2: $20 $ff

    daa                                           ; $7de4: $27
    call c, $ee08                                 ; $7de5: $dc $08 $ee
    dec de                                        ; $7de8: $1b
    inc l                                         ; $7de9: $2c
    rst $10                                       ; $7dea: $d7
    db $10                                        ; $7deb: $10
    jr c, jr_0bc_7dce                             ; $7dec: $38 $e0

    rst $18                                       ; $7dee: $df
    rst $38                                       ; $7def: $ff
    db $10                                        ; $7df0: $10
    ret nz                                        ; $7df1: $c0

    ld [hl+], a                                   ; $7df2: $22
    db $dd                                        ; $7df3: $dd
    ld b, b                                       ; $7df4: $40
    add hl, hl                                    ; $7df5: $29
    rra                                           ; $7df6: $1f
    pop af                                        ; $7df7: $f1
    inc sp                                        ; $7df8: $33
    xor $08                                       ; $7df9: $ee $08
    cp b                                          ; $7dfb: $b8
    rst $08                                       ; $7dfc: $cf
    cp h                                          ; $7dfd: $bc
    ld h, a                                       ; $7dfe: $67
    ld d, b                                       ; $7dff: $50
    add hl, sp                                    ; $7e00: $39
    cp $03                                        ; $7e01: $fe $03
    add a                                         ; $7e03: $87
    db $10                                        ; $7e04: $10
    db $fc                                        ; $7e05: $fc
    inc bc                                        ; $7e06: $03
    cp $60                                        ; $7e07: $fe $60
    add hl, sp                                    ; $7e09: $39
    pop hl                                        ; $7e0a: $e1

jr_0bc_7e0b:
    ccf                                           ; $7e0b: $3f
    ld [hl], e                                    ; $7e0c: $73
    sbc $20                                       ; $7e0d: $de $20
    inc sp                                        ; $7e0f: $33
    db $ed                                        ; $7e10: $ed
    ld [hl], b                                    ; $7e11: $70
    add hl, hl                                    ; $7e12: $29
    ld b, b                                       ; $7e13: $40
    rst $38                                       ; $7e14: $ff
    ld e, a                                       ; $7e15: $5f
    or b                                          ; $7e16: $b0
    call nz, Call_000_3b14                        ; $7e17: $c4 $14 $3b
    ld b, h                                       ; $7e1a: $44
    cp e                                          ; $7e1b: $bb
    add b                                         ; $7e1c: $80
    add hl, hl                                    ; $7e1d: $29
    ret nz                                        ; $7e1e: $c0

    jr nc, jr_0bc_7e22                            ; $7e1f: $30 $01

    ccf                                           ; $7e21: $3f

jr_0bc_7e22:
    ldh [rP1], a                                  ; $7e22: $e0 $00
    ld [$00f7], sp                                ; $7e24: $08 $f7 $00
    rst $38                                       ; $7e27: $ff
    ld [bc], a                                    ; $7e28: $02
    rst $38                                       ; $7e29: $ff
    ld b, $fd                                     ; $7e2a: $06 $fd
    nop                                           ; $7e2c: $00
    rlca                                          ; $7e2d: $07
    ld sp, hl                                     ; $7e2e: $f9
    dec a                                         ; $7e2f: $3d
    and $2b                                       ; $7e30: $e6 $2b
    sub $ef                                       ; $7e32: $d6 $ef
    add hl, de                                    ; $7e34: $19
    ld [hl+], a                                   ; $7e35: $22
    dec l                                         ; $7e36: $2d
    sub $80                                       ; $7e37: $d6 $80
    jr c, jr_0bc_7e5b                             ; $7e39: $38 $20

    rst $18                                       ; $7e3b: $df
    ccf                                           ; $7e3c: $3f
    ld [hl], b                                    ; $7e3d: $70
    ld b, b                                       ; $7e3e: $40
    ldh a, [rSB]                                  ; $7e3f: $f0 $01
    rra                                           ; $7e41: $1f
    scf                                           ; $7e42: $37
    db $ec                                        ; $7e43: $ec
    add c                                         ; $7e44: $81
    cp $c1                                        ; $7e45: $fe $c1
    ld a, [hl]                                    ; $7e47: $7e
    ret nz                                        ; $7e48: $c0

    add hl, hl                                    ; $7e49: $29
    nop                                           ; $7e4a: $00
    add hl, bc                                    ; $7e4b: $09
    rst $38                                       ; $7e4c: $ff
    dec bc                                        ; $7e4d: $0b

jr_0bc_7e4e:
    or $fb                                        ; $7e4e: $f6 $fb
    inc b                                         ; $7e50: $04
    adc e                                         ; $7e51: $8b
    halt                                          ; $7e52: $76
    nop                                           ; $7e53: $00
    ld b, b                                       ; $7e54: $40
    cp a                                          ; $7e55: $bf
    ret nz                                        ; $7e56: $c0

    ccf                                           ; $7e57: $3f
    ld d, b                                       ; $7e58: $50
    cp a                                          ; $7e59: $bf
    ld d, b                                       ; $7e5a: $50

jr_0bc_7e5b:
    rst $28                                       ; $7e5b: $ef
    jr nz, jr_0bc_7e4e                            ; $7e5c: $20 $f0

    rrca                                          ; $7e5e: $0f
    jp c, $8029                                   ; $7e5f: $da $29 $80

    rst $38                                       ; $7e62: $ff
    add b                                         ; $7e63: $80
    ld a, a                                       ; $7e64: $7f
    ret nz                                        ; $7e65: $c0

jr_0bc_7e66:
    nop                                           ; $7e66: $00
    ld a, a                                       ; $7e67: $7f
    ld a, b                                       ; $7e68: $78
    sbc a                                         ; $7e69: $9f
    ret z                                         ; $7e6a: $c8

    or a                                          ; $7e6b: $b7
    rst $08                                       ; $7e6c: $cf
    ld [hl], b                                    ; $7e6d: $70
    ld c, b                                       ; $7e6e: $48
    ld h, b                                       ; $7e6f: $60
    or a                                          ; $7e70: $b7
    or h                                          ; $7e71: $b4
    ld de, $01b6                                  ; $7e72: $11 $b6 $01
    rrca                                          ; $7e75: $0f
    ld sp, hl                                     ; $7e76: $f9
    ld a, [c]                                     ; $7e77: $f2
    dec e                                         ; $7e78: $1d

jr_0bc_7e79:
    ld b, e                                       ; $7e79: $43
    db $10                                        ; $7e7a: $10
    cp [hl]                                       ; $7e7b: $be
    ld b, e                                       ; $7e7c: $43
    cp l                                          ; $7e7d: $bd
    nop                                           ; $7e7e: $00
    ld a, [hl-]                                   ; $7e7f: $3a
    pop af                                        ; $7e80: $f1
    rra                                           ; $7e81: $1f
    ldh [$bf], a                                  ; $7e82: $e0 $bf
    jr nz, jr_0bc_7e66                            ; $7e84: $20 $e0

    ld e, a                                       ; $7e86: $5f
    call z, $0e18                                 ; $7e87: $cc $18 $0e
    ei                                            ; $7e8a: $fb
    inc c                                         ; $7e8b: $0c
    ei                                            ; $7e8c: $fb
    dec c                                         ; $7e8d: $0d
    sub b                                         ; $7e8e: $90
    ld a, [$1901]                                 ; $7e8f: $fa $01 $19
    rst $28                                       ; $7e92: $ef
    jp nc, $e301                                  ; $7e93: $d2 $01 $e3

    inc e                                         ; $7e96: $1c
    rst $30                                       ; $7e97: $f7
    inc c                                         ; $7e98: $0c
    nop                                           ; $7e99: $00
    di                                            ; $7e9a: $f3
    ld c, $fb                                     ; $7e9b: $0e $fb
    ld b, $f9                                     ; $7e9d: $06 $f9
    rlca                                          ; $7e9f: $07
    db $fd                                        ; $7ea0: $fd
    inc bc                                        ; $7ea1: $03
    ldh [$d2], a                                  ; $7ea2: $e0 $d2
    nop                                           ; $7ea4: $00
    ld a, [c]                                     ; $7ea5: $f2
    ld bc, $4234                                  ; $7ea6: $01 $34 $42
    add b                                         ; $7ea9: $80
    ld bc, $00e2                                  ; $7eaa: $01 $e2 $00
    jr nz, jr_0bc_7eaf                            ; $7ead: $20 $00

jr_0bc_7eaf:
    rst $38                                       ; $7eaf: $ff
    ld [bc], a                                    ; $7eb0: $02
    ld e, b                                       ; $7eb1: $58
    db $10                                        ; $7eb2: $10
    rst $28                                       ; $7eb3: $ef
    db $10                                        ; $7eb4: $10
    rst $28                                       ; $7eb5: $ef
    ld [de], a                                    ; $7eb6: $12
    nop                                           ; $7eb7: $00
    rst $28                                       ; $7eb8: $ef
    ld [de], a                                    ; $7eb9: $12
    db $ed                                        ; $7eba: $ed
    ld a, [hl]                                    ; $7ebb: $7e
    pop bc                                        ; $7ebc: $c1
    ld [bc], a                                    ; $7ebd: $02
    db $fd                                        ; $7ebe: $fd
    ld [bc], a                                    ; $7ebf: $02
    add h                                         ; $7ec0: $84
    inc e                                         ; $7ec1: $1c
    nop                                           ; $7ec2: $00
    rra                                           ; $7ec3: $1f
    pop af                                        ; $7ec4: $f1
    inc b                                         ; $7ec5: $04
    ei                                            ; $7ec6: $fb
    ld [bc], a                                    ; $7ec7: $02
    ld [$f11f], sp                                ; $7ec8: $08 $1f $f1
    add b                                         ; $7ecb: $80
    ld a, [hl+]                                   ; $7ecc: $2a
    jr jr_0bc_7f47                                ; $7ecd: $18 $78

    add a                                         ; $7ecf: $87
    ld l, b                                       ; $7ed0: $68
    sub a                                         ; $7ed1: $97
    ld l, b                                       ; $7ed2: $68
    sbc a                                         ; $7ed3: $9f
    ld h, b                                       ; $7ed4: $60
    db $10                                        ; $7ed5: $10
    sbc a                                         ; $7ed6: $9f
    ld hl, sp+$0f                                 ; $7ed7: $f8 $0f
    ld a, [hl-]                                   ; $7ed9: $3a
    jr jr_0bc_7f56                                ; $7eda: $18 $7a

    call $e53e                                    ; $7edc: $cd $3e $e5
    ld [bc], a                                    ; $7edf: $02
    ld e, $f1                                     ; $7ee0: $1e $f1
    ld c, $f9                                     ; $7ee2: $0e $f9
    add $7d                                       ; $7ee4: $c6 $7d
    ld l, $08                                     ; $7ee6: $2e $08
    nop                                           ; $7ee8: $00
    nop                                           ; $7ee9: $00
    rst $38                                       ; $7eea: $ff
    pop bc                                        ; $7eeb: $c1
    ld a, $51                                     ; $7eec: $3e $51
    cp [hl]                                       ; $7eee: $be
    ld d, c                                       ; $7eef: $51
    xor $f1                                       ; $7ef0: $ee $f1
    db $10                                        ; $7ef2: $10
    ld c, $07                                     ; $7ef3: $0e $07
    db $fc                                        ; $7ef5: $fc
    ld e, d                                       ; $7ef6: $5a
    jr jr_0bc_7e79                                ; $7ef7: $18 $80

    ld a, a                                       ; $7ef9: $7f
    sbc a                                         ; $7efa: $9f
    ld [hl], c                                    ; $7efb: $71
    ld [bc], a                                    ; $7efc: $02
    call nz, $e47b                                ; $7efd: $c4 $7b $e4
    cp e                                          ; $7f00: $bb
    ld a, h                                       ; $7f01: $7c
    jp $186a                                      ; $7f02: $c3 $6a $18


    ld hl, $de01                                  ; $7f05: $21 $01 $de
    dec h                                         ; $7f08: $25
    sbc $25                                       ; $7f09: $de $25
    db $db                                        ; $7f0b: $db
    db $fc                                        ; $7f0c: $fc
    add e                                         ; $7f0d: $83
    ld d, [hl]                                    ; $7f0e: $56
    nop                                           ; $7f0f: $00
    add b                                         ; $7f10: $80
    ld a, d                                       ; $7f11: $7a
    db $10                                        ; $7f12: $10
    ld hl, sp+$07                                 ; $7f13: $f8 $07
    ld a, [hl+]                                   ; $7f15: $2a
    rst $10                                       ; $7f16: $d7
    ld a, [hl+]                                   ; $7f17: $2a
    db $dd                                        ; $7f18: $dd
    cp $40                                        ; $7f19: $fe $40
    add c                                         ; $7f1b: $81
    adc b                                         ; $7f1c: $88
    jr z, @+$69                                   ; $7f1d: $28 $67

    call c, $bb66                                 ; $7f1f: $dc $66 $bb
    call nz, $04bb                                ; $7f22: $c4 $bb $04
    rst $18                                       ; $7f25: $df
    ld [hl], c                                    ; $7f26: $71
    add b                                         ; $7f27: $80
    ld a, a                                       ; $7f28: $7f
    add b                                         ; $7f29: $80
    sbc d                                         ; $7f2a: $9a
    db $10                                        ; $7f2b: $10
    rlca                                          ; $7f2c: $07
    db $fd                                        ; $7f2d: $fd
    ld bc, $fc03                                  ; $7f2e: $01 $03 $fc
    inc bc                                        ; $7f31: $03
    cp $01                                        ; $7f32: $fe $01
    cp $01                                        ; $7f34: $fe $01

jr_0bc_7f36:
    xor b                                         ; $7f36: $a8
    ld d, b                                       ; $7f37: $50
    sub b                                         ; $7f38: $90
    inc e                                         ; $7f39: $1c
    ld [$c77c], sp                                ; $7f3a: $08 $7c $c7
    xor h                                         ; $7f3d: $ac
    ld [$ff84], sp                                ; $7f3e: $08 $84 $ff
    adc h                                         ; $7f41: $8c
    ld a, e                                       ; $7f42: $7b
    nop                                           ; $7f43: $00
    adc [hl]                                      ; $7f44: $8e
    ld [hl], e                                    ; $7f45: $73
    ei                                            ; $7f46: $fb

jr_0bc_7f47:
    ld c, h                                       ; $7f47: $4c
    sub [hl]                                      ; $7f48: $96
    db $ed                                        ; $7f49: $ed
    ld e, $f3                                     ; $7f4a: $1e $f3
    ld [hl+], a                                   ; $7f4c: $22
    ld a, [de]                                    ; $7f4d: $1a
    db $ed                                        ; $7f4e: $ed
    adc $18                                       ; $7f4f: $ce $18
    rst $38                                       ; $7f51: $ff
    nop                                           ; $7f52: $00
    ld h, b                                       ; $7f53: $60
    and d                                         ; $7f54: $a2
    nop                                           ; $7f55: $00

jr_0bc_7f56:
    ld h, b                                       ; $7f56: $60
    rlca                                          ; $7f57: $07
    sbc a                                         ; $7f58: $9f
    ld l, b                                       ; $7f59: $68
    sbc a                                         ; $7f5a: $9f
    ld l, b                                       ; $7f5b: $68
    sub a                                         ; $7f5c: $97
    ldh [$08], a                                  ; $7f5d: $e0 $08
    inc a                                         ; $7f5f: $3c
    jr jr_0bc_7fb2                                ; $7f60: $18 $50

    jr @-$7d                                      ; $7f62: $18 $81

    ld b, d                                       ; $7f64: $42
    jr c, jr_0bc_7f36                             ; $7f65: $38 $cf

    ld a, b                                       ; $7f67: $78
    ld [c], a                                     ; $7f68: $e2
    dec a                                         ; $7f69: $3d
    ld a, [c]                                     ; $7f6a: $f2
    sbc l                                         ; $7f6b: $9d
    nop                                           ; $7f6c: $00
    add hl, bc                                    ; $7f6d: $09
    nop                                           ; $7f6e: $00
    ld [$08ff], sp                                ; $7f6f: $08 $ff $08
    rst $30                                       ; $7f72: $f7
    rst $38                                       ; $7f73: $ff
    inc b                                         ; $7f74: $04

jr_0bc_7f75:
    add hl, bc                                    ; $7f75: $09
    or $09                                        ; $7f76: $f6 $09
    ld c, c                                       ; $7f78: $49
    cp $41                                        ; $7f79: $fe $41
    cp [hl]                                       ; $7f7b: $be
    db $10                                        ; $7f7c: $10
    add hl, hl                                    ; $7f7d: $29
    rlca                                          ; $7f7e: $07

jr_0bc_7f7f:
    db $fc                                        ; $7f7f: $fc
    ld [hl], h                                    ; $7f80: $74
    nop                                           ; $7f81: $00
    ret nz                                        ; $7f82: $c0

    ld a, b                                       ; $7f83: $78
    nop                                           ; $7f84: $00
    jr nz, jr_0bc_7fb0                            ; $7f85: $20 $29

    ld a, h                                       ; $7f87: $7c
    jp $bde6                                      ; $7f88: $c3 $e6 $bd


    jp nz, $207f                                  ; $7f8b: $c2 $7f $20

    add b                                         ; $7f8e: $80
    ld a, a                                       ; $7f8f: $7f
    jr nc, @+$2b                                  ; $7f90: $30 $29

    ld hl, sp-$71                                 ; $7f92: $f8 $8f
    jr nz, jr_0bc_7f75                            ; $7f94: $20 $df

    ld hl, $df10                                  ; $7f96: $21 $10 $df
    ld hl, $60de                                  ; $7f99: $21 $de $60
    jr @+$03                                      ; $7f9c: $18 $01

    cp $ff                                        ; $7f9e: $fe $ff
    nop                                           ; $7fa0: $00
    ld [bc], a                                    ; $7fa1: $02
    and c                                         ; $7fa2: $a1
    ld e, [hl]                                    ; $7fa3: $5e
    xor c                                         ; $7fa4: $a9

jr_0bc_7fa5:
    rst $18                                       ; $7fa5: $df
    jr z, jr_0bc_7f7f                             ; $7fa6: $28 $d7

    ld d, b                                       ; $7fa8: $50
    add hl, bc                                    ; $7fa9: $09
    ld a, $00                                     ; $7faa: $3e $00
    db $e3                                        ; $7fac: $e3
    inc e                                         ; $7fad: $1c
    rst $30                                       ; $7fae: $f7
    dec de                                        ; $7faf: $1b

jr_0bc_7fb0:
    or $19                                        ; $7fb0: $f6 $19

jr_0bc_7fb2:
    rst $28                                       ; $7fb2: $ef
    inc sp                                        ; $7fb3: $33
    db $10                                        ; $7fb4: $10
    xor $32                                       ; $7fb5: $ee $32
    db $dd                                        ; $7fb7: $dd
    xor b                                         ; $7fb8: $a8
    ld [$ef38], sp                                ; $7fb9: $08 $38 $ef
    jr jr_0bc_7fa5                                ; $7fbc: $18 $e7

    nop                                           ; $7fbe: $00
    inc e                                         ; $7fbf: $1c
    rst $30                                       ; $7fc0: $f7
    inc c                                         ; $7fc1: $0c
    di                                            ; $7fc2: $f3
    ld c, $fb                                     ; $7fc3: $0e $fb
    ld b, $f9                                     ; $7fc5: $06 $f9
    ret nz                                        ; $7fc7: $c0

    ret nz                                        ; $7fc8: $c0

    jr c, @+$7c                                   ; $7fc9: $38 $7a

    add hl, de                                    ; $7fcb: $19
    rst $38                                       ; $7fcc: $ff
    ld a, a                                       ; $7fcd: $7f
    dec d                                         ; $7fce: $15
    ld h, a                                       ; $7fcf: $67
    and d                                         ; $7fd0: $a2
    ld d, l                                       ; $7fd1: $55
    ld [hl+], a                                   ; $7fd2: $22
    db $10                                        ; $7fd3: $10
    rst $38                                       ; $7fd4: $ff
    ld a, a                                       ; $7fd5: $7f
    sbc a                                         ; $7fd6: $9f
    inc bc                                        ; $7fd7: $03
    ld d, [hl]                                    ; $7fd8: $56
    ld bc, $0005                                  ; $7fd9: $01 $05 $00
    rst $38                                       ; $7fdc: $ff
    ld a, a                                       ; $7fdd: $7f
    ld d, $7f                                     ; $7fde: $16 $7f
    db $10                                        ; $7fe0: $10
    ld a, h                                       ; $7fe1: $7c
    nop                                           ; $7fe2: $00
    inc e                                         ; $7fe3: $1c
    rst $38                                       ; $7fe4: $ff
    ld a, a                                       ; $7fe5: $7f
    or e                                          ; $7fe6: $b3
    ld d, [hl]                                    ; $7fe7: $56
    daa                                           ; $7fe8: $27
    ld sp, $0c21                                  ; $7fe9: $31 $21 $0c
    rst $38                                       ; $7fec: $ff
    ld a, a                                       ; $7fed: $7f
    rst $18                                       ; $7fee: $df
    ld e, $36                                     ; $7fef: $1e $36
    add hl, bc                                    ; $7ff1: $09
    ld b, h                                       ; $7ff2: $44
    nop                                           ; $7ff3: $00
    rst $38                                       ; $7ff4: $ff
    ld a, a                                       ; $7ff5: $7f
    rst $38                                       ; $7ff6: $ff
    ld a, $74                                     ; $7ff7: $3e $74
    jr z, jr_0bc_7ffc                             ; $7ff9: $28 $01

    inc c                                         ; $7ffb: $0c

jr_0bc_7ffc:
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
